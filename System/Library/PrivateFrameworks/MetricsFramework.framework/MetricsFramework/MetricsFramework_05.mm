uint64_t sub_258E43E0C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t DevicePropertiesDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DevicePropertiesDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258E43FD8(uint64_t a1)
{
  v3 = *v1;
  v2[6] = a1;
  v2[7] = v3;
  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v2;
  v4[1] = sub_258E4406C;

  return sub_258E43814();
}

uint64_t sub_258E4406C(uint64_t a1, uint64_t a2)
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
    v8[1] = sub_258E441E8;

    return sub_258E4341C();
  }
}

uint64_t sub_258E441E8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_258E4459C;
  }

  else
  {
    v6 = v4[3];
    v4[12] = a1;
    v4[13] = v6;
    v5 = sub_258E44598;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_258E44314(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_258E44370(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for DevicePropertiesDataProvider(uint64_t a1)
{
  result = qword_27F989880;
  if (!qword_27F989880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of DevicePropertiesDataProvider.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t DevicePropertiesPlugin.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, char *a2, unint64_t a3, unint64_t a4)
{
  swift_allocObject();
  v8 = sub_258E458A8(a1, a2, a3, a4);

  return v8;
}

uint64_t DevicePropertiesPlugin.init(defaults:logger:fbfBundleId:)(void *a1, char *a2, unint64_t a3, unint64_t a4)
{
  v5 = sub_258E458A8(a1, a2, a3, a4);

  return v5;
}

uint64_t sub_258E44660(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_258E44680, 0, 0);
}

uint64_t sub_258E44680()
{
  v0[8] = *(v0[7] + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_dataProvider);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_258E44720;

  return sub_258E43814();
}

uint64_t sub_258E44720(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v5 = *v3;
  v4[10] = a2;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v4[11] = v8;
    *v8 = v5;
    v8[1] = sub_258E4489C;

    return sub_258E4341C();
  }
}

uint64_t sub_258E4489C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_258E46210;
  }

  else
  {
    v6 = v4[3];
    v4[13] = a1;
    v4[14] = v6;
    v5 = sub_258E4620C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_258E449C8(_OWORD *a1)
{
  *(v2 + 32) = v1;
  *(v2 + 40) = *a1;
  return MEMORY[0x2822009F8](sub_258E449F0, 0, 0);
}

uint64_t sub_258E449F0()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_reporter);
  *(v0 + 16) = *(v0 + 40);
  v4 = (*(*v1 + 80) + **(*v1 + 80));
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_258E44B28;

  return v4(v0 + 16);
}

uint64_t sub_258E44B28()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258E36B44, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_258E44C5C(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  *(v3 + 56) = *a2;
  *(v3 + 72) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_258E44C8C, 0, 0);
}

uint64_t sub_258E44C8C()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_258E44D48;
  v3 = *(v0 + 40);

  return sub_258E402C8(v3, v0 + 16);
}

uint64_t sub_258E44D48()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258E46208, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t DevicePropertiesPlugin.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DevicePropertiesPlugin.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258E44FD8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 48) = a1;
  *(v2 + 56) = v3;
  return MEMORY[0x2822009F8](sub_258E44FFC, 0, 0);
}

uint64_t sub_258E44FFC()
{
  v0[8] = *(v0[7] + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_dataProvider);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_258E4509C;

  return sub_258E43814();
}

uint64_t sub_258E4509C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v5 = *v3;
  v4[10] = a2;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v4[11] = v8;
    *v8 = v5;
    v8[1] = sub_258E45218;

    return sub_258E4341C();
  }
}

uint64_t sub_258E45218(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_258E45370;
  }

  else
  {
    v6 = v4[3];
    v4[13] = a1;
    v4[14] = v6;
    v5 = sub_258E45344;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_258E45344()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  *v2 = *(v0 + 104);
  *(v2 + 16) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_258E45370()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258E453D4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v4;
  *(v3 + 56) = *a2;
  *(v3 + 72) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_258E45408, 0, 0);
}

uint64_t sub_258E45408()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_258E454C4;
  v3 = *(v0 + 40);

  return sub_258E402C8(v3, v0 + 16);
}

uint64_t sub_258E454C4()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258E455F8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_258E45610(_OWORD *a1)
{
  *(v2 + 32) = *v1;
  *(v2 + 40) = *a1;
  return MEMORY[0x2822009F8](sub_258E4563C, 0, 0);
}

uint64_t sub_258E4563C()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_reporter);
  *(v0 + 16) = *(v0 + 40);
  v4 = (*(*v1 + 80) + **(*v1 + 80));
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_258E45774;

  return v4(v0 + 16);
}

uint64_t sub_258E45774()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_258E365A8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_258E458A8(void *a1, char *a2, unint64_t a3, unint64_t a4)
{
  v43 = a3;
  v44 = a4;
  v42 = a1;
  v6 = sub_258F0A370();
  v8 = MEMORY[0x28223BE20](v6, v7);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v34 - v11;
  v14 = v13;
  v40 = v4;
  v41 = v13;
  v15 = *(v13 + 16);
  v15(v4 + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_logger, a2, v6);
  v39 = a2;
  v15(v12, a2, v6);
  type metadata accessor for DevicePropertiesDataProvider(0);
  v16 = swift_allocObject();
  v37 = *(v14 + 32);
  v37(v16 + OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesDataProvider_logger, v12, v6);
  v36 = v14 + 32;
  *(v4 + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_dataProvider) = v16;
  v38 = v15;
  v15(v12, a2, v6);
  v17 = v35;
  v15(v35, v12, v6);
  v18 = type metadata accessor for CAAnalyticsEventSubmitter();
  v19 = swift_allocObject();
  v48[3] = v18;
  v48[4] = &off_286A2C648;
  v48[0] = v19;
  type metadata accessor for DevicePropertiesCalculator(0);
  v20 = swift_allocObject();
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v48, v18);
  MEMORY[0x28223BE20](v21, v21);
  v23 = (&v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v23;
  v46 = v18;
  v47 = &off_286A2C648;
  *&v45 = v25;
  v26 = v42;
  sub_258F09AC0();
  *(v20 + OBJC_IVAR____TtC16MetricsFramework26DevicePropertiesCalculator_defaults) = v26;
  v27 = v37;
  v37(v20 + OBJC_IVAR____TtC16MetricsFramework26DevicePropertiesCalculator_logger, v17, v6);
  sub_258DEE384(&v45, v20 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  v28 = *(v41 + 8);
  v28(v12, v6);
  v30 = v39;
  v29 = v40;
  *(v40 + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_calculator) = v20;
  v38(v12, v30, v6);
  v31 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v43, v44);
  v28(v30, v6);
  type metadata accessor for DevicePropertiesSELFReporter(0);
  v32 = swift_allocObject();
  v27(v32 + OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger, v12, v6);
  *(v32 + 16) = v31;
  *(v29 + OBJC_IVAR____TtC16MetricsFramework22DevicePropertiesPlugin_reporter) = v32;
  return v29;
}

uint64_t type metadata accessor for DevicePropertiesPlugin(uint64_t a1)
{
  result = qword_280CC50C8;
  if (!qword_280CC50C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E45D6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DevicePropertiesPlugin(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258E45DB8(uint64_t a1)
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

uint64_t dispatch thunk of DevicePropertiesPlugin.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of DevicePropertiesPlugin.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of DevicePropertiesPlugin.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t DevicePropertiesSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *(v4 + 16) = a2;
  return v4;
}

uint64_t sub_258E4635C(uint64_t a1)
{
  v6 = (*(**v1 + 80) + **(**v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

id sub_258E46480()
{
  result = [objc_opt_self() sharedPreferences];
  qword_280CC5FE0 = result;
  return result;
}

uint64_t DevicePropertiesSELFReporter.init(logger:reportingService:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t sub_258E46534(_OWORD *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *a1;
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_258E465E8;

  return sub_258E6422C(3, 1);
}

uint64_t sub_258E465E8(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_258E466E8, 0, 0);
}

uint64_t sub_258E466E8(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[2];
  if (v2)
  {
    v4 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger;
    v1[7] = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger;
    v5 = swift_task_alloc();
    v1[8] = v5;
    *v5 = v1;
    v5[1] = sub_258E46AA0;
    v6 = v3 + v4;
LABEL_13:

    return sub_258EB5738(v2, v6);
  }

  v7 = sub_258F0A350();
  v8 = sub_258F0A820();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_258DD8000, v7, v8, "Unable to create exection metadata event", v9, 2u);
    MEMORY[0x259C9EF40](v9, -1, -1);
  }

  v10 = v1[3];
  if (v10 >> 62)
  {
    v11 = sub_258F0AA20();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger;
  v1[10] = v11;
  v1[11] = v12;
  if (v11)
  {
    v13 = v1[3];
    if ((v13 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x259C9E3B0](0);
      v12 = v1[11];
      goto LABEL_11;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v13 + 32);
LABEL_11:
      v1[12] = v2;
      v1[13] = 1;
      v14 = v1[2];
      v15 = swift_task_alloc();
      v1[14] = v15;
      *v15 = v1;
      v16 = sub_258E46E9C;
LABEL_12:
      v15[1] = v16;
      v6 = v14 + v12;
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (qword_27F988660 == -1)
  {
    goto LABEL_17;
  }

  swift_once();
LABEL_17:
  if ([qword_280CC5FE0 longLivedIdentifierUploadingEnabled])
  {
    v18 = v1[4];
    if (v18 >> 62)
    {
      result = sub_258F0AA20();
      v1[16] = result;
      if (result)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v1[16] = result;
      if (result)
      {
LABEL_20:
        v19 = v1[4];
        if ((v19 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x259C9E3B0](0);
        }

        else
        {
          if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v20 = *(v19 + 32);
        }

        v2 = v20;
        v1[17] = v20;
        v1[18] = 1;
        v12 = v1[11];
        v14 = v1[2];
        v15 = swift_task_alloc();
        v1[19] = v15;
        *v15 = v1;
        v16 = sub_258E47288;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v21 = sub_258F0A350();
    v22 = sub_258F0A810();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_258DD8000, v21, v22, "RPI enabled, skipping ODDSiriAccountInformation upload", v23, 2u);
      MEMORY[0x259C9EF40](v23, -1, -1);
    }
  }

  v24 = v1[1];

  return v24();
}

uint64_t sub_258E46AA0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_258E474E0;
  }

  else
  {
    v2 = sub_258E46BB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258E46BB4()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    v2 = sub_258F0AA20();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger;
  *(v0 + 80) = v2;
  *(v0 + 88) = v3;
  if (v2)
  {
    v4 = *(v0 + 24);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x259C9E3B0](0);
      v3 = *(v0 + 88);
      goto LABEL_7;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v4 + 32);
LABEL_7:
      *(v0 + 96) = v5;
      *(v0 + 104) = 1;
      v6 = *(v0 + 16);
      v7 = swift_task_alloc();
      *(v0 + 112) = v7;
      *v7 = v0;
      v8 = sub_258E46E9C;
LABEL_8:
      v7[1] = v8;

      return sub_258EB5738(v5, v6 + v3);
    }

    __break(1u);
  }

  else if (qword_27F988660 == -1)
  {
    goto LABEL_12;
  }

  swift_once();
LABEL_12:
  if ([qword_280CC5FE0 longLivedIdentifierUploadingEnabled])
  {
    v10 = *(v0 + 32);
    if (v10 >> 62)
    {
      result = sub_258F0AA20();
      *(v0 + 128) = result;
      if (result)
      {
        goto LABEL_15;
      }
    }

    else
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 128) = result;
      if (result)
      {
LABEL_15:
        v11 = *(v0 + 32);
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x259C9E3B0](0);
        }

        else
        {
          if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v12 = *(v11 + 32);
        }

        v5 = v12;
        *(v0 + 136) = v12;
        *(v0 + 144) = 1;
        v3 = *(v0 + 88);
        v6 = *(v0 + 16);
        v7 = swift_task_alloc();
        *(v0 + 152) = v7;
        *v7 = v0;
        v8 = sub_258E47288;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v13 = sub_258F0A350();
    v14 = sub_258F0A810();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_258DD8000, v13, v14, "RPI enabled, skipping ODDSiriAccountInformation upload", v15, 2u);
      MEMORY[0x259C9EF40](v15, -1, -1);
    }
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_258E46E9C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_258E47848;
  }

  else
  {
    v2 = sub_258E46FB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258E46FB0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);

  if (v1 != v2)
  {
    v13 = *(v0 + 104);
    v14 = *(v0 + 24);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x259C9E3B0](*(v0 + 104));
    }

    else
    {
      if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        result = sub_258F0AA20();
        *(v0 + 128) = result;
        if (result)
        {
          goto LABEL_7;
        }

        goto LABEL_22;
      }

      v15 = *(v14 + 8 * v13 + 32);
    }

    v16 = v15;
    *(v0 + 96) = v15;
    *(v0 + 104) = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      v17 = *(v0 + 88);
      v18 = *(v0 + 16);
      v19 = swift_task_alloc();
      *(v0 + 112) = v19;
      *v19 = v0;
      v19[1] = sub_258E46E9C;
      v11 = v18 + v17;
      v12 = v16;
LABEL_16:

      return sub_258EB5738(v12, v11);
    }

    __break(1u);
    goto LABEL_27;
  }

  if (qword_27F988660 != -1)
  {
    swift_once();
  }

  if (![qword_280CC5FE0 longLivedIdentifierUploadingEnabled])
  {
    v20 = sub_258F0A350();
    v21 = sub_258F0A810();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_258DD8000, v20, v21, "RPI enabled, skipping ODDSiriAccountInformation upload", v22, 2u);
      MEMORY[0x259C9EF40](v22, -1, -1);
    }

    goto LABEL_22;
  }

  v3 = *(v0 + 32);
  if (v3 >> 62)
  {
    goto LABEL_28;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 128) = result;
  if (result)
  {
LABEL_7:
    v5 = *(v0 + 32);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x259C9E3B0](0);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v6 = *(v5 + 32);
    }

    v7 = v6;
    *(v0 + 136) = v6;
    *(v0 + 144) = 1;
    v8 = *(v0 + 88);
    v9 = *(v0 + 16);
    v10 = swift_task_alloc();
    *(v0 + 152) = v10;
    *v10 = v0;
    v10[1] = sub_258E47288;
    v11 = v9 + v8;
    v12 = v7;
    goto LABEL_16;
  }

LABEL_22:
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_258E47288()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_258E47934;
  }

  else
  {
    v2 = sub_258E4739C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_258E4739C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);

  if (v1 == v2)
  {
    v3 = *(v0 + 8);

    v3();
    return;
  }

  v4 = *(v0 + 144);
  v5 = *(v0 + 32);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x259C9E3B0](*(v0 + 144));
  }

  else
  {
    if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return;
    }

    v6 = *(v5 + 8 * v4 + 32);
  }

  v7 = v6;
  *(v0 + 136) = v6;
  *(v0 + 144) = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(v0 + 88);
  v9 = *(v0 + 16);
  v10 = swift_task_alloc();
  *(v0 + 152) = v10;
  *v10 = v0;
  v10[1] = sub_258E47288;

  sub_258EB5738(v7, v9 + v8);
}

uint64_t sub_258E474E0()
{
  v1 = sub_258F0A350();
  v2 = sub_258F0A820();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 72);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258DD8000, v1, v2, "Unable to report execution Event", v5, 2u);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  v6 = *(v0 + 24);
  if (v6 >> 62)
  {
    v7 = sub_258F0AA20();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger;
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  if (v7)
  {
    v9 = *(v0 + 24);
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x259C9E3B0](0);
      v8 = *(v0 + 88);
      goto LABEL_9;
    }

    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v9 + 32);
LABEL_9:
      *(v0 + 96) = v10;
      *(v0 + 104) = 1;
      v11 = *(v0 + 16);
      v12 = swift_task_alloc();
      *(v0 + 112) = v12;
      *v12 = v0;
      v13 = sub_258E46E9C;
LABEL_10:
      v12[1] = v13;

      return sub_258EB5738(v10, v11 + v8);
    }

    __break(1u);
  }

  else if (qword_27F988660 == -1)
  {
    goto LABEL_14;
  }

  swift_once();
LABEL_14:
  if ([qword_280CC5FE0 longLivedIdentifierUploadingEnabled])
  {
    v15 = *(v0 + 32);
    if (v15 >> 62)
    {
      result = sub_258F0AA20();
      *(v0 + 128) = result;
      if (result)
      {
        goto LABEL_17;
      }
    }

    else
    {
      result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 128) = result;
      if (result)
      {
LABEL_17:
        v16 = *(v0 + 32);
        if ((v16 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x259C9E3B0](0);
        }

        else
        {
          if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v17 = *(v16 + 32);
        }

        v10 = v17;
        *(v0 + 136) = v17;
        *(v0 + 144) = 1;
        v8 = *(v0 + 88);
        v11 = *(v0 + 16);
        v12 = swift_task_alloc();
        *(v0 + 152) = v12;
        *v12 = v0;
        v13 = sub_258E47288;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v18 = sub_258F0A350();
    v19 = sub_258F0A810();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_258DD8000, v18, v19, "RPI enabled, skipping ODDSiriAccountInformation upload", v20, 2u);
      MEMORY[0x259C9EF40](v20, -1, -1);
    }
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_258E47848(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Unable to report devicePropertiesEvent", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 96);
  swift_willThrow();

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_258E47934(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Unable to report siriAccountInformationEvent", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 136);
  swift_willThrow();

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_258E47A20()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t DevicePropertiesSELFReporter.deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DevicePropertiesSELFReporter.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework28DevicePropertiesSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of DevicePropertiesReporter.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 80) + **(*v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t type metadata accessor for DevicePropertiesSELFReporter(uint64_t a1)
{
  result = qword_27F9898D8;
  if (!qword_27F9898D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E47D60(uint64_t a1)
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

uint64_t sub_258E47E2C()
{
  v0 = sub_258F09B00();
  __swift_allocate_value_buffer(v0, qword_27F9898E8);
  __swift_project_value_buffer(v0, qword_27F9898E8);
  return sub_258F09AC0();
}

void sub_258E47ECC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
  sub_258F099E0();
  if (v0)
  {
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v1 > -1.0)
    {
      if (v1 < 1.84467441e19)
      {
        [v0 setStartTimestampInSecondsSince1970_];
        [v0 setNumberOfSeconds_];
        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

void *sub_258E47F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F09A20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258F09A70();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277D592B0]) init];
  v15 = v14;
  if (!v14)
  {
    return v15;
  }

  [v14 setDeviceAggregationId_];
  sub_258F09A60();
  v16 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v17 = sub_258F09A50();
  v18 = [v16 initWithNSUUID_];

  (*(v10 + 8))(v13, v9);
  [v15 setOddId_];

  sub_258F09B50();
  sub_258F099E0();
  v20 = v19;
  v21 = v19;
  result = (*(v5 + 8))(v8, v4);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v20 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v20 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (is_mul_ok(v20, 0x3E8uLL))
  {
    [v15 setEventTimestampInMsSince1970_];
    [v15 setAggregationInterval_];
    v23 = [objc_opt_self() sharedPreferences];
    v24 = [v23 longLivedIdentifierUploadingEnabled];

    [v15 setIsLongLivedIDUploadDisabled_];
    return v15;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t DevicePropertiesWorker.Subtask.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_258F0ABE0();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_258E4834C()
{
  sub_258F0AE40();
  sub_258F0A5B0();
  return sub_258F0AE90();
}

uint64_t sub_258E483C0(uint64_t a1)
{
  sub_258F0AE40();
  sub_258F0A5B0();
  return sub_258F0AE90();
}

uint64_t sub_258E48414@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_258F0ABE0();

  *a2 = v3 != 0;
  return result;
}

uint64_t DevicePropertiesWorker.init(logger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_258F09AC0();
  v4 = *(type metadata accessor for DevicePropertiesWorker(0) + 20);
  v5 = sub_258F0A370();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2 + v4, a1, v5);
}

uint64_t type metadata accessor for DevicePropertiesWorker(uint64_t a1)
{
  result = qword_280CC5090;
  if (!qword_280CC5090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DevicePropertiesWorker.doWork(executor:context:durationThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_258F0A770();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E4861C, 0, 0);
}

uint64_t sub_258E4861C()
{
  v89 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(type metadata accessor for DevicePropertiesWorker(0) + 20);
  v4 = v1;
  v5 = sub_258F0A350();
  v6 = sub_258F0A800();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v88[0] = v8;
    *v7 = 136315394;
    v9 = sub_258F09E80();
    v11 = sub_258DE3018(v9, v10, v88);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_258F09E90();
    v14 = sub_258DE3018(v12, v13, v88);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_258DD8000, v5, v6, "TaskId: %s, TaskName: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v8, -1, -1);
    MEMORY[0x259C9EF40](v7, -1, -1);
  }

  v15 = *(v0 + 64);
  *v15 = 0;
  v16 = *MEMORY[0x277D81760];
  *(v0 + 216) = v16;
  v17 = sub_258F09E50();
  *(v0 + 120) = v17;
  v18 = *(v17 - 8);
  *(v0 + 128) = v18;
  v19 = *(v18 + 104);
  *(v0 + 136) = v19;
  *(v0 + 144) = (v18 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v19(v15, v16, v17);
  v20 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v21 = sub_258F0A4E0();
  v22 = [v20 initWithSuiteName_];
  *(v0 + 152) = v22;

  v23 = sub_258F09E80();
  v25 = v24;
  v26 = sub_258F09E90();
  sub_258E4A1E8(v23, v25, v26, v27);
  v86 = v2;

  v35 = sub_258DFBE24(&unk_286A28A58);
  sub_258DE2184(&unk_286A28A78, &qword_27F988B08, &unk_258F0CD90);
  sub_258F09E80();
  v88[0] = sub_258F09E90();
  v88[1] = v36;

  MEMORY[0x259C9DEB0](46, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0xD000000000000016, 0x8000000258F18B60);

  v37 = objc_allocWithZone(sub_258F09EA0());
  v38 = sub_258F09E70();
  *(v0 + 160) = v38;
  v39 = sub_258F09E00();
  *(v0 + 168) = v39;
  v40 = *(v39 - 8);
  *(v0 + 176) = v40;
  v41 = swift_task_alloc();
  *(v0 + 184) = v41;
  v42 = v38;
  sub_258DFA2E0(v35);

  sub_258F09DF0();
  if (v22)
  {
    v43 = *(v0 + 72);
    v44 = swift_task_alloc();
    *(v0 + 192) = v44;
    v45 = *(*v43 + 88);
    v46 = v22;
    v85 = (v45 + *v45);
    v47 = swift_task_alloc();
    *(v0 + 200) = v47;
    *v47 = v0;
    v47[1] = sub_258E49288;

    return v85(v44, v46, v41, v86 + v3, 0xD000000000000030, 0x8000000258F1B200);
  }

  v54 = sub_258F0A350();
  v55 = sub_258F0A820();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_258DD8000, v54, v55, "Can't get user defaults initialized", v56, 2u);
    MEMORY[0x259C9EF40](v56, -1, -1);
  }

  sub_258DE403C();
  v33 = swift_allocError();
  *v57 = 5;
  swift_willThrow();

  (*(v40 + 8))(v41, v39);

  *(v0 + 16) = v33;
  v28 = sub_258F09E20();
  v29 = *(v28 - 8);
  v30 = swift_task_alloc();
  v31 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v32 = (*(v29 + 88))(v30, v28);
    if (MEMORY[0x277D81740] && v32 == *MEMORY[0x277D81740])
    {

      v33 = *(v0 + 16);
      v34 = 3;
LABEL_34:
      v87 = v34;
      goto LABEL_35;
    }

    if (MEMORY[0x277D81748] && v32 == *MEMORY[0x277D81748])
    {

      v33 = *(v0 + 16);
      v34 = 4;
      goto LABEL_34;
    }

    (*(v29 + 8))(v30, v28);
  }

  *(v0 + 24) = v33;
  v49 = sub_258F0A1D0();
  v50 = *(v49 - 8);
  v51 = swift_task_alloc();
  v52 = v33;
  if (swift_dynamicCast())
  {
    v53 = (*(v50 + 88))(v51, v49);
    if (MEMORY[0x277D04530] && v53 == *MEMORY[0x277D04530])
    {

      v33 = *(v0 + 24);
      v34 = 6;
      goto LABEL_34;
    }

    if (MEMORY[0x277D04538] && v53 == *MEMORY[0x277D04538])
    {

      v33 = *(v0 + 24);
      v34 = 7;
      goto LABEL_34;
    }

    if (MEMORY[0x277D04540] && v53 == *MEMORY[0x277D04540])
    {

      v33 = *(v0 + 24);
      v34 = 8;
      goto LABEL_34;
    }

    (*(v50 + 8))(v51, v49);
  }

  *(v0 + 32) = v33;
  v58 = v33;
  if (!swift_dynamicCast())
  {

    *(v0 + 40) = v33;
    v59 = sub_258F09E60();
    v60 = *(v59 - 8);
    v61 = swift_task_alloc();
    v62 = v33;
    if (swift_dynamicCast())
    {

      (*(v60 + 8))(v61, v59);

      v33 = *(v0 + 40);
      v34 = 2;
    }

    else
    {

      *(v0 + 48) = v33;
      v73 = sub_258F09E10();
      v74 = *(v73 - 8);
      v75 = swift_task_alloc();
      v76 = v33;
      if (swift_dynamicCast())
      {

        (*(v74 + 8))(v75, v73);

        v87 = 0;
        v33 = *(v0 + 48);
        goto LABEL_35;
      }

      *(v0 + 56) = v33;
      v77 = v33;
      if (swift_dynamicCast())
      {
        v78 = *(v0 + 152);
        v79 = *(v0 + 136);
        v81 = *(v0 + 112);
        v80 = *(v0 + 120);
        v82 = *(v0 + 96);
        v83 = *(v0 + 104);
        v84 = *(v0 + 64);
        (*(*(v0 + 128) + 8))(v84, v80);

        v79(v84, *MEMORY[0x277D81770], v80);
        (*(v83 + 8))(v81, v82);

        goto LABEL_36;
      }

      v34 = 1;
    }

    goto LABEL_34;
  }

  v87 = *(v0 + 220);
  v33 = *(v0 + 32);
LABEL_35:

  v63 = *(v0 + 152);
  v64 = *(v0 + 128);
  v65 = *(v0 + 136);
  v66 = *(v0 + 120);
  v67 = *(v0 + 216);
  v68 = *(v0 + 64);
  v69 = swift_task_alloc();
  sub_258DE403C();
  v70 = swift_allocError();
  *v71 = v87;

  (*(v64 + 8))(v68, v66);
  *v69 = v70;
  v65(v69, v67, v66);
  (*(v64 + 32))(v68, v69, v66);

LABEL_36:

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_258E49288()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_258E49B24;
  }

  else
  {
    v2 = sub_258E4939C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258E4939C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 152);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v0 + 64);
  (*(v5 + 8))(v6, v4);
  (*(v5 + 32))(v6, v2, v4);

  sub_258E4A3BC(v6, v3);
  v7 = sub_258F09E80();
  v9 = v8;
  v10 = sub_258F09E90();
  sub_258E4A1E8(v7, v9, v10, v11);
  v12 = *(v0 + 160);
  v13 = *(v0 + 152);
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

  if (!v1)
  {

LABEL_28:

    goto LABEL_29;
  }

  *(v0 + 16) = v1;
  v14 = sub_258F09E20();
  v15 = *(v14 - 8);
  v16 = swift_task_alloc();
  v17 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v18 = (*(v15 + 88))(v16, v14);
    if (MEMORY[0x277D81740] && v18 == *MEMORY[0x277D81740])
    {

      v19 = 3;
LABEL_26:
      v53 = v19;
      goto LABEL_27;
    }

    if (MEMORY[0x277D81748] && v18 == *MEMORY[0x277D81748])
    {

      v19 = 4;
      goto LABEL_26;
    }

    (*(v15 + 8))(v16, v14);
  }

  *(v0 + 24) = v1;
  v20 = sub_258F0A1D0();
  v21 = *(v20 - 8);
  v22 = swift_task_alloc();
  v23 = v1;
  if (swift_dynamicCast())
  {
    v24 = (*(v21 + 88))(v22, v20);
    if (MEMORY[0x277D04530] && v24 == *MEMORY[0x277D04530])
    {

      v19 = 6;
      goto LABEL_26;
    }

    if (MEMORY[0x277D04538] && v24 == *MEMORY[0x277D04538])
    {

      v19 = 7;
      goto LABEL_26;
    }

    if (MEMORY[0x277D04540] && v24 == *MEMORY[0x277D04540])
    {

      v19 = 8;
      goto LABEL_26;
    }

    (*(v21 + 8))(v22, v20);
  }

  *(v0 + 32) = v1;
  v25 = v1;
  if (swift_dynamicCast())
  {

    v53 = *(v0 + 220);
LABEL_27:
    v30 = *(v0 + 152);
    v31 = *(v0 + 128);
    v32 = *(v0 + 136);
    v33 = *(v0 + 120);
    v34 = *(v0 + 216);
    v35 = *(v0 + 64);
    v36 = swift_task_alloc();
    sub_258DE403C();
    v37 = swift_allocError();
    *v38 = v53;

    (*(v31 + 8))(v35, v33);
    *v36 = v37;
    v32(v36, v34, v33);
    (*(v31 + 32))(v35, v36, v33);
    goto LABEL_28;
  }

  *(v0 + 40) = v1;
  v26 = sub_258F09E60();
  v27 = *(v26 - 8);
  v28 = swift_task_alloc();
  v29 = v1;
  if (swift_dynamicCast())
  {

    (*(v27 + 8))(v28, v26);

    v19 = 2;
    goto LABEL_26;
  }

  *(v0 + 48) = v1;
  v41 = sub_258F09E10();
  v42 = *(v41 - 8);
  v43 = swift_task_alloc();
  v44 = v1;
  if (swift_dynamicCast())
  {

    (*(v42 + 8))(v43, v41);

    v53 = 0;
    goto LABEL_27;
  }

  *(v0 + 56) = v1;
  v45 = v1;
  if (!swift_dynamicCast())
  {

    v19 = 1;
    goto LABEL_26;
  }

  v46 = *(v0 + 152);
  v47 = *(v0 + 136);
  v48 = *(v0 + 112);
  v49 = *(v0 + 120);
  v50 = *(v0 + 96);
  v51 = *(v0 + 104);
  v52 = *(v0 + 64);
  (*(*(v0 + 128) + 8))(v52, v49);

  v47(v52, *MEMORY[0x277D81770], v49);
  (*(v51 + 8))(v48, v50);

LABEL_29:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_258E49B24()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);

  (*(v3 + 8))(v1, v2);

  v5 = *(v0 + 208);
  *(v0 + 16) = v5;
  v6 = (v0 + 16);
  v7 = sub_258F09E20();
  v8 = *(v7 - 8);
  v9 = swift_task_alloc();
  v10 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v11 = (*(v8 + 88))(v9, v7);
    if (MEMORY[0x277D81740] && v11 == *MEMORY[0x277D81740])
    {

      v5 = *v6;
      v12 = 3;
LABEL_24:
      v46 = v12;
      goto LABEL_25;
    }

    if (MEMORY[0x277D81748] && v11 == *MEMORY[0x277D81748])
    {

      v5 = *v6;
      v12 = 4;
      goto LABEL_24;
    }

    (*(v8 + 8))(v9, v7);
  }

  *(v0 + 24) = v5;
  v13 = sub_258F0A1D0();
  v14 = *(v13 - 8);
  v15 = swift_task_alloc();
  v16 = v5;
  if (swift_dynamicCast())
  {
    v17 = (*(v14 + 88))(v15, v13);
    if (MEMORY[0x277D04530] && v17 == *MEMORY[0x277D04530])
    {

      v5 = *(v0 + 24);
      v12 = 6;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04538] && v17 == *MEMORY[0x277D04538])
    {

      v5 = *(v0 + 24);
      v12 = 7;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04540] && v17 == *MEMORY[0x277D04540])
    {

      v5 = *(v0 + 24);
      v12 = 8;
      goto LABEL_24;
    }

    (*(v14 + 8))(v15, v13);
  }

  *(v0 + 32) = v5;
  v18 = v5;
  if (swift_dynamicCast())
  {

    v46 = *(v0 + 220);
    v5 = *(v0 + 32);
LABEL_25:

    v23 = *(v0 + 152);
    v24 = *(v0 + 128);
    v25 = *(v0 + 136);
    v26 = *(v0 + 120);
    v27 = *(v0 + 216);
    v28 = *(v0 + 64);
    v29 = swift_task_alloc();
    sub_258DE403C();
    v30 = swift_allocError();
    *v31 = v46;

    (*(v24 + 8))(v28, v26);
    *v29 = v30;
    v25(v29, v27, v26);
    (*(v24 + 32))(v28, v29, v26);

    goto LABEL_26;
  }

  *(v0 + 40) = v5;
  v19 = sub_258F09E60();
  v20 = *(v19 - 8);
  v21 = swift_task_alloc();
  v22 = v5;
  if (swift_dynamicCast())
  {

    (*(v20 + 8))(v21, v19);

    v5 = *(v0 + 40);
    v12 = 2;
    goto LABEL_24;
  }

  *(v0 + 48) = v5;
  v34 = sub_258F09E10();
  v35 = *(v34 - 8);
  v36 = swift_task_alloc();
  v37 = v5;
  if (swift_dynamicCast())
  {

    (*(v35 + 8))(v36, v34);

    v46 = 0;
    v5 = *(v0 + 48);
    goto LABEL_25;
  }

  *(v0 + 56) = v5;
  v38 = v5;
  if (!swift_dynamicCast())
  {

    v12 = 1;
    goto LABEL_24;
  }

  v39 = *(v0 + 152);
  v40 = *(v0 + 136);
  v42 = *(v0 + 112);
  v41 = *(v0 + 120);
  v43 = *(v0 + 96);
  v44 = *(v0 + 104);
  v45 = *(v0 + 64);
  (*(*(v0 + 128) + 8))(v45, v41);

  v40(v45, *MEMORY[0x277D81770], v41);
  (*(v44 + 8))(v42, v43);

LABEL_26:

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_258E4A1E8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_258F0A7A0();
  if (result)
  {
    type metadata accessor for DevicePropertiesWorker(0);

    v9 = sub_258F0A350();
    v10 = sub_258F0A800();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_258DE3018(a1, a2, &v13);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_258DE3018(a3, a4, &v13);
      _os_log_impl(&dword_258DD8000, v9, v10, "TaskId: %s, TaskName: %s: asked to stop!", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v12, -1, -1);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    sub_258F0A770();
    sub_258E4B2E4(&qword_27F988BB8, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    sub_258F0A3F0();
    return swift_willThrow();
  }

  return result;
}

void sub_258E4A3BC(uint64_t a1, void *a2)
{
  v44 = a2;
  v3 = sub_258F09A20();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v41 - v14;
  v45 = "DSiriClientEvent object";
  v16 = sub_258F09E50();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v16);
  v21 = (*(v17 + 88))(v20, v16);
  if (MEMORY[0x277D81768] && v21 == *MEMORY[0x277D81768])
  {
    (*(v17 + 8))(v20, v16);
    sub_258F09B50();
    sub_258F09AB0();
    v43 = *(v4 + 8);
    v43(v12, v3);
    v22 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v23 = sub_258F0A4E0();
    v42 = v22;
    [v22 setDateFormat_];

    v24 = sub_258F099A0();
    v25 = sub_258F0A4E0();
    [v44 setValue:v24 forKey:v25];

    type metadata accessor for DevicePropertiesWorker(0);
    (*(v4 + 16))(v8, v15, v3);
    v26 = sub_258F0A350();
    v27 = sub_258F0A810();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v46 = v29;
      *v28 = 136315394;
      sub_258E4B2E4(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v30 = sub_258F0AD60();
      v32 = v31;
      v33 = v8;
      v34 = v43;
      v43(v33, v3);
      v35 = sub_258DE3018(v30, v32, &v46);

      *(v28 + 4) = v35;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_258DE3018(0xD000000000000021, v45 | 0x8000000000000000, &v46);
      _os_log_impl(&dword_258DD8000, v26, v27, "Wrote %s to %s in UserDefaults", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v29, -1, -1);
      MEMORY[0x259C9EF40](v28, -1, -1);

      v34(v15, v3);
    }

    else
    {

      v40 = v43;
      v43(v8, v3);
      v40(v15, v3);
    }
  }

  else
  {
    (*(v17 + 8))(v20, v16);
    type metadata accessor for DevicePropertiesWorker(0);
    v36 = sub_258F0A350();
    v37 = sub_258F0A810();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v46 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_258DE3018(0xD000000000000021, v45 | 0x8000000000000000, &v46);
      _os_log_impl(&dword_258DD8000, v36, v37, "DevicePropertiesPlugin run was not successful. Not updating  %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x259C9EF40](v39, -1, -1);
      MEMORY[0x259C9EF40](v38, -1, -1);
    }
  }
}

uint64_t sub_258E4A964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_258F0A370();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E4AA2C, 0, 0);
}

uint64_t sub_258E4AA2C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0);
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  (*(v2 + 16))(v1, v6, v4);
  type metadata accessor for DevicePropertiesPlugin(0);
  swift_allocObject();

  v10 = sub_258E458A8(v7, v1, v5, v3);

  *(v0 + 16) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989900, &unk_258F10F68);
  swift_allocObject();
  v11 = sub_258F09E40();
  *(v0 + 104) = v11;
  if (v11)
  {
    v12 = *(v0 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0);
    v13 = swift_task_alloc();
    *(v0 + 112) = v13;
    v14 = sub_258F09E00();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v13, v12, v14);
    (*(v15 + 56))(v13, 0, 1, v14);
    v16 = swift_task_alloc();
    *(v0 + 120) = v16;
    *v16 = v0;
    v16[1] = sub_258E4ADA8;

    return MEMORY[0x2821ED078](v8, v13);
  }

  else
  {
    v17 = *(v0 + 24);
    v18 = sub_258F09E50();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v8, 1, 1, v18);
    (*(v19 + 104))(v17, *MEMORY[0x277D81758], v18);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_258E4ADA8()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  sub_258DE2184(*(v2 + 112), &qword_27F988B20, &unk_258F0CDB0);

  if (v0)
  {
    v3 = sub_258E4B01C;
  }

  else
  {

    v3 = sub_258E4AF14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E4AF14()
{
  v1 = v0[12];
  v2 = v0[3];
  v3 = sub_258F09E50();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  (*(v4 + 32))(v2, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_258E4B01C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_258E4B0AC()
{
  result = qword_27F989908;
  if (!qword_27F989908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989908);
  }

  return result;
}

uint64_t dispatch thunk of DevicePropertiesExecutor.executeDevicePropertiesPlugin(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 88) + **(*v6 + 88));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_258DE1DC4;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_258E4B2E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DeviceSegmentsCohortsImpl.deinit()
{
  sub_258E4B7F0(v0 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_eventMetadata);

  return v0;
}

uint64_t DeviceSegmentsCohortsImpl.__deallocating_deinit()
{
  sub_258E4B7F0(v0 + OBJC_IVAR____TtC16MetricsFramework25DeviceSegmentsCohortsImpl_eventMetadata);

  return swift_deallocClassInstance();
}

id static DeviceSegments.toBiomeEvent(deviceSegments:)(uint64_t *a1)
{
  if ((*(a1 + 29) & 1) == 0)
  {
    v5 = *(a1 + 28);
    v6 = *(a1 + 6);
    v7 = a1[1];
    v8 = a1[2];
    if ((*a1 & 0x100000000) != 0)
    {
      v4 = 0;
      if ((v7 & 0x100000000) != 0)
      {
LABEL_5:
        v3 = 0;
        v9 = v6 | (v5 << 32);
        if ((v8 & 0x100000000) != 0)
        {
          goto LABEL_6;
        }

        goto LABEL_10;
      }
    }

    else
    {
      v4 = sub_258F0AE20();
      if ((v7 & 0x100000000) != 0)
      {
        goto LABEL_5;
      }
    }

    v3 = sub_258F0AE20();
    v9 = v6 | (v5 << 32);
    if ((v8 & 0x100000000) != 0)
    {
LABEL_6:
      v2 = 0;
      if ((v9 & 0x100000000) != 0)
      {
LABEL_7:
        v1 = 0;
        goto LABEL_12;
      }

LABEL_11:
      v1 = sub_258F0AEB0();
      goto LABEL_12;
    }

LABEL_10:
    v2 = sub_258F0AEB0();
    if ((v9 & 0x100000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = 0;
LABEL_12:
  v10 = [objc_allocWithZone(MEMORY[0x277CF1508]) initWithSegmentType:v4 segmentDataAvailabilityState:v3 daysWithTwoValidAssistantTurnsPerWeek:v2 daysWithTwoAssistantSpeechRequestsPerWeek:v1];

  return v10;
}

id static DeviceCohorts.toBiomeEvent(deviceCohorts:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  if (v3 >= 2)
  {
    v6 = v3;
    [v6 startTimestampInSecondsSince1970];
    [v6 numberOfSeconds];
    v5 = sub_258F0AEC0();
    v4 = sub_258F0AEB0();
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  v7 = [objc_allocWithZone(MEMORY[0x277CF1518]) initWithStartTimestampInSecondsSince1970:v5 numberOfSeconds:v4];

  if (v3 != 1)
  {
    if ((v2 & 0x100000000) != 0)
    {
      v9 = 0;
      if ((v1 & 0x100000000) != 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v9 = sub_258F0AE20();
      if ((v1 & 0x100000000) != 0)
      {
LABEL_8:
        v8 = 0;
        goto LABEL_11;
      }
    }

    v8 = sub_258F0AE20();
    goto LABEL_11;
  }

  v8 = 0;
  v9 = 0;
LABEL_11:
  v10 = objc_allocWithZone(MEMORY[0x277CF1500]);
  v11 = v7;
  v12 = [v10 initWithTimeInterval:v11 cohortType:v9 cohortDataAvailabilityState:v8];

  return v12;
}

BOOL _s16MetricsFramework13DeviceCohortsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 4);
  v4 = *(a2 + 16);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) == *(a2 + 8))
    {
      v6 = *(a2 + 12);
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  result = (v2 | v4) == 0;
  if (v2)
  {
    if (v4)
    {
      sub_258E4BC28();
      v7 = v4;
      v8 = v2;
      v9 = sub_258F0A8E0();

      return v9 & 1;
    }
  }

  return result;
}

uint64_t _s16MetricsFramework14DeviceSegmentsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  v7 = *(a1 + 28);
  v8 = *(a2 + 20);
  v9 = *(a2 + 28);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (v2 == *(a2 + 8))
    {
      v12 = *(a2 + 12);
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (v7 & 1 | ((v8 & 1) == 0))
    {
      return v8 & v9;
    }
  }

  else
  {
    if (v4 == *(a2 + 16))
    {
      v13 = *(a2 + 20);
    }

    else
    {
      v13 = 1;
    }

    if ((v13 | v7))
    {
      return (v13 ^ 1) & v9;
    }
  }

  return (v6 == *(a2 + 24)) & ~v9;
}

uint64_t sub_258E4B7F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy29_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_258E4B8BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 29))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258E4B8DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
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

  *(result + 29) = v3;
  return result;
}

uint64_t sub_258E4B920(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_258E4B97C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_258E4BA28(uint64_t a1)
{
  sub_258E4BAF4(319);
  if (v1 <= 0x3F)
  {
    sub_258E3DC64(319, &qword_27F989938, &qword_27F989940, &qword_258F111C8);
    if (v2 <= 0x3F)
    {
      sub_258E3DC64(319, &qword_27F989948, &qword_27F989950, &unk_258F111D0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_258E4BAF4(uint64_t a1)
{
  if (!qword_27F9897C0)
  {
    type metadata accessor for EventMetadata(255);
    v1 = sub_258F0A920();
    if (!v2)
    {
      atomic_store(v1, &qword_27F9897C0);
    }
  }
}

void sub_258E4BB74(uint64_t a1)
{
  sub_258E4BAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_258E4BC28()
{
  result = qword_280CC49E0;
  if (!qword_280CC49E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CC49E0);
  }

  return result;
}

uint64_t EventMetadata.init(oddIdUUID:deviceAggregationId:userAggregationId:eventTimeStampInMSSince1970:timeInterval:userAggregationIdRotationTimestampInMs:userAggregationIdExpirationTimestampInMs:eventOrigin:isLongLivedIDUploadDisabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, int a12, int a13, char a14, __int16 a15, char a16)
{
  sub_258E3A468(a1, a9);
  v22 = type metadata accessor for EventMetadata(0);
  sub_258E3A468(a2, a9 + v22[5]);
  result = sub_258E3A468(a3, a9 + v22[6]);
  v24 = a9 + v22[7];
  *v24 = a4;
  *(v24 + 8) = a5 & 1;
  *(a9 + v22[8]) = a6;
  v25 = a9 + v22[9];
  *v25 = a7;
  *(v25 + 8) = a8 & 1;
  v26 = a9 + v22[10];
  *v26 = a10;
  *(v26 + 8) = a11 & 1;
  v27 = a9 + v22[11];
  *v27 = a13;
  *(v27 + 4) = a14 & 1;
  *(a9 + v22[12]) = a16;
  return result;
}

id EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v53 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v53 - v13;
  v15 = sub_258F09A70();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v56 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v53 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v53 - v25;
  v27 = [objc_allocWithZone(MEMORY[0x277D592B0]) init];
  if (v27)
  {
    v54 = v7;
    v55 = a1;
    v58 = v1;
    sub_258DE20C0(v1, v14, &qword_27F988730, &unk_258F0F8E0);
    v57 = *(v16 + 48);
    if (v57(v14, 1, v15) == 1)
    {
      sub_258DE2184(v14, &qword_27F988730, &unk_258F0F8E0);
    }

    else
    {
      (*(v16 + 32))(v26, v14, v15);
      v28 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v29 = sub_258F09A50();
      v30 = [v28 initWithNSUUID_];

      [v27 setOddId_];
      (*(v16 + 8))(v26, v15);
    }

    v31 = type metadata accessor for EventMetadata(0);
    sub_258DE20C0(v58 + v31[5], v11, &qword_27F988730, &unk_258F0F8E0);
    v32 = v57(v11, 1, v15);
    v33 = v54;
    if (v32 == 1)
    {
      sub_258DE2184(v11, &qword_27F988730, &unk_258F0F8E0);
      sub_258F0A810();
      sub_258DEB8C8(0, &qword_27F988A08, 0x277D86200);
      v34 = sub_258F0A910();
      sub_258F0A290();

      v35 = &selRef_setSampledErrorAsset_;
    }

    else
    {
      (*(v16 + 32))(v23, v11, v15);
      v36 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v37 = sub_258F09A50();
      v35 = &selRef_setSampledErrorAsset_;
      v38 = [v36 initWithNSUUID_];

      [v27 setDeviceAggregationId_];
      (*(v16 + 8))(v23, v15);
    }

    sub_258DE20C0(v58 + v31[6], v33, &qword_27F988730, &unk_258F0F8E0);
    if (v57(v33, 1, v15) == 1)
    {
      sub_258DE2184(v33, &qword_27F988730, &unk_258F0F8E0);
      sub_258F0A810();
      sub_258DEB8C8(0, &qword_27F988A08, 0x277D86200);
      v39 = sub_258F0A910();
      sub_258F0A290();
    }

    else
    {
      v40 = v56;
      (*(v16 + 32))(v56, v33, v15);
      v41 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v42 = sub_258F09A50();
      v43 = [v41 v35[77]];

      [v27 setUserAggregationId_];
      (*(v16 + 8))(v40, v15);
    }

    v44 = v55;
    v45 = v58;
    v46 = v58 + v31[10];
    if (*(v46 + 8))
    {
      sub_258F0A810();
      sub_258DEB8C8(0, &qword_27F988A08, 0x277D86200);
      v47 = sub_258F0A910();
      sub_258F0A290();
    }

    else
    {
      [v27 setUserAggregationIdExpirationTimestampMs_];
    }

    v48 = v45 + v31[9];
    if (*(v48 + 8))
    {
      sub_258F0A810();
      sub_258DEB8C8(0, &qword_27F988A08, 0x277D86200);
      v49 = sub_258F0A910();
      sub_258F0A290();
    }

    else
    {
      [v27 setUserAggregationIdRotationTimestampMs_];
    }

    v50 = v45 + v31[7];
    if ((*(v50 + 8) & 1) == 0)
    {
      [v27 setEventTimestampInMsSince1970_];
    }

    if (*(v45 + v31[8]))
    {
      [v27 setAggregationInterval_];
    }

    if ((v44 & 0x100000000) == 0)
    {
      [v27 setEventOrigin_];
    }

    v51 = *(v45 + v31[12]);
    if (v51 != 2)
    {
      [v27 setIsLongLivedIDUploadDisabled_];
    }
  }

  return v27;
}

id static ODDSiriSchemaODDTimeInterval.toBiomeEvent(timeInterval:)(void *a1)
{
  if (a1)
  {
    [a1 startTimestampInSecondsSince1970];
    [a1 numberOfSeconds];
    v2 = sub_258F0AEC0();
    v3 = sub_258F0AEB0();
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CF1518]) initWithStartTimestampInSecondsSince1970:v2 numberOfSeconds:v3];

  return v4;
}

uint64_t EventMetadata.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_258F09A70();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v31 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v31 - v17;
  sub_258DE20C0(v2, &v31 - v17, &qword_27F988730, &unk_258F0F8E0);
  v19 = *(v4 + 48);
  if (v19(v18, 1, v3) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    (*(v4 + 32))(v7, v18, v3);
    sub_258F0AE60();
    sub_258E563E0(&qword_27F988CC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_258F0A450();
    (*(v4 + 8))(v7, v3);
  }

  v20 = type metadata accessor for EventMetadata(0);
  sub_258DE20C0(v2 + v20[5], v15, &qword_27F988730, &unk_258F0F8E0);
  if (v19(v15, 1, v3) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    sub_258F0AE60();
    sub_258E563E0(&qword_27F988CC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_258F0A450();
    (*(v4 + 8))(v7, v3);
  }

  v21 = v32;
  sub_258DE20C0(v2 + v20[6], v32, &qword_27F988730, &unk_258F0F8E0);
  if (v19(v21, 1, v3) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    (*(v4 + 32))(v7, v21, v3);
    sub_258F0AE60();
    sub_258E563E0(&qword_27F988CC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_258F0A450();
    (*(v4 + 8))(v7, v3);
  }

  v22 = v2 + v20[9];
  if (*(v22 + 8) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    v23 = *v22;
    sub_258F0AE60();
    MEMORY[0x259C9E740](v23);
  }

  v24 = v2 + v20[10];
  if (*(v24 + 8) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    v25 = *v24;
    sub_258F0AE60();
    MEMORY[0x259C9E740](v25);
  }

  v26 = v2 + v20[7];
  if (*(v26 + 8) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    v27 = *v26;
    sub_258F0AE60();
    MEMORY[0x259C9E740](v27);
  }

  v28 = *(v2 + v20[8]);
  sub_258F0AE60();
  if (v28)
  {
    v29 = v28;
    sub_258F0A8F0();
  }

  if (*(v2 + v20[11] + 4) == 1)
  {
    sub_258F0AE60();
  }

  else
  {
    sub_258F0AE60();
    sub_258F0AE70();
  }

  if (*(v2 + v20[12]) != 2)
  {
    sub_258F0AE60();
  }

  return sub_258F0AE60();
}

uint64_t EventMetadata.hashValue.getter()
{
  sub_258F0AE40();
  EventMetadata.hash(into:)(v1);
  return sub_258F0AE90();
}

uint64_t sub_258E4CAE4()
{
  sub_258F0AE40();
  EventMetadata.hash(into:)(v1);
  return sub_258F0AE90();
}

uint64_t sub_258E4CB28(uint64_t a1)
{
  sub_258F0AE40();
  EventMetadata.hash(into:)(v2);
  return sub_258F0AE90();
}

uint64_t static ProductId.fromString(productIdString:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_12;
  }

  v4 = result;
  result = 0x4E41545349535341;
  if (v4 != 0x4E41545349535341 || a2 != 0xE900000000000054)
  {
    v6 = a3;
    result = sub_258F0AD80();
    if (result)
    {
      v5 = 1;
      a3 = v6;
      goto LABEL_13;
    }

    result = 0x4F49544154434944;
    if (v4 == 0x4F49544154434944 && a2 == 0xE90000000000004ELL)
    {
      v5 = 2;
      a3 = v6;
      goto LABEL_13;
    }

    result = sub_258F0AD80();
    a3 = v6;
    if (result)
    {
      v5 = 2;
      goto LABEL_13;
    }

LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = 1;
LABEL_13:
  *a3 = v5;
  return result;
}

MetricsFramework::ProductId_optional __swiftcall ProductId.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DeviceUsageMetricsBuilderImpl.__allocating_init()()
{
  v0 = swift_allocObject();
  DeviceUsageMetricsBuilderImpl.init()();
  return v0;
}

uint64_t DeviceUsageMetricsBuilderImpl.init()()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_eventMetadata;
  v2 = type metadata accessor for EventMetadata(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_assistantId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_deviceType);
  *v5 = 0;
  v5[1] = 0;
  v6 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_programCode;
  *v6 = 0;
  *(v6 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_productId) = 3;
  v7 = (v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_systemBuild);
  *v7 = 0;
  v7[1] = 0;
  v8 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dataSharingOptInStatus;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_viewInterface;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = (v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceVendorId);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceProductId);
  *v11 = 0;
  v11[1] = 0;
  v12 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrLocation;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_nlLocation;
  *v13 = 0;
  *(v13 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale) = 0;
  *(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale) = 0;
  v14 = (v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_subDomain);
  *v14 = 0;
  v14[1] = 0;
  v15 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_totalTurnCount;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_validTurnCount;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriTasksStarted;
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriTasksCompleted;
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_flowTasksStarted;
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_flowTasksCompleted;
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_reliabilityRequestCount;
  *v21 = 0;
  *(v21 + 4) = 1;
  v22 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_reliabilityTurnCount;
  *v22 = 0;
  *(v22 + 4) = 1;
  v23 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_clientErrorCount;
  *v23 = 0;
  *(v23 + 4) = 1;
  v24 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_undesiredResponseCount;
  *v24 = 0;
  *(v24 + 4) = 1;
  v25 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_fatalResponseCount;
  *v25 = 0;
  *(v25 + 4) = 1;
  v26 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_failureResponseCount;
  *v26 = 0;
  *(v26 + 4) = 1;
  v27 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriUnavailableResponseCount;
  *v27 = 0;
  *(v27 + 4) = 1;
  v28 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrTurnCount;
  *v28 = 0;
  *(v28 + 4) = 1;
  v29 = (v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriResponseId);
  *v29 = 0;
  v29[1] = 0;
  v30 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_responseCategory;
  *v30 = 0;
  *(v30 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_turnIds) = 0;
  *(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_isIntelligenceEngineRequest) = 2;
  *(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_ieRouting) = 0;
  v31 = v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_invocationSource;
  *v31 = 0;
  *(v31 + 4) = 1;
  return v0;
}

uint64_t sub_258E4CFF0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v15 - v11;
  sub_258DE20C0(a1, &v15 - v11, a2, a3);
  v13 = *a4;
  swift_beginAccess();
  sub_258E2EA70(v12, v4 + v13, a2, a3);
  swift_endAccess();
}

uint64_t sub_258E4D0D4(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_programCode;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D118(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dataSharingOptInStatus;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D138(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_viewInterface;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D170(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrLocation;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D190(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_nlLocation;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D1B0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale);
  *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale) = a1;
  v3 = a1;
}

uint64_t sub_258E4D1F8(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale);
  *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale) = a1;
  v3 = a1;
}

uint64_t sub_258E4D24C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_totalTurnCount;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D26C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_validTurnCount;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D28C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriTasksStarted;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D2AC(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriTasksCompleted;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D2CC(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_flowTasksStarted;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D2EC(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_flowTasksCompleted;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D30C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_reliabilityRequestCount;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D32C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_reliabilityTurnCount;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D34C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_clientErrorCount;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D36C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_undesiredResponseCount;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D38C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_fatalResponseCount;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D3AC(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_failureResponseCount;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D3CC(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriUnavailableResponseCount;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D3EC(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrTurnCount;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D418(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  *v4 = a1;
  v4[1] = a2;
}

uint64_t sub_258E4D468(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_responseCategory;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

uint64_t sub_258E4D4B4(uint64_t a1, void *a2)
{
  *(v2 + *a2) = a1;
}

uint64_t sub_258E4D4FC(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_invocationSource;
  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;
}

double sub_258E4D51C@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_eventMetadata;
  swift_beginAccess();
  sub_258DE20C0(v1 + v3, a1, &qword_27F9894E0, &unk_258F106A0);
  v4 = OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_assistantId;
  swift_beginAccess();
  v5 = type metadata accessor for DeviceUsageMetrics(0);
  sub_258DE20C0(v1 + v4, a1 + v5[5], &qword_27F988730, &unk_258F0F8E0);
  v6 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_programCode);
  v7 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_programCode + 4);
  v8 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_productId);
  v10 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_systemBuild);
  v9 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_systemBuild + 8);
  v79 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_deviceType + 8);
  v11 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dataSharingOptInStatus);
  v12 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dataSharingOptInStatus + 4);
  v13 = (v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_viewInterface);
  v14 = (a1 + v5[6]);
  *v14 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_deviceType);
  v14[1] = v79;
  v15 = *v13;
  LOBYTE(v13) = *(v13 + 4);
  v16 = a1 + v5[7];
  *v16 = v6;
  v17 = (v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceVendorId);
  *(v16 + 4) = v7;
  v18 = *v17;
  v19 = v17[1];
  *(a1 + v5[8]) = v8;
  v20 = (v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_audioInterfaceProductId);
  v21 = (a1 + v5[9]);
  *v21 = v10;
  v21[1] = v9;
  v22 = *v20;
  v23 = v20[1];
  v24 = a1 + v5[10];
  *v24 = v11;
  v25 = (v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrLocation);
  *(v24 + 4) = v12;
  v26 = *v25;
  LOBYTE(v25) = *(v25 + 4);
  v27 = a1 + v5[11];
  *v27 = v15;
  v28 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_nlLocation;
  *(v27 + 4) = v13;
  LODWORD(v27) = *v28;
  LOBYTE(v28) = *(v28 + 4);
  v29 = (a1 + v5[12]);
  *v29 = v18;
  v29[1] = v19;
  v30 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriInputLocale);
  v31 = (a1 + v5[13]);
  *v31 = v22;
  v31[1] = v23;
  v32 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_dictationLocale);
  v33 = a1 + v5[14];
  *v33 = v26;
  v34 = (v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_subDomain);
  *(v33 + 4) = v25;
  v35 = *v34;
  v36 = v34[1];
  v37 = a1 + v5[15];
  *v37 = v27;
  v38 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_totalTurnCount;
  *(v37 + 4) = v28;
  LODWORD(v37) = *v38;
  *(a1 + v5[16]) = v30;
  *(a1 + v5[17]) = v32;
  LOBYTE(v38) = *(v38 + 4);
  v39 = (a1 + v5[18]);
  *v39 = v35;
  v39[1] = v36;
  v40 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_validTurnCount;
  v41 = a1 + v5[19];
  *v41 = v37;
  LODWORD(v37) = *v40;
  LOBYTE(v40) = *(v40 + 4);
  *(v41 + 4) = v38;
  v42 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriTasksStarted;
  v43 = a1 + v5[20];
  *v43 = v37;
  LODWORD(v37) = *v42;
  LOBYTE(v42) = *(v42 + 4);
  *(v43 + 4) = v40;
  v44 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriTasksCompleted;
  v45 = a1 + v5[21];
  *v45 = v37;
  LODWORD(v37) = *v44;
  LOBYTE(v44) = *(v44 + 4);
  *(v45 + 4) = v42;
  v46 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_flowTasksStarted;
  v47 = a1 + v5[22];
  *v47 = v37;
  LODWORD(v37) = *v46;
  LOBYTE(v46) = *(v46 + 4);
  *(v47 + 4) = v44;
  v48 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_flowTasksCompleted;
  v49 = a1 + v5[23];
  *v49 = v37;
  LODWORD(v37) = *v48;
  LOBYTE(v48) = *(v48 + 4);
  *(v49 + 4) = v46;
  v50 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_reliabilityRequestCount;
  v51 = a1 + v5[24];
  *v51 = v37;
  LODWORD(v37) = *v50;
  LOBYTE(v50) = *(v50 + 4);
  *(v51 + 4) = v48;
  v52 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_reliabilityTurnCount;
  v53 = a1 + v5[25];
  *v53 = v37;
  LODWORD(v37) = *v52;
  LOBYTE(v52) = *(v52 + 4);
  *(v53 + 4) = v50;
  v54 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_clientErrorCount;
  v55 = a1 + v5[26];
  *v55 = v37;
  LODWORD(v37) = *v54;
  LOBYTE(v54) = *(v54 + 4);
  *(v55 + 4) = v52;
  v56 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_undesiredResponseCount;
  v57 = a1 + v5[27];
  *v57 = v37;
  LODWORD(v37) = *v56;
  LOBYTE(v56) = *(v56 + 4);
  *(v57 + 4) = v54;
  v58 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_fatalResponseCount;
  v59 = a1 + v5[28];
  *v59 = v37;
  LODWORD(v37) = *v58;
  LOBYTE(v58) = *(v58 + 4);
  *(v59 + 4) = v56;
  v60 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_failureResponseCount;
  v61 = a1 + v5[29];
  *v61 = v37;
  LODWORD(v37) = *v60;
  LOBYTE(v60) = *(v60 + 4);
  *(v61 + 4) = v58;
  v62 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriUnavailableResponseCount;
  v63 = a1 + v5[30];
  *v63 = v37;
  LODWORD(v37) = *v62;
  LOBYTE(v62) = *(v62 + 4);
  *(v63 + 4) = v60;
  v64 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_asrTurnCount;
  v65 = a1 + v5[31];
  *v65 = v37;
  LODWORD(v37) = *v64;
  LOBYTE(v64) = *(v64 + 4);
  *(v65 + 4) = v62;
  v66 = (v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_siriResponseId);
  v67 = a1 + v5[32];
  *v67 = v37;
  v68 = *v66;
  v69 = v66[1];
  *(v67 + 4) = v64;
  v70 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_responseCategory;
  v71 = (a1 + v5[33]);
  *v71 = v68;
  v71[1] = v69;
  LODWORD(v68) = *v70;
  LOBYTE(v70) = *(v70 + 4);
  v72 = a1 + v5[34];
  *v72 = v68;
  v73 = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_turnIds);
  *(v72 + 4) = v70;
  LOBYTE(v68) = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_isIntelligenceEngineRequest);
  *(a1 + v5[35]) = v73;
  *(a1 + v5[36]) = v68;
  v74 = v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_invocationSource;
  *(a1 + v5[37]) = *(v1 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_ieRouting);
  v75 = a1 + v5[38];
  *v75 = *v74;
  *(v75 + 4) = *(v74 + 4);

  v76 = v30;
  v77 = v32;

  return result;
}

uint64_t DeviceUsageMetricsBuilderImpl.deinit()
{
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_eventMetadata, &qword_27F9894E0, &unk_258F106A0);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_assistantId, &qword_27F988730, &unk_258F0F8E0);

  return v0;
}

uint64_t DeviceUsageMetricsBuilderImpl.__deallocating_deinit()
{
  DeviceUsageMetricsBuilderImpl.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_258E4DBE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, void *a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v18 - v13;
  v15 = *v5;
  sub_258DE20C0(a1, &v18 - v13, a2, a3);
  v16 = *a4;
  swift_beginAccess();
  sub_258E2EA70(v14, v15 + v16, a2, a3);
  swift_endAccess();
  *a5 = v15;
}

uint64_t sub_258E4DCE4@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  *(v3 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_productId) = *a1;
  *a2 = v3;
}

uint64_t sub_258E4DD70@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = *(v6 + *a2);
  *(v6 + *a2) = a1;

  *a3 = v6;
  v8 = a1;
}

uint64_t sub_258E4DE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *v4;
  v7 = (v6 + *a3);
  *v7 = a1;
  v7[1] = a2;

  *a4 = v6;
}

uint64_t sub_258E4DF0C@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v3 = *v2;
  *(v3 + OBJC_IVAR____TtC16MetricsFramework29DeviceUsageMetricsBuilderImpl_isIntelligenceEngineRequest) = a1;
  *a2 = v3;
}

uint64_t sub_258E4DF34@<X0>(uint64_t a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v5 = *v3;
  *(v5 + *a2) = a1;

  *a3 = v5;
}

uint64_t sub_258E4DFA0@<X0>(uint64_t a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = *v3;
  v5 = *v3 + *a2;
  *v5 = a1;
  *(v5 + 4) = BYTE4(a1) & 1;
  *a3 = v4;
}

id sub_258E4E050(void *a1, Class *a2)
{
  if (a1)
  {
    [a1 languageCode];
    v4 = sub_258F0AE20();
    [a1 countryCode];
    v5 = sub_258F0AE20();
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = [objc_allocWithZone(*a2) initWithLanguageCode:v4 countryCode:v5];

  return v6;
}

id sub_258E4E0E4(void *a1)
{
  v1 = a1;
  [v1 languageCode];
  sub_258F0A8B0();
  MEMORY[0x259C9DEB0](95, 0xE100000000000000);
  [v1 countryCode];
  v2 = sub_258F0A870();
  MEMORY[0x259C9DEB0](v2);

  v3 = sub_258F0A4E0();

  return v3;
}

uint64_t SISchemaISOLocale.description.getter()
{
  [v0 languageCode];
  v3 = sub_258F0A8B0();
  MEMORY[0x259C9DEB0](95, 0xE100000000000000);
  [v0 countryCode];
  v1 = sub_258F0A870();
  MEMORY[0x259C9DEB0](v1);

  return v3;
}

uint64_t _s16MetricsFramework13EventMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_258F09A70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v90 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v86 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v88 = &v86 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v86 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989AE8, &qword_258F114B8);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v87 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v86 - v24;
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v86 - v28;
  v91 = v27;
  v92 = a1;
  v30 = *(v27 + 48);
  sub_258DE20C0(a1, &v86 - v28, &qword_27F988730, &unk_258F0F8E0);
  sub_258DE20C0(a2, &v29[v30], &qword_27F988730, &unk_258F0F8E0);
  v93 = v5;
  v31 = *(v5 + 48);
  if (v31(v29, 1, v4) == 1)
  {
    if (v31(&v29[v30], 1, v4) == 1)
    {
      v89 = a2;
      sub_258DE2184(v29, &qword_27F988730, &unk_258F0F8E0);
      goto LABEL_8;
    }

LABEL_6:
    v32 = v29;
LABEL_21:
    sub_258DE2184(v32, &qword_27F989AE8, &qword_258F114B8);
    goto LABEL_22;
  }

  sub_258DE20C0(v29, v17, &qword_27F988730, &unk_258F0F8E0);
  if (v31(&v29[v30], 1, v4) == 1)
  {
    (*(v93 + 8))(v17, v4);
    goto LABEL_6;
  }

  v89 = a2;
  v33 = v93;
  v34 = v90;
  (*(v93 + 32))(v90, &v29[v30], v4);
  sub_258E563E0(&qword_27F988CD0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v35 = sub_258F0A4B0();
  v36 = *(v33 + 8);
  v36(v34, v4);
  v36(v17, v4);
  sub_258DE2184(v29, &qword_27F988730, &unk_258F0F8E0);
  if ((v35 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v37 = type metadata accessor for EventMetadata(0);
  v38 = *(v37 + 20);
  v39 = *(v91 + 48);
  sub_258DE20C0(v92 + v38, v25, &qword_27F988730, &unk_258F0F8E0);
  v40 = v89;
  sub_258DE20C0(v89 + v38, &v25[v39], &qword_27F988730, &unk_258F0F8E0);
  if (v31(v25, 1, v4) == 1)
  {
    if (v31(&v25[v39], 1, v4) == 1)
    {
      v89 = v40;
      sub_258DE2184(v25, &qword_27F988730, &unk_258F0F8E0);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v41 = v88;
  sub_258DE20C0(v25, v88, &qword_27F988730, &unk_258F0F8E0);
  if (v31(&v25[v39], 1, v4) == 1)
  {
    (*(v93 + 8))(v41, v4);
LABEL_13:
    v32 = v25;
    goto LABEL_21;
  }

  v89 = v40;
  v42 = v93;
  v43 = v37;
  v44 = v90;
  (*(v93 + 32))(v90, &v25[v39], v4);
  sub_258E563E0(&qword_27F988CD0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v45 = sub_258F0A4B0();
  v46 = *(v42 + 8);
  v47 = v44;
  v37 = v43;
  v46(v47, v4);
  v46(v41, v4);
  sub_258DE2184(v25, &qword_27F988730, &unk_258F0F8E0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v48 = v37;
  v49 = *(v37 + 24);
  v50 = *(v91 + 48);
  v51 = v87;
  sub_258DE20C0(v92 + v49, v87, &qword_27F988730, &unk_258F0F8E0);
  v52 = v89 + v49;
  v53 = v89;
  sub_258DE20C0(v52, v51 + v50, &qword_27F988730, &unk_258F0F8E0);
  if (v31(v51, 1, v4) == 1)
  {
    if (v31((v51 + v50), 1, v4) == 1)
    {
      sub_258DE2184(v51, &qword_27F988730, &unk_258F0F8E0);
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v54 = v86;
  sub_258DE20C0(v51, v86, &qword_27F988730, &unk_258F0F8E0);
  if (v31((v51 + v50), 1, v4) == 1)
  {
    (*(v93 + 8))(v54, v4);
LABEL_20:
    v32 = v51;
    goto LABEL_21;
  }

  v57 = v93;
  v58 = v90;
  (*(v93 + 32))(v90, v51 + v50, v4);
  sub_258E563E0(&qword_27F988CD0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v59 = sub_258F0A4B0();
  v60 = *(v57 + 8);
  v60(v58, v4);
  v60(v54, v4);
  sub_258DE2184(v51, &qword_27F988730, &unk_258F0F8E0);
  if ((v59 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  v61 = v48[9];
  v62 = (v92 + v61);
  v63 = *(v92 + v61 + 8);
  v64 = (v53 + v61);
  v55 = *(v53 + v61 + 8);
  if (v63)
  {
    if (!v55)
    {
      return v55 & 1;
    }
  }

  else
  {
    if (*v62 != *v64)
    {
      LOBYTE(v55) = 1;
    }

    if (v55)
    {
      goto LABEL_22;
    }
  }

  v65 = v48[10];
  v66 = (v92 + v65);
  v67 = *(v92 + v65 + 8);
  v68 = (v53 + v65);
  v55 = *(v53 + v65 + 8);
  if (v67)
  {
    if (!v55)
    {
      return v55 & 1;
    }
  }

  else
  {
    if (*v66 != *v68)
    {
      LOBYTE(v55) = 1;
    }

    if (v55)
    {
      goto LABEL_22;
    }
  }

  v69 = v48[7];
  v70 = (v92 + v69);
  v71 = *(v92 + v69 + 8);
  v72 = (v53 + v69);
  v55 = *(v53 + v69 + 8);
  if (v71)
  {
    if (!v55)
    {
      return v55 & 1;
    }
  }

  else
  {
    if (*v70 != *v72)
    {
      LOBYTE(v55) = 1;
    }

    if (v55)
    {
      goto LABEL_22;
    }
  }

  v73 = v48[8];
  v74 = *(v92 + v73);
  v75 = *(v53 + v73);
  if (v74)
  {
    if (!v75)
    {
      goto LABEL_22;
    }

    sub_258DEB8C8(0, &qword_280CC49E0, 0x277D593F8);
    v76 = v75;
    v77 = v74;
    v78 = sub_258F0A8E0();

    if ((v78 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v75)
  {
    goto LABEL_22;
  }

  v79 = v48[11];
  v80 = (v92 + v79);
  v81 = *(v92 + v79 + 4);
  v82 = (v53 + v79);
  v55 = *(v53 + v79 + 4);
  if (v81)
  {
    if (!v55)
    {
      return v55 & 1;
    }

    goto LABEL_54;
  }

  if (*v80 != *v82)
  {
    LOBYTE(v55) = 1;
  }

  if (v55)
  {
LABEL_22:
    LOBYTE(v55) = 0;
    return v55 & 1;
  }

LABEL_54:
  v83 = v48[12];
  v84 = *(v92 + v83);
  v85 = *(v53 + v83);
  LOBYTE(v55) = v85 == 2 && v84 == 2;
  if (v84 != 2 && v85 != 2)
  {
    LOBYTE(v55) = v85 ^ v84 ^ 1;
  }

  return v55 & 1;
}

id _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(uint64_t a1, uint64_t a2)
{
  sub_258DEF388();
  v2 = sub_258F0A960();
  v3 = v2;
  v4 = v2[2];
  if (v4 == 2)
  {
    sub_258F0A560();
    v10 = sub_258F0A4E0();

    v7 = v10;
    if ([v7 isEqualToString:{@"ISOLANGUAGECODE_UNKNOWN", 95, 0xE100000000000000, a1, a2}])
    {
      v8 = 0;
    }

    else if ([v7 isEqualToString:@"AB"])
    {
      v8 = 1;
    }

    else if ([v7 isEqualToString:@"AA"])
    {
      v8 = 2;
    }

    else if ([v7 isEqualToString:@"AF"])
    {
      v8 = 3;
    }

    else if ([v7 isEqualToString:@"AK"])
    {
      v8 = 4;
    }

    else if ([v7 isEqualToString:@"SQ"])
    {
      v8 = 5;
    }

    else if ([v7 isEqualToString:@"AM"])
    {
      v8 = 6;
    }

    else if ([v7 isEqualToString:@"AR"])
    {
      v8 = 7;
    }

    else if ([v7 isEqualToString:@"AN"])
    {
      v8 = 8;
    }

    else if ([v7 isEqualToString:@"HY"])
    {
      v8 = 9;
    }

    else if ([v7 isEqualToString:@"AS"])
    {
      v8 = 10;
    }

    else if ([v7 isEqualToString:@"AV"])
    {
      v8 = 11;
    }

    else if ([v7 isEqualToString:@"AE"])
    {
      v8 = 12;
    }

    else if ([v7 isEqualToString:@"AY"])
    {
      v8 = 13;
    }

    else if ([v7 isEqualToString:@"AZ"])
    {
      v8 = 14;
    }

    else if ([v7 isEqualToString:@"BM"])
    {
      v8 = 15;
    }

    else if ([v7 isEqualToString:@"BA"])
    {
      v8 = 16;
    }

    else if ([v7 isEqualToString:@"EU"])
    {
      v8 = 17;
    }

    else if ([v7 isEqualToString:@"BE"])
    {
      v8 = 18;
    }

    else if ([v7 isEqualToString:@"BN"])
    {
      v8 = 19;
    }

    else if ([v7 isEqualToString:@"BI"])
    {
      v8 = 20;
    }

    else if ([v7 isEqualToString:@"BS"])
    {
      v8 = 21;
    }

    else if ([v7 isEqualToString:@"BR"])
    {
      v8 = 22;
    }

    else if ([v7 isEqualToString:@"BG"])
    {
      v8 = 23;
    }

    else if ([v7 isEqualToString:@"MY"])
    {
      v8 = 24;
    }

    else if ([v7 isEqualToString:@"CA"])
    {
      v8 = 25;
    }

    else if ([v7 isEqualToString:@"CH"])
    {
      v8 = 26;
    }

    else if ([v7 isEqualToString:@"CE"])
    {
      v8 = 27;
    }

    else if ([v7 isEqualToString:@"NY"])
    {
      v8 = 28;
    }

    else if ([v7 isEqualToString:@"ZH"])
    {
      v8 = 29;
    }

    else if ([v7 isEqualToString:@"CV"])
    {
      v8 = 30;
    }

    else if ([v7 isEqualToString:@"KW"])
    {
      v8 = 31;
    }

    else if ([v7 isEqualToString:@"CO"])
    {
      v8 = 32;
    }

    else if ([v7 isEqualToString:@"CR"])
    {
      v8 = 33;
    }

    else if ([v7 isEqualToString:@"HR"])
    {
      v8 = 34;
    }

    else if ([v7 isEqualToString:@"CS"])
    {
      v8 = 35;
    }

    else if ([v7 isEqualToString:@"DA"])
    {
      v8 = 36;
    }

    else if ([v7 isEqualToString:@"DV"])
    {
      v8 = 37;
    }

    else if ([v7 isEqualToString:@"NL"])
    {
      v8 = 38;
    }

    else if ([v7 isEqualToString:@"DZ"])
    {
      v8 = 39;
    }

    else if ([v7 isEqualToString:@"EN"])
    {
      v8 = 40;
    }

    else if ([v7 isEqualToString:@"EO"])
    {
      v8 = 41;
    }

    else if ([v7 isEqualToString:@"ET"])
    {
      v8 = 42;
    }

    else if ([v7 isEqualToString:@"EE"])
    {
      v8 = 43;
    }

    else if ([v7 isEqualToString:@"FO"])
    {
      v8 = 44;
    }

    else if ([v7 isEqualToString:@"FJ"])
    {
      v8 = 45;
    }

    else if ([v7 isEqualToString:@"FI"])
    {
      v8 = 46;
    }

    else if ([v7 isEqualToString:@"FR"])
    {
      v8 = 47;
    }

    else if ([v7 isEqualToString:@"FF"])
    {
      v8 = 48;
    }

    else if ([v7 isEqualToString:@"GL"])
    {
      v8 = 49;
    }

    else if ([v7 isEqualToString:@"KA"])
    {
      v8 = 50;
    }

    else if ([v7 isEqualToString:@"DE"])
    {
      v8 = 51;
    }

    else if ([v7 isEqualToString:@"EL"])
    {
      v8 = 52;
    }

    else if ([v7 isEqualToString:@"GN"])
    {
      v8 = 53;
    }

    else if ([v7 isEqualToString:@"GU"])
    {
      v8 = 54;
    }

    else if ([v7 isEqualToString:@"HT"])
    {
      v8 = 55;
    }

    else if ([v7 isEqualToString:@"HA"])
    {
      v8 = 56;
    }

    else if ([v7 isEqualToString:@"HE"])
    {
      v8 = 57;
    }

    else if ([v7 isEqualToString:@"HZ"])
    {
      v8 = 58;
    }

    else if ([v7 isEqualToString:@"HI"])
    {
      v8 = 59;
    }

    else if ([v7 isEqualToString:@"HO"])
    {
      v8 = 60;
    }

    else if ([v7 isEqualToString:@"HU"])
    {
      v8 = 61;
    }

    else if ([v7 isEqualToString:@"IA"])
    {
      v8 = 62;
    }

    else if ([v7 isEqualToString:@"ID"])
    {
      v8 = 63;
    }

    else if ([v7 isEqualToString:@"IE"])
    {
      v8 = 64;
    }

    else if ([v7 isEqualToString:@"GA"])
    {
      v8 = 65;
    }

    else if ([v7 isEqualToString:@"IG"])
    {
      v8 = 66;
    }

    else if ([v7 isEqualToString:@"IK"])
    {
      v8 = 67;
    }

    else if ([v7 isEqualToString:@"IO"])
    {
      v8 = 68;
    }

    else if ([v7 isEqualToString:@"IS"])
    {
      v8 = 69;
    }

    else if ([v7 isEqualToString:@"IT"])
    {
      v8 = 70;
    }

    else if ([v7 isEqualToString:@"IU"])
    {
      v8 = 71;
    }

    else if ([v7 isEqualToString:@"JA"])
    {
      v8 = 72;
    }

    else if ([v7 isEqualToString:@"JV"])
    {
      v8 = 73;
    }

    else if ([v7 isEqualToString:@"KL"])
    {
      v8 = 74;
    }

    else if ([v7 isEqualToString:@"KN"])
    {
      v8 = 75;
    }

    else if ([v7 isEqualToString:@"KR"])
    {
      v8 = 76;
    }

    else if ([v7 isEqualToString:@"KS"])
    {
      v8 = 77;
    }

    else if ([v7 isEqualToString:@"KK"])
    {
      v8 = 78;
    }

    else if ([v7 isEqualToString:@"KM"])
    {
      v8 = 79;
    }

    else if ([v7 isEqualToString:@"KI"])
    {
      v8 = 80;
    }

    else if ([v7 isEqualToString:@"RW"])
    {
      v8 = 81;
    }

    else if ([v7 isEqualToString:@"KY"])
    {
      v8 = 82;
    }

    else if ([v7 isEqualToString:@"KV"])
    {
      v8 = 83;
    }

    else if ([v7 isEqualToString:@"KG"])
    {
      v8 = 84;
    }

    else if ([v7 isEqualToString:@"KO"])
    {
      v8 = 85;
    }

    else if ([v7 isEqualToString:@"KU"])
    {
      v8 = 86;
    }

    else if ([v7 isEqualToString:@"KJ"])
    {
      v8 = 87;
    }

    else if ([v7 isEqualToString:@"LA"])
    {
      v8 = 88;
    }

    else if ([v7 isEqualToString:@"LB"])
    {
      v8 = 89;
    }

    else if ([v7 isEqualToString:@"LG"])
    {
      v8 = 90;
    }

    else if ([v7 isEqualToString:@"LI"])
    {
      v8 = 91;
    }

    else if ([v7 isEqualToString:@"LN"])
    {
      v8 = 92;
    }

    else if ([v7 isEqualToString:@"LO"])
    {
      v8 = 93;
    }

    else if ([v7 isEqualToString:@"LT"])
    {
      v8 = 94;
    }

    else if ([v7 isEqualToString:@"LU"])
    {
      v8 = 95;
    }

    else if ([v7 isEqualToString:@"LV"])
    {
      v8 = 96;
    }

    else if ([v7 isEqualToString:@"GV"])
    {
      v8 = 97;
    }

    else if ([v7 isEqualToString:@"MK"])
    {
      v8 = 98;
    }

    else if ([v7 isEqualToString:@"MG"])
    {
      v8 = 99;
    }

    else if ([v7 isEqualToString:@"MS"])
    {
      v8 = 100;
    }

    else if ([v7 isEqualToString:@"ML"])
    {
      v8 = 101;
    }

    else if ([v7 isEqualToString:@"MT"])
    {
      v8 = 102;
    }

    else if ([v7 isEqualToString:@"MI"])
    {
      v8 = 103;
    }

    else if ([v7 isEqualToString:@"MR"])
    {
      v8 = 104;
    }

    else if ([v7 isEqualToString:@"MH"])
    {
      v8 = 105;
    }

    else if ([v7 isEqualToString:@"MN"])
    {
      v8 = 106;
    }

    else if ([v7 isEqualToString:@"NA"])
    {
      v8 = 107;
    }

    else if ([v7 isEqualToString:@"NV"])
    {
      v8 = 108;
    }

    else if ([v7 isEqualToString:@"ND"])
    {
      v8 = 109;
    }

    else if ([v7 isEqualToString:@"NE"])
    {
      v8 = 110;
    }

    else if ([v7 isEqualToString:@"NG"])
    {
      v8 = 111;
    }

    else if ([v7 isEqualToString:@"NB"])
    {
      v8 = 112;
    }

    else if ([v7 isEqualToString:@"NN"])
    {
      v8 = 113;
    }

    else if ([v7 isEqualToString:@"NO"])
    {
      v8 = 114;
    }

    else if ([v7 isEqualToString:@"II"])
    {
      v8 = 115;
    }

    else if ([v7 isEqualToString:@"NR"])
    {
      v8 = 116;
    }

    else if ([v7 isEqualToString:@"OC"])
    {
      v8 = 117;
    }

    else if ([v7 isEqualToString:@"OJ"])
    {
      v8 = 118;
    }

    else if ([v7 isEqualToString:@"CU"])
    {
      v8 = 119;
    }

    else if ([v7 isEqualToString:@"OM"])
    {
      v8 = 120;
    }

    else if ([v7 isEqualToString:@"OR"])
    {
      v8 = 121;
    }

    else if ([v7 isEqualToString:@"OS"])
    {
      v8 = 122;
    }

    else if ([v7 isEqualToString:@"PA"])
    {
      v8 = 123;
    }

    else if ([v7 isEqualToString:@"PI"])
    {
      v8 = 124;
    }

    else if ([v7 isEqualToString:@"FA"])
    {
      v8 = 125;
    }

    else if ([v7 isEqualToString:@"PL"])
    {
      v8 = 126;
    }

    else if ([v7 isEqualToString:@"PS"])
    {
      v8 = 127;
    }

    else if ([v7 isEqualToString:@"PT"])
    {
      v8 = 128;
    }

    else if ([v7 isEqualToString:@"QU"])
    {
      v8 = 129;
    }

    else if ([v7 isEqualToString:@"RM"])
    {
      v8 = 130;
    }

    else if ([v7 isEqualToString:@"RN"])
    {
      v8 = 131;
    }

    else if ([v7 isEqualToString:@"RO"])
    {
      v8 = 132;
    }

    else if ([v7 isEqualToString:@"RU"])
    {
      v8 = 133;
    }

    else if ([v7 isEqualToString:@"SA"])
    {
      v8 = 134;
    }

    else if ([v7 isEqualToString:@"SC"])
    {
      v8 = 135;
    }

    else if ([v7 isEqualToString:@"SD"])
    {
      v8 = 136;
    }

    else if ([v7 isEqualToString:@"SE"])
    {
      v8 = 137;
    }

    else if ([v7 isEqualToString:@"SM"])
    {
      v8 = 138;
    }

    else if ([v7 isEqualToString:@"SG"])
    {
      v8 = 139;
    }

    else if ([v7 isEqualToString:@"SR"])
    {
      v8 = 140;
    }

    else if ([v7 isEqualToString:@"GD"])
    {
      v8 = 141;
    }

    else if ([v7 isEqualToString:@"SN"])
    {
      v8 = 142;
    }

    else if ([v7 isEqualToString:@"SI"])
    {
      v8 = 143;
    }

    else if ([v7 isEqualToString:@"SK"])
    {
      v8 = 144;
    }

    else if ([v7 isEqualToString:@"SL"])
    {
      v8 = 145;
    }

    else if ([v7 isEqualToString:@"SO"])
    {
      v8 = 146;
    }

    else if ([v7 isEqualToString:@"ST"])
    {
      v8 = 147;
    }

    else if ([v7 isEqualToString:@"ES"])
    {
      v8 = 148;
    }

    else if ([v7 isEqualToString:@"SU"])
    {
      v8 = 149;
    }

    else if ([v7 isEqualToString:@"SW"])
    {
      v8 = 150;
    }

    else if ([v7 isEqualToString:@"SS"])
    {
      v8 = 151;
    }

    else if ([v7 isEqualToString:@"SV"])
    {
      v8 = 152;
    }

    else if ([v7 isEqualToString:@"TA"])
    {
      v8 = 153;
    }

    else if ([v7 isEqualToString:@"TE"])
    {
      v8 = 154;
    }

    else if ([v7 isEqualToString:@"TG"])
    {
      v8 = 155;
    }

    else if ([v7 isEqualToString:@"TH"])
    {
      v8 = 156;
    }

    else if ([v7 isEqualToString:@"TI"])
    {
      v8 = 157;
    }

    else if ([v7 isEqualToString:@"BO"])
    {
      v8 = 158;
    }

    else if ([v7 isEqualToString:@"TK"])
    {
      v8 = 159;
    }

    else if ([v7 isEqualToString:@"TL"])
    {
      v8 = 160;
    }

    else if ([v7 isEqualToString:@"TN"])
    {
      v8 = 161;
    }

    else if ([v7 isEqualToString:@"TO"])
    {
      v8 = 162;
    }

    else if ([v7 isEqualToString:@"TR"])
    {
      v8 = 163;
    }

    else if ([v7 isEqualToString:@"TS"])
    {
      v8 = 164;
    }

    else if ([v7 isEqualToString:@"TT"])
    {
      v8 = 165;
    }

    else if ([v7 isEqualToString:@"TW"])
    {
      v8 = 166;
    }

    else if ([v7 isEqualToString:@"TY"])
    {
      v8 = 167;
    }

    else if ([v7 isEqualToString:@"UG"])
    {
      v8 = 168;
    }

    else if ([v7 isEqualToString:@"UK"])
    {
      v8 = 169;
    }

    else if ([v7 isEqualToString:@"UR"])
    {
      v8 = 170;
    }

    else if ([v7 isEqualToString:@"UZ"])
    {
      v8 = 171;
    }

    else if ([v7 isEqualToString:@"VE"])
    {
      v8 = 172;
    }

    else if ([v7 isEqualToString:@"VI"])
    {
      v8 = 173;
    }

    else if ([v7 isEqualToString:@"VO"])
    {
      v8 = 174;
    }

    else if ([v7 isEqualToString:@"WA"])
    {
      v8 = 175;
    }

    else if ([v7 isEqualToString:@"CY"])
    {
      v8 = 176;
    }

    else if ([v7 isEqualToString:@"WO"])
    {
      v8 = 177;
    }

    else if ([v7 isEqualToString:@"FY"])
    {
      v8 = 178;
    }

    else if ([v7 isEqualToString:@"XH"])
    {
      v8 = 179;
    }

    else if ([v7 isEqualToString:@"YI"])
    {
      v8 = 180;
    }

    else if ([v7 isEqualToString:@"YO"])
    {
      v8 = 181;
    }

    else if ([v7 isEqualToString:@"ZA"])
    {
      v8 = 182;
    }

    else if ([v7 isEqualToString:@"ZU"])
    {
      v8 = 183;
    }

    else if ([v7 isEqualToString:@"WUU"])
    {
      v8 = 184;
    }

    else if ([v7 isEqualToString:@"YUE"])
    {
      v8 = 185;
    }

    else
    {
      v8 = 0;
    }

    v12 = objc_opt_self();
    if (v3[2] >= 2uLL)
    {
      v13 = v12;

      sub_258F0A560();

      v3 = sub_258F0A4E0();
LABEL_1131:

      v11 = [v13 convertCountryCodeToSchemaCountryCode_];
LABEL_1137:

      goto LABEL_1138;
    }

    __break(1u);
    goto LABEL_1126;
  }

  if (v4 == 3)
  {
    v5 = v2[4] == 0x454C41434F4CLL && v2[5] == 0xE600000000000000;
    if (v5 || (sub_258F0AD80() & 1) != 0)
    {

      v6 = sub_258F0A4E0();

      v7 = v6;
      if ([v7 isEqualToString:{@"ISOLANGUAGECODE_UNKNOWN", 95, 0xE100000000000000, a1, a2}])
      {
        v8 = 0;
LABEL_1129:

        v14 = objc_opt_self();
        if (v3[2] >= 3uLL)
        {
          v13 = v14;

          v3 = sub_258F0A4E0();
          goto LABEL_1131;
        }

        __break(1u);
        goto LABEL_1133;
      }

      if ([v7 isEqualToString:@"AB"])
      {
        v8 = 1;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"AA"])
      {
        v8 = 2;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"AF"])
      {
        v8 = 3;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"AK"])
      {
        v8 = 4;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"SQ"])
      {
        v8 = 5;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"AM"])
      {
        v8 = 6;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"AR"])
      {
        v8 = 7;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"AN"])
      {
        v8 = 8;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"HY"])
      {
        v8 = 9;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"AS"])
      {
        v8 = 10;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"AV"])
      {
        v8 = 11;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"AE"])
      {
        v8 = 12;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"AY"])
      {
        v8 = 13;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"AZ"])
      {
        v8 = 14;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"BM"])
      {
        v8 = 15;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"BA"])
      {
        v8 = 16;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"EU"])
      {
        v8 = 17;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"BE"])
      {
        v8 = 18;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"BN"])
      {
        v8 = 19;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"BI"])
      {
        v8 = 20;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"BS"])
      {
        v8 = 21;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"BR"])
      {
        v8 = 22;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"BG"])
      {
        v8 = 23;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"MY"])
      {
        v8 = 24;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"CA"])
      {
        v8 = 25;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"CH"])
      {
        v8 = 26;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"CE"])
      {
        v8 = 27;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"NY"])
      {
        v8 = 28;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"ZH"])
      {
        v8 = 29;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"CV"])
      {
        v8 = 30;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"KW"])
      {
        v8 = 31;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"CO"])
      {
        v8 = 32;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"CR"])
      {
        v8 = 33;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"HR"])
      {
        v8 = 34;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"CS"])
      {
        v8 = 35;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"DA"])
      {
        v8 = 36;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"DV"])
      {
        v8 = 37;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"NL"])
      {
        v8 = 38;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"DZ"])
      {
        v8 = 39;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"EN"])
      {
        v8 = 40;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"EO"])
      {
        v8 = 41;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"ET"])
      {
        v8 = 42;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"EE"])
      {
        v8 = 43;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"FO"])
      {
        v8 = 44;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"FJ"])
      {
        v8 = 45;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"FI"])
      {
        v8 = 46;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"FR"])
      {
        v8 = 47;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"FF"])
      {
        v8 = 48;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"GL"])
      {
        v8 = 49;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"KA"])
      {
        v8 = 50;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"DE"])
      {
        v8 = 51;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"EL"])
      {
        v8 = 52;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"GN"])
      {
        v8 = 53;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"GU"])
      {
        v8 = 54;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"HT"])
      {
        v8 = 55;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"HA"])
      {
        v8 = 56;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"HE"])
      {
        v8 = 57;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"HZ"])
      {
        v8 = 58;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"HI"])
      {
        v8 = 59;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"HO"])
      {
        v8 = 60;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"HU"])
      {
        v8 = 61;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"IA"])
      {
        v8 = 62;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"ID"])
      {
        v8 = 63;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"IE"])
      {
        v8 = 64;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"GA"])
      {
        v8 = 65;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"IG"])
      {
        v8 = 66;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"IK"])
      {
        v8 = 67;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"IO"])
      {
        v8 = 68;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"IS"])
      {
        v8 = 69;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"IT"])
      {
        v8 = 70;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"IU"])
      {
        v8 = 71;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"JA"])
      {
        v8 = 72;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"JV"])
      {
        v8 = 73;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"KL"])
      {
        v8 = 74;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"KN"])
      {
        v8 = 75;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"KR"])
      {
        v8 = 76;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"KS"])
      {
        v8 = 77;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"KK"])
      {
        v8 = 78;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"KM"])
      {
        v8 = 79;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"KI"])
      {
        v8 = 80;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"RW"])
      {
        v8 = 81;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"KY"])
      {
        v8 = 82;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"KV"])
      {
        v8 = 83;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"KG"])
      {
        v8 = 84;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"KO"])
      {
        v8 = 85;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"KU"])
      {
        v8 = 86;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"KJ"])
      {
        v8 = 87;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"LA"])
      {
        v8 = 88;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"LB"])
      {
        v8 = 89;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"LG"])
      {
        v8 = 90;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"LI"])
      {
        v8 = 91;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"LN"])
      {
        v8 = 92;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"LO"])
      {
        v8 = 93;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"LT"])
      {
        v8 = 94;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"LU"])
      {
        v8 = 95;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"LV"])
      {
        v8 = 96;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"GV"])
      {
        v8 = 97;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"MK"])
      {
        v8 = 98;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"MG"])
      {
        v8 = 99;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"MS"])
      {
        v8 = 100;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"ML"])
      {
        v8 = 101;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"MT"])
      {
        v8 = 102;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"MI"])
      {
        v8 = 103;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"MR"])
      {
        v8 = 104;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"MH"])
      {
        v8 = 105;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"MN"])
      {
        v8 = 106;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"NA"])
      {
        v8 = 107;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"NV"])
      {
        v8 = 108;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"ND"])
      {
        v8 = 109;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"NE"])
      {
        v8 = 110;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"NG"])
      {
        v8 = 111;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"NB"])
      {
        v8 = 112;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"NN"])
      {
        v8 = 113;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"NO"])
      {
        v8 = 114;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"II"])
      {
        v8 = 115;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"NR"])
      {
        v8 = 116;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"OC"])
      {
        v8 = 117;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"OJ"])
      {
        v8 = 118;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"CU"])
      {
        v8 = 119;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"OM"])
      {
        v8 = 120;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"OR"])
      {
        v8 = 121;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"OS"])
      {
        v8 = 122;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"PA"])
      {
        v8 = 123;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"PI"])
      {
        v8 = 124;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"FA"])
      {
        v8 = 125;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"PL"])
      {
        v8 = 126;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"PS"])
      {
        v8 = 127;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"PT"])
      {
        v8 = 128;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"QU"])
      {
        v8 = 129;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"RM"])
      {
        v8 = 130;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"RN"])
      {
        v8 = 131;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"RO"])
      {
        v8 = 132;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"RU"])
      {
        v8 = 133;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"SA"])
      {
        v8 = 134;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"SC"])
      {
        v8 = 135;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"SD"])
      {
        v8 = 136;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"SE"])
      {
        v8 = 137;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"SM"])
      {
        v8 = 138;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"SG"])
      {
        v8 = 139;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"SR"])
      {
        v8 = 140;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"GD"])
      {
        v8 = 141;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"SN"])
      {
        v8 = 142;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"SI"])
      {
        v8 = 143;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"SK"])
      {
        v8 = 144;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"SL"])
      {
        v8 = 145;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"SO"])
      {
        v8 = 146;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"ST"])
      {
        v8 = 147;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"ES"])
      {
        v8 = 148;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"SU"])
      {
        v8 = 149;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"SW"])
      {
        v8 = 150;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"SS"])
      {
        v8 = 151;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"SV"])
      {
        v8 = 152;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"TA"])
      {
        v8 = 153;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"TE"])
      {
        v8 = 154;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"TG"])
      {
        v8 = 155;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"TH"])
      {
        v8 = 156;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"TI"])
      {
        v8 = 157;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"BO"])
      {
        v8 = 158;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"TK"])
      {
        v8 = 159;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"TL"])
      {
        v8 = 160;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"TN"])
      {
        v8 = 161;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"TO"])
      {
        v8 = 162;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"TR"])
      {
        v8 = 163;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"TS"])
      {
        v8 = 164;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"TT"])
      {
        v8 = 165;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"TW"])
      {
        v8 = 166;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"TY"])
      {
        v8 = 167;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"UG"])
      {
        v8 = 168;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"UK"])
      {
        v8 = 169;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"UR"])
      {
        v8 = 170;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"UZ"])
      {
        v8 = 171;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"VE"])
      {
        v8 = 172;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"VI"])
      {
        v8 = 173;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"VO"])
      {
        v8 = 174;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"WA"])
      {
        v8 = 175;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"CY"])
      {
        v8 = 176;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"WO"])
      {
        v8 = 177;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"FY"])
      {
        v8 = 178;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"XH"])
      {
        v8 = 179;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"YI"])
      {
        v8 = 180;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"YO"])
      {
        v8 = 181;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"ZA"])
      {
        v8 = 182;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"ZU"])
      {
        v8 = 183;
        goto LABEL_1129;
      }

      if ([v7 isEqualToString:@"WUU"])
      {
        v8 = 184;
        goto LABEL_1129;
      }

LABEL_1126:
      if ([v7 isEqualToString:@"YUE"])
      {
        v8 = 185;
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_1129;
    }
  }

  if (sub_258F0A5C0() == 2)
  {
    sub_258F0A560();
    v9 = sub_258F0A4E0();

    v3 = v9;
    if ([v3 isEqualToString:{@"ISOLANGUAGECODE_UNKNOWN", 95, 0xE100000000000000, a1, a2}])
    {
      v8 = 0;
    }

    else if ([v3 isEqualToString:@"AB"])
    {
      v8 = 1;
    }

    else if ([v3 isEqualToString:@"AA"])
    {
      v8 = 2;
    }

    else if ([v3 isEqualToString:@"AF"])
    {
      v8 = 3;
    }

    else if ([v3 isEqualToString:@"AK"])
    {
      v8 = 4;
    }

    else if ([v3 isEqualToString:@"SQ"])
    {
      v8 = 5;
    }

    else if ([v3 isEqualToString:@"AM"])
    {
      v8 = 6;
    }

    else if ([v3 isEqualToString:@"AR"])
    {
      v8 = 7;
    }

    else if ([v3 isEqualToString:@"AN"])
    {
      v8 = 8;
    }

    else if ([v3 isEqualToString:@"HY"])
    {
      v8 = 9;
    }

    else if ([v3 isEqualToString:@"AS"])
    {
      v8 = 10;
    }

    else if ([v3 isEqualToString:@"AV"])
    {
      v8 = 11;
    }

    else if ([v3 isEqualToString:@"AE"])
    {
      v8 = 12;
    }

    else if ([v3 isEqualToString:@"AY"])
    {
      v8 = 13;
    }

    else if ([v3 isEqualToString:@"AZ"])
    {
      v8 = 14;
    }

    else if ([v3 isEqualToString:@"BM"])
    {
      v8 = 15;
    }

    else if ([v3 isEqualToString:@"BA"])
    {
      v8 = 16;
    }

    else if ([v3 isEqualToString:@"EU"])
    {
      v8 = 17;
    }

    else if ([v3 isEqualToString:@"BE"])
    {
      v8 = 18;
    }

    else if ([v3 isEqualToString:@"BN"])
    {
      v8 = 19;
    }

    else if ([v3 isEqualToString:@"BI"])
    {
      v8 = 20;
    }

    else if ([v3 isEqualToString:@"BS"])
    {
      v8 = 21;
    }

    else if ([v3 isEqualToString:@"BR"])
    {
      v8 = 22;
    }

    else if ([v3 isEqualToString:@"BG"])
    {
      v8 = 23;
    }

    else if ([v3 isEqualToString:@"MY"])
    {
      v8 = 24;
    }

    else if ([v3 isEqualToString:@"CA"])
    {
      v8 = 25;
    }

    else if ([v3 isEqualToString:@"CH"])
    {
      v8 = 26;
    }

    else if ([v3 isEqualToString:@"CE"])
    {
      v8 = 27;
    }

    else if ([v3 isEqualToString:@"NY"])
    {
      v8 = 28;
    }

    else if ([v3 isEqualToString:@"ZH"])
    {
      v8 = 29;
    }

    else if ([v3 isEqualToString:@"CV"])
    {
      v8 = 30;
    }

    else if ([v3 isEqualToString:@"KW"])
    {
      v8 = 31;
    }

    else if ([v3 isEqualToString:@"CO"])
    {
      v8 = 32;
    }

    else if ([v3 isEqualToString:@"CR"])
    {
      v8 = 33;
    }

    else if ([v3 isEqualToString:@"HR"])
    {
      v8 = 34;
    }

    else if ([v3 isEqualToString:@"CS"])
    {
      v8 = 35;
    }

    else if ([v3 isEqualToString:@"DA"])
    {
      v8 = 36;
    }

    else if ([v3 isEqualToString:@"DV"])
    {
      v8 = 37;
    }

    else if ([v3 isEqualToString:@"NL"])
    {
      v8 = 38;
    }

    else if ([v3 isEqualToString:@"DZ"])
    {
      v8 = 39;
    }

    else if ([v3 isEqualToString:@"EN"])
    {
      v8 = 40;
    }

    else if ([v3 isEqualToString:@"EO"])
    {
      v8 = 41;
    }

    else if ([v3 isEqualToString:@"ET"])
    {
      v8 = 42;
    }

    else if ([v3 isEqualToString:@"EE"])
    {
      v8 = 43;
    }

    else if ([v3 isEqualToString:@"FO"])
    {
      v8 = 44;
    }

    else if ([v3 isEqualToString:@"FJ"])
    {
      v8 = 45;
    }

    else if ([v3 isEqualToString:@"FI"])
    {
      v8 = 46;
    }

    else if ([v3 isEqualToString:@"FR"])
    {
      v8 = 47;
    }

    else if ([v3 isEqualToString:@"FF"])
    {
      v8 = 48;
    }

    else if ([v3 isEqualToString:@"GL"])
    {
      v8 = 49;
    }

    else if ([v3 isEqualToString:@"KA"])
    {
      v8 = 50;
    }

    else if ([v3 isEqualToString:@"DE"])
    {
      v8 = 51;
    }

    else if ([v3 isEqualToString:@"EL"])
    {
      v8 = 52;
    }

    else if ([v3 isEqualToString:@"GN"])
    {
      v8 = 53;
    }

    else if ([v3 isEqualToString:@"GU"])
    {
      v8 = 54;
    }

    else if ([v3 isEqualToString:@"HT"])
    {
      v8 = 55;
    }

    else if ([v3 isEqualToString:@"HA"])
    {
      v8 = 56;
    }

    else if ([v3 isEqualToString:@"HE"])
    {
      v8 = 57;
    }

    else if ([v3 isEqualToString:@"HZ"])
    {
      v8 = 58;
    }

    else if ([v3 isEqualToString:@"HI"])
    {
      v8 = 59;
    }

    else if ([v3 isEqualToString:@"HO"])
    {
      v8 = 60;
    }

    else if ([v3 isEqualToString:@"HU"])
    {
      v8 = 61;
    }

    else if ([v3 isEqualToString:@"IA"])
    {
      v8 = 62;
    }

    else if ([v3 isEqualToString:@"ID"])
    {
      v8 = 63;
    }

    else if ([v3 isEqualToString:@"IE"])
    {
      v8 = 64;
    }

    else if ([v3 isEqualToString:@"GA"])
    {
      v8 = 65;
    }

    else if ([v3 isEqualToString:@"IG"])
    {
      v8 = 66;
    }

    else if ([v3 isEqualToString:@"IK"])
    {
      v8 = 67;
    }

    else if ([v3 isEqualToString:@"IO"])
    {
      v8 = 68;
    }

    else if ([v3 isEqualToString:@"IS"])
    {
      v8 = 69;
    }

    else if ([v3 isEqualToString:@"IT"])
    {
      v8 = 70;
    }

    else if ([v3 isEqualToString:@"IU"])
    {
      v8 = 71;
    }

    else if ([v3 isEqualToString:@"JA"])
    {
      v8 = 72;
    }

    else if ([v3 isEqualToString:@"JV"])
    {
      v8 = 73;
    }

    else if ([v3 isEqualToString:@"KL"])
    {
      v8 = 74;
    }

    else if ([v3 isEqualToString:@"KN"])
    {
      v8 = 75;
    }

    else if ([v3 isEqualToString:@"KR"])
    {
      v8 = 76;
    }

    else if ([v3 isEqualToString:@"KS"])
    {
      v8 = 77;
    }

    else if ([v3 isEqualToString:@"KK"])
    {
      v8 = 78;
    }

    else if ([v3 isEqualToString:@"KM"])
    {
      v8 = 79;
    }

    else if ([v3 isEqualToString:@"KI"])
    {
      v8 = 80;
    }

    else if ([v3 isEqualToString:@"RW"])
    {
      v8 = 81;
    }

    else if ([v3 isEqualToString:@"KY"])
    {
      v8 = 82;
    }

    else if ([v3 isEqualToString:@"KV"])
    {
      v8 = 83;
    }

    else if ([v3 isEqualToString:@"KG"])
    {
      v8 = 84;
    }

    else if ([v3 isEqualToString:@"KO"])
    {
      v8 = 85;
    }

    else if ([v3 isEqualToString:@"KU"])
    {
      v8 = 86;
    }

    else if ([v3 isEqualToString:@"KJ"])
    {
      v8 = 87;
    }

    else if ([v3 isEqualToString:@"LA"])
    {
      v8 = 88;
    }

    else if ([v3 isEqualToString:@"LB"])
    {
      v8 = 89;
    }

    else if ([v3 isEqualToString:@"LG"])
    {
      v8 = 90;
    }

    else if ([v3 isEqualToString:@"LI"])
    {
      v8 = 91;
    }

    else if ([v3 isEqualToString:@"LN"])
    {
      v8 = 92;
    }

    else if ([v3 isEqualToString:@"LO"])
    {
      v8 = 93;
    }

    else if ([v3 isEqualToString:@"LT"])
    {
      v8 = 94;
    }

    else if ([v3 isEqualToString:@"LU"])
    {
      v8 = 95;
    }

    else if ([v3 isEqualToString:@"LV"])
    {
      v8 = 96;
    }

    else if ([v3 isEqualToString:@"GV"])
    {
      v8 = 97;
    }

    else if ([v3 isEqualToString:@"MK"])
    {
      v8 = 98;
    }

    else if ([v3 isEqualToString:@"MG"])
    {
      v8 = 99;
    }

    else if ([v3 isEqualToString:@"MS"])
    {
      v8 = 100;
    }

    else if ([v3 isEqualToString:@"ML"])
    {
      v8 = 101;
    }

    else if ([v3 isEqualToString:@"MT"])
    {
      v8 = 102;
    }

    else if ([v3 isEqualToString:@"MI"])
    {
      v8 = 103;
    }

    else if ([v3 isEqualToString:@"MR"])
    {
      v8 = 104;
    }

    else if ([v3 isEqualToString:@"MH"])
    {
      v8 = 105;
    }

    else if ([v3 isEqualToString:@"MN"])
    {
      v8 = 106;
    }

    else if ([v3 isEqualToString:@"NA"])
    {
      v8 = 107;
    }

    else if ([v3 isEqualToString:@"NV"])
    {
      v8 = 108;
    }

    else if ([v3 isEqualToString:@"ND"])
    {
      v8 = 109;
    }

    else if ([v3 isEqualToString:@"NE"])
    {
      v8 = 110;
    }

    else if ([v3 isEqualToString:@"NG"])
    {
      v8 = 111;
    }

    else if ([v3 isEqualToString:@"NB"])
    {
      v8 = 112;
    }

    else if ([v3 isEqualToString:@"NN"])
    {
      v8 = 113;
    }

    else if ([v3 isEqualToString:@"NO"])
    {
      v8 = 114;
    }

    else if ([v3 isEqualToString:@"II"])
    {
      v8 = 115;
    }

    else if ([v3 isEqualToString:@"NR"])
    {
      v8 = 116;
    }

    else if ([v3 isEqualToString:@"OC"])
    {
      v8 = 117;
    }

    else if ([v3 isEqualToString:@"OJ"])
    {
      v8 = 118;
    }

    else if ([v3 isEqualToString:@"CU"])
    {
      v8 = 119;
    }

    else if ([v3 isEqualToString:@"OM"])
    {
      v8 = 120;
    }

    else if ([v3 isEqualToString:@"OR"])
    {
      v8 = 121;
    }

    else if ([v3 isEqualToString:@"OS"])
    {
      v8 = 122;
    }

    else if ([v3 isEqualToString:@"PA"])
    {
      v8 = 123;
    }

    else if ([v3 isEqualToString:@"PI"])
    {
      v8 = 124;
    }

    else if ([v3 isEqualToString:@"FA"])
    {
      v8 = 125;
    }

    else if ([v3 isEqualToString:@"PL"])
    {
      v8 = 126;
    }

    else if ([v3 isEqualToString:@"PS"])
    {
      v8 = 127;
    }

    else if ([v3 isEqualToString:@"PT"])
    {
      v8 = 128;
    }

    else if ([v3 isEqualToString:@"QU"])
    {
      v8 = 129;
    }

    else if ([v3 isEqualToString:@"RM"])
    {
      v8 = 130;
    }

    else if ([v3 isEqualToString:@"RN"])
    {
      v8 = 131;
    }

    else if ([v3 isEqualToString:@"RO"])
    {
      v8 = 132;
    }

    else if ([v3 isEqualToString:@"RU"])
    {
      v8 = 133;
    }

    else if ([v3 isEqualToString:@"SA"])
    {
      v8 = 134;
    }

    else if ([v3 isEqualToString:@"SC"])
    {
      v8 = 135;
    }

    else if ([v3 isEqualToString:@"SD"])
    {
      v8 = 136;
    }

    else if ([v3 isEqualToString:@"SE"])
    {
      v8 = 137;
    }

    else if ([v3 isEqualToString:@"SM"])
    {
      v8 = 138;
    }

    else if ([v3 isEqualToString:@"SG"])
    {
      v8 = 139;
    }

    else if ([v3 isEqualToString:@"SR"])
    {
      v8 = 140;
    }

    else if ([v3 isEqualToString:@"GD"])
    {
      v8 = 141;
    }

    else if ([v3 isEqualToString:@"SN"])
    {
      v8 = 142;
    }

    else if ([v3 isEqualToString:@"SI"])
    {
      v8 = 143;
    }

    else if ([v3 isEqualToString:@"SK"])
    {
      v8 = 144;
    }

    else if ([v3 isEqualToString:@"SL"])
    {
      v8 = 145;
    }

    else if ([v3 isEqualToString:@"SO"])
    {
      v8 = 146;
    }

    else if ([v3 isEqualToString:@"ST"])
    {
      v8 = 147;
    }

    else if ([v3 isEqualToString:@"ES"])
    {
      v8 = 148;
    }

    else if ([v3 isEqualToString:@"SU"])
    {
      v8 = 149;
    }

    else if ([v3 isEqualToString:@"SW"])
    {
      v8 = 150;
    }

    else if ([v3 isEqualToString:@"SS"])
    {
      v8 = 151;
    }

    else if ([v3 isEqualToString:@"SV"])
    {
      v8 = 152;
    }

    else if ([v3 isEqualToString:@"TA"])
    {
      v8 = 153;
    }

    else if ([v3 isEqualToString:@"TE"])
    {
      v8 = 154;
    }

    else if ([v3 isEqualToString:@"TG"])
    {
      v8 = 155;
    }

    else if ([v3 isEqualToString:@"TH"])
    {
      v8 = 156;
    }

    else if ([v3 isEqualToString:@"TI"])
    {
      v8 = 157;
    }

    else if ([v3 isEqualToString:@"BO"])
    {
      v8 = 158;
    }

    else if ([v3 isEqualToString:@"TK"])
    {
      v8 = 159;
    }

    else if ([v3 isEqualToString:@"TL"])
    {
      v8 = 160;
    }

    else if ([v3 isEqualToString:@"TN"])
    {
      v8 = 161;
    }

    else if ([v3 isEqualToString:@"TO"])
    {
      v8 = 162;
    }

    else if ([v3 isEqualToString:@"TR"])
    {
      v8 = 163;
    }

    else if ([v3 isEqualToString:@"TS"])
    {
      v8 = 164;
    }

    else if ([v3 isEqualToString:@"TT"])
    {
      v8 = 165;
    }

    else if ([v3 isEqualToString:@"TW"])
    {
      v8 = 166;
    }

    else if ([v3 isEqualToString:@"TY"])
    {
      v8 = 167;
    }

    else if ([v3 isEqualToString:@"UG"])
    {
      v8 = 168;
    }

    else if ([v3 isEqualToString:@"UK"])
    {
      v8 = 169;
    }

    else if ([v3 isEqualToString:@"UR"])
    {
      v8 = 170;
    }

    else if ([v3 isEqualToString:@"UZ"])
    {
      v8 = 171;
    }

    else if ([v3 isEqualToString:@"VE"])
    {
      v8 = 172;
    }

    else if ([v3 isEqualToString:@"VI"])
    {
      v8 = 173;
    }

    else if ([v3 isEqualToString:@"VO"])
    {
      v8 = 174;
    }

    else if ([v3 isEqualToString:@"WA"])
    {
      v8 = 175;
    }

    else if ([v3 isEqualToString:@"CY"])
    {
      v8 = 176;
    }

    else if ([v3 isEqualToString:@"WO"])
    {
      v8 = 177;
    }

    else if ([v3 isEqualToString:@"FY"])
    {
      v8 = 178;
    }

    else if ([v3 isEqualToString:@"XH"])
    {
      v8 = 179;
    }

    else if ([v3 isEqualToString:@"YI"])
    {
      v8 = 180;
    }

    else if ([v3 isEqualToString:@"YO"])
    {
      v8 = 181;
    }

    else if ([v3 isEqualToString:@"ZA"])
    {
      v8 = 182;
    }

    else if ([v3 isEqualToString:@"ZU"])
    {
      v8 = 183;
    }

    else
    {
      if (([v3 isEqualToString:@"WUU"] & 1) == 0)
      {
LABEL_1133:
        if ([v3 isEqualToString:@"YUE"])
        {
          v8 = 185;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_1136;
      }

      v8 = 184;
    }

LABEL_1136:

    v11 = 0;
    goto LABEL_1137;
  }

  v11 = 0;
  v8 = 0;
LABEL_1138:
  v15 = [objc_allocWithZone(MEMORY[0x277D5A900]) init];
  v16 = v15;
  [v16 setLanguageCode_];
  [v16 setCountryCode_];

  return v15;
}

id _sSo17SISchemaISOLocaleC16MetricsFrameworkE22toExperimentBiomeEvent16experimentDigestSo014BMSiriOnDevicejfcB0CAC0fJ0VSg_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989810, qword_258F114C0);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v20 - v8;
  sub_258DE20C0(a1, &v20 - v8, &qword_27F989810, qword_258F114C0);
  v10 = type metadata accessor for ExperimentDigest(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v9, 1, v10) == 1)
  {
    sub_258DE2184(v9, &qword_27F989810, qword_258F114C0);
  }

  else
  {
    v12 = *(v9 + 12);
    v13 = v12;
    sub_258E578F8(v9, type metadata accessor for ExperimentDigest);
    if (v12)
    {
      [v13 languageCode];

      v14 = sub_258F0AE20();
      goto LABEL_6;
    }
  }

  v14 = 0;
LABEL_6:
  sub_258DE20C0(a1, v6, &qword_27F989810, qword_258F114C0);
  if (v11(v6, 1, v10) == 1)
  {
    sub_258DE2184(v6, &qword_27F989810, qword_258F114C0);
LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  v15 = *(v6 + 12);
  v16 = v15;
  sub_258E578F8(v6, type metadata accessor for ExperimentDigest);
  if (!v15)
  {
    goto LABEL_10;
  }

  [v16 countryCode];

  v17 = sub_258F0AE20();
LABEL_11:
  v18 = [objc_allocWithZone(MEMORY[0x277CF14F0]) initWithLanguageCode:v14 countryCode:v17];

  return v18;
}

id sub_258E52D4C(uint64_t a1, Class *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v24 - v10;
  sub_258DE20C0(a1, &v24 - v10, &qword_27F9894E0, &unk_258F106A0);
  v12 = type metadata accessor for EventMetadata(0);
  v13 = *(*(v12 - 8) + 48);
  if (v13(v11, 1, v12) == 1)
  {
    sub_258DE2184(v11, &qword_27F9894E0, &unk_258F106A0);
  }

  else
  {
    v14 = *&v11[*(v12 + 32)];
    v15 = v14;
    sub_258E578F8(v11, type metadata accessor for EventMetadata);
    if (v14)
    {
      [v15 startTimestampInSecondsSince1970];

      v16 = 0;
      goto LABEL_6;
    }
  }

  v16 = 1;
LABEL_6:
  sub_258DE20C0(a1, v8, &qword_27F9894E0, &unk_258F106A0);
  if (v13(v8, 1, v12) == 1)
  {
    sub_258DE2184(v8, &qword_27F9894E0, &unk_258F106A0);
  }

  else
  {
    v17 = *&v8[*(v12 + 32)];
    v18 = v17;
    sub_258E578F8(v8, type metadata accessor for EventMetadata);
    if (v17)
    {
      [v18 numberOfSeconds];

      v19 = 0;
      if (v16)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  v19 = 1;
  if (v16)
  {
LABEL_13:
    v20 = 0;
    if (v19)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

LABEL_10:
  v20 = sub_258F0AEC0();
  if (v19)
  {
LABEL_14:
    v21 = 0;
    goto LABEL_15;
  }

LABEL_11:
  v21 = sub_258F0AEB0();
LABEL_15:
  v22 = [objc_allocWithZone(*a2) initWithStartTimestampInSecondsSince1970:v20 numberOfSeconds:v21];

  return v22;
}

id _s16MetricsFramework13EventMetadataV07toBiomeC005usagecD0So025BMSiriOnDeviceDigestUsageacD0CACSg_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v78 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v77 = &v71 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v75 = &v71 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v71 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v71 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v71 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v25 = MEMORY[0x28223BE20](v23 - 8, v24);
  v73 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v71 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v71 - v32;
  sub_258DE20C0(a1, v22, &qword_27F9894E0, &unk_258F106A0);
  v34 = type metadata accessor for EventMetadata(0);
  v35 = *(*(v34 - 1) + 48);
  if (v35(v22, 1, v34) == 1)
  {
    v36 = &qword_27F9894E0;
    v37 = &unk_258F106A0;
    v38 = v22;
LABEL_5:
    sub_258DE2184(v38, v36, v37);
    v72 = 0;
    v76 = 0;
    goto LABEL_7;
  }

  sub_258DE20C0(v22, v33, &qword_27F988730, &unk_258F0F8E0);
  sub_258E578F8(v22, type metadata accessor for EventMetadata);
  v39 = sub_258F09A70();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v33, 1, v39) == 1)
  {
    v36 = &qword_27F988730;
    v37 = &unk_258F0F8E0;
    v38 = v33;
    goto LABEL_5;
  }

  v72 = sub_258F09A40();
  v76 = v41;
  (*(v40 + 8))(v33, v39);
LABEL_7:
  v42 = v78;
  sub_258DE20C0(a1, v19, &qword_27F9894E0, &unk_258F106A0);
  if (v35(v19, 1, v34) == 1)
  {
    sub_258DE2184(v19, &qword_27F9894E0, &unk_258F106A0);
    v71 = 0;
    v74 = 0;
  }

  else
  {
    sub_258DE20C0(&v19[v34[5]], v30, &qword_27F988730, &unk_258F0F8E0);
    sub_258E578F8(v19, type metadata accessor for EventMetadata);
    v43 = sub_258F09A70();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v30, 1, v43) == 1)
    {
      sub_258DE2184(v30, &qword_27F988730, &unk_258F0F8E0);
      v71 = 0;
      v74 = 0;
    }

    else
    {
      v71 = sub_258F09A40();
      v74 = v45;
      (*(v44 + 8))(v30, v43);
    }

    v42 = v78;
  }

  v46 = v77;
  sub_258DE20C0(a1, v15, &qword_27F9894E0, &unk_258F106A0);
  v47 = v35(v15, 1, v34);
  v48 = v73;
  if (v47 == 1)
  {
    sub_258DE2184(v15, &qword_27F9894E0, &unk_258F106A0);
    v77 = 0;
    v49 = 0;
  }

  else
  {
    sub_258DE20C0(&v15[v34[6]], v73, &qword_27F988730, &unk_258F0F8E0);
    sub_258E578F8(v15, type metadata accessor for EventMetadata);
    v50 = sub_258F09A70();
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v48, 1, v50) == 1)
    {
      sub_258DE2184(v48, &qword_27F988730, &unk_258F0F8E0);
      v77 = 0;
      v49 = 0;
    }

    else
    {
      v77 = sub_258F09A40();
      v49 = v52;
      (*(v51 + 8))(v48, v50);
    }

    v42 = v78;
  }

  v53 = v75;
  sub_258DE20C0(a1, v75, &qword_27F9894E0, &unk_258F106A0);
  if (v35(v53, 1, v34) == 1)
  {
    sub_258DE2184(v53, &qword_27F9894E0, &unk_258F106A0);
    v54 = 1;
  }

  else
  {
    v54 = *(v53 + v34[9] + 8);
    sub_258E578F8(v53, type metadata accessor for EventMetadata);
  }

  sub_258DE20C0(a1, v46, &qword_27F9894E0, &unk_258F106A0);
  if (v35(v46, 1, v34) == 1)
  {
    sub_258DE2184(v46, &qword_27F9894E0, &unk_258F106A0);
    v55 = 1;
  }

  else
  {
    v56 = v46;
    v55 = *(v46 + v34[10] + 8);
    sub_258E578F8(v56, type metadata accessor for EventMetadata);
  }

  sub_258DE20C0(a1, v42, &qword_27F9894E0, &unk_258F106A0);
  if (v35(v42, 1, v34) == 1)
  {
    sub_258DE2184(v42, &qword_27F9894E0, &unk_258F106A0);
    v57 = sub_258E52D4C(a1, 0x277CF1530);
    v58 = 0;
    v59 = v76;
    v60 = v74;
    if ((v54 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v67 = *(v42 + v34[7] + 8);
    sub_258E578F8(v42, type metadata accessor for EventMetadata);
    v57 = sub_258E52D4C(a1, 0x277CF1530);
    v60 = v74;
    if (v67)
    {
      v58 = 0;
    }

    else
    {
      v58 = sub_258F0AEC0();
    }

    v59 = v76;
    if ((v54 & 1) == 0)
    {
LABEL_27:
      v61 = sub_258F0AEC0();
      if ((v55 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_37;
    }
  }

  v61 = 0;
  if ((v55 & 1) == 0)
  {
LABEL_28:
    v62 = sub_258F0AEC0();
    if (v59)
    {
      goto LABEL_29;
    }

    goto LABEL_38;
  }

LABEL_37:
  v62 = 0;
  if (v59)
  {
LABEL_29:
    v63 = v57;
    v64 = sub_258F0A4E0();

    if (v60)
    {
      goto LABEL_30;
    }

LABEL_39:
    v65 = 0;
    if (v49)
    {
      goto LABEL_31;
    }

LABEL_40:
    v66 = 0;
    goto LABEL_41;
  }

LABEL_38:
  v68 = v57;
  v64 = 0;
  if (!v60)
  {
    goto LABEL_39;
  }

LABEL_30:
  v65 = sub_258F0A4E0();

  if (!v49)
  {
    goto LABEL_40;
  }

LABEL_31:
  v66 = sub_258F0A4E0();

LABEL_41:
  v69 = [objc_allocWithZone(MEMORY[0x277CF1528]) initWithOddIdUUID:v64 deviceAggregationId:v65 userAggregationId:v66 eventTimestampInMSSince1970:v58 timeInterval:v57 userAggregationIdRotationTimestampInMs:v61 userAggregationIdExpirationTimestampInMs:v62];

  return v69;
}

id _s16MetricsFramework13EventMetadataV07toBiomeC021deviceSegmentsCohortsSo020BMSiriOnDeviceDigesthicD0CAA0lhI0VSg_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989AE0, &qword_258F114B0);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v148 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v146 = &v136 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v145 = &v136 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v150 = &v136 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v136 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v136 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v136 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v28 = MEMORY[0x28223BE20](v26 - 8, v27);
  v141 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v140 = &v136 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v139 = &v136 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v138 = &v136 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v137 = &v136 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v45 = &v136 - v44;
  MEMORY[0x28223BE20](v43, v46);
  v48 = &v136 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v51 = MEMORY[0x28223BE20](v49 - 8, v50);
  v149 = &v136 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v51, v53);
  v136 = &v136 - v55;
  MEMORY[0x28223BE20](v54, v56);
  v58 = &v136 - v57;
  v151 = a1;
  sub_258DE20C0(a1, v25, &qword_27F989AE0, &qword_258F114B0);
  v59 = type metadata accessor for DeviceSegmentsCohorts(0);
  v60 = *(*(v59 - 8) + 48);
  if (v60(v25, 1, v59) == 1)
  {
    v61 = &qword_27F989AE0;
    v62 = &qword_258F114B0;
    v63 = v25;
LABEL_7:
    sub_258DE2184(v63, v61, v62);
    v143 = 0;
    v147 = 0;
    goto LABEL_8;
  }

  sub_258DE20C0(v25, v48, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v25, type metadata accessor for DeviceSegmentsCohorts);
  v64 = type metadata accessor for EventMetadata(0);
  if ((*(*(v64 - 8) + 48))(v48, 1, v64) == 1)
  {
    v61 = &qword_27F9894E0;
    v62 = &unk_258F106A0;
    v63 = v48;
    goto LABEL_7;
  }

  sub_258DE20C0(v48, v58, &qword_27F988730, &unk_258F0F8E0);
  sub_258E578F8(v48, type metadata accessor for EventMetadata);
  v65 = sub_258F09A70();
  v66 = *(v65 - 8);
  if ((*(v66 + 48))(v58, 1, v65) == 1)
  {
    v61 = &qword_27F988730;
    v62 = &unk_258F0F8E0;
    v63 = v58;
    goto LABEL_7;
  }

  v143 = sub_258F09A40();
  v147 = v80;
  (*(v66 + 8))(v58, v65);
LABEL_8:
  sub_258DE20C0(v151, v22, &qword_27F989AE0, &qword_258F114B0);
  v67 = v60(v22, 1, v59);
  v68 = v149;
  v69 = v150;
  if (v67 == 1)
  {
    v70 = &qword_27F989AE0;
    v71 = &qword_258F114B0;
    v72 = v22;
LABEL_12:
    sub_258DE2184(v72, v70, v71);
    v142 = 0;
    v144 = 0;
    v74 = v148;
    v75 = v151;
    goto LABEL_18;
  }

  sub_258DE20C0(v22, v45, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v22, type metadata accessor for DeviceSegmentsCohorts);
  v73 = type metadata accessor for EventMetadata(0);
  if ((*(*(v73 - 8) + 48))(v45, 1, v73) == 1)
  {
    v70 = &qword_27F9894E0;
    v71 = &unk_258F106A0;
    v72 = v45;
    goto LABEL_12;
  }

  v76 = v136;
  sub_258DE20C0(&v45[*(v73 + 20)], v136, &qword_27F988730, &unk_258F0F8E0);
  sub_258E578F8(v45, type metadata accessor for EventMetadata);
  v77 = sub_258F09A70();
  v78 = *(v77 - 8);
  v79 = (*(v78 + 48))(v76, 1, v77);
  v74 = v148;
  if (v79 == 1)
  {
    sub_258DE2184(v76, &qword_27F988730, &unk_258F0F8E0);
    v142 = 0;
    v144 = 0;
  }

  else
  {
    v81 = sub_258F09A40();
    v69 = v150;
    v142 = v81;
    v144 = v82;
    (*(v78 + 8))(v76, v77);
  }

  v75 = v151;
  v68 = v149;
LABEL_18:
  sub_258DE20C0(v75, v18, &qword_27F989AE0, &qword_258F114B0);
  if (v60(v18, 1, v59) == 1)
  {
    v83 = &qword_27F989AE0;
    v84 = &qword_258F114B0;
    v85 = v18;
LABEL_22:
    sub_258DE2184(v85, v83, v84);
    v149 = 0;
    v151 = 0;
    v88 = v146;
    goto LABEL_23;
  }

  v86 = v137;
  sub_258DE20C0(v18, v137, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v18, type metadata accessor for DeviceSegmentsCohorts);
  v87 = type metadata accessor for EventMetadata(0);
  if ((*(*(v87 - 8) + 48))(v86, 1, v87) == 1)
  {
    v83 = &qword_27F9894E0;
    v84 = &unk_258F106A0;
    v85 = v86;
    goto LABEL_22;
  }

  sub_258DE20C0(v86 + *(v87 + 24), v68, &qword_27F988730, &unk_258F0F8E0);
  sub_258E578F8(v86, type metadata accessor for EventMetadata);
  v96 = sub_258F09A70();
  v97 = v68;
  v98 = *(v96 - 8);
  v99 = (*(v98 + 48))(v97, 1, v96);
  v88 = v146;
  if (v99 == 1)
  {
    sub_258DE2184(v97, &qword_27F988730, &unk_258F0F8E0);
    v149 = 0;
    v151 = 0;
  }

  else
  {
    v134 = sub_258F09A40();
    v69 = v150;
    v149 = v134;
    v151 = v135;
    (*(v98 + 8))(v97, v96);
  }

LABEL_23:
  sub_258DE20C0(v75, v69, &qword_27F989AE0, &qword_258F114B0);
  v89 = v60(v69, 1, v59);
  v90 = v145;
  if (v89 == 1)
  {
    v91 = &qword_27F989AE0;
    v92 = &qword_258F114B0;
    v93 = v69;
LABEL_27:
    sub_258DE2184(v93, v91, v92);
    v148 = 0;
    LODWORD(v150) = 1;
    goto LABEL_31;
  }

  v94 = v138;
  sub_258DE20C0(v69, v138, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v69, type metadata accessor for DeviceSegmentsCohorts);
  v95 = type metadata accessor for EventMetadata(0);
  if ((*(*(v95 - 8) + 48))(v94, 1, v95) == 1)
  {
    v91 = &qword_27F9894E0;
    v92 = &unk_258F106A0;
    v93 = v94;
    goto LABEL_27;
  }

  v100 = (v94 + *(v95 + 36));
  v148 = *v100;
  LODWORD(v150) = *(v100 + 8);
  sub_258E578F8(v94, type metadata accessor for EventMetadata);
LABEL_31:
  sub_258DE20C0(v75, v90, &qword_27F989AE0, &qword_258F114B0);
  if (v60(v90, 1, v59) == 1)
  {
    v101 = &qword_27F989AE0;
    v102 = &qword_258F114B0;
    v103 = v90;
LABEL_35:
    sub_258DE2184(v103, v101, v102);
    v146 = 0;
    v106 = 1;
    goto LABEL_37;
  }

  v104 = v139;
  sub_258DE20C0(v90, v139, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v90, type metadata accessor for DeviceSegmentsCohorts);
  v105 = type metadata accessor for EventMetadata(0);
  if ((*(*(v105 - 8) + 48))(v104, 1, v105) == 1)
  {
    v101 = &qword_27F9894E0;
    v102 = &unk_258F106A0;
    v103 = v104;
    goto LABEL_35;
  }

  v107 = (v104 + *(v105 + 40));
  v146 = *v107;
  v106 = *(v107 + 8);
  sub_258E578F8(v104, type metadata accessor for EventMetadata);
LABEL_37:
  sub_258DE20C0(v75, v88, &qword_27F989AE0, &qword_258F114B0);
  if (v60(v88, 1, v59) == 1)
  {
    v108 = &qword_27F989AE0;
    v109 = &qword_258F114B0;
LABEL_41:
    sub_258DE2184(v88, v108, v109);
    v113 = 1;
    goto LABEL_43;
  }

  v110 = v140;
  sub_258DE20C0(v88, v140, &qword_27F9894E0, &unk_258F106A0);
  v111 = v88;
  v88 = v110;
  sub_258E578F8(v111, type metadata accessor for DeviceSegmentsCohorts);
  v112 = type metadata accessor for EventMetadata(0);
  if ((*(*(v112 - 8) + 48))(v110, 1, v112) == 1)
  {
    v108 = &qword_27F9894E0;
    v109 = &unk_258F106A0;
    goto LABEL_41;
  }

  v113 = *(v110 + *(v112 + 28) + 8);
  sub_258E578F8(v110, type metadata accessor for EventMetadata);
LABEL_43:
  sub_258DE20C0(v75, v74, &qword_27F989AE0, &qword_258F114B0);
  if (v60(v74, 1, v59) == 1)
  {
    sub_258DE2184(v74, &qword_27F989AE0, &qword_258F114B0);
  }

  else
  {
    v114 = v141;
    sub_258DE20C0(v74, v141, &qword_27F9894E0, &unk_258F106A0);
    sub_258E578F8(v74, type metadata accessor for DeviceSegmentsCohorts);
    v115 = type metadata accessor for EventMetadata(0);
    if ((*(*(v115 - 8) + 48))(v114, 1, v115) == 1)
    {
      sub_258DE2184(v114, &qword_27F9894E0, &unk_258F106A0);
    }

    else
    {
      v116 = *(v114 + *(v115 + 32));
      v117 = v116;
      sub_258E578F8(v114, type metadata accessor for EventMetadata);
      if (v116)
      {
        [v117 startTimestampInSecondsSince1970];
        [v117 numberOfSeconds];
        v118 = sub_258F0AEC0();
        v119 = sub_258F0AEB0();
        goto LABEL_50;
      }
    }
  }

  v119 = 0;
  v118 = 0;
  v117 = 0;
LABEL_50:
  v120 = [objc_allocWithZone(MEMORY[0x277CF1518]) initWithStartTimestampInSecondsSince1970:v118 numberOfSeconds:v119];

  if (v113)
  {
    v121 = 0;
  }

  else
  {
    v121 = sub_258F0AEC0();
  }

  v122 = v147;
  v123 = v144;
  if (v150)
  {
    v124 = 0;
    if ((v106 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v124 = sub_258F0AEC0();
    if ((v106 & 1) == 0)
    {
LABEL_55:
      v125 = sub_258F0AEC0();
      if (v122)
      {
        goto LABEL_56;
      }

      goto LABEL_61;
    }
  }

  v125 = 0;
  if (v122)
  {
LABEL_56:
    v126 = v120;
    v127 = sub_258F0A4E0();

    v128 = v151;
    if (v123)
    {
      goto LABEL_57;
    }

LABEL_62:
    v129 = 0;
    if (v128)
    {
      goto LABEL_58;
    }

LABEL_63:
    v130 = 0;
    goto LABEL_64;
  }

LABEL_61:
  v131 = v120;
  v127 = 0;
  v128 = v151;
  if (!v123)
  {
    goto LABEL_62;
  }

LABEL_57:
  v129 = sub_258F0A4E0();

  if (!v128)
  {
    goto LABEL_63;
  }

LABEL_58:
  v130 = sub_258F0A4E0();

LABEL_64:
  v132 = [objc_allocWithZone(MEMORY[0x277CF1510]) initWithOddIdUUID:v127 deviceAggregationId:v129 userAggregationId:v130 eventTimestampInMSSince1970:v121 timeInterval:v120 userAggregationIdRotationTimestampInMs:v124 userAggregationIdExpirationTimestampInMs:v125];

  return v132;
}

id _s16MetricsFramework13EventMetadataV07toBiomeC0016deviceExperimentA0So020BMSiriOnDeviceDigesthacD0CAA0khA0VSg_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989AD8, &qword_258F114A8);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v167 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v166 = &v154 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v163 = &v154 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v162 = &v154 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v160 = &v154 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v154 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v154 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v154 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v31 = MEMORY[0x28223BE20](v29 - 8, v30);
  v155 = &v154 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v165 = &v154 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v154 = &v154 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v161 = &v154 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v159 = &v154 - v44;
  v46 = MEMORY[0x28223BE20](v43, v45);
  v157 = &v154 - v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v51 = &v154 - v50;
  MEMORY[0x28223BE20](v49, v52);
  v54 = &v154 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v57 = MEMORY[0x28223BE20](v55 - 8, v56);
  v158 = &v154 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v57, v59);
  v62 = &v154 - v61;
  MEMORY[0x28223BE20](v60, v63);
  v65 = &v154 - v64;
  v169 = a1;
  sub_258DE20C0(a1, v28, &qword_27F989AD8, &qword_258F114A8);
  v66 = type metadata accessor for DeviceExperimentMetrics(0);
  v168 = *(*(v66 - 8) + 48);
  if (v168(v28, 1, v66) == 1)
  {
    v67 = &qword_27F989AD8;
    v68 = &qword_258F114A8;
    v69 = v28;
LABEL_7:
    sub_258DE2184(v69, v67, v68);
    v156 = 0;
    v164 = 0;
    goto LABEL_8;
  }

  sub_258DE20C0(v28, v54, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v28, type metadata accessor for DeviceExperimentMetrics);
  v70 = type metadata accessor for EventMetadata(0);
  if ((*(*(v70 - 8) + 48))(v54, 1, v70) == 1)
  {
    v67 = &qword_27F9894E0;
    v68 = &unk_258F106A0;
    v69 = v54;
    goto LABEL_7;
  }

  sub_258DE20C0(v54, v65, &qword_27F988730, &unk_258F0F8E0);
  sub_258E578F8(v54, type metadata accessor for EventMetadata);
  v71 = sub_258F09A70();
  v72 = *(v71 - 8);
  if ((*(v72 + 48))(v65, 1, v71) == 1)
  {
    v67 = &qword_27F988730;
    v68 = &unk_258F0F8E0;
    v69 = v65;
    goto LABEL_7;
  }

  v156 = sub_258F09A40();
  v164 = v85;
  (*(v72 + 8))(v65, v71);
LABEL_8:
  v73 = v169;
  v74 = v159;
  sub_258DE20C0(v169, v25, &qword_27F989AD8, &qword_258F114A8);
  v75 = v168;
  if (v168(v25, 1, v66) == 1)
  {
    v76 = &qword_27F989AD8;
    v77 = &qword_258F114A8;
    v78 = v25;
LABEL_12:
    sub_258DE2184(v78, v76, v77);
    v159 = 0;
    v80 = 0;
    v81 = v158;
    goto LABEL_18;
  }

  sub_258DE20C0(v25, v51, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v25, type metadata accessor for DeviceExperimentMetrics);
  v79 = type metadata accessor for EventMetadata(0);
  if ((*(*(v79 - 8) + 48))(v51, 1, v79) == 1)
  {
    v76 = &qword_27F9894E0;
    v77 = &unk_258F106A0;
    v78 = v51;
    goto LABEL_12;
  }

  sub_258DE20C0(&v51[*(v79 + 20)], v62, &qword_27F988730, &unk_258F0F8E0);
  sub_258E578F8(v51, type metadata accessor for EventMetadata);
  v82 = sub_258F09A70();
  v83 = *(v82 - 8);
  v84 = (*(v83 + 48))(v62, 1, v82);
  v81 = v158;
  if (v84 == 1)
  {
    sub_258DE2184(v62, &qword_27F988730, &unk_258F0F8E0);
    v159 = 0;
    v80 = 0;
  }

  else
  {
    v159 = sub_258F09A40();
    v80 = v86;
    (*(v83 + 8))(v62, v82);
  }

  v75 = v168;
  v73 = v169;
LABEL_18:
  v87 = v157;
  sub_258DE20C0(v73, v21, &qword_27F989AD8, &qword_258F114A8);
  v88 = v75(v21, 1, v66);
  v89 = v161;
  if (v88 == 1)
  {
    v90 = &qword_27F989AD8;
    v91 = &qword_258F114A8;
    v92 = v21;
LABEL_22:
    sub_258DE2184(v92, v90, v91);
    v158 = 0;
    v94 = 0;
    goto LABEL_27;
  }

  sub_258DE20C0(v21, v87, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v21, type metadata accessor for DeviceExperimentMetrics);
  v93 = type metadata accessor for EventMetadata(0);
  if ((*(*(v93 - 8) + 48))(v87, 1, v93) == 1)
  {
    v90 = &qword_27F9894E0;
    v91 = &unk_258F106A0;
    v92 = v87;
    goto LABEL_22;
  }

  sub_258DE20C0(v87 + *(v93 + 24), v81, &qword_27F988730, &unk_258F0F8E0);
  sub_258E578F8(v87, type metadata accessor for EventMetadata);
  v95 = sub_258F09A70();
  v96 = *(v95 - 8);
  if ((*(v96 + 48))(v81, 1, v95) == 1)
  {
    sub_258DE2184(v81, &qword_27F988730, &unk_258F0F8E0);
    v158 = 0;
    v94 = 0;
  }

  else
  {
    v158 = sub_258F09A40();
    v94 = v97;
    (*(v96 + 8))(v81, v95);
  }

  v73 = v169;
LABEL_27:
  v98 = v160;
  sub_258DE20C0(v73, v160, &qword_27F989AD8, &qword_258F114A8);
  if (v75(v98, 1, v66) == 1)
  {
    v99 = &qword_27F989AD8;
    v100 = &qword_258F114A8;
    v101 = v98;
LABEL_31:
    sub_258DE2184(v101, v99, v100);
    v160 = 0;
    v103 = 1;
    goto LABEL_33;
  }

  sub_258DE20C0(v98, v74, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v98, type metadata accessor for DeviceExperimentMetrics);
  v102 = type metadata accessor for EventMetadata(0);
  if ((*(*(v102 - 8) + 48))(v74, 1, v102) == 1)
  {
    v99 = &qword_27F9894E0;
    v100 = &unk_258F106A0;
    v101 = v74;
    goto LABEL_31;
  }

  v104 = v74 + *(v102 + 28);
  v160 = *v104;
  v103 = *(v104 + 8);
  sub_258E578F8(v74, type metadata accessor for EventMetadata);
LABEL_33:
  v105 = v162;
  sub_258DE20C0(v73, v162, &qword_27F989AD8, &qword_258F114A8);
  if (v75(v105, 1, v66) == 1)
  {
    v106 = &qword_27F989AD8;
    v107 = &qword_258F114A8;
    v108 = v105;
LABEL_37:
    sub_258DE2184(v108, v106, v107);
    v110 = 1;
    goto LABEL_42;
  }

  sub_258DE20C0(v105, v89, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v105, type metadata accessor for DeviceExperimentMetrics);
  v109 = type metadata accessor for EventMetadata(0);
  if ((*(*(v109 - 8) + 48))(v89, 1, v109) == 1)
  {
    v106 = &qword_27F9894E0;
    v107 = &unk_258F106A0;
    v108 = v89;
    goto LABEL_37;
  }

  v111 = *(v89 + *(v109 + 32));
  v112 = v111;
  sub_258E578F8(v89, type metadata accessor for EventMetadata);
  if (v111)
  {
    [v112 startTimestampInSecondsSince1970];

    v110 = 0;
  }

  else
  {
    v110 = 1;
  }

  v73 = v169;
LABEL_42:
  v113 = v73;
  v114 = v163;
  sub_258DE20C0(v113, v163, &qword_27F989AD8, &qword_258F114A8);
  if (v75(v114, 1, v66) == 1)
  {
    v115 = v80;
    v116 = &qword_27F989AD8;
    v117 = &qword_258F114A8;
    v118 = v114;
LABEL_46:
    sub_258DE2184(v118, v116, v117);
    goto LABEL_47;
  }

  v119 = v154;
  sub_258DE20C0(v114, v154, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v114, type metadata accessor for DeviceExperimentMetrics);
  v120 = type metadata accessor for EventMetadata(0);
  v115 = v80;
  if ((*(*(v120 - 8) + 48))(v119, 1, v120) == 1)
  {
    v116 = &qword_27F9894E0;
    v117 = &unk_258F106A0;
    v118 = v119;
    goto LABEL_46;
  }

  v125 = *(v119 + *(v120 + 32));
  v126 = v125;
  v127 = v119;
  v128 = v126;
  sub_258E578F8(v127, type metadata accessor for EventMetadata);
  if (!v125)
  {
LABEL_47:
    v121 = 1;
    if (v110)
    {
      goto LABEL_48;
    }

LABEL_52:
    v122 = sub_258F0AEC0();
    v123 = v165;
    if ((v121 & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_53;
  }

  [v128 numberOfSeconds];

  v121 = 0;
  if ((v110 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_48:
  v122 = 0;
  v123 = v165;
  if ((v121 & 1) == 0)
  {
LABEL_49:
    v124 = sub_258F0AEB0();
    goto LABEL_54;
  }

LABEL_53:
  v124 = 0;
LABEL_54:
  v129 = [objc_allocWithZone(MEMORY[0x277CF14D8]) initWithStartTimestampInSecondsSince1970:v122 numberOfSeconds:v124];

  v130 = v169;
  v131 = v166;
  sub_258DE20C0(v169, v166, &qword_27F989AD8, &qword_258F114A8);
  if (v168(v131, 1, v66) == 1)
  {
    sub_258DE2184(v131, &qword_27F989AD8, &qword_258F114A8);
    v132 = 1;
  }

  else
  {
    sub_258DE20C0(v131, v123, &qword_27F9894E0, &unk_258F106A0);
    sub_258E578F8(v131, type metadata accessor for DeviceExperimentMetrics);
    v133 = type metadata accessor for EventMetadata(0);
    if ((*(*(v133 - 8) + 48))(v123, 1, v133) == 1)
    {
      sub_258DE2184(v123, &qword_27F9894E0, &unk_258F106A0);
      v132 = 1;
    }

    else
    {
      v132 = *(v123 + *(v133 + 36) + 8);
      sub_258E578F8(v123, type metadata accessor for EventMetadata);
    }

    v130 = v169;
  }

  v134 = v130;
  v135 = v167;
  sub_258DE20C0(v134, v167, &qword_27F989AD8, &qword_258F114A8);
  if (v168(v135, 1, v66) == 1)
  {
    v136 = &qword_27F989AD8;
    v137 = &qword_258F114A8;
    v138 = v135;
    goto LABEL_64;
  }

  v139 = v155;
  sub_258DE20C0(v135, v155, &qword_27F9894E0, &unk_258F106A0);
  sub_258E578F8(v135, type metadata accessor for DeviceExperimentMetrics);
  v140 = type metadata accessor for EventMetadata(0);
  if ((*(*(v140 - 8) + 48))(v139, 1, v140) == 1)
  {
    v136 = &qword_27F9894E0;
    v137 = &unk_258F106A0;
    v138 = v139;
LABEL_64:
    sub_258DE2184(v138, v136, v137);
    v141 = 1;
    if (v103)
    {
      goto LABEL_65;
    }

    goto LABEL_72;
  }

  v141 = *(v139 + *(v140 + 40) + 8);
  sub_258E578F8(v139, type metadata accessor for EventMetadata);
  if (v103)
  {
LABEL_65:
    v142 = 0;
    v143 = v164;
    if ((v132 & 1) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_73;
  }

LABEL_72:
  v142 = sub_258F0AEC0();
  v143 = v164;
  if ((v132 & 1) == 0)
  {
LABEL_66:
    v144 = sub_258F0AEC0();
    v145 = v115;
    if ((v141 & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_74;
  }

LABEL_73:
  v144 = 0;
  v145 = v115;
  if ((v141 & 1) == 0)
  {
LABEL_67:
    v146 = sub_258F0AEC0();
    if (v143)
    {
      goto LABEL_68;
    }

    goto LABEL_75;
  }

LABEL_74:
  v146 = 0;
  if (v143)
  {
LABEL_68:
    v147 = v129;
    v148 = sub_258F0A4E0();

    if (v145)
    {
      goto LABEL_69;
    }

LABEL_76:
    v149 = 0;
    if (v94)
    {
      goto LABEL_70;
    }

LABEL_77:
    v150 = 0;
    goto LABEL_78;
  }

LABEL_75:
  v151 = v129;
  v148 = 0;
  if (!v145)
  {
    goto LABEL_76;
  }

LABEL_69:
  v149 = sub_258F0A4E0();

  if (!v94)
  {
    goto LABEL_77;
  }

LABEL_70:
  v150 = sub_258F0A4E0();

LABEL_78:
  v152 = [objc_allocWithZone(MEMORY[0x277CF14D0]) initWithOddIdUUID:v148 deviceAggregationId:v149 userAggregationId:v150 eventTimestampInMSSince1970:v142 timeInterval:v129 userAggregationIdRotationTimestampInMs:v144 userAggregationIdExpirationTimestampInMs:v146];

  return v152;
}

id _s16MetricsFramework13EventMetadataV07toBiomeC009scorecardD0So015BMSiriScorecardacD0CACSg_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v96 = &v85[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4, v6);
  v95 = &v85[-v8];
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v85[-v11];
  v14 = MEMORY[0x28223BE20](v10, v13);
  v92 = &v85[-v15];
  v17 = MEMORY[0x28223BE20](v14, v16);
  v91 = &v85[-v18];
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v85[-v21];
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v85[-v25];
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v85[-v28];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v32 = MEMORY[0x28223BE20](v30 - 8, v31);
  v90 = &v85[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = MEMORY[0x28223BE20](v32, v34);
  v37 = &v85[-v36];
  MEMORY[0x28223BE20](v35, v38);
  v40 = &v85[-v39];
  sub_258DE20C0(a1, v29, &qword_27F9894E0, &unk_258F106A0);
  v41 = type metadata accessor for EventMetadata(0);
  v42 = *(v41 - 1);
  v43 = *(v42 + 48);
  v44 = (v42 + 48);
  if (v43(v29, 1, v41) == 1)
  {
    sub_258DE2184(v29, &qword_27F9894E0, &unk_258F106A0);
    v89 = 0;
    v94 = 0;
  }

  else
  {
    v93 = v12;
    sub_258DE20C0(v29, v40, &qword_27F988730, &unk_258F0F8E0);
    sub_258E578F8(v29, type metadata accessor for EventMetadata);
    v45 = sub_258F09A70();
    v46 = *(v45 - 8);
    if ((*(v46 + 48))(v40, 1, v45) == 1)
    {
      sub_258DE2184(v40, &qword_27F988730, &unk_258F0F8E0);
      v89 = 0;
      v94 = 0;
    }

    else
    {
      v89 = sub_258F09A40();
      v94 = v47;
      (*(v46 + 8))(v40, v45);
    }

    v12 = v93;
  }

  sub_258DE20C0(a1, v26, &qword_27F9894E0, &unk_258F106A0);
  if (v43(v26, 1, v41) == 1)
  {
    sub_258DE2184(v26, &qword_27F9894E0, &unk_258F106A0);
    v88 = 0;
    v93 = 0;
  }

  else
  {
    v48 = v12;
    sub_258DE20C0(&v26[v41[5]], v37, &qword_27F988730, &unk_258F0F8E0);
    sub_258E578F8(v26, type metadata accessor for EventMetadata);
    v49 = sub_258F09A70();
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v37, 1, v49) == 1)
    {
      sub_258DE2184(v37, &qword_27F988730, &unk_258F0F8E0);
      v88 = 0;
      v93 = 0;
    }

    else
    {
      v88 = sub_258F09A40();
      v93 = v51;
      (*(v50 + 8))(v37, v49);
    }

    v12 = v48;
  }

  v52 = v90;
  sub_258DE20C0(a1, v22, &qword_27F9894E0, &unk_258F106A0);
  if (v43(v22, 1, v41) == 1)
  {
    v53 = &qword_27F9894E0;
    v54 = &unk_258F106A0;
    v55 = v22;
LABEL_17:
    sub_258DE2184(v55, v53, v54);
    v87 = 0;
    v90 = 0;
    goto LABEL_19;
  }

  sub_258DE20C0(&v22[v41[6]], v52, &qword_27F988730, &unk_258F0F8E0);
  sub_258E578F8(v22, type metadata accessor for EventMetadata);
  v56 = sub_258F09A70();
  v57 = *(v56 - 8);
  if ((*(v57 + 48))(v52, 1, v56) == 1)
  {
    v53 = &qword_27F988730;
    v54 = &unk_258F0F8E0;
    v55 = v52;
    goto LABEL_17;
  }

  v87 = sub_258F09A40();
  v90 = v58;
  (*(v57 + 8))(v52, v56);
LABEL_19:
  v60 = v91;
  v59 = v92;
  sub_258DE20C0(a1, v91, &qword_27F9894E0, &unk_258F106A0);
  if (v43(v60, 1, v41) == 1)
  {
    sub_258DE2184(v60, &qword_27F9894E0, &unk_258F106A0);
    v61 = 1;
  }

  else
  {
    v61 = v60[v41[9] + 8];
    sub_258E578F8(v60, type metadata accessor for EventMetadata);
  }

  sub_258DE20C0(a1, v59, &qword_27F9894E0, &unk_258F106A0);
  if (v43(v59, 1, v41) == 1)
  {
    sub_258DE2184(v59, &qword_27F9894E0, &unk_258F106A0);
    v62 = 1;
  }

  else
  {
    v62 = *(v59 + v41[10] + 8);
    sub_258E578F8(v59, type metadata accessor for EventMetadata);
  }

  sub_258DE20C0(a1, v12, &qword_27F9894E0, &unk_258F106A0);
  if (v43(v12, 1, v41) == 1)
  {
    sub_258DE2184(v12, &qword_27F9894E0, &unk_258F106A0);
    v63 = sub_258E52D4C(a1, 0x277CF15C8);
    v92 = 0;
    if ((v61 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_33:
    v64 = 0;
    if ((v62 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_34;
  }

  v86 = v62;
  v91 = v44;
  v66 = v12[v41[7] + 8];
  sub_258E578F8(v12, type metadata accessor for EventMetadata);
  v63 = sub_258E52D4C(a1, 0x277CF15C8);
  if (v66)
  {
    v92 = 0;
  }

  else
  {
    v92 = sub_258F0AEC0();
  }

  LOBYTE(v62) = v86;
  if (v61)
  {
    goto LABEL_33;
  }

LABEL_27:
  v64 = sub_258F0AEC0();
  if ((v62 & 1) == 0)
  {
LABEL_28:
    v65 = sub_258F0AEC0();
    goto LABEL_35;
  }

LABEL_34:
  v65 = 0;
LABEL_35:
  v67 = v95;
  sub_258DE20C0(a1, v95, &qword_27F9894E0, &unk_258F106A0);
  if (v43(v67, 1, v41) == 1)
  {
    sub_258DE2184(v67, &qword_27F9894E0, &unk_258F106A0);
    v68 = 0;
  }

  else
  {
    v69 = v67[v41[11] + 4];
    sub_258E578F8(v67, type metadata accessor for EventMetadata);
    if (v69)
    {
      v68 = 0;
    }

    else
    {
      v68 = sub_258F0AE20();
    }
  }

  v70 = a1;
  v71 = v96;
  sub_258DE20C0(v70, v96, &qword_27F9894E0, &unk_258F106A0);
  if (v43(v71, 1, v41) == 1)
  {
    sub_258DE2184(v71, &qword_27F9894E0, &unk_258F106A0);
    v72 = 0;
    v73 = v93;
    if (v94)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v79 = v71[v41[12]];
    sub_258E578F8(v71, type metadata accessor for EventMetadata);
    v73 = v93;
    if (v79 == 2)
    {
      v72 = 0;
    }

    else
    {
      v72 = sub_258F0A730();
    }

    if (v94)
    {
LABEL_42:
      v74 = v63;
      v75 = sub_258F0A4E0();

      v76 = v90;
      if (v73)
      {
        goto LABEL_43;
      }

LABEL_50:
      v77 = 0;
      if (v76)
      {
        goto LABEL_44;
      }

LABEL_51:
      v78 = 0;
      goto LABEL_52;
    }
  }

  v80 = v63;
  v75 = 0;
  v76 = v90;
  if (!v73)
  {
    goto LABEL_50;
  }

LABEL_43:
  v77 = sub_258F0A4E0();

  if (!v76)
  {
    goto LABEL_51;
  }

LABEL_44:
  v78 = sub_258F0A4E0();

LABEL_52:
  v81 = objc_allocWithZone(MEMORY[0x277CF15C0]);
  v82 = v92;
  v83 = [v81 initWithOddId:v75 deviceAggregationId:v77 userAggregationId:v78 eventTimestampInMSSince1970:v92 timeInterval:v63 userAggregationIdRotationTimestampInMs:v64 userAggregationIdExpirationTimestampInMs:v65 eventOrigin:v68 isLongLivedIDUploadDisabled:v72];

  return v83;
}

uint64_t sub_258E563E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_258E5642C()
{
  result = qword_27F989A88;
  if (!qword_27F989A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989A88);
  }

  return result;
}

void sub_258E5691C(uint64_t a1)
{
  sub_258E56AC4(319, &qword_27F9896C8, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    sub_258E0F074(319, &qword_27F988D58, MEMORY[0x277D84D38]);
    if (v2 <= 0x3F)
    {
      sub_258E56A6C(319, &qword_27F989AA0, &qword_280CC49E0, 0x277D593F8);
      if (v3 <= 0x3F)
      {
        sub_258E56AC4(319, &qword_27F989AA8, type metadata accessor for ODDSiriSchemaODDEventOrigin);
        if (v4 <= 0x3F)
        {
          sub_258E0F074(319, &qword_27F989788, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_258E56A6C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_258DEB8C8(255, a3, a4);
    v5 = sub_258F0A920();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258E56AC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void *__swift_memcpy13_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ISOLocale(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 13))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ISOLocale(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
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

  *(result + 13) = v3;
  return result;
}

void sub_258E56BC4(uint64_t a1)
{
  sub_258E56AC4(319, &qword_27F9897C0, type metadata accessor for EventMetadata);
  if (v1 <= 0x3F)
  {
    sub_258E56AC4(319, &qword_27F9896C8, MEMORY[0x277CC95F0]);
    if (v2 <= 0x3F)
    {
      sub_258E0F074(319, &qword_27F988D40, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_258E56AC4(319, &qword_27F9896C0, type metadata accessor for SISchemaProgramCode);
        if (v4 <= 0x3F)
        {
          sub_258E0F074(319, &qword_27F989AC0, &type metadata for ProductId);
          if (v5 <= 0x3F)
          {
            sub_258E56AC4(319, &qword_27F989698, type metadata accessor for SISchemaDataSharingOptInState);
            if (v6 <= 0x3F)
            {
              sub_258E56AC4(319, &qword_27F989690, type metadata accessor for SISchemaAssistantViewMode);
              if (v7 <= 0x3F)
              {
                sub_258E56AC4(319, &qword_27F9896A0, type metadata accessor for ORCHSchemaORCHSiriAsrMode);
                if (v8 <= 0x3F)
                {
                  sub_258E56AC4(319, &qword_27F9896A8, type metadata accessor for ORCHSchemaORCHSiriNlMode);
                  if (v9 <= 0x3F)
                  {
                    sub_258E56A6C(319, &qword_27F9896B0, &qword_27F9896B8, 0x277D5A900);
                    if (v10 <= 0x3F)
                    {
                      sub_258E0F074(319, &qword_27F989718, MEMORY[0x277D84CC0]);
                      if (v11 <= 0x3F)
                      {
                        sub_258E56AC4(319, &qword_27F989778, type metadata accessor for SISchemaResponseCategory);
                        if (v12 <= 0x3F)
                        {
                          sub_258E3DC64(319, &qword_27F9896D0, &qword_27F9896D8, &unk_258F10780);
                          if (v13 <= 0x3F)
                          {
                            sub_258E0F074(319, &qword_27F989788, MEMORY[0x277D839B0]);
                            if (v14 <= 0x3F)
                            {
                              sub_258E3DC64(319, &qword_27F989790, &qword_27F989798, &unk_258F113F0);
                              if (v15 <= 0x3F)
                              {
                                sub_258E56AC4(319, &qword_27F9897A0, type metadata accessor for SISchemaInvocationSource);
                                if (v16 <= 0x3F)
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
}

void sub_258E56F90(uint64_t a1)
{
  sub_258E56AC4(319, &qword_27F9897C0, type metadata accessor for EventMetadata);
  if (v1 <= 0x3F)
  {
    sub_258E56AC4(319, &qword_27F9896C8, MEMORY[0x277CC95F0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_258E578F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DictationDeviceExperimentMetrics.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  DictationDeviceExperimentMetrics.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v8;
}

uint64_t DictationDeviceExperimentMetrics.init(defaults:logger:fbfBundleId:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v101 = a4;
  v92 = a3;
  v99 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v96 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v91 = v84 - v11;
  v90 = sub_258F09B00();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v12);
  v87 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_258F09A20();
  v86 = *(v88 - 1);
  MEMORY[0x28223BE20](v88, v14);
  v85 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_258F0A370();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v102 = v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v103 = v84 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v26 = v84 - v25;
  v27 = sub_258F09A70();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v17;
  v32 = *(v17 + 16);
  v94 = OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_logger;
  v32(v4 + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_logger, a2, v16);
  sub_258F09A60();
  v33 = *(v28 + 32);
  v105 = v4;
  v93 = OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_oddId;
  v95 = v27;
  v33(v4 + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_oddId, v31, v27);
  v34 = sub_258F0A1F0();
  swift_allocObject();
  v99 = v99;
  v35 = sub_258F0A1E0();
  v116 = v34;
  v117 = MEMORY[0x277D04548];
  v115 = v35;
  v104 = a2;
  v98 = v17 + 16;
  v97 = v32;
  v32(v26, a2, v16);
  v36 = sub_258F09C20();
  swift_allocObject();
  v37 = v100;
  v38 = sub_258F09BE0();
  v100 = v37;
  if (v37)
  {
    v39 = *(v118 + 8);
    v39(v104, v16);

    v40 = v105;
    v39(&v94[v105], v16);
    (*(v28 + 8))(v40 + v93, v95);
    type metadata accessor for DictationDeviceExperimentMetrics(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v38;
    v42 = v85;
    sub_258F0A090();
    v43 = v87;
    sub_258F09AC0();
    v44 = v41;
    sub_258F09C10();
    (*(v89 + 8))(v43, v90);
    (*(v86 + 8))(v42, v88);
    v45 = v103;
    v46 = v104;
    v47 = v97;
    v97(v103, v104, v16);
    type metadata accessor for SiriDeviceExperimentMetricsDataProvider(0);
    v48 = swift_allocObject();
    v49 = *(v118 + 32);
    v93 = v118 + 32;
    v95 = v49;
    v49(v48 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsDataProvider_logger, v45, v16);
    *(v105 + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_siriDeviceExperimentMetricsDataProvider) = v48;
    v47(v45, v46, v16);
    v99 = v99;
    v84[1] = v44;

    v50 = v91;
    sub_258E5873C(v91);
    v47(v102, v45, v16);
    sub_258DECF90(v50, v96);
    type metadata accessor for BiomeResultsWrapperFactory();
    v90 = swift_allocObject();
    v51 = type metadata accessor for CAAnalyticsEventSubmitter();
    v52 = swift_allocObject();
    sub_258F09F30();
    v89 = sub_258F09F20();
    v116 = v36;
    v117 = &off_286A2FA30;
    v115 = v44;
    v113 = v51;
    v114 = &off_286A2C648;
    v112 = v52;
    type metadata accessor for DictationDeviceExperimentMetricsCalculator(0);
    v53 = swift_allocObject();
    v54 = __swift_mutable_project_boxed_opaque_existential_1(&v115, v36);
    v88 = v84;
    MEMORY[0x28223BE20](v54, v54);
    v56 = (v84 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v57 + 16))(v56);
    v58 = v16;
    v59 = __swift_mutable_project_boxed_opaque_existential_1(&v112, v113);
    MEMORY[0x28223BE20](v59, v59);
    v61 = (v84 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v62 + 16))(v61);
    v63 = *v56;
    v64 = *v61;
    v110 = v36;
    v111 = &off_286A2FA30;
    *&v109 = v63;
    v107 = v51;
    v108 = &off_286A2C648;
    *&v106 = v64;
    sub_258DED000(v50);
    v65 = *(v118 + 8);
    v118 += 8;
    v94 = v65;
    v66 = v103;
    (v65)(v103, v16);
    v95(v53 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_logger, v102, v16);
    sub_258E25BDC(v96, v53 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_sqlFileURL);
    sub_258DDA76C(&v109, v53 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_bookmarkService);
    *(v53 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_biomeResultsFactory) = v90;
    sub_258DDA76C(&v106, v53 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_analyticsEventSubmitter);
    *(v53 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_bugReporter) = v89;
    *(v53 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_defaults) = v99;
    __swift_destroy_boxed_opaque_existential_1Tm(&v112);
    __swift_destroy_boxed_opaque_existential_1Tm(&v115);
    *(v105 + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_dictationDeviceExperimentMetricsCalculator) = v53;
    v67 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v68 = [v67 Metrics];
    swift_unknownObjectRelease();
    v69 = [v68 OnDeviceDigestExperimentMetrics];
    swift_unknownObjectRelease();
    v70 = [v69 source];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989480, &unk_258F0F6E8);
    swift_allocObject();
    v71 = sub_258F09B80();
    v72 = v104;
    v73 = v97;
    v97(v66, v104, v58);
    type metadata accessor for SiriDeviceExperimentMetricsBiomeReporter(0);
    v74 = swift_allocObject();
    v91 = v74;
    *(v74 + 16) = v71;
    v96 = v71;
    v75 = v95;
    v95(v74 + OBJC_IVAR____TtC16MetricsFramework40SiriDeviceExperimentMetricsBiomeReporter_logger, v66, v58);
    v73(v66, v72, v58);

    v76 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v92, v101);
    v77 = v102;
    v73(v102, v72, v58);
    type metadata accessor for DeviceExperimentSELFEventConverter(0);
    v78 = swift_allocObject();
    v75(v78 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentSELFEventConverter_logger, v77, v58);
    type metadata accessor for SiriDeviceExperimentMetricsSELFReporter(0);
    v79 = swift_allocObject();
    *(v79 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
    v75(v79 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_logger, v103, v58);
    *(v79 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_reportingService) = v76;
    v80 = (v79 + OBJC_IVAR____TtC16MetricsFramework39SiriDeviceExperimentMetricsSELFReporter_selfConversion);
    *v80 = sub_258E58FB0;
    v80[1] = v78;
    v40 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_258F0F6D0;
    *(v81 + 32) = v91;
    *(v81 + 40) = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989488, &qword_258F0F6F8);
    swift_allocObject();

    v115 = sub_258F09BA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989490, qword_258F0F700);
    swift_allocObject();
    v82 = sub_258F09BC0();

    (v94)(v104, v58);
    *(v40 + OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_siriDeviceExperimentMetricsReporter) = v82;
  }

  return v40;
}

uint64_t sub_258E5873C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DictationDeviceExperimentMetricsCalculator(0);
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

uint64_t type metadata accessor for DictationDeviceExperimentMetrics(uint64_t a1)
{
  result = qword_27F989B30;
  if (!qword_27F989B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E588C0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E588E0, 0, 0);
}

uint64_t sub_258E588E0()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DEE374;

  return sub_258EC0A40();
}

uint64_t sub_258E58984(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E589B4, 0, 0);
}

uint64_t sub_258E589B4()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_258DED218;

  return v4(v0 + 16);
}

uint64_t sub_258E58A80(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E58AA0, 0, 0);
}

uint64_t sub_258E58AA0()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED408;
  v2 = *(v0 + 16);

  return sub_258E599AC(v2);
}

uint64_t DictationDeviceExperimentMetrics.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t DictationDeviceExperimentMetrics.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC16MetricsFramework32DictationDeviceExperimentMetrics_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_258E58D20(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E58D44, 0, 0);
}

uint64_t sub_258E58D44()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED7D0;

  return sub_258EC0A40();
}

uint64_t sub_258E58DE8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E58E0C, 0, 0);
}

uint64_t sub_258E58E0C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED984;
  v2 = *(v0 + 16);

  return sub_258E599AC(v2);
}

uint64_t sub_258E58EB0(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E58EE4, 0, 0);
}

uint64_t sub_258E58EE4()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v4 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_258DEDBC8;

  return v4(v0 + 16);
}

uint64_t sub_258E59050(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DictationDeviceExperimentMetrics(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of DictationDeviceExperimentMetrics.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of DictationDeviceExperimentMetrics.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of DictationDeviceExperimentMetrics.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t DictationDeviceExperimentMetricsCalculator.__allocating_init(defaults:logger:sqlFileURL:bookmarkService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a2;
  v38 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v33 - v9;
  v11 = sub_258F0A370();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a2, v11);
  sub_258DE20C0(a3, v10, &qword_27F988720, &qword_258F0B830);
  type metadata accessor for BiomeResultsWrapperFactory();
  v37 = swift_allocObject();
  v16 = type metadata accessor for CAAnalyticsEventSubmitter();
  v17 = swift_allocObject();
  sub_258F09F30();
  v34 = sub_258F09F20();
  v18 = sub_258F09C20();
  v42[3] = v18;
  v42[4] = &off_286A2FA30;
  v42[0] = a4;
  v40 = v16;
  v41 = &off_286A2C648;
  v39[0] = v17;
  type metadata accessor for DictationDeviceExperimentMetricsCalculator(0);
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v42, v18);
  MEMORY[0x28223BE20](v20, v20);
  v22 = (&v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  MEMORY[0x28223BE20](v24, v24);
  v26 = (&v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v22;
  v29 = *v26;
  v30 = (v19 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_bookmarkService);
  v30[3] = v18;
  v30[4] = &off_286A2FA30;
  *v30 = v28;
  v31 = (v19 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_analyticsEventSubmitter);
  v31[3] = v16;
  v31[4] = &off_286A2C648;
  *v31 = v29;
  sub_258DE2184(v35, &qword_27F988720, &qword_258F0B830);
  (*(v12 + 8))(v36, v11);
  (*(v12 + 32))(v19 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_logger, v15, v11);
  sub_258E2EAD8(v10, v19 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  *(v19 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_biomeResultsFactory) = v37;
  *(v19 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_bugReporter) = v34;
  *(v19 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_defaults) = v38;
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  return v19;
}

uint64_t type metadata accessor for DictationDeviceExperimentMetricsCalculator(uint64_t a1)
{
  result = qword_27F989B60;
  if (!qword_27F989B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriDeviceExperimentMetricsResults.eventStreamMetadata.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SiriDeviceExperimentMetricsResults.conversationStreamMetadata.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SiriDeviceExperimentMetricsResults.deviceExperimentMetrics.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_258E599AC(uint64_t a1)
{
  v2[273] = v1;
  v2[272] = a1;
  v3 = sub_258F09F40();
  v2[274] = v3;
  v2[275] = *(v3 - 8);
  v2[276] = swift_task_alloc();
  v4 = sub_258F09F50();
  v2[277] = v4;
  v2[278] = *(v4 - 8);
  v2[279] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989B40, &unk_258F11670);
  v2[280] = v5;
  v2[281] = *(v5 - 8);
  v2[282] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v2[283] = swift_task_alloc();
  v2[284] = swift_task_alloc();
  v2[285] = *(type metadata accessor for DeviceExperimentMetrics(0) - 8);
  v2[286] = swift_task_alloc();
  v2[287] = swift_task_alloc();
  v6 = type metadata accessor for EventMetadata(0);
  v2[288] = v6;
  v2[289] = *(v6 - 8);
  v2[290] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v2[291] = swift_task_alloc();
  v2[292] = swift_task_alloc();
  v2[293] = swift_task_alloc();
  v2[294] = swift_task_alloc();
  v2[295] = swift_task_alloc();
  v2[296] = swift_task_alloc();
  v2[297] = swift_task_alloc();
  v2[298] = type metadata accessor for CommonDigestElements(0);
  v2[299] = swift_task_alloc();
  v7 = sub_258F09B00();
  v2[300] = v7;
  v2[301] = *(v7 - 8);
  v2[302] = swift_task_alloc();
  v8 = sub_258F09A20();
  v2[303] = v8;
  v2[304] = *(v8 - 8);
  v2[305] = swift_task_alloc();
  v2[306] = swift_task_alloc();
  v2[307] = swift_task_alloc();
  v2[308] = swift_task_alloc();
  v9 = sub_258F0A2C0();
  v2[309] = v9;
  v2[310] = *(v9 - 8);
  v2[311] = swift_task_alloc();
  v2[312] = swift_task_alloc();
  v10 = sub_258F0A2F0();
  v2[313] = v10;
  v2[314] = *(v10 - 8);
  v2[315] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E59E88, 0, 0);
}

void sub_258E59E88()
{
  v342 = v0;
  v1 = v0;
  sub_258F0A2E0();
  sub_258F0A2D0();
  sub_258F0A2A0();
  v2 = sub_258F0A2D0();
  v3 = sub_258F0A860();
  if (sub_258F0A900())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_258F0A2B0();
    _os_signpost_emit_with_name_impl(&dword_258DD8000, v2, v3, v5, "DictationDeviceExperimentMetricsCalculatorSP", "", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v6 = *(v1 + 2496);
  v7 = *(v1 + 2488);
  v8 = *(v1 + 2480);
  v9 = *(v1 + 2472);

  (*(v8 + 16))(v7, v6, v9);
  sub_258F0A330();
  swift_allocObject();
  v10 = sub_258F0A320();
  v11 = sub_258F0A350();
  v12 = sub_258F0A810();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_258DD8000, v11, v12, "SQL calculator invoked: DictationDeviceExperimentMetricsCalculator", v13, 2u);
    MEMORY[0x259C9EF40](v13, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988740, &qword_258F0B850);
  sub_258F0A190();
  *(swift_allocObject() + 16) = xmmword_258F0F8A0;
  sub_258F0A160();
  sub_258F0A160();
  sub_258DE02C0();
  v14 = sub_258DE0478();
  v324 = v10;
  v15 = *(*(v1 + 2184) + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_defaults);
  v16 = sub_258F0A4E0();
  v17 = [v15 BOOLForKey_];

  v340 = v1;
  if (v17)
  {
    sub_258F09A10();
  }

  else
  {
    v18 = *(v1 + 2416);
    v19 = *(v1 + 2408);
    v20 = *(v340 + 2400);
    sub_258F09AC0();
    sub_258F09BB0();
    (*(v19 + 8))(v18, v20);
    v1 = v340;
  }

  v21 = *(v1 + 2464);
  v22 = *(v1 + 2432);
  v23 = *(v1 + 2424);
  sub_258F0A0E0();
  swift_allocObject();
  sub_258F0A0D0();
  sub_258F0A0C0();

  v323 = *(v22 + 8);
  v323(v21, v23);
  v24 = v14;
  v25 = sub_258F0A4E0();
  LODWORD(v21) = [v15 BOOLForKey_];

  v26 = sub_258F0A350();
  v27 = sub_258F0A810();
  v28 = os_log_type_enabled(v26, v27);
  if (v21)
  {
    v29 = v24;
    if (v28)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v341[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_258DE3018(0xD000000000000019, 0x8000000258F1A850, v341);
      _os_log_impl(&dword_258DD8000, v26, v27, "%s: Include current date data for aggregation.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x259C9EF40](v31, -1, -1);
      MEMORY[0x259C9EF40](v30, -1, -1);
    }
  }

  else
  {
    if (v28)
    {
      v32 = swift_slowAlloc();
      v33 = v24;
      v34 = swift_slowAlloc();
      v341[0] = v34;
      *v32 = 136315138;
      *(v32 + 4) = sub_258DE3018(0xD000000000000019, 0x8000000258F1A850, v341);
      _os_log_impl(&dword_258DD8000, v26, v27, "%s: current date data NOT included for aggregation.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      v35 = v34;
      v24 = v33;
      MEMORY[0x259C9EF40](v35, -1, -1);
      MEMORY[0x259C9EF40](v32, -1, -1);
    }

    v36 = v24;
    v29 = v24;
  }

  v37 = *(v1 + 2416);
  v38 = *(v1 + 2408);
  v333 = *(v1 + 2400);
  sub_258F0A050();

  v39 = sub_258F0A010();
  v40 = sub_258F0A040();

  v322 = v29;

  type metadata accessor for BiomeResultsWrapper();
  v325 = swift_allocObject();
  *(v325 + 16) = v40;
  sub_258F09B50();
  sub_258F09AC0();
  sub_258F09930();
  v310 = *(v38 + 8);
  v310(v37, v333);
  if ((sub_258F0A070() & 1) == 0)
  {
    v326 = 0;
    v327 = 0;
    v334 = MEMORY[0x277D84F90];
LABEL_429:

    v225 = sub_258F0A350();
    v226 = sub_258F0A810();
    if (os_log_type_enabled(v225, v226))
    {
      v227 = swift_slowAlloc();
      *v227 = 134217984;
      *(v227 + 4) = v334[2];

      _os_log_impl(&dword_258DD8000, v225, v226, "DictationDeviceExperimentMetricsCalculator query yielded %ld results", v227, 0xCu);
      MEMORY[0x259C9EF40](v227, -1, -1);
    }

    else
    {
    }

    v228 = *(v1 + 2256);
    v229 = *(v1 + 2248);
    v230 = *(v1 + 2240);
    v231 = *(v1 + 2224);
    v335 = *(v1 + 2200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989B48, &unk_258F11680);
    v232 = *(v229 + 72);
    v233 = (*(v229 + 80) + 32) & ~*(v229 + 80);
    v234 = (swift_allocObject() + v233);
    v235 = *(v230 + 48);
    *v234 = v326;
    v236 = *MEMORY[0x277D5D9A8];
    v237 = sub_258F09EE0();
    v238 = *(*(v237 - 8) + 104);
    v238(&v234[v235], v236, v237);
    v239 = &v234[v232];
    v240 = *(v230 + 48);
    *v239 = v327;
    v238(&v239[v240], *MEMORY[0x277D5D9B0], v237);
    v338 = *MEMORY[0x277D5D9D0];
    v337 = (v231 + 104);
    v339 = (v231 + 8);
    v328 = *MEMORY[0x277D5D9B8];
    v332 = (v335 + 104);
    v336 = (v335 + 8);
    sub_258DE20C0(v234, v228, &qword_27F989B40, &unk_258F11670);
    v241 = *v228;
    v242 = sub_258F09EB0();
    if (v241 >= 1)
    {
      sub_258E2CE6C(v241, v242, v243);
    }

    v244 = *(v340 + 2232);
    v245 = *(v340 + 2216);

    sub_258F09EB0();
    v318 = *v337;
    (*v337)(v244, v338, v245);
    if (v241 < 1)
    {
    }

    else
    {
      v246 = *(v340 + 2208);
      v247 = *(v340 + 2192);
      (*v332)(v246, v328, v247);
      sub_258F09F10();

      (*v336)(v246, v247);
    }

    v248 = *(v340 + 2256);
    v249 = *v339;
    (*v339)(*(v340 + 2232), *(v340 + 2216));
    sub_258DE2184(v248, &qword_27F989B40, &unk_258F11670);
    sub_258DE20C0(v239, v248, &qword_27F989B40, &unk_258F11670);
    v250 = *v248;
    v251 = sub_258F09EB0();
    if (v250 >= 1)
    {
      sub_258E2CE6C(v250, v251, v252);
    }

    v253 = *(v340 + 2232);
    v254 = *(v340 + 2216);

    sub_258F09EB0();
    v318(v253, v338, v254);
    if (v250 <= 0)
    {
    }

    else
    {
      v255 = *(v340 + 2208);
      v256 = *(v340 + 2192);
      (*v332)(v255, v328, v256);
      sub_258F09F10();

      (*v336)(v255, v256);
    }

    v257 = *(v340 + 2256);
    v249(*(v340 + 2232), *(v340 + 2216));
    sub_258DE2184(v257, &qword_27F989B40, &unk_258F11670);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_258DFCF90(v325, 1);
    v258 = *(v340 + 2520);
    v307 = *(v340 + 2512);
    v309 = *(v340 + 2504);
    v299 = *(v340 + 2480);
    v302 = *(v340 + 2472);
    v304 = *(v340 + 2496);
    v259 = *(v340 + 2456);
    v260 = *(v340 + 2448);
    v261 = *(v340 + 2440);
    v262 = *(v340 + 2424);
    v263 = *(v340 + 2416);
    v264 = *(v340 + 2400);
    v265 = *(v340 + 2176);
    sub_258F0A0F0();
    sub_258F09AC0();
    sub_258F09BB0();
    v310(v263, v264);
    v266 = v261;
    v267 = sub_258F09B70();
    v323(v266, v262);

    v323(v260, v262);
    v323(v259, v262);
    *v265 = v267;
    v265[1] = MEMORY[0x277D84F90];
    v265[2] = v334;
    sub_258E5DD44(v258, "DictationDeviceExperimentMetricsCalculatorSP", 44, 2, v324);

    (*(v299 + 8))(v304, v302);
    (*(v307 + 8))(v258, v309);

    v268 = *(v340 + 8);

    v268();
    return;
  }

  v326 = 0;
  v327 = 0;
  v316 = (v1 + 1176);
  v317 = (v1 + 1048);
  v314 = (v1 + 1368);
  v315 = (v1 + 1240);
  v313 = (v1 + 1464);
  v272 = (v1 + 2160);
  v273 = (v1 + 2152);
  v270 = (v1 + 2528);
  v271 = (v1 + 2168);
  v269 = (v1 + 2532);
  v276 = *(v1 + 2392);
  v311 = *(v1 + 2384);
  v275 = (*(v1 + 2312) + 56);
  v312 = *(v1 + 2304);
  v334 = MEMORY[0x277D84F90];
  v274 = *(v1 + 2280);
  while (1)
  {
    v41 = sub_258F0A060();
    if (!v41)
    {
      goto LABEL_23;
    }

    v42 = v41;
    v43 = sub_258F0A350();
    v44 = sub_258F0A810();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v341[0] = v46;
      *v45 = 136315138;
      v47 = sub_258F0A420();
      v49 = sub_258DE3018(v47, v48, v341);

      *(v45 + 4) = v49;
      v1 = v340;
      _os_log_impl(&dword_258DD8000, v43, v44, "DictationDeviceExperimentMetrics row data: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x259C9EF40](v46, -1, -1);
      MEMORY[0x259C9EF40](v45, -1, -1);
    }

    *(v1 + 1896) = 0x5F746375646F7270;
    *(v1 + 1904) = 0xEA00000000006469;
    sub_258F0AA80();
    if (!*(v42 + 16) || (v50 = sub_258E2EA2C(v1 + 56), (v51 & 1) == 0))
    {

      sub_258E0F590(v1 + 56);
LABEL_41:
      v56 = sub_258F0A350();
      v60 = sub_258F0A820();
      if (!os_log_type_enabled(v56, v60))
      {
        goto LABEL_22;
      }

      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_258DD8000, v56, v60, "row does not have product Id", v61, 2u);
      v62 = v61;
LABEL_43:
      MEMORY[0x259C9EF40](v62, -1, -1);
      goto LABEL_22;
    }

    sub_258DE4090(*(v42 + 56) + 32 * v50, v1 + 856);
    sub_258E0F590(v1 + 56);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_41;
    }

    v52 = *(v1 + 1848);
    v53 = *(v1 + 1856);
    if ((v52 != 0x4F49544154434944 || v53 != 0xE90000000000004ELL) && (sub_258F0AD80() & 1) == 0)
    {

      v56 = sub_258F0A350();
      v64 = sub_258F0A810();

      if (!os_log_type_enabled(v56, v64))
      {

        goto LABEL_23;
      }

      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v341[0] = v66;
      *v65 = 136315138;
      v67 = sub_258DE3018(v52, v53, v341);

      *(v65 + 4) = v67;
      _os_log_impl(&dword_258DD8000, v56, v64, "productId of DICTATION is only supported from this extension - skipping row with productId: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      MEMORY[0x259C9EF40](v66, -1, -1);
      v62 = v65;
      goto LABEL_43;
    }

    v54 = sub_258E2A258(v42, *(v1 + 2448), 0xD00000000000002ALL, 0x8000000258F1A590);
    v56 = v54;
    if ((v55 & 0x10000) != 0)
    {

LABEL_22:

      goto LABEL_23;
    }

    v305 = v54;
    if (v55)
    {
      if (__OFADD__(v327, 1))
      {
        goto LABEL_447;
      }

      ++v327;
    }

    sub_258E2AD24(v42, *(v1 + 2392));
    v57 = [objc_allocWithZone(MEMORY[0x277D5A900]) init];
    *(v1 + 1752) = 0xD000000000000015;
    *(v1 + 1760) = 0x8000000258F1BA40;
    sub_258F0AA80();
    if (*(v42 + 16) && (v58 = sub_258E2EA2C(v1 + 216), (v59 & 1) != 0))
    {
      sub_258DE4090(*(v42 + 56) + 32 * v58, v317);
    }

    else
    {
      *v317 = 0u;
      v317[1] = 0u;
    }

    sub_258E0F590(v1 + 216);
    if (*(v1 + 1072))
    {
      if (swift_dynamicCast())
      {
        v63 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(*(v1 + 1928), *(v1 + 1936));

        v57 = v63;
      }
    }

    else
    {
      sub_258DE2184(v317, &qword_27F989868, &unk_258F12D70);
    }

    *(v1 + 1656) = 0xD000000000000016;
    *(v1 + 1664) = 0x8000000258F1BA60;
    sub_258F0AA80();
    if (*(v42 + 16) && (v68 = sub_258E2EA2C(v1 + 336), (v69 & 1) != 0))
    {
      sub_258DE4090(*(v42 + 56) + 32 * v68, v316);
    }

    else
    {
      *v316 = 0u;
      v316[1] = 0u;
    }

    sub_258E0F590(v1 + 336);
    v297 = v57;
    if (*(v1 + 1200))
    {
      if (swift_dynamicCast())
      {
        v70 = *(v1 + 1944);
        v71 = *(v1 + 1952);

        v72._countAndFlagsBits = v70;
        v72._object = v71;
        SiriReponseCategory.init(rawValue:)(v72);
        v73 = v341[0];
        if (LOBYTE(v341[0]) == 21)
        {

          v74 = sub_258F0A350();
          v75 = sub_258F0A800();

          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            v341[0] = v77;
            *v76 = 136315138;
            v78 = sub_258DE3018(v70, v71, v341);

            *(v76 + 4) = v78;
            _os_log_impl(&dword_258DD8000, v74, v75, "Invalid response category found %s", v76, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v77);
            v79 = v77;
            v1 = v340;
            MEMORY[0x259C9EF40](v79, -1, -1);
            MEMORY[0x259C9EF40](v76, -1, -1);
          }

          else
          {
          }

          v296 = 0;
          v295 = 1;
        }

        else
        {

          LOBYTE(v341[0]) = v73;
          v296 = _s16MetricsFramework04SiriA16CalculatorHelperO33convertToSISchemaResponseCategory8categorySo0hiJ0VAA0c7ReponseJ0O_tFZ_0(v341);
          v295 = 0;
        }

        goto LABEL_65;
      }
    }

    else
    {
      sub_258DE2184(v316, &qword_27F989868, &unk_258F12D70);
    }

    v80 = sub_258F0A350();
    v81 = sub_258F0A800();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_258DD8000, v80, v81, "no response category found", v82, 2u);
      MEMORY[0x259C9EF40](v82, -1, -1);
    }

    v296 = 0;
    v295 = 1;
LABEL_65:
    *(v1 + 1704) = 0x6974756F725F6569;
    *(v1 + 1712) = 0xEA0000000000676ELL;
    sub_258F0AA80();
    if (*(v42 + 16) && (v83 = sub_258E2EA2C(v1 + 456), (v84 & 1) != 0))
    {
      sub_258DE4090(*(v42 + 56) + 32 * v83, v314);
    }

    else
    {
      *v314 = 0u;
      v314[1] = 0u;
    }

    sub_258E0F590(v1 + 456);
    if (*(v1 + 1392))
    {
      if (swift_dynamicCast())
      {
        v85 = *(v1 + 1960);
        v86 = *(v1 + 1968);

        v87 = _s16MetricsFramework15ExtensionsUtilsC15decodeIERoutingySaySo08SISchemaF0VGSgSSSgFZ_0(v85, v86);

        v308 = v87;
        if (v87)
        {
        }

        else
        {

          v96 = sub_258F0A350();
          v97 = sub_258F0A800();

          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            v341[0] = v99;
            *v98 = 136315138;
            v100 = sub_258DE3018(v85, v86, v341);

            *(v98 + 4) = v100;
            _os_log_impl(&dword_258DD8000, v96, v97, "Invalid ieRouting found %s", v98, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v99);
            v101 = v99;
            v1 = v340;
            MEMORY[0x259C9EF40](v101, -1, -1);
            MEMORY[0x259C9EF40](v98, -1, -1);
          }

          else
          {
          }

          v308 = 0;
        }

        goto LABEL_77;
      }
    }

    else
    {
      sub_258DE2184(v314, &qword_27F989868, &unk_258F12D70);
    }

    v88 = sub_258F0A350();
    v89 = sub_258F0A800();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_258DD8000, v88, v89, "No ieRouting found", v90, 2u);
      MEMORY[0x259C9EF40](v90, -1, -1);
    }

    v308 = 0;
LABEL_77:
    *(v1 + 1608) = 0xD000000000000011;
    *(v1 + 1616) = 0x8000000258F1BA80;
    sub_258F0AA80();
    if (*(v42 + 16) && (v91 = sub_258E2EA2C(v1 + 576), (v92 & 1) != 0))
    {
      sub_258DE4090(*(v42 + 56) + 32 * v91, v313);
    }

    else
    {
      *v313 = 0u;
      v313[1] = 0u;
    }

    sub_258E0F590(v1 + 576);
    if (!*(v1 + 1488))
    {
      sub_258DE2184(v313, &qword_27F989868, &unk_258F12D70);
LABEL_86:
      v303 = 0;
      v301 = 1;
      goto LABEL_302;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_86;
    }

    v93 = sub_258F0A4E0();

    v94 = v93;
    if ([v94 isEqualToString:@"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE"])
    {
      v303 = 0;
    }

    else
    {
      if ([v94 isEqualToString:@"INVOCATIONSOURCE_HOME_BUTTON"])
      {
        v95 = 1;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_LOCK_BUTTON"])
      {
        v95 = 2;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_BUTTON"])
      {
        v95 = 3;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_STEERING_WHEEL_BUTTON"])
      {
        v95 = 4;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_TOUCHBAR_BUTTON"])
      {
        v95 = 5;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_KEYBOARD_SHORTCUT"])
      {
        v95 = 6;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_APPLICATION_ICON"])
      {
        v95 = 7;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_WIRED_MICROPHONE_BUTTON"])
      {
        v95 = 8;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_REMOTE_MICROPHONE_BUTTON"])
      {
        v95 = 9;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_BANNER"])
      {
        v95 = 10;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_CARD_SECTION"])
      {
        v95 = 11;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_TAP_TO_EDIT"])
      {
        v95 = 12;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_STRUCTURED_DICTATION"])
      {
        v95 = 13;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_SOFT_BUTTON"])
      {
        v95 = 14;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_AUTO_PROMPT"])
      {
        v95 = 15;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_RAISE_TO_SPEAK"])
      {
        v95 = 16;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_VOICE_TRIGGER"])
      {
        v95 = 17;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_HARDWARE_BUTTON"])
      {
        v95 = 18;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_HANDOFF"])
      {
        v95 = 19;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_ELEMENT"])
      {
        v95 = 20;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_VOICE_TRIGGER"])
      {
        v95 = 21;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_MENU_BAR"])
      {
        v95 = 22;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DOCK_ICON"])
      {
        v95 = 23;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_HOME_BUTTON"])
      {
        v95 = 24;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_VOICETRIGGER"])
      {
        v95 = 25;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_GATEKEEPER"])
      {
        v95 = 26;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_SIRI_BUTTON"])
      {
        v95 = 27;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_IN_APP_SIRI_AFFORDANCE"])
      {
        v95 = 28;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_BREADCRUMB"])
      {
        v95 = 29;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_GUIDE_BUTTON"])
      {
        v95 = 30;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_VERTICAL_SWIPE"])
      {
        v95 = 31;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_SUGGESTION"])
      {
        v95 = 32;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_ASK_SIRI"])
      {
        v95 = 33;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_SIRI_COMPLICATION"])
      {
        v95 = 34;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_TV_REMOTE_BUTTON"])
      {
        v95 = 35;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_NONAPPLE_REMOTE"])
      {
        v95 = 36;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_REMOTE_APP"])
      {
        v95 = 37;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_REMOTE_UI"])
      {
        v95 = 38;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON"])
      {
        v95 = 39;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON"])
      {
        v95 = 40;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_SPEECH_API"])
      {
        v95 = 41;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TV_REMOTE"])
      {
        v95 = 42;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_SHORTCUT_ENROLLMENT"])
      {
        v95 = 43;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_ENROLLMENT"])
      {
        v95 = 44;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_PROXIMITY_ENROLLMENT"])
      {
        v95 = 45;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_SIRI_SECONDARY_DEVICE"])
      {
        v95 = 46;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE"])
      {
        v95 = 47;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_SIRI_TRIGGERLESS"])
      {
        v95 = 48;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_SIRI_NOTIFICATION"])
      {
        v95 = 49;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_TEST_AUTOMATION"])
      {
        v95 = 50;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_WAVEFORM_GLYPH_BUTTON"])
      {
        v95 = 51;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_SIRI_AUTO_PROMPT"])
      {
        v95 = 52;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GLOBE_BUTTON"])
      {
        v95 = 53;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_LONG_PRESS"])
      {
        v95 = 54;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_ACCESSIBILITY_BACKTAP"])
      {
        v95 = 55;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_VOICECOMMAND_BUTTON"])
      {
        v95 = 56;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_VOICECOMMAND_BUTTON"])
      {
        v95 = 57;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_APPLETV_REMOTE_DEVICE"])
      {
        v95 = 58;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_MESSAGE_SEND_BUTTON"])
      {
        v95 = 59;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_WITH_INPUT_SWITCHER"])
      {
        v95 = 60;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON_FIRST_RESPONDER"])
      {
        v95 = 61;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR"])
      {
        v95 = 62;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR_FIRST_RESPONDER"])
      {
        v95 = 63;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SEARCH_BAR_VISIBLE"])
      {
        v95 = 64;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SEARCH_MIC_VISIBLE"])
      {
        v95 = 65;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SAFARI_MIC_VISIBLE"])
      {
        v95 = 66;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SAFARI_MIC_VISIBLE"])
      {
        v95 = 67;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_FROM_QUICKBOARD"])
      {
        v95 = 68;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON"])
      {
        v95 = 69;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MIC_ICON_UCBBAR"])
      {
        v95 = 70;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_GLOBE_BUTTON_SHORTCUT"])
      {
        v95 = 71;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_STANDARD_SHORTCUT"])
      {
        v95 = 72;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_CALL"])
      {
        v95 = 73;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_NOTIFICATION"])
      {
        v95 = 74;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_AIRPODS_MAX_BUTTON_PRESS"])
      {
        v95 = 75;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_AUTO_START"])
      {
        v95 = 76;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_MIC_BUTTON_PRESSED"])
      {
        v95 = 77;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_LANGUAGE_PICKER_ITEM_SELECTED"])
      {
        v95 = 78;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_FLEXIBLE_FOLLOW_UPS"])
      {
        v95 = 79;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_JS_VOICE_TRIGGER"])
      {
        v95 = 80;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON_WHILE_KEYBOARD_NOT_VISIBLE"])
      {
        v95 = 81;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_POP_UP_UI_LANGUAGE_SWITCHER_ICON"])
      {
        v95 = 82;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_LONG_PRESS_TEXT_INPUT_FIELD"])
      {
        v95 = 83;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_DROP_IN"])
      {
        v95 = 84;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI"])
      {
        v95 = 85;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_PINCH"])
      {
        v95 = 87;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GAZE"])
      {
        v95 = 88;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_EXECUTE_ON_REMOTE_REQUEST"])
      {
        v95 = 89;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_WATCH_GESTURE_PRIMARY"])
      {
        v95 = 90;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI"])
      {
        v95 = 91;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_HEAD_GESTURE"])
      {
        v95 = 92;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_SOFT_KEYBOARD_BUTTON"])
      {
        v95 = 93;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_WRITING_TOOLS"])
      {
        v95 = 94;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_GENERATIVE_FIELD"])
      {
        v95 = 95;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_SUGGESTION"])
      {
        v95 = 96;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI_CONTROL_CENTER"])
      {
        v95 = 97;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE"])
      {
        v95 = 98;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE_QUICK_TYPE"])
      {
        v95 = 99;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_KEYBOARD_SHORTCUT"])
      {
        v95 = 100;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_MENU_BAR"])
      {
        v95 = 101;
      }

      else if ([v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TAP"])
      {
        v95 = 102;
      }

      else
      {
        v95 = [v94 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TRAILING_MIC_BUTTON"] ? 103 : 0;
      }

      v303 = v95;
    }

    v301 = 0;
    v1 = v340;
LABEL_302:
    *(v1 + 1784) = 0xD000000000000011;
    *(v1 + 1792) = 0x8000000258F1A5C0;
    sub_258F0AA80();
    if (*(v42 + 16) && (v102 = sub_258E2EA2C(v1 + 696), (v103 & 1) != 0))
    {
      sub_258DE4090(*(v42 + 56) + 32 * v102, v315);
    }

    else
    {
      *v315 = 0u;
      v315[1] = 0u;
    }

    sub_258E0F590(v1 + 696);
    if (!*(v1 + 1264))
    {
      sub_258DE2184(v315, &qword_27F989868, &unk_258F12D70);
LABEL_311:
      v300 = 0;
      v298 = 1;
      goto LABEL_321;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_311;
    }

    v104 = sub_258F0A4E0();

    v105 = v104;
    if ([v105 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_UNKNOWN"])
    {
      v300 = 0;
    }

    else
    {
      if ([v105 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_ALLOCATED"])
      {
        v106 = 1;
      }

      else if ([v105 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_ACTIVATED"])
      {
        v106 = 2;
      }

      else
      {
        v106 = [v105 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_DEACTIVATED"] ? 3 : 0;
      }

      v300 = v106;
    }

    v298 = 0;
LABEL_321:
    v107 = *(v1 + 2376);
    v108 = sub_258F09A70();
    v109 = *(v108 - 8);
    v329 = v108;
    v320 = *(v109 + 56);
    v320(v107, 1, 1);
    *(v1 + 1880) = 0xD000000000000015;
    *(v1 + 1888) = 0x8000000258F189D0;
    sub_258F0AA80();
    sub_258E262F8(v1 + 816, v42, (v1 + 1016));
    sub_258E0F590(v1 + 816);
    if (*(v1 + 1040))
    {
      if (swift_dynamicCast())
      {
        v110 = *(v1 + 2376);
        v111 = *(v1 + 2368);
        sub_258F09A30();

        sub_258DE2184(v110, &qword_27F988730, &unk_258F0F8E0);
        sub_258E2EAD8(v111, v110, &qword_27F988730, &unk_258F0F8E0);
      }
    }

    else
    {
      sub_258DE2184(v1 + 1016, &qword_27F989868, &unk_258F12D70);
    }

    v112 = *(v1 + 2360);
    sub_258DE20C0(*(v1 + 2376), v112, &qword_27F988730, &unk_258F0F8E0);
    v113 = *(v109 + 48);
    v114 = v113(v112, 1, v329);
    sub_258DE2184(v112, &qword_27F988730, &unk_258F0F8E0);
    if (v114 == 1)
    {
      v115 = sub_258F0A350();
      v116 = sub_258F0A820();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        *v117 = 0;
        _os_log_impl(&dword_258DD8000, v115, v116, "observed NilDeviceAggregationId", v117, 2u);
        MEMORY[0x259C9EF40](v117, -1, -1);
      }

      if (__OFADD__(v326, 1))
      {
        goto LABEL_448;
      }

      ++v326;
    }

    (v320)(*(v1 + 2352), 1, 1, v329);
    *(v1 + 1832) = 0xD000000000000013;
    *(v1 + 1840) = 0x8000000258F1A5E0;
    sub_258F0AA80();
    sub_258E262F8(v1 + 16, v42, (v1 + 1496));
    sub_258E0F590(v1 + 16);
    if (*(v1 + 1520))
    {
      if (swift_dynamicCast())
      {
        v118 = *(v1 + 2368);
        v119 = *(v1 + 2352);
        sub_258F09A30();

        sub_258DE2184(v119, &qword_27F988730, &unk_258F0F8E0);
        sub_258E2EAD8(v118, v119, &qword_27F988730, &unk_258F0F8E0);
      }
    }

    else
    {
      sub_258DE2184(v1 + 1496, &qword_27F989868, &unk_258F12D70);
    }

    v120 = *(v1 + 2344);
    sub_258DE20C0(*(v1 + 2352), v120, &qword_27F988730, &unk_258F0F8E0);
    v121 = v113(v120, 1, v329);
    sub_258DE2184(v120, &qword_27F988730, &unk_258F0F8E0);
    if (v121 == 1)
    {
      v122 = sub_258F0A350();
      v123 = sub_258F0A820();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&dword_258DD8000, v122, v123, "observed NilUserAggregationId", v124, 2u);
        MEMORY[0x259C9EF40](v124, -1, -1);
      }
    }

    *(v1 + 1800) = 0xD000000000000029;
    *(v1 + 1808) = 0x8000000258F18AC0;
    sub_258F0AA80();
    sub_258E262F8(v1 + 776, v42, (v1 + 984));
    sub_258E0F590(v1 + 776);
    if (*(v1 + 1008))
    {
      v125 = swift_dynamicCast();
      v126 = v125 ? *v273 : 0;
      v127 = v125 ^ 1;
    }

    else
    {
      sub_258DE2184(v1 + 984, &qword_27F989868, &unk_258F12D70);
      v126 = 0;
      v127 = 1;
    }

    *(v1 + 1736) = 0xD00000000000002BLL;
    *(v1 + 1744) = 0x8000000258F18AF0;
    sub_258F0AA80();
    sub_258E262F8(v1 + 736, v42, (v1 + 1080));
    sub_258E0F590(v1 + 736);
    if (*(v1 + 1104))
    {
      v128 = swift_dynamicCast();
      v129 = v128 ? *v272 : 0;
      v130 = v128 ^ 1;
    }

    else
    {
      sub_258DE2184(v1 + 1080, &qword_27F989868, &unk_258F12D70);
      v129 = 0;
      v130 = 1;
    }

    v292 = v130;
    v131 = *(v1 + 2376);
    v132 = *(v1 + 2352);
    v133 = *(v1 + 2336);
    v134 = *(v1 + 2320);
    sub_258E2BAC0(v42, v133);
    sub_258F09A60();
    (v320)(v134, 0, 1, v329);
    sub_258DE20C0(v131, v134 + v312[5], &qword_27F988730, &unk_258F0F8E0);
    sub_258DE20C0(v132, v134 + v312[6], &qword_27F988730, &unk_258F0F8E0);
    sub_258F099E0();
    if ((*&v135 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v135 <= -1.0)
    {
      goto LABEL_444;
    }

    if (v135 >= 1.84467441e19)
    {
      goto LABEL_445;
    }

    if (!is_mul_ok(v135, 0x3E8uLL))
    {
      goto LABEL_446;
    }

    v136 = 1000 * v135;
    v137 = *(v340 + 2320);
    v330 = *(v340 + 2304);
    v138 = *(v340 + 2272);
    v139 = *(v340 + 2264);
    v140 = [objc_opt_self() sharedPreferences];
    v141 = [v140 longLivedIdentifierUploadingEnabled];

    v142 = v137 + v312[7];
    *v142 = v136;
    *(v142 + 8) = 0;
    *(v137 + v312[8]) = v305;
    v143 = v137 + v312[9];
    *v143 = v126;
    *(v143 + 8) = v127;
    v144 = v137 + v312[10];
    *v144 = v129;
    *(v144 + 8) = v292;
    v145 = v137 + v312[11];
    *v145 = 0;
    *(v145 + 4) = 1;
    *(v137 + v312[12]) = v141 ^ 1;
    type metadata accessor for DeviceExperimentMetricsBuilderImpl(0);
    swift_allocObject();
    v146 = sub_258E3C08C();
    sub_258E5E344(v137, v138, type metadata accessor for EventMetadata);
    (*v275)(v138, 0, 1, v330);
    sub_258E2EAD8(v138, v139, &qword_27F9894E0, &unk_258F106A0);
    v147 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_eventMetadata;
    swift_beginAccess();
    sub_258E2EA70(v139, v146 + v147, &qword_27F9894E0, &unk_258F106A0);
    swift_endAccess();
    v148 = v146 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digestType;
    *v148 = 2;
    *(v148 + 4) = 0;
    strcpy((v340 + 1688), "experiment_id");
    *(v340 + 1702) = -4864;
    sub_258F0AA80();
    sub_258E262F8(v340 + 656, v42, (v340 + 1208));
    sub_258E0F590(v340 + 656);
    if (*(v340 + 1232))
    {
      v149 = swift_dynamicCast();
      v150 = *(v340 + 2088);
      v151 = *(v340 + 2096);
      if (!v149)
      {
        v150 = 0;
        v151 = 0;
      }
    }

    else
    {
      sub_258DE2184(v340 + 1208, &qword_27F989868, &unk_258F12D70);
      v150 = 0;
      v151 = 0;
    }

    v152 = *(v340 + 2368);
    v153 = *(v340 + 2336);
    v154 = (v146 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_experimentId);
    *v154 = v150;
    v154[1] = v151;

    sub_258DE20C0(v153, v152, &qword_27F988730, &unk_258F0F8E0);
    v155 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_treatmentIdUUID;
    swift_beginAccess();
    sub_258E2EA70(v152, v146 + v155, &qword_27F988730, &unk_258F0F8E0);
    swift_endAccess();
    strcpy((v340 + 2136), "deployment_id");
    *(v340 + 2150) = -4864;
    sub_258F0AA80();
    sub_258E262F8(v340 + 616, v42, (v340 + 1336));
    sub_258E0F590(v340 + 616);
    if (*(v340 + 1360))
    {
      v156 = swift_dynamicCast();
      v157 = *v271;
      if (!v156)
      {
        v157 = 0;
      }

      v158 = v156 ^ 1;
    }

    else
    {
      sub_258DE2184(v340 + 1336, &qword_27F989868, &unk_258F12D70);
      v157 = 0;
      v158 = 1;
    }

    v159 = v146 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deploymentId;
    *v159 = v157;
    *(v159 + 8) = v158;
    *(v340 + 1576) = 0x745F656369766564;
    *(v340 + 1584) = 0xEB00000000657079;
    sub_258F0AA80();
    sub_258E262F8(v340 + 536, v42, (v340 + 1432));
    sub_258E0F590(v340 + 536);
    if (*(v340 + 1456))
    {
      v160 = swift_dynamicCast();
      v161 = *(v340 + 2056);
      v162 = *(v340 + 2064);
      if (!v160)
      {
        v161 = 0;
        v162 = 0;
      }
    }

    else
    {
      sub_258DE2184(v340 + 1432, &qword_27F989868, &unk_258F12D70);
      v161 = 0;
      v162 = 0;
    }

    v163 = (v146 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deviceType);
    *v163 = v161;
    v163[1] = v162;

    v164 = *(v276 + 44);
    v165 = v146 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_programCode;
    *v165 = *(v276 + 40);
    *(v165 + 4) = v164;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894F0, &qword_258F11690);
    v166 = type metadata accessor for ExperimentDigest(0);
    v306 = (*(*(v166 - 1) + 80) + 32) & ~*(*(v166 - 1) + 80);
    v331 = swift_allocObject();
    *(v331 + 16) = xmmword_258F0B820;
    *(v340 + 1640) = 0x5F746375646F7270;
    *(v340 + 1648) = 0xEA00000000006469;
    sub_258F0AA80();
    sub_258E262F8(v340 + 496, v42, (v340 + 888));
    sub_258E0F590(v340 + 496);
    if (*(v340 + 912))
    {
      v167 = swift_dynamicCast();
      v168 = *(v340 + 2040);
      if (!v167)
      {
        v168 = 0;
      }

      v321 = v168;
      if (v167)
      {
        v169 = *(v340 + 2048);
      }

      else
      {
        v169 = 0;
      }

      v319 = v169;
    }

    else
    {
      sub_258DE2184(v340 + 888, &qword_27F989868, &unk_258F12D70);
      v321 = 0;
      v319 = 0;
    }

    strcpy((v340 + 1624), "system_build");
    *(v340 + 1637) = 0;
    *(v340 + 1638) = -5120;
    sub_258F0AA80();
    sub_258E262F8(v340 + 416, v42, (v340 + 1400));
    sub_258E0F590(v340 + 416);
    if (*(v340 + 1424))
    {
      v170 = swift_dynamicCast();
      if (v170)
      {
        v171 = *(v340 + 2024);
      }

      else
      {
        v171 = 0;
      }

      if (v170)
      {
        v172 = *(v340 + 2032);
      }

      else
      {
        v172 = 0;
      }

      v291 = v172;
      v293 = v171;
    }

    else
    {
      sub_258DE2184(v340 + 1400, &qword_27F989868, &unk_258F12D70);
      v291 = 0;
      v293 = 0;
    }

    v289 = *(v276 + 12);
    v290 = *(v276 + 8);
    v287 = *(v276 + 4);
    v288 = **(v340 + 2392);
    *(v340 + 1672) = 0xD000000000000012;
    *(v340 + 1680) = 0x8000000258F1A600;
    sub_258F0AA80();
    sub_258E262F8(v340 + 376, v42, (v340 + 1304));
    sub_258E0F590(v340 + 376);
    if (*(v340 + 1328))
    {
      v173 = swift_dynamicCast();
      if (v173)
      {
        v174 = *(v340 + 2008);
      }

      else
      {
        v174 = 0;
      }

      if (v173)
      {
        v175 = *(v340 + 2016);
      }

      else
      {
        v175 = 0;
      }

      v285 = v175;
      v286 = v174;
    }

    else
    {
      sub_258DE2184(v340 + 1304, &qword_27F989868, &unk_258F12D70);
      v285 = 0;
      v286 = 0;
    }

    *(v340 + 1720) = 0xD000000000000013;
    *(v340 + 1728) = 0x8000000258F1A620;
    sub_258F0AA80();
    sub_258E262F8(v340 + 296, v42, (v340 + 1272));
    sub_258E0F590(v340 + 296);
    if (*(v340 + 1296))
    {
      v176 = swift_dynamicCast();
      v177 = *(v340 + 1992);
      if (!v176)
      {
        v177 = 0;
      }

      v294 = v177;
      if (v176)
      {
        v178 = *(v340 + 2000);
      }

      else
      {
        v178 = 0;
      }

      v284 = v178;
    }

    else
    {
      sub_258DE2184(v340 + 1272, &qword_27F989868, &unk_258F12D70);
      v294 = 0;
      v284 = 0;
    }

    v282 = *(v276 + 20);
    v283 = *(v276 + 16);
    v280 = *(v276 + 28);
    v281 = *(v276 + 24);
    v179 = *(v276 + 32);
    *(v340 + 1768) = 0x616D6F645F627573;
    *(v340 + 1776) = 0xEA00000000006E69;
    v180 = v179;
    sub_258F0AA80();
    sub_258E262F8(v340 + 256, v42, (v340 + 1144));
    sub_258E0F590(v340 + 256);
    if (*(v340 + 1168))
    {
      v181 = swift_dynamicCast();
      v182 = *(v340 + 1976);
      if (!v181)
      {
        v182 = 0;
      }

      v279 = v182;
      if (v181)
      {
        v183 = *(v340 + 1984);
      }

      else
      {
        v183 = 0;
      }
    }

    else
    {
      sub_258DE2184(v340 + 1144, &qword_27F989868, &unk_258F12D70);
      v279 = 0;
      v183 = 0;
    }

    sub_258DE20C0(*(v340 + 2392) + *(v311 + 40), *(v340 + 2328), &qword_27F988730, &unk_258F0F8E0);
    *(v340 + 1816) = 0xD00000000000001BLL;
    *(v340 + 1824) = 0x8000000258F1BAA0;
    sub_258F0AA80();
    sub_258E262F8(v340 + 176, v42, (v340 + 1112));
    sub_258E0F590(v340 + 176);
    if (*(v340 + 1136))
    {
      v184 = swift_dynamicCast();
      v185 = *(v340 + 2536);
      if (!v184)
      {
        v185 = 2;
      }
    }

    else
    {
      sub_258DE2184(v340 + 1112, &qword_27F989868, &unk_258F12D70);
      v185 = 2;
    }

    v278 = v185;
    *(v340 + 1864) = 0x746E635F6E727574;
    *(v340 + 1872) = 0xE800000000000000;
    sub_258F0AA80();
    sub_258E262F8(v340 + 136, v42, (v340 + 952));
    sub_258E0F590(v340 + 136);
    if (*(v340 + 976))
    {
      v186 = swift_dynamicCast();
      v187 = *v270;
      if (!v186)
      {
        v187 = 0;
      }

      v277 = v187;
      v188 = v186 ^ 1;
    }

    else
    {
      sub_258DE2184(v340 + 952, &qword_27F989868, &unk_258F12D70);
      v277 = 0;
      v188 = 1;
    }

    v189 = v331 + v306;
    strcpy((v340 + 1912), "user_turn_cnt");
    *(v340 + 1926) = -4864;
    sub_258F0AA80();
    sub_258E262F8(v340 + 96, v42, (v340 + 920));

    sub_258E0F590(v340 + 96);
    if (*(v340 + 944))
    {
      v190 = swift_dynamicCast();
      if (v190)
      {
        v191 = *v269;
      }

      else
      {
        v191 = 0;
      }

      v192 = v190 ^ 1;
    }

    else
    {
      sub_258DE2184(v340 + 920, &qword_27F989868, &unk_258F12D70);
      v191 = 0;
      v192 = 1;
    }

    v193 = *(*(v340 + 2392) + *(v311 + 44));
    *v189 = v321;
    *(v189 + 8) = v319;
    *(v189 + 16) = v293;
    *(v189 + 24) = v291;
    *(v189 + 32) = v290;
    *(v189 + 36) = v289;
    *(v189 + 40) = v288;
    *(v189 + 44) = v287;
    *(v189 + 48) = v286;
    *(v189 + 56) = v285;
    *(v189 + 64) = v294;
    *(v189 + 72) = v284;
    *(v189 + 80) = v283;
    *(v189 + 84) = v282;
    *(v189 + 88) = v281;
    *(v189 + 92) = v280;
    *(v189 + 112) = v279;
    *(v189 + 120) = v183;
    *(v189 + 128) = v296;
    *(v189 + 132) = v295;
    v194 = *(v340 + 2328);
    *(v189 + 136) = v300;
    v195 = *(v340 + 2296);
    *(v189 + 96) = v179;
    v196 = *(v340 + 2288);
    *(v189 + 104) = v297;
    *(v189 + 140) = v298;
    *(v189 + 141) = 514;
    sub_258E2EAD8(v194, v189 + v166[19], &qword_27F988730, &unk_258F0F8E0);
    *(v189 + v166[20]) = v278;
    *(v189 + v166[21]) = v308;
    v197 = v189 + v166[22];
    *v197 = v303;
    *(v197 + 4) = v301;
    v198 = v189 + v166[23];
    *v198 = v277;
    *(v198 + 4) = v188;
    v199 = v189 + v166[24];
    *v199 = v191;
    *(v199 + 4) = v192;
    v200 = v189 + v166[25];
    *v200 = 0;
    *(v200 + 4) = 1;
    v201 = v189 + v166[26];
    *v201 = 0;
    *(v201 + 4) = 1;
    v202 = v189 + v166[27];
    *v202 = 0;
    *(v202 + 4) = 1;
    v203 = v189 + v166[28];
    *v203 = 0;
    *(v203 + 4) = 1;
    v204 = v189 + v166[29];
    *v204 = 0;
    *(v204 + 4) = 1;
    v205 = v189 + v166[30];
    *v205 = 0;
    *(v205 + 4) = 1;
    v206 = v189 + v166[31];
    *v206 = 0;
    *(v206 + 4) = 1;
    v207 = v189 + v166[32];
    *v207 = 0;
    *(v207 + 4) = 1;
    v208 = v189 + v166[33];
    *v208 = 0;
    *(v208 + 4) = 1;
    v209 = v189 + v166[34];
    *v209 = 0;
    *(v209 + 4) = 1;
    v210 = v189 + v166[35];
    *v210 = 0;
    *(v210 + 4) = 1;
    v211 = v189 + v166[36];
    *v211 = 0;
    *(v211 + 4) = 1;
    v212 = v189 + v166[37];
    *v212 = 1;
    *(v212 + 8) = 0u;
    *(v212 + 24) = 0u;
    *(v189 + v166[38]) = v193;
    *(v146 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digests) = v331;

    v213 = v297;

    sub_258E3BDA4(v195);

    sub_258E5E344(v195, v196, type metadata accessor for DeviceExperimentMetrics);
    v214 = v334;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v214 = sub_258DE26CC(0, v334[2] + 1, 1, v334);
    }

    v216 = v214[2];
    v215 = v214[3];
    v334 = v214;
    if (v216 >= v215 >> 1)
    {
      v334 = sub_258DE26CC((v215 > 1), v216 + 1, 1, v214);
    }

    v217 = *(v340 + 2392);
    v218 = *(v340 + 2376);
    v219 = *(v340 + 2352);
    v220 = *(v340 + 2336);
    v221 = *(v340 + 2320);
    v222 = *(v340 + 2296);
    v223 = *(v340 + 2288);

    sub_258E5E3AC(v222, type metadata accessor for DeviceExperimentMetrics);
    v224 = v221;
    v1 = v340;
    sub_258E5E3AC(v224, type metadata accessor for EventMetadata);
    sub_258DE2184(v220, &qword_27F988730, &unk_258F0F8E0);
    sub_258DE2184(v219, &qword_27F988730, &unk_258F0F8E0);
    sub_258DE2184(v218, &qword_27F988730, &unk_258F0F8E0);
    sub_258E5E3AC(v217, type metadata accessor for CommonDigestElements);
    v334[2] = v216 + 1;
    sub_258E2EB40(v223, v334 + ((*(v274 + 80) + 32) & ~*(v274 + 80)) + *(v274 + 72) * v216);
LABEL_23:
    if ((sub_258F0A070() & 1) == 0)
    {
      goto LABEL_429;
    }
  }

  __break(1u);
LABEL_444:
  __break(1u);
LABEL_445:
  __break(1u);
LABEL_446:
  __break(1u);
LABEL_447:
  __break(1u);
LABEL_448:
  __break(1u);
}