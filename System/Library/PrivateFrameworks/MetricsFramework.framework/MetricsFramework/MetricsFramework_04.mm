void sub_258E2BACC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v24[-1] - v10;
  v12 = sub_258F09A70();
  v13 = *(v12 - 8);
  (*(v13 + 56))(a2, 1, 1, v12);
  strcpy(v24, "treatment_id");
  BYTE5(v24[1]) = 0;
  HIWORD(v24[1]) = -5120;
  sub_258F0AA80();
  if (*(a1 + 16) && (v14 = sub_258E2EA2C(v25), (v15 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v14, v26);
    sub_258E0F590(v25);
    if (swift_dynamicCast())
    {
      v16 = v24[1];
      v23 = v24[0];
      sub_258F09A30();
      sub_258DE2184(a2, &qword_27F988730, &unk_258F0F8E0);
      sub_258E2EAD8(v11, a2, &qword_27F988730, &unk_258F0F8E0);
      sub_258DE20C0(a2, v8, &qword_27F988730, &unk_258F0F8E0);
      if ((*(v13 + 48))(v8, 1, v12) != 1)
      {

        sub_258DE2184(v8, &qword_27F988730, &unk_258F0F8E0);
        return;
      }

      sub_258DE2184(v8, &qword_27F988730, &unk_258F0F8E0);

      v17 = sub_258F0A350();
      v18 = sub_258F0A820();

      if (!os_log_type_enabled(v17, v18))
      {

        return;
      }

      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25[0] = v20;
      *v19 = 136315138;
      v21 = sub_258DE3018(v23, v16, v25);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_258DD8000, v17, v18, "Invalid treatment_id %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x259C9EF40](v20, -1, -1);
      goto LABEL_10;
    }
  }

  else
  {
    sub_258E0F590(v25);
  }

  v17 = sub_258F0A350();
  v22 = sub_258F0A820();
  if (os_log_type_enabled(v17, v22))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_258DD8000, v17, v22, "nil treatmentId", v19, 2u);
LABEL_10:
    MEMORY[0x259C9EF40](v19, -1, -1);
  }
}

uint64_t AssistantDeviceExperimentMetricsCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_analyticsEventSubmitter));

  v3 = OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_bookmarkService));

  return v0;
}

uint64_t AssistantDeviceExperimentMetricsCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_analyticsEventSubmitter));

  v3 = OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework42AssistantDeviceExperimentMetricsCalculator_bookmarkService));

  return swift_deallocClassInstance();
}

uint64_t sub_258E2C1AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258E267D0(a1);
}

id sub_258E2C248(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_258E2F4A4();
    v4 = sub_258F0A400();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_258E2C2D4(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0x7465737341524941, 0xEE00737574617453, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F90C;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_100;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2C52C(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0xD000000000000010, 0x8000000258F19A50, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F8E8;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_94;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2C77C(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0xD000000000000019, 0x8000000258F1A640, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F8C4;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_88;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2C9C8(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0x73416F54746F6F42, 0xEB00000000746573, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F8A0;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_82;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2CC1C(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0xD000000000000010, 0x8000000258F1A6E0, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F468;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_0;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2CE6C(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0xD000000000000019, 0x8000000258F1A850, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F87C;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_76;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2D0BC(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0xD000000000000013, 0x8000000258F1A830, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F858;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_70;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2D30C(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0xD000000000000011, 0x8000000258F1A810, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F834;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_64;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2D55C(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0x72696F504944444FLL, 0xEA0000000000746FLL, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F810;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_58;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2D7AC(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0xD000000000000013, 0x8000000258F1A7F0, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F7EC;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_52;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2DA04(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0xD000000000000013, 0x8000000258F1A7D0, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F7C8;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_46;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2DC54(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0xD000000000000022, 0x8000000258F1A7A0, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F7A4;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_40;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2DEA4(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0x747365676944474FLL, 0xEF7363697274654DLL, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F780;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_34;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2E0FC(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0xD000000000000011, 0x8000000258F1A740, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F75C;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_28;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2E34C(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0xD000000000000011, 0x8000000258F1A720, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F738;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_22;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

void sub_258E2E59C(uint64_t a1, uint64_t a2, unint64_t a3)
{

  v6 = sub_258F0A350();
  v7 = sub_258F0A820();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_258DE3018(0x6C6C6F726E455456, 0xEC000000746E656DLL, v13);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258DE3018(a2, a3, v13);
    _os_log_impl(&dword_258DD8000, v6, v7, "Logging Core Analytics Event from %s with count: %ld, error: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a1;

  v11 = sub_258F0A4E0();

  v13[4] = sub_258E2F714;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_258E2C248;
  v13[3] = &block_descriptor_16;
  v12 = _Block_copy(v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

unint64_t sub_258E2E7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989530, &unk_258F0FA20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258F0F8B0;
  strcpy((inited + 32), "CalculatorName");
  *(inited + 47) = -18;
  *(inited + 48) = sub_258F0A7D0();
  *(inited + 56) = 0x726F727245;
  *(inited + 64) = 0xE500000000000000;
  *(inited + 72) = sub_258F0A4E0();
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x8000000258F1A700;
  *(inited + 96) = sub_258F0A7D0();
  v5 = sub_258DFBE10(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989538, &unk_258F149F0);
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_258E2E920@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_258E2E9B4(uint64_t a1, uint64_t a2)
{
  sub_258F0AE40();
  sub_258F0A5B0();
  v4 = sub_258F0AE90();

  return sub_258E2F0E0(a1, a2, v4);
}

unint64_t sub_258E2EA2C(uint64_t a1)
{
  v2 = sub_258F0AA60();

  return sub_258E2F198(a1, v2);
}

uint64_t sub_258E2EA70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_258E2EAD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_258E2EB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceExperimentMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E2EBA4(uint64_t a1)
{
  result = sub_258E2F420(&qword_27F9894F8, type metadata accessor for AssistantDeviceExperimentMetricsCalculator, &unk_258F0F92C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258E2EBFC(uint64_t a1)
{
  result = sub_258E2F420(&qword_27F989500, type metadata accessor for AssistantDeviceExperimentMetricsCalculator, &protocol conformance descriptor for AssistantDeviceExperimentMetricsCalculator);
  *(a1 + 8) = result;
  return result;
}

void sub_258E2EC5C(uint64_t a1)
{
  sub_258F0A370();
  if (v1 <= 0x3F)
  {
    sub_258F09B00();
    if (v2 <= 0x3F)
    {
      sub_258DE3B74(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of AssistantDeviceExperimentMetricsCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

unint64_t sub_258E2EED8(uint64_t a1)
{
  sub_258F09A20();
  sub_258E2F420(&qword_27F989518, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v2 = sub_258F0A440();

  return sub_258E2F260(a1, v2);
}

unint64_t sub_258E2EF70(uint64_t a1)
{
  sub_258F0AE40();
  EventMetadata.hash(into:)(v4);
  v2 = sub_258F0AE90();
  return sub_258E2F4F0(a1, v2, type metadata accessor for EventMetadata, type metadata accessor for EventMetadata, _s16MetricsFramework13EventMetadataV2eeoiySbAC_ACtFZ_0, type metadata accessor for EventMetadata);
}

unint64_t sub_258E2F028(uint64_t a1)
{
  sub_258F0AE40();
  FunnelEventMetadata.hash(into:)(v4);
  v2 = sub_258F0AE90();
  return sub_258E2F4F0(a1, v2, type metadata accessor for FunnelEventMetadata, type metadata accessor for FunnelEventMetadata, _s16MetricsFramework19FunnelEventMetadataV2eeoiySbAC_ACtFZ_0, type metadata accessor for FunnelEventMetadata);
}

unint64_t sub_258E2F0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_258F0AD80())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_258E2F198(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_258DEB85C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C9E330](v9, a1);
      sub_258E0F590(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_258E2F260(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_258F09A20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_258E2F420(&qword_27F989520, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v16 = sub_258F0A4B0();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_258E2F420(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_258E2F4A4()
{
  result = qword_27F989528;
  if (!qword_27F989528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F989528);
  }

  return result;
}

unint64_t sub_258E2F4F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, uint64_t), uint64_t (*a6)(void))
{
  v23 = a6;
  v11 = a3(0) - 8;
  MEMORY[0x28223BE20](v11, v12);
  v15 = &v22 - v14;
  v16 = -1 << *(v6 + 32);
  v17 = a2 & ~v16;
  if ((*(v6 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = *(v13 + 72);
    do
    {
      sub_258E2F64C(*(v6 + 48) + v19 * v17, v15, a4);
      v20 = a5(v15, a1);
      sub_258E2F6B4(v15, v23);
      if (v20)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
    }

    while (((*(v6 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
  }

  return v17;
}

uint64_t sub_258E2F64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258E2F6B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258E2F9A8()
{

  return swift_deallocClassInstance();
}

uint64_t static BiomeSQLDatabaseUtils.identifySqlError(errorString:)@<X0>(char *a3@<X8>)
{
  sub_258DEF388();
  result = sub_258F0A9A0();
  if (result)
  {
    v5 = 13;
  }

  else
  {
    result = sub_258F0A9A0();
    if (result)
    {
      v5 = 12;
    }

    else
    {
      result = sub_258F0A9A0();
      if (result)
      {
        v5 = 14;
      }

      else
      {
        v5 = 11;
      }
    }
  }

  *a3 = v5;
  return result;
}

uint64_t BootToAssetResults.eventStreamMetadata.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t BootToAssetResults.conversationStreamMetadata.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t BootToAssetResults.combinedBootToAssetData.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t CombinedBootToAssetData.assetAvailabilityData.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t CombinedBootToAssetData.eventMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CombinedBootToAssetData(0) + 20);

  return sub_258DDE438(v3, a1);
}

uint64_t CombinedBootToAssetData.eventMetadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CombinedBootToAssetData(0) + 20);

  return sub_258DDE4E0(a1, v3);
}

void *BootToAssetCalculator.__allocating_init(logger:sqlFileURL:bookmarkService:oddId:userDefaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v45 = a4;
  v43 = a3;
  v39 = a2;
  v41 = a1;
  v6 = sub_258F09A70();
  v7 = *(v6 - 8);
  v37 = v6;
  v38 = v7;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v35 - v13;
  v15 = sub_258F0A370();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v35 = *(v16 + 16);
  v36 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35();
  v19 = v14;
  sub_258DE20C0(a2, v14, &qword_27F988720, &qword_258F0B830);
  (*(v7 + 16))(v10, v45, v6);
  type metadata accessor for BiomeResultsWrapperFactory();
  v40 = swift_allocObject();
  v20 = type metadata accessor for CAAnalyticsEventSubmitter();
  v21 = swift_allocObject();
  v46[3] = v20;
  v46[4] = &off_286A2C648;
  v46[0] = v21;
  type metadata accessor for BootToAssetCalculator(0);
  v22 = swift_allocObject();
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v46, v20);
  MEMORY[0x28223BE20](v23, v23);
  v25 = (&v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  v22[5] = v20;
  v22[6] = &off_286A2C648;
  v22[2] = v27;
  sub_258F09AC0();
  v28 = v36;
  (v35)(v22 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_logger, v36, v15);
  v29 = v19;
  sub_258DE20C0(v19, v22 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  v30 = (v22 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_bookmarkService);
  v30[3] = sub_258F09C20();
  v30[4] = &off_286A2FA30;
  *v30 = v43;
  v31 = v37;
  v32 = v38;
  (*(v38 + 8))(v45, v37);
  sub_258DE2184(v39, &qword_27F988720, &qword_258F0B830);
  v33 = *(v16 + 8);
  v33(v41, v15);
  sub_258DE2184(v29, &qword_27F988720, &qword_258F0B830);
  v33(v28, v15);
  (*(v32 + 32))(v22 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_oddId, v42, v31);
  v22[7] = v40;
  *(v22 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_defaults) = v44;
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  return v22;
}

uint64_t sub_258E30218(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_258F09A20();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E30310, 0, 0);
}

uint64_t sub_258E30310()
{
  v43 = v0;

  v1 = sub_258F0A350();
  v2 = sub_258F0A810();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v42[0] = v4;
    *v3 = 136315138;
    sub_258F09A70();
    sub_258E32114(&qword_27F988758, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v5 = sub_258F0AD60();
    v7 = sub_258DE3018(v5, v6, v42);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_258DD8000, v1, v2, "SQL calculator invoked: BootToAssetCalculator %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x259C9EF40](v4, -1, -1);
    MEMORY[0x259C9EF40](v3, -1, -1);
  }

  v8 = v0[11];
  sub_258DE20C0(v0[7] + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_sqlFileURL, v8, &qword_27F988720, &qword_258F0B830);
  v9 = sub_258F098D0();
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
  sub_258DE2184(v8, &qword_27F988720, &qword_258F0B830);
  if (v10 == 1)
  {
    sub_258DE1858();
    swift_allocError();
    *v11 = 9;
    swift_willThrow();

    v28 = v0[1];
  }

  else
  {
    sub_258DE0298();
    v12 = sub_258DE0450();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988740, &qword_258F0B850);
    sub_258F0A190();
    *(swift_allocObject() + 16) = xmmword_258F0B820;
    v13 = sub_258F0A1B0();
    v15 = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v15;
    sub_258F0A160();
    v17 = v12;
    v18 = sub_258F0A350();
    v19 = sub_258F0A810();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v42[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_258DE3018(0x73416F54746F6F42, 0xEB00000000746573, v42);
      _os_log_impl(&dword_258DD8000, v18, v19, "%s: current date data NOT included for aggregation.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x259C9EF40](v21, -1, -1);
      MEMORY[0x259C9EF40](v20, -1, -1);
    }

    v22 = v0[7];
    sub_258F0A050();
    v23 = v17;

    v24 = sub_258F0A010();
    v25 = sub_258F0A040();

    type metadata accessor for BiomeResultsWrapper();
    inited = swift_initStackObject();
    *(inited + 16) = v25;
    v27 = MEMORY[0x259C9E880]();
    sub_258E3093C(inited, v22, v0 + 5, v42);
    v30 = v0[10];
    v31 = v0[8];
    v32 = v0[9];
    v41 = v0[6];
    objc_autoreleasePoolPop(v27);
    v33 = v42[0];
    sub_258F09BB0();
    v40 = sub_258F09B70();
    v34 = *(v32 + 8);
    v34(v30, v31);
    v35 = sub_258F09B50();
    v36 = MEMORY[0x259C9E880](v35);
    sub_258E30A70(v33);
    v38 = v37;

    objc_autoreleasePoolPop(v36);
    swift_setDeallocating();

    v34(v30, v31);
    v39 = MEMORY[0x277D84F90];
    *v41 = v40;
    v41[1] = v39;
    v41[2] = v38;

    v28 = v0[1];
  }

  return v28();
}

void sub_258E3093C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char **a4@<X8>)
{
  v8 = sub_258E326F8(*(a1 + 16), a2 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_logger);
  sub_258DFCF5C(a1, 0);
  if (v4)
  {

    *a3 = v4;
  }

  else
  {

    v9 = sub_258F0A350();
    v10 = sub_258F0A810();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = *(v8 + 2);

      _os_log_impl(&dword_258DD8000, v9, v10, "BootToAssetCalculator query yielded %ld results", v11, 0xCu);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    else
    {
    }

    *a4 = v8;
  }
}

void sub_258E30A70(void (*a1)(char *, uint64_t))
{
  v2 = v1;
  v4 = type metadata accessor for CombinedBootToAssetData(0);
  v154 = *(v4 - 8);
  v155 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v157 = (&v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v153 = type metadata accessor for EventMetadata(0);
  MEMORY[0x28223BE20](v153, v7);
  v156 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v158 = &v150 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989588, &qword_258F0FCF0);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = (&v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v150 - v18;
  v179 = sub_258F09A20();
  v170 = *(v179 - 8);
  v21 = MEMORY[0x28223BE20](v179, v20);
  v23 = &v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v27 = &v150 - v26;
  v29 = MEMORY[0x28223BE20](v25, v28);
  v180 = &v150 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v167 = &v150 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v175 = &v150 - v36;
  MEMORY[0x28223BE20](v35, v37);
  v39 = &v150 - v38;
  if (qword_27F988680 != -1)
  {
    goto LABEL_87;
  }

  while (1)
  {
    v178 = qword_280CC6068;
    v172 = OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_calendar;
    sub_258F09930();
    sub_258F099E0();
    if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v40 <= -1.0)
    {
      goto LABEL_89;
    }

    if (v40 >= 1.84467441e19)
    {
      goto LABEL_90;
    }

    if (!is_mul_ok(v40, 0x3E8uLL))
    {
      goto LABEL_91;
    }

    v171 = v40;
    v164 = v39;
    v176 = v27;
    v177 = v2;
    v162 = v23;
    v174 = v19;
    v197 = MEMORY[0x277D84FA0];
    v196 = sub_258DFBF20(MEMORY[0x277D84F90]);
    v19 = *(a1 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989590, &qword_258F0FCF8);
    sub_258F0A430();
    v39 = v16;
    v169 = v16;
    v2 = v179;
    v27 = v175;
    if (!v19)
    {
LABEL_37:
      v19 = 0;
      v152 = 1000 * v171;
      v76 = v196 + 64;
      v75 = *(v196 + 64);
      v168 = v196;
      v77 = 1 << *(v196 + 32);
      v78 = -1;
      if (v77 < 64)
      {
        v78 = ~(-1 << v77);
      }

      v23 = v78 & v75;
      v163 = OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_defaults;
      v151 = OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_oddId;
      v181 = ((v77 + 63) >> 6);
      v175 = (v170 + 16);
      v178 = (v170 + 32);
      v173 = (v170 + 8);
      v165 = "bmitter";
      v166 = OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_logger;
      v159 = MEMORY[0x277D84F90];
      v16 = &unk_258F0FD00;
      *&v41 = 67109120;
      v161 = v41;
      *&v41 = 134217984;
      v160 = v41;
      v79 = v176;
      v27 = v177;
      v171 = v196 + 64;
      while (v23)
      {
        v81 = v39;
        v82 = v19;
LABEL_51:
        v85 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v86 = v85 | (v82 << 6);
        v88 = v167;
        v87 = v168;
        v89 = v170;
        (*(v170 + 16))(v167, *(v168 + 48) + *(v170 + 72) * v86, v2);
        v90 = *(*(v87 + 56) + 8 * v86);
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989598, &unk_258F0FD00);
        v92 = v2;
        v93 = v91;
        v94 = *(v91 + 48);
        v95 = *(v89 + 32);
        v39 = v81;
        v95(v81, v88, v92);
        *&v81[v94] = v90;
        v96 = v81;
        v16 = &unk_258F0FD00;
        (*(*(v93 - 8) + 56))(v96, 0, 1, v93);

        v79 = v176;
        v27 = v177;
LABEL_52:
        v97 = v174;
        sub_258E325C4(v39, v174);
        v98 = v97;
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989598, v16);
        if ((*(*(v99 - 8) + 48))(v98, 1, v99) == 1)
        {

          (*v173)(v164, v179);

          return;
        }

        v100 = *(v98 + *(v99 + 48));
        v101 = v98;
        v2 = v179;
        (*v178)(v180, v101, v179);
        sub_258F09930();
        sub_258F099E0();
        if (v102 > -1.0 && v102 < 1.84467441e19 && v102 == trunc(v102))
        {
          v103 = v102;
          sub_258E32114(&qword_27F989520, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
          if ((sub_258F0A4B0() & 1) == 0 || (v104 = *&v27[v163], v105 = sub_258F0A4E0(), v106 = [v104 BOOLForKey_], v105, v106))
          {
            v125 = v100 - 96;
            v126 = *(v100 + 16) + 1;
            do
            {
              if (!--v126)
              {
                v130 = sub_258F09A70();
                (*(*(v130 - 8) + 56))(v158, 1, 1, v130);
                goto LABEL_73;
              }

              v127 = *(v125 + 200);
              v125 += 192;
            }

            while (!v127);
            swift_bridgeObjectRetain_n();
            v128 = v158;
            sub_258F09A30();
            swift_bridgeObjectRelease_n();
            v129 = sub_258F09A70();
            if ((*(*(v129 - 8) + 48))(v128, 1, v129) != 1)
            {
              goto LABEL_76;
            }

LABEL_73:
            v131 = sub_258F0A350();
            v132 = sub_258F0A810();
            if (os_log_type_enabled(v131, v132))
            {
              v133 = swift_slowAlloc();
              *v133 = 0;
              _os_log_impl(&dword_258DD8000, v131, v132, "Calculator: Found no device aggregation Id", v133, 2u);
              MEMORY[0x259C9EF40](v133, -1, -1);
            }

LABEL_76:
            v134 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
            [v134 setStartTimestampInSecondsSince1970_];
            if (v134)
            {
              [v134 setNumberOfSeconds_];
            }

            v135 = sub_258F09A70();
            v136 = *(v135 - 8);
            v137 = v156;
            (*(v136 + 16))(v156, &v27[v151], v135);
            v138 = *(v136 + 56);
            v138(v137, 0, 1, v135);
            v150 = v134;
            v139 = v153;
            sub_258DE20C0(v158, v137 + *(v153 + 20), &qword_27F988730, &unk_258F0F8E0);
            v138(v137 + v139[6], 1, 1, v135);
            v140 = v137 + v139[7];
            *v140 = v152;
            *(v140 + 8) = 0;
            *(v137 + v139[8]) = v150;
            v141 = v137 + v139[9];
            *v141 = 0;
            *(v141 + 8) = 1;
            v142 = v137 + v139[10];
            *v142 = 0;
            *(v142 + 8) = 1;
            v143 = v137 + v139[11];
            *v143 = 0;
            *(v143 + 4) = 1;
            *(v137 + v139[12]) = 2;
            v144 = v157;
            sub_258DDE438(v137, v157 + *(v155 + 20));
            *v144 = v100;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v159 = sub_258DE2814(0, v159[2] + 1, 1, v159);
            }

            v146 = v159[2];
            v145 = v159[3];
            if (v146 >= v145 >> 1)
            {
              v159 = sub_258DE2814((v145 > 1), v146 + 1, 1, v159);
            }

            sub_258DE2128(v156);
            a1 = *v173;
            v147 = v179;
            (*v173)(v79, v179);
            a1(v180, v147);
            v148 = v159;
            v159[2] = v146 + 1;
            v149 = v148 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * v146;
            v2 = v147;
            sub_258E32634(v157, v149);
            sub_258DE2184(v158, &qword_27F988730, &unk_258F0F8E0);
            v76 = v171;
            v27 = v177;
            v39 = v169;
            v16 = &unk_258F0FD00;
          }

          else
          {

            v107 = sub_258F0A350();
            v108 = sub_258F0A800();
            if (os_log_type_enabled(v107, v108))
            {
              v109 = swift_slowAlloc();
              *v109 = v161;
              v110 = v16;
              v111 = sub_258F0A4E0();
              v112 = [v104 BOOLForKey_];

              v16 = v110;
              v27 = v177;
              *(v109 + 4) = v112;

              _os_log_impl(&dword_258DD8000, v107, v108, "Skipping b2a execution for current date; AssetMetricsWorker.includeCurrentDateForAggregation: %{BOOL}d", v109, 8u);
              MEMORY[0x259C9EF40](v109, -1, -1);
            }

            else
            {
            }

            a1 = v173;
            v122 = *v173;
            v2 = v179;
            (*v173)(v79, v179);
            v122(v180, v2);
            v39 = v169;
            v76 = v171;
          }
        }

        else
        {

          sub_258F099E0();
          if (v113 > 0.0)
          {
            a1 = v173;
            v80 = *v173;
            (*v173)(v79, v2);
            v80(v180, v2);
            v76 = v171;
          }

          else
          {
            v114 = v79;
            v115 = v162;
            (*v175)(v162, v114, v2);
            v116 = sub_258F0A350();
            a1 = sub_258F0A820();
            if (os_log_type_enabled(v116, a1))
            {
              v117 = swift_slowAlloc();
              *v117 = v160;
              sub_258F099E0();
              v119 = v118;
              v120 = *v173;
              (*v173)(v115, v2);
              *(v117 + 4) = v119;
              _os_log_impl(&dword_258DD8000, v116, a1, "Boot to asset event contains date before 1970 %f", v117, 0xCu);
              v121 = v117;
              v39 = v169;
              MEMORY[0x259C9EF40](v121, -1, -1);

              v79 = v176;
              v120(v176, v2);
              v120(v180, v2);
              v16 = &unk_258F0FD00;
              v76 = v171;
              v27 = v177;
            }

            else
            {

              a1 = v173;
              v124 = *v173;
              (*v173)(v115, v2);
              v79 = v176;
              v124(v176, v2);
              v124(v180, v2);
              v76 = v171;
              v27 = v177;
              v16 = &unk_258F0FD00;
            }
          }
        }
      }

      if (v181 <= (v19 + 1))
      {
        v83 = v19 + 1;
      }

      else
      {
        v83 = v181;
      }

      v84 = v83 - 1;
      while (1)
      {
        v82 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v82 >= v181)
        {
          v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989598, v16);
          (*(*(v123 - 8) + 56))(v39, 1, 1, v123);
          v23 = 0;
          v19 = v84;
          goto LABEL_52;
        }

        v23 = *(v76 + 8 * v82);
        ++v19;
        if (v23)
        {
          v81 = v39;
          v19 = v82;
          goto LABEL_51;
        }
      }

      __break(1u);
      goto LABEL_85;
    }

    v42 = 0;
    v181 = a1 + 32;
    v173 = (v170 + 8);
    while (1)
    {
      v43 = &v181[192 * v42];
      v16 = *(v43 + 11);
      if (!v16)
      {
        goto LABEL_9;
      }

      a1 = *(v43 + 10);

      v44 = sub_258F0A4E0();
      v45 = [v178 dateFromString_];

      if (v45)
      {
        break;
      }

      v2 = v179;
LABEL_9:
      if (++v42 == v19)
      {
        goto LABEL_37;
      }
    }

    sub_258F09A00();

    v46 = v197;
    if (*(v197 + 16))
    {
      sub_258F0AE40();
      sub_258F0A5B0();
      v47 = sub_258F0AE90();
      v48 = -1 << *(v46 + 32);
      v49 = v47 & ~v48;
      if ((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
      {
        v50 = ~v48;
        while (1)
        {
          v51 = *(v46 + 48) + 16 * v49;
          v52 = *v51 == a1 && v16 == *(v51 + 8);
          if (v52 || (sub_258F0AD80() & 1) != 0)
          {
            break;
          }

          v49 = (v49 + 1) & v50;
          if (((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        v2 = v179;
        (*v173)(v27, v179);

LABEL_36:
        v39 = v169;
        goto LABEL_9;
      }
    }

LABEL_21:
    v23 = 0;
    v2 = MEMORY[0x277D84F90];
LABEL_22:
    v53 = &v181[192 * v23];
    v39 = v23;
    while (v39 < v19)
    {
      v54 = *(v53 + 9);
      v191 = *(v53 + 8);
      v192 = v54;
      v55 = *(v53 + 11);
      v193 = *(v53 + 10);
      v194 = v55;
      v56 = *(v53 + 5);
      v187 = *(v53 + 4);
      v188 = v56;
      v57 = *(v53 + 7);
      v189 = *(v53 + 6);
      v190 = v57;
      v58 = *(v53 + 1);
      v183 = *v53;
      v184 = v58;
      v59 = *(v53 + 3);
      v185 = *(v53 + 2);
      v186 = v59;
      v23 = (v39 + 1);
      if (__OFADD__(v39, 1))
      {
        goto LABEL_86;
      }

      if (*(&v188 + 1) && (v188 == __PAIR128__(v16, a1) || (sub_258F0AD80() & 1) != 0))
      {
        sub_258E32698(&v183, &v182);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v195 = v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_258E14D78(0, *(v2 + 16) + 1, 1);
          v2 = v195;
        }

        v62 = *(v2 + 16);
        v61 = *(v2 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_258E14D78((v61 > 1), v62 + 1, 1);
          v2 = v195;
        }

        *(v2 + 16) = v62 + 1;
        v63 = (v2 + 192 * v62);
        v64 = v183;
        v65 = v184;
        v66 = v186;
        v63[4] = v185;
        v63[5] = v66;
        v63[2] = v64;
        v63[3] = v65;
        v67 = v187;
        v68 = v188;
        v69 = v190;
        v63[8] = v189;
        v63[9] = v69;
        v63[6] = v67;
        v63[7] = v68;
        v70 = v191;
        v71 = v192;
        v72 = v194;
        v63[12] = v193;
        v63[13] = v72;
        v63[10] = v70;
        v63[11] = v71;
        v27 = v175;
        if (v23 == v19)
        {
LABEL_34:
          v73 = v196;
          v74 = swift_isUniquelyReferenced_nonNull_native();
          *&v183 = v73;
          sub_258ED751C(v2, v27, v74);
          v196 = v183;
          sub_258E05B1C(&v183, a1, v16);

          v2 = v179;
          (*v173)(v27, v179);
          goto LABEL_36;
        }

        goto LABEL_22;
      }

      ++v39;
      v53 += 192;
      if (v23 == v19)
      {
        goto LABEL_34;
      }
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    swift_once();
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
}

uint64_t BootToAssetCalculator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_bookmarkService));
  v3 = OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_oddId;
  v6 = sub_258F09A70();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t BootToAssetCalculator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_bookmarkService));
  v3 = OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_oddId;
  v6 = sub_258F09A70();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_258E31FCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258E30218(a1);
}

unint64_t sub_258E32068()
{
  result = qword_27F989540;
  if (!qword_27F989540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989540);
  }

  return result;
}

uint64_t sub_258E320BC(uint64_t a1)
{
  result = sub_258E32114(&qword_27F989548, type metadata accessor for BootToAssetCalculator, &unk_258F0FB78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258E32114(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258E3215C(uint64_t a1)
{
  result = sub_258E32114(&qword_27F989550, type metadata accessor for BootToAssetCalculator, &protocol conformance descriptor for BootToAssetCalculator);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258E321B4()
{
  result = qword_27F989558;
  if (!qword_27F989558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989558);
  }

  return result;
}

void sub_258E32240(uint64_t a1)
{
  sub_258E322C4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for EventMetadata(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_258E322C4()
{
  if (!qword_27F989570)
  {
    v0 = sub_258F0A710();
    if (!v1)
    {
      atomic_store(v0, &qword_27F989570);
    }
  }
}

void sub_258E3231C(uint64_t a1)
{
  sub_258F0A370();
  if (v1 <= 0x3F)
  {
    sub_258DE3B74(319);
    if (v2 <= 0x3F)
    {
      sub_258F09B00();
      if (v3 <= 0x3F)
      {
        sub_258F09A70();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of BootToAssetCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 200) + **(*v2 + 200));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t sub_258E325C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989588, &qword_258F0FCF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E32634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CombinedBootToAssetData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_258E326F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_258F0A370();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_258F0A070() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = *(v4 + 16);
  v9 = MEMORY[0x277D84F90];
  v8(v7, a2, v3);
  while (1)
  {

    sub_258E32D88(v7, v23);
    v32 = v23[8];
    v33 = v23[9];
    v34 = v23[10];
    v35 = v23[11];
    v28 = v23[4];
    v29 = v23[5];
    v30 = v23[6];
    v31 = v23[7];
    v24 = v23[0];
    v25 = v23[1];
    v26 = v23[2];
    v27 = v23[3];
    if (sub_258E34E74(&v24) != 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_258DE26F4(0, *(v9 + 2) + 1, 1, v9);
      }

      v21 = *(v9 + 2);
      v20 = *(v9 + 3);
      if (v21 >= v20 >> 1)
      {
        v9 = sub_258DE26F4((v20 > 1), v21 + 1, 1, v9);
      }

      *(v9 + 2) = v21 + 1;
      v10 = &v9[192 * v21];
      v11 = v24;
      v12 = v25;
      v13 = v27;
      *(v10 + 4) = v26;
      *(v10 + 5) = v13;
      *(v10 + 2) = v11;
      *(v10 + 3) = v12;
      v14 = v28;
      v15 = v29;
      v16 = v31;
      *(v10 + 8) = v30;
      *(v10 + 9) = v16;
      *(v10 + 6) = v14;
      *(v10 + 7) = v15;
      v17 = v32;
      v18 = v33;
      v19 = v35;
      *(v10 + 12) = v34;
      *(v10 + 13) = v19;
      *(v10 + 10) = v17;
      *(v10 + 11) = v18;
    }

    if ((sub_258F0A070() & 1) == 0)
    {
      break;
    }

    v8(v7, a2, v3);
  }

  return v9;
}

uint64_t sub_258E328F4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0xD000000000000013;
    v6 = 0x7954656369766564;
    if (a1 != 10)
    {
      v6 = 0x7465537465737361;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x75706E4969726973;
    v8 = 0x436D6172676F7270;
    if (a1 != 7)
    {
      v8 = 0x75426D6574737973;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    if (a1 != 4)
    {
      v1 = 0x7465537465737361;
    }

    if (a1 == 3)
    {
      v1 = 0xD00000000000002CLL;
    }

    v2 = 0xD000000000000013;
    v3 = 0xD000000000000015;
    if (a1 != 1)
    {
      v3 = 0xD000000000000017;
    }

    if (a1)
    {
      v2 = v3;
    }

    if (a1 <= 2u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_258E32AB4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_258E328F4(*a1);
  v5 = v4;
  if (v3 == sub_258E328F4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_258F0AD80();
  }

  return v8 & 1;
}

uint64_t sub_258E32B3C()
{
  v1 = *v0;
  sub_258F0AE40();
  sub_258E328F4(v1);
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E32BA0(uint64_t a1)
{
  sub_258E328F4(*v1);
  sub_258F0A5B0();
}

uint64_t sub_258E32BF4(uint64_t a1)
{
  v2 = *v1;
  sub_258F0AE40();
  sub_258E328F4(v2);
  sub_258F0A5B0();

  return sub_258F0AE90();
}

unint64_t sub_258E32C54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_258E34E28(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_258E32C84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258E328F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_258E32CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_258E34E28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_258E32D10(uint64_t a1)
{
  v2 = sub_258E34230();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_258E32D4C(uint64_t a1)
{
  v2 = sub_258E34230();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_258E32D88(uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v169 = 1;
  v167 = 1;
  v5 = sub_258F0A060();
  if (v5)
  {
    v6 = v5;
    v119 = a3;
    v121 = a2;
    v7 = *(v5 + 16);
    v137 = MEMORY[0x277D84F90];
    swift_bridgeObjectRetain_n();
    sub_258E14BA8(0, v7, 0);
    v8 = v137;
    sub_258EA3354(v6, v6, v135);
    v120 = v6;
    if (v7)
    {

      while (1)
      {
        sub_258EA33C0(&v150);
        if (!*(&v151 + 1))
        {
          break;
        }

        sub_258DE4090(&v153, &v138);
        if (swift_dynamicCast())
        {

          *&v138 = 0;
          *(&v138 + 1) = 0xE000000000000000;
          MEMORY[0x259C9DEB0](34, 0xE100000000000000);
          sub_258F0AB70();
          MEMORY[0x259C9DEB0](34, 0xE100000000000000);
        }

        else
        {
          *&v138 = 0;
          *(&v138 + 1) = 0xE000000000000000;
          sub_258F0AB70();
        }

        v9 = v138;
        *&v138 = 34;
        *(&v138 + 1) = 0xE100000000000000;
        v10 = sub_258F0AA50();
        MEMORY[0x259C9DEB0](v10);

        MEMORY[0x259C9DEB0](2112034, 0xE300000000000000);
        MEMORY[0x259C9DEB0](v9, *(&v9 + 1));

        v11 = v138;
        sub_258DE2184(&v150, &qword_27F988DA0, &unk_258F0FFA0);
        v137 = v8;
        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_258E14BA8((v12 > 1), v13 + 1, 1);
          v8 = v137;
        }

        *(v8 + 16) = v13 + 1;
        *(v8 + 16 * v13 + 32) = v11;
        if (!--v7)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {

LABEL_16:
      sub_258EA33C0(&v127);
      while (*(&v128 + 1))
      {
        v133[0] = v129;
        v133[1] = v130;
        v134 = v131;
        v132[0] = v127;
        v132[1] = v128;
        sub_258DE4090(v133 + 8, &v150);
        if (swift_dynamicCast())
        {

          *&v150 = 0;
          *(&v150 + 1) = 0xE000000000000000;
          MEMORY[0x259C9DEB0](34, 0xE100000000000000);
          sub_258F0AB70();
          MEMORY[0x259C9DEB0](34, 0xE100000000000000);
        }

        else
        {
          *&v150 = 0;
          *(&v150 + 1) = 0xE000000000000000;
          sub_258F0AB70();
        }

        v24 = v150;
        *&v150 = 34;
        *(&v150 + 1) = 0xE100000000000000;
        v25 = sub_258F0AA50();
        MEMORY[0x259C9DEB0](v25);

        MEMORY[0x259C9DEB0](2112034, 0xE300000000000000);
        MEMORY[0x259C9DEB0](v24, *(&v24 + 1));

        v26 = v150;
        sub_258DE2184(v132, &qword_27F988DA0, &unk_258F0FFA0);
        v137 = v8;
        v28 = *(v8 + 16);
        v27 = *(v8 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_258E14BA8((v27 > 1), v28 + 1, 1);
          v8 = v137;
        }

        *(v8 + 16) = v28 + 1;
        *(v8 + 16 * v28 + 32) = v26;
        sub_258EA33C0(&v127);
      }

      v125[2] = v135[2];
      v125[3] = v135[3];
      v125[4] = v135[4];
      v126 = v136;
      v125[0] = v135[0];
      v125[1] = v135[1];
      sub_258DE2184(v125, &qword_27F988D98, &qword_258F14070);
      v150 = 0u;
      v151 = 0u;
      v152 = 0;
      v153 = v169;
      *v154 = *v168;
      *&v154[3] = *&v168[3];
      v155 = 0;
      v156 = v167;
      *v157 = *v166;
      *&v157[3] = *&v166[3];
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      sub_258E34A08(&v150);
      sub_258DE2184(&v127, &qword_27F988DA8, &unk_258F0D740);
      *&v138 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DB0, &unk_258F13940);
      sub_258E0F5E4(&qword_27F988DB8, &qword_27F988DB0, &unk_258F13940, MEMORY[0x277D83958]);
      v29 = sub_258F0A490();
      v31 = v30;

      v32 = sub_258F0A350();
      v33 = sub_258F0A810();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v138 = v35;
        *v34 = 136315138;
        v36 = sub_258DE3018(v29, v31, &v138);

        *(v34 + 4) = v36;
        _os_log_impl(&dword_258DD8000, v32, v33, "Boot To Asset query result yielded: \n{%s}", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        MEMORY[0x259C9EF40](v35, -1, -1);
        MEMORY[0x259C9EF40](v34, -1, -1);
      }

      else
      {
      }

      strcpy(v122, "assetSetId");
      BYTE3(v122[1]) = 0;
      HIDWORD(v122[1]) = -369098752;
      sub_258F0AA80();
      if (*(v120 + 16) && (v37 = sub_258E2EA2C(&v138), (v38 & 1) != 0))
      {
        sub_258DE4090(*(v120 + 56) + 32 * v37, v122);
        sub_258E0F590(&v138);
        v39 = swift_dynamicCast();
        if (v39)
        {
          v40 = v123;
        }

        else
        {
          v40 = 0;
        }

        if (v39)
        {
          v41 = v124;
        }

        else
        {
          v41 = 0;
        }

        v117 = v41;
        v118 = v40;
      }

      else
      {
        sub_258E0F590(&v138);
        v117 = 0;
        v118 = 0;
      }

      strcpy(v122, "assetSetName");
      BYTE5(v122[1]) = 0;
      HIWORD(v122[1]) = -5120;
      sub_258F0AA80();
      if (*(v120 + 16) && (v42 = sub_258E2EA2C(&v138), (v43 & 1) != 0))
      {
        sub_258DE4090(*(v120 + 56) + 32 * v42, v122);
        sub_258E0F590(&v138);
        v44 = swift_dynamicCast();
        if (v44)
        {
          v45 = v123;
        }

        else
        {
          v45 = 0;
        }

        if (v44)
        {
          v46 = v124;
        }

        else
        {
          v46 = 0;
        }

        v115 = v46;
        v116 = v45;
      }

      else
      {
        sub_258E0F590(&v138);
        v115 = 0;
        v116 = 0;
      }

      v122[0] = 0xD000000000000017;
      v122[1] = 0x8000000258F18B20;
      sub_258F0AA80();
      if (*(v120 + 16) && (v47 = sub_258E2EA2C(&v138), (v48 & 1) != 0))
      {
        sub_258DE4090(*(v120 + 56) + 32 * v47, v122);
        sub_258E0F590(&v138);
        v49 = swift_dynamicCast();
        v50 = v123;
        if (!v49)
        {
          v50 = 0;
        }

        v114 = v50;
        v51 = v49 ^ 1;
      }

      else
      {
        sub_258E0F590(&v138);
        v114 = 0;
        v51 = 1;
      }

      v113 = v51;
      v122[0] = 0xD000000000000013;
      v122[1] = 0x8000000258F18690;
      sub_258F0AA80();
      if (*(v120 + 16) && (v52 = sub_258E2EA2C(&v138), (v53 & 1) != 0))
      {
        sub_258DE4090(*(v120 + 56) + 32 * v52, v122);
        sub_258E0F590(&v138);
        v54 = swift_dynamicCast();
        if (v54)
        {
          v55 = v123;
        }

        else
        {
          v55 = 0;
        }

        if (v54)
        {
          v56 = v124;
        }

        else
        {
          v56 = 0;
        }

        v111 = v56;
        v112 = v55;
      }

      else
      {
        sub_258E0F590(&v138);
        v111 = 0;
        v112 = 0;
      }

      strcpy(v122, "eventDate");
      WORD1(v122[1]) = 0;
      HIDWORD(v122[1]) = -385875968;
      sub_258F0AA80();
      if (*(v120 + 16) && (v57 = sub_258E2EA2C(&v138), (v58 & 1) != 0))
      {
        sub_258DE4090(*(v120 + 56) + 32 * v57, v122);
        sub_258E0F590(&v138);
        v59 = swift_dynamicCast();
        if (v59)
        {
          v60 = v123;
        }

        else
        {
          v60 = 0;
        }

        if (v59)
        {
          v61 = v124;
        }

        else
        {
          v61 = 0;
        }

        v109 = v61;
        v110 = v60;
      }

      else
      {
        sub_258E0F590(&v138);
        v109 = 0;
        v110 = 0;
      }

      v122[0] = 0xD000000000000015;
      v122[1] = 0x8000000258F186C0;
      sub_258F0AA80();
      if (*(v120 + 16) && (v62 = sub_258E2EA2C(&v138), (v63 & 1) != 0))
      {
        sub_258DE4090(*(v120 + 56) + 32 * v62, v122);
        sub_258E0F590(&v138);
        v64 = swift_dynamicCast();
        if (v64)
        {
          v65 = v123;
        }

        else
        {
          v65 = 0;
        }

        if (v64)
        {
          v66 = v124;
        }

        else
        {
          v66 = 0;
        }

        v107 = v66;
        v108 = v65;
      }

      else
      {
        sub_258E0F590(&v138);
        v107 = 0;
        v108 = 0;
      }

      v122[0] = 0x75706E4969726973;
      v122[1] = 0xEF656C61636F4C74;
      sub_258F0AA80();
      if (*(v120 + 16) && (v67 = sub_258E2EA2C(&v138), (v68 & 1) != 0))
      {
        sub_258DE4090(*(v120 + 56) + 32 * v67, v122);
        sub_258E0F590(&v138);
        v69 = swift_dynamicCast();
        if (v69)
        {
          v70 = v123;
        }

        else
        {
          v70 = 0;
        }

        if (v69)
        {
          v71 = v124;
        }

        else
        {
          v71 = 0;
        }

        v105 = v71;
        v106 = v70;
      }

      else
      {
        sub_258E0F590(&v138);
        v105 = 0;
        v106 = 0;
      }

      strcpy(v122, "programCode");
      HIDWORD(v122[1]) = -352321536;
      sub_258F0AA80();
      if (*(v120 + 16) && (v72 = sub_258E2EA2C(&v138), (v73 & 1) != 0))
      {
        sub_258DE4090(*(v120 + 56) + 32 * v72, v122);
        sub_258E0F590(&v138);
        v74 = swift_dynamicCast();
        if (v74)
        {
          v75 = v123;
        }

        else
        {
          v75 = 0;
        }

        if (v74)
        {
          v76 = v124;
        }

        else
        {
          v76 = 0;
        }
      }

      else
      {
        sub_258E0F590(&v138);
        v75 = 0;
        v76 = 0;
      }

      strcpy(v122, "systemBuild");
      HIDWORD(v122[1]) = -352321536;
      sub_258F0AA80();
      if (*(v120 + 16) && (v77 = sub_258E2EA2C(&v138), (v78 & 1) != 0))
      {
        sub_258DE4090(*(v120 + 56) + 32 * v77, v122);
        sub_258E0F590(&v138);
        v79 = swift_dynamicCast();
        if (v79)
        {
          v80 = v123;
        }

        else
        {
          v80 = 0;
        }

        if (v79)
        {
          v81 = v124;
        }

        else
        {
          v81 = 0;
        }
      }

      else
      {
        sub_258E0F590(&v138);
        v80 = 0;
        v81 = 0;
      }

      strcpy(v122, "deviceType");
      BYTE3(v122[1]) = 0;
      HIDWORD(v122[1]) = -369098752;
      sub_258F0AA80();
      if (*(v120 + 16) && (v82 = sub_258E2EA2C(&v138), (v83 & 1) != 0))
      {
        sub_258DE4090(*(v120 + 56) + 32 * v82, v122);
        sub_258E0F590(&v138);
        v84 = swift_dynamicCast();
        if (v84)
        {
          v85 = v123;
        }

        else
        {
          v85 = 0;
        }

        if (v84)
        {
          v86 = v124;
        }

        else
        {
          v86 = 0;
        }
      }

      else
      {
        sub_258E0F590(&v138);
        v85 = 0;
        v86 = 0;
      }

      v122[0] = 0xD000000000000013;
      v122[1] = 0x8000000258F18A80;
      sub_258F0AA80();
      if (*(v120 + 16) && (v87 = sub_258E2EA2C(&v138), (v88 & 1) != 0))
      {
        sub_258DE4090(*(v120 + 56) + 32 * v87, v122);
        sub_258E0F590(&v138);
        v89 = swift_dynamicCast();
        if (v89)
        {
          v90 = v123;
        }

        else
        {
          v90 = 0;
        }

        if (v89)
        {
          v91 = v124;
        }

        else
        {
          v91 = 0;
        }
      }

      else
      {
        sub_258E0F590(&v138);
        v90 = 0;
        v91 = 0;
      }

      *&v138 = 0xD00000000000002CLL;
      *(&v138 + 1) = 0x8000000258F18A50;
      sub_258F0AA80();
      if (*(v120 + 16) && (v92 = sub_258E2EA2C(v122), (v93 & 1) != 0))
      {
        sub_258DE4090(*(v120 + 56) + 32 * v92, &v123);

        v94 = sub_258F0A370();
        (*(*(v94 - 8) + 8))(v121, v94);
        sub_258E0F590(v122);

        v95 = swift_dynamicCast();
        v96 = v138;
        if (!v95)
        {
          v96 = 0;
        }

        v97 = v95 ^ 1;
      }

      else
      {

        v98 = sub_258F0A370();
        (*(*(v98 - 8) + 8))(v121, v98);
        sub_258E0F590(v122);
        v96 = 0;
        v97 = 1;
      }

      *&v138 = v118;
      *(&v138 + 1) = v117;
      *&v139 = v116;
      *(&v139 + 1) = v115;
      *&v140 = v114;
      BYTE8(v140) = v113;
      *(&v140 + 9) = *v168;
      HIDWORD(v140) = *&v168[3];
      *&v141 = v96;
      BYTE8(v141) = v97;
      HIDWORD(v141) = *&v166[3];
      *(&v141 + 9) = *v166;
      *&v142 = v112;
      *(&v142 + 1) = v111;
      *&v143 = v110;
      *(&v143 + 1) = v109;
      *&v144 = v90;
      *(&v144 + 1) = v91;
      *&v145 = v108;
      *(&v145 + 1) = v107;
      *&v146 = v106;
      *(&v146 + 1) = v105;
      *&v147 = v75;
      *(&v147 + 1) = v76;
      *&v148 = v80;
      *(&v148 + 1) = v81;
      *&v149 = v85;
      *(&v149 + 1) = v86;
      nullsub_1();
      v99 = v147;
      v119[8] = v146;
      v119[9] = v99;
      v100 = v149;
      v119[10] = v148;
      v119[11] = v100;
      v101 = v143;
      v119[4] = v142;
      v119[5] = v101;
      v102 = v145;
      v119[6] = v144;
      v119[7] = v102;
      v103 = v139;
      *v119 = v138;
      v119[1] = v103;
      v104 = v141;
      v119[2] = v140;
      v119[3] = v104;
    }
  }

  else
  {
    v152 = 0;
    v150 = 0u;
    v151 = 0u;
    v153 = v169;
    v155 = 0;
    v156 = v167;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    sub_258E34A08(&v150);
    v14 = sub_258F0A350();
    v15 = sub_258F0A840();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_258DD8000, v14, v15, "failed to get row", v16, 2u);
      MEMORY[0x259C9EF40](v16, -1, -1);
    }

    v17 = sub_258F0A370();
    (*(*(v17 - 8) + 8))(a2, v17);
    sub_258E34E98(&v138);
    v18 = v147;
    a3[8] = v146;
    a3[9] = v18;
    v19 = v149;
    a3[10] = v148;
    a3[11] = v19;
    v20 = v143;
    a3[4] = v142;
    a3[5] = v20;
    v21 = v145;
    a3[6] = v144;
    a3[7] = v21;
    v22 = v139;
    *a3 = v138;
    a3[1] = v22;
    v23 = v141;
    a3[2] = v140;
    a3[3] = v23;
  }
}

uint64_t BootToAssetData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9895A0, &qword_258F0FD20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v20 - v6;
  v8 = *(v1 + 8);
  v20[1] = *v1;
  v20[2] = v8;
  v9 = *(v1 + 24);
  v20[13] = *(v1 + 16);
  v20[14] = v9;
  v10 = *(v1 + 32);
  v23 = *(v1 + 40);
  v22 = *(v1 + 48);
  v21 = *(v1 + 56);
  v11 = *(v1 + 72);
  v20[5] = *(v1 + 64);
  v20[6] = v11;
  v12 = *(v1 + 80);
  v20[15] = *(v1 + 88);
  v20[16] = v12;
  v13 = *(v1 + 120);
  v26 = *(v1 + 112);
  v24 = v10;
  v25 = v13;
  v14 = *(v1 + 136);
  v20[11] = *(v1 + 128);
  v20[12] = v14;
  v15 = *(v1 + 152);
  v20[9] = *(v1 + 144);
  v20[10] = v15;
  v16 = *(v1 + 168);
  v20[7] = *(v1 + 160);
  v20[8] = v16;
  v17 = *(v1 + 184);
  v20[3] = *(v1 + 176);
  v20[4] = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258E34230();
  sub_258F0AEE0();
  v39 = 0;
  v18 = v27;
  sub_258F0ACA0();
  if (!v18)
  {
    v38 = 1;
    sub_258F0ACA0();
    v37 = 2;
    sub_258F0ACC0();
    v27 = v4;
    v36 = 3;
    sub_258F0ACF0();
    v35 = 4;
    sub_258F0ACA0();
    v34 = 5;
    sub_258F0ACA0();
    v33 = 6;
    sub_258F0ACA0();
    v32 = 7;
    sub_258F0ACA0();
    v31[0] = 8;
    sub_258F0ACA0();
    v30 = 9;
    sub_258F0ACA0();
    v29 = 10;
    sub_258F0ACA0();
    v28 = 11;
    sub_258F0ACA0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_258E34230()
{
  result = qword_27F9895A8;
  if (!qword_27F9895A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9895A8);
  }

  return result;
}

uint64_t BootToAssetData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9895B0, &qword_258F0FD28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v41 - v8;
  v91 = 1;
  v89 = 1;
  v10 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_258E34230();
  sub_258F0AED0();
  if (v2)
  {
    v92 = v2;
    v55 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    v54 = 0uLL;
    v51 = 0;
    v49 = 0uLL;
    v56 = 0uLL;
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v70 = 0;
    v71 = 0;
    v72 = 0uLL;
    v73 = 0;
    v74 = v91;
    *v75 = *v90;
    *&v75[3] = *&v90[3];
    v76 = 0;
    v77 = v89;
    *v78 = *v88;
    *&v78[3] = *&v88[3];
    v79 = v56;
    v80 = v49;
    v81 = 0uLL;
    v82 = 0;
    v83 = v51;
  }

  else
  {
    LOBYTE(v70) = 0;
    *&v48 = sub_258F0ABF0();
    *(&v48 + 1) = v12;
    LOBYTE(v70) = 1;
    v47 = sub_258F0ABF0();
    v51 = v13;
    LOBYTE(v70) = 2;
    v46 = sub_258F0AC10();
    v91 = v14 & 1;
    LOBYTE(v70) = 3;
    v45 = sub_258F0AC40();
    v89 = v15 & 1;
    LOBYTE(v70) = 4;
    *&v49 = sub_258F0ABF0();
    *(&v49 + 1) = v16;
    LOBYTE(v70) = 5;
    *&v44 = sub_258F0ABF0();
    *(&v44 + 1) = v17;
    LOBYTE(v70) = 6;
    *&v54 = sub_258F0ABF0();
    *(&v54 + 1) = v18;
    LOBYTE(v70) = 7;
    *&v53 = sub_258F0ABF0();
    *(&v53 + 1) = v19;
    LOBYTE(v70) = 8;
    v20 = sub_258F0ABF0();
    v92 = 0;
    *&v52 = v20;
    *(&v52 + 1) = v21;
    LOBYTE(v70) = 9;
    *&v56 = sub_258F0ABF0();
    *(&v56 + 1) = v22;
    v92 = 0;
    LOBYTE(v70) = 10;
    *&v55 = sub_258F0ABF0();
    *(&v55 + 1) = v23;
    v92 = 0;
    v69 = 11;
    v24 = sub_258F0ABF0();
    v92 = 0;
    v25 = v24;
    v27 = v26;
    (*(v6 + 8))(v9, v5);
    *&v57 = v25;
    *(&v57 + 1) = v27;
    v43 = v27;
    v58 = v44;
    *&v59 = v46;
    v42 = v91;
    BYTE8(v59) = v91;
    *&v60 = v45;
    v41 = v89;
    BYTE8(v60) = v89;
    v61 = v56;
    v28 = v49;
    v62 = v49;
    v29 = v48;
    v63 = v48;
    v30 = v47;
    v31 = v51;
    *&v64 = v47;
    *(&v64 + 1) = v51;
    v65 = v54;
    v66 = v53;
    v67 = v52;
    v68 = v55;
    v32 = v56;
    v33 = v49;
    v34 = v64;
    a2[6] = v48;
    a2[7] = v34;
    a2[4] = v32;
    a2[5] = v33;
    v35 = v57;
    v36 = v58;
    v37 = v60;
    a2[2] = v59;
    a2[3] = v37;
    *a2 = v35;
    a2[1] = v36;
    v38 = v65;
    v39 = v66;
    v40 = v68;
    a2[10] = v67;
    a2[11] = v40;
    a2[8] = v38;
    a2[9] = v39;
    sub_258E32698(&v57, &v70);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v70 = v25;
    v71 = v43;
    v72 = v44;
    v73 = v46;
    v74 = v42;
    v76 = v45;
    v77 = v41;
    v79 = v56;
    v80 = v28;
    v81 = v29;
    v82 = v30;
    v83 = v31;
  }

  v84 = v54;
  v85 = v53;
  v86 = v52;
  v87 = v55;
  return sub_258E34A08(&v70);
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_258E34A9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 192))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_258E34AF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BootToAssetData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BootToAssetData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_258E34D24()
{
  result = qword_27F9895C8;
  if (!qword_27F9895C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9895C8);
  }

  return result;
}

unint64_t sub_258E34D7C()
{
  result = qword_27F9895D0;
  if (!qword_27F9895D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9895D0);
  }

  return result;
}

unint64_t sub_258E34DD4()
{
  result = qword_27F9895D8;
  if (!qword_27F9895D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9895D8);
  }

  return result;
}

unint64_t sub_258E34E28(uint64_t a1, uint64_t a2)
{
  v2 = sub_258F0ABE0();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_258E34E74(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

double sub_258E34E98(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_258F0FD10;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  return result;
}

uint64_t sub_258E34EF4(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: ODDAssetAvailabilityFromBoodDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_258E34FD4()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23BootToAssetDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BootToAssetDataProvider(uint64_t a1)
{
  result = qword_27F9895E8;
  if (!qword_27F9895E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E350C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258DE1DC4;

  return sub_258E34ED4();
}

uint64_t BootToAssetMetrics.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  BootToAssetMetrics.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_258E351C4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for BootToAssetCalculator(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258F0A4E0();
  v5 = sub_258F0A4E0();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_258F098B0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_258F098D0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

void *BootToAssetMetrics.init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v106 = a4;
  v107 = a3;
  v111 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v96 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v103 = &v84 - v10;
  v90 = sub_258F09B00();
  v89 = *(v90 - 1);
  MEMORY[0x28223BE20](v90, v11);
  v87 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_258F09A20();
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v13);
  v85 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_258F09A70();
  v112 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v101 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v84 - v20;
  v22 = sub_258F0A370();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v99 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v104 = &v84 - v29;
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v84 - v31;
  v33 = v23[2];
  v33(&v84 - v31, a2, v22);
  type metadata accessor for BootToAssetDataProvider(0);
  v34 = swift_allocObject();
  v110 = v23;
  v35 = v23[4];
  v102 = v32;
  v36 = v32;
  v37 = v22;
  v95 = v23 + 4;
  v94 = v35;
  v35(v34 + OBJC_IVAR____TtC16MetricsFramework23BootToAssetDataProvider_logger, v36, v22);
  v38 = v119;
  v119[3] = v34;
  v97 = OBJC_IVAR____TtC16MetricsFramework18BootToAssetMetrics_logger;
  v39 = v38;
  v33(v38 + OBJC_IVAR____TtC16MetricsFramework18BootToAssetMetrics_logger, a2, v37);
  sub_258F09A60();
  v40 = *(v112 + 32);
  v105 = OBJC_IVAR____TtC16MetricsFramework18BootToAssetMetrics_oddId;
  v100 = v21;
  v108 = v15;
  v92 = v112 + 32;
  v91 = v40;
  v40(v39 + OBJC_IVAR____TtC16MetricsFramework18BootToAssetMetrics_oddId, v21, v15);
  v41 = (v39 + OBJC_IVAR____TtC16MetricsFramework18BootToAssetMetrics_fbfBundleId);
  v42 = v106;
  *v41 = v107;
  v41[1] = v42;
  v107 = v41;
  v43 = sub_258F0A1F0();
  swift_allocObject();
  v44 = v111;
  v45 = sub_258F0A1E0();
  v117 = v43;
  v118 = MEMORY[0x277D04548];
  v116 = v45;
  v111 = a2;
  v93 = v23 + 2;
  v98 = v33;
  v33(v104, a2, v37);
  v46 = sub_258F09C20();
  swift_allocObject();
  v47 = v109;
  v48 = sub_258F09BE0();
  v109 = v47;
  if (v47)
  {
    v49 = *(v110 + 1);
    v49(v111, v37);

    v50 = v119;

    v49(v97 + v50, v37);
    (*(v112 + 8))(&v105[v50], v108);

    type metadata accessor for BootToAssetMetrics(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v51 = v48;
    v52 = v85;
    sub_258F0A090();
    v53 = v87;
    sub_258F09AC0();
    v106 = v51;
    sub_258F09C10();
    (*(v89 + 8))(v53, v90);
    (*(v86 + 8))(v52, v88);
    v54 = v102;
    v55 = v98;
    v98(v102, v111, v37);
    v56 = v55;
    v97 = *(v112 + 16);
    v104 = v46;
    v57 = v100;
    v58 = v108;
    v97();
    v105 = v44;

    v59 = v103;
    sub_258E351C4(v103);
    v56(v99, v54, v37);
    v60 = v96;
    sub_258DECF90(v59, v96);
    (v97)(v101, v57, v58);
    type metadata accessor for BiomeResultsWrapperFactory();
    v97 = swift_allocObject();
    v61 = type metadata accessor for CAAnalyticsEventSubmitter();
    v62 = swift_allocObject();
    v117 = v61;
    v118 = &off_286A2C648;
    v116 = v62;
    type metadata accessor for BootToAssetCalculator(0);
    v63 = swift_allocObject();
    v64 = __swift_mutable_project_boxed_opaque_existential_1(&v116, v61);
    v90 = &v84;
    MEMORY[0x28223BE20](v64, v64);
    v66 = (&v84 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v67 + 16))(v66);
    v68 = *v66;
    v114 = v61;
    v115 = &off_286A2C648;
    *&v113 = v68;
    sub_258F09AC0();
    v69 = v99;
    v70 = v98;
    v98((v63 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_logger), v99, v37);
    sub_258DECF90(v60, v63 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_sqlFileURL);
    v71 = (v63 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_bookmarkService);
    v71[3] = v104;
    v71[4] = &off_286A2FA30;
    *v71 = v106;
    sub_258DED000(v60);
    v72 = *(v110 + 1);
    v72(v69, v37);
    v110 = v72;
    sub_258DED000(v103);
    (*(v112 + 8))(v100, v58);
    v73 = v102;
    v72(v102, v37);
    v91(v63 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_oddId, v101, v58);
    *(v63 + 56) = v97;
    sub_258DEE384(&v113, v63 + 16);
    *(v63 + OBJC_IVAR____TtC16MetricsFramework21BootToAssetCalculator_defaults) = v105;
    __swift_destroy_boxed_opaque_existential_1Tm(&v116);
    v119[4] = v63;
    v74 = v111;
    v70(v73, v111, v37);
    v76 = *v107;
    v75 = v107[1];

    v77 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v76, v75);
    type metadata accessor for BootToAssetSELFReporter(0);
    v78 = swift_allocObject();
    v79 = (v78 + OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_reportingService);
    v79[3] = type metadata accessor for SELFReportingService();
    v79[4] = &protocol witness table for SELFReportingService;
    *v79 = v77;
    v94(v78 + OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_logger, v73, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_258F0CA20;
    *(v80 + 32) = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989610, &qword_258F10070);
    swift_allocObject();

    v116 = sub_258F09BA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989618, qword_258F10078);
    swift_allocObject();
    v81 = sub_258F09BC0();

    v110(v74, v37);
    v82 = v119;
    v119[2] = v81;
    return v82;
  }

  return v50;
}

uint64_t type metadata accessor for BootToAssetMetrics(uint64_t a1)
{
  result = qword_27F989638;
  if (!qword_27F989638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E35E8C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E35EAC, 0, 0);
}

uint64_t sub_258E35EAC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DEE374;

  return sub_258E34ED4();
}

uint64_t sub_258E35F48(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_258E35F68, 0, 0);
}

uint64_t sub_258E35F68()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_258E36004;

  return sub_258E30218(v0 + 16);
}

uint64_t sub_258E36004()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_258E36B44;
  }

  else
  {
    v2 = sub_258E36B40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

char *BootToAssetMetrics.deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework18BootToAssetMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework18BootToAssetMetrics_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t BootToAssetMetrics.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework18BootToAssetMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework18BootToAssetMetrics_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_258E362EC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E36310, 0, 0);
}

uint64_t sub_258E36310()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED7D0;

  return sub_258E34ED4();
}

uint64_t sub_258E363AC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 48) = v3;
  return MEMORY[0x2822009F8](sub_258E363D0, 0, 0);
}

uint64_t sub_258E363D0()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_258E3646C;

  return sub_258E30218(v0 + 16);
}

uint64_t sub_258E3646C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_258E365A8;
  }

  else
  {
    v2 = sub_258E36580;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258E36580()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_258E3665C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BootToAssetMetrics(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258E366A8(uint64_t a1)
{
  result = sub_258F0A370();
  if (v2 <= 0x3F)
  {
    result = sub_258F09A70();
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

uint64_t dispatch thunk of BootToAssetMetrics.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of BootToAssetMetrics.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 144) + **(*v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of BootToAssetMetrics.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t sub_258E36C04(uint64_t a1)
{
  v6 = (*(**v1 + 80) + **(**v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t dispatch thunk of BootToAssetReporter.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 80) + **(*v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t BootToAssetSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_258E3886C(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

uint64_t BootToAssetSELFReporter.init(logger:reportingService:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  MEMORY[0x28223BE20](v7, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_258E385E0(a1, v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v11;
}

uint64_t sub_258E36FE8(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = sub_258F0A370();
  *(v2 + 24) = v4;
  *(v2 + 32) = *(v4 - 8);
  *(v2 + 40) = swift_task_alloc();
  v5 = type metadata accessor for CombinedBootToAssetData(0);
  *(v2 + 48) = v5;
  *(v2 + 56) = *(v5 - 8);
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = *a1;
  *(v2 + 96) = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_258E37124, 0, 0);
}

void sub_258E37124()
{
  v0[13] = OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_logger;

  v1 = sub_258F0A350();
  v2 = sub_258F0A810();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[12];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_258DD8000, v1, v2, "BootToAssetSelfReporter reporting results for %ld days", v5, 0xCu);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  else
  {
  }

  v6 = v0[12];
  v7 = v0[2];
  v8 = *(v6 + 16);
  v9 = OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_reportingService;
  v0[14] = v8;
  v0[15] = v9;
  if (v8)
  {
    v10 = v0[7];
    v11 = v0[4];
    v0[16] = 0;
    if (!*(v6 + 16))
    {
      __break(1u);
      return;
    }

    v12 = v0[13];
    v13 = v0[8];
    v14 = v0[9];
    v15 = v0[5];
    v16 = v0[3];
    sub_258E3896C(v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v14);
    sub_258DEB8C8(0, &qword_27F989658, 0x277D591D0);
    sub_258E3896C(v14, v13);
    (*(v11 + 16))(v15, v7 + v12, v16);
    v17 = sub_258E37B5C(v13, v15);
    v0[17] = v17;
    v18 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
    v0[18] = v18;
    if (v18)
    {
      v19 = v0[13];
      v20 = v0[2];
      v21 = (v20 + v0[15]);
      v22 = v18;
      [v18 setAssetAvailabilityFromBootDigestReported_];
      v23 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
      [v22 setEventMetadata_];

      v24 = v21[3];
      v25 = v21[4];
      __swift_project_boxed_opaque_existential_1(v21, v24);
      v33 = (*(v25 + 8) + **(v25 + 8));
      v26 = swift_task_alloc();
      v0[19] = v26;
      *v26 = v0;
      v26[1] = sub_258E37584;

      v33(v22, v20 + v19, v24, v25);
      return;
    }

    v27 = sub_258F0A350();
    v28 = sub_258F0A820();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_258DD8000, v27, v28, "Failed to generate event for reporting asset availability from boot", v29, 2u);
      MEMORY[0x259C9EF40](v29, -1, -1);
      v30 = v17;
    }

    else
    {
      v30 = v27;
      v27 = v17;
    }

    v31 = v0[9];

    sub_258E389D0(v31);
  }

  v32 = v0[1];

  v32();
}

uint64_t sub_258E37584()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_258E37A34;
  }

  else
  {
    v2 = sub_258E37698;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258E37698()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 72);

  result = sub_258E389D0(v4);
  if (v2 + 1 != v3)
  {
    v6 = *(v0 + 128) + 1;
    *(v0 + 128) = v6;
    v7 = *(v0 + 96);
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
      return result;
    }

    v8 = *(v0 + 104);
    v9 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = *(v0 + 32);
    v11 = *(v0 + 40);
    v14 = *(v0 + 16);
    v13 = *(v0 + 24);
    sub_258E3896C(v7 + ((*(*(v0 + 56) + 80) + 32) & ~*(*(v0 + 56) + 80)) + *(*(v0 + 56) + 72) * v6, v10);
    sub_258DEB8C8(0, &qword_27F989658, 0x277D591D0);
    sub_258E3896C(v10, v9);
    (*(v12 + 16))(v11, v14 + v8, v13);
    v15 = sub_258E37B5C(v9, v11);
    *(v0 + 136) = v15;
    v16 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
    *(v0 + 144) = v16;
    if (v16)
    {
      v17 = *(v0 + 104);
      v18 = *(v0 + 16);
      v19 = (v18 + *(v0 + 120));
      v20 = v16;
      [v16 setAssetAvailabilityFromBootDigestReported_];
      v21 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
      [v20 setEventMetadata_];

      v22 = v19[3];
      v23 = v19[4];
      __swift_project_boxed_opaque_existential_1(v19, v22);
      v31 = (*(v23 + 8) + **(v23 + 8));
      v24 = swift_task_alloc();
      *(v0 + 152) = v24;
      *v24 = v0;
      v24[1] = sub_258E37584;

      return v31(v20, v18 + v17, v22, v23);
    }

    v25 = sub_258F0A350();
    v26 = sub_258F0A820();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_258DD8000, v25, v26, "Failed to generate event for reporting asset availability from boot", v27, 2u);
      MEMORY[0x259C9EF40](v27, -1, -1);
      v28 = v15;
    }

    else
    {
      v28 = v25;
      v25 = v15;
    }

    v29 = *(v0 + 72);

    sub_258E389D0(v29);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_258E37A34(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Failed to report A2B event", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v6 = v1[17];
  v5 = v1[18];
  v7 = v1[9];

  swift_willThrow();
  sub_258E389D0(v7);

  v8 = v1[1];

  return v8();
}

id *sub_258E37B5C(uint64_t *a1, uint64_t a2)
{
  v3 = &selRef_setSampledErrorAsset_;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
    goto LABEL_55;
  }

  v5 = result;
  v60 = a1;
  v65 = *a1;
  v6 = *(*a1 + 16);
  v7 = MEMORY[0x277D84F90];
  v62 = result;
  if (v6)
  {
    v80 = MEMORY[0x277D84F90];
    v8 = result;
    sub_258F0AB40();
    if (*(v65 + 16))
    {
      v9 = 0;
      v10 = (v65 + 32);
      v11 = v6 - 1;
      v12 = &unk_27F989670;
      v13 = 0x277D59000uLL;
      v63 = v6 - 1;
      do
      {
        v14 = *v10;
        v15 = v10[1];
        v16 = v10[3];
        v70 = v10[2];
        v71 = v16;
        v68 = v14;
        v69 = v15;
        v17 = v10[4];
        v18 = v10[5];
        v19 = v10[7];
        v74 = v10[6];
        v75 = v19;
        v72 = v17;
        v73 = v18;
        v20 = v10[8];
        v21 = v10[9];
        v22 = v10[11];
        v78 = v10[10];
        v79 = v22;
        v76 = v20;
        v77 = v21;
        v23 = objc_allocWithZone(*(v13 + 456));
        sub_258E32698(&v68, v67);
        sub_258E32698(&v68, v67);
        result = [v23 v3[10]];
        if (!result)
        {
          goto LABEL_54;
        }

        v24 = result;
        sub_258DEB8C8(0, v12, 0x277D591D8);
        v67[8] = v76;
        v67[9] = v77;
        v67[10] = v78;
        v67[11] = v79;
        v67[4] = v72;
        v67[5] = v73;
        v67[6] = v74;
        v67[7] = v75;
        v67[0] = v68;
        v67[1] = v69;
        v67[2] = v70;
        v67[3] = v71;
        sub_258E32698(&v68, &v66);
        v25 = v24;
        v26 = sub_258E3841C(v67);
        [v25 setDimensions_];

        result = [objc_allocWithZone(MEMORY[0x277D591E0]) v3[10]];
        if (!result)
        {
          goto LABEL_53;
        }

        v27 = result;
        sub_258E34A08(&v68);
        if ((BYTE8(v70) & 1) == 0)
        {
          v28 = *&v70;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_258F0CA20;
          *(v29 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
          v30 = v13;
          v31 = v3;
          v32 = v12;
          v33 = sub_258F0A6A0();

          [v27 setBootToAssetDeliveryInMs_];

          v12 = v32;
          v3 = v31;
          v13 = v30;
          v11 = v63;
        }

        [v25 setTuples_];

        sub_258E34A08(&v68);
        sub_258F0AB20();
        sub_258F0AB50();
        sub_258F0AB60();
        sub_258F0AB30();
        if (v11 == v9)
        {
          goto LABEL_12;
        }

        v10 += 12;
      }

      while (++v9 < *(v65 + 16));
    }

    __break(1u);
LABEL_12:
    v5 = v62;
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    v34 = result;
  }

  sub_258DEB8C8(0, &qword_27F989678, 0x277D591C8);
  v35 = sub_258F0A6A0();

  [v5 setDigests_];

  v66 = v7;
  v36 = *(v65 + 16);
  if (!v36)
  {
    v64 = v7;
    goto LABEL_41;
  }

  v37 = 0;
  v38 = v65 + 32;
  v64 = MEMORY[0x277D84F90];
  do
  {
    v39 = (v38 + 192 * v37);
    v40 = v37;
    while (1)
    {
      if (v40 >= *(v65 + 16))
      {
        __break(1u);
        goto LABEL_48;
      }

      v41 = *v39;
      v42 = v39[1];
      v43 = v39[3];
      v70 = v39[2];
      v71 = v43;
      v68 = v41;
      v69 = v42;
      v44 = v39[4];
      v45 = v39[5];
      v46 = v39[7];
      v74 = v39[6];
      v75 = v46;
      v72 = v44;
      v73 = v45;
      v47 = v39[8];
      v48 = v39[9];
      v49 = v39[11];
      v78 = v39[10];
      v79 = v49;
      v76 = v47;
      v77 = v48;
      if (*(&v49 + 1))
      {
        if (*(&v77 + 1))
        {
          break;
        }
      }

LABEL_18:
      ++v40;
      v39 += 12;
      if (v36 == v40)
      {
        goto LABEL_41;
      }
    }

    v5 = objc_allocWithZone(MEMORY[0x277D59350]);
    sub_258E32698(&v68, v67);

    v50 = [v5 v3[10]];
    if (!v50)
    {
      sub_258E34A08(&v68);

      goto LABEL_18;
    }

    v5 = v50;
    v51 = sub_258F0A4E0();

    [v5 setDeviceType_];

    v52 = sub_258F0A4E0();

    v53 = v52;
    if ([v53 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
    {
      v54 = 0;
      v38 = v65 + 32;
    }

    else
    {
      v38 = v65 + 32;
      if ([v53 isEqualToString:@"PROGRAMCODE_IOS"])
      {
        v54 = 1;
      }

      else if ([v53 isEqualToString:@"PROGRAMCODE_MACOS"])
      {
        v54 = 2;
      }

      else if ([v53 isEqualToString:@"PROGRAMCODE_TVOS"])
      {
        v54 = 3;
      }

      else if ([v53 isEqualToString:@"PROGRAMCODE_WATCHOS"])
      {
        v54 = 4;
      }

      else if ([v53 isEqualToString:@"PROGRAMCODE_VISIONOS"])
      {
        v54 = 5;
      }

      else
      {
        v54 = 0;
      }
    }

    [v5 setProgramCode_];
    v55 = sub_258E34A08(&v68);
    MEMORY[0x259C9DF50](v55);
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_258F0A6D0();
    }

    v37 = v40 + 1;
    sub_258F0A700();
    v64 = v66;
  }

  while (v36 - 1 != v40);
LABEL_41:
  v5 = v64;
  if (v64 >> 62)
  {
LABEL_48:
    result = sub_258F0AA20();
    v56 = v62;
    if (!result)
    {
      goto LABEL_49;
    }

LABEL_43:
    if ((v5 & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x259C9E3B0](0, v5);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        return result;
      }

      v57 = v5[4];
    }

    v58 = v57;
    goto LABEL_50;
  }

  result = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v56 = v62;
  if (result)
  {
    goto LABEL_43;
  }

LABEL_49:
  v58 = 0;
LABEL_50:

  [v56 setFixedDimensions_];

  v59 = sub_258F0A370();
  (*(*(v59 - 8) + 8))(a2, v59);
  sub_258E389D0(v60);
  return v56;
}

uint64_t sub_258E38264()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = (v0 + OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_reportingService);

  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t BootToAssetSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_reportingService));
  return v0;
}

uint64_t BootToAssetSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_reportingService));

  return swift_deallocClassInstance();
}

id sub_258E3841C(__int128 *a1)
{
  v2 = a1[9];
  v24 = a1[8];
  v25 = v2;
  v3 = a1[11];
  v26 = a1[10];
  v27 = v3;
  v4 = a1[5];
  v20 = a1[4];
  v21 = v4;
  v5 = a1[7];
  v22 = a1[6];
  v23 = v5;
  v6 = a1[1];
  v16 = *a1;
  v17 = v6;
  v7 = a1[3];
  v18 = a1[2];
  v19 = v7;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v9 = result;
    v28 = *a1;
    v10 = *(&v28 + 1);
    v11 = result;
    if (*(&v28 + 1))
    {
      sub_258E38B44(&v28, &v15);
      v10 = sub_258F0A4E0();
      sub_258E38BB4(&v28);
    }

    [v9 setAssetSetId_];

    if (*(&v17 + 1))
    {

      v12 = sub_258F0A4E0();
    }

    else
    {
      v12 = 0;
    }

    [v9 setAssetSetName_];

    if (*(&v22 + 1))
    {

      v13 = sub_258F0A4E0();
    }

    else
    {
      v13 = 0;
    }

    [v9 setPreviousSystemBuild_];

    if ((BYTE8(v19) & 1) == 0)
    {
      [v9 setBuildInstallationTimestampInSecondsSince1970_];
    }

    v14 = sub_258E386A0(&v16);
    [v9 setAssistantDimensions_];

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258E385E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a3 + OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_reportingService);
  v9[3] = a4;
  v9[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v11 = OBJC_IVAR____TtC16MetricsFramework23BootToAssetSELFReporter_logger;
  v12 = sub_258F0A370();
  (*(*(v12 - 8) + 32))(a3 + v11, a1, v12);
  return a3;
}

id sub_258E386A0(uint64_t a1)
{
  result = [objc_allocWithZone(MEMORY[0x277D59248]) init];
  if (result)
  {
    v3 = result;
    v12 = *(a1 + 160);
    v4 = *(&v12 + 1);
    v5 = result;
    if (*(&v12 + 1))
    {
      sub_258E38B44(&v12, &v11);
      v4 = sub_258F0A4E0();
      sub_258E38BB4(&v12);
    }

    [v3 setSystemBuild_];

    if (*(a1 + 120))
    {

      v6 = sub_258F0A4E0();

      v7 = v6;
      if ([v7 isEqualToString:@"UNKNOWN"])
      {
        v8 = 0;
      }

      else if ([v7 isEqualToString:@"OPTED_IN"])
      {
        v8 = 1;
      }

      else if ([v7 isEqualToString:@"OPTED_OUT"])
      {
        v8 = 2;
      }

      else if ([v7 isEqualToString:@"DISMISSED"])
      {
        v8 = 3;
      }

      else
      {
        v8 = 0;
      }

      [v3 setDataSharingOptInStatus_];
    }

    v11 = *(a1 + 128);
    sub_258E38B44(&v11, &v10);
    sub_258E34A08(a1);
    if (*(&v11 + 1))
    {
      v9 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(v11, *(&v11 + 1));

      [v3 setSiriInputLocale_];
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258E3886C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BootToAssetSELFReporter(0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a2, a4);
  return sub_258E385E0(a1, v11, v12, a4, a5);
}

uint64_t sub_258E3896C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CombinedBootToAssetData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E389D0(uint64_t a1)
{
  v2 = type metadata accessor for CombinedBootToAssetData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for BootToAssetSELFReporter(uint64_t a1)
{
  result = qword_27F989660;
  if (!qword_27F989660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E38A80(uint64_t a1)
{
  result = sub_258F0A370();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_258E38B44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988958, &unk_258F0C100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E38BB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988958, &unk_258F0C100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258E38C54(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result >= 1)
  {
    return sub_258E38C64(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_258E38C64(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_258F0A370();
  v38 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 40))(a4, a5);

  v16 = sub_258F0A350();
  v17 = sub_258F0A820();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = v6;
    v19 = v18;
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v19 = 136315650;
    v20 = *(a5 + 16);
    HIDWORD(v34) = v17;
    v20(v40, a4, a5);
    v21 = SiriMetricsCalculatorType.description.getter();
    v23 = sub_258DE3018(v21, v22, aBlock);
    v35 = v12;
    v24 = a3;
    v25 = a4;
    v26 = a2;
    v27 = a1;
    v28 = v23;

    *(v19 + 4) = v28;
    a1 = v27;
    a2 = v26;
    a4 = v25;
    a3 = v24;
    *(v19 + 12) = 2048;
    *(v19 + 14) = a1;
    *(v19 + 22) = 2080;
    *(v19 + 24) = sub_258DE3018(a2, v24, aBlock);
    _os_log_impl(&dword_258DD8000, v16, BYTE4(v34), "Logging Core Analytics Event from %s with count: %ld, error: %s", v19, 0x20u);
    v29 = v36;
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v29, -1, -1);
    MEMORY[0x259C9EF40](v19, -1, -1);

    (*(v38 + 8))(v15, v35);
  }

  else
  {

    (*(v38 + 8))(v15, v12);
  }

  (*(a5 + 24))(v40, a4, a5);
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a2;
  v30[5] = a3;
  v30[6] = a1;

  v31 = sub_258F0A4E0();

  aBlock[4] = sub_258E39170;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_258E2C248;
  aBlock[3] = &block_descriptor_1;
  v32 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v32);

  return __swift_destroy_boxed_opaque_existential_1Tm(v40);
}

unint64_t sub_258E39014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989530, &unk_258F0FA20);
  inited = swift_initStackObject();
  strcpy((inited + 32), "CalculatorName");
  *(inited + 16) = xmmword_258F0F8B0;
  *(inited + 47) = -18;
  (*(a5 + 16))(&v10, a4, a5);
  *(inited + 48) = sub_258F0A7D0();
  *(inited + 56) = 0x726F727245;
  *(inited + 64) = 0xE500000000000000;
  *(inited + 72) = sub_258F0A4E0();
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x8000000258F1A700;
  *(inited + 96) = sub_258F0A7D0();
  v8 = sub_258DFBE10(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989538, &unk_258F149F0);
  swift_arrayDestroy();
  return v8;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for CommonDigestElements(uint64_t a1)
{
  result = qword_27F989680;
  if (!qword_27F989680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258E3920C(uint64_t a1)
{
  sub_258E39430(319, &qword_27F989690, type metadata accessor for SISchemaAssistantViewMode);
  if (v1 <= 0x3F)
  {
    sub_258E39430(319, &qword_27F989698, type metadata accessor for SISchemaDataSharingOptInState);
    if (v2 <= 0x3F)
    {
      sub_258E39430(319, &qword_27F9896A0, type metadata accessor for ORCHSchemaORCHSiriAsrMode);
      if (v3 <= 0x3F)
      {
        sub_258E39430(319, &qword_27F9896A8, type metadata accessor for ORCHSchemaORCHSiriNlMode);
        if (v4 <= 0x3F)
        {
          sub_258E39430(319, &qword_27F9896B0, sub_258E393E4);
          if (v5 <= 0x3F)
          {
            sub_258E39430(319, &qword_27F9896C0, type metadata accessor for SISchemaProgramCode);
            if (v6 <= 0x3F)
            {
              sub_258E39430(319, &qword_27F9896C8, MEMORY[0x277CC95F0]);
              if (v7 <= 0x3F)
              {
                sub_258E39484(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_258E393E4()
{
  result = qword_27F9896B8;
  if (!qword_27F9896B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F9896B8);
  }

  return result;
}

void sub_258E39430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258F0A920();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258E39484(uint64_t a1)
{
  if (!qword_27F9896D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9896D8, &unk_258F10780);
    v1 = sub_258F0A920();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9896D0);
    }
  }
}

uint64_t sub_258E394E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v112 = a2;
  v7 = sub_258F0A370();
  v110 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v102 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v100 = &v97 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v97 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v101 = &v97 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v22 = MEMORY[0x28223BE20](v20 - 8, v21);
  v24 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v97 - v27;
  MEMORY[0x28223BE20](v26, v29);
  v111 = &v97 - v30;
  strcpy(v113, "is_carplay");
  BYTE3(v113[1]) = 0;
  HIDWORD(v113[1]) = -369098752;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v31 = sub_258E2EA2C(v114), (v32 & 1) == 0))
  {
    sub_258E0F590(v114);
    goto LABEL_9;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v31, v115);
  sub_258E0F590(v114);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v108 = 0;
    v109 = 1;
    goto LABEL_10;
  }

  if (LODWORD(v113[0]) == 1)
  {
    v33 = 5;
  }

  else
  {
    v33 = 0;
  }

  v108 = v33;
  v109 = LODWORD(v113[0]) != 1;
LABEL_10:
  v113[0] = 0xD000000000000019;
  v113[1] = 0x8000000258F18AA0;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v34 = sub_258E2EA2C(v114), (v35 & 1) == 0))
  {
    sub_258E0F590(v114);
    goto LABEL_16;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v34, v115);
  sub_258E0F590(v114);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v107 = 1;
    goto LABEL_17;
  }

  v36 = sub_258F0A4E0();

  v37 = v36;
  if ([v37 isEqualToString:@"UNKNOWN"])
  {
    HIDWORD(v107) = 0;
  }

  else
  {
    if ([v37 isEqualToString:@"OPTED_IN"])
    {
      v87 = 1;
    }

    else if ([v37 isEqualToString:@"OPTED_OUT"])
    {
      v87 = 2;
    }

    else if ([v37 isEqualToString:@"DISMISSED"])
    {
      v87 = 3;
    }

    else
    {
      v87 = 0;
    }

    HIDWORD(v107) = v87;
  }

  LODWORD(v107) = 0;
LABEL_17:
  strcpy(v113, "asr_location");
  BYTE5(v113[1]) = 0;
  HIWORD(v113[1]) = -5120;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v38 = sub_258E2EA2C(v114), (v39 & 1) == 0))
  {
    sub_258E0F590(v114);
    goto LABEL_23;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v38, v115);
  sub_258E0F590(v114);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    v106 = 1;
    goto LABEL_24;
  }

  v40 = sub_258F0A4E0();

  v41 = v40;
  if ([v41 isEqualToString:@"ORCHSIRIASRMODE_UNKNOWN"])
  {
    HIDWORD(v106) = 0;
  }

  else
  {
    if ([v41 isEqualToString:@"ORCHSIRIASRMODE_SERVER"])
    {
      v88 = 1;
    }

    else if ([v41 isEqualToString:@"ORCHSIRIASRMODE_DEVICE"])
    {
      v88 = 2;
    }

    else
    {
      v88 = 0;
    }

    HIDWORD(v106) = v88;
  }

  LODWORD(v106) = 0;
LABEL_24:
  strcpy(v113, "nl_location");
  HIDWORD(v113[1]) = -352321536;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v42 = sub_258E2EA2C(v114), (v43 & 1) == 0))
  {
    sub_258E0F590(v114);
    goto LABEL_30;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v42, v115);
  sub_258E0F590(v114);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v105 = 1;
    goto LABEL_31;
  }

  v44 = sub_258F0A4E0();

  v45 = v44;
  if ([v45 isEqualToString:@"ORCHSIRINLMODE_UNKNOWN"])
  {
    HIDWORD(v105) = 0;
  }

  else
  {
    if ([v45 isEqualToString:@"ORCHSIRINLMODE_NLV3_SERVER"])
    {
      v89 = 1;
    }

    else if ([v45 isEqualToString:@"ORCHSIRINLMODE_NLX_DEVICE"])
    {
      v89 = 2;
    }

    else
    {
      v89 = 0;
    }

    HIDWORD(v105) = v89;
  }

  LODWORD(v105) = 0;
LABEL_31:
  v104 = sub_258E3A388(a1);
  strcpy(v113, "program_code");
  BYTE5(v113[1]) = 0;
  HIWORD(v113[1]) = -5120;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v46 = sub_258E2EA2C(v114), (v47 & 1) == 0))
  {
    sub_258E0F590(v114);
    goto LABEL_37;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v46, v115);
  sub_258E0F590(v114);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_37:
    v103 = 1;
    goto LABEL_38;
  }

  v48 = sub_258F0A4E0();

  v49 = v48;
  if ([v49 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
  {
    HIDWORD(v103) = 0;
  }

  else
  {
    if ([v49 isEqualToString:@"PROGRAMCODE_IOS"])
    {
      v90 = 1;
    }

    else if ([v49 isEqualToString:@"PROGRAMCODE_MACOS"])
    {
      v90 = 2;
    }

    else if ([v49 isEqualToString:@"PROGRAMCODE_TVOS"])
    {
      v90 = 3;
    }

    else if ([v49 isEqualToString:@"PROGRAMCODE_WATCHOS"])
    {
      v90 = 4;
    }

    else if ([v49 isEqualToString:@"PROGRAMCODE_VISIONOS"])
    {
      v90 = 5;
    }

    else
    {
      v90 = 0;
    }

    HIDWORD(v103) = v90;
  }

  LODWORD(v103) = 0;
LABEL_38:
  v50 = sub_258F09A70();
  v51 = *(v50 - 8);
  (*(v51 + 56))(v111, 1, 1, v50);
  strcpy(v113, "codepath_id");
  HIDWORD(v113[1]) = -352321536;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v52 = sub_258E2EA2C(v114), (v53 & 1) == 0))
  {
    sub_258E0F590(v114);
    goto LABEL_45;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v52, v115);
  sub_258E0F590(v114);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_45:
    (*(a3 + 40))(v112, a3);
    v65 = sub_258F0A350();
    v66 = sub_258F0A820();
    v67 = os_log_type_enabled(v65, v66);
    v60 = v110;
    if (v67)
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_258DD8000, v65, v66, "nil codePathId", v68, 2u);
      MEMORY[0x259C9EF40](v68, -1, -1);
    }

    (*(v60 + 8))(v17, v7);
    goto LABEL_48;
  }

  v54 = v113[1];
  v99 = v113[0];
  sub_258F09A30();
  v55 = v111;
  sub_258E3A4D8(v111);
  sub_258E3A468(v28, v55);
  sub_258E3A540(v55, v24);
  if ((*(v51 + 48))(v24, 1, v50) == 1)
  {
    sub_258E3A4D8(v24);
    v56 = v101;
    (*(a3 + 40))(v112, a3);

    v57 = sub_258F0A350();
    v58 = sub_258F0A820();

    v98 = v57;
    v59 = os_log_type_enabled(v57, v58);
    v60 = v110;
    if (v59)
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v114[0] = v62;
      *v61 = 136315138;
      v63 = sub_258DE3018(v99, v54, v114);

      *(v61 + 4) = v63;
      v64 = v98;
      _os_log_impl(&dword_258DD8000, v98, v58, "Invalid codepath_id %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x259C9EF40](v62, -1, -1);
      MEMORY[0x259C9EF40](v61, -1, -1);

      (*(v60 + 8))(v101, v7);
    }

    else
    {

      (*(v60 + 8))(v56, v7);
    }
  }

  else
  {

    sub_258E3A4D8(v24);
    v60 = v110;
  }

LABEL_48:
  v69 = [objc_opt_self() sharedPreferences];
  v70 = [v69 longLivedIdentifierUploadingEnabled];

  if (!v70)
  {
    goto LABEL_55;
  }

  strcpy(v113, "turn_ids");
  BYTE1(v113[1]) = 0;
  WORD1(v113[1]) = 0;
  HIDWORD(v113[1]) = -402653184;
  sub_258F0AA80();
  if (!*(a1 + 16) || (v71 = sub_258E2EA2C(v114), (v72 & 1) == 0))
  {
    sub_258E0F590(v114);
    goto LABEL_55;
  }

  sub_258DE4090(*(a1 + 56) + 32 * v71, v115);
  sub_258E0F590(v114);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_55:
    v76 = v102;
    (*(a3 + 40))(v112, a3);
    v77 = sub_258F0A350();
    v78 = sub_258F0A800();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_258DD8000, v77, v78, "No turnIds found.", v79, 2u);
      MEMORY[0x259C9EF40](v79, -1, -1);
    }

    (*(v60 + 8))(v76, v7);
    goto LABEL_58;
  }

  v74 = v113[0];
  v73 = v113[1];

  v75 = _s16MetricsFramework15ExtensionsUtilsC13decodeTurnIdsySay10Foundation4UUIDVGSgSSSgFZ_0(v74, v73);

  if (!v75)
  {
    v91 = v100;
    (*(a3 + 40))(v112, a3);

    v92 = sub_258F0A350();
    v93 = sub_258F0A820();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v114[0] = v95;
      *v94 = 136315138;
      v96 = sub_258DE3018(v74, v73, v114);

      *(v94 + 4) = v96;
      _os_log_impl(&dword_258DD8000, v92, v93, "Invalid turn_ids %s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      MEMORY[0x259C9EF40](v95, -1, -1);
      MEMORY[0x259C9EF40](v94, -1, -1);
    }

    else
    {
    }

    (*(v110 + 8))(v91, v7);
LABEL_58:
    v75 = 0;
    goto LABEL_59;
  }

LABEL_59:
  v80 = v109;
  *a4 = v108;
  *(a4 + 4) = v80;
  v81 = v107;
  *(a4 + 8) = HIDWORD(v107);
  *(a4 + 12) = v81;
  v82 = v106;
  *(a4 + 16) = HIDWORD(v106);
  *(a4 + 20) = v82;
  v83 = v105;
  *(a4 + 24) = HIDWORD(v105);
  *(a4 + 28) = v83;
  *(a4 + 32) = v104;
  v84 = v103;
  *(a4 + 40) = HIDWORD(v103);
  *(a4 + 44) = v84;
  v85 = type metadata accessor for CommonDigestElements(0);
  result = sub_258E3A468(v111, a4 + *(v85 + 40));
  *(a4 + *(v85 + 44)) = v75;
  return result;
}

id sub_258E3A388(uint64_t a1)
{
  sub_258F0AA80();
  if (*(a1 + 16) && (v2 = sub_258E2EA2C(v6), (v3 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v2, v7);
    sub_258E0F590(v6);
    if (swift_dynamicCast())
    {
      v4 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(0xD000000000000011, 0x8000000258F18A30);

      return v4;
    }
  }

  else
  {
    sub_258E0F590(v6);
  }

  return 0;
}

uint64_t sub_258E3A468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E3A4D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258E3A540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E3A5B0(uint64_t a1, uint64_t a2)
{
  v5 = sub_258F0A370();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(v17, a1, a2);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = sub_258F09BD0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    (*(*(a2 + 8) + 40))(a1);
    v11 = sub_258F0A350();
    v12 = sub_258F0A800();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_258DD8000, v11, v12, "No bookmark found for the extension", v13, 2u);
      MEMORY[0x259C9EF40](v13, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    sub_258DE403C();
    swift_allocError();
    *v14 = 8;
    swift_willThrow();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  return v10;
}

id sub_258E3A7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v108 = a6;
  v107 = a5;
  v98 = a4;
  v97 = a3;
  v8 = sub_258F0A370();
  v9 = *(v8 - 8);
  v105 = v8;
  v106 = v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v103 = v93 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v96 = v93 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v95 = v93 - v21;
  v22 = sub_258F09B00();
  v99 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v23);
  v25 = v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_258F09A20();
  v100 = *(v101 - 8);
  v27 = MEMORY[0x28223BE20](v101, v26);
  v102 = v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v104 = v93 - v30;
  v31 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
  if (qword_27F988680 != -1)
  {
    swift_once();
  }

  v32 = qword_280CC6068;
  v109 = 0x61645F746E657665;
  v110 = 0xEA00000000006574;
  sub_258F0AA80();
  if (*(a1 + 16) && (v33 = sub_258E2EA2C(v111), (v34 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v33, v112);
    sub_258E0F590(v111);
    if (swift_dynamicCast())
    {
      v93[1] = a2;
      v94 = v31;
      v35 = v110;
      v93[0] = v109;
      v36 = sub_258F0A4E0();
      v37 = [v32 dateFromString_];

      if (v37)
      {
        v38 = v35;
        sub_258F09A00();

        v39 = v108;
        v40 = v107;
        (*(v108 + 32))(v107, v108);
        v41 = v102;
        sub_258F09930();
        v42 = v25;
        v43 = v40;
        (*(v99 + 8))(v42, v22);
        v44 = sub_258F099F0();
        v31 = v94;
        if ((v44 & 1) != 0 && (v45 = (*(v39 + 48))(v40, v39), v46 = sub_258F0A4E0(), v47 = [v45 BOOLForKey_], v45, v46, (v47 & 1) == 0))
        {
          v80 = v95;
          (*(v39 + 40))(v43, v39);

          v81 = v98;

          v82 = sub_258F0A350();
          v83 = sub_258F0A810();

          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v111[0] = v85;
            *v84 = 136315394;
            v86 = v41;
            v87 = sub_258DE3018(v93[0], v38, v111);

            *(v84 + 4) = v87;
            *(v84 + 12) = 2080;
            *(v84 + 14) = sub_258DE3018(v97, v81, v111);
            _os_log_impl(&dword_258DD8000, v82, v83, "setting should skip to true for eventDate: %s and key %s", v84, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x259C9EF40](v85, -1, -1);
            MEMORY[0x259C9EF40](v84, -1, -1);

            (*(v106 + 8))(v80, v105);
            v88 = *(v100 + 8);
            v89 = v86;
LABEL_42:
            v92 = v101;
            v88(v89, v101);
            v88(v104, v92);
            return v31;
          }

          (*(v106 + 8))(v80, v105);
        }

        else
        {
          sub_258F099E0();
          v49 = v48;
          if (v48 > -1.0 && v48 < 1.84467441e19 && v48 == trunc(v48))
          {

            [v31 setStartTimestampInSecondsSince1970_];
            if (v31)
            {
              v112[0] = 0xD000000000000018;
              v112[1] = 0x8000000258F1A780;
              v50 = v31;
              sub_258F0AA80();
              if (*(a1 + 16) && (v51 = sub_258E2EA2C(v111), (v52 & 1) != 0))
              {
                sub_258DE4090(*(a1 + 56) + 32 * v51, v112);
                sub_258E0F590(v111);
                if (swift_dynamicCast())
                {
                  v53 = v109;
                }

                else
                {
                  v53 = 86400;
                }
              }

              else
              {
                v53 = 86400;
                sub_258E0F590(v111);
              }

              [v50 setNumberOfSeconds_];
            }

            v90 = *(v100 + 8);
            v91 = v101;
            v90(v41, v101);
            v90(v104, v91);
            return v31;
          }

          v70 = v96;
          (*(v39 + 40))(v43, v39);

          swift_unknownObjectRetain();
          v71 = sub_258F0A350();
          v72 = sub_258F0A820();

          swift_unknownObjectRelease();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v111[0] = v74;
            *v73 = 136315650;
            v112[0] = swift_getObjectType();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9888C0, &unk_258F0FA30);
            v75 = sub_258F0A550();
            v77 = sub_258DE3018(v75, v76, v111);

            *(v73 + 4) = v77;
            v41 = v102;
            *(v73 + 12) = 2048;
            *(v73 + 14) = v49;
            *(v73 + 22) = 2080;
            v78 = sub_258DE3018(v93[0], v38, v111);

            *(v73 + 24) = v78;
            _os_log_impl(&dword_258DD8000, v71, v72, "#%s: startTimestamp %f of eventDate %s cannot be cast to UInt64.", v73, 0x20u);
            swift_arrayDestroy();
            v79 = v74;
            v39 = v108;
            MEMORY[0x259C9EF40](v79, -1, -1);
            MEMORY[0x259C9EF40](v73, -1, -1);
          }

          else
          {
          }

          (*(v106 + 8))(v70, v105);
          sub_258E38C64(1, 0xD00000000000001CLL, 0x8000000258F1A760, v43, v39);
        }

        v88 = *(v100 + 8);
        v89 = v41;
        goto LABEL_42;
      }

      v31 = v94;
    }
  }

  else
  {
    sub_258E0F590(v111);
  }

  v109 = 0x61645F746E657665;
  v110 = 0xEA00000000006574;
  sub_258F0AA80();
  v54 = v107;
  if (*(a1 + 16) && (v55 = sub_258E2EA2C(v111), (v56 & 1) != 0))
  {
    sub_258DE4090(*(a1 + 56) + 32 * v55, v112);
    sub_258E0F590(v111);
    if (swift_dynamicCast())
    {
      v58 = v109;
      v57 = v110;
      v59 = v54;
      v60 = v103;
      (*(v108 + 40))(v59);

      v61 = sub_258F0A350();
      v62 = sub_258F0A820();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v111[0] = v64;
        *v63 = 136315138;
        v65 = sub_258DE3018(v58, v57, v111);

        *(v63 + 4) = v65;
        _os_log_impl(&dword_258DD8000, v61, v62, "event_date is %s which dateformatter cannot parse", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        MEMORY[0x259C9EF40](v64, -1, -1);
        MEMORY[0x259C9EF40](v63, -1, -1);
      }

      else
      {
      }

      (*(v106 + 8))(v60, v105);
      return v31;
    }
  }

  else
  {
    sub_258E0F590(v111);
  }

  (*(v108 + 40))(v54);
  v66 = sub_258F0A350();
  v67 = sub_258F0A820();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_258DD8000, v66, v67, "event_date is not a string", v68, 2u);
    MEMORY[0x259C9EF40](v68, -1, -1);
  }

  (*(v106 + 8))(v13, v105);
  return v31;
}

uint64_t sub_258E3B420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_258F09F40();
  v10 = *(v9 - 8);
  result = MEMORY[0x28223BE20](v9, v11);
  v14 = &v15 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >= 1)
  {
    (*(a6 + 8))(a5, a6);
    (*(v10 + 104))(v14, *MEMORY[0x277D5D9B8], v9);
    sub_258F09F10();

    return (*(v10 + 8))(v14, v9);
  }

  return result;
}

unint64_t SiriMetricsCalculatorType.description.getter()
{
  result = 0x72696F504944444FLL;
  switch(*v0)
  {
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      return result;
    case 4:
      result = 0x747365676944474FLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
    case 0xE:
    case 0xF:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x73416F54746F6F42;
      break;
    case 0xB:
      result = 0x6C6C6F726E455456;
      break;
    case 0xC:
      result = 0xD000000000000022;
      break;
    case 0xD:
      result = 0xD000000000000011;
      break;
    case 0x10:
      result = 0xD000000000000012;
      break;
    case 0x11:
      result = 0x7465737341524941;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

MetricsFramework::SiriMetricsCalculatorType_optional __swiftcall SiriMetricsCalculatorType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 18;
  if (rawValue < 0x12)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_258E3B780()
{
  result = qword_27F9896F0;
  if (!qword_27F9896F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9896F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriMetricsCalculatorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriMetricsCalculatorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t DeviceBatchDataBuilderImpl.deinit()
{
  sub_258E3A4D8(v0 + OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_odbatchId);
  sub_258E3A4D8(v0 + OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_originalClockId);
  return v0;
}

uint64_t DeviceBatchDataBuilderImpl.__deallocating_deinit()
{
  sub_258E3A4D8(v0 + OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_odbatchId);
  sub_258E3A4D8(v0 + OBJC_IVAR____TtC16MetricsFramework26DeviceBatchDataBuilderImpl_originalClockId);

  return swift_deallocClassInstance();
}

void sub_258E3BB8C(uint64_t a1)
{
  sub_258E3BC10(319);
  if (v1 <= 0x3F)
  {
    sub_258E3BC68();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_258E3BC10(uint64_t a1)
{
  if (!qword_27F9896C8)
  {
    sub_258F09A70();
    v1 = sub_258F0A920();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9896C8);
    }
  }
}

void sub_258E3BC68()
{
  if (!qword_27F989718)
  {
    v0 = sub_258F0A920();
    if (!v1)
    {
      atomic_store(v0, &qword_27F989718);
    }
  }
}

void sub_258E3BCF0(uint64_t a1)
{
  sub_258E3BC10(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_258E3BDA4@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_eventMetadata;
  swift_beginAccess();
  sub_258DE20C0(v1 + v3, a1, &qword_27F9894E0, &unk_258F106A0);
  v4 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digestType);
  v5 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digestType + 4);
  v7 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_experimentId);
  v6 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_experimentId + 8);
  v8 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_treatmentIdUUID;
  swift_beginAccess();
  v9 = type metadata accessor for DeviceExperimentMetrics(0);
  sub_258DE20C0(v1 + v8, a1 + v9[7], &qword_27F988730, &unk_258F0F8E0);
  v10 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deploymentId);
  v11 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deploymentId + 8);
  v12 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deviceType);
  v13 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deviceType + 8);
  v14 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_programCode);
  v15 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digests);
  v16 = *(v1 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_programCode + 4);
  v17 = a1 + v9[5];
  *v17 = v4;
  *(v17 + 4) = v5;
  v18 = (a1 + v9[6]);
  *v18 = v7;
  v18[1] = v6;
  v19 = a1 + v9[8];
  *v19 = v10;
  *(v19 + 8) = v11;
  v20 = (a1 + v9[9]);
  *v20 = v12;
  v20[1] = v13;
  v21 = a1 + v9[10];
  *v21 = v14;
  *(v21 + 4) = v16;
  *(a1 + v9[11]) = v15;

  return result;
}

uint64_t DeviceExperimentMetricsBuilderImpl.deinit()
{
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_eventMetadata, &qword_27F9894E0, &unk_258F106A0);

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_treatmentIdUUID, &qword_27F988730, &unk_258F0F8E0);

  return v0;
}

uint64_t DeviceExperimentMetricsBuilderImpl.__deallocating_deinit()
{
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_eventMetadata, &qword_27F9894E0, &unk_258F106A0);

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_treatmentIdUUID, &qword_27F988730, &unk_258F0F8E0);

  return swift_deallocClassInstance();
}

uint64_t sub_258E3C08C()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_eventMetadata;
  v2 = type metadata accessor for EventMetadata(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digestType;
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = (v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_experimentId);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_treatmentIdUUID;
  v6 = sub_258F09A70();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deploymentId;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deviceType);
  *v8 = 0;
  v8[1] = 0;
  v9 = v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_programCode;
  *v9 = 0;
  *(v9 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digests) = 0;
  return v0;
}

uint64_t sub_258E3C1B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_258F0AB40();
    v4 = a1 + 32;
    do
    {
      v4 += 4;
      sub_258F0A7B0();
      sub_258F0AB20();
      sub_258F0AB50();
      sub_258F0AB60();
      sub_258F0AB30();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

id sub_258E3C260(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59248]) init];
  if (!v2)
  {
    return v2;
  }

  if (*(a1 + 24))
  {
    v3 = sub_258F0A4E0();
    [v2 setSystemBuild_];
  }

  if (*(a1 + 36))
  {
    if (*(a1 + 44))
    {
      goto LABEL_6;
    }
  }

  else
  {
    [v2 setDataSharingOptInStatus_];
    if (*(a1 + 44))
    {
LABEL_6:
      if (!*(a1 + 56))
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  [v2 setViewInterface_];
  if (*(a1 + 56))
  {
LABEL_7:
    v4 = sub_258F0A4E0();
    [v2 setAudioInterfaceVendorId_];
  }

LABEL_8:
  if (*(a1 + 72))
  {
    v5 = sub_258F0A4E0();
    [v2 setAudioInterfaceProductId_];
  }

  if (*(a1 + 84))
  {
    if (*(a1 + 92))
    {
      goto LABEL_12;
    }

LABEL_31:
    [v2 setNlLocation_];
    if (!*(a1 + 96))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  [v2 setAsrLocation_];
  if ((*(a1 + 92) & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_12:
  if (*(a1 + 96))
  {
LABEL_13:
    [v2 setSiriInputLocale_];
  }

LABEL_14:
  if (*(a1 + 120))
  {
    v6 = sub_258F0A4E0();
    [v2 setSubDomain_];
  }

  if ((*(a1 + 132) & 1) == 0)
  {
    [v2 setResponseCategory_];
  }

  v7 = type metadata accessor for ExperimentDigest(0);
  v8 = *(a1 + v7[20]);
  if (v8 != 2)
  {
    [v2 setIsIntelligenceEngineRequest_];
  }

  v9 = *(a1 + v7[21]);
  if (v9)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = (v9 + 32);
      do
      {
        v12 = *v11++;
        [v2 addRouting_];
        --v10;
      }

      while (v10);
    }
  }

  v13 = (a1 + v7[22]);
  if ((v13[1] & 1) == 0)
  {
    [v2 setInvocationSource_];
  }

  return v2;
}

id sub_258E3C4E0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D593F0]) init];
  if (v2)
  {
    v3 = type metadata accessor for ExperimentDigest(0);
    v4 = (a1 + v3[25]);
    if ((v4[1] & 1) == 0)
    {
      [v2 setSiriTasksStarted_];
    }

    v5 = (a1 + v3[26]);
    if ((v5[1] & 1) == 0)
    {
      [v2 setSiriTasksCompleted_];
    }

    v6 = (a1 + v3[27]);
    if ((v6[1] & 1) == 0)
    {
      [v2 setFlowTasksStarted_];
    }

    v7 = (a1 + v3[28]);
    if ((v7[1] & 1) == 0)
    {
      [v2 setFlowTasksCompleted_];
    }
  }

  return v2;
}

id sub_258E3C5C8(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D593A8]) init];
  if (v2)
  {
    v3 = type metadata accessor for ExperimentDigest(0);
    v4 = (a1 + v3[29]);
    if ((v4[1] & 1) == 0)
    {
      [v2 setReliabilityRequestCount_];
    }

    v5 = (a1 + v3[30]);
    if ((v5[1] & 1) == 0)
    {
      [v2 setReliabilityTurnCount_];
    }

    v6 = (a1 + v3[31]);
    if ((v6[1] & 1) == 0)
    {
      [v2 setClientErrorCount_];
    }

    v7 = (a1 + v3[32]);
    if ((v7[1] & 1) == 0)
    {
      [v2 setUndesiredResponseCount_];
    }

    v8 = (a1 + v3[33]);
    if ((v8[1] & 1) == 0)
    {
      [v2 setFatalResponseCount_];
    }

    v9 = (a1 + v3[34]);
    if ((v9[1] & 1) == 0)
    {
      [v2 setFailureResponseCount_];
    }

    v10 = (a1 + v3[35]);
    if ((v10[1] & 1) == 0)
    {
      [v2 setSiriUnavailableResponseCount_];
    }
  }

  return v2;
}

id sub_258E3C71C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59250]) init];
  if (v2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D59400]) init];
    if (v3)
    {
      v4 = type metadata accessor for ExperimentDigest(0);
      v5 = (a1 + *(v4 + 92));
      if ((v5[1] & 1) == 0)
      {
        [v3 setTotalTurnCount_];
      }

      v6 = (a1 + *(v4 + 96));
      if ((v6[1] & 1) == 0)
      {
        [v3 setValidTurnCount_];
      }
    }

    [v2 setTurnCounts_];

    v7 = sub_258E3C4E0(a1);
    [v2 setTaskCounts_];

    v8 = sub_258E3C5C8(a1);
    [v2 setReliabilityCounts_];

    v9 = [objc_allocWithZone(MEMORY[0x277D593D0]) init];
    if (v9)
    {
      v10 = (a1 + *(type metadata accessor for ExperimentDigest(0) + 144));
      if ((v10[1] & 1) == 0)
      {
        [v9 setUsdxSessionCount_];
      }
    }

    [v2 setSessionCounts_];
  }

  return v2;
}

id _s16MetricsFramework16ExperimentTuplesV12toBiomeEvent15experimentTupleSo020BMSiriOnDeviceDigestcacmcD0CACSg_tFZ_0(uint64_t *a1)
{
  v2 = *a1;
  v4 = a1[1];
  v3 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_13;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989818, &qword_258F10850);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989820, &qword_258F10858);
    swift_dynamicCast();
    if (!v4)
    {
LABEL_4:
      if (!v3)
      {
        goto LABEL_5;
      }

LABEL_10:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989818, &qword_258F10850);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989820, &qword_258F10858);
      swift_dynamicCast();
      if (!v6)
      {
LABEL_6:
        if (!v5)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if (!v4)
  {
    goto LABEL_4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989818, &qword_258F10850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989820, &qword_258F10858);
  swift_dynamicCast();
  if (v3)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_11:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989818, &qword_258F10850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989820, &qword_258F10858);
  swift_dynamicCast();
  if (v5)
  {
LABEL_12:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989818, &qword_258F10850);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989820, &qword_258F10858);
    swift_dynamicCast();
  }

LABEL_13:
  v7 = objc_allocWithZone(MEMORY[0x277CF14E8]);
  sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
  v8 = sub_258F0A6A0();

  v9 = sub_258F0A6A0();

  v10 = sub_258F0A6A0();

  v11 = sub_258F0A6A0();

  v12 = sub_258F0A6A0();

  v13 = [v7 initWithLaunchTimeInMs:v8 endpointDelayInMs:v9 siriResponseTimeInMs:v10 timeToUufrInMs:v11 timeToFirstWordInMs:v12];

  return v13;
}

id _s16MetricsFramework16ExperimentDigestV12toBiomeEvent010experimentD0So014BMSiriOnDevicedcacD0CAC_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v56 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989810, qword_258F114C0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v56 - v8;
  v60 = *(a1 + 16);
  LOBYTE(v8) = *(a1 + 36);
  v67 = *(a1 + 24);
  if (v8)
  {
    v76 = 0;
    if ((*(a1 + 44) & 1) == 0)
    {
LABEL_3:
      v75 = sub_258F0AE20();
      goto LABEL_6;
    }
  }

  else
  {
    v76 = sub_258F0AE20();
    if ((*(a1 + 44) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v75 = 0;
LABEL_6:
  v59 = *(a1 + 48);
  v10 = *(a1 + 56);
  v61 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 84);
  v71 = v10;
  v70 = v11;
  if (v12)
  {
    v74 = 0;
    if ((*(a1 + 92) & 1) == 0)
    {
LABEL_8:
      v69 = sub_258F0AE20();
      goto LABEL_11;
    }
  }

  else
  {
    v74 = sub_258F0AE20();
    if ((*(a1 + 92) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v69 = 0;
LABEL_11:
  sub_258E3E4F4(a1, v9);
  v13 = type metadata accessor for ExperimentDigest(0);
  (*(*(v13 - 1) + 56))(v9, 0, 1, v13);
  v86 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE22toExperimentBiomeEvent16experimentDigestSo014BMSiriOnDevicejfcB0CAC0fJ0VSg_tFZ_0(v9);
  sub_258DE2184(v9, &qword_27F989810, qword_258F114C0);
  v14 = 0;
  v15 = *(a1 + 120);
  v58 = *(a1 + 112);
  v68 = v15;
  if ((*(a1 + 132) & 1) == 0)
  {
    v14 = sub_258F0AE20();
  }

  v16 = *(a1 + 140);
  v73 = v14;
  if (v16)
  {
    v72 = 0;
  }

  else
  {
    v72 = sub_258F0AE20();
  }

  if (*(a1 + 141) == 2)
  {
    v87 = 0;
  }

  else
  {
    v87 = sub_258F0A730();
  }

  if (*(a1 + 142) == 2)
  {
    v83 = 0;
  }

  else
  {
    v83 = sub_258F0A730();
  }

  sub_258DE20C0(a1 + v13[19], v5, &qword_27F988730, &unk_258F0F8E0);
  v17 = sub_258F09A70();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v5, 1, v17) == 1)
  {
    sub_258DE2184(v5, &qword_27F988730, &unk_258F0F8E0);
    v57 = 0;
    v19 = 0;
  }

  else
  {
    v57 = sub_258F09A40();
    v19 = v20;
    (*(v18 + 8))(v5, v17);
  }

  if (*(a1 + v13[23] + 4))
  {
    v80 = 0;
  }

  else
  {
    v80 = sub_258F0AEB0();
  }

  if (*(a1 + v13[24] + 4))
  {
    v78 = 0;
  }

  else
  {
    v78 = sub_258F0AEB0();
  }

  if (*(a1 + v13[25] + 4))
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_258F0AEB0();
  }

  if (*(a1 + v13[26] + 4))
  {
    v85 = 0;
  }

  else
  {
    v85 = sub_258F0AEB0();
  }

  if (*(a1 + v13[27] + 4))
  {
    v84 = 0;
  }

  else
  {
    v84 = sub_258F0AEB0();
  }

  if (*(a1 + v13[28] + 4))
  {
    v82 = 0;
  }

  else
  {
    v82 = sub_258F0AEB0();
  }

  if (*(a1 + v13[29] + 4))
  {
    v81 = 0;
  }

  else
  {
    v81 = sub_258F0AEB0();
  }

  if (*(a1 + v13[30] + 4))
  {
    v79 = 0;
  }

  else
  {
    v79 = sub_258F0AEB0();
  }

  if (*(a1 + v13[31] + 4))
  {
    v77 = 0;
  }

  else
  {
    v77 = sub_258F0AEB0();
  }

  if (*(a1 + v13[32] + 4))
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_258F0AEB0();
  }

  if (*(a1 + v13[33] + 4))
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_258F0AEB0();
  }

  if (*(a1 + v13[34] + 4))
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_258F0AEB0();
  }

  if (*(a1 + v13[35] + 4))
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_258F0AEB0();
  }

  if (*(a1 + v13[36] + 4))
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_258F0AEB0();
  }

  v27 = (a1 + v13[37]);
  v28 = v27[1];
  v29 = v27[2];
  v30 = v27[3];
  v31 = v27[4];
  v88 = *v27;
  v89 = v28;
  v90 = v29;
  v91 = v30;
  v92 = v31;
  sub_258E3E558(v88, v28, v29, v30, v31);
  v32 = _s16MetricsFramework16ExperimentTuplesV12toBiomeEvent15experimentTupleSo020BMSiriOnDeviceDigestcacmcD0CACSg_tFZ_0(&v88);
  sub_258E3E5CC(v88, v89, v90, v91, v92);
  if (v67)
  {
    v60 = sub_258F0A4E0();
  }

  else
  {
    v60 = 0;
  }

  if (v71)
  {
    v67 = sub_258F0A4E0();
  }

  else
  {
    v67 = 0;
  }

  if (v70)
  {
    v61 = sub_258F0A4E0();
  }

  else
  {
    v61 = 0;
  }

  if (!v68)
  {
    v33 = 0;
    if (v19)
    {
      goto LABEL_78;
    }

LABEL_80:
    v34 = 0;
    goto LABEL_81;
  }

  v33 = sub_258F0A4E0();
  if (!v19)
  {
    goto LABEL_80;
  }

LABEL_78:
  v34 = sub_258F0A4E0();

LABEL_81:
  v59 = v34;
  v35 = objc_allocWithZone(MEMORY[0x277CF14E0]);
  v55 = v32;
  v66 = v26;
  v54 = v26;
  v65 = v25;
  v53 = v25;
  v64 = v24;
  v52 = v24;
  v63 = v23;
  v51 = v23;
  v62 = v22;
  v50 = v22;
  v49 = v21;
  v48 = v34;
  v68 = v21;
  v36 = v72;
  v37 = v73;
  v47 = v33;
  v38 = v33;
  v71 = v32;
  v39 = v69;
  v40 = v60;
  v41 = v75;
  v42 = v76;
  v43 = v67;
  v44 = v61;
  v45 = v74;
  v70 = [v35 initWithSystemBuild:v60 dataSharingOptInStatus:v76 viewInterface:v75 audioInterfaceVendorId:v67 audioInterfaceProductId:v61 asrLocation:v74 nlLocation:v69 siriInputLocale:v86 subDomain:v47 responseCategory:v73 experimentAllocationStatus:v72 isTriggered:v87 isFirstTriggerOrAfterFirstTrigger:v83 codePathIdUUID:v48 totalTurnCount:v80 validTurnCount:v78 siriTasksStarted:v49 siriTasksCompleted:v85 flowTasksStarted:v84 flowTasksCompleted:v82 reliabilityRequestCount:v81 reliabilityTurnCount:v79 clientErrorCount:v77 undesiredResponseCount:v50 fatalResponseCount:v51 failureResponseCount:v52 siriUnavailableResponseCount:v53 usdxSessionCount:v54 tuples:v55];

  return v70;
}

uint64_t sub_258E3D554(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_258E3D5B0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

void sub_258E3D664(uint64_t a1)
{
  sub_258E0F074(319, &qword_27F988D40, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_258E3D9B8(319, &qword_27F989698, type metadata accessor for SISchemaDataSharingOptInState);
    if (v2 <= 0x3F)
    {
      sub_258E3D9B8(319, &qword_27F989690, type metadata accessor for SISchemaAssistantViewMode);
      if (v3 <= 0x3F)
      {
        sub_258E3D9B8(319, &qword_27F9896A0, type metadata accessor for ORCHSchemaORCHSiriAsrMode);
        if (v4 <= 0x3F)
        {
          sub_258E3D9B8(319, &qword_27F9896A8, type metadata accessor for ORCHSchemaORCHSiriNlMode);
          if (v5 <= 0x3F)
          {
            sub_258E3DA0C(319);
            if (v6 <= 0x3F)
            {
              sub_258E3D9B8(319, &qword_27F989778, type metadata accessor for SISchemaResponseCategory);
              if (v7 <= 0x3F)
              {
                sub_258E3D9B8(319, &qword_27F989780, type metadata accessor for EXPSchemaEXPTreatmentAllocationStatus);
                if (v8 <= 0x3F)
                {
                  sub_258E0F074(319, &qword_27F989788, MEMORY[0x277D839B0]);
                  if (v9 <= 0x3F)
                  {
                    sub_258E3D9B8(319, &qword_27F9896C8, MEMORY[0x277CC95F0]);
                    if (v10 <= 0x3F)
                    {
                      sub_258E3DC64(319, &qword_27F989790, &qword_27F989798, &unk_258F113F0);
                      if (v11 <= 0x3F)
                      {
                        sub_258E3D9B8(319, &qword_27F9897A0, type metadata accessor for SISchemaInvocationSource);
                        if (v12 <= 0x3F)
                        {
                          sub_258E0F074(319, &qword_27F989718, MEMORY[0x277D84CC0]);
                          if (v13 <= 0x3F)
                          {
                            sub_258E0F074(319, &qword_27F9897A8, &type metadata for ExperimentTuples);
                            if (v14 <= 0x3F)
                            {
                              sub_258E3DC64(319, &qword_27F9896D0, &qword_27F9896D8, &unk_258F10780);
                              if (v15 <= 0x3F)
                              {
                                swift_cvw_initStructMetadataWithLayoutString();
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_258E3D9B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258F0A920();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258E3DA0C(uint64_t a1)
{
  if (!qword_27F9896B0)
  {
    sub_258DEB8C8(255, &qword_27F9896B8, 0x277D5A900);
    v1 = sub_258F0A920();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9896B0);
    }
  }
}

void sub_258E3DABC(uint64_t a1)
{
  sub_258E3D9B8(319, &qword_27F9897C0, type metadata accessor for EventMetadata);
  if (v1 <= 0x3F)
  {
    sub_258E3D9B8(319, &qword_27F9897C8, type metadata accessor for ODDSiriSchemaODDExperimentDigestType);
    if (v2 <= 0x3F)
    {
      sub_258E0F074(319, &qword_27F988D40, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_258E3D9B8(319, &qword_27F9896C8, MEMORY[0x277CC95F0]);
        if (v4 <= 0x3F)
        {
          sub_258E0F074(319, &qword_27F9897D0, MEMORY[0x277D84A28]);
          if (v5 <= 0x3F)
          {
            sub_258E3D9B8(319, &qword_27F9896C0, type metadata accessor for SISchemaProgramCode);
            if (v6 <= 0x3F)
            {
              sub_258E3DC64(319, &qword_27F9897D8, &qword_27F9897E0, &qword_258F107A8);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_258E3DC64(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_258F0A920();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258E3DCE0(uint64_t a1)
{
  sub_258E3D9B8(319, &qword_27F9897C0, type metadata accessor for EventMetadata);
  if (v1 <= 0x3F)
  {
    sub_258E3D9B8(319, &qword_27F9896C8, MEMORY[0x277CC95F0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_258E3DE2C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59308]) init];
  if (!v2)
  {
    return v2;
  }

  if (*(a1 + 24))
  {
    v3 = sub_258F0A4E0();
    [v2 setSystemBuild_];
  }

  if (*(a1 + 36))
  {
    if (*(a1 + 44))
    {
      goto LABEL_6;
    }

LABEL_18:
    [v2 setViewInterface_];
    if (!*(a1 + 56))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  [v2 setDataSharingOptInStatus_];
  if ((*(a1 + 44) & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  if (*(a1 + 56))
  {
LABEL_7:
    v4 = sub_258F0A4E0();
    [v2 setAudioInterfaceVendorId_];
  }

LABEL_8:
  if (*(a1 + 72))
  {
    v5 = sub_258F0A4E0();
    [v2 setAudioInterfaceProductId_];
  }

  if ((*(a1 + 84) & 1) == 0)
  {
    [v2 setAsrLocation_];
  }

  if (*(a1 + 104))
  {
    [v2 setDictationLocale_];
  }

  v6 = (a1 + *(type metadata accessor for ExperimentDigest(0) + 88));
  if ((v6[1] & 1) == 0)
  {
    [v2 setInvocationSource_];
  }

  return v2;
}

id sub_258E3DFD0(uint64_t a1, Class *a2, uint64_t (*a3)(uint64_t), SEL *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v26 - v10;
  v12 = sub_258F09A70();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(*a2) init];
  if (v17)
  {
    v18 = a3(a1);
    [v17 *a4];
    if (*(a1 + 140))
    {
      v19 = 0;
    }

    else
    {
      v19 = *(a1 + 136);
    }

    [v17 setExperimentAllocationStatus_];
    v20 = *(a1 + 142);
    if (v20 != 2)
    {
      [v17 setIsFirstTriggerOrAfterFirstTrigger_];
    }

    v21 = type metadata accessor for ExperimentDigest(0);
    sub_258DE20C0(a1 + *(v21 + 76), v11, &qword_27F988730, &unk_258F0F8E0);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {

      sub_258DE2184(v11, &qword_27F988730, &unk_258F0F8E0);
    }

    else
    {
      (*(v13 + 32))(v16, v11, v12);
      v22 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v23 = sub_258F09A50();
      v24 = [v22 initWithNSUUID_];

      [v17 setCodePathId_];
      (*(v13 + 8))(v16, v12);
    }
  }

  return v17;
}

id sub_258E3E260(uint64_t a1, Class *a2)
{
  v3 = [objc_allocWithZone(*a2) init];
  if (v3)
  {
    v4 = (a1 + *(type metadata accessor for ExperimentDigest(0) + 148));
    v5 = *v4;
    if (*v4 >= 2)
    {

      sub_258E3C1B8(v6);

      sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
      v7 = sub_258F0A6A0();

      [v3 setLaunchTimeInMs_];

      v5 = *v4;
    }

    if (v5 != 1 && v4[1] != 0)
    {

      sub_258E3C1B8(v9);

      sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
      v10 = sub_258F0A6A0();

      [v3 setEndpointDelayInMs_];

      v5 = *v4;
    }

    if (v5 != 1 && v4[2] != 0)
    {

      sub_258E3C1B8(v12);

      sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
      v13 = sub_258F0A6A0();

      [v3 setSiriResponseTimeInMs_];

      v5 = *v4;
    }

    if (v5 != 1 && v4[3] != 0)
    {

      sub_258E3C1B8(v15);

      sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
      v16 = sub_258F0A6A0();

      [v3 setTimeToUufrInMs_];

      v5 = *v4;
    }

    if (v5 != 1 && v4[4] != 0)
    {

      sub_258E3C1B8(v18);

      sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
      v19 = sub_258F0A6A0();

      [v3 setTimeToFirstWordInMs_];
    }
  }

  return v3;
}

uint64_t sub_258E3E4F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExperimentDigest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_258E3E558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_258E3E5CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_258E3E63C(uint64_t a1)
{
  v2 = sub_258F09A70();
  v80 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ExperimentDigest(0);
  v86 = *(v6 - 1);
  MEMORY[0x28223BE20](v6, v7);
  v87 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v74 - v11;
  v13 = type metadata accessor for EventMetadata(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258DE20C0(a1, v12, &qword_27F9894E0, &unk_258F106A0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_258DE2184(v12, &qword_27F9894E0, &unk_258F106A0);
    return MEMORY[0x277D84F90];
  }

  sub_258E3F8CC(v12, v17);
  v18 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
  if (!v18)
  {
    sub_258E3F930(v17, type metadata accessor for EventMetadata);
    return MEMORY[0x277D84F90];
  }

  v19 = v18;
  v81 = v5;
  v82 = v2;
  v93 = 1;
  v76 = v17;
  v20 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
  v75 = v19;
  [v19 setEventMetadata_];

  v83 = [objc_allocWithZone(MEMORY[0x277D59320]) init];
  v92 = v83;
  sub_258E3F990(&v92, a1);
  result = type metadata accessor for DeviceExperimentMetrics(0);
  v22 = *(a1 + *(result + 44));
  v23 = v86;
  v24 = v87;
  if (v22 && (v89 = *(v22 + 16)) != 0)
  {
    v25 = 0;
    v78 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentSELFEventConverter_logger;
    v79 = v22;
    v88 = v22 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v26 = (v80 + 8);
    v84 = v6;
    v77 = v80 + 16;
    while (v25 < *(v22 + 16))
    {
      sub_258E3E4F4(v88 + *(v23 + 72) * v25, v24);
      v27 = v24[1];
      if (v27)
      {
        v28 = *v24 == 0x4F49544154434944 && v27 == 0xE90000000000004ELL;
        if (v28 || (sub_258F0AD80() & 1) != 0)
        {
          v29 = [objc_allocWithZone(MEMORY[0x277D59318]) init];
          if (v29)
          {
            v30 = v29;
            v31 = sub_258E3DFA8(v24);
            [v30 setDimensions_];

            v32 = [objc_allocWithZone(MEMORY[0x277D59310]) init];
            v33 = v30;
            if (v32)
            {
              v34 = [objc_allocWithZone(MEMORY[0x277D59400]) init];
              v35 = v34;
              if (v34)
              {
                v36 = (v24 + v6[23]);
                if ((v36[1] & 1) == 0)
                {
                  [v34 setTotalTurnCount_];
                }

                v37 = (v24 + v6[24]);
                if ((v37[1] & 1) == 0)
                {
                  [v35 setValidTurnCount_];
                }
              }

              [v32 setTurnCounts_];

              v38 = [objc_allocWithZone(MEMORY[0x277D593F0]) init];
              v39 = v38;
              if (v38)
              {
                v40 = (v24 + v6[25]);
                if ((v40[1] & 1) == 0)
                {
                  [v38 setSiriTasksStarted_];
                }

                v41 = (v24 + v6[26]);
                if ((v41[1] & 1) == 0)
                {
                  [v39 setSiriTasksCompleted_];
                }

                v42 = (v24 + v6[27]);
                if ((v42[1] & 1) == 0)
                {
                  [v39 setFlowTasksStarted_];
                }

                v43 = (v24 + v6[28]);
                if ((v43[1] & 1) == 0)
                {
                  [v39 setFlowTasksCompleted_];
                }
              }

              [v32 setTaskCounts_];

              v44 = [objc_allocWithZone(MEMORY[0x277D593A8]) init];
              v45 = v44;
              if (v44)
              {
                v46 = (v24 + v6[29]);
                if ((v46[1] & 1) == 0)
                {
                  [v44 setReliabilityRequestCount_];
                }

                v47 = (v24 + v6[30]);
                if ((v47[1] & 1) == 0)
                {
                  [v45 setReliabilityTurnCount_];
                }

                v48 = (v24 + v6[31]);
                if ((v48[1] & 1) == 0)
                {
                  [v45 setClientErrorCount_];
                }

                v49 = (v24 + v6[32]);
                if ((v49[1] & 1) == 0)
                {
                  [v45 setUndesiredResponseCount_];
                }

                v50 = (v24 + v6[33]);
                if ((v50[1] & 1) == 0)
                {
                  [v45 setFatalResponseCount_];
                }

                v51 = (v24 + v6[34]);
                if ((v51[1] & 1) == 0)
                {
                  [v45 setFailureResponseCount_];
                }

                v52 = (v24 + v6[35]);
                if ((v52[1] & 1) == 0)
                {
                  [v45 setSiriUnavailableResponseCount_];
                }
              }

              [v32 setReliabilityCounts_];
            }

            v85 = v25;
            [v30 setCounts_];

            v53 = sub_258E3E254(v24);
            [v30 setTuples_];

            v54 = [objc_opt_self() sharedPreferences];
            v55 = [v54 longLivedIdentifierUploadingEnabled];

            v57 = v81;
            v56 = v82;
            v58 = v77;
            if (v55)
            {
              v59 = *&v87[v84[38]];
              if (v59)
              {
                v60 = *(v59 + 16);
                if (v60)
                {
                  v61 = v59 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
                  v62 = *(v80 + 72);
                  v90 = *(v80 + 16);
                  v91 = v62;
                  do
                  {
                    v63 = v58;
                    v90(v57, v61, v56);
                    v64 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                    v65 = sub_258F09A50();
                    (*v26)(v57, v56);
                    v66 = [v64 initWithNSUUID_];

                    [v33 addTurnIds_];
                    v58 = v63;
                    v61 += v91;
                    --v60;
                  }

                  while (v60);
                }
              }
            }

            [v83 addDigests_];
            v67 = sub_258F0A350();
            v68 = sub_258F0A810();
            v69 = os_log_type_enabled(v67, v68);
            v25 = v85;
            if (v69)
            {
              v70 = swift_slowAlloc();
              *v70 = 0;
              _os_log_impl(&dword_258DD8000, v67, v68, "Adding Dictation Experiment Digest to ODDSiriSchemaODDSiriClientEvent", v70, 2u);
              MEMORY[0x259C9EF40](v70, -1, -1);
            }

            v6 = v84;
            v23 = v86;
            v24 = v87;
            v22 = v79;
          }
        }
      }

      ++v25;
      result = sub_258E3F930(v24, type metadata accessor for ExperimentDigest);
      if (v25 == v89)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_55:
    v71 = v75;
    v72 = v83;
    [v75 setDictationExperimentDigestsReported_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_258F0CA20;
    *(v73 + 32) = v71;
    sub_258E3F930(v76, type metadata accessor for EventMetadata);

    return v73;
  }

  return result;
}

uint64_t sub_258E3EFB0(uint64_t a1)
{
  v2 = sub_258F09A70();
  v61 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ExperimentDigest(0);
  v67 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v65 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v53 - v11;
  v13 = type metadata accessor for EventMetadata(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258DE20C0(a1, v12, &qword_27F9894E0, &unk_258F106A0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_258DE2184(v12, &qword_27F9894E0, &unk_258F106A0);
    return MEMORY[0x277D84F90];
  }

  sub_258E3F8CC(v12, v17);
  v18 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
  if (!v18)
  {
    sub_258E3F930(v17, type metadata accessor for EventMetadata);
    return MEMORY[0x277D84F90];
  }

  v55 = v17;
  v56 = v6;
  v62 = v2;
  v19 = v18;
  v72 = 1;
  v20 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
  v54 = v19;
  [v19 setEventMetadata_];

  v63 = [objc_allocWithZone(MEMORY[0x277D59260]) init];
  v71 = v63;
  sub_258E3F990(&v71, a1);
  result = type metadata accessor for DeviceExperimentMetrics(0);
  v22 = *(a1 + *(result + 44));
  v23 = v65;
  if (v22 && (v24 = *(v22 + 16)) != 0)
  {
    v25 = 0;
    v58 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentSELFEventConverter_logger;
    v59 = v24;
    v66 = v22 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v26 = (v61 + 8);
    v27 = 0x277D5A000;
    v60 = v22;
    v57 = v61 + 16;
    while (v25 < *(v22 + 16))
    {
      sub_258E3E4F4(v66 + *(v67 + 72) * v25, v23);
      v28 = v23[1];
      if (v28)
      {
        v29 = *v23 == 0x4E41545349535341 && v28 == 0xE900000000000054;
        if (v29 || (sub_258F0AD80() & 1) != 0)
        {
          v30 = [objc_allocWithZone(MEMORY[0x277D59258]) init];
          if (v30)
          {
            v64 = v25;
            v31 = v30;
            v32 = sub_258E3C4B8(v23);
            [v31 setDimensions_];

            v33 = sub_258E3C71C(v23);
            [v31 setCounts_];

            v34 = sub_258E3C8A0(v23);
            v70 = v31;
            [v31 setTuples_];

            v35 = [objc_opt_self() sharedPreferences];
            v36 = [v35 longLivedIdentifierUploadingEnabled];

            v37 = v62;
            if (v36)
            {
              v38 = *&v65[*(v56 + 152)];
              if (v38)
              {
                v39 = v27;
                v40 = *(v38 + 16);
                if (v40)
                {
                  v41 = v38 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
                  v42 = *(v61 + 72);
                  v68 = *(v61 + 16);
                  v69 = v42;
                  do
                  {
                    v68(v5, v41, v37);
                    v43 = objc_allocWithZone(*(v39 + 3192));
                    v44 = sub_258F09A50();
                    (*v26)(v5, v37);
                    v45 = [v43 initWithNSUUID_];

                    [v70 addTurnIds_];
                    v41 += v69;
                    --v40;
                  }

                  while (v40);
                }
              }
            }

            v46 = v70;
            [v63 addDigests_];
            v47 = sub_258F0A350();
            v48 = sub_258F0A810();
            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              *v49 = 0;
              _os_log_impl(&dword_258DD8000, v47, v48, "Adding Assistant Experiment Digest to ODDSiriSchemaODDSiriClientEvent", v49, 2u);
              MEMORY[0x259C9EF40](v49, -1, -1);
            }

            v25 = v64;
            v23 = v65;
            v24 = v59;
            v22 = v60;
            v27 = 0x277D5A000uLL;
          }
        }
      }

      ++v25;
      result = sub_258E3F930(v23, type metadata accessor for ExperimentDigest);
      if (v25 == v24)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    v50 = v54;
    v51 = v63;
    [v54 setAssistantExperimentDigestReported_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_258F0CA20;
    *(v52 + 32) = v50;
    sub_258E3F930(v55, type metadata accessor for EventMetadata);

    return v52;
  }

  return result;
}

uint64_t DeviceExperimentSELFEventConverter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentSELFEventConverter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DeviceExperimentSELFEventConverter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentSELFEventConverter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviceExperimentSELFEventConverter(uint64_t a1)
{
  result = qword_27F989830;
  if (!qword_27F989830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E3F8CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E3F930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258E3F990(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v36 - v6;
  v8 = sub_258F09A70();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (*a1)
  {
    v14 = type metadata accessor for DeviceExperimentMetrics(0);
    v15 = (a2 + v14[5]);
    if (*(v15 + 4))
    {
      v16 = 0;
    }

    else
    {
      v16 = *v15;
    }

    [v13 setDigestType_];
    v17 = [objc_allocWithZone(MEMORY[0x277D59348]) init];
    v18 = v17;
    if (*(a2 + v14[6] + 8))
    {
      v19 = v17 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v39 = v8;
      v20 = v17;
      v38 = a2;
      v21 = v9;
      v22 = v18;
      v23 = v13;
      v24 = v20;
      v25 = sub_258F0A4E0();
      [v24 setExperimentId_];

      v13 = v23;
      v18 = v22;
      v9 = v21;
      a2 = v38;
      v8 = v39;
    }

    sub_258DE20C0(a2 + v14[7], v7, &qword_27F988730, &unk_258F0F8E0);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_258DE2184(v7, &qword_27F988730, &unk_258F0F8E0);
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
      if (v18)
      {
        v26 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v27 = v18;
        v39 = v8;
        v37 = v12;
        v28 = sub_258F09A50();
        v29 = [v26 initWithNSUUID_];

        [v27 setTreatmentId_];
        (*(v9 + 8))(v37, v39);
      }

      else
      {
        (*(v9 + 8))(v12, v8);
      }
    }

    v30 = a2 + v14[8];
    if ((*(v30 + 8) & 1) == 0)
    {
      [v18 setDeploymentId_];
    }

    [v13 setExperimentFixedDimensions_];
    v31 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
    v32 = v31;
    if (*(a2 + v14[9] + 8) && v31)
    {
      v33 = v31;
      v34 = sub_258F0A4E0();
      [v33 setDeviceType_];
    }

    v35 = (a2 + v14[10]);
    if ((v35[1] & 1) == 0)
    {
      [v32 setProgramCode_];
    }

    [v13 setFixedDimensions_];
  }
}

uint64_t sub_258E3FD7C()
{
  v2[3] = &type metadata for Features;
  v2[4] = sub_258E3FDD4();
  LOBYTE(v2[0]) = 1;
  v0 = sub_258F09C30();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return v0 & 1;
}

unint64_t sub_258E3FDD4()
{
  result = qword_280CC5FB0;
  if (!qword_280CC5FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC5FB0);
  }

  return result;
}

uint64_t sub_258E3FE28()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedPreferences];
  v2 = [v1 assistantIsEnabled];

  if (v2)
  {
    return 1;
  }

  v4 = [v0 sharedPreferences];
  v5 = [v4 dictationIsEnabled];

  return v5;
}

uint64_t DevicePropertiesResult.devicePropertiesEvents.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DevicePropertiesResult.siriAccountInformationEvents.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t DevicePropertiesCalculator.__allocating_init(defaults:logger:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F0A370();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = type metadata accessor for CAAnalyticsEventSubmitter();
  v10 = swift_allocObject();
  v21[3] = v9;
  v21[4] = &off_286A2C648;
  v21[0] = v10;
  type metadata accessor for DevicePropertiesCalculator(0);
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v21, v9);
  MEMORY[0x28223BE20](v12, v12);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v19 = v9;
  v20 = &off_286A2C648;
  *&v18 = v16;
  sub_258F09AC0();
  *(v11 + OBJC_IVAR____TtC16MetricsFramework26DevicePropertiesCalculator_defaults) = a1;
  (*(v5 + 32))(v11 + OBJC_IVAR____TtC16MetricsFramework26DevicePropertiesCalculator_logger, v8, v4);
  sub_258DEE384(&v18, v11 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  (*(v5 + 8))(a2, v4);
  return v11;
}

uint64_t type metadata accessor for DevicePropertiesCalculator(uint64_t a1)
{
  result = qword_27F989858;
  if (!qword_27F989858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E402C8(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *a2;
  *(v3 + 48) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_258E402F8, 0, 0);
}

uint64_t sub_258E402F8(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Calculator invoked: DevicePropertiesCalculator", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 32);

  sub_258E40524();
  v7 = v6;
  sub_258E41CA0(v6, v5);
  v9 = v8;
  v10 = [objc_opt_self() sharedPreferences];
  v11 = [v10 longLivedIdentifierUploadingEnabled];

  if (v11)
  {
    v12 = *(v1 + 40);
    v13 = *(v1 + 48);
    v14 = [*(v1 + 32) eventMetadata];
    v15 = [v14 deviceAggregationId];

    sub_258E421B8(v7, v15, v12, v13, v16);
    v18 = v17;
  }

  else
  {

    v15 = sub_258F0A350();
    v19 = sub_258F0A810();
    if (os_log_type_enabled(v15, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_258DD8000, v15, v19, "RPI enabled, skipping ODDSiriAccountInformation generation", v20, 2u);
      MEMORY[0x259C9EF40](v20, -1, -1);
    }

    v18 = MEMORY[0x277D84F90];
  }

  v21 = *(v1 + 16);

  *v21 = v9;
  v21[1] = v18;
  v22 = *(v1 + 8);

  return v22();
}

void sub_258E40524()
{
  v0 = sub_258F09A20();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = (v19 - v7);
  v21 = MEMORY[0x277D84F90];
  sub_258E4173C(v19 - v7);
  v9 = sub_258E40808(v8);
  sub_258DE2184(v8, &qword_27F988728, &unk_258F0B840);
  v10 = *(v9 + 2);
  if (!v10)
  {
LABEL_13:

    return;
  }

  v12 = *(v1 + 16);
  v11 = v1 + 16;
  v19[1] = v9;
  v20 = v12;
  v13 = &v9[(*(v11 + 64) + 32) & ~*(v11 + 64)];
  v14 = *(v11 + 56);
  v15 = (v11 - 8);
  v12(v4, v13, v0);
  while (1)
  {
    v16 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
    sub_258F099E0();
    if (!v16)
    {
      (*v15)(v4, v0);
      goto LABEL_4;
    }

    if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v17 <= -1.0)
    {
      goto LABEL_15;
    }

    if (v17 >= 1.84467441e19)
    {
      goto LABEL_16;
    }

    [v16 setStartTimestampInSecondsSince1970_];
    [v16 setNumberOfSeconds_];
    v18 = v16;
    MEMORY[0x259C9DF50]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_258F0A6D0();
    }

    sub_258F0A700();

    (*v15)(v4, v0);
LABEL_4:
    v13 += v14;
    if (!--v10)
    {
      goto LABEL_13;
    }

    v20(v4, v13, v0);
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
}

char *sub_258E40808(void (*a1)(char *, uint64_t))
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v37 - v4;
  v6 = sub_258F09A20();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = v37 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = v37 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = (v37 - v21);
  sub_258F09B50();
  sub_258F09AB0();
  v39 = *(v7 + 8);
  v39(v19, v6);
  v38 = v1;
  sub_258E40CE8(v42, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_258DE2184(v5, &qword_27F988728, &unk_258F0B840);
    v23 = MEMORY[0x277D84F90];
  }

  else
  {
    v37[1] = v7 + 8;
    v40 = *(v7 + 32);
    v41 = v7 + 32;
    v40(v15, v5, v6);
    sub_258E42E1C(&qword_27F989870, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v42 = v22;
    if (sub_258F0A4A0())
    {
      v23 = MEMORY[0x277D84F90];
    }

    else
    {
      v34 = *(v7 + 16);
      v23 = MEMORY[0x277D84F90];
      do
      {
        v34(v11, v15, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_258DE283C(0, *(v23 + 2) + 1, 1, v23);
        }

        v36 = *(v23 + 2);
        v35 = *(v23 + 3);
        if (v36 >= v35 >> 1)
        {
          v23 = sub_258DE283C((v35 > 1), v36 + 1, 1, v23);
        }

        *(v23 + 2) = v36 + 1;
        v40(&v23[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v36], v11, v6);
        sub_258F09980();
      }

      while ((sub_258F0A4A0() & 1) == 0);
    }

    v39(v15, v6);
    v22 = v42;
  }

  v24 = sub_258F0A350();
  v25 = sub_258F0A810();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v43 = v27;
    *v26 = 136315138;

    v29 = MEMORY[0x259C9DF80](v28, v6);
    v31 = v30;

    v32 = sub_258DE3018(v29, v31, &v43);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_258DD8000, v24, v25, "Dates to run: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x259C9EF40](v27, -1, -1);
    MEMORY[0x259C9EF40](v26, -1, -1);
  }

  v39(v22, v6);
  return v23;
}

uint64_t sub_258E40CE8@<X0>(void (*a1)(char *, uint64_t)@<X0>, char *a2@<X8>)
{
  v104 = a1;
  v105 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v98 - v4;
  v6 = sub_258F09A20();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v101 = (&v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9, v11);
  v100 = &v98 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v102 = &v98 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v103 = &v98 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v98 - v22;
  v25 = MEMORY[0x28223BE20](v21, v24);
  v27 = &v98 - v26;
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = &v98 - v30;
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v98 - v33;
  sub_258F09B50();
  v106 = v34;
  sub_258F09AB0();
  v35 = *(v7 + 8);
  v35(v31, v6);
  if (qword_27F988668 != -1)
  {
    swift_once();
  }

  v36 = sub_258F09B00();
  __swift_project_value_buffer(v36, qword_27F9898E8);
  sub_258F09B50();
  sub_258F09AB0();
  v35(v23, v6);
  sub_258F09920();
  sub_258F09910();
  v35(v31, v6);
  sub_258E42DAC(v104, v5);
  v37 = v7;
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_258DE2184(v5, &qword_27F988728, &unk_258F0B840);
    v38 = sub_258F0A350();
    v39 = sub_258F0A810();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_258DD8000, v38, v39, "pluginLastRunDate: no entry", v40, 2u);
      v41 = v40;
      v37 = v7;
      MEMORY[0x259C9EF40](v41, -1, -1);
    }

    v35(v106, v6);
    v42 = v105;
    (*(v37 + 32))(v105, v27, v6);
    goto LABEL_20;
  }

  v104 = v35;
  v43 = *(v7 + 32);
  v44 = v103;
  v43(v103, v5, v6);
  v45 = sub_258F099C0();
  v99 = v27;
  if (v45)
  {
    v46 = v102;
    (*(v37 + 16))(v102, v44, v6);
    v47 = sub_258F0A350();
    v48 = sub_258F0A810();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v98 = v37;
      v50 = v49;
      v101 = swift_slowAlloc();
      v107 = v101;
      *v50 = 134218242;
      *(v50 + 4) = 6;
      *(v50 + 12) = 2080;
      sub_258E42E1C(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      LODWORD(v100) = v48;
      v51 = sub_258F0AD60();
      v53 = v52;
      v54 = v46;
      v55 = v44;
      v56 = v104;
      v104(v54, v6);
      v57 = sub_258DE3018(v51, v53, &v107);

      *(v50 + 14) = v57;
      _os_log_impl(&dword_258DD8000, v47, v100, "pluginLastRunDate more than %ld days ago: %s", v50, 0x16u);
      v58 = v101;
      __swift_destroy_boxed_opaque_existential_1Tm(v101);
      MEMORY[0x259C9EF40](v58, -1, -1);
      v59 = v50;
      v37 = v98;
      MEMORY[0x259C9EF40](v59, -1, -1);

      v56(v55, v6);
      v56(v106, v6);
    }

    else
    {

      v77 = v104;
      v104(v46, v6);
      v77(v44, v6);
      v77(v106, v6);
    }

    v42 = v105;
    v43(v105, v99, v6);
LABEL_20:
    v93 = 0;
    return (*(v37 + 56))(v42, v93, 1, v6);
  }

  v60 = sub_258F099C0();
  v61 = *(v7 + 16);
  if (v60)
  {
    v62 = v100;
    v61(v100, v44, v6);
    v63 = sub_258F0A350();
    v64 = sub_258F0A810();
    v65 = os_log_type_enabled(v63, v64);
    v42 = v105;
    if (v65)
    {
      v66 = swift_slowAlloc();
      v98 = v37;
      v67 = v66;
      v68 = swift_slowAlloc();
      v107 = v68;
      *v67 = 134218242;
      *(v67 + 4) = 6;
      *(v67 + 12) = 2080;
      sub_258E42E1C(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v69 = sub_258F0AD60();
      v70 = v42;
      v72 = v71;
      v73 = v62;
      v74 = v104;
      v104(v73, v6);
      v75 = sub_258DE3018(v69, v72, &v107);
      v42 = v70;

      *(v67 + 14) = v75;
      _os_log_impl(&dword_258DD8000, v63, v64, "pluginLastRunDate within last %ld days: %s", v67, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x259C9EF40](v68, -1, -1);
      v76 = v67;
      v37 = v98;
      MEMORY[0x259C9EF40](v76, -1, -1);
    }

    else
    {

      v94 = v62;
      v74 = v104;
      v104(v94, v6);
    }

    v95 = v103;
    sub_258F09990();
    v74(v95, v6);
    v74(v99, v6);
    v74(v106, v6);
    goto LABEL_20;
  }

  v78 = v101;
  v61(v101, v44, v6);
  v79 = sub_258F0A350();
  v80 = sub_258F0A810();
  v81 = os_log_type_enabled(v79, v80);
  v42 = v105;
  if (v81)
  {
    v82 = swift_slowAlloc();
    v98 = v37;
    v83 = v82;
    v84 = swift_slowAlloc();
    v107 = v84;
    *v83 = 136315138;
    sub_258E42E1C(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v85 = sub_258F0AD60();
    v86 = v42;
    v88 = v87;
    v89 = v78;
    v90 = v104;
    v104(v89, v6);
    v91 = sub_258DE3018(v85, v88, &v107);
    v42 = v86;

    *(v83 + 4) = v91;
    _os_log_impl(&dword_258DD8000, v79, v80, "pluginLastRunDate this morning or later: %s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    MEMORY[0x259C9EF40](v84, -1, -1);
    v92 = v83;
    v37 = v98;
    MEMORY[0x259C9EF40](v92, -1, -1);

    v90(v103, v6);
    v90(v99, v6);
    v90(v106, v6);
  }

  else
  {

    v97 = v104;
    v104(v78, v6);
    v97(v44, v6);
    v97(v99, v6);
    v97(v106, v6);
  }

  v93 = 1;
  return (*(v37 + 56))(v42, v93, 1, v6);
}

uint64_t sub_258E4173C@<X0>(_BYTE *a1@<X8>)
{
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v34[-v4];
  v6 = sub_258F09A20();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v34[-v13];
  v15 = *(v1 + OBJC_IVAR____TtC16MetricsFramework26DevicePropertiesCalculator_defaults);
  v16 = sub_258F0A4E0();
  v17 = [v15 objectForKey_];

  if (v17)
  {
    sub_258F0A9C0();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42[0] = v40;
  v42[1] = v41;
  if (*(&v41 + 1))
  {
    v18 = swift_dynamicCast();
    v19 = *(v7 + 56);
    v19(v5, v18 ^ 1u, 1, v6);
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v37 = *(v7 + 32);
      v38 = v7 + 32;
      v37(v14, v5, v6);
      (*(v7 + 16))(v11, v14, v6);
      v20 = sub_258F0A350();
      v21 = sub_258F0A810();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *&v42[0] = v36;
        *v22 = 136315394;
        *(v22 + 4) = sub_258DE3018(0xD000000000000021, 0x8000000258F1AFE0, v42);
        *(v22 + 12) = 2080;
        sub_258E42E1C(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v35 = v21;
        v23 = sub_258F0AD60();
        v25 = v24;
        (*(v7 + 8))(v11, v6);
        v26 = sub_258DE3018(v23, v25, v42);

        *(v22 + 14) = v26;
        _os_log_impl(&dword_258DD8000, v20, v35, "%s: %s", v22, 0x16u);
        v27 = v36;
        swift_arrayDestroy();
        MEMORY[0x259C9EF40](v27, -1, -1);
        MEMORY[0x259C9EF40](v22, -1, -1);
      }

      else
      {

        (*(v7 + 8))(v11, v6);
      }

      v33 = v39;
      v37(v39, v14, v6);
      return (v19)(v33, 0, 1, v6);
    }
  }

  else
  {
    sub_258DE2184(v42, &qword_27F989868, &unk_258F12D70);
    v19 = *(v7 + 56);
    v19(v5, 1, 1, v6);
  }

  sub_258DE2184(v5, &qword_27F988728, &unk_258F0B840);
  v28 = sub_258F0A350();
  v29 = sub_258F0A810();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v42[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_258DE3018(0xD000000000000021, 0x8000000258F1AFE0, v42);
    _os_log_impl(&dword_258DD8000, v28, v29, "No entry for %s from UserDefaults", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x259C9EF40](v31, -1, -1);
    MEMORY[0x259C9EF40](v30, -1, -1);
  }

  return (v19)(v39, 1, 1, v6);
}

void sub_258E41CA0(unint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  v32 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_22:
    v6 = sub_258F0AA20();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v30 = v5 & 0xC000000000000001;
      v28 = v5 & 0xFFFFFFFFFFFFFF8;
      v25 = a2;
      v26 = v3;
      v23 = v6;
      v24 = v5;
      do
      {
        if (v30)
        {
          v8 = MEMORY[0x259C9E3B0](v7, v5);
        }

        else
        {
          if (v7 >= *(v28 + 16))
          {
            goto LABEL_21;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v11 = sub_258E41FF4(v8, a2);
        if (v11)
        {
          v12 = v11;
          MEMORY[0x259C9DF50]();
          if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_258F0A6D0();
          }

          sub_258F0A700();
          v13 = [v12 eventMetadata];
          if (v13)
          {
            v29 = v13;
            v14 = sub_258F0A350();
            v15 = sub_258F0A810();
            if (os_log_type_enabled(v14, v15))
            {
              log = v14;
              v16 = swift_slowAlloc();
              v17 = swift_slowAlloc();
              v31 = v17;
              *v16 = 136315138;
              v18 = [v29 dictionaryRepresentation];

              if (!v18)
              {
                __break(1u);
                return;
              }

              sub_258F0A410();

              v19 = sub_258F0A420();
              v21 = v20;

              v22 = sub_258DE3018(v19, v21, &v31);

              *(v16 + 4) = v22;
              _os_log_impl(&dword_258DD8000, log, v15, "Added devicePropertiesEvent with metadata: %s", v16, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v17);
              MEMORY[0x259C9EF40](v17, -1, -1);
              MEMORY[0x259C9EF40](v16, -1, -1);

              a2 = v25;
              v3 = v26;
              v6 = v23;
              v5 = v24;
            }

            else
            {
            }
          }

          else
          {
          }
        }

        else
        {
        }

        ++v7;
      }

      while (v10 != v6);
    }
  }
}

id sub_258E41FF4(uint64_t a1, id a2)
{
  if (!a2)
  {
    sub_258E2CC1C(1, 0xD000000000000020, 0x8000000258F1AF10);
LABEL_6:
    sub_258E2CC1C(1, 0xD000000000000017, 0x8000000258F1AF40);
    v6 = 0;
    goto LABEL_7;
  }

  v4 = [a2 eventMetadata];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [v4 deviceAggregationId];

  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_7:
  v7 = sub_258E47F7C(a1, v6);
  if (v7)
  {
    if (!a2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_258E2CC1C(1, 0xD00000000000003BLL, 0x8000000258F1AF60);
    if (!a2)
    {
      goto LABEL_13;
    }
  }

  v8 = [a2 data];
  if (v8)
  {
    v9 = v8;
    v10 = sub_258F09900();
    v12 = v11;

    v13 = sub_258F098F0();
    sub_258DEB978(v10, v12);
    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  v14 = [objc_allocWithZone(MEMORY[0x277D593E0]) initWithData_];

  if (v14)
  {
    [v14 setEventMetadata_];
  }

  else
  {
    sub_258E2CC1C(1, 0xD000000000000037, 0x8000000258F1AFA0);
  }

  return v14;
}

void sub_258E421B8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, __n128 a5)
{
  v7 = a1;
  v51 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_37:
    v8 = sub_258F0AA20();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v49 = v7 & 0xC000000000000001;
      v44 = v7 & 0xFFFFFFFFFFFFFF8;
      a5.n128_u64[0] = 136315394;
      v39 = a5;
      v45 = a4;
      v46 = v7;
      v47 = v8;
      v48 = a2;
      do
      {
        if (v49)
        {
          v10 = MEMORY[0x259C9E3B0](v9, v7);
        }

        else
        {
          if (v9 >= *(v44 + 16))
          {
            goto LABEL_36;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        if (a2)
        {
          if (a4)
          {
            goto LABEL_13;
          }
        }

        else
        {
          sub_258E2CC1C(1, 0xD000000000000017, 0x8000000258F1AF40);
          if (a4)
          {
            goto LABEL_13;
          }
        }

        sub_258E2CC1C(1, 0x69737361206C696ELL, 0xEF6449746E617473);
LABEL_13:
        v13 = sub_258E47F7C(v11, a2);
        if (!v13)
        {
          sub_258E2CC1C(1, 0xD00000000000003BLL, 0x8000000258F1AF60);
        }

        v14 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
        if (v14)
        {
          v15 = v14;
          [v14 setEventMetadata_];
          v16 = [objc_allocWithZone(MEMORY[0x277D593D8]) 0x2798CCB78];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
            if (a4)
            {
              a4 = sub_258F0A4E0();
            }

            [v18 setAssistantId_];

            a4 = v45;
            v8 = v47;
          }

          [v15 setSiriAccountInformation_];

          v19 = v15;
          MEMORY[0x259C9DF50]();
          if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_258F0A6D0();
          }

          sub_258F0A700();
          v20 = [v19 eventMetadata];
          if (v20)
          {
            v21 = v20;
            v22 = [v19 siriAccountInformation];
            if (v22)
            {
              v23 = v22;
              v24 = [v22 assistantId];

              if (v24)
              {
                v42 = sub_258F0A4F0();
                v26 = v25;

                v27 = v21;
                v28 = sub_258F0A350();
                v29 = sub_258F0A810();

                if (os_log_type_enabled(v28, v29))
                {
                  v40 = v29;
                  log = v28;
                  v30 = swift_slowAlloc();
                  v31 = v27;
                  v32 = swift_slowAlloc();
                  v50 = v32;
                  *v30 = v39.n128_u32[0];
                  v33 = sub_258DE3018(v42, v26, &v50);

                  *(v30 + 4) = v33;
                  *(v30 + 12) = 2080;
                  v34 = [v31 dictionaryRepresentation];
                  v43 = v31;

                  if (!v34)
                  {
                    __break(1u);
                    return;
                  }

                  sub_258F0A410();

                  v35 = sub_258F0A420();
                  v37 = v36;

                  v38 = sub_258DE3018(v35, v37, &v50);

                  *(v30 + 14) = v38;
                  _os_log_impl(&dword_258DD8000, log, v40, "Added siriAccountInformationEvent with assistantId: %s metadata: %s", v30, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x259C9EF40](v32, -1, -1);
                  MEMORY[0x259C9EF40](v30, -1, -1);

                  a4 = v45;
                }

                else
                {
                }
              }

              else
              {
              }

              v7 = v46;
              v8 = v47;
            }

            else
            {

              v7 = v46;
            }
          }

          else
          {

            v7 = v46;
          }
        }

        else
        {
          sub_258E2CC1C(1, 0xD000000000000037, 0x8000000258F1AFA0);
        }

        ++v9;
        a2 = v48;
      }

      while (v12 != v8);
    }
  }
}

uint64_t DevicePropertiesCalculator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC16MetricsFramework26DevicePropertiesCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC16MetricsFramework26DevicePropertiesCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t DevicePropertiesCalculator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC16MetricsFramework26DevicePropertiesCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC16MetricsFramework26DevicePropertiesCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_258E42988(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258E402C8(a1, a2);
}

uint64_t sub_258E42A34(uint64_t a1)
{
  result = sub_258E42E1C(&qword_27F989840, type metadata accessor for DevicePropertiesCalculator, &protocol conformance descriptor for DevicePropertiesCalculator);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_258E42A8C()
{
  result = qword_27F989848;
  if (!qword_27F989848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989848);
  }

  return result;
}

unint64_t sub_258E42AE0()
{
  result = qword_27F989850;
  if (!qword_27F989850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989850);
  }

  return result;
}

uint64_t sub_258E42B4C(uint64_t a1)
{
  result = sub_258F0A370();
  if (v2 <= 0x3F)
  {
    result = sub_258F09B00();
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

uint64_t dispatch thunk of DevicePropertiesCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_258E42DAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E42E1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id DevicePropertiesDataRecord.devicePropertiesEvent.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t DevicePropertiesDataRecord.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t DevicePropertiesDataRecord.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t DevicePropertiesDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t DevicePropertiesDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258E43054(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = swift_task_alloc();
  v2[8] = v3;
  *v3 = v2;
  v3[1] = sub_258E430E4;

  return sub_258E43814();
}

uint64_t sub_258E430E4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v5 = *v3;
  v4[9] = a2;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v4[10] = v8;
    *v8 = v5;
    v8[1] = sub_258E43260;

    return sub_258E4341C();
  }
}

uint64_t sub_258E43260(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_258E433B8;
  }

  else
  {
    v6 = v4[3];
    v4[12] = a1;
    v4[13] = v6;
    v5 = sub_258E4338C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_258E4338C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  *v2 = *(v0 + 96);
  *(v2 + 16) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_258E433B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258E4343C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CEF3A8]) init];
  v0[20] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_258E43574;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989890, &qword_258F11A10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_258E65850;
  v0[13] = &block_descriptor_2;
  v0[14] = v2;
  [v1 getODDDeviceProperties_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_258E43574()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_258E437A4;
  }

  else
  {
    v2 = sub_258E43684;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258E43684()
{
  v1 = *(v0 + 144);

  v2 = sub_258F0A350();
  if (v1)
  {
    v3 = sub_258F0A810();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_7;
    }

    v4 = "Successfully fetched DevicePropertiesEvent";
  }

  else
  {
    v3 = sub_258F0A820();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_7;
    }

    v4 = "Unable to fetch DevicePropertiesEvent";
  }

  v5 = swift_slowAlloc();
  *v5 = 0;
  _os_log_impl(&dword_258DD8000, v2, v3, v4, v5, 2u);
  MEMORY[0x259C9EF40](v5, -1, -1);
LABEL_7:

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_258E437A4(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_258E43834()
{
  v1 = [objc_opt_self() sharedPreferences];
  v2 = [v1 longLivedIdentifierUploadingEnabled];

  if (v2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CEF3A8]) init];
    v0[20] = v3;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_258E43A60;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989898, qword_258F10C90);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_258E43E0C;
    v0[13] = &block_descriptor_13;
    v0[14] = v4;
    [v3 fetchActiveAccount_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v5 = sub_258F0A350();
    v6 = sub_258F0A810();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_258DD8000, v5, v6, "RPI enabled, skipping assistantIdentifier fetch", v7, 2u);
      MEMORY[0x259C9EF40](v7, -1, -1);
    }

    v8 = v0[1];

    return v8(0, 0);
  }
}

uint64_t sub_258E43A60()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_258E437A4;
  }

  else
  {
    v2 = sub_258E43B70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258E43B70()
{
  v19 = v0;
  v1 = *(v0 + 144);

  if (!v1)
  {
    v11 = sub_258F0A350();
    v12 = sub_258F0A820();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_258DD8000, v11, v12, "Unable to fetch AFAccount", v13, 2u);
      MEMORY[0x259C9EF40](v13, -1, -1);
    }

    goto LABEL_11;
  }

  v2 = [v1 assistantIdentifier];
  if (!v2)
  {
    v11 = sub_258F0A350();
    v14 = sub_258F0A820();
    if (os_log_type_enabled(v11, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_258DD8000, v11, v14, "assistantIdentifier from fetched AFAccount is nil", v15, 2u);
      MEMORY[0x259C9EF40](v15, -1, -1);
    }

LABEL_11:
    v4 = 0;
    v6 = 0;
    goto LABEL_12;
  }

  v3 = v2;
  v4 = sub_258F0A4F0();
  v6 = v5;

  v7 = sub_258F0A350();
  v8 = sub_258F0A810();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_258DE3018(v4, v6, &v18);
    _os_log_impl(&dword_258DD8000, v7, v8, "Fetched assistantIdentifier: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x259C9EF40](v10, -1, -1);
    MEMORY[0x259C9EF40](v9, -1, -1);
  }

LABEL_12:
  v16 = *(v0 + 8);

  return v16(v4, v6);
}