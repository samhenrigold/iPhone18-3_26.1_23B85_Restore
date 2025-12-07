uint64_t sub_1000A6C10()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[12];
  v14 = v0[11];
  v15 = v0[10];
  v13 = v0[9];
  v6 = v0[7];
  v5 = v0[8];
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v7 = *(v3 + 8);
  v0[17] = v7;
  v0[18] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v4);
  (*(v3 + 16))(v1, v2, v4);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  (*(v3 + 32))(v9 + v8, v1, v4);
  sub_1000A7140(v6, v5, v13, &unk_1001BB2F8, v9);

  sub_1000A7140(v6, v5, v13, v15, v14);
  v10 = swift_task_alloc();
  v0[19] = v10;
  v11 = sub_10000CDE0(&qword_10023C300, &unk_1001BB300);
  *v10 = v0;
  v10[1] = sub_1000A6E10;

  return ThrowingTaskGroup.next(isolation:)(v0 + 2, 0, 0, v11);
}

uint64_t sub_1000A6E10()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1000A70C4;
  }

  else
  {
    v2 = sub_1000A6F24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A6F24()
{
  v1 = v0[3];
  v2 = v0[17];
  v3 = v0[16];
  if (v1 == 1)
  {
    v4 = v0[12];
    sub_1000A7E24();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v2(v3, v4);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[12];
    v9 = v0[2];
    sub_10000CDE0(&qword_10023AEA8, &unk_1001B7AD0);
    sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
    ThrowingTaskGroup.cancelAll()();
    v2(v3, v8);

    v10 = v0[1];

    return v10(v9, v1);
  }
}

uint64_t sub_1000A70C4()
{
  (*(v0 + 136))(*(v0 + 128), *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A7140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v11 - 8);
  v13 = v23 - v12;
  sub_1000A2558(a3, v23 - v12);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000DAF8(v13, &qword_100239EE0, &qword_1001B3640);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_9:
    v16 = 0;
    v18 = 0;
    v19 = *v6;
    if (a1)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  TaskPriority.rawValue.getter();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_9;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  v19 = *v6;
  if (a1)
  {
LABEL_4:
    swift_unknownObjectRetain();
    sub_10000CDE0(&qword_10023AEA8, &unk_1001B7AD0);
    v20 = (v18 | v16);
    if (v18 | v16)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v16;
      v25[3] = v18;
    }

    v24[0] = 1;
    v24[1] = v20;
    v24[2] = v19;
    if (a1 != 1)
    {
      v23[1] = 6;
      v23[2] = v24;
      v23[3] = a1;
      v23[4] = a2;
    }

    goto LABEL_13;
  }

LABEL_10:
  sub_10000CDE0(&qword_10023AEA8, &unk_1001B7AD0);
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v27[0] = 0;
    v27[1] = 0;
    v21 = v27;
    v27[2] = v16;
    v27[3] = v18;
  }

  v26[0] = 1;
  v26[1] = v21;
  v26[2] = v19;
  v25[4] = 6;
  v25[5] = v26;
  v25[6] = 0;
  v25[7] = a2;
LABEL_13:
  swift_task_create();
}

uint64_t sub_1000A73BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_1000A9160;

  return sub_1000A7E78(a4, a5, v7);
}

uint64_t sub_1000A746C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_10007E1C8;

  return sub_1000A6B30(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_1000A7558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1000A9160;

  return sub_1000A8B18(a4);
}

uint64_t sub_1000A75F0(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  *(v3 + 88) = a1;
  sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  *(v3 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1000A7690, 0, 0);
}

uint64_t sub_1000A7690()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 88);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  *(v0 + 56) = v6;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v3;
  *(v6 + 40) = v1;
  *(v6 + 48) = v4;

  v7 = sub_10000CDE0(&qword_10023AEA8, &unk_1001B7AD0);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *(v8 + 16) = xmmword_1001BB2A0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = v2;
  *(v8 + 56) = &unk_1001BB2C8;
  *(v8 + 64) = v6;
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_1000A7838;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v7, v7, 0, 0, &unk_1001BB2E0, v8, v7);
}

uint64_t sub_1000A7838()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000A79BC, 0, 0);
  }

  else
  {
    v3 = v2[6];

    v5 = v2[2];
    v4 = v2[3];
    sub_10000DAF8(v3, &qword_100239EE0, &qword_1001B3640);

    v6 = v2[1];

    return v6(v5, v4);
  }
}

uint64_t sub_1000A79BC()
{
  v1 = *(v0 + 48);

  sub_10000DAF8(v1, &qword_100239EE0, &qword_1001B3640);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000A7A4C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000A7A8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000152E0;

  return sub_1000A73BC(a1, v4, v5, v6, v7, v8);
}

void sub_1000A7B68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  JUMPOUT(0x1000A746CLL);
}

uint64_t sub_1000A7C64()
{
  v1 = type metadata accessor for ContinuousClock.Instant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A7D28(uint64_t a1)
{
  v4 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000152E0;

  return sub_1000A7558(a1, v6, v7, v1 + v5);
}

unint64_t sub_1000A7E24()
{
  result = qword_10023C308;
  if (!qword_10023C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C308);
  }

  return result;
}

uint64_t sub_1000A7E78(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 296) = a3;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  v4 = sub_10000CDE0(&qword_10023C318, &qword_1001BB320);
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v3 + 120) = v5;
  *(v3 + 128) = *(v5 - 8);
  *(v3 + 136) = swift_task_alloc();
  v6 = type metadata accessor for AccountCachedServerData.Error();
  *(v3 + 144) = v6;
  *(v3 + 152) = *(v6 - 8);
  *(v3 + 160) = swift_task_alloc();
  v7 = sub_10000CDE0(&qword_10023C320, &qword_1001BB328);
  *(v3 + 168) = v7;
  *(v3 + 176) = *(v7 - 8);
  *(v3 + 184) = swift_task_alloc();
  sub_10000CDE0(&qword_10023C328, &qword_1001BB330);
  *(v3 + 192) = swift_task_alloc();
  v8 = sub_10000CDE0(&qword_10023C330, &qword_1001BB338);
  *(v3 + 200) = v8;
  *(v3 + 208) = *(v8 - 8);
  *(v3 + 216) = swift_task_alloc();
  v9 = sub_10000CDE0(&qword_10023C338, &qword_1001BB340);
  *(v3 + 224) = v9;
  *(v3 + 232) = *(v9 - 8);
  *(v3 + 240) = swift_task_alloc();
  sub_10000CDE0(&qword_10023C340, qword_1001BB348);
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_1000A81C0, 0, 0);
}

uint64_t sub_1000A81C0()
{
  v1 = v0[32];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[9];
  v8 = *(v6 + 56);
  v0[33] = v8;
  v0[34] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9 = v8(v1, 1, 1, v5);
  v7(v9);
  AsyncValueSequence.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v10 = sub_1000A8F44();
  v11 = swift_task_alloc();
  v0[35] = v11;
  *v11 = v0;
  v11[1] = sub_1000A82EC;
  v12 = v0[28];
  v13 = v0[24];

  return dispatch thunk of AsyncIteratorProtocol.next()(v13, v12, v10);
}

uint64_t sub_1000A82EC()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1000A8A8C;
  }

  else
  {
    v2 = sub_1000A8400;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A841C()
{
  v1 = *(v0 + 192);
  if ((*(*(v0 + 176) + 48))(v1, 1, *(v0 + 168)) == 1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v4 = *(v0 + 120);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    v5 = Logger.general.unsafeMutableAddressor();
    (*(v3 + 16))(v2, v5, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Sequence abruptly ended or timed out without returning a value", v8, 2u);
    }

    v9 = *(v0 + 256);
    v11 = *(v0 + 128);
    v10 = *(v0 + 136);
    v12 = *(v0 + 120);
    v13 = *(v0 + 88);
    v14 = *(v0 + 96);

    (*(v11 + 8))(v10, v12);
    if (!(*(v14 + 48))(v9, 1, v13))
    {
      v37 = *(v0 + 112);
      v38 = *(v0 + 88);
      v39 = *(v0 + 96);
      (*(v39 + 16))(v37, *(v0 + 256), v38);
      AccountCachedServerData.CachedValue.value.getter();
      (*(v39 + 8))(v37, v38);
      v36 = *(v0 + 24);
      if (v36)
      {
        v49 = *(v0 + 16);
LABEL_22:
        sub_10000DAF8(*(v0 + 256), &qword_10023C340, qword_1001BB348);

        v44 = *(v0 + 8);

        return v44(v49, v36);
      }
    }

    sub_1000A7E24();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
LABEL_8:
    sub_10000DAF8(*(v0 + 256), &qword_10023C340, qword_1001BB348);

    v23 = *(v0 + 8);

    return v23();
  }

  sub_1000A8FA8(v1, *(v0 + 184));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v0 + 232);
    v16 = *(v0 + 240);
    v18 = *(v0 + 224);
    v19 = *(v0 + 160);
    v20 = *(v0 + 144);
    v21 = *(*(v0 + 152) + 32);
    v21(v19, *(v0 + 184), v20);
    sub_1000A9018(&qword_10023C350, &type metadata accessor for AccountCachedServerData.Error, &protocol conformance descriptor for AccountCachedServerData.Error);
    swift_willThrowTypedImpl();
    swift_allocError();
    v21(v22, v19, v20);
    (*(v17 + 8))(v16, v18);
    goto LABEL_8;
  }

  v25 = *(v0 + 264);
  v26 = *(v0 + 248);
  v27 = *(v0 + 256);
  v28 = *(v0 + 88);
  v29 = *(v0 + 96);
  v30 = *(v0 + 296);
  (*(v29 + 32))(v26, *(v0 + 184), v28);
  v25(v26, 0, 1, v28);
  sub_1000A9060(v26, v27);
  v31 = (*(v29 + 48))(v27, 1, v28);
  if (v30)
  {
    if (v31)
    {
      goto LABEL_25;
    }

    v32 = *(v0 + 112);
    v33 = *(v0 + 88);
    v34 = *(v0 + 96);
    (*(v34 + 16))(v32, *(v0 + 256), v33);
    AccountCachedServerData.CachedValue.value.getter();
    (*(v34 + 8))(v32, v33);
    v35 = *(v0 + 48);
    v36 = *(v0 + 56);
  }

  else
  {
    if (v31)
    {
      goto LABEL_25;
    }

    (*(*(v0 + 96) + 16))(*(v0 + 104), *(v0 + 256), *(v0 + 88));
    v40 = AccountCachedServerData.CachedValue.isStale.getter();
    v42 = *(v0 + 96);
    v41 = *(v0 + 104);
    v43 = *(v0 + 88);
    if (v40)
    {
      (*(v42 + 8))(*(v0 + 104), *(v0 + 88));
      v35 = 0;
      v36 = 0;
    }

    else
    {
      AccountCachedServerData.CachedValue.value.getter();
      (*(v42 + 8))(v41, v43);
      v35 = *(v0 + 32);
      v36 = *(v0 + 40);
    }
  }

  if (v36)
  {
    v49 = v35;
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    goto LABEL_22;
  }

LABEL_25:
  v45 = sub_1000A8F44();
  v46 = swift_task_alloc();
  *(v0 + 280) = v46;
  *v46 = v0;
  v46[1] = sub_1000A82EC;
  v47 = *(v0 + 224);
  v48 = *(v0 + 192);

  return dispatch thunk of AsyncIteratorProtocol.next()(v48, v47, v45);
}

uint64_t sub_1000A8A8C()
{
  *(v0 + 64) = *(v0 + 288);
  sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1000A8B18(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for ContinuousClock();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000A8BD8, 0, 0);
}

uint64_t sub_1000A8BD8()
{
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = sub_1000A9018(&qword_10023E100, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  *v1 = v0;
  v1[1] = sub_1000A8CCC;
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);

  return static Task<>.sleep<A>(until:tolerance:clock:)(v4, v0 + 16, v3, v5, v2);
}

uint64_t sub_1000A8CCC()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  if (v0)
  {
    v3 = sub_1000A8EE0;
  }

  else
  {
    v3 = sub_1000A8E10;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000A8E10()
{
  type metadata accessor for CancellationError();
  sub_1000A9018(&qword_10023C310, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
  swift_allocError();
  CancellationError.init()();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A8EE0()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1000A8F44()
{
  result = qword_10023C348;
  if (!qword_10023C348)
  {
    sub_10000CCC0(&qword_10023C338, &qword_1001BB340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C348);
  }

  return result;
}

uint64_t sub_1000A8FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023C320, &qword_1001BB328);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A9018(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000A9060(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023C340, qword_1001BB348);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A90E0(uint64_t a1)
{
  result = sub_1000A7E24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A910C()
{
  result = qword_10023C358;
  if (!qword_10023C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C358);
  }

  return result;
}

unint64_t sub_1000A9168()
{
  result = qword_10023C360;
  if (!qword_10023C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C360);
  }

  return result;
}

unint64_t sub_1000A91C0()
{
  result = qword_10023C368;
  if (!qword_10023C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C368);
  }

  return result;
}

unint64_t sub_1000A9214(uint64_t a1)
{
  *(a1 + 8) = sub_10003BF98();
  result = sub_1000A9244();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000A9244()
{
  result = qword_10023C3B8;
  if (!qword_10023C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C3B8);
  }

  return result;
}

uint64_t sub_1000A9298(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023C3E8, &qword_1001BB598);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000DA7C(a1, a1[3]);
  sub_1000A91C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000A9438(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEE006761745F6E6FLL;
  v3 = 0x69737265766E6F63;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x69737265766E6F63;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v4 == 1)
  {
    v6 = 0xEE006761745F6E6FLL;
  }

  else
  {
    v6 = 0x80000001001CA620;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001001CA000;
  }

  if (*a2 != 1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001001CA620;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001001CA000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000A951C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000A95D4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000A9678(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000A972C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A9A68(*a1);
  *a2 = result;
  return result;
}

void sub_1000A975C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006761745F6E6FLL;
  v4 = 0x69737265766E6F63;
  if (v2 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001001CA620;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v5)
  {
    v3 = 0x80000001001CA000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1000A97D0()
{
  v1 = 0x69737265766E6F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

unint64_t sub_1000A9840@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A9A68(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000A9878(uint64_t a1)
{
  v2 = sub_1000A91C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A98B4(uint64_t a1)
{
  v2 = sub_1000A91C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000A98F0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000A9AB4(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

unint64_t sub_1000A9954()
{
  result = qword_10023C3C0;
  if (!qword_10023C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C3C0);
  }

  return result;
}

unint64_t sub_1000A99AC()
{
  result = qword_10023C3C8;
  if (!qword_10023C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C3C8);
  }

  return result;
}

unint64_t sub_1000A9A04()
{
  result = qword_10023C3D0;
  if (!qword_10023C3D0)
  {
    sub_10000CCC0(&qword_10023C3D8, &qword_1001BB550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C3D0);
  }

  return result;
}

unint64_t sub_1000A9A68(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215AD8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000A9AB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023C3E0, &qword_1001BB590);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_1000A91C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v17 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = 1;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = 2;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_10000DB58(a1);
  *a2 = 0;
  *(a2 + 8) = 1;
  v12 = v14;
  *(a2 + 16) = v9;
  *(a2 + 24) = v12;
  *(a2 + 32) = v10;
  return result;
}

uint64_t sub_1000A9CA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A9CC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1000A9D0C()
{
  result = qword_10023C3F0;
  if (!qword_10023C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C3F0);
  }

  return result;
}

uint64_t sub_1000A9D70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_1000A9E10();
}

uint64_t sub_1000A9E2C()
{
  v9 = v0;
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v1 = qword_10023FC50;
  v5[3] = &type metadata for SnoutStoryMetrics;
  v5[4] = &off_100216E60;
  v2 = swift_allocObject();
  v5[0] = v2;
  *(v2 + 40) = &type metadata for AMSDogBag;
  *(v2 + 48) = &off_100222F48;
  v7 = &type metadata for AMSDogBag;
  v8 = &off_100222F48;
  sub_1000AA134(v1, v5, v6, v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 808) = v3;
  *v3 = v0;
  v3[1] = sub_1000A9F4C;

  return sub_1000AA664();
}

uint64_t sub_1000A9F4C()
{

  return _swift_task_switch(sub_1000AA048, 0, 0);
}

uint64_t sub_1000AA048()
{
  sub_1000AA0E0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000AA0A8()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000AA134@<X0>(void *a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a3;
  *a4 = 0xD000000000000010;
  *(a4 + 8) = 0x80000001001CB740;
  *(a4 + 16) = a1;
  *(a4 + 24) = 0xD00000000000001ALL;
  *(a4 + 32) = 0x80000001001CB760;
  *(a4 + 40) = a1;
  *(a4 + 48) = 0xD000000000000010;
  *(a4 + 56) = 0x80000001001CB320;
  v26 = 0x80000001001CB320;
  *(a4 + 64) = a1;
  *(a4 + 72) = 0x74735F6E656B6F74;
  *(a4 + 80) = 0xEB0000000065726FLL;
  *(a4 + 88) = a1;
  strcpy((a4 + 96), "postback_store");
  *(a4 + 111) = -18;
  *(a4 + 112) = a1;
  *(a4 + 120) = 0xD000000000000011;
  v27 = 0x80000001001CB3A0;
  *(a4 + 128) = 0x80000001001CB3A0;
  *(a4 + 136) = a1;
  v6 = a1;
  v28 = a2;
  sub_10000CE28(a2, v31);
  v7 = sub_100054C30(v31, v32);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = v6;
  v12 = sub_10016E7D8(0x74735F74756F6E73, 0xEB0000000065726FLL, v11, v9, 0);
  sub_10000DB58(v31);
  *(a4 + 144) = v12;
  *(a4 + 736) = type metadata accessor for SnoutManager(0);
  *(a4 + 744) = &off_100223858;
  *(a4 + 712) = v12;
  v13 = qword_100239CA8;
  v14 = v11;

  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_10023FC50;
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 sharedScheduler];
  *(a4 + 344) = &type metadata for ActivityManager;
  *(a4 + 352) = &off_100223E90;
  v19 = swift_allocObject();
  *(a4 + 320) = v19;
  v19[5] = &type metadata for BackgroundSystemTaskScheduler;
  v19[6] = &off_100217910;
  v19[2] = v18;
  *(a4 + 408) = &type metadata for AttributionKitCanineArbiter;
  *(a4 + 416) = &off_1002191C8;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v20 = qword_10023FC28;
  *(a4 + 448) = type metadata accessor for TaskGreyhound(0);
  *(a4 + 456) = &off_1002169F0;
  *(a4 + 424) = v20;
  *(a4 + 488) = &type metadata for LaunchServicesRecordFactory;
  *(a4 + 496) = &off_10021CBA8;
  *(a4 + 528) = &type metadata for AMSDogBag;
  *(a4 + 536) = &off_100222F48;

  v21 = [v16 sharedScheduler];
  v32 = &type metadata for ActivityManager;
  v33 = &off_100223E90;
  v22 = swift_allocObject();
  v31[0] = v22;
  v22[5] = &type metadata for BackgroundSystemTaskScheduler;
  v22[6] = &off_100217910;
  v22[2] = v21;
  v30[3] = &type metadata for LaunchServicesRecordFactory;
  v30[4] = &off_10021CBA8;
  sub_1000B8524(v31, v30, a4 + 544);
  *(a4 + 656) = &type metadata for AppStoreDaemonSKANInterop;
  *(a4 + 664) = &off_100222C60;
  sub_1000B42E0((a4 + 672));

  sub_10000DB58(v28);
  strcpy((a4 + 152), "postback_store");
  *(a4 + 167) = -18;
  *(a4 + 168) = v14;
  *(a4 + 176) = 0x63616274736F6867;
  *(a4 + 184) = 0xEF65726F74735F6BLL;
  *(a4 + 192) = v14;
  v23 = v26;
  *(a4 + 200) = 0xD000000000000010;
  *(a4 + 208) = v23;
  *(a4 + 216) = v14;
  *(a4 + 224) = 0x74735F6E656B6F74;
  *(a4 + 232) = 0xEB0000000065726FLL;
  *(a4 + 240) = v14;
  *(a4 + 248) = 0xD000000000000012;
  *(a4 + 256) = 0x80000001001CB340;
  *(a4 + 264) = v14;
  *(a4 + 272) = 0xD000000000000014;
  *(a4 + 280) = 0x80000001001CB360;
  *(a4 + 288) = v17;
  *(a4 + 296) = 0xD000000000000018;
  *(a4 + 304) = 0x80000001001CB380;
  *(a4 + 312) = v17;
  v24 = v27;
  *(a4 + 360) = 0xD000000000000011;
  *(a4 + 368) = v24;
  *(a4 + 376) = v14;
  return sub_10000DA64(v29, a4 + 752);
}

uint64_t sub_1000AA664()
{
  v1[265] = v0;
  v2 = type metadata accessor for Date();
  v1[271] = v2;
  v3 = *(v2 - 8);
  v1[277] = v3;
  v1[278] = *(v3 + 64);
  v1[279] = swift_task_alloc();
  v1[280] = swift_task_alloc();
  v1[281] = swift_task_alloc();
  v1[282] = swift_task_alloc();
  v1[283] = swift_task_alloc();
  v1[284] = swift_task_alloc();
  v1[285] = swift_task_alloc();
  v1[286] = swift_task_alloc();
  v1[287] = swift_task_alloc();
  v1[288] = swift_task_alloc();
  v1[289] = swift_task_alloc();
  v1[290] = swift_task_alloc();

  return _swift_task_switch(sub_1000AA7B0, 0, 0);
}

uint64_t sub_1000AA7B0(uint64_t a1)
{
  v2 = v1[265];
  static Date.now.getter();
  v3 = swift_task_alloc();
  v1[291] = v3;
  *(v3 + 16) = v2;
  swift_asyncLet_begin();
  v4 = swift_task_alloc();
  v1[292] = v4;
  *(v4 + 16) = v2;
  swift_asyncLet_begin();
  v5 = swift_task_alloc();
  v1[293] = v5;
  *(v5 + 16) = v2;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v1 + 2, v1 + 247, sub_1000AA8DC, v1 + 242);
}

uint64_t sub_1000AA948()
{
  v1 = *(v0 + 2312);
  v2 = *(v0 + 2304);
  v3 = *(v0 + 2216);
  v4 = *(v0 + 2168);
  v5 = *(v0 + 2120);
  *(v0 + 2368) = *(v0 + 2072);
  Date.init(timeIntervalSinceNow:)();
  v7 = *v5;
  v6 = v5[1];
  v8 = v5[2];
  v9 = *(v3 + 16);
  *(v0 + 2376) = v9;
  *(v0 + 2384) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v1, v4);
  v10 = *(v3 + 80);
  *(v0 + 2760) = v10;
  v11 = (v10 + 16) & ~v10;
  v12 = swift_allocObject();
  *(v0 + 2392) = v12;
  v13 = *(v3 + 32);
  *(v0 + 2400) = v13;
  *(v0 + 2408) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v13(v12 + v11, v2, v4);
  v14 = swift_task_alloc();
  *(v0 + 2416) = v14;
  *v14 = v0;
  v14[1] = sub_1000AAAF4;

  return sub_10010F0D0(sub_10010F0D0, sub_1000AEA14, v12, v7, v6, v8);
}

uint64_t sub_1000AAAF4()
{
  *(*v1 + 2424) = v0;

  if (v0)
  {
    v2 = sub_1000ACD60;
  }

  else
  {
    v2 = sub_1000AAC24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000AAC24()
{
  if (qword_100239D10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2400);
  v2 = *(v0 + 2376);
  v3 = *(v0 + 2304);
  v4 = *(v0 + 2168);
  v5 = *(v0 + 2120);
  v6 = (*(v0 + 2760) + 16) & ~*(v0 + 2760);
  v7 = sub_10000DAC0(v4, qword_10023FD60);
  v12 = v5[4];
  v13 = v5[3];
  v8 = v5[5];
  v2(v3, v7, v4);
  v9 = swift_allocObject();
  *(v0 + 2432) = v9;
  v1(v9 + v6, v3, v4);
  v10 = swift_task_alloc();
  *(v0 + 2440) = v10;
  *v10 = v0;
  v10[1] = sub_1000AADC0;

  return sub_10010F230(sub_10010F230, sub_1000AEAE8, v9, v13, v12, v8);
}

uint64_t sub_1000AADC0()
{
  *(*v1 + 2448) = v0;

  if (v0)
  {
    v2 = sub_1000ACF1C;
  }

  else
  {
    v2 = sub_1000AAEF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000AAEF0(__n128 a1)
{
  v11 = *(v1 + 2400);
  v2 = *(v1 + 2376);
  v3 = *(v1 + 2304);
  v4 = *(v1 + 2296);
  v5 = *(v1 + 2168);
  v6 = *(v1 + 2120);
  v7 = (*(v1 + 2760) + 16) & ~*(v1 + 2760);
  Date.addingTimeInterval(_:)();
  *(v1 + 2456) = v6[6];
  *(v1 + 2464) = v6[7];
  *(v1 + 2472) = v6[8];
  v2(v3, v4, v5);
  v8 = swift_allocObject();
  *(v1 + 2480) = v8;
  v11(v8 + v7, v3, v5);
  v9 = swift_task_alloc();
  *(v1 + 2488) = v9;
  *v9 = v1;
  v9[1] = sub_1000AB080;

  return (sub_10010E730)();
}

uint64_t sub_1000AB080()
{
  *(*v1 + 2496) = v0;

  if (v0)
  {
    v2 = sub_1000AD0D8;
  }

  else
  {
    v2 = sub_1000AB1B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000AB1B0(__n128 a1)
{
  v13 = *(v1 + 2400);
  v2 = *(v1 + 2376);
  v3 = *(v1 + 2304);
  v4 = *(v1 + 2288);
  v5 = *(v1 + 2168);
  v6 = (*(v1 + 2760) + 16) & ~*(v1 + 2760);
  Date.addingTimeInterval(_:)();
  v2(v3, v4, v5);
  v7 = swift_allocObject();
  *(v1 + 2504) = v7;
  v13(v7 + v6, v3, v5);
  v8 = swift_task_alloc();
  *(v1 + 2512) = v8;
  *v8 = v1;
  v8[1] = sub_1000AB31C;
  v9 = *(v1 + 2472);
  v10 = *(v1 + 2464);
  v11 = *(v1 + 2456);

  return sub_10010E730(sub_10010E730, sub_1000AEB40, v7, v11, v10, v9);
}

uint64_t sub_1000AB31C()
{
  *(*v1 + 2520) = v0;

  if (v0)
  {
    v2 = sub_1000AD2B0;
  }

  else
  {
    v2 = sub_1000AB44C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000AB44C(__n128 a1)
{
  v13 = *(v1 + 2400);
  v2 = *(v1 + 2376);
  v3 = *(v1 + 2304);
  v4 = *(v1 + 2280);
  v5 = *(v1 + 2168);
  v6 = (*(v1 + 2760) + 16) & ~*(v1 + 2760);
  Date.addingTimeInterval(_:)();
  v2(v3, v4, v5);
  v7 = swift_allocObject();
  *(v1 + 2528) = v7;
  v13(v7 + v6, v3, v5);
  v8 = swift_task_alloc();
  *(v1 + 2536) = v8;
  *v8 = v1;
  v8[1] = sub_1000AB5B8;
  v9 = *(v1 + 2472);
  v10 = *(v1 + 2464);
  v11 = *(v1 + 2456);

  return sub_10010E730(sub_10010E730, sub_1000AEB70, v7, v11, v10, v9);
}

uint64_t sub_1000AB5B8()
{
  *(*v1 + 2544) = v0;

  if (v0)
  {
    v2 = sub_1000AD4A0;
  }

  else
  {
    v2 = sub_1000AB6E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000AB6E8(__n128 a1)
{
  v11 = *(v1 + 2400);
  v2 = *(v1 + 2376);
  v3 = *(v1 + 2304);
  v4 = *(v1 + 2272);
  v5 = *(v1 + 2168);
  v6 = *(v1 + 2120);
  v7 = (*(v1 + 2760) + 16) & ~*(v1 + 2760);
  Date.addingTimeInterval(_:)();
  *(v1 + 2552) = v6[12];
  *(v1 + 2560) = v6[13];
  *(v1 + 2568) = v6[14];
  v2(v3, v4, v5);
  v8 = swift_allocObject();
  *(v1 + 2576) = v8;
  v11(v8 + v7, v3, v5);
  v9 = swift_task_alloc();
  *(v1 + 2584) = v9;
  *v9 = v1;
  v9[1] = sub_1000AB880;

  return (sub_10010EF70)();
}

uint64_t sub_1000AB880()
{
  *(*v1 + 2592) = v0;

  if (v0)
  {
    v2 = sub_1000AD6A8;
  }

  else
  {
    v2 = sub_1000AB9B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000AB9B0(__n128 a1)
{
  v13 = *(v1 + 2400);
  v2 = *(v1 + 2376);
  v3 = *(v1 + 2304);
  v4 = *(v1 + 2264);
  v5 = *(v1 + 2168);
  v6 = (*(v1 + 2760) + 16) & ~*(v1 + 2760);
  Date.addingTimeInterval(_:)();
  v2(v3, v4, v5);
  v7 = swift_allocObject();
  *(v1 + 2600) = v7;
  v13(v7 + v6, v3, v5);
  v8 = swift_task_alloc();
  *(v1 + 2608) = v8;
  *v8 = v1;
  v8[1] = sub_1000ABB24;
  v9 = *(v1 + 2568);
  v10 = *(v1 + 2560);
  v11 = *(v1 + 2552);

  return sub_10010EF70(sub_10010EF70, sub_1000AEC1C, v7, v11, v10, v9);
}

uint64_t sub_1000ABB24()
{
  *(*v1 + 2616) = v0;

  if (v0)
  {
    v2 = sub_1000AD8D0;
  }

  else
  {
    v2 = sub_1000ABC54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000ABC54()
{
  v1 = swift_task_alloc();
  *(v0 + 2624) = v1;
  *v1 = v0;
  v1[1] = sub_1000ABCF0;
  v2 = *(v0 + 2272);

  return sub_100121044(v2);
}

uint64_t sub_1000ABCF0()
{

  return _swift_task_switch(sub_1000ABDEC, 0, 0);
}

uint64_t sub_1000ABDEC(__n128 a1)
{
  v11 = *(v1 + 2400);
  v2 = *(v1 + 2376);
  v3 = *(v1 + 2304);
  v4 = *(v1 + 2256);
  v5 = *(v1 + 2168);
  v6 = *(v1 + 2120);
  v7 = (*(v1 + 2760) + 16) & ~*(v1 + 2760);
  Date.addingTimeInterval(_:)();
  *(v1 + 2632) = v6[9];
  *(v1 + 2640) = v6[10];
  *(v1 + 2648) = v6[11];
  v2(v3, v4, v5);
  v8 = swift_allocObject();
  *(v1 + 2656) = v8;
  v11(v8 + v7, v3, v5);
  v9 = swift_task_alloc();
  *(v1 + 2664) = v9;
  *v9 = v1;
  v9[1] = sub_1000ABF78;

  return (sub_10010EB50)();
}

uint64_t sub_1000ABF78()
{
  *(*v1 + 2672) = v0;

  if (v0)
  {
    v2 = sub_1000ADB10;
  }

  else
  {
    v2 = sub_1000AC0A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000AC0A8(__n128 a1)
{
  v13 = *(v1 + 2400);
  v2 = *(v1 + 2376);
  v3 = *(v1 + 2304);
  v4 = *(v1 + 2248);
  v5 = *(v1 + 2168);
  v6 = (*(v1 + 2760) + 16) & ~*(v1 + 2760);
  Date.addingTimeInterval(_:)();
  v2(v3, v4, v5);
  v7 = swift_allocObject();
  *(v1 + 2680) = v7;
  v13(v7 + v6, v3, v5);
  v8 = swift_task_alloc();
  *(v1 + 2688) = v8;
  *v8 = v1;
  v8[1] = sub_1000AC214;
  v9 = *(v1 + 2648);
  v10 = *(v1 + 2640);
  v11 = *(v1 + 2632);

  return sub_10010EB50(sub_10010EB50, sub_1000AED08, v7, v11, v10, v9);
}

uint64_t sub_1000AC214()
{
  *(*v1 + 2696) = v0;

  if (v0)
  {
    v2 = sub_1000ADD70;
  }

  else
  {
    v2 = sub_1000AC344;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000AC344(__n128 a1)
{
  v10 = *(v1 + 2400);
  v2 = *(v1 + 2376);
  v3 = *(v1 + 2304);
  v4 = *(v1 + 2240);
  v5 = *(v1 + 2168);
  v6 = (*(v1 + 2760) + 16) & ~*(v1 + 2760);
  Date.addingTimeInterval(_:)();
  v2(v3, v4, v5);
  v7 = swift_allocObject();
  *(v1 + 2704) = v7;
  v10(v7 + v6, v3, v5);
  v8 = swift_task_alloc();
  *(v1 + 2712) = v8;
  *v8 = v1;
  v8[1] = sub_1000AC4C4;

  return (sub_10010E890)();
}

uint64_t sub_1000AC4C4()
{
  *(*v1 + 2720) = v0;

  if (v0)
  {
    v2 = sub_1000ADFEC;
  }

  else
  {
    v2 = sub_1000AC5F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000AC5F4(__n128 a1)
{
  v2 = v1[265];
  Date.addingTimeInterval(_:)();
  v1[341] = *(v2 + 144);
  v3 = swift_task_alloc();
  v1[342] = v3;
  *v3 = v1;
  v3[1] = sub_1000AC6AC;
  v4 = v1[288];

  return sub_10016AFAC(v4);
}

uint64_t sub_1000AC6AC()
{

  return _swift_task_switch(sub_1000AC7A8, 0, 0);
}

uint64_t sub_1000AC7A8(__n128 a1)
{
  Date.addingTimeInterval(_:)();
  v2 = swift_task_alloc();
  *(v1 + 2744) = v2;
  *v2 = v1;
  v2[1] = sub_1000AC858;
  v3 = *(v1 + 2232);

  return sub_10016B978(v3);
}

uint64_t sub_1000AC858()
{

  return _swift_task_switch(sub_1000AC954, 0, 0);
}

uint64_t sub_1000AC954()
{
  v1 = v0[288];
  v12 = v0[287];
  v13 = v0[289];
  v10 = v0[285];
  v11 = v0[286];
  v2 = v0[284];
  v3 = v0[283];
  v4 = v0[282];
  v5 = v0[281];
  v6 = v0[280];
  v7 = v0[271];
  v8 = *(v0[277] + 8);
  v8(v0[279], v7);
  v8(v1, v7);
  v8(v6, v7);
  v8(v5, v7);
  v8(v4, v7);
  v8(v3, v7);
  v8(v2, v7);
  v8(v10, v7);
  v8(v11, v7);
  v8(v12, v7);
  v8(v13, v7);
  v0[344] = v8;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000ACB10()
{

  return _swift_asyncLet_finish(v0 + 656, v0 + 2024, sub_1000ACB7C, v0 + 2128);
}

uint64_t sub_1000ACB98()
{

  return _swift_asyncLet_finish(v0 + 16, v0 + 1976, sub_1000ACC04, v0 + 2176);
}

uint64_t sub_1000ACC20()
{
  v1 = v0[344];
  v2 = v0[290];
  v3 = v0[271];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000ACD60()
{
  v1 = *(v0[277] + 8);
  v1(v0[289], v0[271]);
  if (qword_100239CF0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000DAC0(v2, qword_10023FD00);
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
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to clear stale entities: %@", v5, 0xCu);
    sub_1000AEA80(v6);
  }

  else
  {
  }

  v0[344] = v1;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000ACF1C()
{
  v1 = *(v0[277] + 8);
  v1(v0[289], v0[271]);
  if (qword_100239CF0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000DAC0(v2, qword_10023FD00);
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
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to clear stale entities: %@", v5, 0xCu);
    sub_1000AEA80(v6);
  }

  else
  {
  }

  v0[344] = v1;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000AD0D8()
{
  v1 = v0[289];
  v2 = v0[271];
  v3 = *(v0[277] + 8);
  v3(v0[287], v2);
  v3(v1, v2);
  if (qword_100239CF0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000DAC0(v4, qword_10023FD00);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to clear stale entities: %@", v7, 0xCu);
    sub_1000AEA80(v8);
  }

  else
  {
  }

  v0[344] = v3;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000AD2B0()
{
  v1 = v0[289];
  v2 = v0[287];
  v3 = v0[271];
  v4 = *(v0[277] + 8);
  v4(v0[286], v3);
  v4(v2, v3);
  v4(v1, v3);
  if (qword_100239CF0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000DAC0(v5, qword_10023FD00);
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
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to clear stale entities: %@", v8, 0xCu);
    sub_1000AEA80(v9);
  }

  else
  {
  }

  v0[344] = v4;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000AD4A0()
{
  v1 = v0[289];
  v2 = v0[287];
  v3 = v0[286];
  v4 = v0[271];
  v5 = *(v0[277] + 8);
  v5(v0[285], v4);
  v5(v3, v4);
  v5(v2, v4);
  v5(v1, v4);
  if (qword_100239CF0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000DAC0(v6, qword_10023FD00);
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
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to clear stale entities: %@", v9, 0xCu);
    sub_1000AEA80(v10);
  }

  else
  {
  }

  v0[344] = v5;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000AD6A8()
{
  v1 = v0[289];
  v2 = v0[287];
  v3 = v0[286];
  v4 = v0[285];
  v5 = v0[271];
  v6 = *(v0[277] + 8);
  v6(v0[284], v5);
  v6(v4, v5);
  v6(v3, v5);
  v6(v2, v5);
  v6(v1, v5);
  if (qword_100239CF0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000DAC0(v7, qword_10023FD00);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to clear stale entities: %@", v10, 0xCu);
    sub_1000AEA80(v11);
  }

  else
  {
  }

  v0[344] = v6;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000AD8D0()
{
  v1 = v0[289];
  v2 = v0[287];
  v3 = v0[286];
  v4 = v0[285];
  v5 = v0[284];
  v6 = v0[271];
  v7 = *(v0[277] + 8);
  v7(v0[283], v6);
  v7(v5, v6);
  v7(v4, v6);
  v7(v3, v6);
  v7(v2, v6);
  v7(v1, v6);
  if (qword_100239CF0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000DAC0(v8, qword_10023FD00);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to clear stale entities: %@", v11, 0xCu);
    sub_1000AEA80(v12);
  }

  else
  {
  }

  v0[344] = v7;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000ADB10()
{
  v1 = v0[289];
  v2 = v0[287];
  v3 = v0[286];
  v4 = v0[285];
  v5 = v0[284];
  v6 = v0[283];
  v7 = v0[271];
  v8 = *(v0[277] + 8);
  v8(v0[282], v7);
  v8(v6, v7);
  v8(v5, v7);
  v8(v4, v7);
  v8(v3, v7);
  v8(v2, v7);
  v8(v1, v7);
  if (qword_100239CF0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000DAC0(v9, qword_10023FD00);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to clear stale entities: %@", v12, 0xCu);
    sub_1000AEA80(v13);
  }

  else
  {
  }

  v0[344] = v8;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000ADD70()
{
  v16 = v0[289];
  v1 = v0[287];
  v2 = v0[286];
  v3 = v0[285];
  v4 = v0[284];
  v5 = v0[283];
  v6 = v0[282];
  v7 = v0[271];
  v8 = *(v0[277] + 8);
  v8(v0[281], v7);
  v8(v6, v7);
  v8(v5, v7);
  v8(v4, v7);
  v8(v3, v7);
  v8(v2, v7);
  v8(v1, v7);
  v8(v16, v7);
  if (qword_100239CF0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000DAC0(v9, qword_10023FD00);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to clear stale entities: %@", v12, 0xCu);
    sub_1000AEA80(v13);
  }

  else
  {
  }

  v0[344] = v8;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000ADFEC()
{
  v16 = v0[287];
  v17 = v0[289];
  v1 = v0[286];
  v2 = v0[285];
  v3 = v0[284];
  v4 = v0[283];
  v5 = v0[282];
  v6 = v0[281];
  v7 = v0[271];
  v8 = *(v0[277] + 8);
  v8(v0[280], v7);
  v8(v6, v7);
  v8(v5, v7);
  v8(v4, v7);
  v8(v3, v7);
  v8(v2, v7);
  v8(v1, v7);
  v8(v16, v7);
  v8(v17, v7);
  if (qword_100239CF0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000DAC0(v9, qword_10023FD00);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "Failed to clear stale entities: %@", v12, 0xCu);
    sub_1000AEA80(v13);
  }

  else
  {
  }

  v0[344] = v8;

  return _swift_asyncLet_finish(v0 + 162, v0 + 259, sub_1000ACAF4, v0 + 260);
}

uint64_t sub_1000AE280(uint64_t a1)
{
  *(v1 + 40) = a1;
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = sub_1000AE328;

  return sub_100158594(15);
}

uint64_t sub_1000AE328(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 32) = a2;
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  *(v3 + 56) = a2;

  return _swift_task_switch(sub_1000AE430, 0, 0);
}

uint64_t sub_1000AE430()
{
  v1 = 0x4143C68000000000;
  if ((*(v0 + 56) & 1) == 0)
  {
    v1 = *(v0 + 24);
  }

  **(v0 + 40) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1000AE468(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000152E0;

  return sub_1000AE280(a1);
}

uint64_t sub_1000AE508(uint64_t a1)
{
  *(v1 + 40) = a1;
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = sub_1000AE5B0;

  return sub_100158594(17);
}

uint64_t sub_1000AE5B0(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 32) = a2;
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  *(v3 + 56) = a2;

  return _swift_task_switch(sub_1000AE6B8, 0, 0);
}

uint64_t sub_1000AE6B8()
{
  v1 = 0x404E000000000000;
  if ((*(v0 + 56) & 1) == 0)
  {
    v1 = *(v0 + 24);
  }

  **(v0 + 40) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1000AE6EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000BD30;

  return sub_1000AE508(a1);
}

uint64_t sub_1000AE78C(uint64_t a1)
{
  *(v1 + 40) = a1;
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = sub_1000AE834;

  return sub_100158594(18);
}

uint64_t sub_1000AE834(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 32) = a2;
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  *(v3 + 56) = a2;

  return _swift_task_switch(sub_1000AE93C, 0, 0);
}

uint64_t sub_1000AE93C()
{
  v1 = 0x4000000000000000;
  if ((*(v0 + 56) & 1) == 0)
  {
    v1 = *(v0 + 24);
  }

  **(v0 + 40) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1000AE970(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000152E0;

  return sub_1000AE78C(a1);
}

void sub_1000AEA40(uint64_t a1, uint64_t a2)
{
  sub_10004EB24(a2, 0);
  if (!v2)
  {
    sub_10004EB24(a2, 1);
  }
}

uint64_t sub_1000AEA80(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_100239F10, &qword_1001B4FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000AED08()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = static ConversionType.allCasesSet.getter();
  sub_10009BCC0(v0 + v2, v3);
}

uint64_t sub_1000AEDA0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000AEED0()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000AEF10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 792))
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

uint64_t sub_1000AEF58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 792) = 1;
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

    *(result + 792) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000AF0A0()
{
  result = qword_10023C3F8;
  if (!qword_10023C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C3F8);
  }

  return result;
}

unint64_t sub_1000AF0F8()
{
  result = qword_10023C400;
  if (!qword_10023C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C400);
  }

  return result;
}

unint64_t sub_1000AF14C(uint64_t a1)
{
  *(a1 + 8) = sub_10003BFF8();
  result = sub_1000AF17C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000AF17C()
{
  result = qword_10023C450;
  if (!qword_10023C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C450);
  }

  return result;
}

unint64_t sub_1000AF1D0(char a1)
{
  result = 0x6C7074656B72616DLL;
  switch(a1)
  {
    case 1:
    case 11:
      result = 0x6B63616274736F70;
      break;
    case 2:
    case 13:
      result = 0xD000000000000012;
      break;
    case 3:
    case 10:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6F7774656E5F6461;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
    case 8:
      result = 0xD000000000000015;
      break;
    case 7:
    case 25:
      result = 0x69737265766E6F63;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 12:
      result = 0x5F746361706D6F63;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x6D69745F6B636F6CLL;
      break;
    case 16:
      result = 0xD000000000000016;
      break;
    case 17:
      result = 0x6E69775F646964;
      break;
    case 18:
      result = 0x65636E6575716573;
      break;
    case 19:
      result = 0x656B636F6C5F7369;
      break;
    case 20:
      result = 0x7265747369676572;
      break;
    case 21:
    case 24:
      result = 0xD000000000000014;
      break;
    case 22:
      result = 0x69737265766E6F63;
      break;
    case 23:
      result = 0x6D6E6F7269766E65;
      break;
    case 26:
      result = 0x5F7972746E756F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000AF554(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x657372616F63;
  v5 = 1701736302;
  if (v2 != 1)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1701734758;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0xE600000000000000;
  if (*a2 == 1)
  {
    v5 = 0x657372616F63;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v5;
  }

  else
  {
    v9 = 1701734758;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000AF62C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000AF6B8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000AF730(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000AF7B8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B2D80(*a1);
  *a2 = result;
  return result;
}

void sub_1000AF7E8(uint64_t *a1@<X8>)
{
  v2 = 1701734758;
  v3 = 0xE600000000000000;
  v4 = 0x657372616F63;
  if (*v1 != 1)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v5;
}

uint64_t sub_1000AF8E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 2003134838;
  }

  else
  {
    v3 = 0x6B63696C63;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 2003134838;
  }

  else
  {
    v5 = 0x6B63696C63;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000AF97C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000AF9F4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000AFA58(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000AFAD8(uint64_t *a1@<X8>)
{
  v2 = 2003134838;
  if (!*v1)
  {
    v2 = 0x6B63696C63;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000AFBBC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65706F6C65766564;
  }

  else
  {
    v3 = 0x726F7774654E6461;
  }

  if (v2)
  {
    v4 = 0xE90000000000006BLL;
  }

  else
  {
    v4 = 0xE900000000000072;
  }

  if (*a2)
  {
    v5 = 0x65706F6C65766564;
  }

  else
  {
    v5 = 0x726F7774654E6461;
  }

  if (*a2)
  {
    v6 = 0xE900000000000072;
  }

  else
  {
    v6 = 0xE90000000000006BLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000AFC68()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000AFCF0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000AFD64(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000AFDF4(uint64_t *a1@<X8>)
{
  v2 = 0x726F7774654E6461;
  if (*v1)
  {
    v2 = 0x65706F6C65766564;
  }

  v3 = 0xE90000000000006BLL;
  if (*v1)
  {
    v3 = 0xE900000000000072;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000AFEE8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000AF1D0(*a1);
  v5 = v4;
  if (v3 == sub_1000AF1D0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000AFF70()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000AF1D0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000AFFD4(uint64_t a1)
{
  sub_1000AF1D0(*v1);
  String.hash(into:)();
}

Swift::Int sub_1000B0028(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1000AF1D0(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000B0088@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B2D2C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000B00B8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000AF1D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000B00EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B2D2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B0130(uint64_t a1)
{
  v2 = sub_1000AF0F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B016C(uint64_t a1)
{
  v2 = sub_1000AF0F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B01A8(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000CDE0(&qword_10023A718, qword_1001BBA70);
  v6 = __chkstk_darwin(v5 - 8);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v42 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v42 - v12;
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v19 = __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v23 = &v42 - v22;
  if (*(v2 + 256))
  {
    v24 = 0;
    return v24 & 1;
  }

  v44 = v21;
  v45 = a1;
  v46 = v20;
  Date.init(timeIntervalSince1970:)();
  if (*(v2 + 192))
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      result = sub_1000B86A8();
      if (result)
      {
LABEL_20:
        v32 = *(v2 + 112);
        if (v32 == 2 || v32 == 1)
        {
          Date.addingTimeInterval(_:)();
          v33 = *(v17 + 56);
          v33(v15, 0, 1, v16);
        }

        else
        {
          if (v32)
          {
            v34 = *(v17 + 56);
            v34(v15, 1, 1, v16);
            v34(v13, 1, 1, v16);
            goto LABEL_27;
          }

          (*(v17 + 16))(v15, v23, v16);
          v33 = *(v17 + 56);
          v33(v15, 0, 1, v16);
        }

        Date.addingTimeInterval(_:)();
        v33(v13, 0, 1, v16);
LABEL_27:
        sub_1000B3C58(v15, v10);
        v35 = *(v17 + 48);
        if (v35(v10, 1, v16) == 1)
        {
          sub_1000B3CC8(v13);
          sub_1000B3CC8(v15);
          (*(v17 + 8))(v23, v16);
        }

        else
        {
          v43 = v15;
          v36 = *(v17 + 32);
          v37 = v46;
          v36(v46, v10, v16);
          v10 = v47;
          sub_1000B3C58(v13, v47);
          if (v35(v10, 1, v16) != 1)
          {
            v42 = v13;
            v39 = v44;
            v36(v44, v10, v16);
            sub_100070F78();
            if (dispatch thunk of static Comparable.< infix(_:_:)())
            {
              v24 = 0;
            }

            else
            {
              v24 = static Date.< infix(_:_:)();
            }

            v40 = v42;
            v41 = *(v17 + 8);
            v41(v39, v16);
            v41(v46, v16);
            sub_1000B3CC8(v40);
            sub_1000B3CC8(v43);
            v41(v23, v16);
            return v24 & 1;
          }

          v38 = *(v17 + 8);
          v38(v37, v16);
          sub_1000B3CC8(v13);
          sub_1000B3CC8(v43);
          v38(v23, v16);
        }

        sub_1000B3CC8(v10);
        v24 = 0;
        return v24 & 1;
      }
    }
  }

  else
  {

    result = sub_1000B86A8();
    if (result)
    {
      goto LABEL_20;
    }
  }

  if (*(a2 + 16) >= 3uLL)
  {
    v27 = a2;
  }

  else
  {
    v27 = &off_1002166B8;
  }

  v28 = v27[2];
  if (!v28)
  {
    __break(1u);
    goto LABEL_38;
  }

  v29 = v27[4];
  if (!is_mul_ok(v29, 0x18uLL))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!is_mul_ok(24 * v29, 0xE10uLL))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v28 == 1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v30 = v27[5];
  if (!is_mul_ok(v30, 0x18uLL))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!is_mul_ok(24 * v30, 0xE10uLL))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v28 < 3)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v31 = v27[6];
  if (!is_mul_ok(v31, 0x18uLL))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (is_mul_ok(24 * v31, 0xE10uLL))
  {
    goto LABEL_20;
  }

LABEL_45:
  __break(1u);
  return result;
}

void sub_1000B083C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 171) = 1;
  Date.timeIntervalSince1970.getter();
  v8 = v7 * 1000.0;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v8 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v8 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v2 + 264) = v8;
  *(v2 + 272) = 0;
  sub_1000F4FB4(*(v2 + 112), *(v2 + 192), v6);
  Date.timeIntervalSince1970.getter();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  v11 = v10 * 1000.0;
  if (COERCE__INT64(fabs(v10 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v11 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v11 < 1.84467441e19)
  {
    *(v2 + 280) = v11;
    *(v2 + 288) = 0;
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1000B09EC(uint64_t a1, char *a2, unint64_t a3)
{
  v4 = v3;
  v61 = a2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v60 = &v55 - v12;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v58 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v59 = &v55 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v55 - v20;
  v22 = *(v4 + 256);
  v63 = v19;
  if (v22)
  {
    v56 = v11;
    v57 = a3;
    updated = type metadata accessor for PostbackUpdateData(0);
    (*(v14 + 16))(v21, a1 + *(updated + 32), v13);
    Date.timeIntervalSince1970.getter();
    v25 = v24 * 1000.0;
    if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v25 > -1.0)
    {
      if (v25 < 1.84467441e19)
      {
        *(v4 + 248) = v25;
        *(v4 + 256) = 0;
        v11 = v56;
        a3 = v57;
        goto LABEL_7;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_24;
  }

  Date.init(timeIntervalSince1970:)();
LABEL_7:
  v62 = v14;
  v27 = *(v4 + 32);
  v26 = *(v4 + 40);
  if (*(v4 + 171))
  {
    v61 = v21;
    v28 = Logger.postback.unsafeMutableAddressor();
    (*(v8 + 16))(v11, v28, v7);

    v29 = v8;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v7;
      v33 = v27;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v65[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_10017AD04(v33, v26, v65);
      _os_log_impl(&_mh_execute_header, v30, v31, "Postback %s is locked", v34, 0xCu);
      sub_10000DB58(v35);

      (*(v29 + 8))(v11, v32);
    }

    else
    {

      (*(v29 + 8))(v11, v7);
    }

LABEL_17:
    (*(v62 + 8))(v61, v63);
    return;
  }

  v57 = *(v4 + 32);
  v36 = v8;
  memcpy(v65, v4, 0x121uLL);
  v37 = *(type metadata accessor for PostbackUpdateData(0) + 32);
  if ((sub_1000B01A8(a1 + v37, v61) & 1) == 0)
  {
    v61 = v21;
    v38 = Logger.postback.unsafeMutableAddressor();
    v39 = v60;
    (*(v8 + 16))(v60, v38, v7);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v64 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_10017AD04(v57, v26, &v64);
      _os_log_impl(&_mh_execute_header, v40, v41, "Postback %s is not currently active", v42, 0xCu);
      sub_10000DB58(v43);
    }

    (*(v36 + 8))(v39, v7);
    goto LABEL_17;
  }

  *(v4 + 170) = 1;
  *(v4 + 120) = *a1;
  *(v4 + 128) = 0;
  *(v4 + 129) = *(a1 + 8);
  if (*(a1 + 9) == 1)
  {
    sub_1000B083C(a1 + v37, a3);
    (*(v62 + 8))(v21, v63);
    return;
  }

  v44 = v65[14];
  v45 = v65[24];
  v46 = v58;
  sub_1000F52D8(v65[14], v61, a3, v65[24], v58);
  v47 = v59;
  sub_1000F4FB4(v44, v45, v59);
  v48 = *(v62 + 8);
  v49 = v46;
  v50 = v21;
  v51 = v63;
  v48(v49, v63);
  Date.timeIntervalSince1970.getter();
  v53 = v52;
  v48(v47, v51);
  v48(v50, v51);
  v54 = v53 * 1000.0;
  if (COERCE__INT64(fabs(v53 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_25;
  }

  if (v54 <= -1.0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v54 < 1.84467441e19)
  {
    *(v4 + 280) = v54;
    *(v4 + 288) = 0;
    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1000B1054(unint64_t a1, _UNKNOWN **a2, uint64_t a3)
{
  v4 = v3;
  v53 = a3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v52 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v45 - v16;
  __chkstk_darwin(v15);
  if (*(v4 + 170))
  {
    v19 = *(v4 + 32);
    v20 = *(v4 + 40);
    v21 = Logger.postback.unsafeMutableAddressor();
    (*(v8 + 16))(v10, v21, v7);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v54 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_10017AD04(v19, v20, &v54);
      _os_log_impl(&_mh_execute_header, v22, v23, "Runner up %s has already been registered", v24, 0xCu);
      sub_10000DB58(v25);
    }

    return (*(v8 + 8))(v10, v7);
  }

  v51 = &v45 - v18;
  *(v4 + 170) = 1;
  v27 = *(type metadata accessor for PostbackUpdateData(0) + 32);
  Date.timeIntervalSince1970.getter();
  v29 = v28 * 1000.0;
  v30 = *&v29 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_47;
  }

  if (v29 <= -1.0)
  {
    goto LABEL_48;
  }

  v30 = 0x43F0000000000000;
  if (v29 >= 1.84467441e19)
  {
    goto LABEL_49;
  }

  *(v4 + 248) = v29;
  *(v4 + 256) = 0;
  v48 = *(v4 + 192);
  v49 = a1;
  v50 = v27;
  if ((v48 & 1) == 0)
  {

LABEL_12:
    if (sub_1000B86A8())
    {
      v27 = v12;
      a1 = v11;
      v54 = _swiftEmptyArrayStorage;
      sub_100147204(0, 3, 0);
      v30 = 3;
      if (is_mul_ok(3uLL, 0x3CuLL))
      {
        v11 = 180;
        v32 = v54;
        v12 = v54[2];
        v30 = v54[3];
        v7 = v12 + 1;
        if (v12 < v30 >> 1)
        {
          goto LABEL_15;
        }

        goto LABEL_55;
      }

      goto LABEL_46;
    }

    goto LABEL_22;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
    goto LABEL_12;
  }

LABEL_22:
  if (a2[2] < 3)
  {
    a2 = &off_1002166B8;
  }

  v7 = a2[2];
  v32 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v46 = v12;
    v47 = v11;
    v54 = _swiftEmptyArrayStorage;

    sub_100147204(0, v7, 0);
    v37 = 4;
    v32 = v54;
    v12 = 86400;
    do
    {
      v11 = a2[v37];
      v30 = (v11 * 0x15180uLL) >> 64;
      if (!is_mul_ok(v11, 0x15180uLL))
      {
        __break(1u);
        goto LABEL_46;
      }

      v54 = v32;
      a1 = v32[2];
      v38 = v32[3];
      v27 = a1 + 1;
      if (a1 >= v38 >> 1)
      {
        sub_100147204((v38 > 1), a1 + 1, 1);
        v32 = v54;
      }

      v32[2] = v27;
      v32[a1 + 4] = 86400 * v11;
      ++v37;
      --v7;
    }

    while (v7);

    v12 = v46;
    v11 = v47;
  }

  v36 = v52;
  while (1)
  {
    v30 = v32[2];
    a1 = v50;
    if (v30)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      sub_100147204((v30 > 1), v7, 1);
      v32 = v54;
LABEL_15:
      v32[2] = v7;
      v32[v12 + 4] = v11;
      v30 = 6;
      if (is_mul_ok(6uLL, 0x3CuLL))
      {
        v11 = 360;
        v54 = v32;
        v33 = v32[3];
        if (v7 >= v33 >> 1)
        {
          sub_100147204((v33 > 1), v12 + 2, 1);
          v32 = v54;
        }

        v32[2] = v12 + 2;
        v32[v7 + 4] = 360;
        v30 = 9;
        if (is_mul_ok(9uLL, 0x3CuLL))
        {
          break;
        }
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
    }

    v54 = v32;
    v35 = v32[2];
    v34 = v32[3];
    v7 = v35 + 1;
    v36 = v52;
    if (v35 >= v34 >> 1)
    {
      sub_100147204((v34 > 1), v35 + 1, 1);
      v32 = v54;
    }

    v32[2] = v7;
    v32[v35 + 4] = 540;
    v11 = a1;
    v12 = v27;
  }

  Date.addingTimeInterval(_:)();
  if (v48)
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v39 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  if ((sub_1000B86A8() & 1) == 0)
  {
LABEL_39:
    Date.addingTimeInterval(_:)();
    v40 = &off_1002132A0;
    goto LABEL_40;
  }

  (*(v12 + 16))(v36, v17, v11);
  v40 = &off_1002132D0;
LABEL_40:
  v30 = v40[2];
  if (!v30)
  {
    goto LABEL_51;
  }

  v41 = *(v40 + 8);

  arc4random_uniform(v41);
  v27 = v51;
  Date.addingTimeInterval(_:)();
  a1 = v12 + 8;
  v12 = *(v12 + 8);
  (v12)(v36, v11);
  (v12)(v17, v11);
  Date.timeIntervalSince1970.getter();
  v43 = v42;
  result = (v12)(v27, v11);
  v44 = v43 * 1000.0;
  v30 = fabs(v43 * 1000.0);
  if (v30 > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_52;
  }

  if (v44 <= -1.0)
  {
    goto LABEL_53;
  }

  v30 = 0x43F0000000000000;
  if (v44 >= 1.84467441e19)
  {
    goto LABEL_54;
  }

  *(v4 + 280) = v44;
  *(v4 + 288) = 0;
  return result;
}

uint64_t sub_1000B17E0(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v4;
  v53 = a3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Date();
  v13 = __chkstk_darwin(v12);
  v14 = __chkstk_darwin(v13);
  v16 = &v44[-v15];
  v17 = __chkstk_darwin(v14);
  result = __chkstk_darwin(v17);
  if (*(v3 + 170))
  {
    v23 = Logger.postback.unsafeMutableAddressor();
    (*(v9 + 16))(v11, v23, v8);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Registered postback should not be imprinted", v26, 2u);
    }

    (*(v9 + 8))(v11, v8);
    sub_1000B3D30();
    swift_allocError();
    *v27 = 3;
    return swift_willThrow();
  }

  *(v3 + 232) = *(a1 + 96);
  if (*(v3 + 105) == 1)
  {
    return sub_1000B1F4C(a1, a2, v53);
  }

  *(v3 + 170) = *(a1 + 50);
  v28 = *(a1 + 112);
  *(v3 + 248) = *(a1 + 104);
  *(v3 + 256) = v28;
  if ((v28 & 1) == 0)
  {
    v48 = &v44[-v19];
    v49 = v22;
    v51 = result;
    v52 = v21;
    v50 = v20;
    Date.init(timeIntervalSince1970:)();
    v47 = v3;
    LODWORD(v29) = *(v3 + 192);
    if (v29)
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
LABEL_22:
        if (*(a2 + 16) >= 3uLL)
        {
          v11 = a2;
        }

        else
        {
          v11 = &off_1002166B8;
        }

        a1 = *(v11 + 16);
        v32 = _swiftEmptyArrayStorage;
        if (a1)
        {
          v45 = v29;
          v46 = v4;
          v54 = _swiftEmptyArrayStorage;

          sub_100147204(0, a1, 0);
          v9 = 32;
          v32 = v54;
          LOBYTE(v29) = 0x80;
          do
          {
            v5 = *(v11 + v9);
            v31 = (v5 * 0x15180uLL) >> 64;
            if (!is_mul_ok(v5, 0x15180uLL))
            {
              __break(1u);
              goto LABEL_47;
            }

            v54 = v32;
            v36 = v32[2];
            v35 = v32[3];
            if (v36 >= v35 >> 1)
            {
              sub_100147204((v35 > 1), v36 + 1, 1);
              v32 = v54;
            }

            v32[2] = v36 + 1;
            v32[v36 + 4] = 86400 * v5;
            v9 += 8;
            --a1;
          }

          while (a1);

          v5 = v46;
          LOBYTE(v29) = v45;
        }

        while (1)
        {
          v31 = v32[2];
          if (v31)
          {
            break;
          }

          while (1)
          {
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            sub_100147204((v31 > 1), a1, 1);
            v32 = v54;
LABEL_15:
            v32[2] = a1;
            v32[v11 + 4] = v5;
            v31 = 6;
            if (is_mul_ok(6uLL, 0x3CuLL))
            {
              v5 = 360;
              v54 = v32;
              v33 = v32[3];
              v11 += 2;
              if (a1 >= v33 >> 1)
              {
                sub_100147204((v33 > 1), v11, 1);
                v32 = v54;
              }

              v32[2] = v11;
              v32[a1 + 4] = 360;
              v31 = 9;
              if (is_mul_ok(9uLL, 0x3CuLL))
              {
                break;
              }
            }

LABEL_47:
            __break(1u);
          }

          v54 = v32;
          v11 = v32[2];
          v34 = v32[3];
          a1 = v11 + 1;
          if (v11 >= v34 >> 1)
          {
            sub_100147204((v34 > 1), v11 + 1, 1);
            v32 = v54;
          }

          v32[2] = a1;
          v32[v11 + 4] = 540;
          v5 = v9;
        }

        Date.addingTimeInterval(_:)();
        a1 = v49 + 8;
        v11 = *(v49 + 8);
        (v11)(v16, v51);
        if (v29)
        {
          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v37 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
        }

        if (sub_1000B86A8())
        {
          (*(v49 + 16))(v50, v52, v51);
          v38 = &off_1002132D0;
LABEL_40:
          v31 = v38[2];
          if (!v31)
          {
            goto LABEL_49;
          }

          v39 = *(v38 + 8);

          arc4random_uniform(v39);
          v9 = v48;
          v40 = v50;
          Date.addingTimeInterval(_:)();
          v29 = v51;
          (v11)(v40, v51);
          (v11)(v52, v29);
          Date.timeIntervalSince1970.getter();
          v42 = v41;
          result = (v11)(v9, v29);
          v43 = v42 * 1000.0;
          v31 = fabs(v42 * 1000.0);
          if (v31 > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_50;
          }

          v31 = v47;
          if (v43 <= -1.0)
          {
            goto LABEL_51;
          }

          if (v43 >= 1.84467441e19)
          {
            goto LABEL_52;
          }

          *(v47 + 280) = v43;
          *(v31 + 288) = 0;
          return result;
        }

LABEL_39:
        Date.addingTimeInterval(_:)();
        v38 = &off_1002132A0;
        goto LABEL_40;
      }
    }

    else
    {
    }

    if (sub_1000B86A8())
    {
      v9 = v4;
      v54 = _swiftEmptyArrayStorage;
      sub_100147204(0, 3, 0);
      v31 = 3;
      if (is_mul_ok(3uLL, 0x3CuLL))
      {
        v5 = 180;
        v32 = v54;
        v11 = v54[2];
        v31 = v54[3];
        a1 = v11 + 1;
        if (v11 < v31 >> 1)
        {
          goto LABEL_15;
        }

        goto LABEL_53;
      }

      goto LABEL_47;
    }

    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1000B1F4C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v46 = a3;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v40 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v40 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v40 - v18;
  result = __chkstk_darwin(v17);
  v22 = &v40 - v21;
  v23 = *(a1 + 112);
  *(v3 + 248) = *(a1 + 104);
  *(v3 + 256) = v23;
  if (!*(v3 + 112))
  {
    *(v3 + 170) = *(a1 + 50);
    *(v3 + 120) = *(a1 + 40);
    *(v3 + 128) = *(a1 + 48);
    if ((*(a1 + 51) & 1) != 0 && (*(a1 + 128) & 1) == 0)
    {
      Date.init(timeIntervalSince1970:)();
      sub_1000B083C(v22, v46);
      return (*(v7 + 8))(v22, v6);
    }

    if ((v23 & 1) == 0)
    {
      Date.init(timeIntervalSince1970:)();
      v44 = v3;
      v45 = *(v3 + 192);
      if (v45)
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v24 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }

      if ((sub_1000B86A8() & 1) == 0)
      {
        goto LABEL_22;
      }

      v42 = v7;
      v43 = v19;
      v47 = _swiftEmptyArrayStorage;
      sub_100147204(0, 3, 0);
      v25 = 3;
      if (!is_mul_ok(3uLL, 0x3CuLL))
      {
        goto LABEL_45;
      }

      v19 = 180;
      v26 = v47;
      v7 = v47[2];
      v25 = v47[3];
      a2 = v7 + 1;
      if (v7 >= v25 >> 1)
      {
        goto LABEL_50;
      }

      while (1)
      {
        v26[2] = a2;
        v26[v7 + 4] = v19;
        v25 = 6;
        if (!is_mul_ok(6uLL, 0x3CuLL))
        {
          goto LABEL_45;
        }

        v19 = 360;
        v47 = v26;
        v27 = v26[3];
        if (a2 >= v27 >> 1)
        {
          sub_100147204((v27 > 1), v7 + 2, 1);
          v26 = v47;
        }

        v26[2] = v7 + 2;
        v26[a2 + 4] = 360;
        v25 = 9;
        if (!is_mul_ok(9uLL, 0x3CuLL))
        {
          goto LABEL_45;
        }

        v47 = v26;
        v29 = v26[2];
        v28 = v26[3];
        a2 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          sub_100147204((v28 > 1), v29 + 1, 1);
          v26 = v47;
        }

        v26[2] = a2;
        v26[v29 + 4] = 540;
        v7 = v42;
        v19 = v43;
        if (!v26[2])
        {
          while (1)
          {
            __break(1u);
LABEL_22:
            if (*(a2 + 16) < 3uLL)
            {
              a2 = &off_1002166B8;
            }

            v30 = *(a2 + 16);
            v31 = _swiftEmptyArrayStorage;
            if (v30)
            {
              break;
            }

LABEL_31:
            if (v31[2])
            {
              goto LABEL_32;
            }
          }

          v42 = v7;
          v43 = v19;
          v40 = v10;
          v41 = v6;
          v47 = _swiftEmptyArrayStorage;

          sub_100147204(0, v30, 0);
          v10 = 32;
          v31 = v47;
          v7 = 86400;
          while (1)
          {
            v19 = *(a2 + v10);
            v25 = (v19 * 0x15180uLL) >> 64;
            if (!is_mul_ok(v19, 0x15180uLL))
            {
              break;
            }

            v47 = v31;
            v6 = v31[2];
            v32 = v31[3];
            if (v6 >= v32 >> 1)
            {
              sub_100147204((v32 > 1), v6 + 1, 1);
              v31 = v47;
            }

            v31[2] = v6 + 1;
            v31[v6 + 4] = 86400 * v19;
            v10 += 8;
            if (!--v30)
            {

              v10 = v40;
              v6 = v41;
              v7 = v42;
              v19 = v43;
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

LABEL_32:

        Date.addingTimeInterval(_:)();
        a2 = *(v7 + 8);
        (a2)(v13, v6);
        if (v45)
        {
          v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v33 & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
        }

        if (sub_1000B86A8())
        {
          v34 = *(v7 + 16);
          v7 += 16;
          v34(v10, v16, v6);
          v35 = &off_1002132D0;
          goto LABEL_39;
        }

LABEL_38:
        Date.addingTimeInterval(_:)();
        v35 = &off_1002132A0;
LABEL_39:
        v25 = v35[2];
        if (!v25)
        {
          goto LABEL_46;
        }

        v36 = *(v35 + 8);

        arc4random_uniform(v36);
        Date.addingTimeInterval(_:)();
        (a2)(v10, v6);
        (a2)(v16, v6);
        Date.timeIntervalSince1970.getter();
        v38 = v37;
        result = (a2)(v19, v6);
        v39 = v38 * 1000.0;
        v25 = fabs(v38 * 1000.0);
        if (v25 > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_47;
        }

        v25 = v44;
        if (v39 <= -1.0)
        {
          goto LABEL_48;
        }

        if (v39 < 1.84467441e19)
        {
          *(v44 + 280) = v39;
          *(v25 + 288) = 0;
          return result;
        }

LABEL_49:
        __break(1u);
LABEL_50:
        sub_100147204((v25 > 1), a2, 1);
        v26 = v47;
      }
    }
  }

  return result;
}

uint64_t sub_1000B25C0(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023C498, &qword_1001BBA68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_1000AF0F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = v3[168];
    v11 = 5;
    sub_1000B3B5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v3[169];
    v11 = 6;
    sub_1000B3BB0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v3[104];
    v11 = 7;
    sub_100047180();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v3[129];
    v11 = 9;
    sub_100070F24();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 17;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 18;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 19;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 20;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = v3[172];
    v11 = 21;
    sub_1000B3C04();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = 22;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = v3[192];
    v11 = 23;
    sub_10004CEFC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = 24;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 25;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 26;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_1000B2BB0@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000B2DCC(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x121uLL);
  }

  return result;
}

unint64_t sub_1000B2C18()
{
  result = qword_10023C458;
  if (!qword_10023C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C458);
  }

  return result;
}

unint64_t sub_1000B2C70()
{
  result = qword_10023C460;
  if (!qword_10023C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C460);
  }

  return result;
}

unint64_t sub_1000B2CC8()
{
  result = qword_10023C468;
  if (!qword_10023C468)
  {
    sub_10000CCC0(&qword_10023C470, &qword_1001BBA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C468);
  }

  return result;
}

unint64_t sub_1000B2D2C(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1000B2D80(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215348, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void *sub_1000B2DCC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v73 = a2;
  v74 = sub_10000CDE0(&qword_10023C478, &qword_1001BBA60);
  v4 = *(v74 - 8);
  __chkstk_darwin(v74);
  v6 = &v33 - v5;
  v150 = 1;
  sub_10000DA7C(a1, a1[3]);
  sub_1000AF0F8();
  v151 = v6;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v7 = v4;
  v8 = a1;
  v9 = v73;
  LOBYTE(v76) = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v72 = v11;
  LOBYTE(v76) = 0;
  v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v71 = v12;
  LOBYTE(v76) = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v70 = a1;
  v64 = v13;
  LOBYTE(v76) = 3;
  v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v148 = v14 & 1;
  LOBYTE(v76) = 4;
  v62 = KeyedDecodingContainer.decode(_:forKey:)();
  v68 = v15;
  LOBYTE(v75[0]) = 5;
  sub_1000B3A28();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v61 = v76;
  LOBYTE(v75[0]) = 6;
  sub_1000B3A7C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v60 = v76;
  LOBYTE(v75[0]) = 7;
  sub_1000470F4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v58 = v76;
  LOBYTE(v76) = 8;
  v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v144 = v16 & 1;
  LOBYTE(v75[0]) = 9;
  sub_100070E98();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v17 = v76;
  LOBYTE(v76) = 10;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v67 = v19;
  v20 = v18;
  LOBYTE(v76) = 11;
  v57 = KeyedDecodingContainer.decode(_:forKey:)();
  v66 = v21;
  LOBYTE(v76) = 12;
  v56 = KeyedDecodingContainer.decode(_:forKey:)();
  v65 = v22;
  LOBYTE(v76) = 13;
  v55 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v76) = 14;
  v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v136 = v23 & 1;
  LOBYTE(v76) = 15;
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v134 = v24 & 1;
  LOBYTE(v76) = 16;
  v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v132 = v25 & 1;
  LOBYTE(v76) = 17;
  v50 = KeyedDecodingContainer.decode(_:forKey:)() == 1;
  LOBYTE(v76) = 18;
  v51 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v76) = 19;
  v49 = KeyedDecodingContainer.decode(_:forKey:)() == 1;
  LOBYTE(v76) = 20;
  v48 = KeyedDecodingContainer.decode(_:forKey:)() == 1;
  LOBYTE(v75[0]) = 21;
  sub_1000B3AD0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v46 = v76;
  LOBYTE(v76) = 22;
  v45 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = v26;
  LOBYTE(v75[0]) = 23;
  sub_10004DBC4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v43 = v76;
  LOBYTE(v76) = 24;
  v44 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v76) = 25;
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v138 = v27 & 1;
  v131 = 26;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v40 = v29;
  v41 = v28;
  (*(v7 + 8))(v151, v74);
  v75[0] = 0;
  v35 = v150;
  LOBYTE(v75[1]) = v150;
  *(&v75[1] + 1) = *v149;
  HIDWORD(v75[1]) = *&v149[3];
  v75[2] = v69;
  v75[3] = v71;
  v75[4] = v10;
  v75[5] = v72;
  v30 = v64;
  v75[6] = v63;
  v34 = v148;
  LOBYTE(v75[7]) = v148;
  *(&v75[7] + 1) = *v147;
  HIDWORD(v75[7]) = *&v147[3];
  v75[8] = v64;
  v75[9] = v20;
  v75[10] = v67;
  v75[11] = v62;
  v75[12] = v68;
  LOBYTE(v75[13]) = v58;
  BYTE1(v75[13]) = v50;
  *(&v75[13] + 2) = v145;
  HIWORD(v75[13]) = v146;
  v75[14] = v51;
  v75[15] = v59;
  LODWORD(v151) = v144;
  LOBYTE(v75[16]) = v144;
  v39 = v17;
  BYTE1(v75[16]) = v17;
  *(&v75[16] + 2) = v142;
  HIWORD(v75[16]) = v143;
  v75[17] = v56;
  v75[18] = v65;
  v75[19] = v57;
  v75[20] = v66;
  LOBYTE(v75[21]) = v61;
  BYTE1(v75[21]) = v60;
  BYTE2(v75[21]) = v48;
  BYTE3(v75[21]) = v49;
  BYTE4(v75[21]) = v46;
  HIBYTE(v75[21]) = v141;
  *(&v75[21] + 5) = v140;
  v75[22] = v45;
  v75[23] = v47;
  LOBYTE(v75[24]) = v43;
  HIDWORD(v75[24]) = *&v139[3];
  *(&v75[24] + 1) = *v139;
  v75[25] = v42;
  LODWORD(v74) = v138;
  LOBYTE(v75[26]) = v138;
  *(&v75[26] + 1) = *v137;
  HIDWORD(v75[26]) = *&v137[3];
  v75[27] = v41;
  v75[28] = v40;
  v75[29] = v44;
  v75[30] = v55;
  v75[31] = v54;
  *(&v75[32] + 1) = *v135;
  v38 = v136;
  LOBYTE(v75[32]) = v136;
  HIDWORD(v75[32]) = *&v135[3];
  v31 = v52;
  v75[33] = v53;
  *(&v75[34] + 1) = *v133;
  v36 = v134;
  LOBYTE(v75[34]) = v134;
  HIDWORD(v75[34]) = *&v133[3];
  v75[35] = v52;
  v37 = v132;
  LOBYTE(v75[36]) = v132;
  sub_1000B3B24(v75, &v76);
  sub_10000DB58(v8);
  v77 = v35;
  v79 = v69;
  v80 = v71;
  v81 = v10;
  v82 = v72;
  v83 = v63;
  v84 = v34;
  v86 = v30;
  v87 = v20;
  v88 = v67;
  v89 = v62;
  v90 = v68;
  v91 = v58;
  v92 = v50;
  *v78 = *v149;
  *&v78[3] = *&v149[3];
  *v85 = *v147;
  *&v85[3] = *&v147[3];
  v93 = v145;
  v94 = v146;
  v76 = 0;
  v95 = v51;
  v96 = v59;
  v97 = v151;
  v98 = v39;
  v99 = v142;
  v100 = v143;
  v101 = v56;
  v102 = v65;
  v103 = v57;
  v104 = v66;
  v105 = v61;
  v106 = v60;
  v107 = v48;
  v108 = v49;
  v109 = v46;
  v111 = v141;
  v110 = v140;
  v112 = v45;
  v113 = v47;
  v114 = v43;
  *&v115[3] = *&v139[3];
  *v115 = *v139;
  v116 = v42;
  v117 = v74;
  *&v118[3] = *&v137[3];
  *v118 = *v137;
  v119 = v41;
  v120 = v40;
  v121 = v44;
  v122 = v55;
  v123 = v54;
  v124 = v38;
  *v125 = *v135;
  *&v125[3] = *&v135[3];
  v126 = v53;
  v127 = v36;
  *v128 = *v133;
  *&v128[3] = *&v133[3];
  v129 = v31;
  v130 = v37;
  sub_10003C04C(&v76);
  return memcpy(v9, v75, 0x121uLL);
}

unint64_t sub_1000B3A28()
{
  result = qword_10023C480;
  if (!qword_10023C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C480);
  }

  return result;
}

unint64_t sub_1000B3A7C()
{
  result = qword_10023C488;
  if (!qword_10023C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C488);
  }

  return result;
}

unint64_t sub_1000B3AD0()
{
  result = qword_10023C490;
  if (!qword_10023C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C490);
  }

  return result;
}

unint64_t sub_1000B3B5C()
{
  result = qword_10023C4A0;
  if (!qword_10023C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4A0);
  }

  return result;
}

unint64_t sub_1000B3BB0()
{
  result = qword_10023C4A8;
  if (!qword_10023C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4A8);
  }

  return result;
}

unint64_t sub_1000B3C04()
{
  result = qword_10023C4B0;
  if (!qword_10023C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4B0);
  }

  return result;
}

uint64_t sub_1000B3C58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023A718, qword_1001BBA70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B3CC8(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023A718, qword_1001BBA70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000B3D30()
{
  result = qword_10023C4B8;
  if (!qword_10023C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PostbackModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PostbackModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000B3F1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 289))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B3F64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 264) = 0u;
    *(result + 288) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 289) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 289) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000B4008()
{
  result = qword_10023C4C0;
  if (!qword_10023C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4C0);
  }

  return result;
}

unint64_t sub_1000B4060()
{
  result = qword_10023C4C8;
  if (!qword_10023C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4C8);
  }

  return result;
}

unint64_t sub_1000B40B8()
{
  result = qword_10023C4D0;
  if (!qword_10023C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4D0);
  }

  return result;
}

unint64_t sub_1000B4110()
{
  result = qword_10023C4D8;
  if (!qword_10023C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4D8);
  }

  return result;
}

unint64_t sub_1000B4164(uint64_t a1)
{
  result = sub_1000B3D30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000B4190()
{
  result = qword_10023C4E0;
  if (!qword_10023C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4E0);
  }

  return result;
}

unint64_t sub_1000B41E4()
{
  result = qword_10023C4E8;
  if (!qword_10023C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4E8);
  }

  return result;
}

unint64_t sub_1000B4238()
{
  result = qword_10023C4F0;
  if (!qword_10023C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4F0);
  }

  return result;
}

unint64_t sub_1000B428C()
{
  result = qword_10023C4F8;
  if (!qword_10023C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C4F8);
  }

  return result;
}

uint64_t sub_1000B42E0@<X0>(void *a1@<X8>)
{
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v2 = qword_10023FC50;
  a1[3] = &type metadata for AggregatedReportingManager;
  a1[4] = &off_10021E0D0;
  v3 = swift_allocObject();
  *a1 = v3;
  v3[11] = &type metadata for BiomeEventStreamDog;
  v3[12] = &off_10021F658;
  v3[16] = &type metadata for AMSDogBag;
  v3[17] = &off_100222F48;
  v4 = qword_100239C90;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_10023FC28;
  v3[21] = type metadata accessor for TaskGreyhound(0);
  v3[22] = &off_1002169F0;
  v3[18] = v6;
  v3[26] = &type metadata for LaunchServicesRecordFactory;
  v3[27] = &off_10021CBA8;
  v7 = qword_100239D30;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_10023FD90;
  v3[31] = type metadata accessor for SnoutManager(0);
  v3[32] = &off_100223858;
  v3[28] = v8;
  v3[2] = 0xD00000000000001ALL;
  v3[3] = 0x80000001001CB760;
  v3[4] = v5;
  v3[5] = 0xD000000000000018;
  v3[6] = 0x80000001001CB380;
  v3[7] = v5;
}

uint64_t sub_1000B44B4@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v2 = qword_10023FC50;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 sharedScheduler];
  a1[3] = &type metadata for PostbackManager;
  a1[4] = &off_100222380;
  v6 = swift_allocObject();
  *a1 = v6;
  *(v6 + 208) = &type metadata for ActivityManager;
  *(v6 + 216) = &off_100223E90;
  v7 = swift_allocObject();
  *(v6 + 184) = v7;
  v7[5] = &type metadata for BackgroundSystemTaskScheduler;
  v7[6] = &off_100217910;
  v7[2] = v5;
  *(v6 + 272) = &type metadata for AttributionKitCanineArbiter;
  *(v6 + 280) = &off_1002191C8;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v8 = qword_10023FC28;
  *(v6 + 312) = type metadata accessor for TaskGreyhound(0);
  *(v6 + 320) = &off_1002169F0;
  *(v6 + 288) = v8;
  *(v6 + 352) = &type metadata for LaunchServicesRecordFactory;
  *(v6 + 360) = &off_10021CBA8;
  *(v6 + 392) = &type metadata for AMSDogBag;
  *(v6 + 400) = &off_100222F48;

  v9 = [v3 sharedScheduler];
  v14[3] = &type metadata for ActivityManager;
  v14[4] = &off_100223E90;
  v10 = swift_allocObject();
  v13[4] = &off_10021CBA8;
  v14[0] = v10;
  v10[5] = &type metadata for BackgroundSystemTaskScheduler;
  v10[6] = &off_100217910;
  v10[2] = v9;
  v13[3] = &type metadata for LaunchServicesRecordFactory;
  sub_1000B8524(v14, v13, v6 + 408);
  *(v6 + 520) = &type metadata for AppStoreDaemonSKANInterop;
  *(v6 + 528) = &off_100222C60;
  sub_1000B42E0((v6 + 536));
  if (qword_100239D30 != -1)
  {
    swift_once();
  }

  v11 = qword_10023FD90;
  *(v6 + 600) = type metadata accessor for SnoutManager(0);
  *(v6 + 608) = &off_100223858;
  *(v6 + 576) = v11;
  strcpy((v6 + 16), "postback_store");
  *(v6 + 31) = -18;
  *(v6 + 32) = v4;
  *(v6 + 40) = 0x63616274736F6867;
  *(v6 + 48) = 0xEF65726F74735F6BLL;
  *(v6 + 56) = v4;
  *(v6 + 64) = 0xD000000000000010;
  *(v6 + 72) = 0x80000001001CB320;
  *(v6 + 80) = v4;
  *(v6 + 88) = 0x74735F6E656B6F74;
  *(v6 + 96) = 0xEB0000000065726FLL;
  *(v6 + 104) = v4;
  *(v6 + 112) = 0xD000000000000012;
  *(v6 + 120) = 0x80000001001CB340;
  *(v6 + 128) = v4;
  *(v6 + 136) = 0xD000000000000014;
  *(v6 + 144) = 0x80000001001CB360;
  *(v6 + 152) = v4;
  *(v6 + 160) = 0xD000000000000018;
  *(v6 + 168) = 0x80000001001CB380;
  *(v6 + 176) = v4;
  *(v6 + 224) = 0xD000000000000011;
  *(v6 + 232) = 0x80000001001CB3A0;
  *(v6 + 240) = v4;
}

uint64_t sub_1000B4864()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];

  v3 = String._bridgeToObjectiveC()();
  [v2 addObserver:v0 selector:"handleApplicationRegisteredNotification:" name:v3 object:0];

  v4 = [v1 defaultCenter];

  v5 = String._bridgeToObjectiveC()();
  [v4 addObserver:v0 selector:"handleApplicationUnregisteredNotification:" name:v5 object:0];

  return v0;
}

void *sub_1000B499C()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_1000C3C20(v5), (v3 & 1) == 0))
  {

    sub_100025D20(v5);
LABEL_8:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_9;
  }

  sub_10002036C(*(v1 + 56) + 32 * v2, &v6);
  sub_100025D20(v5);

  if (!*(&v7 + 1))
  {
LABEL_9:
    sub_10000DAF8(&v6, &qword_10023BB90, &qword_1001BA370);
    return _swiftEmptyArrayStorage;
  }

  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  if (swift_dynamicCast())
  {
    return v5[0];
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000B4AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10000BD30;

  return sub_1000B5198(a5);
}

uint64_t sub_1000B4B74(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v7 = v4;
  v8 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v8 - 8);
  v33 = v29 - v9;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000B499C();
  v15 = Logger.general.unsafeMutableAddressor();
  (*(v11 + 16))(v13, v15, v10);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = v4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v29[1] = a3;
    v21 = v20;
    v34 = v14;
    v35 = v20;
    *v19 = 136315138;
    sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
    v31 = a4;
    sub_1000B5134();
    v22 = BidirectionalCollection<>.joined(separator:)();
    v24 = sub_10017AD04(v22, v23, &v35);

    *(v19 + 4) = v24;
    a4 = v31;
    _os_log_impl(&_mh_execute_header, v16, v17, v32, v19, 0xCu);
    sub_10000DB58(v21);

    v7 = v30;
  }

  (*(v11 + 8))(v13, v10);
  v25 = type metadata accessor for TaskPriority();
  v26 = v33;
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v7;
  v27[5] = v14;

  sub_10001267C(0, 0, v26, a4, v27);
}

uint64_t sub_1000B4E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1000152E0;

  return sub_1000B61A0(a5);
}

uint64_t sub_1000B4F2C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, ...)
{
  v9 = type metadata accessor for Notification();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000B4B74(v12, a4, a5, a6);

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000B5074(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000152E0;

  return sub_1000B4E70(a1, v4, v5, v7, v6);
}

unint64_t sub_1000B5134()
{
  result = qword_10023C598;
  if (!qword_10023C598)
  {
    sub_10000CCC0(&unk_10023C250, &qword_1001B58B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C598);
  }

  return result;
}

uint64_t sub_1000B5198(uint64_t a1)
{
  v1[81] = a1;
  v1[82] = type metadata accessor for PostAppInstallTask(0);
  v1[83] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
  v1[84] = v2;
  v1[85] = *(v2 - 8);
  v1[86] = swift_task_alloc();

  return _swift_task_switch(sub_1000B52B4, 0, 0);
}

uint64_t sub_1000B52B4()
{
  v1 = v0[81];
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_34:

    v47 = v0[1];

    return v47();
  }

  v61 = (v0 + 55);
  v64 = (v0 + 80);
  v65 = (v0 + 65);
  v3 = v0[85];
  sub_100147224(0, v2, 0);
  v62 = (v3 + 8);
  v63 = (v3 + 16);
  v4 = v1 + 40;
  do
  {
    v5 = objc_allocWithZone(LSApplicationRecord);

    v6 = String._bridgeToObjectiveC()();

    *v64 = 0;
    v7 = [v5 initWithBundleIdentifier:v6 allowPlaceholder:0 error:v64];

    v8 = *v64;
    if (v7)
    {
      v9 = sub_10006DF54();
      v10 = v8;
      v11 = &off_10021F840;
    }

    else
    {
      v12 = *(v66 + 688);
      v13 = *(v66 + 672);
      v14 = v8;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v15 = Logger.xpc.unsafeMutableAddressor();
      (*v63)(v12, v15, v13);
      swift_errorRetain();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        swift_errorRetain();
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 4) = v20;
        *v19 = v20;
        _os_log_impl(&_mh_execute_header, v16, v17, "Failed to get bundle record from bundle ID: %@", v18, 0xCu);
        sub_10000DAF8(v19, &qword_100239F10, &qword_1001B4FD0);
      }

      else
      {
      }

      (*v62)(*(v66 + 688), *(v66 + 672));
      v7 = 0;
      v9 = 0;
      v11 = 0;
    }

    v22 = _swiftEmptyArrayStorage[2];
    v21 = _swiftEmptyArrayStorage[3];
    if (v22 >= v21 >> 1)
    {
      sub_100147224((v21 > 1), v22 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v22 + 1;
    v23 = &_swiftEmptyArrayStorage[5 * v22];
    v23[4] = v7;
    v23[5] = 0;
    v23[6] = 0;
    v23[7] = v9;
    v23[8] = v11;
    v4 += 16;
    --v2;
  }

  while (v2);
  v24 = v22 + 1;
  v25 = _swiftEmptyArrayStorage;
  v26 = &_swiftEmptyArrayStorage[4];
  v27 = v66;
  do
  {
    sub_1000B6D74(v26, v61);
    v0[69] = v0[59];
    v28 = *(v0 + 57);
    *v65 = *v61;
    *(v0 + 67) = v28;
    if (v27[68])
    {
      sub_10000DA64(v65, (v27 + 60));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1000892AC(0, v25[2] + 1, 1, v25);
      }

      v30 = v25[2];
      v29 = v25[3];
      if (v30 >= v29 >> 1)
      {
        v25 = sub_1000892AC((v29 > 1), v30 + 1, 1, v25);
      }

      v25[2] = v30 + 1;
      v27 = v66;
      sub_10000DA64((v66 + 480), &v25[5 * v30 + 4]);
    }

    else
    {
      sub_10000DAF8(v65, &qword_10023A7E0, &qword_1001B5850);
    }

    v27[90] = v25;
    v26 += 5;
    --v24;
  }

  while (v24);

  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v31 = qword_10023FC50;
  v27[87] = qword_10023FC50;
  v32 = v31;
  sub_1000B44B4(v27 + 20);
  v27[28] = &type metadata for LaunchServicesRecordFactory;
  v27[29] = &off_10021CBA8;
  v27[33] = &type metadata for DogTokenClientFactory;
  v27[34] = &off_100219C38;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v33 = qword_10023FC28;
  v34 = type metadata accessor for TaskGreyhound(0);
  v27[88] = v34;
  v27[38] = v34;
  v27[39] = &off_1002169F0;
  v27[35] = v33;
  v27[43] = &type metadata for AMSDogBag;
  v27[44] = &off_100222F48;
  v27[48] = &type metadata for CasinoDog;
  v27[49] = &off_1002179A0;
  v35 = qword_100239D30;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = qword_10023FD90;
  v27[53] = type metadata accessor for SnoutManager(0);
  v27[54] = &off_100223858;
  v27[50] = v36;
  v27[2] = 0x74735F6E656B6F74;
  v27[3] = 0xEB0000000065726FLL;
  v27[4] = v32;
  v27[5] = 0xD000000000000010;
  v27[6] = 0x80000001001CB320;
  v27[7] = v32;
  v27[8] = 0xD000000000000012;
  v27[9] = 0x80000001001CB340;
  v27[10] = v32;
  v27[11] = 0xD000000000000014;
  v27[12] = 0x80000001001CB360;
  v27[13] = v32;
  v27[14] = 0xD000000000000018;
  v27[15] = 0x80000001001CB380;
  v27[16] = v32;
  v27[17] = 0x63616274736F6867;
  v27[18] = 0xEF65726F74735F6BLL;
  v27[19] = v32;
  v37 = v25[2];
  v27[89] = v37;
  if (!v37)
  {

LABEL_33:

    sub_1000463A0((v27 + 2));
    v0 = v27;
    goto LABEL_34;
  }

  v38 = 0;
  while (1)
  {
    v27[91] = v38;
    sub_10000CE28(v27[90] + 40 * v38 + 32, (v27 + 70));
    v39 = v27[73];
    v40 = v27[74];
    sub_10000DA7C(v27 + 70, v39);
    v41 = (*(v40 + 16))(v39, v40);
    v42 = v27[73];
    v43 = v27[74];
    sub_10000DA7C(v27 + 70, v42);
    v44 = (*(v43 + 24))(v42, v43);
    v46 = v45;
    sub_10000DB58(v27 + 70);
    if (v46)
    {
      break;
    }

    v38 = v27[91] + 1;
    if (v38 == v27[89])
    {
      goto LABEL_33;
    }
  }

  v49 = v27[87];
  sub_10000CE28((v27 + 20), v27[83] + 120);
  v50 = qword_100239CE0;
  v51 = v49;
  if (v50 != -1)
  {
    swift_once();
  }

  v52 = v27[87];
  v53 = *(v66 + 680);
  v54 = *(v66 + 672);
  v55 = *(v66 + 664);
  v56 = *(v66 + 656);
  v57 = sub_10000DAC0(v54, qword_10023FCD0);
  (*(v53 + 16))(v55 + *(v56 + 44), v57, v54);
  *v55 = v41;
  v55[1] = v44;
  v55[2] = v46;
  v55[3] = 0x74735F6E656B6F74;
  v55[4] = 0xEB0000000065726FLL;
  v55[5] = v52;
  v55[6] = 0xD000000000000012;
  v55[7] = 0x80000001001CB340;
  v55[8] = v52;
  v55[9] = 0xD000000000000018;
  v55[10] = 0x80000001001CB380;
  v55[11] = v52;
  v55[12] = 0x63616274736F6867;
  v55[13] = 0xEF65726F74735F6BLL;
  v55[14] = v52;
  sub_10000DA7C((v66 + 280), *(v66 + 304));
  *(v66 + 624) = v56;
  *(v66 + 632) = &off_10023DEB8;
  v58 = sub_10005CA24((v66 + 600));
  sub_1000B6DD0(v55, v58);
  v59 = swift_task_alloc();
  *(v66 + 736) = v59;
  *v59 = v66;
  v59[1] = sub_1000B5C80;
  v60 = *(v66 + 704);

  return (sub_10000C9BC)(v66 + 600, v60, &off_1002169F0);
}

uint64_t sub_1000B5C80()
{
  v1 = *v0;

  sub_10000DB58((v1 + 600));

  return _swift_task_switch(sub_1000B5DB0, 0, 0);
}

uint64_t sub_1000B5DB0()
{
  sub_1000B6E34(v0[83]);
  while (1)
  {
    v1 = v0[91] + 1;
    if (v1 == v0[89])
    {
      break;
    }

    v0[91] = v1;
    sub_10000CE28(v0[90] + 40 * v1 + 32, (v0 + 70));
    v2 = v0[73];
    v3 = v0[74];
    sub_10000DA7C(v0 + 70, v2);
    v4 = (*(v3 + 16))(v2, v3);
    v5 = v0[73];
    v6 = v0[74];
    sub_10000DA7C(v0 + 70, v5);
    v7 = (*(v6 + 24))(v5, v6);
    v9 = v8;
    sub_10000DB58(v0 + 70);
    if (v9)
    {
      v10 = v0[87];
      sub_10000CE28((v0 + 20), v0[83] + 120);
      v11 = qword_100239CE0;
      v12 = v10;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = v0[87];
      v14 = v0[85];
      v15 = v0[84];
      v16 = v0[83];
      v17 = v0[82];
      v18 = sub_10000DAC0(v15, qword_10023FCD0);
      (*(v14 + 16))(v16 + *(v17 + 44), v18, v15);
      *v16 = v4;
      v16[1] = v7;
      v16[2] = v9;
      v16[3] = 0x74735F6E656B6F74;
      v16[4] = 0xEB0000000065726FLL;
      v16[5] = v13;
      v16[6] = 0xD000000000000012;
      v16[7] = 0x80000001001CB340;
      v16[8] = v13;
      v16[9] = 0xD000000000000018;
      v16[10] = 0x80000001001CB380;
      v16[11] = v13;
      v16[12] = 0x63616274736F6867;
      v16[13] = 0xEF65726F74735F6BLL;
      v16[14] = v13;
      sub_10000DA7C(v0 + 35, v0[38]);
      v0[78] = v17;
      v0[79] = &off_10023DEB8;
      v19 = sub_10005CA24(v0 + 75);
      sub_1000B6DD0(v16, v19);
      v20 = swift_task_alloc();
      v0[92] = v20;
      *v20 = v0;
      v20[1] = sub_1000B5C80;
      v21 = v0[88];

      return (sub_10000C9BC)(v0 + 75, v21, &off_1002169F0);
    }
  }

  sub_1000463A0((v0 + 2));

  v23 = v0[1];

  return v23();
}

uint64_t sub_1000B61A0(uint64_t a1)
{
  v1[77] = a1;
  v2 = type metadata accessor for Logger();
  v1[78] = v2;
  v1[79] = *(v2 - 8);
  v1[80] = swift_task_alloc();

  return _swift_task_switch(sub_1000B6260, 0, 0);
}

uint64_t sub_1000B6260()
{
  v19 = v0;
  v1 = *(*(v0 + 616) + 16);
  *(v0 + 648) = v1;
  if (v1)
  {
    if (qword_100239CA8 != -1)
    {
      swift_once();
    }

    v2 = qword_10023FC50;
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 sharedScheduler];
    *(v0 + 208) = &type metadata for ActivityManager;
    *(v0 + 216) = &off_100223E90;
    v6 = swift_allocObject();
    *(v0 + 184) = v6;
    v6[5] = &type metadata for BackgroundSystemTaskScheduler;
    v6[6] = &off_100217910;
    v6[2] = v5;
    *(v0 + 272) = &type metadata for AttributionKitCanineArbiter;
    *(v0 + 280) = &off_1002191C8;
    if (qword_100239C90 != -1)
    {
      swift_once();
    }

    v7 = qword_10023FC28;
    *(v0 + 312) = type metadata accessor for TaskGreyhound(0);
    *(v0 + 320) = &off_1002169F0;
    *(v0 + 288) = v7;
    *(v0 + 352) = &type metadata for LaunchServicesRecordFactory;
    *(v0 + 360) = &off_10021CBA8;
    *(v0 + 392) = &type metadata for AMSDogBag;
    *(v0 + 400) = &off_100222F48;

    v8 = [v3 sharedScheduler];
    v17[3] = &type metadata for ActivityManager;
    v17[4] = &off_100223E90;
    v9 = swift_allocObject();
    v17[0] = v9;
    v9[5] = &type metadata for BackgroundSystemTaskScheduler;
    v9[6] = &off_100217910;
    v9[2] = v8;
    v18[3] = &type metadata for LaunchServicesRecordFactory;
    v18[4] = &off_10021CBA8;
    sub_1000B8524(v17, v18, v0 + 408);
    *(v0 + 520) = &type metadata for AppStoreDaemonSKANInterop;
    *(v0 + 528) = &off_100222C60;
    sub_1000B42E0((v0 + 536));
    if (qword_100239D30 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 616);
    v11 = qword_10023FD90;
    *(v0 + 600) = type metadata accessor for SnoutManager(0);
    *(v0 + 608) = &off_100223858;
    *(v0 + 576) = v11;
    strcpy((v0 + 16), "postback_store");
    *(v0 + 31) = -18;
    *(v0 + 32) = v4;
    *(v0 + 40) = 0x63616274736F6867;
    *(v0 + 48) = 0xEF65726F74735F6BLL;
    *(v0 + 56) = v4;
    *(v0 + 64) = 0xD000000000000010;
    *(v0 + 72) = 0x80000001001CB320;
    *(v0 + 80) = v4;
    *(v0 + 88) = 0x74735F6E656B6F74;
    *(v0 + 96) = 0xEB0000000065726FLL;
    *(v0 + 104) = v4;
    *(v0 + 112) = 0xD000000000000012;
    *(v0 + 120) = 0x80000001001CB340;
    *(v0 + 128) = v4;
    *(v0 + 136) = 0xD000000000000014;
    *(v0 + 144) = 0x80000001001CB360;
    *(v0 + 152) = v4;
    *(v0 + 160) = 0xD000000000000018;
    *(v0 + 168) = 0x80000001001CB380;
    *(v0 + 176) = v4;
    *(v0 + 224) = 0xD000000000000011;
    *(v0 + 232) = 0x80000001001CB3A0;
    *(v0 + 240) = v4;
    *(v0 + 656) = 0;
    v12 = *(v10 + 32);
    *(v0 + 664) = v12;
    v13 = *(v10 + 40);
    *(v0 + 672) = v13;

    v14 = swift_task_alloc();
    *(v0 + 680) = v14;
    *v14 = v0;
    v14[1] = sub_1000B66C4;

    return sub_100121B58(v12, v13);
  }

  else
  {

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1000B66C4()
{
  *(*v1 + 688) = v0;

  if (v0)
  {
    v2 = sub_1000B6900;
  }

  else
  {

    v2 = sub_1000B67E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B67E0()
{
  v1 = v0[82] + 1;
  if (v1 == v0[81])
  {
    sub_10004E7FC((v0 + 2));

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[82] = v1;
    v4 = v0[77] + 16 * v1;
    v5 = *(v4 + 32);
    v0[83] = v5;
    v6 = *(v4 + 40);
    v0[84] = v6;

    v7 = swift_task_alloc();
    v0[85] = v7;
    *v7 = v0;
    v7[1] = sub_1000B66C4;

    return sub_100121B58(v5, v6);
  }
}

uint64_t sub_1000B6900(uint64_t a1)
{
  v28 = v1;
  v2 = v1[80];
  v3 = v1[79];
  v4 = v1[78];
  v5 = Logger.general.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[84];
  if (v8)
  {
    v10 = v1[83];
    v26 = v1[80];
    v11 = v1[79];
    v12 = v1[78];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136315138;
    v15 = sub_10017AD04(v10, v9, &v27);

    *(v13 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to clean up state for app: %s", v13, 0xCu);
    sub_10000DB58(v14);

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v16 = v1[80];
    v17 = v1[79];
    v18 = v1[78];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v1[82] + 1;
  if (v19 == v1[81])
  {
    sub_10004E7FC((v1 + 2));

    v20 = v1[1];

    return v20();
  }

  else
  {
    v1[82] = v19;
    v22 = v1[77] + 16 * v19;
    v23 = *(v22 + 32);
    v1[83] = v23;
    v24 = *(v22 + 40);
    v1[84] = v24;

    v25 = swift_task_alloc();
    v1[85] = v25;
    *v25 = v1;
    v25[1] = sub_1000B66C4;

    return sub_100121B58(v23, v24);
  }
}

uint64_t sub_1000B6BBC()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B6BF4()
{

  sub_10000DB58((v0 + 64));
  sub_10000DB58((v0 + 104));
  sub_10000DB58((v0 + 144));
  sub_10000DB58((v0 + 184));
  sub_10000DB58((v0 + 224));

  return _swift_deallocObject(v0, 264, 7);
}

uint64_t sub_1000B6C6C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B6CB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000BD30;

  return sub_1000B4AB8(a1, v4, v5, v7, v6);
}

uint64_t sub_1000B6DD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PostAppInstallTask(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B6E34(uint64_t a1)
{
  v2 = type metadata accessor for PostAppInstallTask(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B6E90()
{

  sub_10000DB58((v0 + 184));

  sub_10000DB58((v0 + 248));
  sub_10000DB58((v0 + 288));
  sub_10000DB58((v0 + 328));
  sub_10000DB58((v0 + 368));
  sub_10000DB58((v0 + 408));
  sub_10000DB58((v0 + 448));

  sub_10000DB58((v0 + 496));
  sub_10000DB58((v0 + 536));
  sub_10000DB58((v0 + 576));

  return _swift_deallocObject(v0, 616, 7);
}

uint64_t sub_1000B6FAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1146049104;
  }

  else
  {
    v3 = 5653828;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1146049104;
  }

  else
  {
    v5 = 5653828;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000B7044()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000B70B8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000B7118(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000B7188@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100215BA8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000B71E8(uint64_t *a1@<X8>)
{
  v2 = 5653828;
  if (*v1)
  {
    v2 = 1146049104;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1000B721C()
{
  result = qword_10023C5A0;
  if (!qword_10023C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C5A0);
  }

  return result;
}

unint64_t sub_1000B7320()
{
  result = qword_10023C5A8;
  if (!qword_10023C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C5A8);
  }

  return result;
}

uint64_t sub_1000B7374()
{
  v0 = type metadata accessor for Logger();
  sub_100026610(v0, qword_10023FC58);
  sub_10000DAC0(v0, qword_10023FC58);
  Logger.aakSubsystem.unsafeMutableAddressor();

  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000B7500(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_100026610(v5, a2);
  sub_10000DAC0(v5, a2);
  Logger.aakSubsystem.unsafeMutableAddressor();

  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000B7584()
{
  v0 = type metadata accessor for Logger();
  sub_100026610(v0, qword_10023FD30);
  sub_10000DAC0(v0, qword_10023FD30);
  Logger.aakSubsystem.unsafeMutableAddressor();

  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000B760C()
{
  v0 = type metadata accessor for Logger();
  sub_100026610(v0, qword_10023FD48);
  sub_10000DAC0(v0, qword_10023FD48);
  Logger.aakSubsystem.unsafeMutableAddressor();

  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000B7694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  __chkstk_darwin(v6);
  v7 = objc_allocWithZone(LSApplicationRecord);
  v8 = sub_1000BB120(a1, a2, 0);
  result = sub_10001523C(0, &qword_10023B318, LSApplicationRecord_ptr);
  *a3 = v8;
  a3[3] = result;
  a3[4] = &off_10021F840;
  return result;
}

double sub_1000B78E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Logger();
  __chkstk_darwin(v10);
  sub_10001523C(0, &qword_10023C5B0, LSBundleRecord_ptr);
  sub_1000B7B64(a1, a2, a3, a4);
  sub_10000CDE0(&unk_10023BC70, &qword_1001BA568);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
  }

  result = *&v12;
  *a5 = v12;
  *(a5 + 16) = v13;
  *(a5 + 32) = v14;
  return result;
}

id sub_1000B7B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:&v9];
  if (v4)
  {
    v5 = v9;
  }

  else
  {
    v6 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

double sub_1000B7C6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(LSApplicationRecord);
  v22 = 0;
  v9 = [v8 initWithStoreItemIdentifier:a1 error:&v22];
  v21 = v22;
  if (v9)
  {
    v10 = sub_10001523C(0, &qword_10023B318, LSApplicationRecord_ptr);
    *a2 = v9;
    *(a2 + 24) = v10;
    *(a2 + 32) = &off_10021F840;
    v11 = v21;

    v12 = v11;
  }

  else
  {
    v14 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v15 = Logger.xpc.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v15, v4);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to get bundle record from store item ID: %@", v18, 0xCu);
      sub_1000AEA80(v19);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1000B7F4C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000B7F64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000B7FC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1000B803C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_1000B80DC();
}

uint64_t sub_1000B80F8()
{
  v15 = v0;
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v1 = qword_10023FC50;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 sharedScheduler];
  *(v0 + 208) = &type metadata for ActivityManager;
  *(v0 + 216) = &off_100223E90;
  v5 = swift_allocObject();
  *(v0 + 184) = v5;
  v5[5] = &type metadata for BackgroundSystemTaskScheduler;
  v5[6] = &off_100217910;
  v5[2] = v4;
  *(v0 + 272) = &type metadata for AttributionKitCanineArbiter;
  *(v0 + 280) = &off_1002191C8;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v6 = qword_10023FC28;
  *(v0 + 312) = type metadata accessor for TaskGreyhound(0);
  *(v0 + 320) = &off_1002169F0;
  *(v0 + 288) = v6;
  *(v0 + 352) = &type metadata for LaunchServicesRecordFactory;
  *(v0 + 360) = &off_10021CBA8;
  *(v0 + 392) = &type metadata for AMSDogBag;
  *(v0 + 400) = &off_100222F48;

  v7 = [v2 sharedScheduler];
  v13[3] = &type metadata for ActivityManager;
  v13[4] = &off_100223E90;
  v8 = swift_allocObject();
  v13[0] = v8;
  v8[5] = &type metadata for BackgroundSystemTaskScheduler;
  v8[6] = &off_100217910;
  v8[2] = v7;
  v14[3] = &type metadata for LaunchServicesRecordFactory;
  v14[4] = &off_10021CBA8;
  sub_1000B8524(v13, v14, v0 + 408);
  *(v0 + 520) = &type metadata for AppStoreDaemonSKANInterop;
  *(v0 + 528) = &off_100222C60;
  sub_1000B42E0((v0 + 536));
  if (qword_100239D30 != -1)
  {
    swift_once();
  }

  v9 = qword_10023FD90;
  *(v0 + 600) = type metadata accessor for SnoutManager(0);
  *(v0 + 608) = &off_100223858;
  *(v0 + 576) = v9;
  strcpy((v0 + 16), "postback_store");
  *(v0 + 31) = -18;
  *(v0 + 32) = v3;
  *(v0 + 40) = 0x63616274736F6867;
  *(v0 + 48) = 0xEF65726F74735F6BLL;
  *(v0 + 56) = v3;
  *(v0 + 64) = 0xD000000000000010;
  *(v0 + 72) = 0x80000001001CB320;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0x74735F6E656B6F74;
  *(v0 + 96) = 0xEB0000000065726FLL;
  *(v0 + 104) = v3;
  *(v0 + 112) = 0xD000000000000012;
  *(v0 + 120) = 0x80000001001CB340;
  *(v0 + 128) = v3;
  *(v0 + 136) = 0xD000000000000014;
  *(v0 + 144) = 0x80000001001CB360;
  *(v0 + 152) = v3;
  *(v0 + 160) = 0xD000000000000018;
  *(v0 + 168) = 0x80000001001CB380;
  *(v0 + 176) = v3;
  *(v0 + 224) = 0xD000000000000011;
  *(v0 + 232) = 0x80000001001CB3A0;
  *(v0 + 240) = v3;

  v10 = sub_1000286A4(&off_100216728);
  *(v0 + 616) = v10;
  v11 = swift_task_alloc();
  *(v0 + 624) = v11;
  *v11 = v0;
  v11[1] = sub_10005F820;

  return sub_10010B00C(v10);
}

uint64_t sub_1000B84EC()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B8524@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10000CE28(a1, a3);
  sub_10000CE28(a2, a3 + 40);
  sub_10000CDE0(&qword_10023C5C0, qword_1001BC2C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001BAF80;
  *(inited + 40) = 0;
  *(inited + 32) = 0;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = xmmword_1001BC250;
  *(inited + 120) = &type metadata for Int;
  *(inited + 96) = 60;
  *(inited + 128) = xmmword_1001BC260;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 0;
  *(inited + 176) = xmmword_1001BC270;
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = 300;
  *(inited + 224) = xmmword_1001BC280;
  *(inited + 264) = &type metadata for String;
  *(inited + 240) = 0xD000000000000015;
  *(inited + 248) = 0x80000001001CC840;
  *(inited + 272) = xmmword_1001BC290;
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = 0;
  v7 = sub_1000C48DC(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023C5C8, &qword_1001BC880);
  swift_arrayDestroy();
  sub_10000DB58(a2);
  result = sub_10000DB58(a1);
  *(a3 + 80) = v7;
  return result;
}

uint64_t sub_1000B86A8()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = *(v0 + 80);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v5)) | (v9 << 6);
      v11 = (*(v2 + 48) + 16 * v10);
      v12 = *v11;
      v13 = v11[1];
      sub_10002036C(*(v2 + 56) + 32 * v10, &v19);
      v18[0] = v12;
      v18[1] = v13;
      if (v13 > 4)
      {
        break;
      }

      if (v13 < 0)
      {
        goto LABEL_12;
      }

LABEL_13:
      v15 = String._bridgeToObjectiveC()();

      v16 = [v1 objectForKey:v15];

      if (!v16)
      {

        memset(v17, 0, sizeof(v17));
        sub_10000DAF8(v17, &qword_10023BB90, &qword_1001BA370);
        sub_10000DAF8(v18, &qword_10023C5B8, &qword_1001BC2B8);
        return 0;
      }

      v5 &= v5 - 1;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10000DAF8(v17, &qword_10023BB90, &qword_1001BA370);
      result = sub_10000DAF8(v18, &qword_10023C5B8, &qword_1001BC2B8);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (v13 <= 9)
    {
      goto LABEL_13;
    }

LABEL_12:
    *&v17[0] = 0;
    *(&v17[0] + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(22);

    *&v17[0] = 0xD000000000000014;
    *(&v17[0] + 1) = 0x80000001001CBE80;
    v14._countAndFlagsBits = v12;
    v14._object = v13;
    String.append(_:)(v14);
    goto LABEL_13;
  }

LABEL_5:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return 1;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_1000B8AD8(uint64_t a1)
{
  v38 = type metadata accessor for Date();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() standardUserDefaults];
  v39 = v1;
  v5 = *(v1 + 80);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v49 = 0x80000001001CBCB0;
  v48 = 0x80000001001CBCE0;
  v47 = 0x80000001001CBD00;
  v50 = 0x80000001001CBD20;
  v46 = 0x80000001001CBD50;
  v45 = 0x80000001001CBD80;
  v44 = 0x80000001001CBDC0;
  v43 = 0x80000001001CBDF0;
  v42 = 0x80000001001CBE20;
  v41 = 0x80000001001CBE60;
  v40 = 0x80000001001CBE80;
  v53 = v5;

  v11 = 0;
  while (v9)
  {
    v13 = v11;
LABEL_16:
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v17 = v16 | (v13 << 6);
    v18 = (*(v53 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    sub_10002036C(*(v53 + 56) + 32 * v17, v58);
    v59._countAndFlagsBits = v19;
    v59._object = v20;
    sub_100025CA4(v58, &v60);
    sub_1000BBA00(v19, v20);
LABEL_17:
    v63[0] = v60;
    v63[1] = v61;
    v62 = v59;
    if (!*(&v61 + 1))
    {

      if (a1)
      {
        v32 = v36;
        Date.init(timeIntervalSinceNow:)();
        Date.timeIntervalSince1970.getter();
        *(&v63[0] + 1) = &type metadata for Double;
        v62._countAndFlagsBits = v33;
        sub_10008393C(&v62, 0, 6);
        (*(v37 + 8))(v32, v38);
        sub_10000DAF8(&v62, &qword_10023BB90, &qword_1001BA370);
      }

      else
      {
        v34 = String._bridgeToObjectiveC()();
        [v4 removeObjectForKey:v34];
      }

      sub_1000BA604();

      return;
    }

    v21 = v62;
    sub_100025CA4(v63, &v59);
    if ((a1 & 1) == 0)
    {
      if (v21._object > 4)
      {
        if (v21._object > 9)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v21._object > 1 || v21._object <= 1)
        {
          goto LABEL_4;
        }

LABEL_37:
        *&v58[0] = 0;
        *(&v58[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(22);

        *&v58[0] = 0xD000000000000014;
        *(&v58[0] + 1) = v40;
        String.append(_:)(v21);
        sub_1000BBA14(v21._countAndFlagsBits, v21._object);
      }

LABEL_4:
      v12 = String._bridgeToObjectiveC()();

      [v4 removeObjectForKey:v12];

      goto LABEL_5;
    }

    countAndFlagsBits = v21._countAndFlagsBits;
    v22 = a1;
    sub_10002036C(&v59, v58);
    sub_100083AAC(v58, &v55);
    v23 = v57;
    if (v57)
    {
      v24 = sub_10000DA7C(&v55, v57);
      v52 = &v35;
      v25 = v4;
      v26 = *(v23 - 8);
      __chkstk_darwin(v24);
      v28 = &v35 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v28);
      v54 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v26 + 8))(v28, v23);
      v4 = v25;
      sub_10000DB58(&v55);
      if (v21._object > 4)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v54 = 0;
      if (v21._object > 4)
      {
LABEL_30:
        a1 = v22;
        if (v21._object <= 9)
        {
          goto LABEL_36;
        }

        goto LABEL_38;
      }
    }

    a1 = v22;
    if (v21._object > 1 || v21._object <= 1)
    {
      goto LABEL_36;
    }

LABEL_38:
    v55 = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v55 = 0xD000000000000014;
    v56 = v40;
    v30 = countAndFlagsBits;
    v31._countAndFlagsBits = countAndFlagsBits;
    v31._object = v21._object;
    String.append(_:)(v31);
    sub_1000BBA14(v30, v21._object);
LABEL_36:
    v29 = String._bridgeToObjectiveC()();

    [v4 setValue:v54 forKey:v29];
    swift_unknownObjectRelease();

    sub_10000DAF8(v58, &qword_10023BB90, &qword_1001BA370);
LABEL_5:
    sub_10000DB58(&v59);
  }

  if (v10 <= v11 + 1)
  {
    v14 = v11 + 1;
  }

  else
  {
    v14 = v10;
  }

  v15 = v14 - 1;
  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      v9 = 0;
      v60 = 0u;
      v61 = 0u;
      v11 = v15;
      v59 = 0;
      goto LABEL_17;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1000B93A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v6 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v42 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v33 - v14;
  objc_allocWithZone(LSApplicationRecord);

  v16 = sub_1000BB120(a1, a2, 0);
  if (!v3)
  {
    v17 = v16;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    v33[1] = PropertyListDecoder.init()();
    v18 = [v17 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    *&v35 = 0x696C702E6F666E49;
    *(&v35 + 1) = 0xEA00000000007473;
    (*(v7 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
    sub_10003E5C8();
    URL.appending<A>(path:directoryHint:)();
    (*(v7 + 8))(v9, v6);
    v19 = *(v42 + 8);
    v19(v13, v10);
    v20 = Data.init(contentsOf:options:)();
    v22 = v21;
    v19(v15, v10);
    sub_1000BB9AC();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_10001BABC(v20, v22);

    v41[3] = v38;
    v41[4] = v39;
    v41[1] = v36;
    v41[2] = v37;
    v41[0] = v35;
    sub_10009A2B8(v34);
    return sub_10009B180(v41);
  }

  v40 = v3;
  swift_errorRetain();
  sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
  if (swift_dynamicCast())
  {
    if ((v35 - 1) <= 1)
    {

      sub_1000BB624();
      swift_allocError();
      *v23 = 1;
      return swift_willThrow();
    }

    sub_1000BB968(v35, *(&v35 + 1), v36);
  }

  *&v35 = v3;
  swift_errorRetain();
  sub_10001523C(0, &qword_10023C5D0, NSError_ptr);
  if (!swift_dynamicCast())
  {
  }

  v24 = v40;
  v25 = [v40 domain];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {

    goto LABEL_12;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
LABEL_12:
    if ([v24 code] == -10814)
    {
      sub_1000BB624();
      swift_allocError();
      *v31 = 0;
      swift_willThrow();
    }
  }

  swift_willThrow();
}

unint64_t sub_1000B9960@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a1;
  v99 = a2;
  v3 = type metadata accessor for Date();
  v100 = *(v3 - 8);
  v101 = v3;
  __chkstk_darwin(v3);
  v5 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v102 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v90 - v10;
  v12 = type metadata accessor for P256.Signing.PrivateKey();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = P256.Signing.PrivateKey.init(pemRepresentation:)();
  if (!v2)
  {
    v107 = v15;
    v108 = v13;
    v105 = v11;
    v106 = v6;
    v90 = v9;
    v91 = v12;
    v104 = v5;
    v17 = v121;
    v18 = *v121;
    v19 = v121[1];
    v20 = objc_allocWithZone(LSApplicationRecord);

    v21 = sub_1000BB120(v18, v19, 0);
    v22 = sub_10001523C(0, &qword_10023B318, LSApplicationRecord_ptr);
    *&v126 = &off_10021F840;
    *(&v125 + 1) = v22;
    *&v124 = v21;
    sub_10000DA64(&v124, v163);
    v23 = [*sub_10000DA7C(v163 v163[3])];
    v103 = [v23 storeItemIdentifier];

    v24 = type metadata accessor for DevelopmentPostbackConfiguration(0);
    v25 = *(v17 + v24[11]);
    v26 = *(v25 + 16);
    v119 = v24;
    v27 = v108;
    if (v26)
    {
      v28 = 0;
      v29 = *(v17 + v24[7]);
      v97 = 0x80000001001CC950;
      v98 = v29;
      v96 = *(v17 + v24[10]);
      v94 = (v102 + 8);
      v95 = 0x80000001001CC970;
      v30 = (v25 + 43);
      v31 = _swiftEmptyArrayStorage;
      v92 = v25;
      v93 = v26 - 1;
      while (1)
      {
        v117 = 0;
        v118 = v31;
        v32 = *(v30 - 11);
        v33 = *(v30 - 3);
        v34 = *(v30 - 2);
        v35 = *v30;
        v36 = *(v30 - 1);
        v120 = v28;
        v111 = v30;
        v113 = v33;
        LODWORD(v116) = v34;
        if (v36 == 1)
        {
          v37 = (v121 + v119[6]);
          v38 = v37[1];
          v115 = *v37;
        }

        else
        {
          v115 = 0;
          v38 = 0;
        }

        *&v124 = v98;
        v39 = dispatch thunk of CustomStringConvertible.description.getter();
        v41 = sub_1000BB678(4, v39, v40);
        v43 = v42;

        if (v32 < 0)
        {
          break;
        }

        result = Substring.index(_:offsetBy:limitedBy:)();
        if (v44)
        {
          result = v41;
        }

        if (v43 >> 14 < result >> 14)
        {
          goto LABEL_45;
        }

        Substring.subscript.getter();

        if (v35)
        {
          v45 = (v121 + v119[8]);
          v46 = v45[1];
          v112 = *v45;
          v114 = v46;
        }

        else
        {
          v112 = 0;
          v114 = 0;
        }

        v47 = v105;
        UUID.init()();
        v48 = UUID.uuidString.getter();
        v50 = v49;
        (*v94)(v47, v106);
        v51 = static String._fromSubstring(_:)();
        v53 = v52;

        if (v96)
        {
          v54 = v120;
          if (v96 == 1)
          {
            v55 = 0xEA00000000006461;
            v56 = 0x6F6C6E776F646572;
          }

          else
          {
            v56 = 0x6761676E652D6572;
            v55 = 0xED0000746E656D65;
          }
        }

        else
        {
          v55 = 0xE800000000000000;
          v56 = 0x64616F6C6E776F64;
          v54 = v120;
        }

        strcpy(&v154, "app-impression");
        HIBYTE(v154) = -18;
        *&v155 = v115;
        *(&v155 + 1) = v38;
        *&v156 = v48;
        *(&v156 + 1) = v50;
        *&v157 = 0;
        BYTE8(v157) = v116 ^ 1;
        *&v158 = v103;
        *(&v158 + 1) = v51;
        *&v159 = v53;
        *(&v159 + 1) = 0xD00000000000001CLL;
        *&v160 = v95;
        *(&v160 + 1) = v56;
        *&v161 = v55;
        BYTE8(v161) = 1;
        v162 = v54;
        *v123 = 0x3635325345;
        *&v123[8] = 0xE500000000000000;
        *&v123[16] = 0xD00000000000001ELL;
        *&v123[24] = v97;
        v130 = v160;
        v131 = v161;
        *&v132 = v54;
        v126 = v156;
        v127 = v157;
        v128 = v158;
        v129 = v159;
        v124 = v154;
        v125 = v155;
        v57 = sub_1000BB714();
        v58 = sub_1000BB768();
        v59 = sub_1000BB7BC();
        v60 = sub_1000BB810();
        v61 = v107;
        v62 = v117;
        v63 = static JWS.compactJWS(from:payload:signingKey:)(v123, &v124, v107, &type metadata for Postback.JWSHeader, &type metadata for Postback.JWSPayload, v57, v58, v59, v60);
        if (v62)
        {
          (*(v108 + 8))(v61, v91);

          sub_10000DB58(v163);
          return sub_1000BB864(&v154);
        }

        v65 = v63;
        v66 = v64;
        sub_1000BB864(&v154);
        v67 = *(v121 + v119[9]) == 0;
        v68 = 2003134838;
        if (*(v121 + v119[9]))
        {
          v68 = 0x6B63696C63;
        }

        v110 = v68;
        v69 = 0xE400000000000000;
        if (!v67)
        {
          v69 = 0xE500000000000000;
        }

        v116 = v69;
        v70 = URL.absoluteString.getter();
        v115 = v71;
        v109 = v70;
        if (v113)
        {
          if (v113 == 1)
          {
            v117 = 0xE600000000000000;
            v72 = 0x657372616F63;
          }

          else
          {
            v117 = 0xE400000000000000;
            v72 = 1701734758;
          }
        }

        else
        {
          v117 = 0xE400000000000000;
          v72 = 1701736302;
        }

        JWS.init(compactJWS:)(v65, v66, &type metadata for Postback.JWSPayload, v57, v58, v59, v60, &v141);
        v138 = v151;
        v139 = v152;
        v134 = v147;
        v135 = v148;
        v136 = v149;
        v137 = v150;
        v130 = v143;
        v131 = v144;
        v132 = v145;
        v133 = v146;
        v128 = v141;
        v129 = v142;
        *&v123[224] = v151;
        *&v123[240] = v152;
        *&v123[160] = v147;
        *&v123[176] = v148;
        *&v123[192] = v149;
        *&v123[208] = v150;
        *&v123[96] = v143;
        *&v123[112] = v144;
        *&v123[128] = v145;
        *&v123[144] = v146;
        v140 = v153;
        *v123 = v110;
        *&v123[8] = v116;
        *&v123[16] = v109;
        *&v123[24] = v115;
        *&v123[32] = v72;
        *&v123[40] = v117;
        *&v123[48] = v112;
        *&v123[56] = v114;
        *&v123[256] = v153;
        *&v123[64] = v141;
        *&v123[80] = v142;
        *&v124 = v110;
        *(&v124 + 1) = v116;
        *&v125 = v109;
        *(&v125 + 1) = v115;
        *&v126 = v72;
        *(&v126 + 1) = v117;
        *&v127 = v112;
        *(&v127 + 1) = v114;
        sub_1000BB8B8(v123, &v122);
        sub_1000BB914(&v124);
        v31 = v118;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v108;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = sub_100088E34(0, *(v31 + 2) + 1, 1, v31);
        }

        v74 = v104;
        v76 = *(v31 + 2);
        v75 = *(v31 + 3);
        if (v76 >= v75 >> 1)
        {
          v31 = sub_100088E34((v75 > 1), v76 + 1, 1, v31);
        }

        *(v31 + 2) = v76 + 1;
        result = memcpy(&v31[264 * v76 + 32], v123, 0x108uLL);
        if (v93 == v120)
        {
          v77 = v91;
          goto LABEL_39;
        }

        v28 = v120 + 1;
        v30 = v111 + 16;
        if ((v120 + 1) >= *(v92 + 16))
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v31 = _swiftEmptyArrayStorage;
    v77 = v91;
    v74 = v104;
LABEL_39:
    v78 = v90;
    UUID.init()();
    v79 = UUID.uuidString.getter();
    v81 = v80;
    (*(v102 + 8))(v78, v106);
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v83 = v82;
    (*(v100 + 8))(v74, v101);
    result = (*(v27 + 8))(v107, v77);
    v84 = v83 * 1000.0;
    if (COERCE__INT64(fabs(v83 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v85 = v99;
    if (v84 <= -1.0)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v84 >= 1.84467441e19)
    {
LABEL_49:
      __break(1u);
      return result;
    }

    v86 = v84;
    v87 = v121 + v119[12];
    v88 = *v87;
    LOBYTE(v124) = v87[8];
    result = sub_10000DB58(v163);
    v89 = v124;
    *v85 = v103;
    *(v85 + 8) = v31;
    *(v85 + 16) = v79;
    *(v85 + 24) = v81;
    *(v85 + 32) = v86;
    *(v85 + 40) = 0;
    *(v85 + 48) = v88;
    *(v85 + 56) = v89 & 1;
  }

  return result;
}

uint64_t sub_1000BA604()
{
  v1 = v0;
  v54 = type metadata accessor for BarktivityType(0);
  v2 = __chkstk_darwin(v54);
  v49 = (v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v52 = v48 - v4;
  v56 = type metadata accessor for Date();
  v53 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v51 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = v48 - v11;
  v13 = __chkstk_darwin(v10);
  v50 = v48 - v14;
  __chkstk_darwin(v13);
  v16 = v48 - v15;
  *&v66 = 0xD00000000000002ELL;
  *(&v66 + 1) = 0x80000001001CC990;
  *&v67 = 1;
  WORD4(v67) = 0;
  BYTE10(v67) = 0;
  v68 = xmmword_1001BC2A0;
  *&v63 = 0xD00000000000003BLL;
  *(&v63 + 1) = 0x80000001001CC9C0;
  *&v64 = 2;
  WORD4(v64) = 1;
  BYTE10(v64) = 0;
  v65 = 0uLL;
  v59 = [objc_opt_self() standardUserDefaults];
  v17 = sub_1000B86A8();
  v18 = Logger.developerMode.unsafeMutableAddressor();
  v19 = *(v7 + 16);
  v58 = v18;
  v20 = v6;
  v57 = v19;
  (v19)(v16);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = v17 & 1;
    _os_log_impl(&_mh_execute_header, v21, v22, "Broadcasting developer mode isEnabled: %{BOOL}d", v23, 8u);
  }

  v24 = *(v7 + 8);
  v25 = v20;
  v24(v16, v20);
  if (sub_1000B86A8())
  {
    v26 = sub_1000BC560(0, 6);
    v48[1] = v24;
    v48[0] = v20;
    if (v27)
    {
      v57(v12, v58, v20);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Failed to get cached reset time, falling back to recovery reset date", v30, 2u);
      }

      v24(v12, v20);
      v31 = v55;
      Date.init(timeIntervalSinceNow:)();
      v32 = v53;
    }

    else
    {
      v36 = v26;
      v37 = v50;
      v57(v50, v58, v25);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134217984;
        *(v40 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v38, v39, "Cached reset time found: %f", v40, 0xCu);
      }

      v24(v37, v25);
      v31 = v55;
      Date.init(timeIntervalSince1970:)();
      v32 = v53;
    }

    sub_10000DA7C(v1, v1[3]);
    v61 = &type metadata for DeveloperModeResetBarktivity;
    v62 = &off_100222B58;
    v41 = swift_allocObject();
    v60[0] = v41;
    v42 = v67;
    v41[1] = v66;
    v41[2] = v42;
    v41[3] = v68;
    v43 = v52;
    v44 = v56;
    (*(v32 + 16))(v52, v31, v56);
    swift_storeEnumTagMultiPayload();
    sub_1000BD4C4(v60, v43);
    sub_1000BBB08(v43);
    sub_10000DB58(v60);
    sub_10000DA7C(v1, v1[3]);
    v61 = &type metadata for DevelopmentPostbackTransmissionBarktivity;
    v62 = &off_10021C740;
    v45 = swift_allocObject();
    v60[0] = v45;
    v46 = v64;
    v45[1] = v63;
    v45[2] = v46;
    v45[3] = v65;
    v47 = v49;
    *v49 = 0x4076800000000000;
    swift_storeEnumTagMultiPayload();
    sub_1000BD4C4(v60, v47);

    sub_1000BBB08(v47);
    (*(v32 + 8))(v31, v44);
    return sub_10000DB58(v60);
  }

  else
  {
    v33 = sub_10000DA7C(v1, v1[3]);
    sub_1000BB1FC(&v66, v33, &type metadata for DeveloperModeResetBarktivity, &off_100222B58, &unk_10021C7C0, sub_1000BBBC0);
    sub_1000BBA28(&v66);
    v34 = sub_10000DA7C(v1, v1[3]);
    sub_1000BB1FC(&v63, v34, &type metadata for DevelopmentPostbackTransmissionBarktivity, &off_10021C740, &unk_10021C7E8, sub_1000BBB64);

    return sub_1000BBA7C(&v63);
  }
}

unint64_t sub_1000BAF6C(char a1)
{
  if (a1)
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v1 & 1) != 0 && (sub_1000B86A8())
    {
      goto LABEL_4;
    }

LABEL_6:
    v5 = 0;
    LOBYTE(v4) = 1;
    return v5 | (v4 << 32);
  }

  if ((sub_1000B86A8() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1000BC2CC(0, 2);

  v4 = HIDWORD(v3) & 1;
  v5 = v3;
  return v5 | (v4 << 32);
}

uint64_t sub_1000BB054(char a1)
{
  if (a1)
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v1 & 1) != 0 && (sub_1000B86A8())
    {
      goto LABEL_4;
    }
  }

  else
  {

    if (sub_1000B86A8())
    {
LABEL_4:
      v2 = [objc_opt_self() standardUserDefaults];
      v3 = sub_1000BC488(0, 1);

      return v3;
    }
  }

  return 2;
}

id sub_1000BB120(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1000BB1FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, unint64_t *))
{
  v45[3] = a3;
  v45[4] = a4;
  v9 = swift_allocObject();
  v45[0] = v9;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 32);
  v9[1] = *a1;
  v9[2] = v12;
  v9[3] = v13;
  v14 = objc_opt_self();
  a6(a1, &v42);
  v15 = [v14 standardUserDefaults];
  v16 = sub_1000BC3B0(v10, v11);
  v18 = v17;

  if (v18)
  {
    v19 = *sub_10000DA7C(a2, a2[3]);
    v20 = String._bridgeToObjectiveC()();
    v21 = [v19 deregisterTaskWithIdentifier:v20];

    v22 = [v14 standardUserDefaults];
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v42 = 0xD000000000000014;
    v43 = 0x80000001001CBE80;
    v23._countAndFlagsBits = v10;
    v23._object = v11;
    String.append(_:)(v23);
    v24 = String._bridgeToObjectiveC()();

    [v22 removeObjectForKey:v24];

    if (qword_100239CB8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000DAC0(v25, qword_10023FC58);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v42 = v29;
      *v28 = 136315394;
      v30 = sub_10017AD04(v16, v18, &v42);

      *(v28 + 4) = v30;
      *(v28 + 12) = 1024;
      *(v28 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v26, v27, "Attempted to deregister '%s' with result: %{BOOL}d", v28, 0x12u);
      sub_10000DB58(v29);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100239CB8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000DAC0(v31, qword_10023FC58);
    sub_10000CE28(v45, &v42);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = v35;
      *v34 = 136315138;
      v36 = sub_10000DA7C(&v42, v44);
      v37 = *v36;
      v38 = v36[1];

      sub_10000DB58(&v42);
      v39 = sub_10017AD04(v37, v38, &v41);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "No cached barktivity found for activity: %s", v34, 0xCu);
      sub_10000DB58(v35);
    }

    else
    {

      sub_10000DB58(&v42);
    }
  }

  return sub_10000DB58(v45);
}

unint64_t sub_1000BB624()
{
  result = qword_10023C5D8;
  if (!qword_10023C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C5D8);
  }

  return result;
}

uint64_t sub_1000BB678(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

unint64_t sub_1000BB714()
{
  result = qword_10023C5E0;
  if (!qword_10023C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C5E0);
  }

  return result;
}

unint64_t sub_1000BB768()
{
  result = qword_10023C5E8;
  if (!qword_10023C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C5E8);
  }

  return result;
}

unint64_t sub_1000BB7BC()
{
  result = qword_10023C5F0;
  if (!qword_10023C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C5F0);
  }

  return result;
}

unint64_t sub_1000BB810()
{
  result = qword_10023C5F8;
  if (!qword_10023C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C5F8);
  }

  return result;
}

unint64_t sub_1000BB968(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= 0xC)
  {
  }

  return result;
}

unint64_t sub_1000BB9AC()
{
  result = qword_10023C600;
  if (!qword_10023C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C600);
  }

  return result;
}

uint64_t sub_1000BBA00(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xA)
  {
  }

  return result;
}

uint64_t sub_1000BBA14(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xA)
  {
  }

  return result;
}

uint64_t sub_1000BBAD0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000BBB08(uint64_t a1)
{
  v2 = type metadata accessor for BarktivityType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BBC2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000BBC74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000BBCD8(uint64_t a1)
{
  result = sub_1000BB624();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000BBD04()
{
  result = qword_10023C608;
  if (!qword_10023C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C608);
  }

  return result;
}

void sub_1000BBD5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v1;
    v4 = (a1 + 32);
    do
    {
      v5 = sub_10000DA7C(v3, v3[3]);
      v6 = v4[3];
      v7 = v4[4];
      sub_10000DA7C(v4, v6);
      v8 = (*(v7 + 8))(v6, v7);
      v10 = v9;
      sub_10000CE28(v4, v17);
      v11 = swift_allocObject();
      sub_10000DA64(v17, v11 + 16);
      v12 = *v5;
      v13 = String._bridgeToObjectiveC()();
      v14 = swift_allocObject();
      v14[2] = v8;
      v14[3] = v10;
      v14[4] = &unk_1001BC4A0;
      v14[5] = v11;
      aBlock[4] = sub_1000BFD14;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000BC264;
      aBlock[3] = &unk_10021CAE0;
      v15 = _Block_copy(aBlock);

      [v12 registerForTaskWithIdentifier:v13 usingQueue:0 launchHandler:v15];
      _Block_release(v15);

      v4 += 5;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1000BBF28(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = objc_opt_self();
    v4 = v2 + 32;
    v25 = &v28;
    v5 = &off_100235000;
    do
    {
      sub_10000CE28(v4, v34);
      v6 = v35;
      v7 = v36;
      sub_10000DA7C(v34, v35);
      v8 = (*(v7 + 8))(v6, v7);
      v10 = v9;
      v11 = [v3 v5[455]];
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      *&aBlock = 0xD000000000000014;
      *(&aBlock + 1) = 0x80000001001CBE80;
      v12._countAndFlagsBits = v8;
      v12._object = v10;
      String.append(_:)(v12);

      v13 = String._bridgeToObjectiveC()();

      v14 = [v11 objectForKey:v13];

      if (v14)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();

        sub_100025CA4(v31, &aBlock);
      }

      else
      {

        aBlock = 0u;
        v28 = 0u;
      }

      sub_10000CDE0(&qword_10023BB90, &qword_1001BA370);
      if (swift_dynamicCast())
      {
        v15 = v33;
        if (v33)
        {
          v16 = v32;
          v17 = sub_10000DA7C(v26, v26[3]);
          sub_10000CE28(v34, v31);
          v18 = swift_allocObject();
          *(v18 + 16) = v16;
          *(v18 + 24) = v15;
          sub_10000DA64(v31, v18 + 32);
          v19 = v5;
          v20 = *v17;

          v21 = String._bridgeToObjectiveC()();
          v22 = swift_allocObject();
          v22[2] = v16;
          v22[3] = v15;
          v22[4] = &unk_1001BC488;
          v22[5] = v18;
          v29 = sub_1000BFD14;
          v30 = v22;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v28 = sub_1000BC264;
          *(&v28 + 1) = &unk_10021C9F0;
          v23 = _Block_copy(&aBlock);

          v24 = v20;
          v5 = v19;
          [v24 registerForTaskWithIdentifier:v21 usingQueue:0 launchHandler:v23];
          _Block_release(v23);
        }
      }

      result = sub_10000DB58(v34);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_1000BC264(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_1000BC2CC(uint64_t a1, uint64_t a2)
{
  sub_100083550(a1, a2);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100025CA4(&v8, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  sub_10000CDE0(&qword_10023BB90, &qword_1001BA370);
  v5 = swift_dynamicCast();
  v6 = v8;
  if (!v5)
  {
    v6 = 0;
  }

  return v6 | ((v5 ^ 1u) << 32);
}

uint64_t sub_1000BC3B0(uint64_t a1, uint64_t a2)
{
  sub_100083550(a1, a2);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100025CA4(&v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  sub_10000CDE0(&qword_10023BB90, &qword_1001BA370);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000BC488(uint64_t a1, uint64_t a2)
{
  sub_100083550(a1, a2);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100025CA4(&v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  sub_10000CDE0(&qword_10023BB90, &qword_1001BA370);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1000BC578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100083550(a1, a2);
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100025CA4(&v9, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  sub_10000CDE0(&qword_10023BB90, &qword_1001BA370);
  v6 = swift_dynamicCast();
  v7 = v9;
  if (!v6)
  {
    return 0;
  }

  return v7;
}

uint64_t sub_1000BC654(uint64_t a1)
{
  v1[20] = a1;
  v2 = type metadata accessor for Logger();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000BC79C, 0, 0);
}

uint64_t sub_1000BC79C()
{
  v41 = v0;
  if (qword_100239CB8 != -1)
  {
    swift_once();
  }

  v1 = v0[10].opaque[0];
  v0[14].opaque[0] = sub_10000DAC0(v0[10].opaque[1], qword_10023FC58);
  sub_10000CE28(v1, &v0[1]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v39 = v5;
    *v4 = 136315138;
    v6 = v0[2].opaque[1];
    v7 = v0[3].opaque[0];
    sub_10000DA7C(v0[1].opaque, v6);
    v8 = (*(v7 + 8))(v6, v7);
    v10 = v9;
    sub_10000DB58(v0[1].opaque);
    v11 = sub_10017AD04(v8, v10, &v39);

    *(v4 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running static activity: %s", v4, 0xCu);
    sub_10000DB58(v5);
  }

  else
  {

    sub_10000DB58(v0[1].opaque);
  }

  v13 = v0[13].opaque[0];
  v12 = v0[13].opaque[1];
  v14 = v0[10].opaque[1];
  v15 = v0[11].opaque[0];
  v16 = v0[10].opaque[0];
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  v39 = 0xD00000000000001CLL;
  v40 = 0x80000001001CCAC0;
  v17 = v16[3];
  v18 = v16[4];
  sub_10000DA7C(v16, v17);
  v19._countAndFlagsBits = (*(v18 + 8))(v17, v18);
  String.append(_:)(v19);

  v20 = v39;
  v21 = v40;
  type metadata accessor for Transaction();
  v0[14].opaque[1] = swift_initStackObject();
  v0[15].opaque[0] = sub_1001799E0(v20, v21);
  (*(v15 + 56))(v12, 1, 1, v14);
  v22 = swift_task_alloc();
  v0[15].opaque[1] = v22;
  *(v22 + 16) = v16;
  sub_1000BF634(v12, v13);
  type metadata accessor for LogActivity();
  v23 = swift_allocObject();
  v0[16].opaque[0] = v23;
  if (qword_100239D28 != -1)
  {
    swift_once();
  }

  v24 = _os_activity_create(&_mh_execute_header, "Activity Manager: Static Activity", qword_10023DAF8, OS_ACTIVITY_FLAG_DEFAULT);
  v0[9].opaque[0] = 0;
  v0[9].opaque[1] = 0;
  os_activity_scope_enter(v24, v0 + 9);
  swift_unknownObjectRelease();
  *(v23 + 16) = v0[9];
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v25 = v0[6].opaque[1];
  if (v25)
  {
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v25 = swift_allocObject();
    *(v25 + 36) = 0;
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = -1;
  }

  v0[16].opaque[1] = v25;
  v26 = v0[12].opaque[1];
  v27 = v0[10].opaque[1];
  v28 = v0[11].opaque[0];
  sub_1000BF634(v0[13].opaque[0], v26);
  v29 = (*(v28 + 48))(v26, 1, v27);
  v30 = v0[13].opaque[0];
  if (v29 == 1)
  {
    sub_10000DAF8(v0[13].opaque[0], &qword_10023A2B8, &qword_1001BC460);
    v31 = 0;
  }

  else
  {
    v32 = v0[12].opaque[0];
    v33 = v0[11].opaque[0];
    v34 = v0[11].opaque[1];
    v35 = v0[10].opaque[1];
    (*(v33 + 32))(v32, v0[12].opaque[1], v35);
    (*(v33 + 16))(v34, v32, v35);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v31 = sub_1000F61B0("Activity Manager: Static Activity", 33, 2, v34);
    (*(v33 + 8))(v32, v35);
    sub_10000DAF8(v30, &qword_10023A2B8, &qword_1001BC460);
  }

  v0[17].opaque[0] = v31;
  v0[7].opaque[1] = v23;
  v0[8].opaque[0] = v25;
  v0[8].opaque[1] = v31;
  v36 = swift_task_alloc();
  v0[17].opaque[1] = v36;
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = -1;
  *(v36 + 40) = v23;
  *(v36 + 48) = v25;
  *(v36 + 56) = v31;
  *(v36 + 64) = &unk_1001BC4B0;
  *(v36 + 72) = v22;

  v37 = swift_task_alloc();
  v0[18].opaque[0] = v37;
  *v37 = v0;
  v37[1] = sub_1000BCDC8;
  v43 = 114;
  v44 = &type metadata for () + 8;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_1000BCDC8()
{

  if (v0)
  {

    v1 = sub_1000BD170;
  }

  else
  {

    v1 = sub_1000BCF68;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000BCF68()
{
  v14 = v0;
  v1 = v0[27];

  sub_10000DAF8(v1, &qword_10023A2B8, &qword_1001BC460);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[30];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = *(v5 + 24);
    v9 = *(v5 + 32);

    v10 = sub_10017AD04(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Transaction %s out of scope", v6, 0xCu);
    sub_10000DB58(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000BD170()
{
}

uint64_t sub_1000BD224()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000DA7C(v1, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1000BFD2C;

  return v6(v2, v3);
}

void sub_1000BD348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000DA7C(v3, v3[3]);
  sub_10000CE28(a1, v14);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  sub_10000DA64(v14, v8 + 32);
  v9 = *v7;

  v10 = String._bridgeToObjectiveC()();
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = &unk_1001BC458;
  v11[5] = v8;
  aBlock[4] = sub_1000BF570;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000BC264;
  aBlock[3] = &unk_10021C978;
  v12 = _Block_copy(aBlock);

  [v9 registerForTaskWithIdentifier:v10 usingQueue:0 launchHandler:v12];
  _Block_release(v12);
}

void sub_1000BD4C4(void *a1, void *a2)
{
  v3 = v2;
  v104 = a2;
  v5 = type metadata accessor for Date();
  v107 = *(v5 - 8);
  v108 = v5;
  __chkstk_darwin(v5);
  v103 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BarktivityType(0);
  __chkstk_darwin(v7);
  v9 = (&v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  v16 = sub_10000DA7C(a1, v14);
  v105 = v3;
  sub_1000BEF8C(v16, v3, v14, v15);
  v17 = a1[3];
  v18 = a1[4];
  sub_10000DA7C(a1, v17);
  v102 = (*(v18 + 8))(v17, v18);
  v106 = v19;
  v20 = a1[3];
  v21 = a1[4];
  sub_10000DA7C(a1, v20);
  if ((*(v21 + 40))(v20, v21))
  {
    v22 = a1[3];
    v23 = a1[4];
    sub_10000DA7C(a1, v22);
    v109 = (*(v23 + 8))(v22, v23);
    v110 = v24;
    v25._countAndFlagsBits = 45;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    UUID.init()();
    sub_1000BF470();
    v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v26);

    (*(v11 + 8))(v13, v10);
    v28 = v109;
    v27 = v110;
  }

  else
  {
    v29 = a1[3];
    v30 = a1[4];
    sub_10000DA7C(a1, v29);
    v28 = (*(v30 + 8))(v29, v30);
    v27 = v31;
  }

  v32 = v105;
  sub_1000BD348(a1, v28, v27);
  sub_1000BF40C(v104, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v9;
    v34 = a1[3];
    v35 = a1[4];
    sub_10000DA7C(a1, v34);
    v36 = (*(v35 + 56))(v34, v35);
    v37 = a1[3];
    v38 = a1[4];
    sub_10000DA7C(a1, v37);
    v39 = (*(v38 + 16))(v37, v38);
    v40 = a1[3];
    v41 = a1[4];
    sub_10000DA7C(a1, v40);
    LOBYTE(v41) = (*(v41 + 24))(v40, v41);
    v42 = a1[3];
    v43 = a1[4];
    sub_10000DA7C(a1, v42);
    v44 = (*(v43 + 32))(v42, v43);
    v45 = objc_allocWithZone(BGRepeatingSystemTaskRequest);
    v46 = String._bridgeToObjectiveC()();
    v47 = [v45 initWithIdentifier:v46];

    v48 = v47;
    [v48 setPriority:v39];
    [v48 setRequiresNetworkConnectivity:v41 & 1];
    [v48 setRequiresExternalPower:v44 & 1];
    [v48 setInterval:v33];
    [v48 setMinDurationBetweenInstances:v33 * 0.8];
    [v48 setRandomInitialDelay:v36];

    v49 = *sub_10000DA7C(v32, v32[3]);
    v109 = 0;
    if ([v49 submitTaskRequest:v48 error:&v109])
    {
      v50 = v109;

LABEL_9:
      v75 = [objc_opt_self() standardUserDefaults];
      v111 = &type metadata for String;
      v109 = v28;
      v110 = v27;
      sub_10008393C(&v109, v102, v106);

      sub_10000DAF8(&v109, &qword_10023BB90, &qword_1001BA370);
      return;
    }

    v76 = v109;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    if (qword_100239CB8 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_10000DAC0(v77, qword_10023FC58);

    swift_errorRetain();
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v109 = v82;
      *v80 = 136315394;
      v83 = sub_10017AD04(v28, v27, &v109);

      *(v80 + 4) = v83;
      *(v80 + 12) = 2112;
      swift_errorRetain();
      v84 = _swift_stdlib_bridgeErrorToNSError();
      *(v80 + 14) = v84;
      *v81 = v84;
      _os_log_impl(&_mh_execute_header, v78, v79, "Failed to schedule repeating system task %s with error: %@", v80, 0x16u);
      sub_10000DAF8(v81, &qword_100239F10, &qword_1001B4FD0);

      sub_10000DB58(v82);
    }

    else
    {
    }

    swift_willThrow();
  }

  else
  {
    v51 = *(v107 + 32);
    v101 = v27;
    v52 = v103;
    v51(v103, v9, v108);
    v53 = a1[3];
    v54 = a1[4];
    sub_10000DA7C(a1, v53);
    v55 = (*(v54 + 48))(v53, v54);
    v56 = a1[3];
    v57 = a1[4];
    sub_10000DA7C(a1, v56);
    v58 = (*(v57 + 56))(v56, v57);
    v59 = a1[3];
    v60 = a1[4];
    sub_10000DA7C(a1, v59);
    v100 = (*(v60 + 16))(v59, v60);
    v61 = a1[3];
    v62 = a1[4];
    sub_10000DA7C(a1, v61);
    LOBYTE(v61) = (*(v62 + 24))(v61, v62);
    v63 = a1[3];
    v64 = a1[4];
    sub_10000DA7C(a1, v63);
    v65 = v32;
    v66 = (*(v64 + 32))(v63, v64);
    v67 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
    v104 = v28;
    v68 = v52;
    v27 = v101;
    v69 = String._bridgeToObjectiveC()();
    v70 = [v67 initWithIdentifier:v69];

    v71 = v70;
    [v71 setPriority:v100];
    [v71 setRequiresNetworkConnectivity:v61 & 1];
    [v71 setRequiresExternalPower:v66 & 1];
    Date.timeIntervalSinceNow.getter();
    [v71 setScheduleAfter:?];
    Date.timeIntervalSinceNow.getter();
    [v71 setTrySchedulingBefore:v55 + v72];
    [v71 setRandomInitialDelay:v58];

    v73 = *sub_10000DA7C(v65, v65[3]);
    v109 = 0;
    if ([v73 submitTaskRequest:v71 error:&v109])
    {
      v74 = v109;

      (*(v107 + 8))(v68, v108);
      v28 = v104;
      goto LABEL_9;
    }

    v85 = v108;
    v86 = v109;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    if (qword_100239CB8 != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    sub_10000DAC0(v87, qword_10023FC58);

    swift_errorRetain();
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();

    v90 = os_log_type_enabled(v88, v89);
    v91 = v104;
    if (v90)
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v109 = v94;
      *v92 = 136315394;
      v95 = sub_10017AD04(v91, v27, &v109);

      *(v92 + 4) = v95;
      *(v92 + 12) = 2112;
      swift_errorRetain();
      v96 = _swift_stdlib_bridgeErrorToNSError();
      *(v92 + 14) = v96;
      *v93 = v96;
      _os_log_impl(&_mh_execute_header, v88, v89, "Failed to schedule non-repeating system task %s with error: %@", v92, 0x16u);
      sub_10000DAF8(v93, &qword_100239F10, &qword_1001B4FD0);
      v97 = v108;

      sub_10000DB58(v94);

      v98 = v107;
    }

    else
    {

      v98 = v107;
      v97 = v85;
    }

    swift_willThrow();

    (*(v98 + 8))(v103, v97);
  }
}

uint64_t sub_1000BE07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  v4 = type metadata accessor for Logger();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_1000BE1C8, 0, 0);
}

uint64_t sub_1000BE1C8()
{
  v36 = v0;
  if (qword_100239CB8 != -1)
  {
    swift_once();
  }

  *(v0 + 200) = sub_10000DAC0(*(v0 + 144), qword_10023FC58);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v34 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10017AD04(v4, v3, &v34);
    _os_log_impl(&_mh_execute_header, v1, v2, "Running barktivity: %s", v5, 0xCu);
    sub_10000DB58(v6);
  }

  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v9 = *(v0 + 144);
  v10 = *(v0 + 152);
  v11 = *(v0 + 128);
  v12 = *(v0 + 136);
  v13 = *(v0 + 120);
  v34 = 0;
  v35 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v34 = 0xD000000000000017;
  v35 = 0x80000001001CCA20;
  v14._countAndFlagsBits = v13;
  v14._object = v11;
  String.append(_:)(v14);
  v15 = v34;
  v16 = v35;
  type metadata accessor for Transaction();
  *(v0 + 208) = swift_initStackObject();
  *(v0 + 216) = sub_1001799E0(v15, v16);
  (*(v10 + 56))(v7, 1, 1, v9);
  v17 = swift_task_alloc();
  *(v0 + 224) = v17;
  *(v17 + 16) = v12;
  sub_1000BF634(v7, v8);
  type metadata accessor for LogActivity();
  v18 = swift_allocObject();
  *(v0 + 232) = v18;
  if (qword_100239D28 != -1)
  {
    swift_once();
  }

  v19 = _os_activity_create(&_mh_execute_header, "Activity Manager: Barktivity", qword_10023DAF8, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v19, (v0 + 104));
  swift_unknownObjectRelease();
  *(v18 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v20 = *(v0 + 64);
  if (v20)
  {
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v20 = swift_allocObject();
    *(v20 + 36) = 0;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = -1;
  }

  *(v0 + 240) = v20;
  v21 = *(v0 + 176);
  v22 = *(v0 + 144);
  v23 = *(v0 + 152);
  sub_1000BF634(*(v0 + 184), v21);
  v24 = (*(v23 + 48))(v21, 1, v22);
  v25 = *(v0 + 184);
  if (v24 == 1)
  {
    sub_10000DAF8(*(v0 + 184), &qword_10023A2B8, &qword_1001BC460);
    v26 = 0;
  }

  else
  {
    v27 = *(v0 + 168);
    v28 = *(v0 + 152);
    v29 = *(v0 + 160);
    v30 = *(v0 + 144);
    (*(v28 + 32))(v27, *(v0 + 176), v30);
    (*(v28 + 16))(v29, v27, v30);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v26 = sub_1000F61B0("Activity Manager: Barktivity", 28, 2, v29);
    (*(v28 + 8))(v27, v30);
    sub_10000DAF8(v25, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 248) = v26;
  *(v0 + 80) = v18;
  *(v0 + 88) = v20;
  *(v0 + 96) = v26;
  v31 = swift_task_alloc();
  *(v0 + 256) = v31;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = -1;
  *(v31 + 40) = v18;
  *(v31 + 48) = v20;
  *(v31 + 56) = v26;
  *(v31 + 64) = &unk_1001BC470;
  *(v31 + 72) = v17;

  v32 = swift_task_alloc();
  *(v0 + 264) = v32;
  *v32 = v0;
  v32[1] = sub_1000BE770;
  v38 = 114;
  v39 = &type metadata for () + 8;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_1000BE770()
{

  if (v0)
  {

    v1 = sub_1000BEB18;
  }

  else
  {

    v1 = sub_1000BE910;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000BE910()
{
  v14 = v0;
  v1 = v0[24];

  sub_10000DAF8(v1, &qword_10023A2B8, &qword_1001BC460);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[27];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = *(v5 + 24);
    v9 = *(v5 + 32);

    v10 = sub_10017AD04(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Transaction %s out of scope", v6, 0xCu);
    sub_10000DB58(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000BEB18()
{
}

uint64_t sub_1000BEBCC()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000DA7C(v1, v2);
  if ((*(v3 + 40))(v2, v3))
  {
    v4 = v1[3];
    v5 = v1[4];
    sub_10000DA7C(*(v0 + 16), v4);
    v6 = (*(v5 + 8))(v4, v5);
    v8 = v7;
    v9 = [objc_opt_self() standardUserDefaults];
    _StringGuts.grow(_:)(22);

    v10._countAndFlagsBits = v6;
    v10._object = v8;
    String.append(_:)(v10);

    v11 = String._bridgeToObjectiveC()();

    [v9 removeObjectForKey:v11];
  }

  v13 = v1[3];
  v12 = v1[4];
  sub_10000DA7C(*(v0 + 16), v13);
  v16 = (*(v12 + 64) + **(v12 + 64));
  v14 = swift_task_alloc();
  *(v0 + 24) = v14;
  *v14 = v0;
  v14[1] = sub_1000BEE10;

  return v16(v13, v12);
}

uint64_t sub_1000BEE10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000BEF5C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1000BEF8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v41[3] = a3;
  v41[4] = a4;
  sub_10005CA24(v41);
  (*(*(a3 - 8) + 16))();
  v7 = *(a4 + 8);
  v8 = v7(a3, a4);
  v10 = v9;
  v11 = objc_opt_self();
  v12 = [v11 standardUserDefaults];
  v39._countAndFlagsBits = v8;
  v13 = sub_1000BC3B0(v8, v10);
  v15 = v14;

  if (v15)
  {
    v16 = *sub_10000DA7C(a2, a2[3]);
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 deregisterTaskWithIdentifier:v17];

    v19 = [v11 standardUserDefaults];
    _StringGuts.grow(_:)(22);

    v40[0] = 0xD000000000000014;
    v40[1] = 0x80000001001CBE80;
    v20._countAndFlagsBits = v39._countAndFlagsBits;
    v20._object = v10;
    String.append(_:)(v20);

    v21 = String._bridgeToObjectiveC()();

    [v19 removeObjectForKey:v21];

    if (qword_100239CB8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000DAC0(v22, qword_10023FC58);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40[0] = v26;
      *v25 = 136315394;
      v27 = sub_10017AD04(v13, v15, v40);

      *(v25 + 4) = v27;
      *(v25 + 12) = 1024;
      *(v25 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v23, v24, "Attempted to deregister '%s' with result: %{BOOL}d", v25, 0x12u);
      sub_10000DB58(v26);
    }

    else
    {
    }
  }

  else
  {

    if (qword_100239CB8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000DAC0(v28, qword_10023FC58);
    sub_10000CE28(v41, v40);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v7;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v39._object = v33;
      *v32 = 136315138;
      sub_10000DA7C(v40, v40[3]);
      v34 = v31(a3, a4);
      v36 = v35;
      sub_10000DB58(v40);
      v37 = sub_10017AD04(v34, v36, &v39._object);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "No cached barktivity found for activity: %s", v32, 0xCu);
      sub_10000DB58(v33);
    }

    else
    {

      sub_10000DB58(v40);
    }
  }

  return sub_10000DB58(v41);
}

uint64_t sub_1000BF40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BarktivityType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000BF470()
{
  result = qword_10023C610;
  if (!qword_10023C610)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C610);
  }

  return result;
}

uint64_t sub_1000BF4CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000152E0;

  return sub_1000BE07C(v2, v3, v0 + 32);
}

uint64_t sub_1000BF57C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BF594(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BD30;

  return sub_1000BEBAC(a1, v4);
}

uint64_t sub_1000BF634(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BF6A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 32);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000152E0;

  return sub_10016FB7C(a1, v4, v5, v10, v6, v7, v8, v9);
}

uint64_t sub_1000BF794()
{

  sub_10000DB58((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000BF7D4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000BD30;

  return sub_1000BE07C(v2, v3, v0 + 32);
}

double sub_1000BF87C()
{
  sub_10000CDE0(&qword_10023C620, &qword_1001BC4C0);
  v0 = swift_allocObject();
  *&result = 5;
  *(v0 + 16) = xmmword_1001BC430;
  *(v0 + 56) = &type metadata for BootstrapActivity;
  *(v0 + 64) = &off_100222E20;
  *(v0 + 32) = 0xD000000000000023;
  *(v0 + 40) = 0x80000001001CCB10;
  *(v0 + 96) = &type metadata for CleanDatabaseRepeatingActivity;
  *(v0 + 104) = &off_10021BE70;
  *(v0 + 72) = 0xD000000000000028;
  *(v0 + 80) = 0x80000001001CCB40;
  *(v0 + 136) = &type metadata for PostbackTransmissionRepeatingActivity;
  *(v0 + 144) = &off_100219AB8;
  *(v0 + 112) = 0xD00000000000002FLL;
  *(v0 + 120) = 0x80000001001CCB70;
  *(v0 + 176) = &type metadata for SnoutFlushRepeatingActivity;
  *(v0 + 184) = &off_10021CD78;
  *(v0 + 152) = 0xD000000000000035;
  *(v0 + 160) = 0x80000001001CCBA0;
  *(v0 + 216) = &type metadata for TokenVendingFetchRepeatingActivity;
  *(v0 + 224) = &off_100218FE8;
  *(v0 + 192) = 0xD00000000000002DLL;
  *(v0 + 200) = 0x80000001001CCBE0;
  return result;
}

uint64_t sub_1000BF99C()
{
  sub_10000CDE0(&qword_10023C618, &qword_1001BC490);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001B75D0;
  *(v0 + 56) = &type metadata for DelayedWoof;
  *(v0 + 64) = &off_1002195E0;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  *(v1 + 16) = 0xD000000000000028;
  *(v1 + 24) = 0x80000001001CCA90;
  *(v1 + 32) = 2;
  *(v1 + 40) = 1;
  *(v1 + 42) = 1;
  *(v1 + 48) = xmmword_1001BC440;
  *(v0 + 96) = &type metadata for DeveloperModeResetBarktivity;
  *(v0 + 104) = &off_100222B58;
  v2 = swift_allocObject();
  *(v0 + 72) = v2;
  *(v2 + 16) = 0xD00000000000002ELL;
  *(v2 + 24) = 0x80000001001CC990;
  *(v2 + 32) = 1;
  *(v2 + 40) = 0;
  *(v2 + 42) = 0;
  *(v2 + 48) = xmmword_1001BC2A0;
  *(v0 + 136) = &type metadata for DevelopmentPostbackTransmissionBarktivity;
  *(v0 + 144) = &off_10021C740;
  v3 = swift_allocObject();
  *(v0 + 112) = v3;
  *(v3 + 16) = 0xD00000000000003BLL;
  *(v3 + 24) = 0x80000001001CC9C0;
  *(v3 + 32) = 2;
  *(v3 + 40) = 1;
  *(v3 + 42) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  return v0;
}

uint64_t sub_1000BFB18()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000BFB50()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000BFB88()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000152E0;

  return sub_1000BC654(v0 + 16);
}

uint64_t sub_1000BFC1C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000BFC5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000152E0;

  return sub_1000BD204(a1, v4);
}

void sub_1000BFD48(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v54[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v54[-v7];
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  URL.init(string:)();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10001B884(v8);
    return;
  }

  (*(v10 + 32))(v12, v8, v9);
  v13 = URL.host(percentEncoded:)(1);
  if (!v13.value._object)
  {
    (*(v10 + 8))(v12, v9);
    return;
  }

  v59 = v13;
  v62 = 46;
  v63 = 0xE100000000000000;
  sub_10003E5C8();
  v14 = StringProtocol.components<A>(separatedBy:)();

  v15 = *(v14 + 16);
  if (v15)
  {
    if (*(v14 + 32) != 7829367 || *(v14 + 40) != 0xE300000000000000)
    {
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_13;
      }

      v15 = *(v14 + 16);
      if (!v15)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v14;
    if (!isUniquelyReferenced_nonNull_native || (v15 - 1) > *(v14 + 24) >> 1)
    {
      v14 = sub_100088BDC(isUniquelyReferenced_nonNull_native, v15, 1, v14);
      v64 = v14;
    }

    sub_1000C0420(0, 1, 0);
  }

LABEL_13:
  v17 = *(v14 + 16);
  if (!v17)
  {
    v21 = Logger.general.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v21, v2);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "URL does not have a valid host.", v24, 2u);
    }

    (*(v3 + 8))(v5, v2);
    goto LABEL_27;
  }

  if (v17 == 1)
  {
LABEL_27:
    (*(v10 + 8))(v12, v9);

    return;
  }

  v18 = (v14 + 40);
  v19 = v17 + 1;
  while (--v19)
  {
    if (*(v18 - 1))
    {
      v20 = 0;
    }

    else
    {
      v20 = *v18 == 0xE000000000000000;
    }

    if (!v20)
    {
      v18 += 2;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  v56 = v17;
  v57 = (v14 + 32);
  if (v17 > *(v14 + 16))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v25 = v56;
  v26 = &v57[16 * v56];
  v27 = *(v26 - 2);
  v28 = *(v26 - 1);
  v59.value._countAndFlagsBits = 46;
  v59.value._object = 0xE100000000000000;

  v29._countAndFlagsBits = v27;
  v29._object = v28;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  String.append(_:)(v30);

  countAndFlagsBits = v59.value._countAndFlagsBits;
  object = v59.value._object;
  v33 = String._bridgeToObjectiveC()();
  IsDomainTopLevel = _CFHostIsDomainTopLevel();

  v55 = IsDomainTopLevel;
  v58 = v14;
  if (IsDomainTopLevel)
  {
    v35 = (v14 + 16 * v25 + 8);
    v36 = v25;
    while (--v36 >= 1)
    {
      if (v36 > *(v58 + 16))
      {
        goto LABEL_43;
      }

      v37 = *(v35 - 1);
      v38 = *v35;
      v59.value._countAndFlagsBits = 46;
      v59.value._object = 0xE100000000000000;

      v39._countAndFlagsBits = v37;
      v39._object = v38;
      String.append(_:)(v39);

      v40._countAndFlagsBits = countAndFlagsBits;
      v40._object = object;
      String.append(_:)(v40);

      countAndFlagsBits = v59.value._countAndFlagsBits;
      object = v59.value._object;
      v41 = String._bridgeToObjectiveC()();
      LODWORD(v37) = _CFHostIsDomainTopLevel();

      v35 -= 2;
      if (!v37)
      {
        goto LABEL_36;
      }
    }

    v43 = v57;
    v42 = v58;
    v44 = v56;

    if (v44)
    {
      goto LABEL_39;
    }

    goto LABEL_27;
  }

  v36 = v25;
LABEL_36:

  v43 = v57;
  v42 = v58;
  if (!v55)
  {
    goto LABEL_27;
  }

LABEL_39:
  v45 = *(v42 + 16);
  if (v45 < v36)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v59.value._countAndFlagsBits = v42;
  v59.value._object = v43;
  v60 = v36;
  v61 = (2 * v45) | 1;

  sub_10000CDE0(&qword_10023C628, &unk_1001BC580);
  sub_1000C03BC();
  v46 = BidirectionalCollection<>.joined(separator:)();
  v48 = v47;

  v49 = v36 - 1;
  if ((v36 - 1) < 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v49 < *(v42 + 16))
  {
    v50 = &v43[16 * v49];
    v51 = v50[1];
    v59.value._countAndFlagsBits = *v50;
    v59.value._object = v51;

    v52._countAndFlagsBits = 46;
    v52._object = 0xE100000000000000;
    String.append(_:)(v52);
    v53._countAndFlagsBits = v46;
    v53._object = v48;
    String.append(_:)(v53);

    (*(v10 + 8))(v12, v9);

    return;
  }

LABEL_47:
  __break(1u);
}

unint64_t sub_1000C03BC()
{
  result = qword_10023C630;
  if (!qword_10023C630)
  {
    sub_10000CCC0(&qword_10023C628, &unk_1001BC580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C630);
  }

  return result;
}

unint64_t sub_1000C0420(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}