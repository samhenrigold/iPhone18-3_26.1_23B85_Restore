uint64_t sub_10010AE60()
{
  v1 = *(*(v0 + 376) + 16);
  *(v0 + 480) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = *(v0 + 256);
    *(v0 + 564) = *(v3 + 80);
    *(v0 + 488) = *(v3 + 72);
    while (1)
    {
      *(v0 + 496) = v2;
      v4 = *(v0 + 272);
      v5 = *(v0 + 248);
      sub_100111D2C(*(v0 + 376) + ((*(v0 + 564) + 32) & ~*(v0 + 564)) + *(v0 + 488) * v2, v4, type metadata accessor for OwnerSharingCircle);
      if (*(v4 + *(v5 + 36)) != 2)
      {
        break;
      }

      sub_100111D94(*(v0 + 272), type metadata accessor for OwnerSharingCircle);
      v2 = *(v0 + 496) + 1;
      if (v2 == *(v0 + 480))
      {
        goto LABEL_5;
      }
    }

    v7 = *(v0 + 248);
    *(v0 + 574) = 0x4000201u >> (8 * *(*(v0 + 216) + *(v7 + 28)));
    v8 = *(v0 + 232);
    *(v0 + 568) = *(v7 + 20);
    v9 = v8[43];
    v10 = v8[45];
    v11 = sub_1000035D0(v8 + 40, v9);
    *(v0 + 80) = v9;
    *(v0 + 88) = v10;
    v12 = sub_1000280DC((v0 + 56));
    (*(*(v9 - 8) + 16))(v12, v11, v9);
    v6 = sub_10010B008;
  }

  else
  {
LABEL_5:
    v6 = sub_10010B72C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10010B008()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 272);
  sub_1000035D0((v0 + 56), *(v0 + 80));
  v3 = swift_task_alloc();
  *(v0 + 504) = v3;
  *v3 = v0;
  v3[1] = sub_10010B0C4;
  v4 = *(v0 + 574);

  return sub_100640C34(v2 + v1, v4, 0);
}

uint64_t sub_10010B0C4(char a1)
{
  v4 = *v2;

  if (v1)
  {
    *(v4 + 512) = v1;
    v5 = *(v4 + 232);
    v6 = sub_10010B444;
  }

  else
  {
    *(v4 + 575) = a1 & 1;
    v6 = sub_10010B1FC;
    v5 = 0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10010B1FC()
{
  if (*(v0 + 575) == 1)
  {
    v1 = *(v0 + 232);
    sub_100007BAC((v0 + 56));
    v2 = sub_10010B2C4;
    v3 = v1;
  }

  else
  {
    sub_100111BE4();
    v4 = swift_allocError();
    *v5 = 0;
    swift_willThrow();
    *(v0 + 512) = v4;
    v3 = *(v0 + 232);
    v2 = sub_10010B444;
  }

  return _swift_task_switch(v2, v3, 0);
}

uint64_t sub_10010B2C4()
{
  while (1)
  {
    sub_100111D94(*(v0 + 272), type metadata accessor for OwnerSharingCircle);
    v1 = *(v0 + 496) + 1;
    if (v1 == *(v0 + 480))
    {
      break;
    }

    *(v0 + 496) = v1;
    v2 = *(v0 + 272);
    v3 = *(v0 + 248);
    sub_100111D2C(*(v0 + 376) + ((*(v0 + 564) + 32) & ~*(v0 + 564)) + *(v0 + 488) * v1, v2, type metadata accessor for OwnerSharingCircle);
    if (*(v2 + *(v3 + 36)) != 2)
    {
      v4 = *(v0 + 248);
      *(v0 + 574) = 0x4000201u >> (8 * *(*(v0 + 216) + *(v4 + 28)));
      v5 = *(v0 + 232);
      *(v0 + 568) = *(v4 + 20);
      v6 = v5[43];
      v7 = v5[45];
      v8 = sub_1000035D0(v5 + 40, v6);
      *(v0 + 80) = v6;
      *(v0 + 88) = v7;
      v9 = sub_1000280DC((v0 + 56));
      (*(*(v6 - 8) + 16))(v9, v8, v6);
      v10 = sub_10010B008;
      goto LABEL_5;
    }
  }

  v10 = sub_10010B72C;
LABEL_5:

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10010B444()
{
  v23 = v0;
  sub_100007BAC((v0 + 56));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 272);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_1000136BC(v6, v7, &v22);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure in share request acceptance, server share deletion error %s", v4, 0xCu);
    sub_100007BAC(v5);

    v9 = v3;
  }

  else
  {
    v10 = *(v0 + 272);

    v9 = v10;
  }

  while (1)
  {
    sub_100111D94(v9, type metadata accessor for OwnerSharingCircle);
    v13 = *(v0 + 496) + 1;
    if (v13 == *(v0 + 480))
    {
      v14 = sub_10010B72C;
      goto LABEL_9;
    }

    *(v0 + 496) = v13;
    v11 = *(v0 + 272);
    v12 = *(v0 + 248);
    sub_100111D2C(*(v0 + 376) + ((*(v0 + 564) + 32) & ~*(v0 + 564)) + *(v0 + 488) * v13, v11, type metadata accessor for OwnerSharingCircle);
    if (*(v11 + *(v12 + 36)) != 2)
    {
      break;
    }

    v9 = *(v0 + 272);
  }

  v15 = *(v0 + 248);
  *(v0 + 574) = 0x4000201u >> (8 * *(*(v0 + 216) + *(v15 + 28)));
  v16 = *(v0 + 232);
  *(v0 + 568) = *(v15 + 20);
  v17 = v16[43];
  v18 = v16[45];
  v19 = sub_1000035D0(v16 + 40, v17);
  *(v0 + 80) = v17;
  *(v0 + 88) = v18;
  v20 = sub_1000280DC((v0 + 56));
  (*(*(v17 - 8) + 16))(v20, v19, v17);
  v14 = sub_10010B008;
LABEL_9:

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_10010B72C()
{
  v1 = v0[29];
  (*(v0[45] + 56))(v0[30], 1, 1, v0[44]);
  v2 = swift_task_alloc();
  v0[65] = v2;
  *v2 = v0;
  v2[1] = sub_10010B808;
  v3 = v0[46];
  v4 = v0[40];
  v5 = v0[30];

  return sub_10129F3DC(v3, v5, v4, v1 + 120, v1 + 240);
}

uint64_t sub_10010B808()
{
  v2 = *v1;
  v2[66] = v0;

  v3 = v2[30];
  if (v0)
  {
    sub_10000B3A8(v3, &qword_1016980D0, &unk_10138F3B0);
    v4 = sub_10010BC34;
    v5 = 0;
  }

  else
  {
    v6 = v2[29];
    sub_10000B3A8(v3, &qword_1016980D0, &unk_10138F3B0);
    v4 = sub_10010B970;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10010B970()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 216);
  v3 = *(v2 + *(*(v0 + 248) + 28));
  v4 = swift_task_alloc();
  *(v0 + 536) = v4;
  *v4 = v0;
  v4[1] = sub_10010BA38;

  return sub_100F56D0C(v2 + v1, v3);
}

uint64_t sub_10010BA38()
{
  v1 = *(*v0 + 232);

  return _swift_task_switch(sub_10010BB48, v1, 0);
}

uint64_t sub_10010BB48()
{
  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10010BC50()
{
  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10010BD28()
{
  v12 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_1000136BC(v5, v6, &v11);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure in share request acceptance, cloud update error %s", v3, 0xCu);
    sub_100007BAC(v4);
  }

  sub_1001118C8();
  swift_allocError();
  *v8 = 1;
  swift_willThrow();

  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10010BF50()
{
  v14 = v0;
  sub_100007BAC(v0 + 2);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v13 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_1000136BC(v5, v6, &v13);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure in share request acceptance, server share create error %s", v3, 0xCu);
    sub_100007BAC(v4);
  }

  v8 = swift_task_alloc();
  v0[68] = v8;
  *v8 = v0;
  v8[1] = sub_10010C100;
  v9 = v0[53];
  v11 = v0[46];
  v10 = v0[47];

  return sub_10010F500(v11, v10, v9);
}

uint64_t sub_10010C100()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  v3 = *(v2 + 232);
  if (v0)
  {
    v4 = sub_10010C348;
  }

  else
  {
    v4 = sub_10010C22C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10010C22C()
{
  sub_1001118C8();
  swift_allocError();
  *v1 = 2;
  swift_willThrow();

  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10010C348()
{

  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();

  v1 = *(v0 + 8);

  return v1();
}

void *sub_10010C42C()
{

  sub_100007BAC(v0 + 15);
  sub_100007BAC(v0 + 20);
  sub_100007BAC(v0 + 25);
  sub_100007BAC(v0 + 30);
  sub_100007BAC(v0 + 35);
  sub_100007BAC(v0 + 40);
  sub_100007BAC(v0 + 46);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10010C494()
{
  sub_10010C42C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10010C504()
{
  v1 = *(*(v0 + 80) + 112);
  *(v0 + 88) = v1;
  return _swift_task_switch(sub_10010C528, v1, 0);
}

uint64_t sub_10010C528()
{

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_10010C604;
  v2 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100111B00, v2, &type metadata for Int);
}

uint64_t sub_10010C604()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_10010C71C, v1, 0);
}

uint64_t sub_10010C71C()
{
  v1 = v0[11];
  v0[13] = v0[2];
  return _swift_task_switch(sub_10010C740, v1, 0);
}

uint64_t sub_10010C740()
{

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_10010C81C;
  v2 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_100111B08, v2, &type metadata for Int);
}

uint64_t sub_10010C81C()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_10010C934, v1, 0);
}

uint64_t sub_10010C934()
{
  v1 = v0[10];
  v0[15] = v0[3];
  return _swift_task_switch(sub_10010C958, v1, 0);
}

uint64_t sub_10010C958()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  *(v0 + 128) = qword_10177B348;

  return _swift_task_switch(sub_10010C9F4, 0, 0);
}

uint64_t sub_10010C9F4()
{

  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_10010CAB8;
  v2 = *(v0 + 128);

  return unsafeBlocking<A>(_:)(v0 + 32, sub_1000D2BE0, v2, &type metadata for Configuration);
}

uint64_t sub_10010CAB8()
{

  return _swift_task_switch(sub_10010CBD0, 0, 0);
}

uint64_t sub_10010CBD0()
{
  v1 = v0[10];
  v0[18] = v0[4];
  return _swift_task_switch(sub_10010CBF4, v1, 0);
}

uint64_t sub_10010CBF4()
{
  v1 = v0[13];
  v2 = sub_101073540(v0[18]);

  if ((v1 & 0x8000000000000000) != 0 || v1 < v2)
  {

    return _swift_task_switch(sub_10010CE14, 0, 0);
  }

  else
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177A560);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[13];
      v7 = swift_slowAlloc();
      *v7 = 134218240;
      *(v7 + 4) = v6;
      *(v7 + 12) = 2048;
      *(v7 + 14) = v2;
      _os_log_impl(&_mh_execute_header, v4, v5, "        Cannot accept share. acceptedExplicitSharesCount: %ld >= maxAcceptedSharedItems: %lu.", v7, 0x16u);
    }

    type metadata accessor for SPBeaconSharingError(0);
    v0[6] = 13;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100111C38(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10010CE14()
{

  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_10010CED8;
  v2 = *(v0 + 128);

  return unsafeBlocking<A>(_:)(v0 + 56, sub_1000DFF78, v2, &type metadata for Configuration);
}

uint64_t sub_10010CED8()
{

  return _swift_task_switch(sub_10010CFF0, 0, 0);
}

uint64_t sub_10010CFF0()
{
  v1 = v0[10];
  v0[20] = v0[7];
  return _swift_task_switch(sub_10010D014, v1, 0);
}

uint64_t sub_10010D014()
{
  v1 = v0[15];
  v2 = sub_10107355C(v0[20]);

  if (v1 >= v2)
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177A560);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[15];
      v8 = swift_slowAlloc();
      *v8 = 134218240;
      *(v8 + 4) = v7;
      *(v8 + 12) = 2048;
      *(v8 + 14) = v2;
      _os_log_impl(&_mh_execute_header, v5, v6, "        Cannot accept share. totalPairedAccessory: %ld >= maxPairEligibleDevices: %ld.", v8, 0x16u);
    }

    type metadata accessor for SPBeaconSharingError(0);
    v0[9] = 12;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100111C38(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v3 = v0[1];
  }

  else
  {
    v3 = v0[1];
  }

  return v3();
}

uint64_t sub_10010D200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for OwnerSharingCircle(0);
  if ((static UUID.== infix(_:_:)() & 1) != 0 && *(*(a1 + *(v5 + 32)) + 16))
  {
    v6 = *(type metadata accessor for OwnerPeerTrust(0) + 20);

    sub_1000210EC(a3 + v6);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_10010D2A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return _swift_task_switch(sub_10010D378, a3, 0);
}

uint64_t sub_10010D378()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 80) = v1;
  *(v0 + 112) = *(type metadata accessor for OwnerSharingCircle(0) + 20);

  return _swift_task_switch(sub_10010D3F4, v1, 0);
}

uint64_t sub_10010D3F4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  (*(v3 + 16))(v1, *(v0 + 32) + *(v0 + 112), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  *(v6 + 16) = v2;
  (*(v3 + 32))(v6 + v5, v1, v4);

  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  v8 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v7 = v0;
  v7[1] = sub_10010D574;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100111F50, v6, v8);
}

uint64_t sub_10010D574()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_10010D6A0, v1, 0);
}

uint64_t sub_10010D6A0()
{
  v1 = v0[5];
  v0[13] = v0[2];
  return _swift_task_switch(sub_10010D6C4, v1, 0);
}

uint64_t sub_10010D6C4()
{
  **(v0 + 24) = *(v0 + 104);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10010D734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = type metadata accessor for UUID();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v5[19] = swift_task_alloc();
  v7 = type metadata accessor for OwnerSharingCircle(0);
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_10010D89C, v4, 0);
}

uint64_t sub_10010D89C()
{
  v41 = v0;
  v1 = v0[11];
  v2 = *(v1 + 16);
  p_weak_ivar_lyt = (&BeaconKeyManager + 56);
  if (v2)
  {
    v4 = v0[21];
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    v38 = v6;
    do
    {
      if (p_weak_ivar_lyt[144] != -1)
      {
        swift_once();
      }

      v13 = v0[23];
      v14 = type metadata accessor for Logger();
      sub_1000076D4(v14, qword_10177A560);
      sub_100111D2C(v5, v13, type metadata accessor for OwnerSharingCircle);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      v17 = os_log_type_enabled(v15, v16);
      v18 = v0[23];
      if (v17)
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v40 = v8;
        *v7 = 141558275;
        *(v7 + 4) = 1752392040;
        *(v7 + 12) = 2081;
        sub_100111C38(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v9 = dispatch thunk of CustomStringConvertible.description.getter();
        v11 = v10;
        sub_100111D94(v18, type metadata accessor for OwnerSharingCircle);
        v12 = sub_1000136BC(v9, v11, &v40);
        p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;

        *(v7 + 14) = v12;
        _os_log_impl(&_mh_execute_header, v15, v16, "Data update on share request acceptance. Create %{private,mask.hash}s", v7, 0x16u);
        sub_100007BAC(v8);

        v6 = v38;
      }

      else
      {

        sub_100111D94(v18, type metadata accessor for OwnerSharingCircle);
      }

      v5 += v6;
      --v2;
    }

    while (v2);
  }

  v19 = v0[13];
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v0[21];
    v22 = v19 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v23 = *(v21 + 72);
    v39 = v23;
    do
    {
      if (p_weak_ivar_lyt[144] != -1)
      {
        swift_once();
      }

      v30 = v0[22];
      v31 = type metadata accessor for Logger();
      sub_1000076D4(v31, qword_10177A560);
      sub_100111D2C(v22, v30, type metadata accessor for OwnerSharingCircle);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      v34 = os_log_type_enabled(v32, v33);
      v35 = v0[22];
      if (v34)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v40 = v25;
        *v24 = 141558275;
        *(v24 + 4) = 1752392040;
        *(v24 + 12) = 2081;
        sub_100111C38(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        v28 = v27;
        sub_100111D94(v35, type metadata accessor for OwnerSharingCircle);
        v29 = sub_1000136BC(v26, v28, &v40);
        p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;

        *(v24 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v32, v33, "Data update on share request acceptance. Delete %{private,mask.hash}s", v24, 0x16u);
        sub_100007BAC(v25);

        v23 = v39;
      }

      else
      {

        sub_100111D94(v35, type metadata accessor for OwnerSharingCircle);
      }

      v22 += v23;
      --v20;
    }

    while (v20);
  }

  v36 = *(v0[15] + 112);
  v0[24] = v36;

  return _swift_task_switch(sub_10010DD78, v36, 0);
}

uint64_t sub_10010DDA0()
{
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_10010DE7C;
  v2 = *(v0 + 200);

  return withCheckedContinuation<A>(isolation:function:_:)(v1, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_100111E60, v2, &type metadata for () + 1);
}

uint64_t sub_10010DE7C()
{

  return _swift_task_switch(sub_10010DF78, 0, 0);
}

uint64_t sub_10010DF94()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  type metadata accessor for ChangeSetAdaptor();
  v5 = swift_allocObject();
  *(v5 + 16) = _swiftEmptyDictionarySingleton;
  *(v5 + 24) = _swiftEmptyDictionarySingleton;
  v6 = v5 + 24;

  sub_10010E65C(v7, &off_101658FC0, v4, v3, v2, v1);

  swift_beginAccess();
  if (*(*(v5 + 16) + 16))
  {
    goto LABEL_4;
  }

  swift_beginAccess();
  if ((*v6 & 0xC000000000000001) != 0)
  {

    v8 = __CocoaDictionary.count.getter();

    if (v8)
    {
LABEL_4:
      v10 = v0[18];
      v9 = v0[19];
      v11 = v0[16];
      v12 = v0[17];
      UUID.init()();
      swift_beginAccess();

      v15 = sub_1003A8B54(v13, v14);

      v16 = *(v5 + 16);

      (*(v12 + 32))(v9, v10, v11);
      v17 = type metadata accessor for CloudKitChangeSet(0);
      *(v9 + *(v17 + 20)) = v15;
      *(v9 + *(v17 + 24)) = v16;
      (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
      goto LABEL_5;
    }
  }

  else if (*(*v6 + 16))
  {
    goto LABEL_4;
  }

  v19 = v0[19];

  v20 = type metadata accessor for CloudKitChangeSet(0);
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
LABEL_5:
  v18 = v0[24];

  return _swift_task_switch(sub_10010E254, v18, 0);
}

uint64_t sub_10010E27C()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = swift_task_alloc();
  v0[28] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_10010E374;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 1);
}

uint64_t sub_10010E374()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_10010E550;
  }

  else
  {

    v2 = sub_10010E490;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10010E4AC()
{
  sub_10000B3A8(*(v0 + 152), &qword_1016975C8, &qword_10138C1F0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10010E550()
{
  v1 = *(v0 + 120);

  return _swift_task_switch(sub_10010E5BC, v1, 0);
}

uint64_t sub_10010E5BC()
{
  sub_10000B3A8(*(v0 + 152), &qword_1016975C8, &qword_10138C1F0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10010E65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a4;
  v40 = a6;
  v38 = a3;
  v8 = type metadata accessor for SharingCircleSecret(0);
  v41 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = (&v37 - v12);
  v14 = type metadata accessor for OwnerSharingCircle(0) - 8;
  v15 = __chkstk_darwin(v14);
  v17 = (&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v15);
  v21 = (&v37 - v20);
  v22 = *(a5 + 16);
  v37 = v19;
  if (v22)
  {
    v23 = a5 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v24 = *(v19 + 72);
    while (1)
    {
      sub_100111D2C(v23, v21, type metadata accessor for OwnerSharingCircle);
      sub_100D45194(v21);
      if (v6)
      {
        break;
      }

      result = sub_100111D94(v21, type metadata accessor for OwnerSharingCircle);
      v23 += v24;
      if (!--v22)
      {
        goto LABEL_5;
      }
    }

    v29 = type metadata accessor for OwnerSharingCircle;
    v30 = v21;
  }

  else
  {
LABEL_5:
    v25 = *(v40 + 16);
    if (v25)
    {
      v26 = v41;
      v27 = v40 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
      v28 = *(v41 + 72);
      while (1)
      {
        sub_100111D2C(v27, v13, type metadata accessor for SharingCircleSecret);
        sub_100D44DD8(v13);
        if (v6)
        {
          break;
        }

        result = sub_100111D94(v13, type metadata accessor for SharingCircleSecret);
        v27 += v28;
        if (!--v25)
        {
          goto LABEL_12;
        }
      }

      v29 = type metadata accessor for SharingCircleSecret;
      v30 = v13;
    }

    else
    {
      v26 = v41;
LABEL_12:
      v31 = *(v39 + 16);
      if (v31)
      {
        v32 = v39 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
        v33 = *(v26 + 72);
        while (1)
        {
          sub_100111D2C(v32, v11, type metadata accessor for SharingCircleSecret);
          sub_100D4346C(v11);
          if (v6)
          {
            break;
          }

          result = sub_100111D94(v11, type metadata accessor for SharingCircleSecret);
          v32 += v33;
          if (!--v31)
          {
            goto LABEL_16;
          }
        }

        v29 = type metadata accessor for SharingCircleSecret;
        v30 = v11;
      }

      else
      {
LABEL_16:
        v34 = *(v38 + 16);
        if (!v34)
        {
          return result;
        }

        v35 = v38 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
        v36 = *(v37 + 72);
        while (1)
        {
          sub_100111D2C(v35, v17, type metadata accessor for OwnerSharingCircle);
          sub_100D43440(v17);
          if (v6)
          {
            break;
          }

          result = sub_100111D94(v17, type metadata accessor for OwnerSharingCircle);
          v35 += v36;
          if (!--v34)
          {
            return result;
          }
        }

        v29 = type metadata accessor for OwnerSharingCircle;
        v30 = v17;
      }
    }
  }

  return sub_100111D94(v30, v29);
}

uint64_t sub_10010EA4C(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return _swift_task_switch(sub_10010EB1C, a3, 0);
}

uint64_t sub_10010EB1C()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 80) = v1;
  *(v0 + 112) = *(type metadata accessor for OwnerSharingCircle(0) + 20);

  return _swift_task_switch(sub_10010EB98, v1, 0);
}

uint64_t sub_10010EB98()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  (*(v3 + 16))(v1, *(v0 + 32) + *(v0 + 112), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  *(v6 + 16) = v2;
  (*(v3 + 32))(v6 + v5, v1, v4);

  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  v8 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v7 = v0;
  v7[1] = sub_10010ED18;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100111E5C, v6, v8);
}

uint64_t sub_10010ED18()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_10010EE44, v1, 0);
}

uint64_t sub_10010EE44()
{
  v1 = v0[5];
  v0[13] = v0[2];
  return _swift_task_switch(sub_100111F44, v1, 0);
}

unint64_t sub_10010EED8()
{
  result = qword_1016975C0;
  if (!qword_1016975C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016975C0);
  }

  return result;
}

uint64_t sub_10010EF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v37 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v37);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocationFetcher(0);
  __chkstk_darwin(v11);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46[3] = &_s13DefaultPolicyVN;
  v46[4] = sub_100111A48();
  v14 = swift_allocObject();
  v46[0] = v14;
  v15 = *(a2 + 48);
  *(v14 + 48) = *(a2 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(a2 + 64);
  *(v14 + 96) = *(a2 + 80);
  v16 = *(a2 + 16);
  *(v14 + 16) = *a2;
  *(v14 + 32) = v16;
  v39 = a3;
  v17 = *(a3 + 280);
  sub_10001F280(v46, v45);
  sub_100111A9C(a2, &v41);
  v18 = qword_101694920;
  v38 = v17;

  if (v18 != -1)
  {
    swift_once();
  }

  v34 = qword_10177B2E8;

  v35 = sub_100908168(_swiftEmptyArrayStorage);
  sub_1000BC488();
  (*(v8 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);

  static DispatchQoS.unspecified.getter();
  *&v41 = _swiftEmptyArrayStorage;
  sub_100111C38(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v13[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19 = v11[10];
  type metadata accessor for DeviceIdentityUtility(0);
  v20 = swift_allocObject();
  swift_defaultActor_initialize();
  v21 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v22 = type metadata accessor for Date();
  (*(*(v22 - 8) + 56))(v20 + v21, 1, 1, v22);
  *(v20 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v20 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v20 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 0;
  *(v13 + v19) = v20;
  v23 = v11[11];
  v24 = type metadata accessor for BeaconObservationStore(0);
  v43 = &off_101632E88;
  v44 = &off_101613BE0;
  v42 = v24;
  v25 = v34;
  *&v41 = v34;
  type metadata accessor for MemberCircleRevokeManager();
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_1000BB3F0(&v41, (v26 + 32));
  *(v13 + v23) = v26;
  v27 = v11[12];
  type metadata accessor for MemberCircleRevokeAssistant();
  *(v13 + v27) = swift_allocObject();
  *v13 = v38;
  sub_10001F280(v45, (v13 + 3));
  v28 = v11[8];

  sub_1005CB7C8(v45, v13 + v28);
  sub_100007BAC(v45);
  v13[1] = v25;
  *(v13 + v11[9]) = v35;
  *(v26 + 24) = &off_1016634D8;
  swift_unknownObjectWeakAssign();

  v29 = swift_allocObject();
  v30 = v40;
  v31 = v39;
  *(v29 + 16) = v40;
  *(v29 + 24) = v31;

  sub_1005CAFE0(v30, sub_100111AF8, v29);

  sub_100111D94(v13, type metadata accessor for LocationFetcher);
  return sub_100007BAC(v46);
}

uint64_t sub_10010F500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  sub_1000BC4D4(&qword_101697610, &unk_10138C4B0);
  v4[20] = swift_task_alloc();
  v5 = type metadata accessor for SharingCircleSecretValue(0);
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v6 = type metadata accessor for SharingCircleSecret(0);
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v4[31] = swift_task_alloc();
  v7 = type metadata accessor for OwnerSharingCircle(0);
  v4[32] = v7;
  v4[33] = *(v7 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[40] = v8;
  v4[41] = *(v8 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();

  return _swift_task_switch(sub_10010F7D8, v3, 0);
}

uint64_t sub_10010F7D8()
{
  v1 = v0[16];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[41];
    v4 = v0[33];
    v17 = v0[32];
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v4 + 72);
    do
    {
      v6 = v0[45];
      v8 = v0[39];
      v7 = v0[40];
      sub_100111D2C(v5, v8, type metadata accessor for OwnerSharingCircle);
      (*(v3 + 16))(v6, v8 + *(v17 + 20), v7);
      sub_100111D94(v8, type metadata accessor for OwnerSharingCircle);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_101123D4C((v9 > 1), v10 + 1, 1);
      }

      v11 = v0[45];
      v12 = v0[40];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v16;
      --v2;
    }

    while (v2);
  }

  v13 = v0[19];
  v0[46] = sub_10000954C(_swiftEmptyArrayStorage);

  v14 = *(v13 + 112);
  v0[47] = v14;

  return _swift_task_switch(sub_10010F9B0, v14, 0);
}

uint64_t sub_10010F9B0()
{

  v1 = swift_task_alloc();
  *(v0 + 384) = v1;
  v2 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v1 = v0;
  v1[1] = sub_10010FA9C;
  v3 = *(v0 + 376);

  return unsafeBlocking<A>(context:_:)(v0 + 120, 0xD000000000000010, 0x800000010134A8C0, sub_100111F4C, v3, v2);
}

uint64_t sub_10010FA9C()
{
  v1 = *(*v0 + 376);

  return _swift_task_switch(sub_10010FBB4, v1, 0);
}

uint64_t sub_10010FBB4()
{
  v1 = v0[19];
  v0[49] = v0[15];
  return _swift_task_switch(sub_10010FBD8, v1, 0);
}

uint64_t sub_10010FBD8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = v6[49];
  v37 = *(v8 + 16);
  if (v37)
  {
    v9 = 0;
    v10 = v6[46];
    v36 = v6[33];
    v39 = v10 + 56;
    v31 = v6[41];
    v32 = _swiftEmptyArrayStorage;
    v33 = v6[49];
    v40 = v10;
    while (v9 < *(v8 + 16))
    {
      v11 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v12 = *(v36 + 72);
      sub_100111D2C(v7[49] + v11 + v12 * v9, v7[38], type metadata accessor for OwnerSharingCircle);
      if (*(v10 + 16))
      {
        v34 = v12;
        v35 = v11;
        v38 = v9;
        v13 = v7;
        sub_100111C38(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v10 = v40;
        v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v15 = -1 << *(v40 + 32);
        v16 = v14 & ~v15;
        if ((*(v39 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          v18 = *(v31 + 72);
          v19 = *(v31 + 16);
          while (1)
          {
            v20 = v13[44];
            v21 = v13[40];
            v19(v20, *(v10 + 48) + v16 * v18, v21);
            sub_100111C38(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v22 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*(v31 + 8))(v20, v21);
            if (v22)
            {
              break;
            }

            v16 = (v16 + 1) & v17;
            v10 = v40;
            if (((*(v39 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_11;
            }
          }

          v7 = v13;
          sub_100111DF4(v13[38], v13[37], type metadata accessor for OwnerSharingCircle);
          v23 = v32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_101123FE4(0, v32[2] + 1, 1);
            v23 = v32;
          }

          v8 = v33;
          v10 = v40;
          v25 = v23[2];
          v24 = v23[3];
          if (v25 >= v24 >> 1)
          {
            sub_101123FE4((v24 > 1), v25 + 1, 1);
            v23 = v32;
          }

          v26 = v13[37];
          v23[2] = v25 + 1;
          v32 = v23;
          a1 = sub_100111DF4(v26, v23 + v35 + v25 * v34, type metadata accessor for OwnerSharingCircle);
        }

        else
        {
LABEL_11:
          v7 = v13;
          a1 = sub_100111D94(v13[38], type metadata accessor for OwnerSharingCircle);
          v8 = v33;
        }

        v9 = v38;
      }

      else
      {
        a1 = sub_100111D94(v7[38], type metadata accessor for OwnerSharingCircle);
      }

      if (++v9 == v37)
      {
        v27 = v32;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
LABEL_20:
    v7[50] = v27;

    v28 = swift_task_alloc();
    v7[51] = v28;
    v29 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
    a6 = sub_100014084(&qword_101697600, &qword_1016975F8, &qword_10138C230);
    *v28 = v7;
    v28[1] = sub_100110034;
    a4 = v7[32];
    a2 = v7[19];
    a1 = &unk_10138C258;
    a3 = v27;
    a5 = v29;
  }

  return Array<A>.asyncFlatMap<A>(_:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_100110034(uint64_t a1)
{
  v3 = *v2;
  v3[52] = a1;
  v3[53] = v1;

  if (v1)
  {
  }

  else
  {
    v5 = v3[19];

    return _swift_task_switch(sub_10011016C, v5, 0);
  }
}

uint64_t sub_10011016C()
{
  v1 = v0[17];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[41];
    v146 = v0[36];
    v5 = v0[32];
    v4 = v0[33];
    sub_101123FE4(0, v2, 0);
    v144 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = v1 + v144;
    v140 = (v3 + 16);
    v142 = *(v4 + 72);
    do
    {
      v8 = v0[39];
      v7 = v0[40];
      v9 = v0[36];
      sub_100111D2C(v6, v8, type metadata accessor for OwnerSharingCircle);
      v10 = *v140;
      (*v140)(&v9[v5[5]], v8 + v5[5], v7);
      v10(&v9[v5[6]], v8 + v5[6], v7);
      LOBYTE(v10) = *(v8 + v5[7]);
      v11 = *(v8 + v5[8]);
      v12 = *(v8 + v5[9]);

      sub_100111D94(v8, type metadata accessor for OwnerSharingCircle);
      *v9 = 0;
      *(v146 + 8) = 0xC000000000000000;
      v9[v5[7]] = v10;
      *&v9[v5[8]] = v11;
      v9[v5[9]] = v12;
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_101123FE4((v13 > 1), v14 + 1, 1);
      }

      v15 = v0[36];
      _swiftEmptyArrayStorage[2] = v14 + 1;
      sub_100111DF4(v15, _swiftEmptyArrayStorage + v144 + v14 * v142, type metadata accessor for OwnerSharingCircle);
      v6 += v142;
      --v2;
    }

    while (v2);
  }

  v16 = v0[18];
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v0[41];
    v138 = v0[28];
    v19 = v0[25];
    v20 = v0[26];
    v134 = v0[24];
    v21 = v0[22];
    sub_101124114(0, v17, 0);
    v137 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = v16 + v137;
    v145 = (v18 + 16);
    v23 = _swiftEmptyArrayStorage;
    v135 = (v21 + 56);
    v136 = *(v20 + 72);
    v139 = (v18 + 8);
    v24 = v0[53];
    do
    {
      v143 = v17;
      v147 = v23;
      v26 = v0[42];
      v25 = v0[43];
      v27 = v0[40];
      v28 = v0[27];
      v29 = v0[20];
      v141 = v22;
      sub_100111D2C(v22, v28, type metadata accessor for SharingCircleSecret);
      v30 = *v145;
      (*v145)(v25, v28 + v19[5], v27);
      v30(v26, v28 + v19[6], v27);
      v31 = v19[7];
      v32 = (v28 + v19[8]);
      v33 = *v32;
      v34 = v32[1];
      v35 = *(v28 + v31);
      v36 = *(v28 + v31 + 8);
      sub_100017D5C(*v32, v34);

      sub_101316078(v33, v34, v35, v36, v29);
      v37 = v24;
      v38 = v0[24];
      v40 = v0[20];
      v39 = v0[21];
      if (v37)
      {

        (*v135)(v40, 1, 1, v39);
        v41 = *v32;
        v42 = v32[1];
        *v38 = *v32;
        *(v134 + 8) = v42;
        swift_storeEnumTagMultiPayload();
        sub_100017D5C(v41, v42);
      }

      else
      {
        (*v135)(v0[20], 0, 1, v0[21]);
        sub_100111DF4(v40, v38, type metadata accessor for SharingCircleSecretValue);
      }

      v44 = v0[42];
      v43 = v0[43];
      v45 = v0[40];
      v46 = v0[28];
      v48 = v0[23];
      v47 = v0[24];
      *v46 = 0;
      *(v138 + 8) = 0xC000000000000000;
      v30(v46 + v19[5], v43, v45);
      v30(v46 + v19[6], v44, v45);
      v49 = sub_101315BA4();
      v50 = (v46 + v19[8]);
      *v50 = v49;
      v50[1] = v51;
      sub_100111D2C(v47, v48, type metadata accessor for SharingCircleSecretValue);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v54 = v0[42];
      v53 = v0[43];
      v55 = v0[40];
      v56 = v0[27];
      v57 = v0[23];
      v58 = v0[24];
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            sub_100111D94(v57, type metadata accessor for SharingCircleSecretValue);
            sub_100111D94(v58, type metadata accessor for SharingCircleSecretValue);
            v62 = *v139;
            (*v139)(v54, v55);
            v62(v53, v55);
            sub_100111D94(v56, type metadata accessor for SharingCircleSecret);
            v60 = 0xD000000000000012;
            v61 = 0x80000001013475D0;
          }

          else
          {
            sub_100111D94(v57, type metadata accessor for SharingCircleSecretValue);
            sub_100111D94(v58, type metadata accessor for SharingCircleSecretValue);
            v65 = *v139;
            (*v139)(v54, v55);
            v65(v53, v55);
            sub_100111D94(v56, type metadata accessor for SharingCircleSecret);
            v60 = 0xD000000000000011;
            v61 = 0x80000001013475F0;
          }
        }

        else
        {
          sub_100111D94(v57, type metadata accessor for SharingCircleSecretValue);
          sub_100111D94(v58, type metadata accessor for SharingCircleSecretValue);
          v64 = *v139;
          (*v139)(v54, v55);
          v64(v53, v55);
          sub_100111D94(v56, type metadata accessor for SharingCircleSecret);
          v61 = 0xE700000000000000;
          v60 = 0x6E776F6E6B6E75;
        }
      }

      else if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v132 = v0[23];
          sub_100111D94(v58, type metadata accessor for SharingCircleSecretValue);
          v63 = *v139;
          (*v139)(v54, v55);
          v63(v53, v55);
          sub_100111D94(v56, type metadata accessor for SharingCircleSecret);
          sub_100111D94(v132, type metadata accessor for SharingCircleSecretValue);
          v60 = 0xD000000000000013;
          v61 = 0x8000000101347630;
        }

        else
        {
          sub_100111D94(v57, type metadata accessor for SharingCircleSecretValue);
          sub_100111D94(v58, type metadata accessor for SharingCircleSecretValue);
          v67 = *v139;
          (*v139)(v54, v55);
          v67(v53, v55);
          sub_100111D94(v56, type metadata accessor for SharingCircleSecret);
          v60 = 0xD000000000000014;
          v61 = 0x8000000101347650;
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_100111D94(v57, type metadata accessor for SharingCircleSecretValue);
        sub_100111D94(v58, type metadata accessor for SharingCircleSecretValue);
        v59 = *v139;
        (*v139)(v54, v55);
        v59(v53, v55);
        sub_100111D94(v56, type metadata accessor for SharingCircleSecret);
        v60 = 0xD000000000000014;
        v61 = 0x8000000101347610;
      }

      else
      {
        v133 = v0[23];
        sub_100111D94(v58, type metadata accessor for SharingCircleSecretValue);
        v66 = *v139;
        (*v139)(v54, v55);
        v66(v53, v55);
        sub_100111D94(v56, type metadata accessor for SharingCircleSecret);
        sub_100111D94(v133, type metadata accessor for SharingCircleSecretValue);
        v61 = 0xE90000000000006ELL;
        v60 = 0x656B6F546E696F6ALL;
      }

      v68 = (v0[28] + v19[7]);
      *v68 = v60;
      v68[1] = v61;
      v23 = v147;
      v70 = v147[2];
      v69 = v147[3];
      if (v70 >= v69 >> 1)
      {
        sub_101124114((v69 > 1), v70 + 1, 1);
        v23 = v147;
      }

      v71 = v0[28];
      v23[2] = v70 + 1;
      sub_100111DF4(v71, v23 + v137 + v70 * v136, type metadata accessor for SharingCircleSecret);
      v24 = 0;
      v22 = v141 + v136;
      v17 = v143 - 1;
    }

    while (v143 != 1);
    v72 = 0;
  }

  else
  {
    v72 = v0[53];
    v23 = _swiftEmptyArrayStorage;
  }

  v73 = v0[50];
  type metadata accessor for ChangeSetAdaptor();
  inited = swift_initStackObject();
  *(inited + 16) = _swiftEmptyDictionarySingleton;
  *(inited + 24) = _swiftEmptyDictionarySingleton;
  v75 = inited + 24;
  v76 = *(v73 + 16);

  v148 = v23;
  if (!v76)
  {
    goto LABEL_37;
  }

  v77 = v0[33];
  v78 = v0[35];
  v79 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v80 = *(v77 + 72);
  sub_100111D2C(v0[50] + v79, v78, type metadata accessor for OwnerSharingCircle);
  sub_100D45194(v78);
  if (!v72)
  {
    v84 = sub_100111D94(v0[35], type metadata accessor for OwnerSharingCircle);
    if (v76 != 1)
    {
      v87 = v80 + v79;
      v88 = 1;
      while (v88 < *(v73 + 16))
      {
        v89 = v0[35];
        sub_100111D2C(v0[50] + v87, v89, type metadata accessor for OwnerSharingCircle);
        sub_100D45194(v89);
        ++v88;
        v84 = sub_100111D94(v0[35], type metadata accessor for OwnerSharingCircle);
        v87 += v80;
        if (v76 == v88)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
      goto LABEL_74;
    }

LABEL_36:
    v72 = 0;
    v23 = v148;
LABEL_37:
    v90 = v0[52];

    v91 = *(v90 + 16);
    if (v91)
    {
      v92 = v0[26];
      v93 = v0[30];
      v94 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v95 = *(v92 + 72);
      sub_100111D2C(v0[52] + v94, v93, type metadata accessor for SharingCircleSecret);
      sub_100D44DD8(v93);
      if (v72)
      {
        v96 = v0[30];

        swift_setDeallocating();

        v82 = type metadata accessor for SharingCircleSecret;
        v83 = v96;
        goto LABEL_56;
      }

      v84 = sub_100111D94(v0[30], type metadata accessor for SharingCircleSecret);
      if (v91 != 1)
      {
        v97 = v95 + v94;
        v98 = 1;
        while (v98 < *(v90 + 16))
        {
          v99 = v0[30];
          sub_100111D2C(v0[52] + v97, v99, type metadata accessor for SharingCircleSecret);
          sub_100D44DD8(v99);
          ++v98;
          v84 = sub_100111D94(v0[30], type metadata accessor for SharingCircleSecret);
          v97 += v95;
          if (v91 == v98)
          {
            goto LABEL_44;
          }
        }

LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

LABEL_44:
      v72 = 0;
      v23 = v148;
    }

    v100 = v23[2];
    if (v100)
    {
      v101 = v0[26];
      v102 = v0[29];
      v103 = (*(v101 + 80) + 32) & ~*(v101 + 80);
      v104 = *(v101 + 72);
      sub_100111D2C(v23 + v103, v102, type metadata accessor for SharingCircleSecret);
      sub_100D4346C(v102);
      if (v72)
      {
        v105 = v0[29];

        swift_setDeallocating();

        v82 = type metadata accessor for SharingCircleSecret;
        v83 = v105;
        goto LABEL_56;
      }

      v84 = sub_100111D94(v0[29], type metadata accessor for SharingCircleSecret);
      if (v100 != 1)
      {
        v106 = v23 + v104 + v103;
        v107 = 1;
        while (v107 < v23[2])
        {
          v108 = v0[29];
          sub_100111D2C(v106, v108, type metadata accessor for SharingCircleSecret);
          sub_100D4346C(v108);
          ++v107;
          v84 = sub_100111D94(v0[29], type metadata accessor for SharingCircleSecret);
          v106 += v104;
          if (v100 == v107)
          {
            goto LABEL_52;
          }
        }

        goto LABEL_75;
      }

LABEL_52:
      v72 = 0;
    }

    v109 = _swiftEmptyArrayStorage[2];
    if (!v109)
    {
      goto LABEL_63;
    }

    v110 = v0[33];
    v111 = v0[34];
    v112 = (*(v110 + 80) + 32) & ~*(v110 + 80);
    v113 = *(v110 + 72);
    sub_100111D2C(_swiftEmptyArrayStorage + v112, v111, type metadata accessor for OwnerSharingCircle);
    sub_100D43440(v111);
    if (v72)
    {
      v114 = v0[34];

      swift_setDeallocating();

      v82 = type metadata accessor for OwnerSharingCircle;
      v83 = v114;
      goto LABEL_56;
    }

    sub_100111D94(v0[34], type metadata accessor for OwnerSharingCircle);
    v84 = _swiftEmptyArrayStorage;
    if (v109 == 1)
    {
LABEL_63:

      swift_beginAccess();
      v120 = *(inited + 16);
      if (*(v120 + 16))
      {
        goto LABEL_68;
      }

      swift_beginAccess();
      if ((*v75 & 0xC000000000000001) != 0)
      {

        v121 = __CocoaDictionary.count.getter();
      }

      else
      {
        v121 = *(*v75 + 16);
      }

      if (v121)
      {
LABEL_68:
        v122 = v0[44];
        v123 = v0[40];
        v124 = v0[41];
        v125 = v0[31];
        UUID.init()();
        swift_beginAccess();

        v128 = sub_1003A8B54(v126, v127);
        swift_bridgeObjectRelease_n();
        (*(v124 + 32))(v125, v122, v123);
        v129 = type metadata accessor for CloudKitChangeSet(0);
        *(v125 + *(v129 + 20)) = v128;
        *(v125 + *(v129 + 24)) = v120;
        (*(*(v129 - 8) + 56))(v125, 0, 1, v129);
      }

      else
      {
        v130 = v0[31];

        v131 = type metadata accessor for CloudKitChangeSet(0);
        (*(*(v131 - 8) + 56))(v130, 1, 1, v131);
      }

      v85 = v0[47];
      v84 = sub_100111324;
      v86 = 0;

      return _swift_task_switch(v84, v85, v86);
    }

    v117 = _swiftEmptyArrayStorage + v113 + v112;
    v118 = 1;
    while (v118 < _swiftEmptyArrayStorage[2])
    {
      v119 = v0[34];
      sub_100111D2C(v117, v119, type metadata accessor for OwnerSharingCircle);
      sub_100D43440(v119);
      ++v118;
      sub_100111D94(v0[34], type metadata accessor for OwnerSharingCircle);
      v117 += v113;
      v84 = _swiftEmptyArrayStorage;
      if (v109 == v118)
      {
        goto LABEL_63;
      }
    }

LABEL_76:
    __break(1u);
    return _swift_task_switch(v84, v85, v86);
  }

  v81 = v0[35];

  swift_setDeallocating();

  v82 = type metadata accessor for OwnerSharingCircle;
  v83 = v81;
LABEL_56:
  sub_100111D94(v83, v82);

  v115 = v0[1];

  return v115();
}

uint64_t sub_10011134C()
{
  v1 = v0[54];
  v2 = v0[31];
  v3 = swift_task_alloc();
  v0[55] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[56] = v4;
  *v4 = v0;
  v4[1] = sub_100111444;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 1);
}

uint64_t sub_100111444()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_1001116DC;
  }

  else
  {

    v2 = sub_100111560;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10011157C()
{
  sub_10000B3A8(*(v0 + 248), &qword_1016975C8, &qword_10138C1F0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001116DC()
{
  v1 = *(v0 + 152);

  return _swift_task_switch(sub_100111748, v1, 0);
}

uint64_t sub_100111748()
{
  sub_10000B3A8(*(v0 + 248), &qword_1016975C8, &qword_10138C1F0);

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1001118C8()
{
  result = qword_1016975D0;
  if (!qword_1016975D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016975D0);
  }

  return result;
}

uint64_t sub_10011196C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

unint64_t sub_100111A48()
{
  result = qword_1016975F0;
  if (!qword_1016975F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016975F0);
  }

  return result;
}

uint64_t sub_100111B38(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014650;

  return sub_10010D2A8(a1, a2, v2);
}

unint64_t sub_100111BE4()
{
  result = qword_101698E30;
  if (!qword_101698E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698E30);
  }

  return result;
}

uint64_t sub_100111C38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100111C80(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_10010EA4C(a1, a2, v2);
}

uint64_t sub_100111D2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100111D94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100111DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100111E68@<X0>(size_t *a1@<X8>)
{
  type metadata accessor for UUID();
  v3 = *(v1 + 16);

  return sub_100E70638(v3, a1);
}

unint64_t sub_100111EF0()
{
  result = qword_101697618;
  if (!qword_101697618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697618);
  }

  return result;
}

uint64_t sub_100111F58()
{
  *(v1 + 16) = v0;
  swift_defaultActor_initialize();
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100111FF4;

  return daemon.getter();
}

uint64_t sub_100111FF4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100019300(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019300(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1001121D0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1001121D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_10011244C;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_10011231C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10011231C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  *(v2 + 112) = v1;
  type metadata accessor for SharingCircleKeyManager();
  v3 = swift_allocObject();
  swift_retain_n();
  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v3 + 112) = v4;
  *(v3 + 120) = v1;
  *(v2 + 120) = v3;

  return _swift_task_switch(sub_1001123E4, v2, 0);
}

uint64_t sub_1001123E4()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1(v2);
}

uint64_t sub_10011244C()
{
  type metadata accessor for CheckDataIntegrityUseCase();
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001124D0()
{
  v1[6] = v0;
  v2 = type metadata accessor for MemberSharingCircle(0);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v4 = type metadata accessor for OwnerSharingCircle(0);
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_100112654, v0, 0);
}

uint64_t sub_100112654()
{
  v1 = v0[6];
  v0[2] = _swiftEmptyArrayStorage;
  v2 = *(v1 + 112);
  v0[17] = v2;
  return _swift_task_switch(sub_100112684, v2, 0);
}

uint64_t sub_100112684()
{

  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  v2 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v1 = v0;
  v1[1] = sub_100112770;
  v3 = *(v0 + 136);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_100111F4C, v3, v2);
}

uint64_t sub_100112770()
{
  v1 = *(*v0 + 136);

  return _swift_task_switch(sub_100112888, v1, 0);
}

uint64_t sub_100112888()
{
  v1 = v0[6];
  v0[19] = v0[3];
  return _swift_task_switch(sub_1001128AC, v1, 0);
}

uint64_t sub_1001128AC()
{
  v1 = *(v0 + 152);
  v2 = *(v1 + 16);
  *(v0 + 160) = v2;
  if (v2)
  {
    v3 = *(v0 + 120);
    v4 = *(v0 + 128);
    v5 = *(v0 + 104);
    v6 = *(*(v0 + 112) + 20);
    *(v0 + 288) = v6;
    v7 = *(v3 + 80);
    *(v0 + 292) = v7;
    *(v0 + 168) = *(v3 + 72);
    *(v0 + 176) = 0;
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    sub_10012B2B8(v1 + ((v7 + 32) & ~v7), v4, type metadata accessor for OwnerSharingCircle);
    (*(v9 + 16))(v5, v4 + v6, v8);
    sub_10012B448(v4, type metadata accessor for OwnerSharingCircle);
    v10 = swift_task_alloc();
    *(v0 + 184) = v10;
    *v10 = v0;
    v10[1] = sub_100112A3C;
    v11 = *(v0 + 104);

    return sub_1001145F8(v11);
  }

  else
  {

    v13 = *(v0 + 136);
    *(v0 + 32) = _swiftEmptyArrayStorage;

    return _swift_task_switch(sub_10011325C, v13, 0);
  }
}

uint64_t sub_100112A3C(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 192) = a1;

  return _swift_task_switch(sub_100112B54, v2, 0);
}

uint64_t sub_100112B54()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10138C320;
    *(v2 + 32) = v1;
    v3 = objc_allocWithZone(SPItemSharingDataIntegrity);
    sub_100008BB8(0, &qword_101697770, SPOwnedCircleDataIntegrity_ptr);
    v4 = v1;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = [v3 initWithOwnedCircles:isa memberCircles:0];

    (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));
    v7 = [v6 ownedCircles];

    if (v7)
    {
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100398124(v8);
    }

    v9 = *(v0 + 176) + 1;
    if (v9 == *(v0 + 160))
    {

      v10 = *(v0 + 136);
      *(v0 + 32) = _swiftEmptyArrayStorage;

      return _swift_task_switch(sub_10011325C, v10, 0);
    }

    else
    {
      *(v0 + 176) = v9;
      v13 = *(v0 + 288);
      v14 = *(v0 + 128);
      v15 = *(v0 + 104);
      v16 = *(v0 + 80);
      v17 = *(v0 + 88);
      sub_10012B2B8(*(v0 + 152) + ((*(v0 + 292) + 32) & ~*(v0 + 292)) + *(v0 + 168) * v9, v14, type metadata accessor for OwnerSharingCircle);
      (*(v17 + 16))(v15, v14 + v13, v16);
      sub_10012B448(v14, type metadata accessor for OwnerSharingCircle);
      v18 = swift_task_alloc();
      *(v0 + 184) = v18;
      *v18 = v0;
      v18[1] = sub_100112A3C;
      v19 = *(v0 + 104);

      return sub_1001145F8(v19);
    }
  }

  else
  {
    v11 = swift_task_alloc();
    *(v0 + 200) = v11;
    *v11 = v0;
    v11[1] = sub_100112E68;
    v12 = *(v0 + 104);

    return sub_100115970(v12);
  }
}

uint64_t sub_100112E68(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_100112F80, v2, 0);
}

uint64_t sub_100112F80()
{
  v1 = *(v0 + 208);
  if (v1)
  {
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10138C320;
    *(v2 + 32) = v1;
    v3 = objc_allocWithZone(SPItemSharingDataIntegrity);
    sub_100008BB8(0, &qword_101697768, SPMemberCircleDataIntegrity_ptr);
    v4 = v1;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = [v3 initWithOwnedCircles:0 memberCircles:isa];
  }

  else
  {
    v6 = [objc_allocWithZone(SPItemSharingDataIntegrity) initWithOwnedCircles:0 memberCircles:0];
  }

  (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));
  v7 = [v6 ownedCircles];

  if (v7)
  {
    sub_100008BB8(0, &qword_101697770, SPOwnedCircleDataIntegrity_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100398124(v8);
  }

  v9 = *(v0 + 176) + 1;
  if (v9 == *(v0 + 160))
  {

    v10 = *(v0 + 136);
    *(v0 + 32) = _swiftEmptyArrayStorage;

    return _swift_task_switch(sub_10011325C, v10, 0);
  }

  else
  {
    *(v0 + 176) = v9;
    v11 = *(v0 + 288);
    v12 = *(v0 + 128);
    v13 = *(v0 + 104);
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);
    sub_10012B2B8(*(v0 + 152) + ((*(v0 + 292) + 32) & ~*(v0 + 292)) + *(v0 + 168) * v9, v12, type metadata accessor for OwnerSharingCircle);
    (*(v15 + 16))(v13, v12 + v11, v14);
    sub_10012B448(v12, type metadata accessor for OwnerSharingCircle);
    v16 = swift_task_alloc();
    *(v0 + 184) = v16;
    *v16 = v0;
    v16[1] = sub_100112A3C;
    v17 = *(v0 + 104);

    return sub_1001145F8(v17);
  }
}

uint64_t sub_10011325C()
{

  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  v2 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v1 = v0;
  v1[1] = sub_100113348;
  v3 = *(v0 + 136);

  return unsafeBlocking<A>(context:_:)(v0 + 40, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4B8, v3, v2);
}

uint64_t sub_100113348()
{
  v1 = *(*v0 + 136);

  return _swift_task_switch(sub_100113460, v1, 0);
}

uint64_t sub_100113460()
{
  v1 = v0[6];
  v0[28] = v0[5];
  return _swift_task_switch(sub_100113480, v1, 0);
}

uint64_t sub_100113480()
{
  v1 = *(v0 + 224);
  v2 = *(v1 + 16);
  *(v0 + 232) = v2;
  if (v2)
  {
    v3 = *(v0 + 64);
    v4 = *(*(v0 + 56) + 20);
    *(v0 + 296) = v4;
    v5 = *(v3 + 80);
    *(v0 + 300) = v5;
    *(v0 + 240) = *(v3 + 72);
    *(v0 + 248) = 0;
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    sub_10012B2B8(v1 + ((v5 + 32) & ~v5), v8, type metadata accessor for MemberSharingCircle);
    (*(v7 + 16))(v6, v8 + v4, v9);
    sub_10012B448(v8, type metadata accessor for MemberSharingCircle);
    v10 = swift_task_alloc();
    *(v0 + 256) = v10;
    *v10 = v0;
    v10[1] = sub_1001136D4;
    v11 = *(v0 + 96);

    return sub_1001145F8(v11);
  }

  else
  {

    v13 = objc_allocWithZone(SPItemSharingDataIntegrity);
    sub_100008BB8(0, &qword_101697770, SPOwnedCircleDataIntegrity_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_100008BB8(0, &qword_101697768, SPMemberCircleDataIntegrity_ptr);
    v15 = Array._bridgeToObjectiveC()().super.isa;

    v16 = [v13 initWithOwnedCircles:isa memberCircles:v15];

    v17 = *(v0 + 8);

    return v17(v16);
  }
}

uint64_t sub_1001136D4(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_1001137EC, v2, 0);
}

uint64_t sub_1001137EC()
{
  v1 = *(v0 + 264);
  if (v1)
  {
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10138C320;
    *(v2 + 32) = v1;
    v3 = objc_allocWithZone(SPItemSharingDataIntegrity);
    sub_100008BB8(0, &qword_101697770, SPOwnedCircleDataIntegrity_ptr);
    v4 = v1;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = [v3 initWithOwnedCircles:isa memberCircles:0];

    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    v7 = [v6 memberCircles];

    if (v7)
    {
      sub_100008BB8(0, &qword_101697768, SPMemberCircleDataIntegrity_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10039813C(v8);
    }

    v9 = *(v0 + 248) + 1;
    if (v9 == *(v0 + 232))
    {

      v10 = objc_allocWithZone(SPItemSharingDataIntegrity);
      v11 = Array._bridgeToObjectiveC()().super.isa;

      sub_100008BB8(0, &qword_101697768, SPMemberCircleDataIntegrity_ptr);
      v12 = Array._bridgeToObjectiveC()().super.isa;

      v13 = [v10 initWithOwnedCircles:v11 memberCircles:v12];

      v14 = *(v0 + 8);

      return v14(v13);
    }

    else
    {
      *(v0 + 248) = v9;
      v18 = *(v0 + 296);
      v20 = *(v0 + 88);
      v19 = *(v0 + 96);
      v22 = *(v0 + 72);
      v21 = *(v0 + 80);
      sub_10012B2B8(*(v0 + 224) + ((*(v0 + 300) + 32) & ~*(v0 + 300)) + *(v0 + 240) * v9, v22, type metadata accessor for MemberSharingCircle);
      (*(v20 + 16))(v19, v22 + v18, v21);
      sub_10012B448(v22, type metadata accessor for MemberSharingCircle);
      v23 = swift_task_alloc();
      *(v0 + 256) = v23;
      *v23 = v0;
      v23[1] = sub_1001136D4;
      v24 = *(v0 + 96);

      return sub_1001145F8(v24);
    }
  }

  else
  {
    v16 = swift_task_alloc();
    *(v0 + 272) = v16;
    *v16 = v0;
    v16[1] = sub_100113BCC;
    v17 = *(v0 + 96);

    return sub_100115970(v17);
  }
}

uint64_t sub_100113BCC(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 280) = a1;

  return _swift_task_switch(sub_100113CE4, v2, 0);
}

uint64_t sub_100113CE4()
{
  v1 = *(v0 + 280);
  if (v1)
  {
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10138C320;
    *(v2 + 32) = v1;
    v3 = objc_allocWithZone(SPItemSharingDataIntegrity);
    sub_100008BB8(0, &qword_101697768, SPMemberCircleDataIntegrity_ptr);
    v4 = v1;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = [v3 initWithOwnedCircles:0 memberCircles:isa];
  }

  else
  {
    v6 = [objc_allocWithZone(SPItemSharingDataIntegrity) initWithOwnedCircles:0 memberCircles:0];
  }

  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  v7 = [v6 memberCircles];

  if (v7)
  {
    sub_100008BB8(0, &qword_101697768, SPMemberCircleDataIntegrity_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10039813C(v8);
  }

  v9 = *(v0 + 248) + 1;
  if (v9 == *(v0 + 232))
  {

    v10 = objc_allocWithZone(SPItemSharingDataIntegrity);
    sub_100008BB8(0, &qword_101697770, SPOwnedCircleDataIntegrity_ptr);
    v11 = Array._bridgeToObjectiveC()().super.isa;

    sub_100008BB8(0, &qword_101697768, SPMemberCircleDataIntegrity_ptr);
    v12 = Array._bridgeToObjectiveC()().super.isa;

    v13 = [v10 initWithOwnedCircles:v11 memberCircles:v12];

    v14 = *(v0 + 8);

    return v14(v13);
  }

  else
  {
    *(v0 + 248) = v9;
    v16 = *(v0 + 296);
    v18 = *(v0 + 88);
    v17 = *(v0 + 96);
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);
    sub_10012B2B8(*(v0 + 224) + ((*(v0 + 300) + 32) & ~*(v0 + 300)) + *(v0 + 240) * v9, v20, type metadata accessor for MemberSharingCircle);
    (*(v18 + 16))(v17, v20 + v16, v19);
    sub_10012B448(v20, type metadata accessor for MemberSharingCircle);
    v21 = swift_task_alloc();
    *(v0 + 256) = v21;
    *v21 = v0;
    v21[1] = sub_1001136D4;
    v22 = *(v0 + 96);

    return sub_1001145F8(v22);
  }
}

uint64_t sub_10011407C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100114114;

  return sub_1001145F8(a1);
}

uint64_t sub_100114114(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10011422C, v2, 0);
}

uint64_t sub_10011422C()
{
  v1 = v0[5];
  if (v1)
  {
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10138C320;
    *(v2 + 32) = v1;
    v3 = objc_allocWithZone(SPItemSharingDataIntegrity);
    sub_100008BB8(0, &qword_101697770, SPOwnedCircleDataIntegrity_ptr);
    v4 = v1;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = [v3 initWithOwnedCircles:isa memberCircles:0];

    v7 = v0[1];

    return v7(v6);
  }

  else
  {
    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_1001143AC;
    v10 = v0[2];

    return sub_100115970(v10);
  }
}

uint64_t sub_1001143AC(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_1001144C4, v2, 0);
}

uint64_t sub_1001144C4()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10138C320;
    *(v2 + 32) = v1;
    v3 = objc_allocWithZone(SPItemSharingDataIntegrity);
    sub_100008BB8(0, &qword_101697768, SPMemberCircleDataIntegrity_ptr);
    v4 = v1;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = [v3 initWithOwnedCircles:0 memberCircles:isa];

    v7 = v6;
  }

  else
  {
    v7 = [objc_allocWithZone(SPItemSharingDataIntegrity) initWithOwnedCircles:0 memberCircles:0];
  }

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_1001145F8(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for UUID();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for OwnerSharingCircle(0);
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100114758, v1, 0);
}

uint64_t sub_100114758()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 120) = v1;
  return _swift_task_switch(sub_10011477C, v1, 0);
}

uint64_t sub_10011477C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  (*(v4 + 16))(v2, *(v0 + 32), v3);
  v5 = *(v4 + 80);
  *(v0 + 272) = v5;
  v6 = (v5 + 24) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 128) = v7;
  *(v7 + 16) = v1;
  (*(v4 + 32))(v7 + v6, v2, v3);

  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_1001148E4;
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_10012B238, v7, v10);
}

uint64_t sub_1001148E4()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_100114A10, v1, 0);
}

uint64_t sub_100114A10()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  if ((*(*(v0 + 104) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_1016AFA00, &qword_10138C4D0);

    v3 = *(v0 + 8);

    return v3(0);
  }

  v5 = *(v0 + 112);
  sub_10012B250(v2, v5, type metadata accessor for OwnerSharingCircle);
  _StringGuts.grow(_:)(22);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 280) = *(v5 + *(v1 + 28));
  _print_unlocked<A, B>(_:_:)();
  v6._countAndFlagsBits = 8250;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  sub_100019300(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 8236;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9 = *(v5 + *(v1 + 36));
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v10 = 0xE500000000000000;
      v11 = 0x746E65732ELL;
    }

    else if (v9 == 4)
    {
      v10 = 0x800000010134B830;
      v11 = 0xD000000000000013;
    }

    else
    {
      v10 = 0xE700000000000000;
      v11 = 0x64656C6961662ELL;
    }
  }

  else if (*(v5 + *(v1 + 36)))
  {
    if (v9 == 1)
    {
      v10 = 0xE900000000000064;
      v11 = 0x657470656363612ELL;
    }

    else
    {
      v10 = 0xEA00000000006465;
      v11 = 0x747365757165722ELL;
    }
  }

  else
  {
    v10 = 0xEB00000000646574;
    v11 = 0x70656363616E752ELL;
  }

  v12 = *(v0 + 112);
  v13 = *(v0 + 96);
  v14 = v10;
  String.append(_:)(*&v11);

  v15._countAndFlagsBits = 0x6E6F63616562202CLL;
  v15._object = 0xEA0000000000203ALL;
  String.append(_:)(v15);
  *(v0 + 276) = *(v13 + 24);
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17 = objc_allocWithZone(SPDataIntegrityCheck);
  v18 = String._bridgeToObjectiveC()();

  *(v0 + 144) = [v17 initWithValue:v18 severity:0];

  v19._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v19);

  v20 = objc_allocWithZone(SPDataIntegrityCheck);
  v21 = String._bridgeToObjectiveC()();

  *(v0 + 152) = [v20 initWithValue:v21 severity:0];

  v22 = *(v12 + *(v13 + 32));
  *(v0 + 160) = v22;
  v23 = *(v22 + 16);
  if (!v23)
  {
    goto LABEL_19;
  }

  v24 = sub_1003A85FC(*(v22 + 16), 0);
  v25 = sub_1003CC2CC();

  sub_1000128F8(0x44496E6F63616562);
  if (v25 != v23)
  {
    __break(1u);
LABEL_19:
    v24 = _swiftEmptyArrayStorage;
  }

  *(v0 + 168) = v24;
  v26 = swift_task_alloc();
  *(v0 + 176) = v26;
  *v26 = v0;
  v26[1] = sub_100114EE8;

  return sub_100121798(v24);
}

uint64_t sub_100114EE8(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 184) = a1;

  return _swift_task_switch(sub_10011501C, v2, 0);
}

uint64_t sub_10011501C()
{
  v1 = *(v0[20] + 16);
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_1001150C0;
  v3 = v0[14];

  return sub_100122960(v3, v1);
}

uint64_t sub_1001150C0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 276);
  v4 = *(*v1 + 112);
  v7 = *v1;
  *(v2 + 200) = a1;

  v5 = swift_task_alloc();
  *(v2 + 208) = v5;
  *v5 = v7;
  v5[1] = sub_100115234;

  return sub_10011F1E0(v4 + v3);
}

uint64_t sub_100115234(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 276);
  v4 = *(*v1 + 112);
  v7 = *v1;
  *(v2 + 216) = a1;

  v5 = swift_task_alloc();
  *(v2 + 224) = v5;
  *v5 = v7;
  v5[1] = sub_1001153A8;

  return sub_100120400(v4 + v3);
}

uint64_t sub_1001153A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v7 = *v1;
  *(v3 + 232) = a1;

  v4 = swift_task_alloc();
  *(v3 + 240) = v4;
  *v4 = v7;
  v4[1] = sub_10011550C;
  v5 = *(v2 + 112);

  return sub_100123994(v5);
}

uint64_t sub_10011550C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 276);
  v4 = *(*v1 + 112);
  v7 = *v1;
  *(v2 + 248) = a1;

  v5 = swift_task_alloc();
  *(v2 + 256) = v5;
  *v5 = v7;
  v5[1] = sub_100115680;

  return sub_100121034(v4 + v3);
}

uint64_t sub_100115680(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_100115798, v2, 0);
}

uint64_t sub_100115798()
{
  v1 = v0[27];
  v2 = v0[25];
  v11 = v0[18];
  v12 = v0[19];
  v13 = v0[14];
  v3 = objc_allocWithZone(SPOwnedCircleDataIntegrity);
  sub_100008BB8(0, &qword_101697778, SPPeerTrustDataIntegrity_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100008BB8(0, &qword_101697780, SPDataIntegrityCheck_ptr);
  v5 = Array._bridgeToObjectiveC()().super.isa;

  v6 = Array._bridgeToObjectiveC()().super.isa;

  v7 = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v3 initWithCircleRecord:v11 beaconRecord:v12 peerTrusts:isa sharedSecrets:v2 keySyncRecord:v1 observations:v5 itemSharingKey:v6 estimatedLocations:v7];

  sub_10012B448(v13, type metadata accessor for OwnerSharingCircle);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_100115970(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for MemberSharingCircle(0);
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100115B0C, v1, 0);
}

uint64_t sub_100115B0C()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 120) = v1;
  return _swift_task_switch(sub_100115B30, v1, 0);
}

uint64_t sub_100115B30()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 16);
  v6 = *(v4 + 16);
  *(v0 + 128) = v6;
  *(v0 + 136) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = *(v4 + 80);
  *(v0 + 360) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 144) = v9;
  *(v9 + 16) = v1;
  v10 = *(v4 + 32);
  *(v0 + 152) = v10;
  *(v0 + 160) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v3);

  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  *v11 = v0;
  v11[1] = sub_100115CB0;
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_10012B080, v9, v13);
}

uint64_t sub_100115CB0()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100115DDC, v1, 0);
}

uint64_t sub_100115DDC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  if ((*(*(v0 + 104) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);

    v3 = *(v0 + 8);

    return v3(0);
  }

  else
  {
    v5 = *(v0 + 112);
    sub_10012B250(v2, v5, type metadata accessor for MemberSharingCircle);
    UUID.uuidString.getter();
    v6._countAndFlagsBits = 2108704;
    v6._object = 0xE300000000000000;
    String.append(_:)(v6);
    v7 = *(v5 + *(v1 + 40));
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        v8 = 0xE500000000000000;
        v9 = 0x746E65732ELL;
      }

      else if (v7 == 4)
      {
        v8 = 0x800000010134B830;
        v9 = 0xD000000000000013;
      }

      else
      {
        v8 = 0xE700000000000000;
        v9 = 0x64656C6961662ELL;
      }
    }

    else if (*(v5 + *(v1 + 40)))
    {
      if (v7 == 1)
      {
        v8 = 0xE900000000000064;
        v9 = 0x657470656363612ELL;
      }

      else
      {
        v8 = 0xEA00000000006465;
        v9 = 0x747365757165722ELL;
      }
    }

    else
    {
      v8 = 0xEB00000000646574;
      v9 = 0x70656363616E752ELL;
    }

    v10 = *(v0 + 112);
    v11 = *(v0 + 96);
    v12 = v8;
    String.append(_:)(*&v9);

    v13 = objc_allocWithZone(SPDataIntegrityCheck);
    v14 = String._bridgeToObjectiveC()();

    *(v0 + 176) = [v13 initWithValue:v14 severity:0];

    v15 = *(v11 + 24);
    *(v0 + 364) = v15;
    v16 = swift_task_alloc();
    *(v0 + 184) = v16;
    *v16 = v0;
    v16[1] = sub_1001160AC;

    return sub_100125518(v10 + v15);
  }
}

uint64_t sub_1001160AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 364);
  v4 = *(*v1 + 112);
  v7 = *v1;
  *(v2 + 192) = a1;

  v5 = swift_task_alloc();
  *(v2 + 200) = v5;
  *v5 = v7;
  v5[1] = sub_100116220;

  return sub_100125C38(v4 + v3);
}

uint64_t sub_100116220(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 364);
  v4 = *(*v1 + 112);
  v7 = *v1;
  *(v2 + 208) = a1;

  v5 = swift_task_alloc();
  *(v2 + 216) = v5;
  *v5 = v7;
  v5[1] = sub_100116394;

  return sub_1001262B0(v4 + v3);
}

uint64_t sub_100116394(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_1001164AC, v2, 0);
}

uint64_t sub_1001164AC()
{
  v1 = *(v0[14] + *(v0[12] + 36));
  v0[29] = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1003A85FC(*(v1 + 16), 0);
    v4 = sub_1003CC2CC();

    sub_1000128F8(v7);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[30] = v3;
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_1001165F4;

  return sub_100126B44(v3);
}

uint64_t sub_1001165F4(uint64_t a1)
{
  v2 = *(*v1 + 120);
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_100116728, v2, 0);
}

uint64_t sub_100116728()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  v3 = *(v0 + 72);
  v4 = *(v0 + 48);
  v5 = (*(v0 + 360) + 24) & ~*(v0 + 360);
  (*(v0 + 128))(v3, *(v0 + 112) + *(v0 + 364), v4);
  v6 = swift_allocObject();
  *(v0 + 264) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 272) = v7;
  *v7 = v0;
  v7[1] = sub_100116878;
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_10012B098, v6, v9);
}

uint64_t sub_100116878()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1001169A4, v1, 0);
}

uint64_t sub_1001169A4()
{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for SharedBeaconRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
    v3 = 2;
  }

  else
  {
    v3 = *(v1 + *(v2 + 64));
    sub_10012B448(v1, type metadata accessor for SharedBeaconRecord);
  }

  *(v0 + 368) = v3;
  v4 = *(v0 + 112);
  v5 = *(*(v0 + 96) + 28);
  v6 = *(*(v0 + 232) + 16);
  v7 = swift_task_alloc();
  *(v0 + 280) = v7;
  *v7 = v0;
  v7[1] = sub_100116AFC;

  return sub_100127B90(v4 + v5, v6, v3);
}

uint64_t sub_100116AFC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 364);
  v4 = *(*v1 + 112);
  v7 = *v1;
  *(v2 + 288) = a1;

  v5 = swift_task_alloc();
  *(v2 + 296) = v5;
  *v5 = v7;
  v5[1] = sub_100116C70;

  return sub_10011F1E0(v4 + v3);
}

uint64_t sub_100116C70(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 364);
  v4 = *(*v1 + 112);
  v7 = *v1;
  *(v2 + 304) = a1;

  v5 = swift_task_alloc();
  *(v2 + 312) = v5;
  *v5 = v7;
  v5[1] = sub_100116DE4;

  return sub_100120400(v4 + v3);
}

uint64_t sub_100116DE4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 364);
  v4 = *(*v1 + 112);
  v8 = *v1;
  *(v2 + 320) = a1;

  v5 = swift_task_alloc();
  *(v2 + 328) = v5;
  *v5 = v8;
  v5[1] = sub_100116F5C;
  v6 = *(v2 + 368);

  return sub_100128998(v4 + v3, v6);
}

uint64_t sub_100116F5C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 364);
  v4 = *(*v1 + 112);
  v7 = *v1;
  *(v2 + 336) = a1;

  v5 = swift_task_alloc();
  *(v2 + 344) = v5;
  *v5 = v7;
  v5[1] = sub_1001170D0;

  return sub_100121034(v4 + v3);
}

uint64_t sub_1001170D0(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 352) = a1;

  return _swift_task_switch(sub_1001171E8, v2, 0);
}

uint64_t sub_1001171E8()
{
  v1 = v0[38];
  v2 = v0[28];
  v12 = v0[26];
  v13 = v0[36];
  v11 = v0[24];
  v14 = v0[14];
  v15 = v0[22];
  v3 = objc_allocWithZone(SPMemberCircleDataIntegrity);
  sub_100008BB8(0, &qword_101697778, SPPeerTrustDataIntegrity_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100008BB8(0, &qword_101697780, SPDataIntegrityCheck_ptr);
  v5 = Array._bridgeToObjectiveC()().super.isa;

  v6 = Array._bridgeToObjectiveC()().super.isa;

  v7 = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v3 initWithCircleRecord:v15 sharedBeaconRecord:v11 sharedBeaconNameRecord:v12 sharedBeaconOwnerName:v2 peerTrusts:isa sharedSecrets:v13 keySyncRecord:v1 observations:v5 itemSharingKey:v6 estimatedLocations:v7];

  sub_10012B448(v14, type metadata accessor for MemberSharingCircle);

  v8 = v0[1];

  return v8(v10);
}

uint64_t sub_1001173F8()
{
  v1[127] = v0;
  v1[128] = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v1[129] = swift_task_alloc();
  v2 = sub_1000BC4D4(&qword_1016976F8, &unk_10138C3B0);
  v1[130] = v2;
  v1[131] = *(v2 - 8);
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_101697700, &unk_10139FB90);
  v1[134] = v3;
  v1[135] = *(v3 - 8);
  v1[136] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_101697708, &qword_10138C3C0);
  v1[137] = v4;
  v1[138] = *(v4 - 8);
  v1[139] = swift_task_alloc();
  v5 = type metadata accessor for BeaconNamingRecord(0);
  v1[140] = v5;
  v1[141] = *(v5 - 8);
  v1[142] = swift_task_alloc();
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v1[143] = v6;
  v1[144] = *(v6 - 8);
  v1[145] = swift_task_alloc();
  v7 = type metadata accessor for SharingCircleSecret(0);
  v1[146] = v7;
  v1[147] = *(v7 - 8);
  v1[148] = swift_task_alloc();
  v8 = type metadata accessor for MemberPeerTrust(0);
  v1[149] = v8;
  v1[150] = *(v8 - 8);
  v1[151] = swift_task_alloc();
  v9 = type metadata accessor for OwnerPeerTrust(0);
  v1[152] = v9;
  v1[153] = *(v9 - 8);
  v1[154] = swift_task_alloc();
  v1[126] = _swiftEmptyArrayStorage;
  v10 = swift_task_alloc();
  v1[155] = v10;
  *v10 = v1;
  v10[1] = sub_1001177E8;

  return sub_100119784((v1 + 92));
}

uint64_t sub_1001177E8()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 752);
  *(v3 + 1256) = *(v3 + 736);
  *(v3 + 1272) = v4;
  v5 = *(v3 + 784);
  *(v3 + 1288) = *(v3 + 768);
  *(v3 + 1248) = v0;
  *(v3 + 1304) = v5;
  *(v3 + 1320) = *(v2 + 800);

  v6 = *(v3 + 1016);
  if (v0)
  {
    v7 = sub_100119694;
  }

  else
  {
    v7 = sub_100117948;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100117948()
{
  v1 = *(v0 + 1256);
  *(v0 + 88) = v1;
  v177 = (v0 + 1008);
  v2 = *(v0 + 1320);
  v3 = *(v0 + 1312);
  v4 = *(v0 + 1304);
  v5 = *(v0 + 1296);
  v6 = *(v0 + 1288);
  v7 = *(v0 + 1280);
  v8 = *(v0 + 1272);
  *(v0 + 96) = *(v0 + 1264);
  *(v0 + 104) = v8;
  *(v0 + 112) = v7;
  *(v0 + 120) = v6;
  *(v0 + 128) = v5;
  *(v0 + 136) = v4;
  *(v0 + 144) = v3;
  *(v0 + 152) = v2;
  v191 = v0 + 88;
  sub_1000D2A70(v0 + 88, v0 + 160, &qword_101697730, &qword_10138C3E8);

  v9 = *(v1 + 16);

  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    *(v0 + 1000) = *(v0 + 1216);
    sub_1000BC4D4(&qword_101697738, &unk_10138C3F0);
    String.init<A>(describing:)();
    v11 = *(v1 + 16);
    if (v11)
    {
      v12 = *(v0 + 1256);
      v13 = *(v0 + 1224);
      sub_101123BB8(0, v11, 0);
      v14 = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v15 = *(v13 + 72);
      do
      {
        v16 = *(v0 + 1232);
        sub_10012B2B8(v14, v16, type metadata accessor for OwnerPeerTrust);
        v17 = UUID.uuidString.getter();
        v19 = v18;
        sub_10012B448(v16, type metadata accessor for OwnerPeerTrust);
        v21 = _swiftEmptyArrayStorage[2];
        v20 = _swiftEmptyArrayStorage[3];
        if (v21 >= v20 >> 1)
        {
          sub_101123BB8((v20 > 1), v21 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v21 + 1;
        v22 = &_swiftEmptyArrayStorage[2 * v21];
        v22[4] = v17;
        v22[5] = v19;
        v14 += v15;
        --v11;
      }

      while (v11);
    }

    v23 = objc_allocWithZone(SPOrphanedRecords);
    v24 = String._bridgeToObjectiveC()();

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v23 initWithRecordType:v24 records:isa];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v10 = *v177;
  }

  v185 = v10;
  v26 = *(v0 + 1264);
  v27 = v0 + 88;
  sub_1000D2A70(v0 + 88, v0 + 232, &qword_101697730, &qword_10138C3E8);

  v28 = *(v26 + 16);

  if (v28)
  {
    *(v0 + 928) = *(v0 + 1192);
    sub_1000BC4D4(&qword_101697740, &qword_1013D6990);
    String.init<A>(describing:)();
    v29 = *(v26 + 16);
    if (v29)
    {
      v30 = *(v0 + 1264);
      v31 = *(v0 + 1200);
      sub_101123BB8(0, v29, 0);
      v32 = v30 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
      v33 = *(v31 + 72);
      do
      {
        v34 = *(v0 + 1208);
        sub_10012B2B8(v32, v34, type metadata accessor for MemberPeerTrust);
        v35 = UUID.uuidString.getter();
        v37 = v36;
        sub_10012B448(v34, type metadata accessor for MemberPeerTrust);
        v39 = _swiftEmptyArrayStorage[2];
        v38 = _swiftEmptyArrayStorage[3];
        if (v39 >= v38 >> 1)
        {
          sub_101123BB8((v38 > 1), v39 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v39 + 1;
        v40 = &_swiftEmptyArrayStorage[2 * v39];
        v40[4] = v35;
        v40[5] = v37;
        v32 += v33;
        --v29;
      }

      while (v29);
    }

    v41 = objc_allocWithZone(SPOrphanedRecords);
    v42 = String._bridgeToObjectiveC()();

    v43 = Array._bridgeToObjectiveC()().super.isa;

    [v41 initWithRecordType:v42 records:v43];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v185 = *v177;
    v27 = v0 + 88;
  }

  v44 = *(v0 + 1272);
  sub_1000D2A70(v27, v27 + 216, &qword_101697730, &qword_10138C3E8);

  v45 = *(v44 + 16);

  if (v45)
  {
    *(v0 + 976) = *(v0 + 1168);
    sub_1000BC4D4(&qword_101697748, &unk_10138C400);
    String.init<A>(describing:)();
    v46 = *(v44 + 16);
    if (v46)
    {
      v47 = *(v0 + 1272);
      v48 = *(v0 + 1176);
      sub_101123BB8(0, v46, 0);
      v49 = v47 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v186 = *(v48 + 72);
      do
      {
        v50 = *(v0 + 1184);
        sub_10012B2B8(v49, v50, type metadata accessor for SharingCircleSecret);
        type metadata accessor for UUID();
        sub_100019300(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v192 = dispatch thunk of CustomStringConvertible.description.getter();
        v197 = v51;
        v52._countAndFlagsBits = 0x29656C6372696328;
        v52._object = 0xEA0000000000203ALL;
        String.append(_:)(v52);
        v53._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v53);

        sub_10012B448(v50, type metadata accessor for SharingCircleSecret);
        v55 = _swiftEmptyArrayStorage[2];
        v54 = _swiftEmptyArrayStorage[3];
        if (v55 >= v54 >> 1)
        {
          sub_101123BB8((v54 > 1), v55 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v55 + 1;
        v56 = &_swiftEmptyArrayStorage[2 * v55];
        v56[4] = v192;
        v56[5] = v197;
        v49 += v186;
        --v46;
      }

      while (v46);
    }

    v57 = objc_allocWithZone(SPOrphanedRecords);
    v58 = String._bridgeToObjectiveC()();

    v59 = Array._bridgeToObjectiveC()().super.isa;

    [v57 initWithRecordType:v58 records:v59];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v185 = *v177;
    v27 = v0 + 88;
  }

  v60 = *(v0 + 1280);
  sub_1000D2A70(v27, v27 + 288, &qword_101697730, &qword_10138C3E8);

  v61 = *(v60 + 16);

  if (v61)
  {
    *(v0 + 968) = *(v0 + 1144);
    sub_1000BC4D4(&qword_101697750, &qword_1013B3560);
    String.init<A>(describing:)();
    v62 = *(v60 + 16);
    if (v62)
    {
      v63 = *(v0 + 1280);
      v64 = *(v0 + 1152);
      sub_101123BB8(0, v62, 0);
      v65 = v63 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
      v66 = *(v64 + 72);
      do
      {
        v67 = *(v0 + 1160);
        sub_10012B2B8(v65, v67, type metadata accessor for SharedBeaconRecord);
        v68 = UUID.uuidString.getter();
        v70 = v69;
        sub_10012B448(v67, type metadata accessor for SharedBeaconRecord);
        v72 = _swiftEmptyArrayStorage[2];
        v71 = _swiftEmptyArrayStorage[3];
        if (v72 >= v71 >> 1)
        {
          sub_101123BB8((v71 > 1), v72 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v72 + 1;
        v73 = &_swiftEmptyArrayStorage[2 * v72];
        v73[4] = v68;
        v73[5] = v70;
        v65 += v66;
        --v62;
      }

      while (v62);
    }

    v74 = objc_allocWithZone(SPOrphanedRecords);
    v75 = String._bridgeToObjectiveC()();

    v76 = Array._bridgeToObjectiveC()().super.isa;

    [v74 initWithRecordType:v75 records:v76];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v185 = *v177;
    v27 = v0 + 88;
  }

  v77 = *(v0 + 1288);
  sub_1000D2A70(v27, v27 + 360, &qword_101697730, &qword_10138C3E8);

  v78 = *(v77 + 16);

  if (v78)
  {
    *(v0 + 936) = *(v0 + 1120);
    sub_1000BC4D4(&qword_101697758, &qword_10138C410);
    String.init<A>(describing:)();
    v79 = *(v77 + 16);
    if (v79)
    {
      v80 = *(v0 + 1288);
      v81 = *(v0 + 1128);
      sub_101123BB8(0, v79, 0);
      v82 = v80 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
      v187 = *(v81 + 72);
      do
      {
        v83 = *(v0 + 1136);
        sub_10012B2B8(v82, v83, type metadata accessor for BeaconNamingRecord);
        type metadata accessor for UUID();
        sub_100019300(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v193 = dispatch thunk of CustomStringConvertible.description.getter();
        v198 = v84;
        v85._countAndFlagsBits = 0x296E6F6361656228;
        v85._object = 0xEA0000000000203ALL;
        String.append(_:)(v85);
        v86._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v86);

        sub_10012B448(v83, type metadata accessor for BeaconNamingRecord);
        v88 = _swiftEmptyArrayStorage[2];
        v87 = _swiftEmptyArrayStorage[3];
        if (v88 >= v87 >> 1)
        {
          sub_101123BB8((v87 > 1), v88 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v88 + 1;
        v89 = &_swiftEmptyArrayStorage[2 * v88];
        v89[4] = v193;
        v89[5] = v198;
        v82 += v187;
        --v79;
      }

      while (v79);
    }

    v90 = objc_allocWithZone(SPOrphanedRecords);
    v91 = String._bridgeToObjectiveC()();

    v92 = Array._bridgeToObjectiveC()().super.isa;

    [v90 initWithRecordType:v91 records:v92];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v185 = *v177;
    v27 = v0 + 88;
  }

  v93 = *(v0 + 1296);
  sub_1000D2A70(v27, v27 + 432, &qword_101697730, &qword_10138C3E8);

  v94 = *(v93 + 16);

  v95 = v27;
  if (v94)
  {
    *(v27 + 856) = &type metadata for KeyDropBeaconAttributes;
    sub_1000BC4D4(&qword_101697760, &qword_10138C418);
    String.init<A>(describing:)();
    v96 = *(v93 + 16);
    if (v96)
    {
      v97 = v27 + 504;
      v98 = *(v0 + 1296);
      v99 = *(v0 + 1104);
      v188 = *(v0 + 1096);
      sub_101123BB8(0, v96, 0);
      v100 = v98 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
      v181 = *(v99 + 72);
      do
      {
        v101 = *(v0 + 1112);
        sub_1000D2A70(v100, v101, &qword_101697708, &qword_10138C3C0);
        *(v0 + 896) = 0;
        *(v0 + 904) = 0xE000000000000000;
        type metadata accessor for UUID();
        sub_100019300(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v102._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v102);

        v103._countAndFlagsBits = 0x296E6F6361656228;
        v103._object = 0xEA0000000000203ALL;
        String.append(_:)(v103);
        v104 = v101 + *(v188 + 48);
        v203 = *(v104 + 48);
        v105 = *(v104 + 64);
        v106 = *v104;
        v202 = *(v104 + 16);
        *(v97 + 32) = *(v104 + 32);
        *(v97 + 48) = v203;
        *(v97 + 64) = v105;
        *v97 = v106;
        *(v97 + 16) = v202;
        _print_unlocked<A, B>(_:_:)();
        v107 = *(v0 + 896);
        v108 = *(v0 + 904);
        sub_10000B3A8(v101, &qword_101697708, &qword_10138C3C0);
        v110 = _swiftEmptyArrayStorage[2];
        v109 = _swiftEmptyArrayStorage[3];
        if (v110 >= v109 >> 1)
        {
          sub_101123BB8((v109 > 1), v110 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v110 + 1;
        v111 = &_swiftEmptyArrayStorage[2 * v110];
        v111[4] = v107;
        v111[5] = v108;
        v100 += v181;
        --v96;
        v95 = v0 + 88;
      }

      while (v96);
    }

    v112 = objc_allocWithZone(SPOrphanedRecords);
    v113 = String._bridgeToObjectiveC()();

    v114 = Array._bridgeToObjectiveC()().super.isa;

    [v112 initWithRecordType:v113 records:v114];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v185 = *v177;
  }

  v115 = *(v0 + 1312);
  sub_1000D2A70(v95, v95 + 576, &qword_101697730, &qword_10138C3E8);

  v116 = *(v115 + 16);
  v178 = v115;

  if (v116)
  {
    v117 = *(v115 + 16);
    if (v117)
    {
      v118 = *(v0 + 1312);
      v119 = *(v0 + 1080);
      v189 = *(v0 + 1072);
      sub_101123BB8(0, v117, 0);
      v120 = v118 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
      v182 = *(v119 + 72);
      do
      {
        v121 = *(v0 + 1088);
        sub_1000D2A70(v120, v121, &qword_101697700, &unk_10139FB90);
        type metadata accessor for UUID();
        sub_100019300(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v194 = dispatch thunk of CustomStringConvertible.description.getter();
        v199 = v122;
        v123._countAndFlagsBits = 0x296E6F6361656228;
        v123._object = 0xEA0000000000203ALL;
        String.append(_:)(v123);
        *(v0 + 952) = *(v121 + *(v189 + 48));
        *(v0 + 880) = 0;
        *(v0 + 888) = 0xE000000000000000;
        _print_unlocked<A, B>(_:_:)();
        v124._countAndFlagsBits = 3026478;
        v124._object = 0xE300000000000000;
        String.append(_:)(v124);
        _print_unlocked<A, B>(_:_:)();
        String.append(_:)(*(v0 + 880));

        sub_10000B3A8(v121, &qword_101697700, &unk_10139FB90);
        v126 = _swiftEmptyArrayStorage[2];
        v125 = _swiftEmptyArrayStorage[3];
        if (v126 >= v125 >> 1)
        {
          sub_101123BB8((v125 > 1), v126 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v126 + 1;
        v127 = &_swiftEmptyArrayStorage[2 * v126];
        v127[4] = v194;
        v127[5] = v199;
        v120 += v182;
        --v117;
      }

      while (v117);
    }

    v128 = objc_allocWithZone(SPOrphanedRecords);
    v129 = String._bridgeToObjectiveC()();
    v130 = Array._bridgeToObjectiveC()().super.isa;

    [v128 initWithRecordType:v129 records:v130];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v185 = *v177;
  }

  v131 = *(v0 + 1320);
  sub_1000D2A70(v0 + 88, v0 + 808, &qword_101697730, &qword_10138C3E8);

  v132 = *(v131 + 16);

  if (v132)
  {
    v133 = *(v178 + 16);
    if (v133)
    {
      v134 = *(v0 + 1312);
      v135 = *(v0 + 1080);
      v190 = *(v0 + 1072);
      sub_101123BB8(0, v133, 0);
      v136 = v134 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
      v183 = *(v135 + 72);
      do
      {
        v137 = *(v0 + 1088);
        sub_1000D2A70(v136, v137, &qword_101697700, &unk_10139FB90);
        type metadata accessor for UUID();
        sub_100019300(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v195 = dispatch thunk of CustomStringConvertible.description.getter();
        v200 = v138;
        v139._countAndFlagsBits = 0x296E6F6361656228;
        v139._object = 0xEA0000000000203ALL;
        String.append(_:)(v139);
        *(v0 + 984) = *(v137 + *(v190 + 48));
        *(v0 + 912) = 0;
        *(v0 + 920) = 0xE000000000000000;
        _print_unlocked<A, B>(_:_:)();
        v140._countAndFlagsBits = 3026478;
        v140._object = 0xE300000000000000;
        String.append(_:)(v140);
        _print_unlocked<A, B>(_:_:)();
        String.append(_:)(*(v0 + 912));

        sub_10000B3A8(v137, &qword_101697700, &unk_10139FB90);
        v142 = _swiftEmptyArrayStorage[2];
        v141 = _swiftEmptyArrayStorage[3];
        if (v142 >= v141 >> 1)
        {
          sub_101123BB8((v141 > 1), v142 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v142 + 1;
        v143 = &_swiftEmptyArrayStorage[2 * v142];
        v143[4] = v195;
        v143[5] = v200;
        v136 += v183;
        --v133;
      }

      while (v133);
    }

    v144 = objc_allocWithZone(SPOrphanedRecords);
    v145 = String._bridgeToObjectiveC()();
    v146 = Array._bridgeToObjectiveC()().super.isa;

    [v144 initWithRecordType:v145 records:v146];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v185 = *v177;
  }

  v147 = *(v0 + 1304);
  sub_1000D2A70(v191, v95 - 72, &qword_101697730, &qword_10138C3E8);

  v148 = *(v147 + 16);

  if (v148)
  {
    v149 = *(v147 + 16);
    if (v149)
    {
      v150 = *(v0 + 1304);
      v151 = *(v0 + 1048);
      v184 = *(v0 + 1040);
      sub_101123BB8(0, v149, 0);
      v152 = v150 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
      v179 = *(v151 + 72);
      v180 = v0;
      do
      {
        v153 = *(v0 + 1064);
        v154 = *(v0 + 1056);
        v155 = *(v0 + 1032);
        sub_1000D2A70(v152, v153, &qword_1016976F8, &unk_10138C3B0);
        v156 = type metadata accessor for UUID();
        sub_100019300(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v196 = dispatch thunk of CustomStringConvertible.description.getter();
        v201 = v157;
        v158._countAndFlagsBits = 0x6449657261687328;
        v158._object = 0xEB00000000203A29;
        String.append(_:)(v158);
        sub_1000D2A70(v153, v154, &qword_1016976F8, &unk_10138C3B0);
        v159 = v154 + *(v184 + 48);
        v160 = type metadata accessor for DelegatedBeaconMetadata(0);
        sub_1000D2A70(v159 + *(v160 + 24), v155, &unk_101696900, &unk_10138B1E0);
        sub_10012B448(v159, type metadata accessor for DelegatedBeaconMetadata);
        v161 = String.init<A>(describing:)();
        v163 = v162;
        (*(*(v156 - 8) + 8))(v154, v156);
        v164._countAndFlagsBits = v161;
        v164._object = v163;
        String.append(_:)(v164);

        sub_10000B3A8(v153, &qword_1016976F8, &unk_10138C3B0);
        v166 = _swiftEmptyArrayStorage[2];
        v165 = _swiftEmptyArrayStorage[3];
        if (v166 >= v165 >> 1)
        {
          sub_101123BB8((v165 > 1), v166 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v166 + 1;
        v167 = &_swiftEmptyArrayStorage[2 * v166];
        v167[4] = v196;
        v167[5] = v201;
        v0 = v180;
        v152 += v179;
        --v149;
      }

      while (v149);
    }

    sub_10000B3A8(v191, &qword_101697730, &qword_10138C3E8);
    v169 = objc_allocWithZone(SPOrphanedRecords);
    v170 = String._bridgeToObjectiveC()();
    v171 = Array._bridgeToObjectiveC()().super.isa;

    [v169 initWithRecordType:v170 records:v171];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v168 = *v177;
  }

  else
  {
    sub_10000B3A8(v191, &qword_101697730, &qword_10138C3E8);
    v168 = v185;
  }

  sub_10039BA00(v168);

  v172 = objc_allocWithZone(SPOrphanedRecordsResult);
  v173 = Array._bridgeToObjectiveC()().super.isa;

  v174 = [v172 initWithRecordsInfo:v173];

  v175 = *(v0 + 8);

  return v175(v174);
}

uint64_t sub_100119694()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100119784(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_1000BC4D4(&qword_1016976F8, &unk_10138C3B0);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = *(type metadata accessor for DelegatedBeaconMetadata(0) - 8);
  v2[16] = swift_task_alloc();
  v2[17] = *(sub_1000BC4D4(&qword_101697700, &unk_10139FB90) - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = *(sub_1000BC4D4(&qword_101697708, &qword_10138C3C0) - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for BeaconNamingRecord(0);
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v2[29] = v5;
  v2[30] = *(v5 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v6 = type metadata accessor for SharingCircleSecret(0);
  v2[33] = v6;
  v2[34] = *(v6 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v7 = type metadata accessor for MemberPeerTrust(0);
  v2[37] = v7;
  v2[38] = *(v7 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v2[41] = v8;
  v2[42] = *(v8 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v9 = type metadata accessor for OwnerPeerTrust(0);
  v2[46] = v9;
  v2[47] = *(v9 - 8);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v10 = swift_task_alloc();
  v2[50] = v10;
  *v10 = v2;
  v10[1] = sub_100119C48;

  return sub_10011DC3C();
}

uint64_t sub_100119C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 88);
  v4[51] = a1;
  v4[52] = a2;
  v4[53] = a3;

  return _swift_task_switch(sub_100119D64, v5, 0);
}

uint64_t sub_100119D64()
{
  v1 = *(*(v0 + 88) + 112);
  *(v0 + 432) = v1;
  return _swift_task_switch(sub_100119D88, v1, 0);
}

uint64_t sub_100119D88()
{

  v1 = swift_task_alloc();
  *(v0 + 440) = v1;
  v2 = sub_1000BC4D4(&qword_101697710, &unk_10138C3D0);
  *v1 = v0;
  v1[1] = sub_100119E74;
  v3 = *(v0 + 432);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100129E2C, v3, v2);
}

uint64_t sub_100119E74()
{
  v1 = *(*v0 + 432);

  return _swift_task_switch(sub_100119F8C, v1, 0);
}

uint64_t sub_100119F8C()
{
  v1 = v0[11];
  v0[56] = v0[2];
  return _swift_task_switch(sub_100119FB0, v1, 0);
}

uint64_t sub_100119FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[56];
  v24 = *(v4 + 2);
  if (v24)
  {
    v5 = 0;
    v22 = v3[47];
    v30 = v3[53];
    v29 = v30 + 56;
    v6 = _swiftEmptyArrayStorage;
    v21 = v3[42];
    v23 = v3[56];
    while (v5 < *(v4 + 2))
    {
      v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v27 = v6;
      v28 = v5;
      v25 = *(v22 + 72);
      sub_10012B2B8(v3[56] + v26 + v25 * v5, v3[49], type metadata accessor for OwnerPeerTrust);
      if (*(v30 + 16) && (sub_100019300(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(v30 + 32), v9 = v7 & ~v8, ((*(v29 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
      {
        v10 = ~v8;
        v11 = *(v21 + 72);
        v12 = *(v21 + 16);
        while (1)
        {
          v13 = v3[45];
          v14 = v3[41];
          v12(v13, *(v30 + 48) + v9 * v11, v14);
          sub_100019300(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v15 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v21 + 8))(v13, v14);
          if (v15)
          {
            break;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v29 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        sub_10012B448(v3[49], type metadata accessor for OwnerPeerTrust);
        v6 = v27;
      }

      else
      {
LABEL_11:
        sub_10012B250(v3[49], v3[48], type metadata accessor for OwnerPeerTrust);
        v6 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1011242A4(0, v27[2] + 1, 1);
          v6 = v27;
        }

        v17 = v6[2];
        v16 = v6[3];
        if (v17 >= v16 >> 1)
        {
          sub_1011242A4((v16 > 1), v17 + 1, 1);
          v6 = v27;
        }

        v18 = v3[48];
        v6[2] = v17 + 1;
        sub_10012B250(v18, v6 + v26 + v17 * v25, type metadata accessor for OwnerPeerTrust);
      }

      v5 = v28 + 1;
      v4 = v23;
      if (v28 + 1 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_18:
    v3[57] = v6;
    v19 = v3[54];

    v4 = sub_10011A330;
    a2 = v19;
    a3 = 0;
  }

  return _swift_task_switch(v4, a2, a3);
}

uint64_t sub_10011A330()
{

  v1 = swift_task_alloc();
  *(v0 + 464) = v1;
  v2 = sub_1000BC4D4(&qword_101697718, &unk_1013EBDF0);
  *v1 = v0;
  v1[1] = sub_10011A41C;
  v3 = *(v0 + 432);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_100129E34, v3, v2);
}

uint64_t sub_10011A41C()
{
  v1 = *(*v0 + 432);

  return _swift_task_switch(sub_10011A534, v1, 0);
}

uint64_t sub_10011A534()
{
  v1 = v0[11];
  v0[59] = v0[3];
  return _swift_task_switch(sub_10011A558, v1, 0);
}

uint64_t sub_10011A558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[59];
  v24 = *(v4 + 2);
  if (v24)
  {
    v5 = 0;
    v22 = v3[38];
    v30 = v3[53];
    v29 = v30 + 56;
    v6 = _swiftEmptyArrayStorage;
    v21 = v3[42];
    v23 = v3[59];
    while (v5 < *(v4 + 2))
    {
      v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v27 = v6;
      v28 = v5;
      v25 = *(v22 + 72);
      sub_10012B2B8(v3[59] + v26 + v25 * v5, v3[40], type metadata accessor for MemberPeerTrust);
      if (*(v30 + 16) && (sub_100019300(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(v30 + 32), v9 = v7 & ~v8, ((*(v29 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
      {
        v10 = ~v8;
        v11 = *(v21 + 72);
        v12 = *(v21 + 16);
        while (1)
        {
          v13 = v3[45];
          v14 = v3[41];
          v12(v13, *(v30 + 48) + v9 * v11, v14);
          sub_100019300(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v15 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v21 + 8))(v13, v14);
          if (v15)
          {
            break;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v29 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        sub_10012B448(v3[40], type metadata accessor for MemberPeerTrust);
        v6 = v27;
      }

      else
      {
LABEL_11:
        sub_10012B250(v3[40], v3[39], type metadata accessor for MemberPeerTrust);
        v6 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101124260(0, v27[2] + 1, 1);
          v6 = v27;
        }

        v17 = v6[2];
        v16 = v6[3];
        if (v17 >= v16 >> 1)
        {
          sub_101124260((v16 > 1), v17 + 1, 1);
          v6 = v27;
        }

        v18 = v3[39];
        v6[2] = v17 + 1;
        sub_10012B250(v18, v6 + v26 + v17 * v25, type metadata accessor for MemberPeerTrust);
      }

      v5 = v28 + 1;
      v4 = v23;
      if (v28 + 1 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_18:
    v3[60] = v6;
    v19 = v3[54];

    v4 = sub_10011A8DC;
    a2 = v19;
    a3 = 0;
  }

  return _swift_task_switch(v4, a2, a3);
}

uint64_t sub_10011A8DC()
{

  v1 = swift_task_alloc();
  *(v0 + 488) = v1;
  v2 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v1 = v0;
  v1[1] = sub_10011A9C8;
  v3 = *(v0 + 432);

  return unsafeBlocking<A>(context:_:)(v0 + 32, 0xD000000000000010, 0x800000010134A8C0, sub_100129E3C, v3, v2);
}

uint64_t sub_10011A9C8()
{
  v1 = *(*v0 + 432);

  return _swift_task_switch(sub_10011AAE0, v1, 0);
}

uint64_t sub_10011AAE0()
{
  v1 = v0[11];
  v0[62] = v0[4];
  return _swift_task_switch(sub_10011AB04, v1, 0);
}

uint64_t sub_10011AB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[62];
  v24 = *(v4 + 2);
  if (v24)
  {
    v5 = 0;
    v22 = v3[34];
    v30 = v3[52];
    v29 = v30 + 56;
    v6 = _swiftEmptyArrayStorage;
    v21 = v3[42];
    v23 = v3[62];
    while (v5 < *(v4 + 2))
    {
      v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v27 = v6;
      v28 = v5;
      v25 = *(v22 + 72);
      sub_10012B2B8(v3[62] + v26 + v25 * v5, v3[36], type metadata accessor for SharingCircleSecret);
      if (*(v30 + 16) && (sub_100019300(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(v30 + 32), v9 = v7 & ~v8, ((*(v29 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
      {
        v10 = ~v8;
        v11 = *(v21 + 72);
        v12 = *(v21 + 16);
        while (1)
        {
          v13 = v3[45];
          v14 = v3[41];
          v12(v13, *(v30 + 48) + v9 * v11, v14);
          sub_100019300(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v15 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v21 + 8))(v13, v14);
          if (v15)
          {
            break;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v29 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        sub_10012B448(v3[36], type metadata accessor for SharingCircleSecret);
        v6 = v27;
      }

      else
      {
LABEL_11:
        sub_10012B250(v3[36], v3[35], type metadata accessor for SharingCircleSecret);
        v6 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101124114(0, v27[2] + 1, 1);
          v6 = v27;
        }

        v17 = v6[2];
        v16 = v6[3];
        if (v17 >= v16 >> 1)
        {
          sub_101124114((v16 > 1), v17 + 1, 1);
          v6 = v27;
        }

        v18 = v3[35];
        v6[2] = v17 + 1;
        sub_10012B250(v18, v6 + v26 + v17 * v25, type metadata accessor for SharingCircleSecret);
      }

      v5 = v28 + 1;
      v4 = v23;
      if (v28 + 1 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_18:
    v3[63] = v6;
    v19 = v3[54];

    v4 = sub_10011AE8C;
    a2 = v19;
    a3 = 0;
  }

  return _swift_task_switch(v4, a2, a3);
}

uint64_t sub_10011AE8C()
{

  v1 = swift_task_alloc();
  *(v0 + 512) = v1;
  v2 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v1 = v0;
  v1[1] = sub_10011AF78;
  v3 = *(v0 + 432);

  return unsafeBlocking<A>(context:_:)(v0 + 40, 0xD000000000000010, 0x800000010134A8C0, sub_100129E44, v3, v2);
}

uint64_t sub_10011AF78()
{
  v1 = *(*v0 + 432);

  return _swift_task_switch(sub_10011B090, v1, 0);
}

uint64_t sub_10011B090()
{
  v1 = v0[11];
  v0[65] = v0[5];
  return _swift_task_switch(sub_10011B0B4, v1, 0);
}

uint64_t sub_10011B0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[65];
  v24 = *(v4 + 2);
  if (v24)
  {
    v5 = 0;
    v22 = v3[30];
    v30 = v3[51];
    v29 = v30 + 56;
    v6 = _swiftEmptyArrayStorage;
    v21 = v3[42];
    v23 = v3[65];
    while (v5 < *(v4 + 2))
    {
      v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v27 = v6;
      v28 = v5;
      v25 = *(v22 + 72);
      sub_10012B2B8(v3[65] + v26 + v25 * v5, v3[32], type metadata accessor for SharedBeaconRecord);
      if (*(v30 + 16) && (sub_100019300(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(v30 + 32), v9 = v7 & ~v8, ((*(v29 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
      {
        v10 = ~v8;
        v11 = *(v21 + 72);
        v12 = *(v21 + 16);
        while (1)
        {
          v13 = v3[45];
          v14 = v3[41];
          v12(v13, *(v30 + 48) + v9 * v11, v14);
          sub_100019300(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v15 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v21 + 8))(v13, v14);
          if (v15)
          {
            break;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v29 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        sub_10012B448(v3[32], type metadata accessor for SharedBeaconRecord);
        v6 = v27;
      }

      else
      {
LABEL_11:
        sub_10012B250(v3[32], v3[31], type metadata accessor for SharedBeaconRecord);
        v6 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112421C(0, v27[2] + 1, 1);
          v6 = v27;
        }

        v17 = v6[2];
        v16 = v6[3];
        if (v17 >= v16 >> 1)
        {
          sub_10112421C((v16 > 1), v17 + 1, 1);
          v6 = v27;
        }

        v18 = v3[31];
        v6[2] = v17 + 1;
        sub_10012B250(v18, v6 + v26 + v17 * v25, type metadata accessor for SharedBeaconRecord);
      }

      v5 = v28 + 1;
      v4 = v23;
      if (v28 + 1 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_18:
    v3[66] = v6;
    v19 = v3[54];

    v4 = sub_10011B43C;
    a2 = v19;
    a3 = 0;
  }

  return _swift_task_switch(v4, a2, a3);
}

uint64_t sub_10011B43C()
{

  v1 = swift_task_alloc();
  *(v0 + 536) = v1;
  v2 = sub_1000BC4D4(&qword_101697728, &qword_10138C3E0);
  *v1 = v0;
  v1[1] = sub_10011B528;
  v3 = *(v0 + 432);

  return unsafeBlocking<A>(context:_:)(v0 + 48, 0xD000000000000010, 0x800000010134A8C0, sub_100129E4C, v3, v2);
}

uint64_t sub_10011B528()
{
  v1 = *(*v0 + 432);

  return _swift_task_switch(sub_10011B640, v1, 0);
}

uint64_t sub_10011B640()
{
  v1 = v0[11];
  v0[68] = v0[6];
  return _swift_task_switch(sub_10011B664, v1, 0);
}

uint64_t sub_10011B664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[68];
  v24 = *(v4 + 2);
  if (v24)
  {
    v5 = 0;
    v22 = v3[26];
    v30 = v3[51];
    v29 = v30 + 56;
    v6 = _swiftEmptyArrayStorage;
    v21 = v3[42];
    v23 = v3[68];
    while (v5 < *(v4 + 2))
    {
      v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v27 = v6;
      v28 = v5;
      v25 = *(v22 + 72);
      sub_10012B2B8(v3[68] + v26 + v25 * v5, v3[28], type metadata accessor for BeaconNamingRecord);
      if (*(v30 + 16) && (sub_100019300(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(v30 + 32), v9 = v7 & ~v8, ((*(v29 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
      {
        v10 = ~v8;
        v11 = *(v21 + 72);
        v12 = *(v21 + 16);
        while (1)
        {
          v13 = v3[45];
          v14 = v3[41];
          v12(v13, *(v30 + 48) + v9 * v11, v14);
          sub_100019300(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v15 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v21 + 8))(v13, v14);
          if (v15)
          {
            break;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v29 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        sub_10012B448(v3[28], type metadata accessor for BeaconNamingRecord);
        v6 = v27;
      }

      else
      {
LABEL_11:
        sub_10012B250(v3[28], v3[27], type metadata accessor for BeaconNamingRecord);
        v6 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1011241D8(0, v27[2] + 1, 1);
          v6 = v27;
        }

        v17 = v6[2];
        v16 = v6[3];
        if (v17 >= v16 >> 1)
        {
          sub_1011241D8((v16 > 1), v17 + 1, 1);
          v6 = v27;
        }

        v18 = v3[27];
        v6[2] = v17 + 1;
        sub_10012B250(v18, v6 + v26 + v17 * v25, type metadata accessor for BeaconNamingRecord);
      }

      v5 = v28 + 1;
      v4 = v23;
      if (v28 + 1 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_18:
    v3[69] = v6;
    v19 = v3[54];

    v4 = sub_10011B9EC;
    a2 = v19;
    a3 = 0;
  }

  return _swift_task_switch(v4, a2, a3);
}

uint64_t sub_10011B9EC()
{

  v1 = swift_task_alloc();
  v0[70] = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  v0[71] = v2;
  *v1 = v0;
  v1[1] = sub_10011BAD0;
  v3 = v0[54];

  return unsafeBlocking<A>(context:_:)(v0 + 7, 0xD000000000000010, 0x800000010134A8C0, sub_1000D27E4, v3, v2);
}

uint64_t sub_10011BAD0()
{
  v1 = *(*v0 + 432);

  return _swift_task_switch(sub_10011BBE8, v1, 0);
}

uint64_t sub_10011BBE8()
{
  v1 = v0[11];
  v0[72] = v0[7];
  return _swift_task_switch(sub_10011BC0C, v1, 0);
}

uint64_t sub_10011BC0C()
{
  v0 = getuid();
  sub_1000294F0(v0);

  return _swift_task_switch(sub_10011BC7C, 0, 0);
}

uint64_t sub_10011BC7C()
{
  v1 = swift_task_alloc();
  *(v0 + 584) = v1;
  *v1 = v0;
  v1[1] = sub_10011BD24;
  v2 = *(v0 + 352);

  return sub_10068818C(v2);
}

uint64_t sub_10011BD24(uint64_t a1)
{
  v3 = *v2;
  v3[74] = a1;
  v3[75] = v1;

  if (v1)
  {

    v4 = sub_10011C250;
    v5 = 0;
  }

  else
  {
    v6 = v3[44];
    v7 = v3[41];
    v8 = v3[42];
    v9 = v3[11];
    v10 = *(v8 + 8);
    v3[76] = v10;
    v3[77] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v7);

    v4 = sub_10011BEEC;
    v5 = v9;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10011BEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[74];
  v25 = *(v4 + 2);
  if (v25)
  {
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    v31 = v3[51];
    v22 = v3[42];
    v23 = v3[22];
    v30 = v31 + 56;
    v24 = v3[74];
    while (v5 < *(v4 + 2))
    {
      v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v28 = v6;
      v29 = v5;
      v26 = *(v23 + 72);
      sub_1000D2A70(v3[74] + v27 + v26 * v5, v3[24], &qword_101697708, &qword_10138C3C0);
      if (*(v31 + 16) && (sub_100019300(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(v31 + 32), v9 = v7 & ~v8, ((*(v30 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
      {
        v10 = ~v8;
        v11 = *(v22 + 72);
        v12 = *(v22 + 16);
        while (1)
        {
          v13 = v3[76];
          v14 = v3[45];
          v15 = v3[41];
          v12(v14, *(v31 + 48) + v9 * v11, v15);
          sub_100019300(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v16 = dispatch thunk of static Equatable.== infix(_:_:)();
          v13(v14, v15);
          if (v16)
          {
            break;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v30 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        sub_10000B3A8(v3[24], &qword_101697708, &qword_10138C3C0);
        v6 = v28;
      }

      else
      {
LABEL_11:
        sub_1000D2AD8(v3[24], v3[23], &qword_101697708, &qword_10138C3C0);
        v6 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101124198(0, v28[2] + 1, 1);
          v6 = v28;
        }

        v18 = v6[2];
        v17 = v6[3];
        if (v18 >= v17 >> 1)
        {
          sub_101124198((v17 > 1), v18 + 1, 1);
          v6 = v28;
        }

        v19 = v3[23];
        v6[2] = v18 + 1;
        sub_1000D2AD8(v19, v6 + v27 + v18 * v26, &qword_101697708, &qword_10138C3C0);
      }

      v5 = v29 + 1;
      v4 = v24;
      if (v29 + 1 == v25)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_18:
    v3[78] = v6;
    v20 = v3[54];

    v4 = sub_10011C448;
    a2 = v20;
    a3 = 0;
  }

  return _swift_task_switch(v4, a2, a3);
}

uint64_t sub_10011C250()
{
  v1 = v0[11];
  (*(v0[42] + 8))(v0[44], v0[41]);

  return _swift_task_switch(sub_10011C2D8, v1, 0);
}

uint64_t sub_10011C2D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10011C448()
{

  v1 = swift_task_alloc();
  v0[79] = v1;
  *v1 = v0;
  v1[1] = sub_10011C520;
  v2 = v0[71];
  v3 = v0[54];

  return unsafeBlocking<A>(context:_:)(v0 + 8, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_10011C520()
{
  v1 = *(*v0 + 432);

  return _swift_task_switch(sub_10011C638, v1, 0);
}

uint64_t sub_10011C65C()
{
  v1 = getuid();
  sub_1000294F0(v1);
  v2 = swift_task_alloc();
  *(v0 + 648) = v2;
  *v2 = v0;
  v2[1] = sub_10011C714;
  v3 = *(v0 + 344);

  return sub_10068321C(v3);
}

uint64_t sub_10011C714(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 608);
  v6 = *(*v3 + 344);
  v7 = *(*v3 + 328);
  v4[82] = a1;
  v4[83] = a2;
  v4[84] = v2;

  v5(v6, v7);
  if (v2)
  {

    v8 = sub_10011CF78;
    v9 = 0;
  }

  else
  {
    v10 = v4[11];

    v8 = sub_10011C920;
    v9 = v10;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10011C920()
{
  v1 = v0[82];
  v2 = *(v1 + 16);

  v45 = v2;
  if (v2)
  {
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    v57 = v0[51];
    v39 = v0[42];
    v41 = v0[17];
    v55 = v57 + 56;
    v43 = v1;
    while (v6 < *(v1 + 16))
    {
      v49 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v51 = v7;
      v53 = v6;
      v47 = *(v41 + 72);
      sub_1000D2A70(v0[82] + v49 + v47 * v6, v0[21], &qword_101697700, &unk_10139FB90);
      if (*(v57 + 16) && (sub_100019300(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v8 = dispatch thunk of Hashable._rawHashValue(seed:)(), v9 = -1 << *(v57 + 32), v10 = v8 & ~v9, ((*(v55 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
      {
        v11 = ~v9;
        v12 = *(v39 + 72);
        v13 = *(v39 + 16);
        while (1)
        {
          v14 = v0[76];
          v15 = v0[45];
          v16 = v0[41];
          v13(v15, *(v57 + 48) + v10 * v12, v16);
          sub_100019300(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v17 = dispatch thunk of static Equatable.== infix(_:_:)();
          v14(v15, v16);
          if (v17)
          {
            break;
          }

          v10 = (v10 + 1) & v11;
          if (((*(v55 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        v3 = sub_10000B3A8(v0[21], &qword_101697700, &unk_10139FB90);
        v1 = v43;
        v7 = v51;
      }

      else
      {
LABEL_11:
        sub_1000D2AD8(v0[21], v0[20], &qword_101697700, &unk_10139FB90);
        v7 = v51;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101124158(0, v51[2] + 1, 1);
          v7 = v51;
        }

        v19 = v7[2];
        v18 = v7[3];
        v1 = v43;
        if (v19 >= v18 >> 1)
        {
          sub_101124158((v18 > 1), v19 + 1, 1);
          v7 = v51;
        }

        v20 = v0[20];
        v7[2] = v19 + 1;
        v3 = sub_1000D2AD8(v20, v7 + v49 + v19 * v47, &qword_101697700, &unk_10139FB90);
      }

      v6 = v53 + 1;
      if (v53 + 1 == v45)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_18:
  v0[85] = v7;
  v21 = v0[83];
  v3 = swift_bridgeObjectRelease_n();
  v44 = *(v21 + 16);
  v46 = v21;
  if (v44)
  {
    v22 = 0;
    v23 = _swiftEmptyArrayStorage;
    v58 = v0[51];
    v40 = v0[42];
    v42 = v0[17];
    v56 = v58 + 56;
    while (v22 < *(v46 + 16))
    {
      v50 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v52 = v23;
      v54 = v22;
      v48 = *(v42 + 72);
      sub_1000D2A70(v0[83] + v50 + v48 * v22, v0[19], &qword_101697700, &unk_10139FB90);
      if (*(v58 + 16) && (sub_100019300(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v24 = dispatch thunk of Hashable._rawHashValue(seed:)(), v25 = -1 << *(v58 + 32), v26 = v24 & ~v25, ((*(v56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0))
      {
        v27 = ~v25;
        v28 = *(v40 + 72);
        v29 = *(v40 + 16);
        while (1)
        {
          v30 = v0[76];
          v31 = v0[45];
          v32 = v0[41];
          v29(v31, *(v58 + 48) + v26 * v28, v32);
          sub_100019300(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v33 = dispatch thunk of static Equatable.== infix(_:_:)();
          v30(v31, v32);
          if (v33)
          {
            break;
          }

          v26 = (v26 + 1) & v27;
          if (((*(v56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v3 = sub_10000B3A8(v0[19], &qword_101697700, &unk_10139FB90);
        v23 = v52;
      }

      else
      {
LABEL_28:
        sub_1000D2AD8(v0[19], v0[18], &qword_101697700, &unk_10139FB90);
        v23 = v52;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_101124158(0, v52[2] + 1, 1);
          v23 = v52;
        }

        v35 = v23[2];
        v34 = v23[3];
        if (v35 >= v34 >> 1)
        {
          sub_101124158((v34 > 1), v35 + 1, 1);
          v23 = v52;
        }

        v36 = v0[18];
        v23[2] = v35 + 1;
        v3 = sub_1000D2AD8(v36, v23 + v50 + v35 * v48, &qword_101697700, &unk_10139FB90);
      }

      v22 = v54 + 1;
      if (v54 + 1 == v44)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    __break(1u);
    return _swift_task_switch(v3, v4, v5);
  }

  v23 = _swiftEmptyArrayStorage;
LABEL_34:
  v0[86] = v23;
  v37 = v0[54];

  v3 = sub_10011D0F0;
  v4 = v37;
  v5 = 0;

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10011CF78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10011D0F0()
{

  v1 = swift_task_alloc();
  v0[87] = v1;
  *v1 = v0;
  v1[1] = sub_10011D1C8;
  v2 = v0[71];
  v3 = v0[54];

  return unsafeBlocking<A>(context:_:)(v0 + 9, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_10011D1C8()
{
  v1 = *(*v0 + 432);

  return _swift_task_switch(sub_10011D2E0, v1, 0);
}

uint64_t sub_10011D304()
{
  v1 = swift_task_alloc();
  *(v0 + 712) = v1;
  *v1 = v0;
  v1[1] = sub_10011D3A4;

  return sub_10068FD6C();
}

uint64_t sub_10011D3A4(uint64_t a1)
{
  v3 = *v2;
  v3[90] = a1;
  v3[91] = v1;

  if (v1)
  {

    v4 = sub_10011DAC4;
    v5 = 0;
  }

  else
  {
    v6 = v3[11];

    v4 = sub_10011D570;
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

void sub_10011D570()
{
  v1 = *(v0 + 720);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 416);
    v35 = *(v0 + 120);
    v33 = v1 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v39 = v4 + 56;
    v5 = _swiftEmptyArrayStorage;
    v30 = *(v0 + 96);
    v31 = *(v0 + 104);
    v26 = *(v0 + 336);
    v6 = (v26 + 16);
    v41 = v4;
    v27 = *(v1 + 16);
    v28 = *(v0 + 720);
    while (v3 < *(v1 + 16))
    {
      sub_10012B2B8(v33 + *(v35 + 72) * v3, *(v0 + 128), type metadata accessor for DelegatedBeaconMetadata);
      if (*(v4 + 16))
      {
        v37 = v3;
        sub_100019300(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v6 = (v26 + 16);
        v7 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v8 = -1 << *(v4 + 32);
        v9 = v7 & ~v8;
        v10 = *(v26 + 16);
        if ((*(v39 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          v29 = v5;
          v11 = ~v8;
          v12 = *(v26 + 72);
          do
          {
            v13 = *(v0 + 608);
            v14 = *(v0 + 360);
            v15 = *(v0 + 328);
            v10(v14, *(v41 + 48) + v9 * v12, v15);
            sub_100019300(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v16 = dispatch thunk of static Equatable.== infix(_:_:)();
            v13(v14, v15);
            if (v16)
            {
              sub_10012B448(*(v0 + 128), type metadata accessor for DelegatedBeaconMetadata);
              v1 = v28;
              v5 = v29;
              v2 = v27;
              v3 = v37;
              v6 = (v26 + 16);
              goto LABEL_4;
            }

            v9 = (v9 + 1) & v11;
          }

          while (((*(v39 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
          v1 = v28;
          v5 = v29;
          v2 = v27;
          v3 = v37;
          v6 = (v26 + 16);
        }

        else
        {
          v3 = v37;
        }
      }

      else
      {
        v10 = *v6;
      }

      v17 = *(v0 + 128);
      v18 = *(v0 + 112);
      v19 = *(v30 + 48);
      v10(v18, v17, *(v0 + 328));
      sub_10012B2B8(v17, v18 + v19, type metadata accessor for DelegatedBeaconMetadata);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_100A5C02C(0, v5[2] + 1, 1, v5);
      }

      v21 = v5[2];
      v20 = v5[3];
      if (v21 >= v20 >> 1)
      {
        v5 = sub_100A5C02C((v20 > 1), v21 + 1, 1, v5);
      }

      v22 = *(v0 + 112);
      sub_10012B448(*(v0 + 128), type metadata accessor for DelegatedBeaconMetadata);
      v5[2] = v21 + 1;
      sub_1000D2AD8(v22, v5 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v21, &qword_1016976F8, &unk_10138C3B0);
LABEL_4:
      ++v3;
      v4 = v41;
      if (v3 == v2)
      {

        v23 = v5;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {

    v23 = _swiftEmptyArrayStorage;
LABEL_21:

    v42 = *(v0 + 552);
    v43 = *(v0 + 624);
    v38 = *(v0 + 504);
    v40 = *(v0 + 528);
    v34 = *(v0 + 456);
    v36 = *(v0 + 480);
    v32 = *(v0 + 680);
    v24 = *(v0 + 80);

    *v24 = v34;
    *(v24 + 8) = v36;
    *(v24 + 16) = v38;
    *(v24 + 24) = v40;
    *(v24 + 32) = v42;
    *(v24 + 40) = v43;
    *(v24 + 48) = v23;
    *(v24 + 56) = v32;
    v25 = *(v0 + 8);

    v25();
  }
}

uint64_t sub_10011DAC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10011DC3C()
{
  v1[8] = v0;
  v2 = type metadata accessor for SharedBeaconRecord(0);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for OwnedBeaconRecord(0);
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v4 = type metadata accessor for MemberSharingCircle(0);
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v6 = type metadata accessor for OwnerSharingCircle(0);
  v1[24] = v6;
  v1[25] = *(v6 - 8);
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_10011DE90, v0, 0);
}

uint64_t sub_10011DE90()
{
  v1 = v0[8];
  v0[2] = &_swiftEmptySetSingleton;
  v0[3] = &_swiftEmptySetSingleton;
  v2 = *(v1 + 112);
  v0[27] = v2;
  return _swift_task_switch(sub_10011DEC0, v2, 0);
}

uint64_t sub_10011DEC0()
{

  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  v2 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v1 = v0;
  v1[1] = sub_10011DFAC;
  v3 = *(v0 + 216);

  return unsafeBlocking<A>(context:_:)(v0 + 32, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v3, v2);
}

uint64_t sub_10011DFAC()
{
  v1 = *(*v0 + 216);

  return _swift_task_switch(sub_10011E0C4, v1, 0);
}

uint64_t sub_10011E0C4()
{
  v1 = v0[8];
  v0[29] = v0[4];
  return _swift_task_switch(sub_10011E0E8, v1, 0);
}

uint64_t sub_10011E0E8(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[29];
  v29 = *(v4 + 16);
  if (v29)
  {
    v5 = 0;
    v35 = v3[24];
    v6 = v3[19];
    v28 = v3[25];
    v27 = v4 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v7 = (v6 + 16);
    v30 = v6;
    v8 = (v6 + 8);
    v9 = &_swiftEmptySetSingleton;
    v32 = (v6 + 8);
    v33 = v3[29];
    v38 = (v6 + 16);
    while (v5 < *(v4 + 16))
    {
      v10 = v3[26];
      v36 = v10;
      v12 = v3[22];
      v11 = v3[23];
      v13 = v3[18];
      sub_10012B2B8(v27 + *(v28 + 72) * v5, v10, type metadata accessor for OwnerSharingCircle);
      v14 = *v7;
      (*v7)(v12, v10 + v35[5], v13);
      sub_100DE8BCC(v11, v12);
      v15 = *v8;
      (*v8)(v11, v13);
      v14(v12, v10 + v35[6], v13);
      v16 = v14;
      sub_100DE8BCC(v11, v12);
      v15(v11, v13);
      v17 = v15;
      v18 = *(*(v36 + v35[8]) + 16);
      v34 = v5;
      if (v18)
      {
        v19 = sub_1003A85FC(v18, 0);
        v20 = sub_1003CC2CC();

        a1 = sub_1000128F8(v39);
        if (v20 != v18)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
      }

      v4 = v33;
      v39 = v9;
      v21 = v19[2];
      v7 = v38;
      if (v21)
      {
        v22 = v19 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
        v37 = *(v30 + 72);
        do
        {
          v23 = v31[23];
          v24 = v31[21];
          v25 = v31[18];
          v16(v24, v22, v25);
          sub_100DE8BCC(v23, v24);
          v7 = v38;
          v17(v23, v25);
          v22 += v37;
          --v21;
        }

        while (v21);

        v9 = v39;
        v4 = v33;
      }

      else
      {
      }

      v5 = v34 + 1;
      v3 = v31;
      a1 = sub_10012B448(v31[26], type metadata accessor for OwnerSharingCircle);
      v8 = v32;
      if (v34 + 1 == v29)
      {

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {

    v9 = &_swiftEmptySetSingleton;
LABEL_16:
    v3[30] = v9;
    a2 = v3[27];
    a1 = sub_10011E458;
    a3 = 0;
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10011E458()
{

  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  v2 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v1 = v0;
  v1[1] = sub_10011E544;
  v3 = *(v0 + 216);

  return unsafeBlocking<A>(context:_:)(v0 + 40, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v3, v2);
}

uint64_t sub_10011E544()
{
  v1 = *(*v0 + 216);

  return _swift_task_switch(sub_10011E65C, v1, 0);
}

uint64_t sub_10011E65C()
{
  v1 = v0[8];
  v0[32] = v0[5];
  return _swift_task_switch(sub_10011E680, v1, 0);
}

uint64_t sub_10011E680(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[32];
  v29 = *(v4 + 16);
  if (v29)
  {
    v5 = 0;
    v6 = v3[19];
    v36 = v3[15];
    v28 = v3[16];
    v27 = v4 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v7 = (v6 + 16);
    v8 = (v6 + 8);
    v9 = v3[30];
    v32 = (v6 + 8);
    v33 = v3[32];
    v38 = (v6 + 16);
    while (v5 < *(v4 + 16))
    {
      v34 = v9;
      v11 = v3[22];
      v10 = v3[23];
      v13 = v3[17];
      v12 = v3[18];
      sub_10012B2B8(v27 + *(v28 + 72) * v5, v13, type metadata accessor for MemberSharingCircle);
      v14 = *v7;
      (*v7)(v11, v13 + v36[7], v12);
      sub_100DE8BCC(v10, v11);
      v15 = *v8;
      (*v8)(v10, v12);
      v14(v11, v13 + v36[6], v12);
      v16 = v14;
      sub_100DE8BCC(v10, v11);
      v15(v10, v12);
      v17 = v15;
      v18 = *(*(v13 + v36[9]) + 16);
      v35 = v5;
      if (v18)
      {
        v19 = sub_1003A85FC(v18, 0);
        v20 = sub_1003CC2CC();

        a1 = sub_1000128F8(v39);
        if (v20 != v18)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
      }

      v4 = v33;
      v9 = v34;
      v39 = v34;
      v21 = v19[2];
      v7 = v38;
      if (v21)
      {
        v22 = v19 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
        v37 = *(v30 + 72);
        do
        {
          v23 = v31[23];
          v24 = v31[20];
          v25 = v31[18];
          v16(v24, v22, v25);
          sub_100DE8BCC(v23, v24);
          v7 = v38;
          v17(v23, v25);
          v22 += v37;
          --v21;
        }

        while (v21);

        v9 = v34;
        v4 = v33;
      }

      else
      {
      }

      v5 = v35 + 1;
      v3 = v31;
      a1 = sub_10012B448(v31[17], type metadata accessor for MemberSharingCircle);
      v8 = v32;
      if (v35 + 1 == v29)
      {

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {

    v9 = v3[30];
LABEL_16:
    v3[33] = v9;
    a2 = v3[27];
    a1 = sub_10011E9E8;
    a3 = 0;
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10011E9E8()
{

  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  v2 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v1 = v0;
  v1[1] = sub_10011EAD4;
  v3 = *(v0 + 216);

  return unsafeBlocking<A>(context:_:)(v0 + 48, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v3, v2);
}

uint64_t sub_10011EAD4()
{
  v1 = *(*v0 + 216);

  return _swift_task_switch(sub_10011EBEC, v1, 0);
}

uint64_t sub_10011EBEC()
{
  v1 = v0[8];
  v0[35] = v0[6];
  return _swift_task_switch(sub_10011EC10, v1, 0);
}

uint64_t sub_10011EC10()
{
  v1 = v0[35];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[19];
    v4 = v0[13];
    v16 = v0[14];
    v15 = *(v0[12] + 20);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    v7 = (v3 + 16);
    v8 = (v3 + 8);
    do
    {
      v10 = v0[22];
      v9 = v0[23];
      v11 = v0[18];
      v12 = v0[14];
      sub_10012B2B8(v5, v12, type metadata accessor for OwnedBeaconRecord);
      (*v7)(v10, v16 + v15, v11);
      sub_10012B448(v12, type metadata accessor for OwnedBeaconRecord);
      sub_100DE8BCC(v9, v10);
      (*v8)(v9, v11);
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  v13 = v0[27];

  return _swift_task_switch(sub_10011ED74, v13, 0);
}

uint64_t sub_10011ED74()
{

  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  v2 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v1 = v0;
  v1[1] = sub_10011EE60;
  v3 = *(v0 + 216);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4AC, v3, v2);
}

uint64_t sub_10011EE60()
{
  v1 = *(*v0 + 216);

  return _swift_task_switch(sub_10011EF78, v1, 0);
}

uint64_t sub_10011EF78()
{
  v1 = v0[8];
  v0[37] = v0[7];
  return _swift_task_switch(sub_10011EF98, v1, 0);
}

uint64_t sub_10011EF98()
{
  v1 = v0[37];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[19];
    v5 = v0[9];
    v4 = v0[10];
    v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v19 = *(v4 + 72);
    v7 = (v3 + 16);
    v8 = (v3 + 8);
    do
    {
      v13 = v0[11];
      sub_10012B2B8(v6, v13, type metadata accessor for SharedBeaconRecord);
      v12 = v0[11];
      if (*(v13 + v5[11]) == -1 || *(v12 + v5[12]) == -1)
      {
        v10 = v0[22];
        v9 = v0[23];
        v11 = v0[18];
        (*v7)(v10, v12 + v5[5], v11);
        sub_100DE8BCC(v9, v10);
        (*v8)(v9, v11);
        v12 = v0[11];
      }

      sub_10012B448(v12, type metadata accessor for SharedBeaconRecord);
      v6 += v19;
      --v2;
    }

    while (v2);
  }

  v15 = v0[2];
  v14 = v0[3];

  v16 = v0[1];
  v17 = v0[33];

  return v16(v14, v15, v17);
}

uint64_t sub_10011F17C()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10011F1E0(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v2[15] = type metadata accessor for KeySyncMetadataDisplay(0);
  v2[16] = swift_task_alloc();
  v3 = type metadata accessor for KeySyncMetadata(0);
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[26] = v5;
  *v5 = v2;
  v5[1] = sub_10011F380;

  return daemon.getter();
}

uint64_t sub_10011F380(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 216) = a1;

  v3 = swift_task_alloc();
  *(v2 + 224) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100019300(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100019300(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_10011F55C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10011F55C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 232) = a1;

  if (v1)
  {
    v5 = v3[14];

    return _swift_task_switch(sub_100120204, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[30] = v6;
    *v6 = v4;
    v6[1] = sub_10011F724;
    v7 = v3[13];

    return sub_1010CC3BC(v7, &off_1016079B8);
  }
}

uint64_t sub_10011F724(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 248) = a1;

  v4 = *(v3 + 112);
  if (v1)
  {

    v5 = sub_1001202FC;
  }

  else
  {
    v5 = sub_10011F864;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10011F864()
{
  v1 = v0;
  v2 = v0[31];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[23];
    v6 = v1[17];
    v5 = v1[18];
    v78 = v1[15];
    sub_101123BB8(0, v3, 0);
    v80 = (v4 + 16);
    v7 = _swiftEmptyArrayStorage;
    v77 = *(v5 + 72);
    v76 = (v4 + 32);
    v73 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v74 = v2;
    v8 = v73;
    v91 = v1;
    v79 = v6;
    do
    {
      v89 = v7;
      v90 = v3;
      v9 = v1[24];
      v10 = v1[22];
      v12 = v1[19];
      v11 = v1[20];
      v87 = v8;
      sub_10012B2B8(v8, v11, type metadata accessor for KeySyncMetadata);
      sub_10012B2B8(v11, v12, type metadata accessor for KeySyncMetadata);
      v75 = *v80;
      (*v80)(v9, v12, v10);
      v13 = *(v12 + v6[5]);
      v14 = 0x736142746E69682ELL;
      if (v13 != 7)
      {
        v14 = 0x67696C4179656B2ELL;
      }

      v15 = 0xED0000746E656D6ELL;
      if (v13 == 7)
      {
        v15 = 0xEA00000000006465;
      }

      if (v13 == 6)
      {
        v14 = 0x636553646C69772ELL;
        v15 = 0xEE00797261646E6FLL;
      }

      v16 = 0xD000000000000018;
      if (v13 != 4)
      {
        v16 = 0x697250646C69772ELL;
      }

      v17 = 0x800000010134B910;
      if (v13 != 4)
      {
        v17 = 0xEC0000007972616DLL;
      }

      if (*(v12 + v6[5]) <= 5u)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = 0xD00000000000001CLL;
      if (v13 == 2)
      {
        v18 = 0x6553686374616C2ELL;
      }

      v19 = 0x800000010134B930;
      if (v13 == 2)
      {
        v19 = 0xEF64657461726170;
      }

      v20 = 0xEA00000000007265;
      v21 = 0x6E776F6E6B6E752ELL;
      if (*(v12 + v6[5]))
      {
        v21 = 0x6E774F7261656E2ELL;
      }

      else
      {
        v20 = 0xE800000000000000;
      }

      if (*(v12 + v6[5]) <= 1u)
      {
        v18 = v21;
        v19 = v20;
      }

      if (*(v12 + v6[5]) <= 3u)
      {
        v22 = v18;
      }

      else
      {
        v22 = v14;
      }

      v86 = v22;
      if (*(v12 + v6[5]) <= 3u)
      {
        v23 = v19;
      }

      else
      {
        v23 = v15;
      }

      v85 = v23;
      v81 = v1[22];
      v82 = v1[24];
      v88 = v1[20];
      v24 = v91[19];
      v25 = v91[16];
      v26 = (v24 + v6[6]);
      sub_1000035D0(v26, v26[3]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      v27 = v91[10];
      v83 = v27;
      v28 = v26[3];
      v29 = v26[4];
      sub_1000035D0(v26, v28);
      v30 = sub_10002BD40(v28, v29);
      if (v30)
      {
        v31 = 0x61646E6F6365732ELL;
      }

      else
      {
        v31 = 0x7972616D6972702ELL;
      }

      if (v30)
      {
        v32 = 0xEA00000000007972;
      }

      else
      {
        v32 = 0xE800000000000000;
      }

      v33 = v6[7];
      v34 = v78[8];
      v84 = type metadata accessor for Date();
      (*(*(v84 - 8) + 16))(v25 + v34, v24 + v33, v84);
      (*v76)(v25, v82, v81);
      v35 = (v25 + v78[5]);
      *v35 = v86;
      v35[1] = v85;
      *(v25 + v78[6]) = v27;
      v36 = (v25 + v78[7]);
      *v36 = v31;
      v36[1] = v32;
      v37 = v24;
      v1 = v91;
      sub_10012B448(v37, type metadata accessor for KeySyncMetadata);
      _StringGuts.grow(_:)(21);
      sub_100019300(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;

      v41._countAndFlagsBits = 8250;
      v41._object = 0xE200000000000000;
      String.append(_:)(v41);
      v42._countAndFlagsBits = v86;
      v42._object = v85;
      String.append(_:)(v42);
      v43._countAndFlagsBits = 773860640;
      v43._object = 0xE400000000000000;
      String.append(_:)(v43);
      v44._countAndFlagsBits = v31;
      v44._object = v32;
      String.append(_:)(v44);
      v45._countAndFlagsBits = 40;
      v45._object = 0xE100000000000000;
      String.append(_:)(v45);
      v91[11] = v83;
      v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v46);

      v47._countAndFlagsBits = 539828265;
      v47._object = 0xE400000000000000;
      String.append(_:)(v47);
      sub_100019300(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v48);

      sub_10012B448(v25, type metadata accessor for KeySyncMetadataDisplay);
      sub_10012B448(v88, type metadata accessor for KeySyncMetadata);
      v7 = v89;
      v50 = v89[2];
      v49 = v89[3];
      if (v50 >= v49 >> 1)
      {
        sub_101123BB8((v49 > 1), v50 + 1, 1);
        v7 = v89;
      }

      v7[2] = v50 + 1;
      v51 = &v7[2 * v50];
      v51[4] = v38;
      v51[5] = v40;
      v8 = v87 + v77;
      v3 = v90 - 1;
      v6 = v79;
    }

    while (v90 != 1);
    v91[12] = v7;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_10012B138();
    v52 = BidirectionalCollection<>.joined(separator:)();
    v54 = v53;

    v91[2] = v52;
    v91[3] = v54;
    if (!*(v74 + 16))
    {
      __break(1u);
      return result;
    }

    v56 = v91[25];
    v58 = v91[22];
    v57 = v91[23];
    v59 = v91[21];
    v75(v56, v73, v58);
    v92 = dispatch thunk of CustomStringConvertible.description.getter();
    v93 = v60;
    v61 = *(v57 + 8);
    v61(v56, v58);
    v62._countAndFlagsBits = 8250;
    v62._object = 0xE200000000000000;
    String.append(_:)(v62);
    v91[4] = v92;
    v91[5] = v93;
    v91[6] = 0;
    v91[7] = 0xE000000000000000;
    v72 = sub_1000DF96C();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    _StringGuts.grow(_:)(27);

    sub_10012B2B8(v73, v59, type metadata accessor for KeySyncMetadata);

    v75(v56, v59, v58);
    v63 = v59;
    v1 = v91;
    sub_10012B448(v63, type metadata accessor for KeySyncMetadata);
    v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v64);

    v61(v56, v58);
    v65._countAndFlagsBits = 151587386;
    v65._object = 0xE400000000000000;
    String.append(_:)(v65);
    v91[8] = 0xD000000000000015;
    v91[9] = 0x800000010134B8F0;
    sub_10012B19C();
    String.insert<A>(contentsOf:at:)();

    v66 = objc_allocWithZone(SPDataIntegrityCheck);
    v67 = String._bridgeToObjectiveC()();

    v68 = [v66 initWithValue:v67 severity:{0, &type metadata for String, v72, v72, v72}];
  }

  else
  {

    v69 = objc_allocWithZone(SPDataIntegrityCheck);
    v70 = String._bridgeToObjectiveC()();
    v68 = [v69 initWithValue:v70 severity:2];
  }

  v71 = v1[1];

  return v71(v68);
}

uint64_t sub_100120204()
{
  v1 = objc_allocWithZone(SPDataIntegrityCheck);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithValue:v2 severity:1];

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1001202FC()
{
  v1 = objc_allocWithZone(SPDataIntegrityCheck);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithValue:v2 severity:2];

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100120400(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for BeaconObservation(0);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v2[12] = *(v5 + 64);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100120524, v1, 0);
}

uint64_t sub_100120524()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[5];
  v0[2] = _swiftEmptyArrayStorage;
  (*(v3 + 16))(v1, v4, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[14] = v6;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = swift_task_alloc();
  v0[15] = v7;
  v8 = sub_1000BC4D4(&qword_101697788, &qword_10138C498);
  *v7 = v0;
  v7[1] = sub_100120674;

  return unsafeBlocking<A>(_:)(v0 + 3, sub_10012B0C8, v6, v8);
}

uint64_t sub_100120674()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_1001207A0, v1, 0);
}

uint64_t sub_1001207A0()
{
  v1 = 0;
  result = v0[3];
  v3 = result + 64;
  v5 = v0[7];
  v4 = v0[8];
  v6 = -1;
  v7 = -1 << *(result + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(result + 64);
  v9 = (63 - v7) >> 6;
  v10 = _swiftEmptyArrayStorage;
  while (v8)
  {
LABEL_4:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(result + 56) + ((v1 << 9) | (8 * v11)));
    v13 = *(v12 + 16);
    if (v13)
    {
      v29 = result;
      v15 = v0[9];
      sub_10012B2B8(v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * (v13 - 1), v15, type metadata accessor for BeaconObservation);
      LOBYTE(v15) = *(v15 + *(v5 + 24));

      sub_10091E6AC(v15);
      v16._countAndFlagsBits = 8250;
      v16._object = 0xE200000000000000;
      String.append(_:)(v16);
      v17 = *(v12 + 16);

      if (v17 < 2)
      {
        v20 = 0;
        v21 = 0xE000000000000000;
      }

      else
      {
        v0[4] = v17;
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = v18;
        v19._countAndFlagsBits = 0x7364726F63657220;
        v19._object = 0xE800000000000000;
        String.append(_:)(v19);
        v20 = v30;
        v21 = v31;
      }

      v22 = v21;
      String.append(_:)(*&v20);

      v23._countAndFlagsBits = 0x207473614C202ELL;
      v23._object = 0xE700000000000000;
      String.append(_:)(v23);
      type metadata accessor for Date();
      sub_100019300(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v24);

      v25 = objc_allocWithZone(SPDataIntegrityCheck);
      v26 = String._bridgeToObjectiveC()();

      [v25 initWithValue:v26 severity:0];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v27 = v0[9];
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      sub_10012B448(v27, type metadata accessor for BeaconObservation);
      v10 = v0[2];
      result = v29;
    }
  }

  while (1)
  {
    v14 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return result;
    }

    if (v14 >= v9)
    {
      break;
    }

    v8 = *(v3 + 8 * v14);
    ++v1;
    if (v8)
    {
      v1 = v14;
      goto LABEL_4;
    }
  }

  v28 = v0[1];

  return v28(v10);
}

void sub_100120B0C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v48 = a1;
  v45 = a2;
  v2 = type metadata accessor for BeaconObservation(0);
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = __chkstk_darwin(v2);
  v53 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v44 - v5;
  if (qword_101694920 != -1)
  {
LABEL_42:
    swift_once();
  }

  v7 = 0;
  v8 = 0;
  v50 = qword_10177B2E8;
  v9 = _swiftEmptyDictionarySingleton;
  v49 = OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue;
  while (1)
  {
    v51 = v7;
    v52 = v9;
    v10 = *(&off_101607A10 + v7 + 32);
    v11 = objc_autoreleasePoolPush();
    sub_1000BC4D4(&unk_1016B26E0, &unk_10138C4A0);
    OS_dispatch_queue.sync<A>(execute:)();
    v12 = v56;
    if (v56[2] && (v13 = sub_1000210EC(v48), (v14 & 1) != 0))
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = sub_100034824(*(v15 + 16), 0);
        v18 = sub_1000364B4(&v56, v17 + 4, v16, v15);
        sub_1000128F8(v56);
        if (v18 != v16)
        {
          goto LABEL_41;
        }
      }

      else
      {

        v17 = _swiftEmptyArrayStorage;
      }

      v46 = 0;
      v47 = v11;
      v20 = sub_100034838(v17);

      v21 = v20[2];
      if (v21)
      {
        v22 = 0;
        v19 = _swiftEmptyArrayStorage;
        v23 = v10;
        while (v22 < v20[2])
        {
          v24 = (*(v54 + 80) + 32) & ~*(v54 + 80);
          v25 = *(v54 + 72);
          sub_10012B2B8(v20 + v24 + v25 * v22, v6, type metadata accessor for BeaconObservation);
          if (qword_10138C500[v6[*(v55 + 24)]] == qword_10138C500[v10])
          {
            sub_10012B250(v6, v53, type metadata accessor for BeaconObservation);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v56 = v19;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_101124308(0, v19[2] + 1, 1);
              v19 = v56;
            }

            v28 = v19[2];
            v27 = v19[3];
            if (v28 >= v27 >> 1)
            {
              sub_101124308((v27 > 1), v28 + 1, 1);
              v19 = v56;
            }

            v19[2] = v28 + 1;
            sub_10012B250(v53, v19 + v24 + v28 * v25, type metadata accessor for BeaconObservation);
            v10 = v23;
          }

          else
          {
            sub_10012B448(v6, type metadata accessor for BeaconObservation);
          }

          if (v21 == ++v22)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v19 = _swiftEmptyArrayStorage;
LABEL_24:

      v8 = v46;
      v11 = v47;
    }

    else
    {

      v19 = _swiftEmptyArrayStorage;
    }

    objc_autoreleasePoolPop(v11);
    v56 = v19;

    sub_100129D84(&v56);
    if (v8)
    {
      break;
    }

    v29 = v10;

    v30 = v56;
    v31 = v52;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v56 = v31;
    v34 = sub_100772048(v29);
    v35 = *(v31 + 16);
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_39;
    }

    v38 = v33;
    if (*(v31 + 24) >= v37)
    {
      if (v32)
      {
        v9 = v56;
        if (v33)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_101006330();
        v9 = v56;
        if (v38)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_100FE8918(v37, v32);
      v39 = sub_100772048(v29);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_44;
      }

      v34 = v39;
      v9 = v56;
      if (v38)
      {
LABEL_3:
        *(v9[7] + 8 * v34) = v30;

        goto LABEL_4;
      }
    }

    v9[(v34 >> 6) + 8] |= 1 << v34;
    *(v9[6] + v34) = v29;
    *(v9[7] + 8 * v34) = v30;
    v41 = v9[2];
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (v42)
    {
      goto LABEL_40;
    }

    v9[2] = v43;
LABEL_4:
    v7 = v51 + 1;
    if (v51 == 43)
    {
      *v45 = v9;
      return;
    }
  }

  __break(1u);
LABEL_44:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100121034(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for BeaconEstimatedLocation(0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v2[11] = *(v5 + 64);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100121158, v1, 0);
}

uint64_t sub_100121158()
{
  v1 = v0[5];
  v0[2] = _swiftEmptyArrayStorage;
  v2 = *(v1 + 112);
  v0[13] = v2;
  return _swift_task_switch(sub_100121188, v2, 0);
}

uint64_t sub_100121188()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[9];
  (*(v3 + 16))(v1, v0[4], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[14] = v6;
  *(v6 + 16) = v2;
  (*(v3 + 32))(v6 + v5, v1, v4);

  v7 = swift_task_alloc();
  v0[15] = v7;
  v8 = sub_1000BC4D4(&qword_101696970, &qword_10138C490);
  *v7 = v0;
  v7[1] = sub_100121300;

  return unsafeBlocking<A>(context:_:)(v0 + 3, 0xD000000000000010, 0x800000010134A8C0, sub_10012B0B0, v6, v8);
}

uint64_t sub_100121300()
{
  v1 = *(*v0 + 104);

  return _swift_task_switch(sub_10012142C, v1, 0);
}

uint64_t sub_10012142C()
{
  v1 = v0[5];
  v0[16] = v0[3];
  return _swift_task_switch(sub_100121450, v1, 0);
}

uint64_t sub_100121450()
{
  v19 = v0;
  v17 = v0[16];

  sub_1004D5278(&v17);

  v1 = *(v17 + 16);
  if (v1)
  {
    v2 = v0[7];
    v3 = v17 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v4 = *(v2 + 72);
    do
    {
      v5 = v0[8];
      sub_10012B2B8(v3, v5, type metadata accessor for BeaconEstimatedLocation);
      v17 = 0;
      v18 = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      v17 = 0xD000000000000019;
      v18 = 0x800000010134B850;
      sub_100019300(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v6);

      v7._countAndFlagsBits = 32;
      v7._object = 0xE100000000000000;
      String.append(_:)(v7);
      type metadata accessor for Date();
      sub_100019300(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v9;
      sub_10012B448(v5, type metadata accessor for BeaconEstimatedLocation);
      v11._countAndFlagsBits = v8;
      v11._object = v10;
      String.append(_:)(v11);

      v12 = objc_allocWithZone(SPDataIntegrityCheck);
      v13 = String._bridgeToObjectiveC()();

      [v12 initWithValue:v13 severity:0];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 += v4;
      --v1;
    }

    while (v1);
    v14 = v0[2];
  }

  else
  {

    v14 = _swiftEmptyArrayStorage;
  }

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_100121798(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = type metadata accessor for PeerCommunicationIdentifier(0);
  v2[10] = swift_task_alloc();
  v2[11] = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v2[12] = swift_task_alloc();
  v3 = type metadata accessor for OwnerPeerTrust(0);
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[16] = v4;
  v5 = *(v4 - 8);
  v2[17] = v5;
  v2[18] = *(v5 + 64);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_100121934, v1, 0);
}

uint64_t sub_100121934()
{
  *(v0 + 48) = _swiftEmptyArrayStorage;
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  *(v0 + 168) = v2;
  if (v2)
  {
    v3 = *(*(v0 + 64) + 112);
    *(v0 + 176) = v3;
    v4 = *(v0 + 128);
    v5 = *(v0 + 136);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = *(v5 + 64);
    *(v0 + 248) = v7;
    *(v0 + 184) = *(v5 + 56);
    *(v0 + 192) = v6;
    v8 = *(v0 + 160);
    *(v0 + 200) = 0;
    *(v0 + 208) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v8, v1 + ((v7 + 32) & ~v7), v4);

    return _swift_task_switch(sub_100121A7C, v3, 0);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100121A7C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 128);
  v5 = (*(v0 + 248) + 24) & ~*(v0 + 248);
  (*(v0 + 192))(v2, *(v0 + 160), v4);
  v6 = swift_allocObject();
  *(v0 + 216) = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 224) = v7;
  *v7 = v0;
  v7[1] = sub_100121BD4;
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_10012B3A8, v6, v9);
}

uint64_t sub_100121BD4()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_100121D00, v1, 0);
}

uint64_t sub_100121D00()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  if ((*(*(v0 + 112) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_101697798, &unk_10138C4F0);
    *(v0 + 16) = 0xD000000000000010;
    *(v0 + 24) = 0x800000010134B990;
    v3._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v3);

    v4 = objc_allocWithZone(SPDataIntegrityCheck);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 initWithValue:v5 severity:2];

    v7 = [objc_allocWithZone(SPPeerTrustDataIntegrity) initWithPeerTrustRecord:v6 messagingDestination:0];
    v8 = v7;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v9 = *(v0 + 160);
    v10 = *(v0 + 168);
    v11 = *(v0 + 128);
    v12 = *(v0 + 136);
    v13 = *(v0 + 200) + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    (*(v12 + 8))(v9, v11);
    if (v13 == v10)
    {
      v14 = *(v0 + 48);

      v15 = *(v0 + 8);

      return v15(v14);
    }

    else
    {
      v20 = *(v0 + 192);
      v21 = *(v0 + 200) + 1;
      v22 = *(v0 + 176);
      v23 = *(v0 + 160);
      v24 = *(v0 + 128);
      v25 = *(v0 + 56) + ((*(v0 + 248) + 32) & ~*(v0 + 248)) + *(v0 + 184) * v21;
      v26 = (*(v0 + 136) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      *(v0 + 200) = v21;
      *(v0 + 208) = v26;
      v20(v23, v25, v24);

      return _swift_task_switch(sub_100121A7C, v22, 0);
    }
  }

  else
  {
    v17 = *(v0 + 120);
    sub_10012B250(v2, v17, type metadata accessor for OwnerPeerTrust);
    v18 = *(v1 + 28);
    *(v0 + 252) = v18;
    v19 = swift_task_alloc();
    *(v0 + 232) = v19;
    *v19 = v0;
    v19[1] = sub_100122070;

    return sub_100E8BEF8(v17 + v18);
  }
}

uint64_t sub_100122070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  *(*v4 + 240) = a3;

  v6 = *(v5 + 64);
  if (v3)
  {

    v7 = sub_1001225B0;
  }

  else
  {
    v7 = sub_1001221A8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1001221A8()
{
  if (*(v0 + 240))
  {

    sub_100988F40();
    v1 = objc_allocWithZone(SPDataIntegrityCheck);
    v2 = String._bridgeToObjectiveC()();

    v3 = [v1 initWithValue:v2 severity:0];
  }

  else
  {
    *(v0 + 32) = 0xD00000000000001DLL;
    v4 = *(v0 + 252);
    v5 = *(v0 + 120);
    v6 = *(v0 + 80);
    *(v0 + 40) = 0x800000010134B9B0;
    v7._countAndFlagsBits = sub_100988F40();
    String.append(_:)(v7);

    v8 = objc_allocWithZone(SPDataIntegrityCheck);
    v9 = String._bridgeToObjectiveC()();

    v3 = [v8 initWithValue:v9 severity:2];

    swift_storeEnumTagMultiPayload();
    LOBYTE(v9) = sub_10098BFC0(v5 + v4, v6);
    sub_10012B448(v6, type metadata accessor for PeerCommunicationIdentifier);
    if ((v9 & 1) == 0)
    {
      goto LABEL_6;
    }

    sub_100988F40();
    v10 = objc_allocWithZone(SPDataIntegrityCheck);
    v2 = String._bridgeToObjectiveC()();

    v11 = [v10 initWithValue:v2 severity:0];

    v3 = v11;
  }

LABEL_6:
  v12 = *(v0 + 120);
  UUID.uuidString.getter();
  v13 = objc_allocWithZone(SPDataIntegrityCheck);
  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 initWithValue:v14 severity:0];

  v16 = [objc_allocWithZone(SPPeerTrustDataIntegrity) initWithPeerTrustRecord:v15 messagingDestination:v3];
  sub_10012B448(v12, type metadata accessor for OwnerPeerTrust);
  v17 = v16;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 128);
  v21 = *(v0 + 136);
  v22 = *(v0 + 200) + 1;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  (*(v21 + 8))(v18, v20);
  if (v22 == v19)
  {
    v23 = *(v0 + 48);

    v24 = *(v0 + 8);

    return v24(v23);
  }

  else
  {
    v26 = *(v0 + 192);
    v27 = *(v0 + 200) + 1;
    v28 = *(v0 + 176);
    v29 = *(v0 + 160);
    v30 = *(v0 + 128);
    v31 = *(v0 + 56) + ((*(v0 + 248) + 32) & ~*(v0 + 248)) + *(v0 + 184) * v27;
    v32 = (*(v0 + 136) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 200) = v27;
    *(v0 + 208) = v32;
    v26(v29, v31, v30);

    return _swift_task_switch(sub_100121A7C, v28, 0);
  }
}

uint64_t sub_1001225B0(uint64_t a1)
{
  *(v1 + 32) = 0xD00000000000001DLL;
  v2 = *(v1 + 252);
  v3 = *(v1 + 120);
  v4 = *(v1 + 80);
  *(v1 + 40) = 0x800000010134B9B0;
  v5._countAndFlagsBits = sub_100988F40();
  String.append(_:)(v5);

  v6 = objc_allocWithZone(SPDataIntegrityCheck);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithValue:v7 severity:2];

  swift_storeEnumTagMultiPayload();
  LOBYTE(v7) = sub_10098BFC0(v3 + v2, v4);
  sub_10012B448(v4, type metadata accessor for PeerCommunicationIdentifier);
  if (v7)
  {
    sub_100988F40();
    v9 = objc_allocWithZone(SPDataIntegrityCheck);
    v10 = String._bridgeToObjectiveC()();

    v11 = [v9 initWithValue:v10 severity:0];

    v8 = v11;
  }

  v12 = *(v1 + 120);
  UUID.uuidString.getter();
  v13 = objc_allocWithZone(SPDataIntegrityCheck);
  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 initWithValue:v14 severity:0];

  v16 = [objc_allocWithZone(SPPeerTrustDataIntegrity) initWithPeerTrustRecord:v15 messagingDestination:v8];
  sub_10012B448(v12, type metadata accessor for OwnerPeerTrust);
  v17 = v16;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v18 = *(v1 + 160);
  v19 = *(v1 + 168);
  v20 = *(v1 + 128);
  v21 = *(v1 + 136);
  v22 = *(v1 + 200) + 1;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  (*(v21 + 8))(v18, v20);
  if (v22 == v19)
  {
    v23 = *(v1 + 48);

    v24 = *(v1 + 8);

    return v24(v23);
  }

  else
  {
    v26 = *(v1 + 192);
    v27 = *(v1 + 200) + 1;
    v28 = *(v1 + 176);
    v29 = *(v1 + 160);
    v30 = *(v1 + 128);
    v31 = *(v1 + 56) + ((*(v1 + 248) + 32) & ~*(v1 + 248)) + *(v1 + 184) * v27;
    v32 = (*(v1 + 136) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v1 + 200) = v27;
    *(v1 + 208) = v32;
    v26(v29, v31, v30);

    return _swift_task_switch(sub_100121A7C, v28, 0);
  }
}

uint64_t sub_100122960(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_1000BC4D4(&qword_101697610, &unk_10138C4B0);
  v3[9] = swift_task_alloc();
  v4 = type metadata accessor for SharingCircleSecretValue(0);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for SharingCircleSecret(0);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[19] = v6;
  v7 = *(v6 - 8);
  v3[20] = v7;
  v3[21] = *(v7 + 64);
  v3[22] = swift_task_alloc();

  return _swift_task_switch(sub_100122B40, v2, 0);
}

uint64_t sub_100122B40()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v2 = *(v1 + 112);
  *(v0 + 184) = v2;
  v3 = type metadata accessor for OwnerSharingCircle(0);
  *(v0 + 192) = v3;
  *(v0 + 224) = *(v3 + 20);

  return _swift_task_switch(sub_100122BCC, v2, 0);
}

uint64_t sub_100122BCC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 152);
  (*(v3 + 16))(v1, *(v0 + 48) + *(v0 + 224), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 200) = v6;
  *(v6 + 16) = v2;
  (*(v3 + 32))(v6 + v5, v1, v4);

  v7 = swift_task_alloc();
  *(v0 + 208) = v7;
  v8 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v7 = v0;
  v7[1] = sub_100122D4C;

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4B4, v6, v8);
}

uint64_t sub_100122D4C()
{
  v1 = *(*v0 + 184);

  return _swift_task_switch(sub_100122E78, v1, 0);
}

uint64_t sub_100122E78()
{
  v1 = v0[8];
  v0[27] = v0[3];
  return _swift_task_switch(sub_100122E9C, v1, 0);
}

uint64_t sub_100122E9C()
{
  v1 = v0[27];
  v2 = *(v1 + 16);
  if (v2)
  {
    v86 = 0;
    v87 = 0;
    v83 = 0;
    v84 = 0;
    v82 = 0;
    v85 = 0;
    v4 = v0[16];
    v3 = v0[17];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v89 = (v0[11] + 56);
    v88 = *(v3 + 72);
    while (1)
    {
      v8 = v0[18];
      v9 = v0[9];
      sub_10012B2B8(v5, v8, type metadata accessor for SharingCircleSecret);
      v10 = (v8 + *(v4 + 32));
      v11 = *v10;
      v12 = v10[1];
      v13 = (v8 + *(v4 + 28));
      v14 = *v13;
      v15 = v13[1];
      sub_100017D5C(*v10, v12);

      sub_101316078(v11, v12, v14, v15, v9);
      v16 = v0[14];
      v17 = v0[9];
      (*v89)(v17, 0, 1, v0[10]);
      sub_10012B250(v17, v16, type metadata accessor for SharingCircleSecretValue);
      v18 = v0[15];
      v19 = v0[13];
      sub_10012B250(v0[14], v18, type metadata accessor for SharingCircleSecretValue);
      sub_10012B2B8(v18, v19, type metadata accessor for SharingCircleSecretValue);
      result = swift_getEnumCaseMultiPayload();
      if (result > 2)
      {
        break;
      }

      if (result)
      {
        if (result == 1)
        {
          result = sub_10012B448(v0[13], type metadata accessor for SharingCircleSecretValue);
          if (__OFADD__(v82, 1))
          {
            goto LABEL_96;
          }

          ++v82;
        }

        else
        {
          result = sub_10012B448(v0[13], type metadata accessor for SharingCircleSecretValue);
          if (__OFADD__(v83, 1))
          {
            goto LABEL_94;
          }

          ++v83;
        }

        goto LABEL_23;
      }

      v6 = v0[18];
      v7 = v0[13];
      sub_10012B448(v0[15], type metadata accessor for SharingCircleSecretValue);
      sub_10012B448(v6, type metadata accessor for SharingCircleSecret);
      sub_10012B448(v7, type metadata accessor for SharingCircleSecretValue);
LABEL_4:
      v5 += v88;
      if (!--v2)
      {

        v40 = v82 == 1;
        v41 = v83 == 1;
        v42 = v85;
        v43 = v84 == 1;
        goto LABEL_52;
      }
    }

    if (result > 4)
    {
      if (result != 5)
      {
        result = sub_10012B448(v0[13], type metadata accessor for SharingCircleSecretValue);
        v21 = __OFADD__(v86++, 1);
        if (v21)
        {
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          return result;
        }

        goto LABEL_23;
      }

      v21 = __OFADD__(v87++, 1);
      if (v21)
      {
        goto LABEL_93;
      }
    }

    else
    {
      if (result == 3)
      {
        result = sub_10012B448(v0[13], type metadata accessor for SharingCircleSecretValue);
        if (__OFADD__(v84, 1))
        {
          goto LABEL_95;
        }

        ++v84;
        goto LABEL_23;
      }

      v21 = __OFADD__(v85++, 1);
      if (v21)
      {
        goto LABEL_97;
      }
    }

    sub_10012B448(v0[13], type metadata accessor for SharingCircleSecretValue);
LABEL_23:
    sub_10012B2B8(v0[15], v0[12], type metadata accessor for SharingCircleSecretValue);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v23 = 0xD000000000000014;
    if (EnumCaseMultiPayload == 5)
    {
      v24 = 0xD000000000000013;
    }

    else
    {
      v24 = 0xD000000000000014;
    }

    v25 = 0x8000000101347650;
    if (EnumCaseMultiPayload == 5)
    {
      v25 = 0x8000000101347630;
    }

    if (EnumCaseMultiPayload != 3)
    {
      v23 = 0x656B6F546E696F6ALL;
    }

    v26 = 0x8000000101347610;
    if (EnumCaseMultiPayload != 3)
    {
      v26 = 0xE90000000000006ELL;
    }

    if (EnumCaseMultiPayload <= 4)
    {
      v27 = v26;
    }

    else
    {
      v23 = v24;
      v27 = v25;
    }

    v28 = 0xD000000000000011;
    if (EnumCaseMultiPayload == 1)
    {
      v28 = 0xD000000000000012;
    }

    v29 = 0x80000001013475F0;
    if (EnumCaseMultiPayload == 1)
    {
      v29 = 0x80000001013475D0;
    }

    if (!EnumCaseMultiPayload)
    {
      v28 = 0x6E776F6E6B6E75;
      v29 = 0xE700000000000000;
    }

    if (EnumCaseMultiPayload <= 2)
    {
      v30 = v28;
    }

    else
    {
      v30 = v23;
    }

    if (EnumCaseMultiPayload <= 2)
    {
      v31 = v29;
    }

    else
    {
      v31 = v27;
    }

    sub_10012B448(v0[12], type metadata accessor for SharingCircleSecretValue);
    v32._countAndFlagsBits = v30;
    v32._object = v31;
    String.append(_:)(v32);

    v33._countAndFlagsBits = 40;
    v33._object = 0xE100000000000000;
    String.append(_:)(v33);
    v34._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v34);

    v35._countAndFlagsBits = 41;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    v36 = objc_allocWithZone(SPDataIntegrityCheck);
    v37 = String._bridgeToObjectiveC()();

    [v36 initWithValue:v37 severity:0];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v38 = v0[18];
    v39 = v0[15];
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    sub_10012B448(v39, type metadata accessor for SharingCircleSecretValue);
    sub_10012B448(v38, type metadata accessor for SharingCircleSecret);
    goto LABEL_4;
  }

  v86 = 0;
  v87 = 0;
  v43 = 0;
  v41 = 0;
  v40 = 0;
  v42 = 0;
LABEL_52:
  v44 = v0[7];
  v45 = v44 + 1;
  if (__OFADD__(v44, 1))
  {
    goto LABEL_98;
  }

  if (v42 != v45 || !v40 || !v41 || !v43)
  {
    v90 = v43;
    _StringGuts.grow(_:)(81);
    v49._countAndFlagsBits = 0xD00000000000001BLL;
    v49._object = 0x800000010134BAC0;
    String.append(_:)(v49);
    if (v42 == v45)
    {
      v50 = 1702195828;
    }

    else
    {
      v50 = 0x65736C6166;
    }

    if (v42 == v45)
    {
      v51 = 0xE400000000000000;
    }

    else
    {
      v51 = 0xE500000000000000;
    }

    v52 = v51;
    String.append(_:)(*&v50);

    v53._object = 0x800000010134B970;
    v53._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v53);
    if (v40)
    {
      v54 = 1702195828;
    }

    else
    {
      v54 = 0x65736C6166;
    }

    if (v40)
    {
      v55 = 0xE400000000000000;
    }

    else
    {
      v55 = 0xE500000000000000;
    }

    v56 = v55;
    String.append(_:)(*&v54);

    v57._countAndFlagsBits = 0x52646C6977202C29;
    v57._object = 0xED00002820746F6FLL;
    String.append(_:)(v57);
    if (v41)
    {
      v58 = 1702195828;
    }

    else
    {
      v58 = 0x65736C6166;
    }

    if (v41)
    {
      v59 = 0xE400000000000000;
    }

    else
    {
      v59 = 0xE500000000000000;
    }

    v60 = v59;
    String.append(_:)(*&v58);

    v61._countAndFlagsBits = 0x4F7261656E202C29;
    v61._object = 0xEE00282072656E77;
    String.append(_:)(v61);
    if (v90)
    {
      v62 = 1702195828;
    }

    else
    {
      v62 = 0x65736C6166;
    }

    if (v90)
    {
      v63 = 0xE400000000000000;
    }

    else
    {
      v63 = 0xE500000000000000;
    }

    v64 = v63;
    String.append(_:)(*&v62);

    v65._countAndFlagsBits = 41;
    v65._object = 0xE100000000000000;
    String.append(_:)(v65);
    v66 = objc_allocWithZone(SPDataIntegrityCheck);
    v47 = String._bridgeToObjectiveC()();

    v48 = [v66 initWithValue:v47 severity:1];
  }

  else
  {
    v46 = objc_allocWithZone(SPDataIntegrityCheck);
    v47 = String._bridgeToObjectiveC()();
    v48 = [v46 initWithValue:v47 severity:0];
  }

  v91 = v48;
  v67 = v0[24];
  v68 = v0[6];

  if (*(v68 + *(v67 + 28)) == 3)
  {
    if (v87 == 1 && v86 == 1)
    {
      v69 = objc_allocWithZone(SPDataIntegrityCheck);
      v70 = String._bridgeToObjectiveC()();
      v71 = 0;
    }

    else
    {
      _StringGuts.grow(_:)(76);
      v72._countAndFlagsBits = 0xD000000000000029;
      v72._object = 0x800000010134BAE0;
      String.append(_:)(v72);
      v0[4] = v87;
      v73._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v73);

      v74._countAndFlagsBits = 0xD00000000000001ELL;
      v74._object = 0x800000010134BB10;
      String.append(_:)(v74);
      v0[5] = v86;
      v75._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v75);

      v76._countAndFlagsBits = 41;
      v76._object = 0xE100000000000000;
      String.append(_:)(v76);
      v69 = objc_allocWithZone(SPDataIntegrityCheck);
      v70 = String._bridgeToObjectiveC()();

      v71 = 1;
    }

    v77 = [v69 initWithValue:v70 severity:v71];

    v91 = v77;
  }

  v78 = objc_allocWithZone(SPSharedSecretsDataCheck);
  sub_100008BB8(0, &qword_101697780, SPDataIntegrityCheck_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v80 = [v78 initWithCompleteness:v91 secrets:isa];

  v81 = v0[1];

  return v81(v80);
}

uint64_t sub_100123994(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = type metadata accessor for KeyDropInterface.KeyPackage(0);
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = type metadata accessor for SharingCircleKeyManager.Instruction(0);
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_100123AF8, v1, 0);
}

uint64_t sub_100123AF8()
{
  v1 = *(v0 + 112);
  *(v0 + 48) = _swiftEmptyArrayStorage;
  v2 = type metadata accessor for OwnerSharingCircle(0);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = sub_100B04978(off_10160F510[*(v1 + v2[7])]);
  v8 = *(v6 + 16);
  v8(v3 + *(v4 + 20), v1 + v2[5], v5);
  v9 = v2[6];
  *(v0 + 328) = v9;
  v8(v3 + *(v4 + 24), v1 + v9, v5);
  if (qword_101694560 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 192);
  v10 = *(v0 + 200);
  v12 = *(v0 + 152);
  v13 = sub_1000076D4(v12, qword_10177A900);
  v8(v10 + v11[7], v13, v12);
  v14 = sub_100907F84(_swiftEmptyArrayStorage);
  UUID.init()();
  *(v10 + v11[8]) = v7;
  *(v10 + v11[9]) = 0;
  *(v10 + v11[10]) = 1;
  *(v10 + v11[11]) = v14;
  static Date.trustedNow.getter(v10 + v11[12]);
  v15 = swift_task_alloc();
  *(v0 + 208) = v15;
  *v15 = v0;
  v15[1] = sub_100123CE8;
  v16 = *(v0 + 200);

  return sub_100CB753C(v16, 0);
}

uint64_t sub_100123CE8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 216) = a1;

  v4 = *(v3 + 120);
  if (v1)
  {

    v5 = sub_1001242B8;
  }

  else
  {
    v5 = sub_100123E28;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100123E28()
{
  v1 = *(*(v0 + 120) + 112);
  *(v0 + 224) = v1;
  return _swift_task_switch(sub_100123E4C, v1, 0);
}

uint64_t sub_100123E4C()
{

  v1 = swift_task_alloc();
  v0[29] = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  v0[30] = v2;
  *v1 = v0;
  v1[1] = sub_100123F30;
  v3 = v0[28];

  return unsafeBlocking<A>(context:_:)(v0 + 7, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_100123F30()
{
  v1 = *(*v0 + 224);

  return _swift_task_switch(sub_100124048, v1, 0);
}

uint64_t sub_10012406C()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 112);
  v3 = getuid();
  sub_1000294F0(v3);
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_10012413C;
  v5 = *(v0 + 184);

  return sub_100685140(v5, v2 + v1, 0);
}

uint64_t sub_10012413C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[23];
    v4 = v2[19];
    v5 = v2[20];

    v6 = *(v5 + 8);
    v2[33] = v6;
    v6(v3, v4);
    v7 = sub_10012437C;
    v8 = 0;
  }

  else
  {
    v9 = *(v2[20] + 8);
    v9(v2[23], v2[19]);

    v2[34] = v9;
    v8 = v2[28];
    v7 = sub_1001243EC;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1001242B8()
{
  sub_10012B448(*(v0 + 200), type metadata accessor for SharingCircleKeyManager.Instruction);

  v1 = *(v0 + 8);

  return v1(_swiftEmptyArrayStorage);
}

uint64_t sub_10012437C()
{

  v0[34] = v0[33];
  v1 = v0[28];

  return _swift_task_switch(sub_1001243EC, v1, 0);
}

uint64_t sub_1001243EC()
{

  v1 = swift_task_alloc();
  v0[35] = v1;
  *v1 = v0;
  v1[1] = sub_1001244C4;
  v2 = v0[30];
  v3 = v0[28];

  return unsafeBlocking<A>(context:_:)(v0 + 8, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_1001244C4()
{
  v1 = *(*v0 + 224);

  return _swift_task_switch(sub_1001245DC, v1, 0);
}

uint64_t sub_100124600()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 112);
  v3 = getuid();
  sub_1000294F0(v3);
  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  *v4 = v0;
  v4[1] = sub_1001246D0;
  v5 = *(v0 + 176);

  return sub_100685140(v5, v2 + v1, 1);
}

uint64_t sub_1001246D0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[34];
    v4 = v2[22];
    v5 = v2[19];

    v3(v4, v5);
    v6 = sub_10012484C;
    v7 = 0;
  }

  else
  {
    (v2[34])(v2[22], v2[19]);

    v7 = v2[28];
    v6 = sub_1001248B4;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10012484C()
{

  v1 = *(v0 + 224);

  return _swift_task_switch(sub_1001248B4, v1, 0);
}

uint64_t sub_1001248B4()
{

  v1 = swift_task_alloc();
  v0[38] = v1;
  *v1 = v0;
  v1[1] = sub_10012498C;
  v2 = v0[30];
  v3 = v0[28];

  return unsafeBlocking<A>(context:_:)(v0 + 9, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_10012498C()
{
  v1 = *(*v0 + 224);

  return _swift_task_switch(sub_100124AA4, v1, 0);
}

uint64_t sub_100124AC8()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 112);
  v3 = getuid();
  sub_1000294F0(v3);
  v4 = swift_task_alloc();
  *(v0 + 320) = v4;
  *v4 = v0;
  v4[1] = sub_100124B94;
  v5 = *(v0 + 168);

  return sub_100687010(v5, v2 + v1);
}

uint64_t sub_100124B94()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[34];
    v4 = v2[21];
    v5 = v2[19];

    v3(v4, v5);
    v6 = sub_1001254AC;
    v7 = 0;
  }

  else
  {
    v8 = v2[34];
    v9 = v2[21];
    v10 = v2[19];
    v11 = v2[15];
    v8(v9, v10);

    v6 = sub_100124D14;
    v7 = v11;
  }

  return _swift_task_switch(v6, v7, 0);
}

void sub_100124D14()
{
  v1 = *(v0 + 216);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v86 = *(v0 + 128);
    v87 = *(v0 + 136);
    v85 = v1 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v12 = *(v0 + 144);
      sub_10012B2B8(v85 + *(v87 + 72) * v3, v12, type metadata accessor for KeyDropInterface.KeyPackage);
      v13 = *(v12 + *(v86 + 24));
      v14 = *(v13 + 16);
      if (v14)
      {
        sub_101123BF8(0, v14, 0);
        v15 = _swiftEmptyArrayStorage;
        v16 = (v13 + 32);
        v17 = _swiftEmptyArrayStorage[2];
        do
        {
          v19 = *v16;
          v16 += 9;
          v18 = v19;
          v88 = v15;
          v20 = v15[3];
          v21 = v17 + 1;
          if (v17 >= v20 >> 1)
          {
            sub_101123BF8((v20 > 1), v17 + 1, 1);
            v15 = v88;
          }

          v15[2] = v21;
          v15[v17++ + 4] = v18;
          --v14;
        }

        while (v14);
      }

      else
      {
        v21 = _swiftEmptyArrayStorage[2];
        if (!v21)
        {
          v46 = *(v0 + 144);
          *(v0 + 32) = 0;
          *(v0 + 40) = 0xE000000000000000;
          v47._countAndFlagsBits = 0x636572726F636E49;
          v47._object = 0xEF65756C61762074;
          String.append(_:)(v47);
          v48._countAndFlagsBits = 8250;
          v48._object = 0xE200000000000000;
          String.append(_:)(v48);
          *(v0 + 333) = *v46;
          _print_unlocked<A, B>(_:_:)();
          v49._countAndFlagsBits = 8250;
          v49._object = 0xE200000000000000;
          String.append(_:)(v49);
          v50 = _swiftEmptyArrayStorage[2];
          if (v50)
          {
            v51 = _swiftEmptyArrayStorage[4];
            v52 = v50 - 1;
            if (v50 != 1)
            {
              if (v50 >= 5)
              {
                v53 = v52 & 0xFFFFFFFFFFFFFFFCLL | 1;
                v54 = &_swiftEmptyArrayStorage[7];
                v55 = vdupq_n_s64(v51);
                v56 = v52 & 0xFFFFFFFFFFFFFFFCLL;
                v57 = v55;
                do
                {
                  v55 = vbslq_s8(vcgtq_u64(v55, v54[-1]), v54[-1], v55);
                  v57 = vbslq_s8(vcgtq_u64(v57, *v54), *v54, v57);
                  v54 += 2;
                  v56 -= 4;
                }

                while (v56);
                v58 = vbslq_s8(vcgtq_u64(v57, v55), v55, v57);
                v59 = vextq_s8(v58, v58, 8uLL).u64[0];
                v51 = vbsl_s8(vcgtd_u64(v59, v58.u64[0]), *v58.i8, v59);
                if (v52 != (v52 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_44;
                }
              }

              else
              {
                v53 = 1;
LABEL_44:
                v60 = v50 - v53;
                v61 = &_swiftEmptyArrayStorage[v53 + 4];
                do
                {
                  v63 = *v61++;
                  v62 = v63;
                  if (v63 < v51)
                  {
                    v51 = v62;
                  }

                  --v60;
                }

                while (v60);
              }
            }
          }

          else
          {
            v51 = 0;
          }

          *(v0 + 96) = v51;
          v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v64);

          v65._countAndFlagsBits = 3026478;
          v65._object = 0xE300000000000000;
          String.append(_:)(v65);
          v66 = _swiftEmptyArrayStorage[2];
          if (v66)
          {
            v67 = _swiftEmptyArrayStorage[4];
            v68 = v66 - 1;
            if (v66 != 1)
            {
              if (v66 >= 5)
              {
                v69 = v68 & 0xFFFFFFFFFFFFFFFCLL | 1;
                v70 = &_swiftEmptyArrayStorage[7];
                v71 = vdupq_n_s64(v67);
                v72 = v68 & 0xFFFFFFFFFFFFFFFCLL;
                v73 = v71;
                do
                {
                  v71 = vbslq_s8(vcgtq_u64(v71, v70[-1]), v71, v70[-1]);
                  v73 = vbslq_s8(vcgtq_u64(v73, *v70), v73, *v70);
                  v70 += 2;
                  v72 -= 4;
                }

                while (v72);
                v74 = vbslq_s8(vcgtq_u64(v71, v73), v71, v73);
                v75 = vextq_s8(v74, v74, 8uLL).u64[0];
                v67 = vbsl_s8(vcgtd_u64(v74.u64[0], v75), *v74.i8, v75);
                if (v68 != (v68 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_56;
                }
              }

              else
              {
                v69 = 1;
LABEL_56:
                v76 = v66 - v69;
                v77 = &_swiftEmptyArrayStorage[v69 + 4];
                do
                {
                  v79 = *v77++;
                  v78 = v79;
                  if (v67 <= v79)
                  {
                    v67 = v78;
                  }

                  --v76;
                }

                while (v76);
              }
            }
          }

          else
          {
            v67 = 0;
          }

          *(v0 + 104) = v67;
          v80._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v80);

          v81 = objc_allocWithZone(SPDataIntegrityCheck);
          v82 = String._bridgeToObjectiveC()();

          [v81 initWithValue:v82 severity:1];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          goto LABEL_6;
        }

        v15 = _swiftEmptyArrayStorage;
      }

      v22 = v15[4];
      v23 = v21 - 1;
      if (v21 == 1)
      {
        v4 = v15[4];
        goto LABEL_4;
      }

      if (v21 < 5)
      {
        break;
      }

      v25 = vdupq_n_s64(v22);
      v24 = v23 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v26 = (v15 + 7);
      v27 = v23 & 0xFFFFFFFFFFFFFFFCLL;
      v28 = v25;
      do
      {
        v25 = vbslq_s8(vcgtq_u64(v25, v26[-1]), v26[-1], v25);
        v28 = vbslq_s8(vcgtq_u64(v28, *v26), *v26, v28);
        v26 += 2;
        v27 -= 4;
      }

      while (v27);
      v29 = vbslq_s8(vcgtq_u64(v28, v25), v25, v28);
      v30 = vextq_s8(v29, v29, 8uLL).u64[0];
      v4 = vbsl_s8(vcgtd_u64(v30, v29.u64[0]), *v29.i8, v30);
      if (v23 != (v23 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_22;
      }

LABEL_26:
      if (v21 <= 4)
      {
        v35 = 1;
LABEL_31:
        v42 = v21 - v35;
        v43 = &v15[v35 + 4];
        do
        {
          v45 = *v43++;
          v44 = v45;
          if (v22 <= v45)
          {
            v22 = v44;
          }

          --v42;
        }

        while (v42);
        goto LABEL_4;
      }

      v35 = v23 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v36 = vdupq_n_s64(v22);
      v37 = (v15 + 7);
      v38 = v23 & 0xFFFFFFFFFFFFFFFCLL;
      v39 = v36;
      do
      {
        v36 = vbslq_s8(vcgtq_u64(v36, v37[-1]), v36, v37[-1]);
        v39 = vbslq_s8(vcgtq_u64(v39, *v37), v39, *v37);
        v37 += 2;
        v38 -= 4;
      }

      while (v38);
      v40 = vbslq_s8(vcgtq_u64(v36, v39), v36, v39);
      v41 = vextq_s8(v40, v40, 8uLL).u64[0];
      v22 = vbsl_s8(vcgtd_u64(v40.u64[0], v41), *v40.i8, v41);
      if (v23 != (v23 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_31;
      }

LABEL_4:
      v5 = *(v0 + 144);

      *(v0 + 16) = 0;
      *(v0 + 24) = 0xE000000000000000;
      *(v0 + 332) = *v5;
      _print_unlocked<A, B>(_:_:)();
      v6._countAndFlagsBits = 8250;
      v6._object = 0xE200000000000000;
      String.append(_:)(v6);
      *(v0 + 80) = v4;
      v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v7);

      v8._countAndFlagsBits = 3026478;
      v8._object = 0xE300000000000000;
      String.append(_:)(v8);
      *(v0 + 88) = v22;
      v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v9);

      v10 = objc_allocWithZone(SPDataIntegrityCheck);
      v11 = String._bridgeToObjectiveC()();

      [v10 initWithValue:v11 severity:0];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

LABEL_6:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v3;
      sub_10012B448(*(v0 + 144), type metadata accessor for KeyDropInterface.KeyPackage);
      if (v3 == v2)
      {
        v83 = *(v0 + 48);

        goto LABEL_65;
      }
    }

    v4 = v15[4];
    v24 = 1;
LABEL_22:
    v31 = v21 - v24;
    v32 = &v15[v24 + 4];
    do
    {
      v34 = *v32++;
      v33 = v34;
      if (*&v34 < *&v4)
      {
        v4 = v33;
      }

      --v31;
    }

    while (v31);
    goto LABEL_26;
  }

  v83 = _swiftEmptyArrayStorage;
LABEL_65:
  sub_10012B448(*(v0 + 200), type metadata accessor for SharingCircleKeyManager.Instruction);

  v84 = *(v0 + 8);

  v84(v83);
}

uint64_t sub_1001254AC()
{
  v1 = *(v0 + 120);

  return _swift_task_switch(sub_10012B4A8, v1, 0);
}

uint64_t sub_100125518(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100125678, v1, 0);
}

uint64_t sub_100125678()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 104) = v1;
  return _swift_task_switch(sub_10012569C, v1, 0);
}

uint64_t sub_10012569C()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  (*(v4 + 16))(v2, v0[2], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[14] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1001257FC;
  v9 = v0[8];
  v8 = v0[9];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4B0, v6, v9);
}

uint64_t sub_1001257FC()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100125928, v1, 0);
}

uint64_t sub_100125928()
{
  v1 = v0[10];
  v2 = v0[9];
  if ((*(v0[11] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698C30, &unk_101392630);
    _StringGuts.grow(_:)(25);

    sub_100019300(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    v4 = objc_allocWithZone(SPDataIntegrityCheck);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 initWithValue:v5 severity:{2, 0xD000000000000023, 0x800000010134BA70}];
  }

  else
  {
    v7 = v0[12];
    sub_10012B250(v2, v7, type metadata accessor for SharedBeaconRecord);
    _StringGuts.grow(_:)(25);

    v8._countAndFlagsBits = sub_1008BA9C0(*(v7 + *(v1 + 64)));
    String.append(_:)(v8);

    v9._countAndFlagsBits = 32;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    sub_100019300(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11 = objc_allocWithZone(SPDataIntegrityCheck);
    v12 = String._bridgeToObjectiveC()();

    v6 = [v11 initWithValue:v12 severity:{0, 0xD000000000000014, 0x800000010134BAA0}];

    sub_10012B448(v7, type metadata accessor for SharedBeaconRecord);
  }

  v13 = v0[1];

  return v13(v6);
}

uint64_t sub_100125C38(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for BeaconNamingRecord(0);
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100125D98, v1, 0);
}

uint64_t sub_100125D98()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 104) = v1;
  return _swift_task_switch(sub_100125DBC, v1, 0);
}

uint64_t sub_100125DBC()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  (*(v4 + 16))(v2, v0[2], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[14] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_100125F1C;
  v9 = v0[8];
  v8 = v0[9];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_10012B220, v6, v9);
}

uint64_t sub_100125F1C()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100126048, v1, 0);
}

uint64_t sub_100126048()
{
  v1 = v0[10];
  v2 = v0[9];
  if ((*(v0[11] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_1016B29E0, &unk_1013B70E0);
    v3 = objc_allocWithZone(SPDataIntegrityCheck);
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 initWithValue:v4 severity:0];
  }

  else
  {
    v6 = v0[12];
    sub_10012B250(v2, v6, type metadata accessor for BeaconNamingRecord);
    _StringGuts.grow(_:)(25);

    String.append(_:)(*(v6 + *(v1 + 32)));
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    sub_100019300(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    v9 = objc_allocWithZone(SPDataIntegrityCheck);
    v10 = String._bridgeToObjectiveC()();

    v5 = [v9 initWithValue:v10 severity:0];

    sub_10012B448(v6, type metadata accessor for BeaconNamingRecord);
  }

  v11 = v0[1];

  return v11(v5);
}

uint64_t sub_1001262B0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for UUID();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100126370, v1, 0);
}

uint64_t sub_100126370()
{
  v1 = *(*(v0 + 104) + 112);
  *(v0 + 136) = v1;
  return _swift_task_switch(sub_100126394, v1, 0);
}

uint64_t sub_100126394()
{

  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_100126474;
  v3 = *(v0 + 136);

  return unsafeBlocking<A>(context:_:)(v0 + 88, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_100126474()
{
  v1 = *(*v0 + 136);

  return _swift_task_switch(sub_10012658C, v1, 0);
}

uint64_t sub_10012658C()
{
  v1 = v0[13];
  v0[19] = v0[11];
  return _swift_task_switch(sub_1001265B0, v1, 0);
}

uint64_t sub_1001265B0()
{
  v0 = getuid();
  sub_1000294F0(v0);

  return _swift_task_switch(sub_100126620, 0, 0);
}

uint64_t sub_100126620()
{
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_1001266D0;
  v2 = v0[16];
  v3 = v0[12];

  return sub_100687A6C((v0 + 2), v3, v2);
}

uint64_t sub_1001266D0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_100126A00;
    v4 = 0;
  }

  else
  {
    v6 = v2[15];
    v5 = v2[16];
    v8 = v2 + 13;
    v7 = v2[13];
    (*(v6 + 8))(v5, v8[1]);

    v3 = sub_100126814;
    v4 = v7;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_100126814()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    _StringGuts.grow(_:)(24);

    v12 = 0xD000000000000013;
    v13 = 0x800000010134BA00;

    v3._countAndFlagsBits = v2;
    v3._object = v1;
    String.append(_:)(v3);
    sub_10000B3A8((v0 + 2), &unk_1016AF910, &unk_10138C4C0);

    v4._countAndFlagsBits = 32;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);
    sub_100019300(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6 = objc_allocWithZone(SPDataIntegrityCheck);
    v7 = String._bridgeToObjectiveC()();

    v8 = 0;
  }

  else
  {
    v6 = objc_allocWithZone(SPDataIntegrityCheck);
    v7 = String._bridgeToObjectiveC()();
    v8 = 2;
  }

  v9 = [v6 initWithValue:v7 severity:{v8, v12, v13}];

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_100126A00()
{
  v1 = v0[13];
  (*(v0[15] + 8))(v0[16], v0[14]);

  return _swift_task_switch(sub_100126A84, v1, 0);
}

uint64_t sub_100126A84()
{
  v1 = objc_allocWithZone(SPDataIntegrityCheck);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithValue:v2 severity:2];

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100126B44(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  v2[14] = swift_task_alloc();
  v3 = type metadata accessor for MemberPeerTrust(0);
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[18] = v4;
  v5 = *(v4 - 8);
  v2[19] = v5;
  v2[20] = *(v5 + 64);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100126CB0, v1, 0);
}

uint64_t sub_100126CB0()
{
  *(v0 + 80) = _swiftEmptyArrayStorage;
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  *(v0 + 184) = v2;
  if (v2)
  {
    v3 = *(*(v0 + 96) + 112);
    *(v0 + 192) = v3;
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = *(v5 + 64);
    *(v0 + 264) = v7;
    *(v0 + 200) = *(v5 + 56);
    *(v0 + 208) = v6;
    v8 = *(v0 + 176);
    *(v0 + 216) = 0;
    *(v0 + 224) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v8, v1 + ((v7 + 32) & ~v7), v4);

    return _swift_task_switch(sub_100126DEC, v3, 0);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100126DEC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 144);
  v5 = (*(v0 + 264) + 24) & ~*(v0 + 264);
  (*(v0 + 208))(v2, *(v0 + 176), v4);
  v6 = swift_allocObject();
  *(v0 + 232) = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 240) = v7;
  *v7 = v0;
  v7[1] = sub_100126F44;
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_10012B208, v6, v9);
}

uint64_t sub_100126F44()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_100127070, v1, 0);
}

uint64_t sub_100127070()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  if ((*(*(v0 + 128) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_101698C10, &unk_10138C1E0);
    *(v0 + 16) = 0xD000000000000010;
    *(v0 + 24) = 0x800000010134B990;
    v3._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v3);

    v4 = objc_allocWithZone(SPDataIntegrityCheck);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 initWithValue:v5 severity:2];

    v7 = [objc_allocWithZone(SPPeerTrustDataIntegrity) initWithPeerTrustRecord:v6 messagingDestination:0];
    v8 = v7;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v9 = *(v0 + 176);
    v10 = *(v0 + 184);
    v11 = *(v0 + 144);
    v12 = *(v0 + 152);
    v13 = *(v0 + 216) + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    (*(v12 + 8))(v9, v11);
    if (v13 == v10)
    {
      v14 = *(v0 + 80);

      v15 = *(v0 + 8);

      return v15(v14);
    }

    else
    {
      v20 = *(v0 + 208);
      v21 = *(v0 + 216) + 1;
      v22 = *(v0 + 192);
      v23 = *(v0 + 176);
      v24 = *(v0 + 144);
      v25 = *(v0 + 88) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 200) * v21;
      v26 = (*(v0 + 152) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      *(v0 + 216) = v21;
      *(v0 + 224) = v26;
      v20(v23, v25, v24);

      return _swift_task_switch(sub_100126DEC, v22, 0);
    }
  }

  else
  {
    v17 = *(v0 + 136);
    sub_10012B250(v2, v17, type metadata accessor for MemberPeerTrust);
    v18 = *(v1 + 28);
    *(v0 + 268) = v18;
    v19 = swift_task_alloc();
    *(v0 + 248) = v19;
    *v19 = v0;
    v19[1] = sub_1001273D4;

    return sub_100E8BEF8(v17 + v18);
  }
}

uint64_t sub_1001273D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  *(*v4 + 256) = a3;

  v6 = *(v5 + 96);
  if (v3)
  {

    v7 = sub_10012789C;
  }

  else
  {
    v7 = sub_10012750C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10012750C()
{
  if (*(v0 + 256))
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 120);

    v3 = (v1 + *(v2 + 32));
    v4 = v3[1];
    *(v0 + 48) = *v3;
    *(v0 + 56) = v4;

    v5._countAndFlagsBits = 32;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    v8 = sub_100988F40();
    v10 = v9;
    *(v0 + 64) = v6;
    *(v0 + 72) = v7;

    v11._countAndFlagsBits = v8;
    v11._object = v10;
    String.append(_:)(v11);

    v12 = 0;
  }

  else
  {
    *(v0 + 40) = 0x800000010134B9B0;
    *(v0 + 32) = 0xD00000000000001DLL;
    v13._countAndFlagsBits = sub_100988F40();
    String.append(_:)(v13);
    v12 = 2;
  }

  v14 = objc_allocWithZone(SPDataIntegrityCheck);
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 initWithValue:v15 severity:v12];
  v17 = *(v0 + 136);

  v18 = v16;
  UUID.uuidString.getter();
  v19 = objc_allocWithZone(SPDataIntegrityCheck);
  v20 = String._bridgeToObjectiveC()();

  v21 = [v19 initWithValue:v20 severity:0];

  v22 = [objc_allocWithZone(SPPeerTrustDataIntegrity) initWithPeerTrustRecord:v21 messagingDestination:v18];
  sub_10012B448(v17, type metadata accessor for MemberPeerTrust);
  v23 = v22;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v24 = *(v0 + 176);
  v25 = *(v0 + 184);
  v26 = *(v0 + 144);
  v27 = *(v0 + 152);
  v28 = *(v0 + 216) + 1;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  (*(v27 + 8))(v24, v26);
  if (v28 == v25)
  {
    v29 = *(v0 + 80);

    v30 = *(v0 + 8);

    return v30(v29);
  }

  else
  {
    v32 = *(v0 + 208);
    v33 = *(v0 + 216) + 1;
    v34 = *(v0 + 192);
    v35 = *(v0 + 176);
    v36 = *(v0 + 144);
    v37 = *(v0 + 88) + ((*(v0 + 264) + 32) & ~*(v0 + 264)) + *(v0 + 200) * v33;
    v38 = (*(v0 + 152) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v0 + 216) = v33;
    *(v0 + 224) = v38;
    v32(v35, v37, v36);

    return _swift_task_switch(sub_100126DEC, v34, 0);
  }
}

uint64_t sub_10012789C(uint64_t a1)
{
  *(v1 + 32) = 0xD00000000000001DLL;
  *(v1 + 40) = 0x800000010134B9B0;
  v2._countAndFlagsBits = sub_100988F40();
  String.append(_:)(v2);

  v3 = objc_allocWithZone(SPDataIntegrityCheck);
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 initWithValue:v4 severity:2];
  v6 = *(v1 + 136);

  v7 = v5;
  UUID.uuidString.getter();
  v8 = objc_allocWithZone(SPDataIntegrityCheck);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 initWithValue:v9 severity:0];

  v11 = [objc_allocWithZone(SPPeerTrustDataIntegrity) initWithPeerTrustRecord:v10 messagingDestination:v7];
  sub_10012B448(v6, type metadata accessor for MemberPeerTrust);
  v12 = v11;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v13 = *(v1 + 176);
  v14 = *(v1 + 184);
  v15 = *(v1 + 144);
  v16 = *(v1 + 152);
  v17 = *(v1 + 216) + 1;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  (*(v16 + 8))(v13, v15);
  if (v17 == v14)
  {
    v18 = *(v1 + 80);

    v19 = *(v1 + 8);

    return v19(v18);
  }

  else
  {
    v21 = *(v1 + 208);
    v22 = *(v1 + 216) + 1;
    v23 = *(v1 + 192);
    v24 = *(v1 + 176);
    v25 = *(v1 + 144);
    v26 = *(v1 + 88) + ((*(v1 + 264) + 32) & ~*(v1 + 264)) + *(v1 + 200) * v22;
    v27 = (*(v1 + 152) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v1 + 216) = v22;
    *(v1 + 224) = v27;
    v21(v24, v26, v25);

    return _swift_task_switch(sub_100126DEC, v23, 0);
  }
}

uint64_t sub_100127B90(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 200) = a3;
  *(v4 + 32) = a1;
  sub_1000BC4D4(&qword_101697610, &unk_10138C4B0);
  *(v4 + 56) = swift_task_alloc();
  v5 = type metadata accessor for SharingCircleSecretValue(0);
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v6 = type metadata accessor for SharingCircleSecret(0);
  *(v4 + 112) = v6;
  *(v4 + 120) = *(v6 - 8);
  *(v4 + 128) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v4 + 136) = v7;
  v8 = *(v7 - 8);
  *(v4 + 144) = v8;
  *(v4 + 152) = *(v8 + 64);
  *(v4 + 160) = swift_task_alloc();

  return _swift_task_switch(sub_100127D74, v3, 0);
}

uint64_t sub_100127D74()
{
  v1 = v0[6];
  v0[2] = _swiftEmptyArrayStorage;
  v2 = *(v1 + 112);
  v0[21] = v2;
  return _swift_task_switch(sub_100127DA4, v2, 0);
}

uint64_t sub_100127DA4()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[17];
  (*(v3 + 16))(v1, v0[4], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[22] = v6;
  *(v6 + 16) = v2;
  (*(v3 + 32))(v6 + v5, v1, v4);

  v7 = swift_task_alloc();
  v0[23] = v7;
  v8 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v7 = v0;
  v7[1] = sub_100127F1C;

  return unsafeBlocking<A>(context:_:)(v0 + 3, 0xD000000000000010, 0x800000010134A8C0, sub_10012B1F0, v6, v8);
}

uint64_t sub_100127F1C()
{
  v1 = *(*v0 + 168);

  return _swift_task_switch(sub_100128048, v1, 0);
}

uint64_t sub_100128048()
{
  v1 = v0[6];
  v0[24] = v0[3];
  return _swift_task_switch(sub_10012806C, v1, 0);
}

uint64_t sub_10012806C()
{
  v1 = *(v0 + 192);
  v2 = *(v1 + 16);
  if (!v2)
  {

    v44 = 0;
    v42 = 0;
    v41 = 0;
    v43 = 0;
LABEL_47:
    v45 = *(v0 + 40);
    if (*(v0 + 200) == 2)
    {
      v78 = (v43 != v45 || !v41 || !v42) && v44;
      if (v43 != v45 || !v41 || !v42 || !v44)
      {
LABEL_53:
        _StringGuts.grow(_:)(82);
        v46._countAndFlagsBits = 0xD00000000000001CLL;
        v46._object = 0x800000010134B950;
        String.append(_:)(v46);
        if (v43 == v45)
        {
          v47 = 1702195828;
        }

        else
        {
          v47 = 0x65736C6166;
        }

        if (v43 == v45)
        {
          v48 = 0xE400000000000000;
        }

        else
        {
          v48 = 0xE500000000000000;
        }

        v49 = v48;
        String.append(_:)(*&v47);

        v50._object = 0x800000010134B970;
        v50._countAndFlagsBits = 0xD000000000000012;
        String.append(_:)(v50);
        if (v41)
        {
          v51 = 1702195828;
        }

        else
        {
          v51 = 0x65736C6166;
        }

        if (v41)
        {
          v52 = 0xE400000000000000;
        }

        else
        {
          v52 = 0xE500000000000000;
        }

        v53 = v52;
        String.append(_:)(*&v51);

        v54._countAndFlagsBits = 0x52646C6977202C29;
        v54._object = 0xED00002820746F6FLL;
        String.append(_:)(v54);
        if (v42)
        {
          v55 = 1702195828;
        }

        else
        {
          v55 = 0x65736C6166;
        }

        if (v42)
        {
          v56 = 0xE400000000000000;
        }

        else
        {
          v56 = 0xE500000000000000;
        }

        v57 = v56;
        String.append(_:)(*&v55);

        v58._countAndFlagsBits = 0x4F7261656E202C29;
        v58._object = 0xEE00282072656E77;
        String.append(_:)(v58);
        if (v78)
        {
          v59 = 1702195828;
        }

        else
        {
          v59 = 0x65736C6166;
        }

        if (v78)
        {
          v60 = 0xE400000000000000;
        }

        else
        {
          v60 = 0xE500000000000000;
        }

        v61 = v60;
        String.append(_:)(*&v59);

        v62._countAndFlagsBits = 41;
        v62._object = 0xE100000000000000;
        String.append(_:)(v62);
        v63 = objc_allocWithZone(SPDataIntegrityCheck);
        v64 = String._bridgeToObjectiveC()();

        v65 = 1;
        goto LABEL_79;
      }
    }

    else if (v43 != v45 || !v41)
    {
      v78 = 1;
      v42 = 1;
      goto LABEL_53;
    }

    v63 = objc_allocWithZone(SPDataIntegrityCheck);
    v64 = String._bridgeToObjectiveC()();
    v65 = 0;
LABEL_79:
    v66 = [v63 initWithValue:v64 severity:v65];

    v67 = objc_allocWithZone(SPSharedSecretsDataCheck);
    sub_100008BB8(0, &qword_101697780, SPDataIntegrityCheck_ptr);
    v68 = v66;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v70 = [v67 initWithCompleteness:v68 secrets:isa];

    v71 = *(v0 + 8);

    return v71(v70);
  }

  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v76 = *(v3 + 72);
  v77 = (*(v0 + 72) + 56);
  while (1)
  {
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    sub_10012B2B8(v5, v8, type metadata accessor for SharingCircleSecret);
    v10 = (v8 + *(v4 + 32));
    v11 = *v10;
    v12 = v10[1];
    v13 = (v8 + *(v4 + 28));
    v14 = *v13;
    v15 = v13[1];
    sub_100017D5C(*v10, v12);

    sub_101316078(v11, v12, v14, v15, v9);
    v16 = *(v0 + 96);
    v17 = *(v0 + 56);
    (*v77)(v17, 0, 1, *(v0 + 64));
    sub_10012B250(v17, v16, type metadata accessor for SharingCircleSecretValue);
    v18 = *(v0 + 104);
    v19 = *(v0 + 88);
    sub_10012B250(*(v0 + 96), v18, type metadata accessor for SharingCircleSecretValue);
    sub_10012B2B8(v18, v19, type metadata accessor for SharingCircleSecretValue);
    result = swift_getEnumCaseMultiPayload();
    if (result <= 2)
    {
      break;
    }

    if ((result - 5) >= 2)
    {
      if (result == 3)
      {
        result = sub_10012B448(*(v0 + 88), type metadata accessor for SharingCircleSecretValue);
        if (__OFADD__(v72, 1))
        {
          goto LABEL_85;
        }

        ++v72;
      }

      else
      {
        if (__OFADD__(v73++, 1))
        {
          goto LABEL_84;
        }

        sub_10012B448(*(v0 + 88), type metadata accessor for SharingCircleSecretValue);
      }

      goto LABEL_18;
    }

LABEL_3:
    v6 = *(v0 + 128);
    v7 = *(v0 + 88);
    sub_10012B448(*(v0 + 104), type metadata accessor for SharingCircleSecretValue);
    sub_10012B448(v6, type metadata accessor for SharingCircleSecret);
    sub_10012B448(v7, type metadata accessor for SharingCircleSecretValue);
LABEL_4:
    v5 += v76;
    if (!--v2)
    {

      v41 = v74 == 1;
      v42 = v75 == 1;
      v43 = v73;
      v44 = v72 == 1;
      goto LABEL_47;
    }
  }

  if (!result)
  {
    goto LABEL_3;
  }

  if (result == 1)
  {
    result = sub_10012B448(*(v0 + 88), type metadata accessor for SharingCircleSecretValue);
    if (__OFADD__(v74, 1))
    {
      goto LABEL_83;
    }

    ++v74;
    goto LABEL_18;
  }

  result = sub_10012B448(*(v0 + 88), type metadata accessor for SharingCircleSecretValue);
  if (!__OFADD__(v75, 1))
  {
    ++v75;
LABEL_18:
    v22 = *(v0 + 80);
    sub_10012B2B8(*(v0 + 104), v22, type metadata accessor for SharingCircleSecretValue);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_10012B448(v22, type metadata accessor for SharingCircleSecretValue);
    v24 = 0xD000000000000014;
    if (EnumCaseMultiPayload == 5)
    {
      v25 = 0xD000000000000013;
    }

    else
    {
      v25 = 0xD000000000000014;
    }

    v26 = 0x8000000101347650;
    if (EnumCaseMultiPayload == 5)
    {
      v26 = 0x8000000101347630;
    }

    if (EnumCaseMultiPayload != 3)
    {
      v24 = 0x656B6F546E696F6ALL;
    }

    v27 = 0x8000000101347610;
    if (EnumCaseMultiPayload != 3)
    {
      v27 = 0xE90000000000006ELL;
    }

    if (EnumCaseMultiPayload <= 4)
    {
      v28 = v27;
    }

    else
    {
      v24 = v25;
      v28 = v26;
    }

    v29 = 0xD000000000000011;
    if (EnumCaseMultiPayload == 1)
    {
      v29 = 0xD000000000000012;
    }

    v30 = 0x80000001013475F0;
    if (EnumCaseMultiPayload == 1)
    {
      v30 = 0x80000001013475D0;
    }

    if (!EnumCaseMultiPayload)
    {
      v29 = 0x6E776F6E6B6E75;
      v30 = 0xE700000000000000;
    }

    if (EnumCaseMultiPayload <= 2)
    {
      v31 = v29;
    }

    else
    {
      v31 = v24;
    }

    if (EnumCaseMultiPayload <= 2)
    {
      v32 = v30;
    }

    else
    {
      v32 = v28;
    }

    v33 = v32;
    String.append(_:)(*&v31);

    v34._countAndFlagsBits = 40;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    v35._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v35);

    v36._countAndFlagsBits = 41;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);
    v37 = objc_allocWithZone(SPDataIntegrityCheck);
    v38 = String._bridgeToObjectiveC()();

    [v37 initWithValue:v38 severity:0];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v39 = *(v0 + 128);
    v40 = *(v0 + 104);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    sub_10012B448(v40, type metadata accessor for SharingCircleSecretValue);
    sub_10012B448(v39, type metadata accessor for SharingCircleSecret);
    goto LABEL_4;
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}