uint64_t sub_22FA45AB0()
{
  v1 = v0[137];
  v2 = v0[134];

  v3 = v1;
  v4 = sub_22FCC8664();
  v5 = sub_22FCC8F14();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[137];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22FA28000, v4, v5, "Error writing to cache %@", v8, 0xCu);
    sub_22FA2B420(v9, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  else
  {
  }

  v12 = sub_22FCC8664();
  v13 = sub_22FCC8F34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22FA28000, v12, v13, "Persisted empty Moment suggestions in cache", v14, 2u);
    MEMORY[0x23190A000](v14, -1, -1);
  }

  sub_22FCC8FF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72A8, &qword_22FCD4730);
  v15 = sub_22FCC74C4();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22FCD1800;
  (*(v16 + 104))(v18 + v17, *MEMORY[0x277D3C130], v15);
  sub_22FCC7E54();
  sub_22FCC7E84();

  sub_22FCC8FF4();
  v19 = v0[109];
  v20 = v0[89];
  swift_beginAccess();
  v21 = *(v19 + 16);
  v22 = *(v21 + 16);
  swift_beginAccess();
  *(v20 + 24) = v22;

  if (v22)
  {
    v24 = 0;
    v25 = v0[62];
    v66 = (v25 + 32);
    v26 = MEMORY[0x277D84F90];
    v64 = v22;
    while (v24 < *(v21 + 16))
    {
      v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v28 = *(v25 + 72);
      (*(v25 + 16))(v0[65], v21 + v27 + v28 * v24, v0[61]);
      if (sub_22FCC7504())
      {
        v29 = *v66;
        (*v66)(v0[64], v0[65], v0[61]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22FA86EC8(0, *(v26 + 16) + 1, 1);
        }

        v31 = *(v26 + 16);
        v30 = *(v26 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_22FA86EC8((v30 > 1), v31 + 1, 1);
        }

        v32 = v0[64];
        v33 = v0[61];
        *(v26 + 16) = v31 + 1;
        result = v29(v26 + v27 + v31 * v28, v32, v33);
        v22 = v64;
      }

      else
      {
        result = (*(v25 + 8))(v0[65], v0[61]);
      }

      if (v22 == ++v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
LABEL_18:
    v34 = v0[109];
    v35 = v0[89];

    v36 = *(v26 + 16);

    *(v35 + 32) = v36;
    v37 = *(v34 + 16);
    v38 = *(v37 + 16);
    v39 = MEMORY[0x277D84F90];
    if (v38)
    {
      v40 = v0[62];
      v69 = MEMORY[0x277D84F90];

      sub_22FA86EA8(0, v38, 0);
      v39 = v69;
      v41 = *(v40 + 16);
      v40 += 16;
      v42 = v37 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
      v65 = *(v40 + 56);
      v67 = v41;
      v43 = (v40 - 8);
      do
      {
        v44 = v0[63];
        v45 = v0[61];
        v67(v44, v42, v45);
        v46 = sub_22FCC7354();
        v48 = v47;
        (*v43)(v44, v45);
        v50 = *(v69 + 16);
        v49 = *(v69 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_22FA86EA8((v49 > 1), v50 + 1, 1);
        }

        *(v69 + 16) = v50 + 1;
        v51 = v69 + 16 * v50;
        *(v51 + 32) = v46;
        *(v51 + 40) = v48;
        v42 += v65;
        --v38;
      }

      while (v38);
    }

    v52 = sub_22FAA99B0(v39);

    v53 = sub_22FCC8664();
    v54 = sub_22FCC8F34();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v0[104];
    v57 = v0[89];
    if (v55)
    {
      v58 = swift_slowAlloc();
      *v58 = 134218752;
      *(v58 + 4) = *(*(v56 + 16) + 16);

      *(v58 + 12) = 2048;
      *(v58 + 14) = *(v57 + 24);
      *(v58 + 22) = 2048;
      *(v58 + 24) = *(v52 + 16);

      *(v58 + 32) = 2048;
      *(v58 + 34) = *(v57 + 32);

      _os_log_impl(&dword_22FA28000, v53, v54, "Validated %ld Moment suggestion with %ld prompts. %ld are unique, %ld are valid", v58, 0x2Au);
      MEMORY[0x23190A000](v58, -1, -1);
    }

    else
    {
    }

    sub_22FCC8FF4();
    v59 = v0[99];
    v60 = v0[89];
    v61 = v0[56];

    v62 = *(v60 + 24);
    *v61 = *(v60 + 16);
    *(v61 + 8) = v62;
    v68 = *(v59 + 16);

    sub_22FCC76B4();

    v63 = v0[1];

    return v63(v68);
  }

  return result;
}

void sub_22FA46474(void *a1)
{
  v2 = sub_22FCC6794();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x28223BE20](v2, v4).n128_u64[0];
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 librarySpecificFetchOptions];
  sub_22FA3A77C(0, &qword_28147AEF0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278, &qword_22FCD1B10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22FCD17F0;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_22FA4EF4C();
  strcpy((v9 + 32), "creationDate");
  *(v9 + 45) = 0;
  *(v9 + 46) = -5120;
  sub_22FCC8E24();
  sub_22FCC6724();
  v10 = sub_22FCC66F4();
  (*(v3 + 8))(v7, v2);
  *(v9 + 96) = sub_22FA3A77C(0, &qword_28147AE00, 0x277CBEAA8);
  *(v9 + 104) = sub_22FA4EFA0();
  *(v9 + 72) = v10;
  v11 = sub_22FCC8EE4();
  [v8 setPredicate_];

  [v8 setShouldPrefetchCount_];
  v12 = [objc_opt_self() fetchAssetsWithOptions_];
  [v12 count];

  sub_22FCC8124();
}

uint64_t sub_22FA466BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_22FCC7A24();
  sub_22FA4EA44(&qword_28147B030, MEMORY[0x277D3C3E8], MEMORY[0x277D3C3F0]);
  v5 = sub_22FCC8CC4();

  return MEMORY[0x2822009F8](sub_22FA46788, v5, v4);
}

uint64_t sub_22FA46788()
{
  sub_22FCC7A14();
  *(v0 + 40) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FA46838()
{
  v1 = *(v0 + 40);
  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22FA28000, v3, v4, "Failed to store overnight analytics payload. Error:%@", v7, 0xCu);
    sub_22FA2B420(v8, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22FA469A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  v9 = sub_22FCC80B4();
  v7[5] = v9;
  v7[6] = *(v9 - 8);
  v7[7] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[8] = v10;
  sub_22FCC8204();
  v11 = swift_task_alloc();
  v7[9] = v11;
  *v11 = v7;
  v11[1] = sub_22FA46ACC;

  return MEMORY[0x28219C948](v10, a5);
}

uint64_t sub_22FA46ACC(void *a1)
{
  *(*v2 + 80) = v1;

  if (v1)
  {
    v4 = sub_22FA46CF4;
  }

  else
  {

    v4 = sub_22FA46BE8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FA46BE8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  (*(v4 + 104))(v2, *MEMORY[0x277D3C640], v3);
  v5 = sub_22FCC80A4();
  v6 = *(v4 + 8);
  v6(v2, v3);
  *(v0 + 88) = v5 & 1;
  sub_22FCC6E04();
  v6(v1, v3);
  dispatch_group_leave(*(v0 + 16));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22FA46CF4()
{
  v1 = *(v0 + 80);
  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22FA28000, v3, v4, "Error getting MC status: %@", v7, 0xCu);
    sub_22FA2B420(v8, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  dispatch_group_leave(*(v0 + 16));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22FA46E78()
{
  sub_22FCC9844();
  MEMORY[0x231908CB0](0);
  return sub_22FCC9894();
}

uint64_t sub_22FA46EE4(uint64_t a1)
{
  sub_22FCC9844();
  MEMORY[0x231908CB0](0);
  return sub_22FCC9894();
}

uint64_t sub_22FA46F44(uint64_t a1)
{
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22FA28000, v2, v3, "PromptSuggestionFetcher prewarming", v4, 2u);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v5 = sub_22FA3AF2C();
  *(v1 + 24) = v5;
  v6 = v5 + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_configuration;
  v7 = (v6 + *(type metadata accessor for PromptSuggestionFetcher.Configuration(0) + 20));
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v12 = (*(v9 + 32) + **(v9 + 32));
  v10 = swift_task_alloc();
  *(v1 + 32) = v10;
  *v10 = v1;
  v10[1] = sub_22FA47110;

  return v12(v8, v9);
}

uint64_t sub_22FA47110()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_22FA47288;
  }

  else
  {
    v2 = sub_22FA47224;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FA47224()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FA47288()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FA472EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[40] = a5;
  v6[41] = a6;
  v6[38] = a3;
  v6[39] = a4;
  v6[37] = a2;
  return MEMORY[0x2822009F8](sub_22FA47314, 0, 0);
}

uint64_t sub_22FA47314(uint64_t a1)
{
  v1[42] = OBJC_IVAR___PHAPromptSuggestionCachingTask_logger;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22FA28000, v2, v3, "Fetching moment suggestions", v4, 2u);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v5 = v1[38];

  v1[43] = sub_22FA3AF2C();
  v6 = [v5 childProgressReporterFromStart:0.0 toEnd:0.29];
  v1[44] = v6;
  v7 = swift_task_alloc();
  v1[45] = v7;
  *v7 = v1;
  v7[1] = sub_22FA47474;

  return sub_22FAB1D6C((v1 + 7), 10, v6);
}

uint64_t sub_22FA47474(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v5 = sub_22FA477A4;
  }

  else
  {

    *(v4 + 376) = a1;
    v5 = sub_22FA475AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FA475AC()
{
  v1 = *(v0 + 376);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  sub_22FA2CF78((v0 + 56), v0 + 16);
  swift_beginAccess();
  *(v3 + 16) = v1;

  sub_22FA2D328(v0 + 16, v0 + 96);
  swift_beginAccess();
  v4 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = *(v0 + 320);
    v4 = sub_22FAC2044(0, v4[2] + 1, 1, v4);
    *(v16 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v17 = *(v0 + 320);
    v4 = sub_22FAC2044((v6 > 1), v7 + 1, 1, v4);
    *(v17 + 16) = v4;
  }

  v8 = *(v0 + 320);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, v9);
  v12 = *(v9 - 8);
  v13 = swift_task_alloc();
  (*(v12 + 16))(v13, v11, v9);
  sub_22FA4CABC(v7, v13, (v8 + 16), v9, v10);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  *(v8 + 16) = v4;
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_22FA477A4()
{
  v32 = v0;
  v1 = *(v0 + 368);

  *(v0 + 288) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 368);
  if (v3)
  {

    v5 = *(v0 + 136);
    v6 = *(v0 + 144);
    v7 = *(v0 + 152);
    if (*(v0 + 160))
    {
      if (*(v0 + 160) != 1)
      {

        v23 = sub_22FCC8664();
        v24 = sub_22FCC8F14();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v31 = v26;
          *v25 = 136315138;
          v27 = sub_22FA2F600(v5, v6, &v31);
          sub_22FA4FA3C(v5, v6, v7, 2);
          *(v25 + 4) = v27;
          _os_log_impl(&dword_22FA28000, v23, v24, "Couldn't fetch and process moment suggestions due to moment error %s", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v26);
          MEMORY[0x23190A000](v26, -1, -1);
          MEMORY[0x23190A000](v25, -1, -1);
        }

        else
        {

          sub_22FA4FA3C(v5, v6, v7, 2);
        }

        sub_22FA4FA3C(v5, v6, v7, 2);
        v5 = v7;
        goto LABEL_16;
      }

      v8 = sub_22FCC8664();
      v9 = sub_22FCC8F14();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        *(v10 + 4) = v5;
        _os_log_impl(&dword_22FA28000, v8, v9, "Couldn't fetch and process moment suggestions due to DB assertion issue with code %ld", v10, 0xCu);
        MEMORY[0x23190A000](v10, -1, -1);
      }
    }

    else
    {
      v8 = sub_22FCC8664();
      v21 = sub_22FCC8F14();
      if (os_log_type_enabled(v8, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_22FA28000, v8, v21, "Couldn't fetch and process moment suggestions because PersonalizedSensing manager is unavailable", v22, 2u);
        MEMORY[0x23190A000](v22, -1, -1);

        sub_22FA4FA3C(v5, v6, v7, 0);
LABEL_16:
        v28 = *(v0 + 328);
        swift_beginAccess();
        *(v28 + 16) = v5;
        v20 = *(v0 + 288);
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  v11 = v4;
  v12 = sub_22FCC8664();
  v13 = sub_22FCC8F14();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 368);
  if (v14)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = v15;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_22FA28000, v12, v13, "Received unexpected error: %@", v16, 0xCu);
    sub_22FA2B420(v17, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v17, -1, -1);
    MEMORY[0x23190A000](v16, -1, -1);

    goto LABEL_18;
  }

  v20 = v15;
LABEL_17:

LABEL_18:
  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_22FA47BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[11] = a2;
  v5 = type metadata accessor for TemplatedPrompt(0);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = *(type metadata accessor for PromptSuggestionFetcher.MCSuggestion(0) - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA47D10, 0, 0);
}

char *sub_22FA47D10()
{
  v56 = v0;
  v1 = v0[11];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  v52 = *(v2 + 16);
  if (v52)
  {
    v4 = v0[14];
    v47 = v0[15];
    v50 = v0[17];
    v51 = v0[19];
    v49 = v2 + ((*(v50 + 80) + 32) & ~*(v50 + 80));

    v6 = 0;
    v7 = v3;
    v48 = v2;
    while (1)
    {
      if (v6 >= *(v2 + 16))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return result;
      }

      sub_22FA4F8A8(v49 + *(v50 + 72) * v6, v0[19], type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      v8 = *(v51 + 16);
      v9 = *(v8 + 16);
      if (v9)
      {
        v53 = v6;
        v54 = v7;
        v55 = v3;
        sub_22FA86EA8(0, v9, 0);
        v10 = v3;
        v11 = v8 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
        v12 = *(v47 + 72);
        do
        {
          v13 = v0[16];
          sub_22FA4F8A8(v11, v13, type metadata accessor for TemplatedPrompt);
          v14 = (v13 + *(v4 + 24));
          v15 = *v14;
          v16 = v14[1];

          sub_22FA4F910(v13, type metadata accessor for TemplatedPrompt);
          v55 = v10;
          v18 = *(v10 + 16);
          v17 = *(v10 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_22FA86EA8((v17 > 1), v18 + 1, 1);
            v10 = v55;
          }

          *(v10 + 16) = v18 + 1;
          v19 = v10 + 16 * v18;
          *(v19 + 32) = v15;
          *(v19 + 40) = v16;
          v11 += v12;
          --v9;
        }

        while (v9);
        result = sub_22FA4F910(v0[19], type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
        v3 = MEMORY[0x277D84F90];
        v6 = v53;
        v7 = v54;
        v2 = v48;
      }

      else
      {
        result = sub_22FA4F910(v0[19], type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
        v10 = v3;
      }

      v20 = *(v10 + 16);
      v21 = *(v7 + 2);
      v22 = v21 + v20;
      if (__OFADD__(v21, v20))
      {
        goto LABEL_41;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v22 <= *(v7 + 3) >> 1)
      {
        if (*(v10 + 16))
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v21 <= v22)
        {
          v23 = v21 + v20;
        }

        else
        {
          v23 = v21;
        }

        result = sub_22FAC1D0C(result, v23, 1, v7);
        v7 = result;
        if (*(v10 + 16))
        {
LABEL_22:
          if ((*(v7 + 3) >> 1) - *(v7 + 2) < v20)
          {
            goto LABEL_43;
          }

          swift_arrayInitWithCopy();

          if (v20)
          {
            v24 = *(v7 + 2);
            v25 = __OFADD__(v24, v20);
            v26 = v24 + v20;
            if (v25)
            {
              goto LABEL_45;
            }

            *(v7 + 2) = v26;
          }

          goto LABEL_4;
        }
      }

      if (v20)
      {
        goto LABEL_42;
      }

LABEL_4:
      if (++v6 == v52)
      {

        break;
      }
    }
  }

  v27 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72A8, &qword_22FCD4730);
  v28 = sub_22FCC74C4();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_22FCD1800;
  (*(v29 + 104))(v31 + v30, *MEMORY[0x277D3C130], v28);
  v32 = sub_22FCC7AA4();

  swift_beginAccess();
  v33 = *(v27 + 16);
  v55 = v3;
  v34 = *(v33 + 16);

  if (v34)
  {
    v35 = 0;
    v36 = v0[17];
    while (v35 < *(v33 + 16))
    {
      v37 = v0[18];
      sub_22FA4F8A8(v33 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35, v37, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      sub_22FA483A8(&v55, v37, v32);
      ++v35;
      result = sub_22FA4F910(v0[18], type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      if (v34 == v35)
      {
        v3 = v55;
        goto LABEL_32;
      }
    }

    goto LABEL_44;
  }

LABEL_32:

  v38 = sub_22FCC8664();
  v39 = sub_22FCC8F34();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 134218240;
    *(v40 + 4) = *(v3 + 16);

    *(v40 + 12) = 2048;
    *(v40 + 14) = 10;
    _os_log_impl(&dword_22FA28000, v38, v39, "Found new moment suggestions %ld, will trim to %ld", v40, 0x16u);
    MEMORY[0x23190A000](v40, -1, -1);
  }

  else
  {
  }

  v55 = v3;
  sub_22FA4C868();
  v41 = v55;
  if (*(v55 + 16) >= 0xBuLL)
  {
    v42 = *(v0[17] + 80);
    sub_22FACAA04(v55, v55 + ((v42 + 32) & ~v42), 0, 0x15uLL);
    v44 = v43;

    v41 = v44;
  }

  v45 = v0[13];
  swift_beginAccess();
  *(v45 + 16) = v41;

  v46 = v0[1];

  return v46();
}

uint64_t sub_22FA483A8(uint64_t *a1, char *a2, uint64_t a3)
{
  v43 = a1;
  v38 = type metadata accessor for PromptSuggestionFetcher.MCSuggestion(0);
  v42 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v5);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v40 = &v38 - v9;
  v44 = type metadata accessor for TemplatedPrompt(0);
  MEMORY[0x28223BE20](v44, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v17 = &v38 - v16;
  v39 = a2;
  v18 = *(a2 + 2);
  v19 = *(v18 + 16);
  if (v19)
  {
    v45 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = v18 + v45;
    v21 = *(v15 + 72);
    v22 = MEMORY[0x277D84F90];
    do
    {
      sub_22FA4F8A8(v20, v17, type metadata accessor for TemplatedPrompt);
      if (*(a3 + 16) && (sub_22FA2DB54(*&v17[*(v44 + 24)], *&v17[*(v44 + 24) + 8]), (v23 & 1) != 0))
      {
        sub_22FA4F910(v17, type metadata accessor for TemplatedPrompt);
      }

      else
      {
        sub_22FA4F8A8(v17, v12, type metadata accessor for TemplatedPrompt);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_22FAC201C(0, v22[2] + 1, 1, v22);
        }

        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          v22 = sub_22FAC201C((v24 > 1), v25 + 1, 1, v22);
        }

        sub_22FA4F910(v17, type metadata accessor for TemplatedPrompt);
        v22[2] = v25 + 1;
        sub_22FA4F9D4(v12, v22 + v45 + v25 * v21, type metadata accessor for TemplatedPrompt);
      }

      v20 += v21;
      --v19;
    }

    while (v19);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  if (!v22[2])
  {
  }

  v26 = v39;
  v28 = *v39;
  v27 = *(v39 + 1);
  v29 = *(v38 + 24);
  v30 = sub_22FCC6794();
  v31 = v40;
  (*(*(v30 - 8) + 16))(&v40[v29], &v26[v29], v30);
  *v31 = v28;
  v31[1] = v27;
  v31[2] = v22;
  v32 = v41;
  sub_22FA4F8A8(v31, v41, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
  v33 = v43;
  v34 = *v43;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = sub_22FAC1E18(0, v34[2] + 1, 1, v34);
  }

  v36 = v34[2];
  v35 = v34[3];
  if (v36 >= v35 >> 1)
  {
    v34 = sub_22FAC1E18((v35 > 1), v36 + 1, 1, v34);
  }

  sub_22FA4F910(v31, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
  v34[2] = v36 + 1;
  result = sub_22FA4F9D4(v32, v34 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v36, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
  *v33 = v34;
  return result;
}

uint64_t sub_22FA487F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[41] = v13;
  v8[42] = v14;
  v8[39] = a7;
  v8[40] = a8;
  v8[37] = a5;
  v8[38] = a6;
  v8[35] = a3;
  v8[36] = a4;
  v8[34] = a2;
  v9 = sub_22FCC7514();
  v8[43] = v9;
  v8[44] = *(v9 - 8);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v10 = type metadata accessor for PromptSuggestionFetcher.MCSuggestion(0);
  v8[47] = v10;
  v8[48] = *(v10 - 8);
  v8[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA48934, 0, 0);
}

uint64_t sub_22FA48934()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 296);
  *(v0 + 400) = sub_22FA3AF2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72B0, &qword_22FCD1BE0);
  v3 = *(v1 + 80);
  *(v0 + 448) = v3;
  v4 = (v3 + 32) & ~v3;
  v5 = swift_allocObject();
  *(v0 + 408) = v5;
  *(v5 + 16) = xmmword_22FCD1800;
  sub_22FA4F8A8(v2, v5 + v4, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
  v6 = swift_task_alloc();
  *(v0 + 416) = v6;
  *v6 = v0;
  v6[1] = sub_22FA48A54;
  v7 = *(v0 + 304);
  v8 = *(v0 + 312);

  return PromptSuggestionFetcher.validateSmartSuggestions(_:eventRecorder:progressReporter:)(v5, v7, v8);
}

uint64_t sub_22FA48A54(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 424) = v2;

  if (v2)
  {
    v7 = sub_22FA49258;
  }

  else
  {
    *(v6 + 432) = a2;
    *(v6 + 440) = a1;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v7 = sub_22FA48BD0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22FA48BD0()
{
  v52 = v0;
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[49];
  v4 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  swift_beginAccess();
  *(v6 + 16) = v1;

  swift_beginAccess();
  *(v5 + 16) = v2;

  swift_beginAccess();
  swift_beginAccess();

  sub_22FA681D0(v7);
  swift_endAccess();
  swift_beginAccess();
  swift_beginAccess();

  sub_22FA681A8(v8);
  swift_endAccess();
  sub_22FA4F8A8(v4, v3, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
  swift_retain_n();
  v9 = sub_22FCC8664();
  v10 = sub_22FCC8F34();
  if (!os_log_type_enabled(v9, v10))
  {
    v32 = v0[49];

    sub_22FA4F910(v32, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
    goto LABEL_16;
  }

  v45 = v10;
  log = v9;
  v11 = v0[49];
  v12 = v0[40];
  v13 = swift_slowAlloc();
  v43 = swift_slowAlloc();
  v50 = v43;
  *v13 = 136315394;
  v14 = PromptSuggestionFetcher.MCSuggestion.description.getter();
  v16 = v15;
  sub_22FA4F910(v11, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
  v17 = sub_22FA2F600(v14, v16, &v50);

  *(v13 + 4) = v17;
  v44 = v13;
  *(v13 + 12) = 2048;
  swift_beginAccess();
  v18 = *(v12 + 16);
  v19 = *(v18 + 16);

  if (!v19)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_15:

    v33 = *(v23 + 16);

    *(v44 + 14) = v33;

    _os_log_impl(&dword_22FA28000, log, v45, "Done processing MomentSuggestion %s. ValidCount:%ld", v44, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x23190A000](v43, -1, -1);
    MEMORY[0x23190A000](v44, -1, -1);

LABEL_16:
    v34 = sub_22FCC6DE4();
    v0[5] = v34;
    v0[6] = sub_22FA4EA44(qword_28147B080, MEMORY[0x277D3A838], MEMORY[0x277D3A7F0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    (*(*(v34 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A828], v34);
    LOBYTE(v34) = sub_22FCC6C74();
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    if (v34)
    {
      v36 = v0[53];
      swift_beginAccess();

      sub_22FCC7E34();
      if (v36)
      {

        v37 = v0[1];
LABEL_24:

        return v37();
      }

      v38 = sub_22FCC8664();
      v39 = sub_22FCC8F34();
      v40 = os_log_type_enabled(v38, v39);
      v41 = v0[34];
      if (v40)
      {
        v42 = swift_slowAlloc();
        *v42 = 134217984;
        swift_beginAccess();
        *(v42 + 4) = *(*(v41 + 16) + 16);

        _os_log_impl(&dword_22FA28000, v38, v39, "Persisted %ld Moment suggestions in photo library", v42, 0xCu);
        MEMORY[0x23190A000](v42, -1, -1);
      }

      else
      {
      }
    }

    v37 = v0[1];
    goto LABEL_24;
  }

  v21 = 0;
  v22 = v0[44];
  v49 = (v22 + 32);
  v23 = MEMORY[0x277D84F90];
  v47 = v19;
  v48 = v18;
  while (v21 < *(v18 + 16))
  {
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v25 = *(v22 + 72);
    (*(v22 + 16))(v0[46], v18 + v24 + v25 * v21, v0[43]);
    if (sub_22FCC7504())
    {
      v26 = *v49;
      (*v49)(v0[45], v0[46], v0[43]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22FA86EC8(0, *(v23 + 16) + 1, 1);
        v23 = v51;
      }

      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_22FA86EC8((v28 > 1), v29 + 1, 1);
        v23 = v51;
      }

      v30 = v0[45];
      v31 = v0[43];
      *(v23 + 16) = v29 + 1;
      result = v26(v23 + v24 + v29 * v25, v30, v31);
      v19 = v47;
      v18 = v48;
    }

    else
    {
      result = (*(v22 + 8))(v0[46], v0[43]);
    }

    if (v19 == ++v21)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FA49258()
{
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FA4931C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[12] = a3;
  v8[13] = a4;
  v8[11] = a2;
  return MEMORY[0x2822009F8](sub_22FA49348, 0, 0);
}

uint64_t sub_22FA49348()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v0[18] = sub_22FA3AF2C();
  swift_beginAccess();
  v4 = *(v2 + 16);
  v0[19] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[20] = v5;

  v6 = [v1 childProgressReporterFromStart:0.8 toEnd:0.85];
  v0[21] = v6;
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_22FA49484;
  v8 = v0[14];

  return PromptSuggestionFetcher.prioritizeAndRankPromptSuggestions(_:momentSuggestions:eventRecorder:progressReporter:)(v4, v5, v8, v6);
}

uint64_t sub_22FA49484(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 184) = a1;
  *(v4 + 192) = a2;
  *(v4 + 200) = v2;

  if (v2)
  {
    v5 = sub_22FA49694;
  }

  else
  {

    v5 = sub_22FA495C8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FA495C8()
{
  v1 = v0[25];
  sub_22FCC7E64();
  if (v1)
  {
  }

  else
  {
    v3 = v0[24];

    swift_beginAccess();
    sub_22FA681A8(v3);
    swift_endAccess();
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_22FA49694()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FA4971C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v4 = sub_22FCC6794();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA497DC, 0, 0);
}

uint64_t sub_22FA497DC()
{
  v1 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7280, &qword_22FCD1B28);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7288, &qword_22FCD1B30) - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FCD1800;
  v5 = v4 + v3;
  v6 = v2[14];
  v7 = *MEMORY[0x277D3C130];
  v8 = sub_22FCC74C4();
  (*(*(v8 - 8) + 104))(v5, v7, v8);
  *(v5 + v6) = MEMORY[0x277D84F90];
  v0[10] = sub_22FA4D050(v4);
  swift_setDeallocating();
  sub_22FA2B420(v5, &qword_27DAD7288, &qword_22FCD1B30);
  swift_deallocClassInstance();
  swift_beginAccess();
  v0[11] = *(v1 + 16);
  sub_22FCC6784();
  sub_22FCC7A24();
  sub_22FA4EA44(&qword_28147B030, MEMORY[0x277D3C3E8], MEMORY[0x277D3C3F0]);
  v10 = sub_22FCC8CC4();

  return MEMORY[0x2822009F8](sub_22FA49A10, v10, v9);
}

uint64_t sub_22FA49A10()
{
  sub_22FCC7A04();
  v0[12] = 0;
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FA49AFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FA49B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_22FA49C2C;

  return sub_22FA49D9C(a1, a3, a4, a5);
}

uint64_t sub_22FA49C2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_22FA49D78, 0, 0);
  }
}

uint64_t sub_22FA49D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = sub_22FCC7514();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v7 = sub_22FCC68D4();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v8 = sub_22FCC74C4();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730, &qword_22FCD1B20);
  v5[23] = swift_task_alloc();
  v9 = sub_22FCC6794();
  v5[24] = v9;
  v5[25] = *(v9 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA49FC8, 0, 0);
}

uint64_t sub_22FA49FC8()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(*(v0 + 96) + OBJC_IVAR___PHAPromptSuggestionCachingTask_log);
  sub_22FCC76D4();
  swift_allocObject();
  v4 = v3;
  *(v0 + 224) = sub_22FCC76C4();
  v5 = MEMORY[0x277D84F90];
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = v5;
  *(v0 + 384) = *MEMORY[0x277D3C138];
  v6 = *(v2 + 104);
  *(v0 + 232) = v6;
  *(v0 + 240) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v1);
  sub_22FCC7A24();
  sub_22FA4EA44(&qword_28147B030, MEMORY[0x277D3C3E8], MEMORY[0x277D3C3F0]);
  v8 = sub_22FCC8CC4();
  *(v0 + 248) = v8;
  *(v0 + 256) = v7;

  return MEMORY[0x2822009F8](sub_22FA4A128, v8, v7);
}

uint64_t sub_22FA4A128()
{
  sub_22FCC79C4();
  v0[33] = 0;
  (*(v0[21] + 8))(v0[22], v0[20]);

  return MEMORY[0x2822009F8](sub_22FA4A1D0, 0, 0);
}

uint64_t sub_22FA4A1D0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_22FA2B420(v3, &qword_27DAD8730, &qword_22FCD1B20);
    v4 = 1;
  }

  else
  {
    v5 = *(v0 + 216);
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = *(v0 + 136);
    (*(v2 + 32))(v5, v3, v1);
    sub_22FCC68C4();
    v9 = sub_22FCC68B4();
    (*(v7 + 8))(v6, v8);
    (*(v2 + 8))(v5, v1);
    v4 = v9 ^ 1;
  }

  *(v0 + 388) = v4 & 1;
  v10 = sub_22FA3AF2C();
  *(v0 + 272) = v10;
  v11 = v10 + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_configuration;
  v12 = (v11 + *(type metadata accessor for PromptSuggestionFetcher.Configuration(0) + 20));
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v17 = (*(v14 + 32) + **(v14 + 32));
  v15 = swift_task_alloc();
  *(v0 + 280) = v15;
  *v15 = v0;
  v15[1] = sub_22FA4A3F8;

  return v17(v13, v14);
}

uint64_t sub_22FA4A3F8()
{
  *(*v1 + 288) = v0;

  if (v0)
  {

    v2 = sub_22FA4AC14;
  }

  else
  {
    v2 = sub_22FA4A518;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FA4A518()
{
  v53 = v0;

  *(v0 + 296) = OBJC_IVAR___PHAPromptSuggestionCachingTask_logger;
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8EF4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22FA28000, v1, v2, "prewarmed PromptSuggestionFetcher", v3, 2u);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  v4 = *(v0 + 388);

  if (v4 == 1)
  {
    v5 = *(v0 + 88);
    *(v0 + 304) = *(*(v0 + 96) + OBJC_IVAR___PHAPromptSuggestionCachingTask____lazy_storage___promptSuggestionFetcher);

    v6 = [v5 childProgressReporterFromStart:0.5 toEnd:0.89];
    *(v0 + 312) = v6;
    v7 = swift_task_alloc();
    *(v0 + 320) = v7;
    *v7 = v0;
    v7[1] = sub_22FA4ACF4;
    v8 = *(v0 + 80);

    return PromptSuggestionFetcher.fetchAndValidateSearchSuggestions(eventRecorder:progressReporter:)(v8, v6);
  }

  v10 = sub_22FCC8664();
  v11 = sub_22FCC8F34();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22FA28000, v10, v11, "Skipping search suggestion fetch, already fetched today", v12, 2u);
    MEMORY[0x23190A000](v12, -1, -1);
  }

  v49 = *(v0 + 288);
  v13 = MEMORY[0x277D84F90];
  *(v0 + 344) = 0;
  *(v0 + 352) = v13;
  v14 = *(v13 + 16);
  *(v0 + 16) = v14;

  if (v14)
  {
    v18 = 0;
    v19 = *(v0 + 112);
    v50 = v14;
    v51 = (v19 + 32);
    v20 = v13;
    while (v18 < *(v13 + 16))
    {
      v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v22 = *(v19 + 72);
      (*(v19 + 16))(*(v0 + 128), v13 + v21 + v22 * v18, *(v0 + 104));
      if (sub_22FCC7504())
      {
        v23 = *v51;
        (*v51)(*(v0 + 120), *(v0 + 128), *(v0 + 104));
        v52 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22FA86EC8(0, *(v20 + 16) + 1, 1);
          v20 = v52;
        }

        v25 = *(v20 + 16);
        v24 = *(v20 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_22FA86EC8((v24 > 1), v25 + 1, 1);
          v20 = v52;
        }

        v26 = *(v0 + 120);
        v27 = *(v0 + 104);
        *(v20 + 16) = v25 + 1;
        v15 = v23(v20 + v21 + v25 * v22, v26, v27);
        v13 = MEMORY[0x277D84F90];
        v14 = v50;
      }

      else
      {
        v15 = (*(v19 + 8))(*(v0 + 128), *(v0 + 104));
      }

      if (v14 == ++v18)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
    return MEMORY[0x2822009F8](v15, v16, v17);
  }

  v20 = v13;
LABEL_22:
  v28 = MEMORY[0x277D84F90];

  v29 = *(v20 + 16);

  *(v0 + 24) = v29;

  v30 = sub_22FCC8664();
  v31 = sub_22FCC8F34();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v0 + 104);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v52 = v34;
    *v33 = 134218498;
    *(v33 + 4) = *(v28 + 16);
    *(v33 + 12) = 2048;
    *(v33 + 14) = v29;

    *(v33 + 22) = 2080;

    v36 = MEMORY[0x2319080B0](v35, v32);
    v38 = v37;

    v39 = sub_22FA2F600(v36, v38, &v52);

    *(v33 + 24) = v39;
    _os_log_impl(&dword_22FA28000, v30, v31, "Validated %ld Search suggestion. %ld are valid. Suggestions: %s", v33, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x23190A000](v34, -1, -1);
    MEMORY[0x23190A000](v33, -1, -1);
  }

  else
  {
  }

  sub_22FCC8FF4();
  *(v0 + 360) = v49;
  if (!v49)
  {
    v41 = *(v0 + 232);
    v42 = *(v0 + 384);
    v43 = *(v0 + 160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7280, &qword_22FCD1B28);
    v44 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7288, &qword_22FCD1B30) - 8);
    v45 = (*(*v44 + 80) + 32) & ~*(*v44 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_22FCD1800;
    v47 = v46 + v45;
    v48 = v44[14];
    v41(v47, v42, v43);
    *(v47 + v48) = v28;

    *(v0 + 368) = sub_22FA4D050(v46);
    swift_setDeallocating();
    sub_22FA2B420(v47, &qword_27DAD7288, &qword_22FCD1B30);
    swift_deallocClassInstance();
    sub_22FCC6784();
    v16 = *(v0 + 248);
    v17 = *(v0 + 256);
    v15 = sub_22FA4B358;

    return MEMORY[0x2822009F8](v15, v16, v17);
  }

  sub_22FCC76B4();

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_22FA4AC14()
{

  sub_22FCC76B4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FA4ACF4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_22FA4B90C;
  }

  else
  {

    *(v4 + 336) = a1;
    v5 = sub_22FA4AE2C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FA4AE2C()
{
  v43 = v0;
  v1 = *(v0 + 336);
  *(v0 + 344) = 0;
  *(v0 + 352) = v1;
  v2 = *(v1 + 16);
  *(v0 + 16) = v2;
  v38 = *(v0 + 328);

  if (v2)
  {
    v6 = 0;
    v7 = *(v0 + 112);
    v41 = (v7 + 32);
    v8 = MEMORY[0x277D84F90];
    v39 = v2;
    v40 = v1;
    while (v6 < *(v1 + 16))
    {
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = *(v7 + 72);
      (*(v7 + 16))(*(v0 + 128), v1 + v9 + v10 * v6, *(v0 + 104));
      if (sub_22FCC7504())
      {
        v11 = *v41;
        (*v41)(*(v0 + 120), *(v0 + 128), *(v0 + 104));
        v42 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22FA86EC8(0, *(v8 + 16) + 1, 1);
          v8 = v42;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_22FA86EC8((v12 > 1), v13 + 1, 1);
          v8 = v42;
        }

        v14 = *(v0 + 120);
        v15 = *(v0 + 104);
        *(v8 + 16) = v13 + 1;
        v3 = v11(v8 + v9 + v13 * v10, v14, v15);
        v2 = v39;
        v1 = v40;
      }

      else
      {
        v3 = (*(v7 + 8))(*(v0 + 128), *(v0 + 104));
      }

      if (v2 == ++v6)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v8 = MEMORY[0x277D84F90];
LABEL_14:

  v16 = *(v8 + 16);

  *(v0 + 24) = v16;

  v17 = sub_22FCC8664();
  v18 = sub_22FCC8F34();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 104);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v42 = v21;
    *v20 = 134218498;
    *(v20 + 4) = *(v1 + 16);
    *(v20 + 12) = 2048;
    *(v20 + 14) = v16;

    *(v20 + 22) = 2080;

    v23 = MEMORY[0x2319080B0](v22, v19);
    v25 = v24;

    v26 = sub_22FA2F600(v23, v25, &v42);

    *(v20 + 24) = v26;
    _os_log_impl(&dword_22FA28000, v17, v18, "Validated %ld Search suggestion. %ld are valid. Suggestions: %s", v20, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x23190A000](v21, -1, -1);
    MEMORY[0x23190A000](v20, -1, -1);
  }

  else
  {
  }

  sub_22FCC8FF4();
  *(v0 + 360) = v38;
  if (!v38)
  {
    v29 = *(v0 + 232);
    v30 = *(v0 + 384);
    v31 = *(v0 + 160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7280, &qword_22FCD1B28);
    v32 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7288, &qword_22FCD1B30) - 8);
    v33 = v1;
    v34 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_22FCD1800;
    v36 = v35 + v34;
    v37 = v32[14];
    v29(v36, v30, v31);
    *(v36 + v37) = v33;

    *(v0 + 368) = sub_22FA4D050(v35);
    swift_setDeallocating();
    sub_22FA2B420(v36, &qword_27DAD7288, &qword_22FCD1B30);
    swift_deallocClassInstance();
    sub_22FCC6784();
    v4 = *(v0 + 248);
    v5 = *(v0 + 256);
    v3 = sub_22FA4B358;

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  sub_22FCC76B4();

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_22FA4B358()
{
  v1 = v0[45];
  sub_22FCC7A04();
  v0[47] = v1;
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  if (v1)
  {

    (*(v3 + 8))(v2, v4);

    v5 = sub_22FA4BF48;
  }

  else
  {
    (*(v3 + 8))(v0[26], v0[24]);

    v5 = sub_22FA4B44C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FA4B44C(uint64_t a1)
{
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 352);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);
    _os_log_impl(&dword_22FA28000, v2, v3, "Persisted %ld Search suggestions.", v5, 0xCu);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  v6 = *(v1 + 376);

  sub_22FCC8FF4();
  if (v6)
  {

    sub_22FCC76B4();

    v7 = *(v1 + 8);

    return v7();
  }

  else
  {
    v9 = *(v1 + 64);
    swift_beginAccess();
    v10 = *(v1 + 32);
    *v9 = *(v1 + 16);
    *(v9 + 16) = v10;

    sub_22FCC76B4();

    v11 = *(v1 + 8);
    v12 = *(v1 + 344);

    return v11(v12);
  }
}

uint64_t sub_22FA4B6B0()
{
  v1 = *(v0 + 264);
  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 264);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22FA28000, v3, v4, "Error fetching search suggestion last fetch date. %@", v7, 0xCu);
    sub_22FA2B420(v8, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  *(v0 + 388) = 1;
  v11 = sub_22FA3AF2C();
  *(v0 + 272) = v11;
  v12 = v11 + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_configuration;
  v13 = (v12 + *(type metadata accessor for PromptSuggestionFetcher.Configuration(0) + 20));
  v14 = v13[3];
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v18 = (*(v15 + 32) + **(v15 + 32));
  v16 = swift_task_alloc();
  *(v0 + 280) = v16;
  *v16 = v0;
  v16[1] = sub_22FA4A3F8;

  return v18(v14, v15);
}

uint64_t sub_22FA4B90C()
{
  v50 = v0;

  v1 = sub_22FCC6504();
  v2 = [v1 code];
  v3 = v1;
  v4 = sub_22FCC8664();
  v5 = sub_22FCC8F14();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 328);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v3;
    *v9 = v3;
    v10 = v3;
    _os_log_impl(&dword_22FA28000, v4, v5, "Error fetching search suggestions %@", v8, 0xCu);
    sub_22FA2B420(v9, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  else
  {
    v10 = v4;
    v4 = v3;
  }

  v11 = MEMORY[0x277D84F90];
  *(v0 + 344) = v2;
  *(v0 + 352) = v11;
  v12 = *(v11 + 16);
  *(v0 + 16) = v12;

  if (v12)
  {
    v16 = 0;
    v17 = *(v0 + 112);
    v47 = v12;
    v48 = (v17 + 32);
    v18 = v11;
    while (v16 < *(v11 + 16))
    {
      v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v20 = *(v17 + 72);
      (*(v17 + 16))(*(v0 + 128), v11 + v19 + v20 * v16, *(v0 + 104));
      if (sub_22FCC7504())
      {
        v21 = *v48;
        (*v48)(*(v0 + 120), *(v0 + 128), *(v0 + 104));
        v49 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22FA86EC8(0, *(v18 + 16) + 1, 1);
          v18 = v49;
        }

        v23 = *(v18 + 16);
        v22 = *(v18 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_22FA86EC8((v22 > 1), v23 + 1, 1);
          v18 = v49;
        }

        v24 = *(v0 + 120);
        v25 = *(v0 + 104);
        *(v18 + 16) = v23 + 1;
        v13 = v21(v18 + v19 + v23 * v20, v24, v25);
        v11 = MEMORY[0x277D84F90];
        v12 = v47;
      }

      else
      {
        v13 = (*(v17 + 8))(*(v0 + 128), *(v0 + 104));
      }

      if (v12 == ++v16)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = v11;
LABEL_17:
    v26 = MEMORY[0x277D84F90];

    v27 = *(v18 + 16);

    *(v0 + 24) = v27;

    v28 = sub_22FCC8664();
    v29 = sub_22FCC8F34();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 104);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v49 = v32;
      *v31 = 134218498;
      *(v31 + 4) = *(v26 + 16);
      *(v31 + 12) = 2048;
      *(v31 + 14) = v27;

      *(v31 + 22) = 2080;

      v34 = MEMORY[0x2319080B0](v33, v30);
      v36 = v35;

      v37 = sub_22FA2F600(v34, v36, &v49);

      *(v31 + 24) = v37;
      _os_log_impl(&dword_22FA28000, v28, v29, "Validated %ld Search suggestion. %ld are valid. Suggestions: %s", v31, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x23190A000](v32, -1, -1);
      MEMORY[0x23190A000](v31, -1, -1);
    }

    else
    {
    }

    sub_22FCC8FF4();
    *(v0 + 360) = 0;
    v38 = *(v0 + 232);
    v39 = *(v0 + 384);
    v40 = *(v0 + 160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7280, &qword_22FCD1B28);
    v41 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7288, &qword_22FCD1B30) - 8);
    v42 = (*(*v41 + 80) + 32) & ~*(*v41 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_22FCD1800;
    v44 = v43 + v42;
    v45 = v41[14];
    v38(v44, v39, v40);
    *(v44 + v45) = v26;

    *(v0 + 368) = sub_22FA4D050(v43);
    swift_setDeallocating();
    sub_22FA2B420(v44, &qword_27DAD7288, &qword_22FCD1B30);
    swift_deallocClassInstance();
    sub_22FCC6784();
    v14 = *(v0 + 248);
    v15 = *(v0 + 256);
    v13 = sub_22FA4B358;
  }

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22FA4BF48()
{

  sub_22FCC76B4();

  v1 = *(v0 + 8);

  return v1();
}

id PromptSuggestionCachingTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PromptSuggestionCachingTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22FA4C238()
{
  v1 = *(*v0 + OBJC_IVAR___PHAPromptSuggestionCachingTask_name);

  return v1;
}

uint64_t sub_22FA4C278()
{
  v1 = *(*v0 + OBJC_IVAR___PHAPromptSuggestionCachingTask_identifier);

  return v1;
}

uint64_t sub_22FA4C2E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72B8, &qword_22FCD1BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22FCD1800;
  *(v0 + 32) = sub_22FA3A77C(0, &qword_28147AE58, off_2788AF1E8);
  return v0;
}

uint64_t sub_22FA4C38C()
{
  v1 = *v0;
  v2 = [*(*(*v0 + OBJC_IVAR___PHAPromptSuggestionCachingTask_graphManager) + 112) photoLibrary];
  if ([v2 isSystemPhotoLibrary])
  {
    v3 = 1;
    v4 = _s13PhotoAnalysis27PromptSuggestionCachingTaskC13isMCAvailable12photoLibrary6logger22libraryProcessingCheckSbSo07PHPhotoJ0C_2os6LoggerVSbtFZ_0(v2, v1 + OBJC_IVAR___PHAPromptSuggestionCachingTask_logger, 1);

    if (v4)
    {
      return v3;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_22FA4C424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FA3C42C(a2, a3);
}

uint64_t sub_22FA4C4CC()
{
  v0 = sub_22FCC77B4();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277D3C278], v0, v3);
  v6 = sub_22FCC7794();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_22FA4C5BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA4C64C;

  return sub_22FA3B8B8();
}

uint64_t sub_22FA4C64C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_22FA4C748(uint64_t a1)
{
  if (a1)
  {
    sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    sub_22FCC8F24();
    sub_22FA3A77C(0, &qword_28147ADA0, 0x277D86200);
    v1 = sub_22FCC91B4();
    sub_22FCC85A4();
  }
}

uint64_t sub_22FA4C828()
{
  v1 = *(*v0 + OBJC_IVAR___PHAPromptSuggestionCachingTask_incrementalKey);

  return v1;
}

void sub_22FA4C868()
{
  v1 = type metadata accessor for PromptSuggestionFetcher.MCSuggestion(0);
  v23 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v24 = &v20 - v8;
  v22 = v0;
  v9 = *v0;
  v10 = *(*v0 + 16);
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    v12 = 0;
    v21 = v10 - 2;
    while (1)
    {
      v25 = 0;
      MEMORY[0x23190A010](&v25, 8, v7);
      v14 = (v25 * v10) >> 64;
      if (v10 > v25 * v10)
      {
        v15 = -v10 % v10;
        if (v15 > v25 * v10)
        {
          do
          {
            v25 = 0;
            MEMORY[0x23190A010](&v25, 8);
          }

          while (v15 > v25 * v10);
          v14 = (v25 * v10) >> 64;
        }
      }

      v16 = v12 + v14;
      if (__OFADD__(v12, v14))
      {
        break;
      }

      if (v12 != v16)
      {
        v17 = v9[2];
        if (v12 >= v17)
        {
          goto LABEL_19;
        }

        v18 = (*(v23 + 80) + 32) & ~*(v23 + 80);
        v19 = *(v23 + 72);
        sub_22FA4F8A8(v9 + v18 + v19 * v12, v24, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
        if (v16 >= v17)
        {
          goto LABEL_20;
        }

        sub_22FA4F8A8(v9 + v18 + v19 * v16, v4, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_22FB0F64C(v9);
        }

        if (v12 >= v9[2])
        {
          goto LABEL_21;
        }

        sub_22FA4F970(v4, v9 + v18 + v19 * v12);
        if (v16 >= v9[2])
        {
          goto LABEL_22;
        }

        sub_22FA4F970(v24, v9 + v18 + v19 * v16);
        v11 = v21;
        *v22 = v9;
      }

      --v10;
      if (v12++ == v11)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

uint64_t sub_22FA4CABC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_22FA2CF78(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_22FA4CB54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7328, &unk_22FCD1C60);
    v3 = sub_22FCC9524();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22FA2DB54(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FA4CC50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7348, &unk_22FCD2AA0);
    v3 = sub_22FCC9524();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22FA2DB54(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FA4CD4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72F8, &qword_22FCD1C30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7300, &qword_22FCD1C38);
    v8 = sub_22FCC9524();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22FA4FAA4(v10, v6, &qword_27DAD72F8, &qword_22FCD1C30);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22FA2DB54(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_22FCC8874();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FA4CF38(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7318, &qword_22FCD1C50);
  v3 = sub_22FCC9524();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  result = sub_22FA69F00(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v6;
    return v3;
  }

  v9 = (a1 + 9);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v10 = (v3[6] + 16 * result);
    *v10 = v4;
    v10[1] = v5;
    *(v3[7] + 8 * result) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 3;
    v4 = *(v9 - 2);
    v5 = *(v9 - 1);
    v15 = *v9;
    v16 = v6;
    result = sub_22FA69F00(v4, v5);
    v9 = v14;
    v6 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22FA4D050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7288, &qword_22FCD1B30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7290, &qword_22FCD1B38);
    v8 = sub_22FCC9524();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22FA4FAA4(v10, v6, &qword_27DAD7288, &qword_22FCD1B30);
      result = sub_22FA69FEC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22FCC74C4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FA4D238(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7320, &qword_22FCD1C58);
    v3 = sub_22FCC9524();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_22FA6A0C0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FA4D330(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7220, &unk_22FCD1A80);
    v3 = sub_22FCC9524();
    v4 = a1 + 32;

    while (1)
    {
      sub_22FA4FAA4(v4, &v13, &qword_27DAD7228, &unk_22FCD8BD0);
      v5 = v13;
      v6 = v14;
      result = sub_22FA2DB54(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22FA32554(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FA4D474(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72C0, &qword_22FCD1BF8);
    v3 = sub_22FCC9524();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22FA2DB54(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FA4D588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7250, &qword_22FCD1AB0);
    v3 = sub_22FCC9524();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 16);
      v8 = *(i - 15);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_22FA2DB54(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = v3[7] + 24 * result;
      *v14 = v7;
      *(v14 + 1) = v8;
      *(v14 + 8) = v10;
      *(v14 + 16) = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FA4D6AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7240, &qword_22FCD1AA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7248, &qword_22FCD1AA8);
    v8 = sub_22FCC9524();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22FA4FAA4(v10, v6, &qword_27DAD7240, &qword_22FCD1AA0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22FA2DB54(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for TaskRecord(0);
      result = sub_22FA4F9D4(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for TaskRecord);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FA4D894(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7238, &unk_22FCD29C0);
    v3 = sub_22FCC9524();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22FA2DB54(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FA4D998(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7258, &qword_22FCD1AB8);
    v3 = sub_22FCC9524();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22FA2DB54(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FA4DAB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7338, &unk_22FCD1C70);
    v3 = sub_22FCC9524();
    v4 = a1 + 32;

    while (1)
    {
      sub_22FA4FAA4(v4, &v13, &unk_27DAD8750, &qword_22FCD42C0);
      v5 = v13;
      v6 = v14;
      result = sub_22FA2DB54(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22FA32554(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FA4DBE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72D8, &qword_22FCD1C10);
    v3 = sub_22FCC9524();
    for (i = a1 + 32; ; i += 40)
    {
      sub_22FA4FAA4(i, &v11, &qword_27DAD72E0, &qword_22FCD1C18);
      v5 = v11;
      result = sub_22FA6A110(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_22FA32554(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FA4DD24(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_22FCC9524();
  v6 = a1[4];
  v7 = a1[5];
  result = sub_22FA6A110(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v7;
    return v5;
  }

  v10 = (a1 + 7);
  while (1)
  {
    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v5[6] + 8 * result) = v6;
    *(v5[7] + 8 * result) = v7;
    v11 = v5[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v5[2] = v13;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v6 = *(v10 - 1);
    v15 = *v10;
    v16 = v7;
    result = sub_22FA6A110(v6);
    v10 = v14;
    v7 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_22FA4DE18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7330, &unk_22FCD2A80);
  v3 = sub_22FCC9524();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_22FA6A228(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_22FA6A228(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22FA4DF3C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_22FCC9524();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_22FA2DB54(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FA4E038(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72E8, &qword_22FCD1C20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72F0, &qword_22FCD1C28);
    v8 = sub_22FCC9524();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22FA4FAA4(v10, v6, &qword_27DAD72E8, &qword_22FCD1C20);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22FA2DB54(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_22FCC7704();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22FA4E224(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7308, &qword_22FCD1C40);
    v3 = sub_22FCC9524();
    v4 = a1 + 32;

    while (1)
    {
      sub_22FA4FAA4(v4, &v13, &qword_27DAD7310, &qword_22FCD1C48);
      v5 = v13;
      v6 = v14;
      result = sub_22FA2DB54(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22FA2CF78(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t _s13PhotoAnalysis27PromptSuggestionCachingTaskC13isMCAvailable12photoLibrary6logger22libraryProcessingCheckSbSo07PHPhotoJ0C_2os6LoggerVSbtFZ_0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_22FCC8944();
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v59 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v60 = &v58 - v11;
  v12 = sub_22FCC8684();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v16 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v58 - v19;
  v21 = sub_22FCC8664();
  v22 = sub_22FCC8F04();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v64 = v14;
    v24 = v20;
    v25 = v16;
    v26 = v12;
    v27 = a2;
    v28 = a1;
    v29 = a3;
    v30 = v23;
    *v23 = 0;
    _os_log_impl(&dword_22FA28000, v21, v22, "Checking MC availability", v23, 2u);
    v31 = v30;
    a3 = v29;
    a1 = v28;
    a2 = v27;
    v12 = v26;
    v16 = v25;
    v20 = v24;
    MEMORY[0x23190A000](v31, -1, -1);
  }

  v67 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7340, &qword_22FCD1C80);
  swift_allocObject();
  v32 = sub_22FCC6E14();
  if (a3)
  {
    v33 = [objc_allocWithZone(MEMORY[0x277CD9878]) init];
    [v33 setValidateSpotlightAvailability_];
    v34 = [objc_allocWithZone(MEMORY[0x277CD9950]) initWithPhotoLibrary:a1 readOptions:v33];

    v35 = v34;
  }

  else
  {
    v34 = 0;
  }

  v36 = dispatch_group_create();
  dispatch_group_enter(v36);
  v37 = sub_22FCC8D14();
  (*(*(v37 - 8) + 56))(v20, 1, 1, v37);
  v38 = *(v13 + 16);
  v64 = a2;
  v38(v16, a2, v12);
  v39 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v40 = swift_allocObject();
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  *(v40 + 4) = v36;
  *(v40 + 5) = v34;
  v63 = v34;
  *(v40 + 6) = v32;
  (*(v13 + 32))(&v40[v39], v16, v12);
  v41 = v36;

  sub_22FC3EE08(0, 0, v20, &unk_22FCD1C90, v40);
  v42 = v59;
  sub_22FCC8924();
  if (qword_28147DAC0 != -1)
  {
    swift_once();
  }

  v43 = sub_22FCC88B4();
  __swift_project_value_buffer(v43, qword_28147DAC8);
  v44 = v60;
  sub_22FCC8934();
  v45 = v62;
  v46 = *(v61 + 8);
  v46(v42, v62);
  v47 = sub_22FCC8F64();
  v46(v44, v45);
  sub_22FCC8D54();
  if (v47)
  {
    v48 = sub_22FCC8664();
    v49 = sub_22FCC8F14();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v63;
    if (v50)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_22FA28000, v48, v49, "Error getting MC status due to timeout.", v52, 2u);
      MEMORY[0x23190A000](v52, -1, -1);
    }

    return 0;
  }

  else
  {

    v54 = sub_22FCC8664();
    v55 = sub_22FCC8F34();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 67109120;
      sub_22FCC6DF4();
      *(v56 + 4) = v65;

      _os_log_impl(&dword_22FA28000, v54, v55, "MC availability status %{BOOL}d", v56, 8u);
      MEMORY[0x23190A000](v56, -1, -1);
    }

    else
    {
    }

    v57 = v63;
    sub_22FCC6DF4();

    return v66;
  }
}

uint64_t sub_22FA4E974(uint64_t a1)
{
  *(a1 + 8) = sub_22FA4EA44(&qword_28147DAA0, type metadata accessor for PromptSuggestionCachingTask, MEMORY[0x277CC9E10]);
  result = sub_22FA4EA44(&qword_27DAD71A0, type metadata accessor for PromptSuggestionCachingTask, MEMORY[0x277D85380]);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for PromptSuggestionCachingTask(uint64_t a1)
{
  result = qword_28147DAA8;
  if (!qword_28147DAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FA4EA44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double keypath_getTm@<D0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;

  return result;
}

uint64_t sub_22FA4EAF0(uint64_t a1)
{
  result = sub_22FCC8684();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22FA4EC1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22FA4EC64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22FA4ECB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22FA4ECFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22FA4ED4C(BOOL *a1)
{
  result = (*(v1 + 16))();
  *a1 = (result & 1) == 0;
  return result;
}

unint64_t sub_22FA4ED8C()
{
  result = qword_28147AF40;
  if (!qword_28147AF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD7268, &unk_22FCDA240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147AF40);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_22FA4EE38()
{
  result = qword_27DAD7270;
  if (!qword_27DAD7270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD7270);
  }

  return result;
}

uint64_t sub_22FA4EE8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FA49B60(a1, v4, v5, (v1 + 4), v6);
}

unint64_t sub_22FA4EF4C()
{
  result = qword_28147AFC8;
  if (!qword_28147AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147AFC8);
  }

  return result;
}

unint64_t sub_22FA4EFA0()
{
  result = qword_28147ADF8;
  if (!qword_28147ADF8)
  {
    sub_22FA3A77C(255, &qword_28147AE00, 0x277CBEAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147ADF8);
  }

  return result;
}

uint64_t sub_22FA4F008(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FA2C21C;

  return sub_22FA46F24(a1, v4);
}

uint64_t sub_22FA4F0A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FA2C21C;

  return sub_22FA472EC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22FA4F170(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FA47BE8(a1, v4, v5, v6);
}

uint64_t sub_22FA4F224(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22FA4F28C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FA2C21C;

  return sub_22FA4931C(a1, v4, v5, v6, (v1 + 5), v7, v8, v9);
}

uint64_t sub_22FA4F368(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22FA2C21C;

  return sub_22FA4971C(a1, v5, v4);
}

uint64_t sub_22FA4F414(uint64_t a1)
{
  v3 = *(type metadata accessor for PromptSuggestionFetcher.MCSuggestion(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[3];
  v13 = v1[2];
  v8 = v1[4];
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22FA2C030;

  return sub_22FA487F4(a1, v13, v7, v8, v1 + v4, v1 + v5, v9, v10);
}

uint64_t sub_22FA4F58C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FB6DE08(a1, v4, v5, v6);
}

uint64_t sub_22FA4F64C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22FCC8684() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v1 + 2);
  v8 = *(v1 + 3);
  v9 = v1[4];
  v10 = *(v1 + 5);
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_22FA2C21C;

  return sub_22FB6E61C(v9, a1, v7, v8, v10, v1 + v6, v11);
}

uint64_t sub_22FA4F788(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FB6F4BC(a1, v4, v5, v6);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22FA4F8A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FA4F910(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FA4F970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptSuggestionFetcher.MCSuggestion(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FA4F9D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FA4FA3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_22FA4FAA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22FA4FB0C(uint64_t a1)
{
  v4 = *(sub_22FCC8684() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22FA2C030;

  return sub_22FA469A0(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t getEnumTagSinglePayload for PromptSuggestionCachingTask.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PromptSuggestionCachingTask.Error(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_22FA4FDA0()
{
  result = qword_27DAD7350;
  if (!qword_27DAD7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD7350);
  }

  return result;
}

uint64_t sub_22FA4FE04()
{
  v0 = sub_22FCC8F84();
  MEMORY[0x28223BE20](v0, v1);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22FCC8F94();
  v3 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v4);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22FCC8914();
  v26 = *(v6 - 8);
  v7 = v26;
  v27 = v6;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v25 - v13;
  v15 = type metadata accessor for FeaturedContentActivityTaskSource();
  v17 = sub_22FA51968(qword_28147CE20, v16, type metadata accessor for FeaturedContentActivityTaskSource, &unk_22FCD1DA0);
  sub_22FCC8904();
  v18 = type metadata accessor for BackgroundSystemTask();
  v19 = swift_allocObject();
  v19[1] = 0u;
  v19[2] = 0u;
  v19[3] = 0u;
  *(v19 + 57) = 0u;
  v32[3] = v18;
  v32[4] = &off_2844A92C8;
  v32[0] = v19;
  type metadata accessor for Activity(0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_delegate + 8) = 0;
  swift_unknownObjectUnownedInit();
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_monitorTimer) = 0;
  v21 = v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralRequestTime;
  *v21 = 0;
  *(v21 + 8) = 1;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralHasTimedOut) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_taskSchedulingTask) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_cancellationTask) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_runtimeError) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_isActive) = 0;
  *(v20 + 24) = 0xD000000000000028;
  *(v20 + 32) = 0x800000022FCDF7A0;
  *(v20 + 40) = v15;
  *(v20 + 48) = v17;
  *(v20 + 56) = 0;
  sub_22FA2D328(v32, v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask);
  sub_22FCC8674();
  v25 = sub_22FA5191C();
  v22 = v27;
  (*(v7 + 16))(v10, v14, v27);
  (*(v3 + 104))(v28, *MEMORY[0x277D85268], v29);
  v31 = MEMORY[0x277D84F90];
  sub_22FA51968(&qword_28147AEA0, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7360, &qword_22FCD58D0);
  sub_22FA519B0();
  sub_22FCC9264();
  v23 = sub_22FCC8FC4();
  (*(v26 + 8))(v14, v22);
  __swift_destroy_boxed_opaque_existential_0(v32);
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_queue) = v23;
  return v20;
}

uint64_t sub_22FA502A8(uint64_t a1, uint64_t a2)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  return MEMORY[0x2822009F8](sub_22FA502C8, v2, 0);
}

uint64_t sub_22FA502C8()
{
  v1 = *(*(v0 + 56) + 112);
  sub_22FA2E6E4(*(v0 + 64), v0 + 16);
  v2 = type metadata accessor for FeaturedCollectionElectionTask();
  v3 = swift_allocObject();

  v5 = sub_22FBD5570(v4, v1, v0 + 16, v3);
  v6 = sub_22FAC2350(0, 1, 1, MEMORY[0x277D84F90]);
  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_22FAC2350((v7 > 1), v8 + 1, 1, v6);
  }

  v9 = *(v0 + 64);
  *(v0 + 40) = v2;
  *(v0 + 48) = sub_22FA51968(&qword_28147D440, 255, type metadata accessor for FeaturedCollectionElectionTask, &unk_22FCD8EC8);
  *(v0 + 16) = v5;
  v6[2] = v8 + 1;
  sub_22FA2CF78((v0 + 16), &v6[5 * v8 + 4]);
  sub_22FA2E6E4(v9, v0 + 16);
  v10 = type metadata accessor for AlchemistGenerationTask(0);
  v11 = swift_allocObject();

  v13 = sub_22FBD4F0C(v12, v1, v0 + 16, v11);
  v15 = v6[2];
  v14 = v6[3];
  if (v15 >= v14 >> 1)
  {
    v6 = sub_22FAC2350((v14 > 1), v15 + 1, 1, v6);
  }

  v16 = *(v0 + 64);
  *(v0 + 40) = v10;
  *(v0 + 48) = sub_22FA51968(&qword_28147F498, 255, type metadata accessor for AlchemistGenerationTask, &unk_22FCD4F48);
  *(v0 + 16) = v13;
  v6[2] = v15 + 1;
  sub_22FA2CF78((v0 + 16), &v6[5 * v15 + 4]);
  [objc_allocWithZone(PHAMemoryElectionTask) init];
  sub_22FA2E6E4(v16, v0 + 16);

  v17 = sub_22FC3CDC4();

  v19 = v6[2];
  v18 = v6[3];
  if (v19 >= v18 >> 1)
  {
    v6 = sub_22FAC2350((v18 > 1), v19 + 1, 1, v6);
  }

  v20 = *(v0 + 64);
  v75 = type metadata accessor for LegacyTask();
  *(v0 + 40) = v75;
  v21 = sub_22FA51968(&qword_281481AE0, 255, type metadata accessor for LegacyTask, &unk_22FCD5A78);
  *(v0 + 48) = v21;
  *(v0 + 16) = v17;
  v6[2] = v19 + 1;
  sub_22FA2CF78((v0 + 16), &v6[5 * v19 + 4]);
  [objc_allocWithZone(PHASuggestionGenerationTask) init];
  sub_22FA2E6E4(v20, v0 + 16);

  v22 = sub_22FC3CDC4();

  v24 = v6[2];
  v23 = v6[3];
  if (v24 >= v23 >> 1)
  {
    v6 = sub_22FAC2350((v23 > 1), v24 + 1, 1, v6);
  }

  v25 = *(v0 + 64);
  *(v0 + 40) = v75;
  *(v0 + 48) = v21;
  *(v0 + 16) = v22;
  v6[2] = v24 + 1;
  sub_22FA2CF78((v0 + 16), &v6[5 * v24 + 4]);
  [objc_allocWithZone(PHAMemoriesEnrichmentTask) init];
  sub_22FA2E6E4(v25, v0 + 16);

  v26 = sub_22FC3CDC4();

  v28 = v6[2];
  v27 = v6[3];
  if (v28 >= v27 >> 1)
  {
    v6 = sub_22FAC2350((v27 > 1), v28 + 1, 1, v6);
  }

  v29 = *(v0 + 64);
  *(v0 + 40) = v75;
  *(v0 + 48) = v21;
  *(v0 + 16) = v26;
  v6[2] = v28 + 1;
  sub_22FA2CF78((v0 + 16), &v6[5 * v28 + 4]);
  sub_22FA2E6E4(v29, v0 + 16);
  v30 = type metadata accessor for PromptSuggestionCachingTask(0);
  v31 = objc_allocWithZone(v30);

  v33 = sub_22FBA446C(v32, v1, v0 + 16, v31);

  v35 = v6[2];
  v34 = v6[3];
  if (v35 >= v34 >> 1)
  {
    v6 = sub_22FAC2350((v34 > 1), v35 + 1, 1, v6);
  }

  v36 = *(v0 + 64);
  *(v0 + 40) = v30;
  *(v0 + 48) = sub_22FA51968(&qword_28147DAB8, 255, type metadata accessor for PromptSuggestionCachingTask, &unk_22FCD18B0);
  *(v0 + 16) = v33;
  v6[2] = v35 + 1;
  sub_22FA2CF78((v0 + 16), &v6[5 * v35 + 4]);
  sub_22FA2E6E4(v36, v0 + 16);
  v37 = type metadata accessor for WhimsicalPromptSuggestionTask(0);
  v38 = objc_allocWithZone(v37);

  v40 = sub_22FA5103C(v39, v1, v0 + 16, v38);

  v42 = v6[2];
  v41 = v6[3];
  if (v42 >= v41 >> 1)
  {
    v6 = sub_22FAC2350((v41 > 1), v42 + 1, 1, v6);
  }

  v43 = *(v0 + 64);
  *(v0 + 40) = v37;
  *(v0 + 48) = sub_22FA51968(qword_28147D488, 255, type metadata accessor for WhimsicalPromptSuggestionTask, &unk_22FCD88C0);
  *(v0 + 16) = v40;
  v6[2] = v42 + 1;
  sub_22FA2CF78((v0 + 16), &v6[5 * v42 + 4]);
  sub_22FA2E6E4(v43, v0 + 16);
  v44 = type metadata accessor for ContextualPromptSuggestionTask(0);
  v45 = objc_allocWithZone(v44);

  v47 = sub_22FA51540(v46, v1, v0 + 16, v45);

  v49 = v6[2];
  v48 = v6[3];
  if (v49 >= v48 >> 1)
  {
    v6 = sub_22FAC2350((v48 > 1), v49 + 1, 1, v6);
  }

  v50 = *(v0 + 64);
  *(v0 + 40) = v44;
  *(v0 + 48) = sub_22FA51968(&qword_28147D468, 255, type metadata accessor for ContextualPromptSuggestionTask, &unk_22FCD4650);
  *(v0 + 16) = v47;
  v6[2] = v49 + 1;
  sub_22FA2CF78((v0 + 16), &v6[5 * v49 + 4]);
  sub_22FA2E6E4(v50, v0 + 16);
  v51 = type metadata accessor for StylesOnboardingSuggestionGenerationTask();
  v52 = swift_allocObject();

  v54 = sub_22FA50E38(v53, v1, v0 + 16, v52);
  v56 = v6[2];
  v55 = v6[3];
  if (v56 >= v55 >> 1)
  {
    v6 = sub_22FAC2350((v55 > 1), v56 + 1, 1, v6);
  }

  v57 = *(v0 + 64);
  *(v0 + 40) = v51;
  *(v0 + 48) = sub_22FA51968(&qword_28147BAE8, 255, type metadata accessor for StylesOnboardingSuggestionGenerationTask, &unk_22FCD8430);
  *(v0 + 16) = v54;
  v6[2] = v56 + 1;
  sub_22FA2CF78((v0 + 16), &v6[5 * v56 + 4]);
  [objc_allocWithZone(PHAPhotosChallengeTask) init];
  sub_22FA2E6E4(v57, v0 + 16);

  v58 = sub_22FC3CDC4();

  v60 = v6[2];
  v59 = v6[3];
  if (v60 >= v59 >> 1)
  {
    v6 = sub_22FAC2350((v59 > 1), v60 + 1, 1, v6);
  }

  v61 = *(v0 + 64);
  *(v0 + 40) = v75;
  *(v0 + 48) = v21;
  *(v0 + 16) = v58;
  v6[2] = v60 + 1;
  sub_22FA2CF78((v0 + 16), &v6[5 * v60 + 4]);
  sub_22FA2E6E4(v61, v0 + 16);
  v62 = type metadata accessor for FeaturedPhotosWidgetSpatial3DGenerationTask();
  swift_allocObject();

  v64 = sub_22FBD629C(v63, v0 + 16, 0);
  v66 = v6[2];
  v65 = v6[3];
  if (v66 >= v65 >> 1)
  {
    v6 = sub_22FAC2350((v65 > 1), v66 + 1, 1, v6);
  }

  v67 = *(v0 + 64);
  *(v0 + 40) = v62;
  *(v0 + 48) = sub_22FA51968(&unk_27DAD83B0, 255, type metadata accessor for FeaturedPhotosWidgetSpatial3DGenerationTask, &unk_22FCDC318);
  *(v0 + 16) = v64;
  v6[2] = v66 + 1;
  sub_22FA2CF78((v0 + 16), &v6[5 * v66 + 4]);
  sub_22FA2E6E4(v67, v0 + 16);
  v68 = type metadata accessor for FeaturedPhotosOneUpSpatial3DGenerationTask();
  swift_allocObject();

  v70 = sub_22FB5B598(v69, v0 + 16);
  v72 = v6[2];
  v71 = v6[3];
  if (v72 >= v71 >> 1)
  {
    v6 = sub_22FAC2350((v71 > 1), v72 + 1, 1, v6);
  }

  *(v0 + 40) = v68;
  *(v0 + 48) = sub_22FA51968(&qword_27DAD7358, 255, type metadata accessor for FeaturedPhotosOneUpSpatial3DGenerationTask, &unk_22FCD86F8);
  *(v0 + 16) = v70;
  v6[2] = v72 + 1;
  sub_22FA2CF78((v0 + 16), &v6[5 * v72 + 4]);
  v73 = *(v0 + 8);

  return v73(v6);
}

uint64_t sub_22FA50D04()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FA50DA4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FeaturedContentActivityTaskSource();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a1 = v2;
  return result;
}

uint64_t sub_22FA50DE0(uint64_t a1, uint64_t a2)
{
  result = sub_22FA51968(qword_28147CE20, a2, type metadata accessor for FeaturedContentActivityTaskSource, &unk_22FCD1DA0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FA50E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22FCC67F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[3] = type metadata accessor for MomentGraphWorker();
  v21[4] = sub_22FA51968(&qword_281480230, 255, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  v21[0] = a1;
  *(a4 + 64) = 0xD000000000000028;
  *(a4 + 72) = 0x800000022FCDFC70;
  sub_22FCC67E4();
  v13 = sub_22FCC67B4();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  *(a4 + 80) = v13;
  *(a4 + 88) = v15;
  *(a4 + 96) = xmmword_22FCD1D60;
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  *(a4 + 128) = 1;
  sub_22FA2D328(v21, a4 + 16);
  *(a4 + 184) = a2;
  v16 = *(a2 + 112);

  *(a4 + 176) = [v16 photoLibrary];
  LODWORD(v16) = PFUserHasSetSmartStyle();

  __swift_destroy_boxed_opaque_existential_0(v21);
  v17 = 604800.0;
  if (v16)
  {
    v17 = 2629800.0;
  }

  *(a4 + 56) = v17;
  v18 = *(a3 + 16);
  *(a4 + 136) = *a3;
  *(a4 + 152) = v18;
  *(a4 + 168) = *(a3 + 32);
  return a4;
}

id sub_22FA5103C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v42 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_22FCC67F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[3] = type metadata accessor for MomentGraphWorker();
  v47[4] = sub_22FA51968(&qword_281480230, 255, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  v47[0] = a1;
  *&a4[OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_version] = 1;
  a4[OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_shouldRecordCompletion] = 1;
  v12 = &a4[OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_name];
  *v12 = 0xD00000000000001DLL;
  v12[1] = 0x800000022FCDFCF0;
  v13 = &a4[OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_identifier];
  sub_22FCC67E4();
  v14 = sub_22FCC67B4();
  v16 = v15;
  (*(v8 + 8))(v11, v7);
  *v13 = v14;
  v13[1] = v16;
  *&a4[OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_priority] = 4;
  *&a4[OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_periodicity] = 0x4122750000000000;
  v17 = &a4[OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_incrementalKey];
  *v17 = 0;
  v17[1] = 0;
  *&a4[OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_recordsInserted] = 0;
  sub_22FCC8674();
  sub_22FCC8674();
  sub_22FA2D328(v47, &a4[OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_worker]);
  v18 = *(*(a2 + 120) + 112);
  v19 = OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_photoLibrary;
  *&a4[OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_photoLibrary] = v18;
  sub_22FA2E6E4(v42, &a4[OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_taskProductivityReporter]);
  v20 = type metadata accessor for LocalizedStringProvider();
  v21 = swift_allocObject();
  v22 = type metadata accessor for CreativePromptTemplateCache(0);
  v23 = swift_allocObject();
  v45 = v20;
  v46 = &protocol witness table for LocalizedStringProvider;
  *&v44 = v21;
  v24 = OBJC_IVAR____TtC13PhotoAnalysis27CreativePromptTemplateCache_logger;
  v25 = qword_28147DC70;
  v26 = v18;

  if (v25 != -1)
  {
    swift_once();
  }

  v27 = sub_22FCC8684();
  v28 = __swift_project_value_buffer(v27, qword_281487DA0);
  (*(*(v27 - 8) + 16))(v23 + v24, v28, v27);
  *(v23 + 16) = 0;
  sub_22FA2CF78(&v44, v23 + OBJC_IVAR____TtC13PhotoAnalysis27CreativePromptTemplateCache_localizedStringProvider);
  v29 = type metadata accessor for CreativePromptValidator(0);
  swift_allocObject();

  v31 = sub_22FB711B4(v30);
  v32 = type metadata accessor for WhimsicalPromptProvider(0);
  v33 = swift_allocObject();
  v34 = (v33 + OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_templateCache);
  v34[3] = v22;
  v34[4] = &protocol witness table for CreativePromptTemplateCache;
  *v34 = v23;
  v35 = (v33 + OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_validator);
  v35[3] = v29;
  v35[4] = &off_2844ABB58;
  *v35 = v31;
  sub_22FCC8674();

  v36 = &a4[OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_promptProvider];
  v36[3] = v32;
  v36[4] = &protocol witness table for WhimsicalPromptProvider;
  *v36 = v33;
  v37 = *&a4[v19];
  sub_22FCC7E94();
  swift_allocObject();
  v38 = v37;
  *&a4[OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_persister] = sub_22FCC7E44();
  v43.receiver = a4;
  v43.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v43, sel_init);
  sub_22FA518B4(v42);
  __swift_destroy_boxed_opaque_existential_0(v47);
  return v39;
}

id sub_22FA51540(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v29 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_22FCC67F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[3] = type metadata accessor for MomentGraphWorker();
  v32[4] = sub_22FA51968(&qword_281480230, 255, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  v32[0] = a1;
  *&a4[OBJC_IVAR___PHAContextualPromptSuggestionTask_version] = 1;
  a4[OBJC_IVAR___PHAContextualPromptSuggestionTask_shouldRecordCompletion] = 1;
  v12 = &a4[OBJC_IVAR___PHAContextualPromptSuggestionTask_name];
  *v12 = 0xD00000000000001ELL;
  v12[1] = 0x800000022FCDFCA0;
  v13 = &a4[OBJC_IVAR___PHAContextualPromptSuggestionTask_identifier];
  sub_22FCC67E4();
  v14 = sub_22FCC67B4();
  v16 = v15;
  (*(v8 + 8))(v11, v7);
  *v13 = v14;
  v13[1] = v16;
  *&a4[OBJC_IVAR___PHAContextualPromptSuggestionTask_priority] = 4;
  *&a4[OBJC_IVAR___PHAContextualPromptSuggestionTask_periodicity] = 0x40F5180000000000;
  v17 = &a4[OBJC_IVAR___PHAContextualPromptSuggestionTask_incrementalKey];
  *v17 = 0;
  v17[1] = 0;
  *&a4[OBJC_IVAR___PHAContextualPromptSuggestionTask_recordsInserted] = 0;
  v18 = OBJC_IVAR___PHAContextualPromptSuggestionTask_staleEntryAge;
  sub_22FCC8E04();
  *&a4[v18] = v19 + v19;
  sub_22FCC8674();
  sub_22FCC8674();
  sub_22FA2D328(v32, &a4[OBJC_IVAR___PHAContextualPromptSuggestionTask_worker]);
  v20 = *(*(a2 + 120) + 112);
  *&a4[OBJC_IVAR___PHAContextualPromptSuggestionTask_photoLibrary] = v20;
  v21 = v29;
  sub_22FA2E6E4(v29, &a4[OBJC_IVAR___PHAContextualPromptSuggestionTask_taskProductivityReporter]);
  sub_22FCC7E94();
  swift_allocObject();
  v22 = v20;
  *&a4[OBJC_IVAR___PHAContextualPromptSuggestionTask_persister] = sub_22FCC7E44();

  v24 = sub_22FC5178C(v23);
  v25 = &a4[OBJC_IVAR___PHAContextualPromptSuggestionTask_promptProvider];
  v25[3] = type metadata accessor for ContextualPromptProvider(0);
  v25[4] = &protocol witness table for ContextualPromptProvider;
  *v25 = v24;
  v31.receiver = a4;
  v31.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v31, sel_init);
  sub_22FA518B4(v21);
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v26;
}

uint64_t sub_22FA518B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD83A0, &qword_22FCD1AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22FA5191C()
{
  result = qword_28147AE98;
  if (!qword_28147AE98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28147AE98);
  }

  return result;
}

uint64_t sub_22FA51968(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_22FA519B0()
{
  result = qword_28147AF20;
  if (!qword_28147AF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD7360, &qword_22FCD58D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147AF20);
  }

  return result;
}

uint64_t sub_22FA51A14(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_22FA51A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v8 = sub_22FCC84E4();
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA51B44, 0, 0);
}

uint64_t sub_22FA51B44()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_22FCC8414();
  v3 = *(v2 + OBJC_IVAR____TtC13PhotoAnalysis48PromptSuggestionMeaningfulEventGroundingProvider_graphManager);
  *(v0 + 120) = v3;
  if ([*(v3 + 112) isReady])
  {
    v4 = *(v0 + 72);
    swift_getKeyPath();
    v5 = MEMORY[0x277D84F90];
    v34 = MEMORY[0x277D84F90];
    v6 = -1;
    v7 = -1 << *(v4 + 32);
    if (-v7 < 64)
    {
      v6 = ~(-1 << -v7);
    }

    v8 = v6 & *(v4 + 64);
    v9 = (63 - v7) >> 6;
    v10 = swift_bridgeObjectRetain_n();
    v13 = 0;
    if (v8)
    {
      while (1)
      {
        v14 = v13;
LABEL_10:
        v15 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        *(v0 + 24) = *(*(v4 + 56) + ((v14 << 9) | (8 * v15)));

        swift_getAtKeyPath();

        v10 = sub_22FA68618(*(v0 + 16));
        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        return MEMORY[0x2822009F8](v10, v11, v12);
      }

      if (v14 >= v9)
      {
        break;
      }

      v8 = *(v4 + 64 + 8 * v14);
      ++v13;
      if (v8)
      {
        v13 = v14;
        goto LABEL_10;
      }
    }

    v22 = *(v34 + 16);
    if (v22)
    {
      v23 = 0;
      while (v23 < *(v34 + 16))
      {
        v24 = v23 + 1;

        v10 = sub_22FA6835C(v25);
        v23 = v24;
        if (v22 == v24)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_28;
    }

LABEL_21:
    v26 = *(v0 + 64);

    sub_22FAA99B0(v5);

    v27 = sub_22FCC7D04();
    *(v0 + 128) = v27;

    if (v26)
    {
      v28 = sub_22FCC7D04();
      v29 = sub_22FAA598C(v28);
    }

    else
    {
      v29 = 0;
    }

    *(v0 + 136) = v29;
    v30 = *(v0 + 88);
    v31 = *(v0 + 56);
    v33 = *(v0 + 40);
    v32 = swift_task_alloc();
    *(v0 + 144) = v32;
    *(v32 + 16) = v30;
    *(v32 + 24) = v27;
    *(v32 + 32) = v33;
    *(v32 + 48) = v31;
    *(v32 + 56) = v29;
    v10 = sub_22FA51F44;
    v11 = v3;
    v12 = 0;

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v16 = sub_22FCC8664();
    v17 = sub_22FCC8F14();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22FA28000, v16, v17, "Graph isn't ready", v18, 2u);
      MEMORY[0x23190A000](v18, -1, -1);
    }

    v19 = *(v0 + 80);

    sub_22FA530B8();
    swift_allocError();
    swift_willThrow();
    __swift_project_boxed_opaque_existential_1(v19, v1[3]);
    sub_22FCC83F4();
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_22FA51F44()
{
  v1 = [*(v0[15] + 112) workingContext];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7370, &qword_22FCD1EC8);
  sub_22FCC9114();
  v0[19] = 0;

  v0[20] = v0[4];

  return MEMORY[0x2822009F8](sub_22FA52060, 0, 0);
}

uint64_t sub_22FA52060()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_22FCC83F4();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];
  v6 = v0[20];

  return v5(v6);
}

uint64_t sub_22FA52124()
{
  v1 = v0[10];

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_22FCC83F4();
  (*(v0[13] + 8))(v0[14], v0[12]);

  v2 = v0[1];

  return v2();
}

void sub_22FA521E0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v22[0] = a8;
  v22[1] = a7;
  v10 = sub_22FCC6B84();
  v11 = *(v10 - 8);
  *&v13 = MEMORY[0x28223BE20](v10, v12).n128_u64[0];
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [*(*(a2 + OBJC_IVAR____TtC13PhotoAnalysis48PromptSuggestionMeaningfulEventGroundingProvider_graphManager) + 112) photoLibrary];
  v17 = a1;

  sub_22FCC6B74();
  v18 = [objc_opt_self() ignoreProgress];
  v19 = v22[3];
  v20 = sub_22FCC6B64();
  if (v19)
  {
    (*(v11 + 8))(v15, v10);
  }

  else
  {
    v21 = v20;
    (*(v11 + 8))(v15, v10);

    *v22[0] = v21;
  }
}

uint64_t sub_22FA523A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_22FCC84E4();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA52464, 0, 0);
}

uint64_t sub_22FA52464()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_22FCC8414();
  v3 = *(v2 + OBJC_IVAR____TtC13PhotoAnalysis48PromptSuggestionMeaningfulEventGroundingProvider_graphManager);
  v0[15] = v3;
  if ([*(v3 + 112) isReady])
  {
    v4 = v0[11];
    v5 = v0[9];
    v6 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_22FA5310C;
    v0[7] = v6;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_22FA51A14;
    v0[5] = &block_descriptor_1;
    v7 = _Block_copy(v0 + 2);
    v8 = objc_opt_self();

    v9 = [v8 progressReporterWithProgressBlock_];
    v0[16] = v9;
    _Block_release(v7);

    v10 = swift_task_alloc();
    v0[17] = v10;
    v10[2] = v4;
    v10[3] = v5;
    v10[4] = v9;

    return MEMORY[0x2822009F8](sub_22FA5276C, v3, 0);
  }

  else
  {
    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F14();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22FA28000, v11, v12, "Graph isn't ready", v13, 2u);
      MEMORY[0x23190A000](v13, -1, -1);
    }

    v14 = v0[10];

    sub_22FA530B8();
    swift_allocError();
    swift_willThrow();
    __swift_project_boxed_opaque_existential_1(v14, v1[3]);
    sub_22FCC83F4();
    (*(v0[13] + 8))(v0[14], v0[12]);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_22FA5276C()
{
  v1 = [*(*(v0 + 120) + 112) workingContext];
  sub_22FCC8224();
  sub_22FCC9114();
  *(v0 + 144) = 0;

  return MEMORY[0x2822009F8](sub_22FA52860, 0, 0);
}

uint64_t sub_22FA52860()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_22FCC83F4();
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22FA52924()
{
  v1 = *(v0 + 80);

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_22FCC83F4();
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

  v2 = *(v0 + 8);

  return v2();
}

void sub_22FA529E4(double a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8F04();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = a1;
      _os_log_impl(&dword_22FA28000, v4, v5, "Filter location by moment location hierarchy at progress %f", v6, 0xCu);
      MEMORY[0x23190A000](v6, -1, -1);
    }
  }
}

uint64_t sub_22FA52AD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22FCC6C54();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x28223BE20](v6, v8).n128_u64[0];
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*(*(a2 + OBJC_IVAR____TtC13PhotoAnalysis48PromptSuggestionMeaningfulEventGroundingProvider_graphManager) + 112) photoLibrary];
  v13 = a1;
  sub_22FCC6C44();
  sub_22FCC6C34();
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_22FA52C14()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis48PromptSuggestionMeaningfulEventGroundingProvider_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13PhotoAnalysis48PromptSuggestionMeaningfulEventGroundingProvider_storyPhotoLibraryContext;
  v4 = sub_22FCC7E14();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PromptSuggestionMeaningfulEventGroundingProvider(uint64_t a1)
{
  result = qword_28147B8E8;
  if (!qword_28147B8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FA52D54(uint64_t a1)
{
  result = sub_22FCC8684();
  if (v2 <= 0x3F)
  {
    result = sub_22FCC7E14();
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

uint64_t sub_22FA52E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FA52F04;

  return sub_22FA51A78(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22FA52F04(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_22FA53004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FA2C030;

  return sub_22FA523A0(a1, a2, a3);
}

unint64_t sub_22FA530B8()
{
  result = qword_27DAD7368;
  if (!qword_27DAD7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD7368);
  }

  return result;
}

unint64_t sub_22FA53174()
{
  result = qword_27DAD7378;
  if (!qword_27DAD7378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD7378);
  }

  return result;
}

uint64_t sub_22FA531C8()
{
  v0 = sub_22FCC65F4();
  __swift_allocate_value_buffer(v0, qword_27DAD7380);
  __swift_project_value_buffer(v0, qword_27DAD7380);
  v1 = NSTemporaryDirectory();
  sub_22FCC8A84();

  sub_22FCC6544();
}

uint64_t sub_22FA53260()
{
  v0 = sub_22FCC65F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v5, qword_27DAD7398);
  __swift_project_value_buffer(v0, qword_27DAD7398);
  if (qword_27DAD6E38 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27DAD7380);
  (*(v1 + 16))(v4, v6, v0);
  sub_22FCC6574();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_22FA533B8()
{
  sub_22FA3A77C(0, &qword_28147ADA0, 0x277D86200);
  result = sub_22FCC91C4();
  qword_28147D600 = result;
  return result;
}

uint64_t sub_22FA53430()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_28147D5D8);
  __swift_project_value_buffer(v0, qword_28147D5D8);
  if (qword_28147D5F8 != -1)
  {
    swift_once();
  }

  v1 = qword_28147D600;
  return sub_22FCC8694();
}

uint64_t sub_22FA534BC()
{
  if (([*(v0 + 176) isSystemPhotoLibrary] & 1) == 0)
  {
    if (qword_28147D5D0 != -1)
    {
      swift_once();
    }

    v1 = sub_22FCC8684();
    __swift_project_value_buffer(v1, qword_28147D5D8);
    v2 = sub_22FCC8664();
    v3 = sub_22FCC8EF4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_22FA28000, v2, v3, "Task will not run: Task can only run on system library", v4, 2u);
      MEMORY[0x23190A000](v4, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_22FA535AC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73B0, &qword_22FCD2138);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = sub_22FCC65F4();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = sub_22FCC8494();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA537A0, 0, 0);
}

uint64_t sub_22FA537A0()
{
  if (qword_28147D5F8 != -1)
  {
    swift_once();
  }

  v1 = qword_28147D600;
  sub_22FCC76D4();
  swift_allocObject();
  v2 = v1;
  v0[20] = sub_22FCC76C4();

  sub_22FCC84A4();
  sub_22FCC8464();
  v4 = v0[7];
  v3 = v0[8];
  v5 = swift_task_alloc();
  v0[21] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_22FA53A44;
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 36, 0, 0, 0xD00000000000001CLL, 0x800000022FCE0010, sub_22FA577C8, v5, v7);
}

uint64_t sub_22FA53A44()
{

  return MEMORY[0x2822009F8](sub_22FA53B88, 0, 0);
}

uint64_t sub_22FA53B88()
{
  if (*(v0 + 288) == 1)
  {
    if (qword_28147D5D0 != -1)
    {
      swift_once();
    }

    v1 = sub_22FCC8684();
    __swift_project_value_buffer(v1, qword_28147D5D8);
    v2 = sub_22FCC8664();
    v3 = sub_22FCC8F34();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_22FA28000, v2, v3, "Descriptor already exists for type UpgradeSuggestionGyroPoster. Quitting...", v4, 2u);
      MEMORY[0x23190A000](v4, -1, -1);
    }

    v5 = *(v0 + 144);
    v6 = *(v0 + 56);

    *(v6 + OBJC_IVAR____TtC13PhotoAnalysis29Spatial3DPosterOnboardingTask_posterOnboardingSucceeded) = 1;
    (*(v5 + 8))(*(v0 + 152), *(v0 + 136));
    sub_22FCC76B4();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 184) = v9;
    *v9 = v0;
    v9[1] = sub_22FA53DE4;

    return sub_22FA554D4();
  }
}

uint64_t sub_22FA53DE4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_22FA553E8;
  }

  else
  {
    v4 = sub_22FA53F24;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_22FA53F24()
{
  v139 = v0;
  v138[1] = *MEMORY[0x277D85DE8];
  if (qword_28147D5D0 != -1)
  {
    swift_once();
  }

  v1 = sub_22FCC8684();
  *(v0 + 208) = __swift_project_value_buffer(v1, qword_28147D5D8);
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8EF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22FA28000, v2, v3, "Successfully fetched selected configuration", v4, 2u);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v5 = *(v0 + 192);

  v6 = [v5 providerBundleIdentifier];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = sub_22FCC8A84();
  v10 = v9;

  if (v8 == 0xD00000000000002ELL && 0x800000022FCE0030 == v10)
  {

    goto LABEL_10;
  }

  v11 = sub_22FCC9704();

  if ((v11 & 1) == 0)
  {
LABEL_14:
    v22 = sub_22FCC8664();
    v23 = sub_22FCC8F34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22FA28000, v22, v23, "Selected configuration doesn't come from photos. Quitting...", v24, 2u);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    v25 = *(v0 + 144);
    v26 = *(v0 + 56);

    goto LABEL_57;
  }

LABEL_10:
  v12 = [*(v0 + 192) assetDirectory];
  sub_22FCC65A4();

  v13 = objc_opt_self();
  v14 = sub_22FCC6564();
  *(v0 + 16) = 0;
  v15 = [v13 loadFromURL:v14 error:v0 + 16];
  *(v0 + 216) = v15;

  v16 = *(v0 + 16);
  if (!v15)
  {
    v27 = *(v0 + 192);
    v135 = *(v0 + 152);
    v29 = *(v0 + 136);
    v28 = *(v0 + 144);
    v30 = *(v0 + 128);
    v32 = *(v0 + 104);
    v31 = *(v0 + 112);
    v33 = v16;
    sub_22FCC6514();

    swift_willThrow();
    (*(v31 + 8))(v30, v32);
    (*(v28 + 8))(v135, v29);
LABEL_18:
    sub_22FCC76B4();

    v34 = *(v0 + 8);
LABEL_58:

    v34();
    return;
  }

  v17 = v16;
  if ([v15 configurationType])
  {
    v18 = sub_22FCC8664();
    v19 = sub_22FCC8F34();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Selected configuration is invalid: must be photo type to upgrade. Quitting...";
LABEL_55:
      _os_log_impl(&dword_22FA28000, v18, v19, v21, v20, 2u);
      MEMORY[0x23190A000](v20, -1, -1);
      goto LABEL_56;
    }

    goto LABEL_56;
  }

  v35 = [v15 media];
  if (!v35)
  {
LABEL_53:
    v18 = sub_22FCC8664();
    v19 = sub_22FCC8F34();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Selected configuration is invalid: has no associated media. Quitting...";
      goto LABEL_55;
    }

LABEL_56:
    v110 = *(v0 + 192);
    v25 = *(v0 + 144);
    v111 = *(v0 + 128);
    v112 = *(v0 + 104);
    v113 = *(v0 + 112);
    v26 = *(v0 + 56);

    (*(v113 + 8))(v111, v112);
    goto LABEL_57;
  }

  v36 = v35;
  sub_22FA3A77C(0, &qword_28147AEC8, 0x277D3B4A0);
  v37 = sub_22FCC8C44();

  if (!(v37 >> 62))
  {
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

  if (!sub_22FCC92C4())
  {
LABEL_52:

    goto LABEL_53;
  }

LABEL_22:
  if ((v37 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x231908810](0, v37);
  }

  else
  {
    if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v38 = *(v37 + 32);
  }

  v39 = v38;
  *(v0 + 224) = v38;

  if ([v39 mediaType]!= 1)
  {
    v39 = v39;
    v62 = sub_22FCC8664();
    v63 = sub_22FCC8F34();
    v64 = os_log_type_enabled(v62, v63);
    v65 = *(v0 + 192);
    if (v64)
    {
      v66 = swift_slowAlloc();
      *v66 = 134217984;
      *(v66 + 4) = [v39 mediaType];

      v67 = "Selected configuration is invalid: must be PFPosterMediaType 1 (asset) instead of %ld. Quitting...";
      v68 = v63;
      v69 = v62;
      v70 = v66;
      v71 = 12;
LABEL_35:
      _os_log_impl(&dword_22FA28000, v69, v68, v67, v70, v71);
      MEMORY[0x23190A000](v66, -1, -1);
      v74 = v15;
      v15 = v65;
      v65 = v62;
LABEL_37:

      v25 = *(v0 + 144);
      v26 = *(v0 + 56);
      (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
LABEL_57:
      *(v26 + OBJC_IVAR____TtC13PhotoAnalysis29Spatial3DPosterOnboardingTask_posterOnboardingSucceeded) = 1;
      (*(v25 + 8))(*(v0 + 152), *(v0 + 136));
      sub_22FCC76B4();

      v34 = *(v0 + 8);
      goto LABEL_58;
    }

LABEL_36:
    v74 = v39;
    v39 = v62;
    goto LABEL_37;
  }

  v40 = sub_22FA559C8(v39);
  *(v0 + 232) = v40;
  if (!v40)
  {
    v62 = sub_22FCC8664();
    v72 = sub_22FCC8F34();
    v73 = os_log_type_enabled(v62, v72);
    v65 = *(v0 + 192);
    if (v73)
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      v67 = "Selected configuration is invalid: Cannot find PHAsset on poster media. Quitting...";
      v68 = v72;
      v69 = v62;
      v70 = v66;
      v71 = 2;
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v136 = v39;
  v42 = *(v0 + 88);
  v41 = *(v0 + 96);
  v43 = *(v0 + 72);
  v44 = *(v0 + 80);
  v45 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73B8, &qword_22FCD2148);
  v46 = v45;
  sub_22FCC6F54();
  (*(v44 + 16))(v42, v41, v43);
  if ((*(v44 + 88))(v42, v43) == *MEMORY[0x277D3BF80])
  {
    (*(*(v0 + 80) + 96))(*(v0 + 88), *(v0 + 72));

    v47 = sub_22FCC8664();
    v48 = sub_22FCC8F34();

    v131 = v48;
    log = v47;
    v49 = os_log_type_enabled(v47, v48);
    v133 = *(v0 + 192);
    v50 = *(v0 + 128);
    v52 = *(v0 + 104);
    v51 = *(v0 + 112);
    v53 = *(v0 + 96);
    v55 = *(v0 + 72);
    v54 = *(v0 + 80);
    if (v49)
    {
      v128 = *(v0 + 128);
      v56 = swift_slowAlloc();
      v125 = v52;
      v57 = swift_slowAlloc();
      v138[0] = v57;
      *v56 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73C0, &qword_22FCD2158);
      v122 = v53;
      sub_22FA58AE8();
      v58 = sub_22FCC8E94();
      v119 = v55;
      v60 = v59;

      v61 = sub_22FA2F600(v58, v60, v138);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_22FA28000, log, v131, "Selected configuration is invalid: asset doesn't pass gating for %s. Quitting...", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x23190A000](v57, -1, -1);
      MEMORY[0x23190A000](v56, -1, -1);

      (*(v54 + 8))(v122, v119);
      (*(v51 + 8))(v128, v125);
    }

    else
    {

      (*(v54 + 8))(v53, v55);
      (*(v51 + 8))(v50, v52);
    }

    v25 = *(v0 + 144);
    v26 = *(v0 + 56);
    goto LABEL_57;
  }

  v134 = v45;
  v76 = *(v0 + 80);
  v75 = *(v0 + 88);
  v77 = *(v0 + 72);
  v78 = *(v76 + 8);
  *(v0 + 240) = v78;
  *(v0 + 248) = (v76 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v78(v75, v77);
  v79 = [v136 subpath];
  sub_22FCC8A84();

  sub_22FCC6574();

  v80 = objc_opt_self();
  v81 = sub_22FCC6564();
  *(v0 + 24) = 0;
  v82 = [v80 loadSegmentationItemFromWallpaperURL:v81 error:v0 + 24];
  *(v0 + 256) = v82;

  v83 = *(v0 + 24);
  if (!v82)
  {
    v99 = *(v0 + 192);
    v100 = *(v0 + 144);
    v129 = *(v0 + 136);
    v132 = *(v0 + 152);
    v101 = *(v0 + 112);
    v115 = *(v0 + 104);
    v117 = *(v0 + 120);
    v123 = *(v0 + 96);
    v126 = *(v0 + 128);
    v120 = *(v0 + 72);
    v102 = v83;
    sub_22FCC6514();

    swift_willThrow();
    v103 = *(v101 + 8);
    v103(v117, v115);
    v78(v123, v120);
    v103(v126, v115);
    (*(v100 + 8))(v132, v129);
    goto LABEL_18;
  }

  v84 = v83;
  [v82 classification];
  v85 = sub_22FCC6564();
  *(v0 + 32) = 0;
  v86 = [v80 loadStyleFromWallpaperURL:v85 error:v0 + 32];
  *(v0 + 264) = v86;

  v87 = *(v0 + 32);
  if (!v86)
  {
    v104 = *(v0 + 192);
    v127 = *(v0 + 136);
    v130 = *(v0 + 152);
    v121 = *(v0 + 128);
    v124 = *(v0 + 144);
    v105 = *(v0 + 104);
    v106 = *(v0 + 112);
    v118 = *(v0 + 96);
    v114 = *(v0 + 120);
    v116 = *(v0 + 72);
    v107 = v87;
    sub_22FCC6514();

    swift_willThrow();
    swift_unknownObjectRelease();

    v108 = *(v106 + 8);
    v108(v114, v105);
    v78(v118, v116);
    v108(v121, v105);
    (*(v124 + 8))(v130, v127);
    goto LABEL_18;
  }

  v88 = v87;
  v89 = v134;
  v90 = sub_22FCC8664();
  v91 = sub_22FCC8F34();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v138[0] = v93;
    *v92 = 136315138;
    v94 = [v89 uuid];

    if (!v94)
    {
      __break(1u);
      return;
    }

    v95 = sub_22FCC8A84();
    v97 = v96;

    v98 = sub_22FA2F600(v95, v97, v138);

    *(v92 + 4) = v98;
    _os_log_impl(&dword_22FA28000, v90, v91, "Selected configuration (for asset %s) is valid and passes gating. Saving descriptor and persisting", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v93);
    MEMORY[0x23190A000](v93, -1, -1);
    MEMORY[0x23190A000](v92, -1, -1);
  }

  else
  {
  }

  v109 = swift_task_alloc();
  *(v0 + 272) = v109;
  *v109 = v0;
  v109[1] = sub_22FA54D98;

  sub_22FA57BEC(v89, v136, v86);
}

uint64_t sub_22FA54D98()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_22FA5525C;
  }

  else
  {
    v2 = sub_22FA54ED8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22FA54ED8()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 232);
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 232);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v34[0] = v7;
    *v6 = 136315138;
    v8 = [v5 uuid];

    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = sub_22FCC8A84();
    v11 = v10;

    v12 = sub_22FA2F600(v9, v11, v34);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_22FA28000, v2, v3, "Successfully saved descriptor for asset %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x23190A000](v7, -1, -1);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 280);
  *(*(v0 + 56) + OBJC_IVAR____TtC13PhotoAnalysis29Spatial3DPosterOnboardingTask_posterOnboardingSucceeded) = 1;
  sub_22FCC8484();
  v14 = *(v0 + 264);
  v33 = *(v0 + 240);
  v15 = *(v0 + 224);
  v32 = *(v0 + 232);
  v16 = *(v0 + 216);
  v17 = *(v0 + 192);
  if (v13)
  {
    v19 = *(v0 + 120);
    v18 = *(v0 + 128);
    v20 = *(v0 + 104);
    v21 = *(v0 + 112);
    v30 = *(v0 + 72);
    v31 = *(v0 + 96);

    swift_unknownObjectRelease();
    v22 = *(v21 + 8);
    v22(v19, v20);
    v33(v31, v30);
    v22(v18, v20);
  }

  else
  {
    v25 = *(v0 + 112);
    v24 = *(v0 + 120);
    v26 = *(v0 + 96);
    v27 = *(v0 + 104);
    v28 = *(v0 + 72);

    swift_unknownObjectRelease();
    v29 = *(v25 + 8);
    v29(v24, v27);
    v33(v26, v28);
    v29(*(v0 + 128), *(v0 + 104));
  }

  sub_22FCC76B4();

  v23 = *(v0 + 8);

  v23();
}

uint64_t sub_22FA5525C()
{
  v1 = *(v0 + 264);
  v15 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 192);
  v4 = *(v0 + 144);
  v16 = *(v0 + 136);
  v17 = *(v0 + 152);
  v5 = *(v0 + 120);
  v13 = *(v0 + 232);
  v14 = *(v0 + 128);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v11 = *(v0 + 72);
  v12 = *(v0 + 96);

  swift_unknownObjectRelease();
  v8 = *(v7 + 8);
  v8(v5, v6);
  v15(v12, v11);
  v8(v14, v6);
  (*(v4 + 8))(v17, v16);
  sub_22FCC76B4();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22FA553E8()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  sub_22FCC76B4();

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FA554F4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7400, &qword_22FCD2190);
  *v1 = v0;
  v1[1] = sub_22FA555DC;
  v3 = *(v0 + 32);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001CLL, 0x800000022FCE00D0, sub_22FA58B68, v3, v2);
}

uint64_t sub_22FA555DC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_22FA55944;
  }

  else
  {
    v2 = sub_22FA556F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FA556F0()
{
  v1 = v0[4];
  v2 = v0[2];
  v0[7] = v2;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_22FA3A77C(0, &qword_28147AE38, 0x277D3E968);
  *v4 = v0;
  v4[1] = sub_22FA55804;

  return MEMORY[0x2822008A0](v0 + 3, 0, 0, 0xD00000000000001CLL, 0x800000022FCE00D0, sub_22FA58B70, v3, v5);
}

uint64_t sub_22FA55804()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_22FA5595C;
  }

  else
  {

    v2 = sub_22FA55928;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FA5595C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_22FA559C8(void *a1)
{
  v2 = [a1 assetUUID];
  if (!v2)
  {
    if (qword_28147D5D0 != -1)
    {
      swift_once();
    }

    v18 = sub_22FCC8684();
    __swift_project_value_buffer(v18, qword_28147D5D8);
    v7 = sub_22FCC8664();
    v19 = sub_22FCC8F34();
    if (os_log_type_enabled(v7, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22FA28000, v7, v19, "Selected configuration is invalid: has no associated asset. Quitting...", v20, 2u);
      MEMORY[0x23190A000](v20, -1, -1);
    }

    goto LABEL_13;
  }

  v3 = v2;
  v4 = sub_22FCC8A84();
  v6 = v5;

  v7 = [*(v1 + 176) librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22FCD17F0;
  *(v8 + 32) = sub_22FCC8A84();
  *(v8 + 40) = v9;
  *(v8 + 48) = sub_22FCC8A84();
  *(v8 + 56) = v10;
  v11 = MEMORY[0x277D837D0];
  v12 = sub_22FCC8C24();

  [v7 addFetchPropertySets:v12];

  sub_22FA3A77C(0, &qword_28147AEF0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278, &qword_22FCD1B10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22FCD17F0;
  *(v13 + 56) = v11;
  v14 = sub_22FA4EF4C();
  *(v13 + 32) = 1684632949;
  *(v13 + 40) = 0xE400000000000000;
  *(v13 + 96) = v11;
  *(v13 + 104) = v14;
  *(v13 + 64) = v14;
  *(v13 + 72) = v4;
  *(v13 + 80) = v6;
  v15 = sub_22FCC8EE4();
  [v7 setPredicate:v15];

  v16 = [objc_opt_self() fetchAssetsWithOptions_];
  v17 = [v16 firstObject];

  if (!v17)
  {
    if (qword_28147D5D0 != -1)
    {
      swift_once();
    }

    v21 = sub_22FCC8684();
    __swift_project_value_buffer(v21, qword_28147D5D8);
    v22 = sub_22FCC8664();
    v23 = sub_22FCC8F34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22FA28000, v22, v23, "Unable to fetch asset for selected configuration", v24, 2u);
      MEMORY[0x23190A000](v24, -1, -1);
    }

LABEL_13:
    return 0;
  }

  return v17;
}

uint64_t sub_22FA55D40()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  sub_22FA2B420(v0 + 136, &unk_27DAD83A0, &qword_22FCD1AC0);

  v1 = OBJC_IVAR____TtC13PhotoAnalysis29Spatial3DPosterOnboardingTask_eligibilityChecker;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73B8, &qword_22FCD2148);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_22FA55DFC()
{
  sub_22FA55D40();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Spatial3DPosterOnboardingTask(uint64_t a1)
{
  result = qword_28147D5A0;
  if (!qword_28147D5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22FA55EA8(uint64_t a1)
{
  sub_22FA55F90(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22FA55F90(uint64_t a1)
{
  if (!qword_28147B070)
  {
    sub_22FCC75E4();
    sub_22FCC7624();
    sub_22FA58D84(&qword_28147B048, MEMORY[0x277D3C1E8], MEMORY[0x277D3C1E0]);
    sub_22FA58D84(&qword_28147B040, MEMORY[0x277D3C200], MEMORY[0x277D3C1F8]);
    v1 = sub_22FCC6F84();
    if (!v2)
    {
      atomic_store(v1, &qword_28147B070);
    }
  }
}

uint64_t sub_22FA5608C()
{
  v1 = *(*v0 + 64);

  return v1;
}

uint64_t sub_22FA560C0()
{
  v1 = *(*v0 + 80);

  return v1;
}

uint64_t sub_22FA56178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FA535AC(a2, a3);
}

uint64_t sub_22FA56220()
{
  v0 = sub_22FCC77B4();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277D3C270], v0, v3);
  v6 = sub_22FCC7794();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_22FA56334()
{
  v1 = *(v0 + 16);
  if (*(v1 + 200) == 1)
  {
    return (*(v0 + 8))(*(v1 + OBJC_IVAR____TtC13PhotoAnalysis29Spatial3DPosterOnboardingTask_posterOnboardingSucceeded));
  }

  else
  {
    return (*(v0 + 8))(0);
  }
}

uint64_t sub_22FA56390()
{
  v1 = *(v0 + 16);
  if (*(v1 + 200))
  {
    return (*(v0 + 8))(0);
  }

  else
  {
    return (*(v0 + 8))(*(v1 + OBJC_IVAR____TtC13PhotoAnalysis29Spatial3DPosterOnboardingTask_posterOnboardingSucceeded));
  }
}

uint64_t sub_22FA563C4(uint64_t result)
{
  if (result)
  {

    MEMORY[0x231907FA0](0x6375747320736920, 0xE90000000000006BLL);
    result = sub_22FCC94D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_22FA56448()
{
  v1 = *(*v0 + 112);

  return v1;
}

uint64_t sub_22FA564A0(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 80) == *(*a2 + 80) && *(*a1 + 88) == *(*a2 + 88))
  {
    return 1;
  }

  else
  {
    return sub_22FCC9704();
  }
}

uint64_t sub_22FA564CC(uint64_t a1)
{
  *(a1 + 8) = sub_22FA58D84(&qword_28147D5B8, type metadata accessor for Spatial3DPosterOnboardingTask, &unk_22FCD20D0);
  result = sub_22FA58D84(&unk_28147D5C0, type metadata accessor for Spatial3DPosterOnboardingTask, &unk_22FCD20A8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FA56550(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_22FA3A77C(0, &qword_28147AE48, 0x277D3E978);
    **(*(v4 + 64) + 40) = sub_22FCC8C44();

    return MEMORY[0x282200950](v4);
  }
}

void sub_22FA56640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7428, &qword_22FCD21B0);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = aBlock - v8;
  v10 = *(a2 + 192);
  v11 = *MEMORY[0x277D3EEF0];
  (*(v5 + 16))(aBlock - v8, a1, v4, v7);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v9, v4);
  aBlock[4] = sub_22FA58C0C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22FA56898;
  aBlock[3] = &block_descriptor_19;
  v14 = _Block_copy(aBlock);
  v15 = v11;

  [v10 fetchPosterConfigurationsForRole:v15 completion:v14];
  _Block_release(v14);
}

uint64_t sub_22FA56814(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7428, &qword_22FCD21B0);
    return sub_22FCC8CD4();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7428, &qword_22FCD21B0);
    return sub_22FCC8CE4();
  }
}

void sub_22FA568AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7408, &qword_22FCD2198);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = aBlock - v11;
  v13 = *(a2 + 192);
  v14 = *MEMORY[0x277D3EEF0];
  (*(v7 + 16))(aBlock - v11, a1, v6, v10);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  (*(v7 + 32))(v16 + v15, v12, v6);
  *(v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_22FA58B78;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22FA57200;
  aBlock[3] = &block_descriptor_13;
  v17 = _Block_copy(aBlock);
  v18 = v14;

  [v13 fetchSelectedPosterForRole:v18 completion:v17];
  _Block_release(v17);
}

void sub_22FA56AA4(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v54 = a3;
  v7 = sub_22FCC67F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v56 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7410, &qword_22FCD21A0);
  MEMORY[0x28223BE20](v66, v11);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7418, &qword_22FCD21A8);
  MEMORY[0x28223BE20](v14 - 8, v15);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v54 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v24 = &v54 - v23;
  if (a1)
  {
    v60 = v22;
    v72 = MEMORY[0x277D84F90];
    if (a4 >> 62)
    {
LABEL_41:
      v68 = sub_22FCC92C4();
    }

    else
    {
      v68 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v67 = a1;
    if (v68)
    {
      v25 = 0;
      v64 = a4 & 0xFFFFFFFFFFFFFF8;
      v65 = a4 & 0xC000000000000001;
      v71 = (v8 + 56);
      v62 = (v8 + 48);
      v63 = a4;
      v55 = (v8 + 32);
      v58 = v24;
      v59 = (v8 + 8);
      v61 = v7;
      while (1)
      {
        if (v65)
        {
          v28 = MEMORY[0x231908810](v25, a4);
        }

        else
        {
          if (v25 >= *(v64 + 16))
          {
            goto LABEL_40;
          }

          v28 = *(a4 + 8 * v25 + 32);
        }

        v29 = v28;
        a1 = (v25 + 1);
        if (__OFADD__(v25, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v30 = [v28 serverUUID];
        if (v30)
        {
          v31 = v30;
          sub_22FCC67D4();

          v32 = 0;
        }

        else
        {
          v32 = 1;
        }

        v33 = *v71;
        v34 = 1;
        (*v71)(v24, v32, 1, v7);
        v35 = [v67 serverUUID];
        v69 = v29;
        v70 = (v25 + 1);
        if (v35)
        {
          v36 = v35;
          sub_22FCC67D4();

          v34 = 0;
        }

        v33(v19, v34, 1, v7);
        v8 = *(v66 + 48);
        sub_22FA4FAA4(v24, v13, &qword_27DAD7418, &qword_22FCD21A8);
        sub_22FA4FAA4(v19, &v13[v8], &qword_27DAD7418, &qword_22FCD21A8);
        v37 = *v62;
        if ((*v62)(v13, 1, v7) == 1)
        {
          break;
        }

        v39 = v19;
        v40 = v60;
        sub_22FA4FAA4(v13, v60, &qword_27DAD7418, &qword_22FCD21A8);
        if (v37(&v13[v8], 1, v7) == 1)
        {
          v8 = v39;
          sub_22FA2B420(v39, &qword_27DAD7418, &qword_22FCD21A8);
          v24 = v58;
          sub_22FA2B420(v58, &qword_27DAD7418, &qword_22FCD21A8);
          v26 = v40;
          v19 = v8;
          (*v59)(v26, v7);
          a4 = v63;
LABEL_7:
          sub_22FA2B420(v13, &qword_27DAD7410, &qword_22FCD21A0);
          v27 = v69;
          a1 = v70;
          goto LABEL_8;
        }

        v41 = v56;
        (*v55)(v56, &v13[v8], v7);
        sub_22FA58D84(&qword_281482510, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v57 = sub_22FCC8A44();
        v8 = v59;
        v42 = *v59;
        (*v59)(v41, v7);
        v43 = v39;
        sub_22FA2B420(v39, &qword_27DAD7418, &qword_22FCD21A8);
        v24 = v58;
        sub_22FA2B420(v58, &qword_27DAD7418, &qword_22FCD21A8);
        v44 = v40;
        v19 = v43;
        v42(v44, v7);
        sub_22FA2B420(v13, &qword_27DAD7418, &qword_22FCD21A8);
        a4 = v63;
        v27 = v69;
        a1 = v70;
        if (v57)
        {
          goto LABEL_24;
        }

LABEL_8:

LABEL_9:
        ++v25;
        v7 = v61;
        if (a1 == v68)
        {
          v45 = v72;
          if ((v72 & 0x8000000000000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_42;
        }
      }

      sub_22FA2B420(v19, &qword_27DAD7418, &qword_22FCD21A8);
      sub_22FA2B420(v24, &qword_27DAD7418, &qword_22FCD21A8);
      v38 = v37(&v13[v8], 1, v7);
      a4 = v63;
      if (v38 == 1)
      {
        sub_22FA2B420(v13, &qword_27DAD7418, &qword_22FCD21A8);
        a1 = v70;
LABEL_24:
        v8 = &v72;
        sub_22FCC93F4();
        sub_22FCC9424();
        sub_22FCC9434();
        sub_22FCC9404();
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    v45 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_42;
    }

LABEL_31:
    if ((v45 & 0x4000000000000000) != 0)
    {
LABEL_42:
      if (sub_22FCC92C4())
      {
        goto LABEL_33;
      }
    }

    else if (*(v45 + 16))
    {
LABEL_33:
      if ((v45 & 0xC000000000000001) != 0)
      {
        v47 = MEMORY[0x231908810](0, v45);
      }

      else
      {
        if (!*(v45 + 16))
        {
          __break(1u);
          return;
        }

        v47 = *(v45 + 32);
      }

      v48 = v47;

      v72 = v48;
      v49 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7408, &qword_22FCD2198);
      sub_22FCC8CE4();

      goto LABEL_44;
    }

    sub_22FA58BB8();
    v52 = swift_allocError();
    *v53 = 0xD00000000000003BLL;
    v53[1] = 0x800000022FCE0140;
    v72 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7408, &qword_22FCD2198);
    sub_22FCC8CD4();
LABEL_44:

    return;
  }

  if (a2)
  {
    v46 = a2;
  }

  else
  {
    sub_22FA58BB8();
    v46 = swift_allocError();
    *v50 = 0xD00000000000001BLL;
    v50[1] = 0x800000022FCE0120;
  }

  v72 = v46;
  v51 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7408, &qword_22FCD2198);
  sub_22FCC8CD4();
}

void sub_22FA57200(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_22FA5728C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7430, &qword_22FCD21B8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = aBlock - v10;
  v12 = *(a2 + 192);
  v13 = sub_22FCC8A54();
  (*(v7 + 16))(v11, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v11, v6);
  *(v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_22FA58C98;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22FA577D0;
  aBlock[3] = &block_descriptor_25;
  v16 = _Block_copy(aBlock);

  [v12 fetchPosterDescriptorsForExtension:v13 completion:v16];
  _Block_release(v16);
}

void sub_22FA57484(unint64_t a1, id a2)
{
  if (!a2)
  {
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      v2 = sub_22FCC92C4();
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = 0;
    while (1)
    {
      if (v2 == v13)
      {
        goto LABEL_23;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x231908810](v13, a1);
      }

      else
      {
        if (v13 >= *(v26 + 16))
        {
          goto LABEL_25;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v16 = [v14 identifier];
      v17 = sub_22FCC8A84();
      v19 = v18;

      v20 = [objc_opt_self() descriptorTypeStringWithType_];
      v21 = sub_22FCC8A84();
      v23 = v22;

      if (v17 == v21 && v19 == v23)
      {

LABEL_23:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7430, &qword_22FCD21B8);
        sub_22FCC8CE4();
        return;
      }

      v25 = sub_22FCC9704();

      ++v13;
      if (v25)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v2 = a2;
  v3 = a2;
  if (qword_28147D5D0 != -1)
  {
LABEL_26:
    swift_once();
  }

  v4 = sub_22FCC8684();
  __swift_project_value_buffer(v4, qword_28147D5D8);
  v5 = v2;
  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22FA28000, v6, v7, "Error fetching existing descriptor: %@. This could mean no descriptors are available", v8, 0xCu);
    sub_22FA2B420(v9, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7430, &qword_22FCD21B8);
  sub_22FCC8CE4();
}

void sub_22FA577E4(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  v6 = *(a1 + 32);
  sub_22FA3A77C(0, a4, a5);
  v7 = sub_22FCC8C44();

  v8 = a3;
  v6(v7, a3);
}

uint64_t sub_22FA5788C(uint64_t a1, _OWORD *a2, int a3)
{
  v4 = v3;
  v27 = a3;
  v26 = a2;
  v6 = sub_22FCC75E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22FCC67F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 56) = 0x417E187E00000000;
  *(v4 + 64) = 0xD00000000000001DLL;
  *(v4 + 72) = 0x800000022FCD1FF0;
  sub_22FCC67E4();
  v16 = sub_22FCC67B4();
  v18 = v17;
  (*(v12 + 8))(v15, v11);
  *(v4 + 80) = v16;
  *(v4 + 88) = v18;
  *(v4 + 96) = xmmword_22FCD1F80;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 1;
  *(v4 + 192) = [objc_allocWithZone(MEMORY[0x277D3EA00]) init];
  v19 = *MEMORY[0x277D3C1B0];
  v20 = sub_22FCC75D4();
  (*(*(v20 - 8) + 104))(v10, v19, v20);
  (*(v7 + 104))(v10, *MEMORY[0x277D3C1C0], v6);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_22FCC6F74();
  sub_22FA2B420(v28, &qword_27DAD7438, &qword_22FCD21D0);
  (*(v7 + 8))(v10, v6);
  *(v4 + OBJC_IVAR____TtC13PhotoAnalysis29Spatial3DPosterOnboardingTask_posterOnboardingSucceeded) = 0;
  *(v4 + 40) = type metadata accessor for MomentGraphWorker();
  *(v4 + 48) = sub_22FA58D84(&qword_281480230, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  *(v4 + 16) = a1;
  v21 = *(a1 + 112);
  v22 = *(v21 + 112);

  *(v4 + 176) = [v22 photoLibrary];
  *(v4 + 184) = [objc_allocWithZone(PHAWallpaperSuggestionRefreshSession) initWithGraphManager_];
  v23 = v26;
  v24 = v26[1];
  *(v4 + 136) = *v26;
  *(v4 + 152) = v24;
  *(v4 + 168) = *(v23 + 4);
  *(v4 + 200) = v27 & 1;
  return v4;
}

uint64_t sub_22FA57BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  v5 = sub_22FCC65F4();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA57D00, 0, 0);
}

uint64_t sub_22FA57D00()
{
  v93 = v0;
  v92[1] = *MEMORY[0x277D85DE8];
  v1 = v0[23];
  v2 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0, &unk_22FCD2160);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22FCD1F90;
  *(v3 + 32) = v2;
  v4 = objc_allocWithZone(MEMORY[0x277D3B498]);
  sub_22FA3A77C(0, &qword_28147AEC8, 0x277D3B4A0);
  v5 = v2;
  v6 = sub_22FCC8C24();

  v7 = [v4 initWithDescriptorType:202 media:v6];
  v0[33] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22FCD1800;
  v9 = [v1 uuid];
  if (!v9)
  {
    __break(1u);
  }

  v10 = v9;
  v11 = objc_opt_self();
  v12 = sub_22FCC8A84();
  v14 = v13;

  *(v8 + 32) = v12;
  *(v8 + 40) = v14;
  v15 = sub_22FCC8C24();

  v16 = [v11 descriptorIdentifierForDescriptorType:202 uuids:v15];

  if (!v16)
  {
    sub_22FCC8A84();
    v16 = sub_22FCC8A54();
  }

  [v7 setIdentifier_];

  if (qword_27DAD6E40 != -1)
  {
    swift_once();
  }

  v17 = v0[24];
  __swift_project_value_buffer(v0[27], qword_27DAD7398);
  v18 = [v7 identifier];
  sub_22FCC8A84();

  sub_22FCC6574();

  v19 = [v17 subpath];
  sub_22FCC8A84();

  sub_22FCC6574();

  v20 = objc_opt_self();
  v21 = [v20 defaultManager];
  sub_22FCC65B4();
  v22 = sub_22FCC8A54();

  LOBYTE(v19) = [v21 fileExistsAtPath_];

  if ((v19 & 1) == 0)
  {
    v23 = [v20 defaultManager];
    v24 = sub_22FCC6564();
    v0[18] = 0;
    v25 = [v23 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:v0 + 18];

    v26 = v0[18];
    if (!v25)
    {
LABEL_15:
      v58 = v0[31];
      v57 = v0[32];
      v59 = v0[27];
      v60 = v0[28];
      v61 = v26;
      sub_22FCC6514();

      swift_willThrow();
      v62 = *(v60 + 8);
      v62(v58, v59);
      v62(v57, v59);
      goto LABEL_17;
    }

    v27 = v26;
  }

  v28 = v0[25];
  v29 = v0[23];
  v30 = *(v0[26] + 184);
  v31 = sub_22FCC6564();
  v0[19] = 0;
  LODWORD(v29) = [v30 saveOnboardingPreviewSegmentationResourcesForAsset:v29 atURL:v31 withClassification:1 style:v28 enableSpatialPhoto:1 error:v0 + 19];

  v32 = v0[19];
  v33 = v0[32];
  if (!v29)
  {
    v63 = v0[31];
    v64 = v0[27];
    v65 = v0[28];
    v66 = v32;
    sub_22FCC6514();

    swift_willThrow();
    v67 = *(v65 + 8);
    v67(v63, v64);
    v67(v33, v64);
    goto LABEL_17;
  }

  v34 = v32;
  v35 = sub_22FCC6564();
  v0[20] = 0;
  v36 = [v7 saveToURL:v35 error:v0 + 20];

  v26 = v0[20];
  if (!v36)
  {
    goto LABEL_15;
  }

  v37 = qword_28147D5D0;
  v38 = v26;
  if (v37 != -1)
  {
    swift_once();
  }

  v39 = v0[32];
  v40 = v0[30];
  v42 = v0[27];
  v41 = v0[28];
  v43 = sub_22FCC8684();
  __swift_project_value_buffer(v43, qword_28147D5D8);
  (*(v41 + 16))(v40, v39, v42);
  v44 = sub_22FCC8664();
  v45 = sub_22FCC8EF4();
  v46 = os_log_type_enabled(v44, v45);
  v47 = v0[30];
  v49 = v0[27];
  v48 = v0[28];
  if (v46)
  {
    v50 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v92[0] = v89;
    *v50 = 136315138;
    sub_22FA58D84(&qword_27DAD73F8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v87 = v45;
    v51 = sub_22FCC96C4();
    v53 = v52;
    v54 = v49;
    v55 = *(v48 + 8);
    v55(v47, v54);
    v56 = sub_22FA2F600(v51, v53, v92);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_22FA28000, v44, v87, "Saved descriptor to %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v89);
    MEMORY[0x23190A000](v89, -1, -1);
    MEMORY[0x23190A000](v50, -1, -1);
  }

  else
  {

    v70 = v49;
    v55 = *(v48 + 8);
    v55(v47, v70);
  }

  v0[34] = v55;
  sub_22FCC6574();
  v71 = [objc_allocWithZone(MEMORY[0x277D3E9E8]) init];
  v0[35] = v71;
  sub_22FCC65C4();
  v72 = sub_22FCC8A54();

  [v71 setIdentifier_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73E0, &qword_22FCD2170);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_22FCD1800;
  v74 = [v7 identifier];
  v75 = sub_22FCC8A84();
  v77 = v76;

  *(v73 + 56) = MEMORY[0x277D837D0];
  *(v73 + 32) = v75;
  *(v73 + 40) = v77;
  sub_22FA3A77C(0, &qword_27DAD73E8, 0x277CBEA60);
  v78 = MEMORY[0x2319085A0](v73);
  v0[36] = v78;
  v79 = sub_22FCC6564();
  v0[21] = 0;
  LODWORD(v74) = [v78 writeToURL:v79 error:v0 + 21];

  v80 = v0[21];
  if (v74)
  {
    v81 = *(v0[26] + 192);
    v82 = v80;
    v83 = sub_22FCC8A54();
    v0[37] = v83;
    v0[2] = v0;
    v0[7] = v0 + 22;
    v0[3] = sub_22FA58730;
    v84 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73F0, &qword_22FCD2178);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22FA56550;
    v0[13] = &block_descriptor_2;
    v0[14] = v84;
    [v81 refreshPosterDescriptorsForExtension:v83 sessionInfo:v71 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  v90 = v0[31];
  v91 = v0[32];
  v88 = v0[29];
  v85 = v0[27];
  v86 = v80;
  sub_22FCC6514();

  swift_willThrow();
  v55(v88, v85);
  v55(v90, v85);
  v55(v91, v85);
LABEL_17:

  v68 = v0[1];

  return v68();
}

uint64_t sub_22FA58730()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_22FA589A8;
  }

  else
  {
    v2 = sub_22FA5886C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FA5886C()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 248);
  v7 = *(v0 + 232);
  v8 = *(v0 + 216);

  v3(v7, v8);
  v3(v6, v8);
  v3(v4, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22FA589A8(uint64_t a1)
{
  v3 = v1[35];
  v2 = v1[36];
  v4 = v1[33];
  v5 = v1[34];
  v6 = v1[31];
  v11 = v1[32];
  v12 = v1[37];
  v7 = v1[29];
  v8 = v1[27];
  swift_willThrow();

  v5(v7, v8);
  v5(v6, v8);
  v5(v11, v8);

  v9 = v1[1];

  return v9();
}

unint64_t sub_22FA58AE8()
{
  result = qword_27DAD73C8;
  if (!qword_27DAD73C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD73C0, &qword_22FCD2158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD73C8);
  }

  return result;
}

double block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t block_destroy_helper_12(uint64_t a1)
{
}

{
}

unint64_t sub_22FA58BB8()
{
  result = qword_27DAD7420;
  if (!qword_27DAD7420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD7420);
  }

  return result;
}

uint64_t sub_22FA58C0C(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7428, &qword_22FCD21B0);

  return sub_22FA56814(a1, a2);
}

uint64_t sub_22FA58CC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a5(a1, a2, v5 + v9, v10);
}

uint64_t sub_22FA58D84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FA58DCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FA58E1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22FA58E70(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_22FA58E88(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

char *sub_22FA58EC8(unint64_t a1, uint64_t *a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22FCC92C4())
  {
    v4 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v4;
    }

    v26 = MEMORY[0x277D84F90];
    result = sub_22FA8717C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v6 = 0;
    v4 = v26;
    v23 = i;
    v24 = v2 & 0xC000000000000001;
    v22 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v24)
      {
        v8 = MEMORY[0x231908810](v6, v2);
      }

      else
      {
        if (v6 >= *(v22 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(v2 + 8 * v6 + 32);
      }

      v9 = v2;
      v10 = v8[5];
      v11 = v8[6];
      __swift_project_boxed_opaque_existential_1(v8 + 2, v10);
      v12 = (*(v11 + 48))(v10, v11);
      v14 = v13;
      swift_beginAccess();
      v15 = *a2;
      if (*(*a2 + 16))
      {
        v16 = sub_22FA2DB54(v12, v14);
        v18 = v17;

        v19 = 0;
        if (v18)
        {
          v19 = *(*(v15 + 56) + 8 * v16);
        }
      }

      else
      {

        v19 = 0;
      }

      swift_endAccess();

      v21 = *(v26 + 16);
      v20 = *(v26 + 24);
      v2 = v9;
      if (v21 >= v20 >> 1)
      {
        sub_22FA8717C((v20 > 1), v21 + 1, 1);
      }

      *(v26 + 16) = v21 + 1;
      *(v26 + 8 * v21 + 32) = v19;
      ++v6;
      if (v7 == v23)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_22FA590EC(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v27 = a1 + 32;
  v3 = &qword_27DAD84B0;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_22FCC92C4();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_22FCC92C4();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_22FCC92C4();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_22FCC93C4();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v7)
    {
      goto LABEL_36;
    }

    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_22FA2CF90(&qword_27DAD7460, v3, &unk_22FCD6400, MEMORY[0x277D83988]);
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &unk_22FCD6400);
        v18 = sub_22FA880E0(v29, i, v5);
        v19 = v3;
        v21 = *v20;

        (v18)(v29, 0);
        *(v16 + 8 * i) = v21;
        v3 = v19;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7458, &qword_22FCD24B8);
      swift_arrayInitWithCopy();
    }

    v2 = v30;
    if (v7 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v7);
      v24 = v22 + v7;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = sub_22FCC92C4();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v7 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_22FA593D4()
{
  v1 = *v0;
  v2 = 0x696C616974696E49;
  v3 = 0x6574656C706D6F43;
  v4 = 0x696C6C65636E6143;
  if (v1 != 3)
  {
    v4 = 0x656C6C65636E6143;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E696E6E7552;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void *sub_22FA59484()
{
  type metadata accessor for InstanceCounter();
  result = swift_allocObject();
  result[2] = 0x7974697669746341;
  result[3] = 0xEF6E6F6973736553;
  result[4] = 0;
  qword_281487F70 = result;
  return result;
}

void *sub_22FA594DC()
{
  v1 = v0;
  if (qword_281480D28 != -1)
  {
    swift_once();
  }

  sub_22FB5A80C();

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));

  v2 = OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_logger;
  v3 = sub_22FCC8684();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  sub_22FA2B420(v1 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_taskProductivityReporter, &unk_27DAD83A0, &qword_22FCD1AC0);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_22FA595F8()
{
  sub_22FA594DC();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ActivitySession(uint64_t a1)
{
  result = qword_281480CE8;
  if (!qword_281480CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FA59678(uint64_t a1)
{
  result = sub_22FCC8684();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

_BYTE *sub_22FA59760(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v15 - v5 + 22;
  if (*(v1 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_state) == 1)
  {
    v7 = OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_taskSubmissionTask;
    if (*(v1 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_taskSubmissionTask))
    {
      v6 = *(v1 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_taskSubmissionTask);
    }

    else
    {
      sub_22FA2D328(a1, v15);
      v9 = OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_taskProductivityReporter;
      swift_beginAccess();
      sub_22FA61D04(v15, v1 + v9);
      swift_endAccess();
      v10 = sub_22FCC8D14();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      v11 = sub_22FA61BC0(&qword_281480CF8, &unk_22FCD2448);
      v12 = swift_allocObject();
      v12[2] = v1;
      v12[3] = v11;
      v12[4] = v1;
      swift_retain_n();
      v6 = sub_22FB22A48(0, 0, v6, &unk_22FCD24C8, v12);
      *(v1 + v7) = v6;
    }
  }

  else
  {
    sub_22FA61CB0();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
  }

  return v6;
}

uint64_t sub_22FA59958()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA2C030;

  return sub_22FA5AA58();
}

uint64_t sub_22FA599E8(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_22FA59A08, 0, 0);
}

void *sub_22FA59A08()
{
  v61 = v0;
  v1 = v0[8];
  v0[10] = sub_22FA5EDD0(v1);

  v2 = swift_allocObject();
  v0[11] = v2;
  *(v2 + 16) = MEMORY[0x277D84F98];
  v3 = *(v1 + 16);
  v0[12] = v3;
  if (v3)
  {
    v4 = v0[8];
    v0[13] = 0;
    v6 = v4[7];
    v5 = v4[8];
    v7 = __swift_project_boxed_opaque_existential_1(v4 + 4, v6);
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_22FA5A100;
    v9 = v0[9];

    return sub_22FB5AD74(v7, v9, v6, v5);
  }

  v56 = v0;
  v11 = sub_22FA5F640(v0[10], v2);

  v12 = sub_22FA4CC50(MEMORY[0x277D84F90]);
  v59 = MEMORY[0x277D84FA0];
  if (v11 >> 62)
  {
LABEL_37:
    v57 = sub_22FCC92C4();
    if (v57)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v57 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57)
    {
LABEL_7:
      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x231908810](v13, v11);
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v15 = *(v11 + 8 * v13 + 32);

          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }
        }

        v17 = v15[5];
        v18 = v15[6];
        __swift_project_boxed_opaque_existential_1(v15 + 2, v17);
        v19 = (*(v18 + 48))(v17, v18);
        v21 = v19;
        v22 = v20;
        if (*(v12 + 2))
        {
          v23 = sub_22FA2DB54(v19, v20);
          if (v24)
          {
            sub_22FB050C4(&v60, *(*(v12 + 7) + 8 * v23));
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = v12;
        v26 = sub_22FA2DB54(v21, v22);
        v28 = *(v12 + 2);
        v29 = (v27 & 1) == 0;
        v30 = __OFADD__(v28, v29);
        v31 = v28 + v29;
        if (v30)
        {
          goto LABEL_35;
        }

        v32 = v27;
        if (*(v12 + 3) < v31)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_21;
        }

        v37 = v26;
        sub_22FA6F95C();
        v26 = v37;
        if (v32)
        {
LABEL_8:
          v14 = v26;

          v12 = v60;
          *(*(v60 + 7) + 8 * v14) = v13;

          goto LABEL_9;
        }

LABEL_22:
        v12 = v60;
        *&v60[8 * (v26 >> 6) + 64] |= 1 << v26;
        v34 = (*(v12 + 6) + 16 * v26);
        *v34 = v21;
        v34[1] = v22;
        *(*(v12 + 7) + 8 * v26) = v13;

        v35 = *(v12 + 2);
        v30 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v30)
        {
          goto LABEL_36;
        }

        *(v12 + 2) = v36;
LABEL_9:
        ++v13;
        if (v16 == v57)
        {
          v38 = v59;
          goto LABEL_39;
        }
      }

      sub_22FA6AEC8(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_22FA2DB54(v21, v22);
      if ((v32 & 1) != (v33 & 1))
      {

        return sub_22FCC9774();
      }

LABEL_21:
      if (v32)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }
  }

  v38 = MEMORY[0x277D84FA0];
LABEL_39:

  v39 = *(v38 + 16);
  v40 = MEMORY[0x277D84F90];
  if (v39)
  {
    v40 = sub_22FA86B8C(v39, 0);
    v58 = sub_22FA8851C(&v60, v40 + 4, v39, v38);
    v41 = v60;

    sub_22FA37D64(v41);
    if (v58 != v39)
    {
      goto LABEL_65;
    }
  }

  v60 = v40;
  sub_22FA5EC9C(&v60);
  v42 = *(v60 + 2);
  if (v42)
  {
    v43 = v60 + 32;
    while (1)
    {
      v45 = *v43;
      v43 += 8;
      v44 = v45;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
      {
        v11 = sub_22FB0FFCC();
      }

      v46 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v44 >= v46)
      {
        break;
      }

      v47 = v46 - 1;
      memmove(((v11 & 0xFFFFFFFFFFFFFF8) + 8 * v44 + 32), ((v11 & 0xFFFFFFFFFFFFFF8) + 8 * v44 + 40), 8 * (v46 - 1 - v44));
      *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v47;

      if (!--v42)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    v48 = sub_22FCC92C4();
    if (!v48)
    {
      goto LABEL_67;
    }

LABEL_51:
    v60 = MEMORY[0x277D84F90];
    result = sub_22FA8713C(0, v48 & ~(v48 >> 63), 0);
    if (v48 < 0)
    {
      __break(1u);
      return result;
    }

    v49 = 0;
    v50 = v60;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x231908810](v49, v11);
      }

      else
      {
        if ((v49 & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }

        if (v49 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v51 = *(v11 + 8 * v49 + 32);
      }

      sub_22FA2D328(v51 + 16, (v56 + 1));

      v60 = v50;
      v53 = *(v50 + 2);
      v52 = *(v50 + 3);
      if (v53 >= v52 >> 1)
      {
        sub_22FA8713C((v52 > 1), v53 + 1, 1);
        v50 = v60;
      }

      ++v49;
      *(v50 + 2) = v53 + 1;
      sub_22FA2CF78(v56 + 1, &v50[40 * v53 + 32]);
    }

    while (v48 != v49);
    v54 = v56;

    goto LABEL_68;
  }

LABEL_49:

  if (v11 >> 62)
  {
    goto LABEL_66;
  }

  v48 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v48)
  {
    goto LABEL_51;
  }

LABEL_67:
  v54 = v56;

  v50 = MEMORY[0x277D84F90];
LABEL_68:
  v55 = *(v54 + 1);

  return v55(v50);
}

uint64_t sub_22FA5A100(double a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_22FA5A200, 0, 0);
}

void *sub_22FA5A200()
{
  v87 = v0;
  v1 = *(v0 + 88);
  v2 = (*(v0 + 64) + 40 * *(v0 + 104));
  v4 = v2[7];
  v3 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v4);
  v5 = (*(v3 + 48))(v4, v3);
  v7 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + 16);
  v10 = v0;
  *(v0 + 56) = v9;
  v79 = v0 + 56;
  v11 = sub_22FA2DB54(v5, v7);
  v13 = *(v9 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(v3) = v12;
  if (*(v9 + 24) >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_11:
    v0 = v11;
    sub_22FA701DC();
    v11 = v0;
    v19 = *(v10 + 15);
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_22FA6BBC0(v16, isUniquelyReferenced_nonNull_native);
  v11 = sub_22FA2DB54(v5, v7);
  if ((v3 & 1) != (v17 & 1))
  {
LABEL_4:

    return sub_22FCC9774();
  }

LABEL_8:
  v19 = *(v0 + 120);
  if (v3)
  {
LABEL_9:
    v20 = v11;

    v21 = *v79;
    *(*(*v79 + 56) + 8 * v20) = v19;
    goto LABEL_14;
  }

LABEL_12:
  v21 = *v79;
  *(*v79 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = v5;
  v22[1] = v7;
  *(v21[7] + 8 * v11) = v19;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
    goto LABEL_76;
  }

  v21[2] = v24;
LABEL_14:
  v25 = *(v10 + 12);
  v26 = *(v10 + 13) + 1;
  *(*(v10 + 11) + 16) = v21;
  if (v26 == v25)
  {
    v78 = v10;
    v0 = sub_22FA5F640(*(v10 + 10), *(v10 + 11));

    v10 = sub_22FA4CC50(MEMORY[0x277D84F90]);
    v85 = MEMORY[0x277D84FA0];
    if (v0 >> 62)
    {
      goto LABEL_77;
    }

    v83 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
    v82 = v0;
    if (v83)
    {
      v27 = 0;
      v80 = v0 & 0xFFFFFFFFFFFFFF8;
      v81 = v0 & 0xC000000000000001;
      while (1)
      {
        if (v81)
        {
          v28 = MEMORY[0x231908810](v27, v0);
          v29 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v27 >= *(v80 + 16))
          {
            goto LABEL_70;
          }

          v28 = *(v0 + 8 * v27 + 32);

          v29 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
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
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            v83 = sub_22FCC92C4();
            goto LABEL_17;
          }
        }

        v31 = v28[5];
        v30 = v28[6];
        __swift_project_boxed_opaque_existential_1(v28 + 2, v31);
        v32 = (*(v30 + 48))(v31, v30);
        v34 = v32;
        v35 = v33;
        if (*(v10 + 2))
        {
          v36 = sub_22FA2DB54(v32, v33);
          if (v37)
          {
            sub_22FB050C4(v86, *(*(v10 + 7) + 8 * v36));
          }
        }

        v0 = swift_isUniquelyReferenced_nonNull_native();
        v86[0] = v10;
        v39 = sub_22FA2DB54(v34, v35);
        v40 = *(v10 + 2);
        v41 = (v38 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          goto LABEL_71;
        }

        v43 = v38;
        if (*(v10 + 3) >= v42)
        {
          if (v0)
          {
            if (v38)
            {
              goto LABEL_19;
            }
          }

          else
          {
            sub_22FA6F95C();
            if (v43)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          sub_22FA6AEC8(v42, v0);
          v44 = sub_22FA2DB54(v34, v35);
          if ((v43 & 1) != (v45 & 1))
          {
            goto LABEL_4;
          }

          v39 = v44;
          if (v43)
          {
LABEL_19:

            v10 = v86[0];
            *(*(v86[0] + 7) + 8 * v39) = v27;

            goto LABEL_20;
          }
        }

        v10 = v86[0];
        *&v86[0][8 * (v39 >> 6) + 64] |= 1 << v39;
        v46 = (*(v10 + 6) + 16 * v39);
        *v46 = v34;
        v46[1] = v35;
        *(*(v10 + 7) + 8 * v39) = v27;

        v47 = *(v10 + 2);
        v15 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (v15)
        {
          goto LABEL_72;
        }

        *(v10 + 2) = v48;
LABEL_20:
        ++v27;
        v0 = v82;
        if (v29 == v83)
        {
          v56 = v85;
          goto LABEL_46;
        }
      }
    }

    v56 = MEMORY[0x277D84FA0];
LABEL_46:

    v57 = *(v56 + 16);
    v0 = MEMORY[0x277D84F90];
    if (v57 && (v0 = sub_22FA86B8C(*(v56 + 16), 0), v58 = sub_22FA8851C(v86, (v0 + 32), v57, v56), v59 = v86[0], v60 = v86[3], , sub_22FA37D64(v59), v58 != v57))
    {
      __break(1u);
    }

    else
    {
      v86[0] = v0;
      sub_22FA5EC9C(v86);
      v61 = *(v86[0] + 2);
      v60 = v82;
      if (v61)
      {
        v62 = v86[0] + 32;
        do
        {
          v64 = *v62;
          v62 += 8;
          v63 = v64;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v60 & 0x8000000000000000) != 0 || (v60 & 0x4000000000000000) != 0)
          {
            v60 = sub_22FB0FFCC();
          }

          v65 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v63 >= v65)
          {
            goto LABEL_73;
          }

          v66 = v65 - 1;
          v0 = *((v60 & 0xFFFFFFFFFFFFFF8) + 8 * v63 + 0x20);
          memmove(((v60 & 0xFFFFFFFFFFFFFF8) + 8 * v63 + 32), ((v60 & 0xFFFFFFFFFFFFFF8) + 8 * v63 + 40), 8 * (v65 - 1 - v63));
          *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) = v66;
        }

        while (--v61);
      }

      if (!(v60 >> 62))
      {
        v67 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v67)
        {
LABEL_58:
          v86[0] = MEMORY[0x277D84F90];
          result = sub_22FA8713C(0, v67 & ~(v67 >> 63), 0);
          if (v67 < 0)
          {
            __break(1u);
            return result;
          }

          v68 = 0;
          v69 = (v79 - 40);
          v70 = v86[0];
          v71 = v60 & 0xC000000000000001;
          v84 = v60 & 0xFFFFFFFFFFFFFF8;
          v72 = v60;
          do
          {
            if (v71)
            {
              v73 = MEMORY[0x231908810](v68, v60);
            }

            else
            {
              if ((v68 & 0x8000000000000000) != 0)
              {
                goto LABEL_74;
              }

              if (v68 >= *(v84 + 16))
              {
                goto LABEL_75;
              }

              v73 = *(v60 + 8 * v68 + 32);
            }

            sub_22FA2D328(v73 + 16, v69);

            v86[0] = v70;
            v75 = *(v70 + 2);
            v74 = *(v70 + 3);
            v0 = v75 + 1;
            if (v75 >= v74 >> 1)
            {
              sub_22FA8713C((v74 > 1), v75 + 1, 1);
              v70 = v86[0];
            }

            ++v68;
            *(v70 + 2) = v0;
            sub_22FA2CF78(v69, &v70[40 * v75 + 32]);
            v60 = v72;
          }

          while (v67 != v68);
          v76 = v78;

          goto LABEL_81;
        }

LABEL_80:
        v76 = v78;

        v70 = MEMORY[0x277D84F90];
LABEL_81:
        v77 = *(v76 + 1);

        return v77(v70);
      }
    }

    v67 = sub_22FCC92C4();
    if (v67)
    {
      goto LABEL_58;
    }

    goto LABEL_80;
  }

  v49 = *(v10 + 13);
  *(v10 + 13) = v49 + 1;
  v50 = (*(v10 + 8) + 40 * v49);
  v52 = v50[12];
  v51 = v50[13];
  v53 = __swift_project_boxed_opaque_existential_1(v50 + 9, v52);
  v54 = swift_task_alloc();
  *(v10 + 14) = v54;
  *v54 = v10;
  v54[1] = sub_22FA5A100;
  v55 = *(v10 + 9);

  return sub_22FB5AD74(v53, v55, v52, v51);
}

uint64_t sub_22FA5AA78(uint64_t a1)
{
  v2 = v1[17];
  v3 = OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_state;
  v1[18] = OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_state;
  if (*(v2 + v3) == 1)
  {
    v4 = swift_task_alloc();
    v1[19] = v4;
    *v4 = v1;
    v4[1] = sub_22FA5AB8C;

    return sub_22FA5B788();
  }

  else
  {
    sub_22FA61CB0();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    v7 = v1[1];

    return v7();
  }
}

uint64_t sub_22FA5AB8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 160) = a1;
    type metadata accessor for SchedulableTree();
    v8 = swift_task_alloc();
    *(v4 + 168) = v8;
    *v8 = v5;
    v8[1] = sub_22FA5AD2C;

    return sub_22FA599E8(a1);
  }
}

uint64_t sub_22FA5AD2C(uint64_t a1)
{
  v2 = *(*v1 + 136);
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_22FA5AE60, v2, 0);
}

uint64_t sub_22FA5AE60()
{
  v40 = v0;
  v1 = v0[17];
  *(v1 + 112) = v0[22];

  v2 = *(*(v1 + 112) + 16);
  v0[23] = OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_logger;

  v3 = sub_22FCC8664();
  if (v2)
  {
    v4 = sub_22FCC8F34();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[17];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v39[0] = v7;
      *v6 = 134218242;
      *(v6 + 4) = v2;
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_22FA2F600(*(v5 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_identifier), *(v5 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_identifier + 8), v39);
      _os_log_impl(&dword_22FA28000, v3, v4, "Submitting %ld tasks for activity %s", v6, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x23190A000](v7, -1, -1);
      MEMORY[0x23190A000](v6, -1, -1);
    }

    v8 = *(v1 + 112);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v8 + 32;

      v38 = v1;
      do
      {
        sub_22FA2D328(v10, (v0 + 2));
        sub_22FA2D328(v10, (v0 + 7));
        v11 = sub_22FCC8664();
        v12 = sub_22FCC8F34();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v39[0] = v14;
          *v13 = 136446466;
          v16 = v0[5];
          v15 = v0[6];
          __swift_project_boxed_opaque_existential_1(v0 + 2, v16);
          v17 = (*(v15 + 40))(v16, v15);
          v19 = v18;
          __swift_destroy_boxed_opaque_existential_0(v0 + 2);
          v20 = sub_22FA2F600(v17, v19, v39);

          *(v13 + 4) = v20;
          *(v13 + 12) = 2082;
          v21 = v0[10];
          v22 = v0[11];
          __swift_project_boxed_opaque_existential_1(v0 + 7, v21);
          (*(v22 + 32))(v21, v22);
          v23 = v0[15];
          v24 = v0[16];
          __swift_project_boxed_opaque_existential_1(v0 + 12, v23);
          v25 = (*(v24 + 40))(v23, v24);
          v27 = v26;
          __swift_destroy_boxed_opaque_existential_0(v0 + 12);
          __swift_destroy_boxed_opaque_existential_0(v0 + 7);
          v28 = sub_22FA2F600(v25, v27, v39);

          *(v13 + 14) = v28;
          _os_log_impl(&dword_22FA28000, v11, v12, "Submitting %{public}s on worker %{public}s", v13, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190A000](v14, -1, -1);
          v29 = v13;
          v1 = v38;
          MEMORY[0x23190A000](v29, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(v0 + 2);
          __swift_destroy_boxed_opaque_existential_0(v0 + 7);
        }

        v10 += 40;
        --v9;
      }

      while (v9);

      v8 = *(v1 + 112);
    }

    v0[24] = v8;

    v30 = swift_task_alloc();
    v0[25] = v30;
    *v30 = v0;
    v30[1] = sub_22FA5B3C0;

    return sub_22FBCE47C(v8, 0, 0);
  }

  else
  {
    v32 = sub_22FCC8F14();

    if (os_log_type_enabled(v3, v32))
    {
      v33 = v0[17];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_22FA2F600(*(v33 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_identifier), *(v33 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_identifier + 8), v39);
      _os_log_impl(&dword_22FA28000, v3, v32, "No task to submit for activity %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x23190A000](v35, -1, -1);
      MEMORY[0x23190A000](v34, -1, -1);
    }

    sub_22FA61CB0();
    swift_allocError();
    *v36 = 1;
    swift_willThrow();
    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_22FA5B3C0()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = sub_22FA5B724;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_22FA5B4E8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FA5B4E8()
{
  v16 = v0;
  v2 = v0[17];
  v1 = v0[18];
  if (*(v2 + v1) == 1)
  {
    *(v2 + v1) = 2;
    goto LABEL_16;
  }

  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F34();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[17];
    v5 = v0[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_22FA2F600(*(v6 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_identifier), *(v6 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_identifier + 8), &v15);
    *(v7 + 12) = 2080;
    v9 = *(v6 + v5);
    if (v9 <= 1)
    {
      if (*(v6 + v5))
      {
        v10 = 0xE700000000000000;
        v11 = 0x676E696E6E7552;
      }

      else
      {
        v10 = 0xEC000000676E697ALL;
        v11 = 0x696C616974696E49;
      }

      goto LABEL_14;
    }

    if (v9 == 2)
    {
      v11 = 0x6574656C706D6F43;
    }

    else
    {
      if (v9 == 3)
      {
        v10 = 0xEA0000000000676ELL;
        v11 = 0x696C6C65636E6143;
LABEL_14:
        v12 = sub_22FA2F600(v11, v10, &v15);

        *(v7 + 14) = v12;
        _os_log_impl(&dword_22FA28000, v3, v4, "Not setting activity %s as completed, current state: %s", v7, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v8, -1, -1);
        MEMORY[0x23190A000](v7, -1, -1);
        goto LABEL_15;
      }

      v11 = 0x656C6C65636E6143;
    }

    v10 = 0xE900000000000064;
    goto LABEL_14;
  }

LABEL_15:

LABEL_16:
  v13 = v0[1];

  return v13();
}

uint64_t sub_22FA5B724()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FA5B7A8()
{
  v1 = *(v0 + 104);
  v2 = v1[18];
  v3 = v1[19];
  __swift_project_boxed_opaque_existential_1(v1 + 15, v2);
  v7 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_22FA5B8D8;
  v5 = *(v0 + 104);

  return v7(v5, v2, v3);
}

uint64_t sub_22FA5B8D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 120) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 104);

    return MEMORY[0x2822009F8](sub_22FA5BA20, v7, 0);
  }
}

uint64_t sub_22FA5BA20()
{
  v1 = v0[15];
  v2 = *(v1 + 16);
  v0[16] = v2;
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    v0[18] = MEMORY[0x277D84F90];
    v0[19] = v3;
    v0[17] = 0;
    sub_22FA2D328(v1 + 32, (v0 + 2));
    v5 = v0[5];
    v4 = v0[6];
    v6 = __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_22FA5BB5C;
    v8 = v0[13];

    return sub_22FA615D4(v6, v8, v5, v4);
  }

  else
  {

    v10 = v0[1];
    v11 = MEMORY[0x277D84F90];

    return v10(v11);
  }
}

uint64_t sub_22FA5BB5C(char a1)
{
  v2 = *(*v1 + 104);
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_22FA5BC74, v2, 0);
}

uint64_t sub_22FA5BC74()
{
  v1 = *(v0 + 152);
  if (*(v0 + 168))
  {
    sub_22FA2D328(v0 + 16, v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 96) = v1;
    v3 = *(v0 + 152);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_22FAC2350(0, v3[2] + 1, 1, *(v0 + 152));
      *(v0 + 96) = v3;
    }

    v5 = v3[2];
    v4 = v3[3];
    if (v5 >= v4 >> 1)
    {
      v3 = sub_22FAC2350((v4 > 1), v5 + 1, 1, v3);
      *(v0 + 96) = v3;
    }

    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v6);
    v9 = *(v6 - 8);
    v10 = swift_task_alloc();
    (*(v9 + 16))(v10, v8, v6);
    sub_22FA4CABC(v5, v10, (v0 + 96), v6, v7);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));

    v1 = v3;
  }

  else
  {
    v3 = *(v0 + 144);
  }

  v11 = *(v0 + 128);
  v12 = *(v0 + 136) + 1;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v12 == v11)
  {

    v13 = *(v0 + 8);

    return v13(v3);
  }

  else
  {
    v15 = *(v0 + 136);
    *(v0 + 144) = v3;
    *(v0 + 152) = v1;
    *(v0 + 136) = v15 + 1;
    sub_22FA2D328(*(v0 + 120) + 40 * v15 + 72, v0 + 16);
    v17 = *(v0 + 40);
    v16 = *(v0 + 48);
    v18 = __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
    v19 = swift_task_alloc();
    *(v0 + 160) = v19;
    *v19 = v0;
    v19[1] = sub_22FA5BB5C;
    v20 = *(v0 + 104);

    return sub_22FA615D4(v18, v20, v17, v16);
  }
}

uint64_t sub_22FA5BF10(char a1)
{
  *(v2 + 120) = v1;
  *(v2 + 144) = a1;
  return MEMORY[0x2822009F8](sub_22FA5BF34, v1, 0);
}

uint64_t sub_22FA5BF34()
{
  v1 = v0[15];
  v2 = *(v1 + 160);
  v0[16] = v2;
  v3 = *(v1 + 112);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v16 = v2;
    v17 = MEMORY[0x277D84F90];

    sub_22FA86EA8(0, v4, 0);
    v5 = v17;
    v6 = v3 + 32;
    do
    {
      sub_22FA2D328(v6, (v0 + 2));
      v7 = v0[5];
      v8 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
      v9 = (*(v8 + 48))(v7, v8);
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      v13 = *(v17 + 16);
      v12 = *(v17 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_22FA86EA8((v12 > 1), v13 + 1, 1);
      }

      *(v17 + 16) = v13 + 1;
      v14 = v17 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      v6 += 40;
      --v4;
    }

    while (v4);

    v2 = v16;
  }

  v0[17] = v5;

  return MEMORY[0x2822009F8](sub_22FA5C0A4, v2, 0);
}

uint64_t sub_22FA5C0A4()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 128);
    v4 = OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_scheduledTaskByIdentifier;
    swift_beginAccess();
    v5 = (v1 + 40);
    do
    {
      v9 = *(v3 + v4);
      if (*(v9 + 16))
      {
        v10 = *(v5 - 1);
        v11 = *v5;

        v12 = sub_22FA2DB54(v10, v11);
        v14 = v13;

        if (v14)
        {
          v6 = *(v0 + 144);
          sub_22FA2D328(*(v9 + 56) + 40 * v12, v0 + 56);

          sub_22FA2CF78((v0 + 56), v0 + 16);
          v7 = *(v0 + 40);
          v8 = *(v0 + 48);
          __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
          (*(v8 + 144))(v6, v7, v8);
          __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        }

        else
        {
        }
      }

      v5 += 2;
      --v2;
    }

    while (v2);
  }

  if (*(v0 + 144) == 1)
  {
    return sub_22FCC94D4();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22FA5C290()
{
  v1[37] = v0;
  v2 = sub_22FCC67F4();
  v1[38] = v2;
  v1[39] = *(v2 - 8);
  v1[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA5C350, v0, 0);
}

uint64_t sub_22FA5C350()
{
  v1 = *(*(v0[37] + 168) + 128);
  v0[41] = v1;
  v2 = *(v1 + 128);
  v0[42] = v2;

  return MEMORY[0x2822009F8](sub_22FA5C3D8, v2, 0);
}

uint64_t sub_22FA5C3D8()
{
  v1 = *(v0 + 296);
  sub_22FA62F5C(0);
  *(v0 + 344) = v2;

  return MEMORY[0x2822009F8](sub_22FA5C454, v1, 0);
}

uint64_t sub_22FA5C454(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0u;
  v4 = *(v3 + 344);
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    while (v6 < *(v4 + 16))
    {
      sub_22FA2D328(v7, v3 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7450, qword_22FCD61A0);
      if (swift_dynamicCast())
      {
        sub_22FA2B420(v3 + 16, &unk_27DAD8390, &qword_22FCDCDB0);
        sub_22FA2CF78((v3 + 136), v3 + 56);
        sub_22FA2D328(v3 + 56, v3 + 16);
        if (*__swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80)) == 1)
        {

          __swift_destroy_boxed_opaque_existential_0((v3 + 56));
          goto LABEL_11;
        }

        a1 = __swift_destroy_boxed_opaque_existential_0((v3 + 56));
      }

      else
      {
        *(v3 + 168) = 0;
        *(v3 + 152) = 0u;
        *(v3 + 136) = 0u;
        a1 = sub_22FA2B420(v3 + 136, &unk_27DAD8390, &qword_22FCDCDB0);
      }

      ++v6;
      v7 += 40;
      if (v5 == v6)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

LABEL_9:

LABEL_11:
  sub_22FA4FAA4(v3 + 16, v3 + 216, &unk_27DAD8390, &qword_22FCDCDB0);
  v8 = *(v3 + 328);
  if (*(v3 + 240))
  {
    sub_22FA2CF78((v3 + 216), v3 + 176);
    a1 = sub_22FA5C6D0;
    a2 = v8;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  sub_22FA2B420(v3 + 16, &unk_27DAD8390, &qword_22FCDCDB0);

  sub_22FA2B420(v3 + 216, &unk_27DAD8390, &qword_22FCDCDB0);

  v9 = *(v3 + 8);

  return v9(0);
}

uint64_t sub_22FA5C6D0()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  sub_22FCC9384();

  sub_22FCC67E4();
  v5 = sub_22FCC67B4();
  v7 = v6;
  (*(v4 + 8))(v2, v3);
  MEMORY[0x231907FA0](v5, v7);

  *(v0 + 352) = 0xD000000000000025;
  *(v0 + 360) = 0x800000022FCE02C0;
  v9 = *(v0 + 200);
  v8 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v9);
  v10 = (*(*(v8 + 8) + 16))(v9);
  v12 = v11;
  *(v0 + 368) = v11;
  sub_22FA2D328(v0 + 176, v0 + 256);
  v13 = swift_allocObject();
  *(v0 + 376) = v13;
  *(v13 + 16) = v1;
  sub_22FA2CF78((v0 + 256), v13 + 24);

  v14 = swift_task_alloc();
  *(v0 + 384) = v14;
  *v14 = v0;
  v14[1] = sub_22FA5C8B8;

  return sub_22FC16B78(v10, v12, 0xD000000000000025, 0x800000022FCE02C0, &unk_22FCD24A0, v13);
}

uint64_t sub_22FA5C8B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v5 = v4[37];

    v6 = sub_22FA5CC24;
    v7 = v5;
  }

  else
  {
    v8 = v4[41];

    v4[50] = a1;
    v6 = sub_22FA5CA44;
    v7 = v8;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_22FA5CA44()
{
  v2 = v0[44];
  v1 = v0[45];
  v11 = v0[37];
  v3 = *(v0[50] + 120);
  v0[51] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350, &unk_22FCD3B00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FCD1800;
  v6 = v0[25];
  v5 = v0[26];
  v7 = __swift_project_boxed_opaque_existential_1(v0 + 22, v6);
  *(v4 + 56) = v6;
  *(v4 + 64) = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v7, v6);
  v9 = v3;
  sub_22FC163DC(v4, v2, v1);

  return MEMORY[0x2822009F8](sub_22FA5CB94, v11, 0);
}

uint64_t sub_22FA5CB94()
{
  v1 = v0[51];

  sub_22FA2B420((v0 + 2), &unk_27DAD8390, &qword_22FCDCDB0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_22FA5CC24()
{
  v1 = v0[49];

  sub_22FA2B420((v0 + 2), &unk_27DAD8390, &qword_22FCDCDB0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);

  v2 = v0[1];

  return v2(0);
}

uint64_t sub_22FA5CCDC()
{
  v1 = v0[13];
  v2 = v1[18];
  v0[14] = v2;
  v3 = v1[19];
  v0[15] = v3;
  __swift_project_boxed_opaque_existential_1(v1 + 15, v2);
  v7 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_22FA5CE18;
  v5 = v0[13];

  return v7(v5, v2, v3);
}

uint64_t sub_22FA5CE18(uint64_t a1)
{
  v4 = *v2;
  v4[17] = v1;

  v5 = v4[13];
  if (v1)
  {
    v6 = sub_22FA5D4C0;
  }

  else
  {
    v4[18] = a1;
    v6 = sub_22FA5CF54;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FA5CF54()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370, &unk_22FCD6180);
  v1 = sub_22FCC9494();
  v0[19] = v1;

  v2 = *(v1 + 16);
  v0[20] = v2;
  if (v2)
  {
    v3 = v0[13];
    v0[21] = *(v3 + 168);
    v0[22] = 0;
    sub_22FA2D328(v0[19] + 32, (v0 + 2));
    v0[12] = v3;
    type metadata accessor for ActivitySession(0);
    sub_22FA61BC0(&qword_281480D10, &unk_22FCD2408);

    sub_22FCC9324();
    v5 = v0[5];
    v4 = v0[6];
    v6 = __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
    v7 = swift_task_alloc();
    v0[23] = v7;
    *v7 = v0;
    v7[1] = sub_22FA5D16C;
    v8 = v0[21];

    return sub_22FB2B2E8(v6, (v0 + 7), v8, v5, v4);
  }

  else
  {

    v10 = *(*(v0[13] + 160) + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_changeCache);
    v0[24] = v10;

    return MEMORY[0x2822009F8](sub_22FA5D458, v10, 0);
  }
}

uint64_t sub_22FA5D16C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);

  sub_22FA3A7C4(v1 + 56);
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  return MEMORY[0x2822009F8](sub_22FA5D28C, v2, 0);
}

uint64_t sub_22FA5D28C()
{
  v1 = v0[22] + 1;
  if (v1 == v0[20])
  {

    v2 = *(*(v0[13] + 160) + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_changeCache);
    v0[24] = v2;

    return MEMORY[0x2822009F8](sub_22FA5D458, v2, 0);
  }

  else
  {
    v0[22] = v1;
    v3 = v0[13];
    sub_22FA2D328(v0[19] + 40 * v1 + 32, (v0 + 2));
    v0[12] = v3;
    type metadata accessor for ActivitySession(0);
    sub_22FA61BC0(&qword_281480D10, &unk_22FCD2408);

    sub_22FCC9324();
    v5 = v0[5];
    v4 = v0[6];
    v6 = __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
    v7 = swift_task_alloc();
    v0[23] = v7;
    *v7 = v0;
    v7[1] = sub_22FA5D16C;
    v8 = v0[21];

    return sub_22FB2B2E8(v6, (v0 + 7), v8, v5, v4);
  }
}

uint64_t sub_22FA5D458()
{
  sub_22FA3848C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FA5D4C0()
{
  v16 = v0;
  v1 = v0[17];

  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  if (v5)
  {
    v7 = v0[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_22FA2F600(*(v7 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_identifier), *(v7 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_identifier + 8), &v15);
    *(v8 + 12) = 2112;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_22FA28000, v3, v4, "Failed to unload worker(s) and resources for activity %s: %@", v8, 0x16u);
    sub_22FA2B420(v9, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23190A000](v10, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_22FA5D698()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v37 - v4;
  v6 = sub_22FCC8684();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v37 - v13;
  if (*(v1 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_cancellationTask))
  {
    v16 = *(v1 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_cancellationTask);
  }

  else
  {
    v42 = OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_cancellationTask;
    v17 = *(v1 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_identifier + 8);
    v43 = *(v1 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_identifier);
    v39 = *(v7 + 16);
    v40 = v7 + 16;
    v39(&v37 - v13, v1 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_logger, v6, v14);
    swift_bridgeObjectRetain_n();
    v18 = sub_22FCC8664();
    v19 = sub_22FCC8F34();

    v20 = os_log_type_enabled(v18, v19);
    v41 = v17;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v37 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = v17;
      v23 = v21;
      v24 = swift_slowAlloc();
      v38 = v5;
      v25 = v24;
      v44 = v24;
      *v23 = 136446210;
      v26 = v22;
      v10 = v37;
      *(v23 + 4) = sub_22FA2F600(v43, v26, &v44);
      _os_log_impl(&dword_22FA28000, v18, v19, "Cancelling %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      v27 = v25;
      v5 = v38;
      MEMORY[0x23190A000](v27, -1, -1);
      MEMORY[0x23190A000](v23, -1, -1);
    }

    *(v1 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_state) = 3;
    if (*(v1 + OBJC_IVAR____TtC13PhotoAnalysis15ActivitySession_taskSubmissionTask))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
      sub_22FCC8D54();
    }

    v28 = sub_22FCC8D14();
    (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
    v29 = v5;
    v30 = swift_allocObject();
    swift_weakInit();
    (v39)(v10, v15, v6);
    v31 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v32 = (v8 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    *(v33 + 4) = v30;
    (*(v7 + 32))(&v33[v31], v10, v6);
    v34 = &v33[v32];
    v35 = v41;
    *v34 = v43;
    *(v34 + 1) = v35;
    v16 = sub_22FC3EE08(0, 0, v29, &unk_22FCD2478, v33);
    (*(v7 + 8))(v15, v6);
    *(v1 + v42) = v16;
  }

  return v16;
}

uint64_t sub_22FA5DABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return MEMORY[0x2822009F8](sub_22FA5DAE0, 0, 0);
}

uint64_t sub_22FA5DAE0()
{
  v11 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_22FA5DC8C, Strong, 0);
  }

  else
  {

    v2 = sub_22FCC8664();
    v3 = sub_22FCC8F34();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = v0[7];
      v4 = v0[8];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v10 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_22FA2F600(v5, v4, &v10);
      _os_log_impl(&dword_22FA28000, v2, v3, "Activity session %{public}s doesn't exist anymore", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x23190A000](v7, -1, -1);
      MEMORY[0x23190A000](v6, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22FA5DC8C()
{
  v1 = v0[9];
  v2 = *(v1 + 160);
  sub_22FA61BC0(&qword_281480CF8, &unk_22FCD2448);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_22FA5DDA0;

  return MEMORY[0x282200600]();
}

uint64_t sub_22FA5DDA0()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_22FA5DECC, v1, 0);
}

uint64_t sub_22FA5DEFC()
{
  v10 = v0;

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[7];
    v3 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_22FA2F600(v4, v3, &v9);
    _os_log_impl(&dword_22FA28000, v1, v2, "Cancelled %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190A000](v6, -1, -1);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_22FA5E048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[14] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA5E0F8, a3, 0);
}

uint64_t sub_22FA5E0F8()
{
  v1 = *(*(v0 + 120) + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v24 = **(v0 + 112);
    v3 = v1 + 32;
    v4 = sub_22FCC8D14();
    v5 = *(v4 - 8);
    v23 = *(v5 + 56);
    v22 = (v5 + 48);
    v20 = (v5 + 8);

    v21 = v4;
    while (1)
    {
      v25 = v2;
      v8 = *(v0 + 136);
      v9 = *(v0 + 144);
      v10 = *(v0 + 128);
      v23(v9, 1, 1, v4);
      sub_22FA2D328(v3, v0 + 16);
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = 0;
      v11[4] = v10;
      sub_22FA2CF78((v0 + 16), (v11 + 5));
      sub_22FA4FAA4(v9, v8, &unk_27DAD8710, &unk_22FCD1B40);
      LODWORD(v8) = (*v22)(v8, 1, v4);

      v13 = *(v0 + 136);
      if (v8 == 1)
      {
        sub_22FA2B420(*(v0 + 136), &unk_27DAD8710, &unk_22FCD1B40);
        if (*v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_22FCC8D04();
        (*v20)(v13, v4);
        if (*v12)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v14 = sub_22FCC8CC4();
          v15 = v16;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v14 = 0;
      v15 = 0;
LABEL_10:
      v17 = swift_allocObject();
      *(v17 + 16) = &unk_22FCD2498;
      *(v17 + 24) = v11;

      if (v15 | v14)
      {
        v6 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v14;
        *(v0 + 80) = v15;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 144);
      *(v0 + 88) = 1;
      *(v0 + 96) = v6;
      *(v0 + 104) = v24;
      swift_task_create();

      sub_22FA2B420(v7, &unk_27DAD8710, &unk_22FCD1B40);
      v3 += 40;
      v2 = v25 - 1;
      v4 = v21;
      if (v25 == 1)
      {

        break;
      }
    }
  }

  v18 = *(v0 + 8);

  return v18();
}