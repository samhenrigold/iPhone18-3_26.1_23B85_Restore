uint64_t sub_1000E6F50()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  *v4 = v0[7];
  v4[1] = v1;
  v4[2] = v2;
  v4[3] = v3;
  return sub_1000AFCE0();
}

void sub_1000E6F80(void *a1, int a2, void *a3, void *aBlock, void (*a5)(uint64_t, unint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = a3;
  v13 = a1;
  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  _Block_copy(v8);
  a5(v10, v12, v13, v8);
  _Block_release(v8);
  sub_10008E168(v10, v12);
}

uint64_t StoreKitServiceConnection.performPurchase(_:authDelegate:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000B7E4C();
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  sub_1000B7E4C();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = v5;
  sub_1000EDD24();
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = &unk_1002F0468;
  v11[4] = v10;
  v11[5] = sub_1000ED6AC;
  v11[6] = v9;
  type metadata accessor for PerformPurchaseRequest(0);
  v12 = swift_allocBox();
  v14 = v13;
  swift_unknownObjectRetain();

  swift_retain_n();
  v15 = v5;
  sub_1000EA808(v14);
  if (qword_1003CBE98 != -1)
  {
    sub_1000ED744();
    swift_once();
  }

  v16 = qword_1003F2700;
  v17 = *(v14 + 16);
  v18 = *(v14 + 24);

  sub_1000E4C10(v17, v18, 0xD000000000000029, 0x80000001003173B0, 150, v16, 0xD000000000000026, 0x8000000100317400, v12, &unk_1002F0478, v11);
}

uint64_t sub_1000E72D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1000E7388;

  return sub_10008C0F0(a2, a4, a5);
}

uint64_t sub_1000E7388()
{
  sub_1000B072C();
  sub_1000B0004();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_10008C070();
  v9 = v8;
  sub_1000AFE64();
  *v10 = v9;
  *v10 = *v1;
  v9[4] = v11;

  if (!v0)
  {
    v9[5] = v3;
    v9[6] = v5;
    v9[7] = v7;
  }

  sub_100098AD0();
  sub_1000B0718();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1000E74A8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = *(v0 + 40);
  v2->i64[0] = *(v0 + 32);
  v2->i64[1] = v1;
  v2[1] = vextq_s8(v3, v3, 8uLL);
  return sub_1000AFCE0();
}

uint64_t sub_1000E74C8()
{
  sub_10008BE9C();
  v1 = *(v0 + 32);
  sub_10008B5E0();
  sub_1000ED9E4();
  swift_allocError();
  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000E7630(uint64_t a1, int *a2)
{
  v2[5] = a1;
  v2[6] = type metadata accessor for ClientTypeResponse(0);
  v4 = swift_task_alloc();
  v2[7] = v4;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v2[8] = v5;
  *v5 = v2;
  v5[1] = sub_1000E7764;

  return v7(v4);
}

uint64_t sub_1000E7764()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 72) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000E785C()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v0();
}

uint64_t sub_1000E7B68(uint64_t a1, int *a2)
{
  *(v2 + 72) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  *v3 = v2;
  v3[1] = sub_1000E7C5C;

  return v5(v2 + 16);
}

uint64_t sub_1000E7C5C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000E7FB0(uint64_t a1, int *a2)
{
  *(v2 + 72) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  *v3 = v2;
  v3[1] = sub_1000E80A4;

  return v5(v2 + 16);
}

uint64_t sub_1000E80A4()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000E8400()
{
  sub_10008BE9C();
  sub_1000ED968(v1);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v3 = sub_1000EDCDC(v2);

  return v4(v3);
}

uint64_t sub_1000E84B0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 104) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000E8820()
{
  sub_10008BE9C();
  sub_1000ED968(v1);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v3 = sub_1000EDCDC(v2);

  return v4(v3);
}

uint64_t sub_1000E88D0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 104) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000E8C3C(uint64_t a1, int *a2)
{
  *(v2 + 56) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  *v3 = v2;
  v3[1] = sub_1000E8D30;

  return v5(v2 + 16);
}

uint64_t sub_1000E8D30()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 72) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000E907C(uint64_t a1, int *a2)
{
  *(v2 + 48) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  *v3 = v2;
  v3[1] = sub_1000E9170;

  return v5(v2 + 32);
}

uint64_t sub_1000E9170()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 64) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000E94D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  return _swift_task_switch(sub_1000E94FC, 0, 0);
}

uint64_t sub_1000E94FC()
{
  sub_10008BE9C();
  v0 = swift_task_alloc();
  sub_1000ED784(v0);
  v1 = swift_task_alloc();
  v2 = sub_1000ED958(v1);
  *v2 = v3;
  sub_1000EDB14(v2);
  v4 = sub_1000ED868();

  return sub_1000E7630(v4, v5);
}

uint64_t sub_1000E959C()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000E969C()
{
  sub_10008BE9C();

  *(v0 + 32) = xmmword_1002F0420;
  v1 = swift_task_alloc();
  v2 = sub_1000EDB08(v1);
  *v2 = v3;
  sub_1000ED728(v2);

  return sub_1001E521C();
}

uint64_t sub_1000E9730()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  sub_1000EDCB0(v3);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000E9814()
{
  sub_1000B0780();
  sub_1000B02BC();
  sub_1000ED800();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  sub_1000ED6D8(v1);
  sub_1000B0604();

  return sub_1000E94D0(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000E98A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  return _swift_task_switch(sub_1000E98CC, 0, 0);
}

uint64_t sub_1000E98CC()
{
  sub_10008BE9C();
  v0 = swift_task_alloc();
  sub_1000ED784(v0);
  v1 = swift_task_alloc();
  v2 = sub_1000ED958(v1);
  *v2 = v3;
  sub_1000EDB14(v2);
  v4 = sub_1000ED868();

  return sub_1000E7B68(v4, v5);
}

uint64_t sub_1000E996C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  return _swift_task_switch(sub_1000E9998, 0, 0);
}

uint64_t sub_1000E9998()
{
  sub_10008BE9C();
  v0 = swift_task_alloc();
  sub_1000ED784(v0);
  v1 = swift_task_alloc();
  v2 = sub_1000ED958(v1);
  *v2 = v3;
  sub_1000EDB14(v2);
  v4 = sub_1000ED868();

  return sub_1000E7FB0(v4, v5);
}

uint64_t sub_1000E9A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  return sub_1000AFCB8();
}

uint64_t sub_1000E9A58()
{
  sub_10008BE9C();
  v0 = swift_task_alloc();
  sub_1000ED784(v0);
  v1 = swift_task_alloc();
  v2 = sub_1000ED958(v1);
  *v2 = v3;
  sub_1000EDB14(v2);
  v4 = sub_1000ED868();

  return sub_1000E8C3C(v4, v5);
}

uint64_t sub_1000E9AF8()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000E9BF8()
{
  v7 = v0;
  v1 = v0[11];
  v2 = v0[3];
  v5 = v0[2];
  v6 = v2;
  sub_1000BC808(v5, v2);
  v1(&v5, 0);
  sub_1000BC8B4(v5, v6);
  sub_10008E168(v0[2], v0[3]);
  sub_100098AC4();

  return v3();
}

uint64_t sub_1000E9C84()
{
  sub_10008BE9C();

  *(v0 + 32) = xmmword_1002F0420;
  v1 = swift_task_alloc();
  v2 = sub_1000EDB08(v1);
  *v2 = v3;
  sub_1000ED728(v2);

  return sub_1001E521C();
}

uint64_t sub_1000E9D18()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  sub_1000EDCB0(v3);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000E9DFC()
{
  (*(v0 + 88))(v0 + 32, *(v0 + 136));

  sub_1000BC8B4(*(v0 + 32), *(v0 + 40));
  sub_100098AC4();

  return v1();
}

uint64_t sub_1000E9E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  return sub_1000AFCB8();
}

uint64_t sub_1000E9EAC()
{
  sub_10008BE9C();
  v0 = swift_task_alloc();
  sub_1000ED784(v0);
  v1 = swift_task_alloc();
  v2 = sub_1000ED958(v1);
  *v2 = v3;
  sub_1000EDB14(v2);
  v4 = sub_1000ED868();

  return sub_1000E907C(v4, v5);
}

uint64_t sub_1000E9F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  return sub_1000AFCB8();
}

uint64_t sub_1000E9F6C()
{
  sub_10008BE9C();
  v0 = swift_task_alloc();
  sub_1000ED784(v0);
  v1 = swift_task_alloc();
  v2 = sub_1000ED958(v1);
  *v2 = v3;
  sub_1000EDB14(v2);
  v4 = sub_1000ED868();

  return sub_1000E907C(v4, v5);
}

uint64_t sub_1000EA00C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1000A7644;

  return v11(a1, a4, a5);
}

uint64_t sub_1000EA120@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for ClientTypeRequest(0);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000ED5C0(&qword_1003CE0C0, type metadata accessor for ClientTypeRequest, &unk_1002EFD5C);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v8, qword_1003F26C8);
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v9._countAndFlagsBits = 0x656420726F727245;
    v9._object = 0xEF20676E69646F63;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 1635017028;
    v10._object = 0xE400000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 32;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v22 = v3;
    sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
    _print_unlocked<A, B>(_:_:)();
    v13 = v20;
    v12 = v21;
    v14 = static os_log_type_t.error.getter();

    v15 = Logger.logObject.getter();

    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v16 = 136446466;
      *(v16 + 4) = sub_100080210(0, 0xE000000000000000, &v20);
      *(v16 + 12) = 2082;
      v17 = sub_100080210(v13, v12, &v20);

      *(v16 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v15, v14, "%{public}s%{public}s", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v19 = 6;
    swift_willThrow();
  }

  else
  {

    return sub_1000ED4C4(v7, a3, type metadata accessor for ClientTypeRequest);
  }
}

uint64_t sub_1000EA494@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for ProcessPurchaseResultRequest(0);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000ED5C0(&qword_1003CE2F0, type metadata accessor for ProcessPurchaseResultRequest, &unk_1002F5DA8);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v8, qword_1003F26C8);
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v9._countAndFlagsBits = 0x656420726F727245;
    v9._object = 0xEF20676E69646F63;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 1635017028;
    v10._object = 0xE400000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 32;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v22 = v3;
    sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
    _print_unlocked<A, B>(_:_:)();
    v13 = v20;
    v12 = v21;
    v14 = static os_log_type_t.error.getter();

    v15 = Logger.logObject.getter();

    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v16 = 136446466;
      *(v16 + 4) = sub_100080210(0, 0xE000000000000000, &v20);
      *(v16 + 12) = 2082;
      v17 = sub_100080210(v13, v12, &v20);

      *(v16 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v15, v14, "%{public}s%{public}s", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v19 = 6;
    swift_willThrow();
  }

  else
  {

    return sub_1000ED4C4(v7, a3, type metadata accessor for ProcessPurchaseResultRequest);
  }
}

uint64_t sub_1000EA808@<X0>(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for PerformPurchaseRequest(0);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000ED5C0(&qword_1003CE2D8, type metadata accessor for PerformPurchaseRequest, &unk_1002F87C0);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v8, qword_1003F26C8);
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v9._countAndFlagsBits = 0x656420726F727245;
    v9._object = 0xEF20676E69646F63;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 1635017028;
    v10._object = 0xE400000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = 32;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v22 = v3;
    sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
    _print_unlocked<A, B>(_:_:)();
    v13 = v20;
    v12 = v21;
    v14 = static os_log_type_t.error.getter();

    v15 = Logger.logObject.getter();

    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v16 = 136446466;
      *(v16 + 4) = sub_100080210(0, 0xE000000000000000, &v20);
      *(v16 + 12) = 2082;
      v17 = sub_100080210(v13, v12, &v20);

      *(v16 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v15, v14, "%{public}s%{public}s", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v19 = 6;
    swift_willThrow();
  }

  else
  {

    return sub_1000ED4C4(v7, a3, type metadata accessor for PerformPurchaseRequest);
  }
}

uint64_t sub_1000EABE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  type metadata accessor for JSONDecoder();
  sub_1000ED9FC();
  swift_allocObject();
  JSONDecoder.init()();
  a3();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_1000ED9F0();
  if (v4)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v7 = type metadata accessor for SKLogger(0);
    v8 = sub_10007EDA4(v7, qword_1003F26C8);
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v9._countAndFlagsBits = sub_1000ED6B4();
    String.append(_:)(v9);
    sub_1000EDA2C();
    v10._countAndFlagsBits = sub_1000EDA20();
    String.append(_:)(v10);
    v18[4] = a4;
    sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
    _print_unlocked<A, B>(_:_:)();
    static os_log_type_t.error.getter();
    sub_1000EDBC0();
    v11 = v8;
    Logger.logObject.getter();
    sub_1000B07E0();
    if (sub_1000EDB78())
    {
      sub_1000B7DC8();
      v12 = swift_slowAlloc();
      sub_1000B7DBC();
      v18[0] = swift_slowAlloc();
      *v12 = 136446466;
      *(v12 + 4) = sub_100080210(0, 0xE000000000000000, v18);
      *(v12 + 12) = 2082;
      sub_100080210(0, 0xE000000000000000, v18);
      sub_1000EDBD8();
      *(v12 + 14) = 0;
      sub_1000ED8E8(&_mh_execute_header, v13, v14, "%{public}s%{public}s");
      sub_1000ED7C8();
      swift_arrayDestroy();
      sub_1000B7D58();

      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v16 = swift_allocError();
    sub_1000ED908(v16, v17);
  }

  else
  {

    return v18[0];
  }
}

void sub_1000EAE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1000EDDFC();
  v18 = sub_1000ED76C();
  type metadata accessor for SubscriptionStatusQuery(v18);
  sub_100098B7C();
  __chkstk_darwin(v19);
  sub_1000ED818();
  sub_1000ED9FC();
  swift_allocObject();
  JSONDecoder.init()();
  v20 = sub_1000ED5C0(&qword_1003CE280, type metadata accessor for SubscriptionStatusQuery, &unk_1002FBA58);
  sub_1000ED79C(v20);
  sub_1000ED9F0();
  if (v16)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v21 = type metadata accessor for SKLogger(0);
    sub_1000ED8A0(v21, qword_1003F26C8);
    v22._countAndFlagsBits = sub_1000ED6B4();
    String.append(_:)(v22);
    sub_1000EDA2C();
    v23._countAndFlagsBits = sub_1000EDA20();
    String.append(_:)(v23);
    v24 = sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
    sub_1000EDC98(v24, v25, v24, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    static os_log_type_t.error.getter();
    sub_1000EDBC0();
    v26 = v17;
    Logger.logObject.getter();
    sub_1000B07E0();
    if (sub_1000EDB78())
    {
      sub_1000B7DC8();
      v27 = swift_slowAlloc();
      sub_1000B7DBC();
      v28 = swift_slowAlloc();
      sub_1000EDAFC(v28);
      v29 = sub_1000ED9A4(4.8752e-34);
      sub_1000ED840(v29);
      sub_1000EDBD8();
      *(v27 + 14) = v34;
      sub_1000ED8E8(&_mh_execute_header, v30, v31, "%{public}s%{public}s");
      sub_1000ED7C8();
      swift_arrayDestroy();
      sub_1000B7D58();

      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v32 = swift_allocError();
    sub_1000ED908(v32, v33);
  }

  else
  {

    sub_1000EDA8C();
  }

  sub_1000EDB3C();
  sub_1000EDE10();
}

void sub_1000EB05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1000EDDFC();
  v18 = sub_1000ED76C();
  type metadata accessor for TransactionQuery(v18);
  sub_100098B7C();
  __chkstk_darwin(v19);
  sub_1000ED818();
  sub_1000ED9FC();
  swift_allocObject();
  JSONDecoder.init()();
  v20 = sub_1000ED5C0(&qword_1003CE278, type metadata accessor for TransactionQuery, &unk_1002F1100);
  sub_1000ED79C(v20);
  sub_1000ED9F0();
  if (v16)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v21 = type metadata accessor for SKLogger(0);
    sub_1000ED8A0(v21, qword_1003F26C8);
    v22._countAndFlagsBits = sub_1000ED6B4();
    String.append(_:)(v22);
    sub_1000EDA2C();
    v23._countAndFlagsBits = sub_1000EDA20();
    String.append(_:)(v23);
    v24 = sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
    sub_1000EDC98(v24, v25, v24, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    static os_log_type_t.error.getter();
    sub_1000EDBC0();
    v26 = v17;
    Logger.logObject.getter();
    sub_1000B07E0();
    if (sub_1000EDB78())
    {
      sub_1000B7DC8();
      v27 = swift_slowAlloc();
      sub_1000B7DBC();
      v28 = swift_slowAlloc();
      sub_1000EDAFC(v28);
      v29 = sub_1000ED9A4(4.8752e-34);
      sub_1000ED840(v29);
      sub_1000EDBD8();
      *(v27 + 14) = v34;
      sub_1000ED8E8(&_mh_execute_header, v30, v31, "%{public}s%{public}s");
      sub_1000ED7C8();
      swift_arrayDestroy();
      sub_1000B7D58();

      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v32 = swift_allocError();
    sub_1000ED908(v32, v33);
  }

  else
  {

    sub_1000EDA8C();
  }

  sub_1000EDB3C();
  sub_1000EDE10();
}

void sub_1000EB280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1000EDDFC();
  v18 = sub_1000ED76C();
  type metadata accessor for ExternalGatewayRequest(v18);
  sub_100098B7C();
  __chkstk_darwin(v19);
  sub_1000ED818();
  sub_1000ED9FC();
  swift_allocObject();
  JSONDecoder.init()();
  v20 = sub_1000ED5C0(&qword_1003CE268, type metadata accessor for ExternalGatewayRequest, &unk_1002F57A4);
  sub_1000ED79C(v20);
  sub_1000ED9F0();
  if (v16)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v21 = type metadata accessor for SKLogger(0);
    sub_1000ED8A0(v21, qword_1003F26C8);
    v22._countAndFlagsBits = sub_1000ED6B4();
    String.append(_:)(v22);
    sub_1000EDA2C();
    v23._countAndFlagsBits = sub_1000EDA20();
    String.append(_:)(v23);
    v24 = sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
    sub_1000EDC98(v24, v25, v24, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    static os_log_type_t.error.getter();
    sub_1000EDBC0();
    v26 = v17;
    Logger.logObject.getter();
    sub_1000B07E0();
    if (sub_1000EDB78())
    {
      sub_1000B7DC8();
      v27 = swift_slowAlloc();
      sub_1000B7DBC();
      v28 = swift_slowAlloc();
      sub_1000EDAFC(v28);
      v29 = sub_1000ED9A4(4.8752e-34);
      sub_1000ED840(v29);
      sub_1000EDBD8();
      *(v27 + 14) = v34;
      sub_1000ED8E8(&_mh_execute_header, v30, v31, "%{public}s%{public}s");
      sub_1000ED7C8();
      swift_arrayDestroy();
      sub_1000B7D58();

      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v32 = swift_allocError();
    sub_1000ED908(v32, v33);
  }

  else
  {

    sub_1000EDA8C();
  }

  sub_1000EDB3C();
  sub_1000EDE10();
}

void sub_1000EB4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1000EDDFC();
  v18 = sub_1000ED76C();
  type metadata accessor for FinishTransactionTask(v18);
  sub_100098B7C();
  __chkstk_darwin(v19);
  sub_1000ED818();
  sub_1000ED9FC();
  swift_allocObject();
  JSONDecoder.init()();
  v20 = sub_1000ED5C0(&qword_1003CE260, type metadata accessor for FinishTransactionTask, &unk_1002EE310);
  sub_1000ED79C(v20);
  sub_1000ED9F0();
  if (v16)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v21 = type metadata accessor for SKLogger(0);
    sub_1000ED8A0(v21, qword_1003F26C8);
    v22._countAndFlagsBits = sub_1000ED6B4();
    String.append(_:)(v22);
    sub_1000EDA2C();
    v23._countAndFlagsBits = sub_1000EDA20();
    String.append(_:)(v23);
    v24 = sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
    sub_1000EDC98(v24, v25, v24, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    static os_log_type_t.error.getter();
    sub_1000EDBC0();
    v26 = v17;
    Logger.logObject.getter();
    sub_1000B07E0();
    if (sub_1000EDB78())
    {
      sub_1000B7DC8();
      v27 = swift_slowAlloc();
      sub_1000B7DBC();
      v28 = swift_slowAlloc();
      sub_1000EDAFC(v28);
      v29 = sub_1000ED9A4(4.8752e-34);
      sub_1000ED840(v29);
      sub_1000EDBD8();
      *(v27 + 14) = v34;
      sub_1000ED8E8(&_mh_execute_header, v30, v31, "%{public}s%{public}s");
      sub_1000ED7C8();
      swift_arrayDestroy();
      sub_1000B7D58();

      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v32 = swift_allocError();
    sub_1000ED908(v32, v33);
  }

  else
  {

    sub_1000EDA8C();
  }

  sub_1000EDB3C();
  sub_1000EDE10();
}

void sub_1000EB6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1000EDDFC();
  v18 = sub_1000ED76C();
  type metadata accessor for LegacyRestoreCompletedTransactionsTask(v18);
  sub_100098B7C();
  __chkstk_darwin(v19);
  sub_1000ED818();
  sub_1000ED9FC();
  swift_allocObject();
  JSONDecoder.init()();
  v20 = sub_1000ED5C0(&qword_1003CDB08, type metadata accessor for LegacyRestoreCompletedTransactionsTask, &unk_1002EEFB0);
  sub_1000ED79C(v20);
  sub_1000ED9F0();
  if (v16)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v21 = type metadata accessor for SKLogger(0);
    sub_1000ED8A0(v21, qword_1003F26C8);
    v22._countAndFlagsBits = sub_1000ED6B4();
    String.append(_:)(v22);
    sub_1000EDA2C();
    v23._countAndFlagsBits = sub_1000EDA20();
    String.append(_:)(v23);
    v24 = sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
    sub_1000EDC98(v24, v25, v24, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    static os_log_type_t.error.getter();
    sub_1000EDBC0();
    v26 = v17;
    Logger.logObject.getter();
    sub_1000B07E0();
    if (sub_1000EDB78())
    {
      sub_1000B7DC8();
      v27 = swift_slowAlloc();
      sub_1000B7DBC();
      v28 = swift_slowAlloc();
      sub_1000EDAFC(v28);
      v29 = sub_1000ED9A4(4.8752e-34);
      sub_1000ED840(v29);
      sub_1000EDBD8();
      *(v27 + 14) = v34;
      sub_1000ED8E8(&_mh_execute_header, v30, v31, "%{public}s%{public}s");
      sub_1000ED7C8();
      swift_arrayDestroy();
      sub_1000B7D58();

      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v32 = swift_allocError();
    sub_1000ED908(v32, v33);
  }

  else
  {

    sub_1000EDA8C();
  }

  sub_1000EDB3C();
  sub_1000EDE10();
}

void sub_1000EB8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1000EDDFC();
  v18 = sub_1000ED76C();
  type metadata accessor for LegacyUnfinishedTransactionsTask(v18);
  sub_100098B7C();
  __chkstk_darwin(v19);
  sub_1000ED818();
  sub_1000ED9FC();
  swift_allocObject();
  JSONDecoder.init()();
  v20 = sub_1000ED5C0(&qword_1003CD560, type metadata accessor for LegacyUnfinishedTransactionsTask, &unk_1002EE10C);
  sub_1000ED79C(v20);
  sub_1000ED9F0();
  if (v16)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v21 = type metadata accessor for SKLogger(0);
    sub_1000ED8A0(v21, qword_1003F26C8);
    v22._countAndFlagsBits = sub_1000ED6B4();
    String.append(_:)(v22);
    sub_1000EDA2C();
    v23._countAndFlagsBits = sub_1000EDA20();
    String.append(_:)(v23);
    v24 = sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
    sub_1000EDC98(v24, v25, v24, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    static os_log_type_t.error.getter();
    sub_1000EDBC0();
    v26 = v17;
    Logger.logObject.getter();
    sub_1000B07E0();
    if (sub_1000EDB78())
    {
      sub_1000B7DC8();
      v27 = swift_slowAlloc();
      sub_1000B7DBC();
      v28 = swift_slowAlloc();
      sub_1000EDAFC(v28);
      v29 = sub_1000ED9A4(4.8752e-34);
      sub_1000ED840(v29);
      sub_1000EDBD8();
      *(v27 + 14) = v34;
      sub_1000ED8E8(&_mh_execute_header, v30, v31, "%{public}s%{public}s");
      sub_1000ED7C8();
      swift_arrayDestroy();
      sub_1000B7D58();

      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v32 = swift_allocError();
    sub_1000ED908(v32, v33);
  }

  else
  {

    sub_1000EDA8C();
  }

  sub_1000EDB3C();
  sub_1000EDE10();
}

uint64_t sub_1000EBB10(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSONDecoder();
  sub_1000ED9FC();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000EBFE8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_1000ED9F0();
  if (v2)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v3 = type metadata accessor for SKLogger(0);
    v4 = sub_10007EDA4(v3, qword_1003F26C8);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v5._countAndFlagsBits = sub_1000ED6B4();
    String.append(_:)(v5);
    sub_1000EDA2C();
    v6._countAndFlagsBits = sub_1000EDA20();
    String.append(_:)(v6);
    v17[5] = v2;
    sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
    _print_unlocked<A, B>(_:_:)();
    static os_log_type_t.error.getter();
    sub_1000EDBC0();
    v7 = v4;
    Logger.logObject.getter();
    sub_1000B07E0();
    if (sub_1000EDB78())
    {
      sub_1000B7DC8();
      v8 = swift_slowAlloc();
      sub_1000B7DBC();
      swift_slowAlloc();
      sub_1000EDAD0();
      *v8 = 136446466;
      v9 = sub_1000ED8D8();
      *(v8 + 4) = sub_100080210(v9, v10, v11);
      *(v8 + 12) = 2082;
      sub_100080210(0, 0xE000000000000000, v17);
      sub_1000EDBD8();
      *(v8 + 14) = 0;
      sub_1000ED8E8(&_mh_execute_header, v12, v13, "%{public}s%{public}s");
      sub_1000ED7C8();
      swift_arrayDestroy();
      sub_1000B7D58();

      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v15 = swift_allocError();
    sub_1000ED908(v15, v16);
  }

  else
  {

    return v17[0];
  }
}

uint64_t sub_1000EBD58()
{
  sub_1000B0780();
  sub_1000B02BC();
  sub_1000ED800();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  sub_1000ED6D8(v1);
  sub_1000B0604();

  return sub_1000E98A0(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000EBDE4()
{
  swift_unknownObjectRelease();

  sub_1000B7E4C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000EBE20()
{
  sub_1000B0004();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = swift_task_alloc();
  v10 = sub_1000AFE54(v9);
  *v10 = v11;
  v10[1] = sub_1000A7644;

  return sub_1000E72D0(v6, v4, v2, v8, v7);
}

uint64_t sub_1000EBED8()
{
  sub_1000B0780();
  sub_1000B02BC();
  sub_1000ED800();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  sub_1000ED6D8(v1);
  sub_1000B0604();

  return sub_1000E996C(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000EBF64()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000EBFA4()
{

  sub_1000EDD24();

  return _swift_deallocObject(v1, v2, v3);
}

unint64_t sub_1000EBFE8()
{
  result = qword_1003CE230;
  if (!qword_1003CE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE230);
  }

  return result;
}

uint64_t sub_1000EC03C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a1;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  *(v5 + 56) = v8;
  *v8 = v5;
  v8[1] = sub_1000EC14C;

  return v10(v5 + 16, a4, a5);
}

uint64_t sub_1000EC14C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 64) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000EC244()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  return sub_1000AFCE0();
}

uint64_t sub_1000EC25C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a1;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  *(v5 + 56) = v8;
  *v8 = v5;
  v8[1] = sub_1000EC36C;

  return v10(v5 + 16, a4, a5);
}

uint64_t sub_1000EC36C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 64) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000EC464()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return sub_1000AFCE0();
}

uint64_t sub_1000EC4A0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a1;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  *(v5 + 40) = v8;
  *v8 = v5;
  v8[1] = sub_1000EC5B0;

  return v10(v5 + 16, a4, a5);
}

uint64_t sub_1000EC5B0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 48) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000EC6DC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  *(v5 + 32) = v8;
  *v8 = v5;
  v8[1] = sub_1000EC7EC;

  return v10(v5 + 16, a4, a5);
}

uint64_t sub_1000EC7EC()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000EC8E4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  *(v5 + 32) = v8;
  *v8 = v5;
  v8[1] = sub_1000EC9F4;

  return v10(v5 + 16, a4, a5);
}

uint64_t sub_1000EC9F4()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000ECB1C()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_1000ED948();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_1000ED700(v1);
  sub_1000B0718();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1000ECBAC()
{
  result = qword_1003CE248;
  if (!qword_1003CE248)
  {
    sub_1000852D4(&qword_1003CE240, &qword_1002F2E90);
    sub_1000ED5C0(&unk_1003CE250, type metadata accessor for LegacyTransactionInternal, &unk_1002EE584);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE248);
  }

  return result;
}

uint64_t sub_1000ECC60()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_1000ED948();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_1000ED700(v1);
  sub_1000B0718();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000ECCF0()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_1000ED948();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_1000ED700(v1);
  sub_1000B0718();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1000ECD80()
{
  result = qword_1003CE270;
  if (!qword_1003CE270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE270);
  }

  return result;
}

unint64_t sub_1000ECDD4()
{
  result = qword_1003CE288;
  if (!qword_1003CE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE288);
  }

  return result;
}

unint64_t sub_1000ECE28()
{
  result = qword_1003CE290;
  if (!qword_1003CE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE290);
  }

  return result;
}

unint64_t sub_1000ECE7C()
{
  result = qword_1003CE298;
  if (!qword_1003CE298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE298);
  }

  return result;
}

unint64_t sub_1000ECED0()
{
  result = qword_1003CE2A8;
  if (!qword_1003CE2A8)
  {
    sub_1000852D4(&qword_1003CE2A0, &qword_1002F04F8);
    sub_1000ECE28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE2A8);
  }

  return result;
}

uint64_t sub_1000ECF54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000ECFA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformPurchaseRequest(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000ED008(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000ED078(uint64_t a1)
{
  sub_1000EDD30();
  sub_1000EDA60();
  sub_1000EDA08();
  v1 = swift_task_alloc();
  v2 = sub_1000AFE54(v1);
  *v2 = v3;
  v2[1] = sub_1000A7644;
  sub_1000AFD08();
  sub_1000EDAA8();
  sub_1000EDC30();

  return sub_1001E66E4();
}

uint64_t sub_1000ED110()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_1000ED948();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_1000ED700(v1);
  sub_1000B0718();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1000ED1A0()
{
  result = qword_1003CE2E0;
  if (!qword_1003CE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE2E0);
  }

  return result;
}

uint64_t sub_1000ED1F4(uint64_t a1)
{
  sub_1000EDD30();
  sub_1000EDA60();
  sub_1000EDA08();
  v1 = swift_task_alloc();
  v2 = sub_1000AFE54(v1);
  *v2 = v3;
  v2[1] = sub_1000AFC98;
  sub_1000AFD08();
  sub_1000EDAA8();
  sub_1000EDC30();

  return sub_1001E649C();
}

uint64_t sub_1000ED28C()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_1000ED948();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_1000ED700(v1);
  sub_1000B0718();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1000ED31C()
{
  result = qword_1003CE2F8;
  if (!qword_1003CE2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE2F8);
  }

  return result;
}

uint64_t sub_1000ED370(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100098B7C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000ED3D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000ED42C(uint64_t a1)
{
  sub_1000EDD30();
  sub_1000EDA60();
  sub_1000EDA08();
  v1 = swift_task_alloc();
  v2 = sub_1000AFE54(v1);
  *v2 = v3;
  v2[1] = sub_1000AFC98;
  sub_1000AFD08();
  sub_1000EDAA8();
  sub_1000EDC30();

  return sub_1001E6254();
}

uint64_t sub_1000ED4C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100098B7C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000ED524()
{
  sub_1000B0004();
  sub_1000ED948();
  v1 = swift_task_alloc();
  v2 = sub_1000AFE54(v1);
  *v2 = v3;
  v2[1] = sub_1000AFC98;
  v4 = sub_1000AFD08();

  return sub_1000EA00C(v4, v5, v6, v7, v0);
}

uint64_t sub_1000ED5C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000ED608(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100098B7C();
  (*(v3 + 8))(a1);
  return a1;
}

__n128 sub_1000ED784(uint64_t a1)
{
  *(v1 + 104) = a1;
  result = *(v1 + 72);
  v3 = *(v1 + 48);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

void *sub_1000ED79C(uint64_t a1)
{

  return dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

unint64_t sub_1000ED7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 4) = a1;
  *(v9 + 12) = 2082;

  return sub_100080210(v11, v10, &a9);
}

uint64_t sub_1000ED818()
{

  return type metadata accessor for JSONDecoder();
}

unint64_t sub_1000ED840(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2082;

  return sub_100080210(v3, v1, (v4 - 80));
}

void sub_1000ED87C()
{

  _StringGuts.grow(_:)(36);
}

void sub_1000ED8A0(uint64_t a1, uint64_t a2)
{
  sub_10007EDA4(a1, a2);
  *(v2 - 80) = 0;
  *(v2 - 72) = 0xE000000000000000;

  _StringGuts.grow(_:)(20);
}

void sub_1000ED8E8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_1000ED908(uint64_t a1, _BYTE *a2)
{
  *a2 = 6;

  return swift_willThrow();
}

void sub_1000ED928(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

unint64_t sub_1000ED9A4(float a1)
{
  *v1 = a1;

  return sub_100080210(0, 0xE000000000000000, (v2 - 80));
}

uint64_t sub_1000ED9C4(uint64_t a1, _BYTE *a2)
{
  *a2 = 7;

  return swift_willThrow();
}

void sub_1000EDA2C()
{
  v1 = 1635017028;
  v2 = 0xE400000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_1000EDA6C(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_1000EDA8C()
{

  return sub_1000ED4C4(v2, v1, v0);
}

uint64_t sub_1000EDB20()
{
  v3 = *(v1 - 216);
  v4 = *(v1 - 224);

  return sub_1000ED370(v0, v4, v3);
}

BOOL sub_1000EDB78()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000EDBA0()
{
  *v0 = v2;
  v0[1] = v3;
  return *(v1 + 24);
}

uint64_t sub_1000EDBC0()
{
}

uint64_t sub_1000EDBD8()
{
}

uint64_t sub_1000EDC18()
{
}

BOOL sub_1000EDC50()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000EDC68()
{
}

void sub_1000EDC80(uint64_t a1, uint64_t a2)
{
  v3 = 0xD00000000000001FLL;

  String.append(_:)(*(&a2 - 1));
}

uint64_t sub_1000EDC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _print_unlocked<A, B>(_:_:)();
}

uint64_t sub_1000EDCB0(uint64_t a1)
{
  *(v1 + 136) = a1;
}

void sub_1000EDD4C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_1000EDD6C()
{

  return swift_retain_n();
}

uint64_t sub_1000EDD8C()
{

  return sub_100081DFC(v1, 1, 1, v0);
}

uint64_t sub_1000EDDAC(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_1000EDDCC()
{
  v3 = *(v1 - 240);

  return sub_1000ED608(v0, v3);
}

uint64_t sub_1000EDDE4()
{

  return _typeName(_:qualified:)();
}

uint64_t getEnumTagSinglePayload for AuditTokenDecodingError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AuditTokenDecodingError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1000EDE74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000EDE90(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_1000EDF10@<X0>(uint64_t a2@<X8>)
{
  v3 = enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:);
  v4 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_1000EDF88()
{
  v0 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = type metadata accessor for AsyncStream();
  sub_1000890DC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_1000EDF10(v2);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1000EE0E8(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  v5 = type metadata accessor for AsyncStream.Continuation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  sub_100081DFC(v11, 1, 1, v12);
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v4;
  *(v14 + 5) = a2;
  (*(v6 + 32))(&v14[v13], v8, v5);

  sub_100165CBC();
}

uint64_t sub_1000EE2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000EE2E4, a4, 0);
}

uint64_t sub_1000EE2E4()
{
  sub_1000EE344(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000EE344(uint64_t a1)
{
  v2 = type metadata accessor for AsyncStream.Continuation();
  v3 = type metadata accessor for Optional();
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6);
  UUID.init()();
  (*(*(v2 - 8) + 16))(v5, a1, v2);
  sub_100081DFC(v5, 0, 1, v2);
  swift_beginAccess();
  sub_1000EE588();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  return swift_endAccess();
}

uint64_t sub_1000EE4C8()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000EE4F0()
{
  sub_1000EE4C8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000EE550()
{
  sub_1000EDF88();
}

unint64_t sub_1000EE588()
{
  result = qword_1003D3100;
  if (!qword_1003D3100)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D3100);
  }

  return result;
}

uint64_t sub_1000EE5E8()
{
  v1 = type metadata accessor for AsyncStream.Continuation();
  sub_1000890DC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_1000EE6AC(uint64_t a1)
{
  v4 = *(type metadata accessor for AsyncStream.Continuation() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[5];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000EE7A8;

  return sub_1000EE2C4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000EE7A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000EE8AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1885956979 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6576697244676162 && a2 == 0xE90000000000006ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6563726F66 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1000EE9C0(char a1)
{
  if (!a1)
  {
    return 1885956979;
  }

  if (a1 == 1)
  {
    return 0x6576697244676162;
  }

  return 0x6563726F66;
}

uint64_t sub_1000EEA10(void *a1, int a2)
{
  v33 = a2;
  sub_100080FB4(&qword_1003CE3E8, &qword_1002F07D8);
  sub_1000890DC();
  v31 = v4;
  v32 = v3;
  sub_100089118();
  __chkstk_darwin(v5);
  v30 = &v26 - v6;
  sub_100080FB4(&qword_1003CE3F0, &qword_1002F07E0);
  sub_1000890DC();
  v28 = v8;
  v29 = v7;
  sub_100089118();
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_100080FB4(&qword_1003CE3F8, &qword_1002F07E8);
  sub_1000890DC();
  v27 = v13;
  sub_100089118();
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = sub_100080FB4(&qword_1003CE400, &qword_1002F07F0);
  sub_1000890DC();
  v19 = v18;
  sub_100089118();
  __chkstk_darwin(v20);
  v22 = &v26 - v21;
  sub_100086D24(a1, a1[3]);
  sub_1000EF570();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = (v19 + 8);
  if (v33)
  {
    if (v33 == 1)
    {
      v35 = 1;
      sub_1000EF618();
      sub_1000EFB1C(&type metadata for SyncStrategy.BagDrivenCodingKeys);
      (*(v28 + 8))(v11, v29);
    }

    else
    {
      v36 = 2;
      sub_1000EF5C4();
      v24 = v30;
      sub_1000EFB1C(&type metadata for SyncStrategy.ForceCodingKeys);
      (*(v31 + 8))(v24, v32);
    }
  }

  else
  {
    v34 = 0;
    sub_1000EF66C();
    sub_1000EFB1C(&type metadata for SyncStrategy.SkipCodingKeys);
    (*(v27 + 8))(v16, v12);
  }

  return (*v23)(v22, v17);
}

uint64_t sub_1000EED2C(void *a1)
{
  v63 = sub_100080FB4(&qword_1003CE3A8, &qword_1002F07B0);
  sub_1000890DC();
  v61 = v2;
  sub_100089118();
  __chkstk_darwin(v3);
  v59 = &v53 - v4;
  v60 = sub_100080FB4(&qword_1003CE3B0, &qword_1002F07B8);
  sub_1000890DC();
  v58 = v5;
  sub_100089118();
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  v9 = sub_100080FB4(&qword_1003CE3B8, &qword_1002F07C0);
  sub_1000890DC();
  v57 = v10;
  sub_100089118();
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  v14 = sub_100080FB4(&qword_1003CE3C0, &unk_1002F07C8);
  sub_1000890DC();
  v62 = v15;
  sub_100089118();
  __chkstk_darwin(v16);
  v17 = a1[3];
  sub_100086D24(a1, v17);
  sub_1000EF570();
  v18 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_12;
  }

  v53 = v9;
  v54 = v13;
  v55 = v8;
  v56 = 0;
  v19 = v63;
  v64 = a1;
  v20 = KeyedDecodingContainer.allKeys.getter();
  result = sub_100162698(v20, 0);
  v17 = v14;
  if (v23 == v24 >> 1)
  {
    goto LABEL_10;
  }

  if (v23 < (v24 >> 1))
  {
    v25 = v14;
    v26 = *(v22 + v23);
    v27 = sub_100162694(v23 + 1);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    v32 = v60;
    v33 = v61;
    if (v29 == v31 >> 1)
    {
      v17 = v26;
      if (v26)
      {
        v57 = v27;
        v34 = v56;
        if (v26 == 1)
        {
          v66 = 1;
          sub_1000EF618();
          v35 = v55;
          sub_1000893B0();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v34)
          {
            swift_unknownObjectRelease();
            (*(v58 + 8))(v35, v32);
            v36 = sub_1000893A0();
            v37(v36);
LABEL_21:
            sub_100080F0C(v64);
            return v17;
          }
        }

        else
        {
          LODWORD(v60) = v26;
          v67 = 2;
          sub_1000EF5C4();
          v17 = v59;
          sub_1000893B0();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v34)
          {
            swift_unknownObjectRelease();
            (*(v33 + 8))(v17, v19);
            v51 = sub_1000893A0();
            v52(v51);
            v17 = v60;
            goto LABEL_21;
          }
        }

        v47 = sub_1000893A0();
        v48(v47);
      }

      else
      {
        v65 = 0;
        sub_1000EF66C();
        v43 = v54;
        sub_1000893B0();
        v44 = v56;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v44)
        {
          swift_unknownObjectRelease();
          (*(v57 + 8))(v43, v53);
          v49 = sub_100089250();
          v50(v49, v25);
          goto LABEL_21;
        }

        v45 = sub_100089250();
        v46(v45, v25);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v17 = v25;
LABEL_10:
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    sub_100080FB4(&qword_1003CC798, &qword_1002EBEF0);
    *v40 = &type metadata for SyncStrategy;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = sub_100089250();
    v42(v41, v17);
LABEL_11:
    a1 = v64;
LABEL_12:
    sub_100080F0C(a1);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000EF2C0(uint64_t a1)
{
  v2 = sub_1000EF618();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EF2FC(uint64_t a1)
{
  v2 = sub_1000EF618();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000EF340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EE8AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000EF368(uint64_t a1)
{
  v2 = sub_1000EF570();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EF3A4(uint64_t a1)
{
  v2 = sub_1000EF570();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000EF3E0(uint64_t a1)
{
  v2 = sub_1000EF5C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EF41C(uint64_t a1)
{
  v2 = sub_1000EF5C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000EF458(uint64_t a1)
{
  v2 = sub_1000EF66C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EF494(uint64_t a1)
{
  v2 = sub_1000EF66C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000EF4D0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EED2C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1000EF51C()
{
  result = qword_1003CE3A0;
  if (!qword_1003CE3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE3A0);
  }

  return result;
}

unint64_t sub_1000EF570()
{
  result = qword_1003CE3C8;
  if (!qword_1003CE3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE3C8);
  }

  return result;
}

unint64_t sub_1000EF5C4()
{
  result = qword_1003CE3D0;
  if (!qword_1003CE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE3D0);
  }

  return result;
}

unint64_t sub_1000EF618()
{
  result = qword_1003CE3D8;
  if (!qword_1003CE3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE3D8);
  }

  return result;
}

unint64_t sub_1000EF66C()
{
  result = qword_1003CE3E0;
  if (!qword_1003CE3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE3E0);
  }

  return result;
}

_BYTE *sub_1000EF6C8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000EF794);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000EF800()
{
  result = qword_1003CE408;
  if (!qword_1003CE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE408);
  }

  return result;
}

unint64_t sub_1000EF858()
{
  result = qword_1003CE410;
  if (!qword_1003CE410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE410);
  }

  return result;
}

unint64_t sub_1000EF8B0()
{
  result = qword_1003CE418;
  if (!qword_1003CE418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE418);
  }

  return result;
}

unint64_t sub_1000EF908()
{
  result = qword_1003CE420;
  if (!qword_1003CE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE420);
  }

  return result;
}

unint64_t sub_1000EF960()
{
  result = qword_1003CE428;
  if (!qword_1003CE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE428);
  }

  return result;
}

unint64_t sub_1000EF9B8()
{
  result = qword_1003CE430;
  if (!qword_1003CE430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE430);
  }

  return result;
}

unint64_t sub_1000EFA10()
{
  result = qword_1003CE438;
  if (!qword_1003CE438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE438);
  }

  return result;
}

unint64_t sub_1000EFA68()
{
  result = qword_1003CE440;
  if (!qword_1003CE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE440);
  }

  return result;
}

unint64_t sub_1000EFAC0()
{
  result = qword_1003CE448;
  if (!qword_1003CE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE448);
  }

  return result;
}

uint64_t sub_1000EFB1C(uint64_t a1)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1000EFB38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  if (sub_1001B57B8(*v2))
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08(&qword_1003CBE58);
    }

    v7 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v7, qword_1003F26C8);
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    sub_10008BFF4();
    LODWORD(v34) = [a1 processIdentifier];
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 0x6C7469746E45205DLL;
    v9._object = 0xEF20726F66206465;
    String.append(_:)(v9);
    LOBYTE(v34) = v6;
    _print_unlocked<A, B>(_:_:)();
    v10 = static os_log_type_t.default.getter();

    v11 = Logger.logObject.getter();

    if (os_log_type_enabled(v11, v10))
    {
      v12 = sub_10008E688();
      v13 = sub_10008E670();
      v35 = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_100080210(0, 0xE000000000000000, &v35);
      *(v12 + 12) = 2082;
      v14 = sub_100080210(0, 0xE000000000000000, &v35);

      *(v12 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v11, v10, "%{public}s%{public}s", v12, 0x16u);
      swift_arrayDestroy();
      sub_100081C28(v13);
      sub_100081C28(v12);
    }

    else
    {
    }

    sub_1000F2600(v3, a2);
    v29 = type metadata accessor for ExternalGatewayRequest(0);
    v30 = a2;
    v31 = 0;
    v32 = 1;
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08(&qword_1003CBE58);
    }

    v15 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v15, qword_1003F26C8);
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    sub_10008BFF4();
    LODWORD(v34) = [a1 processIdentifier];
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    v17._object = 0x8000000100317500;
    v17._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v17);
    LOBYTE(v34) = v6;
    _print_unlocked<A, B>(_:_:)();
    v18 = type metadata accessor for ExternalGatewayRequest(0);
    v19 = &v2[*(v18 + 40)];
    v21 = *v19;
    v20 = v19[1];
    v22 = static os_log_type_t.error.getter();

    v23 = Logger.logObject.getter();

    if (os_log_type_enabled(v23, v22))
    {
      v24 = sub_10008E688();
      v34 = sub_10008E670();
      v25 = v34;
      *v24 = 136446466;
      v35 = 91;
      v36 = 0xE100000000000000;
      v26._countAndFlagsBits = v21;
      v26._object = v20;
      String.append(_:)(v26);
      sub_10009F134();
      v27 = sub_100080210(91, 0xE100000000000000, &v34);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2082;
      v28 = sub_100080210(0, 0xE000000000000000, &v34);

      *(v24 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v23, v22, "%{public}s%{public}s", v24, 0x16u);
      swift_arrayDestroy();
      sub_100081C28(v25);
      sub_100081C28(v24);
    }

    else
    {
    }

    sub_1000B0690();
    v29 = v18;
  }

  return sub_100081DFC(v30, v31, v32, v29);
}

uint64_t sub_1000EFFC8()
{
  sub_10008BE9C();
  v1[23] = v2;
  v1[24] = v0;
  sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  v1[25] = swift_task_alloc();
  v3 = type metadata accessor for ExternalGatewayRequest(0);
  v1[26] = v3;
  sub_1000B046C(v3);
  v1[27] = v4;
  v1[28] = *(v5 + 64);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v6 = sub_100080FB4(&qword_1003CE450, &qword_1002F0B48);
  sub_1000B046C(v6);
  v1[31] = v7;
  v1[32] = *(v8 + 64);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  sub_100098AD0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000F0140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08(&qword_1003CBE58);
  }

  v17 = v16 + 344;
  v18 = *(v16 + 208);
  v19 = *(v16 + 184);
  v20 = *(v16 + 192);
  v21 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v21, qword_1003F26C8);
  _StringGuts.grow(_:)(43);

  v22 = *v20;
  *(v16 + 345) = v22;
  *(v16 + 176) = v22;
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0x20726F6620;
  v24._object = 0xE500000000000000;
  String.append(_:)(v24);
  v26 = *(v19 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v25._object = *(v19 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);
  v25._countAndFlagsBits = v26;
  object = v25._object;
  String.append(_:)(v25);
  v27 = &v20[*(v18 + 40)];
  v28 = *v27;
  *(v16 + 288) = *v27;
  v29 = v27[1];
  *(v16 + 296) = v29;
  v30 = static os_log_type_t.debug.getter();

  v31 = Logger.logObject.getter();

  if (os_log_type_enabled(v31, v30))
  {
    v32 = sub_10008E688();
    v81 = v26;
    v33 = sub_10008E670();
    v86 = v33;
    *v32 = 136446466;
    v34._countAndFlagsBits = v28;
    v34._object = v29;
    String.append(_:)(v34);
    sub_10009F134();
    v29 = sub_100080210(91, 0xE100000000000000, &v86);

    *(v32 + 4) = v29;
    *(v32 + 12) = 2082;
    v35 = sub_100080210(0xD000000000000022, 0x8000000100317520, &v86);

    *(v32 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v31, v30, "%{public}s%{public}s", v32, 0x16u);
    swift_arrayDestroy();
    v36 = v33;
    v26 = v81;
    sub_100081C28(v36);
    v37 = v32;
    v17 = v16 + 344;
    sub_100081C28(v37);
  }

  else
  {
  }

  sub_1000F14CC(v26, object);
  if (v22 == 4)
  {
    type metadata accessor for ExternalGatewaySheet(0);
    sub_1000B0690();
    sub_100081DFC(v38, v39, v40, v41);
    v42 = *(v16 + 192);
    if (*(v42 + 16) == 2)
    {
      sub_1000F2E48();
      if (v26 == 1)
      {
        v85 = *(v16 + 345);
        sub_1000F2DAC();
        v83 = v43;
        v80 = v44;
        v82 = *(v16 + 184);
        type metadata accessor for TaskPriority();
        sub_1000B0690();
        sub_100081DFC(v45, v46, v47, v48);
        sub_1000B75B8(0x8000000100317520, v22, &qword_1003CE450, &qword_1002F0B48);
        sub_1000B75B8(v16 + 16, v16 + 96, &qword_1003CE458, &qword_1002FC1D0);
        sub_1000F2600(v42, v29);
        sub_1000F2D48();
        v49 = swift_allocObject();
        v49[2] = 0;
        v49[3] = 0;
        v49[4] = v82;
        sub_1000F2664(v22, (v49 - 0xFFFFFFFDFF9D15CLL));
        sub_1000F2E00();
        v50 = (v49 + ((v80 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v50 = v83;
        v50[1] = 2;
        v51 = v82;
        v52 = sub_1000F2C90();
        sub_100235408(v52, v53, v17, v54, v49);
        *(v16 + 320) = v55;
        if ((v85 & 0xFFFFFFFD) != 0)
        {
          v56 = swift_task_alloc();
          *(v16 + 328) = v56;
          sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
          *v56 = v16;
          sub_1000F2CB0();
          sub_1000F2D98();
          sub_1000F2E70();

          return Task.value.getter(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16);
        }
      }

      else
      {
      }

      sub_1000F2F5C(v73, v74, &qword_1003CE458, &qword_1002FC1D0);
      sub_1000F2EF8();
      if (v26)
      {
        v75 = sub_1000F2CD0();
        v76(v75);
        sub_1000F2F04();
        sub_1000AF25C(v16 + 16, &qword_1003CE458, &qword_1002FC1D0);
        sub_1000AF25C(v29, &qword_1003CE450, &qword_1002F0B48);
        sub_100080F0C((v16 + 56));
      }

      else
      {
        sub_1000F2E2C();
        sub_1000AF25C(v29, &qword_1003CE450, &qword_1002F0B48);
        sub_1000F2DC8();
        sub_1000F2EEC();
      }

      sub_1000F2D78();

      sub_1000F2D04();
      sub_1000F2E70();

      return v77();
    }

    else
    {
      sub_1000F2EA0();

      swift_task_alloc();
      sub_1000F2F10();
      *(v16 + 312) = v70;
      *v70 = v71;
      sub_1000F2D1C(v70);
      sub_1000F2E88();
      sub_1000F2E70();

      return sub_10018F288();
    }
  }

  else
  {
    v65 = *(v16 + 184);
    sub_1000F2600(*(v16 + 192), *(v16 + 240));
    v66 = v65;
    swift_task_alloc();
    sub_1000F2F10();
    *(v16 + 304) = v67;
    *v67 = v68;
    v67[1] = sub_1000F0790;
    sub_1000F2E70();

    return sub_100244D30();
  }
}

uint64_t sub_1000F0790()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_10008BEFC();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;

  if (v0)
  {
    *(v3 + 346) = *(v3 + 344);
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000F0890()
{
  sub_1000B0004();
  v1 = *(v0 + 346);
  v2 = sub_10008B5E0();
  sub_1000894A0(&type metadata for StoreKitInternalError, v2);
  *v3 = v1;
  sub_1000F2EB8();

  sub_100098AC4();

  return v4();
}

uint64_t sub_1000F0940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v21 = *(v17 + 272);
  v22 = *(v17 + 280);
  v23 = type metadata accessor for ExternalGatewaySheet(0);
  sub_100081DFC(v21, 0, 1, v23);
  sub_1000F2664(v21, v22);
  v24 = *(v17 + 192);
  if (*(v24 + 16) == 2)
  {
    sub_1000F2E48();
    if (v21 == 1)
    {
      v60 = *(v17 + 345);
      sub_1000F2DAC();
      v59 = v25;
      v57 = v26;
      v58 = *(v17 + 184);
      type metadata accessor for TaskPriority();
      sub_1000B0690();
      sub_100081DFC(v27, v28, v29, v30);
      sub_1000B75B8(v19, v18, &qword_1003CE450, &qword_1002F0B48);
      sub_1000B75B8(v17 + 16, v17 + 96, &qword_1003CE458, &qword_1002FC1D0);
      sub_1000F2600(v24, v16);
      sub_1000F2D48();
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v58;
      sub_1000F2664(v18, v31 + v19);
      sub_1000F2E00();
      v32 = (v31 + ((v57 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v32 = v59;
      v32[1] = 2;
      v33 = v58;
      v34 = sub_1000F2C90();
      sub_100235408(v34, v35, v20, v36, v31);
      *(v17 + 320) = v37;
      if ((v60 & 0xFFFFFFFD) != 0)
      {
        v38 = swift_task_alloc();
        *(v17 + 328) = v38;
        sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
        *v38 = v17;
        sub_1000F2CB0();
        sub_1000F2D98();
        sub_1000F2ED4();

        return Task.value.getter(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16);
      }
    }

    else
    {
    }

    sub_1000F2F5C(v50, v51, &qword_1003CE458, &qword_1002FC1D0);
    sub_1000F2EF8();
    if (v21)
    {
      v52 = sub_1000F2CD0();
      v53(v52);
      sub_1000F2F04();
      sub_1000AF25C(v17 + 16, &qword_1003CE458, &qword_1002FC1D0);
      sub_1000AF25C(v16, &qword_1003CE450, &qword_1002F0B48);
      sub_100080F0C((v17 + 56));
    }

    else
    {
      sub_1000F2E2C();
      sub_1000AF25C(v16, &qword_1003CE450, &qword_1002F0B48);
      sub_1000F2DC8();
      sub_1000F2EEC();
    }

    sub_1000F2D78();

    sub_1000F2D04();
    sub_1000F2ED4();

    return v54();
  }

  else
  {
    sub_1000F2EA0();

    swift_task_alloc();
    sub_1000F2F10();
    *(v17 + 312) = v47;
    *v47 = v48;
    sub_1000F2D1C(v47);
    sub_1000F2E88();
    sub_1000F2ED4();

    return sub_10018F288();
  }
}

uint64_t sub_1000F0CB0()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_10008BEFC();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;

  if (v0)
  {
    *(v3 + 347) = *(v3 + 344);
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000F0DB8()
{
  sub_1000B0004();
  v1 = *(v0 + 347);
  v2 = *(v0 + 280);
  v3 = sub_10008B5E0();
  sub_1000894A0(&type metadata for StoreKitInternalError, v3);
  *v4 = v1;
  sub_1000AF25C(v2, &qword_1003CE450, &qword_1002F0B48);
  sub_1000F2EB8();

  sub_100098AC4();

  return v5();
}

uint64_t sub_1000F0E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = *(v18 + 152);
  *(v18 + 16) = *(v18 + 136);
  *(v18 + 32) = v19;
  *(v18 + 48) = *(v18 + 168);
  v20 = *(v18 + 192);
  if (*(v20 + 24) == 1)
  {
    v62 = *(v18 + 345);
    v21 = *(v18 + 280);
    v60 = *(v18 + 288);
    v61 = *(v18 + 296);
    v22 = *(v18 + 256);
    v17 = *(v18 + 264);
    v23 = *(v18 + 248);
    v16 = *(v18 + 232);
    v59 = *(v18 + 224);
    v24 = *(v18 + 216);
    v25 = *(v18 + 200);
    v26 = *(v18 + 184);
    type metadata accessor for TaskPriority();
    sub_1000B0690();
    sub_100081DFC(v27, v28, v29, v30);
    sub_1000B75B8(v21, v17, &qword_1003CE450, &qword_1002F0B48);
    sub_1000B75B8(v18 + 16, v18 + 96, &qword_1003CE458, &qword_1002FC1D0);
    sub_1000F2600(v20, v16);
    v31 = (*(v23 + 80) + 40) & ~*(v23 + 80);
    v32 = (v22 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = (*(v24 + 80) + v32 + 40) & ~*(v24 + 80);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v26;
    sub_1000F2664(v17, v34 + v31);
    v35 = v34 + v32;
    v36 = *(v18 + 112);
    *v35 = *(v18 + 96);
    *(v35 + 1) = v36;
    *(v35 + 4) = *(v18 + 128);
    sub_1000F2A08(v16, v34 + v33);
    v37 = (v34 + ((v59 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v37 = v60;
    v37[1] = v61;
    v38 = v26;
    v39 = sub_1000F2C90();
    sub_100235408(v39, v40, v25, v41, v34);
    *(v18 + 320) = v42;
    if ((v62 & 0xFFFFFFFD) != 0)
    {
      v43 = swift_task_alloc();
      *(v18 + 328) = v43;
      sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
      *v43 = v18;
      sub_1000F2CB0();
      sub_1000F2D98();
      sub_1000F2ED4();

      return Task.value.getter(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16);
    }
  }

  else
  {
  }

  sub_1000F2F5C(v52, v53, &qword_1003CE458, &qword_1002FC1D0);
  sub_1000F2EF8();
  if (v16)
  {
    v54 = sub_1000F2CD0();
    v55(v54);
    sub_1000F2F04();
    sub_1000AF25C(v18 + 16, &qword_1003CE458, &qword_1002FC1D0);
    sub_1000AF25C(v17, &qword_1003CE450, &qword_1002F0B48);
    sub_100080F0C((v18 + 56));
  }

  else
  {
    sub_1000F2E2C();
    sub_1000AF25C(v17, &qword_1003CE450, &qword_1002F0B48);
    sub_1000F2DC8();
    sub_1000F2EEC();
  }

  sub_1000F2D78();

  sub_1000F2D04();
  sub_1000F2ED4();

  return v56();
}

uint64_t sub_1000F11C0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 336) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000F12BC()
{

  sub_1000F2F5C(v3, v4, &qword_1003CE458, &qword_1002FC1D0);
  sub_1000F2EF8();
  if (v0)
  {
    v5 = sub_1000F2CD0();
    v6(v5);
    sub_1000F2F04();
    sub_1000AF25C(v2 + 16, &qword_1003CE458, &qword_1002FC1D0);
    sub_1000AF25C(v1, &qword_1003CE450, &qword_1002F0B48);
    sub_100080F0C((v2 + 56));
  }

  else
  {
    sub_1000F2E2C();
    sub_1000AF25C(v1, &qword_1003CE450, &qword_1002F0B48);
    sub_1000F2DC8();
    sub_1000F2EEC();
  }

  sub_1000F2D78();

  v7 = sub_1000F2D04();

  return v8(v7);
}

uint64_t sub_1000F13FC()
{
  sub_1000B0004();
  v1 = *(v0 + 280);

  sub_1000AF25C(v0 + 16, &qword_1003CE458, &qword_1002FC1D0);
  sub_1000AF25C(v1, &qword_1003CE450, &qword_1002F0B48);
  sub_1000F2EB8();

  sub_100098AC4();

  return v2();
}

void sub_1000F14CC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v5 - 8);
  sub_100080FB4(&qword_1003D30B0, &unk_1002ED4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED020;
  *(inited + 32) = 0x6449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 120) = &type metadata for Int;
  v7 = *v2;
  *(inited + 88) = 0x8000000100317590;
  *(inited + 96) = v7;

  Dictionary.init(dictionaryLiteral:)();
  v8 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v36 = 0;
  v10 = [v8 dataWithJSONObject:isa options:0 error:&v36];

  v11 = v36;
  if (v10)
  {
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    static String.Encoding.utf8.getter();
    v15 = String.init(data:encoding:)();
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      if (qword_1003CBE58 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for SKLogger(0);
      sub_10007EDA4(v19, qword_1003F26C8);
      v20 = static os_log_type_t.default.getter();

      v21 = Logger.logObject.getter();

      if (os_log_type_enabled(v21, v20))
      {
        v22 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v22 = 136446466;
        *(v22 + 4) = sub_100080210(0, 0xE000000000000000, &v36);
        *(v22 + 12) = 2082;
        v23 = sub_100080210(v17, v18, &v36);

        *(v22 + 14) = v23;
        _os_log_impl(&_mh_execute_header, v21, v20, "%{public}s%{public}s", v22, 0x16u);
        swift_arrayDestroy();

        sub_10008E168(v12, v14);
      }

      else
      {
        sub_10008E168(v12, v14);
      }

      return;
    }

    sub_10008E168(v12, v14);
  }

  else
  {
    v24 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v25, qword_1003F26C8);
  v26 = &v2[*(type metadata accessor for ExternalGatewayRequest(0) + 40)];
  v27 = *v26;
  v28 = v26[1];
  v29 = static os_log_type_t.error.getter();

  v30 = Logger.logObject.getter();

  if (os_log_type_enabled(v30, v29))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 136446466;
    v36 = 91;
    v37 = 0xE100000000000000;
    v38 = v32;
    v33._countAndFlagsBits = v27;
    v33._object = v28;
    String.append(_:)(v33);
    v34._countAndFlagsBits = 8285;
    v34._object = 0xE200000000000000;
    String.append(_:)(v34);
    v35 = sub_100080210(v36, v37, &v38);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2082;
    *(v31 + 14) = sub_100080210(0xD000000000000032, 0x80000001003175B0, &v38);
    _os_log_impl(&_mh_execute_header, v30, v29, "%{public}s%{public}s", v31, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000F19FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a8;
  v8[27] = v12;
  v8[24] = a6;
  v8[25] = a7;
  v8[22] = a4;
  v8[23] = a5;
  sub_100080FB4(&qword_1003CE450, &qword_1002F0B48);
  v8[28] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v8[29] = v9;
  v8[30] = *(v9 - 8);
  v8[31] = swift_task_alloc();

  return _swift_task_switch(sub_1000F1B04, 0, 0);
}

uint64_t sub_1000F1B04()
{
  sub_1000B0004();
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[22];
  v4 = v0[23];
  v5 = *(v3 + OBJC_IVAR____TtC9storekitd6Client_callerBundleID);
  v6 = *(v3 + OBJC_IVAR____TtC9storekitd6Client_callerBundleID + 8);
  (*(v0[30] + 16))(v1, v3 + OBJC_IVAR____TtC9storekitd6Client_callerBundleURL, v0[29]);

  v7 = sub_1001A8808();
  v8 = objc_allocWithZone(type metadata accessor for DialogContext(0));
  v9 = sub_10019E3E0(v5, v6, v1, v7, 0);
  v0[32] = v9;
  sub_1000B75B8(v4, v2, &qword_1003CE450, &qword_1002F0B48);
  v10 = type metadata accessor for ExternalGatewaySheet(0);
  if (sub_100081D0C(v2, 1, v10) == 1)
  {
    v11 = v0[28];

    sub_1000AF25C(v11, &qword_1003CE450, &qword_1002F0B48);

    sub_100098AC4();

    return v12();
  }

  else
  {
    v0[33] = type metadata accessor for ExternalGatewayRequest(0);
    v14 = swift_task_alloc();
    v0[34] = v14;
    *v14 = v0;
    v14[1] = sub_1000F1CF8;

    return sub_100246A38();
  }
}

uint64_t sub_1000F1CF8()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_10008BEFC();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (!v0)
  {
    sub_1000F2C1C(*(v3 + 224));
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000F1DFC()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v1();
}

uint64_t sub_1000F1E6C()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000F1F54()
{
  sub_100080F0C((v0 + 16));
  swift_getErrorValue();
  if (sub_100184DA8(*(v0 + 104), *(v0 + 112)))
  {
    v1 = sub_10008B5E0();
    v2 = sub_1000894A0(&type metadata for StoreKitInternalError, v1);
    sub_1000F2F3C(v2, v3);
  }

  else
  {
    swift_willThrow();
  }

  sub_100098AC4();

  return v4();
}

uint64_t sub_1000F2028()
{
  v53 = v0;
  sub_1000F2C1C(*(v0 + 224));
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08(&qword_1003CBE58);
  }

  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 200);
  v4 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v4, qword_1003F26C8);
  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);
  *(v0 + 120) = 0;
  *(v0 + 128) = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  v5._object = 0x8000000100317550;
  String.append(_:)(v5);
  *(v0 + 296) = *v3;
  _print_unlocked<A, B>(_:_:)();
  v6._countAndFlagsBits = 8250;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  *(v0 + 152) = v1;
  sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
  _print_unlocked<A, B>(_:_:)();
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  v9 = &v3[*(v2 + 40)];
  v11 = *v9;
  v10 = v9[1];
  v12 = static os_log_type_t.error.getter();

  v13 = Logger.logObject.getter();

  v49 = v11;
  if (os_log_type_enabled(v13, v12))
  {
    v14 = sub_10008E688();
    v15 = v7;
    v16 = sub_10008E670();
    sub_1000F2DE4(4.8752e-34);
    v17._countAndFlagsBits = v11;
    v17._object = v10;
    String.append(_:)(v17);
    sub_10009F134();
    v18 = sub_100080210(v51, v52, &v50);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v19 = sub_100080210(v15, v8, &v50);

    *(v14 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
    swift_arrayDestroy();
    sub_100081C28(v16);
    sub_100081C28(v14);
  }

  else
  {
  }

  sub_1000B75B8(*(v0 + 192), v0 + 56, &qword_1003CE458, &qword_1002FC1D0);
  if (*(v0 + 80))
  {
    v20 = *(v0 + 280);
    sub_1000F2C78((v0 + 56), v0 + 16);
    swift_errorRetain();
    v21 = _convertErrorToNSError(_:)();
    v22 = [v21 isCancelledError];

    v51 = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    v23 = v52;
    *(v0 + 136) = v51;
    *(v0 + 144) = v23;
    v24._object = 0x8000000100317570;
    v24._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v24);
    *(v0 + 297) = v22 ^ 1;
    _print_unlocked<A, B>(_:_:)();
    v25._countAndFlagsBits = 0x72726520726F6620;
    v25._object = 0xEB0000000020726FLL;
    String.append(_:)(v25);
    *(v0 + 168) = v20;
    _print_unlocked<A, B>(_:_:)();
    v27 = *(v0 + 136);
    v26 = *(v0 + 144);
    v28 = static os_log_type_t.default.getter();

    v29 = Logger.logObject.getter();

    if (os_log_type_enabled(v29, v28))
    {
      v30 = sub_10008E688();
      v31 = sub_10008E670();
      sub_1000F2DE4(4.8752e-34);
      v32._countAndFlagsBits = v49;
      v32._object = v10;
      String.append(_:)(v32);
      sub_10009F134();
      v33 = sub_100080210(v51, v52, &v50);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2082;
      v34 = sub_100080210(v27, v26, &v50);

      *(v30 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v29, v28, "%{public}s%{public}s", v30, 0x16u);
      swift_arrayDestroy();
      sub_100081C28(v31);
      sub_100081C28(v30);
    }

    else
    {
    }

    swift_task_alloc();
    sub_1000F2F10();
    *(v0 + 288) = v38;
    *v38 = v39;
    v38[1] = sub_1000F1E6C;
    sub_1000F2E70();

    return sub_1001914BC(v40, v41, v42, v43, v44);
  }

  else
  {
    sub_1000AF25C(v0 + 56, &qword_1003CE458, &qword_1002FC1D0);
    swift_getErrorValue();
    if (sub_100184DA8(*(v0 + 104), *(v0 + 112)))
    {
      v35 = sub_10008B5E0();
      v36 = sub_1000894A0(&type metadata for StoreKitInternalError, v35);
      sub_1000F2F3C(v36, v37);
    }

    else
    {
      swift_willThrow();
    }

    sub_100098AC4();
    sub_1000F2E70();

    return v47();
  }
}

uint64_t sub_1000F2600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalGatewayRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F2664(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&qword_1003CE450, &qword_1002F0B48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F26D4()
{
  v2 = sub_100080FB4(&qword_1003CE450, &qword_1002F0B48);
  sub_1000B046C(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for ExternalGatewayRequest(0);
  v9 = *(*(v8 - 8) + 80);
  v24 = *(*(v8 - 8) + 64);
  swift_unknownObjectRelease();

  v10 = (v0 + v5);
  v11 = type metadata accessor for ExternalGatewaySheet(0);
  if (!sub_1000F2F1C(v11))
  {

    v12 = v1[5];
    v13 = type metadata accessor for URL();
    if (!sub_100081D0C(v10 + v12, 1, v13))
    {
      (*(*(v13 - 8) + 8))(v10 + v12, v13);
    }
  }

  v14 = (v7 + v9 + 40) & ~v9;
  if (*(v0 + v7 + 24))
  {
    sub_100080F0C((v0 + v7));
  }

  if (*(v0 + v14 + 16) >= 3uLL)
  {
  }

  v15 = (v0 + v14 + *(v8 + 28));
  v16 = type metadata accessor for ClientOverride(0);
  if (!sub_1000F2F1C(v16))
  {
    v17 = v15[1];
    if (v17 >> 60 != 15)
    {
      sub_10008E168(*v15, v17);
    }

    v18 = v1[7];
    v19 = sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
    if (!sub_100081D0C(v15 + v18, 3, v19))
    {
      type metadata accessor for URL();
      sub_100098B7C();
      (*(v20 + 8))(v15 + v18);
    }

    v21 = v1[10];
    v22 = type metadata accessor for UUID();
    if (!sub_100081D0C(v15 + v21, 1, v22))
    {
      (*(*(v22 - 8) + 8))(v15 + v21, v22);
    }
  }

  return _swift_deallocObject(v0, ((v24 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v4 | v9 | 7);
}

uint64_t sub_1000F2A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalGatewayRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F2A6C(uint64_t a1)
{
  v3 = sub_100080FB4(&qword_1003CE450, &qword_1002F0B48);
  sub_1000B046C(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for ExternalGatewayRequest(0);
  sub_1000B046C(v8);
  v10 = (v7 + *(v9 + 80) + 40) & ~*(v9 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  v15 = *(v1 + ((*(v11 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v2 + 16) = v16;
  *v16 = v2;
  v16[1] = sub_1000A7644;

  return sub_1000F19FC(a1, v12, v13, v14, v1 + v5, v1 + v7, v1 + v10, v15);
}

uint64_t sub_1000F2C1C(uint64_t a1)
{
  v2 = type metadata accessor for ExternalGatewaySheet(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F2C78(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000F2D78()
{
}

uint64_t sub_1000F2DC8()
{

  return sub_1000AF25C(v2 + 56, v1, v0);
}

uint64_t sub_1000F2E00()
{
  v6 = v3 + v4;
  v7 = *(v2 + 112);
  *v6 = *(v2 + 96);
  *(v6 + 16) = v7;
  *(v6 + 32) = *(v2 + 128);

  return sub_1000F2A08(v1, v3 + v0);
}

uint64_t sub_1000F2E2C()
{

  return sub_1000AF25C(v2 + 16, v1, v0);
}

uint64_t sub_1000F2E48()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
}

uint64_t sub_1000F2EB8()
{
}

uint64_t sub_1000F2F1C(uint64_t a1)
{

  return sub_100081D0C(v1, 1, a1);
}

uint64_t sub_1000F2F3C(uint64_t a1, _BYTE *a2)
{
  *a2 = 11;

  return swift_willThrow();
}

uint64_t sub_1000F2F5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1000B75B8(v4 + 16, v4 + 56, a3, a4);
}

id sub_1000F2F74()
{
  sub_10001E104();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100106CE0();
  String._bridgeToObjectiveC()();
  sub_1000B02A4();
  v3 = [v0 initWithString:v1];

  return v3;
}

unint64_t sub_1000F3004(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100080FB4(&qword_1003CE650, &qword_1002FB720);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1001060C4(*(a1 + 48) + 40 * v10, __src);
    sub_100080F58(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1001060C4(__dst, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_100080F58(&__dst[40], v20);
    sub_1000AF25C(__dst, &qword_1003CE658, &unk_1002F94B0);
    v21 = v18;
    sub_10008B5D0(v20, v22);
    v11 = v21;
    sub_10008B5D0(v22, v23);
    sub_10008B5D0(v23, &v21);
    result = sub_1000B6328(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      *(v2[6] + 16 * result) = v11;

      v14 = (v2[7] + 32 * v12);
      sub_100080F0C(v14);
      result = sub_10008B5D0(&v21, v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_10008B5D0(&v21, (v2[7] + 32 * result));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

  sub_1000AF25C(__dst, &qword_1003CE658, &unk_1002F94B0);

  return 0;
}

BOOL sub_1000F32BC(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_1000F3320(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  sub_100098AD0();
  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000F334C()
{
  sub_1000B061C();
  sub_1000B0004();
  v1 = [objc_allocWithZone(AMSURLParser) initWithBag:v0[20]];
  v0[21] = v1;
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v0[22] = [v1 typeForURL:v3];

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000F34B0;
  v5 = swift_continuation_init();
  v6 = sub_100080FB4(&qword_1003CE660, &qword_1002F0C28);
  v0[17] = v6;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000F2FD8;
  v0[13] = &unk_100388B88;
  v0[14] = v5;
  sub_100107944(v6, "resultWithCompletion:");
  sub_1000B0518();

  return _swift_continuation_await(v7);
}

uint64_t sub_1000F34B0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000F35AC()
{
  sub_100098BB4();
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[18];
  v4 = [v3 integerValue];

  sub_10009F198();

  return v5(v4);
}

uint64_t sub_1000F3634()
{
  sub_100098BB4();
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  swift_willThrow();

  sub_100098AC4();

  return v3();
}

NSString sub_1000F36A4()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE460 = result;
  return result;
}

NSString sub_1000F36DC()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE468 = result;
  return result;
}

NSString sub_1000F371C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE470 = result;
  return result;
}

NSString sub_1000F3754()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE478 = result;
  return result;
}

NSString sub_1000F3780()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE480 = result;
  return result;
}

NSString sub_1000F37B8()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE488 = result;
  return result;
}

NSString sub_1000F37F4()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE490 = result;
  return result;
}

NSString sub_1000F382C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE498 = result;
  return result;
}

NSString sub_1000F3864()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4A0 = result;
  return result;
}

NSString sub_1000F38A4()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4A8 = result;
  return result;
}

NSString sub_1000F38E4()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4B0 = result;
  return result;
}

NSString sub_1000F391C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4B8 = result;
  return result;
}

NSString sub_1000F395C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4C0 = result;
  return result;
}

NSString sub_1000F399C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4C8 = result;
  return result;
}

NSString sub_1000F39D4()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4D0 = result;
  return result;
}

NSString sub_1000F3A0C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4D8 = result;
  return result;
}

NSString sub_1000F3A4C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4E0 = result;
  return result;
}

NSString sub_1000F3A84()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4E8 = result;
  return result;
}

NSString sub_1000F3AAC()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4F0 = result;
  return result;
}

NSString sub_1000F3AEC()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE4F8 = result;
  return result;
}

NSString sub_1000F3B24()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE500 = result;
  return result;
}

NSString sub_1000F3B5C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE508 = result;
  return result;
}

NSString sub_1000F3B94()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE510 = result;
  return result;
}

NSString sub_1000F3BC8()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE518 = result;
  return result;
}

NSString sub_1000F3C00()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE520 = result;
  return result;
}

NSString sub_1000F3C3C()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE528 = result;
  return result;
}

NSString sub_1000F3C78()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE530 = result;
  return result;
}

NSString sub_1000F3CB0()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE538 = result;
  return result;
}

NSString sub_1000F3CEC()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE540 = result;
  return result;
}

NSString sub_1000F3D24()
{
  result = String._bridgeToObjectiveC()();
  qword_1003CE548 = result;
  return result;
}

uint64_t sub_1000F3D58(id a1)
{
  if (qword_1003CBCF8 != -1)
  {
    swift_once();
  }

  v2 = qword_1003CE4C8;
  v3 = [a1 objectForKeyedSubscript:qword_1003CE4C8];
  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (*(&v25 + 1))
  {
    if (sub_100107D44(v3, v4, v5, &type metadata for String, v6, v7, v8, v9, v21, v23, v24, *(&v24 + 1), v25, *(&v25 + 1), v26))
    {
      v10 = v21 == 1702195828 && v23 == 0xE400000000000000;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v21 == 49 ? (v11 = v23 == 0xE100000000000000) : (v11 = 0), v11))
      {

        return 1;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        return 1;
      }
    }
  }

  else
  {
    sub_1000AF25C(&v26, &unk_1003CCB70, &unk_1002ED050);
  }

  v13 = [a1 objectForKeyedSubscript:v2];
  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    v13 = swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (*(&v25 + 1))
  {
    if (sub_100107D44(v13, v14, v15, &type metadata for Bool, v16, v17, v18, v19, v21, v23, v24, *(&v24 + 1), v25, *(&v25 + 1), v26))
    {
      return v22;
    }
  }

  else
  {
    sub_1000AF25C(&v26, &unk_1003CCB70, &unk_1002ED050);
  }

  return 0;
}

uint64_t sub_1000F3FA0()
{
  sub_10008BE9C();
  *(v1 + 1792) = v0;
  *(v1 + 1681) = v2;
  v3 = type metadata accessor for URL();
  *(v1 + 1800) = v3;
  sub_1000B046C(v3);
  *(v1 + 1808) = v4;
  *(v1 + 1816) = sub_1000B05D0();
  v5 = type metadata accessor for UUID();
  *(v1 + 1824) = v5;
  sub_1000B046C(v5);
  *(v1 + 1832) = v6;
  *(v1 + 1840) = sub_1000B05D0();
  v7 = sub_100080FB4(&qword_1003CE608, &qword_1002F0C18);
  sub_1000B01B0(v7);
  *(v1 + 1848) = sub_1000B05D0();
  v8 = type metadata accessor for PurchaseIntentInternal(0);
  *(v1 + 1856) = v8;
  sub_1000B01B0(v8);
  *(v1 + 1864) = sub_1000B05D0();
  v9 = type metadata accessor for Date();
  *(v1 + 1872) = v9;
  sub_1000B046C(v9);
  *(v1 + 1880) = v10;
  *(v1 + 1888) = *(v11 + 64);
  *(v1 + 1896) = sub_1001078CC();
  *(v1 + 1904) = swift_task_alloc();
  v12 = type metadata accessor for Client.Server(0);
  sub_1000B01B0(v12);
  *(v1 + 1912) = sub_1001078CC();
  *(v1 + 1920) = swift_task_alloc();
  v13 = sub_100080FB4(&unk_1003CE610, &unk_1002F8550);
  sub_1000B01B0(v13);
  *(v1 + 1928) = sub_1000B05D0();
  v14 = sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  sub_1000B01B0(v14);
  *(v1 + 1936) = sub_1000B05D0();
  v15 = type metadata accessor for NSFastEnumerationIterator();
  *(v1 + 1944) = v15;
  sub_1000B046C(v15);
  *(v1 + 1952) = v16;
  *(v1 + 1960) = sub_1000B05D0();
  sub_100098AD0();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_1000F4244()
{
  sub_1000B061C();
  sub_1000B0004();
  v3 = *(v1 + 1792);
  *(v1 + 1968) = [objc_allocWithZone(AMSBuyParams) init];
  if ([v3 apiVersion] == 1 || (v4 = sub_1001056B8(*(v1 + 1792), &selRef_customBuyParams), (*(v1 + 1976) = v4) == 0))
  {
    *(v1 + 2032) = 0;
    v11 = [*(v1 + 1792) client];
    v12 = sub_1001A7AB4();

    if (qword_1003CC028 != -1)
    {
      sub_100106700(&qword_1003CC028);
    }

    sub_100107AE0();
    sub_1001074E8([v12 arrayForKey:qword_1003F2890]);
    sub_1001073D8();
    *(v1 + 16) = v13;
    *(v1 + 56) = v1 + 1672;
    sub_1001066CC();
    v14 = sub_100080FB4(&qword_1003CE620, &qword_1002F0C20);
    sub_10010647C(v14);
    sub_100107AD4(COERCE_DOUBLE(1107296256));
    sub_10010649C();
    [v2 valueWithCompletion:v0];
  }

  else
  {
    v5 = [*(v1 + 1792) client];
    v6 = sub_1001A7AB4();

    if (qword_1003CBEB0 != -1)
    {
      swift_once();
    }

    v7 = [v6 arrayForKey:qword_1003F2718];
    *(v1 + 1984) = v7;
    swift_unknownObjectRelease();
    sub_1001073D8();
    *(v1 + 144) = v8;
    *(v1 + 184) = v1 + 1704;
    *(v1 + 152) = sub_1000F4524;
    v9 = sub_1000B0500();
    v10 = sub_100080FB4(&qword_1003CE620, &qword_1002F0C20);
    *(v1 + 1992) = v10;
    *(v1 + 456) = v10;
    *(v1 + 400) = _NSConcreteStackBlock;
    *(v1 + 408) = 1107296256;
    *(v1 + 416) = sub_1000FF948;
    *(v1 + 424) = &unk_1003884F8;
    *(v1 + 432) = v9;
    [v7 valueWithCompletion:v1 + 400];
  }

  sub_1000B0518();

  return _swift_continuation_await(v15);
}

uint64_t sub_1000F4524()
{
  sub_10008BE9C();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2000) = *(v3 + 176);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000F4650()
{
  sub_1000B02BC();
  v1 = v0[248];
  v2 = v0[224];
  v0[251] = v0[213];

  v3 = [v2 client];
  v4 = sub_1001A7AB4();

  if (qword_1003CC010 != -1)
  {
    swift_once();
  }

  v5 = v0[249];
  v0[252] = [v4 arrayForKey:qword_1003F2878];
  swift_unknownObjectRelease();
  sub_1001073D8();
  v0[10] = v6;
  v0[15] = v0 + 211;
  v0[11] = sub_1000F4810;
  v7 = sub_1000B0500();
  v0[49] = v5;
  v0[42] = _NSConcreteStackBlock;
  v0[43] = 1107296256;
  v0[44] = sub_1000FF948;
  v0[45] = &unk_1003886B0;
  v0[46] = v7;
  sub_100107944(v7, "valueWithCompletion:");

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_1000F4810()
{
  sub_10008BE9C();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2024) = *(v3 + 112);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000F493C()
{
  v306 = v1;
  sub_100107AA8();
  v2 = *(v1 + 1688);

  if (!v2)
  {
    sub_10008E5A4(0, &qword_1003CE638, NSArray_ptr);
    v2 = NSArray.init(arrayLiteral:)();
  }

  v299 = (v1 + 624);
  v293 = (v1 + 1232);
  v246 = v2;
  NSArray.makeIterator()();
  sub_1000C446C();
  v298 = v3;
  v291 = "allowedBuyParams";
  v295 = 0xD000000000000010;
  *(&v4 + 1) = 12;
  v284 = xmmword_1002F0B70;
  *&v4 = 136446466;
  v297 = v4;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        NSFastEnumerationIterator.next()();
        if (!*(v1 + 1416))
        {
          v80 = sub_100107B78();
          v81(v80);
          v82 = _swiftEmptyArrayStorage;
          goto LABEL_34;
        }

        sub_10008B5D0((v1 + 1392), (v1 + 1264));
        sub_100080F58(v1 + 1264, v1 + 1168);
        v5 = sub_100080FB4(&unk_1003CE640, &unk_1002F94C0);
        v6 = sub_100107854(v5);
        if (v6)
        {
          break;
        }

LABEL_12:
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          v6 = swift_once();
        }

        v16 = sub_100107660(v6, v7, v8);
        v17 = sub_10007EDA4(v16, qword_1003F26C8);
        sub_100106C30();
        _StringGuts.grow(_:)(49);
        *(v1 + 1656) = v303;
        *(v1 + 1664) = v304;
        sub_1001072C0();
        sub_100107DA4(v18);
        _print_unlocked<A, B>(_:_:)();
        v300 = *(v1 + 1656);
        v19 = *(v1 + 1664);
        v20 = [v0 logKey];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        v0 = static os_log_type_t.error.getter();

        v22 = Logger.logObject.getter();

        if (os_log_type_enabled(v22, v0))
        {
          v23 = sub_10008E688();
          v24 = sub_10008E670();
          *v23 = sub_10010715C(v24, v25, v26, v27, v28, v29, v30, v31, v246, v251, v256, v262, v267, v271, v274, v276, v279, v282, v284, *(&v284 + 1), v285, v286, v288, v289, v290, v291, v293, v295, v297).n128_u32[0];
          sub_100106448();
          v32._countAndFlagsBits = sub_1001073E4();
          String.append(_:)(v32);
          sub_10009F134();
          sub_100106D28();
          sub_1000B02F8();
          *(v23 + 4) = v21;
          sub_100107628();
          sub_100080210(v300, v19, v33);
          sub_1000B047C();
          *(v23 + 14) = v17;
          sub_100107A58(&_mh_execute_header, v22, v0, "%{public}s%{public}s");
          swift_arrayDestroy();
          sub_100106D44();
          sub_100081C28(v23);
        }

        else
        {
        }

        sub_100080F0C((v1 + 1264));
      }

      v9 = *(v1 + 1736);
      sub_100107200();
      AnyHashable.init<A>(_:)();
      if (!*(v9 + 16) || (v10 = sub_100212CF4(v1 + 936), (v11 & 1) == 0))
      {

        v6 = sub_10008E550(v1 + 936);
        goto LABEL_12;
      }

      sub_100080F58(*(v9 + 56) + 32 * v10, v1 + 976);
      sub_10008E550(v1 + 936);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_12;
      }

      v12 = *(v1 + 1576);
      v13 = *(v1 + 1584);
      v14 = [*(v1 + 1792) client];
      v15 = *&v14[OBJC_IVAR____TtC9storekitd6Client_requestBundleID];
      v0 = *&v14[OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8];

      *(v1 + 1640) = v15;
      *(v1 + 1648) = v0;
      *(v1 + 1480) = v12;
      *(v1 + 1488) = v13;
      sub_100106050();
      StringProtocol.caseInsensitiveCompare<A>(_:)();
      sub_100106CE0();

      if (v1 == -1640)
      {
        break;
      }

      sub_100080F0C((v1 + 1264));
    }

    MEMORY[0xFFFFFFFFFFFFFFB0] = v295;
    MEMORY[0xFFFFFFFFFFFFFFB8] = v298;
    AnyHashable.init<A>(_:)();
    if (*(v9 + 16) && (v34 = sub_100212CF4(-744), (v35 & 1) != 0))
    {
      v36 = v293;
      sub_100080F58(*(v9 + 56) + 32 * v34, v293);
    }

    else
    {
      v36 = v293;
      *v293 = 0u;
      v293[1] = 0u;
    }

    sub_10008E550(-744);
    if (MEMORY[0xFFFFFFFFFFFFFE80])
    {
      break;
    }

    v38 = sub_1000AF25C(v36, &unk_1003CCB70, &unk_1002ED050);
LABEL_27:
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      v38 = swift_once();
    }

    v41 = sub_100107600(v38, v39, v40);
    sub_10007EDA4(v41, qword_1003F26C8);
    sub_100106C30();
    _StringGuts.grow(_:)(61);
    sub_1001072C0();
    v43._countAndFlagsBits = v42 + 32;
    v43._object = (v291 | 0x8000000000000000);
    String.append(_:)(v43);
    v44._countAndFlagsBits = Dictionary.description.getter();
    object = v44._object;
    String.append(_:)(v44);

    v46._countAndFlagsBits = 46;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    v47 = [v13 logKey];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100107B60();

    v48 = static os_log_type_t.error.getter();
    sub_1000B7E4C();
    v49 = swift_allocObject();
    v286 = &type metadata for String;
    *(v49 + 16) = &type metadata for String;
    *(v49 + 24) = object;
    sub_1000B7E4C();
    v50 = swift_allocObject();
    v288 = v303;
    *(v50 + 16) = v303;
    *(v50 + 24) = v304;
    v301 = object;

    v290 = v304;

    v289 = Logger.logObject.getter();
    sub_100106B7C();
    *(swift_allocObject() + 16) = 34;
    sub_100106B7C();
    v0 = swift_allocObject();
    *(v0 + 16) = 8;
    sub_1000B7E4C();
    v51 = swift_allocObject();
    sub_100107004(v51);
    sub_1000B7E4C();
    v52 = swift_allocObject();
    *(v52 + 16) = sub_1001063F0;
    *(v52 + 24) = v51;
    sub_100106B7C();
    v53 = swift_allocObject();
    *(v53 + 16) = 34;
    sub_100106B7C();
    v54 = swift_allocObject();
    *(v54 + 16) = 8;
    sub_1000B7E4C();
    swift_allocObject();
    sub_100106FEC();
    *(v55 + 16) = v56;
    *(v55 + 24) = v50;
    sub_1000B7E4C();
    v57 = swift_allocObject();
    sub_100106FD4(v57);
    v58 = sub_100080FB4(&qword_1003CE628, &qword_1002F1E90);
    v59 = sub_100107388(v58);
    sub_100106DE0(v59, v60, v61, v62, v63, v64, v65, v66, v67, v246, v251, v256, v262, v267, v271, v274, v276, v279, v282, v68);
    v69[6] = sub_1001063FC;
    v69[7] = v0;
    v69[8] = sub_10010620C;
    v69[9] = v52;
    v69[10] = sub_1001063FC;
    v69[11] = v53;
    v69[12] = sub_1001063FC;
    v69[13] = v54;
    v70 = v289;
    v69[14] = sub_10010620C;
    v69[15] = v57;
    swift_setDeallocating();
    sub_10009E36C();
    if (os_log_type_enabled(v289, v48))
    {
      sub_10008E688();
      v71 = sub_100106F40();
      *v0 = sub_10010715C(v71, v72, v73, v74, v75, v76, v77, v78, v246, v251, v256, v262, v267, v271, v274, v276, v279, v282, v284, *(&v284 + 1), v285, &type metadata for String, v303, v289, v304, v291, v293, v295, v297).n128_u32[0];
      sub_100106448();
      v79._countAndFlagsBits = v286;
      v79._object = v301;
      String.append(_:)(v79);
      sub_10009F134();
      sub_100106D28();
      sub_1001076A0();
      *(v0 + 1) = v57;
      sub_100107300();
      sub_100080210(v288, v290, v305);
      sub_1000B03CC();
      *(v0 + 14) = &type metadata for Any;
      sub_1001076B8(&_mh_execute_header, v70, v48, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_100106D44();
      sub_100106E50();
    }

    else
    {
    }

    sub_100080F0C(0xFFFFFFFFFFFFFE88);
  }

  v37 = sub_100080FB4(&unk_1003D0530, &qword_1002EBFC0);
  v38 = sub_100107830(v37);
  if ((v38 & 1) == 0)
  {
    goto LABEL_27;
  }

  while (2)
  {
    v242 = *(v1 + 1952);

    sub_100080F0C((v1 + 1264));
    v0 = (v242 + 8);
    v243 = sub_100107174();
    v244(v243);
    v82 = *(v1 + 1784);
LABEL_34:
    v287 = v82;
    v83 = 0;
    v84 = *(v1 + 1976) + 64;
    v296 = *(v1 + 1976);
    sub_1001074CC();
    v87 = v86 & v85;
    v89 = (63 - v88) >> 6;
    v263 = "Ignoring custom buy param ";
    v268 = " because they are not allowed";
    sub_1000C446C();
    v257 = v90;
    sub_1000C446C();
    v280 = v91;
    v292 = v89;
    v294 = v84;
    if (!v87)
    {
      goto LABEL_36;
    }

LABEL_35:
    v92 = v83;
LABEL_40:
    v93 = __clz(__rbit64(v87));
    v87 &= v87 - 1;
    sub_100107920(v93 | (v92 << 6));
    sub_100107F2C();
LABEL_41:
    v94 = *(v1 + 592);
    *v299 = *(v1 + 576);
    *(v1 + 640) = v94;
    *(v1 + 656) = *(v1 + 608);
    v95 = *(v1 + 632);
    v96 = *(v1 + 2008);
    if (v95)
    {
      v97 = *v299;
      sub_10008B5D0((v1 + 640), (v1 + 1296));
      sub_1001073E4();
      v98 = String._bridgeToObjectiveC()();
      v99 = sub_1001077CC();
      v101 = [v99 v100];

      if (v101)
      {
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          v102 = swift_once();
        }

        v105 = sub_100107600(v102, v103, v104);
        sub_1000B01C8(v105, qword_1003F26C8);
        sub_100106C30();
        _StringGuts.grow(_:)(26);

        sub_1001072C0();
        v303 = v106 - 2;
        v304 = v280;
        v107._countAndFlagsBits = sub_1001073E4();
        String.append(_:)(v107);
        v108 = v280;
        HIDWORD(v290) = HIDWORD(v303);
        v109 = [v98 logKey];
        v288 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v111 = v110;

        v112 = static os_log_type_t.info.getter();

        Logger.logObject.getter();
        sub_1000B02A4();

        LODWORD(v289) = v112;
        if (os_log_type_enabled(v0, v112))
        {
          sub_10008E688();
          v113 = sub_1000B002C();
          *v89 = sub_100106D18(v113, v114, v115, v116, v117, v118, v119, v120, v246, v251, v257, v263, v268, v271, v274, v276, v280, v282, v284, *(&v284 + 1), v285, v287, v288, v289, v303, v292, v294, v296, v297).n128_u32[0];
          sub_100106448();
          v121._countAndFlagsBits = v288;
          v121._object = v111;
          String.append(_:)(v121);
          sub_10009F134();
          sub_100106D28();
          sub_1000B0494();
          *(v89 + 4) = v112;
          sub_100107150();
          sub_100080210(v290, v108, v305);
          sub_100107A70();
          *(v89 + 14) = v0;
          _os_log_impl(&_mh_execute_header, v0, v289, "%{public}s%{public}s", v89, 0x16u);
          sub_100106E34();
          v122 = v84;
          v84 = v294;
          sub_100081C28(v122);
          v123 = v89;
          v89 = v292;
          sub_100081C28(v123);
        }

        else
        {
        }

        goto LABEL_61;
      }

      *(v1 + 1608) = v97;
      *(v1 + 1616) = v95;
      v124 = swift_task_alloc();
      v132 = sub_100106CEC(v124, v125, v126, v127, v128, v129, v130, v131, v246, v251, v257, v263, v268, v271, v274, v276, v280, v282);
      v135 = sub_100178848(v132, v133, v134);

      if (v135)
      {
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          v136 = swift_once();
        }

        v139 = sub_100107600(v136, v137, v138);
        sub_1000B01C8(v139, qword_1003F26C8);
        sub_1001072C0();
        sub_100107B00(v140, v247, v252, v258);
        v141._countAndFlagsBits = sub_1001073E4();
        String.append(_:)(v141);
        v142 = [v135 logKey];
        v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v145 = v144;

        LODWORD(v288) = static os_log_type_t.default.getter();
        sub_1000B7E4C();
        v146 = swift_allocObject();
        v273 = v143;
        *(v146 + 16) = v143;
        *(v146 + 24) = v145;
        sub_1000B7E4C();
        v147 = swift_allocObject();
        *(v147 + 16) = v303;
        *(v147 + 24) = v304;
        v290 = v145;

        HIDWORD(v289) = HIDWORD(v304);

        v277 = Logger.logObject.getter();
        sub_100106B7C();
        *(swift_allocObject() + 16) = 34;
        sub_100106B7C();
        v148 = swift_allocObject();
        sub_1001072E8(v148);
        sub_1000B7E4C();
        v149 = swift_allocObject();
        *(v149 + 16) = sub_1001063F4;
        *(v149 + 24) = v146;
        sub_1000B7E4C();
        v150 = swift_allocObject();
        *(v150 + 16) = sub_1001063F0;
        *(v150 + 24) = v149;
        sub_100106B7C();
        v151 = swift_allocObject();
        *(v151 + 16) = 34;
        sub_100106B7C();
        v152 = swift_allocObject();
        sub_1001072E8(v152);
        sub_1000B7E4C();
        v153 = swift_allocObject();
        *(v153 + 16) = sub_1001063F8;
        *(v153 + 24) = v147;
        sub_1000B7E4C();
        v154 = swift_allocObject();
        *(v154 + 16) = sub_1001063F0;
        *(v154 + 24) = v153;
        v155 = sub_100080FB4(&qword_1003CE628, &qword_1002F1E90);
        v156 = sub_100107388(v155);
        sub_100106E6C(v156, v157, v158, v159, v160, v161, v162, v163, v164, v248, v253, v259, v264, v269, v273, v303, v277, v281, v283, v165);
        v166[6] = sub_1001063FC;
        v166[7] = v148;
        v166[8] = sub_10010620C;
        v166[9] = v150;
        v166[10] = sub_1001063FC;
        v166[11] = v151;
        v166[12] = sub_1001063FC;
        v166[13] = v152;
        v166[14] = sub_10010620C;
        v166[15] = v154;
        v167 = v288;
        swift_setDeallocating();
        v168 = v156;
        v169 = v276;
        sub_10009E36C();
        if (os_log_type_enabled(v276, v288))
        {
          sub_10008E688();
          v170 = sub_100106F40();
          *v148 = sub_100106D18(v170, v171, v172, v173, v174, v175, v176, v177, v246, v251, v257, v263, v268, v271, v274, v276, v280, v282, v284, *(&v284 + 1), v285, v287, v288, v304, v290, v292, v294, v296, v297).n128_u32[0];
          sub_100106448();
          v178._countAndFlagsBits = v271;
          v178._object = v290;
          String.append(_:)(v178);
          sub_10009F134();
          sub_100106D28();
          sub_1000C44AC();

          *(v148 + 4) = v150;
          sub_100107300();
          sub_100080210(v274, v289, v305);
          sub_10001E11C();

          *(v148 + 14) = v168;
          sub_1001076B8(&_mh_execute_header, v169, v167, "%{public}s%{public}s");
          sub_100106E34();
          sub_1000AFFE8();
          sub_100106E50();
        }

        else
        {
        }

        v89 = v292;
        v84 = v294;
LABEL_61:
        sub_1001073A0();
        v0 = String._bridgeToObjectiveC()();

        v235 = sub_1001077CC();
        [v235 v236];

        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          v136 = swift_once();
        }

        v179 = sub_100107660(v136, v137, v138);
        sub_10007EDA4(v179, qword_1003F26C8);
        v180 = sub_1000800E8(54);
        sub_100107678(v180, v181, v182, v183, v184, v185, v186, v187, v247, v252, v258, v264, v269);
        v188._countAndFlagsBits = sub_1001073E4();
        String.append(_:)(v188);

        sub_100107CA4(v189, v190, v191, v192, v193, v194, v195, v196, v249, v254, v260, v265);
        v197 = [0 logKey];
        v198 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v200 = v199;

        LODWORD(v290) = static os_log_type_t.default.getter();
        sub_1000B7E4C();
        v201 = swift_allocObject();
        v278 = v198;
        *(v201 + 16) = v198;
        *(v201 + 24) = v200;
        sub_1000B7E4C();
        v202 = swift_allocObject();
        HIDWORD(v288) = HIDWORD(v303);
        *(v202 + 16) = v303;
        *(v202 + 24) = v304;
        v302 = v200;

        v289 = Logger.logObject.getter();
        sub_100106B7C();
        *(swift_allocObject() + 16) = 34;
        sub_100106B7C();
        v0 = swift_allocObject();
        sub_1001072E8(v0);
        sub_1000B7E4C();
        v203 = swift_allocObject();
        *(v203 + 16) = sub_1001063F4;
        *(v203 + 24) = v201;
        sub_1000B7E4C();
        swift_allocObject();
        sub_10010701C();
        *(v204 + 16) = v205;
        *(v204 + 24) = v203;
        sub_100106B7C();
        v206 = swift_allocObject();
        *(v206 + 16) = 34;
        sub_100106B7C();
        v207 = swift_allocObject();
        sub_1001072E8(v207);
        sub_1000B7E4C();
        swift_allocObject();
        sub_10010704C();
        *(v208 + 16) = v209;
        *(v208 + 24) = v202;
        sub_1000B7E4C();
        v210 = swift_allocObject();
        sub_100106F74(v210);
        v211 = sub_100080FB4(&qword_1003CE628, &qword_1002F1E90);
        v212 = sub_100107388(v211);
        sub_100106E10(v212, v213, v214, v215, v216, v217, v218, v219, v220, v250, v255, v261, v266, v270, v272, v275, v278, v281, v283, v221);
        v222[6] = sub_1001063FC;
        v222[7] = v0;
        v222[8] = sub_10010620C;
        v222[9] = v303;
        sub_100106F5C();
        v223[10] = v224;
        v223[11] = v206;
        v223[12] = sub_1001063FC;
        v223[13] = v207;
        v225 = v289;
        v223[14] = sub_10010620C;
        v223[15] = v210;
        swift_setDeallocating();
        sub_10009E36C();
        if (os_log_type_enabled(v289, v303))
        {
          sub_10008E688();
          v226 = sub_100106F40();
          *v0 = sub_100106D18(v226, v227, v228, v229, v230, v231, v232, v233, v246, v251, v257, v263, v268, v271, v274, v276, v280, v282, v284, *(&v284 + 1), v285, v287, v303, v289, v290, v292, v294, v296, v297).n128_u32[0];
          sub_100106448();
          v234._countAndFlagsBits = v276;
          v234._object = v302;
          String.append(_:)(v234);
          sub_10009F134();
          sub_100106D28();
          sub_1000C44AC();

          *(v0 + 1) = 34;
          sub_100107300();
          sub_100080210(v288, v304, v305);
          sub_10001E11C();

          *(v0 + 14) = 34;
          sub_1001076B8(&_mh_execute_header, v225, v303, "%{public}s%{public}s");
          sub_100106E34();
          sub_1000AFFE8();
          sub_100106E50();
        }

        else
        {
        }

        v89 = v292;
        v84 = v294;
      }

      sub_100080F0C((v1 + 1296));
      if (!v87)
      {
LABEL_36:
        while (1)
        {
          v92 = v83 + 1;
          if (__OFADD__(v83, 1))
          {
            break;
          }

          if (v92 >= v89)
          {
            v87 = 0;
            *(v1 + 592) = 0u;
            *(v1 + 608) = 0u;
            *(v1 + 576) = 0u;
            goto LABEL_41;
          }

          v87 = *(v84 + 8 * v92);
          ++v83;
          if (v87)
          {
            v83 = v92;
            goto LABEL_40;
          }
        }

        __break(1u);
        continue;
      }

      goto LABEL_35;
    }

    break;
  }

  *(v1 + 2032) = 0;
  v237 = [*(v1 + 1792) client];
  v238 = sub_1001A7AB4();

  if (qword_1003CC028 != -1)
  {
    sub_100106700(&qword_1003CC028);
  }

  sub_100107AE0();
  sub_1001074E8([v238 arrayForKey:qword_1003F2890]);
  sub_1001073D8();
  *(v1 + 16) = v239;
  *(v1 + 56) = v251;
  sub_1001066CC();
  v240 = sub_100080FB4(&qword_1003CE620, &qword_1002F0C20);
  sub_10010647C(v240);
  sub_100107AD4(COERCE_DOUBLE(1107296256));
  sub_10010649C();
  sub_100107944(v241, "valueWithCompletion:");

  return _swift_continuation_await(v237);
}

uint64_t sub_1000F5C74()
{
  sub_10008BE9C();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2048) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000F733C()
{
  sub_10008BE9C();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2080) = *(v3 + 240);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000F8DB0()
{
  sub_10008BE9C();
  *(v0 + 2168) = sub_10019D99C();
  sub_100098AD0();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000F8E40()
{
  v1 = v0[268];
  v16 = v0[269];
  v17 = v0[266];
  v14 = v0[267];
  v15 = v0[265];
  v2 = v0[237];
  v3 = v0[236];
  v4 = v0[235];
  v5 = v0[234];
  (*(v4 + 16))(v2, v0[238], v5);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (v3 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[272] = v9;
  (*(v4 + 32))(v9 + v6, v2, v5);
  v10 = (v9 + v7);
  *v10 = v14;
  v10[1] = v1;
  *(v9 + v8) = v16;
  v11 = (v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v15;
  v11[1] = v17;

  v12 = swift_task_alloc();
  v0[273] = v12;
  *v12 = v0;
  v12[1] = sub_1000F901C;

  return sub_1001D5D00(sub_100105DE0, v9);
}

uint64_t sub_1000F901C()
{
  sub_10008BE9C();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000F98B8()
{
  sub_100098BB4();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000F9A2C()
{
  v119 = v0;
  v2 = *(v0 + 1840);
  v3 = [*(v0 + 1792) purchaseIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  v4 = sub_100106DA0();
  v5(v4);
  sub_1000C4514();
  String.lowercased()();
  sub_100106D80();

  sub_100107174();
  String._bridgeToObjectiveC()();
  sub_10001E11C();

  if (qword_1003CBD48 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    [*(v0 + 1968) setParameter:v2 forKey:qword_1003CE518];

    v6 = objc_opt_self();
    v7 = [v6 operatingSystem];
    if (!v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String._bridgeToObjectiveC()();
      sub_100107ECC();
    }

    if (qword_1003CBD18 != -1)
    {
      swift_once();
    }

    [*(v0 + 1968) setParameter:v7 forKey:qword_1003CE4E8];

    v8 = [v6 productVersion];
    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String._bridgeToObjectiveC()();
      sub_100107ECC();
    }

    if (qword_1003CBD28 != -1)
    {
      swift_once();
    }

    [*(v0 + 1968) setParameter:v8 forKey:qword_1003CE4F8];

    v9 = [v6 buildVersion];
    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String._bridgeToObjectiveC()();
      sub_100107ECC();
    }

    if (qword_1003CBD20 != -1)
    {
      swift_once();
    }

    [*(v0 + 1968) setParameter:v9 forKey:qword_1003CE4F0];

    sub_10017772C(v6);
    if (v10)
    {
      String._bridgeToObjectiveC()();
      sub_100107ECC();
    }

    else
    {
      v9 = 0;
    }

    if (qword_1003CBCF0 != -1)
    {
      swift_once();
    }

    [*(v0 + 1968) setParameter:v9 forKey:qword_1003CE4C0];
    swift_unknownObjectRelease();
    sub_1001057D0(v6, &selRef_sk_hardwareFamily);
    if (v11)
    {
      String._bridgeToObjectiveC()();
      sub_10001E11C();
    }

    else
    {
      v6 = 0;
    }

    if (qword_1003CBCE8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 2192);
    v13 = *(v0 + 1816);
    v14 = *(v0 + 1808);
    v15 = *(v0 + 1800);
    v16 = *(v0 + 1792);
    [*(v0 + 1968) setParameter:v6 forKey:qword_1003CE4B8];
    swift_unknownObjectRelease();
    v17 = [v16 client];
    (*(v14 + 16))(v13, v17 + OBJC_IVAR____TtC9storekitd6Client_callerBundleURL, v15);

    v18 = objc_allocWithZone(LSApplicationRecord);
    v19 = sub_10001E11C();
    v20 = sub_1001B35E8(v19, 0);
    if (v12)
    {
      v108 = v12;
      v21 = v12;
      goto LABEL_26;
    }

    v72 = v20;
    v73 = [v20 iTunesMetadata];
    *(v0 + 1752) = 0;
    v74 = [v73 storeCohortWithError:v0 + 1752];

    v75 = *(v0 + 1752);
    if (!v74)
    {
      v83 = v75;
      sub_10001E104();
      v21 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v108 = v21;

LABEL_26:
      v22 = *(v0 + 1792);
      *(v0 + 1544) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      *(v0 + 1552) = v23;
      v24._countAndFlagsBits = 0xD00000000000001BLL;
      v24._object = 0x8000000100317C20;
      String.append(_:)(v24);
      v114 = v21;
      *(v0 + 1760) = v21;
      sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
      _print_unlocked<A, B>(_:_:)();
      sub_1001077E4();
      v25 = *(v0 + 1544);
      v26 = *(v0 + 1552);
      v27 = [v22 logKey];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100107638();
      LODWORD(v112) = static os_log_type_t.error.getter();
      sub_1000B7E4C();
      v28 = swift_allocObject();
      v109 = &selRef__appDidLaunch_;
      *(v28 + 16) = &selRef__appDidLaunch_;
      *(v28 + 24) = v22;
      sub_1000B7E4C();
      v29 = swift_allocObject();
      v110 = v25;
      *(v29 + 16) = v25;
      *(v29 + 24) = v26;
      v113 = v22;

      v111 = Logger.logObject.getter();
      sub_100106B7C();
      v30 = swift_allocObject();
      *(v30 + 16) = 34;
      sub_100106B7C();
      v31 = swift_allocObject();
      *(v31 + 16) = 8;
      sub_1000B7E4C();
      v32 = swift_allocObject();
      *(v32 + 16) = sub_100105E94;
      *(v32 + 24) = v28;
      sub_1000B7E4C();
      v33 = swift_allocObject();
      *(v33 + 16) = sub_100105EAC;
      *(v33 + 24) = v32;
      sub_100106B7C();
      v34 = swift_allocObject();
      *(v34 + 16) = 34;
      sub_100106B7C();
      v1 = swift_allocObject();
      *(v1 + 16) = 8;
      sub_1000B7E4C();
      v35 = swift_allocObject();
      *(v35 + 16) = sub_100105E9C;
      *(v35 + 24) = v29;
      sub_1000B7E4C();
      v36 = swift_allocObject();
      *(v36 + 16) = sub_1001063F0;
      *(v36 + 24) = v35;
      v37 = sub_100080FB4(&qword_1003CE628, &qword_1002F1E90);
      v38 = sub_100107388(v37);
      *(v38 + 16) = xmmword_1002F0B70;
      *(v38 + 32) = sub_100105EA4;
      *(v38 + 40) = v30;
      *(v38 + 48) = sub_1001063FC;
      *(v38 + 56) = v31;
      *(v38 + 64) = sub_100105EB4;
      *(v38 + 72) = v33;
      *(v38 + 80) = sub_1001063FC;
      *(v38 + 88) = v34;
      *(v38 + 96) = sub_1001063FC;
      *(v38 + 104) = v1;
      *(v38 + 112) = sub_10010620C;
      *(v38 + 120) = v36;
      swift_setDeallocating();
      v39 = v111;
      sub_10009E36C();
      if (sub_100107DF4())
      {
        v40 = sub_10008E688();
        v118[0] = sub_10008E670();
        *v40 = 136446466;
        sub_10009F0F8();
        v115 = v41;
        v116 = v42;
        v43._countAndFlagsBits = &selRef__appDidLaunch_;
        v43._object = v22;
        String.append(_:)(v43);
        sub_10009F134();
        sub_100080210(v115, v116, v118);
        sub_10001E104();

        *(v40 + 4) = v33;
        *(v40 + 12) = 2082;
        sub_100080210(v110, v26, v118);
        sub_1000B047C();
        *(v40 + 14) = v116;
        sub_100107A58(&_mh_execute_header, v111, v112, "%{public}s%{public}s");
        sub_100098BC0();
        sub_10008BF3C();
        sub_100081C28(v40);
      }

      else
      {
      }

LABEL_29:

      goto LABEL_30;
    }

    v108 = 0;
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;
    v79 = v75;

    v80 = HIBYTE(v78) & 0xF;
    if ((v78 & 0x2000000000000000) == 0)
    {
      v80 = v76 & 0xFFFFFFFFFFFFLL;
    }

    if (!v80)
    {
      v84 = *(v0 + 1792);

      v85 = [v84 logKey];
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;

      LODWORD(v113) = static os_log_type_t.info.getter();
      sub_1000B7E4C();
      v89 = swift_allocObject();
      v110 = v86;
      *(v89 + 16) = v86;
      *(v89 + 24) = v88;
      sub_1000B7E4C();
      v90 = swift_allocObject();
      *(v90 + 16) = 0xD000000000000015;
      *(v90 + 24) = 0x8000000100317C70;
      v111 = 0x8000000100317C70;
      v114 = v88;

      v112 = Logger.logObject.getter();
      sub_100106B7C();
      v91 = swift_allocObject();
      *(v91 + 16) = 34;
      sub_100106B7C();
      v92 = swift_allocObject();
      sub_100106C00(v92);
      sub_1000B7E4C();
      v93 = swift_allocObject();
      *(v93 + 16) = sub_1001063F4;
      *(v93 + 24) = v89;
      sub_1000B7E4C();
      v94 = swift_allocObject();
      *(v94 + 16) = sub_1001063F0;
      *(v94 + 24) = v93;
      sub_100106B7C();
      v95 = swift_allocObject();
      *(v95 + 16) = 34;
      sub_100106B7C();
      v96 = swift_allocObject();
      *(v96 + 16) = v88;
      sub_1000B7E4C();
      v97 = swift_allocObject();
      *(v97 + 16) = sub_1001063F8;
      *(v97 + 24) = v90;
      sub_1000B7E4C();
      v98 = swift_allocObject();
      *(v98 + 16) = sub_1001063F0;
      *(v98 + 24) = v97;
      v99 = sub_100080FB4(&qword_1003CE628, &qword_1002F1E90);
      v100 = sub_100107388(v99);
      *(v100 + 16) = xmmword_1002F0B70;
      *(v100 + 32) = sub_1001063FC;
      *(v100 + 40) = v91;
      *(v100 + 48) = sub_1001063FC;
      *(v100 + 56) = v1;
      *(v100 + 64) = sub_10010620C;
      *(v100 + 72) = v94;
      v39 = v112;
      *(v100 + 80) = sub_1001063FC;
      *(v100 + 88) = v95;
      *(v100 + 96) = sub_1001063FC;
      *(v100 + 104) = v96;
      *(v100 + 112) = sub_10010620C;
      *(v100 + 120) = v98;
      swift_setDeallocating();
      sub_10009E36C();
      if (sub_1001076EC())
      {
        sub_10008E688();
        v118[0] = sub_100106C60();
        sub_100106A14(4.8752e-34);
        v115 = v101;
        v116 = v102;
        v103._countAndFlagsBits = v110;
        v103._object = v88;
        String.append(_:)(v103);
        sub_10009F134();
        sub_100080210(v115, v116, v118);
        sub_100107144();

        *(v1 + 4) = v100;
        sub_100106E04();
        *(v1 + 14) = sub_100080210(0xD000000000000015, 0x8000000100317C70, v118);
        sub_100106B88(&_mh_execute_header, v104, v105, "%{public}s%{public}s");
        swift_arrayDestroy();
        sub_100106E50();
        sub_1000B0080();
      }

      goto LABEL_29;
    }

    if (qword_1003CBD68 != -1)
    {
      swift_once();
    }

    [*(v0 + 1968) setParameter:v74 forKey:qword_1003CE538];

LABEL_30:
    v44 = *(v0 + 2104);
    v45 = *(v0 + 1920);
    v46 = *(v0 + 1912);
    v47 = [*(v0 + 1792) client];
    sub_1001A7E5C(v47, v48, v49, v50, v51, v52, v53, v54, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118[0]);

    sub_100081DFC(v46, 1, 2, v44);
    v55 = sub_1000C4514();
    sub_1001A9B8C(v55, v56);
    sub_100106430();
    v58 = v57;
    sub_100105FA4(v46, v57);
    sub_100105FA4(v45, v58);
    if (v47)
    {
      v59 = [*(v0 + 1792) client];
      v60 = *&v59[OBJC_IVAR____TtC9storekitd6Client_storeItemID];

      if (v60)
      {
        if (qword_1003CBDE0 != -1)
        {
          swift_once();
        }

        v61 = qword_1003F25D8;
        *(v0 + 2224) = qword_1003F25D8;

        return _swift_task_switch(sub_1000FA8D8, v61, 0);
      }
    }

    v62 = sub_1001056B8(*(v0 + 1792), &selRef_additionalBuyParams);
    if (!v62)
    {
      break;
    }

    v2 = v62;
    v63 = 0;
    v64 = v62 + 64;
    sub_1001066B4();
    sub_10010728C();
    v66 = v65 >> 6;
    if (!v1)
    {
      goto LABEL_40;
    }

    do
    {
LABEL_44:
      sub_100106B34();
      sub_100107890(v68);
      sub_100107F64();
LABEL_45:
      sub_1001077B4();
      if (!v58)
      {
        v71 = *(v0 + 2096);

        goto LABEL_58;
      }

      sub_100107598();
      sub_100080F0C((v0 + 1040));
      v69 = String._bridgeToObjectiveC()();

      sub_1001079E8(v70, "setParameter:forKey:");

      swift_unknownObjectRelease();
    }

    while (v1);
LABEL_40:
    while (1)
    {
      v67 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      if (v67 >= v66)
      {
        sub_100107B38();
        goto LABEL_45;
      }

      v1 = *(v64 + 8 * v67);
      ++v63;
      if (v1)
      {
        v63 = v67;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_67:
    swift_once();
  }

LABEL_58:
  sub_100106FA4();

  sub_10009F198();
  v82 = *(v0 + 1968);

  return v81(v82);
}

uint64_t sub_1000FA8D8()
{
  sub_10008BE9C();
  *(v0 + 2232) = sub_10019D99C();
  sub_100098AD0();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000FA968()
{
  sub_100098BB4();
  v1 = [*(v0 + 1792) client];
  v2 = *&v1[OBJC_IVAR____TtC9storekitd6Client_storeItemID];

  v3 = swift_task_alloc();
  *(v0 + 2240) = v3;
  *v3 = v0;
  v3[1] = sub_1000FAA58;

  return sub_10015DB20(v2);
}

uint64_t sub_1000FAA58()
{
  sub_10008BE9C();
  sub_1000AFCF8();
  *v2 = v1;
  v4 = *(v3 + 2232);
  v5 = *v0;
  sub_100098AB4();
  *v6 = v5;
  *(v8 + 1682) = v7;

  sub_100098AD0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000FAB88(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, Swift::String a9, NSObject *a10, uint64_t a11, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_100107C4C();
  a29 = v32;
  a30 = v33;
  a28 = v30;
  v34 = *(v30 + 1682);
  if (v34 == 2)
  {
    goto LABEL_13;
  }

  v35 = *(v30 + 1792);
  a16 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  a17 = v36;
  sub_1000B00A8();
  v37._countAndFlagsBits = 0xD000000000000022;
  String.append(_:)(v37);
  if (v34)
  {
    v38 = 0x73656D6147;
  }

  else
  {
    v38 = 0x65726F7453707041;
  }

  if (v34)
  {
    v39 = 0xE500000000000000;
  }

  else
  {
    v39 = 0xE800000000000000;
  }

  a14 = v38;
  v40 = v39;
  String.append(_:)(*&v38);
  v79 = v39;

  sub_1001077E4();
  v41 = a17;
  v42 = [v35 logKey];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100106E8C();

  HIDWORD(a11) = static os_log_type_t.info.getter();
  sub_1000B7E4C();
  v43 = swift_allocObject();
  a9._countAndFlagsBits = v35;
  *(v43 + 16) = v35;
  *(v43 + 24) = v34;
  sub_1000B7E4C();
  v44 = swift_allocObject();
  a9._object = a16;
  *(v44 + 16) = a16;
  *(v44 + 24) = a17;
  a13 = v34;

  a10 = Logger.logObject.getter();
  sub_100106B7C();
  v45 = swift_allocObject();
  *(v45 + 16) = 34;
  sub_100106B7C();
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  sub_1000B7E4C();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1001063F4;
  *(v47 + 24) = v43;
  sub_1000B7E4C();
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1001063F0;
  *(v48 + 24) = v47;
  sub_100106B7C();
  v31 = swift_allocObject();
  *(v31 + 16) = 34;
  sub_100106B7C();
  v49 = swift_allocObject();
  *(v49 + 16) = 8;
  sub_1000B7E4C();
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1001063F8;
  *(v50 + 24) = v44;
  sub_1000B7E4C();
  v51 = swift_allocObject();
  *(v51 + 16) = sub_1001063F0;
  *(v51 + 24) = v50;
  v52 = sub_100080FB4(&qword_1003CE628, &qword_1002F1E90);
  v53 = sub_100107388(v52);
  *(v53 + 16) = xmmword_1002F0B70;
  *(v53 + 32) = sub_1001063FC;
  *(v53 + 40) = v45;
  *(v53 + 48) = sub_1001063FC;
  *(v53 + 56) = v46;
  *(v53 + 64) = sub_10010620C;
  *(v53 + 72) = v48;
  *(v53 + 80) = sub_1001063FC;
  *(v53 + 88) = v31;
  *(v53 + 96) = sub_1001063FC;
  *(v53 + 104) = v49;
  *(v53 + 112) = sub_10010620C;
  *(v53 + 120) = v51;
  swift_setDeallocating();
  v54 = v53;
  sub_10009E36C();
  if (os_log_type_enabled(a10, BYTE4(a11)))
  {
    sub_10008E688();
    sub_100106F40();
    *v46 = 136446466;
    sub_10009F0F8();
    a16 = v55;
    a17 = v57;
    a18 = v56;
    v58._countAndFlagsBits = a9._countAndFlagsBits;
    v58._object = v34;
    String.append(_:)(v58);
    sub_10009F134();
    v54 = a17;
    sub_100080210(a16, a17, &a18);
    sub_1000C44AC();

    *(v46 + 4) = v53;
    sub_100107300();
    sub_100080210(a9._object, v41, &a18);
    sub_1000B047C();
    *(v46 + 14) = a17;
    sub_1001076B8(&_mh_execute_header, a10, BYTE4(a11), "%{public}s%{public}s");
    sub_1000B0010();
    sub_1000AFF34();
    sub_100106E50();
  }

  else
  {
  }

  v29 = v79;
  String._bridgeToObjectiveC()();
  sub_10001E11C();

  if (qword_1003CBD08 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    [*(v30 + 1968) setParameter:v54 forKey:qword_1003CE4D8];

LABEL_13:
    v59 = sub_1001056B8(*(v30 + 1792), &selRef_additionalBuyParams);
    if (!v59)
    {
      break;
    }

    v54 = v59;
    v60 = 0;
    v61 = v59 + 64;
    sub_1001066B4();
    sub_10010728C();
    v63 = v62 >> 6;
    if (!v31)
    {
      goto LABEL_16;
    }

    do
    {
LABEL_20:
      sub_100106B34();
      sub_100107890(v65);
      sub_100107F64();
LABEL_21:
      sub_1001077B4();
      if (!v29)
      {
        v68 = *(v30 + 2096);

        goto LABEL_27;
      }

      sub_100107598();
      sub_100080F0C((v30 + 1040));
      v66 = String._bridgeToObjectiveC()();

      sub_1001079E8(v67, "setParameter:forKey:");

      swift_unknownObjectRelease();
    }

    while (v31);
LABEL_16:
    while (1)
    {
      v64 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      if (v64 >= v63)
      {
        sub_100107B38();
        goto LABEL_21;
      }

      v31 = *(v61 + 8 * v64);
      ++v60;
      if (v31)
      {
        v60 = v64;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

LABEL_27:
  sub_100106FA4();
  v80 = v69;

  sub_10009F198();
  sub_100107C68();

  return v72(v70, v71, v72, v73, v74, v75, v76, v77, a9._countAndFlagsBits, a9._object, a10, a11, a13, a14, v80, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1000FB8BC()
{
  v326 = v0;
  v317 = (v0 + 624);
  v314 = (v0 + 1232);
  sub_100107AA8();
  v1 = *(v0 + 2016);
  v2 = *(v0 + 2024);
  swift_willThrow();
  v295 = v2;

  sub_10008E5A4(0, &qword_1003CE638, NSArray_ptr);
  v262 = NSArray.init(arrayLiteral:)();
  NSArray.makeIterator()();
  sub_1000C446C();
  v318 = v3;
  v312 = "allowedBuyParams";
  *(&v4 + 1) = 12;
  v303 = xmmword_1002F0B70;
  *&v4 = 136446466;
  v316 = v4;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        NSFastEnumerationIterator.next()();
        if (!*(v0 + 1416))
        {
          v84 = sub_100107B78();
          v85(v84);
          v86 = _swiftEmptyArrayStorage;
          goto LABEL_32;
        }

        sub_10008B5D0((v0 + 1392), (v0 + 1264));
        sub_100080F58(v0 + 1264, v0 + 1168);
        v5 = sub_100080FB4(&unk_1003CE640, &unk_1002F94C0);
        v6 = sub_100107854(v5);
        if (v6)
        {
          break;
        }

LABEL_10:
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          v6 = swift_once();
        }

        v16 = sub_100107600(v6, v7, v8);
        sub_10007EDA4(v16, qword_1003F26C8);
        sub_100106C30();
        _StringGuts.grow(_:)(49);
        *(v0 + 1656) = v323;
        *(v0 + 1664) = v324;
        sub_1001072C0();
        sub_100107DA4(v17);
        _print_unlocked<A, B>(_:_:)();
        v320 = *(v0 + 1656);
        v18 = *(v0 + 1664);
        v19 = [v1 logKey];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100107168();

        v20 = static os_log_type_t.error.getter();

        v21 = Logger.logObject.getter();

        if (os_log_type_enabled(v21, v20))
        {
          sub_10008E688();
          v22 = sub_100106C60();
          type metadata for Any = sub_100106D18(v22, v23, v24, v25, v26, v27, v28, v29, v262, v267, v272, v278, v283, v287, v290, v292, v295, v301, v303, *(&v303 + 1), v304, v305, v307, v308, v309, v310, v312, v314, v316).n128_u32[0];
          sub_100106448();
          v30._countAndFlagsBits = sub_1000C43E8();
          String.append(_:)(v30);
          sub_10009F134();
          sub_100106D28();
          sub_1000C44AC();

          *(&type metadata for Any + 4) = v1;
          sub_100106E04();
          v31 = sub_100080210(v320, v18, v325);

          *(&type metadata for Any + 14) = v31;
          _os_log_impl(&_mh_execute_header, v21, v20, "%{public}s%{public}s", &type metadata for Any, 0x16u);
          swift_arrayDestroy();
          sub_1000AFFE8();
          sub_100081C28(&type metadata for Any);
        }

        else
        {
        }

        sub_100080F0C((v0 + 1264));
      }

      v9 = *(v0 + 1736);
      sub_100107200();
      AnyHashable.init<A>(_:)();
      if (!*(v9 + 16) || (v10 = sub_100212CF4(v0 + 936), (v11 & 1) == 0))
      {

        v6 = sub_10008E550(v0 + 936);
        goto LABEL_10;
      }

      sub_100080F58(*(v9 + 56) + 32 * v10, v0 + 976);
      sub_10008E550(v0 + 936);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_10;
      }

      v12 = *(v0 + 1576);
      v1 = *(v0 + 1584);
      v13 = [*(v0 + 1792) client];
      v15 = *&v13[OBJC_IVAR____TtC9storekitd6Client_requestBundleID];
      v14 = *&v13[OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8];

      *(v0 + 1640) = v15;
      *(v0 + 1648) = v14;
      *(v0 + 1480) = v12;
      *(v0 + 1488) = v1;
      sub_100106050();
      StringProtocol.caseInsensitiveCompare<A>(_:)();
      sub_100106CE0();

      if (v0 == -1640)
      {
        break;
      }

      sub_100080F0C((v0 + 1264));
    }

    sub_1001072C0();
    MEMORY[0xFFFFFFFFFFFFFFB0] = v32 - 10;
    MEMORY[0xFFFFFFFFFFFFFFB8] = v318;
    AnyHashable.init<A>(_:)();
    if (*(v9 + 16) && (v33 = sub_100212CF4(-744), (v34 & 1) != 0))
    {
      v35 = v314;
      sub_100080F58(*(v9 + 56) + 32 * v33, v314);
    }

    else
    {
      v35 = v314;
      *v314 = 0u;
      v314[1] = 0u;
    }

    sub_10008E550(-744);
    if (MEMORY[0xFFFFFFFFFFFFFE80])
    {
      break;
    }

    v37 = sub_1000AF25C(v35, &unk_1003CCB70, &unk_1002ED050);
LABEL_25:
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      v37 = swift_once();
    }

    v40 = sub_100107660(v37, v38, v39);
    sub_10007EDA4(v40, qword_1003F26C8);
    sub_100106C30();
    _StringGuts.grow(_:)(61);
    sub_1001072C0();
    v42._countAndFlagsBits = v41 + 32;
    v42._object = (v312 | 0x8000000000000000);
    String.append(_:)(v42);
    v43._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v43);

    v44._countAndFlagsBits = 46;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    v45 = [v14 logKey];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    LODWORD(v308) = static os_log_type_t.error.getter();
    sub_1000B7E4C();
    v49 = swift_allocObject();
    v305 = v46;
    *(v49 + 16) = v46;
    *(v49 + 24) = v48;
    sub_1000B7E4C();
    v50 = swift_allocObject();
    v307 = v323;
    *(v50 + 16) = v323;
    *(v50 + 24) = v324;

    v310 = v324;

    v309 = Logger.logObject.getter();
    sub_100106B7C();
    v51 = swift_allocObject();
    sub_100107650(v51);
    sub_100106B7C();
    v52 = swift_allocObject();
    *(v52 + 16) = 8;
    sub_1000B7E4C();
    v53 = swift_allocObject();
    sub_100107004(v53);
    sub_1000B7E4C();
    v54 = swift_allocObject();
    *(v54 + 16) = sub_1001063F0;
    *(v54 + 24) = v53;
    sub_100106B7C();
    v1 = swift_allocObject();
    v1[16] = v48;
    sub_100106B7C();
    v55 = swift_allocObject();
    *(v55 + 16) = 8;
    v56 = v308;
    sub_1000B7E4C();
    swift_allocObject();
    sub_100106FEC();
    *(v57 + 16) = v58;
    *(v57 + 24) = v50;
    sub_1000B7E4C();
    v59 = swift_allocObject();
    sub_100106FD4(v59);
    v60 = sub_100080FB4(&qword_1003CE628, &qword_1002F1E90);
    v61 = sub_100107388(v60);
    sub_100106DE0(v61, v62, v63, v64, v65, v66, v67, v68, v69, v262, v267, v272, v278, v283, v287, v290, v292, v295, v301, v70);
    v71[6] = sub_1001063FC;
    v71[7] = v52;
    v71[8] = sub_10010620C;
    v71[9] = v54;
    v71[10] = sub_1001063FC;
    v71[11] = v1;
    v71[12] = sub_1001063FC;
    v71[13] = v55;
    v72 = v309;
    v71[14] = sub_10010620C;
    v71[15] = v59;
    swift_setDeallocating();
    sub_10009E36C();
    if (sub_1001076EC())
    {
      v73 = sub_10008E688();
      v74 = sub_10008E670();
      *v73 = sub_100106D18(v74, v75, v76, v77, v78, v79, v80, v81, v262, v267, v272, v278, v283, v287, v290, v292, v295, v301, v303, *(&v303 + 1), v304, v305, v323, v308, v309, v324, v312, v314, v316).n128_u32[0];
      sub_100106448();
      v82._countAndFlagsBits = v305;
      v82._object = v48;
      String.append(_:)(v82);
      sub_10009F134();
      sub_100106D28();
      sub_1000C44AC();

      *(v73 + 4) = v1;
      sub_100107628();
      v1 = v310;
      sub_100080210(v307, v310, v83);
      sub_10001E11C();

      *(v73 + 14) = &type metadata for Any;
      sub_100107A58(&_mh_execute_header, v72, v56, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_1000AFFE8();
      sub_100081C28(v73);
    }

    else
    {
    }

    sub_100080F0C(0xFFFFFFFFFFFFFE88);
  }

  v36 = sub_100080FB4(&unk_1003D0530, &qword_1002EBFC0);
  v37 = sub_100107830(v36);
  if ((v37 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_69:

  sub_100080F0C((v0 + 1264));
  v259 = sub_100107174();
  v260(v259);
  v86 = *(v0 + 1784);
LABEL_32:
  v306 = v86;
  v87 = 0;
  v88 = 0;
  v89 = *(v0 + 1976) + 64;
  v313 = *(v0 + 1976);
  sub_1001074CC();
  v92 = v91 & v90;
  v94 = (63 - v93) >> 6;
  v279 = "Ignoring custom buy param ";
  v284 = " because they are not allowed";
  sub_1000C446C();
  v273 = v95;
  sub_1000C446C();
  v293 = v96;
  v311 = v89;
  v315 = v94;
  if (!v92)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v97 = v88;
LABEL_38:
    v98 = __clz(__rbit64(v92));
    v92 &= v92 - 1;
    sub_100107920(v98 | (v97 << 6));
    sub_100107F2C();
LABEL_39:
    v99 = *(v0 + 592);
    *v317 = *(v0 + 576);
    *(v0 + 640) = v99;
    *(v0 + 656) = *(v0 + 608);
    v100 = *(v0 + 632);
    v101 = *(v0 + 2008);
    if (!v100)
    {
      break;
    }

    v102 = *v317;
    sub_10008B5D0((v0 + 640), (v0 + 1296));
    sub_10008943C();
    v103 = String._bridgeToObjectiveC()();
    v104 = sub_1001077CC();
    v106 = [v104 v105];

    if (v106)
    {
      if (qword_1003CBE58 != -1)
      {
        sub_1000B7CD0();
        v107 = swift_once();
      }

      v110 = sub_100107600(v107, v108, v109);
      v111 = sub_10007EDA4(v110, qword_1003F26C8);
      sub_100106C30();
      _StringGuts.grow(_:)(26);

      sub_1001072C0();
      v323 = v112 - 2;
      v324 = v293;
      v113._countAndFlagsBits = sub_10008943C();
      String.append(_:)(v113);
      v114 = v293;
      HIDWORD(v309) = HIDWORD(v323);
      v115 = [v103 logKey];
      v307 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v117 = v116;

      v118 = static os_log_type_t.info.getter();

      v119 = v111;
      v120 = Logger.logObject.getter();

      LODWORD(v308) = v118;
      if (sub_100107DF4())
      {
        sub_10008E688();
        v321 = v87;
        v121 = sub_100106C60();
        *v89 = sub_10010715C(v121, v122, v123, v124, v125, v126, v127, v128, v262, v267, v273, v279, v284, v287, v290, v293, v295, v301, v303, *(&v303 + 1), v304, v306, v307, v308, v323, v311, v313, v315, v316).n128_u32[0];
        sub_100106448();
        v129._countAndFlagsBits = v307;
        v129._object = v117;
        String.append(_:)(v129);
        sub_10009F134();
        v130 = sub_100106D28();

        *(v89 + 4) = v130;
        sub_100106E04();
        sub_100080210(v309, v114, v325);
        sub_1000B03CC();
        *(v89 + 14) = v119;
        _os_log_impl(&_mh_execute_header, v120, v308, "%{public}s%{public}s", v89, 0x16u);
        swift_arrayDestroy();
        v131 = v121;
        v87 = v321;
        sub_100081C28(v131);
        v132 = v89;
        v89 = v311;
        sub_100081C28(v132);
      }

      else
      {
      }

      sub_1001073A0();
      v189 = String._bridgeToObjectiveC()();

      v190 = sub_1001077CC();
      [v190 v191];

      swift_unknownObjectRelease();
    }

    else
    {
      *(v0 + 1608) = v102;
      *(v0 + 1616) = v100;
      v133 = swift_task_alloc();
      v141 = sub_100106CEC(v133, v134, v135, v136, v137, v138, v139, v140, v262, v267, v273, v279, v284, v287, v290, v293, v295, v301);
      v144 = sub_100178848(v141, v142, v143);

      v322 = v87;
      if (v144)
      {
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          v145 = swift_once();
        }

        v148 = sub_100107660(v145, v146, v147);
        sub_10007EDA4(v148, qword_1003F26C8);
        sub_1001072C0();
        sub_100107B00(v149, v263, v268, v274);
        v150._countAndFlagsBits = sub_10008943C();
        String.append(_:)(v150);
        v151 = [v87 logKey];
        v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v154 = v153;

        LODWORD(v307) = static os_log_type_t.default.getter();
        sub_1000B7E4C();
        v155 = swift_allocObject();
        v289 = v152;
        *(v155 + 16) = v152;
        *(v155 + 24) = v154;
        sub_1000B7E4C();
        v156 = swift_allocObject();
        *(v156 + 16) = v323;
        *(v156 + 24) = v324;
        v309 = v154;

        HIDWORD(v308) = HIDWORD(v324);

        v296 = Logger.logObject.getter();
        sub_100106B7C();
        v157 = swift_allocObject();
        sub_100107650(v157);
        sub_100106B7C();
        v158 = swift_allocObject();
        sub_1001072E8(v158);
        sub_1000B7E4C();
        v159 = swift_allocObject();
        *(v159 + 16) = sub_1001063F4;
        *(v159 + 24) = v155;
        sub_1000B7E4C();
        v160 = swift_allocObject();
        *(v160 + 16) = sub_1001063F0;
        *(v160 + 24) = v159;
        sub_100106B7C();
        v161 = swift_allocObject();
        *(v161 + 16) = v154;
        sub_100106B7C();
        v162 = swift_allocObject();
        sub_1001072E8(v162);
        sub_1000B7E4C();
        v163 = swift_allocObject();
        *(v163 + 16) = sub_1001063F8;
        *(v163 + 24) = v156;
        sub_1000B7E4C();
        v164 = swift_allocObject();
        *(v164 + 16) = sub_1001063F0;
        *(v164 + 24) = v163;
        v165 = sub_100080FB4(&qword_1003CE628, &qword_1002F1E90);
        v166 = sub_100107388(v165);
        sub_100106E6C(v166, v167, v168, v169, v170, v171, v172, v173, v174, v264, v269, v275, v280, v285, v289, v323, v294, v296, v302, v175);
        v176[6] = sub_1001063FC;
        v176[7] = v158;
        v176[8] = sub_10010620C;
        v176[9] = v160;
        v176[10] = sub_1001063FC;
        v176[11] = v161;
        v177 = v297;
        v176[12] = sub_1001063FC;
        v176[13] = v162;
        v176[14] = sub_10010620C;
        v176[15] = v164;
        v178 = v307;
        swift_setDeallocating();
        sub_10009E36C();
        if (os_log_type_enabled(v297, v307))
        {
          v179 = sub_10008E688();
          v180 = sub_10008E670();
          *v179 = sub_10010715C(v180, v181, v182, v183, v184, v185, v186, v187, v262, v267, v273, v279, v284, v287, v290, v293, v297, v301, v303, *(&v303 + 1), v304, v306, v307, v324, v309, v311, v313, v315, v316).n128_u32[0];
          sub_100106448();
          v188._countAndFlagsBits = v287;
          v188._object = v309;
          String.append(_:)(v188);
          sub_10009F134();
          sub_100106D28();
          sub_10001E104();

          *(v179 + 4) = v166;
          *(v179 + 12) = 2082;
          sub_100080210(v290, v308, v325);
          sub_100106CE0();

          *(v179 + 14) = v166;
          _os_log_impl(&_mh_execute_header, v177, v178, "%{public}s%{public}s", v179, 0x16u);
          swift_arrayDestroy();
          sub_100081C28(v180);
          sub_100106D44();
        }

        else
        {
        }

        v87 = v322;
        v89 = v311;
        sub_1001073A0();
        v251 = String._bridgeToObjectiveC()();

        v252 = sub_1001077CC();
        [v252 v253];

        swift_unknownObjectRelease();
        v295 = v322;
      }

      else
      {
        if (qword_1003CBE58 != -1)
        {
          sub_1000B7CD0();
          v145 = swift_once();
        }

        v192 = sub_100107660(v145, v146, v147);
        sub_10007EDA4(v192, qword_1003F26C8);
        v193 = sub_1000800E8(54);
        sub_100107678(v193, v194, v195, v196, v197, v198, v199, v200, v263, v268, v274, v280, v285);
        v201._countAndFlagsBits = sub_10008943C();
        String.append(_:)(v201);

        sub_100107CA4(v202, v203, v204, v205, v206, v207, v208, v209, v265, v270, v276, v281);
        v210 = [v87 logKey];
        v211 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v213 = v212;

        LODWORD(v309) = static os_log_type_t.default.getter();
        sub_1000B7E4C();
        v214 = swift_allocObject();
        v298 = v211;
        *(v214 + 16) = v211;
        *(v214 + 24) = v213;
        sub_1000B7E4C();
        v215 = swift_allocObject();
        HIDWORD(v307) = HIDWORD(v323);
        *(v215 + 16) = v323;
        *(v215 + 24) = v324;
        v319 = v213;

        v308 = Logger.logObject.getter();
        sub_100106B7C();
        *(swift_allocObject() + 16) = 34;
        sub_100106B7C();
        v216 = swift_allocObject();
        sub_1001072E8(v216);
        sub_1000B7E4C();
        v217 = swift_allocObject();
        *(v217 + 16) = sub_1001063F4;
        *(v217 + 24) = v214;
        sub_1000B7E4C();
        swift_allocObject();
        sub_10010701C();
        *(v218 + 16) = v219;
        *(v218 + 24) = v217;
        sub_100106B7C();
        v220 = swift_allocObject();
        *(v220 + 16) = 34;
        sub_100106B7C();
        v221 = swift_allocObject();
        sub_1001072E8(v221);
        sub_1000B7E4C();
        swift_allocObject();
        sub_10010704C();
        *(v222 + 16) = v223;
        *(v222 + 24) = v215;
        sub_1000B7E4C();
        v224 = swift_allocObject();
        sub_100106F74(v224);
        v225 = sub_100080FB4(&qword_1003CE628, &qword_1002F1E90);
        v226 = sub_100107388(v225);
        sub_100106E10(v226, v227, v228, v229, v230, v231, v232, v233, v234, v266, v271, v277, v282, v286, v288, v291, v294, v298, v302, v235);
        v236[6] = sub_1001063FC;
        v236[7] = v216;
        v236[8] = sub_10010620C;
        v236[9] = v323;
        sub_100106F5C();
        v237[10] = v238;
        v237[11] = v220;
        v239 = v308;
        v237[12] = sub_1001063FC;
        v237[13] = v221;
        v237[14] = sub_10010620C;
        v237[15] = v224;
        swift_setDeallocating();
        sub_10009E36C();
        if (sub_100107DF4())
        {
          v240 = sub_10008E688();
          v241 = sub_10008E670();
          *v240 = sub_10010715C(v241, v242, v243, v244, v245, v246, v247, v248, v262, v267, v273, v279, v284, v287, v290, v293, v299, v301, v303, *(&v303 + 1), v304, v306, v323, v308, v309, v311, v313, v315, v316).n128_u32[0];
          sub_100106448();
          v249._countAndFlagsBits = v300;
          v249._object = v319;
          String.append(_:)(v249);
          sub_10009F134();
          sub_100106D28();
          sub_1000C44AC();

          *(v240 + 4) = 34;
          sub_100107628();
          sub_100080210(v307, v324, v250);
          sub_10001E11C();

          *(v240 + 14) = 34;
          sub_100107A58(&_mh_execute_header, v239, v323, "%{public}s%{public}s");
          sub_1000B0048();
          sub_1000B0080();
          sub_100081C28(v240);
        }

        else
        {
        }

        v87 = v322;
        v295 = v322;
        v89 = v311;
      }
    }

    v94 = v315;
    sub_100080F0C((v0 + 1296));
    if (!v92)
    {
LABEL_34:
      while (1)
      {
        v97 = v88 + 1;
        if (__OFADD__(v88, 1))
        {
          break;
        }

        if (v97 >= v94)
        {
          v92 = 0;
          *(v0 + 592) = 0u;
          *(v0 + 608) = 0u;
          *(v0 + 576) = 0u;
          goto LABEL_39;
        }

        v92 = *(v89 + 8 * v97);
        ++v88;
        if (v92)
        {
          v88 = v97;
          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_69;
    }
  }

  *(v0 + 2032) = v87;
  v254 = [*(v0 + 1792) client];
  v255 = sub_1001A7AB4();

  if (qword_1003CC028 != -1)
  {
    sub_100106700(&qword_1003CC028);
  }

  sub_100107AE0();
  sub_1001074E8([v255 arrayForKey:qword_1003F2890]);
  sub_1001073D8();
  *(v0 + 16) = v256;
  *(v0 + 56) = v267;
  sub_1001066CC();
  v257 = sub_100080FB4(&qword_1003CE620, &qword_1002F0C20);
  sub_10010647C(v257);
  sub_100107AD4(COERCE_DOUBLE(1107296256));
  sub_10010649C();
  sub_100107944(v258, "valueWithCompletion:");

  return _swift_continuation_await(v254);
}

uint64_t *sub_1000FF948(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  result = sub_100086D24((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v7 = a4;

    return sub_10023FCD4();
  }

  else if (a2)
  {
    v8 = a2;

    return sub_10023FCD8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000FF9E0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = a2;
  v7 = sub_100105324(a1, v6);
  if (!v3)
  {
    __chkstk_darwin(v7);
    sub_10010553C(sub_100106158, v9, v8 & 1, a3);
  }
}

uint64_t sub_1000FFB34(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1000FFBF0;

  return sub_1000F3FA0();
}

uint64_t sub_1000FFBF0()
{
  sub_100098BB4();
  v2 = v1;
  sub_10008C070();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  sub_100098AB4();
  *v7 = v6;

  v8 = sub_1001073F0();
  v9(v8);
  _Block_release(v4);

  sub_100098AC4();

  return v10();
}

uint64_t sub_1000FFD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  v8 = sub_1000B01B0(v7);
  __chkstk_darwin(v8);
  type metadata accessor for TaskPriority();
  sub_1000B0690();
  sub_100081DFC(v9, v10, v11, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v3;
  v13[5] = a3;
  v13[6] = a1;
  v13[7] = a2;
  v14 = v3;

  sub_100165CBC();
}

uint64_t sub_1000FFE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[51] = a6;
  v7[52] = a7;
  v7[49] = a4;
  v7[50] = a5;
  type metadata accessor for Date();
  v7[53] = swift_task_alloc();
  v8 = type metadata accessor for PurchaseIntake.InAppPurchase();
  v7[54] = v8;
  v7[55] = *(v8 - 8);
  v7[56] = swift_task_alloc();
  sub_100080FB4(&unk_1003CE5D8, &qword_1002F0BF0);
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v9 = type metadata accessor for PurchaseIntake.InAppPurchase.InAppPurchaseType();
  v7[59] = v9;
  v7[60] = *(v9 - 8);
  v7[61] = swift_task_alloc();
  v7[62] = swift_task_alloc();
  type metadata accessor for Client.Server(0);
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();

  return _swift_task_switch(sub_100100024, 0, 0);
}

uint64_t sub_100100024()
{
  v64 = v1;
  v3 = *(v1 + 504);
  v4 = [*(v1 + 392) client];
  sub_100107704(v4, v5, v6, v7, v8, v9, v10, v11, v55, v59, v63[0], v63[1], v63[2], v63[3], v63[4], v63[5], v63[6], v63[7], v63[8], v1);

  v12 = sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
  sub_100106BC8(v12, v13, v14, v12);
  sub_100106430();
  sub_100105FA4(v3, v15);
  v16 = sub_100107510();
  v18 = sub_100105FA4(v16, v17);
  if ((v0 & 1) == 0)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      v18 = swift_once();
    }

    v29 = sub_100107538(v18, v19, v20);
    sub_1000B01C8(v29, qword_1003F26C8);
    v30 = [v0 logKey];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100107638();
    static os_log_type_t.debug.getter();
    sub_1000B0374();
    Logger.logObject.getter();
    sub_1000B02A4();
    if (!sub_1000B035C())
    {
      goto LABEL_15;
    }

    sub_1000B0064();
    sub_1000AFF64();
    sub_100106A78(4.8752e-34);
    sub_1001078E4(v31, v32, v33, v34, v35, v36, v37, v38, v56, v60, v63[0]);
    sub_10009F134();
    sub_100080210(v57, v61, v63);
    sub_1000B02F8();
    sub_1000AFD94();
    v39 = 0xD000000000000045;
    v40 = v2 | 0x8000000000000000;
    goto LABEL_14;
  }

  v21 = [*(v1 + 392) client];
  v22 = *&v21[OBJC_IVAR____TtC9storekitd6Client_storeItemID];

  if (v22)
  {
    v26 = [*(v1 + 392) client];
    v27 = *&v26[OBJC_IVAR____TtC9storekitd6Client_storeItemID];

    v28 = swift_task_alloc();
    *(v1 + 520) = v28;
    *v28 = v1;
    v28[1] = sub_100100414;

    return static PurchaseIntake.isEligibleForPurchaseProcessing(appItemID:)(v27);
  }

  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    v23 = swift_once();
  }

  v41 = sub_100107538(v23, v24, v25);
  sub_1000B01C8(v41, qword_1003F26C8);
  v42 = [&OBJC_IVAR____TtC9storekitd6Client_storeItemID logKey];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100107638();
  static os_log_type_t.fault.getter();
  sub_1000B0374();
  Logger.logObject.getter();
  sub_1000B02A4();
  if (sub_1000B035C())
  {
    sub_1000B0064();
    sub_1000AFF64();
    sub_100106A78(4.8752e-34);
    sub_1001078E4(v43, v44, v45, v46, v47, v48, v49, v50, v56, v60, v63[0]);
    sub_10009F134();
    sub_100080210(v58, v62, v63);
    sub_1000B02F8();
    sub_1000AFD94();
    v40 = v2 | 0x8000000000000000;
    v39 = 0xD000000000000029;
LABEL_14:
    *(&selRef__appTransactionSyncWithRevision_forceAuth_ + 6) = sub_100080210(v39, v40, v63);
    sub_1000AFE74(&_mh_execute_header, v51, v52, "%{public}s%{public}s");
    sub_1000B0010();
    sub_1000AFF34();
    sub_1000AFFE8();
  }

LABEL_15:

  sub_100106CA0();

  sub_100098AC4();

  return v53();
}

uint64_t sub_100100414()
{
  sub_10008BE9C();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 672) = v3;

  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100100530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v263 = v6;
  if (*(v6 + 672) != 1)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      a1 = swift_once();
    }

    v15 = sub_100107538(a1, a2, a3);
    sub_1000B01C8(v15, qword_1003F26C8);
    v16 = [v4 logKey];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100107638();
    static os_log_type_t.debug.getter();
    sub_1000B0374();
    Logger.logObject.getter();
    sub_1000B02A4();
    if (!sub_1000B035C())
    {
      goto LABEL_19;
    }

    sub_1000B0064();
    v17 = sub_1000AFF64();
    v18 = sub_10010779C(v17);
    sub_100106A24(v18, v19, v20, v21, v22, v23, v24, v25, 4.8752e-34, v193, v198, v203, v208, v213, v218, v223, v228, v233, v238, v244, v250, v256);
    sub_100106ED0();
    sub_100106EB4(v26, v27, v28, v29, v30, v31, v32, v33, v194, v199, v204, v209, v214, v219, v224, v229, v234, v239, v245, v251, v257);
    sub_1000B02F8();
    sub_1000AFD94();
    v34 = 0xD000000000000039;
LABEL_17:
    v55 = v8 | 0x8000000000000000;
    goto LABEL_18;
  }

  v10 = sub_1001057D0(*(v6 + 392), &selRef_productKind);
  if (!v11)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      v10 = swift_once();
    }

    v35 = sub_100107538(v10, v11, v12);
    sub_1000B01C8(v35, qword_1003F26C8);
    v36 = [v4 logKey];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100107638();
    static os_log_type_t.fault.getter();
    sub_1000B0374();
    Logger.logObject.getter();
    sub_1000B02A4();
    if (!sub_1000B035C())
    {
      goto LABEL_19;
    }

    sub_1000B0064();
    v37 = sub_1000AFF64();
    v38 = sub_10010779C(v37);
    sub_100106A24(v38, v39, v40, v41, v42, v43, v44, v45, 4.8752e-34, v193, v198, v203, v208, v213, v218, v223, v228, v233, v238, v244, v250, v256);
    sub_100106ED0();
    sub_100106EB4(v46, v47, v48, v49, v50, v51, v52, v53, v195, v200, v205, v210, v215, v220, v225, v230, v235, v240, v246, v252, v258);
    sub_1000B02F8();
    sub_1000AFD94();
    sub_1001074C0();
    v34 = v54 + 23;
    goto LABEL_17;
  }

  sub_100107BFC();
  v7 = &enum case for PurchaseIntake.InAppPurchase.InAppPurchaseType.consumable(_:);
  v14 = v3 == 0x62616D75736E6F43 && v13 == 0xEA0000000000656CLL;
  v5 = &enum case for PurchaseIntake.InAppPurchase.InAppPurchaseType.consumable(_:);
  if (v14)
  {
    goto LABEL_26;
  }

  if (sub_10010723C(0x62616D75736E6F43, 0xEA0000000000656CLL))
  {
    v5 = &enum case for PurchaseIntake.InAppPurchase.InAppPurchaseType.consumable(_:);
LABEL_26:

    goto LABEL_27;
  }

  v58 = v3 == 0x736E6F432D6E6F4ELL && v4 == 0xEE00656C62616D75;
  if (v58 || (sub_10010723C(0x736E6F432D6E6F4ELL, 0xEE00656C62616D75) & 1) != 0)
  {
    v5 = &enum case for PurchaseIntake.InAppPurchase.InAppPurchaseType.nonConsumable(_:);
    goto LABEL_26;
  }

  sub_1000B00A8();
  v158 = v3 == 0xD000000000000019 && v157 == v4;
  if (v158 || (sub_10010723C(0xD000000000000019, v157) & 1) != 0)
  {
    v5 = &enum case for PurchaseIntake.InAppPurchase.InAppPurchaseType.nonRenewingSubscription(_:);
    goto LABEL_26;
  }

  sub_1000B00A8();
  v164 = v3 == 0xD00000000000001BLL && v163 == v4;
  if (v164 || (sub_10010723C(0xD00000000000001BLL, v163) & 1) != 0 || ((sub_1000B00A8(), v3 == 0xD000000000000013) ? (v166 = v165 == v4) : (v166 = 0), v166 || (sub_10010723C(0xD000000000000013, v165) & 1) != 0 || ((sub_1000B00A8(), v3 == 0xD000000000000011) ? (v168 = v167 == v4) : (v168 = 0), v168)))
  {
    v5 = &enum case for PurchaseIntake.InAppPurchase.InAppPurchaseType.autoRenewableSubscription(_:);
    goto LABEL_26;
  }

  v169 = sub_10010723C(0xD000000000000011, v167);

  if ((v169 & 1) == 0)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      v170 = swift_once();
    }

    v173 = sub_100107538(v170, v171, v172);
    sub_1000B01C8(v173, qword_1003F26C8);
    v174 = [v4 logKey];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100107638();
    static os_log_type_t.fault.getter();
    sub_1000B0374();
    Logger.logObject.getter();
    sub_1000B02A4();
    if (!sub_1000B035C())
    {
      goto LABEL_19;
    }

    sub_10008E688();
    v175 = sub_1000AFF64();
    v176 = sub_10010779C(v175);
    sub_100106A24(v176, v177, v178, v179, v180, v181, v182, v183, 4.8752e-34, v193, v198, v203, v208, v213, v218, v223, v228, v233, v238, v244, v250, v256);
    sub_100106ED0();
    sub_100106EB4(v184, v185, v186, v187, v188, v189, v190, v191, v197, v202, v207, v212, v217, v222, v227, v232, v237, v243, v249, v255, v261);
    sub_1000B02F8();
    sub_1000AFD94();
    v34 = 0xD000000000000028;
    v55 = 0x8000000100317A40;
LABEL_18:
    *(v7 + 14) = sub_100080210(v34, v55, v262);
    sub_1000AFE74(&_mh_execute_header, v56, v57, "%{public}s%{public}s");
    sub_1000B0010();
    sub_1000AFF34();
    sub_1000AFFE8();
LABEL_19:

    goto LABEL_48;
  }

  v5 = &enum case for PurchaseIntake.InAppPurchase.InAppPurchaseType.autoRenewableSubscription(_:);
LABEL_27:
  v59 = *(v6 + 400);
  v60 = *(*(v6 + 480) + 104);
  (v60)(*(v6 + 496), *v5, *(v6 + 472));
  sub_1001DA990(0x6563697270, 0xE500000000000000, v59, (v6 + 144));
  if (!*(v6 + 168))
  {
    v129 = v6 + 144;
LABEL_42:
    v61 = sub_1000AF25C(v129, &unk_1003CCB70, &unk_1002ED050);
    goto LABEL_43;
  }

  v59 = &type metadata for Any;
  v61 = swift_dynamicCast();
  if ((v61 & 1) == 0)
  {
LABEL_43:
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      v61 = swift_once();
    }

    v130 = sub_100107538(v61, v62, v63);
    sub_1000B01C8(v130, qword_1003F26C8);
    v131 = [v59 logKey];
    v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v134 = v133;

    v135 = static os_log_type_t.fault.getter();

    v136 = Logger.logObject.getter();

    v137 = os_log_type_enabled(v136, v135);
    v138 = *(v6 + 496);
    v140 = *(v6 + 472);
    v139 = *(v6 + 480);
    if (v137)
    {
      v141 = sub_10008E688();
      v262[0] = sub_10008E670();
      *v141 = 136446466;
      sub_10009F0F8();
      v254 = v142;
      v260 = v143;
      v144._countAndFlagsBits = v132;
      v144._object = v134;
      String.append(_:)(v144);
      sub_100106ED0();
      v153 = sub_100106EB4(v145, v146, v147, v148, v149, v150, v151, v152, v193, v198, v203, v208, v213, v218, v223, v228, v233, "type for purchase intake", v138, v254, v260);

      *(v141 + 4) = v153;
      *(v141 + 12) = 2082;
      sub_1001074C0();
      *(v141 + 14) = sub_100080210(v154 + 16, v242 | 0x8000000000000000, v262);
      _os_log_impl(&_mh_execute_header, v136, v135, "%{public}s%{public}s", v141, 0x16u);
      swift_arrayDestroy();
      sub_10008BF90();
      sub_10008BF3C();

      (*(v139 + 8))(v248, v140);
    }

    else
    {

      (*(v139 + 8))(v138, v140);
    }

LABEL_48:
    sub_100106CA0();

    sub_100098AC4();
    sub_100107450();

    __asm { BRAA            X1, X16 }
  }

  v64 = *(v6 + 400);
  *(v6 + 528) = *(v6 + 368);
  sub_1001DA990(0x79636E6572727563, 0xE800000000000000, v64, (v6 + 176));
  if (!*(v6 + 200))
  {
    v129 = v6 + 176;
    goto LABEL_42;
  }

  v61 = swift_dynamicCast();
  if ((v61 & 1) == 0)
  {
    goto LABEL_43;
  }

  v65 = *(v6 + 480);
  v66 = *(v6 + 280);
  *(v6 + 536) = *(v6 + 272);
  *(v6 + 544) = v66;
  *(v6 + 552) = type metadata accessor for PurchaseIntake.InAppPurchase.OfferType();
  sub_1000B0690();
  sub_100081DFC(v67, v68, v69, v70);
  v71 = v65 + 104;
  v72 = sub_1000B04B8();
  v60(v72);
  sub_100105B48();
  v73 = sub_1000C44AC();
  v74 = sub_100107CE4(v73);
  v75 = *(v65 + 8);
  *(v6 + 560) = v75;
  *(v6 + 568) = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v76 = sub_1000C4514();
  (v75)(v76);
  if (v74 & 1) != 0 || (v78 = *(v6 + 496), v79 = sub_1000B04B8(), v60(v79), LOBYTE(v78) = sub_100107CE4(v78), v80 = sub_1000C4514(), (v75)(v80), (v78))
  {
    v81 = *(v6 + 392);
    NSDecimal.init(_:)(v77, *(v6 + 528));
    sub_10010733C(v82, v83, v84);
    sub_1001070B8();
    v85 = [v81 quantity];
    if (v85 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_1001071C0(v85, v86, v87, v88, v89, v90);
      v91 = sub_1001073E4();
      v92(v91);
      v71 = sub_1001057D0(v71, &selRef_subscriptionPeriod);
      v93 = sub_100105C8C(v9, v6 + 652, &unk_1003CE5D8, &qword_1002F0BF0);
      v101 = sub_100107180(v93, v94, v95, v96, v97, v98, v99, v100, v193, v198, v203, v208, v213, v218, v223, v228, v233, v238, v244);
      if (qword_1003CBE58 == -1)
      {
LABEL_35:
        v104 = sub_100107538(v101, v102, v103);
        sub_1000B01C8(v104, qword_1003F26C8);
        v105 = [v6 + 652 logKey];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100107638();
        static os_log_type_t.default.getter();
        sub_1000B0374();
        Logger.logObject.getter();
        sub_1000B02A4();
        if (sub_1000B035C())
        {
          sub_1000B0064();
          v106 = sub_1000AFF64();
          v107 = sub_10010779C(v106);
          sub_100106A24(v107, v108, v109, v110, v111, v112, v113, v114, 4.8752e-34, v193, v198, v203, v208, v213, v218, v223, v228, v233, v238, v244, v250, v256);
          sub_100106ED0();
          sub_100106EB4(v115, v116, v117, v118, v119, v120, v121, v122, v196, v201, v206, v211, v216, v221, v226, v231, v236, v241, v247, v253, v259);
          sub_1000B02F8();
          sub_1000AFD94();
          sub_1001074C0();
          *(v71 + 14) = sub_100080210(v123 + 24, v75 | 0x8000000000000000, v262);
          sub_1000AFE74(&_mh_execute_header, v124, v125, "%{public}s%{public}s");
          sub_1000B0010();
          sub_1000AFF34();
          sub_1000AFFE8();
        }

        v126 = swift_task_alloc();
        *(v6 + 624) = v126;
        *v126 = v6;
        sub_100106DB8(v126);
        sub_100107450();

        return static PurchaseIntake.processPurchase(_:appItemID:)(v127);
      }
    }

    sub_1000B7CD0();
    v101 = swift_once();
    goto LABEL_35;
  }

  v159 = *(v6 + 392);
  sub_10008E5A4(0, &unk_1003CE5F0, off_10037DC80);
  *(v6 + 576) = [v159 client];
  v160 = swift_task_alloc();
  *(v6 + 584) = v160;
  *v160 = v6;
  v160[1] = sub_100101010;
  sub_100107450();

  return sub_100148CA8(v161);
}

uint64_t sub_100101010()
{
  sub_100098BB4();
  v2 = v1;
  v3 = *v0;
  sub_1000AFE64();
  *v4 = v3;
  v6 = *(v5 + 576);
  v7 = *v0;
  sub_100098AB4();
  *v8 = v7;
  *(v3 + 592) = v2;

  v9 = swift_task_alloc();
  *(v3 + 600) = v9;
  *v9 = v7;
  v9[1] = sub_10010117C;

  return sub_1001495E8();
}

uint64_t sub_10010117C()
{
  sub_10008BE9C();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 608) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001012A4()
{
  sub_1000B061C();
  sub_1000B0004();
  v0[77] = String._bridgeToObjectiveC()();
  v0[2] = v0;
  v0[7] = v0 + 40;
  v0[3] = sub_1001013F8;
  v1 = swift_continuation_init();
  v0[17] = sub_100080FB4(&qword_1003CE600, &qword_1002F0BF8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100102400;
  v0[13] = &unk_100387788;
  v0[14] = v1;
  v2 = sub_1000B04B8();
  [v2 v3];
  sub_1000B0518();

  return _swift_continuation_await(v4);
}

uint64_t sub_1001013F8()
{
  sub_10008BE9C();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;
  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001014F4()
{
  v173 = v1;
  if (!*(v1 + 328))
  {
    v6 = *(v1 + 616);

    v7 = 0;
LABEL_8:
    v160 = v7;
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      v8 = swift_once();
    }

    v12 = sub_100107538(v8, v9, v10);
    sub_10007EDA4(v12, qword_1003F26C8);
    v13 = [v6 logKey];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100107B60();

    v14 = static os_log_type_t.fault.getter();

    v15 = Logger.logObject.getter();

    v16 = sub_100107DF4();
    v17 = *(v1 + 592);
    v18 = *(v1 + 568);
    v19 = *(v1 + 560);
    v20 = *(v1 + 464);
    v149 = *(v1 + 472);
    v154 = *(v1 + 496);
    if (v16)
    {
      sub_10008E688();
      v21 = sub_100106C60();
      sub_100107BF0(v21);
      sub_100106A14(4.8752e-34);
      v165 = v22;
      v169 = v23;
      v24._countAndFlagsBits = v2;
      v24._object = v0;
      String.append(_:)(v24);
      sub_100106ED0();
      sub_100106EB4(v25, v26, v27, v28, v29, v30, v31, v32, v129, v131, v133, v135, v137, "v16@?0@NSString8", v18, v19, v149, v154, v160, v165, v169);
      sub_1001076A0();
      sub_100106C10();
      sub_1001074C0();
      *(v4 + 14) = sub_100080210(v33 + 37, v140 | 0x8000000000000000, v172);
      sub_100106CC4(&_mh_execute_header, v34, v14, "%{public}s%{public}s");
      sub_10010709C();
      sub_100106D44();
      sub_1000B0080();

      sub_1000AF25C(v20, &unk_1003CE5D8, &qword_1002F0BF0);
      v146(v155, v150);
    }

    else
    {

      sub_1000AF25C(v20, &unk_1003CE5D8, &qword_1002F0BF0);
      v19(v154, v149);
    }

    goto LABEL_14;
  }

  v5 = *(v1 + 320);

  sub_1001073F0();
  String._bridgeToObjectiveC()();
  sub_1000C44AC();

  *(v1 + 384) = 0;
  v6 = sub_100027B30(v5, v1 + 384);

  v7 = *(v1 + 384);
  if (!v6)
  {
    v6 = *(v1 + 544);
    v11 = v7;
    sub_1000C44AC();
    goto LABEL_7;
  }

  v0 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v7;

  if (v7)
  {

LABEL_7:

    goto LABEL_8;
  }

  sub_1001DA990(0x49746375646F7270, 0xE900000000000064, v0, (v1 + 208));
  if (!*(v1 + 232))
  {

    v44 = sub_1000AF25C(v1 + 208, &unk_1003CCB70, &unk_1002ED050);
    goto LABEL_26;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:

LABEL_26:
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      v44 = swift_once();
    }

    v47 = sub_100107538(v44, v45, v46);
    sub_10007EDA4(v47, qword_1003F26C8);
    v48 = [v6 logKey];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = static os_log_type_t.default.getter();

    v53 = Logger.logObject.getter();

    v54 = os_log_type_enabled(v53, v52);
    v55 = *(v1 + 592);
    v56 = *(v1 + 568);
    v57 = *(v1 + 560);
    v58 = *(v1 + 464);
    v156 = *(v1 + 472);
    v161 = *(v1 + 496);
    if (v54)
    {
      sub_10008E688();
      v172[0] = sub_1000B002C();
      sub_1000AFD6C(4.8752e-34);
      v166 = v59;
      v170 = v60;
      v61._countAndFlagsBits = v49;
      v61._object = v51;
      String.append(_:)(v61);
      sub_100106ED0();
      sub_100106EB4(v62, v63, v64, v65, v66, v67, v68, v69, v129, v131, v133, v135, v137, v139, "bution purchase intake", v56, v57, v156, v161, v166, v170);
      sub_10001E104();

      *(v57 + 4) = v49;
      sub_100107150();
      sub_1001074C0();
      *(v57 + 14) = sub_100080210(v70 + 45, v143 | 0x8000000000000000, v172);
      sub_100106BA8(&_mh_execute_header, v71, v72, "%{public}s%{public}s");
      sub_1000B0048();
      sub_1000B0080();
      sub_10008BF90();

      sub_1000AF25C(v58, &unk_1003CE5D8, &qword_1002F0BF0);
      v151(v162, v157);
    }

    else
    {

      sub_1000AF25C(v58, &unk_1003CE5D8, &qword_1002F0BF0);
      (v57)(v161, v156);
    }

LABEL_14:
    sub_100106CA0();

    sub_100098AC4();
    sub_100107450();

    __asm { BRAA            X1, X16 }
  }

  v37 = *(v1 + 336);
  v6 = *(v1 + 344);
  v38 = [*(v1 + 392) productIdentifier];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  if (v37 == v39 && v6 == v41)
  {
  }

  else
  {
    sub_1001073F0();
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v43 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  sub_1001DA990(0xD000000000000011, 0x8000000100317B70, v0, (v1 + 240));

  if (!*(v1 + 264))
  {

    sub_1000AF25C(v1 + 240, &unk_1003CCB70, &unk_1002ED050);
    goto LABEL_45;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_45;
  }

  v39 = *(v1 + 592);
  v73 = *(v1 + 464);
  if (*(v1 + 352) == 0x4952545F45455246 && *(v1 + 360) == 0xEA00000000004C41)
  {

    sub_1000AF25C(v73, &unk_1003CE5D8, &qword_1002F0BF0);
    goto LABEL_43;
  }

  v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

  sub_1000AF25C(v73, &unk_1003CE5D8, &qword_1002F0BF0);
  if (v75)
  {
LABEL_43:
    v76 = *(v1 + 552);
    v77 = *(v1 + 464);
    v78 = &enum case for PurchaseIntake.InAppPurchase.OfferType.freeTrial(_:);
    goto LABEL_44;
  }

  v76 = *(v1 + 552);
  v77 = *(v1 + 464);
  v78 = &enum case for PurchaseIntake.InAppPurchase.OfferType.discounted(_:);
LABEL_44:
  (*(*(v76 - 8) + 104))(v77, *v78, v76);
  sub_100081DFC(v77, 0, 1, v76);
LABEL_45:
  v80 = *(v1 + 392);
  NSDecimal.init(_:)(v79, *(v1 + 528));
  sub_10010733C(v81, v82, v83);
  sub_1001070B8();
  v84 = [v80 quantity];
  if (v84 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1001071C0(v84, v85, v86, v87, v88, v89);
    v90 = sub_1001073E4();
    v91(v90);
    v39 = sub_1001057D0(v39, &selRef_subscriptionPeriod);
    v92 = sub_100105C8C(v4, v1 + 652, &unk_1003CE5D8, &qword_1002F0BF0);
    v100 = sub_100107180(v92, v93, v94, v95, v96, v97, v98, v99, v129, v131, v133, v135, v137, v139, v142, v145, v148, v153, v159);
    if (qword_1003CBE58 == -1)
    {
      goto LABEL_47;
    }
  }

  sub_1000B7CD0();
  v100 = swift_once();
LABEL_47:
  v103 = sub_100107538(v100, v101, v102);
  sub_1000B01C8(v103, qword_1003F26C8);
  v104 = [v1 + 652 logKey];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100107638();
  static os_log_type_t.default.getter();
  sub_1000B0374();
  Logger.logObject.getter();
  sub_1000B02A4();
  if (sub_1000B035C())
  {
    sub_1000B0064();
    v105 = sub_1000AFF64();
    v106 = sub_10010779C(v105);
    sub_100106A24(v106, v107, v108, v109, v110, v111, v112, v113, 4.8752e-34, v129, v131, v133, v135, v137, v139, v142, v145, v148, v153, v159, v164, v168);
    sub_100106ED0();
    sub_100106EB4(v114, v115, v116, v117, v118, v119, v120, v121, v130, v132, v134, v136, v138, v141, v144, v147, v152, v158, v163, v167, v171);
    sub_1000B02F8();
    sub_1000AFD94();
    sub_1001074C0();
    *(v39 + 14) = sub_100080210(v122 + 24, v3 | 0x8000000000000000, v172);
    sub_1000AFE74(&_mh_execute_header, v123, v124, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_1000AFF34();
    sub_1000AFFE8();
  }

  v125 = swift_task_alloc();
  *(v1 + 624) = v125;
  *v125 = v1;
  sub_100106DB8(v125);
  sub_100107450();

  return static PurchaseIntake.processPurchase(_:appItemID:)(v126);
}

uint64_t sub_100101E94()
{
  sub_10008BE9C();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100101FAC()
{
  sub_1000B02BC();
  v1 = v0[70];
  v2 = v0[58];
  (*(v0[55] + 8))(v0[56], v0[54]);
  sub_1000AF25C(v2, &unk_1003CE5D8, &qword_1002F0BF0);
  v3 = sub_100107174();
  v1(v3);
  sub_100106CA0();

  sub_100098AC4();

  return v4();
}

uint64_t sub_1001020C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = v4;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v5 = v4[76];
  v6 = type metadata accessor for SKLogger(0);
  sub_1000B01C8(v6, qword_1003F26C8);
  _StringGuts.grow(_:)(45);
  v4[36] = 0;
  v4[37] = 0xE000000000000000;
  sub_1000B00A8();
  v7._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v7);
  v4[47] = v5;
  sub_100080FB4(&qword_1003CCCB0, &unk_1002ED360);
  _print_unlocked<A, B>(_:_:)();
  v9 = v4[36];
  v8 = v4[37];
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC(&qword_1003CBE98);
  }

  TaskLocal.get()();
  v11 = v4[38];
  v10 = v4[39];
  v12 = static os_log_type_t.error.getter();

  Logger.logObject.getter();
  sub_1000B02A4();

  if (os_log_type_enabled(v3, v12))
  {
    sub_10008E688();
    sub_1000B002C();
    sub_1000AFD6C(4.8752e-34);
    v24 = v13;
    v25 = v15;
    v26 = v14;
    v16._countAndFlagsBits = v11;
    v16._object = v10;
    String.append(_:)(v16);
    sub_10009F134();
    sub_100080210(v24, v25, &v26);
    sub_100107144();

    *(v9 + 4) = v11;
    sub_100107150();
    sub_100080210(v9, v8, &v26);
    sub_1000B03CC();
    *(v9 + 14) = v25;
    sub_100107D64(&_mh_execute_header, v17, v18, "%{public}s%{public}s");
    sub_1000B0048();
    sub_1000B0080();
    sub_10008BF90();
  }

  else
  {
  }

  v4[77] = String._bridgeToObjectiveC()();
  v4[2] = v4;
  v4[7] = v4 + 40;
  v4[3] = sub_1001013F8;
  v19 = swift_continuation_init();
  v20 = sub_100080FB4(&qword_1003CE600, &qword_1002F0BF8);
  sub_10008BD44(v20);
  sub_10010771C(COERCE_DOUBLE(1107296256));
  v4[12] = sub_100102400;
  v4[13] = &unk_100387788;
  v4[14] = v19;
  v21 = sub_1000B04B8();
  [v21 v22];

  return _swift_continuation_await(v4 + 2);
}

uint64_t sub_100102400(uint64_t a1, uint64_t a2)
{
  v3 = *sub_100086D24((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return sub_1000982A8(v3, v4, v6);
}

uint64_t InAppTransactionTask.purchase(_:handle:)()
{
  sub_10008BE9C();
  v1[10] = v2;
  v1[11] = v0;
  v1[9] = v3;
  v4 = type metadata accessor for SKLogger(0);
  v1[12] = v4;
  sub_1000B01B0(v4);
  v1[13] = sub_1001078CC();
  v1[14] = swift_task_alloc();
  sub_100098AD0();

  return _swift_task_switch(v5, v6, v7);
}

{
  sub_10008BE9C();
  v1[24] = v2;
  v1[25] = v0;
  v1[23] = v3;
  v4 = type metadata accessor for SKLogger(0);
  v1[26] = v4;
  sub_1000B01B0(v4);
  v1[27] = sub_1001078CC();
  v1[28] = swift_task_alloc();
  sub_100098AD0();

  return _swift_task_switch(v5, v6, v7);
}

{
  sub_10008BE9C();
  v1[26] = v2;
  v1[27] = v0;
  v1[25] = v3;
  v4 = type metadata accessor for Client.Server(0);
  sub_1000B01B0(v4);
  v1[28] = sub_1000B05D0();
  v5 = type metadata accessor for SKLogger(0);
  v1[29] = v5;
  sub_1000B01B0(v5);
  v1[30] = sub_1001078CC();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v1[33] = v6;
  sub_1000B046C(v6);
  v1[34] = v7;
  v1[35] = sub_1001078CC();
  v1[36] = swift_task_alloc();
  sub_100098AD0();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100102594()
{
  sub_1001077D8();
  v96 = v0;
  v3 = [*(v0 + 88) dialogContext];
  *(v0 + 120) = v3;
  if (v3)
  {
    v4 = v3;
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v5 = *(v0 + 112);
    v6 = *(v0 + 88);
    v7 = *(v0 + 72);
    sub_10007EDA4(*(v0 + 96), qword_1003F26C8);
    sub_100106418();
    sub_100106178(v8, v5, v9);
    sub_100106A88();
    _StringGuts.grow(_:)(47);

    sub_1000C446C();
    v94 = 0xD00000000000002DLL;
    v95 = v10;
    *(v0 + 32) = sub_1001057D0(v7, &selRef_logUUID);
    *(v0 + 40) = v11;
    sub_100080FB4(&unk_1003CE550, &qword_1002F6970);
    v12._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v12);

    v13 = v95;
    v90 = v94;
    v14 = &selRef_domain;
    v15 = [v6 logKey];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = static os_log_type_t.default.getter();
    v20 = sub_100107A28(v19);
    v21 = sub_100107A40(v20);
    v22 = *(v0 + 112);
    if (v21)
    {
      v23 = sub_10008E688();
      v24 = sub_10008E670();
      *v23 = 136446466;
      sub_10009F0F8();
      v93 = v25;
      v94 = v26;
      v95 = v27;
      sub_100107BD0();
      v28._countAndFlagsBits = v16;
      v28._object = v18;
      String.append(_:)(v28);
      sub_1000E3F28();
      sub_1000E3F4C(v29, v30, v31, v32, v33, v34, v35, v36, v86, v87, v90, v93, v94, v95);
      sub_10001E104();

      *(v23 + 4) = v16;
      *(v23 + 12) = 2082;
      sub_100080210(v91, v13, &v93);
      sub_1000B047C();
      *(v23 + 14) = v22;
      sub_100107A58(&_mh_execute_header, 0xD00000000000002ALL, v2, "%{public}s%{public}s");
      sub_100098BC0();
      v37 = v24;
      v14 = &selRef_domain;
      sub_100081C28(v37);
      sub_100081C28(v23);

      sub_100106400();
      v39 = v88;
    }

    else
    {

      sub_100106400();
      v39 = v22;
    }

    sub_100105FA4(v39, v38);
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC(&qword_1003CBE98);
    }

    v71 = *(v0 + 80);
    v72 = [*(v0 + 88) v14[328]];
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    *(v0 + 128) = v75;
    *(v0 + 48) = v73;
    *(v0 + 56) = v75;
    v76 = swift_task_alloc();
    *(v0 + 136) = v76;
    *(v76 + 16) = v71;
    *(v76 + 24) = v4;
    v77 = swift_task_alloc();
    *(v0 + 144) = v77;
    v78 = sub_10008E5A4(0, &unk_1003CE560, AMSAuthenticateResult_ptr);
    *v77 = v0;
    v77[1] = sub_100102B00;
    v98 = 419;
    v99 = v78;
    sub_10009F1B8();

    return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v79);
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v40 = *(v0 + 104);
    v41 = *(v0 + 88);
    v42 = *(v0 + 72);
    sub_10007EDA4(*(v0 + 96), qword_1003F26C8);
    sub_100106418();
    sub_100106178(v43, v40, v44);
    sub_100106A88();
    _StringGuts.grow(_:)(68);
    sub_100107504();
    v45._countAndFlagsBits = 0xD000000000000042;
    v45._object = 0x80000001003175F0;
    String.append(_:)(v45);
    *(v0 + 16) = sub_1001057D0(v42, &selRef_logUUID);
    *(v0 + 24) = v46;
    sub_100080FB4(&unk_1003CE550, &qword_1002F6970);
    v100._countAndFlagsBits = String.init<A>(describing:)();
    sub_1001077FC(v100);

    v47 = v94;
    v48 = [v41 logKey];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100107908();
    v49 = static os_log_type_t.error.getter();
    v50 = sub_100107878(v49);
    v51 = sub_1001079AC(v50);
    v52 = *(v0 + 104);
    if (v51)
    {
      sub_10008E688();
      sub_100106C40();
      *v94 = 136446466;
      sub_100106460();
      sub_100107994();
      sub_1000E3F28();
      sub_1000E3F4C(v53, v54, v55, v56, v57, v58, v59, v60, v86, v87, v89, v93, v94, v95);
      v61 = sub_1000B0494();
      sub_100106A50(v61, v62, v63, v64, v65, v66);
      sub_1000B03CC();
      *(v47 + 14) = v52;
      sub_100106BA8(&_mh_execute_header, v67, v68, "%{public}s%{public}s");
      sub_1000B0048();
      sub_1000B0080();
      sub_10008BF90();

      sub_100106400();
      v70 = v92;
    }

    else
    {

      sub_100106400();
      v70 = v52;
    }

    sub_100105FA4(v70, v69);
    v81 = sub_10008B5E0();
    v82 = sub_1000894A0(&type metadata for StoreKitInternalError, v81);
    sub_100106D60(v82, v83);

    sub_100098AC4();

    return v84();
  }
}

uint64_t sub_100102B00()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 152) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100102C18()
{
  sub_100098BB4();
  swift_unknownObjectRelease();
  v1 = *(v0 + 64);

  sub_10009F198();

  return v2(v1);
}

uint64_t sub_100102C98()
{
  sub_10008BE9C();
  swift_unknownObjectRelease();

  sub_100098AC4();

  return v0();
}

uint64_t sub_100102D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100102DA4;

  return sub_1000A53AC(a2, a3);
}

uint64_t sub_100102DA4()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    sub_100098AD0();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_100102ED4()
{
  **(v0 + 16) = *(v0 + 32);
  sub_100098AC4();
  return v1();
}

uint64_t sub_100102F24(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100106210;

  return InAppTransactionTask.purchase(_:handle:)();
}

uint64_t sub_100103544()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 240) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100103640()
{
  sub_100098BB4();
  swift_unknownObjectRelease();
  v1 = *(v0 + 176);

  sub_10009F198();

  return v2(v1);
}

uint64_t sub_1001036C0()
{
  sub_100098BB4();
  swift_willThrow();
  swift_unknownObjectRelease();

  sub_100098AC4();

  return v0();
}

uint64_t sub_10010375C(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100103834;

  return InAppTransactionTask.purchase(_:handle:)();
}

uint64_t sub_100103834()
{
  sub_1000B02BC();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;
  sub_100098AB4();
  *v10 = v9;

  v11 = *(v5 + 40);
  if (v2)
  {
    _convertErrorToNSError(_:)();
    sub_10001E11C();

    (v11)[2](v11, 0, v4);

    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 40), v4, 0);
    _Block_release(v11);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_100104118()
{
  sub_1000B061C();
  sub_1000B0004();
  v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *v5 = *v1;

  if (v0)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    *(v4 + 312) = v3;
  }

  sub_100098AD0();
  sub_1000B0518();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100104950()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100104A4C()
{
  v1 = *(v0 + 336);
  swift_unknownObjectRelease();
  v2 = *(v0 + 192);

  swift_unknownObjectRelease();

  sub_10009F198();

  return v3(v2);
}

uint64_t sub_100105040()
{
  sub_1000B02BC();
  v1 = *(v0 + 336);
  swift_willThrow();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1001070E4();

  sub_100098AC4();

  return v2();
}

uint64_t sub_100105118(void *a1, int a2, void *a3, void *a4, void *aBlock)
{
  _Block_copy(aBlock);
  sub_100107144();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v5;
  v9[5] = a1;
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = sub_1001073F0();

  return sub_100224DF8(v13, v14);
}

uint64_t sub_10010519C(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100106210;

  return InAppTransactionTask.purchase(_:handle:)();
}

uint64_t *sub_100105274(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = sub_100086D24((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = v8;
    v11 = a4;

    return v11(v10, v9);
  }

  if (a2)
  {
    v9 = a2;
    v10 = v8;
    v11 = a5;

    return v11(v10, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_100105324(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16) - 1;
  while (1)
  {
    v5 = v4;
    if (v4 == -1)
    {

      return 0;
    }

    v6 = *(type metadata accessor for PurchaseIntentInternal(0) - 8);
    v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    v10 = [a2 productIdentifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v8 == v11 && v9 == v13)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v5 - 1;
    if (v15)
    {

      return v5;
    }
  }

  return v5;
}

unint64_t sub_100105474@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      v6 = *(type metadata accessor for PurchaseIntentInternal(0) - 8);
      return sub_100106178(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, a3, type metadata accessor for PurchaseIntentInternal);
    }
  }

  __break(1u);
  return result;
}

void *sub_10010553C@<X0>(void *(*a1)(void *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X8>)
{
  if (a3)
  {
    v6 = type metadata accessor for PurchaseIntentInternal(0);
    return sub_100081DFC(a4, 1, 1, v6);
  }

  else
  {
    v9 = a2;
    result = a1(a4, &v9);
    if (v4)
    {
      __break(1u);
    }

    else
    {
      v8 = type metadata accessor for PurchaseIntentInternal(0);
      return sub_100081DFC(a4, 0, 1, v8);
    }
  }

  return result;
}

uint64_t sub_1001055DC(void *a1)
{
  v1 = [a1 requestData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100105640(void *a1)
{
  v2 = [a1 dictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1001056B8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_100105720()
{
  sub_100098BB4();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = sub_1000B00E0(v2);
  *v3 = v4;
  v5 = sub_1000AFF94(v3);

  return sub_100102D04(v5, v6, v1);
}

uint64_t sub_1001057D0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100107BFC();
  }

  return sub_1001073F0();
}

uint64_t sub_10010582C()
{
  sub_1000B061C();
  sub_1000B0004();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  sub_100106AF8(v1);
  sub_1000B0518();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1001058C0()
{
  sub_1000B061C();
  sub_1000B0004();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  sub_100106AF8(v1);
  sub_1000B0518();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100105954()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001059A4()
{
  sub_1000B061C();
  sub_1000B0004();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  sub_100106AF8(v1);
  sub_1000B0518();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100105A38()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100105A88()
{
  sub_1000B02BC();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  v7 = sub_1000B00E0(v6);
  *v7 = v8;
  v9 = sub_1000AFF94(v7);

  return sub_1000FFE24(v9, v10, v1, v2, v3, v5, v4);
}

unint64_t sub_100105B48()
{
  result = qword_1003CE5E8;
  if (!qword_1003CE5E8)
  {
    type metadata accessor for PurchaseIntake.InAppPurchase.InAppPurchaseType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE5E8);
  }

  return result;
}

uint64_t sub_100105BA0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100105BE0()
{
  sub_100098BB4();
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = sub_1000B00E0(v4);
  *v5 = v6;
  v5[1] = sub_1000AFC98;

  return sub_1000FFB34(v1, v3, v2);
}

uint64_t sub_100105C8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100080FB4(a3, a4);
  sub_100098B7C();
  v5 = sub_1001073F0();
  v6(v5);
  return a2;
}

uint64_t sub_100105CE8()
{

  sub_1001077A8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100105D1C()
{
  type metadata accessor for Date();
  sub_100098B7C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_100105DE0(void *a1)
{
  v3 = type metadata accessor for Date();
  sub_1000B046C(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1 + v9;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v1 + v10);
  v15 = (v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = *v15;
  v17 = v15[1];

  return sub_100141DEC(a1, v1 + v8, v12, v13, v14, v16, v17);
}

uint64_t sub_100105EBC()
{

  sub_1000B7E4C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100105F0C()
{

  sub_1000B7E4C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100105F40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseIntentInternal(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100105FA4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100098B7C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_100106050()
{
  result = qword_1003CE630;
  if (!qword_1003CE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CE630);
  }

  return result;
}

uint64_t sub_100106178(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100098B7C();
  v4 = sub_1001073F0();
  v5(v4);
  return a2;
}

uint64_t sub_10010647C(uint64_t result)
{
  *(v1 + 328) = result;
  *(v1 + 272) = _NSConcreteStackBlock;
  return result;
}

void sub_10010649C()
{
  v2[36] = sub_1000FF948;
  v2[37] = v0;
  v2[38] = v1;
}

uint64_t sub_1001064B4(uint64_t result)
{
  *(result + 16) = sub_1001063F0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1001064D0(uint64_t result)
{
  *(result + 16) = sub_1001063F8;
  *(result + 24) = v1;
  return result;
}

__n128 *sub_1001064EC(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = sub_1001063FC;
  result[2].n128_u64[1] = v2;
  return result;
}

uint64_t sub_100106508(uint64_t result)
{
  *(result + 16) = sub_1001063F4;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100106524(uint64_t result)
{
  *(result + 16) = sub_1001063F4;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100106540(uint64_t result)
{
  *(result + 16) = sub_1001063F0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_10010655C(uint64_t result)
{
  *(result + 16) = sub_1001063F4;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100106578(uint64_t result)
{
  *(result + 16) = sub_1001063F0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100106594(uint64_t result)
{
  *(result + 16) = sub_1001063F0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1001065B0(uint64_t result)
{
  *(result + 16) = sub_1001063F0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1001065CC(uint64_t result)
{
  *(result + 16) = sub_1001063F0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1001065E8(uint64_t result)
{
  *(result + 16) = sub_1001063F8;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100106604(uint64_t result)
{
  *(result + 16) = sub_1001063F8;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100106634(uint64_t result)
{
  *(result + 96) = sub_1001063FC;
  *(result + 104) = v1;
  return result;
}

uint64_t sub_10010664C(uint64_t result)
{
  *(result + 80) = sub_1001063FC;
  *(result + 88) = v1;
  return result;
}

uint64_t sub_10010667C(uint64_t result)
{
  *(result + 80) = sub_1001063FC;
  *(result + 88) = v1;
  return result;
}

uint64_t sub_100106694(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1001066CC()
{
  *(v0 + 24) = sub_1000F5C74;

  return swift_continuation_init();
}

uint64_t sub_100106700(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100106720(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100106740(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100106760(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100106780(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1001067A0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1001067C0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1001067E0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100106800(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100106820(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100106840(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100106860(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100106880(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1001068A0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1001068C0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1001068E0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100106900(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100106920(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100106940(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100106960(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100106980(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1001069A0(uint64_t a1)
{
  *(a1 + 112) = sub_10010620C;
  *(a1 + 120) = v1;

  return swift_setDeallocating();
}

uint64_t sub_1001069C4(uint64_t a1)
{
  *(a1 + 112) = sub_10010620C;
  *(a1 + 120) = v1;

  return swift_setDeallocating();
}

void sub_1001069FC()
{
  v1[12] = sub_1000F2FD8;
  v1[13] = v0;
  v1[14] = v2;
}

void sub_100106A24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *v23 = a9;
  v26 = v24;
  v27 = v22;

  String.append(_:)(*&v26);
}

unint64_t sub_100106A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *(v9 + 4) = v8;
  *(v9 + 12) = 2082;

  return sub_100080210(v6, v7, va);
}

uint64_t sub_100106A98()
{
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_100104950;

  return swift_continuation_init();
}

uint64_t sub_100106AD0()
{
  v2 = *(v0 + 224);

  return sub_100105FA4(v2, type metadata accessor for Client.Server);
}

uint64_t sub_100106B4C(uint64_t result)
{
  *(v1 - 104) = 91;
  *(v1 - 96) = 0xE100000000000000;
  *(v1 - 88) = result;
  return result;
}

void sub_100106B88(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_100106BA8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_100106BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100081DFC(v5, 1, 2, a4);

  return sub_1001A9B8C(v4, v5);
}

uint64_t sub_100106C40()
{

  return swift_slowAlloc();
}

uint64_t sub_100106C60()
{

  return swift_slowAlloc();
}

uint64_t sub_100106C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + a2);
  *(v2 + 2136) = *v4;
  *(v2 + 2144) = v4[1];
}

uint64_t sub_100106CA0()
{
}

void sub_100106CC4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

unint64_t sub_100106D28()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  return sub_100080210(v2, v3, (v0 - 96));
}

uint64_t sub_100106D44()
{
}

uint64_t sub_100106D60(uint64_t a1, _BYTE *a2)
{
  *a2 = 4;

  return swift_willThrow();
}

__n128 sub_100106DE0(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a20)
{
  result = a20;
  a1[1] = a20;
  a1[2].n128_u64[0] = sub_1001063FC;
  a1[2].n128_u64[1] = v20;
  return result;
}

__n128 sub_100106E10(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a20)
{
  result = a20;
  a1[1] = a20;
  a1[2].n128_u64[0] = sub_1001063FC;
  a1[2].n128_u64[1] = v20;
  return result;
}

uint64_t sub_100106E34()
{

  return swift_arrayDestroy();
}

uint64_t sub_100106E50()
{
}

__n128 sub_100106E6C(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a20)
{
  result = a20;
  a1[1] = a20;
  a1[2].n128_u64[0] = sub_1001063FC;
  a1[2].n128_u64[1] = v20;
  return result;
}

uint64_t sub_100106E98(uint64_t result)
{
  *(result + 16) = sub_1001063F8;
  *(result + 24) = v1;
  return result;
}

unint64_t sub_100106EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{

  return sub_100080210(a20, a21, (v21 - 88));
}

void sub_100106ED0()
{
  v1 = 8285;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_100106EEC(uint64_t result)
{
  *(result + 16) = sub_1001063F0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100106F08(uint64_t result)
{
  *(result + 16) = sub_1001063F4;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100106F24(uint64_t result)
{
  *(result + 16) = sub_1001063F0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100106F40()
{

  return swift_slowAlloc();
}

uint64_t sub_100106F74(uint64_t result)
{
  *(result + 16) = sub_1001063F0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100106F8C(uint64_t result)
{
  *(result + 64) = sub_10010620C;
  *(result + 72) = v1;
  return result;
}

uint64_t sub_100106FD4(uint64_t result)
{
  *(result + 16) = sub_1001063F0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_100107004(uint64_t result)
{
  *(result + 16) = sub_1001063F4;
  *(result + 24) = v1;
  return result;
}

unint64_t sub_100107064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24)
{

  return sub_100080210(a23, a24, (v24 - 88));
}

void sub_100107080()
{
  v1 = 8285;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_10010709C()
{

  return swift_arrayDestroy();
}

uint64_t sub_1001070E4()
{
}

void sub_100107104(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

void sub_100107124(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_100107180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, uint64_t a19)
{

  return PurchaseIntake.InAppPurchase.init(price:quantity:currencyCode:purchaseDate:purchaseType:subscriptionDuration:offerType:)(a17 | (a16 << 32) | (a15 << 48), a19, a18, v20, a13, a14, v21, v24, v22, v23, v19);
}

uint64_t sub_1001071C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static Date.now.getter();
}

uint64_t sub_100107200()
{
  *(v0 + 1512) = 0x6449656C646E7562;
  *(v0 + 1520) = 0xE800000000000000;
  return v0 + 1512;
}

uint64_t sub_10010723C(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id sub_10010729C(uint64_t a1, const char *a2)
{

  return [v6 a2];
}

id sub_100107324(void *a1)
{
  v4 = *(v2 + 1640);

  return [a1 v4];
}

void sub_10010733C(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 632) = a1;
  *(v4 + 640) = a2;
  *(v4 + 648) = a3;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;

  NSDecimalRound(v3, (v4 + 632), 3, NSRoundPlain);
}

id sub_100107370(void *a1)
{
  v4 = *(v2 + 1640);

  return [a1 v4];
}