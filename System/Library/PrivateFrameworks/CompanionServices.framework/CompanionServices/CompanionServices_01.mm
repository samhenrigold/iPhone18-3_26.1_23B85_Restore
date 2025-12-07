unint64_t sub_243D3C9C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF9B0, &qword_243D5BB90);
  v3 = sub_243D55168();

  v4 = *(a1 + 176);
  *&v33[128] = *(a1 + 160);
  *&v33[144] = v4;
  *&v33[153] = *(a1 + 185);
  v5 = *(a1 + 112);
  *&v33[64] = *(a1 + 96);
  *&v33[80] = v5;
  v6 = *(a1 + 144);
  *&v33[96] = *(a1 + 128);
  *&v33[112] = v6;
  v7 = *(a1 + 48);
  *v33 = *(a1 + 32);
  *&v33[16] = v7;
  v8 = *(a1 + 80);
  *&v33[32] = *(a1 + 64);
  *&v33[48] = v8;
  v9 = v33[0];
  sub_243D3CC40(v33, v32, &qword_27EDAF618, &qword_243D5AFB0);
  result = sub_243D4AA18(v9);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = (a1 + 208);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v9;
    v13 = v3[7] + 168 * result;
    v14 = *&v33[8];
    v15 = *&v33[40];
    *(v13 + 16) = *&v33[24];
    *(v13 + 32) = v15;
    *v13 = v14;
    v16 = *&v33[56];
    v17 = *&v33[72];
    v18 = *&v33[104];
    *(v13 + 80) = *&v33[88];
    *(v13 + 96) = v18;
    *(v13 + 48) = v16;
    *(v13 + 64) = v17;
    v19 = *&v33[120];
    v20 = *&v33[136];
    v21 = *&v33[152];
    *(v13 + 160) = v33[168];
    *(v13 + 128) = v20;
    *(v13 + 144) = v21;
    *(v13 + 112) = v19;
    v22 = v3[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      break;
    }

    v3[2] = v24;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v25 = v12 + 11;
    v26 = v12[9];
    *&v33[128] = v12[8];
    *&v33[144] = v26;
    *&v33[153] = *(v12 + 153);
    v27 = v12[5];
    *&v33[64] = v12[4];
    *&v33[80] = v27;
    v28 = v12[7];
    *&v33[96] = v12[6];
    *&v33[112] = v28;
    v29 = v12[1];
    *v33 = *v12;
    *&v33[16] = v29;
    v30 = v12[3];
    *&v33[32] = v12[2];
    *&v33[48] = v30;
    v9 = v33[0];
    sub_243D3CC40(v33, v32, &qword_27EDAF618, &qword_243D5AFB0);
    result = sub_243D4AA18(v9);
    v12 = v25;
    if (v31)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_243D3CBBC()
{
  result = qword_27EDAF610;
  if (!qword_27EDAF610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF610);
  }

  return result;
}

uint64_t sub_243D3CC40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_243D3CCFC()
{
  v0 = sub_243D54D88();
  __swift_allocate_value_buffer(v0, qword_27EDAF620);
  __swift_project_value_buffer(v0, qword_27EDAF620);
  return sub_243D54D78();
}

uint64_t CPSRequesterSession.environment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession_environment;
  v4 = sub_243D54CA8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CPSRequesterSession.__allocating_init(configuration:environment:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CPSRequesterSession.init(configuration:environment:)(a1, a2);
  return v4;
}

uint64_t CPSRequesterSession.init(configuration:environment:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_243D54CA8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF638, &qword_243D5AFD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  *(v2 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__invalidateCalled) = 0;
  v13 = OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__sessionID;
  v14 = CUNextIDDecimal64();
  *(v3 + v13) = v14;
  *(v3 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask) = 0;
  *(v3 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__eventContinuations) = MEMORY[0x277D84F98];
  sub_243D44E54(a1, v3 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__configuration, type metadata accessor for CPSRequesterUseCaseConfiguration);
  v15 = *(v7 + 16);
  v15(v3 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession_environment, a2, v6);
  v24 = v14;
  v16 = sub_243D55288();
  v17 = (v3 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label);
  *v17 = v16;
  v17[1] = v18;
  sub_243D3D1D8();
  sub_243D54CB8();
  v19 = v24;
  if (!v24)
  {
    sub_243D54C68();
    v20 = sub_243D54C28();
    v21 = (*(*(v20 - 8) + 48))(v12, 1, v20);
    sub_243D455D0(v12, &qword_27EDAF638, &qword_243D5AFD0);
    if (v21 != 1)
    {
      v15(v9, a2, v6);
      type metadata accessor for CPSXPCClient(0);
      v19 = swift_allocObject();
      *(v19 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__invalidateCalled) = 0;
      sub_243D54BF8();
      (*(v7 + 8))(a2, v6);
      sub_243D43DB0(a1, type metadata accessor for CPSRequesterUseCaseConfiguration);
      *(v19 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection) = 0;
      *(v19 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__eventContinuations) = MEMORY[0x277D84F98];
      (*(v7 + 32))(v19 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient_environment, v9, v6);
      goto LABEL_5;
    }

    v19 = _s17CompanionServices12CPSXPCClientC6shared11environmentAC14CoreUtilsSwift19CUEnvironmentValuesV_tFZ_0(a2);
  }

  (*(v7 + 8))(a2, v6);
  sub_243D43DB0(a1, type metadata accessor for CPSRequesterUseCaseConfiguration);
LABEL_5:
  *(v3 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcClient) = v19;
  return v3;
}

unint64_t sub_243D3D1D8()
{
  result = qword_27EDAF668;
  if (!qword_27EDAF668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF668);
  }

  return result;
}

uint64_t CPSRequesterSession.deinit()
{
  v1 = v0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF678, &qword_243D5AFD8);
  MEMORY[0x28223BE20](v31);
  v3 = v29 - v2;
  v5 = *(v0 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label);
  v4 = *(v0 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label + 8);
  v29[2] = v0 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label;
  v6 = qword_27EDAEC78;

  if (v6 != -1)
  {
LABEL_19:
    swift_once();
  }

  v7 = sub_243D54D88();
  __swift_project_value_buffer(v7, qword_27EDAF620);

  v8 = sub_243D54D68();
  v9 = sub_243D55028();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32[0] = v11;
    *v10 = 136315138;
    v12 = sub_243D43538(v5, v4, v32);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_243D1C000, v8, v9, "[%s] deinit", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245D50A20](v11, -1, -1);
    MEMORY[0x245D50A20](v10, -1, -1);
  }

  else
  {
  }

  v13 = *(v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask);
  v29[1] = OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask;
  *(v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask) = 0;
  if (v13)
  {
    sub_243D54FE8();
  }

  v14 = OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__eventContinuations;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF680, &unk_243D5AFE0);
  v30 = v1;
  v29[0] = v14;
  v15 = sub_243D54E88();
  swift_endAccess();
  v4 = v15 + 64;
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v5 = (v16 + 63) >> 6;

  v19 = 0;
  if (v18)
  {
    while (1)
    {
      v20 = v19;
LABEL_15:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v22 = v21 | (v20 << 6);
      v23 = *(v15 + 56);
      v1 = *(*(v15 + 48) + 8 * v22);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF980, &qword_243D5BB70);
      (*(*(v24 - 8) + 16))(&v3[*(v31 + 48)], v23 + *(*(v24 - 8) + 72) * v22, v24);
      *v3 = v1;
      sub_243D54FD8();
      sub_243D455D0(v3, &qword_27EDAF678, &qword_243D5AFD8);
      if (!v18)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v20 >= v5)
    {
      break;
    }

    v18 = *(v4 + 8 * v20);
    ++v19;
    if (v18)
    {
      v19 = v20;
      goto LABEL_15;
    }
  }

  v25 = v30;
  sub_243D43DB0(v30 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__configuration, type metadata accessor for CPSRequesterUseCaseConfiguration);
  v26 = OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession_environment;
  v27 = sub_243D54CA8();
  (*(*(v27 - 8) + 8))(v25 + v26, v27);

  return v25;
}

uint64_t CPSRequesterSession.__deallocating_deinit()
{
  CPSRequesterSession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t CPSRequesterSession.activate()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_243D33B7C;

  return sub_243D3D748(0);
}

uint64_t sub_243D3D748(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 224) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF830, &qword_243D5B8B8);
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = type metadata accessor for CPSXPCClientRequest(0);
  *(v2 + 80) = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF838, &qword_243D5B8C0);
  *(v2 + 88) = v3;
  v4 = *(v3 - 8);
  *(v2 + 96) = v4;
  *(v2 + 104) = *(v4 + 64);
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  sub_243D43D60(&qword_27EDAF698, type metadata accessor for CPSRequesterSession, &protocol conformance descriptor for CPSRequesterSession);
  v6 = sub_243D54F38();
  *(v2 + 128) = v6;
  *(v2 + 136) = v5;

  return MEMORY[0x2822009F8](sub_243D3D918, v6, v5);
}

uint64_t sub_243D3D918()
{
  v26 = v0;
  v1 = *(v0 + 48);
  v2 = v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label;
  v3 = *(v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label);
  *(v0 + 144) = v3;
  v4 = *(v2 + 8);
  *(v0 + 152) = v4;
  if (*(v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__invalidateCalled))
  {
    if (qword_27EDAEC78 != -1)
    {
      swift_once();
    }

    v5 = sub_243D54D88();
    __swift_project_value_buffer(v5, qword_27EDAF620);

    v6 = sub_243D54D68();
    v7 = sub_243D55048();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25 = v9;
      *v8 = 136315138;
      v10 = sub_243D43538(v3, v4, &v25);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_243D1C000, v6, v7, "[%s] activate: ignore after invalidate", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x245D50A20](v9, -1, -1);
      MEMORY[0x245D50A20](v8, -1, -1);
    }

    else
    {
    }

LABEL_16:

    v23 = *(v0 + 8);

    return v23();
  }

  if (qword_27EDAEC78 != -1)
  {
    swift_once();
  }

  v11 = sub_243D54D88();
  *(v0 + 160) = __swift_project_value_buffer(v11, qword_27EDAF620);

  v12 = sub_243D54D68();
  v13 = sub_243D55048();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 224);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315650;
    *(v15 + 4) = sub_243D43538(v3, v4, &v25);
    *(v15 + 12) = 2080;
    v17 = CPSRequesterUseCaseConfiguration.description.getter();
    v19 = sub_243D43538(v17, v18, &v25);

    *(v15 + 14) = v19;
    *(v15 + 22) = 1024;
    *(v15 + 24) = v14;
    _os_log_impl(&dword_243D1C000, v12, v13, "[%s] activate: configuration={%s} restart=%{BOOL}d", v15, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x245D50A20](v16, -1, -1);
    MEMORY[0x245D50A20](v15, -1, -1);
  }

  v20 = *(v0 + 48);
  if ((*(v0 + 224) & 1) == 0 && *(v20 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask))
  {
    goto LABEL_16;
  }

  *(v0 + 168) = *(v20 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcClient);
  type metadata accessor for CPSXPCClient(0);
  *(v0 + 176) = sub_243D43D60(&qword_27EDAF6A0, type metadata accessor for CPSXPCClient, &protocol conformance descriptor for CPSXPCClient);
  v22 = sub_243D54F38();
  *(v0 + 184) = v22;
  *(v0 + 192) = v21;

  return MEMORY[0x2822009F8](sub_243D3DD4C, v22, v21);
}

uint64_t sub_243D3DD4C()
{
  CPSXPCClient.events.getter();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_243D3DDB4, v1, v2);
}

uint64_t sub_243D3DDB4()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = *(v2 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__sessionID);
  sub_243D44E54(v2 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__configuration, v1, type metadata accessor for CPSRequesterUseCaseConfiguration);
  *(v1 + *(type metadata accessor for CPSXPCRequesterStartInfo(0) + 20)) = v3;
  type metadata accessor for CPSXPCClientRequesterRequest(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v4 = v0[23];
  v5 = v0[24];

  return MEMORY[0x2822009F8](sub_243D3DE8C, v4, v5);
}

uint64_t sub_243D3DE8C()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[10];
  v4 = swift_task_alloc();
  v0[25] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_243D3DF88;

  return MEMORY[0x2822008A0](v5, v1, v2, 0x71657228646E6573, 0xEE00293A74736575, sub_243D45878, v4, &type metadata for CPSXPCAckReply);
}

uint64_t sub_243D3DF88()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = v2[23];
    v4 = v2[24];
    v5 = sub_243D3E444;
  }

  else
  {
    v6 = v2[10];

    sub_243D43DB0(v6, type metadata accessor for CPSXPCClientRequest);
    v3 = v2[16];
    v4 = v2[17];
    v5 = sub_243D3E0C4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_243D3E0C4()
{
  v1 = v0[6];
  v2 = *(v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask);
  v28 = OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask;
  v29 = v1;
  *(v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask) = 0;
  if (v2)
  {
    sub_243D54FE8();
  }

  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[11];
  v7 = v0[8];
  v24 = v0[13];
  v25 = v0[7];
  v27 = sub_243D54C78();
  v8 = sub_243D54F98();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v7, 1, 1, v8);
  v10 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v4, v3, v6);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v4, v6);
  *(v12 + ((v24 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  sub_243D45560(v7, v25);
  v13 = (*(v9 + 48))(v25, 1, v8);
  v14 = v0[7];
  if (v13 == 1)
  {
    sub_243D455D0(v0[7], &qword_27EDAF830, &qword_243D5B8B8);
  }

  else
  {
    sub_243D54F88();
    (*(v9 + 8))(v14, v8);
  }

  v26 = v0[15];
  v16 = v0[11];
  v15 = v0[12];
  v17 = v0[8];
  v18 = sub_243D45630();
  v19 = swift_allocObject();
  *(v19 + 16) = &unk_243D5B8D0;
  *(v19 + 24) = v12;
  v0[2] = 6;
  v0[3] = 0;
  v0[4] = v27;
  v0[5] = v18;

  v20 = v27;
  v21 = swift_task_create();
  sub_243D455D0(v17, &qword_27EDAF830, &qword_243D5B8B8);

  (*(v15 + 8))(v26, v16);
  *(v29 + v28) = v21;

  v22 = v0[1];

  return v22();
}

uint64_t sub_243D3E444()
{
  v1 = v0[10];

  sub_243D43DB0(v1, type metadata accessor for CPSXPCClientRequest);
  v2 = v0[16];
  v3 = v0[17];

  return MEMORY[0x2822009F8](sub_243D3E4C8, v2, v3);
}

uint64_t sub_243D3E4C8()
{
  v21 = v0;
  v1 = v0[27];
  (*(v0[12] + 8))(v0[15], v0[11]);

  v2 = v1;
  v3 = sub_243D54D68();
  v4 = sub_243D55038();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v7 = v0[18];
    v6 = v0[19];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 136315394;
    v11 = sub_243D43538(v7, v6, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v13;
    *v9 = v13;
    _os_log_impl(&dword_243D1C000, v3, v4, "[%s] ### start failed: error=%@", v8, 0x16u);
    sub_243D455D0(v9, &unk_27EDAF940, &qword_243D5B8B0);
    MEMORY[0x245D50A20](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D50A20](v10, -1, -1);
    MEMORY[0x245D50A20](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[27];
  v15 = objc_allocWithZone(sub_243D54D28());
  v16 = v14;
  v17 = sub_243D54D48();
  v20 = v17;
  CPSRequesterSession._report(event:)(&v20);

  sub_243D43D04(v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_243D3E728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF838, &qword_243D5B8C0);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF848, &qword_243D5B8E8);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243D3E85C, 0, 0);
}

uint64_t sub_243D3E85C()
{
  (*(v0[10] + 16))(v0[11], v0[7], v0[9]);
  sub_243D45798(&unk_27EDAF920, &qword_27EDAF838, &qword_243D5B8C0, MEMORY[0x277D857C0]);
  sub_243D54FF8();
  swift_beginAccess();
  sub_243D45798(&qword_27EDAF850, &qword_27EDAF848, &qword_243D5B8E8, MEMORY[0x277D857B0]);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_243D3E9C4;

  return MEMORY[0x282200310](v0 + 5, 0, 0);
}

uint64_t sub_243D3E9C4()
{

  if (!v0)
  {

    return MEMORY[0x2822009F8](sub_243D3EAD4, 0, 0);
  }

  return result;
}

uint64_t sub_243D3EAD4()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[16] = v2;
  v0[17] = v1;
  if (v1 == 6)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
LABEL_8:

    v6 = v0[1];

    return v6();
  }

  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (!Strong)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
    sub_243D457E0(v2, v1);
    goto LABEL_8;
  }

  type metadata accessor for CPSRequesterSession(0);
  sub_243D43D60(&qword_27EDAF698, type metadata accessor for CPSRequesterSession, &protocol conformance descriptor for CPSRequesterSession);
  v5 = sub_243D54F38();

  return MEMORY[0x2822009F8](sub_243D3EC44, v5, v4);
}

uint64_t sub_243D3EC44()
{
  v11 = v0;
  v1 = v0[18];
  if (v0[17] == 5)
  {
    if (*(v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask))
    {
      if (qword_27EDAEC78 != -1)
      {
        swift_once();
      }

      v2 = sub_243D54D88();
      __swift_project_value_buffer(v2, qword_27EDAF620);

      v3 = sub_243D54D68();
      v4 = sub_243D55038();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = v0[18];
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v10 = v7;
        *v6 = 136315138;
        *(v6 + 4) = sub_243D43538(*(v5 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label), *(v5 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label + 8), &v10);
        _os_log_impl(&dword_243D1C000, v3, v4, "[%s] ### interrupted", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v7);
        MEMORY[0x245D50A20](v7, -1, -1);
        MEMORY[0x245D50A20](v6, -1, -1);
      }

      v10 = 1;
      CPSRequesterSession._report(event:)(&v10);
      v8 = swift_task_alloc();
      v0[19] = v8;
      *v8 = v0;
      v8[1] = sub_243D3EE9C;

      return sub_243D3D748(1);
    }
  }

  else if (v0[16] == *(v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__sessionID))
  {
    v10 = v0[17];
    CPSRequesterSession._report(event:)(&v10);
  }

  return MEMORY[0x2822009F8](sub_243D3EF98, 0, 0);
}

uint64_t sub_243D3EE9C()
{

  return MEMORY[0x2822009F8](sub_243D3EF98, 0, 0);
}

uint64_t sub_243D3EF98()
{
  v1 = v0[17];
  v2 = v0[16];

  sub_243D457E0(v2, v1);
  sub_243D45798(&qword_27EDAF850, &qword_27EDAF848, &qword_243D5B8E8, MEMORY[0x277D857B0]);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_243D3E9C4;

  return MEMORY[0x282200310](v0 + 5, 0, 0);
}

void CPSRequesterSession._report(event:)(id *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF688, &qword_243D5B000);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v71 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF980, &qword_243D5BB70);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v78 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF690, &qword_243D5B008);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v74 = (&v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v72 = &v59 - v15;
  v76 = *a1;
  v16 = OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__eventContinuations;
  swift_beginAccess();
  v17 = *(v2 + v16);
  v18 = *(v17 + 64);
  v73 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v62 = v2 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label;
  v60 = (v19 + 63) >> 6;
  v64 = v8 + 16;
  v77 = (v8 + 32);
  v59 = 0x8000000243D5EBB0;
  v66 = v8;
  v67 = v17;
  v68 = (v8 + 8);
  v69 = (v5 + 8);

  v22 = 0;
  *&v23 = 136315650;
  v61 = v23;
  v63 = v2;
  v75 = v4;
  v70 = v7;
  while (v21)
  {
    v26 = v2;
    v27 = v22;
LABEL_16:
    v31 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v32 = v31 | (v27 << 6);
    v33 = v66;
    v34 = *(*(v67 + 48) + 8 * v32);
    v35 = v65;
    (*(v66 + 16))(v65, *(v67 + 56) + *(v66 + 72) * v32, v7);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF678, &qword_243D5AFD8);
    v37 = *(v36 + 48);
    v38 = v74;
    *v74 = v34;
    v30 = v38;
    (*(v33 + 32))(v38 + v37, v35, v7);
    (*(*(v36 - 8) + 56))(v30, 0, 1, v36);
    v2 = v26;
    v4 = v75;
LABEL_17:
    v39 = v30;
    v40 = v72;
    sub_243D43C84(v39, v72);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF678, &qword_243D5AFD8);
    if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
    {

      return;
    }

    v42 = *v40;
    (*v77)(v78, &v40[*(v41 + 48)], v7);
    if (qword_27EDAEC78 != -1)
    {
      swift_once();
    }

    v43 = sub_243D54D88();
    __swift_project_value_buffer(v43, qword_27EDAF620);

    v44 = v76;
    sub_243D43CF4(v76);
    v45 = v44;
    v46 = sub_243D54D68();
    v47 = sub_243D55048();

    sub_243D43D04(v45);
    if (!os_log_type_enabled(v46, v47))
    {

      goto LABEL_5;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v81 = v49;
    *v48 = v61;
    *(v48 + 4) = sub_243D43538(*v62, *(v62 + 8), &v81);
    *(v48 + 12) = 2048;
    *(v48 + 14) = v42;
    *(v48 + 22) = 2080;
    if (v45 <= 1)
    {
      if (v45)
      {
        if (v45 != 1)
        {
LABEL_33:
          v79 = 0x203A726F727265;
          v80 = 0xE700000000000000;
          sub_243D43CF4(v45);
          v53 = v45;
          v54 = [v45 description];
          v55 = sub_243D54EA8();
          v57 = v56;

          MEMORY[0x245D4FE20](v55, v57);

          sub_243D43D04(v53);
          v51 = v79;
          v50 = v80;
          goto LABEL_34;
        }

        v51 = 0x7075727265746E69;
        v50 = 0xEB00000000646574;
      }

      else
      {
        v51 = 0xD00000000000001ALL;
        v50 = v59;
      }
    }

    else
    {
      switch(v45)
      {
        case 2:
          v50 = 0xEC00000064657470;
          v51 = 0x6563634172657375;
          break;
        case 3:
          v51 = 0x636E614372657375;
          v50 = 0xEC00000064656C65;
          break;
        case 4:
          v50 = 0xEA00000000006465;
          v51 = 0x696E654472657375;
          break;
        default:
          goto LABEL_33;
      }
    }

LABEL_34:
    v58 = sub_243D43538(v51, v50, &v81);

    *(v48 + 24) = v58;
    _os_log_impl(&dword_243D1C000, v46, v47, "[%s] event report: id=%llu, event={%s}", v48, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D50A20](v49, -1, -1);
    MEMORY[0x245D50A20](v48, -1, -1);

    v2 = v63;
    v4 = v75;
    v45 = v76;
LABEL_5:
    v79 = v45;
    sub_243D43CF4(v45);
    v7 = v70;
    v24 = v71;
    v25 = v78;
    sub_243D54FC8();
    (*v69)(v24, v4);
    (*v68)(v25, v7);
  }

  if (v60 <= v22 + 1)
  {
    v28 = v22 + 1;
  }

  else
  {
    v28 = v60;
  }

  v29 = v28 - 1;
  v30 = v74;
  while (1)
  {
    v27 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v27 >= v60)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF678, &qword_243D5AFD8);
      (*(*(v52 - 8) + 56))(v30, 1, 1, v52);
      v21 = 0;
      v22 = v29;
      goto LABEL_17;
    }

    v21 = *(v73 + 8 * v27);
    ++v22;
    if (v21)
    {
      v26 = v2;
      v22 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t CPSRequesterSession.invalidate()()
{
  v1[5] = v0;
  v1[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF678, &qword_243D5AFD8);
  v1[7] = swift_task_alloc();
  v1[8] = type metadata accessor for CPSXPCClientRequest(0);
  v1[9] = swift_task_alloc();
  sub_243D43D60(&qword_27EDAF698, type metadata accessor for CPSRequesterSession, &protocol conformance descriptor for CPSRequesterSession);
  v3 = sub_243D54F38();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](sub_243D3F9D4, v3, v2);
}

uint64_t sub_243D3F9D4()
{
  v34 = v0;
  if (qword_27EDAEC78 != -1)
  {
LABEL_22:
    swift_once();
  }

  v1 = sub_243D54D88();
  __swift_project_value_buffer(v1, qword_27EDAF620);

  v2 = sub_243D54D68();
  v3 = sub_243D55048();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_243D43538(*(v4 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label), *(v4 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label + 8), &v33);
    _os_log_impl(&dword_243D1C000, v2, v3, "[%s] invalidate", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x245D50A20](v6, -1, -1);
    MEMORY[0x245D50A20](v5, -1, -1);
  }

  v7 = v0[5];
  *(v7 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__invalidateCalled) = 1;
  v8 = OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask;
  v9 = *(v7 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcEventTask);
  v0[12] = v9;
  *(v7 + v8) = 0;
  if (v9)
  {
    v10 = v0[9];
    v11 = v0[5];
    sub_243D54FE8();
    v0[13] = *(v11 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__xpcClient);
    *v10 = *(v11 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__sessionID);
    type metadata accessor for CPSXPCClientRequesterRequest(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for CPSXPCClient(0);
    v0[14] = sub_243D43D60(&qword_27EDAF6A0, type metadata accessor for CPSXPCClient, &protocol conformance descriptor for CPSXPCClient);
    v13 = sub_243D54F38();
    v0[15] = v13;
    v0[16] = v12;

    return MEMORY[0x2822009F8](sub_243D3FE48, v13, v12);
  }

  else
  {
    v14 = v0[6];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF680, &unk_243D5AFE0);
    v15 = sub_243D54E88();
    v32 = v0;
    v0 = v14;
    swift_endAccess();
    v16 = v15 + 64;
    v17 = -1;
    v18 = -1 << *(v15 + 32);
    if (-v18 < 64)
    {
      v17 = ~(-1 << -v18);
    }

    v19 = v17 & *(v15 + 64);
    v20 = (63 - v18) >> 6;
    v31 = v15;

    v21 = 0;
    if (v19)
    {
      while (1)
      {
        v22 = v21;
LABEL_16:
        v23 = v32[7];
        v24 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v25 = v24 | (v22 << 6);
        v26 = *(v31 + 56);
        v27 = *(*(v31 + 48) + 8 * v25);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF980, &qword_243D5BB70);
        (*(*(v28 - 8) + 16))(&v23[*(v0 + 12)], v26 + *(*(v28 - 8) + 72) * v25, v28);
        *v23 = v27;
        sub_243D54FD8();
        sub_243D455D0(v23, &qword_27EDAF678, &qword_243D5AFD8);
        if (!v19)
        {
          goto LABEL_12;
        }
      }
    }

    while (1)
    {
LABEL_12:
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v22 >= v20)
      {
        break;
      }

      v19 = *(v16 + 8 * v22);
      ++v21;
      if (v19)
      {
        v21 = v22;
        goto LABEL_16;
      }
    }

    v29 = v32[1];

    return v29();
  }
}

uint64_t sub_243D3FE48()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[9];
  v4 = swift_task_alloc();
  v0[17] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_243D3FF44;

  return MEMORY[0x2822008A0](v5, v1, v2, 0x71657228646E6573, 0xEE00293A74736575, sub_243D43DA8, v4, &type metadata for CPSXPCAckReply);
}

uint64_t sub_243D3FF44()
{
  v2 = *v1;

  if (v0)
  {

    v3 = v2[15];
    v4 = v2[16];
    v5 = sub_243D402CC;
  }

  else
  {
    v6 = v2[9];

    sub_243D43DB0(v6, type metadata accessor for CPSXPCClientRequest);
    v3 = v2[10];
    v4 = v2[11];
    v5 = sub_243D400A8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

void sub_243D400A8()
{

  v1 = *(v0 + 48);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF680, &unk_243D5AFE0);
  v2 = sub_243D54E88();
  v19 = v0;
  v3 = v1;
  swift_endAccess();
  v4 = v2 + 64;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v2 + 64);
  v8 = (63 - v6) >> 6;
  v18 = v2;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = *(v19 + 56);
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = v12 | (v10 << 6);
      v14 = *(v18 + 56);
      v15 = *(*(v18 + 48) + 8 * v13);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF980, &qword_243D5BB70);
      (*(*(v16 - 8) + 16))(&v11[*(v3 + 48)], v14 + *(*(v16 - 8) + 72) * v13, v16);
      *v11 = v15;
      sub_243D54FD8();
      sub_243D455D0(v11, &qword_27EDAF678, &qword_243D5AFD8);
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
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
      goto LABEL_9;
    }
  }

  v17 = *(v19 + 8);

  v17();
}

uint64_t sub_243D402CC()
{
  sub_243D43DB0(v0[9], type metadata accessor for CPSXPCClientRequest);
  v1 = v0[10];
  v2 = v0[11];

  return MEMORY[0x2822009F8](sub_243D4586C, v1, v2);
}

uint64_t CPSRequesterSession.events.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6A8, &qword_243D5B018);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6B0, &qword_243D5B020);
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = &v29 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF980, &qword_243D5BB70);
  v31 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v10 = &v29 - v9;
  v11 = CUNextIDDecimal64();
  v12 = *(v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label + 8);
  v33 = *(v1 + OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession__label);
  v13 = qword_27EDAEC78;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_243D54D88();
  __swift_project_value_buffer(v14, qword_27EDAF620);

  v15 = sub_243D54D68();
  v16 = sub_243D55018();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29 = v5;
    v20 = v19;
    v36[0] = v19;
    *v18 = 136315394;
    v21 = v33;
    *(v18 + 4) = sub_243D43538(v33, v12, v36);
    *(v18 + 12) = 2048;
    *(v18 + 14) = v11;
    _os_log_impl(&dword_243D1C000, v15, v16, "[%s] event monitor start: id=%llu", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v22 = v20;
    v5 = v29;
    MEMORY[0x245D50A20](v22, -1, -1);
    v23 = v18;
    v2 = v30;
    MEMORY[0x245D50A20](v23, -1, -1);
  }

  else
  {

    v21 = v33;
  }

  v24 = v32;
  (*(v6 + 104))(v8, *MEMORY[0x277D85778], v32);
  sub_243D54FA8();
  (*(v6 + 8))(v8, v24);
  v25 = v31;
  v26 = v34;
  (*(v31 + 16))(v5, v10, v34);
  (*(v25 + 56))(v5, 0, 1, v26);
  swift_beginAccess();
  sub_243D45B24(v5, v11);
  swift_endAccess();
  v27 = swift_allocObject();
  v27[2] = v2;
  v27[3] = v21;
  v27[4] = v12;
  v27[5] = v11;

  sub_243D54FB8();
  return (*(v25 + 8))(v10, v26);
}

uint64_t sub_243D4077C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_243D54E58();
  v21 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_243D54E78();
  v12 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_243D54C78();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  aBlock[4] = sub_243D44C70;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243D40F5C;
  aBlock[3] = &block_descriptor;
  v17 = _Block_copy(aBlock);

  sub_243D54E68();
  v22 = MEMORY[0x277D84F90];
  sub_243D43D60(&unk_27EDAF990, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF810, &qword_243D5BB80);
  sub_243D45798(&qword_27EDAF9A0, &qword_27EDAF810, &qword_243D5BB80, MEMORY[0x277D83970]);
  sub_243D550B8();
  MEMORY[0x245D4FFA0](0, v14, v11, v17);
  _Block_release(v17);

  (*(v21 + 8))(v11, v9);
  (*(v12 + 8))(v14, v20);
}

uint64_t sub_243D40A78(uint64_t isEscapingClosureAtFileLocation, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  type metadata accessor for CPSRequesterSession(0);
  sub_243D43D60(&qword_27EDAF698, type metadata accessor for CPSRequesterSession, &protocol conformance descriptor for CPSRequesterSession);
  sub_243D54F38();
  if (swift_task_isCurrentExecutor())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_243D44C94;
    *(v5 + 24) = &v8;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_243D44CC4;
    *(v6 + 24) = v5;

    v13[0] = isEscapingClosureAtFileLocation;
    sub_243D44D18(v13);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_243D550E8();
  MEMORY[0x245D4FE20](0xD00000000000003FLL, 0x8000000243D5ECB0);
  v12 = isEscapingClosureAtFileLocation;
  sub_243D55128();
  MEMORY[0x245D4FE20](46, 0xE100000000000000);
  result = sub_243D55138();
  __break(1u);
  return result;
}

uint64_t sub_243D40C98(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6A8, &qword_243D5B018);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20[-1] - v8;
  type metadata accessor for CPSRequesterSession(0);
  sub_243D43D60(&qword_27EDAF698, type metadata accessor for CPSRequesterSession, &protocol conformance descriptor for CPSRequesterSession);
  sub_243D54F38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EDAEC78 != -1)
  {
    swift_once();
  }

  v10 = sub_243D54D88();
  __swift_project_value_buffer(v10, qword_27EDAF620);

  v11 = sub_243D54D68();
  v12 = sub_243D55018();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = a2;
    v16 = v14;
    v20[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_243D43538(v15, a3, v20);
    *(v13 + 12) = 2048;
    *(v13 + 14) = a4;
    _os_log_impl(&dword_243D1C000, v11, v12, "[%s] event monitor ended: id=%llu", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x245D50A20](v16, -1, -1);
    MEMORY[0x245D50A20](v13, -1, -1);
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF980, &qword_243D5BB70);
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  swift_beginAccess();
  sub_243D45B24(v9, a4);
  return swift_endAccess();
}

uint64_t sub_243D40F5C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t CPSRequesterSession.Event.description.getter()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0xD00000000000001ALL;
    }

    if (v1 == 1)
    {
      return 0x7075727265746E69;
    }
  }

  else
  {
    if (v1 == 2)
    {
      return 0x6563634172657375;
    }

    if (v1 == 3)
    {
      return 0x636E614372657375;
    }

    if (v1 == 4)
    {
      return 0x696E654472657375;
    }
  }

  v3 = [v1 description];
  v4 = sub_243D54EA8();
  v6 = v5;

  MEMORY[0x245D4FE20](v4, v6);

  return v7;
}

unint64_t sub_243D410F8()
{
  v1 = *v0;
  v2 = 0x726F727265;
  v3 = 0x6563634172657375;
  v4 = 0x636E614372657375;
  if (v1 != 4)
  {
    v4 = 0x696E654472657375;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x7075727265746E69;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_243D411D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_243D44A14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_243D41208(uint64_t a1)
{
  v2 = sub_243D43E20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D41244(uint64_t a1)
{
  v2 = sub_243D43E20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D41280(uint64_t a1)
{
  v2 = sub_243D44018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D412BC(uint64_t a1)
{
  v2 = sub_243D44018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D412F8(uint64_t a1)
{
  v2 = sub_243D43FC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D41334(uint64_t a1)
{
  v2 = sub_243D43FC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D41370(uint64_t a1)
{
  v2 = sub_243D43F70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D413AC(uint64_t a1)
{
  v2 = sub_243D43F70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D413E8(uint64_t a1)
{
  v2 = sub_243D43F1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D41424(uint64_t a1)
{
  v2 = sub_243D43F1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D41460(uint64_t a1)
{
  v2 = sub_243D43EC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D4149C(uint64_t a1)
{
  v2 = sub_243D43EC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D414D8(uint64_t a1)
{
  v2 = sub_243D43E74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D41514(uint64_t a1)
{
  v2 = sub_243D43E74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSRequesterSession.Event.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6B8, &qword_243D5B028);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6C0, &qword_243D5B030);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = &v33 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6C8, &qword_243D5B038);
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v34 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6D0, &qword_243D5B040);
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6D8, &qword_243D5B048);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v33 = &v33 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6E0, &qword_243D5B050);
  v45 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6E8, &qword_243D5B058);
  v48 = *(v15 - 8);
  v49 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D43E20();
  sub_243D55338();
  if (v18 <= 1)
  {
    v24 = v45;
    v23 = v46;
    v25 = v10;
    v26 = v47;
    if (!v18)
    {
      v51 = 0;
      sub_243D44018();
      v29 = v49;
      sub_243D55218();
      (*(v24 + 8))(v14, v12);
      return (*(v48 + 8))(v17, v29);
    }

    if (v18 != 1)
    {
      goto LABEL_15;
    }

    v53 = 2;
    sub_243D43F70();
    v20 = v49;
    sub_243D55218();
    (*(v23 + 8))(v25, v26);
  }

  else
  {
    if (v18 != 2)
    {
      if (v18 == 3)
      {
        v55 = 4;
        sub_243D43EC8();
        v19 = v39;
        v20 = v49;
        sub_243D55218();
        v22 = v40;
        v21 = v41;
        goto LABEL_11;
      }

      if (v18 == 4)
      {
        v56 = 5;
        sub_243D43E74();
        v19 = v42;
        v20 = v49;
        sub_243D55218();
        v22 = v43;
        v21 = v44;
LABEL_11:
        (*(v22 + 8))(v19, v21);
        return (*(v48 + 8))(v17, v20);
      }

LABEL_15:
      v52 = 1;
      sub_243D43FC4();
      v30 = v33;
      v31 = v49;
      sub_243D55218();
      v50 = v18;
      sub_243D54D28();
      sub_243D43D60(&qword_27EDAF2D8, MEMORY[0x277D02A18], MEMORY[0x277D02A20]);
      v32 = v37;
      sub_243D55268();
      (*(v35 + 8))(v30, v32);
      return (*(v48 + 8))(v17, v31);
    }

    v54 = 3;
    sub_243D43F1C();
    v27 = v34;
    v20 = v49;
    sub_243D55218();
    (*(v36 + 8))(v27, v38);
  }

  return (*(v48 + 8))(v17, v20);
}

uint64_t CPSRequesterSession.Event.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF728, &qword_243D5B060);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF730, &qword_243D5B068);
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  MEMORY[0x28223BE20](v5);
  v60 = &v43 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF738, &qword_243D5B070);
  v52 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v59 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF740, &qword_243D5B078);
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9);
  v57 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF748, &qword_243D5B080);
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF750, &qword_243D5B088);
  v46 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF758, &unk_243D5B090);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - v19;
  v21 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_243D43E20();
  v22 = v62;
  sub_243D55328();
  if (!v22)
  {
    v23 = v16;
    v44 = v14;
    v45 = v13;
    v24 = v59;
    v25 = v60;
    v26 = v61;
    v62 = v18;
    v27 = v20;
    v28 = sub_243D55208();
    v29 = (2 * *(v28 + 16)) | 1;
    v64 = v28;
    v65 = v28 + 32;
    v66 = 0;
    v67 = v29;
    v30 = sub_243D2A1F4();
    if (v30 == 6 || v66 != v67 >> 1)
    {
      v32 = sub_243D55108();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAECE0, &qword_243D57560);
      *v34 = &type metadata for CPSRequesterSession.Event;
      sub_243D55198();
      sub_243D550F8();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
      (*(v62 + 8))(v20, v17);
      swift_unknownObjectRelease();
    }

    else if (v30 > 2u)
    {
      v36 = v62;
      if (v30 == 3)
      {
        LOBYTE(v68) = 3;
        sub_243D43F1C();
        v38 = v24;
        sub_243D55188();
        v39 = v58;
        (*(v52 + 8))(v38, v47);
        (*(v36 + 8))(v27, v17);
        swift_unknownObjectRelease();
        *v39 = 2;
      }

      else
      {
        v37 = v58;
        if (v30 == 4)
        {
          LOBYTE(v68) = 4;
          sub_243D43EC8();
          sub_243D55188();
          (*(v54 + 8))(v25, v53);
          (*(v36 + 8))(v27, v17);
          swift_unknownObjectRelease();
          *v37 = 3;
        }

        else
        {
          LOBYTE(v68) = 5;
          sub_243D43E74();
          sub_243D55188();
          (*(v55 + 8))(v26, v56);
          (*(v36 + 8))(v27, v17);
          swift_unknownObjectRelease();
          *v37 = 4;
        }
      }
    }

    else if (v30)
    {
      if (v30 == 1)
      {
        LOBYTE(v68) = 1;
        sub_243D43FC4();
        v31 = v45;
        sub_243D55188();
        sub_243D54D28();
        sub_243D43D60(&qword_27EDAF2E8, MEMORY[0x277D02A18], MEMORY[0x277D02A28]);
        v41 = v51;
        sub_243D551E8();
        (*(v50 + 8))(v31, v41);
        (*(v62 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v42 = v68;
      }

      else
      {
        LOBYTE(v68) = 2;
        sub_243D43F70();
        v40 = v57;
        sub_243D55188();
        (*(v48 + 8))(v40, v49);
        (*(v62 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v42 = 1;
      }

      *v58 = v42;
    }

    else
    {
      LOBYTE(v68) = 0;
      sub_243D44018();
      sub_243D55188();
      (*(v46 + 8))(v23, v44);
      (*(v62 + 8))(v20, v17);
      swift_unknownObjectRelease();
      *v58 = 0;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_243D425C0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_243D43D60(&qword_27EDAF800, type metadata accessor for CPSRequesterSession, &protocol conformance descriptor for CPSRequesterSession);

  return MEMORY[0x282158A60](v4, v5, a2);
}

uint64_t sub_243D42660@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17CompanionServices19CPSRequesterSession_environment;
  v5 = sub_243D54CA8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_243D426DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v58 = a2;
  v59 = a3;
  v63 = type metadata accessor for CPSXPCClientRequest(0);
  isa = v63[-1].isa;
  v6 = MEMORY[0x28223BE20](v63);
  v56 = v7;
  v57 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - v8;
  v10 = sub_243D54C08();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v60 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - v14;
  v52 = *(v11 + 16);
  v53 = v11 + 16;
  v52(&v50 - v14, v3 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcCoder, v10);
  if (qword_27EDAEC80 != -1)
  {
    swift_once();
  }

  v16 = sub_243D54D88();
  __swift_project_value_buffer(v16, qword_27EDAF860);
  sub_243D44E54(a1, v9, type metadata accessor for CPSXPCClientRequest);
  v17 = sub_243D54D68();
  v18 = sub_243D55018();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v61 = v15;
    v20 = v19;
    v21 = swift_slowAlloc();
    v62 = v10;
    v22 = v21;
    aBlock[0] = v21;
    *v20 = 136315138;
    v23 = CPSXPCClientRequest.description.getter();
    v51 = a1;
    v24 = v4;
    v25 = v11;
    v27 = v26;
    sub_243D43DB0(v9, type metadata accessor for CPSXPCClientRequest);
    v28 = sub_243D43538(v23, v27, aBlock);
    v11 = v25;
    v4 = v24;
    a1 = v51;

    *(v20 + 4) = v28;
    _os_log_impl(&dword_243D1C000, v17, v18, "XPC request start: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v29 = v22;
    v10 = v62;
    MEMORY[0x245D50A20](v29, -1, -1);
    v30 = v20;
    v15 = v61;
    MEMORY[0x245D50A20](v30, -1, -1);
  }

  else
  {

    sub_243D43DB0(v9, type metadata accessor for CPSXPCClientRequest);
  }

  v31 = v65;
  v32 = sub_243D477D0();
  if (v31)
  {
    return (*(v11 + 8))(v15, v10);
  }

  v34 = v32;
  sub_243D43D60(&qword_27EDAF820, type metadata accessor for CPSXPCClientRequest, &protocol conformance descriptor for CPSXPCClientRequest);
  v65 = sub_243D54BE8();
  v63 = sub_243D54C78();
  v52(v60, v15, v10);
  v35 = v57;
  sub_243D44E54(a1, v57, type metadata accessor for CPSXPCClientRequest);
  v36 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v37 = *(isa + 80);
  v61 = v15;
  v38 = v11;
  v39 = (v54 + v37 + v36) & ~v37;
  v40 = v56 + v39 + 7;
  v56 = v4;
  v41 = v40 & 0xFFFFFFFFFFFFFFF8;
  v42 = ((v40 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v44 = v10;
  v62 = v10;
  v45 = v43;
  (*(v38 + 32))(v43 + v36, v60, v44);
  sub_243D45194(v35, v45 + v39);
  v46 = (v45 + v41);
  v47 = v59;
  *v46 = v58;
  v46[1] = v47;
  *(v45 + v42) = v56;
  aBlock[4] = sub_243D451F8;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243D481FC;
  aBlock[3] = &block_descriptor_36;
  v48 = _Block_copy(aBlock);

  v49 = v63;
  xpc_connection_send_message_with_reply(v34, v65, v63, v48);
  _Block_release(v48);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return (*(v38 + 8))(v61, v62);
}

void sub_243D42CB4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  v6 = type metadata accessor for CPSXPCClientRequest(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  sub_243D45308();
  sub_243D54BB8();
  v22 = 0;
  if (qword_27EDAEC80 != -1)
  {
    swift_once();
  }

  v10 = sub_243D54D88();
  __swift_project_value_buffer(v10, qword_27EDAF860);
  sub_243D44E54(a3, v9, type metadata accessor for CPSXPCClientRequest);
  v11 = sub_243D54D68();
  v12 = sub_243D55018();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    v15 = CPSXPCClientRequest.description.getter();
    v17 = v16;
    sub_243D43DB0(v9, type metadata accessor for CPSXPCClientRequest);
    v18 = sub_243D43538(v15, v17, &v20);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_243D1C000, v11, v12, "XPC request succeeded: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x245D50A20](v14, -1, -1);
    MEMORY[0x245D50A20](v13, -1, -1);
  }

  else
  {

    sub_243D43DB0(v9, type metadata accessor for CPSXPCClientRequest);
  }

  a4(&v21);
  sub_243D4535C(v21, v22);
}

uint64_t sub_243D43154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF818, &unk_243D5B8A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  type metadata accessor for CPSXPCClient(0);
  sub_243D43D60(&qword_27EDAF6A0, type metadata accessor for CPSXPCClient, &protocol conformance descriptor for CPSXPCClient);
  sub_243D54F38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v6 + 16))(v8, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_243D426DC(a3, sub_243D44DD8, v10);
}

uint64_t sub_243D43348(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_243D43440;

  return v6(a1);
}

uint64_t sub_243D43440()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_243D43538(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_243D43604(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_243D45804(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_243D43604(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_243D43710(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_243D55118();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_243D43710(uint64_t a1, unint64_t a2)
{
  v3 = sub_243D4375C(a1, a2);
  sub_243D4388C(&unk_2856F3968);
  return v3;
}

void *sub_243D4375C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_243D43978(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_243D55118();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_243D54EF8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_243D43978(v10, 0);
        result = sub_243D550D8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_243D4388C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_243D439EC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_243D43978(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF858, &qword_243D5B8F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_243D439EC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF858, &qword_243D5B8F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_243D43AE0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF818, &unk_243D5B8A0);
    return sub_243D54F48();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF818, &unk_243D5B8A0);
    return sub_243D54F58();
  }
}

uint64_t _s17CompanionServices19CPSRequesterSessionC5EventO2eeoiySbAE_AEtFZ_0(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
LABEL_17:
        if (v3 >= 5)
        {
          sub_243D45698(0, &qword_27EDAF808, 0x277D82BB8);
          sub_243D43CF4(v3);
          sub_243D43CF4(v2);
          v4 = sub_243D55098();
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      if (v3 == 1)
      {
        v2 = 1;
        v4 = 1;
        goto LABEL_19;
      }
    }

    else if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_19;
    }

LABEL_18:
    sub_243D43CF4(*a2);
    sub_243D43CF4(v2);
    v4 = 0;
    goto LABEL_19;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      v4 = 1;
      v2 = 2;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v2 == 3)
  {
    if (v3 == 3)
    {
      v4 = 1;
      v2 = 3;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v2 != 4)
  {
    goto LABEL_17;
  }

  if (v3 != 4)
  {
    goto LABEL_18;
  }

  v4 = 1;
  v2 = 4;
LABEL_19:
  sub_243D43D04(v2);
  sub_243D43D04(v3);
  return v4 & 1;
}

uint64_t sub_243D43C84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF690, &qword_243D5B008);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_243D43CF4(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

void sub_243D43D04(id a1)
{
  if (a1 >= 5)
  {
  }
}

uint64_t type metadata accessor for CPSRequesterSession(uint64_t a1)
{
  result = qword_27EDAF760;
  if (!qword_27EDAF760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243D43D60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_243D43DB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_243D43E20()
{
  result = qword_27EDAF6F0;
  if (!qword_27EDAF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF6F0);
  }

  return result;
}

unint64_t sub_243D43E74()
{
  result = qword_27EDAF6F8;
  if (!qword_27EDAF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF6F8);
  }

  return result;
}

unint64_t sub_243D43EC8()
{
  result = qword_27EDAF700;
  if (!qword_27EDAF700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF700);
  }

  return result;
}

unint64_t sub_243D43F1C()
{
  result = qword_27EDAF708;
  if (!qword_27EDAF708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF708);
  }

  return result;
}

unint64_t sub_243D43F70()
{
  result = qword_27EDAF710;
  if (!qword_27EDAF710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF710);
  }

  return result;
}

unint64_t sub_243D43FC4()
{
  result = qword_27EDAF718;
  if (!qword_27EDAF718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF718);
  }

  return result;
}

unint64_t sub_243D44018()
{
  result = qword_27EDAF720;
  if (!qword_27EDAF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF720);
  }

  return result;
}

uint64_t sub_243D44074(uint64_t a1)
{
  result = type metadata accessor for CPSRequesterUseCaseConfiguration(319);
  if (v2 <= 0x3F)
  {
    result = sub_243D54CA8();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17CompanionServices19CPSRequesterSessionC5EventO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_243D441C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243D44220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_243D44270(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CPSRequesterSession.Event.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CPSRequesterSession.Event.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_243D44498()
{
  result = qword_27EDAF780;
  if (!qword_27EDAF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF780);
  }

  return result;
}

unint64_t sub_243D444F0()
{
  result = qword_27EDAF788;
  if (!qword_27EDAF788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF788);
  }

  return result;
}

unint64_t sub_243D44548()
{
  result = qword_27EDAF790;
  if (!qword_27EDAF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF790);
  }

  return result;
}

unint64_t sub_243D445A0()
{
  result = qword_27EDAF798;
  if (!qword_27EDAF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF798);
  }

  return result;
}

unint64_t sub_243D445F8()
{
  result = qword_27EDAF7A0;
  if (!qword_27EDAF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7A0);
  }

  return result;
}

unint64_t sub_243D44650()
{
  result = qword_27EDAF7A8;
  if (!qword_27EDAF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7A8);
  }

  return result;
}

unint64_t sub_243D446A8()
{
  result = qword_27EDAF7B0;
  if (!qword_27EDAF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7B0);
  }

  return result;
}

unint64_t sub_243D44700()
{
  result = qword_27EDAF7B8;
  if (!qword_27EDAF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7B8);
  }

  return result;
}

unint64_t sub_243D44758()
{
  result = qword_27EDAF7C0;
  if (!qword_27EDAF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7C0);
  }

  return result;
}

unint64_t sub_243D447B0()
{
  result = qword_27EDAF7C8;
  if (!qword_27EDAF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7C8);
  }

  return result;
}

unint64_t sub_243D44808()
{
  result = qword_27EDAF7D0;
  if (!qword_27EDAF7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7D0);
  }

  return result;
}

unint64_t sub_243D44860()
{
  result = qword_27EDAF7D8;
  if (!qword_27EDAF7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7D8);
  }

  return result;
}

unint64_t sub_243D448B8()
{
  result = qword_27EDAF7E0;
  if (!qword_27EDAF7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7E0);
  }

  return result;
}

unint64_t sub_243D44910()
{
  result = qword_27EDAF7E8;
  if (!qword_27EDAF7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7E8);
  }

  return result;
}

unint64_t sub_243D44968()
{
  result = qword_27EDAF7F0;
  if (!qword_27EDAF7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7F0);
  }

  return result;
}

unint64_t sub_243D449C0()
{
  result = qword_27EDAF7F8;
  if (!qword_27EDAF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF7F8);
  }

  return result;
}

uint64_t sub_243D44A14(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x8000000243D5EBB0 == a2 || (sub_243D552A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_243D552A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7075727265746E69 && a2 == 0xEB00000000646574 || (sub_243D552A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6563634172657375 && a2 == 0xEC00000064657470 || (sub_243D552A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x636E614372657375 && a2 == 0xEC00000064656C65 || (sub_243D552A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x696E654472657375 && a2 == 0xEA00000000006465)
  {

    return 5;
  }

  else
  {
    v5 = sub_243D552A8();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243D44CE0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243D44D44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF818, &unk_243D5B8A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_243D44DD8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF818, &unk_243D5B8A0);

  return sub_243D43AE0(a1);
}

uint64_t sub_243D44E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_243D44EBC()
{
  v1 = sub_243D54C08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for CPSXPCClientRequest(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for CPSXPCClientRequesterRequest(0);
    if (!swift_getEnumCaseMultiPayload())
    {

      v10 = v0 + v8 + *(type metadata accessor for CPSRequesterUseCaseConfiguration(0) + 20);
      v11 = type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative(0);
      if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (!EnumCaseMultiPayload)
        {
LABEL_7:

          goto LABEL_8;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v13 = sub_243D54BA8();
          (*(*(v13 - 8) + 8))(v10, v13);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8F0, &qword_243D59710);

          goto LABEL_7;
        }
      }

LABEL_8:
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_243D45194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPSXPCClientRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_243D451F8(uint64_t a1)
{
  v3 = *(sub_243D54C08() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for CPSXPCClientRequest(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_243D42CB4(a1, v1 + v4, v1 + v7, v8);
}

unint64_t sub_243D45308()
{
  result = qword_27EDAF828;
  if (!qword_27EDAF828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF828);
  }

  return result;
}

void sub_243D4535C(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_243D45368()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243D453A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF838, &qword_243D5B8C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_243D45448(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF838, &qword_243D5B8C0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243D33B7C;

  return sub_243D3E728(a1, v1 + v5, v6);
}

uint64_t sub_243D45560(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF830, &qword_243D5B8B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243D455D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_243D45630()
{
  result = qword_27EDAF840;
  if (!qword_27EDAF840)
  {
    sub_243D45698(255, &qword_27EDAEED0, 0x277D85C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF840);
  }

  return result;
}

uint64_t sub_243D45698(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_243D456E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243D33B7C;

  return sub_243D43348(a1, v4);
}

uint64_t sub_243D45798(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_243D457E0(uint64_t a1, void *a2)
{
  if (a2 != 6)
  {
    sub_243D457F0(a1, a2);
  }
}

void sub_243D457F0(uint64_t a1, void *a2)
{
  if (a2 != 5)
  {
    sub_243D43D04(a2);
  }
}

uint64_t sub_243D45804(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_243D4587C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8B0, &qword_243D5B920);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8C0, &qword_243D5B930);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_243D455D0(a1, &qword_27EDAF8B0, &qword_243D5B920);
    v13 = sub_243D4AAD0(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_243D4BA34(&unk_27EDAF8C0, &qword_243D5B930, &qword_27EDAF9A8, &qword_243D5BB88);
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_243D4B268(v15, v17, &unk_27EDAF8C0, &qword_243D5B930);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_243D455D0(v8, &qword_27EDAF8B0, &qword_243D5B920);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_243D4B424(v12, a2, v18, &unk_27EDAF8C0, &qword_243D5B930, &qword_27EDAF9A8, &qword_243D5BB88);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_243D45B24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF6A8, &qword_243D5B018);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF980, &qword_243D5BB70);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_243D455D0(a1, &qword_27EDAF6A8, &qword_243D5B018);
    v13 = sub_243D4AAD0(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_243D4BA34(&qword_27EDAF980, &qword_243D5BB70, &qword_27EDAF988, &qword_243D5BB78);
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_243D4B268(v15, v17, &qword_27EDAF980, &qword_243D5BB70);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_243D455D0(v8, &qword_27EDAF6A8, &qword_243D5B018);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_243D4B424(v12, a2, v18, &qword_27EDAF980, &qword_243D5BB70, &qword_27EDAF988, &qword_243D5BB78);
    *v3 = v21;
  }

  return result;
}

uint64_t CUEnvironmentValues.cpsXPCClient.getter()
{
  sub_243D3D1D8();
  sub_243D54CB8();
  return v1;
}

uint64_t CPSXPCClient.__allocating_init(environment:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__invalidateCalled) = 0;
  sub_243D54BF8();
  *(v2 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection) = 0;
  *(v2 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__eventContinuations) = MEMORY[0x277D84F98];
  v3 = OBJC_IVAR____TtC17CompanionServices12CPSXPCClient_environment;
  v4 = sub_243D54CA8();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t CPSXPCClient.events.getter()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8B0, &qword_243D5B920);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8B8, &qword_243D5B928);
  v6 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8C0, &qword_243D5B930);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v26 = CUNextIDDecimal64();
  if (qword_27EDAEC80 != -1)
  {
    swift_once();
  }

  v13 = sub_243D54D88();
  __swift_project_value_buffer(v13, qword_27EDAF860);
  v14 = sub_243D54D68();
  v15 = sub_243D55018();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = v5;
    v17 = v2;
    v18 = v16;
    *v16 = 134217984;
    *(v16 + 4) = v26;
    _os_log_impl(&dword_243D1C000, v14, v15, "event monitor start: id=%llu", v16, 0xCu);
    v19 = v18;
    v2 = v17;
    v5 = v24;
    MEMORY[0x245D50A20](v19, -1, -1);
  }

  v20 = v25;
  (*(v6 + 104))(v8, *MEMORY[0x277D85778], v25);
  sub_243D54FA8();
  (*(v6 + 8))(v8, v20);
  (*(v10 + 16))(v5, v12, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  swift_beginAccess();
  v21 = v26;
  sub_243D4587C(v5, v26);
  swift_endAccess();
  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  *(v22 + 24) = v21;

  sub_243D54FB8();
  return (*(v10 + 8))(v12, v9);
}

uint64_t CPSXPCClient.send<A>(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = sub_243D4CC60(&qword_27EDAF6A0, type metadata accessor for CPSXPCClient, &protocol conformance descriptor for CPSXPCClient);
  v7 = sub_243D54F38();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_243D46364, v7, v6);
}

uint64_t sub_243D46364()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_243D4646C;
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, v1, v2, 0x71657228646E6573, 0xEE00293A74736575, sub_243D4BFF8, v4, v6);
}

uint64_t sub_243D4646C()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[8];
    v4 = v2[9];

    return MEMORY[0x2822009F8](sub_243D465A4, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_243D465A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_243D46608()
{
  v0 = sub_243D54D88();
  __swift_allocate_value_buffer(v0, qword_27EDAF860);
  __swift_project_value_buffer(v0, qword_27EDAF860);
  return sub_243D54D78();
}

uint64_t CPSXPCClient.environment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17CompanionServices12CPSXPCClient_environment;
  v4 = sub_243D54CA8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_243D46700()
{
  swift_weakInit();
  dword_27EDAF878 = 0;
  qword_27EDAF880 = 0;
  return sub_243D4CCC4(v1, &qword_27EDAF880);
}

uint64_t CPSXPCClient.init(environment:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__invalidateCalled) = 0;
  sub_243D54BF8();
  *(v1 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection) = 0;
  *(v1 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__eventContinuations) = MEMORY[0x277D84F98];
  v3 = OBJC_IVAR____TtC17CompanionServices12CPSXPCClient_environment;
  v4 = sub_243D54CA8();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

unint64_t CPSXPCClient.deinit()
{
  v1 = v0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8C0, &qword_243D5B930);
  v53 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v47 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8D0, &qword_243D5B940);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - v7;
  if (qword_27EDAEC80 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v9 = sub_243D54D88();
    __swift_project_value_buffer(v9, qword_27EDAF860);
    v10 = sub_243D54D68();
    v11 = sub_243D55028();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_243D1C000, v10, v11, "deinit", v12, 2u);
      MEMORY[0x245D50A20](v12, -1, -1);
    }

    v13 = OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__eventContinuations;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8D8, &qword_243D5B948);
    v47 = v13;
    v48 = v1;
    v14 = sub_243D54E88();
    swift_endAccess();
    v15 = 0;
    v17 = v14 + 64;
    v16 = *(v14 + 64);
    v52 = v14;
    v18 = 1 << *(v14 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v1 = v19 & v16;
    v20 = (v18 + 63) >> 6;
    v50 = v53 + 16;
    v51 = v6;
    v21 = (v53 + 32);
    v54 = (v53 + 8);
    v55 = v8;
    v49 = (v53 + 32);
    v22 = v56;
    if ((v19 & v16) != 0)
    {
      break;
    }

LABEL_8:
    if (v20 <= (v15 + 1))
    {
      v24 = (v15 + 1);
    }

    else
    {
      v24 = v20;
    }

    v8 = (v24 - 1);
    while (1)
    {
      v23 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8E0, &unk_243D5B950);
        (*(*(v40 - 8) + 56))(v6, 1, 1, v40);
        v1 = 0;
        goto LABEL_16;
      }

      v1 = *(v17 + 8 * v23);
      ++v15;
      if (v1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  while (1)
  {
    v23 = v15;
LABEL_15:
    v25 = __clz(__rbit64(v1));
    v1 &= v1 - 1;
    v26 = v25 | (v23 << 6);
    v27 = v53;
    v28 = *(*(v52 + 48) + 8 * v26);
    v29 = v57;
    (*(v53 + 16))(v22, *(v52 + 56) + *(v53 + 72) * v26, v57);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8E0, &unk_243D5B950);
    v31 = *(v30 + 48);
    v32 = v51;
    *v51 = v28;
    v33 = *(v27 + 32);
    v6 = v32;
    v34 = v29;
    v21 = v49;
    v33(&v32[v31], v22, v34);
    (*(*(v30 - 8) + 56))(v6, 0, 1, v30);
    v8 = v23;
LABEL_16:
    v35 = v55;
    sub_243D4C004(v6, v55);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8E0, &unk_243D5B950);
    if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
    {
      break;
    }

    v37 = v35 + *(v36 + 48);
    v38 = v56;
    v39 = v57;
    (*v21)(v56, v37, v57);
    sub_243D54FD8();
    (*v54)(v38, v39);
    v15 = v8;
    if (!v1)
    {
      goto LABEL_8;
    }
  }

  v41 = OBJC_IVAR____TtC17CompanionServices12CPSXPCClient_environment;
  v42 = sub_243D54CA8();
  v43 = v48;
  (*(*(v42 - 8) + 8))(v48 + v41, v42);
  v44 = OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcCoder;
  v45 = sub_243D54C08();
  (*(*(v45 - 8) + 8))(v43 + v44, v45);
  swift_unknownObjectRelease();

  return v43;
}

uint64_t CPSXPCClient.__deallocating_deinit()
{
  CPSXPCClient.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

Swift::Void __swiftcall CPSXPCClient.invalidate()()
{
  *(v0 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__invalidateCalled) = 1;
  v1 = *(v0 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection);
  if (v1)
  {
    xpc_connection_cancel(v1);
  }

  CPSXPCClient._cleanupIfNeeded()();
}

Swift::Void __swiftcall CPSXPCClient._cleanupIfNeeded()()
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8C0, &qword_243D5B930);
  v39 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v33 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8D0, &qword_243D5B940);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - v5;
  if (*(v0 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__invalidateCalled) == 1 && !*(v0 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection))
  {
    v40 = v4;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8D8, &qword_243D5B948);
    v7 = sub_243D54E88();
    swift_endAccess();
    v8 = 0;
    v9 = *(v7 + 64);
    v34 = v7 + 64;
    v10 = 1 << *(v7 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & v9;
    v13 = (v10 + 63) >> 6;
    v35 = v39 + 16;
    v36 = v6;
    v41 = (v39 + 32);
    v37 = v7;
    v38 = (v39 + 8);
    v14 = v42;
    if ((v11 & v9) != 0)
    {
      while (1)
      {
        v15 = v8;
LABEL_14:
        v18 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v19 = v18 | (v15 << 6);
        v20 = *(*(v37 + 48) + 8 * v19);
        v21 = v39;
        v22 = v43;
        (*(v39 + 16))(v14, *(v37 + 56) + *(v39 + 72) * v19, v43);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8E0, &unk_243D5B950);
        v24 = *(v23 + 48);
        v25 = v40;
        *v40 = v20;
        (*(v21 + 32))(&v25[v24], v14, v22);
        (*(*(v23 - 8) + 56))(v25, 0, 1, v23);
        v17 = v15;
        v26 = v25;
        v6 = v36;
LABEL_15:
        sub_243D4C004(v26, v6);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8E0, &unk_243D5B950);
        if ((*(*(v27 - 8) + 48))(v6, 1, v27) == 1)
        {
          break;
        }

        v28 = *(v27 + 48);
        v29 = v42;
        v30 = v43;
        (*v41)(v42, &v6[v28], v43);
        sub_243D54FD8();
        (*v38)(v29, v30);
        v8 = v17;
        if (!v12)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      if (v13 <= v8 + 1)
      {
        v16 = v8 + 1;
      }

      else
      {
        v16 = v13;
      }

      v17 = v16 - 1;
      while (1)
      {
        v15 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v15 >= v13)
        {
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8E0, &unk_243D5B950);
          v32 = v40;
          (*(*(v31 - 8) + 56))(v40, 1, 1, v31);
          v26 = v32;
          v12 = 0;
          goto LABEL_15;
        }

        v12 = *(v34 + 8 * v15);
        ++v8;
        if (v12)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

uint64_t CPSXPCClient.send<A>(request:replyHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v58 = a4;
  v59 = a5;
  v60 = a2;
  v61 = a3;
  v64 = type metadata accessor for CPSXPCClientRequest(0);
  isa = v64[-1].isa;
  v8 = MEMORY[0x28223BE20](v64);
  v56 = v9;
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - v10;
  v12 = sub_243D54C08();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v62 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - v16;
  v52 = *(v13 + 16);
  v53 = v13 + 16;
  v52(&v50 - v16, v5 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcCoder, v12);
  if (qword_27EDAEC80 != -1)
  {
    swift_once();
  }

  v18 = sub_243D54D88();
  __swift_project_value_buffer(v18, qword_27EDAF860);
  sub_243D4C074(a1, v11);
  v19 = sub_243D54D68();
  v20 = sub_243D55018();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v63 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v51 = v12;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136315138;
    v25 = CPSXPCClientRequest.description.getter();
    v50 = a1;
    v26 = v17;
    v27 = v6;
    v29 = v28;
    sub_243D4C0D8(v11);
    v30 = sub_243D43538(v25, v29, aBlock);
    v6 = v27;
    v17 = v26;
    a1 = v50;

    *(v22 + 4) = v30;
    _os_log_impl(&dword_243D1C000, v19, v20, "XPC request start: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v31 = v24;
    v12 = v51;
    MEMORY[0x245D50A20](v31, -1, -1);
    v32 = v22;
    v13 = v63;
    MEMORY[0x245D50A20](v32, -1, -1);
  }

  else
  {

    sub_243D4C0D8(v11);
  }

  v33 = v66;
  v34 = sub_243D477D0();
  if (v33)
  {
    return (*(v13 + 8))(v17, v12);
  }

  v36 = v34;
  sub_243D4CC60(&qword_27EDAF820, type metadata accessor for CPSXPCClientRequest, &protocol conformance descriptor for CPSXPCClientRequest);
  v66 = sub_243D54BE8();
  v64 = sub_243D54C78();
  v52(v62, v17, v12);
  v37 = v57;
  sub_243D4C074(a1, v57);
  v38 = *(v13 + 80);
  v63 = v13;
  v39 = (v38 + 32) & ~v38;
  v40 = (v54 + *(isa + 80) + v39) & ~*(isa + 80);
  v54 = v6;
  isa = v36;
  v41 = &v56[v40 + 7] & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v56 = v17;
  v43 = v12;
  v44 = v42;
  v45 = v59;
  *(v42 + 16) = v58;
  *(v42 + 24) = v45;
  (*(v13 + 32))(v42 + v39, v62, v43);
  sub_243D45194(v37, v44 + v40);
  v46 = (v44 + v41);
  v47 = v61;
  *v46 = v60;
  v46[1] = v47;
  *(v44 + ((v41 + 23) & 0xFFFFFFFFFFFFFFF8)) = v54;
  aBlock[4] = sub_243D4C40C;
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243D481FC;
  aBlock[3] = &block_descriptor_0;
  v48 = _Block_copy(aBlock);

  v49 = v64;
  xpc_connection_send_message_with_reply(isa, v66, v64, v48);
  _Block_release(v48);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return (*(v63 + 8))(v56, v43);
}

_xpc_connection_s *sub_243D477D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF638, &qword_243D5AFD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &aBlock - v3;
  v5 = OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection;
  if (*(v0 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection))
  {
    mach_service = *(v0 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection);
  }

  else
  {
    sub_243D54C68();
    v7 = sub_243D54C28();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      sub_243D455D0(v4, &qword_27EDAF638, &qword_243D5AFD0);
      sub_243D2BF60();
      sub_243D54CB8();
      mach_service = v18;
      if (!v18)
      {
        v16 = objc_allocWithZone(sub_243D54D28());
        sub_243D54D38();
        swift_willThrow();
        return mach_service;
      }

      v9 = sub_243D54C78();
      v10 = sub_243D54EB8();

      mach_service = xpc_connection_create_mach_service((v10 + 32), v9, 0);

      swift_unknownObjectRetain();
    }

    else
    {
      v11 = sub_243D54C18();
      (*(v8 + 8))(v4, v7);
      mach_service = xpc_connection_create_from_endpoint(v11);
      swift_unknownObjectRetain();
      v12 = sub_243D54C78();
      xpc_connection_set_target_queue(mach_service, v12);
      swift_unknownObjectRelease();
    }

    *(v1 + v5) = mach_service;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v13 = swift_allocObject();
    swift_weakInit();
    v21 = sub_243D4C8AC;
    v22 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_243D481FC;
    v20 = &block_descriptor_14;
    v14 = _Block_copy(&aBlock);

    xpc_connection_set_event_handler(mach_service, v14);
    _Block_release(v14);
    xpc_connection_activate(mach_service);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return mach_service;
}

uint64_t sub_243D47AFC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = a5;
  v61 = a4;
  v59 = a3;
  v12 = type metadata accessor for CPSXPCClientRequest(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v58 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAF938, &qword_243D5BB48);
  v18 = sub_243D55318();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = (&v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v58 - v23;
  v62 = a7;
  v63 = a8;
  v64 = a2;
  v65 = a1;
  v25 = v22;
  v27 = v26;
  sub_243D48048(sub_243D4C838, &v58 - v23);
  (*(v27 + 16))(v21, v24, v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v21;
    if (qword_27EDAEC80 != -1)
    {
      swift_once();
    }

    v29 = sub_243D54D88();
    __swift_project_value_buffer(v29, qword_27EDAF860);
    sub_243D4C074(v59, v15);
    v30 = v28;
    v31 = sub_243D54D68();
    v32 = sub_243D55038();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = v25;
      v66 = v58;
      *v33 = 136315394;
      v35 = CPSXPCClientRequest.description.getter();
      v36 = v27;
      v38 = v37;
      sub_243D4C0D8(v15);
      v39 = sub_243D43538(v35, v38, &v66);
      v27 = v36;

      *(v33 + 4) = v39;
      *(v33 + 12) = 2112;
      v40 = v28;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v41;
      *v34 = v41;
      _os_log_impl(&dword_243D1C000, v31, v32, "### XPC request failed: %s, error=%@", v33, 0x16u);
      sub_243D455D0(v34, &unk_27EDAF940, &qword_243D5B8B0);
      MEMORY[0x245D50A20](v34, -1, -1);
      v42 = v58;
      __swift_destroy_boxed_opaque_existential_1(v58);
      v43 = v42;
      v25 = v59;
      MEMORY[0x245D50A20](v43, -1, -1);
      MEMORY[0x245D50A20](v33, -1, -1);
    }

    else
    {

      sub_243D4C0D8(v15);
    }
  }

  else
  {
    if (qword_27EDAEC80 != -1)
    {
      swift_once();
    }

    v44 = sub_243D54D88();
    __swift_project_value_buffer(v44, qword_27EDAF860);
    sub_243D4C074(v59, v17);
    v45 = sub_243D54D68();
    v46 = sub_243D55018();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v59 = v25;
      v48 = v47;
      v49 = v27;
      v50 = swift_slowAlloc();
      v66 = v50;
      *v48 = 136315138;
      v51 = CPSXPCClientRequest.description.getter();
      v53 = v52;
      sub_243D4C0D8(v17);
      v54 = sub_243D43538(v51, v53, &v66);

      *(v48 + 4) = v54;
      _os_log_impl(&dword_243D1C000, v45, v46, "XPC request succeeded: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      v55 = v50;
      v27 = v49;
      MEMORY[0x245D50A20](v55, -1, -1);
      v56 = v48;
      v25 = v59;
      MEMORY[0x245D50A20](v56, -1, -1);
    }

    else
    {

      sub_243D4C0D8(v17);
    }

    (*(v27 + 8))(v21, v25);
  }

  v61(v24);
  return (*(v27 + 8))(v24, v25);
}

uint64_t sub_243D48048@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_243D55318();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  a1(v5);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a2, v9, v6);
}

uint64_t sub_243D481FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_243D4825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAF938, &qword_243D5BB48);
  v8 = sub_243D54F68();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  type metadata accessor for CPSXPCClient(0);
  sub_243D4CC60(&qword_27EDAF6A0, type metadata accessor for CPSXPCClient, &protocol conformance descriptor for CPSXPCClient);
  sub_243D54F38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  (*(v9 + 32))(v13 + v12, v11, v8);
  CPSXPCClient.send<A>(request:replyHandler:)(v16, sub_243D4CBB0, v13, a4, a5);
}

uint64_t sub_243D48484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAF938, &qword_243D5BB48);
  v4 = sub_243D54F68();
  return sub_243D484EC(a1, v4);
}

uint64_t sub_243D484EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_243D55318();
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return sub_243D54F48();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return sub_243D54F58();
  }
}

uint64_t sub_243D48728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_243D54E58();
  v17 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_243D54E78();
  v8 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_243D54C78();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  aBlock[4] = sub_243D4CC58;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243D40F5C;
  aBlock[3] = &block_descriptor_29;
  v13 = _Block_copy(aBlock);

  sub_243D54E68();
  v18 = MEMORY[0x277D84F90];
  sub_243D4CC60(&unk_27EDAF990, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF810, &qword_243D5BB80);
  sub_243D45798(&qword_27EDAF9A0, &qword_27EDAF810, &qword_243D5BB80, MEMORY[0x277D83970]);
  sub_243D550B8();
  MEMORY[0x245D4FFA0](0, v10, v7, v13);
  _Block_release(v13);

  (*(v17 + 8))(v7, v5);
  (*(v8 + 8))(v10, v16);
}

uint64_t sub_243D48A10(uint64_t isEscapingClosureAtFileLocation, uint64_t a2)
{
  v7 = a2;
  type metadata accessor for CPSXPCClient(0);
  sub_243D4CC60(&qword_27EDAF6A0, type metadata accessor for CPSXPCClient, &protocol conformance descriptor for CPSXPCClient);
  sub_243D54F38();
  if (swift_task_isCurrentExecutor())
  {
    v3 = swift_allocObject();
    *(v3 + 16) = sub_243D4CCA8;
    *(v3 + 24) = &v6;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_243D4CD88;
    *(v4 + 24) = v3;

    v9[0] = isEscapingClosureAtFileLocation;
    sub_243D4CD5C(v9);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_243D550E8();
  MEMORY[0x245D4FE20](0xD00000000000003FLL, 0x8000000243D5ECB0);
  v8 = isEscapingClosureAtFileLocation;
  sub_243D55128();
  MEMORY[0x245D4FE20](46, 0xE100000000000000);
  result = sub_243D55138();
  __break(1u);
  return result;
}

uint64_t sub_243D48C2C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8B0, &qword_243D5B920);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  type metadata accessor for CPSXPCClient(0);
  sub_243D4CC60(&qword_27EDAF6A0, type metadata accessor for CPSXPCClient, &protocol conformance descriptor for CPSXPCClient);
  sub_243D54F38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27EDAEC80 != -1)
  {
    swift_once();
  }

  v6 = sub_243D54D88();
  __swift_project_value_buffer(v6, qword_27EDAF860);
  v7 = sub_243D54D68();
  v8 = sub_243D55018();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a2;
    _os_log_impl(&dword_243D1C000, v7, v8, "event monitor cancel: id=%llu", v9, 0xCu);
    MEMORY[0x245D50A20](v9, -1, -1);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8C0, &qword_243D5B930);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  swift_beginAccess();
  sub_243D4587C(v5, a2);
  return swift_endAccess();
}

void CPSXPCClient._report(event:)(unint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8F8, &qword_243D5B960);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v74 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8C0, &qword_243D5B930);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v79 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v67 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8D0, &qword_243D5B940);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v77 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v76 = &v61 - v14;
  v15 = a1[1];
  v80 = *a1;
  v70 = v15;
  v16 = OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__eventContinuations;
  swift_beginAccess();
  v17 = *(v1 + v16);
  v18 = *(v17 + 64);
  v64 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v66 = v7 + 16;
  v78 = (v7 + 32);
  v63 = 0x8000000243D5ED40;
  v61 = 0x8000000243D5EBB0;
  v68 = v7;
  v69 = v17;
  v71 = (v7 + 8);
  v72 = (v4 + 8);

  v23 = 0;
  *&v24 = 134218242;
  v65 = v24;
  v75 = v3;
  v73 = v6;
  while (v21)
  {
    v33 = v23;
LABEL_18:
    v37 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v38 = v37 | (v33 << 6);
    v39 = v68;
    v40 = *(*(v69 + 48) + 8 * v38);
    v41 = v67;
    (*(v68 + 16))(v67, *(v69 + 56) + *(v68 + 72) * v38, v6);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8E0, &unk_243D5B950);
    v43 = *(v42 + 48);
    v44 = v77;
    *v77 = v40;
    v36 = v44;
    (*(v39 + 32))(v44 + v43, v41, v6);
    (*(*(v42 - 8) + 56))(v36, 0, 1, v42);
LABEL_19:
    v45 = v36;
    v46 = v76;
    sub_243D4C004(v45, v76);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8E0, &unk_243D5B950);
    if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
    {

      return;
    }

    v48 = *v46;
    (*v78)(v79, &v46[*(v47 + 48)], v6);
    if (qword_27EDAEC80 != -1)
    {
      swift_once();
    }

    v49 = sub_243D54D88();
    __swift_project_value_buffer(v49, qword_27EDAF860);
    v50 = v80;
    v51 = v70;
    sub_243D4C548(v80, v70);
    v52 = sub_243D54D68();
    v53 = sub_243D55018();
    sub_243D457F0(v50, v51);
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v83 = v55;
      *v54 = v65;
      *(v54 + 4) = v48;
      *(v54 + 12) = 2080;
      v27 = 0x7075727265746E69;
      v28 = 0xEB00000000646574;
      if (v51 != 5)
      {
        v84 = 0;
        v85 = 0xE000000000000000;
        sub_243D43CF4(v51);
        sub_243D550E8();

        v84 = 0xD000000000000014;
        v85 = v63;
        v81 = v80;
        v56 = sub_243D55288();
        MEMORY[0x245D4FE20](v56);

        MEMORY[0x245D4FE20](8236, 0xE200000000000000);
        if (v51 <= 1)
        {
          if (v51)
          {
            v26 = 0x7075727265746E69;
            v25 = 0xEB00000000646574;
            if (v51 != 1)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v26 = 0xD00000000000001ALL;
            v25 = v61;
          }
        }

        else
        {
          switch(v51)
          {
            case 2:
              v25 = 0xEC00000064657470;
              v26 = 0x6563634172657375;
              break;
            case 3:
              v26 = 0x636E614372657375;
              v25 = 0xEC00000064656C65;
              break;
            case 4:
              v25 = 0xEA00000000006465;
              v26 = 0x696E654472657375;
              break;
            default:
LABEL_32:
              v81 = 0x203A726F727265;
              v82 = 0xE700000000000000;
              v58 = [v51 description];
              v62 = sub_243D54EA8();
              v60 = v59;

              MEMORY[0x245D4FE20](v62, v60);

              v26 = v81;
              v25 = v82;
              break;
          }
        }

        MEMORY[0x245D4FE20](v26, v25);

        sub_243D457F0(v80, v51);
        v27 = v84;
        v28 = v85;
      }

      v29 = sub_243D43538(v27, v28, &v83);

      *(v54 + 14) = v29;
      _os_log_impl(&dword_243D1C000, v52, v53, "event report: id=%llu, event={%s}", v54, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x245D50A20](v55, -1, -1);
      MEMORY[0x245D50A20](v54, -1, -1);
    }

    v30 = v75;
    v84 = v80;
    v85 = v51;
    sub_243D4C548(v80, v51);
    v6 = v73;
    v31 = v74;
    v32 = v79;
    sub_243D54FC8();
    (*v72)(v31, v30);
    (*v71)(v32, v6);
  }

  if (v22 <= v23 + 1)
  {
    v34 = v23 + 1;
  }

  else
  {
    v34 = v22;
  }

  v35 = v34 - 1;
  v36 = v77;
  while (1)
  {
    v33 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v33 >= v22)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF8E0, &unk_243D5B950);
      (*(*(v57 - 8) + 56))(v36, 1, 1, v57);
      v21 = 0;
      v23 = v35;
      goto LABEL_19;
    }

    v21 = *(v64 + 8 * v33);
    ++v23;
    if (v21)
    {
      v23 = v33;
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t CPSXPCClient.Event.description.getter()
{
  if (*(v0 + 8) == 5)
  {
    return 0x7075727265746E69;
  }

  sub_243D550E8();

  v2 = sub_243D55288();
  MEMORY[0x245D4FE20](v2);

  MEMORY[0x245D4FE20](8236, 0xE200000000000000);
  v3 = CPSRequesterSession.Event.description.getter();
  MEMORY[0x245D4FE20](v3);

  return 0xD000000000000014;
}

uint64_t sub_243D497F8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF958, &qword_243D5BB50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v16[0] = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF960, &qword_243D5BB58);
    v9 = sub_243D54C58();
    MEMORY[0x28223BE20](v9);
    v13 = v6;
    type metadata accessor for CPSXPCClient(0);
    sub_243D4CC60(&qword_27EDAF6A0, type metadata accessor for CPSXPCClient, &protocol conformance descriptor for CPSXPCClient);
    sub_243D54F38();
    if (swift_task_isCurrentExecutor())
    {
      v10 = swift_allocObject();
      *(v10 + 16) = sub_243D4C8B4;
      *(v10 + 24) = &v15[-4];
      v11 = swift_allocObject();
      *(v11 + 16) = sub_243D4C8E0;
      *(v11 + 24) = v10;

      v16[0] = v8;
      sub_243D44D18(v16);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return (*(v4 + 8))(v6, v3);
      }

      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      __break(1u);
    }

    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_243D550E8();
    MEMORY[0x245D4FE20](0xD00000000000003FLL, 0x8000000243D5ECB0);
    v15[2] = v8;
    sub_243D55128();
    MEMORY[0x245D4FE20](46, 0xE100000000000000);
    v14 = 0;
    v13 = 174;
    result = sub_243D55138();
    __break(1u);
  }

  return result;
}

void sub_243D49B50(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CPSXPCClient(0);
  sub_243D4CC60(&qword_27EDAF6A0, type metadata accessor for CPSXPCClient, &protocol conformance descriptor for CPSXPCClient);
  sub_243D54F38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_243D49C10();
}

void sub_243D49C10()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF958, &qword_243D5BB50);
  sub_243D54C48();
  v2 = MEMORY[0x245D50BD0](v17);
  if (v2 == sub_243D54D98())
  {
    sub_243D4A044(v17);
LABEL_19:
    swift_unknownObjectRelease();
    return;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v3 = sub_243D54DB8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v17 == v3)
  {
    if ((*(v1 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__invalidateCalled) & 1) == 0)
    {
      sub_243D49F48();
    }

    goto LABEL_19;
  }

  swift_unknownObjectRetain();
  v4 = sub_243D54DA8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v17 == v4)
  {
    if ((*(v1 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__invalidateCalled) & 1) == 0)
    {
      if (qword_27EDAEC80 != -1)
      {
        swift_once();
      }

      v13 = sub_243D54D88();
      __swift_project_value_buffer(v13, qword_27EDAF860);
      v14 = sub_243D54D68();
      v15 = sub_243D55038();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_243D1C000, v14, v15, "### Invalidated unexpectedly", v16, 2u);
        MEMORY[0x245D50A20](v16, -1, -1);
      }
    }

    *(v1 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection) = 0;
    swift_unknownObjectRelease();
    CPSXPCClient._cleanupIfNeeded()();
    goto LABEL_19;
  }

  if (qword_27EDAEC80 != -1)
  {
    swift_once();
  }

  v5 = sub_243D54D88();
  __swift_project_value_buffer(v5, qword_27EDAF860);
  swift_unknownObjectRetain();
  v6 = sub_243D54D68();
  v7 = sub_243D55038();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = sub_243D55008();
    v12 = sub_243D43538(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_243D1C000, v6, v7, "### XPC event error: error=%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245D50A20](v9, -1, -1);
    MEMORY[0x245D50A20](v8, -1, -1);
  }

  swift_unknownObjectRelease();
}

void sub_243D49F48()
{
  if (qword_27EDAEC80 != -1)
  {
    swift_once();
  }

  v0 = sub_243D54D88();
  __swift_project_value_buffer(v0, qword_27EDAF860);
  v1 = sub_243D54D68();
  v2 = sub_243D55038();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_243D1C000, v1, v2, "### interrupted", v3, 2u);
    MEMORY[0x245D50A20](v3, -1, -1);
  }

  v4 = xmmword_243D5B910;
  CPSXPCClient._report(event:)(&v4);
}

void *sub_243D4A044(void *a1)
{
  v3 = v1;
  sub_243D4CA24();
  result = sub_243D54BB8();
  if (v2)
  {
    return result;
  }

  v25 = 0;
  v6 = v24[0];
  if (qword_27EDAEC80 != -1)
  {
    swift_once();
  }

  v7 = sub_243D54D88();
  __swift_project_value_buffer(v7, qword_27EDAF860);
  sub_243D43CF4(*(&v24[0] + 1));
  v8 = sub_243D54D68();
  v9 = sub_243D55018();
  sub_243D43D04(*(&v24[0] + 1));
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = a1;
    v11 = swift_slowAlloc();
    *&v22 = v11;
    *v10 = 136315138;
    v24[0] = v6;
    sub_243D43CF4(*(&v6 + 1));
    v12 = CPSXPCServerRequest.description.getter();
    v14 = v13;
    sub_243D43D04(*(&v6 + 1));
    v15 = sub_243D43538(v12, v14, &v22);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_243D1C000, v8, v9, "XPC request: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    v16 = v11;
    a1 = v19;
    MEMORY[0x245D50A20](v16, -1, -1);
    MEMORY[0x245D50A20](v10, -1, -1);
  }

  v22 = v6;
  sub_243D43CF4(*(&v6 + 1));
  CPSXPCClient._report(event:)(&v22);
  sub_243D457F0(v6, *(&v6 + 1));
  memset(v24, 0, 48);
  sub_243D4CA78(v24, &v20);
  if (!v21)
  {
    sub_243D455D0(v24, &unk_27EDAF970, &unk_243D5BB60);
    sub_243D43D04(*(&v6 + 1));
    return sub_243D455D0(&v20, &unk_27EDAF970, &unk_243D5BB60);
  }

  sub_243D4CAE8(&v20, &v22);
  v17 = *(v3 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection);
  if (!v17)
  {
    sub_243D455D0(v24, &unk_27EDAF970, &unk_243D5BB60);
LABEL_14:
    sub_243D43D04(*(&v6 + 1));
    return __swift_destroy_boxed_opaque_existential_1(&v22);
  }

  swift_unknownObjectRetain();
  if (!sub_243D4C940(a1))
  {
    sub_243D455D0(v24, &unk_27EDAF970, &unk_243D5BB60);
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(&v22, v23);
  v18 = v25;
  sub_243D54BD8();
  if (v18)
  {
    sub_243D455D0(v24, &unk_27EDAF970, &unk_243D5BB60);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_243D43D04(*(&v6 + 1));
  }

  else
  {
    xpc_connection_send_message(v17, v6);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_243D43D04(*(&v6 + 1));
    sub_243D455D0(v24, &unk_27EDAF970, &unk_243D5BB60);
  }

  return __swift_destroy_boxed_opaque_existential_1(&v22);
}

void sub_243D4A3D0(void *a1, void *a2)
{
  v3 = v2;
  if (qword_27EDAEC80 != -1)
  {
    swift_once();
  }

  v6 = sub_243D54D88();
  __swift_project_value_buffer(v6, qword_27EDAF860);
  v7 = a2;
  v8 = sub_243D54D68();
  v9 = sub_243D55038();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = a2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_243D1C000, v8, v9, "### XPC error reply: error=%@", v10, 0xCu);
    sub_243D455D0(v11, &unk_27EDAF940, &qword_243D5B8B0);
    MEMORY[0x245D50A20](v11, -1, -1);
    MEMORY[0x245D50A20](v10, -1, -1);
  }

  v14 = *(v3 + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection);
  if (v14)
  {
    swift_unknownObjectRetain();
    if (xpc_dictionary_expects_reply())
    {
      v15 = sub_243D4C940(a1);
      if (v15)
      {
        v16 = v15;
        sub_243D54BC8();
        xpc_connection_send_message(v14, v16);
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_243D4A73C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_243D4CC60(&qword_27EDAF930, type metadata accessor for CPSXPCClient, &protocol conformance descriptor for CPSXPCClient);

  return MEMORY[0x282158A60](v4, v5, a2);
}

uint64_t sub_243D4A7DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17CompanionServices12CPSXPCClient_environment;
  v5 = sub_243D54CA8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_243D4A860(uint64_t *a1)
{
  sub_243D3D1D8();

  return sub_243D54CC8();
}

uint64_t (*CUEnvironmentValues.cpsXPCClient.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_243D3D1D8();
  sub_243D54CB8();
  return sub_243D4A95C;
}

uint64_t sub_243D4A95C(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_243D54CC8();
  }

  sub_243D54CC8();
}

unint64_t sub_243D4AA18(char a1)
{
  sub_243D552E8();
  sub_243D54ED8();

  v2 = sub_243D55308();

  return sub_243D4B684(a1 & 1, v2);
}

unint64_t sub_243D4AAD0(uint64_t a1)
{
  v2 = sub_243D552D8();

  return sub_243D4B7D8(a1, v2);
}

uint64_t sub_243D4AB14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF9B0, &qword_243D5BB90);
  v39 = v4;
  result = sub_243D55158();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 168 * v20;
      if (v39)
      {
        v40 = *v22;
        v41 = *(v22 + 16);
        v48 = *(v22 + 40);
        v44 = *(v22 + 48);
        v42 = *(v22 + 56);
        v43 = *(v22 + 32);
        v45 = *(v22 + 64);
        v46 = *(v22 + 80);
        v47 = *(v22 + 96);
        v51 = *(v22 + 144);
        v49 = *(v22 + 112);
        v50 = *(v22 + 128);
        v52 = *(v22 + 160);
      }

      else
      {
        v24 = *(v22 + 16);
        v23 = *(v22 + 32);
        v54 = *v22;
        v55 = v24;
        v56 = v23;
        v25 = *(v22 + 96);
        v27 = *(v22 + 48);
        v26 = *(v22 + 64);
        v59 = *(v22 + 80);
        v60 = v25;
        v57 = v27;
        v58 = v26;
        v29 = *(v22 + 128);
        v28 = *(v22 + 144);
        v30 = *(v22 + 112);
        v64 = *(v22 + 160);
        v62 = v29;
        v63 = v28;
        v61 = v30;
        v52 = v64;
        v50 = v29;
        v51 = v28;
        v49 = v30;
        v46 = v59;
        v47 = v60;
        v45 = v58;
        v48 = *(&v56 + 1);
        v44 = v27;
        v42 = BYTE8(v27);
        v43 = v56;
        v40 = v54;
        v41 = v55;
        sub_243D39488(&v54, v53);
      }

      sub_243D552E8();
      sub_243D54ED8();

      result = sub_243D55308();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 168 * v15;
      *v16 = v40;
      *(v16 + 16) = v41;
      *(v16 + 32) = v43;
      *(v16 + 40) = v48;
      *(v16 + 48) = v44;
      *(v16 + 56) = v42;
      *(v16 + 64) = v45;
      *(v16 + 80) = v46;
      *(v16 + 96) = v47;
      *(v16 + 112) = v49;
      *(v16 + 128) = v50;
      *(v16 + 144) = v51;
      *(v16 + 160) = v52;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_243D4AF1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v40 - v12;
  v13 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v43 = v10;
  result = sub_243D55158();
  v15 = result;
  if (*(v13 + 16))
  {
    v40 = v9;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v11 + 16);
    v42 = v11;
    v22 = (v11 + 32);
    v23 = result + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(*(v13 + 48) + 8 * v28);
      v30 = *(v11 + 72);
      v31 = *(v13 + 56) + v30 * v28;
      if (v43)
      {
        (*v22)(v44, v31, v45);
      }

      else
      {
        (*v41)(v44, v31, v45);
      }

      result = sub_243D552D8();
      v32 = -1 << *(v15 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v23 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v23 + 8 * v34);
          if (v38 != -1)
          {
            v24 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v33) & ~*(v23 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v15 + 48) + 8 * v24) = v29;
      result = (*v22)(*(v15 + 56) + v30 * v24, v44, v45);
      ++*(v15 + 16);
      v11 = v42;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v9 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v13 + 32);
    v9 = v40;
    if (v39 >= 64)
    {
      bzero((v13 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v39;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
  return result;
}

unint64_t sub_243D4B268(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v11 = ~v7;
    v12 = (sub_243D550C8() + 1) & ~v7;
    do
    {
      v13 = *(a2 + 48);
      v14 = (v13 + 8 * v8);
      result = sub_243D552D8();
      v15 = result & v11;
      if (v5 >= v12)
      {
        if (v15 < v12 || v5 < v15)
        {
          goto LABEL_5;
        }
      }

      else if (v15 < v12 && v5 < v15)
      {
        goto LABEL_5;
      }

      v18 = (v13 + 8 * v5);
      if (v5 != v8 || v18 >= v14 + 1)
      {
        *v18 = *v14;
      }

      v19 = *(a2 + 56);
      v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 72);
      v21 = v20 * v5;
      result = v19 + v20 * v5;
      v22 = v20 * v8;
      v23 = v19 + v20 * v8 + v20;
      if (v21 < v22 || result >= v23)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v5 = v8;
        if (v21 == v22)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v5 = v8;
LABEL_5:
      v8 = (v8 + 1) & v11;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_243D4B424(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v11 = v7;
  v15 = *v7;
  v17 = sub_243D4AAD0(a2);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_243D4BA34(a4, a5, a6, a7);
      goto LABEL_7;
    }

    sub_243D4AF1C(v20, a3 & 1, a4, a5, a6, a7);
    v31 = sub_243D4AAD0(a2);
    if ((v21 & 1) == (v32 & 1))
    {
      v17 = v31;
      v23 = *v11;
      if (v21)
      {
        goto LABEL_8;
      }

      return sub_243D4B5D4(v17, a2, a1, v23, a4, a5);
    }

LABEL_15:
    result = sub_243D552C8();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v11;
  if ((v21 & 1) == 0)
  {
    return sub_243D4B5D4(v17, a2, a1, v23, a4, a5);
  }

LABEL_8:
  v24 = v23[7];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v26 = *(v25 - 8);
  v27 = *(v26 + 40);
  v28 = v25;
  v29 = v24 + *(v26 + 72) * v17;

  return v27(v29, a1, v28);
}

uint64_t sub_243D4B5D4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v9 = a4[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a3, v10);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

unint64_t sub_243D4B684(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x51636972656E6567;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a1)
    {
      v7 = 0xED000065646F4352;
    }

    else
    {
      v7 = 0x8000000243D5E5F0;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x51636972656E6567 : 0xD000000000000013;
      v9 = *(*(v2 + 48) + v4) ? 0xED000065646F4352 : 0x8000000243D5E5F0;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_243D552A8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_243D4B7D8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_243D4B844()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF9B0, &qword_243D5BB90);
  v2 = *v0;
  v3 = sub_243D55148();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_243D39488(&v37, v36))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + v16);
      v18 = *(v2 + 56) + 168 * v16;
      v19 = *(v18 + 96);
      v21 = *(v18 + 48);
      v20 = *(v18 + 64);
      v42 = *(v18 + 80);
      v43 = v19;
      v40 = v21;
      v41 = v20;
      v23 = *(v18 + 128);
      v22 = *(v18 + 144);
      v24 = *(v18 + 112);
      v47 = *(v18 + 160);
      v45 = v23;
      v46 = v22;
      v44 = v24;
      v26 = *(v18 + 16);
      v25 = *(v18 + 32);
      v37 = *v18;
      v38 = v26;
      v39 = v25;
      *(*(v4 + 48) + v16) = v17;
      v27 = *(v4 + 56) + 168 * v16;
      v28 = v37;
      v29 = v39;
      *(v27 + 16) = v38;
      *(v27 + 32) = v29;
      *v27 = v28;
      v30 = v40;
      v31 = v41;
      v32 = v43;
      *(v27 + 80) = v42;
      *(v27 + 96) = v32;
      *(v27 + 48) = v30;
      *(v27 + 64) = v31;
      v33 = v44;
      v34 = v45;
      v35 = v46;
      *(v27 + 160) = v47;
      *(v27 + 128) = v34;
      *(v27 + 144) = v35;
      *(v27 + 112) = v33;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_243D4BA34(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9 = *v4;
  v10 = sub_243D55148();
  v11 = v10;
  if (*(v9 + 16))
  {
    v31[0] = v7;
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, (v9 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v34 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v31[1] = v35 + 32;
    v31[2] = v35 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = *(*(v9 + 48) + 8 * v24);
        v26 = v35;
        v27 = *(v35 + 72) * v24;
        v29 = v32;
        v28 = v33;
        (*(v35 + 16))(v32, *(v9 + 56) + v27, v33);
        v30 = v34;
        *(*(v34 + 48) + 8 * v24) = v25;
        result = (*(v26 + 32))(*(v30 + 56) + v27, v29, v28);
        v19 = v36;
      }

      while (v36);
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

        v7 = v31[0];
        v11 = v34;
        goto LABEL_21;
      }

      v23 = *(v9 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v36 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v11;
  }

  return result;
}

uint64_t _s17CompanionServices12CPSXPCClientC5EventO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (v3 != 5)
  {
    if (v4 != 5 && v2 == v5)
    {
      v8 = a2[1];
      v9 = v3;
      sub_243D4C548(v2, v4);
      sub_243D4C548(v2, v3);
      sub_243D4C548(v2, v4);
      sub_243D4C548(v2, v3);
      v6 = _s17CompanionServices19CPSRequesterSessionC5EventO2eeoiySbAE_AEtFZ_0(&v9, &v8);
      sub_243D457F0(v2, v3);
      sub_243D457F0(v2, v4);
      sub_243D457F0(v2, v4);
      sub_243D457F0(v2, v3);
      return v6 & 1;
    }

LABEL_7:
    sub_243D4C548(*a2, a2[1]);
    sub_243D4C548(v2, v3);
    sub_243D457F0(v2, v3);
    sub_243D457F0(v5, v4);
    v6 = 0;
    return v6 & 1;
  }

  if (v4 != 5)
  {
    goto LABEL_7;
  }

  sub_243D457F0(*a1, 5);
  sub_243D457F0(v5, 5);
  v6 = 1;
  return v6 & 1;
}

uint64_t _s17CompanionServices12CPSXPCClientC6shared11environmentAC14CoreUtilsSwift19CUEnvironmentValuesV_tFZ_0(uint64_t a1)
{
  v2 = sub_243D54CA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EDAEC88 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_27EDAF878);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v3 + 16))(v5, a1, v2);
    type metadata accessor for CPSXPCClient(0);
    Strong = swift_allocObject();
    *(Strong + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__invalidateCalled) = 0;
    sub_243D54BF8();
    *(Strong + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__xpcConnection) = 0;
    *(Strong + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient__eventContinuations) = MEMORY[0x277D84F98];
    (*(v3 + 32))(Strong + OBJC_IVAR____TtC17CompanionServices12CPSXPCClient_environment, v5, v2);
    swift_weakAssign();
  }

  os_unfair_lock_unlock(&dword_27EDAF878);
  return Strong;
}

uint64_t sub_243D4BF6C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t type metadata accessor for CPSXPCClient(uint64_t a1)
{
  result = qword_27EDAF908;
  if (!qword_27EDAF908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243D4C004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8D0, &qword_243D5B940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243D4C074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPSXPCClientRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243D4C0D8(uint64_t a1)
{
  v2 = type metadata accessor for CPSXPCClientRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243D4C134()
{
  v1 = sub_243D54C08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for CPSXPCClientRequest(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for CPSXPCClientRequesterRequest(0);
    if (!swift_getEnumCaseMultiPayload())
    {

      v10 = v0 + v8 + *(type metadata accessor for CPSRequesterUseCaseConfiguration(0) + 20);
      v11 = type metadata accessor for CPSRequesterUseCaseConfiguration.RequesterAlternative(0);
      if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (!EnumCaseMultiPayload)
        {
LABEL_7:

          goto LABEL_8;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v13 = sub_243D54BA8();
          (*(*(v13 - 8) + 8))(v10, v13);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF8F0, &qword_243D59710);

          goto LABEL_7;
        }
      }

LABEL_8:
    }
  }

  return MEMORY[0x2821FE8E8](v0, ((((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_243D4C40C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_243D54C08() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for CPSXPCClientRequest(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = v1 + v10;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v1 + v11);

  return sub_243D47AFC(a1, v1 + v6, v1 + v9, v13, v14, v15, v3, v4);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_243D4C548(uint64_t a1, void *a2)
{
  if (a2 != 5)
  {
    return sub_243D43CF4(a2);
  }

  return result;
}

void *sub_243D4C55C@<X0>(void *a1@<X8>)
{
  sub_243D3D1D8();
  result = sub_243D54CB8();
  *a1 = v3;
  return result;
}

uint64_t sub_243D4C5B8(uint64_t a1)
{
  result = sub_243D54CA8();
  if (v2 <= 0x3F)
  {
    result = sub_243D54C08();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17CompanionServices12CPSXPCClientC5EventO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 5;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243D4C6F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 5;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243D4C754(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void *sub_243D4C7A4(void *result, unsigned int a2)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = a2 - 2147483643;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2 + 4;
  }

  return result;
}

void *sub_243D4C838(void *a1)
{
  result = sub_243D54BB8();
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t sub_243D4C874()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243D4C908()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

xpc_object_t sub_243D4C940(void *a1)
{
  result = xpc_dictionary_create_reply(a1);
  if (!result)
  {
    if (qword_27EDAEC80 != -1)
    {
      swift_once();
    }

    v2 = sub_243D54D88();
    __swift_project_value_buffer(v2, qword_27EDAF860);
    v3 = sub_243D54D68();
    v4 = sub_243D55038();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_243D1C000, v3, v4, "### XPC create reply failed", v5, 2u);
      MEMORY[0x245D50A20](v5, -1, -1);
    }

    return 0;
  }

  return result;
}

unint64_t sub_243D4CA24()
{
  result = qword_27EDAF968;
  if (!qword_27EDAF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF968);
  }

  return result;
}

uint64_t sub_243D4CA78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDAF970, &unk_243D5BB60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_243D4CAE8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_243D4CB00()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAF938, &qword_243D5BB48);
  v1 = sub_243D54F68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_243D4CBB0(uint64_t a1)
{
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDAF938, &qword_243D5BB48);
  v4 = *(sub_243D54F68() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_243D48484(a1, v5, v3);
}

uint64_t sub_243D4CC60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for CPSXPCRequesterStopInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CPSXPCRequesterStopInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t CPSXPCRequesterStartInfo.init(configuration:sessionID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_243D4CFEC(a1, a3, type metadata accessor for CPSRequesterUseCaseConfiguration);
  result = type metadata accessor for CPSXPCRequesterStartInfo(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

unint64_t CPSXPCClientRequest.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CPSXPCClientRequesterRequest(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CPSXPCClientRequest(0);
  MEMORY[0x28223BE20](v5);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243D4F94C(v1, v7, type metadata accessor for CPSXPCClientRequest);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return 0xD000000000000010;
  }

  sub_243D4CFEC(v7, v4, type metadata accessor for CPSXPCClientRequesterRequest);
  v11[0] = 0x6574736575716572;
  v11[1] = 0xEB00000000203A72;
  v8 = CPSXPCClientRequesterRequest.description.getter();
  MEMORY[0x245D4FE20](v8);

  v9 = v11[0];
  sub_243D507EC(v4, type metadata accessor for CPSXPCClientRequesterRequest);
  return v9;
}

uint64_t sub_243D4CFEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_243D4D054()
{
  if (*v0)
  {
    return 0x6574736575716572;
  }

  else
  {
    return 0x74736F6E67616964;
  }
}

uint64_t sub_243D4D098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74736F6E67616964 && a2 == 0xEA00000000006369;
  if (v6 || (sub_243D552A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xE900000000000072)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_243D552A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_243D4D184(uint64_t a1)
{
  v2 = sub_243D4F6B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D4D1C0(uint64_t a1)
{
  v2 = sub_243D4F6B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D4D1FC(uint64_t a1)
{
  v2 = sub_243D4F760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D4D238(uint64_t a1)
{
  v2 = sub_243D4F760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D4D274(uint64_t a1)
{
  v2 = sub_243D4F70C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D4D2B0(uint64_t a1)
{
  v2 = sub_243D4F70C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSXPCClientRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF9C0, &qword_243D5BBD0);
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v25 = &v20 - v3;
  v23 = type metadata accessor for CPSXPCClientRequesterRequest(0);
  MEMORY[0x28223BE20](v23);
  v24 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF9C8, &qword_243D5BBD8);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for CPSXPCClientRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAF9D0, &qword_243D5BBE0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D4F6B8();
  sub_243D55338();
  sub_243D4F94C(v28, v10, type metadata accessor for CPSXPCClientRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v24;
    sub_243D4CFEC(v10, v24, type metadata accessor for CPSXPCClientRequesterRequest);
    v30 = 1;
    sub_243D4F70C();
    v16 = v25;
    sub_243D55218();
    sub_243D4F808(&qword_27EDAF9E8, type metadata accessor for CPSXPCClientRequesterRequest, &protocol conformance descriptor for CPSXPCClientRequesterRequest);
    v17 = v27;
    sub_243D55268();
    (*(v26 + 8))(v16, v17);
    sub_243D507EC(v15, type metadata accessor for CPSXPCClientRequesterRequest);
  }

  else
  {
    v29 = 0;
    sub_243D4F760();
    sub_243D55218();
    sub_243D4F7B4();
    v19 = v22;
    sub_243D55268();
    (*(v21 + 8))(v7, v19);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t CPSXPCClientRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA00, &qword_243D5BBE8);
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  MEMORY[0x28223BE20](v3);
  v51 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA08, &qword_243D5BBF0);
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA10, &unk_243D5BBF8);
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = type metadata accessor for CPSXPCClientRequest(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v41 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  v21 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_243D4F6B8();
  v22 = v53;
  sub_243D55328();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  v42 = v18;
  v43 = v20;
  v53 = v8;
  v44 = v15;
  v23 = v51;
  v24 = v52;
  v26 = v49;
  v25 = v50;
  v27 = sub_243D55208();
  v28 = (2 * *(v27 + 16)) | 1;
  v55 = v27;
  v56 = v27 + 32;
  v57 = 0;
  v58 = v28;
  v29 = sub_243D2ABDC();
  if (v29 == 2 || v57 != v58 >> 1)
  {
    v33 = sub_243D55108();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAECE0, &qword_243D57560);
    *v35 = v12;
    sub_243D55198();
    sub_243D550F8();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
    swift_willThrow();
    (*(v26 + 8))(v11, v25);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  if (v29)
  {
    v59 = 1;
    sub_243D4F70C();
    sub_243D55188();
    v30 = v24;
    v53 = v12;
    type metadata accessor for CPSXPCClientRequesterRequest(0);
    sub_243D4F808(&qword_27EDAFA18, type metadata accessor for CPSXPCClientRequesterRequest, &protocol conformance descriptor for CPSXPCClientRequesterRequest);
    v31 = v44;
    v32 = v47;
    sub_243D551E8();
    (*(v48 + 8))(v23, v32);
    (*(v26 + 8))(v11, v25);
    swift_unknownObjectRelease();
    v51 = 0;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v59 = 0;
    sub_243D4F760();
    v37 = v53;
    sub_243D55188();
    v30 = v24;
    sub_243D4F850();
    v38 = v46;
    sub_243D551E8();
    v51 = 0;
    (*(v45 + 8))(v37, v38);
    (*(v26 + 8))(v11, v25);
    swift_unknownObjectRelease();
    v39 = v42;
    swift_storeEnumTagMultiPayload();
    v31 = v39;
  }

  v40 = v43;
  sub_243D4CFEC(v31, v43, type metadata accessor for CPSXPCClientRequest);
  sub_243D4CFEC(v40, v30, type metadata accessor for CPSXPCClientRequest);
  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_243D4DE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 2003789939 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_243D552A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_243D4DE94(uint64_t a1)
{
  v2 = sub_243D4F8A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D4DED0(uint64_t a1)
{
  v2 = sub_243D4F8A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D4DF0C(uint64_t a1)
{
  v2 = sub_243D4F8F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D4DF48(uint64_t a1)
{
  v2 = sub_243D4F8F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSXPCClientDiagnosticRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA28, &qword_243D5BC08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA30, &qword_243D5BC10);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D4F8A4();
  sub_243D55338();
  sub_243D4F8F8();
  sub_243D55218();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t CPSXPCClientDiagnosticRequest.hashValue.getter()
{
  sub_243D552E8();
  MEMORY[0x245D50230](0);
  return sub_243D55308();
}

uint64_t CPSXPCClientDiagnosticRequest.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA48, &qword_243D5BC18);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA50, &qword_243D5BC20);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D4F8A4();
  sub_243D55328();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_243D55208();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_243D2ABE0() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_243D55108();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAECE0, &qword_243D57560);
    *v16 = &type metadata for CPSXPCClientDiagnosticRequest;
    sub_243D55198();
    sub_243D550F8();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_243D4F8F8();
  sub_243D55188();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_243D4E52C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA28, &qword_243D5BC08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA30, &qword_243D5BC10);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D4F8A4();
  sub_243D55338();
  sub_243D4F8F8();
  sub_243D55218();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t CPSXPCClientRequesterRequest.description.getter()
{
  v1 = v0;
  started = type metadata accessor for CPSXPCRequesterStartInfo(0);
  MEMORY[0x28223BE20](started);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CPSXPCClientRequesterRequest(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_243D4F94C(v1, v7, type metadata accessor for CPSXPCClientRequesterRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    v18 = 0;
    v19 = 0xE000000000000000;
    MEMORY[0x245D4FE20](0x203A706F7473, 0xE600000000000000);
    v16 = 1029990771;
    v17 = 0xE400000000000000;
    v15 = v8;
    v9 = sub_243D55288();
    MEMORY[0x245D4FE20](v9);

    MEMORY[0x245D4FE20](v16, v17);

    return v18;
  }

  else
  {
    sub_243D4CFEC(v7, v4, type metadata accessor for CPSXPCRequesterStartInfo);
    v18 = 0x203A7472617473;
    v19 = 0xE700000000000000;
    v16 = 1029990771;
    v17 = 0xE400000000000000;
    v15 = *&v4[*(started + 20)];
    v11 = sub_243D55288();
    MEMORY[0x245D4FE20](v11);

    MEMORY[0x245D4FE20](8236, 0xE200000000000000);
    v12 = CPSRequesterUseCaseConfiguration.description.getter();
    MEMORY[0x245D4FE20](v12);

    MEMORY[0x245D4FE20](v16, v17);

    v10 = v18;
    sub_243D507EC(v4, type metadata accessor for CPSXPCRequesterStartInfo);
  }

  return v10;
}

uint64_t sub_243D4E96C()
{
  if (*v0)
  {
    return 1886352499;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_243D4E99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_243D552A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1886352499 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_243D552A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_243D4EA74(uint64_t a1)
{
  v2 = sub_243D5084C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D4EAB0(uint64_t a1)
{
  v2 = sub_243D5084C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D4EAEC(uint64_t a1)
{
  v2 = sub_243D50948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D4EB28(uint64_t a1)
{
  v2 = sub_243D50948();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D4EB64(uint64_t a1)
{
  v2 = sub_243D508A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D4EBA0(uint64_t a1)
{
  v2 = sub_243D508A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSXPCClientRequesterRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA58, &qword_243D5BC28);
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v23 = &started - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA60, &qword_243D5BC30);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v22 = &started - v5;
  started = type metadata accessor for CPSXPCRequesterStartInfo(0);
  MEMORY[0x28223BE20](started);
  v7 = &started - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CPSXPCClientRequesterRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&started - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA68, &qword_243D5BC38);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &started - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D5084C();
  sub_243D55338();
  sub_243D4F94C(v28, v10, type metadata accessor for CPSXPCClientRequesterRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v10;
    v31 = 1;
    sub_243D508A0();
    v16 = v23;
    sub_243D55218();
    v29 = v15;
    sub_243D508F4();
    v17 = v27;
    sub_243D55268();
    (*(v26 + 8))(v16, v17);
  }

  else
  {
    sub_243D4CFEC(v10, v7, type metadata accessor for CPSXPCRequesterStartInfo);
    v30 = 0;
    sub_243D50948();
    v18 = v22;
    sub_243D55218();
    sub_243D4F808(&qword_27EDAFA90, type metadata accessor for CPSXPCRequesterStartInfo, &protocol conformance descriptor for CPSXPCRequesterStartInfo);
    v19 = v25;
    sub_243D55268();
    (*(v24 + 8))(v18, v19);
    sub_243D507EC(v7, type metadata accessor for CPSXPCRequesterStartInfo);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t CPSXPCClientRequesterRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFA98, &qword_243D5BC40);
  v46 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v47 = &v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFAA0, &qword_243D5BC48);
  v5 = *(v4 - 8);
  v44 = v4;
  v45 = v5;
  MEMORY[0x28223BE20](v4);
  v49 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFAA8, &qword_243D5BC50);
  v48 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = type metadata accessor for CPSXPCClientRequesterRequest(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v41 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v19 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_243D5084C();
  v20 = v51;
  sub_243D55328();
  if (!v20)
  {
    v41 = v13;
    v42 = v18;
    v51 = v16;
    v22 = v48;
    v21 = v49;
    v23 = v50;
    v24 = sub_243D55208();
    v25 = (2 * *(v24 + 16)) | 1;
    v53 = v24;
    v54 = v24 + 32;
    v55 = 0;
    v56 = v25;
    v26 = sub_243D2ABDC();
    v27 = v7;
    if (v26 == 2 || v55 != v56 >> 1)
    {
      v34 = sub_243D55108();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAECE0, &qword_243D57560);
      *v36 = v10;
      sub_243D55198();
      sub_243D550F8();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v22 + 8))(v9, v7);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v26)
      {
        LOBYTE(v57) = 1;
        sub_243D508A0();
        v28 = v47;
        sub_243D55188();
        v29 = v23;
        sub_243D5099C();
        v30 = v43;
        sub_243D551E8();
        (*(v46 + 8))(v28, v30);
        (*(v22 + 8))(v9, v27);
        swift_unknownObjectRelease();
        v31 = v41;
        *v41 = v57;
        swift_storeEnumTagMultiPayload();
        v32 = v31;
        v33 = v42;
        sub_243D4CFEC(v32, v42, type metadata accessor for CPSXPCClientRequesterRequest);
      }

      else
      {
        LOBYTE(v57) = 0;
        sub_243D50948();
        v38 = v21;
        sub_243D55188();
        type metadata accessor for CPSXPCRequesterStartInfo(0);
        sub_243D4F808(&qword_27EDAFAB8, type metadata accessor for CPSXPCRequesterStartInfo, &protocol conformance descriptor for CPSXPCRequesterStartInfo);
        v39 = v51;
        v40 = v44;
        sub_243D551E8();
        (*(v45 + 8))(v38, v40);
        (*(v22 + 8))(v9, v27);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v33 = v42;
        sub_243D4CFEC(v39, v42, type metadata accessor for CPSXPCClientRequesterRequest);
        v29 = v50;
      }

      sub_243D4CFEC(v33, v29, type metadata accessor for CPSXPCClientRequesterRequest);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

unint64_t sub_243D4F6B8()
{
  result = qword_27EDAF9D8;
  if (!qword_27EDAF9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF9D8);
  }

  return result;
}

unint64_t sub_243D4F70C()
{
  result = qword_27EDAF9E0;
  if (!qword_27EDAF9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF9E0);
  }

  return result;
}

unint64_t sub_243D4F760()
{
  result = qword_27EDAF9F0;
  if (!qword_27EDAF9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF9F0);
  }

  return result;
}

unint64_t sub_243D4F7B4()
{
  result = qword_27EDAF9F8;
  if (!qword_27EDAF9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAF9F8);
  }

  return result;
}

uint64_t sub_243D4F808(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_243D4F850()
{
  result = qword_27EDAFA20;
  if (!qword_27EDAFA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFA20);
  }

  return result;
}

unint64_t sub_243D4F8A4()
{
  result = qword_27EDAFA38;
  if (!qword_27EDAFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFA38);
  }

  return result;
}

unint64_t sub_243D4F8F8()
{
  result = qword_27EDAFA40;
  if (!qword_27EDAFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFA40);
  }

  return result;
}

uint64_t sub_243D4F94C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t CPSXPCRequesterStartInfo.description.getter()
{
  type metadata accessor for CPSXPCRequesterStartInfo(0);
  v0 = sub_243D55288();
  MEMORY[0x245D4FE20](v0);

  MEMORY[0x245D4FE20](8236, 0xE200000000000000);
  v1 = CPSRequesterUseCaseConfiguration.description.getter();
  MEMORY[0x245D4FE20](v1);

  return 1029990771;
}

uint64_t sub_243D4FABC()
{
  if (*v0)
  {
    return 0x496E6F6973736573;
  }

  else
  {
    return 0x72756769666E6F63;
  }
}

uint64_t sub_243D4FB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v6 || (sub_243D552A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_243D552A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_243D4FBF4(uint64_t a1)
{
  v2 = sub_243D509F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D4FC30(uint64_t a1)
{
  v2 = sub_243D509F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSXPCRequesterStartInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFAC0, &qword_243D5BC58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D509F0();
  sub_243D55338();
  v8[15] = 0;
  type metadata accessor for CPSRequesterUseCaseConfiguration(0);
  sub_243D4F808(&qword_27EDAF2B0, type metadata accessor for CPSRequesterUseCaseConfiguration, &protocol conformance descriptor for CPSRequesterUseCaseConfiguration);
  sub_243D55268();
  if (!v1)
  {
    type metadata accessor for CPSXPCRequesterStartInfo(0);
    v8[14] = 1;
    sub_243D55278();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t CPSXPCRequesterStartInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for CPSRequesterUseCaseConfiguration(0);
  MEMORY[0x28223BE20](v4);
  v20 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFAD0, &qword_243D5BC60);
  v18 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v18 - v6;
  started = type metadata accessor for CPSXPCRequesterStartInfo(0);
  MEMORY[0x28223BE20](started);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D509F0();
  sub_243D55328();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v10;
  v12 = v18;
  v13 = v19;
  v23 = 0;
  sub_243D4F808(&qword_27EDAF2C0, type metadata accessor for CPSRequesterUseCaseConfiguration, &protocol conformance descriptor for CPSRequesterUseCaseConfiguration);
  sub_243D551E8();
  v14 = v11;
  sub_243D4CFEC(v20, v11, type metadata accessor for CPSRequesterUseCaseConfiguration);
  v22 = 1;
  v15 = v21;
  v16 = sub_243D551F8();
  (*(v12 + 8))(v7, v15);
  *(v14 + *(started + 20)) = v16;
  sub_243D4F94C(v14, v13, type metadata accessor for CPSXPCRequesterStartInfo);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_243D507EC(v14, type metadata accessor for CPSXPCRequesterStartInfo);
}

uint64_t sub_243D50164()
{
  v0 = sub_243D55288();
  MEMORY[0x245D4FE20](v0);

  MEMORY[0x245D4FE20](8236, 0xE200000000000000);
  v1 = CPSRequesterUseCaseConfiguration.description.getter();
  MEMORY[0x245D4FE20](v1);

  return 1029990771;
}

uint64_t CPSXPCRequesterStopInfo.description.getter()
{
  v0 = sub_243D55288();
  MEMORY[0x245D4FE20](v0);

  return 1029990771;
}

uint64_t sub_243D5029C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_243D552A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_243D5032C(uint64_t a1)
{
  v2 = sub_243D50A44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D50368(uint64_t a1)
{
  v2 = sub_243D50A44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSXPCRequesterStopInfo.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFAD8, &qword_243D5BC68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D50A44();
  sub_243D55338();
  sub_243D55278();
  return (*(v3 + 8))(v5, v2);
}

uint64_t CPSXPCRequesterStopInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFAE8, &qword_243D5BC70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D50A44();
  sub_243D55328();
  if (!v2)
  {
    v9 = sub_243D551F8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_243D50648(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFAD8, &qword_243D5BC68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D50A44();
  sub_243D55338();
  sub_243D55278();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_243D50780()
{
  v0 = sub_243D55288();
  MEMORY[0x245D4FE20](v0);

  return 1029990771;
}

uint64_t sub_243D507EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_243D5084C()
{
  result = qword_27EDAFA70;
  if (!qword_27EDAFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFA70);
  }

  return result;
}

unint64_t sub_243D508A0()
{
  result = qword_27EDAFA78;
  if (!qword_27EDAFA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFA78);
  }

  return result;
}

unint64_t sub_243D508F4()
{
  result = qword_27EDAFA80;
  if (!qword_27EDAFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFA80);
  }

  return result;
}

unint64_t sub_243D50948()
{
  result = qword_27EDAFA88;
  if (!qword_27EDAFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFA88);
  }

  return result;
}

unint64_t sub_243D5099C()
{
  result = qword_27EDAFAB0;
  if (!qword_27EDAFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFAB0);
  }

  return result;
}

unint64_t sub_243D509F0()
{
  result = qword_27EDAFAC8;
  if (!qword_27EDAFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFAC8);
  }

  return result;
}

unint64_t sub_243D50A44()
{
  result = qword_27EDAFAE0;
  if (!qword_27EDAFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFAE0);
  }

  return result;
}

unint64_t CPSXPCServerRequest.description.getter()
{
  sub_243D550E8();

  v0 = sub_243D55288();
  MEMORY[0x245D4FE20](v0);

  MEMORY[0x245D4FE20](8236, 0xE200000000000000);
  v1 = CPSRequesterSession.Event.description.getter();
  MEMORY[0x245D4FE20](v1);

  return 0xD000000000000014;
}

uint64_t sub_243D50B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574736575716572 && a2 == 0xEE00746E65764572)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_243D552A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_243D50C18(uint64_t a1)
{
  v2 = sub_243D51074();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D50C54(uint64_t a1)
{
  v2 = sub_243D51074();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243D50C90()
{
  if (*v0)
  {
    return 0x746E657665;
  }

  else
  {
    return 0x496E6F6973736573;
  }
}

uint64_t sub_243D50CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v6 || (sub_243D552A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E657665 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_243D552A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_243D50DAC(uint64_t a1)
{
  v2 = sub_243D510C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D50DE8(uint64_t a1)
{
  v2 = sub_243D510C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSXPCServerRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFAF0, &qword_243D5BC78);
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFAF8, &qword_243D5BC80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - v8;
  v17[0] = *(v1 + 8);
  v10 = a1[3];
  v11 = a1;
  v12 = v3;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_243D51074();
  sub_243D55338();
  sub_243D510C8();
  sub_243D55218();
  v21 = 0;
  v15 = v17[1];
  sub_243D55278();
  if (!v15)
  {
    v19 = v17[0];
    v20 = 1;
    sub_243D5111C();
    sub_243D55268();
  }

  (*(v18 + 8))(v5, v12);
  return (*(v7 + 8))(v9, v14);
}

unint64_t sub_243D51074()
{
  result = qword_27EDAFB00;
  if (!qword_27EDAFB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFB00);
  }

  return result;
}

unint64_t sub_243D510C8()
{
  result = qword_27EDAFB08;
  if (!qword_27EDAFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFB08);
  }

  return result;
}

unint64_t sub_243D5111C()
{
  result = qword_27EDAFB10;
  if (!qword_27EDAFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFB10);
  }

  return result;
}

uint64_t CPSXPCServerRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFB18, &qword_243D5BC88);
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFB20, &qword_243D5BC90);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_243D51074();
  sub_243D55328();
  if (!v2)
  {
    v12 = v25;
    v13 = v8;
    v14 = sub_243D55208();
    v15 = (2 * *(v14 + 16)) | 1;
    v28 = v14;
    v29 = v14 + 32;
    v30 = 0;
    v31 = v15;
    if ((sub_243D2ABE0() & 1) != 0 || v30 != v31 >> 1)
    {
      v16 = sub_243D55108();
      swift_allocError();
      v17 = v7;
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAECE0, &qword_243D57560);
      *v19 = &type metadata for CPSXPCServerRequest;
      sub_243D55198();
      sub_243D550F8();
      (*(*(v16 - 8) + 104))(v19, *MEMORY[0x277D84160], v16);
      swift_willThrow();
      (*(v13 + 8))(v10, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_243D510C8();
      sub_243D55188();
      LOBYTE(v32) = 0;
      v21 = sub_243D551F8();
      v27 = 1;
      sub_243D5153C();
      sub_243D551E8();
      (*(v12 + 8))(v6, v4);
      (*(v13 + 8))(v10, v7);
      swift_unknownObjectRelease();
      v22 = v32;
      v23 = v24;
      *v24 = v21;
      v23[1] = v22;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

unint64_t sub_243D5153C()
{
  result = qword_27EDAFB28;
  if (!qword_27EDAFB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFB28);
  }

  return result;
}

uint64_t sub_243D515C8(uint64_t a1)
{
  v2 = sub_243D51754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D51604(uint64_t a1)
{
  v2 = sub_243D51754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSXPCAckReply.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFB30, &qword_243D5BC98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D51754();
  sub_243D55338();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_243D51754()
{
  result = qword_27EDAFB38;
  if (!qword_27EDAFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFB38);
  }

  return result;
}

uint64_t sub_243D517D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFB30, &qword_243D5BC98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D51754();
  sub_243D55338();
  return (*(v3 + 8))(v5, v2);
}

uint64_t CPSXPCShowReply.output.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_243D51930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_243D552A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_243D519B4(uint64_t a1)
{
  v2 = sub_243D51B68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243D519F0(uint64_t a1)
{
  v2 = sub_243D51B68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPSXPCShowReply.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFB40, &qword_243D5BCA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D51B68();
  sub_243D55338();
  sub_243D55248();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_243D51B68()
{
  result = qword_27EDAFB48;
  if (!qword_27EDAFB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFB48);
  }

  return result;
}

uint64_t CPSXPCShowReply.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFB50, &qword_243D5BCA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D51B68();
  sub_243D55328();
  if (!v2)
  {
    v9 = sub_243D551C8();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_243D51D34()
{
  result = qword_27EDAFB58;
  if (!qword_27EDAFB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFB58);
  }

  return result;
}

uint64_t sub_243D51DA0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDAFB40, &qword_243D5BCA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243D51B68();
  sub_243D55338();
  sub_243D55248();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_243D51EE4(uint64_t a1)
{
  result = type metadata accessor for CPSXPCClientRequesterRequest(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_243D51F60(uint64_t a1)
{
  result = type metadata accessor for CPSXPCRequesterStartInfo(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_243D51FDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPSRequesterUseCaseConfiguration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_243D5205C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPSRequesterUseCaseConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_243D520CC(uint64_t a1)
{
  result = type metadata accessor for CPSRequesterUseCaseConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_243D52150(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 5;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_243D521AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = a2 - 2147483643;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_243D52310()
{
  result = qword_27EDAFB90;
  if (!qword_27EDAFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFB90);
  }

  return result;
}

unint64_t sub_243D52368()
{
  result = qword_27EDAFB98;
  if (!qword_27EDAFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFB98);
  }

  return result;
}

unint64_t sub_243D523C0()
{
  result = qword_27EDAFBA0;
  if (!qword_27EDAFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBA0);
  }

  return result;
}

unint64_t sub_243D52418()
{
  result = qword_27EDAFBA8;
  if (!qword_27EDAFBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBA8);
  }

  return result;
}

unint64_t sub_243D52470()
{
  result = qword_27EDAFBB0;
  if (!qword_27EDAFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBB0);
  }

  return result;
}

unint64_t sub_243D524C8()
{
  result = qword_27EDAFBB8;
  if (!qword_27EDAFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBB8);
  }

  return result;
}

unint64_t sub_243D52520()
{
  result = qword_27EDAFBC0;
  if (!qword_27EDAFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBC0);
  }

  return result;
}

unint64_t sub_243D52578()
{
  result = qword_27EDAFBC8;
  if (!qword_27EDAFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBC8);
  }

  return result;
}

unint64_t sub_243D525D0()
{
  result = qword_27EDAFBD0;
  if (!qword_27EDAFBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBD0);
  }

  return result;
}

unint64_t sub_243D52628()
{
  result = qword_27EDAFBD8;
  if (!qword_27EDAFBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBD8);
  }

  return result;
}

unint64_t sub_243D52680()
{
  result = qword_27EDAFBE0;
  if (!qword_27EDAFBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBE0);
  }

  return result;
}

unint64_t sub_243D526D8()
{
  result = qword_27EDAFBE8;
  if (!qword_27EDAFBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBE8);
  }

  return result;
}

unint64_t sub_243D52730()
{
  result = qword_27EDAFBF0;
  if (!qword_27EDAFBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBF0);
  }

  return result;
}

unint64_t sub_243D52788()
{
  result = qword_27EDAFBF8;
  if (!qword_27EDAFBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFBF8);
  }

  return result;
}

unint64_t sub_243D527E0()
{
  result = qword_27EDAFC00;
  if (!qword_27EDAFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC00);
  }

  return result;
}

unint64_t sub_243D52838()
{
  result = qword_27EDAFC08;
  if (!qword_27EDAFC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC08);
  }

  return result;
}

unint64_t sub_243D52890()
{
  result = qword_27EDAFC10;
  if (!qword_27EDAFC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC10);
  }

  return result;
}

unint64_t sub_243D528E8()
{
  result = qword_27EDAFC18;
  if (!qword_27EDAFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC18);
  }

  return result;
}

unint64_t sub_243D52940()
{
  result = qword_27EDAFC20;
  if (!qword_27EDAFC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC20);
  }

  return result;
}

unint64_t sub_243D52998()
{
  result = qword_27EDAFC28;
  if (!qword_27EDAFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC28);
  }

  return result;
}

unint64_t sub_243D529F0()
{
  result = qword_27EDAFC30;
  if (!qword_27EDAFC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC30);
  }

  return result;
}

unint64_t sub_243D52A48()
{
  result = qword_27EDAFC38;
  if (!qword_27EDAFC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC38);
  }

  return result;
}

unint64_t sub_243D52AA0()
{
  result = qword_27EDAFC40;
  if (!qword_27EDAFC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC40);
  }

  return result;
}

unint64_t sub_243D52AF8()
{
  result = qword_27EDAFC48;
  if (!qword_27EDAFC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC48);
  }

  return result;
}

unint64_t sub_243D52B50()
{
  result = qword_27EDAFC50;
  if (!qword_27EDAFC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC50);
  }

  return result;
}

unint64_t sub_243D52BA8()
{
  result = qword_27EDAFC58;
  if (!qword_27EDAFC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC58);
  }

  return result;
}

unint64_t sub_243D52C00()
{
  result = qword_27EDAFC60;
  if (!qword_27EDAFC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC60);
  }

  return result;
}

unint64_t sub_243D52C58()
{
  result = qword_27EDAFC68;
  if (!qword_27EDAFC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC68);
  }

  return result;
}

unint64_t sub_243D52CB0()
{
  result = qword_27EDAFC70;
  if (!qword_27EDAFC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC70);
  }

  return result;
}

unint64_t sub_243D52D08()
{
  result = qword_27EDAFC78;
  if (!qword_27EDAFC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC78);
  }

  return result;
}

unint64_t sub_243D52D60()
{
  result = qword_27EDAFC80;
  if (!qword_27EDAFC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC80);
  }

  return result;
}

unint64_t sub_243D52DB8()
{
  result = qword_27EDAFC88;
  if (!qword_27EDAFC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC88);
  }

  return result;
}

unint64_t sub_243D52E10()
{
  result = qword_27EDAFC90;
  if (!qword_27EDAFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC90);
  }

  return result;
}

unint64_t sub_243D52E68()
{
  result = qword_27EDAFC98;
  if (!qword_27EDAFC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFC98);
  }

  return result;
}

unint64_t sub_243D52EC0()
{
  result = qword_27EDAFCA0;
  if (!qword_27EDAFCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFCA0);
  }

  return result;
}

unint64_t sub_243D52F18()
{
  result = qword_27EDAFCA8;
  if (!qword_27EDAFCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFCA8);
  }

  return result;
}

unint64_t sub_243D52F70()
{
  result = qword_27EDAFCB0;
  if (!qword_27EDAFCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFCB0);
  }

  return result;
}

unint64_t sub_243D52FC8()
{
  result = qword_27EDAFCB8;
  if (!qword_27EDAFCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFCB8);
  }

  return result;
}

unint64_t sub_243D53020()
{
  result = qword_27EDAFCC0;
  if (!qword_27EDAFCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFCC0);
  }

  return result;
}

unint64_t sub_243D53078()
{
  result = qword_27EDAFCC8;
  if (!qword_27EDAFCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDAFCC8);
  }

  return result;
}