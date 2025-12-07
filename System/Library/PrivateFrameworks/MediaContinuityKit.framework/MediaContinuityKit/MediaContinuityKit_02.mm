uint64_t sub_2584909A4()
{
  v1 = *(*v0 + 488);

  return MEMORY[0x2822009F8](sub_258490AB4, v1, 0);
}

uint64_t sub_258490AB4()
{
  v1 = swift_task_alloc();
  *(v0 + 552) = v1;
  *v1 = v0;
  v1[1] = sub_258490B64;

  return sub_2584A1618();
}

uint64_t sub_258490B64()
{
  v1 = *(*v0 + 488);

  return MEMORY[0x2822009F8](sub_258490C74, v1, 0);
}

uint64_t sub_258490C74()
{
  v1 = *(v0 + 488);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_coexSession;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v2, v0 + 96, &qword_27F930358, &qword_258537A88);
  if (*(v0 + 120))
  {
    sub_258464C30(v0 + 96, v0 + 256);
    sub_258465168(v0 + 96, &qword_27F930358, &qword_258537A88);
    __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
    v3 = swift_task_alloc();
    *(v0 + 560) = v3;
    *v3 = v0;
    v3[1] = sub_25849110C;

    return sub_258469FC0();
  }

  else
  {
    sub_258465168(v0 + 96, &qword_27F930358, &qword_258537A88);
    v5 = *(v0 + 520);
    v6 = *(v0 + 496);
    v7 = *(v0 + 504);
    v8 = *(v0 + 488);
    v9 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_remoteActivationContinuation;
    swift_beginAccess();
    sub_2584AC3B8(v8 + v9, v5, &unk_27F930DB0, &qword_258536390);
    v10 = (*(v7 + 48))(v5, 1, v6);
    v11 = *(v0 + 520);
    if (v10)
    {
      sub_258465168(*(v0 + 520), &unk_27F930DB0, &qword_258536390);
    }

    else
    {
      v13 = *(v0 + 504);
      v12 = *(v0 + 512);
      v14 = *(v0 + 496);
      v15 = *(v0 + 480);
      (*(v13 + 16))(v12, *(v0 + 520), v14);
      sub_258465168(v11, &unk_27F930DB0, &qword_258536390);
      *(v0 + 464) = v15;
      v16 = v15;
      sub_25853363C();
      (*(v13 + 8))(v12, v14);
    }

    v17 = *(v0 + 488);
    if (*(v17 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventMonitor))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      sub_25853374C();

      v17 = *(v0 + 488);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930210, &qword_258537998);
    sub_2585336DC();
    v18 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask;
    if (*(v17 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930198, &qword_258537910);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      sub_25853374C();
    }

    v19 = *(v0 + 488);
    *(v17 + v18) = 0;

    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    v20 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizer;
    swift_beginAccess();
    sub_2584AC5D0(v0 + 136, v19 + v20, &qword_27F930340, &qword_258537A68);
    swift_endAccess();
    v21 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeat;
    swift_beginAccess();
    sub_2584AC3B8(v19 + v21, v0 + 176, &qword_27F930348, &qword_258537A70);
    if (*(v0 + 200))
    {
      sub_258464C30(v0 + 176, v0 + 216);
      sub_258465168(v0 + 176, &qword_27F930348, &qword_258537A70);
      __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
      sub_258510D54();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
    }

    else
    {
      sub_258465168(v0 + 176, &qword_27F930348, &qword_258537A70);
    }

    __swift_project_boxed_opaque_existential_1((*(v0 + 488) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider), *(*(v0 + 488) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider + 24));
    v22 = swift_task_alloc();
    *(v0 + 576) = v22;
    *v22 = v0;
    v22[1] = sub_258491AE8;

    return sub_2584FF510();
  }
}

uint64_t sub_25849110C()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  v3 = *(v2 + 488);
  if (v0)
  {
    v4 = sub_2584915DC;
  }

  else
  {
    v4 = sub_258491238;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258491238()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
  v1 = *(v0 + 520);
  v2 = *(v0 + 496);
  v3 = *(v0 + 504);
  v4 = *(v0 + 488);
  v5 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_remoteActivationContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v4 + v5, v1, &unk_27F930DB0, &qword_258536390);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_258465168(*(v0 + 520), &unk_27F930DB0, &qword_258536390);
  }

  else
  {
    v6 = *(v0 + 520);
    v8 = *(v0 + 504);
    v7 = *(v0 + 512);
    v9 = *(v0 + 496);
    v10 = *(v0 + 480);
    (*(v8 + 16))(v7, v6, v9);
    sub_258465168(v6, &unk_27F930DB0, &qword_258536390);
    *(v0 + 464) = v10;
    v11 = v10;
    sub_25853363C();
    (*(v8 + 8))(v7, v9);
  }

  v12 = *(v0 + 488);
  if (*(v12 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventMonitor))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();

    v12 = *(v0 + 488);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930210, &qword_258537998);
  sub_2585336DC();
  v13 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask;
  if (*(v12 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930198, &qword_258537910);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();
  }

  v14 = *(v0 + 488);
  *(v12 + v13) = 0;

  *(v0 + 168) = 0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  v15 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizer;
  swift_beginAccess();
  sub_2584AC5D0(v0 + 136, v14 + v15, &qword_27F930340, &qword_258537A68);
  swift_endAccess();
  v16 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeat;
  swift_beginAccess();
  sub_2584AC3B8(v14 + v16, v0 + 176, &qword_27F930348, &qword_258537A70);
  if (*(v0 + 200))
  {
    sub_258464C30(v0 + 176, v0 + 216);
    sub_258465168(v0 + 176, &qword_27F930348, &qword_258537A70);
    __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
    sub_258510D54();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
  }

  else
  {
    sub_258465168(v0 + 176, &qword_27F930348, &qword_258537A70);
  }

  __swift_project_boxed_opaque_existential_1((*(v0 + 488) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider), *(*(v0 + 488) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider + 24));
  v17 = swift_task_alloc();
  *(v0 + 576) = v17;
  *v17 = v0;
  v17[1] = sub_258491AE8;

  return sub_2584FF510();
}

uint64_t sub_2584915DC()
{
  v34 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 568);
  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93CFA8);
  v3 = v1;
  v4 = sub_258532A2C();
  v5 = sub_2585338CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 568);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v8 = 136315138;
    *(v0 + 472) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    v11 = sub_25853347C();
    v13 = sub_2584713B0(v11, v12, &v33);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_25845E000, v4, v5, "Failed to stop coex sesion, error=%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x259C82900](v9, -1, -1);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 520);
  v15 = *(v0 + 496);
  v16 = *(v0 + 504);
  v17 = *(v0 + 488);
  v18 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_remoteActivationContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v17 + v18, v14, &unk_27F930DB0, &qword_258536390);
  v19 = (*(v16 + 48))(v14, 1, v15);
  v20 = *(v0 + 520);
  if (v19)
  {
    sub_258465168(*(v0 + 520), &unk_27F930DB0, &qword_258536390);
  }

  else
  {
    v22 = *(v0 + 504);
    v21 = *(v0 + 512);
    v23 = *(v0 + 496);
    v24 = *(v0 + 480);
    (*(v22 + 16))(v21, *(v0 + 520), v23);
    sub_258465168(v20, &unk_27F930DB0, &qword_258536390);
    *(v0 + 464) = v24;
    v25 = v24;
    sub_25853363C();
    (*(v22 + 8))(v21, v23);
  }

  v26 = *(v0 + 488);
  if (*(v26 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventMonitor))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();

    v26 = *(v0 + 488);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930210, &qword_258537998);
  sub_2585336DC();
  v27 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask;
  if (*(v26 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930198, &qword_258537910);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();
  }

  v28 = *(v0 + 488);
  *(v26 + v27) = 0;

  *(v0 + 168) = 0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  v29 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizer;
  swift_beginAccess();
  sub_2584AC5D0(v0 + 136, v28 + v29, &qword_27F930340, &qword_258537A68);
  swift_endAccess();
  v30 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeat;
  swift_beginAccess();
  sub_2584AC3B8(v28 + v30, v0 + 176, &qword_27F930348, &qword_258537A70);
  if (*(v0 + 200))
  {
    sub_258464C30(v0 + 176, v0 + 216);
    sub_258465168(v0 + 176, &qword_27F930348, &qword_258537A70);
    __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
    sub_258510D54();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
  }

  else
  {
    sub_258465168(v0 + 176, &qword_27F930348, &qword_258537A70);
  }

  __swift_project_boxed_opaque_existential_1((*(v0 + 488) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider), *(*(v0 + 488) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider + 24));
  v31 = swift_task_alloc();
  *(v0 + 576) = v31;
  *v31 = v0;
  v31[1] = sub_258491AE8;

  return sub_2584FF510();
}

uint64_t sub_258491AE8()
{
  v2 = *v1;
  v2[73] = v0;

  if (v0)
  {
    v3 = v2[61];

    return MEMORY[0x2822009F8](sub_258491C30, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_258491C30()
{
  v17 = v0;
  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v1 = v0[73];
  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93D038);
  v3 = v1;
  v4 = sub_258532A2C();
  v5 = sub_2585338CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[73];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[57] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    v11 = sub_25853347C();
    v13 = sub_2584713B0(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_25845E000, v4, v5, "Failed to invalidate telemetry provider: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x259C82900](v9, -1, -1);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_258491E14(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = type metadata accessor for SessionMessage(0);
  v2[18] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303A8, &unk_258537F60);
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258491F10, v1, 0);
}

uint64_t sub_258491F10()
{
  v33 = v0;
  v1 = *(v0 + 128);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state) > 2u)
  {

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 120);
    v4 = sub_258532A4C();
    __swift_project_value_buffer(v4, qword_27F93CFA8);

    v5 = v3;
    v6 = sub_258532A2C();
    v7 = sub_2585338CC();

    if (os_log_type_enabled(v6, v7))
    {
      v31 = *(v0 + 120);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v32[0] = v10;
      *v8 = 136315394;
      sub_258533B8C();

      v32[1] = 0xD000000000000017;
      v32[2] = 0x8000000258540530;
      sub_2585329BC();
      sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v11 = sub_258533DFC();
      MEMORY[0x259C81500](v11);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v12 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v32);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2112;
      v13 = v31;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v14;
      *v9 = v14;
      _os_log_impl(&dword_25845E000, v6, v7, "%s interrupted, error:%@", v8, 0x16u);
      sub_258465168(v9, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x259C82900](v10, -1, -1);
      MEMORY[0x259C82900](v8, -1, -1);
    }

    v16 = *(v0 + 160);
    v15 = *(v0 + 168);
    v17 = *(v0 + 152);
    v18 = *(v0 + 120);
    *(v1 + v2) = 4;
    *(v0 + 96) = v18;
    *(v0 + 104) = 0x8000000000000000;
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930210, &qword_258537998);
    sub_2585336CC();
    (*(v16 + 8))(v15, v17);
    if (sub_2584AA770(v18))
    {
      v20 = *(v0 + 144);
      swift_getErrorValue();
      *v20 = sub_25852F0FC(*(v0 + 80), *(v0 + 88));
      swift_storeEnumTagMultiPayload();
      v21 = swift_task_alloc();
      *(v0 + 176) = v21;
      *v21 = v0;
      v21[1] = sub_25849241C;
      v22 = *(v0 + 144);

      return sub_25849279C(v22);
    }

    else
    {
      v26 = *(v0 + 120);
      v25 = *(v0 + 128);
      *(v0 + 16) = v26;
      *(v0 + 65) = 2;
      __swift_project_boxed_opaque_existential_1((v25 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider), *(v25 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider + 24));
      v27 = off_286990988;
      v28 = v26;
      type metadata accessor for TelemetryProvider(0);
      v27(v0 + 16);
      sub_2584A57D8(v0 + 16);
      v29 = swift_task_alloc();
      *(v0 + 184) = v29;
      *v29 = v0;
      v29[1] = sub_258492670;
      v30 = *(v0 + 120);

      return sub_258490178(v30);
    }
  }
}

uint64_t sub_25849241C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 128);

  sub_2584ABB80(v1, type metadata accessor for SessionMessage);

  return MEMORY[0x2822009F8](sub_25849255C, v2, 0);
}

uint64_t sub_25849255C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  *(v0 + 16) = v2;
  *(v0 + 65) = 2;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider), *(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider + 24));
  v3 = off_286990988;
  v4 = v2;
  type metadata accessor for TelemetryProvider(0);
  v3(v0 + 16);
  sub_2584A57D8(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_258492670;
  v6 = *(v0 + 120);

  return sub_258490178(v6);
}

uint64_t sub_258492670()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25849279C(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  type metadata accessor for SessionMessage(0);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25849282C, v1, 0);
}

uint64_t sub_25849282C()
{
  v1 = *(v0 + 128) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
  swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_258464C30(v1, v0 + 16);
    if (*(v0 + 40))
    {
LABEL_3:
      sub_258464C30(v0 + 16, v0 + 56);
      if (*(v0 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      }

      v2 = *(v0 + 80);
      v3 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v2);
      v10 = (*(v3 + 80) + **(v3 + 80));
      v4 = swift_task_alloc();
      *(v0 + 144) = v4;
      *v4 = v0;
      v4[1] = sub_258492A40;
      v5 = *(v0 + 120);

      return v10(v5, v2, v3);
    }
  }

  else
  {
    v7 = *v1;
    v8 = *(v1 + 16);
    *(v0 + 48) = *(v1 + 32);
    *(v0 + 16) = v7;
    *(v0 + 32) = v8;
    if (*(v0 + 40))
    {
      goto LABEL_3;
    }
  }

  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_258492C0C;

  return MEMORY[0x282200480](250000000);
}

uint64_t sub_258492A40()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_258492D20;
  }

  else
  {
    v4 = sub_258492B6C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258492B6C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_258492C0C;

  return MEMORY[0x282200480](250000000);
}

uint64_t sub_258492C0C()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_258492D20()
{
  v20 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[15];
  v3 = sub_258532A4C();
  __swift_project_value_buffer(v3, qword_27F93CFA8);
  sub_2584AC4D0(v2, v1, type metadata accessor for SessionMessage);

  v4 = sub_258532A2C();
  v5 = sub_2585338CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[19];
  v8 = v0[17];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19[0] = v10;
    *v9 = 136315394;
    sub_258533B8C();

    v19[1] = 0xD000000000000017;
    v19[2] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v11 = sub_258533DFC();
    MEMORY[0x259C81500](v11);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v12 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v19);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = sub_2584B019C();
    v15 = v14;
    sub_2584ABB80(v8, type metadata accessor for SessionMessage);
    v16 = sub_2584713B0(v13, v15, v19);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_25845E000, v4, v5, "%s failed to send message %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v10, -1, -1);
    MEMORY[0x259C82900](v9, -1, -1);
  }

  else
  {

    sub_2584ABB80(v8, type metadata accessor for SessionMessage);
  }

  v17 = swift_task_alloc();
  v0[20] = v17;
  *v17 = v0;
  v17[1] = sub_258492C0C;

  return MEMORY[0x282200480](250000000);
}

uint64_t sub_25849307C()
{
  v1[35] = v0;
  v2 = sub_258532D2C();
  v1[36] = v2;
  v1[37] = *(v2 - 8);
  v1[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25849313C, v0, 0);
}

uint64_t sub_25849313C()
{
  v1 = *(v0 + 280);
  v2 = v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint;
  v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32);
  *(v0 + 312) = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 40);
  if (v3)
  {
    *(v0 + 320) = *(v2 + 48);

    v4 = v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
    swift_beginAccess();
    if (*(v4 + 24))
    {
      sub_258464C30(v4, v0 + 56);
    }

    else
    {
      v6 = *v4;
      v7 = *(v4 + 16);
      *(v0 + 88) = *(v4 + 32);
      *(v0 + 72) = v7;
      *(v0 + 56) = v6;
    }

    v8 = *(v0 + 80);
    *(v0 + 328) = v8;
    if (v8)
    {
      v9 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v8);
      v10 = *(v8 - 8);
      *(v0 + 336) = v10;
      *(v0 + 344) = swift_task_alloc();
      (*(v10 + 16))();
      if (*(v0 + 80))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      }

      v14 = (*(v9 + 104) + **(v9 + 104));
      v11 = swift_task_alloc();
      *(v0 + 352) = v11;
      *v11 = v0;
      v11[1] = sub_258493418;

      return v14(v0 + 16, v8, v9);
    }

    if (*(v0 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    }

    sub_2584A5730();
    swift_allocError();
    *v13 = 14;
    swift_willThrow();

    v5 = *(v0 + 8);
  }

  else
  {

    v5 = *(v0 + 8);
  }

  return v5();
}

uint64_t sub_258493418()
{
  v2 = *v1;
  v2[45] = v0;

  v3 = v2[43];
  v4 = v2[42];
  v5 = v2[41];
  if (v0)
  {
    v6 = v2[35];
    (*(v4 + 8))(v3, v5);

    v7 = sub_258493B6C;
    v8 = v6;
  }

  else
  {
    v9 = v2[35];
    (*(v4 + 8))(v3, v5);
    v7 = sub_2584935B0;
    v8 = v9;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_2584935B0()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v3 = *(v0 + 296);
    v2 = *(v0 + 304);
    v4 = *(v0 + 288);
    v5 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    (*(v5 + 8))(v1, v5);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    sub_258532D6C();
    v6 = (*(v3 + 88))(v2, v4);
    if (v6 != *MEMORY[0x277CD8CB0])
    {
      if (v6 == *MEMORY[0x277CD8CA8])
      {
        v7 = 1;
        goto LABEL_9;
      }

      if (v6 != *MEMORY[0x277CD8CB8] && v6 != *MEMORY[0x277CD8CA0] && v6 != *MEMORY[0x277CD8CC0])
      {
        (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
      }
    }

    v7 = 0;
LABEL_9:
    v12 = *(v0 + 312);
    v11 = *(v0 + 320);
    v13 = *(v0 + 280);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

    v14 = (v13 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage);
    v15 = *(v13 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage + 32);
    v16 = *(v13 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage + 33);
    v17 = type metadata accessor for MediaContinuityCoexSession.Configuration();
    v29 = v14[1];
    v30 = *v14;
    v18 = objc_allocWithZone(v17);
    v19 = &v18[OBJC_IVAR___MediaContinuityCoexSessionConfig_usage];
    *v19 = v30;
    *(v19 + 1) = v29;
    v19[32] = v15;
    v19[33] = v16;
    v20 = &v18[OBJC_IVAR___MediaContinuityCoexSessionConfig_remoteDeviceID];
    *v20 = v12;
    v20[1] = v11;
    v18[OBJC_IVAR___MediaContinuityCoexSessionConfig_interface] = v7;
    *(v0 + 264) = v18;
    *(v0 + 272) = v17;
    v21 = objc_msgSendSuper2((v0 + 264), sel_init);
    *(v0 + 368) = v21;
    v22 = type metadata accessor for MediaContinuityCoexSession(0);
    v23 = swift_allocObject();

    v24 = sub_2584A980C(v21, v13, v23);

    *(v0 + 160) = v22;
    *(v0 + 168) = &off_28698C6F8;
    *(v0 + 136) = v24;
    sub_258464C30(v0 + 136, v0 + 176);
    v25 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_coexSession;
    swift_beginAccess();
    sub_2584AC5D0(v0 + 176, v13 + v25, &qword_27F930358, &qword_258537A88);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    v26 = swift_task_alloc();
    *(v0 + 376) = v26;
    *v26 = v0;
    v26[1] = sub_258493958;

    return sub_258469268();
  }

  sub_258465168(v0 + 16, &qword_27F92FB90, &qword_258535420);
  sub_2584A5730();
  swift_allocError();
  *v8 = 14;
  swift_willThrow();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_258493958()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = sub_258493AF8;
  }

  else
  {
    v4 = sub_258493A84;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258493A84()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258493AF8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258493B6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258493BD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (a4 >= result)
  {
    if (result >= a4)
    {
      return result;
    }

    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v25 = sub_258532A4C();
    __swift_project_value_buffer(v25, qword_27F93CFA8);

    v26 = sub_258532A2C();
    v27 = sub_2585338CC();

    if (os_log_type_enabled(v26, v27))
    {
      v40 = v27;
      v28 = swift_slowAlloc();
      v44 = a5;
      v29 = swift_slowAlloc();
      v47 = v29;
      *v28 = 136315650;
      sub_258533B8C();

      sub_2585329BC();
      v42 = a6;
      sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v30 = sub_258533DFC();
      MEMORY[0x259C81500](v30);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v31 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, &v47);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      v32 = sub_2584B3D20(v9, a2, a3);
      v34 = sub_2584713B0(v32, v33, &v47);

      *(v28 + 14) = v34;
      *(v28 + 22) = 2080;
      v35 = sub_2584B3D20(a4, v44, v42);
      v37 = sub_2584713B0(v35, v36, &v47);

      *(v28 + 24) = v37;
      _os_log_impl(&dword_25845E000, v26, v40, "%s clientVersion: %s is too old, serverVersion: %s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v29, -1, -1);
      MEMORY[0x259C82900](v28, -1, -1);
    }

    v23 = 21;
  }

  else
  {
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v10 = sub_258532A4C();
    __swift_project_value_buffer(v10, qword_27F93CFA8);

    v11 = sub_258532A2C();
    v12 = sub_2585338CC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v41 = a6;
      v14 = swift_slowAlloc();
      v47 = v14;
      *v13 = 136315650;
      sub_258533B8C();

      sub_2585329BC();
      v39 = a3;
      sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v15 = sub_258533DFC();
      MEMORY[0x259C81500](v15);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v16 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, &v47);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      v17 = sub_2584B3D20(a4, a5, v41);
      v19 = sub_2584713B0(v17, v18, &v47);

      *(v13 + 14) = v19;
      *(v13 + 22) = 2080;
      v20 = sub_2584B3D20(v9, a2, v39);
      v22 = sub_2584713B0(v20, v21, &v47);

      *(v13 + 24) = v22;
      _os_log_impl(&dword_25845E000, v11, v12, "%s serverVersion: %s is too old, clientVersion: %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v14, -1, -1);
      MEMORY[0x259C82900](v13, -1, -1);
    }

    v23 = 20;
  }

  sub_2584A5730();
  swift_allocError();
  *v38 = v23;
  return swift_willThrow();
}

uint64_t MediaContinuitySession.deinit()
{
  v1 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_id;
  v2 = sub_2585329BC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  sub_25847AC44(*(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 8), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 16), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 24), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 40), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 48));
  if (*(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection));
  }

  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connectionVendor, &qword_27F9302B8, &unk_2585379D0);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_mediaStreamVendor));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendor));
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizer, &qword_27F930340, &qword_258537A68);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeatVendor));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_userDefaultsProvider));
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeat, &qword_27F930348, &qword_258537A70);

  v4 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_eventStream;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930218, &unk_2585379A0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_eventStreamContinuation;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930210, &qword_258537998);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventStream, &qword_27F930350, &unk_258537A78);

  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_remoteActivationContinuation, &unk_27F930DB0, &qword_258536390);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_coexSessionVendor));
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_coexSession, &qword_27F930358, &qword_258537A88);
  v3(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_clientSessionID, v2);
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionMigrationManager, &qword_27F930360, &unk_258537A90);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_networkPathVendor));
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath, &qword_27F92FB90, &qword_258535420);
  sub_2584A5834(*(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 8), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 16), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 24), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 32), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 40));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MediaContinuitySession.__deallocating_deinit()
{
  MediaContinuitySession.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25849449C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_id;
  v5 = sub_2585329BC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t MediaContinuitySession.description.getter()
{
  sub_258533B8C();

  sub_2585329BC();
  sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = sub_258533DFC();
  MEMORY[0x259C81500](v0);

  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0xD000000000000017;
}

unint64_t sub_258494600()
{
  sub_258533B8C();

  sub_2585329BC();
  sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = sub_258533DFC();
  MEMORY[0x259C81500](v0);

  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t MediaContinuitySession.sessionDidSuspend(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584A680C();
}

uint64_t MediaContinuitySession.sessionDidResume(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584A6A94();
}

uint64_t sub_258494828()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584A680C();
}

uint64_t sub_2584948C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584A6A94();
}

void *sub_25849497C(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[14] = sub_2584ABF5C;
  v1[15] = a1;
  v1[16] = &unk_2585382F8;
  v1[17] = a1;
  v1[18] = &unk_258538308;
  v1[19] = a1;
  v1[20] = &unk_258538318;
  v1[21] = a1;
  v1[22] = &unk_258538328;
  v1[23] = a1;
  v1[24] = &unk_258538338;
  v1[25] = a1;
  v1[26] = &unk_258538348;
  v1[27] = a1;
  swift_retain_n();
  return v1;
}

void *sub_258494A40(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[14] = sub_2584AB65C;
  v1[15] = a1;
  v1[16] = &unk_258538250;
  v1[17] = a1;
  v1[18] = &unk_258538260;
  v1[19] = a1;
  v1[20] = &unk_258538270;
  v1[21] = a1;
  v1[22] = &unk_258538280;
  v1[23] = a1;
  v1[24] = &unk_258538290;
  v1[25] = a1;
  v1[26] = &unk_2585382A0;
  v1[27] = a1;
  swift_retain_n();
  return v1;
}

uint64_t sub_258494B04(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for VideoStreamAVConference(0);
  sub_2584AC2F0(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v4 = sub_25853362C();
  v2[4] = v4;
  v2[5] = v3;

  return MEMORY[0x2822009F8](sub_258494BC0, v4, v3);
}

uint64_t sub_258494BC0()
{
  v1 = v0[3];
  if (*(v1 + 232))
  {
    sub_258476AE4();
    v2 = swift_allocError();
    v0[6] = v2;
    *v3 = 0;
    swift_willThrow();
    v4 = v2;
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_258494D58;

    return sub_258519A34(v2);
  }

  else
  {
    v7 = v0[2];
    sub_2584A4B58();
    v8 = *(v1 + 232);
    *(v1 + 232) = 1;
    sub_2585084C8(v8);
    v9 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_internalEventStream;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
    (*(*(v10 - 8) + 16))(v7, v1 + v9, v10);
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_258494D58()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_258494E78, v3, v2);
}

uint64_t sub_258494E78(uint64_t a1)
{
  v2 = *(v1 + 48);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_258494EF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_258494F0C, a2, 0);
}

uint64_t sub_258494F0C()
{
  v1 = v0[3];
  if (*(v1 + 121))
  {
    sub_258476AE4();
    v2 = swift_allocError();
    v0[4] = v2;
    *v3 = 0;
    swift_willThrow();
    v4 = v2;
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_2584950A4;

    return sub_258519188(v2);
  }

  else
  {
    v7 = v0[2];
    sub_2584A4AB4();
    v8 = *(v1 + 121);
    *(v1 + 121) = 1;
    sub_25852FFD0(v8);
    v9 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_internalEventStream;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
    (*(*(v10 - 8) + 16))(v7, v1 + v9, v10);
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_2584950A4()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_2584951B4, v1, 0);
}

uint64_t sub_2584951B4(uint64_t a1)
{
  v2 = *(v1 + 32);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_25849522C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_25849D3EC();
}

uint64_t sub_2584952D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_25849B194();
}

uint64_t sub_258495374(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258472CF8;

  return sub_2585154CC(a1);
}

uint64_t sub_258495428(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258464F5C;

  return sub_258513B98(a1);
}

uint64_t sub_2584954DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2585176A4();
}

uint64_t sub_258495580()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258464F5C;

  return sub_258516F24();
}

uint64_t sub_258495624()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_258518360();
}

uint64_t sub_2584956C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_258517F08();
}

uint64_t sub_25849576C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_258518CF0();
}

uint64_t sub_258495810()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_258518904();
}

uint64_t sub_2584958B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_258532ECC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930518, &qword_258538150);
  swift_allocObject();
  sub_258532F4C();
  sub_258532DCC();

  sub_258532DDC();

  sub_258532E3C();

  (*(v5 + 104))(v7, *MEMORY[0x277CD8E18], v4);
  sub_258532E0C();

  (*(v5 + 8))(v7, v4);
  sub_2584B8F78();

  v8 = sub_2584B9434(a2);

  return v8;
}

uint64_t sub_258495A90(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v27 = a1;
  v28 = a3;
  v26 = a2;
  v3 = sub_258532F1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25853318C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = sub_25853313C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v29 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  sub_25853312C();
  sub_25853317C();
  (*(v4 + 104))(v6, *MEMORY[0x277CD8E28], v3);
  v25 = v13;
  sub_25853316C();
  (*(v4 + 8))(v6, v3);
  v20 = *(v8 + 8);
  v20(v11, v7);
  v36 = *v26;
  v21 = v29;
  (*(v15 + 16))(v29, v19, v14);
  v34 = v21;
  (*(v8 + 16))(v11, v13, v7);
  v35 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930440, &qword_2585380A8);
  v32 = v14;
  v33 = v7;
  sub_2584ABBE0(&qword_27F930520, &qword_27F930440, &qword_2585380A8, MEMORY[0x277CD8E88]);
  v30 = MEMORY[0x277CD8F48];
  v31 = MEMORY[0x277CD8F50];
  sub_25853311C();
  v20(v25, v7);
  v22 = *(v15 + 8);
  v22(v19, v14);
  v20(v11, v7);
  return (v22)(v29, v14);
}

uint64_t sub_258495E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a1;
  v6[16] = a4;
  v9 = sub_2585328EC();
  v6[19] = v9;
  v6[20] = *(v9 - 8);
  v6[21] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303F8, &qword_258538008);
  v6[22] = v10;
  v6[23] = *(v10 - 8);
  v6[24] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930400, &qword_258538010);
  v6[25] = v11;
  v6[26] = *(v11 - 8);
  v6[27] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930408, &qword_258538018);
  v6[28] = v12;
  v6[29] = *(v12 - 8);
  v6[30] = swift_task_alloc();
  v6[12] = a2;
  v6[13] = a3;

  return MEMORY[0x2822009F8](sub_258496040, 0, 0);
}

uint64_t sub_258496040()
{
  type metadata accessor for FoundationBackedUserDefaultsProvider();
  inited = swift_initStackObject();
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_25853341C();
  v4 = [v2 initWithSuiteName_];

  *(inited + 16) = v4;
  LOBYTE(inited) = sub_2585138CC(2u, 1);

  v17 = inited;
  if (inited)
  {
    if (qword_27F92F8C0 != -1)
    {
      swift_once();
    }

    v5 = sub_258532A4C();
    __swift_project_value_buffer(v5, qword_27F93CF90);
    v6 = sub_258532A2C();
    v7 = sub_2585338CC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_25845E000, v6, v7, "------- Timeouts disabled via defaults on internal builds only -------", v8, 2u);
      MEMORY[0x259C82900](v8, -1, -1);
    }
  }

  v9 = *(v0 + 216);
  v10 = *(v0 + 200);
  v11 = *(v0 + 208);
  v12 = *(v0 + 128);
  v13 = swift_task_alloc();
  *(v13 + 16) = *(v0 + 136);
  *(v13 + 32) = v17 & 1;
  *(v13 + 40) = v0 + 96;
  *(v13 + 48) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930190, &unk_258537FF0);
  (*(v11 + 104))(v9, *MEMORY[0x277D858A0], v10);
  sub_25853385C();

  sub_2585336FC();
  v14 = swift_task_alloc();
  *(v0 + 248) = v14;
  *v14 = v0;
  v14[1] = sub_2584962F8;
  v15 = *(v0 + 176);

  return MEMORY[0x2822005A8](v0 + 56, 0, 0, v15, v0 + 112);
}

uint64_t sub_2584962F8()
{

  if (v0)
  {
    v1 = sub_2584AC7CC;
  }

  else
  {
    v1 = sub_258496408;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_258496408()
{
  v23 = v0;
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  if (*(v0 + 80) == 1)
  {
    if (qword_27F92F8C0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 160);
    v1 = *(v0 + 168);
    v3 = *(v0 + 152);
    v4 = sub_258532A4C();
    __swift_project_value_buffer(v4, qword_27F93CF90);
    sub_2585328CC();
    v5 = sub_2585328DC();
    v7 = v6;
    (*(v2 + 8))(v1, v3);

    v8 = sub_258532A2C();
    v9 = sub_2585338BC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22[0] = v11;
      *v10 = 136315650;
      v12 = sub_2584713B0(v5, v7, v22);

      *(v10 + 4) = v12;
      *(v10 + 12) = 2048;
      *(v10 + 14) = 71;
      *(v10 + 22) = 2080;
      *(v10 + 24) = sub_2584713B0(0xD000000000000029, 0x8000000258540920, v22);
      _os_log_impl(&dword_25845E000, v8, v9, "%s:%ld %s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v11, -1, -1);
      MEMORY[0x259C82900](v10, -1, -1);
    }

    else
    {
    }

    v18 = *(v0 + 232);
    v17 = *(v0 + 240);
    v19 = *(v0 + 224);
    sub_2584AA020();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    (*(v18 + 8))(v17, v19);

    v16 = *(v0 + 8);
  }

  else
  {
    v13 = *(v0 + 120);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    v14 = *(v0 + 56);
    v15 = *(v0 + 72);
    *(v13 + 32) = *(v0 + 88);
    *v13 = v14;
    *(v13 + 16) = v15;

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t sub_258496758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a1;
  v6[16] = a4;
  v9 = sub_2585328EC();
  v6[19] = v9;
  v6[20] = *(v9 - 8);
  v6[21] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930528, &qword_258538188);
  v6[22] = v10;
  v6[23] = *(v10 - 8);
  v6[24] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930530, &qword_258538190);
  v6[25] = v11;
  v6[26] = *(v11 - 8);
  v6[27] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930538, &qword_258538198);
  v6[28] = v12;
  v6[29] = *(v12 - 8);
  v6[30] = swift_task_alloc();
  v6[12] = a2;
  v6[13] = a3;

  return MEMORY[0x2822009F8](sub_258496960, 0, 0);
}

uint64_t sub_258496960()
{
  type metadata accessor for FoundationBackedUserDefaultsProvider();
  inited = swift_initStackObject();
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_25853341C();
  v4 = [v2 initWithSuiteName_];

  *(inited + 16) = v4;
  LOBYTE(inited) = sub_2585138CC(2u, 1);

  v17 = inited;
  if (inited)
  {
    if (qword_27F92F8C0 != -1)
    {
      swift_once();
    }

    v5 = sub_258532A4C();
    __swift_project_value_buffer(v5, qword_27F93CF90);
    v6 = sub_258532A2C();
    v7 = sub_2585338CC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_25845E000, v6, v7, "------- Timeouts disabled via defaults on internal builds only -------", v8, 2u);
      MEMORY[0x259C82900](v8, -1, -1);
    }
  }

  v9 = *(v0 + 216);
  v10 = *(v0 + 200);
  v11 = *(v0 + 208);
  v12 = *(v0 + 128);
  v13 = swift_task_alloc();
  *(v13 + 16) = *(v0 + 136);
  *(v13 + 32) = v17 & 1;
  *(v13 + 40) = v0 + 96;
  *(v13 + 48) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930198, &qword_258537910);
  (*(v11 + 104))(v9, *MEMORY[0x277D858A0], v10);
  sub_25853385C();

  sub_2585336FC();
  v14 = swift_task_alloc();
  *(v0 + 248) = v14;
  *v14 = v0;
  v14[1] = sub_258496C18;
  v15 = *(v0 + 176);

  return MEMORY[0x2822005A8](v0 + 56, 0, 0, v15, v0 + 112);
}

uint64_t sub_258496C18()
{

  if (v0)
  {
    v1 = sub_25849706C;
  }

  else
  {
    v1 = sub_258496D28;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_258496D28()
{
  v21 = v0;
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  if (*(v0 + 80))
  {
    v1 = *(v0 + 120);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    sub_258464C18((v0 + 56), v1);

    v2 = *(v0 + 8);
  }

  else
  {
    if (qword_27F92F8C0 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    v5 = *(v0 + 152);
    v6 = sub_258532A4C();
    __swift_project_value_buffer(v6, qword_27F93CF90);
    sub_2585328CC();
    v7 = sub_2585328DC();
    v9 = v8;
    (*(v4 + 8))(v3, v5);

    v10 = sub_258532A2C();
    v11 = sub_2585338BC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20[0] = v13;
      *v12 = 136315650;
      v14 = sub_2584713B0(v7, v9, v20);

      *(v12 + 4) = v14;
      *(v12 + 12) = 2048;
      *(v12 + 14) = 71;
      *(v12 + 22) = 2080;
      *(v12 + 24) = sub_2584713B0(0xD000000000000029, 0x8000000258540920, v20);
      _os_log_impl(&dword_25845E000, v10, v11, "%s:%ld %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v13, -1, -1);
      MEMORY[0x259C82900](v12, -1, -1);
    }

    else
    {
    }

    v16 = *(v0 + 232);
    v15 = *(v0 + 240);
    v17 = *(v0 + 224);
    sub_2584AA020();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    (*(v16 + 8))(v15, v17);

    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t sub_25849706C()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_258497134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a8;
  *(v8 + 64) = v15;
  *(v8 + 40) = a5;
  *(v8 + 48) = a7;
  *(v8 + 153) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a2;
  v9 = sub_258533C6C();
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 + 64);
  *(v8 + 96) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930418, &qword_258538020);
  *(v8 + 104) = v11;
  v12 = *(v11 - 8);
  *(v8 + 112) = v12;
  *(v8 + 120) = *(v12 + 64);
  *(v8 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584972BC, 0, 0);
}

uint64_t sub_2584972BC()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 104);
  v29 = *(v0 + 153);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v27 = *(v0 + 24);
  v24 = *(*(sub_25853368C() - 8) + 56);
  (v24)(v1, 1, 1);
  v25 = *(v3 + 16);
  v25(v2, v5, v4);
  v7 = *(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 4) = v27;
  *(v8 + 5) = v6;
  v26 = *(v3 + 32);
  v26(&v8[(v7 + 48) & ~v7], v2, v4);

  sub_258498584(v1, &unk_258538058, v8);
  sub_258465168(v1, &qword_27F92FB78, &qword_2585368F0);
  if ((v29 & 1) == 0)
  {
    v9 = *(v0 + 128);
    v28 = *(v0 + 136);
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    v12 = *(v0 + 80);
    v21 = *(v0 + 88);
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    v22 = *(v0 + 48);
    v23 = *(v0 + 56);
    v15 = *(v0 + 40);
    v24();
    (*(v12 + 16))(v11, v13, v14);
    v25(v9, v15, v10);
    v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = 0;
    *(v17 + 3) = 0;
    *(v17 + 4) = v22;
    *(v17 + 5) = v23;
    (*(v12 + 32))(&v17[v16], v11, v14);
    v26(&v17[(v21 + v7 + v16) & ~v7], v9, v10);
    sub_258498584(v28, &unk_258538068, v17);
    sub_258465168(v28, &qword_27F92FB78, &qword_2585368F0);
  }

  v18 = swift_task_alloc();
  *(v0 + 144) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930420, &qword_258538070);
  *v18 = v0;
  v18[1] = sub_25849761C;

  return MEMORY[0x2822002D0](v0 + 152, 0, 0, v19);
}

uint64_t sub_25849761C()
{

  return MEMORY[0x2822009F8](sub_2584AC7B0, 0, 0);
}

uint64_t sub_258497718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a8;
  *(v8 + 64) = v15;
  *(v8 + 40) = a5;
  *(v8 + 48) = a7;
  *(v8 + 153) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a2;
  v9 = sub_258533C6C();
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 + 64);
  *(v8 + 96) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930540, &qword_2585381A0);
  *(v8 + 104) = v11;
  v12 = *(v11 - 8);
  *(v8 + 112) = v12;
  *(v8 + 120) = *(v12 + 64);
  *(v8 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584978A0, 0, 0);
}

uint64_t sub_2584978A0()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 104);
  v29 = *(v0 + 153);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v27 = *(v0 + 24);
  v24 = *(*(sub_25853368C() - 8) + 56);
  (v24)(v1, 1, 1);
  v25 = *(v3 + 16);
  v25(v2, v5, v4);
  v7 = *(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 4) = v27;
  *(v8 + 5) = v6;
  v26 = *(v3 + 32);
  v26(&v8[(v7 + 48) & ~v7], v2, v4);

  sub_258498584(v1, &unk_2585381D8, v8);
  sub_258465168(v1, &qword_27F92FB78, &qword_2585368F0);
  if ((v29 & 1) == 0)
  {
    v9 = *(v0 + 128);
    v28 = *(v0 + 136);
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    v12 = *(v0 + 80);
    v21 = *(v0 + 88);
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    v22 = *(v0 + 48);
    v23 = *(v0 + 56);
    v15 = *(v0 + 40);
    v24();
    (*(v12 + 16))(v11, v13, v14);
    v25(v9, v15, v10);
    v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = 0;
    *(v17 + 3) = 0;
    *(v17 + 4) = v22;
    *(v17 + 5) = v23;
    (*(v12 + 32))(&v17[v16], v11, v14);
    v26(&v17[(v21 + v7 + v16) & ~v7], v9, v10);
    sub_258498584(v28, &unk_2585381E8, v17);
    sub_258465168(v28, &qword_27F92FB78, &qword_2585368F0);
  }

  v18 = swift_task_alloc();
  *(v0 + 144) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930420, &qword_258538070);
  *v18 = v0;
  v18[1] = sub_258497C00;

  return MEMORY[0x2822002D0](v0 + 152, 0, 0, v19);
}

uint64_t sub_258497C00()
{

  return MEMORY[0x2822009F8](sub_258497CFC, 0, 0);
}

uint64_t sub_258497CFC()
{
  sub_25853366C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258497D94(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930438, &qword_258538098);
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[18] = v9;
  *v9 = v6;
  v9[1] = sub_258497EF8;

  return v11(v6 + 2);
}

uint64_t sub_258497EF8()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_258498110;
  }

  else
  {
    v2 = sub_25849800C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25849800C()
{
  if (*(v0 + 40))
  {
    sub_258464C30(v0 + 16, v0 + 56);
  }

  else
  {
    v1 = *(v0 + 32);
    *(v0 + 56) = *(v0 + 16);
    *(v0 + 72) = v1;
    *(v0 + 88) = *(v0 + 48);
  }

  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930418, &qword_258538020);
  sub_2585337EC();
  (*(v3 + 8))(v2, v4);
  *(v0 + 104) = 0;
  sub_2585337FC();
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_258498110()
{
  v0[12] = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930418, &qword_258538020);
  sub_2585337FC();

  v1 = v0[1];

  return v1();
}

uint64_t sub_2584981A0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930548, &qword_2585381F8);
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[18] = v9;
  *v9 = v6;
  v9[1] = sub_258498304;

  return v11(v6 + 2);
}

uint64_t sub_258498304()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_2584984F4;
  }

  else
  {
    v2 = sub_258498418;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258498418()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_258464C30((v0 + 2), (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930540, &qword_2585381A0);
  sub_2585337EC();
  (*(v2 + 8))(v1, v3);
  v0[13] = 0;
  sub_2585337FC();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2584984F4()
{
  v0[12] = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930540, &qword_2585381A0);
  sub_2585337FC();

  v1 = v0[1];

  return v1();
}

uint64_t sub_258498584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  sub_2584AC3B8(a1, v20 - v9, &qword_27F92FB78, &qword_2585368F0);
  v11 = sub_25853368C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_258465168(v10, &qword_27F92FB78, &qword_2585368F0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_25853362C();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_25853367C();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_25849879C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  return MEMORY[0x2822009F8](sub_2584987C0, 0, 0);
}

uint64_t sub_2584987C0()
{
  v16 = v0;
  if (qword_27F92F8C0 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  v0[14] = __swift_project_value_buffer(v1, qword_27F93CF90);
  v2 = sub_258532A2C();
  v3 = sub_2585338BC();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v0[6] = v5;
    v0[7] = v4;
    v8 = sub_25853347C();
    v10 = sub_2584713B0(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25845E000, v2, v3, "Starting timeout for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_2584989B0;
  v12 = v0[11];
  v13 = v0[10];

  return sub_2584A4F40(v13, v12, 0, 0, 1);
}

uint64_t sub_2584989B0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_258498C58;
  }

  else
  {
    v2 = sub_258498AC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258498AC4(uint64_t a1)
{
  v16 = v1;
  v2 = sub_258532A2C();
  v3 = sub_2585338BC();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v1[10];
    v4 = v1[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v1[4] = v5;
    v1[5] = v4;
    v8 = sub_25853347C();
    v10 = sub_2584713B0(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25845E000, v2, v3, "Timeout occurred after %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  sub_2584AA020();
  v11 = swift_allocError();
  *v12 = 0;
  v1[9] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930418, &qword_258538020);
  sub_2585337FC();
  v13 = v1[1];

  return v13();
}

uint64_t sub_258498C58(uint64_t a1)
{
  v14 = v1;
  v2 = sub_258532A2C();
  v3 = sub_2585338BC();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v1[10];
    v4 = v1[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v1[2] = v5;
    v1[3] = v4;
    v8 = sub_25853347C();
    v10 = sub_2584713B0(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25845E000, v2, v3, "Timeout of %s cancelled", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v1[8] = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930418, &qword_258538020);
  sub_2585337FC();
  v11 = v1[1];

  return v11();
}

uint64_t sub_258498DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  return MEMORY[0x2822009F8](sub_258498DF4, 0, 0);
}

uint64_t sub_258498DF4()
{
  v16 = v0;
  if (qword_27F92F8C0 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  v0[14] = __swift_project_value_buffer(v1, qword_27F93CF90);
  v2 = sub_258532A2C();
  v3 = sub_2585338BC();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v0[6] = v5;
    v0[7] = v4;
    v8 = sub_25853347C();
    v10 = sub_2584713B0(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25845E000, v2, v3, "Starting timeout for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_258498FE4;
  v12 = v0[11];
  v13 = v0[10];

  return sub_2584A4F40(v13, v12, 0, 0, 1);
}

uint64_t sub_258498FE4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_25849928C;
  }

  else
  {
    v2 = sub_2584990F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2584990F8(uint64_t a1)
{
  v16 = v1;
  v2 = sub_258532A2C();
  v3 = sub_2585338BC();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v1[10];
    v4 = v1[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v1[4] = v5;
    v1[5] = v4;
    v8 = sub_25853347C();
    v10 = sub_2584713B0(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25845E000, v2, v3, "Timeout occurred after %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  sub_2584AA020();
  v11 = swift_allocError();
  *v12 = 0;
  v1[9] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930540, &qword_2585381A0);
  sub_2585337FC();
  v13 = v1[1];

  return v13();
}

uint64_t sub_25849928C(uint64_t a1)
{
  v14 = v1;
  v2 = sub_258532A2C();
  v3 = sub_2585338BC();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v1[10];
    v4 = v1[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v1[2] = v5;
    v1[3] = v4;
    v8 = sub_25853347C();
    v10 = sub_2584713B0(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25845E000, v2, v3, "Timeout of %s cancelled", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v1[8] = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930540, &qword_2585381A0);
  sub_2585337FC();
  v11 = v1[1];

  return v11();
}

uint64_t sub_258499404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a3;
  v57 = a1;
  v58 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9304D0, &qword_258538110);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v52 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9304D8, &qword_258538118);
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9304E0, &qword_258538120);
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v48 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9304E8, &qword_258538128);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - v13;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9304F0, &qword_258538130);
  v15 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930278, &unk_2585379C0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - v20;
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + *(*v4 + 216)) = 0;
  *(v4 + *(*v4 + 224)) = 0;
  *(v4 + *(*v4 + 232)) = 0;
  v22 = *(*v4 + 240);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  (*(*(v23 - 8) + 56))(v4 + v22, 1, 1, v23);
  *(v4 + *(*v4 + 248)) = 0;
  v24 = *(*v4 + 256);
  v25 = type metadata accessor for NetworkBackedNetworkPath(0);
  (*(*(v25 - 8) + 56))(v4 + v24, 1, 1, v25);
  if (*(v58 + 24))
  {
    v26 = 0;
    *(v4 + 176) = v57;
  }

  else
  {
    v26 = v57;
  }

  *(v4 + 128) = v26;
  sub_2584AC3B8(v58, v4 + 136, &qword_27F9304F8, &qword_258538138);
  *(v4 + 120) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303E0, &qword_258537FB0);
  (*(v12 + 104))(v14, *MEMORY[0x277D858A0], v11);

  sub_2585337BC();
  (*(v12 + 8))(v14, v11);
  (*(v19 + 32))(v4 + *(*v4 + 184), v21, v18);
  (*(v15 + 32))(v4 + *(*v4 + 192), v17, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930500, &unk_258538140);
  v28 = v55;
  v27 = v56;
  v29 = v52;
  (*(v55 + 104))(v52, *MEMORY[0x277D85778], v56);
  v30 = v48;
  v31 = v51;
  sub_25853369C();
  (*(v28 + 8))(v29, v27);
  (*(v49 + 32))(v4 + *(*v4 + 200), v30, v50);
  (*(v53 + 32))(v4 + *(*v4 + 208), v31, v54);
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v32 = sub_258532A4C();
  __swift_project_value_buffer(v32, qword_27F93CFD8);

  v33 = sub_258532A2C();
  v34 = sub_2585338EC();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v60 = v36;
    *v35 = 136315394;
    v37 = sub_258499C54();
    v39 = v38;

    v40 = sub_2584713B0(v37, v39, &v60);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    v59 = sub_258532C0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930508, &unk_25853C220);
    v41 = sub_25853347C();
    v43 = sub_2584713B0(v41, v42, &v60);

    *(v35 + 14) = v43;
    _os_log_impl(&dword_25845E000, v33, v34, "%s created with connection=%s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v36, -1, -1);
    MEMORY[0x259C82900](v35, -1, -1);
  }

  else
  {
  }

  sub_258465168(v58, &qword_27F9304F8, &qword_258538138);
  return v4;
}

uint64_t sub_258499C54()
{
  sub_258533B8C();
  MEMORY[0x259C81500](0xD00000000000001FLL, 0x8000000258540950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9304B0, &qword_258538108);
  sub_2584ABBE0(&qword_27F930510, &qword_27F9304B0, &qword_258538108, &unk_25853C130);
  sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](0x6C6565507369205DLL, 0xED00003D656C6261);
  if (*(v0 + 128))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 128))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x259C81500](v1, v2);

  return 0;
}

uint64_t sub_258499DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a2;
  v4[13] = a4;
  v4[11] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930440, &qword_2585380A8);
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = sub_258532B0C();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930448, &qword_2585380B0);
  v4[22] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930450, &qword_2585380B8);
  v4[23] = v8;
  v4[24] = *(v8 - 8);
  v4[25] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930458, &qword_2585380C0);
  v4[26] = v9;
  v4[27] = *(v9 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930460, &qword_2585380C8);
  v4[30] = v10;
  v4[31] = *(v10 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930468, &qword_2585380D0);
  v4[34] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930470, &qword_2585380D8);
  v4[35] = v11;
  v4[36] = *(v11 - 8);
  v4[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931440, &qword_2585380E0);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930478, &qword_2585380E8);
  v4[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930480, &qword_2585380F0);
  v4[42] = swift_task_alloc();
  sub_2584AA6C0(a3 + 24, (v4 + 6));

  return MEMORY[0x2822009F8](sub_25849A1E8, 0, 0);
}

uint64_t sub_25849A1E8()
{
  v1 = v0[41];
  v2 = v0[40];
  v4 = v0[17];
  v3 = v0[18];
  sub_2584AA6C0((v0 + 6), (v0 + 2));
  v5 = v0[3];
  v0[43] = v0[2];
  v0[44] = v5;
  v6 = v0[5];
  v0[45] = v0[4];
  v0[46] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930490, &qword_2585380F8);
  sub_258465D4C();
  v7 = sub_25853333C();
  (*(*(v7 - 8) + 56))(v1, 0, 1, v7);
  sub_25853319C();
  sub_25853314C();
  sub_258465168(v1, &qword_27F930478, &qword_2585380E8);
  _s7Network12NWParametersC18MediaContinuityKitE35compositorServicesBrowserParametersACvgZ_0();
  v0[47] = sub_25853325C();
  v8 = *(v3 + 56);
  v0[48] = v8;
  v0[49] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v2, 1, 1, v4);
  sub_25853326C();
  sub_25853324C();

  v9 = swift_task_alloc();
  v0[50] = v9;
  *v9 = v0;
  v9[1] = sub_25849A3F8;
  v10 = v0[34];
  v11 = v0[35];

  return MEMORY[0x2822005A8](v10, 0, 0, v11, v0 + 10);
}

uint64_t sub_25849A3F8()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_25849B010;
  }

  else
  {
    v2 = sub_25849A50C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25849A50C()
{
  v83 = v0;
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[31];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[36] + 8))(v0[37], v0[35]);
    goto LABEL_20;
  }

  (*(v3 + 32))(v0[33], v1, v2);
  if (sub_25853376C())
  {
    v5 = v0[36];
    v4 = v0[37];
    v6 = v0[35];
    (*(v0[31] + 8))(v0[33], v0[30]);
    (*(v5 + 8))(v4, v6);
    goto LABEL_20;
  }

  v7 = v0[26];
  v8 = v0[27];
  v9 = v0[22];
  (*(v0[31] + 16))(v0[32], v0[33], v0[30]);
  sub_2584ABBE0(&qword_27F9304C0, &qword_27F930460, &qword_2585380C8, MEMORY[0x277CD8D18]);
  sub_25853355C();
  sub_2584ABBE0(&qword_27F9304C8, &qword_27F930450, &qword_2585380B8, MEMORY[0x277CD8D10]);
  sub_258533A2C();
  v10 = *(v8 + 48);
  if (v10(v9, 1, v7) == 1)
  {
LABEL_6:
    v11 = v0[33];
    v12 = v0[30];
    v13 = v0[31];
    (*(v0[24] + 8))(v0[25], v0[23]);
    (*(v13 + 8))(v11, v12);
    v14 = swift_task_alloc();
    v0[50] = v14;
    *v14 = v0;
    v14[1] = sub_25849A3F8;
    v15 = v0[34];
    v16 = v0[35];

    return MEMORY[0x2822005A8](v15, 0, 0, v16, v0 + 10);
  }

  v17 = *(v0[27] + 32);
  while (1)
  {
    v21 = v0[18];
    v20 = v0[19];
    v22 = v0[17];
    v17(v0[28], v0[22], v0[26]);
    sub_25853315C();
    v23 = sub_258532AFC();
    v25 = v24;
    (*(v21 + 8))(v20, v22);
    if (!v25)
    {
      goto LABEL_10;
    }

    if (v23 == v0[45] && v25 == v0[46])
    {
      break;
    }

    v27 = sub_258533E2C();

    if (v27)
    {
      goto LABEL_19;
    }

LABEL_10:
    v18 = v0[26];
    v19 = v0[22];
    (*(v0[27] + 8))(v0[28], v18);
    sub_258533A2C();
    if (v10(v19, 1, v18) == 1)
    {
      goto LABEL_6;
    }
  }

LABEL_19:
  v81 = v0[48];
  v28 = v0[38];
  v29 = v0[36];
  v77 = v0[35];
  v78 = v0[37];
  v30 = v0[31];
  v75 = v0[30];
  v76 = v0[33];
  v32 = v0[28];
  v31 = v0[29];
  v34 = v0[26];
  v33 = v0[27];
  v79 = v0[17];
  v80 = v0[40];
  (*(v0[24] + 8))(v0[25], v0[23]);
  v17(v31, v32, v34);
  sub_25853315C();
  (*(v33 + 8))(v31, v34);
  (*(v30 + 8))(v76, v75);
  (*(v29 + 8))(v78, v77);
  sub_258465168(v80, &unk_27F931440, &qword_2585380E0);
  v81(v28, 0, 1, v79);
  sub_2584AA828(v28, v80, &unk_27F931440, &qword_2585380E0);
LABEL_20:
  v35 = v0[39];
  v36 = v0[17];
  v37 = v0[18];
  sub_2584AC3B8(v0[40], v35, &unk_27F931440, &qword_2585380E0);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    sub_258465168(v0[39], &unk_27F931440, &qword_2585380E0);
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v38 = sub_258532A4C();
    __swift_project_value_buffer(v38, qword_27F93CFD8);

    v39 = sub_258532A2C();
    v40 = sub_2585338CC();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v0[46];
    if (v41)
    {
      v44 = v0[44];
      v43 = v0[45];
      v45 = v0[43];
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v82[0] = v47;
      *v46 = 136315394;
      v48 = sub_2584713B0(v45, v44, v82);

      *(v46 + 4) = v48;
      *(v46 + 12) = 2080;
      v49 = sub_2584713B0(v43, v42, v82);

      *(v46 + 14) = v49;
      _os_log_impl(&dword_25845E000, v39, v40, "Failed to find endpoint for serviceName: %s deviceID: %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v47, -1, -1);
      MEMORY[0x259C82900](v46, -1, -1);
    }

    else
    {
    }

    v56 = v0[40];
    sub_2584AA71C();
    swift_allocError();
    *v63 = 1;
    swift_willThrow();

LABEL_29:
    sub_258465168(v56, &unk_27F931440, &qword_2585380E0);

    v64 = v0[1];
  }

  else
  {
    v50 = v0[51];
    v51 = v0[16];
    v52 = v0[13];
    (*(v0[18] + 32))(v0[21], v0[39], v0[17]);
    v53 = type metadata accessor for SessionMessage(0);
    v54 = sub_2584AC2F0(&qword_27F930498, type metadata accessor for SessionMessage, &unk_25853908C);
    v55 = sub_2584AC2F0(&qword_27F9304A0, type metadata accessor for SessionMessage, &unk_2585390B4);
    MEMORY[0x259C80FA0](v53, v54, v55);
    sub_2584958B4(v51, v52);
    if (v50)
    {
      v56 = v0[40];
      v57 = v0[21];
      v59 = v0[17];
      v58 = v0[18];
      v61 = v0[15];
      v60 = v0[16];
      v62 = v0[14];

      (*(v61 + 8))(v60, v62);
      (*(v58 + 8))(v57, v59);
      goto LABEL_29;
    }

    v74 = v0[40];
    v65 = v0[21];
    v66 = v0[20];
    v68 = v0[17];
    v67 = v0[18];
    v69 = v0[11];
    (*(v0[15] + 8))();
    (*(v67 + 16))(v66, v65, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9304A8, &qword_258538100);
    swift_allocObject();

    sub_258532C1C();
    memset(v82, 0, 40);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9304B0, &qword_258538108);
    swift_allocObject();

    v72 = sub_258499404(v71, v82, 1);
    v69[3] = v70;
    v69[4] = sub_2584ABBE0(&qword_27F9304B8, &qword_27F9304B0, &qword_258538108, &unk_25853C198);

    *v69 = v72;
    (*(v67 + 8))(v65, v68);
    sub_258465168(v74, &unk_27F931440, &qword_2585380E0);

    v64 = v0[1];
  }

  return v64();
}

uint64_t sub_25849B010()
{
  v1 = v0[40];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];

  (*(v3 + 8))(v2, v4);
  sub_258465168(v1, &unk_27F931440, &qword_2585380E0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25849B194()
{
  *(v1 + 904) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0);
  *(v1 + 912) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25849B230, v0, 0);
}

uint64_t sub_25849B230()
{
  v28 = v0;
  v1 = *(v0 + 904);
  v2 = *(v1 + 121);
  if (v2 < 2)
  {

    v7 = *(v0 + 8);

    return v7();
  }

  else if (v2 == 4)
  {
    v9 = (v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection);
    v10 = v9[3];
    v11 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v26 = (*(v11 + 104) + **(v11 + 104));
    v12 = swift_task_alloc();
    *(v0 + 928) = v12;
    *v12 = v0;
    v12[1] = sub_25849BC1C;

    return v26(v0 + 496, v10, v11);
  }

  else if (v2 == 2)
  {

    v3 = sub_258532A2C();
    v4 = sub_2585338EC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v27[0] = v6;
      *v5 = 136315138;

      *(v5 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, v27);
      _os_log_impl(&dword_25845E000, v3, v4, "%s Waiting for activation to complete before migrating", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x259C82900](v6, -1, -1);
      MEMORY[0x259C82900](v5, -1, -1);
    }

    else
    {
    }

    sub_2584AC2F0(&qword_27F930588, type metadata accessor for AudioStreamAVConference, &unk_25853F878);
    v22 = swift_task_alloc();
    *(v0 + 920) = v22;
    *v22 = v0;
    v22[1] = sub_25849B7BC;

    return MEMORY[0x2822007B8]();
  }

  else
  {

    v13 = sub_258532A2C();
    v14 = sub_2585338CC();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 904);
    if (v15)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27[0] = v18;
      *v17 = 136315394;

      *(v17 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, v27);
      *(v17 + 12) = 2080;
      *(v0 + 1106) = *(v16 + 121);
      v19 = sub_25853347C();
      v21 = sub_2584713B0(v19, v20, v27);

      *(v17 + 14) = v21;
      _os_log_impl(&dword_25845E000, v13, v14, "%s Migration attempted while in state:%s, failing", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v18, -1, -1);
      MEMORY[0x259C82900](v17, -1, -1);
    }

    else
    {
    }

    sub_258476AE4();
    v23 = swift_allocError();
    *v24 = 0;
    swift_willThrow();
    *(v0 + 1088) = v23;
    v25 = swift_task_alloc();
    *(v0 + 1096) = v25;
    *v25 = v0;
    v25[1] = sub_25849D264;

    return sub_258519188(v23);
  }
}

uint64_t sub_25849B7BC()
{
  v1 = *(*v0 + 904);

  return MEMORY[0x2822009F8](sub_25849B8CC, v1, 0);
}

uint64_t sub_25849B8CC()
{
  v21 = v0;
  v1 = *(v0 + 904);
  if (*(v1 + 121) == 4)
  {
    v2 = (v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection);
    v3 = v2[3];
    v4 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v3);
    v19 = (*(v4 + 104) + **(v4 + 104));
    v5 = swift_task_alloc();
    *(v0 + 928) = v5;
    *v5 = v0;
    v5[1] = sub_25849BC1C;

    return v19(v0 + 496, v3, v4);
  }

  else
  {

    v7 = sub_258532A2C();
    v8 = sub_2585338CC();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 904);
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20[0] = v12;
      *v11 = 136315394;

      *(v11 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, v20);
      *(v11 + 12) = 2080;
      *(v0 + 1106) = *(v10 + 121);
      v13 = sub_25853347C();
      v15 = sub_2584713B0(v13, v14, v20);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_25845E000, v7, v8, "%s Migration attempted while in state:%s, failing", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v12, -1, -1);
      MEMORY[0x259C82900](v11, -1, -1);
    }

    else
    {
    }

    sub_258476AE4();
    v16 = swift_allocError();
    *v17 = 0;
    swift_willThrow();
    *(v0 + 1088) = v16;
    v18 = swift_task_alloc();
    *(v0 + 1096) = v18;
    *v18 = v0;
    v18[1] = sub_25849D264;

    return sub_258519188(v16);
  }
}

uint64_t sub_25849BC1C()
{
  v2 = *v1;
  *(*v1 + 936) = v0;

  v3 = *(v2 + 904);
  if (v0)
  {
    v4 = sub_25849C0A4;
  }

  else
  {
    v4 = sub_25849BD48;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25849BD48()
{
  if (!*(v0 + 520))
  {
    sub_258465168(v0 + 496, &qword_27F92FB90, &qword_258535420);
    sub_258476AE4();
    v18 = swift_allocError();
    *v19 = 14;
    swift_willThrow();
LABEL_8:
    *(v0 + 1088) = v18;
    v21 = swift_task_alloc();
    *(v0 + 1096) = v21;
    *v21 = v0;
    v21[1] = sub_25849D264;

    return sub_258519188(v18);
  }

  v1 = *(v0 + 904);
  sub_258464C18((v0 + 496), v0 + 456);
  if (*(v1 + 121) != 4)
  {
    sub_258476AE4();
    v18 = swift_allocError();
    *v20 = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  v2 = *(v0 + 936);
  *(*(v0 + 904) + 121) = 3;
  sub_25852FFD0(4);
  v3 = type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider(0);
  *(v0 + 944) = v3;
  swift_allocObject();
  v4 = sub_2584EAE98();
  *(v0 + 560) = v3;
  *(v0 + 568) = &off_28698FE70;
  *(v0 + 536) = v4;
  __swift_project_boxed_opaque_existential_1((v0 + 536), v3);
  v5 = *(v0 + 480);
  v6 = *(v0 + 488);
  __swift_project_boxed_opaque_existential_1((v0 + 456), v5);
  (*(v6 + 8))(v5, v6);
  __swift_project_boxed_opaque_existential_1((v0 + 576), *(v0 + 600));
  v7 = sub_258532D5C();
  v9 = sub_2585226B0(v7, v8);
  v11 = v10;

  *(v0 + 952) = v11;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
  v12 = *(v0 + 480);
  v13 = *(v0 + 488);
  __swift_project_boxed_opaque_existential_1((v0 + 456), v12);
  (*(v13 + 24))(v12, v13);
  v14 = __swift_project_boxed_opaque_existential_1((v0 + 616), *(v0 + 640));
  v16 = v14[2];
  v15 = v14[3];
  *(v0 + 960) = v15;

  v17 = sub_2584BC58C();
  if (v2)
  {
    v18 = v2;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 616));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 456));
    goto LABEL_8;
  }

  v23 = v17;
  v24 = swift_task_alloc();
  *(v0 + 968) = v24;
  *v24 = v0;
  v24[1] = sub_25849C158;

  return sub_2584EB264(v0 + 416, v9, v11, v16, v15, v23);
}

uint64_t sub_25849C0A4()
{
  v1 = v0[117];
  v0[136] = v1;
  v2 = swift_task_alloc();
  v0[137] = v2;
  *v2 = v0;
  v2[1] = sub_25849D264;

  return sub_258519188(v1);
}

uint64_t sub_25849C158()
{
  v2 = *v1;
  *(*v1 + 976) = v0;

  if (v0)
  {
    v3 = *(v2 + 904);

    v4 = sub_25849C66C;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 904);
    *(v2 + 1104) = *(v2 + 416);
    *(v2 + 984) = *(v2 + 424);
    *(v2 + 992) = *(v2 + 432);
    *(v2 + 1008) = *(v2 + 448);

    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 616));
    v4 = sub_25849C2D4;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_25849C2D4()
{
  v1 = *(v0 + 904);
  if (*(v1 + 121) == 3)
  {
    v27 = *(v0 + 1000);
    v28 = *(v0 + 1008);
    v26 = *(v0 + 992);
    v2 = *(v0 + 984);
    v25 = *(v0 + 1104);
    v3 = *(v0 + 480);
    v4 = *(v0 + 488);
    __swift_project_boxed_opaque_existential_1((v0 + 456), v3);
    (*(v4 + 16))(v3, v4);
    v5 = __swift_project_boxed_opaque_existential_1((v0 + 656), *(v0 + 680));
    v6 = *v5;
    *(v0 + 1016) = *v5;
    v7 = v5[1];
    *(v0 + 1024) = v7;
    v8 = *(v0 + 480);
    v9 = *(v0 + 488);
    __swift_project_boxed_opaque_existential_1((v0 + 456), v8);
    v10 = *(v9 + 24);
    sub_2584A7B8C(v6, v7);
    v10(v8, v9);
    v11 = __swift_project_boxed_opaque_existential_1((v0 + 696), *(v0 + 720));
    v12 = *v11;
    *(v0 + 1032) = *v11;
    v13 = v11[1];
    *(v0 + 1040) = v13;
    sub_2584A7B8C(v12, v13);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 696));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 656));
    *&v14 = v6;
    *(&v14 + 1) = v7;
    *&v15 = v12;
    *(&v15 + 1) = v13;
    *(v0 + 304) = v14;
    *(v0 + 320) = v15;
    *(v0 + 336) = v25;
    *(v0 + 344) = v2;
    *(v0 + 352) = v26;
    *(v0 + 360) = v27;
    *(v0 + 368) = v28;
    v16 = *(v0 + 336);
    *(v0 + 32) = v15;
    *(v0 + 16) = v14;
    *(v0 + 48) = v16;
    *(v0 + 56) = v2;
    *(v0 + 64) = v26;
    *(v0 + 72) = v27;
    *(v0 + 80) = v28;
    *(v0 + 88) = 0x2000000000000000;
    *(v0 + 104) = 0x2000000000000000;
    sub_2584A7B8C(v6, v7);
    sub_2584A7B8C(v12, v13);
    sub_2584ABA3C(v0 + 416, v0 + 736);
    v17 = sub_2584AC2F0(&qword_27F930588, type metadata accessor for AudioStreamAVConference, &unk_25853F878);
    v18 = swift_task_alloc();
    *(v0 + 1048) = v18;
    *(v18 + 16) = v1;
    *(v18 + 24) = v0 + 16;
    v19 = swift_task_alloc();
    *(v0 + 1056) = v19;
    *v19 = v0;
    v19[1] = sub_25849C738;

    return MEMORY[0x2822008A0](v0 + 112, v1, v17, 0xD000000000000021, 0x8000000258540A30, sub_2584ABA98, v18, &type metadata for StreamMessage);
  }

  else
  {
    sub_258476AE4();
    v21 = swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v22 = 4;
    }

    else
    {
      v22 = 5;
    }

    *v20 = v22;
    swift_willThrow();
    sub_2584AB9E8(v0 + 416);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 456));
    *(v0 + 1088) = v21;
    v23 = swift_task_alloc();
    *(v0 + 1096) = v23;
    *v23 = v0;
    v23[1] = sub_25849D264;

    return sub_258519188(v21);
  }
}

uint64_t sub_25849C66C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 77);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);
  v1 = v0[122];
  v0[136] = v1;
  v2 = swift_task_alloc();
  v0[137] = v2;
  *v2 = v0;
  v2[1] = sub_25849D264;

  return sub_258519188(v1);
}

uint64_t sub_25849C738()
{
  v2 = *v1;
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v3 = v2[130];
    v4 = v2[129];
    v5 = v2[113];
    sub_258467E20(v2[127], v2[128]);
    sub_258467E20(v4, v3);
    sub_2584AB9E8((v2 + 52));

    v6 = sub_25849CD0C;
    v7 = v5;
  }

  else
  {
    v7 = v2[113];
    v6 = sub_25849C89C;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_25849C89C()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 128);
  *(v0 + 208) = *(v0 + 112);
  *(v0 + 224) = v2;
  v3 = *(v0 + 192);
  *(v0 + 272) = *(v0 + 176);
  *(v0 + 288) = v3;
  v4 = *(v0 + 160);
  *(v0 + 240) = *(v0 + 144);
  *(v0 + 256) = v4;
  if (*(v1 + 121) != 3)
  {
    v17 = *(v0 + 1040);
    v18 = *(v0 + 1032);
    v19 = *(v0 + 1024);
    v20 = *(v0 + 1016);
    sub_258476AE4();
    v10 = swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v22 = 4;
    }

    else
    {
      v22 = 5;
    }

    goto LABEL_9;
  }

  if (((*(v0 + 296) >> 59) & 6 | ((*(v0 + 280) & 0x2000000000000000) != 0)) != 6)
  {
    v17 = *(v0 + 1040);
    v18 = *(v0 + 1032);
    v19 = *(v0 + 1024);
    v20 = *(v0 + 1016);
    sub_258476AE4();
    v10 = swift_allocError();
    v22 = 19;
LABEL_9:
    *v21 = v22;
    swift_willThrow();
    sub_2584A975C(v0 + 208);
    sub_2584ABAA0(v0 + 304);
    sub_258467E20(v20, v19);
    v15 = v18;
    v16 = v17;
    goto LABEL_10;
  }

  v5 = *(v0 + 1064);
  v6 = *(v0 + 912);
  *(v0 + 376) = *(v0 + 208);
  v7 = *(v0 + 232);
  *(v0 + 384) = *(v0 + 216);
  *(v0 + 400) = v7;
  __swift_project_boxed_opaque_existential_1((v0 + 536), *(v0 + 560));
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);
  sub_2584ABAF4(*(v0 + 216), *(v0 + 224));
  sub_2584ABAF4(v8, v9);
  sub_2584EE23C((v0 + 376), v6);
  if (v5)
  {
    v10 = v5;
    v11 = *(v0 + 1040);
    v12 = *(v0 + 1032);
    v13 = *(v0 + 1024);
    v14 = *(v0 + 1016);
    sub_2584A975C(v0 + 208);
    sub_2584ABAA0(v0 + 304);
    sub_2584A975C(v0 + 208);
    sub_258467E20(v14, v13);
    v15 = v12;
    v16 = v11;
LABEL_10:
    sub_258467E20(v15, v16);
    sub_2584AB9E8(v0 + 416);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 456));

    *(v0 + 1088) = v10;
    v23 = swift_task_alloc();
    *(v0 + 1096) = v23;
    *v23 = v0;
    v23[1] = sub_25849D264;

    return sub_258519188(v10);
  }

  v25 = *(v0 + 944);
  v26 = *(v0 + 912);
  v27 = *(v0 + 904);
  v28 = type metadata accessor for MediaConnectionPrerequisites(0);
  (*(*(v28 - 8) + 56))(v26, 0, 1, v28);
  v29 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC5D0(v26, v27 + v29, &qword_27F930580, &unk_2585382B0);
  swift_endAccess();
  sub_258464C30(v0 + 536, v0 + 776);
  v30 = *(v0 + 800);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 776, v30);
  v32 = *(v30 - 8);
  v33 = swift_task_alloc();
  (*(v32 + 16))(v33, v31, v30);
  v34 = *v33;
  *(v0 + 840) = v25;
  *(v0 + 848) = &off_28698FE70;
  *(v0 + 816) = v34;
  v35 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v27 + v35));
  sub_258464C18((v0 + 816), v27 + v35);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 776));

  v36 = swift_task_alloc();
  *(v0 + 1072) = v36;
  *v36 = v0;
  v36[1] = sub_25849CDD8;

  return sub_258522910();
}

uint64_t sub_25849CD0C()
{
  sub_2584ABAA0((v0 + 38));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);
  v1 = v0[133];
  v0[136] = v1;
  v2 = swift_task_alloc();
  v0[137] = v2;
  *v2 = v0;
  v2[1] = sub_25849D264;

  return sub_258519188(v1);
}

uint64_t sub_25849CDD8()
{
  v2 = *v1;
  *(*v1 + 1080) = v0;

  v3 = *(v2 + 904);
  if (v0)
  {
    v4 = sub_25849D140;
  }

  else
  {
    v4 = sub_25849CF04;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25849CF04()
{
  v1 = v0[113];
  if (*(v1 + 121) == 3)
  {
    v2 = v0[130];
    v3 = v0[129];
    v4 = v0[128];
    v5 = v0[127];
    *(v1 + 121) = 4;
    sub_25852FFD0(3);
    sub_2584A975C((v0 + 26));
    sub_2584A975C((v0 + 26));
    sub_2584ABAA0((v0 + 38));
    sub_258467E20(v5, v4);
    sub_258467E20(v3, v2);
    sub_2584AB9E8((v0 + 52));
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[130];
    v9 = v0[129];
    v10 = v0[128];
    v11 = v0[127];
    sub_258476AE4();
    v13 = swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v14 = 4;
    }

    else
    {
      v14 = 5;
    }

    *v12 = v14;
    swift_willThrow();
    sub_2584A975C((v0 + 26));
    sub_2584A975C((v0 + 26));
    sub_2584ABAA0((v0 + 38));
    sub_258467E20(v11, v10);
    sub_258467E20(v9, v8);
    sub_2584AB9E8((v0 + 52));
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);

    v0[136] = v13;
    v15 = swift_task_alloc();
    v0[137] = v15;
    *v15 = v0;
    v15[1] = sub_25849D264;

    return sub_258519188(v13);
  }
}

uint64_t sub_25849D140()
{
  v1 = v0[130];
  v2 = v0[129];
  v3 = v0[128];
  v4 = v0[127];
  sub_2584A975C((v0 + 26));
  sub_2584A975C((v0 + 26));
  sub_2584ABAA0((v0 + 38));
  sub_258467E20(v4, v3);
  sub_258467E20(v2, v1);
  sub_2584AB9E8((v0 + 52));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);

  v5 = v0[135];
  v0[136] = v5;
  v6 = swift_task_alloc();
  v0[137] = v6;
  *v6 = v0;
  v6[1] = sub_25849D264;

  return sub_258519188(v5);
}

uint64_t sub_25849D264()
{
  v1 = *(*v0 + 904);

  return MEMORY[0x2822009F8](sub_25849D374, v1, 0);
}

uint64_t sub_25849D374(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_25849D3EC()
{
  v1[113] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0);
  v1[114] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference(0);
  v1[115] = sub_2584AC2F0(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v3 = sub_25853362C();
  v1[116] = v3;
  v1[117] = v2;

  return MEMORY[0x2822009F8](sub_25849D4E4, v3, v2);
}

uint64_t sub_25849D4E4()
{
  v28 = v0;
  v1 = *(v0 + 904);
  v2 = *(v1 + 232);
  if (v2 < 2)
  {

    v7 = *(v0 + 8);

    return v7();
  }

  else if (v2 == 4)
  {
    v9 = (v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection);
    v10 = v9[3];
    v11 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v26 = (*(v11 + 104) + **(v11 + 104));
    v12 = swift_task_alloc();
    *(v0 + 952) = v12;
    *v12 = v0;
    v12[1] = sub_25849DEAC;

    return v26(v0 + 496, v10, v11);
  }

  else if (v2 == 2)
  {

    v3 = sub_258532A2C();
    v4 = sub_2585338EC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v27[0] = v6;
      *v5 = 136315138;

      *(v5 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, v27);
      _os_log_impl(&dword_25845E000, v3, v4, "%s Waiting for activation to complete before migrating", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x259C82900](v6, -1, -1);
      MEMORY[0x259C82900](v5, -1, -1);
    }

    else
    {
    }

    v22 = swift_task_alloc();
    *(v0 + 944) = v22;
    *v22 = v0;
    v22[1] = sub_25849DA3C;

    return MEMORY[0x2822007B8]();
  }

  else
  {

    v13 = sub_258532A2C();
    v14 = sub_2585338CC();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 904);
    if (v15)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27[0] = v18;
      *v17 = 136315394;

      *(v17 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, v27);
      *(v17 + 12) = 2080;
      *(v0 + 1130) = *(v16 + 232);
      v19 = sub_25853347C();
      v21 = sub_2584713B0(v19, v20, v27);

      *(v17 + 14) = v21;
      _os_log_impl(&dword_25845E000, v13, v14, "%s Migration attempted while in state:%s, failing", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v18, -1, -1);
      MEMORY[0x259C82900](v17, -1, -1);
    }

    else
    {
    }

    sub_258476AE4();
    v23 = swift_allocError();
    *v24 = 0;
    swift_willThrow();
    *(v0 + 1112) = v23;
    v25 = swift_task_alloc();
    *(v0 + 1120) = v25;
    *v25 = v0;
    v25[1] = sub_25849F4C4;

    return sub_258519A34(v23);
  }
}

uint64_t sub_25849DA3C()
{
  v1 = *v0;

  v2 = *(v1 + 936);
  v3 = *(v1 + 928);

  return MEMORY[0x2822009F8](sub_25849DB5C, v3, v2);
}

uint64_t sub_25849DB5C()
{
  v21 = v0;
  v1 = *(v0 + 904);
  if (*(v1 + 232) == 4)
  {
    v2 = (v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection);
    v3 = v2[3];
    v4 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v3);
    v19 = (*(v4 + 104) + **(v4 + 104));
    v5 = swift_task_alloc();
    *(v0 + 952) = v5;
    *v5 = v0;
    v5[1] = sub_25849DEAC;

    return v19(v0 + 496, v3, v4);
  }

  else
  {

    v7 = sub_258532A2C();
    v8 = sub_2585338CC();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 904);
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20[0] = v12;
      *v11 = 136315394;

      *(v11 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, v20);
      *(v11 + 12) = 2080;
      *(v0 + 1130) = *(v10 + 232);
      v13 = sub_25853347C();
      v15 = sub_2584713B0(v13, v14, v20);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_25845E000, v7, v8, "%s Migration attempted while in state:%s, failing", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v12, -1, -1);
      MEMORY[0x259C82900](v11, -1, -1);
    }

    else
    {
    }

    sub_258476AE4();
    v16 = swift_allocError();
    *v17 = 0;
    swift_willThrow();
    *(v0 + 1112) = v16;
    v18 = swift_task_alloc();
    *(v0 + 1120) = v18;
    *v18 = v0;
    v18[1] = sub_25849F4C4;

    return sub_258519A34(v16);
  }
}

uint64_t sub_25849DEAC()
{
  v2 = *v1;
  *(*v1 + 960) = v0;

  v3 = *(v2 + 936);
  v4 = *(v2 + 928);
  if (v0)
  {
    v5 = sub_25849E344;
  }

  else
  {
    v5 = sub_25849DFE8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25849DFE8()
{
  if (!*(v0 + 520))
  {
    sub_258465168(v0 + 496, &qword_27F92FB90, &qword_258535420);
    sub_258476AE4();
    v18 = swift_allocError();
    *v19 = 14;
    swift_willThrow();
LABEL_8:
    *(v0 + 1112) = v18;
    v21 = swift_task_alloc();
    *(v0 + 1120) = v21;
    *v21 = v0;
    v21[1] = sub_25849F4C4;

    return sub_258519A34(v18);
  }

  v1 = *(v0 + 904);
  sub_258464C18((v0 + 496), v0 + 456);
  if (*(v1 + 232) != 4)
  {
    sub_258476AE4();
    v18 = swift_allocError();
    *v20 = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  v2 = *(v0 + 960);
  *(*(v0 + 904) + 232) = 3;
  sub_2585084C8(4);
  v3 = type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider(0);
  *(v0 + 968) = v3;
  swift_allocObject();
  v4 = sub_2584EAE98();
  *(v0 + 560) = v3;
  *(v0 + 568) = &off_28698FE70;
  *(v0 + 536) = v4;
  __swift_project_boxed_opaque_existential_1((v0 + 536), v3);
  v5 = *(v0 + 480);
  v6 = *(v0 + 488);
  __swift_project_boxed_opaque_existential_1((v0 + 456), v5);
  (*(v6 + 8))(v5, v6);
  __swift_project_boxed_opaque_existential_1((v0 + 576), *(v0 + 600));
  v7 = sub_258532D5C();
  v9 = sub_2585226BC(v7, v8);
  v11 = v10;

  *(v0 + 976) = v11;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
  v12 = *(v0 + 480);
  v13 = *(v0 + 488);
  __swift_project_boxed_opaque_existential_1((v0 + 456), v12);
  (*(v13 + 24))(v12, v13);
  v14 = __swift_project_boxed_opaque_existential_1((v0 + 616), *(v0 + 640));
  v16 = v14[2];
  v15 = v14[3];
  *(v0 + 984) = v15;

  v17 = sub_2584BC58C();
  if (v2)
  {
    v18 = v2;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 616));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 456));
    goto LABEL_8;
  }

  v23 = v17;
  v24 = swift_task_alloc();
  *(v0 + 992) = v24;
  *v24 = v0;
  v24[1] = sub_25849E3F8;

  return sub_2584EB264(v0 + 416, v9, v11, v16, v15, v23);
}

uint64_t sub_25849E344()
{
  v1 = v0[120];
  v0[139] = v1;
  v2 = swift_task_alloc();
  v0[140] = v2;
  *v2 = v0;
  v2[1] = sub_25849F4C4;

  return sub_258519A34(v1);
}

uint64_t sub_25849E3F8()
{
  v2 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {

    v3 = *(v2 + 936);
    v4 = *(v2 + 928);
    v5 = sub_25849E8C8;
  }

  else
  {
    *(v2 + 1128) = *(v2 + 416);
    v6 = *(v2 + 440);
    *(v2 + 1008) = *(v2 + 424);
    *(v2 + 1024) = v6;

    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 616));
    v3 = *(v2 + 936);
    v4 = *(v2 + 928);
    v5 = sub_25849E560;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25849E560()
{
  v1 = *(v0 + 904);
  if (*(v1 + 232) == 3)
  {
    v26 = *(v0 + 1024);
    v27 = *(v0 + 1032);
    v25 = *(v0 + 1016);
    v2 = *(v0 + 1008);
    v24 = *(v0 + 1128);
    v28 = *(v0 + 920);
    v3 = *(v0 + 480);
    v4 = *(v0 + 488);
    __swift_project_boxed_opaque_existential_1((v0 + 456), v3);
    (*(v4 + 16))(v3, v4);
    v5 = __swift_project_boxed_opaque_existential_1((v0 + 656), *(v0 + 680));
    v6 = *v5;
    *(v0 + 1040) = *v5;
    v7 = v5[1];
    *(v0 + 1048) = v7;
    v8 = *(v0 + 480);
    v9 = *(v0 + 488);
    __swift_project_boxed_opaque_existential_1((v0 + 456), v8);
    v10 = *(v9 + 24);
    sub_2584A7B8C(v6, v7);
    v10(v8, v9);
    v11 = __swift_project_boxed_opaque_existential_1((v0 + 696), *(v0 + 720));
    v12 = *v11;
    *(v0 + 1056) = *v11;
    v13 = v11[1];
    *(v0 + 1064) = v13;
    sub_2584A7B8C(v12, v13);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 696));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 656));
    *&v14 = v6;
    *(&v14 + 1) = v7;
    *&v15 = v12;
    *(&v15 + 1) = v13;
    *(v0 + 304) = v14;
    *(v0 + 320) = v15;
    *(v0 + 336) = v24;
    *(v0 + 344) = v2;
    *(v0 + 352) = v25;
    *(v0 + 360) = v26;
    *(v0 + 368) = v27;
    v16 = *(v0 + 336);
    *(v0 + 32) = v15;
    *(v0 + 16) = v14;
    *(v0 + 48) = v16;
    *(v0 + 56) = v2;
    *(v0 + 64) = v25;
    *(v0 + 72) = v26;
    *(v0 + 80) = v27;
    *(v0 + 88) = 0x2000000000000000;
    *(v0 + 104) = 0x2000000000000000;
    sub_2584A7B8C(v6, v7);
    sub_2584A7B8C(v12, v13);
    sub_2584ABA3C(v0 + 416, v0 + 736);
    v17 = swift_task_alloc();
    *(v0 + 1072) = v17;
    *(v17 + 16) = v1;
    *(v17 + 24) = v0 + 16;
    v18 = swift_task_alloc();
    *(v0 + 1080) = v18;
    *v18 = v0;
    v18[1] = sub_25849E994;

    return MEMORY[0x2822008A0](v0 + 112, v1, v28, 0xD000000000000021, 0x8000000258540A30, sub_2584AC338, v17, &type metadata for StreamMessage);
  }

  else
  {
    sub_258476AE4();
    v20 = swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v21 = 4;
    }

    else
    {
      v21 = 5;
    }

    *v19 = v21;
    swift_willThrow();
    sub_2584AB9E8(v0 + 416);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 456));
    *(v0 + 1112) = v20;
    v22 = swift_task_alloc();
    *(v0 + 1120) = v22;
    *v22 = v0;
    v22[1] = sub_25849F4C4;

    return sub_258519A34(v20);
  }
}

uint64_t sub_25849E8C8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 77);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);
  v1 = v0[125];
  v0[139] = v1;
  v2 = swift_task_alloc();
  v0[140] = v2;
  *v2 = v0;
  v2[1] = sub_25849F4C4;

  return sub_258519A34(v1);
}

uint64_t sub_25849E994()
{
  v2 = *v1;
  *(*v1 + 1088) = v0;

  if (v0)
  {
    v3 = v2[133];
    v4 = v2[132];
    sub_258467E20(v2[130], v2[131]);
    sub_258467E20(v4, v3);
    sub_2584AB9E8((v2 + 52));

    v5 = v2[117];
    v6 = v2[116];
    v7 = sub_25849EF5C;
  }

  else
  {
    v5 = v2[117];
    v6 = v2[116];
    v7 = sub_25849EAEC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_25849EAEC()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 128);
  *(v0 + 208) = *(v0 + 112);
  *(v0 + 224) = v2;
  v3 = *(v0 + 192);
  *(v0 + 272) = *(v0 + 176);
  *(v0 + 288) = v3;
  v4 = *(v0 + 160);
  *(v0 + 240) = *(v0 + 144);
  *(v0 + 256) = v4;
  if (*(v1 + 232) != 3)
  {
    v17 = *(v0 + 1064);
    v18 = *(v0 + 1056);
    v19 = *(v0 + 1048);
    v20 = *(v0 + 1040);
    sub_258476AE4();
    v10 = swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v22 = 4;
    }

    else
    {
      v22 = 5;
    }

    goto LABEL_9;
  }

  if (((*(v0 + 296) >> 59) & 6 | ((*(v0 + 280) & 0x2000000000000000) != 0)) != 6)
  {
    v17 = *(v0 + 1064);
    v18 = *(v0 + 1056);
    v19 = *(v0 + 1048);
    v20 = *(v0 + 1040);
    sub_258476AE4();
    v10 = swift_allocError();
    v22 = 19;
LABEL_9:
    *v21 = v22;
    swift_willThrow();
    sub_2584A975C(v0 + 208);
    sub_2584ABAA0(v0 + 304);
    sub_258467E20(v20, v19);
    v15 = v18;
    v16 = v17;
    goto LABEL_10;
  }

  v5 = *(v0 + 1088);
  v6 = *(v0 + 912);
  *(v0 + 376) = *(v0 + 208);
  v7 = *(v0 + 232);
  *(v0 + 384) = *(v0 + 216);
  *(v0 + 400) = v7;
  __swift_project_boxed_opaque_existential_1((v0 + 536), *(v0 + 560));
  v8 = *(v0 + 232);
  v9 = *(v0 + 240);
  sub_2584ABAF4(*(v0 + 216), *(v0 + 224));
  sub_2584ABAF4(v8, v9);
  sub_2584EE23C((v0 + 376), v6);
  if (v5)
  {
    v10 = v5;
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = *(v0 + 1048);
    v14 = *(v0 + 1040);
    sub_2584A975C(v0 + 208);
    sub_2584ABAA0(v0 + 304);
    sub_2584A975C(v0 + 208);
    sub_258467E20(v14, v13);
    v15 = v12;
    v16 = v11;
LABEL_10:
    sub_258467E20(v15, v16);
    sub_2584AB9E8(v0 + 416);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 456));

    *(v0 + 1112) = v10;
    v23 = swift_task_alloc();
    *(v0 + 1120) = v23;
    *v23 = v0;
    v23[1] = sub_25849F4C4;

    return sub_258519A34(v10);
  }

  v25 = *(v0 + 968);
  v26 = *(v0 + 912);
  v27 = *(v0 + 904);
  v28 = type metadata accessor for MediaConnectionPrerequisites(0);
  (*(*(v28 - 8) + 56))(v26, 0, 1, v28);
  v29 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC5D0(v26, v27 + v29, &qword_27F930580, &unk_2585382B0);
  swift_endAccess();
  sub_258464C30(v0 + 536, v0 + 776);
  v30 = *(v0 + 800);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 776, v30);
  v32 = *(v30 - 8);
  v33 = swift_task_alloc();
  (*(v32 + 16))(v33, v31, v30);
  v34 = *v33;
  *(v0 + 840) = v25;
  *(v0 + 848) = &off_28698FE70;
  *(v0 + 816) = v34;
  v35 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v27 + v35));
  sub_258464C18((v0 + 816), v27 + v35);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 776));

  v36 = swift_task_alloc();
  *(v0 + 1096) = v36;
  *v36 = v0;
  v36[1] = sub_25849F028;

  return sub_258523560();
}

uint64_t sub_25849EF5C()
{
  sub_2584ABAA0((v0 + 38));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);
  v1 = v0[136];
  v0[139] = v1;
  v2 = swift_task_alloc();
  v0[140] = v2;
  *v2 = v0;
  v2[1] = sub_25849F4C4;

  return sub_258519A34(v1);
}

uint64_t sub_25849F028()
{
  v2 = *v1;
  *(*v1 + 1104) = v0;

  v3 = *(v2 + 936);
  v4 = *(v2 + 928);
  if (v0)
  {
    v5 = sub_25849F3A0;
  }

  else
  {
    v5 = sub_25849F164;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25849F164()
{
  v1 = v0[113];
  if (*(v1 + 232) == 3)
  {
    v2 = v0[133];
    v3 = v0[132];
    v4 = v0[131];
    v5 = v0[130];
    *(v1 + 232) = 4;
    sub_2585084C8(3);
    sub_2584A975C((v0 + 26));
    sub_2584A975C((v0 + 26));
    sub_2584ABAA0((v0 + 38));
    sub_258467E20(v5, v4);
    sub_258467E20(v3, v2);
    sub_2584AB9E8((v0 + 52));
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[133];
    v9 = v0[132];
    v10 = v0[131];
    v11 = v0[130];
    sub_258476AE4();
    v13 = swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v14 = 4;
    }

    else
    {
      v14 = 5;
    }

    *v12 = v14;
    swift_willThrow();
    sub_2584A975C((v0 + 26));
    sub_2584A975C((v0 + 26));
    sub_2584ABAA0((v0 + 38));
    sub_258467E20(v11, v10);
    sub_258467E20(v9, v8);
    sub_2584AB9E8((v0 + 52));
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);

    v0[139] = v13;
    v15 = swift_task_alloc();
    v0[140] = v15;
    *v15 = v0;
    v15[1] = sub_25849F4C4;

    return sub_258519A34(v13);
  }
}

uint64_t sub_25849F3A0()
{
  v1 = v0[133];
  v2 = v0[132];
  v3 = v0[131];
  v4 = v0[130];
  sub_2584A975C((v0 + 26));
  sub_2584A975C((v0 + 26));
  sub_2584ABAA0((v0 + 38));
  sub_258467E20(v4, v3);
  sub_258467E20(v2, v1);
  sub_2584AB9E8((v0 + 52));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);

  v5 = v0[138];
  v0[139] = v5;
  v6 = swift_task_alloc();
  v0[140] = v6;
  *v6 = v0;
  v6[1] = sub_25849F4C4;

  return sub_258519A34(v5);
}

uint64_t sub_25849F4C4()
{
  v1 = *v0;

  v2 = *(v1 + 936);
  v3 = *(v1 + 928);

  return MEMORY[0x2822009F8](sub_25849F5E4, v3, v2);
}

uint64_t sub_25849F5E4(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_25849F65C(uint64_t a1)
{
  if (*(v1 + 152) == 1)
  {
    swift_beginAccess();
    *(v1 + 128) = MEMORY[0x277D84F98];

    v5 = *(a1 + 16);
    if (v5)
    {
      for (i = a1 + 32; ; i += 40)
      {
        v7 = *(i + 16);
        v10[0] = *i;
        v10[1] = v7;
        v11 = *(i + 32);
        sub_2584AC420(v10, &v9);
        sub_25849F8D4(v10, v1);
        if (v2)
        {
          break;
        }

        result = sub_2584AC47C(v10);
        if (!--v5)
        {
          return result;
        }
      }

      return sub_2584AC47C(v10);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303D0, &unk_258537F90);
    sub_2584ABBE0(&qword_27F9303D8, &qword_27F9303D0, &unk_258537F90, &unk_25853F29C);
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25849F794(uint64_t a1)
{
  if (*(v1 + 152) == 1)
  {
    swift_beginAccess();
    *(v1 + 128) = MEMORY[0x277D84F98];

    v5 = *(a1 + 16);
    if (v5)
    {
      for (i = (a1 + 40); ; i += 16)
      {
        v7 = *(i - 1);
        v8 = *i;
        sub_2584742A4(v7, *i);
        sub_25849FB68(v7, v8, v1);
        if (v2)
        {
          break;
        }

        result = sub_2584A9614(v7, v8);
        if (!--v5)
        {
          return result;
        }
      }

      return sub_2584A9614(v7, v8);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303C0, &qword_258537F88);
    sub_2584ABBE0(&qword_27F9303C8, &qword_27F9303C0, &qword_258537F88, &unk_25853F29C);
    swift_allocError();
    *v9 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25849F8D4(__int128 *a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(*(a2 + 128) + 16) && (, sub_2584BC4BC(), v5 = v4, , (v5 & 1) != 0))
  {
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v6 = sub_258532A4C();
    __swift_project_value_buffer(v6, qword_27F93CFA8);
    sub_2584AC420(a1, v18);
    v7 = sub_258532A2C();
    v8 = sub_2585338CC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18[0] = v10;
      *v9 = 136315138;
      v11 = sub_25853347C();
      v13 = v12;
      sub_2584AC47C(a1);
      v14 = sub_2584713B0(v11, v13, v18);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_25845E000, v7, v8, "Multiple configurations for %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x259C82900](v10, -1, -1);
      MEMORY[0x259C82900](v9, -1, -1);
    }

    else
    {

      sub_2584AC47C(a1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303D0, &unk_258537F90);
    sub_2584ABBE0(&qword_27F9303D8, &qword_27F9303D0, &unk_258537F90, &unk_25853F29C);
    swift_allocError();
    *v17 = 2;
    return swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    sub_2584AC420(a1, v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18[0] = *(a2 + 128);
    *(a2 + 128) = 0x8000000000000000;
    sub_25850CE78(a1, isUniquelyReferenced_nonNull_native);
    *(a2 + 128) = v18[0];
    return swift_endAccess();
  }
}

uint64_t sub_25849FB68(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(*(a3 + 128) + 16) && (, sub_2584BC50C(), v7 = v6, , (v7 & 1) != 0))
  {
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v8 = sub_258532A4C();
    __swift_project_value_buffer(v8, qword_27F93CFA8);
    sub_2584742A4(a1, a2 & 1);
    v9 = sub_258532A2C();
    v10 = sub_2585338CC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21[0] = v12;
      *v11 = 136315138;
      v13 = sub_25853347C();
      v15 = v14;
      sub_2584A9614(a1, a2 & 1);
      v16 = sub_2584713B0(v13, v15, v21);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_25845E000, v9, v10, "Multiple configurations for %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x259C82900](v12, -1, -1);
      MEMORY[0x259C82900](v11, -1, -1);
    }

    else
    {

      sub_2584A9614(a1, a2 & 1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303C0, &qword_258537F88);
    sub_2584ABBE0(&qword_27F9303C8, &qword_27F9303C0, &qword_258537F88, &unk_25853F29C);
    swift_allocError();
    *v19 = 2;
    return swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    sub_2584742A4(a1, a2 & 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(a3 + 128);
    *(a3 + 128) = 0x8000000000000000;
    sub_25850CFC4(a1, a2 & 1, isUniquelyReferenced_nonNull_native);
    *(a3 + 128) = v20;
    return swift_endAccess();
  }
}

uint64_t sub_25849FE0C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25849FED8, v1, 0);
}

uint64_t sub_25849FED8()
{
  v13 = v0;
  v1 = v0[9];
  if (*(v1 + 152) != 1)
  {
    v6 = 0;
    goto LABEL_6;
  }

  v2 = v0[8];
  v3 = *(v2 + 112);
  v0[13] = v3;
  v0[14] = *(v2 + 120);
  v3(v11);
  sub_2584A96C0(v11[0], v11[1], v11[2], v11[3], v12);
  swift_beginAccess();
  if (*(*(v1 + 112) + 16))
  {

    sub_2584BC4BC();
    v5 = v4;

    if (v5)
    {
      v6 = 1;
LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303D0, &unk_258537F90);
      sub_2584ABBE0(&qword_27F9303D8, &qword_27F9303D0, &unk_258537F90, &unk_25853F29C);
      swift_allocError();
      *v7 = v6;
      swift_willThrow();

      v8 = v0[1];

      return v8();
    }
  }

  v10 = v0[8];

  return MEMORY[0x2822009F8](sub_2584A007C, v10, 0);
}

uint64_t sub_2584A007C()
{
  v4 = (*(v0[8] + 128) + **(v0[8] + 128));
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_2584A0170;
  v2 = v0[12];

  return v4(v2);
}

uint64_t sub_2584A0170()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {
    v3 = v2[9];

    return MEMORY[0x2822009F8](sub_2584AC7C0, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[17] = v4;
    *v4 = v2;
    v4[1] = sub_2584A02E4;
    v5 = v2[12];
    v6 = v2[8];

    return sub_2584A2808(v6, v5);
  }
}

uint64_t sub_2584A02E4()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_2584AC7BC;
  }

  else
  {
    v4 = sub_2584A0410;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584A0410()
{
  v23 = v0;
  v1 = *(v0 + 72);
  (*(v0 + 104))(&v17);
  v2 = sub_2584A96C0(v17, v18, v19, v20, v21);
  if (*(*(v1 + 112) + 16) && (, sub_2584BC4BC(), v4 = v3, v2 = , (v4 & 1) != 0))
  {
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = *(v0 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303D0, &unk_258537F90);
    sub_2584ABBE0(&qword_27F9303D8, &qword_27F9303D0, &unk_258537F90, &unk_25853F29C);
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    (*(v6 + 8))(v5, v7);

    v9 = *(v0 + 8);
  }

  else
  {
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v0 + 64);
    (*(v0 + 104))(&v17, v2);
    sub_2584A96C0(v17, v18, v19, v20, v21);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v13 + 112);
    *(v13 + 112) = 0x8000000000000000;
    sub_25850D268(v14, isUniquelyReferenced_nonNull_native);
    *(v13 + 112) = v22;
    swift_endAccess();
    (*(v11 + 8))(v10, v12);

    v9 = *(v0 + 8);
  }

  return v9();
}

uint64_t sub_2584A0618(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584A06E4, v1, 0);
}

uint64_t sub_2584A06E4()
{
  v13 = v0;
  v1 = v0[9];
  if (*(v1 + 152) != 1)
  {
    v6 = 0;
    goto LABEL_6;
  }

  v2 = v0[8];
  v3 = *(v2 + 112);
  v0[13] = v3;
  v0[14] = *(v2 + 120);
  v3(&v11);
  sub_2584A9614(v11, v12);
  swift_beginAccess();
  if (*(*(v1 + 112) + 16))
  {

    sub_2584BC50C();
    v5 = v4;

    if (v5)
    {
      v6 = 1;
LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303C0, &qword_258537F88);
      sub_2584ABBE0(&qword_27F9303C8, &qword_27F9303C0, &qword_258537F88, &unk_25853F29C);
      swift_allocError();
      *v7 = v6;
      swift_willThrow();

      v8 = v0[1];

      return v8();
    }
  }

  v10 = v0[8];

  return MEMORY[0x2822009F8](sub_2584A0884, v10, 0);
}

uint64_t sub_2584A0884()
{
  v4 = (*(v0[8] + 128) + **(v0[8] + 128));
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_2584A0978;
  v2 = v0[12];

  return v4(v2);
}

uint64_t sub_2584A0978()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {
    v3 = v2[9];

    return MEMORY[0x2822009F8](sub_2584A0C18, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[17] = v4;
    *v4 = v2;
    v4[1] = sub_2584A0AEC;
    v5 = v2[12];
    v6 = v2[8];

    return sub_2584A2CB4(v6, v5);
  }
}

uint64_t sub_2584A0AEC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_2584A0E7C;
  }

  else
  {
    v4 = sub_2584A0C7C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584A0C18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584A0C7C()
{
  v20 = v0;
  v1 = *(v0 + 72);
  (*(v0 + 104))(&v17);
  v2 = sub_2584A9614(v17, v18);
  if (*(*(v1 + 112) + 16) && (, sub_2584BC50C(), v4 = v3, v2 = , (v4 & 1) != 0))
  {
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = *(v0 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303C0, &qword_258537F88);
    sub_2584ABBE0(&qword_27F9303C8, &qword_27F9303C0, &qword_258537F88, &unk_25853F29C);
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    (*(v6 + 8))(v5, v7);

    v9 = *(v0 + 8);
  }

  else
  {
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v0 + 64);
    (*(v0 + 104))(&v17, v2);
    sub_2584A9614(v17, v18);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v13 + 112);
    *(v13 + 112) = 0x8000000000000000;
    sub_25850D560(v14, isUniquelyReferenced_nonNull_native);
    *(v13 + 112) = v19;
    swift_endAccess();
    (*(v11 + 8))(v10, v12);

    v9 = *(v0 + 8);
  }

  return v9();
}

uint64_t sub_2584A0E7C()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2584A0F18()
{
  v1 = *(v0 + 64);
  if (*(v1 + 152) == 1)
  {
    *(v1 + 152) = 0;
    swift_beginAccess();
    v2 = *(v1 + 112);
    *(v0 + 72) = v2;
    v3 = *(v2 + 32);
    *(v0 + 112) = v3;
    v4 = -1;
    v5 = -1 << v3;
    if (-(-1 << v3) < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v4 & *(v2 + 64);

    if (v6)
    {
      v8 = 0;
LABEL_9:
      *(v0 + 80) = v6;
      *(v0 + 88) = v8;
      v10 = *(*(v7 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
      *(v0 + 96) = v10;

      v11 = sub_2584A11B8;
      v12 = v10;
      v13 = 0;
    }

    else
    {
      v9 = 0;
      while (((63 - v5) >> 6) - 1 != v9)
      {
        v8 = v9 + 1;
        v6 = *(v7 + 8 * v9++ + 72);
        if (v6)
        {
          goto LABEL_9;
        }
      }

      v14 = *(v0 + 64);

      swift_beginAccess();
      v15 = *(v14 + 120);
      v16 = -1;
      v17 = -1 << *(v15 + 32);
      if (-v17 < 64)
      {
        v16 = ~(-1 << -v17);
      }

      v18 = v16 & *(v15 + 64);
      v19 = (63 - v17) >> 6;

      v20 = 0;
      if (v18)
      {
        goto LABEL_20;
      }

      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v21 >= v19)
        {
          v22 = *(v0 + 64);

          v23 = *(v22 + 136);
          v24 = *(v22 + 144);
          *(v22 + 136) = 0;
          *(v22 + 144) = 0;
          sub_258464B24(v23, v24);
          goto LABEL_23;
        }

        v18 = *(v15 + 64 + 8 * v21);
        ++v20;
        if (v18)
        {
          v20 = v21;
          do
          {
LABEL_20:
            v18 &= v18 - 1;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
            sub_25853374C();
          }

          while (v18);
          continue;
        }
      }

      __break(1u);
    }

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
LABEL_23:
    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_2584A11B8()
{
  v3 = (*(*(v0 + 96) + 176) + **(*(v0 + 96) + 176));
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_2584A12A4;

  return v3();
}

uint64_t sub_2584A12A4()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_2584A13B4, v1, 0);
}

uint64_t sub_2584A13B4()
{

  v4 = *(v0 + 88);
  v5 = (*(v0 + 80) - 1) & *(v0 + 80);
  if (v5)
  {
    v1 = *(v0 + 72);
LABEL_7:
    *(v0 + 80) = v5;
    *(v0 + 88) = v4;
    v7 = *(*(v1 + 56) + ((v4 << 9) | (8 * __clz(__rbit64(v5)))));
    *(v0 + 96) = v7;

    v1 = sub_2584A11B8;
    v2 = v7;
    v3 = 0;

    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  else
  {
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return MEMORY[0x2822009F8](v1, v2, v3);
      }

      v1 = *(v0 + 72);
      if (v6 >= (((1 << *(v0 + 112)) + 63) >> 6))
      {
        break;
      }

      v5 = *(v1 + 8 * v6 + 64);
      ++v4;
      if (v5)
      {
        v4 = v6;
        goto LABEL_7;
      }
    }

    v8 = *(v0 + 64);

    swift_beginAccess();
    v9 = *(v8 + 120);
    v10 = -1;
    v11 = -1 << *(v9 + 32);
    if (-v11 < 64)
    {
      v10 = ~(-1 << -v11);
    }

    v12 = v10 & *(v9 + 64);
    v13 = (63 - v11) >> 6;

    v14 = 0;
    if (v12)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_24;
      }

      if (v15 >= v13)
      {
        break;
      }

      v12 = *(v9 + 64 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        do
        {
LABEL_18:
          v12 &= v12 - 1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
          sub_25853374C();
        }

        while (v12);
        continue;
      }
    }

    v16 = *(v0 + 64);

    v17 = *(v16 + 136);
    v18 = *(v16 + 144);
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    sub_258464B24(v17, v18);
    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_2584A1638()
{
  v1 = *(v0 + 64);
  if (*(v1 + 152) == 1)
  {
    *(v1 + 152) = 0;
    swift_beginAccess();
    v2 = *(v1 + 112);
    *(v0 + 72) = v2;
    v3 = *(v2 + 32);
    *(v0 + 112) = v3;
    v4 = -1;
    v5 = -1 << v3;
    if (-(-1 << v3) < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v4 & *(v2 + 64);

    if (v6)
    {
      v8 = 0;
LABEL_9:
      *(v0 + 80) = v6;
      *(v0 + 88) = v8;
      v10 = *(*(v7 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
      *(v0 + 96) = v10;

      v11 = sub_2584A18D8;
      v12 = v10;
      v13 = 0;
    }

    else
    {
      v9 = 0;
      while (((63 - v5) >> 6) - 1 != v9)
      {
        v8 = v9 + 1;
        v6 = *(v7 + 8 * v9++ + 72);
        if (v6)
        {
          goto LABEL_9;
        }
      }

      v14 = *(v0 + 64);

      swift_beginAccess();
      v15 = *(v14 + 120);
      v16 = -1;
      v17 = -1 << *(v15 + 32);
      if (-v17 < 64)
      {
        v16 = ~(-1 << -v17);
      }

      v18 = v16 & *(v15 + 64);
      v19 = (63 - v17) >> 6;

      v20 = 0;
      if (v18)
      {
        goto LABEL_20;
      }

      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v21 >= v19)
        {
          v22 = *(v0 + 64);

          v23 = *(v22 + 136);
          v24 = *(v22 + 144);
          *(v22 + 136) = 0;
          *(v22 + 144) = 0;
          sub_258464B24(v23, v24);
          goto LABEL_23;
        }

        v18 = *(v15 + 64 + 8 * v21);
        ++v20;
        if (v18)
        {
          v20 = v21;
          do
          {
LABEL_20:
            v18 &= v18 - 1;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
            sub_25853374C();
          }

          while (v18);
          continue;
        }
      }

      __break(1u);
    }

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
LABEL_23:
    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_2584A18D8()
{
  v3 = (*(*(v0 + 96) + 176) + **(*(v0 + 96) + 176));
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_2584A19C4;

  return v3();
}

uint64_t sub_2584A19C4()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](sub_2584A1AD4, v1, 0);
}

uint64_t sub_2584A1AD4()
{

  v4 = *(v0 + 88);
  v5 = (*(v0 + 80) - 1) & *(v0 + 80);
  if (v5)
  {
    v1 = *(v0 + 72);
LABEL_7:
    *(v0 + 80) = v5;
    *(v0 + 88) = v4;
    v7 = *(*(v1 + 56) + ((v4 << 9) | (8 * __clz(__rbit64(v5)))));
    *(v0 + 96) = v7;

    v1 = sub_2584A18D8;
    v2 = v7;
    v3 = 0;

    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  else
  {
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return MEMORY[0x2822009F8](v1, v2, v3);
      }

      v1 = *(v0 + 72);
      if (v6 >= (((1 << *(v0 + 112)) + 63) >> 6))
      {
        break;
      }

      v5 = *(v1 + 8 * v6 + 64);
      ++v4;
      if (v5)
      {
        v4 = v6;
        goto LABEL_7;
      }
    }

    v8 = *(v0 + 64);

    swift_beginAccess();
    v9 = *(v8 + 120);
    v10 = -1;
    v11 = -1 << *(v9 + 32);
    if (-v11 < 64)
    {
      v10 = ~(-1 << -v11);
    }

    v12 = v10 & *(v9 + 64);
    v13 = (63 - v11) >> 6;

    v14 = 0;
    if (v12)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_24;
      }

      if (v15 >= v13)
      {
        break;
      }

      v12 = *(v9 + 64 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        do
        {
LABEL_18:
          v12 &= v12 - 1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
          sub_25853374C();
        }

        while (v12);
        continue;
      }
    }

    v16 = *(v0 + 64);

    v17 = *(v16 + 136);
    v18 = *(v16 + 144);
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    sub_258464B24(v17, v18);
    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_2584A1D58()
{
  v1 = *(v0 + 40);
  if ((*(v1 + 152) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303D0, &unk_258537F90);
    sub_2584ABBE0(&qword_27F9303D8, &qword_27F9303D0, &unk_258537F90, &unk_25853F29C);
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    v10 = *(v0 + 8);
LABEL_7:

    return v10();
  }

  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v0 + 48) = v2;
  v3 = *(v2 + 32);
  *(v0 + 96) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (!v6)
  {
    v12 = 0;
    while (((63 - v5) >> 6) - 1 != v12)
    {
      v8 = v12 + 1;
      v6 = *(v7 + 8 * v12++ + 72);
      if (v6)
      {
        goto LABEL_13;
      }
    }

    v10 = *(v0 + 8);
    goto LABEL_7;
  }

  v8 = 0;
LABEL_13:
  *(v0 + 56) = v6;
  *(v0 + 64) = v8;
  v13 = *(*(v7 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
  *(v0 + 72) = v13;

  return MEMORY[0x2822009F8](sub_2584A1F30, v13, 0);
}

uint64_t sub_2584A1F30()
{
  v3 = (*(*(v0 + 72) + 144) + **(*(v0 + 72) + 144));
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_2584A201C;

  return v3();
}

uint64_t sub_2584A201C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_2584AC7DC;
  }

  else
  {
    v4 = sub_2584A2148;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584A2148()
{

  v4 = *(v0 + 64);
  v5 = (*(v0 + 56) - 1) & *(v0 + 56);
  if (v5)
  {
    v1 = *(v0 + 48);
LABEL_7:
    *(v0 + 56) = v5;
    *(v0 + 64) = v4;
    v7 = *(*(v1 + 56) + ((v4 << 9) | (8 * __clz(__rbit64(v5)))));
    *(v0 + 72) = v7;

    v1 = sub_2584A1F30;
    v2 = v7;
    v3 = 0;

    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  else
  {
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v1, v2, v3);
      }

      v1 = *(v0 + 48);
      if (v6 >= (((1 << *(v0 + 96)) + 63) >> 6))
      {
        break;
      }

      v5 = *(v1 + 8 * v6 + 64);
      ++v4;
      if (v5)
      {
        v4 = v6;
        goto LABEL_7;
      }
    }

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2584A2288()
{
  v1 = *(v0 + 40);
  if ((*(v1 + 152) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303C0, &qword_258537F88);
    sub_2584ABBE0(&qword_27F9303C8, &qword_27F9303C0, &qword_258537F88, &unk_25853F29C);
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    v10 = *(v0 + 8);
LABEL_7:

    return v10();
  }

  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v0 + 48) = v2;
  v3 = *(v2 + 32);
  *(v0 + 96) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (!v6)
  {
    v12 = 0;
    while (((63 - v5) >> 6) - 1 != v12)
    {
      v8 = v12 + 1;
      v6 = *(v7 + 8 * v12++ + 72);
      if (v6)
      {
        goto LABEL_13;
      }
    }

    v10 = *(v0 + 8);
    goto LABEL_7;
  }

  v8 = 0;
LABEL_13:
  *(v0 + 56) = v6;
  *(v0 + 64) = v8;
  v13 = *(*(v7 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
  *(v0 + 72) = v13;

  return MEMORY[0x2822009F8](sub_2584A2460, v13, 0);
}

uint64_t sub_2584A2460()
{
  v3 = (*(*(v0 + 72) + 144) + **(*(v0 + 72) + 144));
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_2584A254C;

  return v3();
}

uint64_t sub_2584A254C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_2584A2798;
  }

  else
  {
    v4 = sub_2584A2678;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2584A2678()
{

  v4 = *(v0 + 64);
  v5 = (*(v0 + 56) - 1) & *(v0 + 56);
  if (v5)
  {
    v1 = *(v0 + 48);
LABEL_7:
    *(v0 + 56) = v5;
    *(v0 + 64) = v4;
    v7 = *(*(v1 + 56) + ((v4 << 9) | (8 * __clz(__rbit64(v5)))));
    *(v0 + 72) = v7;

    v1 = sub_2584A2460;
    v2 = v7;
    v3 = 0;

    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  else
  {
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v1, v2, v3);
      }

      v1 = *(v0 + 48);
      if (v6 >= (((1 << *(v0 + 96)) + 63) >> 6))
      {
        break;
      }

      v5 = *(v1 + 8 * v6 + 64);
      ++v4;
      if (v5)
      {
        v4 = v6;
        goto LABEL_7;
      }
    }

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2584A2798()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584A2808(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_2584A282C, v2, 0);
}

uint64_t sub_2584A282C()
{
  v21 = v0;
  v1 = v0[7];
  (*(v0[5] + 112))(v19);
  sub_2584A96C0(v19[0], v19[1], v19[2], v19[3], v20);
  swift_beginAccess();
  if (*(*(v1 + 120) + 16) && (, sub_2584BC4BC(), v3 = v2, , (v3 & 1) != 0))
  {
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v4 = sub_258532A4C();
    __swift_project_value_buffer(v4, qword_27F93CFA8);
    v5 = sub_258532A2C();
    v6 = sub_2585338CC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19[0] = v8;
      *v7 = 136315138;
      v9 = sub_25853347C();
      v11 = sub_2584713B0(v9, v10, v19);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_25845E000, v5, v6, "State for %s is already monitored", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x259C82900](v8, -1, -1);
      MEMORY[0x259C82900](v7, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303D0, &unk_258537F90);
    sub_2584ABBE0(&qword_27F9303D8, &qword_27F9303D0, &unk_258537F90, &unk_25853F29C);
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }

  else
  {
    v16 = v0[6];
    v15 = v0[7];
    sub_2584ABBE0(&qword_27F9305B0, &qword_27F930258, &qword_2585379B0, &unk_25853F1D8);
    v17 = swift_task_alloc();
    v0[8] = v17;
    *(v17 + 16) = v15;
    *(v17 + 32) = v16;
    v18 = swift_task_alloc();
    v0[9] = v18;
    *v18 = v0;
    v18[1] = sub_2584A2B88;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_2584A2B88()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_2584AC7C4, v1, 0);
}

uint64_t sub_2584A2CB4(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_2584A2CD8, v2, 0);
}

uint64_t sub_2584A2CD8()
{
  v21 = v0;
  v1 = v0[7];
  (*(v0[5] + 112))(&v19);
  sub_2584A9614(v19, v20);
  swift_beginAccess();
  if (*(*(v1 + 120) + 16) && (, sub_2584BC50C(), v3 = v2, , (v3 & 1) != 0))
  {
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v4 = sub_258532A4C();
    __swift_project_value_buffer(v4, qword_27F93CFA8);
    v5 = sub_258532A2C();
    v6 = sub_2585338CC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19 = v8;
      *v7 = 136315138;
      v9 = sub_25853347C();
      v11 = sub_2584713B0(v9, v10, &v19);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_25845E000, v5, v6, "State for %s is already monitored", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x259C82900](v8, -1, -1);
      MEMORY[0x259C82900](v7, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303C0, &qword_258537F88);
    sub_2584ABBE0(&qword_27F9303C8, &qword_27F9303C0, &qword_258537F88, &unk_25853F29C);
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }

  else
  {
    v16 = v0[6];
    v15 = v0[7];
    sub_2584ABBE0(&qword_27F930568, &qword_27F930268, &qword_2585379B8, &unk_25853F1D8);
    v17 = swift_task_alloc();
    v0[8] = v17;
    *(v17 + 16) = v15;
    *(v17 + 32) = v16;
    v18 = swift_task_alloc();
    v0[9] = v18;
    *v18 = v0;
    v18[1] = sub_2584A3030;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_2584A3030()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_258485020, v1, 0);
}

uint64_t sub_2584A315C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  v28 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v29 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  v27 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  v17 = sub_25853368C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v13, v30, v9);
  (*(v5 + 16))(v8, v31, v4);
  v18 = sub_2584ABBE0(&qword_27F9305B0, &qword_27F930258, &qword_2585379B0, &unk_25853F1D8);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = (v11 + *(v5 + 80) + v19) & ~*(v5 + 80);
  v21 = (v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = v18;
  (*(v10 + 32))(v22 + v19, v13, v27);
  (*(v5 + 32))(v22 + v20, v29, v28);
  *(v22 + v21) = a2;
  swift_retain_n();
  v23 = sub_258476C88(0, 0, v16, &unk_2585382E0, v22);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(a2 + 120);
  *(a2 + 120) = 0x8000000000000000;
  sub_25850D3E4(v23, isUniquelyReferenced_nonNull_native);
  *(a2 + 120) = v32;
  return swift_endAccess();
}

uint64_t sub_2584A34C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  v28 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v29 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  v27 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  v17 = sub_25853368C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v13, v30, v9);
  (*(v5 + 16))(v8, v31, v4);
  v18 = sub_2584ABBE0(&qword_27F930568, &qword_27F930268, &qword_2585379B8, &unk_25853F1D8);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = (v11 + *(v5 + 80) + v19) & ~*(v5 + 80);
  v21 = (v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = v18;
  (*(v10 + 32))(v22 + v19, v13, v27);
  (*(v5 + 32))(v22 + v20, v29, v28);
  *(v22 + v21) = a2;
  swift_retain_n();
  v23 = sub_258476C88(0, 0, v16, &unk_258538230, v22);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(a2 + 120);
  *(a2 + 120) = 0x8000000000000000;
  sub_25850D6D0(v23, isUniquelyReferenced_nonNull_native);
  *(a2 + 120) = v32;
  return swift_endAccess();
}

uint64_t sub_2584A3824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930578, &qword_258538240);
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584A38F8, a6, 0);
}

uint64_t sub_2584A38F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  sub_25853364C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  sub_2585336FC();
  v0[17] = sub_2584ABBE0(&qword_27F9305B0, &qword_27F930258, &qword_2585379B0, &unk_25853F1D8);
  swift_beginAccess();
  v1 = v0[17];
  v2 = v0[13];
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_2584A3A40;
  v4 = v0[14];

  return MEMORY[0x2822003E8](v0 + 23, v2, v1, v4);
}

uint64_t sub_2584A3A40()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_2584A3B50, v1, 0);
}

uint64_t sub_2584A3B50(uint64_t a1)
{
  v26 = v1;
  v2 = *(v1 + 184);
  if (v2 == 3 || (sub_25853376C() & 1) != 0)
  {
LABEL_5:
    (*(*(v1 + 120) + 8))(*(v1 + 128), *(v1 + 112));

    v3 = *(v1 + 8);

    return v3();
  }

  if ((v2 - 1) < 2)
  {
    swift_beginAccess();
    sub_2584F8780();
    swift_endAccess();

    swift_beginAccess();
    sub_2584F87CC();
    swift_endAccess();

    goto LABEL_5;
  }

  v5 = *(*(v1 + 104) + 112);
  if (!*(v5 + 16))
  {
    goto LABEL_15;
  }

  v6 = sub_2584BC4BC();
  if ((v7 & 1) == 0)
  {

LABEL_15:
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v12 = sub_258532A4C();
    __swift_project_value_buffer(v12, qword_27F93CFA8);
    v13 = sub_258532A2C();
    v14 = sub_2585338CC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      v17 = sub_25853347C();
      v19 = sub_2584713B0(v17, v18, &v25);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_25845E000, v13, v14, "MediaStream with identifier=%s not found", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x259C82900](v16, -1, -1);
      MEMORY[0x259C82900](v15, -1, -1);
    }

    goto LABEL_20;
  }

  v8 = *(v1 + 104);
  v9 = *(*(v5 + 56) + 8 * v6);
  *(v1 + 152) = v9;

  v10 = *(v8 + 136);
  *(v1 + 160) = v10;
  if (v10)
  {
    *(v1 + 168) = *(*(v1 + 104) + 144);

    v24 = (v10 + *v10);
    v11 = swift_task_alloc();
    *(v1 + 176) = v11;
    *v11 = v1;
    v11[1] = sub_2584A3F60;

    return v24(v9);
  }

LABEL_20:
  v20 = *(v1 + 136);
  v21 = *(v1 + 104);
  v22 = swift_task_alloc();
  *(v1 + 144) = v22;
  *v22 = v1;
  v22[1] = sub_2584A3A40;
  v23 = *(v1 + 112);

  return MEMORY[0x2822003E8](v1 + 184, v21, v20, v23);
}

uint64_t sub_2584A3F60()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 104);

  sub_258464B24(v2, v1);

  return MEMORY[0x2822009F8](sub_2584A40AC, v3, 0);
}

uint64_t sub_2584A40AC()
{

  v1 = v0[17];
  v2 = v0[13];
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_2584A3A40;
  v4 = v0[14];

  return MEMORY[0x2822003E8](v0 + 23, v2, v1, v4);
}

uint64_t sub_2584A416C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930578, &qword_258538240);
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584A4240, a6, 0);
}

uint64_t sub_2584A4240()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  sub_25853364C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  sub_2585336FC();
  v0[17] = sub_2584ABBE0(&qword_27F930568, &qword_27F930268, &qword_2585379B8, &unk_25853F1D8);
  swift_beginAccess();
  v1 = v0[17];
  v2 = v0[13];
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_2584A4388;
  v4 = v0[14];

  return MEMORY[0x2822003E8](v0 + 23, v2, v1, v4);
}

uint64_t sub_2584A4388()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_2584A4498, v1, 0);
}

uint64_t sub_2584A4498(uint64_t a1)
{
  v26 = v1;
  v2 = *(v1 + 184);
  if (v2 == 3 || (sub_25853376C() & 1) != 0)
  {
LABEL_5:
    (*(*(v1 + 120) + 8))(*(v1 + 128), *(v1 + 112));

    v3 = *(v1 + 8);

    return v3();
  }

  if ((v2 - 1) < 2)
  {
    swift_beginAccess();
    sub_2584F8818();
    swift_endAccess();

    swift_beginAccess();
    sub_2584F8904();
    swift_endAccess();

    goto LABEL_5;
  }

  v5 = *(*(v1 + 104) + 112);
  if (!*(v5 + 16))
  {
    goto LABEL_15;
  }

  v6 = sub_2584BC50C();
  if ((v7 & 1) == 0)
  {

LABEL_15:
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v12 = sub_258532A4C();
    __swift_project_value_buffer(v12, qword_27F93CFA8);
    v13 = sub_258532A2C();
    v14 = sub_2585338CC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      v17 = sub_25853347C();
      v19 = sub_2584713B0(v17, v18, &v25);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_25845E000, v13, v14, "MediaStream with identifier=%s not found", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x259C82900](v16, -1, -1);
      MEMORY[0x259C82900](v15, -1, -1);
    }

    goto LABEL_20;
  }

  v8 = *(v1 + 104);
  v9 = *(*(v5 + 56) + 8 * v6);
  *(v1 + 152) = v9;

  v10 = *(v8 + 136);
  *(v1 + 160) = v10;
  if (v10)
  {
    *(v1 + 168) = *(*(v1 + 104) + 144);

    v24 = (v10 + *v10);
    v11 = swift_task_alloc();
    *(v1 + 176) = v11;
    *v11 = v1;
    v11[1] = sub_2584A48A8;

    return v24(v9);
  }

LABEL_20:
  v20 = *(v1 + 136);
  v21 = *(v1 + 104);
  v22 = swift_task_alloc();
  *(v1 + 144) = v22;
  *v22 = v1;
  v22[1] = sub_2584A4388;
  v23 = *(v1 + 112);

  return MEMORY[0x2822003E8](v1 + 184, v21, v20, v23);
}

uint64_t sub_2584A48A8()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 104);

  sub_258464B24(v2, v1);

  return MEMORY[0x2822009F8](sub_2584A49F4, v3, 0);
}

uint64_t sub_2584A49F4()
{

  v1 = v0[17];
  v2 = v0[13];
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_2584A4388;
  v4 = v0[14];

  return MEMORY[0x2822003E8](v0 + 23, v2, v1, v4);
}

uint64_t sub_2584A4AB4()
{
  v4 = &type metadata for AudioStreamIdentifier;
  v5 = sub_2584ABB2C();
  v6 = *(v0 + 120);
  v7 = 4;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider + 24));
  v1 = off_286990988;
  type metadata accessor for TelemetryProvider(0);
  v1(v3);
  return sub_2584A57D8(v3);
}

uint64_t sub_2584A4B58()
{
  v4 = &type metadata for VideoStreamIdentifier;
  v5 = sub_2584AC364();
  v6 = *(v0 + 48) >> 7;
  v7 = 4;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider + 24));
  v1 = off_286990988;
  type metadata accessor for TelemetryProvider(0);
  v1(v3);
  return sub_2584A57D8(v3);
}

uint64_t sub_2584A4C00(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930590, &qword_25853F8A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = *a3;
  swift_beginAccess();
  sub_2584AC5D0(v8, a2 + v11, &qword_27F930590, &qword_25853F8A0);
  return swift_endAccess();
}

uint64_t sub_2584A4D50(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2584A4E48;

  return v6(a1);
}

uint64_t sub_2584A4E48()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2584A4F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_258533C4C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2584A5040, 0, 0);
}

uint64_t sub_2584A5040()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_258533C6C();
  v5 = sub_2584AC2F0(&qword_27F930428, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_258533E6C();
  sub_2584AC2F0(&qword_27F930430, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_258533C7C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_2584A51D0;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_2584A51D0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2584A538C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_2584A538C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2584A53F8(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for NetworkBackedControlConnectionMigrationController(0);
  v7 = &off_28698FC50;
  *&v5 = a1;
  swift_defaultActor_initialize();
  *(a2 + 112) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0;
  sub_258464C18(&v5, a2 + 120);
  return a2;
}

uint64_t type metadata accessor for MediaContinuitySession(uint64_t a1)
{
  result = qword_27F930370;
  if (!qword_27F930370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

unint64_t sub_2584A56DC()
{
  result = qword_27F930308;
  if (!qword_27F930308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930308);
  }

  return result;
}

unint64_t sub_2584A5730()
{
  result = qword_27F930328;
  if (!qword_27F930328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930328);
  }

  return result;
}

unint64_t sub_2584A5784()
{
  result = qword_27F930330;
  if (!qword_27F930330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930330);
  }

  return result;
}

void sub_2584A5834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_2584A5884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a4;
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_258472CF8;

  return sub_258495E38(a1, v12, v13, a5, a6, a7);
}

uint64_t sub_2584A5950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, _OWORD *a8)
{
  *(v8 + 56) = a6;
  *(v8 + 64) = v10;
  *(v8 + 88) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 32) = a1;
  *(v8 + 16) = *a8;
  return MEMORY[0x2822009F8](sub_2584A598C, 0, 0);
}

uint64_t sub_2584A598C()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 48) = v0 + 16;
  *(v4 + 56) = v2;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_2584AC7B4;
  v6 = *(v0 + 32);
  v7 = MEMORY[0x277D84F78] + 8;
  v8 = MEMORY[0x277D84F78] + 8;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v6, v7, v8, 0, 0, &unk_258538040, v4, v9);
}

uint64_t sub_2584A5AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v14 = *a7;
  v15 = a7[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_258472CF8;

  return sub_258497134(a1, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t sub_2584A5B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = *a4;
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_258472CF8;

  return sub_25849879C(a1, a2, a3, v12, v13, a5, a6);
}

uint64_t sub_2584A5C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a4;
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_258472CF8;

  return sub_258496758(a1, v12, v13, a5, a6, a7);
}

uint64_t sub_2584A5D40(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v40 = a6;
  v41 = a3;
  v44 = a4;
  v39 = a1;
  v45 = a10;
  v42 = a9;
  v43 = a2;
  v13 = sub_258533C6C();
  v35 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v36 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v34 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v34 - v22;
  v24 = *a5;
  v37 = a5[1];
  v38 = v24;
  v25 = sub_25853368C();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  (*(v17 + 16))(v20, v39, v16);
  (*(v14 + 16))(&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v13);
  v26 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v27 = v26 + v18;
  v28 = (*(v14 + 80) + (v27 & 0xFFFFFFFFFFFFFFF8) + 24) & ~*(v14 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  v30 = v41;
  *(v29 + 4) = v43;
  *(v29 + 5) = v30;
  (*(v17 + 32))(&v29[v26], v20, v34);
  v29[v27] = v44;
  v31 = &v29[v27 & 0xFFFFFFFFFFFFFFF8];
  v32 = v37;
  *(v31 + 1) = v38;
  *(v31 + 2) = v32;
  (*(v14 + 32))(&v29[v28], v36, v35);

  sub_2585135CC(0, 0, v23, v45, v29);
}

uint64_t sub_2584A6034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, _OWORD *a8)
{
  *(v8 + 56) = a6;
  *(v8 + 64) = v10;
  *(v8 + 88) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 32) = a1;
  *(v8 + 16) = *a8;
  return MEMORY[0x2822009F8](sub_2584A6070, 0, 0);
}

uint64_t sub_2584A6070()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 48) = v0 + 16;
  *(v4 + 56) = v2;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_2584A6184;
  v6 = *(v0 + 32);
  v7 = MEMORY[0x277D84F78] + 8;
  v8 = MEMORY[0x277D84F78] + 8;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v6, v7, v8, 0, 0, &unk_2585381C0, v4, v9);
}

uint64_t sub_2584A6184()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2584A6294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v14 = *a7;
  v15 = a7[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_258472CF8;

  return sub_258497718(a1, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t sub_2584A638C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = *a4;
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_258472CF8;

  return sub_258498DD0(a1, a2, a3, v12, v13, a5, a6);
}

void *sub_2584A6468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TimeSyncBackedSynchronizedClock();
  v25[3] = v8;
  v25[4] = &off_286990B40;
  v25[0] = a1;
  v9 = type metadata accessor for KTraceBackedSignpostReporter();
  v23 = v9;
  v24 = &off_28698F5E0;
  v22[0] = a4;
  type metadata accessor for TimeSyncHeartbeat();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v25, v8);
  MEMORY[0x28223BE20](v11);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  MEMORY[0x28223BE20](v15);
  v17 = (v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v13;
  v20 = *v17;
  v10[5] = v8;
  v10[6] = &off_286990B40;
  v10[2] = v19;
  v10[12] = v9;
  v10[13] = &off_28698F5E0;
  v10[8] = a3;
  v10[9] = v20;
  v10[14] = 0;
  v10[7] = a2;
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v10;
}

uint64_t sub_2584A666C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_258472CF8;

  return sub_2584A3824(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2584A673C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_258472CF8;

  return sub_2584A416C(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2584A682C()
{
  v10 = v0;
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  __swift_project_value_buffer(v1, qword_27F93CFA8);

  v2 = sub_258532A2C();
  v3 = sub_2585338CC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9[0] = v5;
    *v4 = 136315138;
    sub_258533B8C();

    v9[1] = 0xD000000000000017;
    v9[2] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_258533DFC();
    MEMORY[0x259C81500](v6);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v7 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v9);

    *(v4 + 4) = v7;
    _os_log_impl(&dword_25845E000, v2, v3, "%s suspended by coex session", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  return sub_258533C9C();
}

uint64_t sub_2584A6AB4()
{
  v10 = v0;
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  __swift_project_value_buffer(v1, qword_27F93CFA8);

  v2 = sub_258532A2C();
  v3 = sub_2585338CC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9[0] = v5;
    *v4 = 136315138;
    sub_258533B8C();

    v9[1] = 0xD000000000000017;
    v9[2] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v6 = sub_258533DFC();
    MEMORY[0x259C81500](v6);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v7 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v9);

    *(v4 + 4) = v7;
    _os_log_impl(&dword_25845E000, v2, v3, "%s resumed by coex session", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  return sub_258533C9C();
}

unint64_t sub_2584A6D20()
{
  result = qword_27F930368;
  if (!qword_27F930368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930368);
  }

  return result;
}

unint64_t sub_2584A6DBC(uint64_t a1)
{
  result = sub_2584A5730();
  *(a1 + 8) = result;
  return result;
}

void sub_2584A6DEC(uint64_t a1)
{
  sub_2585329BC();
  if (v1 <= 0x3F)
  {
    sub_2584A7840(319, &qword_27F930380, MEMORY[0x277D857B8]);
    if (v2 <= 0x3F)
    {
      sub_2584A7840(319, &qword_27F930388, MEMORY[0x277D85788]);
      if (v3 <= 0x3F)
      {
        sub_2584A7894(319, &qword_27F930390, &qword_27F930278, &unk_2585379C0);
        if (v4 <= 0x3F)
        {
          sub_2584A7894(319, &qword_27F92FE88, &qword_27F9308F0, &qword_25853AC70);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of MediaContinuitySession.activate(incomingVideoStreamConfigurations:incomingAudioStreamConfigurations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 616) + **(*v3 + 616));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_258472CF8;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MediaContinuitySession.invalidate()()
{
  v4 = (*(*v0 + 624) + **(*v0 + 624));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_258472CF8;

  return v4();
}

uint64_t dispatch thunk of MediaContinuitySession.makeVideoStream(withConfiguration:)(uint64_t a1)
{
  v6 = (*(*v1 + 632) + **(*v1 + 632));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2584AC7D8;

  return v6(a1);
}

uint64_t dispatch thunk of MediaContinuitySession.makeAudioStream(withConfiguration:)(uint64_t a1)
{
  v6 = (*(*v1 + 640) + **(*v1 + 640));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2584A7520;

  return v6(a1);
}

uint64_t sub_2584A7520(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of MediaContinuitySession.synchronizedClockIdentifier.getter()
{
  v4 = (*(*v0 + 648) + **(*v0 + 648));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2584A7744;

  return v4();
}

uint64_t sub_2584A7744(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_2584A7840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for MediaContinuitySession.Event);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2584A7894(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_258533A0C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2584A78F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 16))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2584A7950(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaContinuitySession.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaContinuitySession.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2584A7B34()
{
  result = qword_27F930398;
  if (!qword_27F930398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930398);
  }

  return result;
}

uint64_t sub_2584A7B8C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2584A7BE0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 137, 7);
}

uint64_t sub_2584A7C7C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930208, &qword_258537990);
  v179 = *(v4 - 8);
  v180 = v4;
  MEMORY[0x28223BE20](v4);
  v176 = &v165 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930210, &qword_258537998);
  v177 = *(v6 - 8);
  v178 = v6;
  MEMORY[0x28223BE20](v6);
  v175 = &v165 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930218, &unk_2585379A0);
  v172 = *(v8 - 8);
  v173 = v8;
  MEMORY[0x28223BE20](v8);
  v171 = &v165 - v9;
  v10 = sub_2585329BC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v169 = &v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v189 = &v165 - v14;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931360, &unk_25853CD10);
  v15 = MEMORY[0x28223BE20](v166);
  v165 = &v165 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v181 = &v165 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v168 = &v165 - v20;
  MEMORY[0x28223BE20](v19);
  v21 = *(a1 + 8);
  v188 = *a1;
  v22 = *(a1 + 24);
  v199 = *(a1 + 16);
  v200 = v21;
  v202 = v22;
  v201 = *(a1 + 32);
  v203 = *(a1 + 33);
  v170 = v11;
  v23 = *(v11 + 56);
  v190 = v10;
  v191 = &v165 - v24;
  v23();
  v187 = a2;
  sub_258464C30(a2, &v249);
  v192 = type metadata accessor for MediaStreamVendorAVConference();
  memset(v247, 0, sizeof(v247));
  v248 = 0;
  v198 = swift_allocObject();
  v197 = type metadata accessor for TimeSyncBackedTimeSynchronizerVendor();
  v25 = swift_allocObject();
  v196 = type metadata accessor for TimeSyncHeartbeatVendor();
  v26 = swift_allocObject();
  v195 = type metadata accessor for FoundationBackedUserDefaultsProvider();
  v27 = swift_allocObject();
  v27[3] = 0xD00000000000001CLL;
  v27[4] = 0x800000025853FF50;
  v28 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v29 = sub_25853341C();
  v30 = [v28 initWithSuiteName_];

  v27[2] = v30;
  v194 = type metadata accessor for TelemetryProviderVendor();
  v31 = swift_allocObject();
  v193 = type metadata accessor for CoexSessionVendor();
  v32 = swift_allocObject();
  v33 = type metadata accessor for NetworkBackedControlConnectionMigrationController(0);
  swift_allocObject();

  v34 = sub_2584E7828();
  v245 = v33;
  v246 = &off_28698FC50;
  v244[0] = v34;
  v35 = type metadata accessor for ControlConnectionMigrationManager();
  v36 = swift_allocObject();
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v244, v33);
  MEMORY[0x28223BE20](v37);
  v39 = (&v165 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39);
  v41 = sub_2584A53F8(*v39, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(v244);
  v42 = type metadata accessor for DateBackedTimeProvider();
  v167 = v42;
  v43 = swift_allocObject();
  v44 = v192;
  v245 = v192;
  v246 = &off_2869917C8;
  v244[0] = v198;
  v242 = v197;
  v243 = &off_286990C38;
  v186 = v25;
  v241[0] = v25;
  v240 = &off_28698E5F8;
  v239 = v196;
  v184 = v27;
  v185 = v26;
  v238[0] = v26;
  v237 = &off_28698F5C8;
  v236 = v195;
  v235[0] = v27;
  v234 = &off_286990B00;
  v233 = v194;
  v183 = v31;
  v232[0] = v31;
  v228 = &off_28698BFD8;
  v231 = &off_28698F4C8;
  v230 = v193;
  v182 = v32;
  v229[0] = v32;
  v227 = v35;
  v226[0] = v41;
  v225 = &off_28698F1D0;
  v224 = v42;
  v223[0] = v43;
  v221 = &type metadata for NetworkBackedNetworkPathVendor;
  v222 = &off_286990B30;
  type metadata accessor for MediaContinuitySession(0);
  v45 = swift_allocObject();
  v46 = __swift_mutable_project_boxed_opaque_existential_1(v244, v44);
  MEMORY[0x28223BE20](v46);
  v174 = (&v165 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))();
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v241, v242);
  MEMORY[0x28223BE20](v49);
  v51 = (&v165 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51);
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v238, v239);
  MEMORY[0x28223BE20](v53);
  v55 = (&v165 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = __swift_mutable_project_boxed_opaque_existential_1(v235, v236);
  MEMORY[0x28223BE20](v57);
  v59 = (&v165 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v60 + 16))(v59);
  v61 = __swift_mutable_project_boxed_opaque_existential_1(v232, v233);
  MEMORY[0x28223BE20](v61);
  v63 = (&v165 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v64 + 16))(v63);
  v65 = __swift_mutable_project_boxed_opaque_existential_1(v229, v230);
  MEMORY[0x28223BE20](v65);
  v67 = (&v165 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v68 + 16))(v67);
  v69 = __swift_mutable_project_boxed_opaque_existential_1(v226, v227);
  MEMORY[0x28223BE20](v69);
  v71 = (&v165 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71);
  v73 = __swift_mutable_project_boxed_opaque_existential_1(v223, v224);
  MEMORY[0x28223BE20](v73);
  v75 = (&v165 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v76 + 16))(v75);
  __swift_mutable_project_boxed_opaque_existential_1(v220, v221);
  v77 = *v174;
  v78 = *v51;
  v79 = *v55;
  v80 = *v59;
  v81 = *v63;
  v82 = *v67;
  v174 = *v71;
  v83 = *v75;
  v219[4] = &off_2869917C8;
  v219[3] = v192;
  v219[0] = v77;
  v218[4] = &off_286990C38;
  v218[3] = v197;
  v218[0] = v78;
  v217[4] = &off_28698E5F8;
  v217[3] = v196;
  v217[0] = v79;
  v216[4] = &off_28698F5C8;
  v216[3] = v195;
  v216[0] = v80;
  v215 = &off_286990B00;
  v214 = v194;
  v213[0] = v81;
  v212[3] = v193;
  v212[4] = &off_28698F4C8;
  v212[0] = v82;
  v211[3] = v167;
  v211[4] = &off_28698F1D0;
  v211[0] = v83;
  v210[3] = &type metadata for NetworkBackedNetworkPathVendor;
  v210[4] = &off_286990B30;
  swift_defaultActor_initialize();
  v84 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_id;
  sub_2585329AC();
  *(v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state) = 0;
  v85 = (v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint);
  v85[6] = 0;
  *(v85 + 1) = 0u;
  *(v85 + 2) = 0u;
  *v85 = 0u;
  v86 = v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
  *v86 = 0u;
  *(v86 + 16) = 0u;
  *(v86 + 32) = 0;
  v87 = v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizer;
  *(v87 + 32) = 0;
  *v87 = 0u;
  *(v87 + 16) = 0u;
  *(v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask) = 0;
  v88 = v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeat;
  *(v88 + 32) = 0;
  *v88 = 0u;
  *(v88 + 16) = 0u;
  v89 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_videoStreamManager;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930258, &qword_2585379B0);
  v90 = swift_allocObject();
  swift_defaultActor_initialize();
  v91 = MEMORY[0x277D84F98];
  *(v90 + 112) = MEMORY[0x277D84F98];
  *(v90 + 120) = v91;
  *(v90 + 136) = 0;
  *(v90 + 144) = 0;
  *(v90 + 128) = v91;
  *(v90 + 152) = 1;
  *(v45 + v89) = v90;
  v92 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_audioStreamManager;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930268, &qword_2585379B8);
  v93 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v93 + 112) = v91;
  *(v93 + 120) = v91;
  *(v93 + 136) = 0;
  *(v93 + 144) = 0;
  *(v93 + 128) = v91;
  v94 = v188;
  *(v93 + 152) = 1;
  *(v45 + v92) = v93;
  v95 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventStream;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930278, &unk_2585379C0);
  (*(*(v96 - 8) + 56))(v45 + v95, 1, 1, v96);
  *(v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventMonitor) = 0;
  v97 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_remoteActivationContinuation;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v99 = v45 + v97;
  v100 = v94;
  (*(*(v98 - 8) + 56))(v99, 1, 1, v98);
  v101 = v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_coexSession;
  *v101 = 0u;
  *(v101 + 16) = 0u;
  *(v101 + 32) = 0;
  v102 = v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
  *(v102 + 32) = 0;
  *v102 = 0u;
  *(v102 + 16) = 0u;
  v103 = v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo;
  *v103 = 0u;
  *(v103 + 16) = 0u;
  *(v103 + 32) = 0u;
  *(v103 + 48) = 0;
  v104 = v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage;
  v106 = v199;
  v105 = v200;
  *v104 = v94;
  *(v104 + 8) = v105;
  v107 = v202;
  *(v104 + 16) = v106;
  *(v104 + 24) = v107;
  *(v104 + 32) = v201;
  *(v104 + 33) = v203;
  swift_beginAccess();
  if (*(v86 + 24))
  {
    if (*(&v250 + 1))
    {
      __swift_assign_boxed_opaque_existential_1(v86, &v249);
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v86);
  }

  else if (*(&v250 + 1))
  {
    sub_258464C30(&v249, v86);
    goto LABEL_8;
  }

  v108 = v250;
  *v86 = v249;
  *(v86 + 16) = v108;
  *(v86 + 32) = v251;
LABEL_8:
  v109 = v191;
  v111 = v169;
  v110 = v170;
  v112 = v168;
  swift_endAccess();
  v113 = *v85;
  v114 = v85[1];
  v115 = v85[2];
  v116 = v85[3];
  v117 = v85[4];
  v118 = v85[5];
  v119 = v85[6];
  *v85 = 0u;
  *(v85 + 1) = 0u;
  *(v85 + 2) = 0u;
  v85[6] = 0;
  sub_25847AC44(v113, v114, v115, v116, v117, v118, v119);
  sub_2584AC3B8(v247, v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connectionVendor, &qword_27F9302B8, &unk_2585379D0);
  sub_258464C30(v219, v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_mediaStreamVendor);
  sub_258464C30(v218, v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendor);
  sub_258464C30(v217, v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeatVendor);
  sub_258464C30(v216, v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_userDefaultsProvider);
  sub_258464C30(v211, v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeProvider);
  __swift_project_boxed_opaque_existential_1(v213, v214);
  v204[0] = v100;
  v204[1] = v200;
  v204[2] = v199;
  v204[3] = v202;
  v205 = v201;
  v206 = v203;
  v120 = v45 + v84;
  v121 = v189;
  v122 = v190;
  v196 = *(v110 + 16);
  v197 = v110 + 16;
  v196(v189, v120, v190);
  sub_258502D04(v204, v121, &v207);
  v194 = *(v110 + 8);
  v195 = v110 + 8;
  v194(v121, v122);
  sub_258464C18(&v207, v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider);
  sub_258464C30(v212, v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_coexSessionVendor);
  v123 = v109;
  sub_2584AC3B8(v109, v112, &qword_27F931360, &unk_25853CD10);
  v124 = *(v110 + 48);
  if (v124(v112, 1, v122) == 1)
  {
    sub_2585329AC();
    v125 = v124(v112, 1, v122);
    v126 = v181;
    if (v125 != 1)
    {
      sub_258465168(v112, &qword_27F931360, &unk_25853CD10);
    }
  }

  else
  {
    (*(v110 + 32))(v111, v112, v122);
    v126 = v181;
  }

  (*(v110 + 32))(v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_clientSessionID, v111, v122);
  sub_258464C30(v210, v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_networkPathVendor);
  v208 = &type metadata for MediaContinuityKitFeatureFlags;
  v209 = sub_2584A56DC();
  LOBYTE(v207) = 0;
  sub_2585329EC();
  __swift_destroy_boxed_opaque_existential_1Tm(&v207);
  v127 = v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionMigrationManager;
  *v127 = 0u;
  *(v127 + 16) = 0u;
  *(v127 + 32) = 0;
  v129 = v179;
  v128 = v180;
  v130 = v176;
  (*(v179 + 104))(v176, *MEMORY[0x277D85778], v180);
  v131 = v171;
  v132 = v175;
  sub_25853369C();
  (*(v129 + 8))(v130, v128);
  (*(v172 + 32))(v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_eventStream, v131, v173);
  (*(v177 + 32))(v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_eventStreamContinuation, v132, v178);
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v133 = sub_258532A4C();
  v134 = __swift_project_value_buffer(v133, qword_27F93CFA8);
  v135 = v123;
  sub_2584AC3B8(v123, v126, &qword_27F931360, &unk_25853CD10);

  v136 = sub_258532A2C();
  v137 = sub_2585338EC();

  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    v193 = v134;
    LODWORD(v181) = v137;
    v139 = v138;
    v192 = swift_slowAlloc();
    v204[0] = v192;
    *v139 = 136315650;
    *&v207 = 0;
    *(&v207 + 1) = 0xE000000000000000;

    sub_258533B8C();

    *&v207 = 0xD000000000000017;
    *(&v207 + 1) = 0x8000000258540530;
    v180 = sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v140 = sub_258533DFC();
    MEMORY[0x259C81500](v140);

    MEMORY[0x259C81500](93, 0xE100000000000000);

    v141 = sub_2584713B0(v207, *(&v207 + 1), v204);

    *(v139 + 4) = v141;
    v142 = v126;
    *(v139 + 12) = 2080;
    sub_2584AC3B8(v126, v165, &qword_27F931360, &unk_25853CD10);
    v143 = sub_25853347C();
    v144 = v122;
    v146 = v145;
    v135 = v191;
    sub_258465168(v142, &qword_27F931360, &unk_25853CD10);
    v147 = sub_2584713B0(v143, v146, v204);

    *(v139 + 14) = v147;
    *(v139 + 22) = 2080;
    v148 = v189;
    v196(v189, v45 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_clientSessionID, v144);
    v149 = sub_258533DFC();
    v151 = v150;
    v194(v148, v144);
    v152 = sub_2584713B0(v149, v151, v204);

    *(v139 + 24) = v152;
    _os_log_impl(&dword_25845E000, v136, v181, "%s clientSessionID=%s, effective clientSessionID=%s", v139, 0x20u);
    v153 = v192;
    swift_arrayDestroy();
    MEMORY[0x259C82900](v153, -1, -1);
    MEMORY[0x259C82900](v139, -1, -1);
  }

  else
  {

    sub_258465168(v126, &qword_27F931360, &unk_25853CD10);
  }

  v154 = sub_258532A2C();
  v155 = sub_2585338EC();

  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    v204[0] = v157;
    *v156 = 136315394;
    *&v207 = 0;
    *(&v207 + 1) = 0xE000000000000000;

    sub_258533B8C();

    *&v207 = 0xD000000000000017;
    *(&v207 + 1) = 0x8000000258540530;
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v158 = sub_258533DFC();
    MEMORY[0x259C81500](v158);

    MEMORY[0x259C81500](93, 0xE100000000000000);

    v159 = sub_2584713B0(v207, *(&v207 + 1), v204);

    *(v156 + 4) = v159;
    *(v156 + 12) = 2080;
    if (v203)
    {
      if (v199 | v200 | v188 | v202 || v201)
      {
        v164 = v199 | v200 | v202;
        if (v201 || v188 != 1 || v164)
        {
          if (v201 || v188 != 2 || v164)
          {
            v160 = 0xEF676E69726F7272;
            v161 = 0x694D656E6F685069;
            if (!v201 && v188 == 3 && !v164)
            {
              v160 = 0x80000002585402B0;
              v161 = 0xD000000000000010;
            }
          }

          else
          {
            v160 = 0xE700000000000000;
            v161 = 0x72616365646973;
          }
        }

        else
        {
          v160 = 0xE700000000000000;
          v161 = 0x79616C70726961;
        }
      }

      else
      {
        v160 = 0x80000002585402D0;
        v161 = 0xD000000000000011;
      }
    }

    else
    {
      v160 = 0x80000002585402F0;
      v161 = 0xD000000000000012;
    }

    v162 = sub_2584713B0(v161, v160, v204);

    *(v156 + 14) = v162;
    _os_log_impl(&dword_25845E000, v154, v155, "Created %s usage:%s", v156, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v157, -1, -1);
    MEMORY[0x259C82900](v156, -1, -1);
  }

  sub_258465168(v247, &qword_27F9302B8, &unk_2585379D0);
  if (*(&v250 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v249);
  }

  sub_258465168(v135, &qword_27F931360, &unk_25853CD10);
  __swift_destroy_boxed_opaque_existential_1Tm(v210);
  __swift_destroy_boxed_opaque_existential_1Tm(v211);

  __swift_destroy_boxed_opaque_existential_1Tm(v212);
  __swift_destroy_boxed_opaque_existential_1Tm(v216);
  __swift_destroy_boxed_opaque_existential_1Tm(v217);
  __swift_destroy_boxed_opaque_existential_1Tm(v218);
  __swift_destroy_boxed_opaque_existential_1Tm(v219);
  __swift_destroy_boxed_opaque_existential_1Tm(v213);
  __swift_destroy_boxed_opaque_existential_1Tm(v220);
  __swift_destroy_boxed_opaque_existential_1Tm(v223);
  __swift_destroy_boxed_opaque_existential_1Tm(v226);
  __swift_destroy_boxed_opaque_existential_1Tm(v229);
  __swift_destroy_boxed_opaque_existential_1Tm(v232);
  __swift_destroy_boxed_opaque_existential_1Tm(v235);
  __swift_destroy_boxed_opaque_existential_1Tm(v238);
  __swift_destroy_boxed_opaque_existential_1Tm(v241);
  __swift_destroy_boxed_opaque_existential_1Tm(v244);

  __swift_destroy_boxed_opaque_existential_1Tm(v187);
  return v45;
}

uint64_t sub_2584A9614(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

id sub_2584A967C(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
    v6 = result;
    swift_unknownObjectRetain();

    return v6;
  }

  return result;
}

void *sub_2584A96C0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2584A980C(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FEC8, &qword_258536918);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE08, &unk_258536380);
  v8 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE38, &qword_258536398);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  swift_defaultActor_initialize();
  *(a3 + 128) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  sub_2585329AC();
  v15 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_startContinuation;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  (*(*(v16 - 8) + 56))(a3 + v15, 1, 1, v16);
  *(a3 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventMonitorTask) = 0;
  v17 = v21;
  *(a3 + 112) = v21;
  *(a3 + 128) = &protocol witness table for MediaContinuitySession;
  swift_unknownObjectWeakAssign();
  (*(v5 + 104))(v7, *MEMORY[0x277D858A0], v4);
  v18 = v17;
  sub_2585337BC();
  (*(v5 + 8))(v7, v4);
  (*(v12 + 32))(a3 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventStream, v14, v11);
  (*(v8 + 32))(a3 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventStreamContinuation, v10, v23);
  return a3;
}

uint64_t sub_2584A9B30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930278, &unk_2585379C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2584A9C14(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930278, &unk_2585379C0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258472CF8;

  return sub_2584853EC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2584A9D40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2584A9DA8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2584A9DF8(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258472CF8;

  return sub_258484DD4(a1, v1 + 16, v4, v1 + 64);
}

uint64_t sub_2584A9EAC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_258533C6C() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_258472CF8;

  return sub_2584A5884(a1, v7, v8, v1 + 4, v1 + v6, v10, v11);
}

unint64_t sub_2584AA020()
{
  result = qword_27F930410;
  if (!qword_27F930410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930410);
  }

  return result;
}

void sub_2584AA088()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930418, &qword_258538020);
  sub_258533C6C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  JUMPOUT(0x2584A5950);
}

uint64_t sub_2584AA230(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_258472CF8;

  return sub_2584A5AA0(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_2584AA338(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930418, &qword_258538020) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_258472CF8;

  return sub_258497D94(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_2584AA45C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_258533C6C() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930418, &qword_258538020) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_258472CF8;

  return sub_2584A5B98(a1, v10, v11, v1 + 4, v1 + v6, v1 + v9);
}

uint64_t sub_2584AA5D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2584AA608(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258472CF8;

  return sub_2584A4D50(a1, v4);
}

unint64_t sub_2584AA71C()
{
  result = qword_27F930488;
  if (!qword_27F930488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930488);
  }

  return result;
}

BOOL sub_2584AA770(void *a1)
{
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
  result = 0;
  if (!swift_dynamicCast() || v5 != 4)
  {
    v3 = a1;
    if (!swift_dynamicCast() || v5 != 5)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2584AA828(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2584AA898(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258472CF8;

  return sub_25848352C(a1);
}

uint64_t objectdestroy_146Tm()
{
  v1 = sub_258533C6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2584AAA10(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_258533C6C() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_258472CF8;

  return sub_2584A5C74(a1, v7, v8, v1 + 4, v1 + v6, v10, v11);
}

uint64_t objectdestroy_156Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = (v6 + *(v4 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_258533C6C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 24) & ~v10;
  v12 = *(v9 + 64);
  v13 = v5 | v10;
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v6, v3);
  (*(v9 + 8))(v2 + v11, v8);

  return MEMORY[0x2821FE8E8](v2, v11 + v12, v13 | 7);
}

void sub_2584AAD34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930540, &qword_2585381A0);
  sub_258533C6C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  JUMPOUT(0x2584A6034);
}

uint64_t sub_2584AAEDC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_258472CF8;

  return sub_2584A6294(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_163Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = *(v4 + 64);
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_2584AB0AC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930540, &qword_2585381A0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_258472CF8;

  return sub_2584981A0(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t objectdestroy_167Tm(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_258533C6C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 48) & ~v7;
  v9 = *(v6 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v7 | v12;
  swift_unknownObjectRelease();
  (*(v6 + 8))(v2 + v8, v5);
  (*(v11 + 8))(v2 + v13, v10);

  return MEMORY[0x2821FE8E8](v2, v13 + v14, v15 | 7);
}

uint64_t sub_2584AB32C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_258533C6C() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930540, &qword_2585381A0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_258472CF8;

  return sub_2584A638C(a1, v10, v11, v1 + 4, v1 + v6, v1 + v9);
}

uint64_t sub_2584AB4B0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_258472CF8;

  return sub_2584A673C(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_2584AB65C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  *a1 = v2;
  *(a1 + 8) = v3;
  return sub_2584742A4(v2, v3);
}

uint64_t sub_2584AB670(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258464F5C;

  return sub_258494EF0(a1, v1);
}

uint64_t sub_2584AB70C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584952D0();
}

uint64_t sub_2584AB79C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258472CF8;

  return sub_258495428(a1);
}

uint64_t sub_2584AB838()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258464F5C;

  return sub_258495580();
}

uint64_t sub_2584AB8C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584956C8();
}

uint64_t sub_2584AB958()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_258495810();
}

uint64_t sub_2584ABAF4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2584A7B8C(result, a2);
  }

  return result;
}

unint64_t sub_2584ABB2C()
{
  result = qword_27F930598;
  if (!qword_27F930598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930598);
  }

  return result;
}

uint64_t sub_2584ABB80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2584ABBE0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t objectdestroy_229Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_2584ABDB0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_258472CF8;

  return sub_2584A666C(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

id sub_2584ABF5C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = v6;
  return sub_2584A967C(v2, v3, v4, v5, v6);
}

uint64_t sub_2584ABF78(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258472CF8;

  return sub_258494B04(a1, v1);
}

uint64_t sub_2584AC014()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_25849522C();
}

uint64_t sub_2584AC0A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258472CF8;

  return sub_258495374(a1);
}

uint64_t sub_2584AC140()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584954DC();
}

uint64_t sub_2584AC1D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_258495624();
}

uint64_t sub_2584AC260()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_25849576C();
}

uint64_t sub_2584AC2F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2584AC364()
{
  result = qword_27F9305C0;
  if (!qword_27F9305C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9305C0);
  }

  return result;
}

uint64_t sub_2584AC3B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2584AC4D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2584AC538(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258472CF8;

  return sub_25848C7A8(a1, v1);
}

uint64_t sub_2584AC5D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2584AC638()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2584AC670(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258472CF8;

  return sub_2584829CC(a1, v1 + 16);
}

uint64_t sub_2584AC708(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258472CF8;

  return sub_258482910(a1, v1 + 16);
}

uint64_t dispatch thunk of MediaStream.activate()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_258472CF8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MediaStream.invalidate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258464F5C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of MediaStream.pause()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258464F5C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of MediaStream.resume()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 72) + **(a2 + 72));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258472CF8;

  return v7(a1, a2);
}

uint64_t VideoStreamEvent.hashValue.getter()
{
  sub_258533EEC();
  MEMORY[0x259C81F40](0);
  return sub_258533F2C();
}

unint64_t sub_2584ACD24()
{
  result = qword_27F9305C8;
  if (!qword_27F9305C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9305C8);
  }

  return result;
}

uint64_t AudioStreamIdentifier.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_258533CEC();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2584ACDF8()
{
  sub_258533EEC();
  sub_2585334AC();
  return sub_258533F2C();
}

uint64_t sub_2584ACE64(uint64_t a1)
{
  sub_258533EEC();
  sub_2585334AC();
  return sub_258533F2C();
}

uint64_t sub_2584ACEB4@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_258533CEC();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_2584ACF5C()
{
  result = qword_27F9305D0;
  if (!qword_27F9305D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9305D0);
  }

  return result;
}

unint64_t sub_2584ACFB0(void *a1)
{
  a1[1] = sub_2584ACFE8();
  a1[2] = sub_2584ACF5C();
  result = sub_2584AD03C();
  a1[3] = result;
  return result;
}

unint64_t sub_2584ACFE8()
{
  result = qword_27F9305D8;
  if (!qword_27F9305D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9305D8);
  }

  return result;
}

unint64_t sub_2584AD03C()
{
  result = qword_27F9305E0;
  if (!qword_27F9305E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9305E0);
  }

  return result;
}

unint64_t sub_2584AD094()
{
  result = qword_27F9305E8;
  if (!qword_27F9305E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9305F0, &qword_2585385C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9305E8);
  }

  return result;
}

uint64_t VideoStreamIdentifier.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_258533CEC();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2584AD19C()
{
  sub_258533EEC();
  sub_2585334AC();
  return sub_258533F2C();
}

uint64_t sub_2584AD220(uint64_t a1)
{
  sub_258533EEC();
  sub_2585334AC();
  return sub_258533F2C();
}

uint64_t sub_2584AD27C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_258533CEC();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_2584AD33C()
{
  result = qword_27F9305F8;
  if (!qword_27F9305F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9305F8);
  }

  return result;
}

unint64_t sub_2584AD390(void *a1)
{
  a1[1] = sub_2584AD3C8();
  a1[2] = sub_2584AD33C();
  result = sub_2584AD41C();
  a1[3] = result;
  return result;
}

unint64_t sub_2584AD3C8()
{
  result = qword_27F930600;
  if (!qword_27F930600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930600);
  }

  return result;
}

unint64_t sub_2584AD41C()
{
  result = qword_27F930608;
  if (!qword_27F930608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930608);
  }

  return result;
}

unint64_t sub_2584AD474()
{
  result = qword_27F930610;
  if (!qword_27F930610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F930618, &qword_258538710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930610);
  }

  return result;
}

double static MediaContinuityUsage.compositorServices.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t MediaContinuityUsage.description.getter()
{
  if (*(v0 + 33) != 1)
  {
    return 0xD000000000000012;
  }

  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2] | v0[3];
  if (*(v0 + 32))
  {
    v4 = 0;
  }

  else
  {
    v4 = (v3 | *v0 | v2) == 0;
  }

  if (v4)
  {
    return 0xD000000000000011;
  }

  v5 = v3 | v2;
  if (!*(v0 + 32) && v1 == 1 && v5 == 0)
  {
    return 0x79616C70726961;
  }

  if (!*(v0 + 32) && v1 == 2 && !v5)
  {
    return 0x72616365646973;
  }

  if (v5)
  {
    v8 = 0x694D656E6F685069;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (v1 == 3)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x694D656E6F685069;
  }

  if (*(v0 + 32))
  {
    return 0x694D656E6F685069;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_2584AD644()
{
  if (*(v0 + 33) != 1)
  {
    return 0xD000000000000012;
  }

  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2] | v0[3];
  if (*(v0 + 32))
  {
    v4 = 0;
  }

  else
  {
    v4 = (v3 | *v0 | v2) == 0;
  }

  if (v4)
  {
    return 0xD000000000000011;
  }

  v5 = v3 | v2;
  if (!*(v0 + 32) && v1 == 1 && v5 == 0)
  {
    return 0x79616C70726961;
  }

  if (!*(v0 + 32) && v1 == 2 && !v5)
  {
    return 0x72616365646973;
  }

  if (v5)
  {
    v8 = 0x694D656E6F685069;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (v1 == 3)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x694D656E6F685069;
  }

  if (*(v0 + 32))
  {
    return 0x694D656E6F685069;
  }

  else
  {
    return v9;
  }
}

uint64_t _s18MediaContinuityKit0aB5UsageO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = *(a2 + 32);
  if (*(a1 + 33) == 1)
  {
    v12 = v5 | v3;
    if (v12 | v2 | v4)
    {
      v13 = 0;
    }

    else
    {
      v13 = v6 == 0;
    }

    if (v13)
    {
      if (!*(a2 + 33))
      {
        goto LABEL_70;
      }

      if (v10 | v8 | v7 | v9 || v11 != 0)
      {
        goto LABEL_70;
      }

LABEL_39:
      v18 = 1;
      return v18 & 1;
    }

    v14 = v12 | v4;
    if (!*(a1 + 32) && v2 == 1 && !v14)
    {
      if (!*(a2 + 33))
      {
        goto LABEL_70;
      }

      v15 = v10 | v8;
      if (!(v15 | v7 | v9) && !*(a2 + 32))
      {
        goto LABEL_70;
      }

      v16 = v15 | v9;
      if (*(a2 + 32) || v7 != 1 || v16)
      {
        goto LABEL_70;
      }

      goto LABEL_39;
    }

    if (!*(a1 + 32) && v2 == 2 && !v14)
    {
      if (!*(a2 + 33))
      {
        goto LABEL_70;
      }

      v19 = v10 | v8;
      if (!(v19 | v7 | v9) && !*(a2 + 32))
      {
        goto LABEL_70;
      }

      v20 = v19 | v9;
      if (!*(a2 + 32) && v7 == 1 && !v20)
      {
        goto LABEL_70;
      }

      if (*(a2 + 32) || v7 != 2 || v20)
      {
        goto LABEL_70;
      }

      goto LABEL_39;
    }

    if (*(a1 + 32) || v2 != 3 || v14)
    {
      if ((*(a2 + 33) & 1) == 0)
      {
        goto LABEL_70;
      }

      v25 = v10 | v8;
      if (!(v25 | v7 | v9) && !*(a2 + 32))
      {
        goto LABEL_70;
      }

      v26 = v25 | v9;
      if (!*(a2 + 32) && v7 == 1 && !v26)
      {
        goto LABEL_70;
      }

      if (!*(a2 + 32) && v7 == 2 && !v26)
      {
        goto LABEL_70;
      }

      v18 = v7 != 3 || v26 != 0 || v11 != 0;
    }

    else
    {
      if (!*(a2 + 33))
      {
        goto LABEL_70;
      }

      v21 = v10 | v8;
      if (!(v21 | v7 | v9) && !*(a2 + 32))
      {
        goto LABEL_70;
      }

      v22 = v21 | v9;
      if (!*(a2 + 32) && v7 == 1 && !v22)
      {
        goto LABEL_70;
      }

      if (!*(a2 + 32) && v7 == 2 && !v22)
      {
        goto LABEL_70;
      }

      v18 = v7 == 3 && v22 == 0 && v11 == 0;
    }
  }

  else
  {
    if (*(a2 + 33))
    {
LABEL_70:
      v18 = 0;
      return v18 & 1;
    }

    v18 = v6 & v11;
    if ((v6 & 1) == 0 && (v11 & 1) == 0)
    {
      v31[0] = v2;
      v31[1] = v3;
      v31[2] = v5;
      v31[3] = v4;
      v30[0] = v7;
      v30[1] = v8;
      v30[2] = v10;
      v30[3] = v9;
      v18 = sub_2584CE9A4(v30, v31, v31, &v32);
    }
  }

  return v18 & 1;
}

uint64_t initializeBufferWithCopyOfBuffer for MediaContinuityUsage(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy34_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MediaContinuityUsage(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 34))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MediaContinuityUsage(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
    *(result + 4) = 0;
    *(result + 26) = 0;
    *(result + 20) = 0;
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

  *(result + 34) = v3;
  return result;
}

uint64_t sub_2584ADAAC(uint64_t a1)
{
  if (*(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2584ADAC8(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 33) = 1;
  }

  else
  {
    *(result + 33) = 0;
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_2584ADB1C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[96])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2584ADB60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2584ADBCC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for AudioStreamIdentifier;
  result = sub_2584ABB2C();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2584ADC0C()
{
  v1 = *(v0 + 8);
  sub_2584A7B8C(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_2584ADC4C()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[10];
  v3 = v0[11];
  sub_2584A7B8C(v1, v2);
  sub_2584A7B8C(v4, v3);
  return v1;
}

uint64_t sub_2584ADCA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
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

uint64_t sub_2584ADCF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_2584ADD54(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930620, &unk_25853E7D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v26 - v12;
  v14 = sub_258532CFC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_258532D8C();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  sub_2584A7B8C(a3, a4);
  sub_2584A7B8C(a3, a4);
  sub_258532D0C();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2584AE2A8(v13);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    if (sub_258532CBC())
    {
      sub_2584A7B8C(a1, a2);
      v19 = sub_2584B80A0(a1, a2);
      if (v20)
      {
        v21 = sub_2584BA8B8(v19, v20);
        v23 = v22;

        if (v23)
        {
          sub_258467E20(a3, a4);
          v26[0] = 0;
          v26[1] = 0xE000000000000000;
          sub_258533C8C();
          MEMORY[0x259C81500](37, 0xE100000000000000);
          MEMORY[0x259C81500](v21, v23);

          v24 = v26[0];
          (*(v15 + 8))(v17, v14);
          return v24;
        }
      }
    }

    (*(v15 + 8))(v17, v14);
  }

  return sub_2584B80A0(a3, a4);
}

BOOL sub_2584AE060(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (!sub_2584F0D1C(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  return sub_2584F0D1C(v2, v3, v4, v5);
}

uint64_t sub_2584AE0D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000015, 0x8000000258540A90);
  sub_2584A7B8C(a1, a2);
  sub_2584A7B8C(a1, a2);
  v8 = sub_2584B80A0(a1, a2);
  if (v9 && (v10 = sub_2584BA8B8(v8, v9), v12 = v11, , v12))
  {
    v13 = v10;
  }

  else
  {

    v12 = 0xE300000000000000;
    v13 = 7104878;
  }

  MEMORY[0x259C81500](v13, v12);

  MEMORY[0x259C81500](0xD000000000000011, 0x8000000258540AB0);
  v14 = sub_2584B80A0(a1, a2);
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v14 = 7104878;
    v16 = 0xE300000000000000;
  }

  MEMORY[0x259C81500](v14, v16);

  MEMORY[0x259C81500](0xD000000000000013, 0x8000000258540AD0);
  v17 = sub_2584ADD54(a1, a2, a3, a4);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v17 = 7104878;
    v19 = 0xE300000000000000;
  }

  MEMORY[0x259C81500](v17, v19);

  MEMORY[0x259C81500](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2584AE2A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2584AE310(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 16))(v10, v2, v3);
  v4 = __swift_project_boxed_opaque_existential_1(v10, v11);
  v5 = *v4;
  sub_2584A7B8C(*v4, v4[1]);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 24))(v10, v6, v7);
  v8 = __swift_project_boxed_opaque_existential_1(v10, v11);
  sub_2584A7B8C(*v8, v8[1]);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

BOOL sub_2584AE40C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_2584AE5E4(v5, v7);
}

uint64_t sub_2584AE458()
{
  v1 = v0;
  *&v14[8] = 0;
  sub_258533B8C();
  MEMORY[0x259C81500](0x6F506C61636F6C28, 0xEC000000203A7472);
  *v14 = *v0;
  v2 = sub_258533DFC();
  MEMORY[0x259C81500](v2);

  MEMORY[0x259C81500](0xD000000000000011, 0x8000000258540AB0);
  v3 = v0[1];
  v4 = v1[2];
  sub_2584ABAF4(v1[1], v4);
  v5 = sub_2584B80A0(v3, v4);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v5 = 7104878;
    v7 = 0xE300000000000000;
  }

  MEMORY[0x259C81500](v5, v7);

  MEMORY[0x259C81500](0xD000000000000013, 0x8000000258540AF0);
  v9 = v1[3];
  v8 = v1[4];
  sub_2584ABAF4(v9, v8);
  v10 = sub_2584B8544(v9, v8);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v10 = 7104878;
    v12 = 0xE300000000000000;
  }

  MEMORY[0x259C81500](v10, v12);

  MEMORY[0x259C81500](41, 0xE100000000000000);
  return *&v14[2];
}

BOOL sub_2584AE5E4(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v20 = v2;
  v21 = v3;
  v4 = *(a1 + 4);
  v18 = *(a2 + 4);
  v19 = v4;
  v5 = v4;
  v6 = v18;
  if (*(&v4 + 1) >> 60 == 15)
  {
    if (*(&v18 + 1) >> 60 == 15)
    {
      v7 = a1;
      v8 = a2;
      sub_2584AE8F0(&v19, &v17);
      sub_2584AE8F0(&v18, &v17);
      sub_2584AE960(v5, *(&v5 + 1));
      goto LABEL_9;
    }

LABEL_7:
    sub_2584AE8F0(&v19, &v17);
    sub_2584AE8F0(&v18, &v17);
    sub_2584AE960(v5, *(&v5 + 1));
    sub_2584AE960(v6, *(&v6 + 1));
    return 0;
  }

  if (*(&v18 + 1) >> 60 == 15)
  {
    goto LABEL_7;
  }

  v7 = a1;
  v8 = a2;
  sub_2584AE8F0(&v19, &v17);
  sub_2584AE8F0(&v18, &v17);
  v10 = sub_2584F0D1C(v5, *(&v5 + 1), v6, *(&v6 + 1));
  sub_2584AE960(v6, *(&v6 + 1));
  sub_2584AE960(v5, *(&v5 + 1));
  if (!v10)
  {
    return 0;
  }

LABEL_9:
  v11 = *(v7 + 12);
  v16 = *(v8 + 12);
  v17 = v11;
  v12 = v11;
  v13 = v16;
  if (*(&v11 + 1) >> 60 != 15)
  {
    if (*(&v16 + 1) >> 60 == 15)
    {
      goto LABEL_13;
    }

    sub_2584AE8F0(&v17, v15);
    sub_2584AE8F0(&v16, v15);
    v14 = sub_2584F0D1C(v12, *(&v12 + 1), v13, *(&v13 + 1));
    sub_2584AE960(v13, *(&v13 + 1));
    sub_2584AE960(v12, *(&v12 + 1));
    return v14;
  }

  if (*(&v16 + 1) >> 60 != 15)
  {
LABEL_13:
    sub_2584AE8F0(&v17, v15);
    sub_2584AE8F0(&v16, v15);
    sub_2584AE960(v12, *(&v12 + 1));
    sub_2584AE960(v13, *(&v13 + 1));
    return 0;
  }

  sub_2584AE8F0(&v17, v15);
  sub_2584AE8F0(&v16, v15);
  sub_2584AE960(v12, *(&v12 + 1));
  return 1;
}