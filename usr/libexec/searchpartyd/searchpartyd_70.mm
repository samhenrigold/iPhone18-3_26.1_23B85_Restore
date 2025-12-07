uint64_t sub_1007C5378()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1007D4EA4;
  }

  else
  {
    v4 = sub_1007C54A4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1007C54A4()
{
  if (qword_101694950 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  *(v0 + 168) = qword_1016A9E20;
  *(v0 + 180) = *(v1 + 24);
  sub_1000BC4D4(&qword_1016A4720, &qword_1013B1060);
  sub_1000041A4(&unk_1016C2150, &qword_1016A4720, &qword_1013B1060, &protocol conformance descriptor for AsyncKeyedThrottle<A>);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007C55B0, v3, v2);
}

uint64_t sub_1007C55B0()
{
  v1 = *(v0 + 24);
  dispatch thunk of AsyncKeyedThrottle.throttle(key:block:)();

  return _swift_task_switch(sub_1007D4E9C, v1, 0);
}

uint64_t sub_1007C5654(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 220) = a3;
  *(v4 + 32) = a1;
  v5 = type metadata accessor for UUID();
  *(v4 + 56) = v5;
  v6 = *(v5 - 8);
  *(v4 + 64) = v6;
  *(v4 + 72) = *(v6 + 64);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  *(v4 + 96) = swift_task_alloc();
  v7 = type metadata accessor for MemberSharingCircle(0);
  *(v4 + 104) = v7;
  v8 = *(v7 - 8);
  *(v4 + 112) = v8;
  *(v4 + 120) = *(v8 + 64);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_1007C57E8, v3, 0);
}

uint64_t sub_1007C57E8()
{
  v22 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 32);
  v3 = type metadata accessor for Logger();
  *(v0 + 160) = sub_1000076D4(v3, qword_10177A560);
  sub_1007D493C(v2, v1, type metadata accessor for MemberSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 220);
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v7 = 136315651;
    if (v6)
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    else
    {
      *(v0 + 24) = *(v0 + 40);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = v11;
    }

    v12 = *(v0 + 152);
    v13 = sub_1000136BC(v8, v9, &v21);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_1007D49A4(v12, type metadata accessor for MemberSharingCircle);
    v17 = sub_1000136BC(v14, v16, &v21);

    *(v7 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Download Keys for circle %{private,mask.hash}s", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v10 = *(v0 + 152);

    sub_1007D49A4(v10, type metadata accessor for MemberSharingCircle);
  }

  v18 = *(v0 + 104);
  v19 = *(*(v0 + 48) + 152);
  *(v0 + 168) = v19;
  *(v0 + 216) = *(v18 + 20);

  return _swift_task_switch(sub_1007C5AD8, v19, 0);
}

uint64_t sub_1007C5AD8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  (*(v4 + 16))(v2, *(v0 + 32) + *(v0 + 216), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 176) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 184) = v7;
  *v7 = v0;
  v7[1] = sub_1007C5C40;
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1007D4EAC, v6, v9);
}

uint64_t sub_1007C5C40()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_1007C5D6C, v1, 0);
}

uint64_t sub_1007C5D6C()
{
  v34 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  if ((*(*(v0 + 112) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);
LABEL_3:
    sub_1007D493C(*(v0 + 32), *(v0 + 128), type metadata accessor for MemberSharingCircle);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 220);
      v6 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v6 = 136315651;
      if (v5)
      {
        v7 = 0;
        v8 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 16) = *(v0 + 40);
        v7 = dispatch thunk of CustomStringConvertible.description.getter();
        v8 = v24;
      }

      v25 = *(v0 + 128);
      v26 = sub_1000136BC(v7, v8, &v33);

      *(v6 + 4) = v26;
      *(v6 + 12) = 2160;
      *(v6 + 14) = 1752392040;
      *(v6 + 22) = 2081;
      sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_1007D49A4(v25, type metadata accessor for MemberSharingCircle);
      v30 = sub_1000136BC(v27, v29, &v33);

      *(v6 + 24) = v30;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s Skip keys download for %{private,mask.hash}s.\nShare has not been accepted yet.", v6, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v23 = *(v0 + 128);

      sub_1007D49A4(v23, type metadata accessor for MemberSharingCircle);
    }

    v31 = *(v0 + 8);

    return v31();
  }

  v9 = *(v0 + 144);
  sub_1007D48B4(v2, v9, type metadata accessor for MemberSharingCircle);
  v10 = *(v9 + *(v1 + 40));
  v11 = v10 > 4;
  v12 = (1 << v10) & 0x16;
  if (v11 || v12 == 0)
  {
    sub_1007D49A4(*(v0 + 144), type metadata accessor for MemberSharingCircle);
    goto LABEL_3;
  }

  if (qword_101694950 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 136);
  v15 = *(v0 + 112);
  v16 = *(v0 + 48);
  v17 = *(v0 + 32);
  v18 = *(*(v0 + 104) + 24);
  sub_1007D493C(v17, v14, type metadata accessor for MemberSharingCircle);
  v19 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v0 + 192) = v20;
  *(v20 + 16) = v16;
  sub_1007D48B4(v14, v20 + v19, type metadata accessor for MemberSharingCircle);
  v32 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v21 = swift_task_alloc();
  *(v0 + 200) = v21;
  *v21 = v0;
  v21[1] = sub_1007C6260;

  return (v32)(v17 + v18, &unk_1013BCC48, v20, sub_1007C6DE8, 0);
}

uint64_t sub_1007C6260()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_1007C646C;
  }

  else
  {
    v4 = sub_1007C63A8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1007C63A8()
{
  sub_1007D49A4(*(v0 + 144), type metadata accessor for MemberSharingCircle);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007C646C()
{
  sub_1007D49A4(*(v0 + 144), type metadata accessor for MemberSharingCircle);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007C6534(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for MemberSharingCircle(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v2[9] = *(v5 + 64);
  v2[10] = swift_task_alloc();
  v2[11] = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1007C66A0, 0, 0);
}

uint64_t sub_1007C66A0()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 16) + 152);
  *(v0 + 112) = v2;
  *(v0 + 152) = *(v1 + 20);
  return _swift_task_switch(sub_1007C66D0, v2, 0);
}

uint64_t sub_1007C66D0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  (*(v4 + 16))(v2, *(v0 + 24) + *(v0 + 152), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 120) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = sub_1007C683C;
  v8 = *(v0 + 104);
  v9 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1007D4EAC, v6, v9);
}

uint64_t sub_1007C683C()
{

  return _swift_task_switch(sub_1007C6954, 0, 0);
}

uint64_t sub_1007C6954()
{
  v1 = v0[12];
  v2 = v0[4];
  v3 = v0[5];
  sub_1000D2A70(v0[13], v1, &unk_101698BC0, &qword_10138C440);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v0[12], &unk_101698BC0, &qword_10138C440);
    sub_1001BB034();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    sub_10000B3A8(v0[13], &unk_101698BC0, &qword_10138C440);

    v5 = v0[1];

    return v5(0);
  }

  else
  {
    sub_1007D48B4(v0[12], v0[6], type metadata accessor for MemberSharingCircle);
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_1007C6B3C;
    v8 = v0[6];

    return sub_1007C7AC0(v8, 0);
  }
}

uint64_t sub_1007C6B3C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1007C6D18;
  }

  else
  {
    v2 = sub_1007C6C50;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1007C6C50()
{
  v1 = v0[13];
  sub_1007D49A4(v0[6], type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v1, &unk_101698BC0, &qword_10138C440);

  v2 = v0[1];

  return v2(1);
}

uint64_t sub_1007C6D18()
{
  sub_1007D49A4(v0[6], type metadata accessor for MemberSharingCircle);
  sub_10000B3A8(v0[13], &unk_101698BC0, &qword_10138C440);

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_1007C6DE8()
{
  sub_1001BB034();
  swift_allocError();
  *v0 = 0;
  return swift_willThrow();
}

uint64_t sub_1007C6E34(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for MemberSharingCircle(0);
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1007C6FAC, v1, 0);
}

uint64_t sub_1007C6FAC()
{
  v18 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  *(v0 + 120) = sub_1000076D4(v3, qword_10177A560);
  sub_1007D493C(v2, v1, type metadata accessor for MemberSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1007D49A4(v7, type metadata accessor for MemberSharingCircle);
    v13 = sub_1000136BC(v10, v12, &v17);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Force download Keys for circle %{private,mask.hash}s", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_1007D49A4(v7, type metadata accessor for MemberSharingCircle);
  }

  v14 = *(v0 + 80);
  v15 = *(*(v0 + 24) + 152);
  *(v0 + 128) = v15;
  *(v0 + 168) = *(v14 + 20);

  return _swift_task_switch(sub_1007C7224, v15, 0);
}

uint64_t sub_1007C7224()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  (*(v4 + 16))(v2, *(v0 + 16) + *(v0 + 168), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 136) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = sub_1007C738C;
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1007D4EAC, v6, v9);
}

uint64_t sub_1007C738C()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1007C74B8, v1, 0);
}

uint64_t sub_1007C74B8()
{
  v23 = v0;
  v1 = v0[10];
  v2 = v0[9];
  if ((*(v0[11] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);
LABEL_3:
    sub_1007D493C(v0[2], v0[12], type metadata accessor for MemberSharingCircle);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[12];
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v7 = 141558275;
      *(v7 + 4) = 1752392040;
      *(v7 + 12) = 2081;
      sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v10;
      sub_1007D49A4(v6, type metadata accessor for MemberSharingCircle);
      v12 = sub_1000136BC(v9, v11, &v22);

      *(v7 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v3, v4, "Skip keys download for %{private,mask.hash}s.\nShare has not been accepted yet.", v7, 0x16u);
      sub_100007BAC(v8);
    }

    else
    {

      sub_1007D49A4(v6, type metadata accessor for MemberSharingCircle);
    }

    v21 = v0[1];

    return v21();
  }

  v13 = v0[13];
  sub_1007D48B4(v2, v13, type metadata accessor for MemberSharingCircle);
  v14 = *(v13 + *(v1 + 40));
  v15 = v14 > 4;
  v16 = (1 << v14) & 0x16;
  if (v15 || v16 == 0)
  {
    sub_1007D49A4(v0[13], type metadata accessor for MemberSharingCircle);
    goto LABEL_3;
  }

  v18 = swift_task_alloc();
  v0[19] = v18;
  *v18 = v0;
  v18[1] = sub_1007C7820;
  v19 = v0[2];

  return sub_1007C7AC0(v19, 0);
}

uint64_t sub_1007C7820()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1007C7A00;
  }

  else
  {
    v4 = sub_1007C794C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1007C794C()
{
  sub_1007D49A4(*(v0 + 104), type metadata accessor for MemberSharingCircle);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007C7A00()
{
  sub_1007D49A4(*(v0 + 104), type metadata accessor for MemberSharingCircle);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007C7AC0(uint64_t a1, char a2)
{
  *(v3 + 75) = a2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v2;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v3 + 136) = swift_task_alloc();
  v4 = type metadata accessor for MemberSharingCircle(0);
  *(v3 + 144) = v4;
  v5 = *(v4 - 8);
  *(v3 + 152) = v5;
  *(v3 + 160) = *(v5 + 64);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_1007C7BF4, v2, 0);
}

uint64_t sub_1007C7BF4()
{
  v18 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[15];
  v3 = type metadata accessor for Logger();
  v0[26] = sub_1000076D4(v3, qword_10177A560);
  sub_1007D493C(v2, v1, type metadata accessor for MemberSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[25];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1007D49A4(v7, type metadata accessor for MemberSharingCircle);
    v13 = sub_1000136BC(v10, v12, &v17);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Process keys downloading for circle %{private,mask.hash}s.", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_1007D49A4(v7, type metadata accessor for MemberSharingCircle);
  }

  sub_1000035D0((v0[16] + 112), *(v0[16] + 136));
  v14 = swift_task_alloc();
  v0[27] = v14;
  *v14 = v0;
  v14[1] = sub_1007C7EA8;
  v15 = v0[15];

  return sub_100C746A0(v15);
}

uint64_t sub_1007C7EA8(uint64_t a1)
{
  v3 = *v2;
  v3[28] = a1;
  v3[29] = v1;

  if (v1)
  {
    v4 = v3[16];

    return _swift_task_switch(sub_1007C82C8, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[30] = v5;
    *v5 = v3;
    v5[1] = sub_1007C8030;

    return sub_100EC7608(2);
  }
}

uint64_t sub_1007C8030()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 248) = v3;
  *v3 = v2;
  v3[1] = sub_1007C81A0;
  v4 = *(v1 + 75);
  v5 = *(v1 + 120);
  v6 = *(v1 + 224);

  return sub_1007C9364(v6, v5, v4);
}

uint64_t sub_1007C81A0()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = sub_1007C8FA8;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_1007C8834;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1007C82C8()
{
  v27 = v0;
  sub_1007D493C(*(v0 + 120), *(v0 + 192), type metadata accessor for MemberSharingCircle);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 192);
    v4 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v4 = 141558531;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    v7 = v6;
    sub_1007D49A4(v3, type metadata accessor for MemberSharingCircle);
    v8 = sub_1000136BC(v5, v7, &v26);

    *(v4 + 14) = v8;
    *(v4 + 22) = 2082;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_1000136BC(v9, v10, &v26);

    *(v4 + 24) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to download keys for circle: %{private,mask.hash}s,\nerror: %{public}s", v4, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v12 = *(v0 + 192);

    sub_1007D49A4(v12, type metadata accessor for MemberSharingCircle);
  }

  *(v0 + 80) = *(v0 + 232);
  swift_errorRetain();
  *(v0 + 272) = sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast() && *(v0 + 73) == 19 && (*(v0 + 96) = *(v0 + 232), swift_errorRetain(), (swift_dynamicCast() & 1) != 0))
  {
    *(v0 + 88) = *(v0 + 232);
    swift_errorRetain();
    if (swift_dynamicCast() && *(v0 + 72) == 1 && *(v0 + 64) > 5uLL)
    {
      v13 = *(v0 + 176);
      v14 = *(v0 + 152);
      v16 = *(v0 + 128);
      v15 = *(v0 + 136);
      v17 = *(v0 + 120);
      v18 = type metadata accessor for TaskPriority();
      (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
      sub_1007D493C(v17, v13, type metadata accessor for MemberSharingCircle);
      v20 = sub_1007D471C(&qword_1016A9F08, v19, type metadata accessor for ShareKeysDownloadUseCase, &unk_1013BCB88);
      v21 = (*(v14 + 80) + 40) & ~*(v14 + 80);
      v22 = swift_allocObject();
      v22[2] = v16;
      v22[3] = v20;
      v22[4] = v16;
      sub_1007D48B4(v13, v22 + v21, type metadata accessor for MemberSharingCircle);
      swift_retain_n();
      sub_10025EDD4(0, 0, v15, &unk_1013BCC38, v22);
    }

    else
    {
    }

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    v23 = swift_task_alloc();
    *(v0 + 280) = v23;
    *v23 = v0;
    v23[1] = sub_1007C8C48;

    return sub_100EC7608(0);
  }
}

uint64_t sub_1007C8834()
{
  v15 = v0;
  sub_1007D493C(v0[15], v0[23], type metadata accessor for MemberSharingCircle);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[23];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 141558275;
    *(v5 + 4) = 1752392040;
    *(v5 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
    sub_1007D49A4(v4, type metadata accessor for MemberSharingCircle);
    v10 = sub_1000136BC(v7, v9, &v14);

    *(v5 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Done processing members for circle %{private,mask.hash}s.", v5, 0x16u);
    sub_100007BAC(v6);
  }

  else
  {

    sub_1007D49A4(v4, type metadata accessor for MemberSharingCircle);
  }

  sub_1000035D0((v0[16] + 160), *(v0[16] + 184));
  v11 = swift_task_alloc();
  v0[33] = v11;
  *v11 = v0;
  v11[1] = sub_1007C8A94;
  v12 = v0[15];

  return sub_10108147C(v12);
}

uint64_t sub_1007C8A94()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1007C8C48()
{
  v1 = *(*v0 + 128);

  return _swift_task_switch(sub_1007C8D58, v1, 0);
}

uint64_t sub_1007C8D58()
{
  *(v0 + 88) = *(v0 + 232);
  swift_errorRetain();
  if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 72) == 1 ? (v1 = *(v0 + 64) > 5uLL) : (v1 = 0), v1))
  {
    v2 = *(v0 + 176);
    v3 = *(v0 + 152);
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 120);
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    sub_1007D493C(v6, v2, type metadata accessor for MemberSharingCircle);
    v9 = sub_1007D471C(&qword_1016A9F08, v8, type metadata accessor for ShareKeysDownloadUseCase, &unk_1013BCB88);
    v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v11 = swift_allocObject();
    v11[2] = v5;
    v11[3] = v9;
    v11[4] = v5;
    sub_1007D48B4(v2, v11 + v10, type metadata accessor for MemberSharingCircle);
    swift_retain_n();
    sub_10025EDD4(0, 0, v4, &unk_1013BCC38, v11);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1007C8FA8()
{
  v19 = v0;
  v1 = v0[21];
  v2 = v0[15];

  sub_1007D493C(v2, v1, type metadata accessor for MemberSharingCircle);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21];
    v6 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v6 = 141558531;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
    sub_1007D49A4(v5, type metadata accessor for MemberSharingCircle);
    v10 = sub_1000136BC(v7, v9, &v18);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2082;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = sub_1000136BC(v11, v12, &v18);

    *(v6 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to process circle: %{private,mask.hash}s,\nerror: %{public}s", v6, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v14 = v0[21];

    sub_1007D49A4(v14, type metadata accessor for MemberSharingCircle);
  }

  sub_1000035D0((v0[16] + 160), *(v0[16] + 184));
  v15 = swift_task_alloc();
  v0[33] = v15;
  *v15 = v0;
  v15[1] = sub_1007C8A94;
  v16 = v0[15];

  return sub_10108147C(v16);
}

uint64_t sub_1007C929C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1007C92BC, a4, 0);
}

uint64_t sub_1007C92BC()
{
  sub_1000035D0((v0[2] + 160), *(v0[2] + 184));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1007D4EA0;
  v2 = v0[3];

  return sub_10107F924(v2);
}

uint64_t sub_1007C9364(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 288) = a2;
  *(v4 + 296) = v3;
  *(v4 + 976) = a3;
  *(v4 + 280) = a1;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_1016A9F10, &unk_1013BCBC8);
  *(v4 + 320) = v5;
  *(v4 + 328) = *(v5 - 8);
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  *(v4 + 352) = swift_task_alloc();
  v6 = type metadata accessor for MemberPeerTrust(0);
  *(v4 + 360) = v6;
  *(v4 + 368) = *(v6 - 8);
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  *(v4 + 392) = swift_task_alloc();
  v7 = type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member(0);
  *(v4 + 400) = v7;
  *(v4 + 408) = *(v7 - 8);
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 432) = swift_task_alloc();
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 448) = swift_task_alloc();
  *(v4 + 456) = swift_task_alloc();
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = swift_task_alloc();
  *(v4 + 480) = swift_task_alloc();
  v8 = type metadata accessor for MemberSharingCircle(0);
  *(v4 + 488) = v8;
  v9 = *(v8 - 8);
  *(v4 + 496) = v9;
  *(v4 + 504) = *(v9 + 64);
  *(v4 + 512) = swift_task_alloc();
  *(v4 + 520) = swift_task_alloc();
  *(v4 + 528) = swift_task_alloc();
  *(v4 + 536) = swift_task_alloc();
  *(v4 + 544) = swift_task_alloc();
  *(v4 + 552) = swift_task_alloc();
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  *(v4 + 576) = swift_task_alloc();
  *(v4 + 584) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v4 + 592) = v10;
  v11 = *(v10 - 8);
  *(v4 + 600) = v11;
  *(v4 + 608) = *(v11 + 64);
  *(v4 + 616) = swift_task_alloc();

  return _swift_task_switch(sub_1007C9740, v3, 0);
}

uint64_t sub_1007C9740()
{
  v1 = *(v0 + 488);
  v2 = *(*(v0 + 296) + 152);
  *(v0 + 624) = v2;
  *(v0 + 960) = *(v1 + 24);
  return _swift_task_switch(sub_1007C9770, v2, 0);
}

uint64_t sub_1007C9770()
{
  v1 = *(v0 + 960);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 600);
  v5 = *(v0 + 592);
  v6 = *(v0 + 288);
  v7 = *(v4 + 16);
  *(v0 + 632) = v7;
  *(v0 + 640) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6 + v1, v5);
  v8 = *(v4 + 80);
  *(v0 + 964) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 648) = v10;
  *(v10 + 16) = v2;
  v11 = *(v4 + 32);
  *(v0 + 656) = v11;
  *(v0 + 664) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v3, v5);

  v12 = swift_task_alloc();
  *(v0 + 672) = v12;
  v13 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v12 = v0;
  v12[1] = sub_1007C9920;

  return unsafeBlocking<A>(context:_:)(v0 + 264, 0xD000000000000010, 0x800000010134A8C0, sub_10062CA88, v10, v13);
}

uint64_t sub_1007C9920()
{
  v1 = *(*v0 + 624);

  return _swift_task_switch(sub_1007C9A4C, v1, 0);
}

uint64_t sub_1007C9A4C()
{
  v1 = v0[37];
  v0[85] = v0[33];
  return _swift_task_switch(sub_1007C9A70, v1, 0);
}

uint64_t sub_1007C9A70()
{
  v47 = v0;
  v1 = *(v0 + 680);
  v2 = *(v0 + 288);
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = 0;
  v5 = sub_10013CEF0(sub_1007D4650, v3, v1);
  *(v0 + 688) = v5;

  v6 = v5[2];
  *(v0 + 696) = v6;
  if (!v6)
  {
LABEL_11:
    v4 = _swiftEmptyArrayStorage;
    *(v0 + 744) = _swiftEmptyArrayStorage;
    if (qword_101694480 == -1)
    {
LABEL_12:
      v19 = *(v0 + 576);
      v20 = *(v0 + 288);
      v21 = type metadata accessor for Logger();
      *(v0 + 752) = sub_1000076D4(v21, qword_10177A560);
      sub_1007D493C(v20, v19, type metadata accessor for MemberSharingCircle);
      swift_bridgeObjectRetain_n();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = *(v0 + 576);
        v25 = *(v0 + 280);
        v26 = swift_slowAlloc();
        v46[0] = swift_slowAlloc();
        *v26 = 141559299;
        *(v26 + 4) = 1752392040;
        *(v26 + 12) = 2081;
        sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v27 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v28;
        sub_1007D49A4(v24, type metadata accessor for MemberSharingCircle);
        v30 = sub_1000136BC(v27, v29, v46);

        *(v26 + 14) = v30;
        *(v26 + 22) = 2080;

        v31 = Array.description.getter();
        v33 = v32;

        v34 = sub_1000136BC(v31, v33, v46);

        *(v26 + 24) = v34;
        *(v26 + 32) = 2048;
        *(v26 + 34) = v4[2];
        *(v26 + 42) = 2080;
        v35 = Array.description.getter();
        v37 = sub_1000136BC(v35, v36, v46);

        *(v26 + 44) = v37;
        *(v26 + 52) = 2048;
        v38 = *(v25 + 16);

        *(v26 + 54) = v38;

        _os_log_impl(&_mh_execute_header, v22, v23, "Processing circle: %{private,mask.hash}s,\nknownMembers: %s, count: %ld,\nmembers: %s, count: %ld.", v26, 0x3Eu);
        swift_arrayDestroy();
      }

      else
      {
        v43 = *(v0 + 576);
        swift_bridgeObjectRelease_n();

        sub_1007D49A4(v43, type metadata accessor for MemberSharingCircle);
      }

      v44 = swift_task_alloc();
      *(v0 + 760) = v44;
      *v44 = v0;
      v44[1] = sub_1007CA868;

      return daemon.getter();
    }

LABEL_24:
    swift_once();
    goto LABEL_12;
  }

  v7 = *(v0 + 488);
  v8 = *(*(v0 + 496) + 80);
  *(v0 + 968) = v8;
  *(v0 + 712) = _swiftEmptyArrayStorage;
  *(v0 + 704) = 0;
  v9 = *(v0 + 688);
  if (!*(v9 + 16))
  {
    __break(1u);
    goto LABEL_23;
  }

  v10 = *(v0 + 584);
  sub_1007D493C(v9 + ((v8 + 32) & ~v8), v10, type metadata accessor for MemberSharingCircle);
  v11 = *(*(v10 + *(v7 + 36)) + 16);
  if (!v11)
  {
    v4 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v12 = *(v0 + 600);
  v13 = (*(v0 + 964) + 32) & ~*(v0 + 964);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v14 = *(v12 + 72);
  v4 = swift_allocObject();
  v15 = j__malloc_size(v4);
  if (!v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v15 - v13 == 0x8000000000000000 && v14 == -1)
  {
    __break(1u);
    return daemon.getter();
  }

  v4[2] = v11;
  v4[3] = 2 * ((v15 - v13) / v14);
  v17 = sub_1003CC2CC();
  v18 = *(v0 + 16);

  sub_1001BE470(v18);
  if (v17 != v11)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_15:
  *(v0 + 720) = v4;
  *(v0 + 272) = v4;
  v39 = swift_task_alloc();
  *(v0 + 728) = v39;
  v40 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v41 = sub_1000041A4(&qword_10169CDC8, &unk_1016BF350, &unk_1013E4AF0, &protocol conformance descriptor for [A]);
  *v39 = v0;
  v39[1] = sub_1007CA07C;
  v42 = *(v0 + 296);

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013BCBE0, v42, v40, &type metadata for String, v41);
}

uint64_t sub_1007CA07C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 736) = a1;

  if (v1)
  {
  }

  else
  {
    v5 = *(v3 + 296);

    return _swift_task_switch(sub_1007CA1C0, v5, 0);
  }
}

uint64_t sub_1007CA1C0()
{
  v53 = v1;
  v2 = *(v1 + 736);
  v3 = *(v2 + 16);
  v4 = *(*(v1 + 712) + 16);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0 = *(v1 + 712);
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v0 + 3) >> 1)
  {
    if (*(v2 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v3;
  }

  else
  {
    v10 = v4;
  }

  v0 = sub_100A5B2CC(isUniquelyReferenced_nonNull_native, v10, 1, *(v1 + 712));
  if (!*(v2 + 16))
  {
LABEL_13:

    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_5:
  if ((*(v0 + 3) >> 1) - *(v0 + 2) < v3)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
LABEL_16:
    v13 = *(v1 + 576);
    v14 = *(v1 + 288);
    v15 = type metadata accessor for Logger();
    *(v1 + 752) = sub_1000076D4(v15, qword_10177A560);
    sub_1007D493C(v14, v13, type metadata accessor for MemberSharingCircle);
    swift_bridgeObjectRetain_n();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v1 + 576);
      v19 = *(v1 + 280);
      v20 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v20 = 141559299;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      sub_1007D49A4(v18, type metadata accessor for MemberSharingCircle);
      v24 = sub_1000136BC(v21, v23, &v52);

      *(v20 + 14) = v24;
      *(v20 + 22) = 2080;

      v25 = Array.description.getter();
      v27 = v26;

      v28 = sub_1000136BC(v25, v27, &v52);

      *(v20 + 24) = v28;
      *(v20 + 32) = 2048;
      *(v20 + 34) = *(v0 + 2);
      *(v20 + 42) = 2080;
      v29 = Array.description.getter();
      v31 = sub_1000136BC(v29, v30, &v52);

      *(v20 + 44) = v31;
      *(v20 + 52) = 2048;
      v32 = *(v19 + 16);

      *(v20 + 54) = v32;

      _os_log_impl(&_mh_execute_header, v16, v17, "Processing circle: %{private,mask.hash}s,\nknownMembers: %s, count: %ld,\nmembers: %s, count: %ld.", v20, 0x3Eu);
      swift_arrayDestroy();

      goto LABEL_28;
    }

LABEL_27:
    v45 = *(v1 + 576);
    swift_bridgeObjectRelease_n();

    sub_1007D49A4(v45, type metadata accessor for MemberSharingCircle);
LABEL_28:
    v46 = swift_task_alloc();
    *(v1 + 760) = v46;
    *v46 = v1;
    v46[1] = sub_1007CA868;

    return daemon.getter();
  }

  swift_arrayInitWithCopy();

  if (v3)
  {
    v7 = *(v0 + 2);
    v8 = __OFADD__(v7, v3);
    v9 = v7 + v3;
    if (v8)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return daemon.getter();
    }

    *(v0 + 2) = v9;
  }

LABEL_14:
  v11 = *(v1 + 696);
  v12 = *(v1 + 704) + 1;
  sub_1007D49A4(*(v1 + 584), type metadata accessor for MemberSharingCircle);
  if (v12 == v11)
  {
    *(v1 + 744) = v0;
    if (qword_101694480 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

  v33 = *(v1 + 704) + 1;
  *(v1 + 712) = v0;
  *(v1 + 704) = v33;
  v34 = *(v1 + 688);
  if (v33 >= *(v34 + 16))
  {
    __break(1u);
    goto LABEL_40;
  }

  v35 = *(v1 + 584);
  v36 = *(v1 + 488);
  sub_1007D493C(v34 + ((*(v1 + 968) + 32) & ~*(v1 + 968)) + *(*(v1 + 496) + 72) * v33, v35, type metadata accessor for MemberSharingCircle);
  v37 = *(*(v35 + *(v36 + 36)) + 16);
  if (!v37)
  {
    v16 = _swiftEmptyArrayStorage;
    goto LABEL_32;
  }

  v38 = *(v1 + 600);
  v39 = (*(v1 + 964) + 32) & ~*(v1 + 964);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v40 = *(v38 + 72);
  v16 = swift_allocObject();
  v41 = j__malloc_size(v16);
  if (!v40)
  {
    goto LABEL_41;
  }

  if (v41 - v39 == 0x8000000000000000 && v40 == -1)
  {
    goto LABEL_42;
  }

  v16[2].isa = v37;
  v16[3].isa = (2 * ((v41 - v39) / v40));
  v43 = sub_1003CC2CC();
  v44 = *(v1 + 16);

  sub_1001BE470(v44);
  if (v43 != v37)
  {
    __break(1u);
    goto LABEL_27;
  }

LABEL_32:
  *(v1 + 720) = v16;
  *(v1 + 272) = v16;
  v47 = swift_task_alloc();
  *(v1 + 728) = v47;
  v48 = sub_1000BC4D4(&unk_1016BF350, &unk_1013E4AF0);
  v49 = sub_1000041A4(&qword_10169CDC8, &unk_1016BF350, &unk_1013E4AF0, &protocol conformance descriptor for [A]);
  *v47 = v1;
  v47[1] = sub_1007CA07C;
  v50 = *(v1 + 296);

  return Sequence.asyncCompactMap<A>(_:)(&unk_1013BCBE0, v50, v48, &type metadata for String, v49);
}

uint64_t sub_1007CA868(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 768) = a1;

  v3 = swift_task_alloc();
  *(v2 + 776) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ItemSharingNotificationsService();
  v6 = sub_1007D471C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1007D471C(&qword_1016B1160, 255, type metadata accessor for ItemSharingNotificationsService, &unk_1013D77C8);
  *v3 = v9;
  v3[1] = sub_1007CAA4C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1007CAA4C(uint64_t a1)
{
  v3 = *v2;
  v3[98] = a1;
  v3[99] = v1;

  if (v1)
  {
    v4 = v3[37];
    v5 = sub_1007CE304;
  }

  else
  {
    v6 = v3[37];

    v5 = sub_1007CAB78;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1007CAB78()
{
  v1 = *(v0 + 280);
  v2 = *(v1 + 16);
  *(v0 + 800) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 408);
    v5 = *(v4 + 80);
    *(v0 + 972) = v5;
    v6 = *(v4 + 72);
    *(v0 + 808) = v6;
    v7 = *(v0 + 792);
    while (1)
    {
      *(v0 + 840) = _swiftEmptyArrayStorage;
      *(v0 + 832) = _swiftEmptyArrayStorage;
      *(v0 + 824) = v3;
      *(v0 + 816) = v7;
      v8 = *(v0 + 480);
      v9 = *(v0 + 400);
      sub_1007D493C(v1 + ((v5 + 32) & ~v5) + v6 * v3, v8, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if ((*(v8 + *(v9 + 20)) & 1) == 0)
      {
        sub_1007D471C(&qword_1016984A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          break;
        }
      }

      v10 = *(v0 + 800);
      v11 = *(v0 + 824) + 1;
      sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (v11 == v10)
      {
        goto LABEL_7;
      }

      v3 = *(v0 + 824) + 1;
      v6 = *(v0 + 808);
      LOBYTE(v5) = *(v0 + 972);
      v1 = *(v0 + 280);
    }

    v17 = *(v0 + 624);

    return _swift_task_switch(sub_1007CADAC, v17, 0);
  }

  else
  {
LABEL_7:
    *(v0 + 936) = _swiftEmptyArrayStorage;
    *(v0 + 928) = _swiftEmptyArrayStorage;
    v12 = swift_task_alloc();
    *(v0 + 944) = v12;
    *v12 = v0;
    v12[1] = sub_1007CDF44;
    v13 = *(v0 + 688);
    v14 = *(v0 + 288);
    v15 = *(v0 + 280);

    return sub_1007D1148(_swiftEmptyArrayStorage, v14, v15, v13);
  }
}

uint64_t sub_1007CADAC()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 592);
  v5 = (*(v0 + 964) + 24) & ~*(v0 + 964);
  (*(v0 + 632))(v3, *(v0 + 288) + *(v0 + 960), v4);
  v6 = swift_allocObject();
  *(v0 + 848) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 856) = v7;
  *v7 = v0;
  v7[1] = sub_1007CAF0C;
  v9 = *(v0 + 384);
  v8 = *(v0 + 392);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1007D4764, v6, v9);
}

uint64_t sub_1007CAF0C()
{
  v1 = *(*v0 + 296);

  return _swift_task_switch(sub_1007CB038, v1, 0);
}

uint64_t sub_1007CB038()
{
  v1 = *(v0 + 392);
  v2 = type metadata accessor for SharedBeaconRecord(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &unk_101698C30, &unk_101392630);
    v3 = 0;
  }

  else
  {
    v4 = *(v1 + *(v2 + 64));
    sub_1007D49A4(v1, type metadata accessor for SharedBeaconRecord);
    v3 = v4 == 4;
  }

  *(v0 + 977) = v3;
  v5 = *(v0 + 624);

  return _swift_task_switch(sub_1007CB134, v5, 0);
}

uint64_t sub_1007CB134()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 592);
  v5 = (*(v0 + 964) + 24) & ~*(v0 + 964);
  (*(v0 + 632))(v3, *(v0 + 480), v4);
  v6 = swift_allocObject();
  *(v0 + 864) = v6;
  *(v6 + 16) = v2;
  v1(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 872) = v7;
  *v7 = v0;
  v7[1] = sub_1007CB28C;
  v9 = *(v0 + 344);
  v8 = *(v0 + 352);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1007D4790, v6, v9);
}

uint64_t sub_1007CB28C()
{
  v1 = *(*v0 + 296);

  return _swift_task_switch(sub_1007CB3B8, v1, 0);
}

uint64_t sub_1007CB3B8()
{
  v205 = v0;
  v1 = *(v0 + 352);
  v2 = (*(*(v0 + 368) + 48))(v1, 1, *(v0 + 360));
  v3 = *(v0 + 288);
  if (v2 == 1)
  {
    v4 = *(v0 + 536);
    sub_10000B3A8(v1, &qword_101698C10, &unk_10138C1E0);
    sub_1007D493C(v3, v4, type metadata accessor for MemberSharingCircle);
    swift_bridgeObjectRetain_n();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 744);
      v8 = *(v0 + 536);
      v196 = *(v0 + 800);
      v9 = swift_slowAlloc();
      v204[0] = swift_slowAlloc();
      *v9 = 141559299;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = v11;
      sub_1007D49A4(v8, type metadata accessor for MemberSharingCircle);
      v13 = sub_1000136BC(v10, v12, v204);

      *(v9 + 14) = v13;
      *(v9 + 22) = 2080;

      v14 = Array.description.getter();
      v16 = v15;

      v17 = sub_1000136BC(v14, v16, v204);

      *(v9 + 24) = v17;
      *(v9 + 32) = 2048;
      *(v9 + 34) = *(v7 + 16);
      *(v9 + 42) = 2080;
      v18 = Array.description.getter();
      v20 = sub_1000136BC(v18, v19, v204);

      *(v9 + 44) = v20;
      *(v9 + 52) = 2048;

      *(v9 + 54) = v196;

      _os_log_impl(&_mh_execute_header, v5, v6, "Inconsistent participant list for shareId: %{private,mask.hash}s,\nknownMembers: %s, count: %ld,\nmembers: %s, count: %ld.", v9, 0x3Eu);
      swift_arrayDestroy();
    }

    else
    {
      v34 = *(v0 + 536);
      swift_bridgeObjectRelease_n();

      sub_1007D49A4(v34, type metadata accessor for MemberSharingCircle);
    }

    if (*(v0 + 977) != 1)
    {
      v35 = *(v0 + 528);
      v36 = *(v0 + 496);
      v37 = *(v0 + 304);
      v38 = *(v0 + 312);
      v39 = *(v0 + 288);
      v40 = *(v0 + 296);
      v41 = type metadata accessor for TaskPriority();
      v42 = *(v41 - 8);
      (*(v42 + 56))(v38, 1, 1, v41);
      sub_1007D493C(v39, v35, type metadata accessor for MemberSharingCircle);
      v44 = sub_1007D471C(&qword_1016A9F08, v43, type metadata accessor for ShareKeysDownloadUseCase, &unk_1013BCB88);
      v45 = (*(v36 + 80) + 40) & ~*(v36 + 80);
      v46 = swift_allocObject();
      v46[2] = v40;
      v46[3] = v44;
      v46[4] = v40;
      sub_1007D48B4(v35, v46 + v45, type metadata accessor for MemberSharingCircle);
      sub_1000D2A70(v38, v37, &qword_101698C00, &qword_10138B570);
      LODWORD(v37) = (*(v42 + 48))(v37, 1, v41);
      swift_retain_n();

      v47 = *(v0 + 304);
      if (v37 == 1)
      {
        sub_10000B3A8(*(v0 + 304), &qword_101698C00, &qword_10138B570);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v42 + 8))(v47, v41);
      }

      v119 = v46[2];
      swift_unknownObjectRetain();

      if (v119)
      {
        swift_getObjectType();
        v120 = dispatch thunk of Actor.unownedExecutor.getter();
        v122 = v121;
        swift_unknownObjectRelease();
      }

      else
      {
        v120 = 0;
        v122 = 0;
      }

      sub_10000B3A8(*(v0 + 312), &qword_101698C00, &qword_10138B570);
      v127 = swift_allocObject();
      *(v127 + 16) = &unk_1013BCBF8;
      *(v127 + 24) = v46;
      if (v122 | v120)
      {
        *(v0 + 216) = 0;
        *(v0 + 224) = 0;
        *(v0 + 232) = v120;
        *(v0 + 240) = v122;
      }

      swift_task_create();
    }

    goto LABEL_41;
  }

  v21 = *(v0 + 488);
  sub_1007D48B4(v1, *(v0 + 376), type metadata accessor for MemberPeerTrust);
  v22 = *(v3 + *(v21 + 36));
  v25 = *(v22 + 16) && (v23 = sub_1000210EC(*(v0 + 376) + *(*(v0 + 360) + 20)), (v24 & 1) != 0) && *(*(v22 + 56) + v23) == 1;
  v26 = *(v0 + 480);
  v27 = (*(v0 + 376) + *(*(v0 + 360) + 32));
  v28 = *v27;
  v29 = v27[1];
  v30 = (v26 + *(*(v0 + 400) + 24));
  v31 = *v30;
  *(v0 + 880) = *v30;
  v32 = v30[1];
  *(v0 + 888) = v32;
  if (v28 == v31 && v29 == v32)
  {
    if (v25)
    {
LABEL_19:
      v49 = *(v0 + 416);
      v48 = *(v0 + 424);
      sub_1007D493C(*(v0 + 288), *(v0 + 544), type metadata accessor for MemberSharingCircle);
      sub_1007D493C(v26, v48, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      sub_1007D493C(v26, v49, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = *(v0 + 544);
        v53 = *(v0 + 424);
        v190 = *(v0 + 400);
        v193 = *(v0 + 416);
        v201 = *(v0 + 376);
        v54 = swift_slowAlloc();
        v204[0] = swift_slowAlloc();
        *v54 = 141559043;
        *(v54 + 4) = 1752392040;
        *(v54 + 12) = 2081;
        sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v55 = dispatch thunk of CustomStringConvertible.description.getter();
        v57 = v56;
        sub_1007D49A4(v52, type metadata accessor for MemberSharingCircle);
        v58 = sub_1000136BC(v55, v57, v204);

        *(v54 + 14) = v58;
        *(v54 + 22) = 2160;
        *(v54 + 24) = 1752392040;
        *(v54 + 32) = 2081;
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v60;
        sub_1007D49A4(v53, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
        v62 = sub_1000136BC(v59, v61, v204);

        *(v54 + 34) = v62;
        *(v54 + 42) = 2080;
        v63 = (v193 + *(v190 + 24));
        v64 = *v63;
        v65 = v63[1];

        sub_1007D49A4(v193, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
        v66 = sub_1000136BC(v64, v65, v204);

        *(v54 + 44) = v66;
        _os_log_impl(&_mh_execute_header, v50, v51, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s\nis already known by %s.", v54, 0x34u);
        swift_arrayDestroy();

        sub_1007D49A4(v201, type metadata accessor for MemberPeerTrust);
      }

      else
      {
        v123 = *(v0 + 544);
        v125 = *(v0 + 416);
        v124 = *(v0 + 424);
        v126 = *(v0 + 376);

        sub_1007D49A4(v125, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
        sub_1007D49A4(v124, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
        sub_1007D49A4(v123, type metadata accessor for MemberSharingCircle);
        sub_1007D49A4(v126, type metadata accessor for MemberPeerTrust);
      }

LABEL_41:
      v99 = *(v0 + 840);
      v128 = *(v0 + 832);
      v67 = *(v0 + 816);
      goto LABEL_42;
    }
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)() & v25)
  {
    v26 = *(v0 + 480);
    goto LABEL_19;
  }

  v67 = *(v0 + 816);
  v68 = *(v0 + 744);
  v69 = *(v0 + 976);
  *(v0 + 248) = v31;
  *(v0 + 256) = v32;
  v70 = swift_task_alloc();
  *(v70 + 16) = v0 + 248;

  v71 = sub_1002EB538(sub_1007D491C, v70, v68);
  *(v0 + 978) = v71 & 1;

  if (v71 & 1) != 0 || (v69)
  {
    if ((*(v0 + 977) & 1) == 0)
    {

      _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(v31, v32);
      if (v93)
      {
        v94 = sub_100B5DEBC(v91, v92, v93);

        if (v94 != 2 && (v94 & 1) != 0)
        {
          v95 = swift_task_alloc();
          *(v0 + 912) = v95;
          *v95 = v0;
          v95[1] = sub_1007CD3BC;
          v96 = *(v0 + 480);
          v97 = *(v0 + 288);
          v98 = v0 + 136;
LABEL_64:

          return sub_100B48DE8(v98, v97, v96, v31, v32);
        }
      }
    }
  }

  else if ((*(v0 + 977) & 1) == 0)
  {
    v73 = *(v0 + 472);
    v72 = *(v0 + 480);
    v74 = *(v0 + 464);
    sub_1007D493C(*(v0 + 288), *(v0 + 568), type metadata accessor for MemberSharingCircle);
    sub_1007D493C(v72, v73, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D493C(v72, v74, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = *(v0 + 568);
      v191 = v76;
      v187 = *(v0 + 472);
      v194 = *(v0 + 400);
      v197 = *(v0 + 464);
      v78 = swift_slowAlloc();
      v204[0] = swift_slowAlloc();
      *v78 = 141559043;
      *(v78 + 4) = 1752392040;
      *(v78 + 12) = 2081;
      sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v80;
      sub_1007D49A4(v77, type metadata accessor for MemberSharingCircle);
      v82 = sub_1000136BC(v79, v81, v204);

      *(v78 + 14) = v82;
      *(v78 + 22) = 2160;
      *(v78 + 24) = 1752392040;
      *(v78 + 32) = 2081;
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v84;
      sub_1007D49A4(v187, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      v86 = sub_1000136BC(v83, v85, v204);

      *(v78 + 34) = v86;
      *(v78 + 42) = 2080;
      v87 = (v197 + *(v194 + 24));
      v88 = *v87;
      v89 = v87[1];

      sub_1007D49A4(v197, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      v90 = sub_1000136BC(v88, v89, v204);

      *(v78 + 44) = v90;
      _os_log_impl(&_mh_execute_header, v75, v191, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s\nis revealed: %s.", v78, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v179 = *(v0 + 568);
      v181 = *(v0 + 464);
      v180 = *(v0 + 472);

      sub_1007D49A4(v181, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      sub_1007D49A4(v180, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      sub_1007D49A4(v179, type metadata accessor for MemberSharingCircle);
    }

    v182 = swift_task_alloc();
    *(v0 + 896) = v182;
    *v182 = v0;
    v182[1] = sub_1007CCB6C;
    v96 = *(v0 + 480);
    v97 = *(v0 + 288);
    v98 = v0 + 56;
    goto LABEL_64;
  }

  v99 = *(v0 + 840);
  v100 = *(v0 + 480);
  v102 = *(v0 + 448);
  v101 = *(v0 + 456);
  sub_1007D493C(*(v0 + 288), *(v0 + 560), type metadata accessor for MemberSharingCircle);
  sub_1007D493C(v100, v101, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  sub_1007D493C(v100, v102, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v103, v104))
  {
    v195 = *(v0 + 978);
    v198 = *(v0 + 977);
    v105 = *(v0 + 560);
    v202 = v104;
    log = *(v0 + 448);
    v183 = *(v0 + 456);
    v184 = *(v0 + 400);
    v188 = *(v0 + 976);
    v106 = swift_slowAlloc();
    v204[0] = swift_slowAlloc();
    *v106 = 141559811;
    *(v106 + 4) = 1752392040;
    *(v106 + 12) = 2081;
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v107 = dispatch thunk of CustomStringConvertible.description.getter();
    v109 = v108;
    sub_1007D49A4(v105, type metadata accessor for MemberSharingCircle);
    v110 = sub_1000136BC(v107, v109, v204);

    *(v106 + 14) = v110;
    *(v106 + 22) = 2160;
    *(v106 + 24) = 1752392040;
    *(v106 + 32) = 2081;
    v111 = dispatch thunk of CustomStringConvertible.description.getter();
    v113 = v112;
    sub_1007D49A4(v183, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v114 = sub_1000136BC(v111, v113, v204);

    *(v106 + 34) = v114;
    *(v106 + 42) = 2080;
    v115 = (log + *(v184 + 24));
    v116 = *v115;
    v117 = v115[1];

    sub_1007D49A4(log, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v118 = sub_1000136BC(v116, v117, v204);

    *(v106 + 44) = v118;
    *(v106 + 52) = 1024;
    *(v106 + 54) = (v195 & 1) == 0;
    *(v106 + 58) = 1024;
    *(v106 + 60) = v188;
    *(v106 + 64) = 1024;
    *(v106 + 66) = v198;
    _os_log_impl(&_mh_execute_header, v103, v202, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s\nis revealed silently: %s - isNewRevealedMember: %{BOOL}d,\n            isInitial: %{BOOL}d, isAutomaticShare: %{BOOL}d.", v106, 0x46u);
    swift_arrayDestroy();
  }

  else
  {
    v142 = *(v0 + 560);
    v144 = *(v0 + 448);
    v143 = *(v0 + 456);

    sub_1007D49A4(v144, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v143, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v142, type metadata accessor for MemberSharingCircle);
  }

  v145 = *(v0 + 888);
  v146 = *(v0 + 880);
  v147 = *(v0 + 336);
  v148 = (v147 + *(*(v0 + 320) + 48));
  sub_1007D493C(*(v0 + 376), v147, type metadata accessor for MemberPeerTrust);
  *v148 = v146;
  v148[1] = v145;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v128 = *(v0 + 832);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v128 = sub_100A5BB28(0, v128[2] + 1, 1, *(v0 + 832));
  }

  v151 = v128[2];
  v150 = v128[3];
  if (v151 >= v150 >> 1)
  {
    v128 = sub_100A5BB28((v150 > 1), v151 + 1, 1, v128);
  }

  v152 = *(v0 + 552);
  v153 = *(v0 + 480);
  v154 = *(v0 + 440);
  v199 = *(v0 + 432);
  v156 = *(v0 + 328);
  v155 = *(v0 + 336);
  v157 = *(v0 + 288);
  v128[2] = v151 + 1;
  sub_1000D2AD8(v155, v128 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v151, &qword_1016A9F10, &unk_1013BCBC8);
  sub_1007D493C(v157, v152, type metadata accessor for MemberSharingCircle);
  sub_1007D493C(v153, v154, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  sub_1007D493C(v153, v199, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  v158 = Logger.logObject.getter();
  v159 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v158, v159))
  {
    v160 = *(v0 + 552);
    v200 = v159;
    v185 = *(v0 + 440);
    v189 = *(v0 + 400);
    v192 = *(v0 + 432);
    v203 = *(v0 + 376);
    v161 = swift_slowAlloc();
    v204[0] = swift_slowAlloc();
    *v161 = 141559043;
    *(v161 + 4) = 1752392040;
    *(v161 + 12) = 2081;
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v162 = dispatch thunk of CustomStringConvertible.description.getter();
    v164 = v163;
    sub_1007D49A4(v160, type metadata accessor for MemberSharingCircle);
    v165 = sub_1000136BC(v162, v164, v204);

    *(v161 + 14) = v165;
    *(v161 + 22) = 2160;
    *(v161 + 24) = 1752392040;
    *(v161 + 32) = 2081;
    v166 = dispatch thunk of CustomStringConvertible.description.getter();
    v168 = v167;
    sub_1007D49A4(v185, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v169 = sub_1000136BC(v166, v168, v204);

    *(v161 + 34) = v169;
    *(v161 + 42) = 2080;
    v170 = (v192 + *(v189 + 24));
    v171 = *v170;
    v172 = v170[1];

    sub_1007D49A4(v192, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v173 = sub_1000136BC(v171, v172, v204);

    *(v161 + 44) = v173;
    _os_log_impl(&_mh_execute_header, v158, v200, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s\nneeds to update displayIdentifier: %s.", v161, 0x34u);
    swift_arrayDestroy();

    v174 = v203;
  }

  else
  {
    v175 = *(v0 + 552);
    v177 = *(v0 + 432);
    v176 = *(v0 + 440);
    v178 = *(v0 + 376);

    sub_1007D49A4(v177, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v176, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v175, type metadata accessor for MemberSharingCircle);
    v174 = v178;
  }

  sub_1007D49A4(v174, type metadata accessor for MemberPeerTrust);
LABEL_42:
  v129 = *(v0 + 800);
  v130 = *(v0 + 824) + 1;
  sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  if (v130 == v129)
  {
LABEL_43:
    *(v0 + 936) = v99;
    *(v0 + 928) = v128;
    v131 = swift_task_alloc();
    *(v0 + 944) = v131;
    *v131 = v0;
    v131[1] = sub_1007CDF44;
    v132 = *(v0 + 688);
    v133 = *(v0 + 288);
    v134 = *(v0 + 280);

    return sub_1007D1148(v128, v133, v134, v132);
  }

  else
  {
    while (1)
    {
      v138 = *(v0 + 824) + 1;
      *(v0 + 840) = v99;
      *(v0 + 832) = v128;
      *(v0 + 824) = v138;
      *(v0 + 816) = v67;
      v139 = *(v0 + 480);
      v140 = *(v0 + 400);
      sub_1007D493C(*(v0 + 280) + ((*(v0 + 972) + 32) & ~*(v0 + 972)) + *(v0 + 808) * v138, v139, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (*(v139 + *(v140 + 20)) != 1)
      {
        sub_1007D471C(&qword_1016984A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          break;
        }
      }

      v136 = *(v0 + 800);
      v137 = *(v0 + 824) + 1;
      sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (v137 == v136)
      {
        goto LABEL_43;
      }
    }

    v141 = *(v0 + 624);

    return _swift_task_switch(sub_1007CADAC, v141, 0);
  }
}

uint64_t sub_1007CCB6C()
{
  v2 = *v1;
  *(*v1 + 904) = v0;

  v3 = *(v2 + 296);
  if (v0)
  {

    v4 = sub_1007CE4EC;
  }

  else
  {
    v4 = sub_1007CCCA4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1007CCCA4()
{
  v66 = v0;
  v1 = *(v0 + 904);
  sub_1000D2A70(v0 + 56, v0 + 96, &qword_1016A9F18, &qword_1013D78F0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 840);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_100A5BB4C(0, v3[2] + 1, 1, *(v0 + 840));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_100A5BB4C((v4 > 1), v5 + 1, 1, v3);
  }

  sub_10000B3A8(v0 + 56, &qword_1016A9F18, &qword_1013D78F0);
  v3[2] = v5 + 1;
  v6 = &v3[5 * v5];
  v7 = *(v0 + 128);
  v8 = *(v0 + 112);
  *(v6 + 2) = *(v0 + 96);
  *(v6 + 3) = v8;
  v6[8] = v7;
  v9 = *(v0 + 888);
  v10 = *(v0 + 880);
  v11 = *(v0 + 336);
  v12 = (v11 + *(*(v0 + 320) + 48));
  sub_1007D493C(*(v0 + 376), v11, type metadata accessor for MemberPeerTrust);
  *v12 = v10;
  v12[1] = v9;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v0 + 832);
  if ((v13 & 1) == 0)
  {
    v14 = sub_100A5BB28(0, v14[2] + 1, 1, *(v0 + 832));
  }

  v16 = v14[2];
  v15 = v14[3];
  v63 = v3;
  v64 = v1;
  if (v16 >= v15 >> 1)
  {
    v14 = sub_100A5BB28((v15 > 1), v16 + 1, 1, v14);
  }

  v17 = *(v0 + 552);
  v18 = *(v0 + 480);
  v20 = *(v0 + 432);
  v19 = *(v0 + 440);
  v22 = *(v0 + 328);
  v21 = *(v0 + 336);
  v23 = *(v0 + 288);
  v14[2] = v16 + 1;
  sub_1000D2AD8(v21, v14 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v16, &qword_1016A9F10, &unk_1013BCBC8);
  sub_1007D493C(v23, v17, type metadata accessor for MemberSharingCircle);
  sub_1007D493C(v18, v19, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  sub_1007D493C(v18, v20, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 552);
    v59 = v25;
    v58 = *(v0 + 440);
    v60 = *(v0 + 400);
    v61 = *(v0 + 432);
    v62 = *(v0 + 376);
    v27 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v27 = 141559043;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    sub_1007D49A4(v26, type metadata accessor for MemberSharingCircle);
    v31 = sub_1000136BC(v28, v30, &v65);

    *(v27 + 14) = v31;
    *(v27 + 22) = 2160;
    *(v27 + 24) = 1752392040;
    *(v27 + 32) = 2081;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    sub_1007D49A4(v58, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v35 = sub_1000136BC(v32, v34, &v65);

    *(v27 + 34) = v35;
    *(v27 + 42) = 2080;
    v36 = (v61 + *(v60 + 24));
    v37 = *v36;
    v38 = v36[1];

    sub_1007D49A4(v61, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v39 = sub_1000136BC(v37, v38, &v65);

    *(v27 + 44) = v39;
    _os_log_impl(&_mh_execute_header, v24, v59, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s\nneeds to update displayIdentifier: %s.", v27, 0x34u);
    swift_arrayDestroy();

    v40 = v62;
  }

  else
  {
    v41 = *(v0 + 552);
    v43 = *(v0 + 432);
    v42 = *(v0 + 440);
    v44 = *(v0 + 376);

    sub_1007D49A4(v43, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v42, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v41, type metadata accessor for MemberSharingCircle);
    v40 = v44;
  }

  sub_1007D49A4(v40, type metadata accessor for MemberPeerTrust);
  v45 = *(v0 + 800);
  v46 = *(v0 + 824) + 1;
  sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  if (v46 == v45)
  {
LABEL_13:
    *(v0 + 936) = v63;
    *(v0 + 928) = v14;
    v47 = swift_task_alloc();
    *(v0 + 944) = v47;
    *v47 = v0;
    v47[1] = sub_1007CDF44;
    v48 = *(v0 + 688);
    v49 = *(v0 + 288);
    v50 = *(v0 + 280);

    return sub_1007D1148(v14, v49, v50, v48);
  }

  else
  {
    while (1)
    {
      v54 = *(v0 + 824) + 1;
      *(v0 + 840) = v63;
      *(v0 + 832) = v14;
      *(v0 + 824) = v54;
      *(v0 + 816) = v64;
      v55 = *(v0 + 480);
      v56 = *(v0 + 400);
      sub_1007D493C(*(v0 + 280) + ((*(v0 + 972) + 32) & ~*(v0 + 972)) + *(v0 + 808) * v54, v55, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (*(v55 + *(v56 + 20)) != 1)
      {
        sub_1007D471C(&qword_1016984A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          break;
        }
      }

      v52 = *(v0 + 800);
      v53 = *(v0 + 824) + 1;
      sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (v53 == v52)
      {
        goto LABEL_13;
      }
    }

    v57 = *(v0 + 624);

    return _swift_task_switch(sub_1007CADAC, v57, 0);
  }
}

uint64_t sub_1007CD3BC()
{
  v2 = *v1;
  *(*v1 + 920) = v0;

  v3 = *(v2 + 296);
  if (v0)
  {

    v4 = sub_1007CEC14;
  }

  else
  {
    v4 = sub_1007CD4F4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1007CD4F4()
{
  v94 = v0;
  v1 = *(v0 + 920);
  sub_1000D2A70(v0 + 136, v0 + 176, &qword_1016A9F18, &qword_1013D78F0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 840);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_100A5BB4C(0, v3[2] + 1, 1, *(v0 + 840));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_100A5BB4C((v4 > 1), v5 + 1, 1, v3);
  }

  sub_10000B3A8(v0 + 136, &qword_1016A9F18, &qword_1013D78F0);
  v3[2] = v5 + 1;
  v6 = &v3[5 * v5];
  v7 = *(v0 + 208);
  v8 = *(v0 + 192);
  *(v6 + 2) = *(v0 + 176);
  *(v6 + 3) = v8;
  v6[8] = v7;
  v9 = *(v0 + 480);
  v11 = *(v0 + 448);
  v10 = *(v0 + 456);
  sub_1007D493C(*(v0 + 288), *(v0 + 560), type metadata accessor for MemberSharingCircle);
  sub_1007D493C(v9, v10, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  sub_1007D493C(v9, v11, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v91 = v3;
  v92 = v1;
  if (os_log_type_enabled(v12, v13))
  {
    v88 = *(v0 + 978);
    v89 = *(v0 + 977);
    v14 = *(v0 + 560);
    v83 = *(v0 + 448);
    v80 = *(v0 + 456);
    v81 = *(v0 + 400);
    v85 = *(v0 + 976);
    v15 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *v15 = 141559811;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_1007D49A4(v14, type metadata accessor for MemberSharingCircle);
    v19 = sub_1000136BC(v16, v18, &v93);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2160;
    *(v15 + 24) = 1752392040;
    *(v15 + 32) = 2081;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_1007D49A4(v80, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v23 = sub_1000136BC(v20, v22, &v93);

    *(v15 + 34) = v23;
    *(v15 + 42) = 2080;
    v24 = (v83 + *(v81 + 24));
    v25 = *v24;
    v26 = v24[1];

    sub_1007D49A4(v83, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v27 = sub_1000136BC(v25, v26, &v93);

    *(v15 + 44) = v27;
    *(v15 + 52) = 1024;
    *(v15 + 54) = (v88 & 1) == 0;
    *(v15 + 58) = 1024;
    *(v15 + 60) = v85;
    *(v15 + 64) = 1024;
    *(v15 + 66) = v89;
    _os_log_impl(&_mh_execute_header, v12, v13, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s\nis revealed silently: %s - isNewRevealedMember: %{BOOL}d,\n            isInitial: %{BOOL}d, isAutomaticShare: %{BOOL}d.", v15, 0x46u);
    swift_arrayDestroy();
  }

  else
  {
    v28 = *(v0 + 560);
    v30 = *(v0 + 448);
    v29 = *(v0 + 456);

    sub_1007D49A4(v30, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v29, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v28, type metadata accessor for MemberSharingCircle);
  }

  v31 = *(v0 + 888);
  v32 = *(v0 + 880);
  v33 = *(v0 + 336);
  v34 = (v33 + *(*(v0 + 320) + 48));
  sub_1007D493C(*(v0 + 376), v33, type metadata accessor for MemberPeerTrust);
  *v34 = v32;
  v34[1] = v31;

  v35 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v0 + 832);
  if ((v35 & 1) == 0)
  {
    v36 = sub_100A5BB28(0, v36[2] + 1, 1, *(v0 + 832));
  }

  v38 = v36[2];
  v37 = v36[3];
  if (v38 >= v37 >> 1)
  {
    v36 = sub_100A5BB28((v37 > 1), v38 + 1, 1, v36);
  }

  v39 = *(v0 + 552);
  v40 = *(v0 + 480);
  v42 = *(v0 + 432);
  v41 = *(v0 + 440);
  v44 = *(v0 + 328);
  v43 = *(v0 + 336);
  v45 = *(v0 + 288);
  v36[2] = v38 + 1;
  sub_1000D2AD8(v43, v36 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v38, &qword_1016A9F10, &unk_1013BCBC8);
  sub_1007D493C(v45, v39, type metadata accessor for MemberSharingCircle);
  sub_1007D493C(v40, v41, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  sub_1007D493C(v40, v42, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = *(v0 + 552);
    v84 = v47;
    v82 = *(v0 + 440);
    v86 = *(v0 + 400);
    v87 = *(v0 + 432);
    v90 = *(v0 + 376);
    v49 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *v49 = 141559043;
    *(v49 + 4) = 1752392040;
    *(v49 + 12) = 2081;
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;
    sub_1007D49A4(v48, type metadata accessor for MemberSharingCircle);
    v53 = sub_1000136BC(v50, v52, &v93);

    *(v49 + 14) = v53;
    *(v49 + 22) = 2160;
    *(v49 + 24) = 1752392040;
    *(v49 + 32) = 2081;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    sub_1007D49A4(v82, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v57 = sub_1000136BC(v54, v56, &v93);

    *(v49 + 34) = v57;
    *(v49 + 42) = 2080;
    v58 = (v87 + *(v86 + 24));
    v59 = *v58;
    v60 = v58[1];

    sub_1007D49A4(v87, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v61 = sub_1000136BC(v59, v60, &v93);

    *(v49 + 44) = v61;
    _os_log_impl(&_mh_execute_header, v46, v84, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s\nneeds to update displayIdentifier: %s.", v49, 0x34u);
    swift_arrayDestroy();

    v62 = v90;
  }

  else
  {
    v63 = *(v0 + 552);
    v65 = *(v0 + 432);
    v64 = *(v0 + 440);
    v66 = *(v0 + 376);

    sub_1007D49A4(v65, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v64, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v63, type metadata accessor for MemberSharingCircle);
    v62 = v66;
  }

  sub_1007D49A4(v62, type metadata accessor for MemberPeerTrust);
  v67 = *(v0 + 800);
  v68 = *(v0 + 824) + 1;
  sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  if (v68 == v67)
  {
LABEL_16:
    *(v0 + 936) = v91;
    *(v0 + 928) = v36;
    v69 = swift_task_alloc();
    *(v0 + 944) = v69;
    *v69 = v0;
    v69[1] = sub_1007CDF44;
    v70 = *(v0 + 688);
    v71 = *(v0 + 288);
    v72 = *(v0 + 280);

    return sub_1007D1148(v36, v71, v72, v70);
  }

  else
  {
    while (1)
    {
      v76 = *(v0 + 824) + 1;
      *(v0 + 840) = v91;
      *(v0 + 832) = v36;
      *(v0 + 824) = v76;
      *(v0 + 816) = v92;
      v77 = *(v0 + 480);
      v78 = *(v0 + 400);
      sub_1007D493C(*(v0 + 280) + ((*(v0 + 972) + 32) & ~*(v0 + 972)) + *(v0 + 808) * v76, v77, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (*(v77 + *(v78 + 20)) != 1)
      {
        sub_1007D471C(&qword_1016984A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          break;
        }
      }

      v74 = *(v0 + 800);
      v75 = *(v0 + 824) + 1;
      sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (v75 == v74)
      {
        goto LABEL_16;
      }
    }

    v79 = *(v0 + 624);

    return _swift_task_switch(sub_1007CADAC, v79, 0);
  }
}

uint64_t sub_1007CDF44()
{
  v2 = *v1;
  *(*v1 + 952) = v0;

  if (v0)
  {
    v3 = *(v2 + 296);

    v4 = sub_1007CF674;
  }

  else
  {
    v3 = *(v2 + 784);

    v4 = sub_1007CE0AC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1007CE0AC()
{
  v1 = *(v0 + 296);
  sub_100B4ACC0(*(v0 + 936));

  return _swift_task_switch(sub_1007CE130, v1, 0);
}

uint64_t sub_1007CE130()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007CE304()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007CE4EC()
{
  v64 = v0;
  *(v0 + 56) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  sub_1000D2A70(v0 + 56, v0 + 96, &qword_1016A9F18, &qword_1013D78F0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 840);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100A5BB4C(0, v2[2] + 1, 1, *(v0 + 840));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100A5BB4C((v3 > 1), v4 + 1, 1, v2);
  }

  sub_10000B3A8(v0 + 56, &qword_1016A9F18, &qword_1013D78F0);
  v2[2] = v4 + 1;
  v5 = &v2[5 * v4];
  v6 = *(v0 + 128);
  v7 = *(v0 + 112);
  *(v5 + 2) = *(v0 + 96);
  *(v5 + 3) = v7;
  v5[8] = v6;
  v8 = *(v0 + 888);
  v9 = *(v0 + 880);
  v10 = *(v0 + 336);
  v11 = (v10 + *(*(v0 + 320) + 48));
  sub_1007D493C(*(v0 + 376), v10, type metadata accessor for MemberPeerTrust);
  *v11 = v9;
  v11[1] = v8;

  v12 = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v0 + 832);
  if ((v12 & 1) == 0)
  {
    v13 = sub_100A5BB28(0, v13[2] + 1, 1, *(v0 + 832));
  }

  v15 = v13[2];
  v14 = v13[3];
  v62 = v2;
  if (v15 >= v14 >> 1)
  {
    v13 = sub_100A5BB28((v14 > 1), v15 + 1, 1, v13);
  }

  v16 = *(v0 + 552);
  v17 = *(v0 + 480);
  v19 = *(v0 + 432);
  v18 = *(v0 + 440);
  v21 = *(v0 + 328);
  v20 = *(v0 + 336);
  v22 = *(v0 + 288);
  v13[2] = v15 + 1;
  sub_1000D2AD8(v20, v13 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v15, &qword_1016A9F10, &unk_1013BCBC8);
  sub_1007D493C(v22, v16, type metadata accessor for MemberSharingCircle);
  sub_1007D493C(v17, v18, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  sub_1007D493C(v17, v19, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 552);
    v58 = v24;
    v57 = *(v0 + 440);
    v59 = *(v0 + 400);
    v60 = *(v0 + 432);
    v61 = *(v0 + 376);
    v26 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v26 = 141559043;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2081;
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    sub_1007D49A4(v25, type metadata accessor for MemberSharingCircle);
    v30 = sub_1000136BC(v27, v29, &v63);

    *(v26 + 14) = v30;
    *(v26 + 22) = 2160;
    *(v26 + 24) = 1752392040;
    *(v26 + 32) = 2081;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    sub_1007D49A4(v57, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v34 = sub_1000136BC(v31, v33, &v63);

    *(v26 + 34) = v34;
    *(v26 + 42) = 2080;
    v35 = (v60 + *(v59 + 24));
    v36 = *v35;
    v37 = v35[1];

    sub_1007D49A4(v60, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v38 = sub_1000136BC(v36, v37, &v63);

    *(v26 + 44) = v38;
    _os_log_impl(&_mh_execute_header, v23, v58, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s\nneeds to update displayIdentifier: %s.", v26, 0x34u);
    swift_arrayDestroy();

    v39 = v61;
  }

  else
  {
    v40 = *(v0 + 552);
    v42 = *(v0 + 432);
    v41 = *(v0 + 440);
    v43 = *(v0 + 376);

    sub_1007D49A4(v42, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v41, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v40, type metadata accessor for MemberSharingCircle);
    v39 = v43;
  }

  sub_1007D49A4(v39, type metadata accessor for MemberPeerTrust);
  v44 = *(v0 + 800);
  v45 = *(v0 + 824) + 1;
  sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  if (v45 == v44)
  {
LABEL_13:
    *(v0 + 936) = v62;
    *(v0 + 928) = v13;
    v46 = swift_task_alloc();
    *(v0 + 944) = v46;
    *v46 = v0;
    v46[1] = sub_1007CDF44;
    v47 = *(v0 + 688);
    v48 = *(v0 + 288);
    v49 = *(v0 + 280);

    return sub_1007D1148(v13, v48, v49, v47);
  }

  else
  {
    while (1)
    {
      v53 = *(v0 + 824) + 1;
      *(v0 + 840) = v62;
      *(v0 + 832) = v13;
      *(v0 + 824) = v53;
      *(v0 + 816) = 0;
      v54 = *(v0 + 480);
      v55 = *(v0 + 400);
      sub_1007D493C(*(v0 + 280) + ((*(v0 + 972) + 32) & ~*(v0 + 972)) + *(v0 + 808) * v53, v54, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (*(v54 + *(v55 + 20)) != 1)
      {
        sub_1007D471C(&qword_1016984A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          break;
        }
      }

      v51 = *(v0 + 800);
      v52 = *(v0 + 824) + 1;
      sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (v52 == v51)
      {
        goto LABEL_13;
      }
    }

    v56 = *(v0 + 624);

    return _swift_task_switch(sub_1007CADAC, v56, 0);
  }
}

uint64_t sub_1007CEC14()
{
  v92 = v0;
  *(v0 + 136) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 152) = 0u;
  sub_1000D2A70(v0 + 136, v0 + 176, &qword_1016A9F18, &qword_1013D78F0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 840);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100A5BB4C(0, v2[2] + 1, 1, *(v0 + 840));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100A5BB4C((v3 > 1), v4 + 1, 1, v2);
  }

  sub_10000B3A8(v0 + 136, &qword_1016A9F18, &qword_1013D78F0);
  v2[2] = v4 + 1;
  v90 = v2;
  v5 = &v2[5 * v4];
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  *(v5 + 2) = *(v0 + 176);
  *(v5 + 3) = v7;
  v5[8] = v6;
  v8 = *(v0 + 480);
  v10 = *(v0 + 448);
  v9 = *(v0 + 456);
  sub_1007D493C(*(v0 + 288), *(v0 + 560), type metadata accessor for MemberSharingCircle);
  sub_1007D493C(v8, v9, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  sub_1007D493C(v8, v10, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v87 = *(v0 + 978);
    v88 = *(v0 + 977);
    v13 = *(v0 + 560);
    v82 = *(v0 + 448);
    v79 = *(v0 + 456);
    v80 = *(v0 + 400);
    v84 = *(v0 + 976);
    v14 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v14 = 141559811;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_1007D49A4(v13, type metadata accessor for MemberSharingCircle);
    v18 = sub_1000136BC(v15, v17, &v91);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2160;
    *(v14 + 24) = 1752392040;
    *(v14 + 32) = 2081;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    sub_1007D49A4(v79, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v22 = sub_1000136BC(v19, v21, &v91);

    *(v14 + 34) = v22;
    *(v14 + 42) = 2080;
    v23 = (v82 + *(v80 + 24));
    v24 = *v23;
    v25 = v23[1];

    sub_1007D49A4(v82, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v26 = sub_1000136BC(v24, v25, &v91);

    *(v14 + 44) = v26;
    *(v14 + 52) = 1024;
    *(v14 + 54) = (v87 & 1) == 0;
    *(v14 + 58) = 1024;
    *(v14 + 60) = v84;
    *(v14 + 64) = 1024;
    *(v14 + 66) = v88;
    _os_log_impl(&_mh_execute_header, v11, v12, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s\nis revealed silently: %s - isNewRevealedMember: %{BOOL}d,\n            isInitial: %{BOOL}d, isAutomaticShare: %{BOOL}d.", v14, 0x46u);
    swift_arrayDestroy();
  }

  else
  {
    v27 = *(v0 + 560);
    v29 = *(v0 + 448);
    v28 = *(v0 + 456);

    sub_1007D49A4(v29, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v28, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v27, type metadata accessor for MemberSharingCircle);
  }

  v30 = *(v0 + 888);
  v31 = *(v0 + 880);
  v32 = *(v0 + 336);
  v33 = (v32 + *(*(v0 + 320) + 48));
  sub_1007D493C(*(v0 + 376), v32, type metadata accessor for MemberPeerTrust);
  *v33 = v31;
  v33[1] = v30;

  v34 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v0 + 832);
  if ((v34 & 1) == 0)
  {
    v35 = sub_100A5BB28(0, v35[2] + 1, 1, *(v0 + 832));
  }

  v37 = v35[2];
  v36 = v35[3];
  if (v37 >= v36 >> 1)
  {
    v35 = sub_100A5BB28((v36 > 1), v37 + 1, 1, v35);
  }

  v38 = *(v0 + 552);
  v39 = *(v0 + 480);
  v41 = *(v0 + 432);
  v40 = *(v0 + 440);
  v43 = *(v0 + 328);
  v42 = *(v0 + 336);
  v44 = *(v0 + 288);
  v35[2] = v37 + 1;
  sub_1000D2AD8(v42, v35 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v37, &qword_1016A9F10, &unk_1013BCBC8);
  sub_1007D493C(v44, v38, type metadata accessor for MemberSharingCircle);
  sub_1007D493C(v39, v40, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  sub_1007D493C(v39, v41, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = *(v0 + 552);
    v83 = v46;
    v81 = *(v0 + 440);
    v85 = *(v0 + 400);
    v86 = *(v0 + 432);
    v89 = *(v0 + 376);
    v48 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v48 = 141559043;
    *(v48 + 4) = 1752392040;
    *(v48 + 12) = 2081;
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v50;
    sub_1007D49A4(v47, type metadata accessor for MemberSharingCircle);
    v52 = sub_1000136BC(v49, v51, &v91);

    *(v48 + 14) = v52;
    *(v48 + 22) = 2160;
    *(v48 + 24) = 1752392040;
    *(v48 + 32) = 2081;
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    sub_1007D49A4(v81, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v56 = sub_1000136BC(v53, v55, &v91);

    *(v48 + 34) = v56;
    *(v48 + 42) = 2080;
    v57 = (v86 + *(v85 + 24));
    v58 = *v57;
    v59 = v57[1];

    sub_1007D49A4(v86, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    v60 = sub_1000136BC(v58, v59, &v91);

    *(v48 + 44) = v60;
    _os_log_impl(&_mh_execute_header, v45, v83, "Participant for shareId: %{private,mask.hash}s,\nmemberId: %{private,mask.hash}s\nneeds to update displayIdentifier: %s.", v48, 0x34u);
    swift_arrayDestroy();

    v61 = v89;
  }

  else
  {
    v62 = *(v0 + 552);
    v64 = *(v0 + 432);
    v63 = *(v0 + 440);
    v65 = *(v0 + 376);

    sub_1007D49A4(v64, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v63, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
    sub_1007D49A4(v62, type metadata accessor for MemberSharingCircle);
    v61 = v65;
  }

  sub_1007D49A4(v61, type metadata accessor for MemberPeerTrust);
  v66 = *(v0 + 800);
  v67 = *(v0 + 824) + 1;
  sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
  if (v67 == v66)
  {
LABEL_16:
    *(v0 + 936) = v90;
    *(v0 + 928) = v35;
    v68 = swift_task_alloc();
    *(v0 + 944) = v68;
    *v68 = v0;
    v68[1] = sub_1007CDF44;
    v69 = *(v0 + 688);
    v70 = *(v0 + 288);
    v71 = *(v0 + 280);

    return sub_1007D1148(v35, v70, v71, v69);
  }

  else
  {
    while (1)
    {
      v75 = *(v0 + 824) + 1;
      *(v0 + 840) = v90;
      *(v0 + 832) = v35;
      *(v0 + 824) = v75;
      *(v0 + 816) = 0;
      v76 = *(v0 + 480);
      v77 = *(v0 + 400);
      sub_1007D493C(*(v0 + 280) + ((*(v0 + 972) + 32) & ~*(v0 + 972)) + *(v0 + 808) * v75, v76, type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (*(v76 + *(v77 + 20)) != 1)
      {
        sub_1007D471C(&qword_1016984A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          break;
        }
      }

      v73 = *(v0 + 800);
      v74 = *(v0 + 824) + 1;
      sub_1007D49A4(*(v0 + 480), type metadata accessor for SharingCircleKeyManager.SharingCircleContent.Member);
      if (v74 == v73)
      {
        goto LABEL_16;
      }
    }

    v78 = *(v0 + 624);

    return _swift_task_switch(sub_1007CADAC, v78, 0);
  }
}

uint64_t sub_1007CF674()
{
  v25 = v0;
  v1 = v0[64];
  v2 = v0[36];
  v3 = *(*(v2 + *(v0[61] + 36)) + 16);
  sub_1007D493C(v2, v0[65], type metadata accessor for MemberSharingCircle);
  sub_1007D493C(v2, v1, type metadata accessor for MemberSharingCircle);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[65];
    v21 = v0[64];
    v23 = v0[100] == v3 + 1;
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v7 = 141559299;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    sub_1007D49A4(v6, type metadata accessor for MemberSharingCircle);
    v11 = sub_1000136BC(v8, v10, &v24);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2160;
    *(v7 + 24) = 1752392040;
    *(v7 + 32) = 2081;
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1007D49A4(v21, type metadata accessor for MemberSharingCircle);
    v15 = sub_1000136BC(v12, v14, &v24);

    *(v7 + 34) = v15;
    *(v7 + 42) = 1024;
    *(v7 + 44) = v23;
    *(v7 + 48) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 50) = v16;
    *v22 = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to delete previous circle for share-id: %{private,mask.hash}s,\nbeaconId: %{private,mask.hash}s,\nallMembersAccepted: %{BOOL}d. %@.", v7, 0x3Au);
    sub_10000B3A8(v22, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v17 = v0[65];
    v18 = v0[64];

    sub_1007D49A4(v18, type metadata accessor for MemberSharingCircle);
    sub_1007D49A4(v17, type metadata accessor for MemberSharingCircle);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1007CFB78(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for MemberSharingCircle(0);
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v2[13] = *(v4 + 64);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1007CFC84, v1, 0);
}

uint64_t sub_1007CFC84()
{
  sub_1000035D0((v0[10] + 112), *(v0[10] + 136));
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1007CFD2C;
  v2 = v0[9];

  return sub_100C73710(v2);
}

uint64_t sub_1007CFD2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {
    v6 = v4[10];

    return _swift_task_switch(sub_1007CFFDC, v6, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[20] = v7;
    *v7 = v5;
    v7[1] = sub_1007CFEB4;
    v8 = v4[9];

    return sub_1007C9364(a1, v8, 0);
  }
}

uint64_t sub_1007CFEB4()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_1007D065C;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1007D0464;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1007CFFDC()
{
  v30 = v0;
  v1 = *(v0 + 152);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 112);
  v3 = *(v0 + 72);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_1007D493C(v3, v2, type metadata accessor for MemberSharingCircle);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 112);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1007D49A4(v8, type metadata accessor for MemberSharingCircle);
    v13 = sub_1000136BC(v10, v12, &v29);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2082;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = sub_1000136BC(v14, v15, &v29);

    *(v9 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to restore keys for circle: %{private,mask.hash}s,\nerror: %{public}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1007D49A4(v8, type metadata accessor for MemberSharingCircle);
  }

  *(v0 + 56) = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast() && *(v0 + 48) == 1 && *(v0 + 40) > 5uLL)
  {
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    v19 = *(v0 + 96);
    v21 = *(v0 + 72);
    v20 = *(v0 + 80);
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
    sub_1007D493C(v21, v18, type metadata accessor for MemberSharingCircle);
    v24 = sub_1007D471C(&qword_1016A9F08, v23, type metadata accessor for ShareKeysDownloadUseCase, &unk_1013BCB88);
    v25 = (*(v19 + 80) + 40) & ~*(v19 + 80);
    v26 = swift_allocObject();
    v26[2] = v20;
    v26[3] = v24;
    v26[4] = v20;
    sub_1007D48B4(v18, v26 + v25, type metadata accessor for MemberSharingCircle);
    swift_retain_n();
    sub_10025EDD4(0, 0, v17, &unk_1013BCBB8, v26);
  }

  else
  {
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1007D0464()
{
  sub_1000035D0((v0[10] + 160), *(v0[10] + 184));
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_1007D050C;
  v2 = v0[9];

  return sub_10108147C(v2);
}

uint64_t sub_1007D050C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1007D065C()
{
  v30 = v0;

  v1 = *(v0 + 168);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 112);
  v3 = *(v0 + 72);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_1007D493C(v3, v2, type metadata accessor for MemberSharingCircle);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 112);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v9 = 141558531;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_1007D49A4(v8, type metadata accessor for MemberSharingCircle);
    v13 = sub_1000136BC(v10, v12, &v29);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2082;
    swift_getErrorValue();
    v14 = Error.localizedDescription.getter();
    v16 = sub_1000136BC(v14, v15, &v29);

    *(v9 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to restore keys for circle: %{private,mask.hash}s,\nerror: %{public}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1007D49A4(v8, type metadata accessor for MemberSharingCircle);
  }

  *(v0 + 56) = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast() && *(v0 + 48) == 1 && *(v0 + 40) > 5uLL)
  {
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    v19 = *(v0 + 96);
    v21 = *(v0 + 72);
    v20 = *(v0 + 80);
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
    sub_1007D493C(v21, v18, type metadata accessor for MemberSharingCircle);
    v24 = sub_1007D471C(&qword_1016A9F08, v23, type metadata accessor for ShareKeysDownloadUseCase, &unk_1013BCB88);
    v25 = (*(v19 + 80) + 40) & ~*(v19 + 80);
    v26 = swift_allocObject();
    v26[2] = v20;
    v26[3] = v24;
    v26[4] = v20;
    sub_1007D48B4(v18, v26 + v25, type metadata accessor for MemberSharingCircle);
    swift_retain_n();
    sub_10025EDD4(0, 0, v17, &unk_1013BCBB8, v26);
  }

  else
  {
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1007D0AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1007D0B0C, a4, 0);
}

uint64_t sub_1007D0B0C()
{
  sub_1000035D0((v0[2] + 160), *(v0[2] + 184));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001B7B20;
  v2 = v0[3];

  return sub_10107F924(v2);
}

BOOL sub_1007D0BD8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MemberSharingCircle(0);
  type metadata accessor for UUID();
  sub_1007D471C(&qword_1016984A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_1007D0C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_1007D0D8C, 0, 0);
}

uint64_t sub_1007D0D8C()
{
  v1 = *(*(v0 + 32) + 152);
  *(v0 + 88) = v1;
  return _swift_task_switch(sub_1007D0DB0, v1, 0);
}

uint64_t sub_1007D0DB0()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  (*(v4 + 16))(v2, v0[3], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);

  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_1007D0F10;
  v9 = v0[9];
  v8 = v0[10];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1007D4EA8, v6, v9);
}

uint64_t sub_1007D0F10()
{

  return _swift_task_switch(sub_1007D1028, 0, 0);
}

uint64_t sub_1007D1028()
{
  v1 = v0[10];
  v2 = type metadata accessor for MemberPeerTrust(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10000B3A8(v1, &qword_101698C10, &unk_10138C1E0);
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v5 = (v1 + *(v2 + 32));
    v3 = *v5;
    v4 = v5[1];

    sub_1007D49A4(v1, type metadata accessor for MemberPeerTrust);
  }

  v6 = v0[2];
  *v6 = v3;
  v6[1] = v4;

  v7 = v0[1];

  return v7();
}

uint64_t sub_1007D1148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_1000BC4D4(&qword_1016A9F20, &qword_1013BCC18);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v5[11] = swift_task_alloc();
  v5[12] = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[14] = v7;
  v8 = *(v7 - 8);
  v5[15] = v8;
  v5[16] = *(v8 + 64);
  v5[17] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_1016A9F10, &unk_1013BCBC8);
  v5[18] = v9;
  v5[19] = *(v9 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_10169A608, &unk_1013BCC20);
  v5[24] = v10;
  v5[25] = *(v10 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v11 = type metadata accessor for MemberSharingCircle(0);
  v5[32] = v11;
  v12 = *(v11 - 8);
  v5[33] = v12;
  v5[34] = *(v12 + 64);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();

  return _swift_task_switch(sub_1007D14C4, v4, 0);
}

uint64_t sub_1007D14C4()
{
  v90 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 32);
  *(v0 + 16) = _swiftEmptyArrayStorage;
  if (*(*(v0 + 40) + 16) != *(*(v2 + *(v1 + 36)) + 16) + 1)
  {
    goto LABEL_8;
  }

  if (qword_101694480 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v4 = *(v0 + 312);
    v3 = *(v0 + 320);
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177A560);
    sub_1007D493C(v2, v3, type metadata accessor for MemberSharingCircle);
    sub_1007D493C(v2, v4, type metadata accessor for MemberSharingCircle);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 312);
    v10 = *(v0 + 320);
    if (v8)
    {
      v11 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *v11 = 141558787;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      v85 = v7;
      sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      sub_1007D49A4(v10, type metadata accessor for MemberSharingCircle);
      v15 = sub_1000136BC(v12, v14, &v89);

      *(v11 + 14) = v15;
      *(v11 + 22) = 2160;
      *(v11 + 24) = 1752392040;
      *(v11 + 32) = 2081;
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      sub_1007D49A4(v9, type metadata accessor for MemberSharingCircle);
      v19 = sub_1000136BC(v16, v18, &v89);

      *(v11 + 34) = v19;
      _os_log_impl(&_mh_execute_header, v6, v85, "All participant for shareId: %{private,mask.hash}s,\nbeaconId: %{private,mask.hash}s have accepted.", v11, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      sub_1007D49A4(v9, type metadata accessor for MemberSharingCircle);
      sub_1007D49A4(v10, type metadata accessor for MemberSharingCircle);
    }

    v20 = *(v0 + 48);
    v21 = *(v20 + 16);
    *(v0 + 328) = v21;
    if (v21)
    {
      v22 = *(v0 + 264);
      v23 = *(v0 + 192);
      v24 = *(*(v0 + 56) + 152);
      *(v0 + 336) = v24;
      v25 = *(v22 + 80);
      *(v0 + 480) = v25;
      v26 = *(v22 + 72);
      *(v0 + 352) = 0;
      *(v0 + 360) = _swiftEmptyArrayStorage;
      *(v0 + 344) = v26;
      sub_1007D493C(v20 + ((v25 + 32) & ~v25), *(v0 + 304), type metadata accessor for MemberSharingCircle);
      *(v0 + 484) = v23[12];
      *(v0 + 488) = v23[16];
      *(v0 + 492) = v23[20];
      *(v0 + 496) = v23[24];
      v27 = sub_1007D1F38;
      v28 = v24;
      goto LABEL_27;
    }

LABEL_8:
    v29 = *(v0 + 24);
    v30 = *(v29 + 16);
    *(v0 + 400) = v30;
    v88 = v0;
    if (v30)
    {
      v31 = *(v0 + 152);
      v32 = *(v0 + 120);
      v33 = v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
      v86 = *(v31 + 72);
      v75 = (v32 + 8);
      v77 = (v32 + 16);
      do
      {
        if (qword_101694480 != -1)
        {
          swift_once();
        }

        v34 = *(v0 + 184);
        v35 = type metadata accessor for Logger();
        sub_1000076D4(v35, qword_10177A560);
        sub_1000D2A70(v33, v34, &qword_1016A9F10, &unk_1013BCBC8);
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();
        v38 = os_log_type_enabled(v36, v37);
        v39 = *(v0 + 184);
        if (v38)
        {
          v40 = *(v0 + 176);
          v83 = v37;
          v41 = *(v0 + 136);
          v42 = *(v88 + 112);
          v43 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v89 = v81;
          *v43 = 141558275;
          *(v43 + 4) = 1752392040;
          *(v43 + 12) = 2081;
          sub_1000D2A70(v39, v40, &qword_1016A9F10, &unk_1013BCBC8);

          v44 = type metadata accessor for MemberPeerTrust(0);
          (*v77)(v41, v40 + *(v44 + 20), v42);
          sub_1007D49A4(v40, type metadata accessor for MemberPeerTrust);
          sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v45 = dispatch thunk of CustomStringConvertible.description.getter();
          v47 = v46;
          v48 = v42;
          v0 = v88;
          (*v75)(v41, v48);
          sub_10000B3A8(v39, &qword_1016A9F10, &unk_1013BCBC8);
          v49 = sub_1000136BC(v45, v47, &v89);

          *(v43 + 14) = v49;
          _os_log_impl(&_mh_execute_header, v36, v83, "Data update on members process. Update %{private,mask.hash}s", v43, 0x16u);
          sub_100007BAC(v81);
        }

        else
        {

          sub_10000B3A8(v39, &qword_1016A9F10, &unk_1013BCBC8);
        }

        v33 += v86;
        --v30;
      }

      while (v30);
    }

    v50 = _swiftEmptyArrayStorage[2];

    v51 = *(v0 + 256);
    if (!v50)
    {
      break;
    }

    v79 = *(v0 + 256);
    v52 = 0;
    v53 = *(v0 + 120);
    v76 = (v53 + 16);
    v87 = *(v0 + 200);
    v73 = *(v0 + 192);
    v74 = (v53 + 8);
    v78 = v50;
    while (v52 < _swiftEmptyArrayStorage[2])
    {
      sub_1000D2A70(_swiftEmptyArrayStorage + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v52, *(v0 + 216), &qword_10169A608, &unk_1013BCC20);
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v56 = *(v0 + 208);
      v55 = *(v0 + 216);
      v57 = type metadata accessor for Logger();
      sub_1000076D4(v57, qword_10177A560);
      sub_1000D2A70(v55, v56, &qword_10169A608, &unk_1013BCC20);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = *(v0 + 240);
        v61 = *(v0 + 208);
        v80 = v61;
        v84 = v59;
        v62 = *(v0 + 136);
        v63 = *(v88 + 112);
        v64 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v89 = v82;
        *v64 = 141558275;
        *(v64 + 4) = 1752392040;
        *(v64 + 12) = 2081;
        sub_1000D2A70(v61, v60, &qword_10169A608, &unk_1013BCC20);
        v65 = *(v73 + 48);
        v66 = *(v73 + 64);

        (*v76)(v62, v60 + *(v79 + 20), v63);
        sub_1007D49A4(v60, type metadata accessor for MemberSharingCircle);
        sub_10000B3A8(v60 + v66, &unk_1016B29E0, &unk_1013B70E0);
        sub_10000B3A8(v60 + v65, &unk_101698C30, &unk_101392630);
        sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        v0 = v88;
        (*v74)(v62, v63);
        sub_10000B3A8(v80, &qword_10169A608, &unk_1013BCC20);
        v70 = sub_1000136BC(v67, v69, &v89);

        *(v64 + 14) = v70;
        _os_log_impl(&_mh_execute_header, v58, v84, "Data update on members process. Delete %{private,mask.hash}s", v64, 0x16u);
        sub_100007BAC(v82);

        v50 = v78;
      }

      else
      {
        v54 = *(v0 + 208);

        sub_10000B3A8(v54, &qword_10169A608, &unk_1013BCC20);
      }

      ++v52;
      sub_10000B3A8(*(v0 + 216), &qword_10169A608, &unk_1013BCC20);
      if (v50 == v52)
      {
        v51 = *(v0 + 256);
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
    v2 = *(v0 + 32);
  }

LABEL_26:
  v71 = *(v0 + 56);

  v28 = *(v71 + 152);
  *(v0 + 408) = v28;
  *(v0 + 500) = *(v51 + 20);
  v27 = sub_1007D2BB8;
LABEL_27:

  return _swift_task_switch(v27, v28, 0);
}

uint64_t sub_1007D1F38()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 296);
  v3 = (*(v0 + 480) + 24) & ~*(v0 + 480);
  sub_1007D48B4(*(v0 + 304), v2, type metadata accessor for MemberSharingCircle);
  v4 = swift_allocObject();
  *(v0 + 368) = v4;
  *(v4 + 16) = v1;
  sub_1007D48B4(v2, v4 + v3, type metadata accessor for MemberSharingCircle);

  v5 = swift_task_alloc();
  *(v0 + 376) = v5;
  *v5 = v0;
  v5[1] = sub_1007D2088;
  v6 = *(v0 + 240);
  v7 = *(v0 + 192);

  return unsafeBlocking<A>(context:_:)(v6, 0xD000000000000010, 0x800000010134A8C0, sub_1007D4A50, v4, v7);
}

uint64_t sub_1007D2088()
{
  v1 = *(*v0 + 336);

  return _swift_task_switch(sub_1007D21B4, v1, 0);
}

uint64_t sub_1007D21B4()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 484);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 192);
  v6 = *(v0 + 56);
  v7 = v5[12];
  v8 = v5[16];
  *(v0 + 384) = *(v3 + v5[20]);
  *(v0 + 392) = *(v3 + v5[24]);
  sub_1007D48B4(v3, v4, type metadata accessor for MemberSharingCircle);
  sub_1000D2AD8(v3 + v7, v4 + v2, &unk_101698C30, &unk_101392630);
  sub_1000D2AD8(v3 + v8, v4 + v1, &unk_1016B29E0, &unk_1013B70E0);

  return _swift_task_switch(sub_1007D22B8, v6, 0);
}

uint64_t sub_1007D22B8()
{
  v89 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 496);
  v3 = *(v0 + 248);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 192);
  *(v3 + *(v0 + 492)) = *(v0 + 384);
  *(v3 + v2) = v1;
  sub_1000D2A70(v3, v4, &qword_10169A608, &unk_1013BCC20);
  v7 = v6[12];
  v8 = v6[16];
  v9 = v6[20];
  v10 = *(v4 + v9);
  v11 = v6[24];
  v12 = *(v4 + v11);
  sub_1007D48B4(v4, v5, type metadata accessor for MemberSharingCircle);
  sub_1000D2AD8(v4 + v7, v5 + v7, &unk_101698C30, &unk_101392630);
  sub_1000D2AD8(v4 + v8, v5 + v8, &unk_1016B29E0, &unk_1013B70E0);
  *(v5 + v9) = v10;
  *(v5 + v11) = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v0 + 360);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v16 = v14[2];
    v15 = v14[3];
    v80 = v14;
    if (v16 >= v15 >> 1)
    {
      v80 = sub_100A5BAE0((v15 > 1), v16 + 1, 1, v14);
    }

    v17 = *(v0 + 328);
    v18 = *(v0 + 224);
    v19 = *(v0 + 200);
    v20 = *(v0 + 352) + 1;
    sub_10000B3A8(*(v0 + 248), &qword_10169A608, &unk_1013BCC20);
    v80[2] = v16 + 1;
    sub_1000D2AD8(v18, v80 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, &qword_10169A608, &unk_1013BCC20);
    if (v20 != v17)
    {
      v43 = *(v0 + 344);
      v44 = *(v0 + 352) + 1;
      *(v0 + 352) = v44;
      *(v0 + 360) = v80;
      v45 = *(v0 + 336);
      v46 = *(v0 + 192);
      sub_1007D493C(*(v0 + 48) + ((*(v0 + 480) + 32) & ~*(v0 + 480)) + v43 * v44, *(v0 + 304), type metadata accessor for MemberSharingCircle);
      *(v0 + 484) = v46[12];
      *(v0 + 488) = v46[16];
      *(v0 + 492) = v46[20];
      *(v0 + 496) = v46[24];
      v47 = sub_1007D1F38;
      v48 = v45;
      goto LABEL_24;
    }

    *(v0 + 16) = v80;
    v21 = *(v0 + 24);
    v22 = *(v21 + 16);
    *(v0 + 400) = v22;
    v87 = v0;
    if (v22)
    {
      v23 = *(v0 + 152);
      v24 = *(v0 + 120);
      v25 = v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v26 = *(v23 + 72);
      v76 = (v24 + 8);
      v78 = (v24 + 16);
      do
      {
        if (qword_101694480 != -1)
        {
          swift_once();
        }

        v27 = *(v0 + 184);
        v28 = type metadata accessor for Logger();
        sub_1000076D4(v28, qword_10177A560);
        sub_1000D2A70(v25, v27, &qword_1016A9F10, &unk_1013BCBC8);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();
        v31 = os_log_type_enabled(v29, v30);
        v32 = *(v0 + 184);
        if (v31)
        {
          v33 = *(v0 + 176);
          v85 = v30;
          v34 = *(v0 + 136);
          v35 = *(v0 + 112);
          v36 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v88 = v83;
          *v36 = 141558275;
          *(v36 + 4) = 1752392040;
          *(v36 + 12) = 2081;
          sub_1000D2A70(v32, v33, &qword_1016A9F10, &unk_1013BCBC8);

          v37 = type metadata accessor for MemberPeerTrust(0);
          (*v78)(v34, v33 + *(v37 + 20), v35);
          sub_1007D49A4(v33, type metadata accessor for MemberPeerTrust);
          sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v38 = dispatch thunk of CustomStringConvertible.description.getter();
          v39 = v26;
          v41 = v40;
          (*v76)(v34, v35);
          sub_10000B3A8(v32, &qword_1016A9F10, &unk_1013BCBC8);
          v42 = sub_1000136BC(v38, v41, &v88);
          v26 = v39;
          v0 = v87;

          *(v36 + 14) = v42;
          _os_log_impl(&_mh_execute_header, v29, v85, "Data update on members process. Update %{private,mask.hash}s", v36, 0x16u);
          sub_100007BAC(v83);
        }

        else
        {

          sub_10000B3A8(v32, &qword_1016A9F10, &unk_1013BCBC8);
        }

        v25 += v26;
        --v22;
      }

      while (v22);
    }

    v49 = v80;
    v50 = v80[2];

    if (!v50)
    {
      break;
    }

    v51 = 0;
    v52 = *(v0 + 120);
    v77 = (v52 + 16);
    v74 = *(v0 + 256);
    v75 = (v52 + 8);
    v86 = *(v0 + 200);
    v73 = *(v0 + 192);
    v79 = v50;
    while (v51 < v49[2])
    {
      sub_1000D2A70(v49 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v51, *(v0 + 216), &qword_10169A608, &unk_1013BCC20);
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v54 = *(v0 + 208);
      v55 = *(v0 + 216);
      v56 = type metadata accessor for Logger();
      sub_1000076D4(v56, qword_10177A560);
      sub_1000D2A70(v55, v54, &qword_10169A608, &unk_1013BCC20);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = *(v0 + 240);
        v60 = *(v0 + 208);
        v81 = v60;
        v84 = v58;
        v61 = *(v0 + 136);
        v62 = *(v0 + 112);
        v63 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v88 = v82;
        *v63 = 141558275;
        *(v63 + 4) = 1752392040;
        *(v63 + 12) = 2081;
        sub_1000D2A70(v60, v59, &qword_10169A608, &unk_1013BCC20);
        v64 = *(v73 + 48);
        v65 = *(v73 + 64);

        (*v77)(v61, v59 + *(v74 + 20), v62);
        sub_1007D49A4(v59, type metadata accessor for MemberSharingCircle);
        sub_10000B3A8(v59 + v65, &unk_1016B29E0, &unk_1013B70E0);
        sub_10000B3A8(v59 + v64, &unk_101698C30, &unk_101392630);
        sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v66 = dispatch thunk of CustomStringConvertible.description.getter();
        v68 = v67;
        (*v75)(v61, v62);
        sub_10000B3A8(v81, &qword_10169A608, &unk_1013BCC20);
        v69 = sub_1000136BC(v66, v68, &v88);
        v0 = v87;

        *(v63 + 14) = v69;
        _os_log_impl(&_mh_execute_header, v57, v84, "Data update on members process. Delete %{private,mask.hash}s", v63, 0x16u);
        sub_100007BAC(v82);
        v49 = v80;

        v50 = v79;
      }

      else
      {
        v53 = *(v0 + 208);

        sub_10000B3A8(v53, &qword_10169A608, &unk_1013BCC20);
      }

      ++v51;
      sub_10000B3A8(*(v0 + 216), &qword_10169A608, &unk_1013BCC20);
      if (v50 == v51)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_28:
    v14 = sub_100A5BAE0(0, v14[2] + 1, 1, v14);
  }

LABEL_23:
  v70 = *(v0 + 256);
  v71 = *(v0 + 56);

  v48 = *(v71 + 152);
  *(v0 + 408) = v48;
  *(v0 + 500) = *(v70 + 20);
  v47 = sub_1007D2BB8;
LABEL_24:

  return _swift_task_switch(v47, v48, 0);
}

uint64_t sub_1007D2BB8()
{
  v1 = *(v0 + 500);
  v2 = *(v0 + 408);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = *(v0 + 32);
  v7 = *(v5 + 16);
  *(v0 + 416) = v7;
  *(v0 + 424) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6 + v1, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v0 + 432) = v9;
  *(v9 + 16) = v2;
  (*(v5 + 32))(v9 + v8, v3, v4);

  v10 = swift_task_alloc();
  *(v0 + 440) = v10;
  *v10 = v0;
  v10[1] = sub_1007D2D2C;
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_1007D4A04, v9, v12);
}

uint64_t sub_1007D2D2C()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_1007D2E58, v1, 0);
}

uint64_t sub_1007D2E58()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v4[2] = v3;
  v4[3] = v0 + 2;
  v4[4] = v1;
  sub_100EC0C48(sub_1007D4A30, v2);
  v5 = v0[51];

  return _swift_task_switch(sub_1007D3080, v5, 0);
}

uint64_t sub_1007D30A8()
{
  v1 = v0[56];
  v2 = v0[11];
  v3 = swift_task_alloc();
  v0[57] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[58] = v4;
  *v4 = v0;
  v4[1] = sub_1007D31A0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 1);
}

uint64_t sub_1007D31A0()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_1007D3AD4;
  }

  else
  {

    v2 = sub_1007D32BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1007D32D8()
{
  v68 = v0;
  v1 = v0[2];
  if (*(v1 + 16))
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v2 = v0[36];
    v3 = v0[4];
    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177A560);
    sub_1007D493C(v3, v2, type metadata accessor for MemberSharingCircle);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[36];
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v67 = v10;
      *v9 = 141558531;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      sub_1007D49A4(v8, type metadata accessor for MemberSharingCircle);
      v14 = sub_1000136BC(v11, v13, &v67);

      *(v9 + 14) = v14;
      *(v9 + 22) = 2048;
      *(v9 + 24) = *(v1 + 16);
      _os_log_impl(&_mh_execute_header, v5, v6, "Deleted all previous shares for beaconId: %{private,mask.hash}s,\ncount: %ld.", v9, 0x20u);
      sub_100007BAC(v10);
    }

    else
    {

      sub_1007D49A4(v8, type metadata accessor for MemberSharingCircle);
    }
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v15 = v0[35];
  v16 = v0[4];
  v17 = type metadata accessor for Logger();
  sub_1000076D4(v17, qword_10177A560);
  sub_1007D493C(v16, v15, type metadata accessor for MemberSharingCircle);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[50];
    v21 = v0[35];
    v22 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v22 = 141558531;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    sub_1007D471C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    sub_1007D49A4(v21, type metadata accessor for MemberSharingCircle);
    v26 = sub_1000136BC(v23, v25, &v66);

    *(v22 + 14) = v26;
    *(v22 + 22) = 2080;
    if (v20)
    {
      v56 = v19;
      v57 = v22;
      v58 = v18;
      v27 = v0[50];
      v28 = v0[19];
      v62 = v0[9];
      v63 = v0[18];
      v61 = v0[8];
      v29 = v0[3];
      v67 = _swiftEmptyArrayStorage;
      sub_101123F60(0, v27, 0);
      v30 = 0;
      v31 = v67;
      v32 = v29 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
      v60 = *(v28 + 72);
      v59 = v0;
      do
      {
        v34 = v0[21];
        v33 = v0[22];
        v35 = v0[20];
        v64 = v0[14];
        v65 = v0[52];
        v36 = v31;
        v37 = v0[10];
        sub_1000D2A70(v32, v33, &qword_1016A9F10, &unk_1013BCBC8);
        v38 = (v37 + *(v61 + 48));
        sub_1000D2A70(v33, v34, &qword_1016A9F10, &unk_1013BCBC8);

        v39 = v34 + *(type metadata accessor for MemberPeerTrust(0) + 20);
        v40 = v37;
        v31 = v36;
        v65(v40, v39, v64);
        sub_1007D49A4(v34, type metadata accessor for MemberPeerTrust);
        sub_1000D2AD8(v33, v35, &qword_1016A9F10, &unk_1013BCBC8);
        v41 = (v35 + *(v63 + 48));
        v43 = *v41;
        v42 = v41[1];
        *v38 = v43;
        v38[1] = v42;
        sub_1007D49A4(v35, type metadata accessor for MemberPeerTrust);
        v67 = v36;
        v45 = v36[2];
        v44 = v36[3];
        if (v45 >= v44 >> 1)
        {
          sub_101123F60((v44 > 1), v45 + 1, 1);
          v31 = v67;
        }

        v0 = v59;
        v46 = v59[50];
        v47 = v59[10];
        ++v30;
        v31[2] = v45 + 1;
        sub_1000D2AD8(v47, v31 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v45, &qword_1016A9F20, &qword_1013BCC18);
        v32 += v60;
      }

      while (v30 != v46);
      v22 = v57;
      v18 = v58;
      v19 = v56;
    }

    v49 = v0[11];
    v50 = Array.description.getter();
    v52 = v51;

    v53 = sub_1000136BC(v50, v52, &v66);

    *(v22 + 24) = v53;
    _os_log_impl(&_mh_execute_header, v18, v19, "Update members for shareId: %{private,mask.hash}s,\nupdates: %s.", v22, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v48 = v0[35];
    v49 = v0[11];

    sub_1007D49A4(v48, type metadata accessor for MemberSharingCircle);
  }

  sub_10000B3A8(v49, &qword_1016975C8, &qword_10138C1F0);
  sub_10000B3A8(v0[13], &unk_101698BC0, &qword_10138C440);

  v54 = v0[1];

  return v54();
}

uint64_t sub_1007D3AD4()
{
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_1007D3B40, v1, 0);
}

uint64_t sub_1007D3B40()
{
  sub_10000B3A8(v0[11], &qword_1016975C8, &qword_10138C1F0);
  sub_10000B3A8(v0[13], &unk_101698BC0, &qword_10138C440);

  v1 = v0[1];

  return v1();
}

void sub_1007D3CE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v49 = a5;
  v50 = a4;
  v52 = a2;
  v57 = a1;
  v8 = type metadata accessor for MemberPeerTrust(0);
  v56 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v55 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  __chkstk_darwin(v10 - 8);
  v48 = &v43 - v11;
  v12 = type metadata accessor for MemberSharingCircle(0);
  v46 = *(v12 - 8);
  v47 = v12;
  __chkstk_darwin(v12);
  v44 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_1000BC4D4(&qword_10169A608, &unk_1013BCC20);
  v53 = *(v51 - 8);
  __chkstk_darwin(v51);
  v54 = (&v43 - v14);
  v15 = sub_1000BC4D4(&qword_1016A9F10, &unk_1013BCBC8);
  __chkstk_darwin(v15);
  v18 = (&v43 - v17);
  v19 = *(a3 + 16);
  v45 = a3;
  if (v19)
  {
    v20 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v21 = *(v16 + 72);
    while (1)
    {
      sub_1000D2A70(v20, v18, &qword_1016A9F10, &unk_1013BCBC8);
      v22 = (v18 + *(v15 + 48));
      v23 = *v22;
      v24 = v22[1];

      sub_100EC3C34(v18, v57, v23, v24);
      if (v6)
      {
        break;
      }

      sub_10000B3A8(v18, &qword_1016A9F10, &unk_1013BCBC8);
      v20 += v21;
      if (!--v19)
      {
        goto LABEL_5;
      }
    }

    v36 = &qword_1016A9F10;
    v37 = &unk_1013BCBC8;
LABEL_16:
    v38 = v18;
    goto LABEL_17;
  }

LABEL_5:
  v25 = *v50;
  v26 = *(*v50 + 16);

  v50 = v26;
  if (v26)
  {
    v27 = 0;
    v28 = &qword_10169A608;
    v29 = v57;
    v18 = v54;
    v30 = v55;
    while (v27 < *(v25 + 16))
    {
      sub_1000D2A70(v25 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v27, v18, v28, &unk_1013BCC20);
      sub_100D45CB0(v18);
      if (v6)
      {

        v36 = &qword_10169A608;
        v37 = &unk_1013BCC20;
        goto LABEL_16;
      }

      v31 = v51;
      sub_1001BA354(*(v18 + *(v51 + 80)));
      v6 = 0;
      v32 = v28;
      v33 = *(v18 + *(v31 + 96));
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = 0;
        while (v35 < *(v33 + 16))
        {
          sub_1007D493C(v33 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v35, v30, type metadata accessor for MemberPeerTrust);
          sub_100D46078(v30);
          ++v35;
          sub_1007D49A4(v30, type metadata accessor for MemberPeerTrust);
          if (v34 == v35)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        break;
      }

LABEL_7:
      ++v27;
      v18 = v54;
      v28 = v32;
      sub_10000B3A8(v54, v32, &unk_1013BCC20);
      if (v27 == v50)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v29 = v57;
LABEL_19:

    v39 = v48;
    sub_1000D2A70(v49, v48, &unk_101698BC0, &qword_10138C440);
    if ((*(v46 + 48))(v39, 1, v47) == 1)
    {
      v36 = &unk_101698BC0;
      v37 = &qword_10138C440;
      v38 = v39;
LABEL_17:
      sub_10000B3A8(v38, v36, v37);
      return;
    }

    v40 = v39;
    v41 = v44;
    sub_1007D48B4(v40, v44, type metadata accessor for MemberSharingCircle);
    v42 = v45;

    sub_100EC22D0(v41, v29, v42);
    sub_1007D49A4(v41, type metadata accessor for MemberSharingCircle);
  }
}

uint64_t sub_1007D42B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A9F10, &unk_1013BCBC8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v29 - v6;
  v29 = *(type metadata accessor for MemberSharingCircle(0) + 36);
  v30 = a1;
  v8 = *(a2 + 16);

  v9 = v31;
  if (!v8)
  {
LABEL_15:

    *(v30 + v29) = v9;
    return result;
  }

  v10 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v11 = *(v5 + 72);
  v9 = v31;
  while (1)
  {
    sub_1000D2A70(v10, v7, &qword_1016A9F10, &unk_1013BCBC8);
    v12 = *(type metadata accessor for MemberPeerTrust(0) + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v9;
    v14 = sub_1000210EC(&v7[v12]);
    v16 = v9[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v9[3] < v19)
    {
      sub_100FEB78C(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_1000210EC(&v7[v12]);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v9 = v32;
      if (v20)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v27 = v14;
    sub_101007A90();
    v14 = v27;
    v9 = v32;
    if (v20)
    {
LABEL_3:
      *(v9[7] + v14) = 1;
      goto LABEL_4;
    }

LABEL_11:
    v9[(v14 >> 6) + 8] |= 1 << v14;
    v22 = v9[6];
    v23 = v14;
    v24 = type metadata accessor for UUID();
    (*(*(v24 - 8) + 16))(v22 + *(*(v24 - 8) + 72) * v23, &v7[v12], v24);
    *(v9[7] + v23) = 1;
    v25 = v9[2];
    v18 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v18)
    {
      goto LABEL_17;
    }

    v9[2] = v26;
LABEL_4:
    sub_10000B3A8(v7, &qword_1016A9F10, &unk_1013BCBC8);
    v10 += v11;
    if (!--v8)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  type metadata accessor for UUID();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1007D4558(uint64_t a1)
{
  v4 = *(type metadata accessor for MemberSharingCircle(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_1007D0AEC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1007D4670(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014650;

  return sub_1007D0C84(a1, a2, v2);
}

uint64_t sub_1007D471C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1007D47BC(uint64_t a1)
{
  v4 = *(type metadata accessor for MemberSharingCircle(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_1007C929C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1007D48B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007D493C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007D49A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007D4A7C(uint64_t a1)
{
  v4 = *(type metadata accessor for MemberSharingCircle(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_1007C929C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1007D4B74()
{
  v1 = (type metadata accessor for MemberSharingCircle(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v4 = v1[7];
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2 + v4, v5);
  v6(v0 + v2 + v1[8], v5);
  v6(v0 + v2 + v1[9], v5);
  v6(v0 + v2 + v1[10], v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1007D4CCC()
{
  v2 = *(type metadata accessor for MemberSharingCircle(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001BA6C8;

  return sub_1007C6534(v4, v0 + v3);
}

uint64_t sub_1007D4DA4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

unint64_t sub_1007D4E48()
{
  result = qword_1016A9F28[0];
  if (!qword_1016A9F28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1016A9F28);
  }

  return result;
}

uint64_t sub_1007D4EB0(void *a1)
{
  result = type metadata accessor for VariableGroupingSequence(319, a1[10], a1[11], a1[12]);
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1007D4FBC()
{
  v1 = *(v0 + *(*v0 + 104));
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = &v13;
  dispatch thunk of IteratorProtocol.next()();
  result = swift_endAccess();
  v4 = *v0;
  if (v14 == 1)
  {
    v2 = (v0 + *(v4 + 120));
  }

  v5 = *v2;
  *(v0 + *(v4 + 120)) = *v2;
  v6 = *(*v0 + 112);
  v7 = *(v0 + v6);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v7 + v5 < v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v1;
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  v8 = *(v0 + v6);
  v9 = 0;
  if (v8 < Array.count.getter())
  {
    Array.subscript.getter();
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    v9 = Array.init<A>(_:)();
  }

  sub_1000BC4D4(&qword_1016AA030, &qword_1013BCE28);
  sub_1007D5C80();
  result = Collection.count.getter();
  v10 = *(v0 + v6);
  v11 = __OFADD__(v10, result);
  v12 = v10 + result;
  if (!v11)
  {
    *(v0 + v6) = v12;
    return v9;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1007D52A0()
{
  v1 = *(*v0 + 104);
  v2 = type metadata accessor for VariableGroupingSequence(0, *(*v0 + 80), *(*v0 + 88), *(*v0 + 96));
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 128);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v3, AssociatedTypeWitness);
  return v0;
}

uint64_t sub_1007D53C0()
{
  sub_1007D52A0();

  return swift_deallocClassInstance();
}

uint64_t sub_1007D5448(uint64_t a1)
{
  result = type metadata accessor for Array();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1007D54D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1007D5658(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_1007D58C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007D4FBC();
  *a1 = result;
  return result;
}

uint64_t sub_1007D592C@<X0>(uint64_t *a1@<X0>, uint64_t ***a2@<X8>)
{
  v5 = sub_1007D58F0(a1);
  result = (*(*(a1 - 1) + 8))(v2, a1);
  *a2 = v5;
  return result;
}

uint64_t **sub_1007D59C0(uint64_t a1)
{
  v2 = v1;
  v19 = a1;
  v3 = *v1;
  v4 = (*v1)[11];
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = &v18 - v6;
  v8 = v3[12];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v12 = &v18 - v11;
  *(v1 + v3[14]) = 0;
  v13 = (*v1)[13];
  v14 = type metadata accessor for VariableGroupingSequence(0, v3[10], v4, v8);
  v15 = v2 + v13;
  v16 = v19;
  (*(*(v14 - 8) + 16))(v15, v19, v14);
  (*(v5 + 16))(v7, v16 + *(v14 + 44), v4);
  dispatch thunk of Sequence.makeIterator()();
  (*(v10 + 32))(v2 + (*v2)[16], v12, AssociatedTypeWitness);
  *(v2 + (*v2)[15]) = 0;
  return v2;
}

uint64_t **sub_1007D5C38(uint64_t a1)
{
  type metadata accessor for VariableGroupingSequence.VariableGroupingSequenceIterator(0, v1[10], v1[11], v1[12]);
  swift_allocObject();
  return sub_1007D59C0(a1);
}

unint64_t sub_1007D5C80()
{
  result = qword_1016AA038;
  if (!qword_1016AA038)
  {
    sub_1000BC580(&qword_1016AA030, &qword_1013BCE28);
    sub_1007D5D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AA038);
  }

  return result;
}

unint64_t sub_1007D5D0C()
{
  result = qword_1016AA040;
  if (!qword_1016AA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AA040);
  }

  return result;
}

uint64_t type metadata accessor for SearchpartyAccount(uint64_t a1)
{
  result = qword_1016AA0A0;
  if (!qword_1016AA0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007D5DD4(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_10073FACC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for AirPodsLostModeEndPoint(uint64_t a1)
{
  result = qword_1016AA140;
  if (!qword_1016AA140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007D5EE4()
{
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v0 = URLComponents.path.modify();
  v1._countAndFlagsBits = 0xD000000000000013;
  v1._object = 0x80000001013608A0;
  String.append(_:)(v1);
  v0(&v7, 0);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v2 = qword_10177C218;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 isInternalBuild];

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
    v6 = [v2 stringForKey:v5];

    if (v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URLComponents.host.setter();
    }
  }
}

uint64_t sub_1007D60D4(uint64_t a1)
{
  v60 = sub_1000BC4D4(&unk_1016B6E10, &qword_1013BD0A8);
  v3 = __chkstk_darwin(v60);
  v59 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v58 = v51 - v6;
  __chkstk_darwin(v5);
  v57 = v51 - v7;
  v8 = *(a1 + 16);
  v74 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return v74;
  }

  v51[1] = v1;
  v73 = _swiftEmptyArrayStorage;
  sub_1011250EC(0, v8, 0);
  v74 = v73;
  v9 = a1 + 64;
  result = _HashTable.startBucket.getter();
  if (result < 0 || (v11 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v52 = a1 + 72;
    v53 = v8;
    v12 = *(a1 + 36);
    v13 = 1;
    v54 = v12;
    v55 = a1 + 64;
    v56 = a1;
    while ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      if (v12 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v62 = 1 << v11;
      v63 = v11 >> 6;
      v61 = v13;
      v14 = v60;
      v15 = v57;
      v16 = &v57[*(v60 + 48)];
      v17 = *(a1 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      (*(v19 + 16))(v15, v17 + *(v19 + 72) * v11, v18);
      v20 = (*(a1 + 56) + 104 * v11);
      v22 = v20[1];
      v21 = v20[2];
      v66[0] = *v20;
      v66[1] = v22;
      v64 = v11;
      v66[2] = v21;
      v24 = v20[4];
      v23 = v20[5];
      v25 = v20[3];
      v67 = *(v20 + 96);
      v66[4] = v24;
      v66[5] = v23;
      v66[3] = v25;
      memmove(v16, v20, 0x61uLL);
      v26 = v58;
      (*(v19 + 32))(v58, v15, v18);
      v27 = v26 + *(v14 + 48);
      v28 = *(v16 + 5);
      *(v27 + 64) = *(v16 + 4);
      *(v27 + 80) = v28;
      *(v27 + 96) = v16[96];
      v29 = *(v16 + 1);
      *v27 = *v16;
      *(v27 + 16) = v29;
      v30 = *(v16 + 3);
      *(v27 + 32) = *(v16 + 2);
      *(v27 + 48) = v30;
      v31 = v59;
      sub_1000D2A70(v26, v59, &unk_1016B6E10, &qword_1013BD0A8);
      v32 = v31 + *(v14 + 48);
      sub_1000D2A70(v66, &v65, &unk_1016AA4C0, &unk_1013BD0B0);

      v33 = *(v32 + 56);
      v70 = *(v32 + 40);
      v71 = v33;
      v72[0] = *(v32 + 72);
      *(v72 + 9) = *(v32 + 81);
      v34 = *(v32 + 24);
      v68 = *(v32 + 8);
      v69 = v34;
      (*(v19 + 8))(v31, v18);
      v35 = v74;
      sub_10000B3A8(v26, &unk_1016B6E10, &qword_1013BD0A8);
      v73 = v35;
      v37 = v35[2];
      v36 = v35[3];
      v74 = v35;
      if (v37 >= v36 >> 1)
      {
        sub_1011250EC((v36 > 1), v37 + 1, 1);
        v74 = v73;
      }

      v38 = v74;
      v74[2] = v37 + 1;
      v39 = &v38[12 * v37];
      v40 = v69;
      v39[2] = v68;
      v39[3] = v40;
      v41 = v70;
      v42 = v71;
      v43 = v72[0];
      *(v39 + 105) = *(v72 + 9);
      v39[5] = v42;
      v39[6] = v43;
      v39[4] = v41;
      a1 = v56;
      v11 = 1 << *(v56 + 32);
      result = v64;
      if (v64 >= v11)
      {
        goto LABEL_27;
      }

      v9 = v55;
      v44 = *(v55 + 8 * v63);
      if ((v44 & v62) == 0)
      {
        goto LABEL_28;
      }

      v12 = v54;
      if (v54 != *(v56 + 36))
      {
        goto LABEL_29;
      }

      v45 = v44 & (-2 << (v64 & 0x3F));
      if (v45)
      {
        v11 = __clz(__rbit64(v45)) | v64 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v46 = v63 << 6;
        v47 = v63 + 1;
        v48 = (v52 + 8 * v63);
        while (v47 < (v11 + 63) >> 6)
        {
          v50 = *v48++;
          v49 = v50;
          v46 += 64;
          ++v47;
          if (v50)
          {
            result = sub_1000BB408(v64, v54, 0);
            v11 = __clz(__rbit64(v49)) + v46;
            goto LABEL_19;
          }
        }

        result = sub_1000BB408(v64, v54, 0);
      }

LABEL_19:
      if (v61 == v53)
      {
        return v74;
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
        v13 = v61 + 1;
        if (v11 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1007D65D8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B368);
  sub_1000076D4(v0, qword_10177B368);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1007D665C@<X0>(void *a2@<X8>)
{
  sub_1000BC4D4(&qword_1016AA598, &qword_1013BD1D0);
  result = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  *a2 = v4;
  return result;
}

uint64_t sub_1007D66E8()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  swift_defaultActor_initialize();
  type metadata accessor for WorkItemQueue();
  v6 = type metadata accessor for WorkItemQueue.WarningOptions();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  UUID.init()();
  *(v0 + 128) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v7(v5, 1, 1, v6);
  UUID.init()();
  *(v0 + 136) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  *(v0 + 144) = 0;
  *(v0 + 152) = _swiftEmptyDictionarySingleton;
  sub_1000BC4D4(&qword_1016AA5C0, &qword_1013BD240);
  swift_allocObject();
  *(v0 + 160) = sub_1007F0080();
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  sub_1000BC4D4(&unk_1016AA5C8, &qword_1013BD248);
  swift_allocObject();
  *(v0 + 208) = AsyncStreamProvider.init()();
  *(v0 + 216) = _swiftEmptyArrayStorage;
  v8 = *(v0 + 160);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = *(v8 + 40);
  v11 = *(v8 + 48);
  *(v8 + 40) = sub_1007FFB80;
  *(v8 + 48) = v9;

  sub_1000BB27C(v10, v11);

  return v1;
}

uint64_t sub_1007D6984(uint64_t a1)
{
  v1 = type metadata accessor for UUID();
  __chkstk_darwin(v1 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for WorkItemQueue.WorkItem();
    swift_allocObject();
    swift_weakInit();

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  return result;
}

uint64_t sub_1007D6AFC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1007D6BB8, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1007D6BB8()
{
  v1 = v0[6];
  v2 = *(v1 + 144);
  v0[7] = v2;
  if (v2)
  {
    v5 = (&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel());

    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1007D6CC4;

    return v5();
  }

  else
  {
    *(v1 + 144) = 0;
    sub_1007E434C();
    sub_1007E915C();

    return _swift_task_switch(sub_1007D6E68, 0, 0);
  }
}

uint64_t sub_1007D6CC4()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_1007D6DF0, v1, 0);
}

uint64_t sub_1007D6DF0()
{
  *(*(v0 + 48) + 144) = 0;

  sub_1007E434C();
  sub_1007E915C();

  return _swift_task_switch(sub_1007D6E68, 0, 0);
}

uint64_t sub_1007D6E68()
{
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B368);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cancelled all location streams - no more connections.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1007D6F8C(void *a1, _OWORD *a2)
{
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  sub_1007F0258(a1, a2);
  type metadata accessor for WorkItemQueue.WorkItem();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a2[3];
  *(v6 + 56) = a2[2];
  *(v6 + 72) = v7;
  *(v6 + 88) = a2[4];
  *(v6 + 97) = *(a2 + 73);
  v8 = a2[1];
  *(v6 + 24) = *a2;
  *(v6 + 40) = v8;

  sub_10000F4C8(a2, v10);
  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();

  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1007D710C(uint64_t a1, uint64_t a2)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return _swift_task_switch(sub_1007D712C, 0, 0);
}

uint64_t sub_1007D712C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_1007D7214;

    return sub_1007E5468();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1007D7214()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 168) = v3;
  *v3 = v2;
  v3[1] = sub_1007D7354;

  return sub_1007E4684();
}

uint64_t sub_1007D7354()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 176) = v3;
  *v3 = v2;
  v3[1] = sub_1007D7494;

  return sub_1007D8184();
}

uint64_t sub_1007D7494()
{
  v1 = *(*v0 + 152);

  return _swift_task_switch(sub_1007D75A4, v1, 0);
}

uint64_t sub_1007D75A4()
{
  sub_1007D7DC8();
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_1007D763C;

  return daemon.getter();
}

uint64_t sub_1007D763C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 192) = a1;

  v3 = swift_task_alloc();
  *(v2 + 200) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1007D7818;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1007D7818(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1007FFCA0;
    v6 = 0;
  }

  else
  {

    *(v4 + 208) = a1;
    v5 = sub_1007D7978;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1007D7978()
{

  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_1007D7A50;
  v2 = *(v0 + 208);

  return unsafeBlocking<A>(context:_:)(v1, 0xD000000000000010, 0x800000010134A8C0, sub_1007FFC9C, v2, &type metadata for () + 1);
}

uint64_t sub_1007D7A50()
{
  v1 = *(*v0 + 208);

  return _swift_task_switch(sub_1007D7B68, v1, 0);
}

uint64_t sub_1007D7B68()
{

  return _swift_task_switch(sub_1007D7BD0, 0, 0);
}

uint64_t sub_1007D7BD0()
{
  v14 = v0;
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B368);
  sub_10000F4C8(v1, v0 + 16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  sub_1004E2CD8(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 144);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    if (*(v5 + 48))
    {
      v8 = *(*(v0 + 144) + 40);
      v9 = *(v5 + 48);
    }

    else
    {
      v9 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
    }

    v10 = sub_1000136BC(v8, v9, &v13);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Finished adding connection for context %{private,mask.hash}s.", v6, 0x16u);
    sub_100007BAC(v7);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

void sub_1007D7DC8()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  __chkstk_darwin(v2 - 8);
  if (*(v0 + 192))
  {
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177B368);
    v22 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v22, v4, "Location monitor already started - no-op.", v5, 2u);
    }
  }

  else
  {
    *(v0 + 200) = 1;
    v6 = objc_allocWithZone(type metadata accessor for CurrentLocationMonitor());
    v7 = CurrentLocationMonitor.init(mode:desiredAccuracy:)(0, *&kCLLocationAccuracyNearestTenMeters, 0);
    v8 = &v7[OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_delegate];
    swift_beginAccess();
    *(v8 + 1) = &off_101634928;
    swift_unknownObjectWeakAssign();
    CurrentLocationMonitor.startMonitor()();
    v9 = *(v1 + 192);
    *(v1 + 192) = v7;
    v10 = v7;

    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177B368);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Location monitor started.", v14, 2u);
    }

    v15 = OBJC_IVAR____TtC12searchpartyd22CurrentLocationMonitor_currentLocation;
    swift_beginAccess();
    v16 = *&v10[v15];
    if (v16)
    {
      type metadata accessor for WorkItemQueue.WorkItem();
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = v16;
      v19 = v16;
      v20 = v10;
      v21 = v19;

      UUID.init()();
      WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();

      dispatch thunk of WorkItemQueue.enqueue(_:)();
    }

    else
    {
    }
  }
}

uint64_t sub_1007D8184()
{
  v1[87] = v0;
  v2 = type metadata accessor for Date();
  v1[88] = v2;
  v1[89] = *(v2 - 8);
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v1[93] = type metadata accessor for LocationFetchConfiguration(0);
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();

  return _swift_task_switch(sub_1007D8298, v0, 0);
}

uint64_t sub_1007D8298()
{
  if (*(v0[87] + 144))
  {
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177B368);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Fetch task pending, not creating a new fetch task.", v4, 2u);
    }

    v5 = v0[1];

    return v5();
  }

  else
  {

    v7 = swift_task_alloc();
    v0[96] = v7;
    v8 = sub_1000BC4D4(&qword_1016AA598, &qword_1013BD1D0);
    *v7 = v0;
    v7[1] = sub_1007D84B4;
    v9 = v0[87];

    return unsafeBlocking<A>(context:_:)(v0 + 86, 0xD000000000000014, 0x80000001013BCEF0, sub_1007FFC98, v9, v8);
  }
}

uint64_t sub_1007D84B4()
{
  v1 = *(*v0 + 696);

  return _swift_task_switch(sub_1007D85CC, v1, 0);
}

uint64_t sub_1007D85CC()
{
  v83 = v0;
  v1 = *(v0 + 688);
  v72 = *(v1 + 16);
  if (v72)
  {
    v2 = *(v1 + 48);
    *(v0 + 112) = *(v1 + 32);
    *(v0 + 128) = v2;
    v3 = *(v1 + 64);
    v4 = *(v1 + 80);
    v5 = *(v1 + 96);
    *(v0 + 185) = *(v1 + 105);
    *(v0 + 160) = v4;
    *(v0 + 176) = v5;
    *(v0 + 144) = v3;
    sub_10000F4C8(v0 + 112, v0 + 208);
    if (qword_101694958 != -1)
    {
LABEL_48:
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    *(v0 + 776) = sub_1000076D4(v6, qword_10177B368);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Scheduling next fetch.", v9, 2u);
    }

    v74 = v1;
    v75 = (v0 + 304);
    v70 = v1 + 32;
    v73 = *(v0 + 744);

    v10 = *(v0 + 184);
    v68 = *(v0 + 192);
    v11 = *(v0 + 200);
    v12 = *(v0 + 176);
    v1 = *(v0 + 169);
    v13 = *(v0 + 168);
    v77 = *(v0 + 160);
    v78 = *(v0 + 152);
    v14 = *(v0 + 136);
    v15 = *(v0 + 144);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);
    v80 = *(v0 + 112);
    v18 = objc_opt_self();
    v19 = v10;
    v20 = v68;
    v69 = v18;
    v21 = 0;
    while (1)
    {
      *(v0 + 400) = v80;
      *(v0 + 408) = v16;
      *(v0 + 416) = v17;
      *(v0 + 424) = v14;
      *(v0 + 432) = v15;
      *(v0 + 440) = v78;
      *(v0 + 448) = v77;
      *(v0 + 456) = v13 & 1;
      *(v0 + 457) = v1 & 1;
      *(v0 + 464) = v12;
      *(v0 + 472) = v19;
      *(v0 + 480) = v20;
      *(v0 + 488) = v11 & 1;
      if (v21 >= *(v74 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v22 = (v70 + 96 * v21);
      v23 = v22[2];
      v24 = v22[3];
      v25 = v22[4];
      *(v0 + 377) = *(v22 + 73);
      *(v0 + 352) = v24;
      *(v0 + 368) = v25;
      *(v0 + 336) = v23;
      v26 = v22[1];
      *v75 = *v22;
      *(v0 + 320) = v26;
      v27 = *(v0 + 336);
      sub_10000F4C8(v75, v0 + 496);

      v29 = sub_10000954C(v28);

      v31 = sub_1003ADDE8(v30, v29);

      v33 = sub_10112A91C(v32);

      v79 = sub_1003AE094(v34, v33);

      sub_1004E2CD8(v0 + 400);
      v35 = sub_10112B120(v15);

      v82 = v35;
      v36 = *(v27 + 16);
      if (v36)
      {
        v37 = (v27 + 32);
        do
        {
          v38 = *v37++;
          sub_100DEFD70(&v81, v38);
          --v36;
        }

        while (v36);
        v35 = v82;
      }

      v39 = *(v0 + 760);
      v40 = *(v0 + 752);
      v41 = *(v0 + 304);
      v42 = v80;
      sub_101106664(v80, v39);
      v43 = *(v39 + *(v73 + 32));
      sub_10003627C(v39, type metadata accessor for LocationFetchConfiguration);
      sub_101106664(v41, v40);
      v44 = *(v40 + *(v73 + 32));
      sub_10003627C(v40, type metadata accessor for LocationFetchConfiguration);
      if (v44 < v43)
      {
        v42 = v41;
      }

      v80 = v42;
      v45 = *(v31 + 16);
      if (v45)
      {
        sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
        v46 = *(type metadata accessor for UUID() - 8);
        v47 = *(v46 + 72);
        v1 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v16 = swift_allocObject();
        v48 = j__malloc_size(v16);
        if (!v47)
        {
          goto LABEL_43;
        }

        if (v48 - v1 == 0x8000000000000000 && v47 == -1)
        {
          goto LABEL_47;
        }

        v16[2] = v45;
        v16[3] = 2 * ((v48 - v1) / v47);
        v1 = sub_1003A9D58(&v82, v16 + v1, v45, v31);
        sub_1000128F8(v82);
        if (v1 != v45)
        {
          goto LABEL_44;
        }

        v17 = _swiftEmptyArrayStorage;
      }

      else
      {

        v17 = _swiftEmptyArrayStorage;
        v16 = _swiftEmptyArrayStorage;
      }

      v50 = *(v79 + 16);
      if (v50)
      {
        sub_1000BC4D4(&unk_1016AA5B0, &unk_10138C200);
        v14 = swift_allocObject();
        v51 = j__malloc_size(v14);
        v52 = v51 - 32;
        if (v51 < 32)
        {
          v52 = v51 - 25;
        }

        v14[2] = v50;
        v14[3] = 2 * (v52 >> 3);
        v1 = sub_1003CC2D0();
        sub_1000128F8(v82);
        if (v1 != v50)
        {
          goto LABEL_45;
        }

        v53 = *(v35 + 16);
        if (!v53)
        {
LABEL_30:

          v15 = _swiftEmptyArrayStorage;
          goto LABEL_31;
        }
      }

      else
      {

        v14 = _swiftEmptyArrayStorage;
        v53 = *(v35 + 16);
        if (!v53)
        {
          goto LABEL_30;
        }
      }

      sub_1000BC4D4(&qword_1016AA5A8, &unk_1013BD208);
      v15 = swift_allocObject();
      v54 = j__malloc_size(v15);
      v15[2] = v53;
      v15[3] = 2 * v54 - 64;
      v1 = sub_1003CC2D4();
      sub_1000128F8(v82);
      if (v1 != v53)
      {
        goto LABEL_46;
      }

LABEL_31:
      v55 = [v69 mainBundle];
      v56 = [v55 bundleIdentifier];

      if (v56)
      {
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v58;
        v78 = v57;
      }

      else
      {
        v77 = 0;
        v78 = 0;
      }

      ++v21;
      v12 = *(v0 + 368);
      v1 = *(v0 + 361);
      v13 = *(v0 + 360);

      sub_1004E2CD8(v75);
      if (v21 == v72)
      {
        v59 = *(v0 + 760);
        v71 = *(v0 + 728);
        v60 = *(v0 + 712);
        v76 = *(v0 + 704);

        *(v0 + 592) = v80;
        *(v0 + 600) = v16;
        *(v0 + 608) = _swiftEmptyArrayStorage;
        *(v0 + 616) = v14;
        *(v0 + 624) = v15;
        *(v0 + 632) = v78;
        *(v0 + 640) = v77;
        *(v0 + 648) = v13;
        *(v0 + 649) = v1;
        *(v0 + 656) = v12;
        *(v0 + 664) = 0u;
        *(v0 + 680) = 1;
        v61 = *(v0 + 640);
        *(v0 + 48) = *(v0 + 624);
        *(v0 + 64) = v61;
        *(v0 + 80) = *(v0 + 656);
        *(v0 + 89) = *(v0 + 665);
        v62 = *(v0 + 608);
        *(v0 + 16) = *(v0 + 592);
        *(v0 + 32) = v62;
        static Date.trustedNow.getter(v71);
        sub_101106664(v80, v59);
        sub_10003627C(v59, type metadata accessor for LocationFetchConfiguration);
        Date.addingTimeInterval(_:)();
        v63 = *(v60 + 8);
        *(v0 + 784) = v63;
        *(v0 + 792) = (v60 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v63(v71, v76);
        v64 = swift_task_alloc();
        *(v0 + 800) = v64;
        *v64 = v0;
        v64[1] = sub_1007D8DE4;
        v65 = *(v0 + 736);

        return sub_1007D908C(v65, v0 + 16);
      }

      v19 = 0;
      v20 = 0;
      v11 = 1;
    }
  }

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_1007D8DE4()
{
  v1 = *v0;
  v2 = *(*v0 + 696);

  sub_1004E2CD8(v1 + 592);

  return _swift_task_switch(sub_1007D8EFC, v2, 0);
}

uint64_t sub_1007D8EFC()
{
  (*(v0[89] + 16))(v0[90], v0[92], v0[88]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[98];
  v5 = v0[90];
  v6 = v0[88];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    Date.timeIntervalSinceNow.getter();
    v9 = v8;
    v4(v5, v6);
    *(v7 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Next fetch scheduled in %f seconds.", v7, 0xCu);
  }

  else
  {

    v4(v5, v6);
  }

  (v0[98])(v0[92], v0[88]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1007D908C(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  type metadata accessor for UUID();
  v3[17] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[18] = v4;
  v5 = *(v4 - 8);
  v3[19] = v5;
  v3[20] = *(v5 + 64);
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_1007D9184, v2, 0);
}

uint64_t sub_1007D9184()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[16];
  v7 = v0[14];
  v6 = v0[15];
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v4 + 16))(v1, v7, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v8, v1, v3);
  *(v10 + v9) = v5;
  v11 = (v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = v6[1];
  *v11 = *v6;
  v11[1] = v12;
  v14 = v6[3];
  v13 = v6[4];
  v15 = v6[2];
  *(v11 + 73) = *(v6 + 73);
  v11[3] = v14;
  v11[4] = v13;
  v11[2] = v15;

  sub_10000F4C8(v6, (v0 + 2));
  UUID.init()();
  v16 = WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  v0[22] = v16;
  v17 = *(v5 + 144);
  v0[23] = v17;
  if (v17)
  {
    v21 = (&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel());

    v18 = swift_task_alloc();
    v0[24] = v18;
    *v18 = v0;
    v18[1] = sub_1007D93EC;

    return v21();
  }

  else
  {
    *(v0[16] + 144) = v16;

    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1007D93EC()
{
  v1 = *(*v0 + 128);

  return _swift_task_switch(sub_1007D9518, v1, 0);
}

uint64_t sub_1007D9518()
{
  *(v0[16] + 144) = v0[22];

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1007D95C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  type metadata accessor for UUID();
  v4[18] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_1007D96B4, 0, 0);
}

uint64_t sub_1007D96B4(uint64_t a1)
{
  Date.timeIntervalSinceNow.getter();
  v2 = static Duration.milliseconds(_:)();
  v4 = v3;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v1 + 176) = v5;
  *v5 = v1;
  v5[1] = sub_1007D97A8;

  return sub_100D24214(v2, v4, 0, 0, 1);
}

uint64_t sub_1007D97A8()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  *(*v1 + 184) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1007D9B3C;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    *(v2 + 192) = type metadata accessor for WorkItemQueue.WorkItem();
    sub_1000194F8(&qword_1016AA5A0, &type metadata accessor for WorkItemQueue.WorkItem, &protocol conformance descriptor for WorkItemQueue.WorkItem);
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
    v6 = sub_1007D9988;
    v7 = v9;
    v8 = v11;
  }

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1007D9988()
{
  *(v0 + 105) = dispatch thunk of WorkItemQueue.WorkItem.isCancelled.getter() & 1;

  return _swift_task_switch(sub_1007D99F8, 0, 0);
}

uint64_t sub_1007D99F8()
{
  if ((*(v0 + 105) & 1) == 0)
  {
    v1 = *(v0 + 136);
    v2 = *(v0 + 128);
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = v1[1];
    *(v3 + 24) = *v1;
    *(v3 + 40) = v4;
    v6 = v1[3];
    v5 = v1[4];
    v7 = *(v1 + 73);
    *(v3 + 56) = v1[2];
    *(v3 + 97) = v7;
    *(v3 + 88) = v5;
    *(v3 + 72) = v6;

    sub_10000F4C8(v1, v0 + 16);
    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1007D9B3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007D9BAC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10003633C;

  return sub_1007D9C48(a2);
}

uint64_t sub_1007D9C48(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1007D9CD8;

  return sub_1007E4460();
}

uint64_t sub_1007D9CD8(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_1007D9DF0, v2, 0);
}

uint64_t sub_1007D9DF0()
{
  if (*(v0 + 120) == 1)
  {
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177B368);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Location fetch service running fetch task - fetching locations.", v4, 2u);
    }

    sub_1007D7DC8();
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *v5 = v0;
    v5[1] = sub_1007DA084;

    return sub_1007E5468();
  }

  else
  {
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177B368);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Location fetch service fetch task running while all clients suspended - not fetching locations.", v10, 2u);
    }

    sub_1007E434C();
    sub_1007E915C();
    *(*(v0 + 24) + 144) = 0;

    v11 = swift_task_alloc();
    *(v0 + 112) = v11;
    *v11 = v0;
    v11[1] = sub_1007DAAB8;

    return sub_1007D8184();
  }
}

uint64_t sub_1007DA084()
{
  v1 = *v0;
  v4 = *v0;

  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v4;
  v2[1] = sub_1007DA1B0;

  return daemon.getter();
}

uint64_t sub_1007DA1B0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1007DA38C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1007DA38C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    a1 = *(v4 + 24);

    v5 = sub_1007FFC80;
  }

  else
  {

    *(v4 + 72) = a1;
    v5 = sub_1007DA4E4;
  }

  return _swift_task_switch(v5, a1, 0);
}

uint64_t sub_1007DA4E4()
{

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1007DA5BC;
  v2 = *(v0 + 72);

  return unsafeBlocking<A>(context:_:)(v1, 0xD000000000000010, 0x800000010134A8C0, sub_1007FF8A4, v2, &type metadata for () + 1);
}

uint64_t sub_1007DA5BC()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_1007DA6D4, v1, 0);
}

uint64_t sub_1007DA6D4()
{
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_1007DA740, v1, 0);
}

uint64_t sub_1007DA740()
{
  v1 = v0[3];
  v2 = v1[14];
  v0[11] = v2;
  if (v2)
  {
    v0[12] = v1[15];

    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_1007DA8CC;
    v4 = v0[2];

    return v7(v4);
  }

  else
  {
    v1[18] = 0;

    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_1007DAAB8;

    return sub_1007D8184();
  }
}

uint64_t sub_1007DA8CC()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 24);

  sub_1000BB27C(v2, v1);

  return _swift_task_switch(sub_1007DAA18, v3, 0);
}

uint64_t sub_1007DAA18()
{
  *(*(v0 + 24) + 144) = 0;

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1007DAAB8;

  return sub_1007D8184();
}

uint64_t sub_1007DAAB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1007DABAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for BeaconEstimatedLocation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_10001F280(a2, v12);
    sub_1007FF3E4(a1, v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeaconEstimatedLocation);
    v10 = (*(v6 + 80) + 64) & ~*(v6 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    sub_10000A748(v12, v11 + 24);
    sub_100035B84(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for BeaconEstimatedLocation);

    unsafeFromAsyncTask<A>(_:)();
  }

  return result;
}

uint64_t sub_1007DAD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[83] = a4;
  v4[82] = a3;
  v4[81] = a2;
  sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v4[84] = swift_task_alloc();
  sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v4[85] = swift_task_alloc();
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v4[86] = v6;
  v4[87] = *(v6 - 8);
  v4[88] = swift_task_alloc();
  v7 = sub_1000BC4D4(&unk_1016AA458, &unk_1013BD028);
  v4[89] = v7;
  v4[90] = *(v7 - 8);
  v4[91] = swift_task_alloc();
  v8 = type metadata accessor for BeaconEstimatedLocation(0);
  v4[92] = v8;
  v4[93] = *(v8 - 8);
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();
  v4[96] = swift_task_alloc();
  v4[97] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4[98] = swift_task_alloc();
  v4[99] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v4[100] = v9;
  v10 = *(v9 - 8);
  v4[101] = v10;
  v4[102] = *(v10 + 64);
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v4[106] = swift_task_alloc();
  v4[107] = swift_task_alloc();
  v4[108] = swift_task_alloc();
  v4[109] = swift_task_alloc();
  v4[110] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v4[111] = v11;
  v4[112] = *(v11 - 8);
  v4[113] = swift_task_alloc();

  return _swift_task_switch(sub_1007DB0BC, a2, 0);
}

uint64_t sub_1007DB0E4()
{
  v20 = v0;
  if (*(v0 + 1300) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 912) = v1;
    *v1 = v0;
    v1[1] = sub_1007DB4C4;

    return daemon.getter();
  }

  else
  {
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 656);
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177B368);
    sub_10001F280(v2, v0 + 88);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 872);
      v7 = *(v0 + 808);
      v8 = *(v0 + 800);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      v12 = *(v0 + 112);
      v11 = *(v0 + 120);
      sub_1000035D0((v0 + 88), v12);
      (*(*(*(v11 + 8) + 8) + 32))(v12);
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      (*(v7 + 8))(v6, v8);
      sub_100007BAC((v0 + 88));
      v16 = sub_1000136BC(v13, v15, &v19);

      *(v9 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v4, v5, "Ignoring beacon location updates while not processing - beacon: %{private,mask.hash}s.", v9, 0x16u);
      sub_100007BAC(v10);
    }

    else
    {

      sub_100007BAC((v0 + 88));
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1007DB4C4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[115] = a1;

  v3 = swift_task_alloc();
  v2[116] = v3;
  v4 = type metadata accessor for Daemon();
  v2[117] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v2[118] = v5;
  v6 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[119] = v6;
  v7 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  v2[120] = v7;
  *v3 = v9;
  v3[1] = sub_1007DB6B8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1007DB6B8(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1007DC770;
    v6 = 0;
  }

  else
  {

    *(v4 + 968) = a1;
    v5 = sub_1007DB818;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1007DB818()
{
  v1 = *(v0 + 968);
  sub_10001F280(*(v0 + 656), v0 + 168);
  v2 = swift_allocObject();
  *(v0 + 976) = v2;
  *(v2 + 16) = v1;
  sub_10000A748((v0 + 168), v2 + 24);

  v3 = swift_task_alloc();
  *(v0 + 984) = v3;
  *v3 = v0;
  v3[1] = sub_1007DB938;

  return unsafeBlocking<A>(context:_:)(v0 + 608, 0xD000000000000010, 0x800000010134A8C0, sub_1004E3304, v2, &type metadata for Double);
}

uint64_t sub_1007DB938()
{
  v1 = *(*v0 + 968);

  return _swift_task_switch(sub_1007DBA64, v1, 0);
}

uint64_t sub_1007DBA64()
{

  *(v0 + 992) = *(v0 + 608);

  return _swift_task_switch(sub_1007DBAD4, 0, 0);
}

uint64_t sub_1007DBAD4()
{
  v108 = v0;
  v1 = *(v0 + 992);
  v2 = *(v0 + 736);
  v3 = *(v0 + 664);
  v4 = *(v0 + 656);
  sub_1000BC4D4(&qword_1016AA468, &qword_1013BD038);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 56) = v2;
  *(inited + 64) = &off_10161A418;
  v6 = sub_1000280DC((inited + 32));
  sub_1007FF3E4(v3, v6, type metadata accessor for BeaconEstimatedLocation);
  v7 = v4[3];
  v8 = v4[4];
  sub_1000035D0(v4, v7);
  v9 = sub_1010C96DC(v7, v8);
  v10 = sub_1010CBA6C(inited, v9, v1);
  *(v0 + 1000) = v10;
  swift_setDeallocating();
  sub_100007BAC((inited + 32));
  if (!v10)
  {
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 656);
    v48 = type metadata accessor for Logger();
    sub_1000076D4(v48, qword_10177B368);
    sub_10001F280(v47, v0 + 128);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = *(v0 + 872);
      v52 = *(v0 + 808);
      v53 = *(v0 + 800);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v107 = v55;
      *v54 = 141558275;
      *(v54 + 4) = 1752392040;
      *(v54 + 12) = 2081;
      v57 = *(v0 + 152);
      v56 = *(v0 + 160);
      sub_1000035D0((v0 + 128), v57);
      (*(*(*(v56 + 8) + 8) + 32))(v57);
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      (*(v52 + 8))(v51, v53);
      sub_100007BAC((v0 + 128));
      v61 = sub_1000136BC(v58, v60, &v107);

      *(v54 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v49, v50, "Could not produce filtered location for beacon %{private,mask.hash}s.", v54, 0x16u);
      sub_100007BAC(v55);
    }

    else
    {

      sub_100007BAC((v0 + 128));
    }

    goto LABEL_26;
  }

  v11 = *(v0 + 904);
  v12 = *(v0 + 896);
  v13 = *(v0 + 808);
  v105 = *(v0 + 888);
  v106 = *(v0 + 800);
  v14 = *(v0 + 792);
  v15 = *(v0 + 736);
  v16 = *(v0 + 664);
  v104 = *(v0 + 656);
  v17 = [v10 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  [v10 coordinate];
  v19 = v18;
  [v10 coordinate];
  v21 = v20;
  [v10 horizontalAccuracy];
  v23 = v22;
  v24 = *(v16 + *(v15 + 44));
  *(v0 + 1301) = v24;
  v25 = sub_1010CBDEC(v24);
  v26 = objc_allocWithZone(SPBeaconLocation);
  v27 = v25;
  isa = Date._bridgeToObjectiveC()().super.isa;
  *(v0 + 1008) = [v26 initWithTimestamp:isa latitude:v27 longitude:v19 horizontalAccuracy:v21 source:v23];

  (*(v12 + 8))(v11, v105);
  v30 = v4[3];
  v29 = v4[4];
  sub_1000035D0(v104, v30);
  (*(v29 + 200))(v30, v29);
  v31 = *(v13 + 48);
  *(v0 + 1016) = v31;
  *(v0 + 1024) = (v13 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v31(v14, 1, v106) == 1)
  {
    sub_10000B3A8(*(v0 + 792), &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 656);
    v33 = type metadata accessor for Logger();
    sub_1000076D4(v33, qword_10177B368);
    sub_10001F280(v32, v0 + 208);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 872);
      v37 = *(v0 + 808);
      v38 = *(v0 + 800);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v107 = v40;
      *v39 = 141558275;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      v42 = *(v0 + 232);
      v41 = *(v0 + 240);
      sub_1000035D0((v0 + 208), v42);
      (*(*(*(v41 + 8) + 8) + 32))(v42);
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      (*(v37 + 8))(v36, v38);
      sub_100007BAC((v0 + 208));
      v46 = sub_1000136BC(v43, v45, &v107);

      *(v39 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "Updating location for subscribers - from beacon store update for beacon %{private,mask.hash}s.", v39, 0x16u);
      sub_100007BAC(v40);
    }

    else
    {

      sub_100007BAC((v0 + 208));
    }

    v68 = *(v0 + 808);
    v69 = *(v0 + 696);
    sub_10001F280(*(v0 + 656), v0 + 248);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v70 = swift_dynamicCast();
    v71 = *(v69 + 56);
    if ((v70 & 1) == 0)
    {
      v82 = *(v0 + 680);
      v83 = *(v0 + 656);
      v71(v82, 1, 1, *(v0 + 688));
      sub_10000B3A8(v82, &unk_101698C30, &unk_101392630);
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_101385D80;
      v85 = v83[3];
      v86 = v83[4];
      sub_1000035D0(v83, v85);
      (*(*(*(v86 + 8) + 8) + 32))(v85);
      *(v0 + 616) = v84;
      AsyncStreamProvider.yield(value:transaction:)();

LABEL_25:
      v95 = *(v0 + 1008);
      v96 = *(v0 + 1301);
      v97 = *(v0 + 1000);
      v98 = *(v0 + 656);
      v99 = *(*(v0 + 648) + 160);
      type metadata accessor for Transaction();
      sub_10001F280(v98, v0 + 288);
      v100 = swift_allocObject();
      sub_10000A748((v0 + 288), v100 + 16);
      *(v100 + 56) = v99;
      *(v100 + 64) = v95;
      *(v100 + 72) = v96;
      v101 = v95;

      static Transaction.asyncTask(name:block:)();

LABEL_26:

      v102 = *(v0 + 8);

      return v102();
    }

    v72 = *(v0 + 704);
    v73 = *(v0 + 688);
    v74 = *(v0 + 680);
    v75 = *(v0 + 672);
    v71(v74, 0, 1, v73);
    sub_100035B84(v74, v72, type metadata accessor for SharedBeaconRecord);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v76 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_101385D80;
    sub_1000D2A70(v72 + *(v73 + 80), v75, &unk_1016AF890, &qword_1013926D0);
    v78 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v78 - 8) + 48))(v75, 1, v78) == 1)
    {
      v79 = *(v0 + 808);
      v80 = *(v0 + 800);
      v81 = *(v0 + 784);
      sub_10000B3A8(*(v0 + 672), &unk_1016AF890, &qword_1013926D0);
      (*(v79 + 56))(v81, 1, 1, v80);
    }

    else
    {
      v87 = *(v0 + 1016);
      v88 = *(v0 + 800);
      v89 = *(v0 + 784);
      v90 = *(v0 + 672);
      sub_1000D2A70(v90 + *(v78 + 20), v89, &qword_1016980D0, &unk_10138F3B0);
      sub_10003627C(v90, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      if (v87(v89, 1, v88) != 1)
      {
        (*(*(v0 + 808) + 32))(v77 + v76, *(v0 + 784), *(v0 + 800));
LABEL_24:
        v94 = *(v0 + 704);
        *(v0 + 624) = v77;
        AsyncStreamProvider.yield(value:transaction:)();

        sub_10003627C(v94, type metadata accessor for SharedBeaconRecord);
        goto LABEL_25;
      }
    }

    v91 = *(v0 + 1016);
    v92 = *(v0 + 800);
    v93 = *(v0 + 784);
    (*(*(v0 + 808) + 16))(v77 + v76, *(v0 + 704) + *(*(v0 + 688) + 20), v92);
    if (v91(v93, 1, v92) != 1)
    {
      sub_10000B3A8(*(v0 + 784), &qword_1016980D0, &unk_10138F3B0);
    }

    goto LABEL_24;
  }

  v62 = *(v0 + 880);
  v63 = *(v0 + 808);
  v64 = *(v0 + 800);
  v65 = *(v0 + 792);
  v66 = *(v63 + 32);
  *(v0 + 1032) = v66;
  *(v0 + 1040) = (v63 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v66(v62, v65, v64);
  v67 = swift_task_alloc();
  *(v0 + 1048) = v67;
  *v67 = v0;
  v67[1] = sub_1007DCACC;

  return daemon.getter();
}

uint64_t sub_1007DC770()
{
  v19 = v0;
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = v0[82];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B368);
  sub_10001F280(v1, (v0 + 16));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[109];
    v6 = v0[101];
    v7 = v0[100];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v11 = v0[19];
    v10 = v0[20];
    sub_1000035D0(v0 + 16, v11);
    (*(*(*(v10 + 8) + 8) + 32))(v11);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v6 + 8))(v5, v7);
    sub_100007BAC(v0 + 16);
    v15 = sub_1000136BC(v12, v14, &v18);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not produce filtered location for beacon %{private,mask.hash}s.", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100007BAC(v0 + 16);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1007DCACC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[132] = a1;

  v4 = swift_task_alloc();
  v2[133] = v4;
  *v4 = v3;
  v4[1] = sub_1007DCC58;
  v5 = v2[120];
  v6 = v2[119];
  v7 = v2[118];
  v8 = v2[117];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_1007DCC58(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1007DE010;
    v6 = 0;
  }

  else
  {

    *(v4 + 1072) = a1;
    v5 = sub_1007DCDB8;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1007DCDB8()
{
  v1 = *(v0 + 1072);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 880);
  v4 = *(v0 + 872);
  v5 = *(v0 + 808);
  v6 = *(v0 + 800);
  v7 = *(v5 + 16);
  v5 += 16;
  *(v0 + 1080) = v7;
  *(v0 + 1088) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v4, v3, v6);
  v8 = *(v5 + 64);
  *(v0 + 1296) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 1096) = v10;
  *(v10 + 16) = v1;
  v2(v10 + v9, v4, v6);

  v11 = swift_task_alloc();
  *(v0 + 1104) = v11;
  v12 = sub_1000BC4D4(&unk_1016AA480, &unk_1013BD050);
  *v11 = v0;
  v11[1] = sub_1007DCF48;

  return unsafeBlocking<A>(context:_:)(v0 + 368, 0xD000000000000010, 0x800000010134A8C0, sub_1007FED88, v10, v12);
}

uint64_t sub_1007DCF48()
{

  return _swift_task_switch(sub_1007DD07C, 0, 0);
}

uint64_t sub_1007DD07C()
{
  v127 = v0;
  if (*(v0 + 392))
  {
    sub_10000A748((v0 + 368), v0 + 328);
    v1 = *(v0 + 352);
    v2 = *(v0 + 360);
    sub_1000035D0((v0 + 328), v1);
    v3 = (*(v2 + 16))(v1, v2);
    *(v0 + 1112) = v3;
    v4 = *(v3 + 32);
    *(v0 + 1302) = v4;
    v5 = -1;
    v6 = -1 << v4;
    v7 = *(v3 + 56);
    if (-v6 < 64)
    {
      v5 = ~(-1 << -v6);
    }

    *(v0 + 1303) = 0;
    v8 = v5 & v7;
    if (v8)
    {
      v9 = 0;
LABEL_14:
      *(v0 + 1128) = v9;
      *(v0 + 1120) = v8;
      v27 = *(v0 + 1032);
      v28 = *(v0 + 864);
      v29 = *(v0 + 856);
      v30 = *(v0 + 800);
      (*(v0 + 1080))(v28, *(v3 + 48) + *(*(v0 + 808) + 72) * (__clz(__rbit64(v8)) | (v9 << 6)), v30);
      v27(v29, v28, v30);
      v31 = swift_task_alloc();
      *(v0 + 1136) = v31;
      *v31 = v0;
      v32 = sub_1007DE7F4;
      goto LABEL_15;
    }

    v25 = 0;
    v26 = ((63 - v6) >> 6) - 1;
    while (v26 != v25)
    {
      v9 = v25 + 1;
      v8 = *(v3 + 8 * v25++ + 64);
      if (v8)
      {
        goto LABEL_14;
      }
    }

    if (*(v0 + 1303))
    {
      v52 = *(v0 + 352);
      v53 = *(v0 + 360);
      sub_1000035D0((v0 + 328), v52);
      v54 = (*(v53 + 16))(v52, v53);
      *(v0 + 1192) = v54;
      v55 = *(v54 + 32);
      *(v0 + 1304) = v55;
      v56 = -1;
      v57 = -1 << v55;
      v58 = *(v54 + 56);
      if (-v57 < 64)
      {
        v56 = ~(-1 << -v57);
      }

      *(v0 + 1200) = _swiftEmptyArrayStorage;
      v59 = v56 & v58;
      if (v59)
      {
        v60 = 0;
LABEL_40:
        *(v0 + 1216) = v60;
        *(v0 + 1208) = v59;
        v79 = *(v0 + 1032);
        v80 = *(v0 + 848);
        v81 = *(v0 + 840);
        v82 = *(v0 + 800);
        (*(v0 + 1080))(v80, *(v54 + 48) + *(*(v0 + 808) + 72) * (__clz(__rbit64(v59)) | (v60 << 6)), v82);
        v79(v81, v80, v82);
        v31 = swift_task_alloc();
        *(v0 + 1224) = v31;
        *v31 = v0;
        v32 = sub_1007E0E24;
LABEL_15:
        v31[1] = v32;

        return daemon.getter();
      }

      v77 = 0;
      v78 = ((63 - v57) >> 6) - 1;
      while (v78 != v77)
      {
        v60 = v77 + 1;
        v59 = *(v54 + 8 * v77++ + 64);
        if (v59)
        {
          goto LABEL_40;
        }
      }

      if (qword_101694958 != -1)
      {
        swift_once();
      }

      v83 = *(v0 + 1080);
      v84 = *(v0 + 880);
      v85 = *(v0 + 824);
      v86 = *(v0 + 800);
      v87 = *(v0 + 656);
      v88 = type metadata accessor for Logger();
      sub_1000076D4(v88, qword_10177B368);
      v83(v85, v84, v86);
      sub_10001F280(v87, v0 + 488);
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v89, v90))
      {
        v124 = *(v0 + 872);
        v125 = v90;
        v91 = *(v0 + 824);
        v92 = *(v0 + 808);
        v93 = *(v0 + 800);
        v94 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        *v94 = 141558787;
        *(v94 + 4) = 1752392040;
        *(v94 + 12) = 2081;
        sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v95 = dispatch thunk of CustomStringConvertible.description.getter();
        v97 = v96;
        v98 = *(v92 + 8);
        v98(v91, v93);
        v99 = sub_1000136BC(v95, v97, &v126);

        *(v94 + 14) = v99;
        *(v94 + 22) = 2160;
        *(v94 + 24) = 1752392040;
        *(v94 + 32) = 2081;
        v100 = *(v0 + 512);
        v101 = *(v0 + 520);
        sub_1000035D0((v0 + 488), v100);
        (*(*(*(v101 + 8) + 8) + 32))(v100);
        v102 = dispatch thunk of CustomStringConvertible.description.getter();
        v104 = v103;
        v98(v124, v93);
        sub_100007BAC((v0 + 488));
        v105 = sub_1000136BC(v102, v104, &v126);

        *(v94 + 34) = v105;
        _os_log_impl(&_mh_execute_header, v89, v125, "Updating location for subscribers - from beacon store update for beacongroup: %{private,mask.hash}s, beacon: %{private,mask.hash}s.", v94, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {
        v106 = *(v0 + 824);
        v107 = *(v0 + 808);
        v108 = *(v0 + 800);

        v98 = *(v107 + 8);
        v98(v106, v108);
        sub_100007BAC((v0 + 488));
      }

      *(v0 + 1272) = v98;
      v109 = *(v0 + 352);
      v110 = *(v0 + 360);
      sub_1000035D0((v0 + 328), v109);
      v111 = (*(v110 + 16))(v109, v110);
      v112 = v111;
      v113 = *(v111 + 16);
      if (v113)
      {
        v114 = *(v0 + 1296);
        v115 = sub_1003A85FC(*(v111 + 16), 0);
        v116 = sub_1003A9D58(&v126, &v115[(v114 + 32) & ~v114], v113, v112);
        sub_1000128F8(v126);
        if (v116 == v113)
        {
LABEL_50:
          v117 = *(v0 + 1008);
          v118 = *(v0 + 656);
          v119 = *(v0 + 648);
          *(v0 + 632) = v115;
          AsyncStreamProvider.yield(value:transaction:)();

          sub_10001F280(v0 + 328, v0 + 528);
          sub_10001F280(v118, v0 + 568);
          v120 = swift_allocObject();
          *(v0 + 1280) = v120;
          v120[2] = v119;
          v120[3] = _swiftEmptyArrayStorage;
          sub_10000A748((v0 + 528), (v120 + 4));
          sub_10000A748((v0 + 568), (v120 + 9));
          v120[14] = v117;
          v121 = v117;

          v122 = swift_task_alloc();
          *(v0 + 1288) = v122;
          *v122 = v0;
          v122[1] = sub_1007E2220;

          return unsafeBlocking<A>(context:_:)(v122, 0xD000000000000014, 0x80000001013BCEF0, sub_1007FEE40, v120, &type metadata for () + 1);
        }

        __break(1u);
      }

      v115 = _swiftEmptyArrayStorage;
      goto LABEL_50;
    }

    (*(*(v0 + 808) + 8))(*(v0 + 880), *(v0 + 800));
    sub_100007BAC((v0 + 328));
  }

  else
  {
    (*(*(v0 + 808) + 8))(*(v0 + 880), *(v0 + 800));
    sub_10000B3A8(v0 + 368, &unk_1016AA480, &unk_1013BD050);
  }

  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 656);
  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177B368);
  sub_10001F280(v10, v0 + 208);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 872);
    v15 = *(v0 + 808);
    v16 = *(v0 + 800);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v126 = v18;
    *v17 = 141558275;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    v20 = *(v0 + 232);
    v19 = *(v0 + 240);
    sub_1000035D0((v0 + 208), v20);
    (*(*(*(v19 + 8) + 8) + 32))(v20);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v15 + 8))(v14, v16);
    sub_100007BAC((v0 + 208));
    v24 = sub_1000136BC(v21, v23, &v126);

    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v12, v13, "Updating location for subscribers - from beacon store update for beacon %{private,mask.hash}s.", v17, 0x16u);
    sub_100007BAC(v18);
  }

  else
  {

    sub_100007BAC((v0 + 208));
  }

  v33 = *(v0 + 808);
  v34 = *(v0 + 696);
  sub_10001F280(*(v0 + 656), v0 + 248);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v35 = swift_dynamicCast();
  v36 = *(v34 + 56);
  if (v35)
  {
    v37 = *(v0 + 704);
    v38 = *(v0 + 688);
    v39 = *(v0 + 680);
    v40 = *(v0 + 672);
    v36(v39, 0, 1, v38);
    sub_100035B84(v39, v37, type metadata accessor for SharedBeaconRecord);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v41 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_101385D80;
    sub_1000D2A70(v37 + *(v38 + 80), v40, &unk_1016AF890, &qword_1013926D0);
    v43 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v43 - 8) + 48))(v40, 1, v43) == 1)
    {
      v44 = *(v0 + 808);
      v45 = *(v0 + 800);
      v46 = *(v0 + 784);
      sub_10000B3A8(*(v0 + 672), &unk_1016AF890, &qword_1013926D0);
      (*(v44 + 56))(v46, 1, 1, v45);
    }

    else
    {
      v61 = *(v0 + 1016);
      v62 = *(v0 + 800);
      v63 = *(v0 + 784);
      v64 = *(v0 + 672);
      sub_1000D2A70(v64 + *(v43 + 20), v63, &qword_1016980D0, &unk_10138F3B0);
      sub_10003627C(v64, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      if (v61(v63, 1, v62) != 1)
      {
        (*(*(v0 + 808) + 32))(v42 + v41, *(v0 + 784), *(v0 + 800));
LABEL_33:
        v68 = *(v0 + 704);
        *(v0 + 624) = v42;
        AsyncStreamProvider.yield(value:transaction:)();

        sub_10003627C(v68, type metadata accessor for SharedBeaconRecord);
        goto LABEL_34;
      }
    }

    v65 = *(v0 + 1016);
    v66 = *(v0 + 800);
    v67 = *(v0 + 784);
    (*(*(v0 + 808) + 16))(v42 + v41, *(v0 + 704) + *(*(v0 + 688) + 20), v66);
    if (v65(v67, 1, v66) != 1)
    {
      sub_10000B3A8(*(v0 + 784), &qword_1016980D0, &unk_10138F3B0);
    }

    goto LABEL_33;
  }

  v47 = *(v0 + 680);
  v48 = *(v0 + 656);
  v36(v47, 1, 1, *(v0 + 688));
  sub_10000B3A8(v47, &unk_101698C30, &unk_101392630);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_101385D80;
  v50 = v48[3];
  v51 = v48[4];
  sub_1000035D0(v48, v50);
  (*(*(*(v51 + 8) + 8) + 32))(v50);
  *(v0 + 616) = v49;
  AsyncStreamProvider.yield(value:transaction:)();

LABEL_34:
  v69 = *(v0 + 1008);
  v70 = *(v0 + 1301);
  v71 = *(v0 + 1000);
  v72 = *(v0 + 656);
  v73 = *(*(v0 + 648) + 160);
  type metadata accessor for Transaction();
  sub_10001F280(v72, v0 + 288);
  v74 = swift_allocObject();
  sub_10000A748((v0 + 288), v74 + 16);
  *(v74 + 56) = v73;
  *(v74 + 64) = v69;
  *(v74 + 72) = v70;
  v75 = v69;

  static Transaction.asyncTask(name:block:)();

  v76 = *(v0 + 8);

  return v76();
}

uint64_t sub_1007DE010()
{
  v53 = v0;
  (*(*(v0 + 808) + 8))(*(v0 + 880), *(v0 + 800));
  *(v0 + 400) = 0;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  sub_10000B3A8(v0 + 368, &unk_1016AA480, &unk_1013BD050);
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 656);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B368);
  sub_10001F280(v1, v0 + 208);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 872);
    v6 = *(v0 + 808);
    v7 = *(v0 + 800);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v52 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v11 = *(v0 + 232);
    v10 = *(v0 + 240);
    sub_1000035D0((v0 + 208), v11);
    (*(*(*(v10 + 8) + 8) + 32))(v11);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v6 + 8))(v5, v7);
    sub_100007BAC((v0 + 208));
    v15 = sub_1000136BC(v12, v14, &v52);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Updating location for subscribers - from beacon store update for beacon %{private,mask.hash}s.", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100007BAC((v0 + 208));
  }

  v16 = *(v0 + 808);
  v17 = *(v0 + 696);
  sub_10001F280(*(v0 + 656), v0 + 248);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v18 = swift_dynamicCast();
  v19 = *(v17 + 56);
  if ((v18 & 1) == 0)
  {
    v30 = *(v0 + 680);
    v31 = *(v0 + 656);
    v19(v30, 1, 1, *(v0 + 688));
    sub_10000B3A8(v30, &unk_101698C30, &unk_101392630);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_101385D80;
    v33 = v31[3];
    v34 = v31[4];
    sub_1000035D0(v31, v33);
    (*(*(*(v34 + 8) + 8) + 32))(v33);
    *(v0 + 616) = v32;
    AsyncStreamProvider.yield(value:transaction:)();

    goto LABEL_15;
  }

  v20 = *(v0 + 704);
  v21 = *(v0 + 688);
  v22 = *(v0 + 680);
  v23 = *(v0 + 672);
  v19(v22, 0, 1, v21);
  sub_100035B84(v22, v20, type metadata accessor for SharedBeaconRecord);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v24 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_101385D80;
  sub_1000D2A70(v20 + *(v21 + 80), v23, &unk_1016AF890, &qword_1013926D0);
  v26 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if ((*(*(v26 - 8) + 48))(v23, 1, v26) == 1)
  {
    v27 = *(v0 + 808);
    v28 = *(v0 + 800);
    v29 = *(v0 + 784);
    sub_10000B3A8(*(v0 + 672), &unk_1016AF890, &qword_1013926D0);
    (*(v27 + 56))(v29, 1, 1, v28);
    goto LABEL_11;
  }

  v35 = *(v0 + 1016);
  v36 = *(v0 + 800);
  v37 = *(v0 + 784);
  v38 = *(v0 + 672);
  sub_1000D2A70(v38 + *(v26 + 20), v37, &qword_1016980D0, &unk_10138F3B0);
  sub_10003627C(v38, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  if (v35(v37, 1, v36) == 1)
  {
LABEL_11:
    v39 = *(v0 + 1016);
    v40 = *(v0 + 800);
    v41 = *(v0 + 784);
    (*(*(v0 + 808) + 16))(v25 + v24, *(v0 + 704) + *(*(v0 + 688) + 20), v40);
    if (v39(v41, 1, v40) != 1)
    {
      sub_10000B3A8(*(v0 + 784), &qword_1016980D0, &unk_10138F3B0);
    }

    goto LABEL_14;
  }

  (*(*(v0 + 808) + 32))(v25 + v24, *(v0 + 784), *(v0 + 800));
LABEL_14:
  v42 = *(v0 + 704);
  *(v0 + 624) = v25;
  AsyncStreamProvider.yield(value:transaction:)();

  sub_10003627C(v42, type metadata accessor for SharedBeaconRecord);
LABEL_15:
  v43 = *(v0 + 1008);
  v44 = *(v0 + 1301);
  v45 = *(v0 + 1000);
  v46 = *(v0 + 656);
  v47 = *(*(v0 + 648) + 160);
  type metadata accessor for Transaction();
  sub_10001F280(v46, v0 + 288);
  v48 = swift_allocObject();
  sub_10000A748((v0 + 288), v48 + 16);
  *(v48 + 56) = v47;
  *(v48 + 64) = v43;
  *(v48 + 72) = v44;
  v49 = v43;

  static Transaction.asyncTask(name:block:)();

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_1007DE7F4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[143] = a1;

  v4 = swift_task_alloc();
  v2[144] = v4;
  *v4 = v3;
  v4[1] = sub_1007DE980;
  v5 = v2[120];
  v6 = v2[119];
  v7 = v2[118];
  v8 = v2[117];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_1007DE980(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1007DFFF0;
    v6 = 0;
  }

  else
  {

    *(v4 + 1160) = a1;
    v5 = sub_1007DEAE0;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1007DEAE0()
{
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 872);
  v4 = *(v0 + 800);
  v5 = (*(v0 + 1296) + 24) & ~*(v0 + 1296);
  (*(v0 + 1080))(v3, *(v0 + 856), v4);
  v6 = swift_allocObject();
  *(v0 + 1168) = v6;
  *(v6 + 16) = v1;
  v2(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 1176) = v7;
  v8 = sub_1000BC4D4(&qword_101696970, &qword_10138C490);
  *v7 = v0;
  v7[1] = sub_1007DEC50;

  return unsafeBlocking<A>(context:_:)(v0 + 640, 0xD000000000000010, 0x800000010134A8C0, sub_1007FEE54, v6, v8);
}

uint64_t sub_1007DEC50()
{
  v1 = *(*v0 + 1160);

  return _swift_task_switch(sub_1007DED7C, v1, 0);
}

uint64_t sub_1007DED7C()
{

  *(v0 + 1184) = *(v0 + 640);

  return _swift_task_switch(sub_1007DEDEC, 0, 0);
}

uint64_t sub_1007DEDEC()
{
  v150 = v0;
  v2 = *(v0 + 1184);
  v3 = *(v2 + 16);
  if (!v3)
  {
    (*(*(v0 + 808) + 8))(*(v0 + 856), *(v0 + 800));

    if (*(v0 + 1303))
    {
      goto LABEL_13;
    }

LABEL_49:
    (*(*(v0 + 808) + 8))(*(v0 + 880), *(v0 + 800));
LABEL_50:
    sub_100007BAC((v0 + 328));
    if (qword_101694958 == -1)
    {
      goto LABEL_51;
    }

    goto LABEL_67;
  }

  v4 = *(*(v0 + 744) + 80);
  v5 = v2 + ((v4 + 32) & ~v4);
  sub_1007FF3E4(v5, *(v0 + 760), type metadata accessor for BeaconEstimatedLocation);
  if (v3 != 1)
  {
    v40 = 1;
    while (v40 < *(v2 + 16))
    {
      sub_1007FF3E4(v5 + *(*(v0 + 744) + 72) * v40, *(v0 + 752), type metadata accessor for BeaconEstimatedLocation);
      if (static Date.< infix(_:_:)())
      {
        v41 = *(v0 + 760);
        v42 = *(v0 + 752);
        sub_10003627C(v41, type metadata accessor for BeaconEstimatedLocation);
        sub_100035B84(v42, v41, type metadata accessor for BeaconEstimatedLocation);
      }

      else
      {
        sub_10003627C(*(v0 + 752), type metadata accessor for BeaconEstimatedLocation);
      }

      if (v3 == ++v40)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_67:
    swift_once();
LABEL_51:
    v96 = *(v0 + 656);
    v97 = type metadata accessor for Logger();
    sub_1000076D4(v97, qword_10177B368);
    sub_10001F280(v96, v0 + 208);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = *(v0 + 872);
      v101 = *(v0 + 808);
      v102 = *(v0 + 800);
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v149 = v104;
      *v103 = 141558275;
      *(v103 + 4) = 1752392040;
      *(v103 + 12) = 2081;
      v106 = *(v0 + 232);
      v105 = *(v0 + 240);
      sub_1000035D0((v0 + 208), v106);
      (*(*(*(v105 + 8) + 8) + 32))(v106);
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v107 = dispatch thunk of CustomStringConvertible.description.getter();
      v109 = v108;
      (*(v101 + 8))(v100, v102);
      sub_100007BAC((v0 + 208));
      v110 = sub_1000136BC(v107, v109, &v149);

      *(v103 + 14) = v110;
      _os_log_impl(&_mh_execute_header, v98, v99, "Updating location for subscribers - from beacon store update for beacon %{private,mask.hash}s.", v103, 0x16u);
      sub_100007BAC(v104);
    }

    else
    {

      sub_100007BAC((v0 + 208));
    }

    v111 = *(v0 + 808);
    v112 = *(v0 + 696);
    sub_10001F280(*(v0 + 656), v0 + 248);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v113 = swift_dynamicCast();
    v114 = *(v112 + 56);
    if ((v113 & 1) == 0)
    {
      v125 = *(v0 + 680);
      v126 = *(v0 + 656);
      v114(v125, 1, 1, *(v0 + 688));
      sub_10000B3A8(v125, &unk_101698C30, &unk_101392630);
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v127 = swift_allocObject();
      *(v127 + 16) = xmmword_101385D80;
      v128 = v126[3];
      v129 = v126[4];
      sub_1000035D0(v126, v128);
      (*(*(*(v129 + 8) + 8) + 32))(v128);
      *(v0 + 616) = v127;
      AsyncStreamProvider.yield(value:transaction:)();

LABEL_63:
      v138 = *(v0 + 1008);
      v139 = *(v0 + 1301);
      v140 = *(v0 + 1000);
      v141 = *(v0 + 656);
      v142 = *(*(v0 + 648) + 160);
      type metadata accessor for Transaction();
      sub_10001F280(v141, v0 + 288);
      v143 = swift_allocObject();
      sub_10000A748((v0 + 288), v143 + 16);
      *(v143 + 56) = v142;
      *(v143 + 64) = v138;
      *(v143 + 72) = v139;
      v144 = v138;

      static Transaction.asyncTask(name:block:)();

      v145 = *(v0 + 8);

      return v145();
    }

    v115 = *(v0 + 704);
    v116 = *(v0 + 688);
    v117 = *(v0 + 680);
    v118 = *(v0 + 672);
    v114(v117, 0, 1, v116);
    sub_100035B84(v117, v115, type metadata accessor for SharedBeaconRecord);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v119 = (*(v111 + 80) + 32) & ~*(v111 + 80);
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_101385D80;
    sub_1000D2A70(v115 + *(v116 + 80), v118, &unk_1016AF890, &qword_1013926D0);
    v121 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v121 - 8) + 48))(v118, 1, v121) == 1)
    {
      v122 = *(v0 + 808);
      v123 = *(v0 + 800);
      v124 = *(v0 + 784);
      sub_10000B3A8(*(v0 + 672), &unk_1016AF890, &qword_1013926D0);
      (*(v122 + 56))(v124, 1, 1, v123);
    }

    else
    {
      v130 = *(v0 + 1016);
      v131 = *(v0 + 800);
      v132 = *(v0 + 784);
      v133 = *(v0 + 672);
      sub_1000D2A70(v133 + *(v121 + 20), v132, &qword_1016980D0, &unk_10138F3B0);
      sub_10003627C(v133, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      if (v130(v132, 1, v131) != 1)
      {
        (*(*(v0 + 808) + 32))(v120 + v119, *(v0 + 784), *(v0 + 800));
LABEL_62:
        v137 = *(v0 + 704);
        *(v0 + 624) = v120;
        AsyncStreamProvider.yield(value:transaction:)();

        sub_10003627C(v137, type metadata accessor for SharedBeaconRecord);
        goto LABEL_63;
      }
    }

    v134 = *(v0 + 1016);
    v135 = *(v0 + 800);
    v136 = *(v0 + 784);
    (*(*(v0 + 808) + 16))(v120 + v119, *(v0 + 704) + *(*(v0 + 688) + 20), v135);
    if (v134(v136, 1, v135) != 1)
    {
      sub_10000B3A8(*(v0 + 784), &qword_1016980D0, &unk_10138F3B0);
    }

    goto LABEL_62;
  }

LABEL_3:
  v6 = *(v0 + 776);
  v7 = *(v0 + 768);
  v8 = *(v0 + 760);
  v9 = *(v0 + 736);
  v10 = *(v0 + 664);

  sub_100035B84(v8, v7, type metadata accessor for BeaconEstimatedLocation);
  sub_100035B84(v7, v6, type metadata accessor for BeaconEstimatedLocation);
  if (*(v10 + *(v9 + 28)) != *(v6 + *(v9 + 28)) || (v11 = *(v0 + 776), v12 = *(v0 + 736), v13 = *(v0 + 664), *(v13 + *(v12 + 32)) != *(v11 + *(v12 + 32))) || *(v13 + *(v12 + 36)) != *(v11 + *(v12 + 36)))
  {
    v26 = *(v0 + 856);
    v27 = *(v0 + 808);
    v28 = *(v0 + 800);

    v18 = *(v27 + 8);
    v18(v26, v28);
LABEL_11:
    v29 = *(v0 + 880);
    v30 = *(v0 + 800);
    sub_10003627C(*(v0 + 776), type metadata accessor for BeaconEstimatedLocation);
    v18(v29, v30);
    goto LABEL_50;
  }

  v14 = *(v0 + 856);
  v15 = *(v0 + 808);
  v16 = *(v0 + 800);
  v17 = static Date.== infix(_:_:)();
  v18 = *(v15 + 8);
  v18(v14, v16);
  if ((v17 & 1) == 0)
  {

    goto LABEL_11;
  }

  v19 = *(v0 + 1301);
  v20 = *(v0 + 776);
  v21 = *(v20 + *(*(v0 + 736) + 44));
  sub_10003627C(v20, type metadata accessor for BeaconEstimatedLocation);
  if (v19 != v21)
  {
    v18(*(v0 + 880), *(v0 + 800));

    goto LABEL_50;
  }

  v22 = *(v0 + 1128);
  v23 = *(v0 + 1120);
  *(v0 + 1303) = 1;
  v24 = (v23 - 1) & v23;
  if (!v24)
  {
    while (1)
    {
      v85 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v25 = *(v0 + 1112);
      if (v85 >= (((1 << *(v0 + 1302)) + 63) >> 6))
      {

        if ((*(v0 + 1303) & 1) == 0)
        {
          goto LABEL_49;
        }

LABEL_13:
        v31 = *(v0 + 352);
        v32 = *(v0 + 360);
        sub_1000035D0((v0 + 328), v31);
        v33 = (*(v32 + 16))(v31, v32);
        *(v0 + 1192) = v33;
        v34 = *(v33 + 32);
        *(v0 + 1304) = v34;
        v35 = -1;
        v36 = -1 << v34;
        v37 = *(v33 + 56);
        if (-v36 < 64)
        {
          v35 = ~(-1 << -v36);
        }

        v1 = _swiftEmptyArrayStorage;
        *(v0 + 1200) = _swiftEmptyArrayStorage;
        v38 = v35 & v37;
        if (v38)
        {
          v39 = 0;
LABEL_27:
          *(v0 + 1216) = v39;
          *(v0 + 1208) = v38;
          v45 = *(v0 + 1032);
          v46 = *(v0 + 848);
          v47 = *(v0 + 840);
          v48 = *(v0 + 800);
          (*(v0 + 1080))(v46, *(v33 + 48) + *(*(v0 + 808) + 72) * (__clz(__rbit64(v38)) | (v39 << 6)), v48);
          v45(v47, v46, v48);
          v49 = swift_task_alloc();
          *(v0 + 1224) = v49;
          *v49 = v0;
          v50 = sub_1007E0E24;
          goto LABEL_28;
        }

        v43 = 0;
        v44 = ((63 - v36) >> 6) - 1;
        while (v44 != v43)
        {
          v39 = v43 + 1;
          v38 = *(v33 + 8 * v43++ + 64);
          if (v38)
          {
            goto LABEL_27;
          }
        }

        if (qword_101694958 != -1)
        {
          goto LABEL_69;
        }

LABEL_33:
        v51 = *(v0 + 1080);
        v52 = *(v0 + 880);
        v53 = *(v0 + 824);
        v54 = *(v0 + 800);
        v55 = *(v0 + 656);
        v56 = type metadata accessor for Logger();
        sub_1000076D4(v56, qword_10177B368);
        v51(v53, v52, v54);
        sub_10001F280(v55, v0 + 488);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v147 = *(v0 + 872);
          v148 = v58;
          v59 = *(v0 + 824);
          v60 = *(v0 + 808);
          v61 = *(v0 + 800);
          v62 = swift_slowAlloc();
          v149 = swift_slowAlloc();
          *v62 = 141558787;
          *(v62 + 4) = 1752392040;
          *(v62 + 12) = 2081;
          sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v63 = dispatch thunk of CustomStringConvertible.description.getter();
          v65 = v64;
          v66 = *(v60 + 8);
          v66(v59, v61);
          v67 = sub_1000136BC(v63, v65, &v149);

          *(v62 + 14) = v67;
          *(v62 + 22) = 2160;
          *(v62 + 24) = 1752392040;
          *(v62 + 32) = 2081;
          v68 = *(v0 + 512);
          v69 = *(v0 + 520);
          sub_1000035D0((v0 + 488), v68);
          (*(*(*(v69 + 8) + 8) + 32))(v68);
          v1 = _swiftEmptyArrayStorage;
          v70 = dispatch thunk of CustomStringConvertible.description.getter();
          v72 = v71;
          v66(v147, v61);
          sub_100007BAC((v0 + 488));
          v73 = sub_1000136BC(v70, v72, &v149);

          *(v62 + 34) = v73;
          _os_log_impl(&_mh_execute_header, v57, v148, "Updating location for subscribers - from beacon store update for beacongroup: %{private,mask.hash}s, beacon: %{private,mask.hash}s.", v62, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {
          v74 = *(v0 + 824);
          v75 = *(v0 + 808);
          v76 = *(v0 + 800);

          v66 = *(v75 + 8);
          v66(v74, v76);
          sub_100007BAC((v0 + 488));
        }

        *(v0 + 1272) = v66;
        v77 = *(v0 + 352);
        v78 = *(v0 + 360);
        sub_1000035D0((v0 + 328), v77);
        v79 = (*(v78 + 16))(v77, v78);
        v80 = v79;
        v81 = *(v79 + 16);
        if (!v81)
        {

          v83 = _swiftEmptyArrayStorage;
LABEL_45:
          v90 = *(v0 + 1008);
          v91 = *(v0 + 656);
          v92 = *(v0 + 648);
          *(v0 + 632) = v83;
          AsyncStreamProvider.yield(value:transaction:)();

          sub_10001F280(v0 + 328, v0 + 528);
          sub_10001F280(v91, v0 + 568);
          v93 = swift_allocObject();
          *(v0 + 1280) = v93;
          v93[2] = v92;
          v93[3] = v1;
          sub_10000A748((v0 + 528), (v93 + 4));
          sub_10000A748((v0 + 568), (v93 + 9));
          v93[14] = v90;
          v94 = v90;

          v95 = swift_task_alloc();
          *(v0 + 1288) = v95;
          *v95 = v0;
          v95[1] = sub_1007E2220;

          return unsafeBlocking<A>(context:_:)(v95, 0xD000000000000014, 0x80000001013BCEF0, sub_1007FEE40, v93, &type metadata for () + 1);
        }

        v82 = *(v0 + 1296);
        v83 = sub_1003A85FC(*(v79 + 16), 0);
        v84 = sub_1003A9D58(&v149, &v83[(v82 + 32) & ~v82], v81, v80);
        sub_1000128F8(v149);
        if (v84 == v81)
        {
          goto LABEL_45;
        }

        __break(1u);
      }

      else
      {
        v24 = *(v25 + 8 * v85 + 56);
        ++v22;
        if (v24)
        {
          v22 = v85;
          goto LABEL_43;
        }
      }
    }

    __break(1u);
LABEL_69:
    swift_once();
    goto LABEL_33;
  }

  v25 = *(v0 + 1112);
LABEL_43:
  *(v0 + 1128) = v22;
  *(v0 + 1120) = v24;
  v86 = *(v0 + 1032);
  v87 = *(v0 + 864);
  v88 = *(v0 + 856);
  v89 = *(v0 + 800);
  (*(v0 + 1080))(v87, *(v25 + 48) + *(*(v0 + 808) + 72) * (__clz(__rbit64(v24)) | (v22 << 6)), v89);
  v86(v88, v87, v89);
  v49 = swift_task_alloc();
  *(v0 + 1136) = v49;
  *v49 = v0;
  v50 = sub_1007DE7F4;
LABEL_28:
  v49[1] = v50;

  return daemon.getter();
}

uint64_t sub_1007DFFF0()
{
  v114 = v0;
  v1 = *(v0 + 856);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);

  (*(v2 + 8))(v1, v3);
  if ((*(v0 + 1303) & 1) == 0)
  {
    (*(*(v0 + 808) + 8))(*(v0 + 880), *(v0 + 800));
    sub_100007BAC((v0 + 328));
    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 656);
    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177B368);
    sub_10001F280(v13, v0 + 208);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 872);
      v18 = *(v0 + 808);
      v19 = *(v0 + 800);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v113 = v21;
      *v20 = 141558275;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2081;
      v23 = *(v0 + 232);
      v22 = *(v0 + 240);
      sub_1000035D0((v0 + 208), v23);
      (*(*(*(v22 + 8) + 8) + 32))(v23);
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v18 + 8))(v17, v19);
      sub_100007BAC((v0 + 208));
      v27 = sub_1000136BC(v24, v26, &v113);

      *(v20 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v15, v16, "Updating location for subscribers - from beacon store update for beacon %{private,mask.hash}s.", v20, 0x16u);
      sub_100007BAC(v21);
    }

    else
    {

      sub_100007BAC((v0 + 208));
    }

    v28 = *(v0 + 808);
    v29 = *(v0 + 696);
    sub_10001F280(*(v0 + 656), v0 + 248);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v30 = swift_dynamicCast();
    v31 = *(v29 + 56);
    if ((v30 & 1) == 0)
    {
      v42 = *(v0 + 680);
      v43 = *(v0 + 656);
      v31(v42, 1, 1, *(v0 + 688));
      sub_10000B3A8(v42, &unk_101698C30, &unk_101392630);
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_101385D80;
      v45 = v43[3];
      v46 = v43[4];
      sub_1000035D0(v43, v45);
      (*(*(*(v46 + 8) + 8) + 32))(v45);
      *(v0 + 616) = v44;
      AsyncStreamProvider.yield(value:transaction:)();

LABEL_30:
      v85 = *(v0 + 1008);
      v86 = *(v0 + 1301);
      v87 = *(v0 + 1000);
      v88 = *(v0 + 656);
      v89 = *(*(v0 + 648) + 160);
      type metadata accessor for Transaction();
      sub_10001F280(v88, v0 + 288);
      v90 = swift_allocObject();
      sub_10000A748((v0 + 288), v90 + 16);
      *(v90 + 56) = v89;
      *(v90 + 64) = v85;
      *(v90 + 72) = v86;
      v91 = v85;

      static Transaction.asyncTask(name:block:)();

      v92 = *(v0 + 8);

      return v92();
    }

    v32 = *(v0 + 704);
    v33 = *(v0 + 688);
    v34 = *(v0 + 680);
    v35 = *(v0 + 672);
    v31(v34, 0, 1, v33);
    sub_100035B84(v34, v32, type metadata accessor for SharedBeaconRecord);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v36 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_101385D80;
    sub_1000D2A70(v32 + *(v33 + 80), v35, &unk_1016AF890, &qword_1013926D0);
    v38 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v38 - 8) + 48))(v35, 1, v38) == 1)
    {
      v39 = *(v0 + 808);
      v40 = *(v0 + 800);
      v41 = *(v0 + 784);
      sub_10000B3A8(*(v0 + 672), &unk_1016AF890, &qword_1013926D0);
      (*(v39 + 56))(v41, 1, 1, v40);
    }

    else
    {
      v54 = *(v0 + 1016);
      v55 = *(v0 + 800);
      v56 = *(v0 + 784);
      v57 = *(v0 + 672);
      sub_1000D2A70(v57 + *(v38 + 20), v56, &qword_1016980D0, &unk_10138F3B0);
      sub_10003627C(v57, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      if (v54(v56, 1, v55) != 1)
      {
        (*(*(v0 + 808) + 32))(v37 + v36, *(v0 + 784), *(v0 + 800));
LABEL_29:
        v84 = *(v0 + 704);
        *(v0 + 624) = v37;
        AsyncStreamProvider.yield(value:transaction:)();

        sub_10003627C(v84, type metadata accessor for SharedBeaconRecord);
        goto LABEL_30;
      }
    }

    v58 = *(v0 + 1016);
    v59 = *(v0 + 800);
    v60 = *(v0 + 784);
    (*(*(v0 + 808) + 16))(v37 + v36, *(v0 + 704) + *(*(v0 + 688) + 20), v59);
    if (v58(v60, 1, v59) != 1)
    {
      sub_10000B3A8(*(v0 + 784), &qword_1016980D0, &unk_10138F3B0);
    }

    goto LABEL_29;
  }

  v4 = *(v0 + 352);
  v5 = *(v0 + 360);
  sub_1000035D0((v0 + 328), v4);
  v6 = (*(v5 + 16))(v4, v5);
  *(v0 + 1192) = v6;
  v7 = *(v6 + 32);
  *(v0 + 1304) = v7;
  v8 = -1;
  v9 = -1 << v7;
  v10 = *(v6 + 56);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  *(v0 + 1200) = _swiftEmptyArrayStorage;
  v11 = v8 & v10;
  if (!v11)
  {
    v47 = 0;
    v48 = ((63 - v9) >> 6) - 1;
    while (v48 != v47)
    {
      v12 = v47 + 1;
      v11 = *(v6 + 8 * v47++ + 64);
      if (v11)
      {
        goto LABEL_18;
      }
    }

    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v61 = *(v0 + 1080);
    v62 = *(v0 + 880);
    v63 = *(v0 + 824);
    v64 = *(v0 + 800);
    v65 = *(v0 + 656);
    v66 = type metadata accessor for Logger();
    sub_1000076D4(v66, qword_10177B368);
    v61(v63, v62, v64);
    sub_10001F280(v65, v0 + 488);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v111 = *(v0 + 872);
      v112 = v68;
      v69 = *(v0 + 824);
      v70 = *(v0 + 808);
      v71 = *(v0 + 800);
      v72 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *v72 = 141558787;
      *(v72 + 4) = 1752392040;
      *(v72 + 12) = 2081;
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      v76 = *(v70 + 8);
      v76(v69, v71);
      v77 = sub_1000136BC(v73, v75, &v113);

      *(v72 + 14) = v77;
      *(v72 + 22) = 2160;
      *(v72 + 24) = 1752392040;
      *(v72 + 32) = 2081;
      v78 = *(v0 + 512);
      v79 = *(v0 + 520);
      sub_1000035D0((v0 + 488), v78);
      (*(*(*(v79 + 8) + 8) + 32))(v78);
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v81;
      v76(v111, v71);
      sub_100007BAC((v0 + 488));
      v83 = sub_1000136BC(v80, v82, &v113);

      *(v72 + 34) = v83;
      _os_log_impl(&_mh_execute_header, v67, v112, "Updating location for subscribers - from beacon store update for beacongroup: %{private,mask.hash}s, beacon: %{private,mask.hash}s.", v72, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v93 = *(v0 + 824);
      v94 = *(v0 + 808);
      v95 = *(v0 + 800);

      v76 = *(v94 + 8);
      v76(v93, v95);
      sub_100007BAC((v0 + 488));
    }

    *(v0 + 1272) = v76;
    v96 = *(v0 + 352);
    v97 = *(v0 + 360);
    sub_1000035D0((v0 + 328), v96);
    v98 = (*(v97 + 16))(v96, v97);
    v99 = v98;
    v100 = *(v98 + 16);
    if (v100)
    {
      v101 = *(v0 + 1296);
      v102 = sub_1003A85FC(*(v98 + 16), 0);
      v103 = sub_1003A9D58(&v113, &v102[(v101 + 32) & ~v101], v100, v99);
      sub_1000128F8(v113);
      if (v103 == v100)
      {
LABEL_38:
        v104 = *(v0 + 1008);
        v105 = *(v0 + 656);
        v106 = *(v0 + 648);
        *(v0 + 632) = v102;
        AsyncStreamProvider.yield(value:transaction:)();

        sub_10001F280(v0 + 328, v0 + 528);
        sub_10001F280(v105, v0 + 568);
        v107 = swift_allocObject();
        *(v0 + 1280) = v107;
        v107[2] = v106;
        v107[3] = _swiftEmptyArrayStorage;
        sub_10000A748((v0 + 528), (v107 + 4));
        sub_10000A748((v0 + 568), (v107 + 9));
        v107[14] = v104;
        v108 = v104;

        v109 = swift_task_alloc();
        *(v0 + 1288) = v109;
        *v109 = v0;
        v109[1] = sub_1007E2220;

        return unsafeBlocking<A>(context:_:)(v109, 0xD000000000000014, 0x80000001013BCEF0, sub_1007FEE40, v107, &type metadata for () + 1);
      }

      __break(1u);
    }

    v102 = _swiftEmptyArrayStorage;
    goto LABEL_38;
  }

  v12 = 0;
LABEL_18:
  *(v0 + 1216) = v12;
  *(v0 + 1208) = v11;
  v49 = *(v0 + 1032);
  v50 = *(v0 + 848);
  v51 = *(v0 + 840);
  v52 = *(v0 + 800);
  (*(v0 + 1080))(v50, *(v6 + 48) + *(*(v0 + 808) + 72) * (__clz(__rbit64(v11)) | (v12 << 6)), v52);
  v49(v51, v50, v52);
  v53 = swift_task_alloc();
  *(v0 + 1224) = v53;
  *v53 = v0;
  v53[1] = sub_1007E0E24;

  return daemon.getter();
}

uint64_t sub_1007E0E24(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[154] = a1;

  v4 = swift_task_alloc();
  v2[155] = v4;
  *v4 = v3;
  v4[1] = sub_1007E0FB0;
  v5 = v2[120];
  v6 = v2[119];
  v7 = v2[118];
  v8 = v2[117];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_1007E0FB0(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1007E1BB8;
    v6 = 0;
  }

  else
  {

    *(v4 + 1248) = a1;
    v5 = sub_1007E1110;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1007E1110()
{
  v1 = *(v0 + 1248);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 872);
  v4 = *(v0 + 800);
  v5 = (*(v0 + 1296) + 24) & ~*(v0 + 1296);
  (*(v0 + 1080))(v3, *(v0 + 840), v4);
  v6 = swift_allocObject();
  *(v0 + 1256) = v6;
  *(v6 + 16) = v1;
  v2(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 1264) = v7;
  v8 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v7 = v0;
  v7[1] = sub_1007E1280;

  return unsafeBlocking<A>(context:_:)(v0 + 448, 0xD000000000000010, 0x800000010134A8C0, sub_1007FEDA0, v6, v8);
}

uint64_t sub_1007E1280()
{

  return _swift_task_switch(sub_1007E13B4, 0, 0);
}

uint64_t sub_1007E13B4()
{
  v76 = v0;
  if (*(v0 + 472))
  {
    v1 = *(v0 + 1032);
    v2 = *(v0 + 1008);
    v3 = *(v0 + 832);
    v4 = *(v0 + 800);
    v5 = *(v0 + 728);
    v6 = *(v0 + 712);
    sub_10000A748((v0 + 448), v0 + 408);
    v8 = *(v0 + 432);
    v7 = *(v0 + 440);
    sub_1000035D0((v0 + 408), v8);
    (*(*(*(v7 + 8) + 8) + 32))(v8);
    v9 = *(v0 + 432);
    v10 = *(v0 + 440);
    sub_1000035D0((v0 + 408), v9);
    v11 = (*(v10 + 184))(v9, v10);
    v12 = *(v6 + 48);
    v13 = *(sub_1000BC4D4(&unk_1016AA490, &unk_1013BD060) + 48);
    v1(v5, v3, v4);
    *(v5 + v13) = v11;
    *(v5 + v12) = v2;
    v14 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v0 + 1200);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_29:
      v16 = sub_100A5DED0(0, v16[2] + 1, 1, v16);
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_100A5DED0((v17 > 1), v18 + 1, 1, v16);
    }

    v19 = *(v0 + 728);
    v20 = *(v0 + 720);
    (*(*(v0 + 808) + 8))(*(v0 + 840), *(v0 + 800));
    v16[2] = v18 + 1;
    sub_1000D2AD8(v19, v16 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v18, &unk_1016AA458, &unk_1013BD028);
    sub_100007BAC((v0 + 408));
  }

  else
  {
    (*(*(v0 + 808) + 8))(*(v0 + 840), *(v0 + 800));
    sub_10000B3A8(v0 + 448, &qword_101696920, &unk_10138B200);
    v16 = *(v0 + 1200);
  }

  v21 = *(v0 + 1216);
  v22 = *(v0 + 1208);
  *(v0 + 1200) = v16;
  v23 = (v22 - 1) & v22;
  if (!v23)
  {
    while (1)
    {
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      v24 = *(v0 + 1192);
      if (v25 >= (((1 << *(v0 + 1304)) + 63) >> 6))
      {
        break;
      }

      v23 = *(v24 + 8 * v25 + 56);
      ++v21;
      if (v23)
      {
        v21 = v25;
        goto LABEL_13;
      }
    }

    if (qword_101694958 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 1080);
    v32 = *(v0 + 880);
    v33 = *(v0 + 824);
    v34 = *(v0 + 800);
    v35 = *(v0 + 656);
    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177B368);
    v31(v33, v32, v34);
    sub_10001F280(v35, v0 + 488);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v73 = *(v0 + 872);
      v74 = v38;
      v39 = *(v0 + 824);
      v40 = *(v0 + 808);
      v41 = *(v0 + 800);
      v42 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v42 = 141558787;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      log = v37;
      v45 = v44;
      v46 = *(v40 + 8);
      v46(v39, v41);
      v47 = sub_1000136BC(v43, v45, &v75);

      *(v42 + 14) = v47;
      *(v42 + 22) = 2160;
      *(v42 + 24) = 1752392040;
      *(v42 + 32) = 2081;
      v48 = *(v0 + 512);
      v49 = *(v0 + 520);
      sub_1000035D0((v0 + 488), v48);
      (*(*(*(v49 + 8) + 8) + 32))(v48);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      v46(v73, v41);
      sub_100007BAC((v0 + 488));
      v53 = sub_1000136BC(v50, v52, &v75);

      *(v42 + 34) = v53;
      _os_log_impl(&_mh_execute_header, log, v74, "Updating location for subscribers - from beacon store update for beacongroup: %{private,mask.hash}s, beacon: %{private,mask.hash}s.", v42, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v54 = *(v0 + 824);
      v55 = *(v0 + 808);
      v56 = *(v0 + 800);

      v46 = *(v55 + 8);
      v46(v54, v56);
      sub_100007BAC((v0 + 488));
    }

    *(v0 + 1272) = v46;
    v57 = *(v0 + 352);
    v58 = *(v0 + 360);
    sub_1000035D0((v0 + 328), v57);
    v59 = (*(v58 + 16))(v57, v58);
    v60 = v59;
    v61 = *(v59 + 16);
    if (v61)
    {
      v62 = *(v0 + 1296);
      v63 = sub_1003A85FC(*(v59 + 16), 0);
      v64 = sub_1003A9D58(&v75, &v63[(v62 + 32) & ~v62], v61, v60);
      sub_1000128F8(v75);
      if (v64 == v61)
      {
LABEL_25:
        v65 = *(v0 + 1008);
        v66 = *(v0 + 656);
        v67 = *(v0 + 648);
        *(v0 + 632) = v63;
        AsyncStreamProvider.yield(value:transaction:)();

        sub_10001F280(v0 + 328, v0 + 528);
        sub_10001F280(v66, v0 + 568);
        v68 = swift_allocObject();
        *(v0 + 1280) = v68;
        v68[2] = v67;
        v68[3] = v16;
        sub_10000A748((v0 + 528), (v68 + 4));
        sub_10000A748((v0 + 568), (v68 + 9));
        v68[14] = v65;
        v69 = v65;

        v70 = swift_task_alloc();
        *(v0 + 1288) = v70;
        *v70 = v0;
        v70[1] = sub_1007E2220;

        return unsafeBlocking<A>(context:_:)(v70, 0xD000000000000014, 0x80000001013BCEF0, sub_1007FEE40, v68, &type metadata for () + 1);
      }

      __break(1u);
    }

    v63 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

  v24 = *(v0 + 1192);
LABEL_13:
  *(v0 + 1216) = v21;
  *(v0 + 1208) = v23;
  v26 = *(v0 + 1032);
  v27 = *(v0 + 848);
  v28 = *(v0 + 840);
  v29 = *(v0 + 800);
  (*(v0 + 1080))(v27, *(v24 + 48) + *(*(v0 + 808) + 72) * (__clz(__rbit64(v23)) | (v21 << 6)), v29);
  v26(v28, v27, v29);
  v30 = swift_task_alloc();
  *(v0 + 1224) = v30;
  *v30 = v0;
  v30[1] = sub_1007E0E24;

  return daemon.getter();
}

uint64_t sub_1007E1BB8()
{
  v55 = v0;
  (*(*(v0 + 808) + 8))(*(v0 + 840), *(v0 + 800));
  *(v0 + 480) = 0;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0u;
  sub_10000B3A8(v0 + 448, &qword_101696920, &unk_10138B200);
  v1 = *(v0 + 1216);
  v2 = (*(v0 + 1208) - 1) & *(v0 + 1208);
  if (!v2)
  {
    v4 = *(v0 + 1200);
    while (1)
    {
      v5 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      v3 = *(v0 + 1192);
      if (v5 >= (((1 << *(v0 + 1304)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v5 + 56);
      ++v1;
      if (v2)
      {
        v1 = v5;
        goto LABEL_8;
      }
    }

    if (qword_101694958 == -1)
    {
      goto LABEL_12;
    }

LABEL_23:
    swift_once();
LABEL_12:
    v11 = *(v0 + 1080);
    v12 = *(v0 + 880);
    v13 = *(v0 + 824);
    v14 = *(v0 + 800);
    v15 = *(v0 + 656);
    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177B368);
    v11(v13, v12, v14);
    sub_10001F280(v15, v0 + 488);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v52 = *(v0 + 872);
      v53 = v18;
      v19 = *(v0 + 824);
      v20 = *(v0 + 808);
      v21 = *(v0 + 800);
      v22 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v22 = 141558787;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v26 = *(v20 + 8);
      v26(v19, v21);
      v27 = sub_1000136BC(v23, v25, &v54);

      *(v22 + 14) = v27;
      *(v22 + 22) = 2160;
      *(v22 + 24) = 1752392040;
      *(v22 + 32) = 2081;
      v28 = *(v0 + 512);
      v29 = *(v0 + 520);
      sub_1000035D0((v0 + 488), v28);
      (*(*(*(v29 + 8) + 8) + 32))(v28);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      v26(v52, v21);
      sub_100007BAC((v0 + 488));
      v33 = sub_1000136BC(v30, v32, &v54);

      *(v22 + 34) = v33;
      _os_log_impl(&_mh_execute_header, v17, v53, "Updating location for subscribers - from beacon store update for beacongroup: %{private,mask.hash}s, beacon: %{private,mask.hash}s.", v22, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v34 = *(v0 + 824);
      v35 = *(v0 + 808);
      v36 = *(v0 + 800);

      v26 = *(v35 + 8);
      v26(v34, v36);
      sub_100007BAC((v0 + 488));
    }

    *(v0 + 1272) = v26;
    v37 = *(v0 + 352);
    v38 = *(v0 + 360);
    sub_1000035D0((v0 + 328), v37);
    v39 = (*(v38 + 16))(v37, v38);
    v40 = v39;
    v41 = *(v39 + 16);
    if (v41)
    {
      v42 = *(v0 + 1296);
      v43 = sub_1003A85FC(*(v39 + 16), 0);
      v44 = sub_1003A9D58(&v54, &v43[(v42 + 32) & ~v42], v41, v40);
      sub_1000128F8(v54);
      if (v44 == v41)
      {
LABEL_19:
        v45 = *(v0 + 1008);
        v46 = *(v0 + 656);
        v47 = *(v0 + 648);
        *(v0 + 632) = v43;
        AsyncStreamProvider.yield(value:transaction:)();

        sub_10001F280(v0 + 328, v0 + 528);
        sub_10001F280(v46, v0 + 568);
        v48 = swift_allocObject();
        *(v0 + 1280) = v48;
        v48[2] = v47;
        v48[3] = v4;
        sub_10000A748((v0 + 528), (v48 + 4));
        sub_10000A748((v0 + 568), (v48 + 9));
        v48[14] = v45;
        v49 = v45;

        v50 = swift_task_alloc();
        *(v0 + 1288) = v50;
        *v50 = v0;
        v50[1] = sub_1007E2220;

        return unsafeBlocking<A>(context:_:)(v50, 0xD000000000000014, 0x80000001013BCEF0, sub_1007FEE40, v48, &type metadata for () + 1);
      }

      __break(1u);
    }

    v43 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v3 = *(v0 + 1192);
LABEL_8:
  *(v0 + 1216) = v1;
  *(v0 + 1208) = v2;
  v6 = *(v0 + 1032);
  v7 = *(v0 + 848);
  v8 = *(v0 + 840);
  v9 = *(v0 + 800);
  (*(v0 + 1080))(v7, *(v3 + 48) + *(*(v0 + 808) + 72) * (__clz(__rbit64(v2)) | (v1 << 6)), v9);
  v6(v8, v7, v9);
  v10 = swift_task_alloc();
  *(v0 + 1224) = v10;
  *v10 = v0;
  v10[1] = sub_1007E0E24;

  return daemon.getter();
}

uint64_t sub_1007E2220()
{

  return _swift_task_switch(sub_1007E2338, 0, 0);
}

uint64_t sub_1007E2338()
{
  v53 = v0;
  (*(v0 + 1272))(*(v0 + 880), *(v0 + 800));
  sub_100007BAC((v0 + 328));
  if (qword_101694958 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 656);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B368);
  sub_10001F280(v1, v0 + 208);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 872);
    v6 = *(v0 + 808);
    v7 = *(v0 + 800);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v52 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v11 = *(v0 + 232);
    v10 = *(v0 + 240);
    sub_1000035D0((v0 + 208), v11);
    (*(*(*(v10 + 8) + 8) + 32))(v11);
    sub_1000194F8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v6 + 8))(v5, v7);
    sub_100007BAC((v0 + 208));
    v15 = sub_1000136BC(v12, v14, &v52);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Updating location for subscribers - from beacon store update for beacon %{private,mask.hash}s.", v8, 0x16u);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100007BAC((v0 + 208));
  }

  v16 = *(v0 + 808);
  v17 = *(v0 + 696);
  sub_10001F280(*(v0 + 656), v0 + 248);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v18 = swift_dynamicCast();
  v19 = *(v17 + 56);
  if ((v18 & 1) == 0)
  {
    v30 = *(v0 + 680);
    v31 = *(v0 + 656);
    v19(v30, 1, 1, *(v0 + 688));
    sub_10000B3A8(v30, &unk_101698C30, &unk_101392630);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_101385D80;
    v33 = v31[3];
    v34 = v31[4];
    sub_1000035D0(v31, v33);
    (*(*(*(v34 + 8) + 8) + 32))(v33);
    *(v0 + 616) = v32;
    AsyncStreamProvider.yield(value:transaction:)();

    goto LABEL_15;
  }

  v20 = *(v0 + 704);
  v21 = *(v0 + 688);
  v22 = *(v0 + 680);
  v23 = *(v0 + 672);
  v19(v22, 0, 1, v21);
  sub_100035B84(v22, v20, type metadata accessor for SharedBeaconRecord);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v24 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_101385D80;
  sub_1000D2A70(v20 + *(v21 + 80), v23, &unk_1016AF890, &qword_1013926D0);
  v26 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if ((*(*(v26 - 8) + 48))(v23, 1, v26) == 1)
  {
    v27 = *(v0 + 808);
    v28 = *(v0 + 800);
    v29 = *(v0 + 784);
    sub_10000B3A8(*(v0 + 672), &unk_1016AF890, &qword_1013926D0);
    (*(v27 + 56))(v29, 1, 1, v28);
    goto LABEL_11;
  }

  v35 = *(v0 + 1016);
  v36 = *(v0 + 800);
  v37 = *(v0 + 784);
  v38 = *(v0 + 672);
  sub_1000D2A70(v38 + *(v26 + 20), v37, &qword_1016980D0, &unk_10138F3B0);
  sub_10003627C(v38, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  if (v35(v37, 1, v36) == 1)
  {
LABEL_11:
    v39 = *(v0 + 1016);
    v40 = *(v0 + 800);
    v41 = *(v0 + 784);
    (*(*(v0 + 808) + 16))(v25 + v24, *(v0 + 704) + *(*(v0 + 688) + 20), v40);
    if (v39(v41, 1, v40) != 1)
    {
      sub_10000B3A8(*(v0 + 784), &qword_1016980D0, &unk_10138F3B0);
    }

    goto LABEL_14;
  }

  (*(*(v0 + 808) + 32))(v25 + v24, *(v0 + 784), *(v0 + 800));
LABEL_14:
  v42 = *(v0 + 704);
  *(v0 + 624) = v25;
  AsyncStreamProvider.yield(value:transaction:)();

  sub_10003627C(v42, type metadata accessor for SharedBeaconRecord);
LABEL_15:
  v43 = *(v0 + 1008);
  v44 = *(v0 + 1301);
  v45 = *(v0 + 1000);
  v46 = *(v0 + 656);
  v47 = *(*(v0 + 648) + 160);
  type metadata accessor for Transaction();
  sub_10001F280(v46, v0 + 288);
  v48 = swift_allocObject();
  sub_10000A748((v0 + 288), v48 + 16);
  *(v48 + 56) = v47;
  *(v48 + 64) = v43;
  *(v48 + 72) = v44;
  v49 = v43;

  static Transaction.asyncTask(name:block:)();

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_1007E2B04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  sub_1000BC4D4(&unk_1016AA4A0, &qword_1013BD070);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101385D80;
  sub_10001F280(a3, v9 + 32);
  v10 = a4[3];
  v11 = a4[4];
  sub_1000035D0(a4, v10);
  *(v9 + 72) = (*(v11 + 184))(v10, v11);
  *(v9 + 80) = a5;
  v12 = a5;
  sub_1007F247C(a2, v9, 2);
}

uint64_t sub_1007E2BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for BeaconEstimatedLocation(0);
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016AA430, &unk_101392650);
  v4[8] = swift_task_alloc();
  v7 = type metadata accessor for ObservedAdvertisement.Location(0);
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  sub_1000BC4D4(&qword_101699DB0, &unk_101393100);
  v4[12] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v4[15] = *(v9 + 64);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v10 = type metadata accessor for ObservedAdvertisement(0);
  v4[20] = v10;
  v4[21] = *(v10 - 8);
  v4[22] = swift_task_alloc();
  sub_1000BC4D4(&unk_10169BB50, &unk_101395760);
  v4[23] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_1016AA438, &qword_1013BD000);
  v4[24] = v11;
  v4[25] = *(v11 - 8);
  v4[26] = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_1016AA440, &qword_1013BD008);
  v4[27] = v12;
  v4[28] = *(v12 - 8);
  v4[29] = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_1016AA448, &qword_1013BD010);
  v4[30] = v13;
  v4[31] = *(v13 - 8);
  v4[32] = swift_task_alloc();
  v14 = swift_task_alloc();
  v4[33] = v14;
  *v14 = v4;
  v14[1] = sub_1007E300C;

  return daemon.getter();
}

uint64_t sub_1007E300C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[34] = a1;

  v3 = swift_task_alloc();
  v2[35] = v3;
  v4 = type metadata accessor for Daemon();
  v2[36] = v4;
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_1000194F8(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[37] = v6;
  v7 = sub_1000194F8(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_1007E31EC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1007E31EC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 304) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1007E340C, 0, 0);
  }
}

uint64_t sub_1007E340C()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  (*(v0[25] + 104))(v0[26], enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v0[24]);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_1000358B8;
  v5 = v0[30];
  v6 = v0[23];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

uint64_t sub_1007E3558(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 368) = a1;

  v5 = swift_task_alloc();
  *(v3 + 376) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_1000194F8(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_1007E370C;
  v8 = *(v2 + 296);
  v9 = *(v2 + 288);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1007E370C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 384) = v1;

  if (v1)
  {
    v5 = *(v4 + 16);
    v6 = sub_1007E3D74;
  }

  else
  {

    *(v4 + 392) = a1;
    v6 = sub_1007E3848;
    v5 = 0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1007E3848()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 336);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  (*(v0 + 320))(v3, *(v0 + 152), v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v0 + 400) = v7;
  v2(v7 + v6, v3, v4);

  return _swift_task_switch(sub_1007E3918, v1, 0);
}

uint64_t sub_1007E3918()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[6];
  v5 = v0[4];
  v4 = v0[5];
  sub_1007FF3E4(v0[7], v3, type metadata accessor for BeaconEstimatedLocation);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  v0[51] = v8;
  *(v8 + 16) = v2;
  sub_100035B84(v3, v8 + v6, type metadata accessor for BeaconEstimatedLocation);
  v9 = (v8 + v7);
  *v9 = sub_1007F51B0;
  v9[1] = v1;

  v10 = swift_task_alloc();
  v0[52] = v10;
  *v10 = v0;
  v10[1] = sub_1007E3AA0;

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_1007FFC90, v8, &type metadata for () + 1);
}

uint64_t sub_1007E3AA0()
{
  v1 = *(*v0 + 392);

  return _swift_task_switch(sub_1007E3BCC, v1, 0);
}