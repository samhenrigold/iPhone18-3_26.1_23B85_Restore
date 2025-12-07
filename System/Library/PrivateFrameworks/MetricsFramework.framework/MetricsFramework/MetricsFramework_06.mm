uint64_t sub_258E5DD44(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v24 = a2;
  v6 = sub_258F0A300();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_258F0A2C0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_258F0A2D0();
  sub_258F0A310();
  v23 = sub_258F0A850();
  result = sub_258F0A900();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v12 + 8))(v15, v11);
  }

  if ((a4 & 1) == 0)
  {
    v18 = v24;
    if (v24)
    {
LABEL_9:

      sub_258F0A340();

      if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277D85B00])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v10, v6);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_258F0A2B0();
      _os_signpost_emit_with_name_impl(&dword_258DD8000, v16, v23, v21, v18, v19, v20, 2u);
      MEMORY[0x259C9EF40](v20, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v24 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v24 & 0xFFFFF800) != 0xD800)
  {
    if (v24 >> 16 <= 0x10)
    {
      v18 = &v25;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t DictationDeviceExperimentMetricsCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_analyticsEventSubmitter));

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_bookmarkService));

  return v0;
}

uint64_t DictationDeviceExperimentMetricsCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_analyticsEventSubmitter));

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_bookmarkService));

  return swift_deallocClassInstance();
}

uint64_t sub_258E5E220@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework42DictationDeviceExperimentMetricsCalculator_logger;
  v4 = sub_258F0A370();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_258E5E2A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258E599AC(a1);
}

uint64_t sub_258E5E344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258E5E3AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258E5E40C(uint64_t a1)
{
  result = sub_258E5E494(&qword_27F989B50, &unk_258F11718);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258E5E450(uint64_t a1)
{
  result = sub_258E5E494(&qword_27F989B58, &protocol conformance descriptor for DictationDeviceExperimentMetricsCalculator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258E5E494(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DictationDeviceExperimentMetricsCalculator(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258E5E4F0(uint64_t a1)
{
  sub_258F0A370();
  if (v1 <= 0x3F)
  {
    sub_258DE3B74(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of DictationDeviceExperimentMetricsCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t sub_258E5E72C()
{
  v0 = sub_258F0A370();
  __swift_allocate_value_buffer(v0, qword_280CC49F8);
  __swift_project_value_buffer(v0, qword_280CC49F8);
  return sub_258F0A360();
}

uint64_t ExperimentMetricsWorker.doWork(metricsExecutor:context:durationThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = sub_258F0A770();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E5E8AC, 0, 0);
}

uint64_t sub_258E5E8AC()
{
  v80 = v0;
  if (qword_280CC49F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_258F0A370();
  __swift_project_value_buffer(v2, qword_280CC49F8);
  v3 = v1;
  v4 = sub_258F0A350();
  v5 = sub_258F0A800();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v79[0] = v7;
    *v6 = 136315394;
    v8 = sub_258F09E80();
    v10 = sub_258DE3018(v8, v9, v79);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = sub_258F09E90();
    v13 = sub_258DE3018(v11, v12, v79);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_258DD8000, v4, v5, "TaskId: %s, TaskName: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v7, -1, -1);
    MEMORY[0x259C9EF40](v6, -1, -1);
  }

  v14 = *(v0 + 144);
  *v14 = 0;
  v15 = *MEMORY[0x277D81760];
  *(v0 + 328) = v15;
  v16 = sub_258F09E50();
  *(v0 + 192) = v16;
  v17 = *(v16 - 8);
  *(v0 + 200) = v17;
  v18 = *(v17 + 104);
  *(v0 + 208) = v18;
  *(v0 + 216) = (v17 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v18(v14, v15, v16);
  v19 = sub_258F09E80();
  v21 = v20;
  v22 = sub_258F09E90();
  sub_258E60CE8(v19, v21, v22, v23);
  v31 = *(v0 + 160);

  v32 = sub_258F09E00();
  *(v0 + 224) = v32;
  v33 = *(v32 - 8);
  *(v0 + 232) = v33;
  v34 = swift_task_alloc();
  *(v0 + 240) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C70, qword_258F11890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258F0B820;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = 0x8000000258F189B0;
  *(inited + 48) = 60000;
  v36 = v31;
  sub_258DFBCE0(inited);
  swift_setDeallocating();
  sub_258DE2184(inited + 32, &qword_27F988B98, &unk_258F0D3A0);
  sub_258F09DF0();
  v37 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v38 = sub_258F0A4E0();
  v39 = [v37 initWithSuiteName_];
  *(v0 + 248) = v39;

  if (v39)
  {
    v40 = *(v0 + 152);
    *(v0 + 256) = *(v17 + 64);
    v41 = swift_task_alloc();
    *(v0 + 264) = v41;
    v78 = (*(*v40 + 96) + **(*v40 + 96));
    v42 = swift_task_alloc();
    *(v0 + 272) = v42;
    *v42 = v0;
    v42[1] = sub_258E5F4B8;

    return v78(v41, v39, v34, 0xD000000000000034, 0x8000000258F1BE00);
  }

  v49 = sub_258F0A350();
  v50 = sub_258F0A820();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_258DD8000, v49, v50, "Can't get user defaults initialized", v51, 2u);
    MEMORY[0x259C9EF40](v51, -1, -1);
  }

  sub_258DE403C();
  v29 = swift_allocError();
  *v52 = 5;
  swift_willThrow();
  (*(v33 + 8))(v34, v32);

  *(v0 + 96) = v29;
  v24 = sub_258F09E20();
  v25 = *(v24 - 8);
  v26 = swift_task_alloc();
  v27 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v28 = (*(v25 + 88))(v26, v24);
    if (MEMORY[0x277D81740] && v28 == *MEMORY[0x277D81740])
    {

      v29 = *(v0 + 96);
      v30 = 3;
LABEL_41:

      v69 = *(v0 + 208);
      v70 = *(v0 + 192);
      v71 = *(v0 + 200);
      v72 = *(v0 + 328);
      v73 = *(v0 + 144);
      v74 = swift_task_alloc();
      sub_258DE403C();
      v75 = swift_allocError();
      *v76 = v30;
      (*(v71 + 8))(v73, v70);
      *v74 = v75;
      v69(v74, v72, v70);
      (*(v71 + 32))(v73, v74, v70);

      goto LABEL_42;
    }

    if (MEMORY[0x277D81748] && v28 == *MEMORY[0x277D81748])
    {

      v29 = *(v0 + 96);
      v30 = 4;
      goto LABEL_41;
    }

    (*(v25 + 8))(v26, v24);
  }

  *(v0 + 104) = v29;
  v44 = sub_258F0A1D0();
  v45 = *(v44 - 8);
  v46 = swift_task_alloc();
  v47 = v29;
  if (swift_dynamicCast())
  {
    v48 = (*(v45 + 88))(v46, v44);
    if (MEMORY[0x277D04530] && v48 == *MEMORY[0x277D04530])
    {

      v29 = *(v0 + 104);
      v30 = 6;
      goto LABEL_41;
    }

    if (MEMORY[0x277D04538] && v48 == *MEMORY[0x277D04538])
    {

      v29 = *(v0 + 104);
      v30 = 7;
      goto LABEL_41;
    }

    if (MEMORY[0x277D04540] && v48 == *MEMORY[0x277D04540])
    {

      v29 = *(v0 + 104);
      v30 = 8;
      goto LABEL_41;
    }

    (*(v45 + 8))(v46, v44);
  }

  *(v0 + 112) = v29;
  v53 = v29;
  if (swift_dynamicCast())
  {

    v30 = *(v0 + 332);
    v29 = *(v0 + 112);
    goto LABEL_41;
  }

  *(v0 + 120) = v29;
  v54 = sub_258F09E60();
  v55 = *(v54 - 8);
  v56 = swift_task_alloc();
  v57 = v29;
  if (swift_dynamicCast())
  {

    (*(v55 + 8))(v56, v54);

    v29 = *(v0 + 120);
    v30 = 2;
    goto LABEL_41;
  }

  *(v0 + 128) = v29;
  v58 = sub_258F09E10();
  v59 = *(v58 - 8);
  v60 = swift_task_alloc();
  v61 = v29;
  if (swift_dynamicCast())
  {

    (*(v59 + 8))(v60, v58);

    v30 = 0;
    v29 = *(v0 + 128);
    goto LABEL_41;
  }

  *(v0 + 136) = v29;
  v62 = v29;
  if (!swift_dynamicCast())
  {

    v30 = 1;
    goto LABEL_41;
  }

  v63 = *(v0 + 208);
  v64 = *(v0 + 192);
  v66 = *(v0 + 176);
  v65 = *(v0 + 184);
  v67 = *(v0 + 168);
  v68 = *(v0 + 144);
  (*(*(v0 + 200) + 8))(v68, v64);

  v63(v68, *MEMORY[0x277D81770], v64);
  (*(v66 + 8))(v65, v67);

LABEL_42:

  v77 = *(v0 + 8);

  return v77();
}

uint64_t sub_258E5F4B8()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_258E5FF98;
  }

  else
  {
    v4 = v2[33];
    v5 = v2[24];
    v6 = v2[25];
    v7 = *(v6 + 8);
    v2[36] = v7;
    v2[37] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);
    v3 = sub_258E5F5F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E5F5F0()
{
  v1 = v0[19];

  v2 = swift_task_alloc();
  v0[38] = v2;
  v7 = (*(*v1 + 88) + **(*v1 + 88));
  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = sub_258E5F750;
  v5 = v0[30];
  v4 = v0[31];

  return v7(v2, v4, v5, 0xD000000000000034, 0x8000000258F1BE40);
}

uint64_t sub_258E5F750()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_258E60640;
  }

  else
  {
    v2 = sub_258E5F864;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258E5F864()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 144);
  (*(v0 + 288))(v5, v3);
  (*(v4 + 32))(v5, v2, v3);

  v6 = sub_258F09E80();
  v8 = v7;
  v9 = sub_258F09E90();
  sub_258E60CE8(v6, v8, v9, v10);
  v11 = *(v0 + 248);
  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

  if (v1)
  {
    *(v0 + 96) = v1;
    v12 = sub_258F09E20();
    v13 = *(v12 - 8);
    v14 = swift_task_alloc();
    v15 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
    if (swift_dynamicCast())
    {
      v16 = (*(v13 + 88))(v14, v12);
      if (MEMORY[0x277D81740] && v16 == *MEMORY[0x277D81740])
      {

        v17 = 3;
LABEL_30:
        v39 = *(v0 + 208);
        v40 = *(v0 + 192);
        v41 = *(v0 + 200);
        v42 = *(v0 + 328);
        v43 = *(v0 + 144);
        v44 = swift_task_alloc();
        sub_258DE403C();
        v45 = swift_allocError();
        *v46 = v17;
        (*(v41 + 8))(v43, v40);
        *v44 = v45;
        v39(v44, v42, v40);
        (*(v41 + 32))(v43, v44, v40);

        goto LABEL_31;
      }

      if (MEMORY[0x277D81748] && v16 == *MEMORY[0x277D81748])
      {

        v17 = 4;
        goto LABEL_30;
      }

      (*(v13 + 8))(v14, v12);
    }

    *(v0 + 104) = v1;
    v18 = sub_258F0A1D0();
    v19 = *(v18 - 8);
    v20 = swift_task_alloc();
    v21 = v1;
    if (swift_dynamicCast())
    {
      v22 = (*(v19 + 88))(v20, v18);
      if (MEMORY[0x277D04530] && v22 == *MEMORY[0x277D04530])
      {

        v17 = 6;
        goto LABEL_30;
      }

      if (MEMORY[0x277D04538] && v22 == *MEMORY[0x277D04538])
      {

        v17 = 7;
        goto LABEL_30;
      }

      if (MEMORY[0x277D04540] && v22 == *MEMORY[0x277D04540])
      {

        v17 = 8;
        goto LABEL_30;
      }

      (*(v19 + 8))(v20, v18);
    }

    *(v0 + 112) = v1;
    v23 = v1;
    if (swift_dynamicCast())
    {

      v17 = *(v0 + 332);
    }

    else
    {

      *(v0 + 120) = v1;
      v24 = sub_258F09E60();
      v25 = *(v24 - 8);
      v26 = swift_task_alloc();
      v27 = v1;
      if (swift_dynamicCast())
      {

        (*(v25 + 8))(v26, v24);

        v17 = 2;
      }

      else
      {

        *(v0 + 128) = v1;
        v28 = sub_258F09E10();
        v29 = *(v28 - 8);
        v30 = swift_task_alloc();
        v31 = v1;
        if (swift_dynamicCast())
        {

          (*(v29 + 8))(v30, v28);

          v17 = 0;
        }

        else
        {

          *(v0 + 136) = v1;
          v32 = v1;
          if (swift_dynamicCast())
          {
            v33 = *(v0 + 208);
            v34 = *(v0 + 192);
            v36 = *(v0 + 176);
            v35 = *(v0 + 184);
            v37 = *(v0 + 168);
            v38 = *(v0 + 144);
            (*(*(v0 + 200) + 8))(v38, v34);

            v33(v38, *MEMORY[0x277D81770], v34);
            (*(v36 + 8))(v35, v37);

            goto LABEL_31;
          }

          v17 = 1;
        }
      }
    }

    goto LABEL_30;
  }

LABEL_31:

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_258E5FF98()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 280);
  *(v0 + 96) = v4;
  v5 = (v0 + 96);
  v6 = sub_258F09E20();
  v7 = *(v6 - 8);
  v8 = swift_task_alloc();
  v9 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v10 = (*(v7 + 88))(v8, v6);
    if (MEMORY[0x277D81740] && v10 == *MEMORY[0x277D81740])
    {

      v4 = *v5;
      v11 = 3;
      goto LABEL_29;
    }

    if (MEMORY[0x277D81748] && v10 == *MEMORY[0x277D81748])
    {

      v4 = *v5;
      v11 = 4;
      goto LABEL_29;
    }

    (*(v7 + 8))(v8, v6);
  }

  *(v0 + 104) = v4;
  v12 = sub_258F0A1D0();
  v13 = *(v12 - 8);
  v14 = swift_task_alloc();
  v15 = v4;
  if (swift_dynamicCast())
  {
    v16 = (*(v13 + 88))(v14, v12);
    if (MEMORY[0x277D04530] && v16 == *MEMORY[0x277D04530])
    {

      v4 = *(v0 + 104);
      v11 = 6;
      goto LABEL_29;
    }

    if (MEMORY[0x277D04538] && v16 == *MEMORY[0x277D04538])
    {

      v4 = *(v0 + 104);
      v11 = 7;
      goto LABEL_29;
    }

    if (MEMORY[0x277D04540] && v16 == *MEMORY[0x277D04540])
    {

      v4 = *(v0 + 104);
      v11 = 8;
      goto LABEL_29;
    }

    (*(v13 + 8))(v14, v12);
  }

  *(v0 + 112) = v4;
  v17 = v4;
  if (swift_dynamicCast())
  {

    v11 = *(v0 + 332);
    v4 = *(v0 + 112);
  }

  else
  {

    *(v0 + 120) = v4;
    v18 = sub_258F09E60();
    v19 = *(v18 - 8);
    v20 = swift_task_alloc();
    v21 = v4;
    if (swift_dynamicCast())
    {

      (*(v19 + 8))(v20, v18);

      v4 = *(v0 + 120);
      v11 = 2;
    }

    else
    {

      *(v0 + 128) = v4;
      v22 = sub_258F09E10();
      v23 = *(v22 - 8);
      v24 = swift_task_alloc();
      v25 = v4;
      if (swift_dynamicCast())
      {

        (*(v23 + 8))(v24, v22);

        v11 = 0;
        v4 = *(v0 + 128);
      }

      else
      {

        *(v0 + 136) = v4;
        v26 = v4;
        if (swift_dynamicCast())
        {
          v27 = *(v0 + 208);
          v28 = *(v0 + 192);
          v30 = *(v0 + 176);
          v29 = *(v0 + 184);
          v31 = *(v0 + 168);
          v32 = *(v0 + 144);
          (*(*(v0 + 200) + 8))(v32, v28);

          v27(v32, *MEMORY[0x277D81770], v28);
          (*(v30 + 8))(v29, v31);

          goto LABEL_30;
        }

        v11 = 1;
      }
    }
  }

LABEL_29:

  v33 = *(v0 + 208);
  v34 = *(v0 + 192);
  v35 = *(v0 + 200);
  v36 = *(v0 + 328);
  v37 = *(v0 + 144);
  v38 = swift_task_alloc();
  sub_258DE403C();
  v39 = swift_allocError();
  *v40 = v11;
  (*(v35 + 8))(v37, v34);
  *v38 = v39;
  v33(v38, v36, v34);
  (*(v35 + 32))(v37, v38, v34);

LABEL_30:

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_258E60640()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 320);
  *(v0 + 96) = v4;
  v5 = (v0 + 96);
  v6 = sub_258F09E20();
  v7 = *(v6 - 8);
  v8 = swift_task_alloc();
  v9 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v10 = (*(v7 + 88))(v8, v6);
    if (MEMORY[0x277D81740] && v10 == *MEMORY[0x277D81740])
    {

      v4 = *v5;
      v11 = 3;
      goto LABEL_29;
    }

    if (MEMORY[0x277D81748] && v10 == *MEMORY[0x277D81748])
    {

      v4 = *v5;
      v11 = 4;
      goto LABEL_29;
    }

    (*(v7 + 8))(v8, v6);
  }

  *(v0 + 104) = v4;
  v12 = sub_258F0A1D0();
  v13 = *(v12 - 8);
  v14 = swift_task_alloc();
  v15 = v4;
  if (swift_dynamicCast())
  {
    v16 = (*(v13 + 88))(v14, v12);
    if (MEMORY[0x277D04530] && v16 == *MEMORY[0x277D04530])
    {

      v4 = *(v0 + 104);
      v11 = 6;
      goto LABEL_29;
    }

    if (MEMORY[0x277D04538] && v16 == *MEMORY[0x277D04538])
    {

      v4 = *(v0 + 104);
      v11 = 7;
      goto LABEL_29;
    }

    if (MEMORY[0x277D04540] && v16 == *MEMORY[0x277D04540])
    {

      v4 = *(v0 + 104);
      v11 = 8;
      goto LABEL_29;
    }

    (*(v13 + 8))(v14, v12);
  }

  *(v0 + 112) = v4;
  v17 = v4;
  if (swift_dynamicCast())
  {

    v11 = *(v0 + 332);
    v4 = *(v0 + 112);
  }

  else
  {

    *(v0 + 120) = v4;
    v18 = sub_258F09E60();
    v19 = *(v18 - 8);
    v20 = swift_task_alloc();
    v21 = v4;
    if (swift_dynamicCast())
    {

      (*(v19 + 8))(v20, v18);

      v4 = *(v0 + 120);
      v11 = 2;
    }

    else
    {

      *(v0 + 128) = v4;
      v22 = sub_258F09E10();
      v23 = *(v22 - 8);
      v24 = swift_task_alloc();
      v25 = v4;
      if (swift_dynamicCast())
      {

        (*(v23 + 8))(v24, v22);

        v11 = 0;
        v4 = *(v0 + 128);
      }

      else
      {

        *(v0 + 136) = v4;
        v26 = v4;
        if (swift_dynamicCast())
        {
          v27 = *(v0 + 208);
          v28 = *(v0 + 192);
          v30 = *(v0 + 176);
          v29 = *(v0 + 184);
          v31 = *(v0 + 168);
          v32 = *(v0 + 144);
          (*(*(v0 + 200) + 8))(v32, v28);

          v27(v32, *MEMORY[0x277D81770], v28);
          (*(v30 + 8))(v29, v31);

          goto LABEL_30;
        }

        v11 = 1;
      }
    }
  }

LABEL_29:

  v33 = *(v0 + 208);
  v34 = *(v0 + 192);
  v35 = *(v0 + 200);
  v36 = *(v0 + 328);
  v37 = *(v0 + 144);
  v38 = swift_task_alloc();
  sub_258DE403C();
  v39 = swift_allocError();
  *v40 = v11;
  (*(v35 + 8))(v37, v34);
  *v38 = v39;
  v33(v38, v36, v34);
  (*(v35 + 32))(v37, v38, v34);

LABEL_30:

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_258E60CE8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_258F0A7A0();
  if (result)
  {
    if (qword_280CC49F0 != -1)
    {
      swift_once();
    }

    v9 = sub_258F0A370();
    __swift_project_value_buffer(v9, qword_280CC49F8);

    v10 = sub_258F0A350();
    v11 = sub_258F0A800();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_258DE3018(a1, a2, &v14);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_258DE3018(a3, a4, &v14);
      _os_log_impl(&dword_258DD8000, v10, v11, "TaskId: %s, TaskName: %s: asked to stop!", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v13, -1, -1);
      MEMORY[0x259C9EF40](v12, -1, -1);
    }

    sub_258F0A770();
    sub_258DFCC98();
    swift_allocError();
    sub_258F0A3F0();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_258E60EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_258F0A370();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E60FA4, 0, 0);
}

uint64_t sub_258E60FA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0);
  v1 = swift_task_alloc();
  v0[11] = v1;
  if (qword_280CC49F0 != -1)
  {
    swift_once();
  }

  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  v7 = v0[4];
  v8 = __swift_project_value_buffer(v4, qword_280CC49F8);
  (*(v3 + 16))(v2, v8, v4);
  type metadata accessor for DictationDeviceExperimentMetrics(0);
  swift_allocObject();

  v0[2] = DictationDeviceExperimentMetrics.init(defaults:logger:fbfBundleId:)(v7, v2, v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989B70, qword_258F118B0);
  swift_allocObject();
  v10 = sub_258F09E40();
  v0[12] = v10;
  if (v10)
  {
    v11 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0);
    v12 = swift_task_alloc();
    v0[13] = v12;
    v13 = sub_258F09E00();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v12, v11, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v15[1] = sub_258E6133C;

    return MEMORY[0x2821ED078](v1, v12);
  }

  else
  {
    v16 = v0[3];
    v17 = sub_258F09E50();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v1, 1, 1, v17);
    (*(v18 + 104))(v16, *MEMORY[0x277D81758], v17);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_258E6133C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  sub_258DE2184(*(v2 + 104), &qword_27F988B20, &unk_258F0CDB0);

  if (v0)
  {
    v3 = sub_258E61F10;
  }

  else
  {

    v3 = sub_258E61F14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E614A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_258F0A370();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E61570, 0, 0);
}

uint64_t sub_258E61570()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0);
  v1 = swift_task_alloc();
  v0[11] = v1;
  if (qword_280CC49F0 != -1)
  {
    swift_once();
  }

  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  v7 = v0[4];
  v8 = __swift_project_value_buffer(v4, qword_280CC49F8);
  (*(v3 + 16))(v2, v8, v4);
  type metadata accessor for AssistantDeviceExperimentMetrics(0);
  swift_allocObject();

  v0[2] = AssistantDeviceExperimentMetrics.init(defaults:logger:fbfBundleId:)(v7, v2, v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989B78, &qword_258F118C8);
  swift_allocObject();
  v10 = sub_258F09E40();
  v0[12] = v10;
  if (v10)
  {
    v11 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0);
    v12 = swift_task_alloc();
    v0[13] = v12;
    v13 = sub_258F09E00();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v12, v11, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v15[1] = sub_258E61908;

    return MEMORY[0x2821ED078](v1, v12);
  }

  else
  {
    v16 = v0[3];
    v17 = sub_258F09E50();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v1, 1, 1, v17);
    (*(v18 + 104))(v16, *MEMORY[0x277D81758], v17);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_258E61908()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  sub_258DE2184(*(v2 + 104), &qword_27F988B20, &unk_258F0CDB0);

  if (v0)
  {
    v3 = sub_258E61B7C;
  }

  else
  {

    v3 = sub_258E61A74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E61A74()
{
  v1 = v0[11];
  v2 = v0[3];
  v3 = sub_258F09E50();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  (*(v4 + 32))(v2, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_258E61B7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t dispatch thunk of ExperimentMetricsExecutor.executeDictationDeviceExperimentMetrics(defaults:pluginContext:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 88) + **(*v5 + 88));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_258DEE37C;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ExperimentMetricsExecutor.executeAssistantDeviceExperimentMetrics(defaults:pluginContext:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 96) + **(*v5 + 96));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_258DE1DC4;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t static ExtensionsUtils.createExecutionMetadataClientEvent(extensionName:executionStatus:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258E6584C;

  return sub_258E6422C(a1, a2);
}

uint64_t static ExtensionsUtils.isAssistantOrDictationEnabled()()
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

uint64_t sub_258E62074()
{
  v0 = sub_258F0A370();
  __swift_allocate_value_buffer(v0, qword_27F989B80);
  __swift_project_value_buffer(v0, qword_27F989B80);
  return sub_258F0A360();
}

uint64_t static ExtensionsUtils.isMeDevice()()
{
  v1 = sub_258F09C70();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v2 = sub_258F09C90();
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v3 = sub_258F09C40();
  v0[10] = v3;
  v0[11] = *(v3 - 8);
  v0[12] = swift_task_alloc();
  sub_258F09C50();
  v0[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E622A4, 0, 0);
}

uint64_t sub_258E622A4()
{
  (*(v0[11] + 104))(v0[12], *MEMORY[0x277D09060], v0[10]);
  sub_258F09C60();
  sub_258F09CB0();
  swift_allocObject();
  v0[14] = sub_258F09CC0();
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_258E623A0;
  v2 = v0[9];

  return MEMORY[0x28215FB40](v2, 1);
}

uint64_t sub_258E623A0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_258E62584;
  }

  else
  {
    v2 = sub_258E624B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258E624B4()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = sub_258F09C80();

  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t sub_258E62584()
{
  v1 = *(v0 + 128);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_13:
    v14 = *(v0 + 128);

    v10 = 0;
LABEL_14:

    v15 = *(v0 + 8);

    return v15(v10);
  }

  if ((*(*(v0 + 32) + 88))(*(v0 + 40), *(v0 + 24)) != *MEMORY[0x277D090B0])
  {
    v12 = *(v0 + 32);
    v11 = *(v0 + 40);
    v13 = *(v0 + 24);

    (*(v12 + 8))(v11, v13);
    goto LABEL_13;
  }

  if (qword_27F988670 != -1)
  {
    swift_once();
  }

  v3 = sub_258F0A370();
  __swift_project_value_buffer(v3, qword_27F989B80);
  v4 = sub_258F0A350();
  v5 = sub_258F0A820();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_258DD8000, v4, v5, "#ExtensionUtils: Error getting cached location sharing device, trying not cached", v6, 2u);
    MEMORY[0x259C9EF40](v6, -1, -1);
  }

  if (sub_258E65688())
  {
    v7 = sub_258F0A350();
    v8 = sub_258F0A810();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_258DD8000, v7, v8, "#ExtensionUtils: return true for MeDevice if target is simulator or VM", v9, 2u);
      MEMORY[0x259C9EF40](v9, -1, -1);
    }

    v10 = 1;
    goto LABEL_14;
  }

  v17 = swift_task_alloc();
  *(v0 + 136) = v17;
  *v17 = v0;
  v17[1] = sub_258E628A8;
  v18 = *(v0 + 64);

  return MEMORY[0x28215FB40](v18, 0);
}

uint64_t sub_258E628A8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_258E62A94;
  }

  else
  {
    v2 = sub_258E629BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258E629BC()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = sub_258F09C80();

  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5(v4 & 1);
}

uint64_t sub_258E62A94()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(0);
}

BOOL static ExtensionsUtils.isSiriDataSharingOptIn()()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 siriDataSharingOptInStatus];

  return v1 == 1;
}

uint64_t static ExtensionsUtils.createClientEventMetadataEvent()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258E62C40;

  return sub_258E639F8();
}

uint64_t sub_258E62C40(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t static ExtensionsUtils.fetchDeviceAggregationId()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258E6584C;

  return sub_258E62E94();
}

uint64_t static ExtensionsUtils.fetchUserAggregationId()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258E6584C;

  return sub_258E6344C();
}

uint64_t sub_258E62EB0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CEF3A8]) init];
  v0[19] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_258E62FE8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989B98, &qword_258F11A18);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_258E65850;
  v0[13] = &block_descriptor_15;
  v0[14] = v2;
  [v1 getODDDeviceAggregationId_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_258E62FE8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_258E6331C;
  }

  else
  {
    v2 = sub_258E630F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258E630F8()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    if (qword_27F988670 != -1)
    {
      swift_once();
    }

    v2 = sub_258F0A370();
    __swift_project_value_buffer(v2, qword_27F989B80);
    v3 = v1;
    v4 = sub_258F0A350();
    v5 = sub_258F0A810();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v3;
      *v7 = v1;
      v8 = v3;
      _os_log_impl(&dword_258DD8000, v4, v5, "#ExtensionsUtils: Successfully fetched DeviceAggregationId - %@", v6, 0xCu);
      sub_258DE2184(v7, &qword_27F988C78, &qword_258F11A20);
      MEMORY[0x259C9EF40](v7, -1, -1);
LABEL_10:
      MEMORY[0x259C9EF40](v6, -1, -1);
    }
  }

  else
  {
    if (qword_27F988670 != -1)
    {
      swift_once();
    }

    v9 = sub_258F0A370();
    __swift_project_value_buffer(v9, qword_27F989B80);
    v4 = sub_258F0A350();
    v10 = sub_258F0A820();
    if (os_log_type_enabled(v4, v10))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_258DD8000, v4, v10, "#ExtensionsUtils: Unable to fetch DeviceAggregationId", v6, 2u);
      goto LABEL_10;
    }
  }

  v11 = *(v0 + 8);

  return v11(v1);
}

uint64_t sub_258E6331C(uint64_t a1)
{
  v2 = v1[19];
  v3 = v1[20];
  swift_willThrow();

  if (qword_27F988670 != -1)
  {
    swift_once();
  }

  v4 = sub_258F0A370();
  __swift_project_value_buffer(v4, qword_27F989B80);
  v5 = sub_258F0A350();
  v6 = sub_258F0A820();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_258DD8000, v5, v6, "#ExtensionsUtils: Unable to fetch DeviceAggregationId", v7, 2u);
    MEMORY[0x259C9EF40](v7, -1, -1);
  }

  v8 = v1[1];

  return v8(0);
}

uint64_t sub_258E63468()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CEF3A8]) init];
  v0[19] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_258E635A0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989890, &qword_258F11A10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_258E65850;
  v0[13] = &block_descriptor_3;
  v0[14] = v2;
  [v1 getODDDeviceProperties_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_258E635A0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_258E638C8;
  }

  else
  {
    v2 = sub_258E636B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258E636B0()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    if (qword_27F988670 != -1)
    {
      swift_once();
    }

    v2 = sub_258F0A370();
    __swift_project_value_buffer(v2, qword_27F989B80);
    v3 = sub_258F0A350();
    v4 = sub_258F0A810();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_258DD8000, v3, v4, "#ExtensionsUtils: Successfully fetched DevicePropertiesEvent", v5, 2u);
      MEMORY[0x259C9EF40](v5, -1, -1);
    }

    v6 = [v1 eventMetadata];
    v7 = [v6 userAggregationId];
  }

  else
  {
    if (qword_27F988670 != -1)
    {
      swift_once();
    }

    v8 = sub_258F0A370();
    __swift_project_value_buffer(v8, qword_27F989B80);
    v9 = sub_258F0A350();
    v10 = sub_258F0A820();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_258DD8000, v9, v10, "#ExtensionsUtils: Unable to fetch DevicePropertiesEvent", v11, 2u);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    v7 = 0;
  }

  v12 = *(v0 + 8);

  return v12(v7);
}

uint64_t sub_258E638C8(uint64_t a1)
{
  v2 = v1[19];
  v3 = v1[20];
  swift_willThrow();

  if (qword_27F988670 != -1)
  {
    swift_once();
  }

  v4 = sub_258F0A370();
  __swift_project_value_buffer(v4, qword_27F989B80);
  v5 = sub_258F0A350();
  v6 = sub_258F0A820();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_258DD8000, v5, v6, "#ExtensionsUtils: Unable to fetch DevicePropertiesEvent", v7, 2u);
    MEMORY[0x259C9EF40](v7, -1, -1);
  }

  v8 = v1[1];

  return v8(0);
}

uint64_t sub_258E639F8()
{
  v1 = sub_258F09A20();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_258F09A70();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E63B10, 0, 0);
}

uint64_t sub_258E63B10()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D592B0]) init];
  v0[8] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_258E63CD8;

    return sub_258E62E94();
  }

  else
  {
    if (qword_27F988670 != -1)
    {
      swift_once();
    }

    v4 = sub_258F0A370();
    __swift_project_value_buffer(v4, qword_27F989B80);
    v5 = sub_258F0A350();
    v6 = sub_258F0A820();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_258DD8000, v5, v6, "#ExtensionsUtils: Failed to generate ODDSiriSchemaODDClientEventMetadata", v7, 2u);
      MEMORY[0x259C9EF40](v7, -1, -1);
    }

    v8 = v0[1];

    return v8(0);
  }
}

uint64_t sub_258E63CD8(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_258E63DD8, 0, 0);
}

uint64_t sub_258E63DD8()
{
  v1 = *(v0 + 80);
  [*(v0 + 64) setDeviceAggregationId_];

  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_258E63E94;

  return sub_258E6344C();
}

uint64_t sub_258E63E94(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_258E63F94, 0, 0);
}

uint64_t sub_258E63F94()
{
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  [v2 setUserAggregationId_];

  sub_258F09A60();
  v6 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v7 = sub_258F09A50();
  v8 = [v6 initWithNSUUID_];

  (*(v5 + 8))(v3, v4);
  [v2 setOddId_];

  sub_258F09B50();
  sub_258F099E0();
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v9 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (is_mul_ok(v9, 0x3E8uLL))
  {
    v10 = v0[8];
    [v10 setEventTimestampInMsSince1970_];
    sub_258E47ECC();
    v12 = v11;
    [v10 setAggregationInterval_];

    if (qword_27F988670 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  swift_once();
LABEL_6:
  v13 = sub_258F0A370();
  __swift_project_value_buffer(v13, qword_27F989B80);
  v14 = sub_258F0A350();
  v15 = sub_258F0A810();
  v16 = os_log_type_enabled(v14, v15);
  v18 = v0[3];
  v17 = v0[4];
  v19 = v0[2];
  if (v16)
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_258DD8000, v14, v15, "#ExtensionsUtils: Successfully created ODDSiriSchemaODDClientEventMetadata", v20, 2u);
    MEMORY[0x259C9EF40](v20, -1, -1);
  }

  (*(v18 + 8))(v17, v19);
  v21 = v0[8];

  v22 = v0[1];

  return v22(v21);
}

uint64_t sub_258E6422C(int a1, int a2)
{
  *(v2 + 40) = a1;
  *(v2 + 44) = a2;
  return MEMORY[0x2822009F8](sub_258E6424C, 0, 0);
}

uint64_t sub_258E6424C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
  v0[2] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_258E64400;

    return sub_258E639F8();
  }

  else
  {
    if (qword_27F988670 != -1)
    {
      swift_once();
    }

    v4 = sub_258F0A370();
    __swift_project_value_buffer(v4, qword_27F989B80);
    v5 = sub_258F0A350();
    v6 = sub_258F0A820();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_258DD8000, v5, v6, "#ExtensionsUtils: Failed to generate event for reporting Extension Execution Metadata", v7, 2u);
      MEMORY[0x259C9EF40](v7, -1, -1);
    }

    v8 = v0[1];

    return v8(0);
  }
}

uint64_t sub_258E64400(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_258E64500, 0, 0);
}

uint64_t sub_258E64500()
{
  v25 = v0;
  v1 = *(v0 + 32);
  [*(v0 + 16) setEventMetadata_];

  if (qword_27F988670 != -1)
  {
    swift_once();
  }

  v2 = sub_258F0A370();
  __swift_project_value_buffer(v2, qword_27F989B80);
  v3 = sub_258F0A350();
  v4 = sub_258F0A810();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258DD8000, v3, v4, "#ExtensionsUtils: Added ODDSiriSchemaODDClientEventMetadata to ODDSiriSchemaODDExecutionMetadataReported", v5, 2u);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  v6 = [objc_allocWithZone(MEMORY[0x277D59340]) init];
  if (v6)
  {
    v7 = v6;
    v8 = *(v0 + 44);
    [v6 setExtensionName:*(v0 + 40)];
    [v7 setExecutionStatus:v8];
    v9 = sub_258F0A350();
    v10 = sub_258F0A810();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136315394;
      v13 = sub_258F0A8C0();
      v15 = sub_258DE3018(v13, v14, &v24);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = sub_258F0A8D0();
      v18 = sub_258DE3018(v16, v17, &v24);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_258DD8000, v9, v10, "#ExtensionsUtils: created executionMetadataEvent for %s with status %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v12, -1, -1);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    [*(v0 + 16) setExecutionMetadataReported_];
  }

  else
  {
    v7 = sub_258F0A350();
    v19 = sub_258F0A820();
    if (os_log_type_enabled(v7, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_258DD8000, v7, v19, "#ExtensionsUtils: Failed to generate ODDSiriSchemaODDExecutionMetadataReported event", v20, 2u);
      MEMORY[0x259C9EF40](v20, -1, -1);
    }
  }

  v21 = *(v0 + 16);
  v22 = *(v0 + 8);

  return v22(v21);
}

char *_s16MetricsFramework15ExtensionsUtilsC13decodeTurnIdsySay10Foundation4UUIDVGSgSSSgFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v54 = v47 - v5;
  v6 = sub_258F09A70();
  v55 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v58 = v47 - v12;
  v13 = sub_258F0A540();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (sub_258F0A530(), v18 = sub_258F0A500(), v20 = v19, (*(v14 + 8))(v17, v13), v20 >> 60 != 15))
  {
    sub_258F09840();
    swift_allocObject();
    v27 = sub_258F09830();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DB0, &unk_258F13940);
    sub_258E657C8();
    sub_258F09820();
    v47[1] = v27;
    v48 = v18;
    v49 = v20;
    v29 = v59[2];
    v47[0] = v59;
    if (v29)
    {
      v25 = 0;
      v30 = v54;
      v56 = (v55 + 32);
      v57 = (v55 + 48);
      v52 = (v55 + 16);
      v53 = v10;
      v51 = v55 + 8;
      v31 = v59 + 5;
      *&v28 = 136315138;
      v50 = v28;
      do
      {
        v37 = *(v31 - 1);
        v36 = *v31;

        sub_258F09A30();
        if ((*v57)(v30, 1, v6) == 1)
        {
          sub_258DE2184(v30, &qword_27F988730, &unk_258F0F8E0);
          if (qword_27F988670 != -1)
          {
            swift_once();
          }

          v38 = sub_258F0A370();
          __swift_project_value_buffer(v38, qword_27F989B80);

          v39 = sub_258F0A350();
          v40 = sub_258F0A820();

          if (os_log_type_enabled(v39, v40))
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v59 = v33;
            *v32 = v50;
            v34 = sub_258DE3018(v37, v36, &v59);

            *(v32 + 4) = v34;
            _os_log_impl(&dword_258DD8000, v39, v40, "#ExtensionsUtils: Invalid UUID format for TurnId: %s", v32, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v33);
            v35 = v33;
            v30 = v54;
            MEMORY[0x259C9EF40](v35, -1, -1);
            MEMORY[0x259C9EF40](v32, -1, -1);
          }

          else
          {
          }
        }

        else
        {

          v41 = *v56;
          v42 = v58;
          (*v56)(v58, v30, v6);
          if (!v25)
          {
            v25 = MEMORY[0x277D84F90];
          }

          v43 = v53;
          (*v52)(v53, v42, v6);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_258DE26A4(0, *(v25 + 2) + 1, 1, v25);
          }

          v45 = *(v25 + 2);
          v44 = *(v25 + 3);
          if (v45 >= v44 >> 1)
          {
            v25 = sub_258DE26A4((v44 > 1), v45 + 1, 1, v25);
          }

          v46 = v55;
          (*(v55 + 8))(v58, v6);
          *(v25 + 2) = v45 + 1;
          v41(&v25[((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v45], v43, v6);
        }

        v31 += 2;
        --v29;
      }

      while (v29);
    }

    else
    {
      v25 = 0;
    }

    sub_258DEB964(v48, v49);
  }

  else
  {
    if (qword_27F988670 != -1)
    {
      swift_once();
    }

    v21 = sub_258F0A370();
    __swift_project_value_buffer(v21, qword_27F989B80);
    v22 = sub_258F0A350();
    v23 = sub_258F0A810();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_258DD8000, v22, v23, "#ExtensionsUtils: turnIdsString is nil or its not utf8 encodable.", v24, 2u);
      MEMORY[0x259C9EF40](v24, -1, -1);
    }

    return 0;
  }

  return v25;
}

char *_s16MetricsFramework15ExtensionsUtilsC15decodeIERoutingySaySo08SISchemaF0VGSgSSSgFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = sub_258F0A540();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (sub_258F0A530(), v8 = sub_258F0A500(), v10 = v9, (*(v4 + 8))(v7, v3), v10 >> 60 != 15))
  {
    sub_258F09840();
    swift_allocObject();
    v17 = sub_258F09830();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DB0, &unk_258F13940);
    sub_258E657C8();
    sub_258F09820();
    v35 = v17;
    v36 = v8;
    v37 = v10;
    v19 = v39[2];
    v34 = v39;
    if (v19)
    {
      v20 = v39 + 5;
      v15 = MEMORY[0x277D84F90];
      *&v18 = 136315138;
      v38 = v18;
      do
      {
        v22 = *(v20 - 1);
        v21 = *v20;
        v23 = qword_27F988670;

        if (v23 != -1)
        {
          swift_once();
        }

        v24 = sub_258F0A370();
        __swift_project_value_buffer(v24, qword_27F989B80);

        v25 = sub_258F0A350();
        v26 = sub_258F0A820();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v39 = v28;
          *v27 = v38;
          *(v27 + 4) = sub_258DE3018(v22, v21, &v39);
          _os_log_impl(&dword_258DD8000, v25, v26, "#ExtensionsUtils: ieRoutingString: %s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v28);
          MEMORY[0x259C9EF40](v28, -1, -1);
          MEMORY[0x259C9EF40](v27, -1, -1);
        }

        v29 = sub_258F0A4E0();

        v30 = v29;
        if ([v30 isEqualToString:{@"IEROUTING_UNKNOWN", v34, v35, v36, v37}])
        {
          v31 = 0;
        }

        else if ([v30 isEqualToString:@"IEROUTING_NL_ROUTER"])
        {
          v31 = 1;
        }

        else if ([v30 isEqualToString:@"IEROUTING_FAILURE"])
        {
          v31 = 2;
        }

        else if ([v30 isEqualToString:@"IEROUTING_SIRI_X_DIRECT"])
        {
          v31 = 3;
        }

        else if ([v30 isEqualToString:@"IEROUTING_SIRI_X_REWRITE"])
        {
          v31 = 4;
        }

        else if ([v30 isEqualToString:@"IEROUTING_PLANNER"])
        {
          v31 = 5;
        }

        else if ([v30 isEqualToString:@"IEROUTING_RESPONSE_GENERATION"])
        {
          v31 = 6;
        }

        else if ([v30 isEqualToString:@"IEROUTING_APP_INTENT"])
        {
          v31 = 7;
        }

        else if ([v30 isEqualToString:@"IEROUTING_SEARCH_TOOL"])
        {
          v31 = 8;
        }

        else if ([v30 isEqualToString:@"IEROUTING_SIRI_X"])
        {
          v31 = 9;
        }

        else if ([v30 isEqualToString:@"IEROUTING_QUERY_REWRITE"])
        {
          v31 = 10;
        }

        else if ([v30 isEqualToString:@"IEROUTING_GENERATIVE_AI"])
        {
          v31 = 11;
        }

        else
        {
          v31 = 0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_258DE2864(0, *(v15 + 2) + 1, 1, v15);
        }

        v33 = *(v15 + 2);
        v32 = *(v15 + 3);
        if (v33 >= v32 >> 1)
        {
          v15 = sub_258DE2864((v32 > 1), v33 + 1, 1, v15);
        }

        *(v15 + 2) = v33 + 1;
        *&v15[4 * v33 + 32] = v31;
        v20 += 2;
        --v19;
      }

      while (v19);
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    sub_258DEB964(v36, v37);
  }

  else
  {
    if (qword_27F988670 != -1)
    {
      swift_once();
    }

    v11 = sub_258F0A370();
    __swift_project_value_buffer(v11, qword_27F989B80);
    v12 = sub_258F0A350();
    v13 = sub_258F0A810();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_258DD8000, v12, v13, "#ExtensionsUtils: ieRoutingString is nil or its not utf8 encodable.", v14, 2u);
      MEMORY[0x259C9EF40](v14, -1, -1);
    }

    return 0;
  }

  return v15;
}

uint64_t sub_258E65688()
{
  if (qword_27F988670 != -1)
  {
    swift_once();
  }

  v0 = sub_258F0A370();
  __swift_project_value_buffer(v0, qword_27F989B80);
  v1 = sub_258F0A350();
  v2 = sub_258F0A810();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_258DD8000, v1, v2, "#ExtensionsUtils: running on VM", v3, 2u);
    MEMORY[0x259C9EF40](v3, -1, -1);
  }

  return CSIsVirtualMachine();
}

unint64_t sub_258E657C8()
{
  result = qword_27F989BA0;
  if (!qword_27F989BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988DB0, &unk_258F13940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989BA0);
  }

  return result;
}

const char *sub_258E6585C(char a1)
{
  result = "enableOnDeviceSiriMetrics";
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = "disablePersistentIDLogging";
      break;
    case 3:
      result = "od_deletion";
      break;
    case 4:
      result = "disablePersistentIDLoggingGM";
      break;
    case 5:
      result = "enableRPIOptInInternalSetting";
      break;
    case 6:
      result = "enableRPIInternalBuildRule";
      break;
    case 7:
      result = "disablePersistentIDLoggingIOSOptOut";
      break;
    case 8:
      result = "disablePersistentIDLoggingIOS";
      break;
    case 9:
      result = "disablePersistentIDLoggingMacOSOptOut";
      break;
    case 10:
      result = "disablePersistentIDLoggingVisionOSOptOut";
      break;
    case 11:
      result = "disablePersistentIDLoggingAppleTVOptOut";
      break;
    case 12:
      result = "disablePersistentIDLoggingHomePodOptOut";
      break;
    case 13:
      result = "disablePersistentIDLoggingMacOS";
      break;
    case 14:
      result = "disablePersistentIDLoggingVisionOS";
      break;
    case 15:
      result = "disablePersistentIDLoggingAppleTV";
      break;
    case 16:
      result = "disablePersistentIDLoggingHomePod";
      break;
    case 17:
      result = "disablePersistentIDLoggingSiriXUODOptOut";
      break;
    case 18:
      result = "disablePersistentIDLoggingSiriXHybridOptOut";
      break;
    case 19:
      result = "disablePersistentIDLoggingClassicOptOut";
      break;
    case 20:
      result = "disablePersistentIDLoggingSiriXUOD";
      break;
    case 21:
      result = "disablePersistentIDLoggingSiriXHybrid";
      break;
    case 22:
      result = "disablePersistentIDLoggingClassic";
      break;
    case 23:
      result = "disablePersistentIDLoggingOptIn";
      break;
    default:
      result = "enableFBFReporter";
      break;
  }

  return result;
}

uint64_t sub_258E65A58(char a1)
{
  v4[3] = &type metadata for Features;
  v4[4] = sub_258E3FDD4();
  LOBYTE(v4[0]) = a1;
  v2 = sub_258F09C30();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2 & 1;
}

uint64_t getEnumTagSinglePayload for Features(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Features(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_258E65C04()
{
  result = qword_27F989BA8;
  if (!qword_27F989BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F989BB0, qword_258F11AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989BA8);
  }

  return result;
}

unint64_t sub_258E65C6C()
{
  result = qword_27F989BB8;
  if (!qword_27F989BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989BB8);
  }

  return result;
}

unint64_t SiriMetricsWorkerError.rawValue.getter()
{
  result = 0x74754F64656D6974;
  switch(*v0)
  {
    case 1:
      result = 0x7463657078656E75;
      break;
    case 2:
    case 0xA:
      result = 0xD000000000000017;
      break;
    case 3:
    case 0xF:
    case 0x11:
      result = 0xD000000000000012;
      break;
    case 4:
    case 0xE:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6B72616D6B6F6F62;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x4E656C69466C7173;
      break;
    case 0xB:
      result = 0xD000000000000011;
      break;
    case 0xC:
      result = 0x72576664556C7173;
      break;
    case 0xD:
      result = 0x78456664556C7173;
      break;
    case 0x10:
      result = 0xD000000000000013;
      break;
    case 0x12:
      result = 0xD000000000000019;
      break;
    case 0x13:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_258E65F0C()
{
  v0 = sub_258F0A370();
  __swift_allocate_value_buffer(v0, qword_280CC4A18);
  __swift_project_value_buffer(v0, qword_280CC4A18);
  return sub_258F0A360();
}

MetricsFramework::SiriMetricsWorkerError_optional __swiftcall SiriMetricsWorkerError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258F0AD90();

  v5 = 0;
  v6 = 2;
  switch(v3)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v5 = 1;
LABEL_3:
      v6 = v5;
      break;
    case 2:
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    default:
      v6 = 20;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_258E660B0()
{
  v0 = SiriMetricsWorkerError.rawValue.getter();
  v2 = v1;
  if (v0 == SiriMetricsWorkerError.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_258F0AD80();
  }

  return v5 & 1;
}

uint64_t sub_258E6614C()
{
  sub_258F0AE40();
  SiriMetricsWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E661B4(uint64_t a1)
{
  SiriMetricsWorkerError.rawValue.getter();
  sub_258F0A5B0();
}

uint64_t sub_258E66218(uint64_t a1)
{
  sub_258F0AE40();
  SiriMetricsWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

unint64_t sub_258E66288@<X0>(unint64_t *a1@<X8>)
{
  result = SiriMetricsWorkerError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

MetricsFramework::MetricsWorker::Subtask_optional __swiftcall MetricsWorker.Subtask.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258F0ABE0();

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

  *v2 = v5;
  return result;
}

unint64_t MetricsWorker.Subtask.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_258E66350(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    v4 = "bookmarkServiceNotSet";
  }

  else
  {
    v4 = "siriDigestMetrics";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (*a2)
  {
    v7 = "siriDigestMetrics";
  }

  else
  {
    v7 = "bookmarkServiceNotSet";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_258F0AD80();
  }

  return v9 & 1;
}

uint64_t sub_258E663FC()
{
  sub_258F0AE40();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E6647C(uint64_t a1)
{
  sub_258F0A5B0();
}

uint64_t sub_258E664E8(uint64_t a1)
{
  sub_258F0AE40();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E66564@<X0>(char *a2@<X8>)
{
  v3 = sub_258F0ABE0();

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

void sub_258E665C4(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD000000000000011;
  }

  if (*v1)
  {
    v3 = "siriDigestMetrics";
  }

  else
  {
    v3 = "bookmarkServiceNotSet";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t MetricsWorker.doWork(metricsExecutor:context:durationThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[29] = a2;
  v3[30] = a3;
  v3[28] = a1;
  v4 = sub_258F0A770();
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E66704, 0, 0);
}

uint64_t sub_258E66704()
{
  v84 = v0;
  if (qword_280CC4A10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = sub_258F0A370();
  __swift_project_value_buffer(v2, qword_280CC4A18);
  v3 = v1;
  v4 = sub_258F0A350();
  v5 = sub_258F0A800();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v83[0] = v7;
    *v6 = 136315394;
    v8 = sub_258F09E80();
    v10 = sub_258DE3018(v8, v9, v83);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = sub_258F09E90();
    v13 = sub_258DE3018(v11, v12, v83);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_258DD8000, v4, v5, "TaskId: %s, TaskName: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v7, -1, -1);
    MEMORY[0x259C9EF40](v6, -1, -1);
  }

  v14 = *(v0 + 224);
  *v14 = 0;
  v15 = *MEMORY[0x277D81760];
  *(v0 + 480) = v15;
  v16 = sub_258F09E50();
  *(v0 + 272) = v16;
  v17 = *(v16 - 8);
  *(v0 + 280) = v17;
  v18 = *(v17 + 104);
  *(v0 + 288) = v18;
  *(v0 + 296) = (v17 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v18(v14, v15, v16);
  v19 = sub_258F09E80();
  v21 = v20;
  v22 = sub_258F09E90();
  sub_258E68EB0(v19, v21, v22, v23);

  sub_258F09E80();
  v83[0] = sub_258F09E90();
  v83[1] = v31;

  MEMORY[0x259C9DEB0](46, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0xD000000000000011, 0x8000000258F18BC0);

  v32 = sub_258F09EA0();
  *(v0 + 304) = v32;
  v33 = objc_allocWithZone(v32);
  v34 = sub_258F09E70();
  *(v0 + 312) = v34;
  v35 = sub_258F09E00();
  *(v0 + 320) = v35;
  v36 = *(v35 - 8);
  v37 = v36;
  *(v0 + 328) = v36;
  *(v0 + 336) = *(v36 + 64);
  v38 = swift_task_alloc();
  *(v0 + 344) = v38;
  *(v0 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C70, qword_258F11890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258F0B820;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = 0x8000000258F189B0;
  *(inited + 48) = 60000;
  v40 = v34;
  sub_258DFBCE0(inited);
  swift_setDeallocating();
  sub_258DE2184(inited + 32, &qword_27F988B98, &unk_258F0D3A0);
  sub_258F09DF0();
  v41 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v42 = sub_258F0A4E0();
  v43 = [v41 initWithSuiteName_];
  *(v0 + 360) = v43;

  if (v43)
  {
    v44 = *(v0 + 232);
    *(v0 + 368) = *(v17 + 64);
    v45 = swift_task_alloc();
    *(v0 + 376) = v45;
    v82 = (*(*v44 + 88) + **(*v44 + 88));
    v46 = swift_task_alloc();
    *(v0 + 384) = v46;
    *v46 = v0;
    v46[1] = sub_258E673C4;

    return v82(v45, v43, v38);
  }

  v53 = sub_258F0A350();
  v54 = sub_258F0A820();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_258DD8000, v53, v54, "Can't get user defaults initialized", v55, 2u);
    MEMORY[0x259C9EF40](v55, -1, -1);
  }

  sub_258DE403C();
  v29 = swift_allocError();
  *v56 = 5;
  swift_willThrow();

  (*(v37 + 8))(v38, v35);

  *(v0 + 176) = v29;
  v24 = sub_258F09E20();
  v25 = *(v24 - 8);
  v26 = swift_task_alloc();
  v27 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v28 = (*(v25 + 88))(v26, v24);
    if (MEMORY[0x277D81740] && v28 == *MEMORY[0x277D81740])
    {

      v29 = *(v0 + 176);
      v30 = 3;
LABEL_41:

      v73 = *(v0 + 288);
      v74 = *(v0 + 272);
      v75 = *(v0 + 280);
      v76 = *(v0 + 480);
      v77 = *(v0 + 224);
      v78 = swift_task_alloc();
      sub_258DE403C();
      v79 = swift_allocError();
      *v80 = v30;
      (*(v75 + 8))(v77, v74);
      *v78 = v79;
      v73(v78, v76, v74);
      (*(v75 + 32))(v77, v78, v74);

      goto LABEL_42;
    }

    if (MEMORY[0x277D81748] && v28 == *MEMORY[0x277D81748])
    {

      v29 = *(v0 + 176);
      v30 = 4;
      goto LABEL_41;
    }

    (*(v25 + 8))(v26, v24);
  }

  *(v0 + 184) = v29;
  v48 = sub_258F0A1D0();
  v49 = *(v48 - 8);
  v50 = swift_task_alloc();
  v51 = v29;
  if (swift_dynamicCast())
  {
    v52 = (*(v49 + 88))(v50, v48);
    if (MEMORY[0x277D04530] && v52 == *MEMORY[0x277D04530])
    {

      v29 = *(v0 + 184);
      v30 = 6;
      goto LABEL_41;
    }

    if (MEMORY[0x277D04538] && v52 == *MEMORY[0x277D04538])
    {

      v29 = *(v0 + 184);
      v30 = 7;
      goto LABEL_41;
    }

    if (MEMORY[0x277D04540] && v52 == *MEMORY[0x277D04540])
    {

      v29 = *(v0 + 184);
      v30 = 8;
      goto LABEL_41;
    }

    (*(v49 + 8))(v50, v48);
  }

  *(v0 + 192) = v29;
  v57 = v29;
  if (swift_dynamicCast())
  {

    v30 = *(v0 + 484);
    v29 = *(v0 + 192);
    goto LABEL_41;
  }

  *(v0 + 200) = v29;
  v58 = sub_258F09E60();
  v59 = *(v58 - 8);
  v60 = swift_task_alloc();
  v61 = v29;
  if (swift_dynamicCast())
  {

    (*(v59 + 8))(v60, v58);

    v29 = *(v0 + 200);
    v30 = 2;
    goto LABEL_41;
  }

  *(v0 + 208) = v29;
  v62 = sub_258F09E10();
  v63 = *(v62 - 8);
  v64 = swift_task_alloc();
  v65 = v29;
  if (swift_dynamicCast())
  {

    (*(v63 + 8))(v64, v62);

    v30 = 0;
    v29 = *(v0 + 208);
    goto LABEL_41;
  }

  *(v0 + 216) = v29;
  v66 = v29;
  if (!swift_dynamicCast())
  {

    v30 = 1;
    goto LABEL_41;
  }

  v67 = *(v0 + 288);
  v68 = *(v0 + 272);
  v70 = *(v0 + 256);
  v69 = *(v0 + 264);
  v71 = *(v0 + 248);
  v72 = *(v0 + 224);
  (*(*(v0 + 280) + 8))(v72, v68);

  v67(v72, *MEMORY[0x277D81770], v68);
  (*(v70 + 8))(v69, v71);

LABEL_42:

  v81 = *(v0 + 8);

  return v81();
}

uint64_t sub_258E673C4()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_258E68154;
  }

  else
  {
    v2 = sub_258E674D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258E674D8()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = *(v0 + 224);
  v6 = *(v4 + 8);
  *(v0 + 400) = v6;
  *(v0 + 408) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v5, v3);
  v7 = *(v4 + 32);
  *(v0 + 416) = v7;
  *(v0 + 424) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v5, v2, v3);

  v8 = sub_258F09E80();
  v10 = v9;
  v11 = sub_258F09E90();
  sub_258E68EB0(v8, v10, v11, v12);
  if (v1)
  {
    v13 = *(v0 + 360);
    v14 = *(v0 + 312);
    (*(*(v0 + 328) + 8))(*(v0 + 344), *(v0 + 320));

    *(v0 + 176) = v1;
    v15 = sub_258F09E20();
    v16 = *(v15 - 8);
    v17 = swift_task_alloc();
    v18 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
    if (swift_dynamicCast())
    {
      v19 = (*(v16 + 88))(v17, v15);
      if (MEMORY[0x277D81740] && v19 == *MEMORY[0x277D81740])
      {

        v20 = 3;
        goto LABEL_33;
      }

      if (MEMORY[0x277D81748] && v19 == *MEMORY[0x277D81748])
      {

        v20 = 4;
        goto LABEL_33;
      }

      (*(v16 + 8))(v17, v15);
    }

    *(v0 + 184) = v1;
    v35 = sub_258F0A1D0();
    v36 = *(v35 - 8);
    v37 = swift_task_alloc();
    v38 = v1;
    if (swift_dynamicCast())
    {
      v39 = (*(v36 + 88))(v37, v35);
      if (MEMORY[0x277D04530] && v39 == *MEMORY[0x277D04530])
      {

        v20 = 6;
        goto LABEL_33;
      }

      if (MEMORY[0x277D04538] && v39 == *MEMORY[0x277D04538])
      {

        v20 = 7;
        goto LABEL_33;
      }

      if (MEMORY[0x277D04540] && v39 == *MEMORY[0x277D04540])
      {

        v20 = 8;
        goto LABEL_33;
      }

      (*(v36 + 8))(v37, v35);
    }

    *(v0 + 192) = v1;
    v40 = v1;
    if (swift_dynamicCast())
    {

      v20 = *(v0 + 484);
    }

    else
    {

      *(v0 + 200) = v1;
      v41 = sub_258F09E60();
      v42 = *(v41 - 8);
      v43 = swift_task_alloc();
      v44 = v1;
      if (swift_dynamicCast())
      {

        (*(v42 + 8))(v43, v41);

        v20 = 2;
      }

      else
      {

        *(v0 + 208) = v1;
        v45 = sub_258F09E10();
        v46 = *(v45 - 8);
        v47 = swift_task_alloc();
        v48 = v1;
        if (swift_dynamicCast())
        {

          (*(v46 + 8))(v47, v45);

          v20 = 0;
        }

        else
        {

          *(v0 + 216) = v1;
          v49 = v1;
          if (swift_dynamicCast())
          {
            v50 = *(v0 + 288);
            v51 = *(v0 + 272);
            v53 = *(v0 + 256);
            v52 = *(v0 + 264);
            v54 = *(v0 + 248);
            v55 = *(v0 + 224);
            (*(*(v0 + 280) + 8))(v55, v51);

            v50(v55, *MEMORY[0x277D81770], v51);
            (*(v53 + 8))(v52, v54);

LABEL_34:

            v64 = *(v0 + 8);

            return v64();
          }

          v20 = 1;
        }
      }
    }

LABEL_33:
    v56 = *(v0 + 288);
    v57 = *(v0 + 272);
    v58 = *(v0 + 280);
    v59 = *(v0 + 480);
    v60 = *(v0 + 224);
    v61 = swift_task_alloc();
    sub_258DE403C();
    v62 = swift_allocError();
    *v63 = v20;
    (*(v58 + 8))(v60, v57);
    *v61 = v62;
    v56(v61, v59, v57);
    (*(v58 + 32))(v60, v61, v57);

    goto LABEL_34;
  }

  v66 = *(v0 + 344);
  v21 = *(v0 + 328);
  v22 = *(v0 + 312);
  v65 = *(v0 + 320);
  v23 = *(v0 + 304);
  v67 = *(v0 + 232);

  sub_258F09E80();
  sub_258F09E90();

  MEMORY[0x259C9DEB0](46, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0xD000000000000018, 0x8000000258F18BE0);

  v24 = objc_allocWithZone(v23);
  v25 = sub_258F09E70();
  *(v0 + 432) = v25;

  v26 = swift_task_alloc();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258F0B820;
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = 0x8000000258F189B0;
  *(inited + 48) = 60000;
  v28 = v25;
  sub_258DFBCE0(inited);
  swift_setDeallocating();
  sub_258DE2184(inited + 32, &qword_27F988B98, &unk_258F0D3A0);
  sub_258F09DF0();
  v29 = *(v21 + 8);
  *(v0 + 440) = v29;
  *(v0 + 448) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v66, v65);
  (*(v21 + 32))(v66, v26, v65);

  v30 = swift_task_alloc();
  *(v0 + 456) = v30;
  v68 = (*(*v67 + 96) + **(*v67 + 96));
  v31 = swift_task_alloc();
  *(v0 + 464) = v31;
  *v31 = v0;
  v31[1] = sub_258E67F48;
  v32 = *(v0 + 360);
  v33 = *(v0 + 344);

  return v68(v30, v32, v33);
}

uint64_t sub_258E67F48()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_258E68808;
  }

  else
  {
    v2 = sub_258E6805C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258E6805C()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 440);
  v11 = *(v0 + 416);
  v3 = *(v0 + 400);
  v4 = *(v0 + 360);
  v5 = *(v0 + 344);
  v6 = *(v0 + 320);
  v7 = *(v0 + 272);
  v8 = *(v0 + 224);

  v2(v5, v6);
  v3(v8, v7);
  v11(v8, v1, v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_258E68154()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 344);
  v3 = *(v0 + 320);
  v4 = *(v0 + 328);

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 392);
  *(v0 + 176) = v5;
  v6 = (v0 + 176);
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
      goto LABEL_29;
    }

    if (MEMORY[0x277D81748] && v11 == *MEMORY[0x277D81748])
    {

      v5 = *v6;
      v12 = 4;
      goto LABEL_29;
    }

    (*(v8 + 8))(v9, v7);
  }

  *(v0 + 184) = v5;
  v13 = sub_258F0A1D0();
  v14 = *(v13 - 8);
  v15 = swift_task_alloc();
  v16 = v5;
  if (swift_dynamicCast())
  {
    v17 = (*(v14 + 88))(v15, v13);
    if (MEMORY[0x277D04530] && v17 == *MEMORY[0x277D04530])
    {

      v5 = *(v0 + 184);
      v12 = 6;
      goto LABEL_29;
    }

    if (MEMORY[0x277D04538] && v17 == *MEMORY[0x277D04538])
    {

      v5 = *(v0 + 184);
      v12 = 7;
      goto LABEL_29;
    }

    if (MEMORY[0x277D04540] && v17 == *MEMORY[0x277D04540])
    {

      v5 = *(v0 + 184);
      v12 = 8;
      goto LABEL_29;
    }

    (*(v14 + 8))(v15, v13);
  }

  *(v0 + 192) = v5;
  v18 = v5;
  if (swift_dynamicCast())
  {

    v12 = *(v0 + 484);
    v5 = *(v0 + 192);
  }

  else
  {

    *(v0 + 200) = v5;
    v19 = sub_258F09E60();
    v20 = *(v19 - 8);
    v21 = swift_task_alloc();
    v22 = v5;
    if (swift_dynamicCast())
    {

      (*(v20 + 8))(v21, v19);

      v5 = *(v0 + 200);
      v12 = 2;
    }

    else
    {

      *(v0 + 208) = v5;
      v23 = sub_258F09E10();
      v24 = *(v23 - 8);
      v25 = swift_task_alloc();
      v26 = v5;
      if (swift_dynamicCast())
      {

        (*(v24 + 8))(v25, v23);

        v12 = 0;
        v5 = *(v0 + 208);
      }

      else
      {

        *(v0 + 216) = v5;
        v27 = v5;
        if (swift_dynamicCast())
        {
          v28 = *(v0 + 288);
          v29 = *(v0 + 272);
          v31 = *(v0 + 256);
          v30 = *(v0 + 264);
          v32 = *(v0 + 248);
          v33 = *(v0 + 224);
          (*(*(v0 + 280) + 8))(v33, v29);

          v28(v33, *MEMORY[0x277D81770], v29);
          (*(v31 + 8))(v30, v32);

          goto LABEL_30;
        }

        v12 = 1;
      }
    }
  }

LABEL_29:

  v34 = *(v0 + 288);
  v35 = *(v0 + 272);
  v36 = *(v0 + 280);
  v37 = *(v0 + 480);
  v38 = *(v0 + 224);
  v39 = swift_task_alloc();
  sub_258DE403C();
  v40 = swift_allocError();
  *v41 = v12;
  (*(v36 + 8))(v38, v35);
  *v39 = v40;
  v34(v39, v37, v35);
  (*(v36 + 32))(v38, v39, v35);

LABEL_30:

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_258E68808()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 360);
  v3 = *(v0 + 344);
  v4 = *(v0 + 320);

  v1(v3, v4);

  v5 = *(v0 + 472);
  *(v0 + 176) = v5;
  v6 = (v0 + 176);
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
      goto LABEL_29;
    }

    if (MEMORY[0x277D81748] && v11 == *MEMORY[0x277D81748])
    {

      v5 = *v6;
      v12 = 4;
      goto LABEL_29;
    }

    (*(v8 + 8))(v9, v7);
  }

  *(v0 + 184) = v5;
  v13 = sub_258F0A1D0();
  v14 = *(v13 - 8);
  v15 = swift_task_alloc();
  v16 = v5;
  if (swift_dynamicCast())
  {
    v17 = (*(v14 + 88))(v15, v13);
    if (MEMORY[0x277D04530] && v17 == *MEMORY[0x277D04530])
    {

      v5 = *(v0 + 184);
      v12 = 6;
      goto LABEL_29;
    }

    if (MEMORY[0x277D04538] && v17 == *MEMORY[0x277D04538])
    {

      v5 = *(v0 + 184);
      v12 = 7;
      goto LABEL_29;
    }

    if (MEMORY[0x277D04540] && v17 == *MEMORY[0x277D04540])
    {

      v5 = *(v0 + 184);
      v12 = 8;
      goto LABEL_29;
    }

    (*(v14 + 8))(v15, v13);
  }

  *(v0 + 192) = v5;
  v18 = v5;
  if (swift_dynamicCast())
  {

    v12 = *(v0 + 484);
    v5 = *(v0 + 192);
  }

  else
  {

    *(v0 + 200) = v5;
    v19 = sub_258F09E60();
    v20 = *(v19 - 8);
    v21 = swift_task_alloc();
    v22 = v5;
    if (swift_dynamicCast())
    {

      (*(v20 + 8))(v21, v19);

      v5 = *(v0 + 200);
      v12 = 2;
    }

    else
    {

      *(v0 + 208) = v5;
      v23 = sub_258F09E10();
      v24 = *(v23 - 8);
      v25 = swift_task_alloc();
      v26 = v5;
      if (swift_dynamicCast())
      {

        (*(v24 + 8))(v25, v23);

        v12 = 0;
        v5 = *(v0 + 208);
      }

      else
      {

        *(v0 + 216) = v5;
        v27 = v5;
        if (swift_dynamicCast())
        {
          v28 = *(v0 + 288);
          v29 = *(v0 + 272);
          v31 = *(v0 + 256);
          v30 = *(v0 + 264);
          v32 = *(v0 + 248);
          v33 = *(v0 + 224);
          (*(*(v0 + 280) + 8))(v33, v29);

          v28(v33, *MEMORY[0x277D81770], v29);
          (*(v31 + 8))(v30, v32);

          goto LABEL_30;
        }

        v12 = 1;
      }
    }
  }

LABEL_29:

  v34 = *(v0 + 288);
  v35 = *(v0 + 272);
  v36 = *(v0 + 280);
  v37 = *(v0 + 480);
  v38 = *(v0 + 224);
  v39 = swift_task_alloc();
  sub_258DE403C();
  v40 = swift_allocError();
  *v41 = v12;
  (*(v36 + 8))(v38, v35);
  *v39 = v40;
  v34(v39, v37, v35);
  (*(v36 + 32))(v38, v39, v35);

LABEL_30:

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_258E68EB0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_258F0A7A0();
  if (result)
  {
    if (qword_280CC4A10 != -1)
    {
      swift_once();
    }

    v9 = sub_258F0A370();
    __swift_project_value_buffer(v9, qword_280CC4A18);

    v10 = sub_258F0A350();
    v11 = sub_258F0A800();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_258DE3018(a1, a2, &v14);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_258DE3018(a3, a4, &v14);
      _os_log_impl(&dword_258DD8000, v10, v11, "TaskId: %s, TaskName: %s: asked to stop!", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v13, -1, -1);
      MEMORY[0x259C9EF40](v12, -1, -1);
    }

    sub_258F0A770();
    sub_258DFCC98();
    swift_allocError();
    sub_258F0A3F0();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_258E690A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_258F0A370();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E69168, 0, 0);
}

uint64_t sub_258E69168()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0);
  v1 = swift_task_alloc();
  v0[9] = v1;
  if (qword_280CC4A10 != -1)
  {
    swift_once();
  }

  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[4];
  v6 = __swift_project_value_buffer(v4, qword_280CC4A18);
  (*(v3 + 16))(v2, v6, v4);
  type metadata accessor for SiriDigestMetrics(0);
  swift_allocObject();
  v0[2] = SiriDigestMetrics.init(defaults:logger:)(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BC0, qword_258F11BA0);
  swift_allocObject();
  v8 = sub_258F09E40();
  v0[10] = v8;
  if (v8)
  {
    v9 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0);
    v10 = swift_task_alloc();
    v0[11] = v10;
    v11 = sub_258F09E00();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v10, v9, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v13 = swift_task_alloc();
    v0[12] = v13;
    *v13 = v0;
    v13[1] = sub_258E694EC;

    return MEMORY[0x2821ED078](v1, v10);
  }

  else
  {
    v14 = v0[3];
    v15 = sub_258F09E50();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v1, 1, 1, v15);
    (*(v16 + 104))(v14, *MEMORY[0x277D81758], v15);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_258E694EC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  sub_258DE2184(*(v2 + 88), &qword_27F988B20, &unk_258F0CDB0);

  if (v0)
  {
    v3 = sub_258E69760;
  }

  else
  {

    v3 = sub_258E69658;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258E69658()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = sub_258F09E50();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  (*(v4 + 32))(v2, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_258E69760()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258E697D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = sub_258F0A370();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E69898, 0, 0);
}

uint64_t sub_258E69898()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0);
  v1 = swift_task_alloc();
  v0[9] = v1;
  if (qword_280CC4A10 != -1)
  {
    swift_once();
  }

  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[4];
  v6 = __swift_project_value_buffer(v4, qword_280CC4A18);
  (*(v3 + 16))(v2, v6, v4);
  type metadata accessor for SiriSegmentCohortMetrics(0);
  swift_allocObject();
  v0[2] = SiriSegmentCohortMetrics.init(defaults:logger:)(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BC8, &qword_258F11BB8);
  swift_allocObject();
  v8 = sub_258F09E40();
  v0[10] = v8;
  if (v8)
  {
    v9 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0);
    v10 = swift_task_alloc();
    v0[11] = v10;
    v11 = sub_258F09E00();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v10, v9, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v13 = swift_task_alloc();
    v0[12] = v13;
    *v13 = v0;
    v13[1] = sub_258E69C1C;

    return MEMORY[0x2821ED078](v1, v10);
  }

  else
  {
    v14 = v0[3];
    v15 = sub_258F09E50();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v1, 1, 1, v15);
    (*(v16 + 104))(v14, *MEMORY[0x277D81758], v15);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_258E69C1C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  sub_258DE2184(*(v2 + 88), &qword_27F988B20, &unk_258F0CDB0);

  if (v0)
  {
    v3 = sub_258E6A2E4;
  }

  else
  {

    v3 = sub_258E6A2E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

unint64_t sub_258E69DA4()
{
  result = qword_27F989BD0;
  if (!qword_27F989BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989BD0);
  }

  return result;
}

unint64_t sub_258E69E00()
{
  result = qword_27F989BD8;
  if (!qword_27F989BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989BD8);
  }

  return result;
}

unint64_t sub_258E69E58()
{
  result = qword_27F989BE0;
  if (!qword_27F989BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989BE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriMetricsWorkerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriMetricsWorkerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of MetricsExecutor.executeSiriDigestMetrics(defaults:pluginContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 88) + **(*v3 + 88));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MetricsExecutor.executeSiriSegmentCohortMetrics(defaults:pluginContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 96) + **(*v3 + 96));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_258DEE37C;

  return v10(a1, a2, a3);
}

uint64_t sub_258E6A310(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E6A3AC, 0, 0);
}

uint64_t sub_258E6A3AC()
{
  v0[2] = MEMORY[0x277D84F90];
  v1 = v0[5];
  if (v0[4])
  {
    sub_258F0A0A0();
  }

  else
  {
    v2 = sub_258F09A20();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  }

  v3 = v0[3];
  v0[6] = sub_258F0A050();
  v4 = sub_258F09DD0();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_258E6A4F0;
  v6 = v0[5];

  return MEMORY[0x282159D80](v4, v3, 0xD000000000000011, 0x8000000258F1C4D0, v6);
}

uint64_t sub_258E6A4F0(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 64) = a1;

  sub_258E6A84C(v2);

  return MEMORY[0x2822009F8](sub_258E6A610, 0, 0);
}

uint64_t sub_258E6A610()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v1;
    MEMORY[0x259C9DF50]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_258F0A6D0();
    }

    sub_258F0A700();
  }

  v3 = v0[6];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988740, &qword_258F0B850);
  sub_258F0A190();
  *(swift_allocObject() + 16) = xmmword_258F0F8A0;
  sub_258F0A160();
  sub_258F0A160();
  v5 = objc_allocWithZone(v3);

  v6 = v4;
  v7 = sub_258F0A000();

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_258E6A84C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ODDIExperimentationResults.eventStreamMetadata.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ODDIExperimentationResults.conversationStreamMetadata.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ODDIExperimentationResults.experimentationResults.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ODDIExperimentationResults.init(eventStreamMetadata:conversationStreamMetadata:experimentationResults:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_258E6A9C0(uint64_t a1)
{
  v2[260] = v1;
  v2[259] = a1;
  v3 = sub_258F09F40();
  v2[261] = v3;
  v2[262] = *(v3 - 8);
  v2[263] = swift_task_alloc();
  v4 = sub_258F09F50();
  v2[264] = v4;
  v2[265] = *(v4 - 8);
  v2[266] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  v2[267] = swift_task_alloc();
  v2[268] = swift_task_alloc();
  v2[269] = *(type metadata accessor for DeviceExperimentMetrics(0) - 8);
  v2[270] = swift_task_alloc();
  v2[271] = swift_task_alloc();
  v5 = type metadata accessor for EventMetadata(0);
  v2[272] = v5;
  v2[273] = *(v5 - 8);
  v2[274] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v2[275] = swift_task_alloc();
  v2[276] = swift_task_alloc();
  v2[277] = swift_task_alloc();
  v2[278] = swift_task_alloc();
  v2[279] = swift_task_alloc();
  v2[280] = swift_task_alloc();
  v2[281] = type metadata accessor for CommonDigestElements(0);
  v2[282] = swift_task_alloc();
  v6 = sub_258F09B00();
  v2[283] = v6;
  v2[284] = *(v6 - 8);
  v2[285] = swift_task_alloc();
  v7 = sub_258F09A20();
  v2[286] = v7;
  v2[287] = *(v7 - 8);
  v2[288] = swift_task_alloc();
  v2[289] = swift_task_alloc();
  v2[290] = swift_task_alloc();
  v2[291] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E6AD64, 0, 0);
}

uint64_t sub_258E6AD64(uint64_t a1)
{
  v1[292] = OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#ODDIExperimentationCalculator: SQL calculator invoked", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v1[260];

  v6 = *(v5 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_defaults);
  v7 = sub_258F0A4E0();
  v8 = [v6 BOOLForKey_];

  v9 = sub_258F0A350();
  v10 = sub_258F0A810();
  if (os_log_type_enabled(v9, v10))
  {
    if (v8)
    {
      v11 = "#ODDIExperimentationCalculator: Include current date data for aggregation.";
    }

    else
    {
      v11 = "#ODDIExperimentationCalculator: current date data NOT included for aggregation.";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_258DD8000, v9, v10, v11, v12, 2u);
    MEMORY[0x259C9EF40](v12, -1, -1);
  }

  v1[293] = sub_258DE02E8();
  v1[294] = v13;
  v14 = sub_258F0A4E0();
  v15 = [v6 BOOLForKey_];

  if (v15)
  {
    sub_258F09A10();
  }

  else
  {
    v16 = v1[285];
    v17 = v1[284];
    v18 = v1[283];
    sub_258F09AC0();
    sub_258F09BB0();
    (*(v17 + 8))(v16, v18);
  }

  sub_258F0A0E0();
  swift_allocObject();
  sub_258F0A0D0();
  v19 = sub_258F0A0B0();
  v1[295] = v19;

  v20 = sub_258DE04A0();
  v1[296] = v20;
  v21 = v20;

  v22 = swift_task_alloc();
  v1[297] = v22;
  *v22 = v1;
  v22[1] = sub_258E6B1DC;

  return sub_258E6F058(v21, v19);
}

uint64_t sub_258E6B1DC(uint64_t a1)
{
  *(*v1 + 2384) = a1;

  return MEMORY[0x2822009F8](sub_258E6B2FC, 0, 0);
}

void sub_258E6B2FC()
{
  v273 = v0;
  sub_258F0A040();

  v1 = sub_258F0A350();
  v2 = sub_258F0A810();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_258DD8000, v1, v2, "#ODDIExperimentationCalculator: SQL query executed", v3, 2u);
    MEMORY[0x259C9EF40](v3, -1, -1);
  }

  v4 = v262;
  v5 = *(v262 + 2280);
  v6 = *(v262 + 2272);
  v7 = *(v262 + 2264);

  sub_258F09B50();
  sub_258F09AC0();
  sub_258F09930();
  v214 = *(v6 + 8);
  v214(v5, v7);
  if ((sub_258F0A070() & 1) == 0)
  {
    v218 = 0;
    v219 = 0;
    v256 = MEMORY[0x277D84F90];
LABEL_420:

    v190 = sub_258F0A350();
    v191 = sub_258F0A810();
    if (os_log_type_enabled(v190, v191))
    {
      v192 = swift_slowAlloc();
      *v192 = 134217984;
      *(v192 + 4) = v256[2];

      _os_log_impl(&dword_258DD8000, v190, v191, "#ODDIExperimentationCalculator: query yielded %ld results", v192, 0xCu);
      MEMORY[0x259C9EF40](v192, -1, -1);
    }

    else
    {
    }

    v193 = *(v262 + 2120);
    v194 = *(v262 + 2096);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BE8, &unk_258F13720);
    v195 = swift_allocObject();
    v196 = 0;
    *(v195 + 32) = v219;
    *(v195 + 40) = 0xD000000000000021;
    *(v195 + 48) = 0x8000000258F1C520;
    *(v195 + 56) = v218;
    *(v195 + 64) = 0xD00000000000001CLL;
    *(v195 + 72) = 0x8000000258F1C550;
    *(v195 + 80) = xmmword_258F11EE0;
    v270 = v195;
    *(v195 + 96) = 0x8000000258F1C570;
    v267 = *MEMORY[0x277D5D9E8];
    v264 = (v193 + 8);
    v265 = (v193 + 104);
    v258 = *MEMORY[0x277D5D9B8];
    do
    {
      v197 = *(v270 + v196 + 32);
      v198 = *(v270 + v196 + 40);
      v199 = *(v270 + v196 + 48);

      v200 = *(v262 + 2128);
      v201 = *(v262 + 2112);
      if (v197 < 1)
      {
        (*v265)(*(v262 + 2128), v267, *(v262 + 2112));
      }

      else
      {
        v202 = *(v262 + 2104);
        v203 = *(v262 + 2088);
        sub_258E2D0BC(v197, v198, v199);
        (*v265)(v200, v267, v201);
        (*(v194 + 104))(v202, v258, v203);
        sub_258F09F10();
        (*(v194 + 8))(v202, v203);
      }

      (*v264)(*(v262 + 2128), *(v262 + 2112));

      v196 += 24;
    }

    while (v196 != 72);
    v204 = *(v262 + 2368);
    v239 = *(v262 + 2384);
    v205 = *(v262 + 2320);
    v242 = *(v262 + 2312);
    v244 = *(v262 + 2328);
    v206 = *(v262 + 2304);
    v207 = *(v262 + 2296);
    v208 = *(v262 + 2288);
    v209 = *(v262 + 2280);
    v210 = *(v262 + 2264);
    v211 = *(v262 + 2072);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989BF0, &unk_258F11F00);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_258F0A0F0();
    sub_258F09AC0();
    sub_258F09BB0();
    v214(v209, v210);
    v271 = sub_258F09B60();
    v212 = *(v207 + 8);
    v212(v206, v208);

    v212(v242, v208);
    v212(v205, v208);
    v212(v244, v208);
    *v211 = MEMORY[0x277D84F90];
    v211[1] = v271;
    v211[2] = v256;

    v213 = *(v262 + 8);

    v213();
    return;
  }

  v218 = 0;
  v219 = 0;
  v263 = (v262 + 1104);
  v257 = (v262 + 1200);
  v259 = (v262 + 1072);
  v261 = (v262 + 1264);
  v254 = (v262 + 1424);
  v255 = (v262 + 1232);
  v217 = *(v262 + 2256);
  v253 = *(v262 + 2248);
  v260 = *(v262 + 2176);
  v216 = (*(v262 + 2184) + 56);
  v215 = *(v262 + 2152);
  v256 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = sub_258F0A060();
    if (!v8)
    {
      goto LABEL_6;
    }

    v9 = v8;
    v10 = sub_258F0A350();
    v11 = sub_258F0A810();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v272[0] = v13;
      *v12 = 136315138;
      v14 = sub_258F0A420();
      v16 = sub_258DE3018(v14, v15, v272);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_258DD8000, v10, v11, "#ODDIExperimentationCalculator row data: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x259C9EF40](v13, -1, -1);
      MEMORY[0x259C9EF40](v12, -1, -1);
    }

    v17 = sub_258E2A280(v9, *(v4 + 2312), 0xD00000000000002ELL, 0x8000000258F1C4F0);
    v19 = v17;
    if ((v18 & 0x10000) == 0)
    {
      break;
    }

LABEL_6:
    if ((sub_258F0A070() & 1) == 0)
    {
      goto LABEL_420;
    }
  }

  v251 = v17;
  if (v18)
  {
    if (__OFADD__(v219, 1))
    {
      goto LABEL_435;
    }

    ++v219;
  }

  sub_258E2BA60(v9, *(v4 + 2256));
  *(v4 + 1792) = 0xD000000000000011;
  *(v4 + 1800) = 0x8000000258F1A5C0;
  sub_258F0AA80();
  if (*(v9 + 16) && (v20 = sub_258E2EA2C(v4 + 56), (v21 & 1) != 0))
  {
    sub_258DE4090(*(v9 + 56) + 32 * v20, v4 + 816);
  }

  else
  {
    *(v4 + 816) = 0u;
    *(v4 + 832) = 0u;
  }

  sub_258E0F590(v4 + 56);
  if (*(v4 + 840))
  {
    if (swift_dynamicCast())
    {
      v22 = sub_258F0A4E0();

      v23 = v22;
      if ([v23 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_UNKNOWN"])
      {
        v24 = 0;
      }

      else if ([v23 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_ALLOCATED"])
      {
        v24 = 1;
      }

      else if ([v23 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_ACTIVATED"])
      {
        v24 = 2;
      }

      else if ([v23 isEqualToString:@"EXPTREATMENTALLOCATIONSTATUS_DEACTIVATED"])
      {
        v24 = 3;
      }

      else
      {
        v24 = 0;
      }

      v250 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    sub_258DE2184(v4 + 816, &qword_27F989868, &unk_258F12D70);
  }

  v24 = 0;
  v250 = 1;
LABEL_32:
  v25 = *(v4 + 2240);
  v26 = sub_258F09A70();
  v27 = *(v26 - 8);
  v268 = *(v27 + 56);
  v268(v25, 1, 1, v26);
  *(v4 + 1696) = 0xD000000000000015;
  *(v4 + 1704) = 0x8000000258F189D0;
  sub_258F0AA80();
  if (*(v9 + 16) && (v28 = sub_258E2EA2C(v4 + 176), (v29 & 1) != 0))
  {
    sub_258DE4090(*(v9 + 56) + 32 * v28, v4 + 912);
  }

  else
  {
    *(v4 + 912) = 0u;
    *(v4 + 928) = 0u;
  }

  sub_258E0F590(v4 + 176);
  if (*(v4 + 936))
  {
    if (swift_dynamicCast())
    {
      v30 = *(v4 + 2240);
      v31 = *(v4 + 2232);
      sub_258F09A30();

      sub_258DE2184(v30, &qword_27F988730, &unk_258F0F8E0);
      sub_258E2EAD8(v31, v30, &qword_27F988730, &unk_258F0F8E0);
    }
  }

  else
  {
    sub_258DE2184(v4 + 912, &qword_27F989868, &unk_258F12D70);
  }

  v32 = *(v4 + 2224);
  sub_258E3A540(*(v4 + 2240), v32);
  v33 = (*(v27 + 48))(v32, 1, v26);
  sub_258DE2184(v32, &qword_27F988730, &unk_258F0F8E0);
  if (v33 == 1)
  {
    v34 = sub_258F0A350();
    v35 = sub_258F0A820();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_258DD8000, v34, v35, "observed NilDeviceAggregationId", v36, 2u);
      MEMORY[0x259C9EF40](v36, -1, -1);
    }

    if (__OFADD__(v218, 1))
    {
      goto LABEL_436;
    }

    ++v218;
  }

  v268(*(v4 + 2216), 1, 1, v26);
  *(v4 + 1600) = 0xD000000000000013;
  *(v4 + 1608) = 0x8000000258F1A5E0;
  sub_258F0AA80();
  if (*(v9 + 16) && (v37 = sub_258E2EA2C(v4 + 296), (v38 & 1) != 0))
  {
    sub_258DE4090(*(v9 + 56) + 32 * v37, v263);
  }

  else
  {
    *v263 = 0u;
    *(v262 + 1120) = 0u;
  }

  sub_258E0F590(v4 + 296);
  if (*(v4 + 1128))
  {
    if (swift_dynamicCast())
    {
      v39 = *(v4 + 2232);
      v40 = *(v4 + 2216);
      sub_258F09A30();

      sub_258DE2184(v40, &qword_27F988730, &unk_258F0F8E0);
      sub_258E2EAD8(v39, v40, &qword_27F988730, &unk_258F0F8E0);
    }
  }

  else
  {
    sub_258DE2184(v263, &qword_27F989868, &unk_258F12D70);
  }

  *(v4 + 1584) = 0xD000000000000029;
  *(v4 + 1592) = 0x8000000258F18AC0;
  sub_258F0AA80();
  if (*(v9 + 16) && (v41 = sub_258E2EA2C(v4 + 416), (v42 & 1) != 0))
  {
    sub_258DE4090(*(v9 + 56) + 32 * v41, v261);
  }

  else
  {
    *v261 = 0u;
    *(v262 + 1280) = 0u;
  }

  sub_258E0F590(v4 + 416);
  if (*(v4 + 1288))
  {
    v43 = swift_dynamicCast();
    v44 = *(v262 + 2064);
    if (!v43)
    {
      v44 = 0;
    }

    v247 = v44;
    v45 = v43 ^ 1;
  }

  else
  {
    sub_258DE2184(v261, &qword_27F989868, &unk_258F12D70);
    v247 = 0;
    v45 = 1;
  }

  v245 = v45;
  *(v4 + 1536) = 0xD00000000000002BLL;
  *(v4 + 1544) = 0x8000000258F18AF0;
  sub_258F0AA80();
  if (*(v9 + 16) && (v46 = sub_258E2EA2C(v4 + 536), (v47 & 1) != 0))
  {
    sub_258DE4090(*(v9 + 56) + 32 * v46, v4 + 848);
  }

  else
  {
    *(v4 + 848) = 0u;
    *(v4 + 864) = 0u;
  }

  sub_258E0F590(v4 + 536);
  v249 = v24;
  if (*(v4 + 872))
  {
    v48 = swift_dynamicCast();
    if (v48)
    {
      v49 = *(v262 + 2056);
    }

    else
    {
      v49 = 0;
    }

    v50 = v48 ^ 1;
  }

  else
  {
    sub_258DE2184(v4 + 848, &qword_27F989868, &unk_258F12D70);
    v49 = 0;
    v50 = 1;
  }

  v51 = *(v4 + 2240);
  v52 = *(v4 + 2216);
  v53 = *(v4 + 2192);
  sub_258E2BE88(v9, *(v4 + 2208));
  sub_258F09A60();
  v268(v53, 0, 1, v26);
  sub_258E3A540(v51, v53 + v260[5]);
  sub_258E3A540(v52, v53 + v260[6]);
  sub_258F099E0();
  if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v54 <= -1.0)
    {
      goto LABEL_432;
    }

    if (v54 >= 1.84467441e19)
    {
      goto LABEL_433;
    }

    if (!is_mul_ok(v54, 0x3E8uLL))
    {
      goto LABEL_434;
    }

    v55 = 1000 * v54;
    v56 = *(v262 + 2192);
    v57 = [objc_opt_self() sharedPreferences];
    v58 = [v57 longLivedIdentifierUploadingEnabled];

    v59 = v56 + v260[7];
    *v59 = v55;
    v60 = v262;
    *(v59 + 8) = 0;
    *(v56 + v260[8]) = v251;
    v61 = v56 + v260[9];
    *v61 = v247;
    *(v61 + 8) = v245;
    v62 = v56 + v260[10];
    *v62 = v49;
    *(v62 + 8) = v50;
    v63 = v56 + v260[11];
    *v63 = 3;
    *(v63 + 4) = 0;
    *(v56 + v260[12]) = v58 ^ 1;
    v64 = [objc_allocWithZone(MEMORY[0x277D5A900]) init];
    *(v262 + 1648) = 0xD000000000000015;
    *(v262 + 1656) = 0x8000000258F1BA40;
    sub_258F0AA80();
    if (*(v9 + 16))
    {
      v65 = sub_258E2EA2C(v262 + 656);
      if (v66)
      {
        sub_258DE4090(*(v9 + 56) + 32 * v65, v255);
      }

      else
      {
        *v255 = 0u;
        *(v262 + 1248) = 0u;
      }
    }

    else
    {
      *v255 = 0u;
      *(v262 + 1248) = 0u;
    }

    sub_258E0F590(v262 + 656);
    if (*(v262 + 1256))
    {
      if (swift_dynamicCast())
      {
        v67 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(*(v262 + 1968), *(v262 + 1976));

        v64 = v67;
      }
    }

    else
    {
      sub_258DE2184(v255, &qword_27F989868, &unk_258F12D70);
    }

    *(v262 + 1776) = 0xD000000000000016;
    *(v262 + 1784) = 0x8000000258F1BA60;
    sub_258F0AA80();
    if (*(v9 + 16) && (v68 = sub_258E2EA2C(v262 + 776), (v69 & 1) != 0))
    {
      sub_258DE4090(*(v9 + 56) + 32 * v68, v262 + 976);
    }

    else
    {
      *(v262 + 976) = 0u;
      *(v262 + 992) = 0u;
    }

    sub_258E0F590(v262 + 776);
    v243 = v64;
    if (*(v262 + 1000))
    {
      if (swift_dynamicCast())
      {
        v70 = *(v262 + 1520);
        v71 = *(v262 + 1528);

        v72._countAndFlagsBits = v70;
        v72._object = v71;
        SiriReponseCategory.init(rawValue:)(v72);
        v73 = v272[0];
        if (LOBYTE(v272[0]) == 21)
        {

          v74 = sub_258F0A350();
          v75 = sub_258F0A800();

          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            v272[0] = v77;
            *v76 = 136315138;
            v78 = sub_258DE3018(v70, v71, v272);

            *(v76 + 4) = v78;
            _os_log_impl(&dword_258DD8000, v74, v75, "Invalid response category found %s", v76, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v77);
            MEMORY[0x259C9EF40](v77, -1, -1);
            MEMORY[0x259C9EF40](v76, -1, -1);
          }

          else
          {
          }

          v266 = 0;
          v252 = 1;
          v60 = v262;
        }

        else
        {

          LOBYTE(v272[0]) = v73;
          v266 = _s16MetricsFramework04SiriA16CalculatorHelperO33convertToSISchemaResponseCategory8categorySo0hiJ0VAA0c7ReponseJ0O_tFZ_0(v272);
          v252 = 0;
        }

        goto LABEL_99;
      }
    }

    else
    {
      sub_258DE2184(v262 + 976, &qword_27F989868, &unk_258F12D70);
    }

    v79 = sub_258F0A350();
    v80 = sub_258F0A800();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_258DD8000, v79, v80, "no response category found", v81, 2u);
      MEMORY[0x259C9EF40](v81, -1, -1);
    }

    v266 = 0;
    v252 = 1;
LABEL_99:
    *(v60 + 1744) = 0x6974756F725F6569;
    *(v60 + 1752) = 0xEA0000000000676ELL;
    sub_258F0AA80();
    if (*(v9 + 16) && (v82 = sub_258E2EA2C(v60 + 16), (v83 & 1) != 0))
    {
      sub_258DE4090(*(v9 + 56) + 32 * v82, v254);
    }

    else
    {
      *v254 = 0u;
      *(v262 + 1440) = 0u;
    }

    sub_258E0F590(v60 + 16);
    if (*(v60 + 1448))
    {
      if (swift_dynamicCast())
      {
        v84 = *(v60 + 2016);
        v85 = *(v60 + 2024);

        v86 = _s16MetricsFramework15ExtensionsUtilsC15decodeIERoutingySaySo08SISchemaF0VGSgSSSgFZ_0(v84, v85);

        if (v86)
        {
        }

        else
        {

          v95 = sub_258F0A350();
          v96 = sub_258F0A800();

          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            v272[0] = v98;
            *v97 = 136315138;
            v99 = sub_258DE3018(v84, v85, v272);

            *(v97 + 4) = v99;
            _os_log_impl(&dword_258DD8000, v95, v96, "Invalid ieRouting found %s", v97, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v98);
            MEMORY[0x259C9EF40](v98, -1, -1);
            MEMORY[0x259C9EF40](v97, -1, -1);
          }

          else
          {
          }

          v86 = 0;
          v60 = v262;
        }

        goto LABEL_111;
      }
    }

    else
    {
      sub_258DE2184(v254, &qword_27F989868, &unk_258F12D70);
    }

    v87 = sub_258F0A350();
    v88 = sub_258F0A800();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_258DD8000, v87, v88, "No ieRouting found", v89, 2u);
      MEMORY[0x259C9EF40](v89, -1, -1);
    }

    v86 = 0;
LABEL_111:
    *(v60 + 1728) = 0xD000000000000011;
    *(v60 + 1736) = 0x8000000258F1BA80;
    sub_258F0AA80();
    if (*(v9 + 16) && (v90 = sub_258E2EA2C(v60 + 736), (v91 & 1) != 0))
    {
      sub_258DE4090(*(v9 + 56) + 32 * v90, v60 + 944);
    }

    else
    {
      *(v60 + 944) = 0u;
      *(v60 + 960) = 0u;
    }

    sub_258E0F590(v60 + 736);
    v241 = v86;
    if (*(v60 + 968))
    {
      if (swift_dynamicCast())
      {
        v92 = sub_258F0A4E0();

        v93 = v92;
        if ([v93 isEqualToString:@"INVOCATIONSOURCE_UNKNOWN_INVOCATION_SOURCE"])
        {
          v94 = 0;
        }

        else if ([v93 isEqualToString:@"INVOCATIONSOURCE_HOME_BUTTON"])
        {
          v94 = 1;
        }

        else if ([v93 isEqualToString:@"INVOCATIONSOURCE_LOCK_BUTTON"])
        {
          v94 = 2;
        }

        else if ([v93 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_BUTTON"])
        {
          v94 = 3;
        }

        else if ([v93 isEqualToString:@"INVOCATIONSOURCE_STEERING_WHEEL_BUTTON"])
        {
          v94 = 4;
        }

        else if ([v93 isEqualToString:@"INVOCATIONSOURCE_TOUCHBAR_BUTTON"])
        {
          v94 = 5;
        }

        else if ([v93 isEqualToString:@"INVOCATIONSOURCE_KEYBOARD_SHORTCUT"])
        {
          v94 = 6;
        }

        else if ([v93 isEqualToString:@"INVOCATIONSOURCE_APPLICATION_ICON"])
        {
          v94 = 7;
        }

        else if ([v93 isEqualToString:@"INVOCATIONSOURCE_WIRED_MICROPHONE_BUTTON"])
        {
          v94 = 8;
        }

        else if ([v93 isEqualToString:@"INVOCATIONSOURCE_REMOTE_MICROPHONE_BUTTON"])
        {
          v94 = 9;
        }

        else if ([v93 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_BANNER"])
        {
          v94 = 10;
        }

        else if ([v93 isEqualToString:@"INVOCATIONSOURCE_CARD_SECTION"])
        {
          v94 = 11;
        }

        else if ([v93 isEqualToString:@"INVOCATIONSOURCE_TAP_TO_EDIT"])
        {
          v94 = 12;
        }

        else if ([v93 isEqualToString:@"INVOCATIONSOURCE_STRUCTURED_DICTATION"])
        {
          v94 = 13;
        }

        else if ([v93 isEqualToString:@"INVOCATIONSOURCE_SOFT_BUTTON"])
        {
          v94 = 14;
        }

        else
        {
          if ([v93 isEqualToString:@"INVOCATIONSOURCE_AUTO_PROMPT"])
          {
            v94 = 15;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_RAISE_TO_SPEAK"])
          {
            v94 = 16;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_VOICE_TRIGGER"])
          {
            v94 = 17;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_HARDWARE_BUTTON"])
          {
            v94 = 18;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_HANDOFF"])
          {
            v94 = 19;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_ELEMENT"])
          {
            v94 = 20;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_BLUETOOTH_HEADSET_VOICE_TRIGGER"])
          {
            v94 = 21;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_MENU_BAR"])
          {
            v94 = 22;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DOCK_ICON"])
          {
            v94 = 23;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_HOME_BUTTON"])
          {
            v94 = 24;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_VOICETRIGGER"])
          {
            v94 = 25;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_GATEKEEPER"])
          {
            v94 = 26;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_SIRI_BUTTON"])
          {
            v94 = 27;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_CARPLAY_IN_APP_SIRI_AFFORDANCE"])
          {
            v94 = 28;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_BREADCRUMB"])
          {
            v94 = 29;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_GUIDE_BUTTON"])
          {
            v94 = 30;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_TRANSCRIPT_VERTICAL_SWIPE"])
          {
            v94 = 31;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_SUGGESTION"])
          {
            v94 = 32;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_SPOTLIGHT_ASK_SIRI"])
          {
            v94 = 33;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_SIRI_COMPLICATION"])
          {
            v94 = 34;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_TV_REMOTE_BUTTON"])
          {
            v94 = 35;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_NONAPPLE_REMOTE"])
          {
            v94 = 36;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_REMOTE_APP"])
          {
            v94 = 37;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_REMOTE_UI"])
          {
            v94 = 38;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON"])
          {
            v94 = 39;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON"])
          {
            v94 = 40;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_SPEECH_API"])
          {
            v94 = 41;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TV_REMOTE"])
          {
            v94 = 42;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_SHORTCUT_ENROLLMENT"])
          {
            v94 = 43;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_ENROLLMENT"])
          {
            v94 = 44;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_SIRI_VOICE_TRIGGER_PROXIMITY_ENROLLMENT"])
          {
            v94 = 45;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_SIRI_SECONDARY_DEVICE"])
          {
            v94 = 46;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE"])
          {
            v94 = 47;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_SIRI_TRIGGERLESS"])
          {
            v94 = 48;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_SIRI_NOTIFICATION"])
          {
            v94 = 49;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_TEST_AUTOMATION"])
          {
            v94 = 50;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_WAVEFORM_GLYPH_BUTTON"])
          {
            v94 = 51;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_SIRI_AUTO_PROMPT"])
          {
            v94 = 52;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GLOBE_BUTTON"])
          {
            v94 = 53;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_LONG_PRESS"])
          {
            v94 = 54;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_ACCESSIBILITY_BACKTAP"])
          {
            v94 = 55;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_VOICECOMMAND_BUTTON"])
          {
            v94 = 56;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_VOICECOMMAND_BUTTON"])
          {
            v94 = 57;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_APPLETV_REMOTE_DEVICE"])
          {
            v94 = 58;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_MESSAGE_SEND_BUTTON"])
          {
            v94 = 59;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_WITH_INPUT_SWITCHER"])
          {
            v94 = 60;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_INPUT_FIELD_MIC_BUTTON_FIRST_RESPONDER"])
          {
            v94 = 61;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR"])
          {
            v94 = 62;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_SAFARI_MIC_BUTTON_IN_ADDRESS_BAR_FIRST_RESPONDER"])
          {
            v94 = 63;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SEARCH_BAR_VISIBLE"])
          {
            v94 = 64;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SEARCH_MIC_VISIBLE"])
          {
            v94 = 65;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WHILE_SAFARI_MIC_VISIBLE"])
          {
            v94 = 66;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_FROM_KEYBOARD_WITH_INPUT_SWITCHER_WHILE_SAFARI_MIC_VISIBLE"])
          {
            v94 = 67;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_MIC_BUTTON_FROM_QUICKBOARD"])
          {
            v94 = 68;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON"])
          {
            v94 = 69;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MIC_ICON_UCBBAR"])
          {
            v94 = 70;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_GLOBE_BUTTON_SHORTCUT"])
          {
            v94 = 71;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_KEYBOARD_STANDARD_SHORTCUT"])
          {
            v94 = 72;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_CALL"])
          {
            v94 = 73;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_NOTIFICATION"])
          {
            v94 = 74;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_AIRPODS_MAX_BUTTON_PRESS"])
          {
            v94 = 75;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_AUTO_START"])
          {
            v94 = 76;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_MIC_BUTTON_PRESSED"])
          {
            v94 = 77;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_QUICKBOARD_TEXT_INPUT_LANGUAGE_PICKER_ITEM_SELECTED"])
          {
            v94 = 78;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_FLEXIBLE_FOLLOW_UPS"])
          {
            v94 = 79;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_JS_VOICE_TRIGGER"])
          {
            v94 = 80;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_MESSAGES_TEXT_FIELD_MIC_BUTTON_WHILE_KEYBOARD_NOT_VISIBLE"])
          {
            v94 = 81;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_POP_UP_UI_LANGUAGE_SWITCHER_ICON"])
          {
            v94 = 82;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_LONG_PRESS_TEXT_INPUT_FIELD"])
          {
            v94 = 83;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_SIRI_ANNOUNCE_DROP_IN"])
          {
            v94 = 84;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI"])
          {
            v94 = 85;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_PINCH"])
          {
            v94 = 87;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_GAZE"])
          {
            v94 = 88;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_EXECUTE_ON_REMOTE_REQUEST"])
          {
            v94 = 89;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_WATCH_GESTURE_PRIMARY"])
          {
            v94 = 90;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI"])
          {
            v94 = 91;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_HEAD_GESTURE"])
          {
            v94 = 92;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_SOFT_KEYBOARD_BUTTON"])
          {
            v94 = 93;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_WRITING_TOOLS"])
          {
            v94 = 94;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_GENERATIVE_FIELD"])
          {
            v94 = 95;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_SUGGESTION"])
          {
            v94 = 96;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_TYPE_TO_SIRI_CONTROL_CENTER"])
          {
            v94 = 97;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE"])
          {
            v94 = 98;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_VISUAL_INTELLIGENCE_QUICK_TYPE"])
          {
            v94 = 99;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_KEYBOARD_SHORTCUT"])
          {
            v94 = 100;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_QUICK_TYPE_TO_SIRI_MENU_BAR"])
          {
            v94 = 101;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TAP"])
          {
            v94 = 102;
          }

          else if ([v93 isEqualToString:@"INVOCATIONSOURCE_DICTATION_TEXTFIELD_TRAILING_MIC_BUTTON"])
          {
            v94 = 103;
          }

          else
          {
            v94 = 0;
          }

          v60 = v262;
        }

        v248 = v94;

        v246 = 0;
        goto LABEL_334;
      }
    }

    else
    {
      sub_258DE2184(v60 + 944, &qword_27F989868, &unk_258F12D70);
    }

    v248 = 0;
    v246 = 1;
LABEL_334:
    v100 = *(v60 + 2192);
    v101 = *(v60 + 2176);
    v102 = *(v60 + 2144);
    v103 = *(v60 + 2136);
    type metadata accessor for DeviceExperimentMetricsBuilderImpl(0);
    swift_allocObject();
    v104 = sub_258E3C08C();
    sub_258E5E344(v100, v102, type metadata accessor for EventMetadata);
    (*v216)(v102, 0, 1, v101);
    sub_258E2EAD8(v102, v103, &qword_27F9894E0, &unk_258F106A0);
    v105 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_eventMetadata;
    swift_beginAccess();
    sub_258E2EA70(v103, v104 + v105, &qword_27F9894E0, &unk_258F106A0);
    swift_endAccess();
    v106 = v104 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digestType;
    *v106 = 2;
    *(v106 + 4) = 0;
    strcpy((v60 + 1632), "experiment_id");
    *(v60 + 1646) = -4864;
    sub_258F0AA80();
    if (*(v9 + 16))
    {
      v107 = sub_258E2EA2C(v60 + 696);
      v108 = v217;
      if (v109)
      {
        sub_258DE4090(*(v9 + 56) + 32 * v107, v259);
      }

      else
      {
        *v259 = 0u;
        *(v262 + 1088) = 0u;
      }
    }

    else
    {
      *v259 = 0u;
      *(v262 + 1088) = 0u;
      v108 = v217;
    }

    sub_258E0F590(v60 + 696);
    if (*(v60 + 1096))
    {
      v110 = swift_dynamicCast();
      v111 = *(v60 + 1984);
      v112 = *(v60 + 1992);
      if (!v110)
      {
        v111 = 0;
        v112 = 0;
      }
    }

    else
    {
      sub_258DE2184(v259, &qword_27F989868, &unk_258F12D70);
      v111 = 0;
      v112 = 0;
    }

    v113 = *(v60 + 2232);
    v114 = *(v60 + 2208);
    v115 = (v104 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_experimentId);
    *v115 = v111;
    v115[1] = v112;

    sub_258E3A540(v114, v113);
    v116 = OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_treatmentIdUUID;
    swift_beginAccess();
    sub_258E2EA70(v113, v104 + v116, &qword_27F988730, &unk_258F0F8E0);
    swift_endAccess();
    strcpy((v262 + 1552), "deployment_id");
    *(v262 + 1566) = -4864;
    sub_258F0AA80();
    if (*(v9 + 16) && (v117 = sub_258E2EA2C(v262 + 616), (v118 & 1) != 0))
    {
      sub_258DE4090(*(v9 + 56) + 32 * v117, v257);
    }

    else
    {
      *v257 = 0u;
      *(v262 + 1216) = 0u;
    }

    sub_258E0F590(v262 + 616);
    if (*(v262 + 1224))
    {
      v119 = swift_dynamicCast();
      v120 = *(v262 + 2048);
      if (!v119)
      {
        v120 = 0;
      }

      v121 = v119 ^ 1;
    }

    else
    {
      sub_258DE2184(v257, &qword_27F989868, &unk_258F12D70);
      v120 = 0;
      v121 = 1;
    }

    v122 = v104 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deploymentId;
    *v122 = v120;
    *(v122 + 8) = v121;
    *(v262 + 1680) = 0x745F656369766564;
    *(v262 + 1688) = 0xEB00000000657079;
    sub_258F0AA80();
    sub_258E262F8(v262 + 576, v9, (v262 + 1296));
    sub_258E0F590(v262 + 576);
    if (*(v262 + 1320))
    {
      v123 = swift_dynamicCast();
      v124 = *(v262 + 1952);
      v125 = *(v262 + 1960);
      if (!v123)
      {
        v124 = 0;
        v125 = 0;
      }
    }

    else
    {
      sub_258DE2184(v262 + 1296, &qword_27F989868, &unk_258F12D70);
      v124 = 0;
      v125 = 0;
    }

    v126 = (v104 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_deviceType);
    *v126 = v124;
    v126[1] = v125;

    v127 = *(v108 + 44);
    v128 = v104 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_programCode;
    *v128 = *(v108 + 40);
    *(v128 + 4) = v127;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894F0, &qword_258F11690);
    v129 = type metadata accessor for ExperimentDigest(0);
    v130 = (*(*(v129 - 1) + 80) + 32) & ~*(*(v129 - 1) + 80);
    v269 = swift_allocObject();
    *(v269 + 16) = xmmword_258F0B820;
    *(v262 + 1504) = 0x5F746375646F7270;
    *(v262 + 1512) = 0xEA00000000006469;
    sub_258F0AA80();
    sub_258E262F8(v262 + 496, v9, (v262 + 1392));
    sub_258E0F590(v262 + 496);
    if (*(v262 + 1416))
    {
      v131 = swift_dynamicCast();
      if (v131)
      {
        v132 = *(v262 + 1936);
      }

      else
      {
        v132 = 0;
      }

      if (v131)
      {
        v133 = *(v262 + 1944);
      }

      else
      {
        v133 = 0;
      }

      v238 = v133;
      v240 = v132;
    }

    else
    {
      sub_258DE2184(v262 + 1392, &qword_27F989868, &unk_258F12D70);
      v238 = 0;
      v240 = 0;
    }

    strcpy((v262 + 1824), "system_build");
    *(v262 + 1837) = 0;
    *(v262 + 1838) = -5120;
    sub_258F0AA80();
    sub_258E262F8(v262 + 456, v9, (v262 + 1360));
    sub_258E0F590(v262 + 456);
    if (*(v262 + 1384))
    {
      v134 = swift_dynamicCast();
      if (v134)
      {
        v135 = *(v262 + 1920);
      }

      else
      {
        v135 = 0;
      }

      if (v134)
      {
        v136 = *(v262 + 1928);
      }

      else
      {
        v136 = 0;
      }

      v236 = v136;
      v237 = v135;
    }

    else
    {
      sub_258DE2184(v262 + 1360, &qword_27F989868, &unk_258F12D70);
      v236 = 0;
      v237 = 0;
    }

    v235 = *(v108 + 8);
    v234 = *(v108 + 12);
    v233 = **(v262 + 2256);
    v232 = *(v108 + 4);
    *(v262 + 1568) = 0xD000000000000012;
    *(v262 + 1576) = 0x8000000258F1A600;
    sub_258F0AA80();
    sub_258E262F8(v262 + 376, v9, (v262 + 1328));
    sub_258E0F590(v262 + 376);
    if (*(v262 + 1352))
    {
      v137 = swift_dynamicCast();
      if (v137)
      {
        v138 = *(v262 + 1904);
      }

      else
      {
        v138 = 0;
      }

      if (v137)
      {
        v139 = *(v262 + 1912);
      }

      else
      {
        v139 = 0;
      }

      v230 = v139;
      v231 = v138;
    }

    else
    {
      sub_258DE2184(v262 + 1328, &qword_27F989868, &unk_258F12D70);
      v230 = 0;
      v231 = 0;
    }

    *(v262 + 1616) = 0xD000000000000013;
    *(v262 + 1624) = 0x8000000258F1A620;
    sub_258F0AA80();
    sub_258E262F8(v262 + 336, v9, (v262 + 1168));
    sub_258E0F590(v262 + 336);
    if (*(v262 + 1192))
    {
      v140 = swift_dynamicCast();
      v141 = *(v262 + 1888);
      if (!v140)
      {
        v141 = 0;
      }

      v229 = v141;
      if (v140)
      {
        v142 = *(v262 + 1896);
      }

      else
      {
        v142 = 0;
      }

      v227 = v142;
    }

    else
    {
      sub_258DE2184(v262 + 1168, &qword_27F989868, &unk_258F12D70);
      v229 = 0;
      v227 = 0;
    }

    v226 = *(v108 + 16);
    v224 = *(v108 + 24);
    v225 = *(v108 + 20);
    v223 = *(v108 + 28);
    v143 = *(v108 + 32);
    *(v262 + 1664) = 0x616D6F645F627573;
    *(v262 + 1672) = 0xEA00000000006E69;
    v228 = v143;
    v144 = v143;
    sub_258F0AA80();
    sub_258E262F8(v262 + 256, v9, (v262 + 1136));
    sub_258E0F590(v262 + 256);
    if (*(v262 + 1160))
    {
      v145 = swift_dynamicCast();
      v146 = *(v262 + 1872);
      if (!v145)
      {
        v146 = 0;
      }

      v222 = v146;
      if (v145)
      {
        v147 = *(v262 + 1880);
      }

      else
      {
        v147 = 0;
      }
    }

    else
    {
      sub_258DE2184(v262 + 1136, &qword_27F989868, &unk_258F12D70);
      v222 = 0;
      v147 = 0;
    }

    sub_258E3A540(*(v262 + 2256) + *(v253 + 40), *(v262 + 2200));
    *(v262 + 1712) = 0xD00000000000001BLL;
    *(v262 + 1720) = 0x8000000258F1BAA0;
    sub_258F0AA80();
    sub_258E262F8(v262 + 216, v9, (v262 + 1040));
    sub_258E0F590(v262 + 216);
    if (*(v262 + 1064))
    {
      v148 = swift_dynamicCast();
      v149 = *(v262 + 2400);
      if (!v148)
      {
        v149 = 2;
      }
    }

    else
    {
      sub_258DE2184(v262 + 1040, &qword_27F989868, &unk_258F12D70);
      v149 = 2;
    }

    v221 = v149;
    *(v262 + 1760) = 0x746E635F6E727574;
    *(v262 + 1768) = 0xE800000000000000;
    sub_258F0AA80();
    sub_258E262F8(v262 + 136, v9, (v262 + 1008));
    sub_258E0F590(v262 + 136);
    if (*(v262 + 1032))
    {
      v150 = swift_dynamicCast();
      v151 = *(v262 + 2392);
      if (!v150)
      {
        v151 = 0;
      }

      v220 = v151;
      v152 = v150 ^ 1;
    }

    else
    {
      sub_258DE2184(v262 + 1008, &qword_27F989868, &unk_258F12D70);
      v220 = 0;
      v152 = 1;
    }

    v153 = v269 + v130;
    strcpy((v262 + 1808), "user_turn_cnt");
    *(v262 + 1822) = -4864;
    sub_258F0AA80();
    sub_258E262F8(v262 + 96, v9, (v262 + 880));

    sub_258E0F590(v262 + 96);
    if (*(v262 + 904))
    {
      v154 = swift_dynamicCast();
      v155 = v262;
      if (v154)
      {
        v156 = *(v262 + 2396);
      }

      else
      {
        v156 = 0;
      }

      v157 = v154 ^ 1;
    }

    else
    {
      sub_258DE2184(v262 + 880, &qword_27F989868, &unk_258F12D70);
      v155 = v262;
      v156 = 0;
      v157 = 1;
    }

    v158 = *(v155[282] + *(v253 + 44));
    *v153 = v240;
    *(v153 + 8) = v238;
    *(v153 + 16) = v237;
    *(v153 + 24) = v236;
    *(v153 + 32) = v235;
    *(v153 + 36) = v234;
    *(v153 + 40) = v233;
    *(v153 + 44) = v232;
    *(v153 + 48) = v231;
    *(v153 + 56) = v230;
    *(v153 + 64) = v229;
    *(v153 + 72) = v227;
    *(v153 + 80) = v226;
    *(v153 + 84) = v225;
    *(v153 + 88) = v224;
    *(v153 + 92) = v223;
    *(v153 + 112) = v222;
    *(v153 + 120) = v147;
    *(v153 + 128) = v266;
    *(v153 + 132) = v252;
    v159 = v155[275];
    *(v153 + 136) = v249;
    v160 = v155[271];
    v161 = v155[270];
    *(v153 + 96) = v228;
    *(v153 + 104) = v243;
    *(v153 + 140) = v250;
    *(v153 + 141) = 514;
    sub_258E2EAD8(v159, v153 + v129[19], &qword_27F988730, &unk_258F0F8E0);
    *(v153 + v129[20]) = v221;
    *(v153 + v129[21]) = v241;
    v162 = v153 + v129[22];
    *v162 = v248;
    *(v162 + 4) = v246;
    v163 = v153 + v129[23];
    *v163 = v220;
    *(v163 + 4) = v152;
    v164 = v153 + v129[24];
    *v164 = v156;
    *(v164 + 4) = v157;
    v165 = v153 + v129[25];
    *v165 = 0;
    *(v165 + 4) = 1;
    v166 = v153 + v129[26];
    *v166 = 0;
    *(v166 + 4) = 1;
    v167 = v153 + v129[27];
    *v167 = 0;
    *(v167 + 4) = 1;
    v168 = v153 + v129[28];
    *v168 = 0;
    *(v168 + 4) = 1;
    v169 = v153 + v129[29];
    *v169 = 0;
    *(v169 + 4) = 1;
    v170 = v153 + v129[30];
    *v170 = 0;
    *(v170 + 4) = 1;
    v171 = v153 + v129[31];
    *v171 = 0;
    *(v171 + 4) = 1;
    v172 = v153 + v129[32];
    *v172 = 0;
    *(v172 + 4) = 1;
    v173 = v153 + v129[33];
    *v173 = 0;
    *(v173 + 4) = 1;
    v174 = v153 + v129[34];
    *v174 = 0;
    *(v174 + 4) = 1;
    v175 = v153 + v129[35];
    *v175 = 0;
    *(v175 + 4) = 1;
    v176 = v153 + v129[36];
    *v176 = 0;
    *(v176 + 4) = 1;
    v177 = v153 + v129[37];
    *v177 = 1;
    *(v177 + 8) = 0u;
    *(v177 + 24) = 0u;
    *(v153 + v129[38]) = v158;
    *(v104 + OBJC_IVAR____TtC16MetricsFramework34DeviceExperimentMetricsBuilderImpl_digests) = v269;

    v178 = v243;

    sub_258E3BDA4(v160);

    sub_258E5E344(v160, v161, type metadata accessor for DeviceExperimentMetrics);
    v179 = v256;
    v180 = v178;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v179 = sub_258DE26CC(0, v256[2] + 1, 1, v256);
    }

    v182 = v179[2];
    v181 = v179[3];
    if (v182 >= v181 >> 1)
    {
      v256 = sub_258DE26CC((v181 > 1), v182 + 1, 1, v179);
    }

    else
    {
      v256 = v179;
    }

    v4 = v262;
    v183 = *(v262 + 2256);
    v184 = *(v262 + 2240);
    v185 = *(v262 + 2216);
    v186 = *(v262 + 2208);
    v187 = *(v262 + 2192);
    v188 = *(v262 + 2168);
    v189 = *(v262 + 2160);

    sub_258E5E3AC(v188, type metadata accessor for DeviceExperimentMetrics);
    sub_258E5E3AC(v187, type metadata accessor for EventMetadata);
    sub_258DE2184(v186, &qword_27F988730, &unk_258F0F8E0);
    sub_258DE2184(v185, &qword_27F988730, &unk_258F0F8E0);
    sub_258DE2184(v184, &qword_27F988730, &unk_258F0F8E0);
    sub_258E5E3AC(v183, type metadata accessor for CommonDigestElements);
    v256[2] = v182 + 1;
    sub_258E2EB40(v189, v256 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v182);
    goto LABEL_6;
  }

  __break(1u);
LABEL_432:
  __break(1u);
LABEL_433:
  __break(1u);
LABEL_434:
  __break(1u);
LABEL_435:
  __break(1u);
LABEL_436:
  __break(1u);
}

uint64_t ODDIExperimentationCalculator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_bookmarkService));

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);

  return v0;
}

uint64_t ODDIExperimentationCalculator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_bookmarkService));

  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);

  return swift_deallocClassInstance();
}

uint64_t sub_258E6E704@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_logger;
  v4 = sub_258F0A370();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_258E6E78C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258E6A9C0(a1);
}

void _s16MetricsFramework29ODDIExperimentationCalculatorC6logger15bookmarkServiceAC2os6LoggerV_11DeepThought014StreamBookmarkG0CtcfC_0(char *a1, uint64_t a2)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v39 = &v32 - v5;
  v6 = sub_258F0A370();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 16);
  v37 = v12;
  v38 = a1;
  v11(v10, a1);
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_258F0A4E0();
  v15 = [v13 initWithSuiteName_];

  if (v15)
  {
    sub_258F09F30();
    v34 = sub_258F09F20();
    type metadata accessor for ODDIExperimentationDatabaseFactory();
    v33 = swift_allocObject();
    type metadata accessor for BiomeResultsWrapperFactory();
    v16 = swift_allocObject();
    type metadata accessor for ODDIExperimentationCalculator(0);
    v17 = swift_allocObject();
    v18 = type metadata accessor for CAAnalyticsEventSubmitter();
    v19 = swift_allocObject();
    v17[5] = v18;
    v17[6] = &off_286A2C648;
    v17[2] = v19;
    v35 = v10;
    v20 = v10;
    v21 = v37;
    (v11)(v17 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_logger, v20, v37);
    *(v17 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_defaults) = v15;
    v22 = (v17 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_bookmarkService);
    v22[3] = sub_258F09C20();
    v22[4] = &off_286A2FA30;
    *v22 = v36;
    v17[7] = sub_258F09F20();
    *(v17 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_databaseFactory) = v33;
    *(v17 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_biomeResultsFactory) = v16;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    v25 = sub_258F0A4E0();
    v26 = sub_258F0A4E0();
    v27 = [v24 URLForResource:v25 withExtension:v26];

    if (v27)
    {
      v28 = v39;
      sub_258F098B0();

      v29 = 0;
    }

    else
    {
      v29 = 1;
      v28 = v39;
    }

    v30 = *(v7 + 8);
    v30(v38, v21);
    v30(v35, v21);
    v31 = sub_258F098D0();
    (*(*(v31 - 8) + 56))(v28, v29, 1, v31);
    sub_258E2EAD8(v28, v17 + OBJC_IVAR____TtC16MetricsFramework29ODDIExperimentationCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_258E6EC18()
{
  result = qword_27F989C00;
  if (!qword_27F989C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989C00);
  }

  return result;
}

uint64_t sub_258E6EC6C(uint64_t a1)
{
  result = sub_258E6ED40(&qword_27F989C08, &unk_258F11F90);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ODDIExperimentationCalculator(uint64_t a1)
{
  result = qword_27F989C20;
  if (!qword_27F989C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E6ECFC(uint64_t a1)
{
  result = sub_258E6ED40(&qword_27F989C10, &protocol conformance descriptor for ODDIExperimentationCalculator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258E6ED40(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDIExperimentationCalculator(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258E6ED84()
{
  result = qword_27F989C18;
  if (!qword_27F989C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989C18);
  }

  return result;
}

void sub_258E6EDF0(uint64_t a1)
{
  sub_258F0A370();
  if (v1 <= 0x3F)
  {
    sub_258DE3B74(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of ODDIExperimentationCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t sub_258E6F058(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E6F0F4, 0, 0);
}

uint64_t sub_258E6F0F4()
{
  v0[2] = MEMORY[0x277D84F90];
  v1 = v0[5];
  if (v0[4])
  {
    sub_258F0A0A0();
  }

  else
  {
    v2 = sub_258F09A20();
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  }

  v3 = v0[3];
  v0[6] = sub_258F0A050();
  v4 = sub_258F09DD0();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_258E6F238;
  v6 = v0[5];

  return MEMORY[0x282159D80](v4, v3, 0xD000000000000019, 0x8000000258F1C950, v6);
}

uint64_t sub_258E6F238(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 64) = a1;

  sub_258E6A84C(v2);

  return MEMORY[0x2822009F8](sub_258E6F358, 0, 0);
}

uint64_t sub_258E6F358()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v1;
    MEMORY[0x259C9DF50]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_258F0A6D0();
    }

    sub_258F0A700();
  }

  v3 = v0[6];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988740, &qword_258F0B850);
  sub_258F0A190();
  *(swift_allocObject() + 16) = xmmword_258F0F8B0;
  sub_258F0A160();
  sub_258F0A160();
  v5 = sub_258F0A1C0();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  sub_258F0A160();
  v9 = objc_allocWithZone(v3);

  v10 = v4;
  v11 = sub_258F0A000();

  v12 = v0[1];

  return v12(v11);
}

uint64_t ODDIExperimentationDataProvider.__allocating_init(logger:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t ODDIExperimentationDataProvider.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationDataProvider_logger;
  v4 = sub_258F0A370();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_258E6F71C(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: ODDIMetricsDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t ODDIExperimentationDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ODDIExperimentationDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258E6F8F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258DE1DC4;

  return sub_258E6F6FC();
}

uint64_t type metadata accessor for ODDIExperimentationDataProvider(uint64_t a1)
{
  result = qword_27F989C38;
  if (!qword_27F989C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of ODDIExperimentationDataProvider.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t ODDIExperimentationPlugin.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  ODDIExperimentationPlugin.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v8;
}

uint64_t ODDIExperimentationPlugin.init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t a3, unint64_t a4)
{
  v52 = a4;
  v48 = a3;
  v54 = a1;
  v6 = sub_258F09B00();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_258F09A20();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v9);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_258F0A370();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v39 - v18;
  v20 = *(v12 + 16);
  v49 = OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_logger;
  v20(v4 + OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_logger, a2, v11);
  v20(v19, a2, v11);
  type metadata accessor for ODDIExperimentationDataProvider(0);
  v21 = swift_allocObject();
  v53 = v12;
  v41 = *(v12 + 32);
  v42 = v12 + 32;
  v41(v21 + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationDataProvider_logger, v19, v11);
  v58 = v4;
  *(v4 + OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_dataProvider) = v21;
  v22 = sub_258F0A1F0();
  swift_allocObject();
  v50 = v54;
  v23 = sub_258F0A1E0();
  v56 = v22;
  v57 = MEMORY[0x277D04548];
  v54 = a2;
  v55 = v23;
  v20(v16, a2, v11);
  sub_258F09C20();
  swift_allocObject();
  v24 = v51;
  v25 = sub_258F09BE0();
  v51 = v24;
  if (v24)
  {
    v26 = *(v53 + 8);
    v26(v54, v11);

    v27 = v58;
    v26((v58 + v49), v11);

    type metadata accessor for ODDIExperimentationPlugin(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v25;
    v29 = v40;
    sub_258F0A090();
    v30 = v44;
    sub_258F09AC0();
    sub_258F09C00();
    (*(v46 + 8))(v30, v47);
    (*(v43 + 8))(v29, v45);
    v31 = v54;
    v20(v19, v54, v11);

    _s16MetricsFramework29ODDIExperimentationCalculatorC6logger15bookmarkServiceAC2os6LoggerV_11DeepThought014StreamBookmarkG0CtcfC_0(v19, v28);
    v27 = v58;
    *(v58 + OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_calculator) = v32;
    v20(v19, v31, v11);
    v33 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v48, v52);
    type metadata accessor for ODDIExperimentationSELFReporter(0);
    v34 = swift_allocObject();
    v35 = (v34 + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_reportingService);
    v35[3] = type metadata accessor for SELFReportingService();
    v35[4] = &protocol witness table for SELFReportingService;
    *v35 = v33;
    *(v34 + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
    v41(v34 + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_logger, v19, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_258F0CA20;
    *(v36 + 32) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989C60, &qword_258F12218);
    swift_allocObject();

    v55 = sub_258F09BA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989C68, qword_258F12220);
    swift_allocObject();
    v37 = sub_258F09BC0();

    (*(v53 + 8))(v31, v11);
    *(v27 + OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_reporter) = v37;
  }

  return v27;
}

uint64_t type metadata accessor for ODDIExperimentationPlugin(uint64_t a1)
{
  result = qword_27F989C90;
  if (!qword_27F989C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E701CC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E701EC, 0, 0);
}

uint64_t sub_258E701EC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DEE374;

  return sub_258E6F6FC();
}

uint64_t sub_258E70290(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E702C0, 0, 0);
}

uint64_t sub_258E702C0()
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

uint64_t sub_258E7038C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258E703AC, 0, 0);
}

uint64_t sub_258E703AC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED408;
  v2 = *(v0 + 16);

  return sub_258E6A9C0(v2);
}

uint64_t ODDIExperimentationPlugin.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ODDIExperimentationPlugin.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework25ODDIExperimentationPlugin_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_258E705AC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E705D0, 0, 0);
}

uint64_t sub_258E705D0()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED7D0;

  return sub_258E6F6FC();
}

uint64_t sub_258E70674(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258E70698, 0, 0);
}

uint64_t sub_258E70698()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_258DED984;
  v2 = *(v0 + 16);

  return sub_258E6A9C0(v2);
}

uint64_t sub_258E7073C(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258E70770, 0, 0);
}

uint64_t sub_258E70770()
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

uint64_t sub_258E708D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ODDIExperimentationPlugin(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of ODDIExperimentationPlugin.loadData()(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of ODDIExperimentationPlugin.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DEE37C;

  return v6(a1);
}

uint64_t dispatch thunk of ODDIExperimentationPlugin.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_258DE1DC4;

  return v8(a1, a2);
}

uint64_t sub_258E70D8C(uint64_t a1)
{
  v6 = (*(**v1 + 80) + **(**v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t dispatch thunk of ODDIExperimentationReporter.report(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 80) + **(*v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_258DE1DC4;

  return v6(a1);
}

uint64_t ODDIExperimentationSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_258E72280(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

uint64_t sub_258E71078(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_258E710E0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_258E71128(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ODDIExperimentationSELFReporter.init(logger:reportingService:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  MEMORY[0x28223BE20](v7, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_258E721AC(a1, v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v11;
}

uint64_t sub_258E712DC(uint64_t a1)
{
  v2[8] = v1;
  v2[9] = *(type metadata accessor for DeviceExperimentMetrics(0) - 8);
  v4 = swift_task_alloc();
  v5 = *(a1 + 16);
  v2[10] = v4;
  v2[11] = v5;

  return MEMORY[0x2822009F8](sub_258E713A0, 0, 0);
}

void sub_258E713A0()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_oddSiriClientEvents;
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v7 = *(v3 + 72);
    do
    {
      v8 = v0[10];
      sub_258E730E0(v6, v8, type metadata accessor for DeviceExperimentMetrics);
      sub_258E72380(v8);
      sub_258E73148(v8, type metadata accessor for DeviceExperimentMetrics);
      v9 = swift_beginAccess();
      MEMORY[0x259C9DF50](v9);
      if (*(*(v4 + v5) + 16) >= *(*(v4 + v5) + 24) >> 1)
      {
        sub_258F0A6D0();
      }

      sub_258F0A700();
      swift_endAccess();
      v6 += v7;
      --v2;
    }

    while (v2);
  }

  v10 = v0[8];
  v11 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_oddSiriClientEvents;
  swift_beginAccess();
  v12 = *(v10 + v11);
  v0[12] = v12;
  v13 = *(v12 + 16);
  v0[13] = v13;
  if (v13)
  {
    v14 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_reportingService;
    v15 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_logger;
    v0[14] = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_reportingService;
    v0[15] = v15;

    v17 = 0;
    while (1)
    {
      v0[16] = v17;
      if (v17 >= *(v16 + 16))
      {
        __break(1u);
        return;
      }

      v18 = *(v16 + 8 * v17 + 32);
      v0[17] = v18;
      if (v18)
      {
        break;
      }

      if (v13 == ++v17)
      {

        goto LABEL_12;
      }
    }

    v23 = v0[8];
    v24 = (v23 + v14);
    v25 = *(v23 + v14 + 24);
    v26 = *(v23 + v14 + 32);
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v27 = *(v26 + 8);
    v28 = v18;
    v30 = (v27 + *v27);
    v29 = swift_task_alloc();
    v0[18] = v29;
    *v29 = v0;
    v29[1] = sub_258E71730;

    v30(v28, v23 + v15, v25, v26);
  }

  else
  {
LABEL_12:
    v19 = sub_258F0A350();
    v20 = sub_258F0A810();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_258DD8000, v19, v20, "#ODDIExperimentationSELFReporter: Finished Emitting ODDIExperimentation SELF events", v21, 2u);
      MEMORY[0x259C9EF40](v21, -1, -1);
    }

    v22 = v0[1];

    v22();
  }
}

uint64_t sub_258E71730()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {

    v3 = sub_258E71ACC;
  }

  else
  {

    v3 = sub_258E71854;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_258E71854()
{
  v1 = *(v0 + 128) + 5;
  v2 = 1 - *(v0 + 104);
  while (v2 + v1 != 5)
  {
    *(v0 + 128) = v1 - 4;
    v3 = *(v0 + 96);
    if ((v1 - 4) >= *(v3 + 16))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 8 * v1);
    *(v0 + 136) = v4;
    ++v1;
    if (v4)
    {
      v5 = *(v0 + 120);
      v6 = *(v0 + 64);
      v7 = (v6 + *(v0 + 112));
      v8 = v7[3];
      v9 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v10 = *(v9 + 8);
      v11 = v4;
      v17 = (v10 + *v10);
      v12 = swift_task_alloc();
      *(v0 + 144) = v12;
      *v12 = v0;
      v12[1] = sub_258E71730;

      v17(v11, v6 + v5, v8, v9);
      return;
    }
  }

  v13 = sub_258F0A350();
  v14 = sub_258F0A810();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_258DD8000, v13, v14, "#ODDIExperimentationSELFReporter: Finished Emitting ODDIExperimentation SELF events", v15, 2u);
    MEMORY[0x259C9EF40](v15, -1, -1);
  }

  v16 = *(v0 + 8);

  v16();
}

uint64_t sub_258E71ACC()
{
  v1 = sub_258F0A350();
  v2 = sub_258F0A820();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_258DD8000, v1, v2, "#ODDIExperimentationSELFReporter: Unable to report ODDIExperimentation SELF events.", v3, 2u);
    MEMORY[0x259C9EF40](v3, -1, -1);
  }

  v4 = *(v0 + 136);

  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_258E71BD4()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_reportingService));
}

uint64_t ODDIExperimentationSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_reportingService));

  return v0;
}

uint64_t ODDIExperimentationSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_reportingService));

  return swift_deallocClassInstance();
}

void sub_258E71DC0(void **a1, uint64_t a2)
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

uint64_t sub_258E721AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a3 + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_reportingService);
  v9[3] = a4;
  v9[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  *(a3 + OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_oddSiriClientEvents) = MEMORY[0x277D84F90];
  v11 = OBJC_IVAR____TtC16MetricsFramework31ODDIExperimentationSELFReporter_logger;
  v12 = sub_258F0A370();
  (*(*(v12 - 8) + 32))(a3 + v11, a1, v12);
  return a3;
}

uint64_t sub_258E72280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ODDIExperimentationSELFReporter(0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a2, a4);
  return sub_258E721AC(a1, v11, v12, a4, a5);
}

int *sub_258E72380(uint64_t a1)
{
  v2 = sub_258F09A70();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v107 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v103 - v8;
  v10 = type metadata accessor for ExperimentDigest(0);
  v11 = *(v10 - 8);
  v114 = v10;
  v115 = v11;
  MEMORY[0x28223BE20](v10, v12);
  v117 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9894E0, &unk_258F106A0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v103 - v16;
  v18 = type metadata accessor for EventMetadata(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258DE20C0(a1, v17, &qword_27F9894E0, &unk_258F106A0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_258DE2184(v17, &qword_27F9894E0, &unk_258F106A0);
    return 0;
  }

  sub_258E3F8CC(v17, v22);
  v23 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
  if (!v23)
  {
    sub_258E73148(v22, type metadata accessor for EventMetadata);
    return v23;
  }

  v104 = v22;
  v105 = v3;
  v112 = v2;
  v24 = &v22[*(v18 + 44)];
  v25 = *v24;
  LOBYTE(v123) = v24[4];
  v26 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(v25 | (v123 << 32));
  [v23 setEventMetadata_];

  v113 = [objc_allocWithZone(MEMORY[0x277D59260]) init];
  v123 = v113;
  v106 = [objc_allocWithZone(MEMORY[0x277D59320]) init];
  v122 = v106;
  sub_258E71DC0(&v123, a1);
  sub_258E71DC0(&v122, a1);
  result = type metadata accessor for DeviceExperimentMetrics(0);
  v28 = *(a1 + result[11]);
  v29 = v115;
  v30 = v117;
  if (!v28 || (v31 = *(v28 + 16)) == 0)
  {
LABEL_65:
    sub_258E73148(v104, type metadata accessor for EventMetadata);

    return v23;
  }

  v32 = 0;
  v118 = v28 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
  v110 = v28;
  v111 = v23;
  v108 = v105 + 16;
  v109 = v31;
  v121 = (v105 + 8);
  v103 = v9;
  while (v32 < *(v28 + 16))
  {
    sub_258E730E0(v118 + *(v29 + 72) * v32, v30, type metadata accessor for ExperimentDigest);
    v36 = v30[1];
    if (v36)
    {
      v37 = *v30;
      v38 = *v30 == 0x4E41545349535341 && v36 == 0xE900000000000054;
      if (v38 || (sub_258F0AD80() & 1) != 0)
      {
        v39 = [objc_allocWithZone(MEMORY[0x277D59258]) init];
        if (!v39)
        {
          goto LABEL_9;
        }

        v40 = v39;
        v116 = v32;
        v41 = sub_258E3C4B8(v30);
        [v40 setDimensions_];

        v42 = sub_258E3C71C(v30);
        [v40 setCounts_];

        v43 = sub_258E3C8A0(v30);
        [v40 setTuples_];

        v44 = [objc_opt_self() sharedPreferences];
        v45 = [v44 longLivedIdentifierUploadingEnabled];

        v46 = v112;
        v47 = v40;
        v48 = v9;
        v49 = 0x277D5A000uLL;
        v50 = 0x1FC1B4000uLL;
        if (v45)
        {
          v51 = *&v117[v114[38]];
          if (v51)
          {
            v52 = *(v51 + 16);
            if (v52)
            {
              v53 = v51 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
              v54 = *(v105 + 72);
              v119 = *(v105 + 16);
              v120 = v54;
              do
              {
                v119(v48, v53, v46);
                v55 = objc_allocWithZone(*(v49 + 3192));
                v56 = v47;
                v57 = v50;
                v58 = v49;
                v59 = sub_258F09A50();
                (*v121)(v48, v46);
                v60 = [v55 initWithNSUUID_];

                v49 = v58;
                v50 = v57;
                v47 = v56;
                [v56 (v50 + 33)];

                v53 += v120;
                --v52;
              }

              while (v52);
            }
          }
        }

        v33 = v113;
        [v113 addDigests_];
        v34 = &selRef_setAssistantExperimentDigestReported_;
        v35 = v33;
        v29 = v115;
        v28 = v110;
        v9 = v48;
      }

      else
      {
        if ((v37 != 0x4F49544154434944 || v36 != 0xE90000000000004ELL) && (sub_258F0AD80() & 1) == 0)
        {
          goto LABEL_9;
        }

        v61 = [objc_allocWithZone(MEMORY[0x277D59318]) init];
        if (!v61)
        {
          goto LABEL_9;
        }

        v62 = v61;
        v63 = sub_258E3DFA8(v30);
        [v62 setDimensions_];

        v64 = [objc_allocWithZone(MEMORY[0x277D59310]) init];
        if (v64)
        {
          v65 = [objc_allocWithZone(MEMORY[0x277D59400]) init];
          v66 = v65;
          v67 = v114;
          if (v65)
          {
            v68 = (v30 + v114[23]);
            if ((v68[1] & 1) == 0)
            {
              [v65 setTotalTurnCount_];
            }

            v69 = (v30 + v67[24]);
            if ((v69[1] & 1) == 0)
            {
              [v66 setValidTurnCount_];
            }
          }

          [v64 setTurnCounts_];

          v70 = [objc_allocWithZone(MEMORY[0x277D593F0]) init];
          v71 = v70;
          if (v70)
          {
            v72 = (v30 + v67[25]);
            if ((v72[1] & 1) == 0)
            {
              [v70 setSiriTasksStarted_];
            }

            v73 = (v30 + v67[26]);
            if ((v73[1] & 1) == 0)
            {
              [v71 setSiriTasksCompleted_];
            }

            v74 = (v30 + v67[27]);
            if ((v74[1] & 1) == 0)
            {
              [v71 setFlowTasksStarted_];
            }

            v75 = (v30 + v67[28]);
            if ((v75[1] & 1) == 0)
            {
              [v71 setFlowTasksCompleted_];
            }
          }

          [v64 setTaskCounts_];

          v76 = [objc_allocWithZone(MEMORY[0x277D593A8]) init];
          v77 = v76;
          if (v76)
          {
            v78 = (v30 + v67[29]);
            if ((v78[1] & 1) == 0)
            {
              [v76 setReliabilityRequestCount_];
            }

            v79 = (v30 + v67[30]);
            if ((v79[1] & 1) == 0)
            {
              [v77 setReliabilityTurnCount_];
            }

            v80 = (v30 + v67[31]);
            if ((v80[1] & 1) == 0)
            {
              [v77 setClientErrorCount_];
            }

            v81 = (v30 + v67[32]);
            if ((v81[1] & 1) == 0)
            {
              [v77 setUndesiredResponseCount_];
            }

            v82 = (v30 + v67[33]);
            if ((v82[1] & 1) == 0)
            {
              [v77 setFatalResponseCount_];
            }

            v83 = (v30 + v67[34]);
            if ((v83[1] & 1) == 0)
            {
              [v77 setFailureResponseCount_];
            }

            v84 = (v30 + v67[35]);
            if ((v84[1] & 1) == 0)
            {
              [v77 setSiriUnavailableResponseCount_];
            }
          }

          [v64 setReliabilityCounts_];
        }

        v116 = v32;
        [v62 setCounts_];

        v85 = sub_258E3E254(v30);
        [v62 setTuples_];

        v86 = [objc_opt_self() sharedPreferences];
        v87 = [v86 longLivedIdentifierUploadingEnabled];

        v89 = v107;
        v88 = v108;
        v90 = v112;
        v91 = v62;
        if (v87)
        {
          v92 = *&v117[v114[38]];
          if (v92)
          {
            v93 = *(v92 + 16);
            if (v93)
            {
              v94 = v92 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
              v95 = *(v105 + 72);
              v119 = *(v105 + 16);
              v120 = v95;
              do
              {
                v96 = v90;
                v97 = v88;
                v119(v89, v94, v90);
                v98 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                v99 = v91;
                v100 = sub_258F09A50();
                (*v121)(v89, v96);
                v101 = [v98 initWithNSUUID_];

                v91 = v99;
                [v99 addTurnIds_];

                v90 = v96;
                v88 = v97;
                v94 += v120;
                --v93;
              }

              while (v93);
            }
          }
        }

        v102 = v106;
        [v106 addDigests_];
        v34 = &selRef_setDictationExperimentDigestsReported_;
        v35 = v102;
        v29 = v115;
        v28 = v110;
        v9 = v103;
        v47 = v91;
      }

      v32 = v116;
      v23 = v111;
      [v111 *v34];

      v30 = v117;
      v31 = v109;
    }

LABEL_9:
    ++v32;
    result = sub_258E73148(v30, type metadata accessor for ExperimentDigest);
    if (v32 == v31)
    {
      goto LABEL_65;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ODDIExperimentationSELFReporter(uint64_t a1)
{
  result = qword_27F989CB0;
  if (!qword_27F989CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E72F64(uint64_t a1)
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

uint64_t sub_258E730E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258E73148(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258E731A8()
{
  v0 = sub_258F0A370();
  __swift_allocate_value_buffer(v0, qword_280CC4A38);
  __swift_project_value_buffer(v0, qword_280CC4A38);
  return sub_258F0A360();
}

MetricsFramework::ODDIExperimentationWorkerError_optional __swiftcall ODDIExperimentationWorkerError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258F0AD90();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ODDIExperimentationWorkerError.rawValue.getter()
{
  result = 0x74754F64656D6974;
  switch(*v0)
  {
    case 1:
      result = 0x7463657078656E75;
      break;
    case 2:
    case 0xA:
      result = 0xD000000000000017;
      break;
    case 3:
    case 0xF:
    case 0x11:
      result = 0xD000000000000012;
      break;
    case 4:
    case 0xE:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6B72616D6B6F6F62;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x4E656C69466C7173;
      break;
    case 0xB:
      result = 0xD000000000000011;
      break;
    case 0xC:
      result = 0x72576664556C7173;
      break;
    case 0xD:
      result = 0x78456664556C7173;
      break;
    case 0x10:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_258E73498()
{
  v0 = ODDIExperimentationWorkerError.rawValue.getter();
  v2 = v1;
  if (v0 == ODDIExperimentationWorkerError.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_258F0AD80();
  }

  return v5 & 1;
}

uint64_t sub_258E73534()
{
  sub_258F0AE40();
  ODDIExperimentationWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258E7359C(uint64_t a1)
{
  ODDIExperimentationWorkerError.rawValue.getter();
  sub_258F0A5B0();
}

uint64_t sub_258E73600(uint64_t a1)
{
  sub_258F0AE40();
  ODDIExperimentationWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

unint64_t sub_258E73670@<X0>(unint64_t *a1@<X8>)
{
  result = ODDIExperimentationWorkerError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ODDIExperimentationWorker.Subtask.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_258F0ABE0();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_258E7370C()
{
  sub_258F0AE40();
  sub_258F0A5B0();
  return sub_258F0AE90();
}

uint64_t sub_258E73780(uint64_t a1)
{
  sub_258F0AE40();
  sub_258F0A5B0();
  return sub_258F0AE90();
}

uint64_t sub_258E737D4@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_258F0ABE0();

  *a2 = v3 != 0;
  return result;
}

uint64_t ODDIExperimentationWorker.doWork(executor:context:durationThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_258F0A770();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E73978, 0, 0);
}

uint64_t sub_258E73978()
{
  v86 = v0;
  if (qword_280CC4A30 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_258F0A370();
  v3 = __swift_project_value_buffer(v2, qword_280CC4A38);
  v4 = v1;
  v5 = sub_258F0A350();
  v6 = sub_258F0A800();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v85[0] = v8;
    *v7 = 136315394;
    v9 = sub_258F09E80();
    v11 = sub_258DE3018(v9, v10, v85);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_258F09E90();
    v14 = sub_258DE3018(v12, v13, v85);

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
  sub_258E75518(v23, v25, v26, v27);

  v35 = sub_258DFBE24(&unk_286A28FF8);
  sub_258DE2184(&unk_286A29018, &qword_27F988B08, &unk_258F0CD90);
  if (v22)
  {
    v36 = *(v0 + 72);
    v83 = v22;
    sub_258F09E80();
    v85[0] = sub_258F09E90();
    v85[1] = v37;

    MEMORY[0x259C9DEB0](46, 0xE100000000000000);

    MEMORY[0x259C9DEB0](0xD000000000000014, 0x8000000258F18C00);

    v38 = objc_allocWithZone(sub_258F09EA0());
    v39 = sub_258F09E70();
    *(v0 + 160) = v39;
    v40 = sub_258F09E00();
    *(v0 + 168) = v40;
    *(v0 + 176) = *(v40 - 8);
    v41 = swift_task_alloc();
    *(v0 + 184) = v41;
    v42 = v39;
    sub_258DFA2E0(v35);

    sub_258F09DF0();
    v43 = swift_task_alloc();
    *(v0 + 192) = v43;
    v82 = (*(*v36 + 88) + **(*v36 + 88));
    v44 = swift_task_alloc();
    *(v0 + 200) = v44;
    *v44 = v0;
    v44[1] = sub_258E745D0;

    return v82(v43, v83, v41, v3, 0xD00000000000002BLL, 0x8000000258F1CB20);
  }

  v51 = sub_258F0A350();
  v52 = sub_258F0A820();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_258DD8000, v51, v52, "Can't get user defaults initialized", v53, 2u);
    MEMORY[0x259C9EF40](v53, -1, -1);
  }

  sub_258E75C14();
  v33 = swift_allocError();
  *v54 = 5;
  swift_willThrow();
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
LABEL_36:
      v84 = v34;
      goto LABEL_37;
    }

    if (MEMORY[0x277D81748] && v32 == *MEMORY[0x277D81748])
    {

      v33 = *(v0 + 16);
      v34 = 4;
      goto LABEL_36;
    }

    (*(v29 + 8))(v30, v28);
  }

  *(v0 + 24) = v33;
  v46 = sub_258F0A1D0();
  v47 = *(v46 - 8);
  v48 = swift_task_alloc();
  v49 = v33;
  if (swift_dynamicCast())
  {
    v50 = (*(v47 + 88))(v48, v46);
    if (MEMORY[0x277D04530] && v50 == *MEMORY[0x277D04530])
    {

      v33 = *(v0 + 24);
      v34 = 6;
      goto LABEL_36;
    }

    if (MEMORY[0x277D04538] && v50 == *MEMORY[0x277D04538])
    {

      v33 = *(v0 + 24);
      v34 = 7;
      goto LABEL_36;
    }

    if (MEMORY[0x277D04540] && v50 == *MEMORY[0x277D04540])
    {

      v33 = *(v0 + 24);
      v34 = 8;
      goto LABEL_36;
    }

    (*(v47 + 8))(v48, v46);
  }

  *(v0 + 32) = v33;
  v55 = v33;
  if (!swift_dynamicCast())
  {

    *(v0 + 40) = v33;
    v56 = sub_258F09E60();
    v57 = *(v56 - 8);
    v58 = swift_task_alloc();
    v59 = v33;
    if (swift_dynamicCast())
    {

      (*(v57 + 8))(v58, v56);

      v33 = *(v0 + 40);
      v34 = 2;
    }

    else
    {

      *(v0 + 48) = v33;
      v70 = sub_258F09E10();
      v71 = *(v70 - 8);
      v72 = swift_task_alloc();
      v73 = v33;
      if (swift_dynamicCast())
      {

        (*(v71 + 8))(v72, v70);

        v84 = 0;
        v33 = *(v0 + 48);
        goto LABEL_37;
      }

      *(v0 + 56) = v33;
      v74 = v33;
      if (swift_dynamicCast())
      {
        v75 = *(v0 + 152);
        v76 = *(v0 + 136);
        v78 = *(v0 + 112);
        v77 = *(v0 + 120);
        v79 = *(v0 + 96);
        v80 = *(v0 + 104);
        v81 = *(v0 + 64);
        (*(*(v0 + 128) + 8))(v81, v77);

        v76(v81, *MEMORY[0x277D81770], v77);
        (*(v80 + 8))(v78, v79);

        goto LABEL_38;
      }

      v34 = 1;
    }

    goto LABEL_36;
  }

  v84 = *(v0 + 220);
  v33 = *(v0 + 32);
LABEL_37:

  v60 = *(v0 + 152);
  v61 = *(v0 + 128);
  v62 = *(v0 + 136);
  v63 = *(v0 + 120);
  v64 = *(v0 + 216);
  v65 = *(v0 + 64);
  v66 = swift_task_alloc();
  sub_258E756F4();
  v67 = swift_allocError();
  *v68 = v84;

  (*(v61 + 8))(v65, v63);
  *v66 = v67;
  v62(v66, v64, v63);
  (*(v61 + 32))(v65, v66, v63);

LABEL_38:

  v69 = *(v0 + 8);

  return v69();
}

uint64_t sub_258E745D0()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_258E74E54;
  }

  else
  {
    v2 = sub_258E746E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258E746E4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 64);
  (*(v4 + 8))(v5, v3);
  (*(v4 + 32))(v5, v2, v3);

  v6 = sub_258F09E80();
  v8 = v7;
  v9 = sub_258F09E90();
  sub_258E75518(v6, v8, v9, v10);
  v11 = *(v0 + 160);
  v12 = *(v0 + 152);
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

  if (!v1)
  {

LABEL_28:

    goto LABEL_29;
  }

  *(v0 + 16) = v1;
  v13 = sub_258F09E20();
  v14 = *(v13 - 8);
  v15 = swift_task_alloc();
  v16 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v17 = (*(v14 + 88))(v15, v13);
    if (MEMORY[0x277D81740] && v17 == *MEMORY[0x277D81740])
    {

      v18 = 3;
LABEL_26:
      v52 = v18;
      goto LABEL_27;
    }

    if (MEMORY[0x277D81748] && v17 == *MEMORY[0x277D81748])
    {

      v18 = 4;
      goto LABEL_26;
    }

    (*(v14 + 8))(v15, v13);
  }

  *(v0 + 24) = v1;
  v19 = sub_258F0A1D0();
  v20 = *(v19 - 8);
  v21 = swift_task_alloc();
  v22 = v1;
  if (swift_dynamicCast())
  {
    v23 = (*(v20 + 88))(v21, v19);
    if (MEMORY[0x277D04530] && v23 == *MEMORY[0x277D04530])
    {

      v18 = 6;
      goto LABEL_26;
    }

    if (MEMORY[0x277D04538] && v23 == *MEMORY[0x277D04538])
    {

      v18 = 7;
      goto LABEL_26;
    }

    if (MEMORY[0x277D04540] && v23 == *MEMORY[0x277D04540])
    {

      v18 = 8;
      goto LABEL_26;
    }

    (*(v20 + 8))(v21, v19);
  }

  *(v0 + 32) = v1;
  v24 = v1;
  if (swift_dynamicCast())
  {

    v52 = *(v0 + 220);
LABEL_27:
    v29 = *(v0 + 152);
    v30 = *(v0 + 128);
    v31 = *(v0 + 136);
    v32 = *(v0 + 120);
    v33 = *(v0 + 216);
    v34 = *(v0 + 64);
    v35 = swift_task_alloc();
    sub_258E756F4();
    v36 = swift_allocError();
    *v37 = v52;

    (*(v30 + 8))(v34, v32);
    *v35 = v36;
    v31(v35, v33, v32);
    (*(v30 + 32))(v34, v35, v32);
    goto LABEL_28;
  }

  *(v0 + 40) = v1;
  v25 = sub_258F09E60();
  v26 = *(v25 - 8);
  v27 = swift_task_alloc();
  v28 = v1;
  if (swift_dynamicCast())
  {

    (*(v26 + 8))(v27, v25);

    v18 = 2;
    goto LABEL_26;
  }

  *(v0 + 48) = v1;
  v40 = sub_258F09E10();
  v41 = *(v40 - 8);
  v42 = swift_task_alloc();
  v43 = v1;
  if (swift_dynamicCast())
  {

    (*(v41 + 8))(v42, v40);

    v52 = 0;
    goto LABEL_27;
  }

  *(v0 + 56) = v1;
  v44 = v1;
  if (!swift_dynamicCast())
  {

    v18 = 1;
    goto LABEL_26;
  }

  v45 = *(v0 + 152);
  v46 = *(v0 + 136);
  v47 = *(v0 + 112);
  v48 = *(v0 + 120);
  v49 = *(v0 + 96);
  v50 = *(v0 + 104);
  v51 = *(v0 + 64);
  (*(*(v0 + 128) + 8))(v51, v48);

  v46(v51, *MEMORY[0x277D81770], v48);
  (*(v50 + 8))(v47, v49);

LABEL_29:

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_258E74E54()
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
    sub_258E756F4();
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

uint64_t sub_258E75518(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_258F0A7A0();
  if (result)
  {
    if (qword_280CC4A30 != -1)
    {
      swift_once();
    }

    v9 = sub_258F0A370();
    __swift_project_value_buffer(v9, qword_280CC4A38);

    v10 = sub_258F0A350();
    v11 = sub_258F0A800();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_258DE3018(a1, a2, &v14);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_258DE3018(a3, a4, &v14);
      _os_log_impl(&dword_258DD8000, v10, v11, "TaskId: %s, TaskName: %s: asked to stop!", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v13, -1, -1);
      MEMORY[0x259C9EF40](v12, -1, -1);
    }

    sub_258F0A770();
    sub_258DFCC98();
    swift_allocError();
    sub_258F0A3F0();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_258E756F4()
{
  result = qword_27F989CC0;
  if (!qword_27F989CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989CC0);
  }

  return result;
}

uint64_t sub_258E75760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  return MEMORY[0x2822009F8](sub_258E75828, 0, 0);
}

uint64_t sub_258E75828(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#ODDIExperimentationTaskExecutor: Call ODDIExperimentation", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v6 = v1[10];
  v5 = v1[11];
  v7 = v1[8];
  v8 = v1[9];
  v10 = v1[6];
  v9 = v1[7];
  v11 = v1[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0);
  v12 = swift_task_alloc();
  v1[12] = v12;
  (*(v6 + 16))(v5, v10, v8);
  type metadata accessor for ODDIExperimentationPlugin(0);
  swift_allocObject();

  v1[2] = ODDIExperimentationPlugin.init(defaults:logger:fbfBundleId:)(v11, v5, v9, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989CD0, &unk_258F12548);
  swift_allocObject();
  v14 = sub_258F09E40();
  v1[13] = v14;
  if (v14)
  {
    v15 = v1[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0);
    v16 = swift_task_alloc();
    v1[14] = v16;
    v17 = sub_258F09E00();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v16, v15, v17);
    (*(v18 + 56))(v16, 0, 1, v17);
    v19 = swift_task_alloc();
    v1[15] = v19;
    *v19 = v1;
    v19[1] = sub_258E4ADA8;

    return MEMORY[0x2821ED078](v12, v16);
  }

  else
  {
    v20 = v1[3];
    v21 = sub_258F09E50();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v12, 1, 1, v21);
    (*(v22 + 104))(v20, *MEMORY[0x277D81758], v21);

    v23 = v1[1];

    return v23();
  }
}

unint64_t sub_258E75C14()
{
  result = qword_27F989CC8;
  if (!qword_27F989CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989CC8);
  }

  return result;
}

unint64_t sub_258E75C6C()
{
  result = qword_27F989CD8;
  if (!qword_27F989CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989CD8);
  }

  return result;
}

unint64_t sub_258E75CC8()
{
  result = qword_27F989CE0;
  if (!qword_27F989CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989CE0);
  }

  return result;
}

unint64_t sub_258E75D20()
{
  result = qword_27F989CE8;
  if (!qword_27F989CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F989CE8);
  }

  return result;
}

uint64_t type metadata accessor for ODDIExperimentationWorker(uint64_t a1)
{
  result = qword_280CC4E58;
  if (!qword_280CC4E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258E75DF8(uint64_t a1)
{
  result = sub_258F09B00();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of ODDIExperimentationTaskExecutor.executeODDIExperimentation(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 88) + **(*v6 + 88));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_258DE1DC4;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t ODDIMetricsBiomeReporter.__allocating_init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = OBJC_IVAR____TtC16MetricsFramework24ODDIMetricsBiomeReporter_logger;
  v6 = sub_258F0A370();
  (*(*(v6 - 8) + 32))(v4 + v5, a2, v6);
  return v4;
}

uint64_t ODDIMetricsBiomeReporter.init(biomeDonator:logger:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = OBJC_IVAR____TtC16MetricsFramework24ODDIMetricsBiomeReporter_logger;
  v5 = sub_258F0A370();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

uint64_t sub_258E76120(uint64_t a1)
{
  v2[2] = v1;
  v2[3] = *(type metadata accessor for DeviceUsageMetrics(0) - 8);
  v4 = swift_task_alloc();
  v5 = *(a1 + 16);
  v2[4] = v4;
  v2[5] = v5;

  return MEMORY[0x2822009F8](sub_258E761E4, 0, 0);
}

uint64_t sub_258E761E4(uint64_t a1)
{
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Reporter invoked: ODDIMetricsBiomeReporter", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v1[5];

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v1[3];
    v8 = v1[5] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    do
    {
      v10 = v1[4];
      sub_258E76CD0(v8, v10);
      v11 = _s16MetricsFramework24ODDIMetricsBiomeReporterC06createD5Event05usageA0So015BMSiriScorecardA0CAA011DeviceUsageA0V_tFZ_0(v10);
      sub_258E76D34(v10);
      sub_258F09B90();

      v8 += v9;
      --v6;
    }

    while (v6);
  }

  v12 = v1[1];

  return v12();
}

uint64_t sub_258E76340()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework24ODDIMetricsBiomeReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t ODDIMetricsBiomeReporter.deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework24ODDIMetricsBiomeReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ODDIMetricsBiomeReporter.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16MetricsFramework24ODDIMetricsBiomeReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id _s16MetricsFramework24ODDIMetricsBiomeReporterC06createD5Event05usageA0So015BMSiriScorecardA0CAA011DeviceUsageA0V_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for DeviceUsageMetrics(0);
  v3 = *(a1 + v2[37]);
  if (v3)
  {
    v54 = MEMORY[0x277D84F90];
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = (v3 + 32);
      do
      {
        v6 = *v5++;
        if ([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_])
        {
          MEMORY[0x259C9DF50]();
          if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_258F0A6D0();
          }

          sub_258F0A700();
        }

        --v4;
      }

      while (v4);
    }
  }

  v36 = _s16MetricsFramework13EventMetadataV07toBiomeC009scorecardD0So015BMSiriScorecardacD0CACSg_tFZ_0(a1);
  v29 = *(a1 + v2[6] + 8);
  if (*(a1 + v2[7] + 4))
  {
    v35 = 0;
  }

  else
  {
    v35 = sub_258F0AE20();
  }

  if (*(a1 + v2[8]) == 3)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_258F0A7D0();
  }

  v27 = *(a1 + v2[9] + 8);
  if (*(a1 + v2[10] + 4))
  {
    v33 = 0;
  }

  else
  {
    v33 = sub_258F0AE20();
  }

  if (*(a1 + v2[11] + 4))
  {
    v32 = 0;
  }

  else
  {
    v32 = sub_258F0AE20();
  }

  v24 = *(a1 + v2[12] + 8);
  v26 = *(a1 + v2[13] + 8);
  if (*(a1 + v2[14] + 4))
  {
    v51 = 0;
  }

  else
  {
    v51 = sub_258F0AE20();
  }

  if (*(a1 + v2[15] + 4))
  {
    v31 = 0;
  }

  else
  {
    v31 = sub_258F0AE20();
  }

  v7 = v2[16];
  v8 = *(a1 + v7);
  if (v8)
  {
    [*(a1 + v7) languageCode];
    v9 = sub_258F0AE20();
    [v8 countryCode];
    v8 = sub_258F0AE20();
  }

  else
  {
    v9 = 0;
  }

  v53 = [objc_allocWithZone(MEMORY[0x277CF15D0]) initWithLanguageCode:v9 countryCode:v8];

  v10 = v2[17];
  v11 = *(a1 + v10);
  if (v11)
  {
    [*(a1 + v10) languageCode];
    v12 = sub_258F0AE20();
    [v11 countryCode];
    v11 = sub_258F0AE20();
  }

  else
  {
    v12 = 0;
  }

  v52 = [objc_allocWithZone(MEMORY[0x277CF15D0]) initWithLanguageCode:v12 countryCode:v11];

  v23 = *(a1 + v2[18] + 8);
  if (*(a1 + v2[19] + 4))
  {
    v46 = 0;
  }

  else
  {
    v46 = sub_258F0AEB0();
  }

  if (*(a1 + v2[20] + 4))
  {
    v44 = 0;
  }

  else
  {
    v44 = sub_258F0AEB0();
  }

  if (*(a1 + v2[21] + 4))
  {
    v43 = 0;
  }

  else
  {
    v43 = sub_258F0AEB0();
  }

  if (*(a1 + v2[22] + 4))
  {
    v41 = 0;
  }

  else
  {
    v41 = sub_258F0AEB0();
  }

  if (*(a1 + v2[23] + 4))
  {
    v50 = 0;
  }

  else
  {
    v50 = sub_258F0AEB0();
  }

  if (*(a1 + v2[24] + 4))
  {
    v49 = 0;
  }

  else
  {
    v49 = sub_258F0AEB0();
  }

  if (*(a1 + v2[25] + 4))
  {
    v48 = 0;
  }

  else
  {
    v48 = sub_258F0AEB0();
  }

  if (*(a1 + v2[26] + 4))
  {
    v47 = 0;
  }

  else
  {
    v47 = sub_258F0AEB0();
  }

  if (*(a1 + v2[27] + 4))
  {
    v45 = 0;
  }

  else
  {
    v45 = sub_258F0AEB0();
  }

  if (*(a1 + v2[28] + 4))
  {
    v42 = 0;
  }

  else
  {
    v42 = sub_258F0AEB0();
  }

  if (*(a1 + v2[29] + 4))
  {
    v40 = 0;
  }

  else
  {
    v40 = sub_258F0AEB0();
  }

  if (*(a1 + v2[30] + 4))
  {
    v39 = 0;
  }

  else
  {
    v39 = sub_258F0AEB0();
  }

  if (*(a1 + v2[31] + 4))
  {
    v37 = 0;
  }

  else
  {
    v37 = sub_258F0AEB0();
  }

  v13 = *(a1 + v2[33] + 8);
  if (*(a1 + v2[34] + 4))
  {
    v38 = 0;
  }

  else
  {
    v38 = sub_258F0AE20();
  }

  if (*(a1 + v2[36]) == 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_258F0A730();
  }

  if (*(a1 + v2[38] + 4))
  {
    v15 = 0;
    if (v29)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v15 = sub_258F0AE20();
    if (v29)
    {
LABEL_80:
      v16 = sub_258F0A4E0();
      if (v27)
      {
        goto LABEL_81;
      }

LABEL_85:
      v30 = 0;
      if (v24)
      {
        goto LABEL_82;
      }

      goto LABEL_86;
    }
  }

  v16 = 0;
  if (!v27)
  {
    goto LABEL_85;
  }

LABEL_81:
  v30 = sub_258F0A4E0();
  if (v24)
  {
LABEL_82:
    v17 = sub_258F0A4E0();
    goto LABEL_87;
  }

LABEL_86:
  v17 = 0;
LABEL_87:
  if (v26)
  {
    v18 = sub_258F0A4E0();
    if (v23)
    {
      goto LABEL_89;
    }

LABEL_92:
    v19 = 0;
    if (v13)
    {
      goto LABEL_90;
    }

LABEL_93:
    v20 = 0;
    goto LABEL_94;
  }

  v18 = 0;
  if (!v23)
  {
    goto LABEL_92;
  }

LABEL_89:
  v19 = sub_258F0A4E0();
  if (!v13)
  {
    goto LABEL_93;
  }

LABEL_90:
  v20 = sub_258F0A4E0();
LABEL_94:
  v21 = objc_allocWithZone(MEMORY[0x277CF15B8]);
  sub_258E76E10();
  v28 = sub_258F0A6A0();

  v25 = [v21 initWithEventMetadata:v36 deviceType:v16 programCode:v35 productId:v34 systemBuild:v30 dataSharingOptInStatus:v33 viewInterface:v32 audioInterfaceVendorId:v17 audioInterfaceProductId:v18 asrLocation:v51 nlLocation:v31 siriInputLocale:v53 dictationLocale:v52 subDomain:v19 totalTurnCount:v46 validTurnCount:v44 siriTasksStarted:v43 siriTasksCompleted:v41 flowTasksStarted:v50 flowTasksCompleted:v49 reliabilityRequestCount:v48 reliabilityTurnCount:v47 clientErrorCount:v45 undesiredResponseCount:v42 fatalResponseCount:v40 failureResponseCount:v39 siriUnavailableResponseCount:v37 siriResponseId:v20 responseCategory:v38 isIntelligenceEngineRequest:v14 intelligenceEngineRouting:v28 invocationSource:v15];

  return v25;
}

uint64_t sub_258E76CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceUsageMetrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E76D34(uint64_t a1)
{
  v2 = type metadata accessor for DeviceUsageMetrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ODDIMetricsBiomeReporter(uint64_t a1)
{
  result = qword_27F989CF8;
  if (!qword_27F989CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_258E76E10()
{
  result = qword_27F988A10;
  if (!qword_27F988A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F988A10);
  }

  return result;
}

uint64_t ODDIMetricsResults.eventStreamMetadata.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ODDIMetricsResults.conversationStreamMetadata.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ODDIMetricsResults.metricsResults.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ODDIMetricsResults.init(eventStreamMetadata:conversationStreamMetadata:metricsResults:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_258E76F9C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_280CC6078;
  v4 = sub_258F0A370();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *ODDIMetricsCalculator.__allocating_init(concluder:logger:bookmarkService:)(char *a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v6 = sub_258F0A370();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 80);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v9, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v13 + 16);
  v29 = a1;
  v17(v16, a1, v12);
  v18 = *(v7 + 16);
  v28 = a2;
  v18(v11, a2, v6);
  v19 = *(v3 + 88);
  (*(v19 + 16))(v12, v19);
  v20 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v21 = sub_258F0A4E0();

  v22 = [v20 initWithSuiteName_];

  if (!v22)
  {
    v22 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  }

  sub_258F09F30();
  sub_258F09F20();
  v23 = sub_258E7EB2C(v16, v11, v27, v22, v12, v19);

  v24 = *(v13 + 8);
  v24(v16, v12);
  (*(v7 + 8))(v28, v6);
  v24(v29, v12);
  return v23;
}

unint64_t sub_258E772E0(uint64_t a1)
{
  sub_258DE20C0(a1, &v23, &qword_27F989868, &unk_258F12D70);
  if (v24)
  {
    if (swift_dynamicCast())
    {
      v2 = 0;
      v3 = v20;
      return v3 | (v2 << 32);
    }
  }

  else
  {
    sub_258DE2184(&v23, &qword_27F989868, &unk_258F12D70);
  }

  sub_258DE20C0(a1, v18, &qword_27F989868, &unk_258F12D70);
  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989DA0, &qword_258F12D80);
    if (swift_dynamicCast())
    {
      if (*(&v21 + 1))
      {
        sub_258DDA76C(&v20, &v23);
        v4 = __swift_project_boxed_opaque_existential_1(&v23, v24);
        MEMORY[0x28223BE20](v4, v4);
        (*(v6 + 16))(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
        sub_258E7F258();
        sub_258F0AB80();
        v3 = v20;
        __swift_destroy_boxed_opaque_existential_1Tm(&v23);
        v2 = 0;
        return v3 | (v2 << 32);
      }
    }

    else
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
    }
  }

  else
  {
    sub_258DE2184(v18, &qword_27F989868, &unk_258F12D70);
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
  }

  sub_258DE2184(&v20, &qword_27F989D98, &unk_258F12A80);
  sub_258DE20C0(a1, &v20, &qword_27F989868, &unk_258F12D70);
  if (*(&v21 + 1))
  {
    sub_258DEB8B8(&v20, &v23);
    sub_258DE4090(&v23, &v20);
    v7 = sub_258F0A350();
    v8 = sub_258F0A820();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      sub_258DE4090(&v20, v18);
      v11 = sub_258F0A550();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_1Tm(&v20);
      v14 = sub_258DE3018(v11, v13, &v17);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_258DD8000, v7, v8, "#ODDIMetricsCalculator: value of the unexpected type casting to UInt32: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x259C9EF40](v10, -1, -1);
      MEMORY[0x259C9EF40](v9, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v20);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v23);
  }

  else
  {
    sub_258DE2184(&v20, &qword_27F989868, &unk_258F12D70);
  }

  v3 = 0;
  v2 = 1;
  return v3 | (v2 << 32);
}

uint64_t sub_258E77690(uint64_t a1)
{
  sub_258DE20C0(a1, &v22, &qword_27F989868, &unk_258F12D70);
  if (v23)
  {
    if (swift_dynamicCast())
    {
      return v19;
    }
  }

  else
  {
    sub_258DE2184(&v22, &qword_27F989868, &unk_258F12D70);
  }

  sub_258DE20C0(a1, v17, &qword_27F989868, &unk_258F12D70);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F989DA0, &qword_258F12D80);
    if (swift_dynamicCast())
    {
      if (*(&v20 + 1))
      {
        sub_258DDA76C(&v19, &v22);
        v3 = __swift_project_boxed_opaque_existential_1(&v22, v23);
        MEMORY[0x28223BE20](v3, v3);
        (*(v5 + 16))(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
        sub_258E7F204();
        sub_258F0AB80();
        v6 = v19;
        __swift_destroy_boxed_opaque_existential_1Tm(&v22);
        return v6;
      }
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }
  }

  else
  {
    sub_258DE2184(v17, &qword_27F989868, &unk_258F12D70);
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
  }

  sub_258DE2184(&v19, &qword_27F989D98, &unk_258F12A80);
  sub_258DE20C0(a1, &v22, &qword_27F989868, &unk_258F12D70);
  if (v23)
  {
    result = swift_dynamicCast();
    if (result)
    {
      if ((v19 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (*&v19 > -1.0)
      {
        if (*&v19 < 1.84467441e19)
        {
          return *&v19;
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }
  }

  else
  {
    sub_258DE2184(&v22, &qword_27F989868, &unk_258F12D70);
  }

  sub_258DE20C0(a1, &v19, &qword_27F989868, &unk_258F12D70);
  if (*(&v20 + 1))
  {
    sub_258DEB8B8(&v19, &v22);
    sub_258DE4090(&v22, &v19);
    v7 = sub_258F0A350();
    v8 = sub_258F0A820();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      sub_258DE4090(&v19, v17);
      v11 = sub_258F0A550();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_1Tm(&v19);
      v14 = sub_258DE3018(v11, v13, &v16);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_258DD8000, v7, v8, "#ODDIMetricsCalculator: value of the unexpected type casting to UInt64: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x259C9EF40](v10, -1, -1);
      MEMORY[0x259C9EF40](v9, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v19);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v22);
  }

  else
  {
    sub_258DE2184(&v19, &qword_27F989868, &unk_258F12D70);
  }

  return 0;
}

uint64_t sub_258E77ADC(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v2[44] = *v1;
  v3 = sub_258F09B00();
  v2[45] = v3;
  v2[46] = *(v3 - 8);
  v2[47] = swift_task_alloc();
  v4 = sub_258F09A20();
  v2[48] = v4;
  v5 = *(v4 - 8);
  v2[49] = v5;
  v2[50] = *(v5 + 64);
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258E77C70, 0, 0);
}

uint64_t sub_258E77C70(uint64_t a1)
{
  v93 = v1;
  v1[58] = qword_280CC6078;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "#ODDIMetricsCalculator: SQL calculator invoked", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v6 = v1[43];
  v5 = v1[44];

  v7 = *(v6 + qword_280CC6070);
  v8 = *(v5 + 80);
  v91 = *(v5 + 88);
  v71 = *(v91 + 24);
  (v71)(v8);
  v9 = sub_258F0A4E0();

  v74 = v7;
  v10 = [v7 BOOLForKey_];

  v11 = sub_258F0A350();
  v12 = sub_258F0A810();
  if (os_log_type_enabled(v11, v12))
  {
    if (v10)
    {
      v13 = "#ODDIMetricsCalculator: Include current date data for aggregation.";
    }

    else
    {
      v13 = "#ODDIMetricsCalculator: current date data NOT included for aggregation.";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_258DD8000, v11, v12, v13, v14, 2u);
    MEMORY[0x259C9EF40](v14, -1, -1);
  }

  v15 = v1[46];
  v16 = v1[47];
  v87 = v1[45];

  v17 = swift_allocObject();
  v1[59] = v17;
  v82 = v17;
  *(v17 + 16) = MEMORY[0x277D84F90];
  v18 = swift_allocObject();
  v1[60] = v18;
  v81 = v18;
  *(v18 + 16) = 0;
  v19 = swift_allocObject();
  v1[61] = v19;
  v80 = v19;
  *(v19 + 16) = 0;
  v20 = swift_allocObject();
  v1[62] = v20;
  v83 = v20;
  *(v20 + 16) = 0;
  v21 = swift_allocObject();
  v1[63] = v21;
  v79 = v21;
  *(v21 + 16) = 0;
  v22 = swift_allocObject();
  v1[64] = v22;
  *(v22 + 16) = 0;
  v23 = swift_allocObject();
  v1[65] = v23;
  *(v23 + 16) = 0;
  sub_258F09B50();
  v90 = v8;
  v25 = type metadata accessor for ODDIMetricsCalculator(0, v8, v91, v24);
  v1[66] = v25;
  v1[67] = swift_getWitnessTable();
  sub_258E3B9F0(v25);
  sub_258F09930();
  v26 = *(v15 + 8);
  v1[68] = v26;
  v1[69] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v16, v87);
  WitnessTable = swift_getWitnessTable();
  v28 = sub_258E3A5B0(v25, WitnessTable);
  v1[70] = v28;
  v29 = v26;
  v69 = v23;
  v70 = v28;
  v84 = v22;
  v71();
  v30 = sub_258F0A4E0();

  v31 = [v74 BOOLForKey_];

  if (v31)
  {
    sub_258F09A10();
  }

  else
  {
    v32 = v1[47];
    v33 = v1[45];
    sub_258E3B9F0(v25);
    sub_258F09BB0();
    v29(v32, v33);
  }

  v34 = *(v1[49] + 16);
  v34(v1[54], v1[55], v1[48]);
  v35 = sub_258F0A350();
  v36 = sub_258F0A800();
  v37 = os_log_type_enabled(v35, v36);
  v38 = v1[54];
  v40 = v1[48];
  v39 = v1[49];
  if (v37)
  {
    v88 = v34;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v92 = v42;
    *v41 = 136315138;
    sub_258DF40CC();
    v43 = sub_258F0AD60();
    v45 = v44;
    (*(v39 + 8))(v38, v40);
    v46 = sub_258DE3018(v43, v45, &v92);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_258DD8000, v35, v36, "#ODDIMetricsCalculator: EndTime: %s.", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x259C9EF40](v42, -1, -1);
    v47 = v41;
    v34 = v88;
    MEMORY[0x259C9EF40](v47, -1, -1);
  }

  else
  {

    (*(v39 + 8))(v38, v40);
  }

  v48 = v1[56];
  v50 = v1[52];
  v49 = v1[53];
  v68 = v49;
  v73 = v50;
  v75 = v1[57];
  v77 = v1[50];
  v72 = v1[49];
  v51 = v1[48];
  v52 = v1[43];
  sub_258F0A0E0();
  swift_allocObject();
  sub_258F0A0D0();
  v89 = sub_258F0A0B0();
  v1[71] = v89;

  v53 = v52;
  v54 = v51;
  v34(v49, v48, v51);
  v34(v50, v75, v51);
  v55 = *(v72 + 80);
  v56 = (v55 + 40) & ~v55;
  v57 = v77 + 7;
  v58 = (v56 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  v76 = ((v78 + 15) & 0xFFFFFFFFFFFFFFF8);
  v60 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v55 + v60 + 8) & ~v55;
  v67 = (v61 + v57) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  v1[72] = v62;
  *(v62 + 16) = v90;
  *(v62 + 24) = v91;
  *(v62 + 32) = v53;
  v63 = *(v72 + 32);
  v63(v62 + v56, v68, v54);
  *(v62 + v58) = v84;
  *(v62 + v86) = v69;
  *(v62 + v59) = v81;
  *(v62 + v78) = v80;
  *&v76[v62] = v83;
  *(v62 + v60) = v79;
  v63(v62 + v61, v73, v54);
  *(v62 + v67) = v82;
  v64 = *(v91 + 48);

  v85 = (v64 + *v64);
  v65 = swift_task_alloc();
  v1[73] = v65;
  *v65 = v1;
  v65[1] = sub_258E78630;

  return v85(v70, v89, sub_258E7EBB0, v62, v90, v91);
}