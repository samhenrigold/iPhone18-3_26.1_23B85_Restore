uint64_t sub_1C4A4D804()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4A4D860()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

void *sub_1C4A4D8E0()
{
  v0[2] = 0x6576694C77656956;
  v0[3] = 0xE800000000000000;
  v0[4] = sub_1C4A4D920(0, 60);
  return v0;
}

uint64_t sub_1C4A4D920(int64_t a1, int64_t a2)
{
  sub_1C4A4D498();
  v5 = v4;
  xpc_dictionary_set_int64(v4, *MEMORY[0x1E69E9C68], a1);
  xpc_dictionary_set_int64(v5, *MEMORY[0x1E69E9C98], a2);
  xpc_dictionary_set_string(v5, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  sub_1C456902C(&qword_1EC0C1C78, &qword_1C4F470B8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v5;
  return result;
}

uint64_t sub_1C4A4D9DC()
{
  sub_1C43FCF70();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44(&qword_1EDDF9710);
  }

  *(v0 + 24) = sub_1C4415590();
  sub_1C440AF8C();
  v1 = swift_task_alloc();
  v2 = sub_1C4414DF4(v1);
  *v2 = v3;
  sub_1C43FC688(v2);
  sub_1C441FF28();

  return sub_1C4427590(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C4A4DAE0()
{
  sub_1C43FBCD4();
  sub_1C43FDB88();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    v7 = sub_1C4A51E6C;
  }

  else
  {

    v7 = sub_1C4A51E8C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void *sub_1C4A4DC08()
{
  v0[2] = 0x72756F4877656956;
  v0[3] = 0xEA0000000000796CLL;
  v0[4] = sub_1C4A4D920(3600, 1800);
  return v0;
}

uint64_t sub_1C4A4DC60()
{
  sub_1C43FCF70();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44(&qword_1EDDF9710);
  }

  *(v0 + 24) = sub_1C4415590();
  sub_1C440AF8C();
  v1 = swift_task_alloc();
  v2 = sub_1C4414DF4(v1);
  *v2 = v3;
  sub_1C43FC688(v2);
  sub_1C441FF28();

  return sub_1C4427590(v4, v5, v6, v7, v8, v9);
}

void *sub_1C4A4DD88()
{
  v0[2] = 0xD000000000000012;
  v0[3] = 0x80000001C4FADF90;
  v0[4] = sub_1C4A4DF4C(1260, 60);
  return v0;
}

uint64_t sub_1C4A4DDE0()
{
  sub_1C43FCF70();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44(&qword_1EDDF9710);
  }

  *(v0 + 24) = sub_1C4415590();
  sub_1C440AF8C();
  v1 = swift_task_alloc();
  v2 = sub_1C4414DF4(v1);
  *v2 = v3;
  sub_1C43FC688(v2);
  sub_1C441FF28();

  return sub_1C4427590(v4, v5, v6, v7, v8, v9);
}

void *sub_1C4A4DF08()
{
  v0[2] = 0xD000000000000011;
  v0[3] = 0x80000001C4FADFB0;
  v0[4] = sub_1C4A4DF4C(420, 60);
  return v0;
}

uint64_t sub_1C4A4DF4C(int64_t a1, int64_t a2)
{
  sub_1C4A4D498();
  v5 = v4;
  xpc_dictionary_set_int64(v4, *MEMORY[0x1E69E9C68], a1);
  xpc_dictionary_set_int64(v5, *MEMORY[0x1E69E9C98], a2);
  xpc_dictionary_set_string(v5, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x1E69E9C40], 1);
  sub_1C456902C(&qword_1EC0C1C78, &qword_1C4F470B8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v5;
  return result;
}

uint64_t sub_1C4A4E020()
{
  sub_1C43FCF70();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44(&qword_1EDDF9710);
  }

  *(v0 + 24) = sub_1C4415590();
  sub_1C440AF8C();
  v1 = swift_task_alloc();
  v2 = sub_1C4414DF4(v1);
  *v2 = v3;
  sub_1C43FC688(v2);
  sub_1C441FF28();

  return sub_1C4427590(v4, v5, v6, v7, v8, v9);
}

void *sub_1C4A4E144()
{
  v0[2] = 0xD000000000000017;
  v0[3] = 0x80000001C4FADFD0;
  v0[4] = sub_1C4A4DF4C(300, 120);
  return v0;
}

void *sub_1C4A4E188()
{
  type metadata accessor for OneShotSingletons();
  swift_allocObject();
  result = sub_1C4A4E1C8();
  off_1EDDFB450 = result;
  return result;
}

uint64_t sub_1C4A4E1C8()
{
  type metadata accessor for OneShotSingletons.GuardedData();
  v1 = swift_allocObject();
  type metadata accessor for OneShotTask();
  *(v1 + 16) = sub_1C4F00F28();
  sub_1C456902C(&unk_1EC0C1C80, &qword_1C4F470D8);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

void sub_1C4A4E27C()
{
  v0 = 3650 * *MEMORY[0x1E69E9CC0];
  if ((*MEMORY[0x1E69E9CC0] * 3650) >> 64 == v0 >> 63)
  {
    v1 = __OFADD__(v0, *MEMORY[0x1E69E9CC8]);
    v2 = v0 + *MEMORY[0x1E69E9CC8];
    if (!v1)
    {
      qword_1EDDEB328 = v2;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1C4A4E2C4()
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9D88], 1);
  if (qword_1EDDEB338 != -1)
  {
    sub_1C4411060(&qword_1EDDEB338);
  }

  v1 = qword_1EDDEB328;
  v2 = sub_1C43FBC98();
  xpc_dictionary_set_int64(v2, v3, v1);
  xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9C68], v1);
  xpc_dictionary_set_int64(empty, *MEMORY[0x1E69E9C98], v1);
  xpc_dictionary_set_string(empty, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9C40], 0);
  if (!*MEMORY[0x1E69E9C60])
  {
    __break(1u);
    goto LABEL_8;
  }

  xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9C60], 1);
  if (!*MEMORY[0x1E69E9CA8])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1C4F011C8();
  v4 = sub_1C43FBC98();
  xpc_dictionary_set_string(v4, v5, v6);

  if (*MEMORY[0x1E69E9CA0])
  {
    xpc_dictionary_set_uint64(empty, *MEMORY[0x1E69E9CA0], 1uLL);
    return;
  }

LABEL_9:
  __break(1u);
}

BOOL sub_1C4A4E438()
{
  int64 = xpc_dictionary_get_int64(v0, *MEMORY[0x1E69E9CB0]);
  if (qword_1EDDEB338 != -1)
  {
    sub_1C4411060(&qword_1EDDEB338);
  }

  return int64 == qword_1EDDEB328;
}

uint64_t sub_1C4A4E49C()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for Pipeline.StatusStore(0);
  v1[7] = swift_task_alloc();
  v1[8] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4A4E56C, 0, 0);
}

uint64_t sub_1C4A4E56C()
{
  sub_1C4404D98();
  v28 = v0;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v1 = v0[5];
  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2DE10);

  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    sub_1C43FD084();
    v6 = sub_1C440E550();
    v27 = v6;
    *v1 = 136315138;
    *(v1 + 4) = sub_1C441D828(*(v5 + 16), *(v5 + 24), &v27);
    sub_1C4415A90();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    sub_1C440962C(v6);
    sub_1C43FFD4C();
    sub_1C43FEA20();
  }

  if (qword_1EDDFBCB0 != -1)
  {
    swift_once();
  }

  v12 = v0[9];
  v13 = sub_1C442B738(v0[8], qword_1EDE2DD70);
  swift_beginAccess();
  sub_1C4466EEC(v13, v12);
  v14 = type metadata accessor for Configuration(0);
  result = sub_1C44157D4(v12, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (qword_1EDDF0AB0 != -1)
    {
      swift_once();
    }

    v16 = sub_1C4468E90();
    v0[10] = v16;
    v18 = v0[6];
    v17 = v0[7];
    sub_1C4454168();
    sub_1C44098F0(v16 + OBJC_IVAR____TtC24IntelligencePlatformCore8Pipeline_stores, v17);
    *(v17 + *(v18 + 20)) = 1;
    LOBYTE(v18) = Pipeline.StatusStore.isLongRunningPipelineActivated()();
    sub_1C4454168();
    if ((v18 & 1) == 0)
    {
      v22 = sub_1C4F00968();
      v23 = sub_1C4F01CF8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1C43F8000, v22, v23, "ConstructionSystemTasks: Long Running Pipeline activity is not yet detected to be used yet.", v24, 2u);
        sub_1C43FBE2C();
      }

      sub_1C43FBDA0();
      sub_1C4402234();

      __asm { BRAA            X1, X16 }
    }

    v19 = swift_task_alloc();
    v0[11] = v19;
    *v19 = v0;
    sub_1C43FC688(v19);
    sub_1C4402234();

    return sub_1C4ABFCBC(v20);
  }

  return result;
}

uint64_t sub_1C4A4E904()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (v0)
  {
    v7 = sub_1C4A4EA70;
  }

  else
  {
    v7 = sub_1C4A4EA00;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C4A4EA00()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4A4EA70()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4A4EAE0()
{
  v1 = v0;
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14[-1] - v3;
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DE10);

  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CF8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1C441D828(*(v1 + 16), *(v1 + 24), v14);
    _os_log_impl(&dword_1C43F8000, v6, v7, "ConstructionSystemTasks: %s: asked to defer.", v8, 0xCu);
    sub_1C440962C(v9);
    MEMORY[0x1C6942830](v9, -1, -1);
    MEMORY[0x1C6942830](v8, -1, -1);
  }

  if (qword_1EDDFBCB0 != -1)
  {
    swift_once();
  }

  v10 = sub_1C442B738(v2, qword_1EDE2DD70);
  swift_beginAccess();
  sub_1C4466EEC(v10, v4);
  v11 = type metadata accessor for Configuration(0);
  result = sub_1C44157D4(v4, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (qword_1EDDF0AB0 != -1)
    {
      swift_once();
    }

    sub_1C4468E90();
    sub_1C4454168();
    sub_1C4ABF738();
  }

  return result;
}

uint64_t sub_1C4A4EDA8()
{

  return v0;
}

void *sub_1C4A4EDF4()
{
  v0[2] = 0xD000000000000018;
  v0[3] = 0x80000001C4FAE010;
  sub_1C4A4D498();
  v2 = v1;
  xpc_dictionary_set_BOOL(v1, *MEMORY[0x1E69E9C40], 0);
  sub_1C456902C(&qword_1EC0C1C78, &qword_1C4F470B8);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = v2;
  v0[4] = v3;
  return v0;
}

uint64_t sub_1C4A4EE9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return sub_1C4A4E49C();
}

void sub_1C4A4EF2C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24[-v9];
  if (qword_1EDDFBCB0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C442B738(v8, qword_1EDE2DD70);
  swift_beginAccess();
  sub_1C4466EEC(v11, v10);
  v12 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v10, 1, v12) == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = &v10[*(v12 + 20)];
    v14 = *v13;
    v15 = v13[1];
    v16 = sub_1C4454168();
    if (qword_1EDDFEC88 != -1)
    {
      v16 = swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v14) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v15) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v19 = sub_1C4F00978();
      sub_1C442B738(v19, qword_1EDE2DE10);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v20 = sub_1C4F00968();
      v21 = sub_1C4F01CF8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v25 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_1C441D828(a2, a3, &v25);
        _os_log_impl(&dword_1C43F8000, v20, v21, "ScheduledTask: %s: registered as a no-op.", v22, 0xCu);
        sub_1C440962C(v23);
        MEMORY[0x1C6942830](v23, -1, -1);
        MEMORY[0x1C6942830](v22, -1, -1);
      }
    }

    else
    {
      v25 = 5;
      v18 = *(a4 + 56);
      MEMORY[0x1EEE9AC00](v16);
      *&v24[-16] = a1;
      *&v24[-8] = &v25;
      os_unfair_lock_lock(v18 + 6);
      sub_1C4A51E70(&v18[4]);
      os_unfair_lock_unlock(v18 + 6);
      sub_1C4A4F5A4(v25, sub_1C4AF1190, sub_1C4A4FAC8);
    }
  }
}

void sub_1C4A4F268(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24[-v9];
  if (qword_1EDDFBCB0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C442B738(v8, qword_1EDE2DD70);
  swift_beginAccess();
  sub_1C4466EEC(v11, v10);
  v12 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v10, 1, v12) == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = &v10[*(v12 + 20)];
    v14 = *v13;
    v15 = v13[1];
    v16 = sub_1C4454168();
    if (qword_1EDDFEC88 != -1)
    {
      v16 = swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v14) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v15) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v19 = sub_1C4F00978();
      sub_1C442B738(v19, qword_1EDE2DE10);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v20 = sub_1C4F00968();
      v21 = sub_1C4F01CF8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v25 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_1C441D828(a2, a3, &v25);
        _os_log_impl(&dword_1C43F8000, v20, v21, "ScheduledTask: %s: registered as a no-op.", v22, 0xCu);
        sub_1C440962C(v23);
        MEMORY[0x1C6942830](v23, -1, -1);
        MEMORY[0x1C6942830](v22, -1, -1);
      }
    }

    else
    {
      v25 = 5;
      v18 = *(a4 + 56);
      MEMORY[0x1EEE9AC00](v16);
      *&v24[-16] = a1;
      *&v24[-8] = &v25;
      os_unfair_lock_lock(v18 + 6);
      sub_1C4A51870(&v18[4]);
      os_unfair_lock_unlock(v18 + 6);
      sub_1C4A4F5A4(v25, sub_1C4AF12B4, sub_1C4A4FCD4);
    }
  }
}

void sub_1C4A4F5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[6];
  sub_1C4409678(v3 + 2, v3[5]);
  v7 = sub_1C4406834();
  v8(v7, v6);
  if (a1 == 2)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v18 = sub_1C4F00978();
    sub_1C442B738(v18, qword_1EDE2DE10);
    sub_1C4406834();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CF8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = sub_1C43FD084();
      v22 = swift_slowAlloc();
      v64[0] = v22;
      *v21 = 136315138;
      v23 = sub_1C4404C28();
      *(v21 + 4) = sub_1C441D828(v23, v24, v25);
      _os_log_impl(&dword_1C43F8000, v19, v20, "ScheduledTask: %s: is running", v21, 0xCu);
      sub_1C440962C(v22);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    sub_1C442E860((v3 + 2), v64);
    sub_1C456902C(&qword_1EC0C1C48, &qword_1C4F47060);
    v26 = sub_1C456902C(&qword_1EC0C1C50, &qword_1C4F47068);
    if (sub_1C443FE94(v26, v27, v28, v29, v30, v31, v32))
    {

      sub_1C441D670(v63, v62);
      (a3)(v62);
    }

    else
    {
      v43 = sub_1C456902C(&qword_1EC0C1C58, &unk_1C4F47070);
      if (!sub_1C443FE94(v43, v44, v45, v46, v47, v48, v49))
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v52 = sub_1C4F00968();
        v53 = sub_1C4F01CB8();

        if (os_log_type_enabled(v52, v53))
        {
          sub_1C43FD084();
          v54 = sub_1C440E550();
          *&v63[0] = v54;
          *a3 = 136315138;
          v55 = sub_1C4404C28();
          v58 = sub_1C441D828(v55, v56, v57);

          *(a3 + 4) = v58;
          sub_1C44003E4(&dword_1C43F8000, v59, v60, "ScheduledTask: %s: has no runner");
          sub_1C440962C(v54);
          sub_1C43FFD4C();
          sub_1C43FEA20();
        }

        else
        {
        }

        goto LABEL_31;
      }

      sub_1C441D670(v63, v62);
      sub_1C4A4FEE0(v62);
    }

    sub_1C440962C(v62);
LABEL_31:
    sub_1C440962C(v64);
    goto LABEL_32;
  }

  if (!a1)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDE2DE10);
    sub_1C4406834();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CF8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = sub_1C43FD084();
      v13 = swift_slowAlloc();
      v64[0] = v13;
      *v12 = 136315138;
      v14 = sub_1C4404C28();
      v17 = sub_1C441D828(v14, v15, v16);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1C43F8000, v10, v11, "ScheduledTask: %s: checking in", v12, 0xCu);
      sub_1C440962C(v13);
      sub_1C43FBE2C();
      sub_1C43FFD4C();
    }

    else
    {
    }

    sub_1C441C3F4();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v33 = sub_1C4F00978();
  sub_1C442B738(v33, qword_1EDE2DE10);
  sub_1C4406834();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  oslog = sub_1C4F00968();
  v34 = sub_1C4F01CD8();

  if (os_log_type_enabled(oslog, v34))
  {
    v35 = sub_1C440F274();
    v64[0] = sub_1C43FC11C();
    *v35 = 136315394;
    v36 = sub_1C4404C28();
    sub_1C441D828(v36, v37, v38);
    sub_1C4406834();

    *(v35 + 4) = v3;
    *(v35 + 12) = 2080;
    *&v63[0] = a1;
    v39 = sub_1C4F02858();
    sub_1C441D828(v39, v40, v64);
    sub_1C4406834();

    *(v35 + 14) = v63;
    _os_log_impl(&dword_1C43F8000, oslog, v34, "ScheduledTask: %s: unexpected state: %s", v35, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();

LABEL_32:
    sub_1C441C3F4();
    return;
  }

  sub_1C441C3F4();
}

uint64_t sub_1C4A4FAC8(void *a1)
{
  v2 = v1;
  v4 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18[-v5];
  v25 = v1;
  v8 = a1[3];
  v7 = a1[4];
  sub_1C4409678(a1, v8);
  v9 = (*(*(v7 + 8) + 8))(v8);
  v11 = v10;
  v12 = *(v2 + 56);

  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);
  *(v13 + 40) = 0;
  *(v13 + 32) = 0;
  os_unfair_lock_unlock((v12 + 24));

  sub_1C4F01898();
  v14 = sub_1C4F018C8();
  sub_1C440BAA8(v6, 0, 1, v14);
  sub_1C442E860(a1, v24);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v2;
  sub_1C441D670(v24, (v15 + 5));
  v15[10] = v9;
  v15[11] = v11;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = sub_1C4CDA340(0, 0, v6, &unk_1C4F470C8, v15);
  sub_1C4420C3C(v6, &qword_1EC0BC660, &qword_1C4F29150);
  v19 = v9;
  v20 = v11;
  v21 = &v25;
  v22 = a1;
  v23 = v16;

  os_unfair_lock_lock((v12 + 24));
  sub_1C4A51C50(v12 + 16);
  os_unfair_lock_unlock((v12 + 24));
}

uint64_t sub_1C4A4FCD4(void *a1)
{
  v2 = v1;
  v4 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18[-v5];
  v25 = v1;
  v8 = a1[3];
  v7 = a1[4];
  sub_1C4409678(a1, v8);
  v9 = (*(*(v7 + 8) + 8))(v8);
  v11 = v10;
  v12 = *(v2 + 56);

  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);
  *(v13 + 40) = 0;
  *(v13 + 32) = 0;
  os_unfair_lock_unlock((v12 + 24));

  sub_1C4F01898();
  v14 = sub_1C4F018C8();
  sub_1C440BAA8(v6, 0, 1, v14);
  sub_1C442E860(a1, v24);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v2;
  sub_1C441D670(v24, (v15 + 5));
  v15[10] = v9;
  v15[11] = v11;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = sub_1C4CDA340(0, 0, v6, &unk_1C4F47088, v15);
  sub_1C4420C3C(v6, &qword_1EC0BC660, &qword_1C4F29150);
  v19 = v9;
  v20 = v11;
  v21 = &v25;
  v22 = a1;
  v23 = v16;

  os_unfair_lock_lock((v12 + 24));
  sub_1C4A51A68(v12 + 16);
  os_unfair_lock_unlock((v12 + 24));
}

void sub_1C4A4FEE0(void *a1)
{
  sub_1C4409678(a1, a1[3]);
  v3 = sub_1C4406834();
  v5 = v4(v3);
  v7 = v6;
  v8 = a1[3];
  v9 = a1[4];
  sub_1C4409678(a1, v8);
  (*(v9 + 16))(v8, v9);
  v10 = *(v1 + 56);
  os_unfair_lock_lock((v10 + 24));
  if (*(*(v10 + 16) + 24))
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C4AF0CD4(v5, v7, ObjectType, v12, v13, v14, v15, v16, v17);
    swift_unknownObjectRelease();
    os_unfair_lock_unlock((v10 + 24));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C4A50184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C4A501AC, 0, 0);
}

uint64_t sub_1C4A501AC()
{
  sub_1C445E918();
  os_unfair_lock_lock((v0 + 24));
  *(*(v0 + 16) + 16) = 0;
  os_unfair_lock_unlock((v0 + 24));

  *(v1 + 88) = 0;
  v2 = sub_1C4402120();
  sub_1C4409678(v2, v3);
  sub_1C442E424();
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v1 + 72) = v5;
  *v5 = v1;
  sub_1C43FC688(v5);
  v6 = sub_1C4402B58();

  return v8(v6);
}

uint64_t sub_1C4A502D8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {
    v7 = sub_1C4A50480;
  }

  else
  {
    v7 = sub_1C4A503D4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1C4A503D4()
{
  sub_1C4404D98();
  v3 = sub_1C4405F18();
  sub_1C443F2B4(v3);
  os_unfair_lock_lock((v0 + 24));
  sub_1C4A51D0C((v0 + 16));
  os_unfair_lock_unlock((*(v2 - 24) + 24));
  if (!v1)
  {

    sub_1C43FBDA0();
    sub_1C4402234();

    __asm { BRAA            X1, X16 }
  }

  sub_1C4402234();
}

void sub_1C4A50480()
{
  v24 = v0;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v1 = *(v0 + 80);
  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = v1;
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CD8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = sub_1C440F274();
    v23 = sub_1C43FC11C();
    v10 = sub_1C440C630(4.8151e-34, v23, v9);
    sub_1C442532C(v10);
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v11 = sub_1C4F01198();
    v13 = sub_1C441D828(v11, v12, &v23);

    *(v8 + 14) = v13;
    sub_1C4415A90();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
    swift_arrayDestroy();
    sub_1C43FFD4C();
    sub_1C43FEA20();
  }

  else
  {
  }

  v19 = *(v0 + 64);
  v20 = swift_task_alloc();
  sub_1C447F224(v20);
  os_unfair_lock_lock((v19 + 24));
  sub_1C4A51D0C((v19 + 16));
  os_unfair_lock_unlock((*(v0 + 64) + 24));

  sub_1C43FBDA0();
  sub_1C43FD0C0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C4A5068C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C4A506B4, 0, 0);
}

uint64_t sub_1C4A506B4()
{
  sub_1C445E918();
  os_unfair_lock_lock((v0 + 24));
  *(*(v0 + 16) + 16) = 0;
  os_unfair_lock_unlock((v0 + 24));

  *(v1 + 88) = 0;
  v2 = sub_1C4402120();
  sub_1C4409678(v2, v3);
  sub_1C442E424();
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v1 + 72) = v5;
  *v5 = v1;
  sub_1C43FC688(v5);
  v6 = sub_1C4402B58();

  return v8(v6);
}

uint64_t sub_1C4A507E0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {
    v7 = sub_1C4A50988;
  }

  else
  {
    v7 = sub_1C4A508DC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1C4A508DC()
{
  sub_1C4404D98();
  v3 = sub_1C4405F18();
  sub_1C443F2B4(v3);
  os_unfair_lock_lock((v0 + 24));
  sub_1C4A51AE8((v0 + 16));
  os_unfair_lock_unlock((*(v2 - 24) + 24));
  if (!v1)
  {

    sub_1C43FBDA0();
    sub_1C4402234();

    __asm { BRAA            X1, X16 }
  }

  sub_1C4402234();
}

void sub_1C4A50988()
{
  v24 = v0;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v1 = *(v0 + 80);
  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = v1;
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CD8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = sub_1C440F274();
    v23 = sub_1C43FC11C();
    v10 = sub_1C440C630(4.8151e-34, v23, v9);
    sub_1C442532C(v10);
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v11 = sub_1C4F01198();
    v13 = sub_1C441D828(v11, v12, &v23);

    *(v8 + 14) = v13;
    sub_1C4415A90();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
    swift_arrayDestroy();
    sub_1C43FFD4C();
    sub_1C43FEA20();
  }

  else
  {
  }

  v19 = *(v0 + 64);
  v20 = swift_task_alloc();
  sub_1C447F224(v20);
  os_unfair_lock_lock((v19 + 24));
  sub_1C4A51AE8((v19 + 16));
  os_unfair_lock_unlock((*(v0 + 64) + 24));

  sub_1C43FBDA0();
  sub_1C43FD0C0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C4A50B94(uint64_t *a1, void *a2, _BYTE *a3, void *a4)
{
  v8 = a2[3];
  v7 = a2[4];
  sub_1C4409678(a2, v8);
  v9 = (*(*(v7 + 8) + 8))(v8);
  v11 = v10;
  v12 = *a1;
  result = *(*a1 + 32);
  if (result)
  {
    result = xpc_activity_remove_eligibility_changed_handler();
  }

  *(v12 + 32) = 0;
  *(v12 + 40) = 1;
  v14 = *(v12 + 24);
  if (v14)
  {
    if (*a3 == 1)
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1C4AF0CD4(v9, v11, ObjectType, v16, v17, v18, v19, v20, v31);
    }

    else
    {
      v21 = swift_unknownObjectRetain();
      should_defer = xpc_activity_should_defer(v21);
      v23 = swift_getObjectType();
      if (should_defer)
      {
        sub_1C4AF0D00(v9, v11, v23, v24, v25, v26, v27, v28, v31);

        return swift_unknownObjectRelease();
      }

      sub_1C4AF0D3C(v9, v11, v23);
    }

    v29 = a4[5];
    v30 = a4[6];
    sub_1C4409678(a4 + 2, v29);
    (*(v30 + 24))(v12, v14, v29, v30);
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4A50CF8(uint64_t *a1, void *a2, _BYTE *a3)
{
  v6 = a2[3];
  v5 = a2[4];
  sub_1C4409678(a2, v6);
  v7 = (*(*(v5 + 8) + 8))(v6);
  v9 = v8;
  v10 = *a1;
  result = *(*a1 + 32);
  if (result)
  {
    result = xpc_activity_remove_eligibility_changed_handler();
  }

  *(v10 + 32) = 0;
  *(v10 + 40) = 1;
  v12 = *(v10 + 24);
  if (v12)
  {
    if (*a3 == 1)
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1C4AF0CD4(v7, v9, ObjectType, v14, v15, v16, v17, v18, v27);
    }

    else
    {
      v19 = swift_unknownObjectRetain();
      should_defer = xpc_activity_should_defer(v19);
      v21 = swift_getObjectType();
      if (should_defer)
      {
        sub_1C4AF0D00(v7, v9, v21, v22, v23, v24, v25, v26, v27);

        return swift_unknownObjectRelease();
      }

      sub_1C4AF0D3C(v7, v9, v21);
    }

    sub_1C4AF143C(v10, v12);
    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t *sub_1C4A50E34(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *result;
  if ((*(*result + 40) & 1) == 0)
  {
    if (*(v9 + 24))
    {
      sub_1C442E860(a5, v20);
      v15 = swift_allocObject();
      v15[2] = a2;
      v15[3] = a3;
      v15[4] = a4;
      sub_1C441D670(v20, (v15 + 5));
      v15[10] = a6;
      aBlock[4] = a8;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C443EC24;
      aBlock[3] = a9;
      v16 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v17 = xpc_activity_add_eligibility_changed_handler();
      _Block_release(v16);
      *(v9 + 32) = v17;
      ObjectType = swift_getObjectType();
      sub_1C4AF0F8C(a2, a3, ObjectType);
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1C4A50FA4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v9 = sub_1C4F00978();
  sub_1C442B738(v9, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = sub_1C4F00968();
  v11 = sub_1C4F01CF8();

  v12 = &unk_1C4F0C000;
  if (os_log_type_enabled(v10, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v27 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1C441D828(a2, a3, v27);
    _os_log_impl(&dword_1C43F8000, v10, v11, "ScheduledTask: %s: XPC Activity eligibility changed", v13, 0xCu);
    sub_1C440962C(v14);
    MEMORY[0x1C6942830](v14, -1, -1);
    v12 = &unk_1C4F0C000;
    MEMORY[0x1C6942830](v13, -1, -1);
  }

  v15 = *(a4 + 56);
  MEMORY[0x1EEE9AC00](v16);
  os_unfair_lock_lock(v15 + 6);
  sub_1C4A51E40(v27);
  os_unfair_lock_unlock(v15 + 6);
  if (v27[0] == 1)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CF8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v27 = v20;
      *v19 = v12[458];
      *(v19 + 4) = sub_1C441D828(a2, a3, v27);
      _os_log_impl(&dword_1C43F8000, v17, v18, "ScheduledTask: %s: XPC Activity needs to defer", v19, 0xCu);
      sub_1C440962C(v20);
      MEMORY[0x1C6942830](v20, -1, -1);
      MEMORY[0x1C6942830](v19, -1, -1);
    }

    sub_1C442E860(a5, v26);
    sub_1C456902C(&qword_1EC0C1C50, &qword_1C4F47068);
    sub_1C456902C(&qword_1EC0C3240, &unk_1C4F47090);
    if (swift_dynamicCast())
    {
      sub_1C441D670(v24, v27);
      sub_1C4F01918();
      v21 = v28;
      v22 = v29;
      sub_1C4409678(v27, v28);
      (*(v22 + 8))(v21, v22);
      sub_1C440962C(v27);
    }

    else
    {
      v25 = 0;
      memset(v24, 0, sizeof(v24));
      sub_1C4420C3C(v24, &unk_1EC0C1C60, qword_1C4F501C0);
      sub_1C4F01918();
    }
  }
}

void sub_1C4A51350(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v9 = sub_1C4F00978();
  sub_1C442B738(v9, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = sub_1C4F00968();
  v11 = sub_1C4F01CF8();

  v12 = &unk_1C4F0C000;
  if (os_log_type_enabled(v10, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v27 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1C441D828(a2, a3, v27);
    _os_log_impl(&dword_1C43F8000, v10, v11, "ScheduledTask: %s: XPC Activity eligibility changed", v13, 0xCu);
    sub_1C440962C(v14);
    MEMORY[0x1C6942830](v14, -1, -1);
    v12 = &unk_1C4F0C000;
    MEMORY[0x1C6942830](v13, -1, -1);
  }

  v15 = *(a4 + 56);
  MEMORY[0x1EEE9AC00](v16);
  os_unfair_lock_lock(v15 + 6);
  sub_1C4A51AB0(v27);
  os_unfair_lock_unlock(v15 + 6);
  if (v27[0] == 1)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CF8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v27 = v20;
      *v19 = v12[458];
      *(v19 + 4) = sub_1C441D828(a2, a3, v27);
      _os_log_impl(&dword_1C43F8000, v17, v18, "ScheduledTask: %s: XPC Activity needs to defer", v19, 0xCu);
      sub_1C440962C(v20);
      MEMORY[0x1C6942830](v20, -1, -1);
      MEMORY[0x1C6942830](v19, -1, -1);
    }

    sub_1C442E860(a5, v26);
    sub_1C456902C(&qword_1EC0C1C50, &qword_1C4F47068);
    sub_1C456902C(&qword_1EC0C3240, &unk_1C4F47090);
    if (swift_dynamicCast())
    {
      sub_1C441D670(v24, v27);
      sub_1C4F01918();
      v21 = v28;
      v22 = v29;
      sub_1C4409678(v27, v28);
      (*(v22 + 8))(v21, v22);
      sub_1C440962C(v27);
    }

    else
    {
      v25 = 0;
      memset(v24, 0, sizeof(v24));
      sub_1C4420C3C(v24, &unk_1EC0C1C60, qword_1C4F501C0);
      sub_1C4F01918();
    }
  }
}

uint64_t sub_1C4A5170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *a4;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1C442E8C4;

  return sub_1C4A50184(a1, a2, a3, v14, a5, a6, a7);
}

uint64_t sub_1C4A5188C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *a4;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1C442F080;

  return sub_1C4A5068C(a1, a2, a3, v14, a5, a6, a7);
}

uint64_t sub_1C4A5196C()
{
  sub_1C4404D98();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1C4417584(v1);

  return v3(v2);
}

uint64_t sub_1C4A51B08()
{

  sub_1C4418B14();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C4A51B50()
{
  swift_unknownObjectRelease();

  sub_1C440962C((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1C4A51BA0()
{
  sub_1C4404D98();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1C4417584(v1);

  return v3(v2);
}

uint64_t sub_1C4A51CA8()
{

  sub_1C440962C((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

void *sub_1C4A51D30(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = a3(0);
  v16 = v9;
  v17 = a4;
  *&v15 = a1;
  v10 = sub_1C4409678(&v15, v9);
  a2[5] = v9;
  a2[6] = a5;
  v11 = sub_1C4422F90(a2 + 2);
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  type metadata accessor for ScheduledRunnerState();
  swift_allocObject();
  v12 = sub_1C4AEF7D8();
  sub_1C456902C(&qword_1EC0C1C70, &qword_1C4F470B0);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v12;
  a2[7] = v13;
  sub_1C441D670(&v15, (a2 + 8));
  return a2;
}

uint64_t sub_1C4A51EBC@<X0>(uint64_t *a2@<X8>)
{
  sub_1C4A523C8();
  sub_1C4A52310();
  result = sub_1C4EFB388();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4A51F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[2] = a1;
  v6[3] = a2;

  v4 = sub_1C49A5658(a3, v6);

  return v4;
}

uint64_t sub_1C4A51FEC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a7@<X8>)
{
  v21 = a7;
  v11 = sub_1C456902C(&qword_1EC0C1C90, &unk_1C4F470E0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22[-1] - v13;
  if (*a4 != -1)
  {
    swift_once();
  }

  v15 = sub_1C4EFBD38();
  v16 = sub_1C442B738(v15, a5);
  v23[3] = v15;
  v23[4] = MEMORY[0x1E69A0050];
  v17 = sub_1C4422F90(v23);
  (*(*(v15 - 8) + 16))(v17, v16, v15);
  v22[3] = MEMORY[0x1E69E6158];
  v22[4] = MEMORY[0x1E69A0130];
  v22[0] = a2;
  v22[1] = a3;
  v24[3] = sub_1C4EFB298();
  v24[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(v22);
  sub_1C440962C(v23);
  sub_1C4A52310();
  sub_1C4EFAE28();
  sub_1C440962C(v24);
  sub_1C4A52364();
  sub_1C4A523C8();
  v18 = v24[6];
  v19 = sub_1C4EFAFE8();
  result = (*(v12 + 8))(v14, v11);
  if (!v18)
  {
    *v21 = v19;
  }

  return result;
}

uint64_t sub_1C4A52254(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{

  v4 = a2(a1, 0);

  return v4;
}

uint64_t sub_1C4A522B8@<X0>(uint64_t *a2@<X8>)
{
  sub_1C4A52310();
  result = sub_1C4EFAE88();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C4A52310()
{
  result = qword_1EC0C1C98;
  if (!qword_1EC0C1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1C98);
  }

  return result;
}

unint64_t sub_1C4A52364()
{
  result = qword_1EC0C1CA0;
  if (!qword_1EC0C1CA0)
  {
    sub_1C4572308(&qword_1EC0C1C90, &unk_1C4F470E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1CA0);
  }

  return result;
}

unint64_t sub_1C4A523C8()
{
  result = qword_1EC0C1CA8;
  if (!qword_1EC0C1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1CA8);
  }

  return result;
}

uint64_t sub_1C4A52458()
{
  v0 = sub_1C4EFB5A8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1C4EFB5F8();
  sub_1C43FCDF8();
  v48 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB5E8();
  v10 = *(v2 + 104);
  (v10)(v5, *MEMORY[0x1E699FE90], v0);
  sub_1C441FF40();
  v11 = *(v2 + 8);
  v12 = sub_1C43FD018();
  v11(v12);
  v13 = sub_1C441A0EC();
  v10(v13);
  sub_1C442D024();
  sub_1C4407670(v14 + 3, v15, v16, v17);
  v18 = sub_1C43FD018();
  v11(v18);
  v19 = sub_1C441A0EC();
  v10(v19);
  sub_1C442D024();
  sub_1C4407670(v20 + 13, v21, v22, v23);
  v24 = sub_1C43FD018();
  v11(v24);
  v25 = sub_1C441A0EC();
  v10(v25);
  sub_1C441FF40();
  v26 = sub_1C43FD018();
  v11(v26);
  v27 = sub_1C441A0EC();
  v10(v27);
  sub_1C442D024();
  sub_1C4407670(v28 + 3, v29, v30, v31);
  v32 = sub_1C43FD018();
  v11(v32);
  v33 = sub_1C441A0EC();
  v10(v33);
  sub_1C442D024();
  sub_1C4407670(v34 + 1, v35, v36, v37);
  (v11)(v5, v0);
  sub_1C44FAFAC(&qword_1EDDFEDB0, type metadata accessor for ErrorHandlingDatabasePool, &unk_1C4F244D0);

  v38 = v47[2];
  sub_1C4EFB5D8();
  if (!v38)
  {

    MEMORY[0x1EEE9AC00](v39);
    v47[-2] = v9;

    sub_1C446572C(sub_1C4A54BC0, &v47[-4], v40, v41, v42, v43, v44, v45, v47[0], v47[1]);
  }

  return (*(v48 + 8))(v9, v49);
}

uint64_t sub_1C4A5282C()
{
  v0 = sub_1C4EFB0B8();
  v31 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v26 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v27 = &v24 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v32 = MEMORY[0x1E69E7CC0];
  v13 = sub_1C44FAFAC(&unk_1EDDFCD18, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
  v14 = sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4A54BDC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0);
  v28 = v14;
  v29 = v13;
  sub_1C4F020C8();
  v15 = v30;
  sub_1C4EFBFC8();
  if (v15)
  {
    return v31[1](v12, v0);
  }

  v30 = v7;
  v25 = v4;
  v17 = v12;
  v18 = v31[1];
  (v18)(v17, v0);
  v32 = MEMORY[0x1E69E7CC0];
  v19 = v27;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  v31 = v18;
  (v18)(v19, v0);
  v32 = MEMORY[0x1E69E7CC0];
  v20 = v30;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  v21 = v31;
  (v31)(v20, v0);
  v32 = MEMORY[0x1E69E7CC0];
  v22 = v25;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  (v21)(v22, v0);
  v32 = MEMORY[0x1E69E7CC0];
  v23 = v26;
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  return (v21)(v23, v0);
}

uint64_t sub_1C4A52D40(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v21 - v3;
  v5 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v21 - v6;
  sub_1C4EFBDD8();
  v8 = sub_1C4EFBE38();
  sub_1C43FBD94();
  sub_1C440BAA8(v9, v10, v11, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C43FBD94();
  sub_1C440BAA8(v12, v13, v14, v8);
  sub_1C4EFB498();

  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v15 = *MEMORY[0x1E69A00D0];
  v16 = sub_1C4EFBF38();
  (*(*(v16 - 8) + 104))(v4, v15, v16);
  sub_1C43FBD94();
  sub_1C440BAA8(v17, v18, v19, v16);
  sub_1C4EFB478();
  return sub_1C4423A0C(v4, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4A52F3C()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v10 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  sub_1C4EFBDD8();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = *MEMORY[0x1E69A00D0];
  v8 = sub_1C4EFBF38();
  (*(*(v8 - 8) + 104))(v2, v7, v8);
  sub_1C440BAA8(v2, 0, 1, v8);
  sub_1C4EFB478();
  return sub_1C4423A0C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4A53158()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v10 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  sub_1C4EFBDD8();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = *MEMORY[0x1E69A00D0];
  v8 = sub_1C4EFBF38();
  (*(*(v8 - 8) + 104))(v2, v7, v8);
  sub_1C440BAA8(v2, 0, 1, v8);
  sub_1C4EFB478();
  return sub_1C4423A0C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4A533C4()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v10 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  sub_1C4EFBDD8();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = *MEMORY[0x1E69A00D0];
  v8 = sub_1C4EFBF38();
  (*(*(v8 - 8) + 104))(v2, v7, v8);
  sub_1C440BAA8(v2, 0, 1, v8);
  sub_1C4EFB478();
  return sub_1C4423A0C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4A535E8(uint64_t a1)
{
  v3 = sub_1C4EFB078();
  v13 = *(v3 - 8);
  v14 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v12[0] = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4EFB0B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15[0] = MEMORY[0x1E69E7CC0];
  sub_1C44FAFAC(&unk_1EDDFCD18, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4A54BDC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4F020C8();
  v12[1] = a1;
  sub_1C4EFBFC8();
  if (v1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 8))(v8, v5);
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v17 = MEMORY[0x1E69E7CC0];
  sub_1C44FAFAC(&qword_1EDDFCD40, MEMORY[0x1E699FDD0], MEMORY[0x1E699FDD8]);
  sub_1C456902C(&unk_1EC0BCAA0, &unk_1C4F22520);
  sub_1C4A54BDC(&qword_1EDDFA5C0, &unk_1EC0BCAA0, &unk_1C4F22520);
  v10 = v12[0];
  v11 = v14;
  sub_1C4F020C8();
  sub_1C4EFBFB8();
  (*(v13 + 8))(v10, v11);
  return sub_1C4423A0C(v15, &qword_1EC0C5040, &qword_1C4F0F950);
}

uint64_t sub_1C4A53978()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v10 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  sub_1C4EFBDD8();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = *MEMORY[0x1E69A00D0];
  v8 = sub_1C4EFBF38();
  (*(*(v8 - 8) + 104))(v2, v7, v8);
  sub_1C440BAA8(v2, 0, 1, v8);
  sub_1C4EFB478();
  return sub_1C4423A0C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4A53C0C()
{
  result = sub_1C4EFBF78();
  if (!v0)
  {
    sub_1C4EFBF78();
    sub_1C4EFBF78();
    return sub_1C4EFBF78();
  }

  return result;
}

uint64_t sub_1C4A53EAC()
{
  v0 = sub_1C4EFB0B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[3] = MEMORY[0x1E69E7CC0];
  sub_1C44FAFAC(&unk_1EDDFCD18, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4A54BDC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C4A54068()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v10 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  sub_1C4EFBDD8();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4423A0C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = *MEMORY[0x1E69A00D0];
  v8 = sub_1C4EFBF38();
  (*(*(v8 - 8) + 104))(v2, v7, v8);
  sub_1C440BAA8(v2, 0, 1, v8);
  sub_1C4EFB478();
  return sub_1C4423A0C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C4A542DC()
{
  v1 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  result = sub_1C4EFBF78();
  if (!v0)
  {
    sub_1C4EFBE98();
    v27 = sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
    v14 = swift_allocObject();
    v26 = xmmword_1C4F0C890;
    *(v14 + 16) = xmmword_1C4F0C890;
    v15 = MEMORY[0x1E69E6158];
    *(v14 + 32) = 0x656D614E656C6966;
    *(v14 + 40) = 0xE800000000000000;
    v16 = MEMORY[0x1E69A0138];
    *(v14 + 72) = v15;
    *(v14 + 80) = v16;
    *(v14 + 48) = 0x736A2E7373616C63;
    *(v14 + 56) = 0xEA00000000006E6FLL;
    strcpy((v14 + 88), "crystalVersion");
    *(v14 + 103) = -18;
    *(v14 + 128) = v15;
    *(v14 + 136) = v16;
    *(v14 + 104) = 0x31332E3476;
    *(v14 + 112) = 0xE500000000000000;
    *(v14 + 144) = 0x737265566B63756CLL;
    *(v14 + 152) = 0xEB000000006E6F69;
    *(v14 + 184) = v15;
    *(v14 + 192) = v16;
    *(v14 + 160) = 0x32332E3476;
    *(v14 + 168) = 0xE500000000000000;
    sub_1C4EFB738();
    v17 = sub_1C4EFB768();
    sub_1C440BAA8(v12, 0, 1, v17);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v12, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v18 = swift_allocObject();
    *(v18 + 16) = v26;
    *(v18 + 32) = 0x656D614E656C6966;
    *(v18 + 40) = 0xE800000000000000;
    v19 = MEMORY[0x1E69E6158];
    *(v18 + 72) = MEMORY[0x1E69E6158];
    *(v18 + 80) = v16;
    *(v18 + 48) = 0xD000000000000010;
    *(v18 + 56) = 0x80000001C4FAE220;
    strcpy((v18 + 88), "crystalVersion");
    *(v18 + 103) = -18;
    *(v18 + 128) = v19;
    *(v18 + 136) = v16;
    *(v18 + 104) = 0x34302E3576;
    *(v18 + 112) = 0xE500000000000000;
    *(v18 + 144) = 0x737265566B63756CLL;
    *(v18 + 152) = 0xEB000000006E6F69;
    *(v18 + 184) = v19;
    *(v18 + 192) = v16;
    *(v18 + 160) = 0x35302E3576;
    *(v18 + 168) = 0xE500000000000000;
    sub_1C4EFB738();
    sub_1C440BAA8(v9, 0, 1, v17);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v9, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v20 = swift_allocObject();
    *(v20 + 16) = v26;
    *(v20 + 32) = 0x656D614E656C6966;
    *(v20 + 40) = 0xE800000000000000;
    v21 = MEMORY[0x1E69E6158];
    *(v20 + 72) = MEMORY[0x1E69E6158];
    v22 = MEMORY[0x1E69A0138];
    strcpy((v20 + 48), "predicate.json");
    *(v20 + 63) = -18;
    *(v20 + 80) = v22;
    strcpy((v20 + 88), "crystalVersion");
    *(v20 + 128) = v21;
    *(v20 + 136) = v22;
    *(v20 + 103) = -18;
    *(v20 + 104) = 0x33312E3776;
    *(v20 + 112) = 0xE500000000000000;
    *(v20 + 144) = 0x737265566B63756CLL;
    *(v20 + 152) = 0xEB000000006E6F69;
    *(v20 + 184) = v21;
    *(v20 + 192) = v22;
    *(v20 + 160) = 0x35312E3776;
    *(v20 + 168) = 0xE500000000000000;
    sub_1C4EFB738();
    sub_1C440BAA8(v6, 0, 1, v17);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v6, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v23 = swift_allocObject();
    *(v23 + 16) = v26;
    *(v23 + 32) = 0x656D614E656C6966;
    *(v23 + 40) = 0xE800000000000000;
    v24 = MEMORY[0x1E69E6158];
    *(v23 + 72) = MEMORY[0x1E69E6158];
    v25 = MEMORY[0x1E69A0138];
    *(v23 + 48) = 0xD000000000000016;
    *(v23 + 56) = 0x80000001C4FAE240;
    *(v23 + 80) = v25;
    strcpy((v23 + 88), "crystalVersion");
    *(v23 + 128) = v24;
    *(v23 + 136) = v25;
    *(v23 + 103) = -18;
    *(v23 + 104) = 0x33312E3176;
    *(v23 + 112) = 0xE500000000000000;
    *(v23 + 144) = 0x737265566B63756CLL;
    *(v23 + 152) = 0xEB000000006E6F69;
    *(v23 + 184) = v24;
    *(v23 + 192) = v25;
    *(v23 + 160) = 0x34312E3176;
    *(v23 + 168) = 0xE500000000000000;
    sub_1C4EFB738();
    sub_1C440BAA8(v3, 0, 1, v17);
    sub_1C4EFC0A8();
    sub_1C4423A0C(v3, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

uint64_t sub_1C4A548E8(uint64_t a1, void (*a2)(__n128), uint64_t a3, uint64_t a4)
{
  v5 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  a2(v6);
  sub_1C4EFBE38();
  sub_1C43FBD94();
  sub_1C440BAA8(v9, v10, v11, v12);
  sub_1C4EFB458();

  return sub_1C4423A0C(v8, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C4A549D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4EFB5F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  v11 = *(v4 + 16);
  v18 = a2;
  v11(&v17 - v9, a2, v3, v8);
  v12 = v19;
  v13 = sub_1C4EFB5B8();
  if (v12)
  {
    return (*(v4 + 8))(v10, v3);
  }

  v15 = v13;
  v19 = *(v4 + 8);
  result = v19(v10, v3);
  if (v15)
  {
    (v11)(v6, v18, v3);
    sub_1C4B62F60();
    v19(v6, v3);
    sub_1C4778114();
    swift_allocError();
    *v16 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C4A54BDC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4A54C30()
{
  sub_1C456902C(&qword_1EC0C1D40, qword_1C4F471B0);
  swift_allocObject();
  result = sub_1C4CE52AC();
  qword_1EDE2DFD8 = result;
  return result;
}

unint64_t OntologyDatabase.description.getter()
{
  v1 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1C4F02248();

  v11 = 0xD000000000000014;
  v12 = 0x80000001C4FAE2C0;
  (*(v3 + 16))(v6, v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_url, v1);
  v7 = sub_1C4EF98E8();
  v9 = v8;
  (*(v3 + 8))(v6, v1);
  MEMORY[0x1C6940010](v7, v9);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return v11;
}

uint64_t sub_1C4A54E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a1;

  sub_1C446C37C(sub_1C4A58298, v4);
}

uint64_t sub_1C4A54E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a1;
  v13[2] = a4;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13[0] = v8;
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C4F01688();
  for (i = v10; ; v10 = i)
  {
    result = sub_1C4F01758();
    if (v10 == result)
    {
      break;
    }

    v12 = sub_1C4F01738();
    sub_1C4F016B8();
    if (v12)
    {
      (*(v7 + 16))(v9, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10, a3);
    }

    else
    {
      result = sub_1C4F02298();
      if (v13[0] != 8)
      {
        __break(1u);
        return result;
      }

      v14 = result;
      (*(v7 + 16))(v9, &v14, a3);
      swift_unknownObjectRelease();
    }

    sub_1C4F01788();
    sub_1C4EFB6A8();
    result = (*(v7 + 8))(v9, a3);
    if (v4)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1C4A55080@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ClassPair();
  sub_1C4A5805C(&qword_1EC0C1CE8, &protocol conformance descriptor for OntologyPair);
  sub_1C4A5805C(&qword_1EC0C1CD8, &protocol conformance descriptor for ClassPair);
  result = sub_1C4EFB388();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4A55158@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v16 = a4;
  v6 = sub_1C456902C(&qword_1EC0C1CD0, &qword_1C4F47190);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17[-1] - v8;
  type metadata accessor for ClassPair();
  if (qword_1EC0B6FA8 != -1)
  {
    swift_once();
  }

  v10 = sub_1C4EFBD38();
  v11 = sub_1C442B738(v10, qword_1EC152A60);
  v18[3] = v10;
  v18[4] = MEMORY[0x1E69A0050];
  v12 = sub_1C4422F90(v18);
  (*(*(v10 - 8) + 16))(v12, v11, v10);
  v17[3] = MEMORY[0x1E69E6158];
  v17[4] = MEMORY[0x1E69A0130];
  v17[0] = a2;
  v17[1] = a3;
  v19[3] = sub_1C4EFB298();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v19);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(v17);
  sub_1C440962C(v18);
  sub_1C4A5805C(&qword_1EC0C1CD8, &protocol conformance descriptor for ClassPair);
  sub_1C4EFAE28();
  sub_1C440962C(v19);
  sub_1C4401CBC(&qword_1EC0C1CE0, &qword_1EC0C1CD0, &qword_1C4F47190, MEMORY[0x1E699FF60]);
  sub_1C4A5805C(&qword_1EC0C1CE8, &protocol conformance descriptor for OntologyPair);
  v13 = v19[6];
  v14 = sub_1C4EFAFE8();
  result = (*(v7 + 8))(v9, v6);
  if (!v13)
  {
    *v16 = v14;
  }

  return result;
}

uint64_t sub_1C4A5540C(uint64_t a1)
{
  sub_1C4EFB298();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C442D034();
  if (v2)
  {
    sub_1C441FF6C();
    sub_1C4403534();
    do
    {
      v6 = qword_1EC0B6FB0;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v6 != -1)
      {
        swift_once();
      }

      v7 = sub_1C4EFBD38();
      sub_1C442B738(v7, qword_1EC152A78);
      v14[3] = v7;
      v14[4] = MEMORY[0x1E69A0050];
      sub_1C4422F90(v14);
      sub_1C44175B4();
      (*(v8 + 16))();
      v13[3] = MEMORY[0x1E69E6158];
      sub_1C441353C(MEMORY[0x1E69A0130]);
      sub_1C44967E0(v13);
      sub_1C440962C(v14);
      sub_1C44009A4();
      if (v9)
      {
        sub_1C440AFA0();
      }

      v10 = sub_1C4407690();
      v5 = v11(v10);
      a1 += 16;
      --v2;
    }

    while (v2);
  }

  MEMORY[0x1EEE9AC00](v5);
  sub_1C4412204();
  sub_1C49A55F8(sub_1C4A58040, v1);

  return sub_1C43FDB98();
}

uint64_t sub_1C4A55614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v17 = a1;
  v14 = a3;
  v15 = sub_1C4EFB288();
  v4 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&qword_1EC0C1CD0, &qword_1C4F47190);
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v14 - v8;
  type metadata accessor for ClassPair();
  v19[6] = a2;
  sub_1C4EFB268();
  v19[3] = sub_1C4EFB298();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v19);
  sub_1C456902C(&qword_1EC0BD258, &qword_1C4F2D9D0);
  sub_1C4401CBC(&qword_1EDDDBD58, &qword_1EC0BD258, &qword_1C4F2D9D0, MEMORY[0x1E69E6328]);
  sub_1C4F01468();
  (*(v4 + 8))(v6, v15);
  sub_1C4A5805C(&qword_1EC0C1CD8, &protocol conformance descriptor for ClassPair);
  sub_1C4EFAE28();
  sub_1C440962C(v19);
  sub_1C4401CBC(&qword_1EC0C1CE0, &qword_1EC0C1CD0, &qword_1C4F47190, MEMORY[0x1E699FF60]);
  sub_1C4A5805C(&qword_1EC0C1CE8, &protocol conformance descriptor for OntologyPair);
  v10 = v16;
  v11 = v18;
  v12 = sub_1C4EFAFE8();
  result = (*(v7 + 8))(v9, v10);
  if (!v11)
  {
    *v14 = v12;
  }

  return result;
}

uint64_t sub_1C4A55A08@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v20 = a4;
  v7 = sub_1C456902C(&qword_1EC0C1CB0, &unk_1C4F47180);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-1] - v9;
  if (qword_1EC0B6FB8 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4EFBD38();
  v12 = sub_1C442B738(v11, qword_1EC152A90);
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69A0050];
  v13 = sub_1C4422F90(v18);
  (*(*(v11 - 8) + 16))(v13, v12, v11);
  v17[3] = MEMORY[0x1E69E6158];
  v17[4] = MEMORY[0x1E69A0130];
  v17[0] = a2;
  v17[1] = a3;
  v19[3] = sub_1C4EFB298();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v19);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(v17);
  sub_1C440962C(v18);
  sub_1C4A57F98();
  sub_1C4EFAE28();
  sub_1C440962C(v19);
  sub_1C4401CBC(&qword_1EC0C1CC0, &qword_1EC0C1CB0, &unk_1C4F47180, MEMORY[0x1E699FF60]);
  sub_1C4A57FEC();
  v14 = sub_1C4EFAFE8();
  result = (*(v8 + 8))(v10, v7);
  if (!v4)
  {
    *v20 = v14;
  }

  return result;
}

uint64_t sub_1C4A55C7C(uint64_t a1)
{
  sub_1C4EFB298();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C442D034();
  if (v2)
  {
    sub_1C441FF6C();
    sub_1C4403534();
    do
    {
      v6 = qword_1EC0B6FC0;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v6 != -1)
      {
        swift_once();
      }

      v7 = sub_1C4EFBD38();
      sub_1C442B738(v7, qword_1EC152AA8);
      v14[3] = v7;
      v14[4] = MEMORY[0x1E69A0050];
      sub_1C4422F90(v14);
      sub_1C44175B4();
      (*(v8 + 16))();
      v13[3] = MEMORY[0x1E69E6158];
      sub_1C441353C(MEMORY[0x1E69A0130]);
      sub_1C44967E0(v13);
      sub_1C440962C(v14);
      sub_1C44009A4();
      if (v9)
      {
        sub_1C440AFA0();
      }

      v10 = sub_1C4407690();
      v5 = v11(v10);
      a1 += 16;
      --v2;
    }

    while (v2);
  }

  MEMORY[0x1EEE9AC00](v5);
  sub_1C4412204();
  sub_1C49A5610(sub_1C4A57F7C, v1);

  return sub_1C43FDB98();
}

uint64_t sub_1C4A55E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v17 = a1;
  v15 = a3;
  v16 = sub_1C4EFB288();
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&qword_1EC0C1CB0, &unk_1C4F47180);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v19[6] = a2;
  sub_1C4EFB268();
  v19[3] = sub_1C4EFB298();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v19);
  sub_1C456902C(&qword_1EC0BD258, &qword_1C4F2D9D0);
  sub_1C4401CBC(&qword_1EDDDBD58, &qword_1EC0BD258, &qword_1C4F2D9D0, MEMORY[0x1E69E6328]);
  sub_1C4F01468();
  (*(v4 + 8))(v6, v16);
  sub_1C4A57F98();
  sub_1C4EFAE28();
  sub_1C440962C(v19);
  sub_1C4401CBC(&qword_1EC0C1CC0, &qword_1EC0C1CB0, &unk_1C4F47180, MEMORY[0x1E699FF60]);
  sub_1C4A57FEC();
  v11 = v18;
  v12 = sub_1C4EFAFE8();
  result = (*(v8 + 8))(v10, v7);
  if (!v11)
  {
    *v15 = v12;
  }

  return result;
}

uint64_t sub_1C4A561C0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v20 = a4;
  v7 = sub_1C456902C(&qword_1EC0C1D10, &unk_1C4F471A0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-1] - v9;
  if (qword_1EC0B6FC8 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4EFBD38();
  v12 = sub_1C442B738(v11, qword_1EC152AC0);
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69A0050];
  v13 = sub_1C4422F90(v18);
  (*(*(v11 - 8) + 16))(v13, v12, v11);
  v17[3] = MEMORY[0x1E69E6158];
  v17[4] = MEMORY[0x1E69A0130];
  v17[0] = a2;
  v17[1] = a3;
  v19[3] = sub_1C4EFB298();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v19);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(v17);
  sub_1C440962C(v18);
  sub_1C4A58180();
  sub_1C4EFAE28();
  sub_1C440962C(v19);
  sub_1C4401CBC(&qword_1EC0C1D20, &qword_1EC0C1D10, &unk_1C4F471A0, MEMORY[0x1E699FF60]);
  sub_1C4A581D4();
  v14 = sub_1C4EFAFE8();
  result = (*(v8 + 8))(v10, v7);
  if (!v4)
  {
    *v20 = v14;
  }

  return result;
}

uint64_t sub_1C4A56460@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v20 = a4;
  v7 = sub_1C456902C(&qword_1EC0C1D10, &unk_1C4F471A0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-1] - v9;
  if (qword_1EC0B6FD0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4EFBD38();
  v12 = sub_1C442B738(v11, qword_1EC152AD8);
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69A0050];
  v13 = sub_1C4422F90(v18);
  (*(*(v11 - 8) + 16))(v13, v12, v11);
  v17[3] = MEMORY[0x1E69E6158];
  v17[4] = MEMORY[0x1E69A0130];
  v17[0] = a2;
  v17[1] = a3;
  v19[3] = sub_1C4EFB298();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v19);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(v17);
  sub_1C440962C(v18);
  sub_1C4A58180();
  sub_1C4EFAE28();
  sub_1C440962C(v19);
  sub_1C4401CBC(&qword_1EC0C1D20, &qword_1EC0C1D10, &unk_1C4F471A0, MEMORY[0x1E699FF60]);
  sub_1C4A581D4();
  v14 = sub_1C4EFAFE8();
  result = (*(v8 + 8))(v10, v7);
  if (!v4)
  {
    *v20 = v14;
  }

  return result;
}

uint64_t sub_1C4A56774@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v20 = a4;
  v7 = sub_1C456902C(&qword_1EC0C1CF0, &qword_1C4F47198);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-1] - v9;
  if (qword_1EC0B6FD8 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4EFBD38();
  v12 = sub_1C442B738(v11, qword_1EC152AF0);
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69A0050];
  v13 = sub_1C4422F90(v18);
  (*(*(v11 - 8) + 16))(v13, v12, v11);
  v17[3] = MEMORY[0x1E69E6158];
  v17[4] = MEMORY[0x1E69A0130];
  v17[0] = a2;
  v17[1] = a3;
  v19[3] = sub_1C4EFB298();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v19);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(v17);
  sub_1C440962C(v18);
  sub_1C4A580BC();
  sub_1C4EFAE28();
  sub_1C440962C(v19);
  sub_1C4401CBC(&qword_1EC0C1D00, &qword_1EC0C1CF0, &qword_1C4F47198, MEMORY[0x1E699FF60]);
  sub_1C4A58110();
  v14 = sub_1C4EFAFE8();
  result = (*(v8 + 8))(v10, v7);
  if (!v4)
  {
    *v20 = v14;
  }

  return result;
}

uint64_t sub_1C4A56A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  v8[2] = a1;
  v8[3] = a2;

  v6 = a4(a3, v8);

  return v6;
}

uint64_t sub_1C4A56A80@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v20 = a4;
  v7 = sub_1C456902C(&qword_1EC0C1CF0, &qword_1C4F47198);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-1] - v9;
  if (qword_1EC0B6FE0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C4EFBD38();
  v12 = sub_1C442B738(v11, qword_1EC152B08);
  v18[3] = v11;
  v18[4] = MEMORY[0x1E69A0050];
  v13 = sub_1C4422F90(v18);
  (*(*(v11 - 8) + 16))(v13, v12, v11);
  v17[3] = MEMORY[0x1E69E6158];
  v17[4] = MEMORY[0x1E69A0130];
  v17[0] = a2;
  v17[1] = a3;
  v19[3] = sub_1C4EFB298();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v19);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(v17);
  sub_1C440962C(v18);
  sub_1C4A580BC();
  sub_1C4EFAE28();
  sub_1C440962C(v19);
  sub_1C4401CBC(&qword_1EC0C1D00, &qword_1EC0C1CF0, &qword_1C4F47198, MEMORY[0x1E699FF60]);
  sub_1C4A58110();
  v14 = sub_1C4EFAFE8();
  result = (*(v8 + 8))(v10, v7);
  if (!v4)
  {
    *v20 = v14;
  }

  return result;
}

uint64_t sub_1C4A56D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v28 = a4;
  v29 = a5;
  v31 = a1;
  v27 = a6;
  v8 = sub_1C456902C(&qword_1EC0C1D10, &unk_1C4F471A0);
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  if (qword_1EC0B6FC8 != -1)
  {
    swift_once();
  }

  v14 = sub_1C4EFBD38();
  v15 = sub_1C442B738(v14, qword_1EC152AC0);
  v37 = v14;
  v38 = MEMORY[0x1E69A0050];
  v16 = sub_1C4422F90(v36);
  v17 = *(*(v14 - 8) + 16);
  v17(v16, v15, v14);
  v34 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69A0130];
  v32 = a2;
  v33 = a3;
  v18 = sub_1C4EFB298();
  v19 = MEMORY[0x1E699FE60];
  v40 = v18;
  v41 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v39);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(&v32);
  sub_1C440962C(v36);
  sub_1C4A58180();
  sub_1C4EFAE28();
  sub_1C440962C(v39);
  if (qword_1EC0B6FD0 != -1)
  {
    swift_once();
  }

  v20 = sub_1C442B738(v14, qword_1EC152AD8);
  v37 = v14;
  v38 = MEMORY[0x1E69A0050];
  v21 = sub_1C4422F90(v36);
  v17(v21, v20, v14);
  v34 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69A0130];
  v32 = v28;
  v33 = v29;
  v40 = v18;
  v41 = v19;
  sub_1C4422F90(v39);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(&v32);
  sub_1C440962C(v36);
  sub_1C4401CBC(&qword_1EC0C1D48, &qword_1EC0C1D10, &unk_1C4F471A0, MEMORY[0x1E699FF70]);
  sub_1C4EFB438();
  v22 = *(v30 + 8);
  v22(v10, v8);
  sub_1C440962C(v39);
  sub_1C4401CBC(&qword_1EC0C1D20, &qword_1EC0C1D10, &unk_1C4F471A0, MEMORY[0x1E699FF60]);
  sub_1C4A581D4();
  v23 = v42;
  v24 = sub_1C4EFAFE8();
  result = (v22)(v13, v8);
  if (!v23)
  {
    *v27 = v24;
  }

  return result;
}

uint64_t sub_1C4A5711C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void *))
{
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;

  v8 = a6(a5, v10);

  return v8;
}

uint64_t sub_1C4A5718C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v28 = a4;
  v29 = a5;
  v31 = a1;
  v27 = a6;
  v8 = sub_1C456902C(&qword_1EC0C1CF0, &qword_1C4F47198);
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  if (qword_1EC0B6FD8 != -1)
  {
    swift_once();
  }

  v14 = sub_1C4EFBD38();
  v15 = sub_1C442B738(v14, qword_1EC152AF0);
  v37 = v14;
  v38 = MEMORY[0x1E69A0050];
  v16 = sub_1C4422F90(v36);
  v17 = *(*(v14 - 8) + 16);
  v17(v16, v15, v14);
  v34 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69A0130];
  v32 = a2;
  v33 = a3;
  v18 = sub_1C4EFB298();
  v19 = MEMORY[0x1E699FE60];
  v40 = v18;
  v41 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v39);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(&v32);
  sub_1C440962C(v36);
  sub_1C4A580BC();
  sub_1C4EFAE28();
  sub_1C440962C(v39);
  if (qword_1EC0B6FE0 != -1)
  {
    swift_once();
  }

  v20 = sub_1C442B738(v14, qword_1EC152B08);
  v37 = v14;
  v38 = MEMORY[0x1E69A0050];
  v21 = sub_1C4422F90(v36);
  v17(v21, v20, v14);
  v34 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69A0130];
  v32 = v28;
  v33 = v29;
  v40 = v18;
  v41 = v19;
  sub_1C4422F90(v39);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C44967E0(&v32);
  sub_1C440962C(v36);
  sub_1C4401CBC(&qword_1EC0C1D50, &qword_1EC0C1CF0, &qword_1C4F47198, MEMORY[0x1E699FF70]);
  sub_1C4EFB438();
  v22 = *(v30 + 8);
  v22(v10, v8);
  sub_1C440962C(v39);
  sub_1C4401CBC(&qword_1EC0C1D00, &qword_1EC0C1CF0, &qword_1C4F47198, MEMORY[0x1E699FF60]);
  sub_1C4A58110();
  v23 = v42;
  v24 = sub_1C4EFAFE8();
  result = (v22)(v13, v8);
  if (!v23)
  {
    *v27 = v24;
  }

  return result;
}

uint64_t sub_1C4A5755C(uint64_t a1)
{
  sub_1C4EFB298();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C442D034();
  if (v2)
  {
    sub_1C441FF6C();
    sub_1C4403534();
    do
    {
      v6 = qword_1EC0B6FD0;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v6 != -1)
      {
        swift_once();
      }

      v7 = sub_1C4EFBD38();
      sub_1C442B738(v7, qword_1EC152AD8);
      v14[3] = v7;
      v14[4] = MEMORY[0x1E69A0050];
      sub_1C4422F90(v14);
      sub_1C44175B4();
      (*(v8 + 16))();
      v13[3] = MEMORY[0x1E69E6158];
      sub_1C441353C(MEMORY[0x1E69A0130]);
      sub_1C44967E0(v13);
      sub_1C440962C(v14);
      sub_1C44009A4();
      if (v9)
      {
        sub_1C440AFA0();
      }

      v10 = sub_1C4407690();
      v5 = v11(v10);
      a1 += 16;
      --v2;
    }

    while (v2);
  }

  MEMORY[0x1EEE9AC00](v5);
  sub_1C4412204();
  sub_1C49A55E0(sub_1C4A5827C, v1);

  return sub_1C43FDB98();
}

uint64_t sub_1C4A57764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v17 = a1;
  v15 = a3;
  v16 = sub_1C4EFB288();
  v4 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&qword_1EC0C1D10, &unk_1C4F471A0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v19[6] = a2;
  sub_1C4EFB268();
  v19[3] = sub_1C4EFB298();
  v19[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v19);
  sub_1C456902C(&qword_1EC0BD258, &qword_1C4F2D9D0);
  sub_1C4401CBC(&qword_1EDDDBD58, &qword_1EC0BD258, &qword_1C4F2D9D0, MEMORY[0x1E69E6328]);
  sub_1C4F01468();
  (*(v4 + 8))(v6, v16);
  sub_1C4A58180();
  sub_1C4EFAE28();
  sub_1C440962C(v19);
  sub_1C4401CBC(&qword_1EC0C1D20, &qword_1EC0C1D10, &unk_1C4F471A0, MEMORY[0x1E699FF60]);
  sub_1C4A581D4();
  v11 = v18;
  v12 = sub_1C4EFAFE8();
  result = (*(v8 + 8))(v10, v7);
  if (!v11)
  {
    *v15 = v12;
  }

  return result;
}

uint64_t sub_1C4A57A74@<X0>(uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a5@<X8>)
{
  a2();
  a3();
  result = sub_1C4EFB388();
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1C4A57B14@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ClassPair();
  sub_1C4A5805C(&qword_1EC0C1CD8, &protocol conformance descriptor for ClassPair);
  result = sub_1C4EFAE88();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4A57CDC(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{

  v4 = a2(a1, 0);

  return v4;
}

uint64_t sub_1C4A57D70@<X0>(uint64_t (*a2)(void)@<X1>, uint64_t *a4@<X8>)
{
  a2();
  result = sub_1C4EFAE88();
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t OntologyDatabase.deinit()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_url;
  v2 = sub_1C4EF98F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16OntologyDatabase_config);

  return v0;
}

uint64_t OntologyDatabase.__deallocating_deinit()
{
  OntologyDatabase.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4A57EC4()
{
  if (qword_1EDDFF220 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1C4A57F98()
{
  result = qword_1EC0C1CB8;
  if (!qword_1EC0C1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1CB8);
  }

  return result;
}

unint64_t sub_1C4A57FEC()
{
  result = qword_1EC0C1CC8;
  if (!qword_1EC0C1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1CC8);
  }

  return result;
}

uint64_t sub_1C4A5805C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClassPair();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4A580BC()
{
  result = qword_1EC0C1CF8;
  if (!qword_1EC0C1CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1CF8);
  }

  return result;
}

unint64_t sub_1C4A58110()
{
  result = qword_1EC0C1D08;
  if (!qword_1EC0C1D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1D08);
  }

  return result;
}

unint64_t sub_1C4A58180()
{
  result = qword_1EC0C1D18;
  if (!qword_1EC0C1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1D18);
  }

  return result;
}

unint64_t sub_1C4A581D4()
{
  result = qword_1EC0C1D28;
  if (!qword_1EC0C1D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1D28);
  }

  return result;
}

unint64_t sub_1C4A582B8()
{
  result = qword_1EC0C1D30;
  if (!qword_1EC0C1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1D30);
  }

  return result;
}

unint64_t sub_1C4A5830C()
{
  result = qword_1EC0C1D38;
  if (!qword_1EC0C1D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1D38);
  }

  return result;
}

unint64_t sub_1C4A58360()
{
  result = qword_1EDDFF1F8;
  if (!qword_1EDDFF1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF1F8);
  }

  return result;
}

unint64_t sub_1C4A583B4()
{
  result = qword_1EDDFF208;
  if (!qword_1EDDFF208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF208);
  }

  return result;
}

uint64_t sub_1C4A584A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64497373616C63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4A58564(char a1)
{
  if (a1)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 0x64497373616C63;
  }
}

void sub_1C4A58598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C43FE96C();
  v25 = v24;
  v26 = sub_1C456902C(&qword_1EC0C1F50, &qword_1C4F47CB8);
  sub_1C43FCDF8();
  v28 = v27;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C440A474();
  sub_1C4409678(v25, v25[3]);
  sub_1C4A5C578();
  sub_1C4433620();
  sub_1C4F02BF8();
  sub_1C440BE6C();
  sub_1C4F02798();
  if (!v22)
  {
    sub_1C4405BEC();
    sub_1C4F02798();
  }

  (*(v28 + 8))(v23, v26);
  sub_1C43FBC80();
}

void sub_1C4A586DC()
{
  sub_1C43FE96C();
  v2 = v1;
  sub_1C456902C(&qword_1EC0C1EE8, &qword_1C4F47C68);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C440A474();
  sub_1C44009B8();
  sub_1C4A5C578();
  sub_1C4433620();
  sub_1C440F9B8();
  sub_1C4F02BC8();
  if (!v0)
  {
    sub_1C441CC44();
    sub_1C441C410();
    sub_1C4F02678();
    sub_1C4435168();
    sub_1C441C410();
    sub_1C4F02678();
    v4 = sub_1C43FE5F8();
    v5(v4);
  }

  sub_1C440962C(v2);
  sub_1C43FBC80();
}

uint64_t sub_1C4A58858(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73657373616C63 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1C4A588E8()
{
  sub_1C4413F18();
  sub_1C4408E38();
  sub_1C456902C(&qword_1EC0C1E68, &qword_1C4F47440);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C440A474();
  sub_1C43FD870();
  sub_1C4A5B514();
  sub_1C4433620();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C456902C(&qword_1EC0C1D68, &qword_1C4F473D8);
  sub_1C4A5BE50();
  sub_1C4412228();
  sub_1C4F027E8();
  v1 = sub_1C440AFC4();
  v2(v1);
  sub_1C441B8EC();
  sub_1C44102DC();
}

void sub_1C4A589F0()
{
  sub_1C4413F18();
  sub_1C4409F6C();
  sub_1C456902C(&qword_1EC0C1D58, &qword_1C4F473D0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C440A474();
  sub_1C44009B8();
  v3 = sub_1C4A5B514();
  sub_1C4432760(&type metadata for ClassFeed.CodingKeys, v4, v3);
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    sub_1C456902C(&qword_1EC0C1D68, &qword_1C4F473D8);
    v5 = sub_1C4A5B568();
    sub_1C441FF94(v5, v6);
    v7 = sub_1C440AFC4();
    v8(v7);
    sub_1C4415B88();
  }

  sub_1C43FF474();
  sub_1C44102DC();
}

uint64_t sub_1C4A58AF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F86BB0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79547463656A626FLL && a2 == 0xEA00000000006570;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C437463656A626FLL && a2 == 0xEB00000000737361)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

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

uint64_t sub_1C4A58C1C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x79547463656A626FLL;
  }

  return 0x6C437463656A626FLL;
}

void sub_1C4A58C84()
{
  sub_1C4413F18();
  sub_1C456902C(&qword_1EC0C1F38, &qword_1C4F47CA0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4A5C6DC();
  sub_1C444FECC();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C440BE6C();
  sub_1C4413560();
  sub_1C4F02798();
  if (!v0)
  {
    sub_1C4405BEC();
    sub_1C4413560();
    sub_1C4F02798();
    sub_1C4413560();
    sub_1C4F02738();
  }

  v2 = sub_1C43FF120();
  v3(v2);
  sub_1C44102DC();
}

void sub_1C4A58DB0()
{
  sub_1C43FE96C();
  v2 = v1;
  sub_1C456902C(&qword_1EC0C1F18, &qword_1C4F47C88);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4409678(v2, v2[3]);
  v4 = sub_1C4A5C6DC();
  sub_1C44162D4(&type metadata for RelationshipTypeObject.CodingKeys, v5, v4);
  if (v0)
  {
    sub_1C440962C(v2);
  }

  else
  {
    v6 = sub_1C441CC44();
    sub_1C440C650(v6, v7);
    v8 = sub_1C4435168();
    v10 = sub_1C440C650(v8, v9);
    sub_1C442BD80(v10);
    sub_1C4F02618();
    v11 = sub_1C441E5D8();
    v12(v11);
    sub_1C440962C(v2);
    sub_1C441EE30();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4A58F54(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001C4FAE380 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1C4A58FF0()
{
  sub_1C4413F18();
  sub_1C4408E38();
  sub_1C456902C(&qword_1EC0C1E20, &qword_1C4F47428);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C440A474();
  sub_1C43FD870();
  sub_1C4A5B898();
  sub_1C4433620();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C456902C(&qword_1EC0C1DE0, &qword_1C4F47408);
  sub_1C4A5BBC8();
  sub_1C4412228();
  sub_1C4F027E8();
  v1 = sub_1C440AFC4();
  v2(v1);
  sub_1C441B8EC();
  sub_1C44102DC();
}

void sub_1C4A590F8()
{
  sub_1C4413F18();
  sub_1C4409F6C();
  sub_1C456902C(&qword_1EC0C1DD0, &qword_1C4F47400);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C440A474();
  sub_1C44009B8();
  v3 = sub_1C4A5B898();
  sub_1C4432760(&type metadata for RelationshipTypeFeed.CodingKeys, v4, v3);
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    sub_1C456902C(&qword_1EC0C1DE0, &qword_1C4F47408);
    v5 = sub_1C4A5B8EC();
    sub_1C441FF94(v5, v6);
    v7 = sub_1C440AFC4();
    v8(v7);
    sub_1C4415B88();
  }

  sub_1C43FF474();
  sub_1C44102DC();
}

uint64_t sub_1C4A59200(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746E65726170 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xEA00000000006449)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4A592D0(char a1)
{
  if (a1)
  {
    return 0x6E6572646C696863;
  }

  else
  {
    return 0x6449746E65726170;
  }
}

void sub_1C4A5930C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C43FE96C();
  v25 = v24;
  v26 = sub_1C456902C(&qword_1EC0C1F40, &qword_1C4F47CA8);
  sub_1C43FCDF8();
  v28 = v27;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C4402A68();
  sub_1C4409678(v25, v25[3]);
  sub_1C4A5C688();
  sub_1C444FECC();
  sub_1C4F02BF8();
  sub_1C440BE6C();
  sub_1C4413560();
  sub_1C4F02798();
  if (!v22)
  {
    sub_1C4405BEC();
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C43FC6D0(&qword_1EDDFA578, MEMORY[0x1E69E6160]);
    sub_1C4F027E8();
  }

  (*(v28 + 8))(v23, v26);
  sub_1C43FBC80();
}

void sub_1C4A59484()
{
  sub_1C4413F18();
  v2 = v1;
  sub_1C456902C(&qword_1EC0C1F08, &qword_1C4F47C80);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C440A474();
  sub_1C44009B8();
  sub_1C4A5C688();
  sub_1C4433620();
  sub_1C440F9B8();
  sub_1C4F02BC8();
  if (!v0)
  {
    sub_1C441CC44();
    sub_1C441C410();
    sub_1C4F02678();
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C440EE48(&qword_1EDDFEA58, MEMORY[0x1E69E6190]);
    sub_1C441C410();
    sub_1C4F026C8();
    v4 = sub_1C43FE5F8();
    v5(v4);
  }

  sub_1C440962C(v2);
  sub_1C44102DC();
}

uint64_t sub_1C4A59644(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6174697265686E69 && a2 == 0xEC0000007365636ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1C4A596E0()
{
  sub_1C4413F18();
  sub_1C4408E38();
  sub_1C456902C(&qword_1EC0C1E38, &qword_1C4F47430);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C440A474();
  sub_1C43FD870();
  sub_1C4A5B76C();
  sub_1C4433620();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C456902C(&qword_1EC0C1DB8, &qword_1C4F473F8);
  sub_1C4A5BCA0();
  sub_1C4412228();
  sub_1C4F027E8();
  v1 = sub_1C440AFC4();
  v2(v1);
  sub_1C441B8EC();
  sub_1C44102DC();
}

void sub_1C4A597E8()
{
  sub_1C4413F18();
  sub_1C4409F6C();
  sub_1C456902C(&qword_1EC0C1DA8, &qword_1C4F473F0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C440A474();
  sub_1C44009B8();
  v3 = sub_1C4A5B76C();
  sub_1C4432760(&type metadata for InheritanceFeed.CodingKeys, v4, v3);
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    sub_1C456902C(&qword_1EC0C1DB8, &qword_1C4F473F8);
    v5 = sub_1C4A5B7C0();
    sub_1C441FF94(v5, v6);
    v7 = sub_1C440AFC4();
    v8(v7);
    sub_1C4415B88();
  }

  sub_1C43FF474();
  sub_1C44102DC();
}

uint64_t sub_1C4A598F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xEB00000000644965;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x547463656A627573 && a2 == 0xEB00000000657079;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x746E756F4378616DLL && a2 == 0xE800000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C4F02938();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4A59AD4(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C6562616CLL;
      break;
    case 2:
      result = 0x547463656A627573;
      break;
    case 3:
      result = 0x746E756F4378616DLL;
      break;
    case 4:
      result = 0x6E69616D6F64;
      break;
    case 5:
      result = 0x65676E6172;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4A59B8C()
{
  sub_1C4413F18();
  sub_1C456902C(&qword_1EC0C1F48, &qword_1C4F47CB0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4A5C5CC();
  sub_1C444FECC();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C4402E84();
  sub_1C4F02798();
  if (!v0)
  {
    sub_1C4402E84();
    sub_1C4F02798();
    sub_1C4402E84();
    sub_1C4F02798();
    sub_1C4402E84();
    sub_1C4F02768();
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C43FC6D0(&qword_1EDDFA578, MEMORY[0x1E69E6160]);
    sub_1C440F9B8();
    sub_1C4F027E8();
    sub_1C440F9B8();
    sub_1C4F027E8();
  }

  v2 = sub_1C43FF120();
  v3(v2);
  sub_1C44102DC();
}

void sub_1C4A59D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C43FE96C();
  v26 = v25;
  v28 = v27;
  sub_1C456902C(&qword_1EC0C1EF8, &unk_1C4F47C70);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C4409678(v26, v26[3]);
  sub_1C4A5C5CC();
  sub_1C4F02BC8();
  if (v24)
  {
    sub_1C440962C(v26);
  }

  else
  {
    sub_1C44175C4();
    v30 = sub_1C4F02678();
    v32 = v31;
    sub_1C44175C4();
    v43 = sub_1C4F02678();
    v45 = v33;
    sub_1C44175C4();
    v34 = sub_1C4F02678();
    v44 = v35;
    v42 = v34;
    LOBYTE(v47[0]) = 3;
    sub_1C44175C4();
    v40 = sub_1C4F02648();
    v52 = v36 & 1;
    LOBYTE(v46[0]) = 4;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C440EE48(&qword_1EDDFEA58, MEMORY[0x1E69E6190]);
    sub_1C4F026C8();
    v39 = v47[0];
    sub_1C4F026C8();
    v37 = sub_1C4411080();
    v38(v37);
    v41 = v51;
    v46[0] = v30;
    v46[1] = v32;
    v46[2] = v43;
    v46[3] = v45;
    v46[4] = v42;
    v46[5] = v44;
    v46[6] = v40;
    LOBYTE(v46[7]) = v52;
    v46[8] = v39;
    v46[9] = v51;
    sub_1C4A5C620(v46, v47);
    sub_1C440962C(v26);
    v47[0] = v30;
    v47[1] = v32;
    v47[2] = v43;
    v47[3] = v45;
    v47[4] = v42;
    v47[5] = v44;
    v47[6] = v40;
    v48 = v52;
    v49 = v39;
    v50 = v41;
    sub_1C4A5C658(v47);
    memcpy(v28, v46, 0x50uLL);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4A5A164(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7461636964657270 && a2 == 0xEA00000000007365)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1C4A5A200()
{
  sub_1C4413F18();
  sub_1C4408E38();
  sub_1C456902C(&qword_1EC0C1E50, &qword_1C4F47438);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C440A474();
  sub_1C43FD870();
  sub_1C4A5B640();
  sub_1C4433620();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C456902C(&qword_1EC0C1D90, &qword_1C4F473E8);
  sub_1C4A5BD78();
  sub_1C4412228();
  sub_1C4F027E8();
  v1 = sub_1C440AFC4();
  v2(v1);
  sub_1C441B8EC();
  sub_1C44102DC();
}

void sub_1C4A5A308()
{
  sub_1C4413F18();
  sub_1C4409F6C();
  sub_1C456902C(&qword_1EC0C1D80, &qword_1C4F473E0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C440A474();
  sub_1C44009B8();
  v3 = sub_1C4A5B640();
  sub_1C4432760(&type metadata for PredicateFeed.CodingKeys, v4, v3);
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    sub_1C456902C(&qword_1EC0C1D90, &qword_1C4F473E8);
    v5 = sub_1C4A5B694();
    sub_1C441FF94(v5, v6);
    v7 = sub_1C440AFC4();
    v8(v7);
    sub_1C4415B88();
  }

  sub_1C43FF474();
  sub_1C44102DC();
}

uint64_t sub_1C4A5A410(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E6E6F6973726576 && a2 == 0xEA00000000006D75;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x62697461706D6F63 && a2 == 0xED00007974696C69)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

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

void sub_1C4A5A530()
{
  sub_1C4413F18();
  sub_1C456902C(&qword_1EC0C1F30, &qword_1C4F47C98);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4A5C730();
  sub_1C444FECC();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C440BE6C();
  sub_1C4413560();
  sub_1C4F02798();
  if (!v0)
  {
    sub_1C4405BEC();
    sub_1C4413560();
    sub_1C4F02798();
    sub_1C4413560();
    sub_1C4F02798();
  }

  v2 = sub_1C43FF120();
  v3(v2);
  sub_1C44102DC();
}

void sub_1C4A5A65C()
{
  sub_1C43FE96C();
  v2 = v1;
  sub_1C456902C(&qword_1EC0C1F28, &qword_1C4F47C90);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4409678(v2, v2[3]);
  v4 = sub_1C4A5C730();
  sub_1C44162D4(&type metadata for VersionObject.CodingKeys, v5, v4);
  if (v0)
  {
    sub_1C440962C(v2);
  }

  else
  {
    v6 = sub_1C441CC44();
    sub_1C440C650(v6, v7);
    v8 = sub_1C4435168();
    v10 = sub_1C440C650(v8, v9);
    sub_1C442BD80(v10);
    sub_1C4F02678();
    v11 = sub_1C441E5D8();
    v12(v11);
    sub_1C440962C(v2);
    sub_1C441EE30();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4A5A800(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736E6F6973726576 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1C4A5A890()
{
  sub_1C4413F18();
  sub_1C4408E38();
  sub_1C456902C(&qword_1EC0C1E08, &qword_1C4F47420);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C440A474();
  sub_1C43FD870();
  sub_1C4A5B9C4();
  sub_1C4433620();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C456902C(&qword_1EC0C1E00, &qword_1C4F47418);
  sub_1C4A5BAF0();
  sub_1C4412228();
  sub_1C4F027E8();
  v1 = sub_1C440AFC4();
  v2(v1);
  sub_1C441B8EC();
  sub_1C44102DC();
}

void sub_1C4A5A998()
{
  sub_1C4413F18();
  sub_1C4409F6C();
  sub_1C456902C(&qword_1EC0C1DF8, &qword_1C4F47410);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C440A474();
  sub_1C44009B8();
  v3 = sub_1C4A5B9C4();
  sub_1C4432760(&type metadata for VersionFeed.CodingKeys, v4, v3);
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    sub_1C456902C(&qword_1EC0C1E00, &qword_1C4F47418);
    v5 = sub_1C4A5BA18();
    sub_1C441FF94(v5, v6);
    v7 = sub_1C440AFC4();
    v8(v7);
    sub_1C4415B88();
  }

  sub_1C43FF474();
  sub_1C44102DC();
}

uint64_t sub_1C4A5AAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A584A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A5AAE8(uint64_t a1)
{
  v2 = sub_1C4A5C578();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5AB24(uint64_t a1)
{
  v2 = sub_1C4A5C578();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4A5AB60(void *a1@<X8>)
{
  sub_1C4A586DC();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

uint64_t sub_1C4A5ABB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A58858(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4A5ABE0(uint64_t a1)
{
  v2 = sub_1C4A5B514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5AC1C(uint64_t a1)
{
  v2 = sub_1C4A5B514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4A5AC58(void *a1@<X8>)
{
  sub_1C4A589F0();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4A5ACC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A58AF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A5ACE8(uint64_t a1)
{
  v2 = sub_1C4A5C6DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5AD24(uint64_t a1)
{
  v2 = sub_1C4A5C6DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C4A5AD60@<D0>(_OWORD *a1@<X8>)
{
  sub_1C4A58DB0();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1C4A5ADC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A58F54(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4A5ADEC(uint64_t a1)
{
  v2 = sub_1C4A5B898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5AE28(uint64_t a1)
{
  v2 = sub_1C4A5B898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4A5AE64(void *a1@<X8>)
{
  sub_1C4A590F8();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4A5AEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4A5AF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A59200(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A5AF28(uint64_t a1)
{
  v2 = sub_1C4A5C688();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5AF64(uint64_t a1)
{
  v2 = sub_1C4A5C688();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4A5AFA0(void *a1@<X8>)
{
  sub_1C4A59484();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
  }
}

uint64_t sub_1C4A5AFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A59644(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4A5B020(uint64_t a1)
{
  v2 = sub_1C4A5B76C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5B05C(uint64_t a1)
{
  v2 = sub_1C4A5B76C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4A5B098(void *a1@<X8>)
{
  sub_1C4A597E8();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4A5B0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A598F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A5B110(uint64_t a1)
{
  v2 = sub_1C4A5C5CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5B14C(uint64_t a1)
{
  v2 = sub_1C4A5C5CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4A5B188(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_1C4A59D6C(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1], SWORD1(v11[1]), SWORD2(v11[1]), SBYTE6(v11[1]), SHIBYTE(v11[1]), v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11]);
  if (!v9)
  {
    memcpy(a9, v11, 0x50uLL);
  }
}

uint64_t sub_1C4A5B1F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A5A164(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4A5B21C(uint64_t a1)
{
  v2 = sub_1C4A5B640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5B258(uint64_t a1)
{
  v2 = sub_1C4A5B640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4A5B294(void *a1@<X8>)
{
  sub_1C4A5A308();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4A5B2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4A5B328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A5A410(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A5B350(uint64_t a1)
{
  v2 = sub_1C4A5C730();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5B38C(uint64_t a1)
{
  v2 = sub_1C4A5C730();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C4A5B3C8@<D0>(_OWORD *a1@<X8>)
{
  sub_1C4A5A65C();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1C4A5B428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A5A800(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4A5B454(uint64_t a1)
{
  v2 = sub_1C4A5B9C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5B490(uint64_t a1)
{
  v2 = sub_1C4A5B9C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4A5B4CC(void *a1@<X8>)
{
  sub_1C4A5A998();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_1C4A5B514()
{
  result = qword_1EC0C1D60;
  if (!qword_1EC0C1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1D60);
  }

  return result;
}

unint64_t sub_1C4A5B568()
{
  result = qword_1EC0C1D70;
  if (!qword_1EC0C1D70)
  {
    sub_1C4572308(&qword_1EC0C1D68, &qword_1C4F473D8);
    sub_1C4A5B5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1D70);
  }

  return result;
}

unint64_t sub_1C4A5B5EC()
{
  result = qword_1EC0C1D78;
  if (!qword_1EC0C1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1D78);
  }

  return result;
}

unint64_t sub_1C4A5B640()
{
  result = qword_1EC0C1D88;
  if (!qword_1EC0C1D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1D88);
  }

  return result;
}

unint64_t sub_1C4A5B694()
{
  result = qword_1EC0C1D98;
  if (!qword_1EC0C1D98)
  {
    sub_1C4572308(&qword_1EC0C1D90, &qword_1C4F473E8);
    sub_1C4A5B718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1D98);
  }

  return result;
}

unint64_t sub_1C4A5B718()
{
  result = qword_1EC0C1DA0;
  if (!qword_1EC0C1DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1DA0);
  }

  return result;
}

unint64_t sub_1C4A5B76C()
{
  result = qword_1EC0C1DB0;
  if (!qword_1EC0C1DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1DB0);
  }

  return result;
}

unint64_t sub_1C4A5B7C0()
{
  result = qword_1EC0C1DC0;
  if (!qword_1EC0C1DC0)
  {
    sub_1C4572308(&qword_1EC0C1DB8, &qword_1C4F473F8);
    sub_1C4A5B844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1DC0);
  }

  return result;
}

unint64_t sub_1C4A5B844()
{
  result = qword_1EC0C1DC8;
  if (!qword_1EC0C1DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1DC8);
  }

  return result;
}

unint64_t sub_1C4A5B898()
{
  result = qword_1EC0C1DD8;
  if (!qword_1EC0C1DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1DD8);
  }

  return result;
}

unint64_t sub_1C4A5B8EC()
{
  result = qword_1EC0C1DE8;
  if (!qword_1EC0C1DE8)
  {
    sub_1C4572308(&qword_1EC0C1DE0, &qword_1C4F47408);
    sub_1C4A5B970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1DE8);
  }

  return result;
}

unint64_t sub_1C4A5B970()
{
  result = qword_1EC0C1DF0;
  if (!qword_1EC0C1DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1DF0);
  }

  return result;
}

unint64_t sub_1C4A5B9C4()
{
  result = qword_1EDDFF928;
  if (!qword_1EDDFF928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF928);
  }

  return result;
}

unint64_t sub_1C4A5BA18()
{
  result = qword_1EDDFEA78;
  if (!qword_1EDDFEA78)
  {
    sub_1C4572308(&qword_1EC0C1E00, &qword_1C4F47418);
    sub_1C4A5BA9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEA78);
  }

  return result;
}

unint64_t sub_1C4A5BA9C()
{
  result = qword_1EDDFF3D8;
  if (!qword_1EDDFF3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF3D8);
  }

  return result;
}

unint64_t sub_1C4A5BAF0()
{
  result = qword_1EC0C1E10;
  if (!qword_1EC0C1E10)
  {
    sub_1C4572308(&qword_1EC0C1E00, &qword_1C4F47418);
    sub_1C4A5BB74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E10);
  }

  return result;
}

unint64_t sub_1C4A5BB74()
{
  result = qword_1EC0C1E18;
  if (!qword_1EC0C1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E18);
  }

  return result;
}

unint64_t sub_1C4A5BBC8()
{
  result = qword_1EC0C1E28;
  if (!qword_1EC0C1E28)
  {
    sub_1C4572308(&qword_1EC0C1DE0, &qword_1C4F47408);
    sub_1C4A5BC4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E28);
  }

  return result;
}

unint64_t sub_1C4A5BC4C()
{
  result = qword_1EC0C1E30;
  if (!qword_1EC0C1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E30);
  }

  return result;
}

unint64_t sub_1C4A5BCA0()
{
  result = qword_1EC0C1E40;
  if (!qword_1EC0C1E40)
  {
    sub_1C4572308(&qword_1EC0C1DB8, &qword_1C4F473F8);
    sub_1C4A5BD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E40);
  }

  return result;
}

unint64_t sub_1C4A5BD24()
{
  result = qword_1EC0C1E48;
  if (!qword_1EC0C1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E48);
  }

  return result;
}

unint64_t sub_1C4A5BD78()
{
  result = qword_1EC0C1E58;
  if (!qword_1EC0C1E58)
  {
    sub_1C4572308(&qword_1EC0C1D90, &qword_1C4F473E8);
    sub_1C4A5BDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E58);
  }

  return result;
}

unint64_t sub_1C4A5BDFC()
{
  result = qword_1EC0C1E60;
  if (!qword_1EC0C1E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E60);
  }

  return result;
}

unint64_t sub_1C4A5BE50()
{
  result = qword_1EC0C1E70;
  if (!qword_1EC0C1E70)
  {
    sub_1C4572308(&qword_1EC0C1D68, &qword_1C4F473D8);
    sub_1C4A5BED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E70);
  }

  return result;
}

unint64_t sub_1C4A5BED4()
{
  result = qword_1EC0C1E78;
  if (!qword_1EC0C1E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E78);
  }

  return result;
}

_BYTE *sub_1C4A5BF68(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C4A5C054()
{
  result = qword_1EC0C1E80;
  if (!qword_1EC0C1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E80);
  }

  return result;
}

unint64_t sub_1C4A5C0AC()
{
  result = qword_1EC0C1E88;
  if (!qword_1EC0C1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E88);
  }

  return result;
}

unint64_t sub_1C4A5C104()
{
  result = qword_1EC0C1E90;
  if (!qword_1EC0C1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E90);
  }

  return result;
}

unint64_t sub_1C4A5C15C()
{
  result = qword_1EC0C1E98;
  if (!qword_1EC0C1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1E98);
  }

  return result;
}

unint64_t sub_1C4A5C1B4()
{
  result = qword_1EC0C1EA0;
  if (!qword_1EC0C1EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1EA0);
  }

  return result;
}

unint64_t sub_1C4A5C20C()
{
  result = qword_1EDDFF918;
  if (!qword_1EDDFF918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF918);
  }

  return result;
}

unint64_t sub_1C4A5C264()
{
  result = qword_1EDDFF920;
  if (!qword_1EDDFF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF920);
  }

  return result;
}

unint64_t sub_1C4A5C2BC()
{
  result = qword_1EC0C1EA8;
  if (!qword_1EC0C1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1EA8);
  }

  return result;
}

unint64_t sub_1C4A5C314()
{
  result = qword_1EC0C1EB0;
  if (!qword_1EC0C1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1EB0);
  }

  return result;
}

unint64_t sub_1C4A5C36C()
{
  result = qword_1EC0C1EB8;
  if (!qword_1EC0C1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1EB8);
  }

  return result;
}

unint64_t sub_1C4A5C3C4()
{
  result = qword_1EC0C1EC0;
  if (!qword_1EC0C1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1EC0);
  }

  return result;
}

unint64_t sub_1C4A5C41C()
{
  result = qword_1EC0C1EC8;
  if (!qword_1EC0C1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1EC8);
  }

  return result;
}

unint64_t sub_1C4A5C474()
{
  result = qword_1EC0C1ED0;
  if (!qword_1EC0C1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1ED0);
  }

  return result;
}

unint64_t sub_1C4A5C4CC()
{
  result = qword_1EC0C1ED8;
  if (!qword_1EC0C1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1ED8);
  }

  return result;
}

unint64_t sub_1C4A5C524()
{
  result = qword_1EC0C1EE0;
  if (!qword_1EC0C1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1EE0);
  }

  return result;
}

unint64_t sub_1C4A5C578()
{
  result = qword_1EC0C1EF0;
  if (!qword_1EC0C1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1EF0);
  }

  return result;
}

unint64_t sub_1C4A5C5CC()
{
  result = qword_1EC0C1F00;
  if (!qword_1EC0C1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F00);
  }

  return result;
}

unint64_t sub_1C4A5C688()
{
  result = qword_1EC0C1F10;
  if (!qword_1EC0C1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F10);
  }

  return result;
}

unint64_t sub_1C4A5C6DC()
{
  result = qword_1EC0C1F20;
  if (!qword_1EC0C1F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F20);
  }

  return result;
}

unint64_t sub_1C4A5C730()
{
  result = qword_1EDDFDD00;
  if (!qword_1EDDFDD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFDD00);
  }

  return result;
}

_BYTE *sub_1C4A5C794(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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
          result = sub_1C4423610(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PredicateObject.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        break;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C4A5C958(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          result = sub_1C4423610(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4A5CA34()
{
  result = qword_1EC0C1F58;
  if (!qword_1EC0C1F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F58);
  }

  return result;
}

unint64_t sub_1C4A5CA8C()
{
  result = qword_1EC0C1F60;
  if (!qword_1EC0C1F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F60);
  }

  return result;
}

unint64_t sub_1C4A5CAE4()
{
  result = qword_1EC0C1F68;
  if (!qword_1EC0C1F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F68);
  }

  return result;
}

unint64_t sub_1C4A5CB3C()
{
  result = qword_1EC0C1F70;
  if (!qword_1EC0C1F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F70);
  }

  return result;
}

unint64_t sub_1C4A5CB94()
{
  result = qword_1EC0C1F78;
  if (!qword_1EC0C1F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F78);
  }

  return result;
}

unint64_t sub_1C4A5CBEC()
{
  result = qword_1EDDFF3E0;
  if (!qword_1EDDFF3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF3E0);
  }

  return result;
}

unint64_t sub_1C4A5CC44()
{
  result = qword_1EDDFF3E8;
  if (!qword_1EDDFF3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF3E8);
  }

  return result;
}

unint64_t sub_1C4A5CC9C()
{
  result = qword_1EC0C1F80;
  if (!qword_1EC0C1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F80);
  }

  return result;
}

unint64_t sub_1C4A5CCF4()
{
  result = qword_1EC0C1F88;
  if (!qword_1EC0C1F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F88);
  }

  return result;
}

unint64_t sub_1C4A5CD4C()
{
  result = qword_1EC0C1F90;
  if (!qword_1EC0C1F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F90);
  }

  return result;
}

unint64_t sub_1C4A5CDA4()
{
  result = qword_1EC0C1F98;
  if (!qword_1EC0C1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1F98);
  }

  return result;
}

unint64_t sub_1C4A5CDFC()
{
  result = qword_1EC0C1FA0;
  if (!qword_1EC0C1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1FA0);
  }

  return result;
}

unint64_t sub_1C4A5CE54()
{
  result = qword_1EC0C1FA8;
  if (!qword_1EC0C1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1FA8);
  }

  return result;
}

unint64_t sub_1C4A5CEAC()
{
  result = qword_1EC0C1FB0;
  if (!qword_1EC0C1FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1FB0);
  }

  return result;
}

unint64_t sub_1C4A5CF04()
{
  result = qword_1EC0C1FB8;
  if (!qword_1EC0C1FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1FB8);
  }

  return result;
}

uint64_t sub_1C4A5CF6C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v4 = v1[2];
  v3 = v1[3];
  v5 = type metadata accessor for OntologyTriple(0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFEBF8();
  swift_beginAccess();
  v7 = v1[4];
  v6 = v1[5];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C4EFEC38();
  *a1 = v4;
  a1[1] = v3;
  v9 = (a1 + *(v5 + 24));
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (a1 + *(v5 + 32));
  *v10 = v7;
  v10[1] = v6;
  return result;
}

uint64_t sub_1C4A5D030()
{
  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C441C41C();
  return sub_1C43FBC98();
}

uint64_t sub_1C4A5D06C()
{
  sub_1C43FFB44();
  swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t sub_1C4A5D10C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return a5(v7, v6);
}

uint64_t sub_1C4A5D154()
{
  sub_1C440F1BC();
  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t sub_1C4A5D198()
{
  sub_1C43FFB44();
  swift_beginAccess();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

void *OntologyPair.__allocating_init(id:label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C442FFD4();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *OntologyPair.init(id:label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t static OntologyPair.== infix(_:_:)(void *a1, void *a2)
{
  sub_1C440F1BC();
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  sub_1C440F1BC();
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (v6 || (v7 = sub_1C4F02938(), v8 = 0, (v7 & 1) != 0))
  {
    sub_1C440F1BC();
    swift_beginAccess();
    v10 = a1[4];
    v9 = a1[5];
    sub_1C440F1BC();
    swift_beginAccess();
    if (v10 == a2[4] && v9 == a2[5])
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_1C4F02938();
    }
  }

  return v8 & 1;
}

unint64_t sub_1C4A5D3B0()
{
  sub_1C4F02248();

  sub_1C440F1BC();
  swift_beginAccess();
  v1 = v0[2];
  v2 = v0[3];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v1, v2);

  sub_1C441BB90();
  sub_1C440F1BC();
  swift_beginAccess();
  v4 = v0[4];
  v3 = v0[5];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v4, v3);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t sub_1C4A5D4A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4A5D55C(char a1)
{
  if (a1)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1C4A5D5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A5D4A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A5D5CC(uint64_t a1)
{
  v2 = sub_1C4A6099C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5D608(uint64_t a1)
{
  v2 = sub_1C4A6099C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OntologyPair.deinit()
{

  return v0;
}

uint64_t OntologyPair.__deallocating_deinit()
{
  OntologyPair.deinit();
  sub_1C442FFD4();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4A5D698(void *a1)
{
  v4 = sub_1C456902C(&qword_1EC0C1FC0, &qword_1C4F481F0);
  sub_1C43FCDF8();
  v6 = v5;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402A68();
  sub_1C4417F50(a1, a1[3]);
  sub_1C4A6099C();
  sub_1C4F02BF8();
  sub_1C440F1BC();
  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C444FED8();
  sub_1C4F02798();
  if (!v1)
  {

    sub_1C440F1BC();
    swift_beginAccess();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C444FED8();
    sub_1C4F02798();
  }

  (*(v6 + 8))(v2, v4);
}

uint64_t OntologyPair.__allocating_init(from:)(uint64_t a1)
{
  sub_1C442FFD4();
  v1 = swift_allocObject();
  OntologyPair.init(from:)();
  return v1;
}

void OntologyPair.init(from:)()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C1FD0, &qword_1C4F481F8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD64();
  sub_1C4417F50(v4, v4[3]);
  sub_1C4A6099C();
  sub_1C4F02BC8();
  if (v1)
  {
    type metadata accessor for OntologyPair();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1C443FEB8();
    *(v0 + 16) = sub_1C4F02678();
    *(v0 + 24) = v7;
    sub_1C443362C();
    v8 = sub_1C4F02678();
    v10 = v9;
    v11 = sub_1C441EE48();
    v12(v11, v5);
    *(v2 + 32) = v8;
    *(v2 + 40) = v10;
  }

  sub_1C440962C(v4);
  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C4A5DA50@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C4A5DAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE09760](a1, a2, a3, WitnessTable);
}

uint64_t ClassPair.__allocating_init(from:)(void *a1)
{
  sub_1C442FFD4();
  v2 = swift_allocObject();
  ClassPair.init(from:)(a1);
  return v2;
}

uint64_t ClassPair.init(from:)(void *a1)
{
  sub_1C442E860(a1, v4);
  OntologyPair.init(from:)();
  sub_1C440962C(a1);
  return v1;
}

uint64_t sub_1C4A5DBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4A621F0(&qword_1EC0C21D8, &protocol conformance descriptor for ClassPair);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4A5DD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A621F0(&qword_1EC0C21D0, &protocol conformance descriptor for OntologyPair);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C4A5DE6C(uint64_t a1)
{
  v2 = sub_1C4A60A14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5DEA8(uint64_t a1)
{
  v2 = sub_1C4A60A14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4A5DF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A6219C();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4A5DFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4A62148();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4A5E0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A620F4();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t PredicatePair.id.setter()
{
  sub_1C43FFB44();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t PredicatePair.label.setter()
{
  sub_1C43FFB44();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t PredicatePair.maxCount.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

void __swiftcall PredicatePair.init(id:label:maxCount:)(IntelligencePlatformCore::PredicatePair *__return_ptr retstr, Swift::String id, Swift::String label, Swift::Int_optional maxCount)
{
  retstr->id = id;
  retstr->label = label;
  retstr->maxCount.value = maxCount.value;
  retstr->maxCount.is_nil = maxCount.is_nil;
}

uint64_t static PredicatePair.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_1C4425E74(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (v12 || (v13 = sub_1C4F02938(), v14 = 0, (v13 & 1) != 0))
  {
    if (v4 == v8 && v5 == v9)
    {
      v14 = v11;
      if (v7)
      {
        return v14 & 1;
      }
    }

    else
    {
      sub_1C44009DC();
      v16 = sub_1C4F02938();
      if (v7 & 1 | ((v16 & 1) == 0))
      {
        v14 = v16 & v11;
        return v14 & 1;
      }
    }

    v14 = (v6 == v10) & ~v11;
  }

  return v14 & 1;
}

unint64_t PredicatePair.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C4F02248();

  MEMORY[0x1C6940010](v1, v2);
  sub_1C441BB90();
  MEMORY[0x1C6940010](v3, v4);
  MEMORY[0x1C6940010](3829024, 0xE300000000000000);
  sub_1C456902C(&qword_1EC0BB4E8, &qword_1C4F203D0);
  v5 = sub_1C4F01198();
  MEMORY[0x1C6940010](v5);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t sub_1C4A5E4AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746E756F4378616DLL && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

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

uint64_t sub_1C4A5E5B0(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x6C6562616CLL;
  }

  return 0x746E756F4378616DLL;
}

uint64_t sub_1C4A5E600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A5E4AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A5E628(uint64_t a1)
{
  v2 = sub_1C4A60A68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5E664(uint64_t a1)
{
  v2 = sub_1C4A60A68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PredicatePair.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v26 = v25;
  v27 = sub_1C456902C(&qword_1EC0C1FF0, &qword_1C4F48218);
  sub_1C43FCDF8();
  v29 = v28;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C4402A68();
  sub_1C4417F50(v26, v26[3]);
  sub_1C4A60A68();
  sub_1C4F02BF8();
  sub_1C4F02798();
  if (!v23)
  {
    sub_1C4409F78();
    sub_1C4411090();
    sub_1C4F02798();
    sub_1C4401670();
    sub_1C4411090();
    sub_1C4F02768();
  }

  (*(v29 + 8))(v24, v27);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void PredicatePair.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_1C43FE96C();
  v21 = v20;
  v23 = v22;
  v24 = sub_1C456902C(&qword_1EC0C2000, &qword_1C4F48220);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBD64();
  sub_1C4417F50(v21, v21[3]);
  sub_1C4A60A68();
  sub_1C4F02BC8();
  if (v19)
  {
    sub_1C440962C(v21);
  }

  else
  {
    v26 = sub_1C443FEB8();
    v27 = sub_1C442BDA0(v26);
    v38 = v28;
    v29 = sub_1C443362C();
    v36 = sub_1C442BDA0(v29);
    v37 = v30;
    sub_1C4401670();
    v31 = sub_1C4F02648();
    v32 = sub_1C441EE48();
    v34 = v33;
    v35(v32, v24);
    *v23 = v27;
    *(v23 + 8) = v38;
    *(v23 + 16) = v36;
    *(v23 + 24) = v37;
    *(v23 + 32) = v31;
    *(v23 + 40) = v34 & 1;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(v21);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4A5EA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A620A0();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4A5EAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4A6204C();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4A5EB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A61FF8();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t DomainPair.predicateId.setter()
{
  sub_1C43FFB44();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DomainPair.domain.setter()
{
  sub_1C43FFB44();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

IntelligencePlatformCore::DomainPair __swiftcall DomainPair.init(predicateId:domain:)(Swift::String predicateId, Swift::String domain)
{
  *v2 = predicateId;
  v2[1] = domain;
  result.domain = domain;
  result.predicateId = predicateId;
  return result;
}

uint64_t DomainPair.description.getter()
{
  sub_1C43FBFCC();
  sub_1C4F02248();

  strcpy(v1, "<DomainPair c:");
  sub_1C442E440();
  sub_1C441BB90();
  sub_1C44045D4();
  sub_1C4405F48();
  return v1[0];
}

uint64_t sub_1C4A5EDE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xEB00000000644965;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4A5EEAC(char a1)
{
  if (a1)
  {
    return 0x6E69616D6F64;
  }

  else
  {
    return 0x7461636964657270;
  }
}

uint64_t sub_1C4A5EEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A5EDE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A5EF18(uint64_t a1)
{
  v2 = sub_1C4A60ABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5EF54(uint64_t a1)
{
  v2 = sub_1C4A60ABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4A5F028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A61FA4();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4A5F08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4A61F50();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4A5F180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A61EFC();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t _s24IntelligencePlatformCore20RelationshipTypePairV2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  v1 = sub_1C4425E74(a1);
  v4 = v3[2];
  v6 = v3[3];
  v5 = v3[4];
  v7 = v3[5];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v1 == *v2 && v3[1] == v2[1];
  if (!v12 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v13 = v4 == v8 && v6 == v9;
  if (!v13 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  if (v5 == v10 && v7 == v11)
  {
    return 1;
  }

  sub_1C44009DC();

  return sub_1C4F02938();
}

uint64_t _s24IntelligencePlatformCore20RelationshipTypePairV11descriptionSSvg_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1C43FBFCC();
  sub_1C4F02248();

  strcpy(v4, "<RangePair c:");
  sub_1C44045D4();
  MEMORY[0x1C6940010](540697632, 0xE400000000000000);
  MEMORY[0x1C6940010](v1, v2);
  sub_1C441BB90();
  sub_1C442E440();
  sub_1C4405F48();
  return v4[0];
}

uint64_t sub_1C4A5F44C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xEB00000000644965;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570795461746164 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

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

uint64_t sub_1C4A5F55C(char a1)
{
  if (!a1)
  {
    return 0x7461636964657270;
  }

  if (a1 == 1)
  {
    return 0x6570795461746164;
  }

  return 0x65676E6172;
}

uint64_t sub_1C4A5F5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A5F44C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A5F5E8(uint64_t a1)
{
  v2 = sub_1C4A60B10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5F624(uint64_t a1)
{
  v2 = sub_1C4A60B10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4A5F6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A61EA8();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4A5F75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4A61E54();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4A5F850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A61E00();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t OntologyDatabase.Version.fileName.setter()
{
  sub_1C43FFB44();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t OntologyDatabase.Version.versionNum.setter()
{
  sub_1C43FFB44();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t OntologyDatabase.Version.compatibility.setter()
{
  sub_1C43FFB44();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t OntologyDatabase.Version.init(fileName:version:compatibility:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t static OntologyDatabase.Version.== infix(_:_:)(uint64_t a1)
{
  sub_1C4425E74(a1);
  sub_1C441E5F0();
  v7 = v7 && v5 == v6;
  if (v7 || (v8 = sub_1C4F02938(), result = 0, (v8 & 1) != 0))
  {
    if (v1 == v3 && v2 == v4)
    {
      return 1;
    }

    else
    {
      sub_1C44009DC();

      return sub_1C4F02938();
    }
  }

  return result;
}

uint64_t OntologyDatabase.Version.compatible(with:)(uint64_t a1)
{
  if (*(v1 + 32) == *(a1 + 32) && *(v1 + 40) == *(a1 + 40))
  {
    return 1;
  }

  else
  {
    return sub_1C4F02938();
  }
}

uint64_t OntologyDatabase.Version.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1C43FBFCC();
  sub_1C4F02248();

  sub_1C44045D4();
  sub_1C441BB90();
  MEMORY[0x1C6940010](v1, v2);
  sub_1C441BB90();
  sub_1C442E440();
  sub_1C4405F48();
  return 0x6E6F69737265563CLL;
}

uint64_t sub_1C4A5FBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4A5FBF4(uint64_t a1)
{
  v2 = sub_1C44F6CC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A5FC30(uint64_t a1)
{
  v2 = sub_1C44F6CC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4A5FCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_1C43FE96C();
  v21 = v20;
  v23 = v22;
  v47 = v24;
  v48 = sub_1C440BE78(v22, v25, v26);
  sub_1C43FCDF8();
  v28 = v27;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v45 - v30;
  v32 = sub_1C4417F50(v23, v23[3]);
  v21(v32);
  sub_1C4F02BC8();
  if (v19)
  {
    sub_1C440962C(v23);
  }

  else
  {
    v33 = v47;
    sub_1C443FEB8();
    v34 = sub_1C4F02678();
    v46 = v35;
    sub_1C443362C();
    v36 = v28;
    v45 = sub_1C4F02678();
    v38 = v37;
    sub_1C4401670();
    v39 = sub_1C4F02678();
    v41 = v40;
    v42 = v39;
    (*(v36 + 8))(v31, v48);
    v43 = v45;
    v44 = v46;
    *v33 = v34;
    v33[1] = v44;
    v33[2] = v43;
    v33[3] = v38;
    v33[4] = v42;
    v33[5] = v41;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(v23);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4A5FF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A61DAC();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4A5FF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C44F6E70();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4A600F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void), char a5)
{
  v7 = sub_1C4EFBD38();
  sub_1C44F9918(v7, a2);
  sub_1C442B738(v7, a2);
  a4();
  return sub_1C4EFBD58();
}

unint64_t InheritancePair.description.getter()
{
  sub_1C43FBFCC();
  sub_1C4F02248();

  sub_1C442E440();
  sub_1C441BB90();
  sub_1C44045D4();
  sub_1C4405F48();
  return 0xD000000000000013;
}

uint64_t _s24IntelligencePlatformCore10DomainPairV2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  sub_1C4425E74(a1);
  sub_1C441E5F0();
  v7 = v7 && v5 == v6;
  if (v7 || (v8 = sub_1C4F02938(), result = 0, (v8 & 1) != 0))
  {
    if (v1 == v3 && v2 == v4)
    {
      return 1;
    }

    else
    {
      sub_1C44009DC();

      return sub_1C4F02938();
    }
  }

  return result;
}

uint64_t sub_1C4A60284(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646C696863 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65726170 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4A60344(char a1)
{
  if (a1)
  {
    return 0x746E65726170;
  }

  else
  {
    return 0x646C696863;
  }
}

uint64_t sub_1C4A60374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4A603C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4A60284(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4A603F0(uint64_t a1)
{
  v2 = sub_1C4A60B64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A6042C(uint64_t a1)
{
  v2 = sub_1C4A60B64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4A6049C()
{
  sub_1C43FE96C();
  v11 = v2;
  v4 = v3;
  v7 = sub_1C440BE78(v3, v5, v6);
  sub_1C43FCDF8();
  v12 = v8;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402A68();
  v10 = sub_1C4417F50(v4, v4[3]);
  v11(v10);
  sub_1C4F02BF8();
  sub_1C444FED8();
  sub_1C4F02798();
  if (!v0)
  {
    sub_1C4409F78();
    sub_1C444FED8();
    sub_1C4F02798();
  }

  (*(v12 + 8))(v1, v7);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4A60604()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v24 = v6;
  v9 = sub_1C440BE78(v4, v7, v8);
  sub_1C43FCDF8();
  v22 = v10;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD64();
  v12 = sub_1C4417F50(v5, v5[3]);
  v3(v12);
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v5);
  }

  else
  {
    v13 = sub_1C443FEB8();
    v14 = sub_1C442BDA0(v13);
    v16 = v15;
    v17 = sub_1C443362C();
    v18 = sub_1C442BDA0(v17);
    v20 = v19;
    v21 = *(v22 + 8);
    v23 = v18;
    v21(v1, v9);
    *v24 = v14;
    v24[1] = v16;
    v24[2] = v23;
    v24[3] = v20;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(v5);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4A607D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A61D58();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C4A60834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4A61D04();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C4A60928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4A61CB0();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

unint64_t sub_1C4A6099C()
{
  result = qword_1EC0C1FC8;
  if (!qword_1EC0C1FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1FC8);
  }

  return result;
}

unint64_t sub_1C4A60A14()
{
  result = qword_1EC0C1FE0;
  if (!qword_1EC0C1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1FE0);
  }

  return result;
}

unint64_t sub_1C4A60A68()
{
  result = qword_1EC0C1FF8;
  if (!qword_1EC0C1FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1FF8);
  }

  return result;
}

unint64_t sub_1C4A60ABC()
{
  result = qword_1EC0C2010;
  if (!qword_1EC0C2010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2010);
  }

  return result;
}

unint64_t sub_1C4A60B10()
{
  result = qword_1EC0C2028;
  if (!qword_1EC0C2028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2028);
  }

  return result;
}

unint64_t sub_1C4A60B64()
{
  result = qword_1EC0C2050;
  if (!qword_1EC0C2050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2050);
  }

  return result;
}

unint64_t sub_1C4A60C7C()
{
  result = qword_1EC0C2070;
  if (!qword_1EC0C2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2070);
  }

  return result;
}

unint64_t sub_1C4A60CD4()
{
  result = qword_1EC0C2078;
  if (!qword_1EC0C2078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2078);
  }

  return result;
}

unint64_t sub_1C4A60D30()
{
  result = qword_1EC0C2080;
  if (!qword_1EC0C2080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2080);
  }

  return result;
}

unint64_t sub_1C4A60D88()
{
  result = qword_1EC0C2088;
  if (!qword_1EC0C2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2088);
  }

  return result;
}

unint64_t sub_1C4A60DE4()
{
  result = qword_1EC0C2090;
  if (!qword_1EC0C2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2090);
  }

  return result;
}

unint64_t sub_1C4A60E3C()
{
  result = qword_1EC0C2098;
  if (!qword_1EC0C2098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2098);
  }

  return result;
}

unint64_t sub_1C4A60E98()
{
  result = qword_1EC0C20A0;
  if (!qword_1EC0C20A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20A0);
  }

  return result;
}

unint64_t sub_1C4A60EF0()
{
  result = qword_1EC0C20A8;
  if (!qword_1EC0C20A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20A8);
  }

  return result;
}

unint64_t sub_1C4A60F4C()
{
  result = qword_1EDDFF1E8;
  if (!qword_1EDDFF1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF1E8);
  }

  return result;
}

unint64_t sub_1C4A60FA4()
{
  result = qword_1EDDFF200;
  if (!qword_1EDDFF200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF200);
  }

  return result;
}

unint64_t sub_1C4A61000()
{
  result = qword_1EC0C20B0;
  if (!qword_1EC0C20B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20B0);
  }

  return result;
}

unint64_t sub_1C4A61058()
{
  result = qword_1EC0C20B8;
  if (!qword_1EC0C20B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20B8);
  }

  return result;
}

uint64_t sub_1C4A61244(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4A61284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4A612F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

      return sub_1C44162F8(result, a2);
    }

    *(result + 48) = 0;
    if (a2)
    {
      return sub_1C44162F8(result, a2);
    }
  }

  return result;
}

uint64_t sub_1C4A61344(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

      return sub_1C44162F8(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return sub_1C44162F8(result, a2);
    }
  }

  return result;
}

_BYTE *sub_1C4A613C8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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
          result = sub_1C4423610(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C4A614A0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          result = sub_1C4423610(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4A6157C()
{
  result = qword_1EC0C20C0;
  if (!qword_1EC0C20C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20C0);
  }

  return result;
}

unint64_t sub_1C4A615D4()
{
  result = qword_1EC0C20C8;
  if (!qword_1EC0C20C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20C8);
  }

  return result;
}

unint64_t sub_1C4A6162C()
{
  result = qword_1EC0C20D0;
  if (!qword_1EC0C20D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20D0);
  }

  return result;
}

unint64_t sub_1C4A61684()
{
  result = qword_1EC0C20D8;
  if (!qword_1EC0C20D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20D8);
  }

  return result;
}

unint64_t sub_1C4A616DC()
{
  result = qword_1EC0C20E0;
  if (!qword_1EC0C20E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20E0);
  }

  return result;
}

unint64_t sub_1C4A61734()
{
  result = qword_1EC0C20E8;
  if (!qword_1EC0C20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20E8);
  }

  return result;
}

unint64_t sub_1C4A6178C()
{
  result = qword_1EC0C20F0;
  if (!qword_1EC0C20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20F0);
  }

  return result;
}

unint64_t sub_1C4A617E4()
{
  result = qword_1EC0C20F8;
  if (!qword_1EC0C20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C20F8);
  }

  return result;
}

unint64_t sub_1C4A6183C()
{
  result = qword_1EC0C2100;
  if (!qword_1EC0C2100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2100);
  }

  return result;
}

unint64_t sub_1C4A61894()
{
  result = qword_1EDDFF210;
  if (!qword_1EDDFF210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF210);
  }

  return result;
}

unint64_t sub_1C4A618EC()
{
  result = qword_1EDDFF218;
  if (!qword_1EDDFF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF218);
  }

  return result;
}

unint64_t sub_1C4A61944()
{
  result = qword_1EC0C2108;
  if (!qword_1EC0C2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2108);
  }

  return result;
}

unint64_t sub_1C4A6199C()
{
  result = qword_1EC0C2110;
  if (!qword_1EC0C2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2110);
  }

  return result;
}

unint64_t sub_1C4A619F4()
{
  result = qword_1EC0C2118;
  if (!qword_1EC0C2118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2118);
  }

  return result;
}

unint64_t sub_1C4A61A4C()
{
  result = qword_1EC0C2120;
  if (!qword_1EC0C2120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2120);
  }

  return result;
}

unint64_t sub_1C4A61AA4()
{
  result = qword_1EC0C2128;
  if (!qword_1EC0C2128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2128);
  }

  return result;
}

unint64_t sub_1C4A61AFC()
{
  result = qword_1EC0C2130;
  if (!qword_1EC0C2130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2130);
  }

  return result;
}

unint64_t sub_1C4A61B54()
{
  result = qword_1EC0C2138;
  if (!qword_1EC0C2138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2138);
  }

  return result;
}

unint64_t sub_1C4A61BAC()
{
  result = qword_1EC0C2140;
  if (!qword_1EC0C2140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2140);
  }

  return result;
}

unint64_t sub_1C4A61C04()
{
  result = qword_1EC0C2148;
  if (!qword_1EC0C2148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2148);
  }

  return result;
}

unint64_t sub_1C4A61C5C()
{
  result = qword_1EC0C2150;
  if (!qword_1EC0C2150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2150);
  }

  return result;
}

unint64_t sub_1C4A61CB0()
{
  result = qword_1EC0C2158;
  if (!qword_1EC0C2158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2158);
  }

  return result;
}

unint64_t sub_1C4A61D04()
{
  result = qword_1EC0C2160;
  if (!qword_1EC0C2160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2160);
  }

  return result;
}

unint64_t sub_1C4A61D58()
{
  result = qword_1EC0C2168;
  if (!qword_1EC0C2168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2168);
  }

  return result;
}

unint64_t sub_1C4A61DAC()
{
  result = qword_1EDDFF1D8;
  if (!qword_1EDDFF1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFF1D8);
  }

  return result;
}

unint64_t sub_1C4A61E00()
{
  result = qword_1EC0C2170;
  if (!qword_1EC0C2170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2170);
  }

  return result;
}

unint64_t sub_1C4A61E54()
{
  result = qword_1EC0C2178;
  if (!qword_1EC0C2178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2178);
  }

  return result;
}

unint64_t sub_1C4A61EA8()
{
  result = qword_1EC0C2180;
  if (!qword_1EC0C2180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2180);
  }

  return result;
}

unint64_t sub_1C4A61EFC()
{
  result = qword_1EC0C2188;
  if (!qword_1EC0C2188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2188);
  }

  return result;
}

unint64_t sub_1C4A61F50()
{
  result = qword_1EC0C2190;
  if (!qword_1EC0C2190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2190);
  }

  return result;
}

unint64_t sub_1C4A61FA4()
{
  result = qword_1EC0C2198;
  if (!qword_1EC0C2198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2198);
  }

  return result;
}

unint64_t sub_1C4A61FF8()
{
  result = qword_1EC0C21A0;
  if (!qword_1EC0C21A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C21A0);
  }

  return result;
}

unint64_t sub_1C4A6204C()
{
  result = qword_1EC0C21A8;
  if (!qword_1EC0C21A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C21A8);
  }

  return result;
}

unint64_t sub_1C4A620A0()
{
  result = qword_1EC0C21B0;
  if (!qword_1EC0C21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C21B0);
  }

  return result;
}

unint64_t sub_1C4A620F4()
{
  result = qword_1EC0C21B8;
  if (!qword_1EC0C21B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C21B8);
  }

  return result;
}

unint64_t sub_1C4A62148()
{
  result = qword_1EC0C21C0;
  if (!qword_1EC0C21C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C21C0);
  }

  return result;
}

unint64_t sub_1C4A6219C()
{
  result = qword_1EC0C21C8;
  if (!qword_1EC0C21C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C21C8);
  }

  return result;
}

uint64_t sub_1C4A621F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClassPair();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C4A622B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1C459EA90(0, v4, 0);
    v8 = sub_1C486C288();
    v9 = 0;
    v32 = v5 + 56;
    v25 = v5 + 64;
    v26 = v4;
    v27 = v5;
    if ((v8 & 0x8000000000000000) == 0)
    {
      while (v8 < 1 << *(v5 + 32))
      {
        v10 = v8 >> 6;
        if ((*(v32 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v5 + 36) != v6)
        {
          goto LABEL_25;
        }

        v31 = v7;
        v11 = (*(v5 + 48) + 16 * v8);
        v12 = v11[1];
        v29 = v6;
        v30 = *v11;
        v13 = a3;
        v15 = *(v33 + 16);
        v14 = *(v33 + 24);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (v15 >= v14 >> 1)
        {
          sub_1C459EA90(v14 > 1, v15 + 1, 1);
        }

        *(v33 + 16) = v15 + 1;
        v16 = (v33 + 32 * v15);
        v16[4] = a2;
        v16[5] = v13;
        v16[6] = v30;
        v16[7] = v12;
        if (v31)
        {
          goto LABEL_29;
        }

        a3 = v13;
        v5 = v27;
        v17 = 1 << *(v27 + 32);
        if (v8 >= v17)
        {
          goto LABEL_26;
        }

        v18 = *(v32 + 8 * v10);
        if ((v18 & (1 << v8)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v27 + 36) != v29)
        {
          goto LABEL_28;
        }

        v19 = v18 & (-2 << (v8 & 0x3F));
        if (v19)
        {
          v17 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v10 << 6;
          v21 = v10 + 1;
          v22 = (v25 + 8 * v10);
          while (v21 < (v17 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              sub_1C45E8E98(v8, v29, 0);
              v17 = __clz(__rbit64(v23)) + v20;
              goto LABEL_19;
            }
          }

          sub_1C45E8E98(v8, v29, 0);
        }

LABEL_19:
        if (++v9 == v26)
        {
          goto LABEL_22;
        }

        v7 = 0;
        v6 = *(v27 + 36);
        v8 = v17;
        if (v17 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_22:
  }
}

uint64_t sub_1C4A62540(uint64_t a1, uint64_t a2)
{
  v4[2] = a1;

  sub_1C446C37C(a2, v4);
}

uint64_t sub_1C4A62598(uint64_t a1, uint64_t a2)
{
  result = sub_1C4428DA0(a2);
  v5 = result;
  for (i = 0; v5 != i; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1C6940F90](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    type metadata accessor for ClassPair();
    sub_1C4A65CD4();
    sub_1C4EFB6A8();

    if (v2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1C4A62690(uint64_t result, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v6 = a2 + 56;
  v7 = *(a2 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    v8 = v6 + 32;
    a3(result);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFB6A8();

    v6 = v8;
  }

  while (!v4);
  return result;
}

uint64_t sub_1C4A62764(uint64_t result, uint64_t a2)
{
  v3 = a2 + 72;
  v4 = *(a2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = v3 + 48;
    sub_1C4A6204C();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFB6A8();

    v3 = v5;
  }

  while (!v2);
  return v6;
}

uint64_t sub_1C4A6283C()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser____lazy_storage___decoder;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser____lazy_storage___decoder))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser____lazy_storage___decoder);
  }

  else
  {
    v3 = v0;
    sub_1C4EF9348();
    swift_allocObject();
    v2 = sub_1C4EF9338();
    *(v3 + v1) = v2;
  }

  return v2;
}

char *sub_1C4A628B8(uint64_t a1)
{
  v2 = v1;
  v104 = *v1;
  v4 = sub_1C4EF98F8();
  v105 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v94 = v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBF38();
  v95 = v7;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBF38();
  v96 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  v97 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  v98 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  v100 = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF38();
  v99 = v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBF38();
  v103 = v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v93 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v93 - v24;
  *(v1 + 3) = 0x73616C632D6E6F6ELL;
  *(v1 + 4) = 0xE900000000000073;
  *&v1[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser____lazy_storage___decoder] = 0;
  v26 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicateDict;
  sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
  v27 = MEMORY[0x1E69E7CC0];
  *&v2[v26] = sub_1C43FDBC0();
  v28 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_childParentRelationship;
  *&v2[v28] = sub_1C43FDBC0();
  v29 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_unfoldedRelationship;
  *&v2[v29] = sub_1C43FDBC0();
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_classPairs] = v27;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_relationshipTypePairs] = v27;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicatePairs] = v27;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_rangePairs] = v27;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_domainPairs] = v27;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_newVersions] = v27;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_classPairsBackup] = v27;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_relationshipTypePairsBackup] = v27;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_inheritancePairsBackup] = v27;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicatePairsBackup] = v27;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_rangePairsBackup] = v27;
  *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_domainPairsBackup] = v27;
  *(v2 + 2) = a1;
  sub_1C44867F4();

  v30 = sub_1C4F01E88();
  sub_1C441A10C();
  v35 = sub_1C4486838(v31, v32, v33, v34, v30);

  if (v35)
  {
    v101 = a1;
    sub_1C4EF98C8();

    v36 = v105;
    v102 = *(v105 + 32);
    v102(v25, v22, v4);
    v37 = *(v36 + 16);
    v37(&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_classJSON], v25, v4);
    v38 = sub_1C4F01E88();
    sub_1C441A10C();
    v43 = sub_1C4486838(v39, v40, v41, v42, v38);

    if (v43)
    {
      v93[1] = v25;
      v44 = v99;
      sub_1C4EF98C8();

      v102(v103, v44, v4);
      v45 = sub_1C44175F0(OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_inheritanceJSON);
      (v37)(v45);
      v46 = sub_1C4F01E88();
      sub_1C43FC6F4();
      sub_1C441A10C();
      v51 = sub_1C4486838(v47, v48, v49, v50, v46);

      if (v51)
      {
        v52 = v98;
        sub_1C4EF98C8();

        v102(v100, v52, v4);
        v53 = sub_1C44175F0(OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicateJSON);
        (v37)(v53);
        v54 = sub_1C4F01E88();
        sub_1C441A10C();
        v59 = sub_1C4486838(v55, v56, v57, v58, v54);

        if (v59)
        {
          v60 = v96;
          sub_1C4EF98C8();

          v61 = v97;
          v102(v97, v60, v4);
          v62 = sub_1C44175F0(OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_relationshipTypeJSON);
          (v37)(v62);
          v63 = sub_1C4F01E88();
          sub_1C441A10C();
          v68 = sub_1C4486838(v64, v65, v66, v67, v63);

          v69 = v105;
          if (v68)
          {
            v70 = v94;
            sub_1C4EF98C8();

            v71 = *(v69 + 8);
            v71(v61, v4);
            v71(v100, v4);
            v71(v103, v4);
            v72 = sub_1C443363C();
            (v71)(v72);
            v73 = v95;
            v74 = v70;
            v75 = v102;
            v102(v95, v74, v4);
            v75(&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_versionJSON], v73, v4);
            return v2;
          }

          v84 = sub_1C44009F4();
          (v63)(v84);
          (v63)(v100, v4);
          (v63)(v103, v4);
          v85 = sub_1C443363C();
          (v63)(v85);
          v76 = 1;
          v77 = 1;
          v78 = 1;
        }

        else
        {

          v69 = v105;
          v82 = sub_1C44009F4();
          MEMORY[0](v82);
          MEMORY[0](v103, v4);
          v83 = sub_1C443363C();
          MEMORY[0](v83);
          v78 = 0;
          v76 = 1;
          v77 = 1;
        }
      }

      else
      {

        v69 = v105;
        v80 = sub_1C44009F4();
        (v46)(v80);
        v81 = sub_1C443363C();
        (v46)(v81);
        v77 = 0;
        v78 = 0;
        v76 = 1;
      }
    }

    else
    {
      v79 = v105;
      (*(v105 + 8))(v25, v4);

      v76 = 0;
      v77 = 0;
      v78 = 0;
      v69 = v79;
    }
  }

  else
  {

    v76 = 0;
    v77 = 0;
    v78 = 0;
    v69 = v105;
  }

  if (v35)
  {
    v86 = sub_1C441FFC0(OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_classJSON);
    v87(v86);
  }

  if (v76)
  {
    v88 = sub_1C441FFC0(OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_inheritanceJSON);
    v89(v88);
  }

  if (v77)
  {
    v90 = sub_1C441FFC0(OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicateJSON);
    v91(v90);
  }

  if (v78)
  {
    (*(v69 + 8))(&v2[OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_relationshipTypeJSON], v4);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1C4A631E8()
{
  sub_1C4A6283C();
  v40 = v0;
  sub_1C48381AC(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_versionJSON);
  v2 = v1;

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4 + 72;
  v43 = v4;
  v41 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC8];
  while (v41 != v3)
  {
    if (v3 >= *(v43 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      result = sub_1C4F029F8();
      __break(1u);
      return result;
    }

    v8 = *(v5 - 40);
    v7 = *(v5 - 32);
    v45 = v3;
    v49 = *(v5 - 24);
    v51 = *(v5 - 8);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_isUniquelyReferenced_nonNull_native();
    v53 = v6;
    v9 = sub_1C445FAA8(v8, v7);
    if (__OFADD__(v6[2], (v10 & 1) == 0))
    {
      goto LABEL_32;
    }

    v11 = v9;
    v12 = v10;
    sub_1C456902C(&qword_1EC0C21E0, &unk_1C4F498D8);
    if (sub_1C4F02458())
    {
      v13 = sub_1C445FAA8(v8, v7);
      if ((v12 & 1) != (v14 & 1))
      {
        goto LABEL_37;
      }

      v11 = v13;
    }

    v6 = v53;
    if (v12)
    {
      sub_1C442FFE4((v53[7] + 48 * v11), v37, v38, v40, v41, v43, v45, v49, v51);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v53[(v11 >> 6) + 8] |= 1 << v11;
      v15 = (v6[6] + 16 * v11);
      *v15 = v8;
      v15[1] = v7;
      sub_1C442FFE4((v6[7] + 48 * v11), v37, v38, v40, v41, v43, v45, v49, v51);

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v16 = v6[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_35;
      }

      v6[2] = v18;
    }

    v5 += 48;
    v3 = v46 + 1;
  }

  v19 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v39 = v6;
  *(v40 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_newVersions) = sub_1C482FD9C(v19);

  v20 = sub_1C4A57A00();
  v21 = 0;
  v22 = v20 + 72;
  v42 = *(v20 + 16);
  v44 = v20;
  v23 = MEMORY[0x1E69E7CC8];
  while (v42 != v21)
  {
    if (v21 >= *(v44 + 16))
    {
      goto LABEL_33;
    }

    v25 = *(v22 - 40);
    v24 = *(v22 - 32);
    v47 = v21;
    v50 = *(v22 - 24);
    v52 = *(v22 - 8);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_isUniquelyReferenced_nonNull_native();
    v53 = v23;
    v26 = sub_1C445FAA8(v25, v24);
    if (__OFADD__(v23[2], (v27 & 1) == 0))
    {
      goto LABEL_34;
    }

    v28 = v26;
    v29 = v27;
    sub_1C456902C(&qword_1EC0C21E0, &unk_1C4F498D8);
    if (sub_1C4F02458())
    {
      v30 = sub_1C445FAA8(v25, v24);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_37;
      }

      v28 = v30;
    }

    v23 = v53;
    if (v29)
    {
      sub_1C44110A0((v53[7] + 48 * v28), v37, v39, v40, v42, v44, v47, v50, v52);
    }

    else
    {
      v53[(v28 >> 6) + 8] |= 1 << v28;
      v32 = (v23[6] + 16 * v28);
      *v32 = v25;
      v32[1] = v24;
      sub_1C44110A0((v23[7] + 48 * v28), v37, v39, v40, v42, v44, v47, v50, v52);

      v33 = v23[2];
      v17 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v17)
      {
        goto LABEL_36;
      }

      v23[2] = v34;
    }

    v22 += 48;
    v21 = v48 + 1;
  }

  if (v23[2])
  {
    v54 = 0;
    sub_1C4A6523C(0x736A2E7373616C63, 0xEA00000000006E6FLL, 2, v23, v39, &v54);
    sub_1C4A6523C(0xD000000000000010, 0x80000001C4FAE220, 4, v23, v39, &v54);
    v35 = sub_1C43FC6F4();
    sub_1C4A6523C(v35, 0xEE006E6F736A2E65, 8, v23, v39, &v54);
    sub_1C4A6523C(0xD000000000000016, 0x80000001C4FAE240, 16, v23, v39, &v54);

    sub_1C440D164(&v54, &v53);
    return v54;
  }

  else
  {

    return 1;
  }
}

void sub_1C4A63748()
{
  v1 = v0;
  sub_1C4A63EE0();
  v2 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_childParentRelationship;
  sub_1C440D164(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_childParentRelationship, v28);
  v3 = *(v1 + v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v27 = v3;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= v8)
          {
            goto LABEL_23;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

LABEL_9:
      v12 = (*(v27 + 48) + 16 * (__clz(__rbit64(v7)) | (v9 << 6)));
      v13 = *v12;
      v14 = v12[1];
      swift_bridgeObjectRetain_n();
      v15 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4A622B4(v15, v13, v14);
      v17 = v16;

      v18 = *(v17 + 16);
      v19 = *(v10 + 16);
      v20 = v19 + v18;
      if (__OFADD__(v19, v18))
      {
        goto LABEL_25;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v20 > *(v10 + 24) >> 1)
      {
        if (v19 <= v20)
        {
          v22 = v19 + v18;
        }

        else
        {
          v22 = v19;
        }

        sub_1C458E99C(isUniquelyReferenced_nonNull_native, v22, 1, v10);
        v10 = v23;
      }

      v7 &= v7 - 1;
      if (!*(v17 + 16))
      {
        break;
      }

      if ((*(v10 + 24) >> 1) - *(v10 + 16) < v18)
      {
        goto LABEL_26;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v24 = *(v10 + 16);
        v25 = __OFADD__(v24, v18);
        v26 = v24 + v18;
        if (v25)
        {
          goto LABEL_27;
        }

        *(v10 + 16) = v26;
      }
    }
  }

  while (!v18);
  __break(1u);
LABEL_23:

  sub_1C4A62540(v10, sub_1C4A65DB8);
}

uint64_t sub_1C4A63974()
{
  sub_1C4A641C8();
  sub_1C4A647E0();
  sub_1C440D164(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicatePairs, v7);
  v1 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4A62540(v1, sub_1C4A65D9C);

  sub_1C440D164(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_rangePairs, v6);
  v2 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4A62540(v2, sub_1C4A65D64);

  sub_1C440D164(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_domainPairs, v5);
  v3 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4A62540(v3, sub_1C4A65D2C);
}

uint64_t sub_1C4A63A70(void (*a1)(void), void *a2, uint64_t a3)
{
  a1();
  sub_1C440D164(v3 + *a2, v8);
  v6 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4A62540(v6, a3);
}

uint64_t sub_1C4A63AE0()
{
  v1 = v0;
  sub_1C4A6283C();
  sub_1C48381E8(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_classJSON);
  v3 = v2;

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_classPairs;
    type metadata accessor for ClassPair();
    v7 = (v4 + 56);
    do
    {
      v9 = *(v7 - 3);
      v8 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      v12 = swift_allocObject();
      v12[2] = v9;
      v12[3] = v8;
      v12[4] = v10;
      v12[5] = v11;
      swift_beginAccess();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v13 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940330](v13);
      if (*((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C4F016D8();
      }

      sub_1C4F01748();
      swift_endAccess();
      v7 += 4;
      --v5;
    }

    while (v5);
  }
}

uint64_t sub_1C4A63C64()
{
  v1 = v0;
  sub_1C4A6283C();
  sub_1C48384D8();
  v3 = v2;

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 72);
    v7 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_relationshipTypePairs;
    do
    {
      v8 = *(v6 - 4);
      v25 = *(v6 - 5);
      v9 = *v6;
      if (*v6)
      {
        v10 = *(v6 - 1);
        swift_beginAccess();
        v11 = *(v1 + v7);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v7) = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C458EA5C(0, *(v11 + 16) + 1, 1, v11);
          v11 = v20;
          *(v1 + v7) = v20;
        }

        v14 = *(v11 + 16);
        v13 = *(v11 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1C458EA5C(v13 > 1, v14 + 1, 1, v11);
          v11 = v21;
        }

        *(v11 + 16) = v14 + 1;
        v15 = (v11 + 48 * v14);
        v15[4] = v25;
        v15[5] = v8;
        v15[6] = 0x7373616C63;
        v16 = 0xE500000000000000;
      }

      else
      {
        v10 = *(v6 - 3);
        v9 = *(v6 - 2);
        swift_beginAccess();
        v11 = *(v1 + v7);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v17 = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v7) = v11;
        if ((v17 & 1) == 0)
        {
          sub_1C458EA5C(0, *(v11 + 16) + 1, 1, v11);
          v11 = v22;
          *(v1 + v7) = v22;
        }

        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1C458EA5C(v18 > 1, v19 + 1, 1, v11);
          v11 = v23;
        }

        *(v11 + 16) = v19 + 1;
        v15 = (v11 + 48 * v19);
        v15[4] = v25;
        v15[5] = v8;
        v15[6] = 0x73616C632D6E6F6ELL;
        v16 = 0xE900000000000073;
      }

      v15[7] = v16;
      v15[8] = v10;
      v15[9] = v9;
      *(v1 + v7) = v11;
      swift_endAccess();
      v6 += 6;
      --v5;
    }

    while (v5);
  }
}

uint64_t sub_1C4A63EE0()
{
  v1 = v0;
  sub_1C4A6283C();
  sub_1C4838220(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_inheritanceJSON);
  v3 = v2;

  if (v3)
  {
    result = v3;
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  v28 = *(result + 16);
  if (v28)
  {
    v5 = 0;
    v6 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_childParentRelationship;
    v27 = result + 32;
    v31 = xmmword_1C4F0D130;
    v26 = result;
    while (v5 < *(result + 16))
    {
      v7 = (v27 + 24 * v5);
      v8 = v7[2];
      v9 = *(v8 + 16);
      if (v9)
      {
        v30 = v5;
        v11 = *v7;
        v10 = v7[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v29 = v8;
        v12 = (v8 + 40);
        do
        {
          v14 = *(v12 - 1);
          v13 = *v12;
          swift_beginAccess();
          v15 = *(*(v1 + v6) + 16);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (v15 && (sub_1C445FAA8(v14, v13), (v16 & 1) != 0))
          {
            swift_endAccess();
            swift_beginAccess();
            v17 = sub_1C4B5A9F8(v32, v14, v13);
            if (*v18)
            {
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C44869B4(v34, v11, v10, v19, v20, v21, v22, v23, v25, v26, v27, v28, v29, v30, v31, *(&v31 + 1), v32[0], v32[1], v32[2], v32[3], v33[0], v33[1], v33[2], v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6]);
              (v17)(v32, 0);
              swift_endAccess();
            }

            else
            {
              (v17)(v32, 0);
              swift_endAccess();
            }
          }

          else
          {
            swift_endAccess();
            sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
            inited = swift_initStackObject();
            *(inited + 16) = v31;
            *(inited + 32) = v11;
            *(inited + 40) = v10;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4499940();
            swift_beginAccess();
            swift_isUniquelyReferenced_nonNull_native();
            v33[0] = *(v1 + v6);
            sub_1C4486BA8();
            *(v1 + v6) = v33[0];

            swift_endAccess();
          }

          v12 += 2;
          --v9;
        }

        while (v9);

        result = v26;
        v5 = v30;
      }

      if (++v5 == v28)
      {
      }
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1C4A641C8()
{
  v1 = v0;
  sub_1C4A6283C();
  sub_1C4838260(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicateJSON);
  v3 = v2;

  if (v3)
  {
    result = v3;
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  v59 = *(result + 16);
  if (v59)
  {
    v5 = 0;
    v64 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicatePairs;
    v6 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_rangePairs;
    v7 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicateDict;
    v57 = result + 32;
    v68 = xmmword_1C4F0D130;
    v58 = result;
    v56 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicateDict;
    while (v5 < *(result + 16))
    {
      v8 = v57 + 80 * v5;
      v9 = *(v8 + 8);
      v72 = *v8;
      v10 = *(v8 + 24);
      v62 = *(v8 + 16);
      v63 = v5;
      v11 = *(v8 + 40);
      v70 = *(v8 + 32);
      v61 = *(v8 + 48);
      HIDWORD(v60) = *(v8 + 56);
      v12 = *(v8 + 64);
      v13 = *(v8 + 72);
      swift_beginAccess();
      v14 = *(v1 + v64);
      swift_bridgeObjectRetain_n();
      v67 = v10;
      swift_bridgeObjectRetain_n();
      v71 = v11;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v66 = v12;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v64) = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C458E9FC(0, *(v14 + 16) + 1, 1, v14);
        v14 = v52;
        *(v1 + v64) = v52;
      }

      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1C458E9FC(v16 > 1, v17 + 1, 1, v14);
        v14 = v53;
      }

      *(v14 + 16) = v17 + 1;
      v18 = v14 + 48 * v17;
      *(v18 + 32) = v72;
      *(v18 + 40) = v9;
      *(v18 + 48) = v62;
      *(v18 + 56) = v10;
      *(v18 + 64) = v61;
      *(v18 + 72) = BYTE4(v60);
      *(v1 + v64) = v14;
      swift_endAccess();
      v19 = *(v13 + 16);
      v65 = v13;
      if (v19)
      {
        goto LABEL_17;
      }

      v21 = *(v1 + 24);
      v20 = *(v1 + 32);
      swift_beginAccess();
      v22 = *(v1 + v6);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v23 = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v6) = v22;
      if ((v23 & 1) == 0)
      {
        sub_1C458E9CC(0, *(v22 + 16) + 1, 1, v22);
        v22 = v54;
        *(v1 + v6) = v54;
      }

      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1C458E9CC(v24 > 1, v25 + 1, 1, v22);
        v22 = v55;
      }

      *(v22 + 16) = v25 + 1;
      v26 = (v22 + 48 * v25);
      v26[4] = v72;
      v26[5] = v9;
      v26[6] = v21;
      v26[7] = v20;
      v26[8] = v70;
      v26[9] = v71;
      *(v1 + v6) = v22;
      swift_endAccess();
      v19 = *(v13 + 16);
      if (v19)
      {
LABEL_17:
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v27 = (v13 + 40);
        v28 = v9;
        do
        {
          v30 = *(v27 - 1);
          v29 = *v27;
          swift_beginAccess();
          v31 = *(v1 + v6);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v32 = swift_isUniquelyReferenced_nonNull_native();
          *(v1 + v6) = v31;
          if ((v32 & 1) == 0)
          {
            sub_1C458E9CC(0, *(v31 + 16) + 1, 1, v31);
            v31 = v36;
            *(v1 + v6) = v36;
          }

          v34 = *(v31 + 16);
          v33 = *(v31 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_1C458E9CC(v33 > 1, v34 + 1, 1, v31);
            v31 = v37;
          }

          *(v31 + 16) = v34 + 1;
          v35 = (v31 + 48 * v34);
          v35[4] = v72;
          v35[5] = v28;
          v9 = v28;
          v35[6] = v70;
          v35[7] = v71;
          v35[8] = v30;
          v35[9] = v29;
          *(v1 + v6) = v31;
          swift_endAccess();
          v27 += 2;
          --v19;
        }

        while (v19);

        v7 = v56;
      }

      v38 = *(v66 + 16);
      if (v38)
      {
        v39 = (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0() + 40);
        do
        {
          v41 = *(v39 - 1);
          v40 = *v39;
          swift_beginAccess();
          v42 = *(*(v1 + v7) + 16);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (v42 && (sub_1C445FAA8(v41, v40), (v43 & 1) != 0))
          {
            swift_endAccess();
            swift_beginAccess();
            v44 = sub_1C4B5A9F8(v73, v41, v40);
            if (*v45)
            {
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C44869B4(v75, v72, v9, v46, v47, v48, v49, v50, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, *(&v68 + 1), v69, v70, v71, v72, v73[0], v73[1], v73[2], v73[3]);
              (v44)(v73, 0);
              swift_endAccess();
            }

            else
            {
              (v44)(v73, 0);
              swift_endAccess();
            }
          }

          else
          {
            swift_endAccess();
            sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
            inited = swift_initStackObject();
            *(inited + 16) = v68;
            *(inited + 32) = v72;
            *(inited + 40) = v9;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C4499940();
            swift_beginAccess();
            swift_isUniquelyReferenced_nonNull_native();
            v74 = *(v1 + v7);
            sub_1C4486BA8();
            *(v1 + v7) = v74;

            swift_endAccess();
          }

          v39 += 2;
          --v38;
        }

        while (v38);
      }

      v5 = v63 + 1;

      result = v58;
      if (v63 + 1 == v59)
      {
      }
    }

    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1C4A647E0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_childParentRelationship;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v94 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_unfoldedRelationship;
  v8 = (v5 + 63) >> 6;
  v90 = v3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  v87 = v1;
  for (i = v4; v7; v4 = i)
  {
LABEL_8:
    v11 = (*(v90 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
    v13 = *v11;
    v12 = v11[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v92 = sub_1C4A65A64(v13, v12);
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v97 = *(v87 + v94);
    *(v87 + v94) = 0x8000000000000000;
    v14 = sub_1C445FAA8(v13, v12);
    if (__OFADD__(v97[2], (v15 & 1) == 0))
    {
      goto LABEL_73;
    }

    v16 = v14;
    v17 = v15;
    sub_1C456902C(&qword_1EC0BA748, &unk_1C4F231D0);
    if (sub_1C4F02458())
    {
      v18 = sub_1C445FAA8(v13, v12);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_75;
      }

      v16 = v18;
    }

    if (v17)
    {

      v20 = v97;
      *(v97[7] + 8 * v16) = v92;
    }

    else
    {
      v20 = v97;
      v97[(v16 >> 6) + 8] |= 1 << v16;
      v21 = (v97[6] + 16 * v16);
      *v21 = v13;
      v21[1] = v12;
      *(v97[7] + 8 * v16) = v92;
      v22 = v97[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_74;
      }

      v97[2] = v24;
    }

    v7 &= v7 - 1;
    v1 = v87;
    *(v87 + v94) = v20;
    swift_endAccess();
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_70;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_8;
    }
  }

  v25 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_predicateDict;
  swift_beginAccess();
  v26 = *(v1 + v25);
  v27 = 1 << *(v26 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v26 + 64);
  v30 = (v27 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v31 = 0;
  while (v29)
  {
LABEL_26:
    v33 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v34 = (*(v26 + 48) + ((v31 << 10) | (16 * v33)));
    v36 = *v34;
    v35 = v34[1];
    swift_beginAccess();
    v37 = *(*(v1 + v94) + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v37 && (sub_1C445FAA8(v36, v35), (v38 & 1) != 0))
    {
      swift_endAccess();

      v1 = v87;
    }

    else
    {
      swift_endAccess();
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0D130;
      *(inited + 32) = v36;
      *(inited + 40) = v35;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4499940();
      v1 = v87;
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v96 = *(v87 + v94);
      sub_1C4486BA8();
      *(v87 + v94) = v96;

      swift_endAccess();
    }
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_71;
    }

    if (v32 >= v30)
    {
      break;
    }

    v29 = *(v26 + 64 + 8 * v32);
    ++v31;
    if (v29)
    {
      v31 = v32;
      goto LABEL_26;
    }
  }

  swift_beginAccess();
  v40 = *(v1 + v94);
  v41 = v40 + 64;
  v42 = 1 << *(v40 + 32);
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  else
  {
    v43 = -1;
  }

  v44 = v43 & *(v40 + 64);
  v95 = OBJC_IVAR____TtC24IntelligencePlatformCore14OntologyParser_domainPairs;
  v45 = (v42 + 63) >> 6;
  v81 = v40;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v46 = 0;
  v79 = v45;
  v80 = v41;
  if (!v44)
  {
    do
    {
LABEL_35:
      v47 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_72;
      }

      if (v47 >= v45)
      {
      }

      v44 = *(v41 + 8 * v47);
      ++v46;
    }

    while (!v44);
    goto LABEL_38;
  }

  while (1)
  {
    v47 = v46;
LABEL_38:
    v82 = v47;
    v83 = (v44 - 1) & v44;
    v48 = __clz(__rbit64(v44)) | (v47 << 6);
    v49 = (*(v81 + 48) + 16 * v48);
    v50 = *(*(v81 + 56) + 8 * v48);
    v51 = v49[1];
    v86 = *v49;
    v52 = v50 + 56;
    v53 = 1 << *(v50 + 32);
    v54 = v53 < 64 ? ~(-1 << v53) : -1;
    v55 = v54 & *(v50 + 56);
    v56 = (v53 + 63) >> 6;
    v93 = v51;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v57 = 0;
    v84 = v56;
    v85 = v50 + 56;
    if (v55)
    {
      break;
    }

    while (1)
    {
LABEL_43:
      v58 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        goto LABEL_69;
      }

      if (v58 >= v56)
      {
        break;
      }

      v55 = *(v52 + 8 * v58);
      ++v57;
      if (v55)
      {
        goto LABEL_46;
      }
    }

    v46 = v82;
    v44 = v83;
    v45 = v79;
    v41 = v80;
    if (!v83)
    {
      goto LABEL_35;
    }
  }

LABEL_42:
  v58 = v57;
LABEL_46:
  v55 &= v55 - 1;
  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v59 = sub_1C4663244();
  swift_endAccess();

  if (v59)
  {
    v60 = v59;
  }

  else
  {
    v60 = MEMORY[0x1E69E7CD0];
  }

  v62 = v60 + 56;
  v61 = *(v60 + 56);
  v89 = v60;
  v63 = 1 << *(v60 + 32);
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  else
  {
    v64 = -1;
  }

  v65 = v64 & v61;
  swift_beginAccess();
  v66 = 0;
  for (j = (v63 + 63) >> 6; v65; *(v87 + v95) = v71)
  {
LABEL_57:
    v69 = (*(v89 + 48) + ((v66 << 10) | (16 * __clz(__rbit64(v65)))));
    v70 = v69[1];
    v91 = *v69;
    v71 = *(v1 + v95);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v95) = v71;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C458EA2C(0, *(v71 + 16) + 1, 1, v71);
      v71 = v76;
      *(v1 + v95) = v76;
    }

    v74 = *(v71 + 16);
    v73 = *(v71 + 24);
    if (v74 >= v73 >> 1)
    {
      sub_1C458EA2C(v73 > 1, v74 + 1, 1, v71);
      v71 = v77;
    }

    v65 &= v65 - 1;
    *(v71 + 16) = v74 + 1;
    v75 = (v71 + 32 * v74);
    v75[4] = v91;
    v75[5] = v70;
    v1 = v87;
    v75[6] = v86;
    v75[7] = v93;
  }

  while (1)
  {
    v68 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      break;
    }

    if (v68 >= j)
    {
      swift_endAccess();

      v57 = v58;
      v56 = v84;
      v52 = v85;
      if (!v55)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    v65 = *(v62 + 8 * v68);
    ++v66;
    if (v65)
    {
      v66 = v68;
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for OntologyParser(uint64_t a1)
{
  result = qword_1EDDFF3A8;
  if (!qword_1EDDFF3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A64FCC(uint64_t a1)
{
  result = sub_1C4EF98F8();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1C4A650B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C44509A8();
  *a1 = result;
  return result;
}

uint64_t sub_1C4A650E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C468D2A4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C4A65110@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C46897E8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C4A65140@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C4B44854(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C4A65170@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C4A70A7C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}