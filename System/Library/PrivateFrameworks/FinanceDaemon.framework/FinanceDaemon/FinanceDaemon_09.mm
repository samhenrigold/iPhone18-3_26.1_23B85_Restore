uint64_t sub_226B9D2C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B98F48(v2, v3, v4);
}

uint64_t sub_226B9D370(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B98D24(a1, v4, v5, v6);
}

uint64_t sub_226B9D424(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B94228(a1, v5, v4);
}

uint64_t objectdestroy_47Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_226B9D51C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B98AFC(a1, v5, v4);
}

uint64_t sub_226B9D5C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B943D8(a1, v5, v4);
}

uint64_t sub_226B9D674(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_226D6B8CC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_226D6B82C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_226D6C3CC() - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + v10);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_226AE5A84;

  return sub_226B9811C(a1, v13, v1 + v6, v1 + v9, v14, v1 + v12);
}

uint64_t sub_226B9D838(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B94588(a1, v5, v4);
}

uint64_t sub_226B9D8E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226AE5A84;

  return sub_226B9806C(v2, v3, v4);
}

uint64_t sub_226B9D98C(uint64_t a1)
{
  v4 = *(sub_226D6B9BC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B97FB8(a1, v6, v1 + v5);
}

uint64_t sub_226B9DA70(uint64_t a1)
{
  v4 = *(sub_226D671FC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B97A60(a1, v6, v1 + v5);
}

uint64_t sub_226B9DB54(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B94738(a1, v5, v4);
}

uint64_t sub_226B9DC00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72A0, &unk_226D7C550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226B9DC70(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A72A0, &unk_226D7C550) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_226D671FC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1 + v9;
  v14 = v1 + v9 + *(v8 + 64);
  v15 = *v14;
  v16 = v14[1];
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_226AE5A84;

  return sub_226B97974(a1, v10, v11, v12, v1 + v6, v13, v15, v16);
}

uint64_t sub_226B9DE18(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B948E8(a1, v5, v4);
}

uint64_t objectdestroy_38Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_226B9DF90(uint64_t a1)
{
  v4 = *(sub_226D6B9BC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B978C0(a1, v6, v1 + v5);
}

uint64_t sub_226B9E074(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AE5A84;

  return sub_226B94A98(a1, v5, v4);
}

uint64_t objectdestroy_22Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_226B9E16C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226B97630(a1, v4, v5, v6);
}

uint64_t __swift_deallocate_boxed_opaque_existential_2(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x22AA8BEE0);
  }

  return result;
}

unint64_t sub_226B9E270()
{
  result = qword_27D7A6F48;
  if (!qword_27D7A6F48)
  {
    sub_226D6C63C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A6F48);
  }

  return result;
}

void sub_226B9E364()
{
  v0 = sub_226D67F1C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F710);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_226AC4530(0xD00000000000001ELL, 0x8000000226D81360, &v22);
    _os_log_impl(&dword_226AB4000, v5, v6, "Firing the %s engagement event", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v9 = objc_opt_self();
  v10 = [v9 bagSubProfile];
  if (v10)
  {
    v5 = v10;
    v11 = [v9 bagSubProfileVersion];
    if (v11)
    {
      v12 = v11;
      v13 = [objc_opt_self() bagForProfile:v5 profileVersion:v11];

      v14 = objc_allocWithZone(MEMORY[0x277CEE598]);
      v15 = v13;
      v16 = sub_226D6E36C();
      v17 = [v14 initWithContainerID:v16 bag:v15];

      v18 = [objc_allocWithZone(MEMORY[0x277CEE5A8]) initForEngagement];
      v19 = sub_226D6E36C();
      [v18 setEventType_];

      sub_226D67E6C();
      sub_226D67F0C();
      (*(v1 + 8))(v3, v0);
      v20 = sub_226D6E36C();

      [v18 setApp_];

      [v17 enqueueEvent_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_226B9E6E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_226B9E704, 0, 0);
}

uint64_t sub_226B9E704()
{
  v1 = v0[6];
  v2 = v0[7];
  type metadata accessor for InstrumentationSystemTask();
  inited = swift_initStackObject();
  *(inited + 16) = v1;
  *(inited + 24) = v2;

  sub_226D66E6C();
  swift_setDeallocating();

  v4 = v0[1];

  return v4();
}

uint64_t sub_226B9E7EC(uint64_t a1)
{
  v2 = sub_226D6B5EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_226D6D4AC();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v9 = sub_226D6E07C();
  __swift_project_value_buffer(v9, qword_28105F5E0);
  v10 = sub_226D6E05C();
  v11 = sub_226D6E9EC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = v3;
    v13 = v12;
    *v12 = 0;
    _os_log_impl(&dword_226AB4000, v10, v11, "Running instrumentation task", v12, 2u);
    v3 = v18;
    MEMORY[0x22AA8BEE0](v13, -1, -1);
  }

  sub_226C0B9EC(v14);
  v15 = *(a1 + 16);
  sub_226C940F4();
  sub_226CAD354();
  sub_226D6D46C();
  sub_226D6B58C();
  sub_226B9EA88(v8, v5, v15);
  (*(v6 + 8))(v8, v19);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_226B9EA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v48 = a1;
  v4 = sub_226D6D4AC();
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v43 - v14;
  v16 = sub_226D6CD7C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_226D6B5EC();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, a2, v20, v22);
  sub_226C95100(v15);
  v48 = v17;
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v28 = *(v48 + 32);
    v43 = v16;
    v28(v19, v15, v16);
    sub_226D69A4C();
    v29 = v19;
    if (v51)
    {
      v30 = v49;
      v31 = swift_dynamicCast();
      v32 = v47;
      (*(v47 + 7))(v30, v31 ^ 1u, 1, v4);
    }

    else
    {
      sub_226AC47B0(v50, &unk_27D7A8BB0, &unk_226D74340);
      v32 = v47;
      v30 = v49;
      (*(v47 + 7))(v49, 1, 1, v4);
    }

    sub_226AF265C(v30, v10);
    if ((*(v32 + 6))(v10, 1, v4) == 1)
    {
      sub_226AC47B0(v10, &qword_27D7A8BE0, &unk_226D718F0);
    }

    else
    {
      v33 = *(v32 + 4);
      v47 = "strumentationSystemTask";
      v34 = v44;
      v33(v44, v10, v4);
      v35 = v45;
      sub_226D6CD2C();
      v36 = sub_226D6D44C();
      v37 = *(v32 + 1);
      v37(v35, v4);
      v37(v34, v4);
      if (v36)
      {
        (*(v48 + 8))(v29, v43);
        (*(v21 + 8))(v24, v20);
LABEL_15:
        v25 = &qword_27D7A8BE0;
        v26 = &unk_226D718F0;
        v27 = v49;
        return sub_226AC47B0(v27, v25, v26);
      }
    }

    v51 = v4;
    __swift_allocate_boxed_opaque_existential_1(v50);
    sub_226D6CD2C();
    sub_226D69A2C();
    (*(v21 + 8))(v24, v20);
    sub_226AC47B0(v50, &unk_27D7A8BB0, &unk_226D74340);
    v38 = v46;
    v39 = sub_226C95844();
    v40 = v39;
    if (v39 >> 62)
    {
      if (sub_226D6EDFC() >= 1)
      {
        goto LABEL_12;
      }
    }

    else if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_12:
      sub_226C95B98(v40, v29);

      v41 = __swift_project_boxed_opaque_existential_1((v38 + 112), *(v38 + 136));
      sub_226AE532C((v41 + 41), v50);
      __swift_project_boxed_opaque_existential_1(v50, v51);
      sub_226D69AEC();

      (*(v48 + 8))(v29, v43);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      goto LABEL_15;
    }

    (*(v48 + 8))(v29, v43);

    goto LABEL_15;
  }

  (*(v21 + 8))(v24, v20);
  v25 = &qword_27D7A6558;
  v26 = &qword_226D7CCE0;
  v27 = v15;
  return sub_226AC47B0(v27, v25, v26);
}

void sub_226B9F100(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedScheduler];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = sub_226D6E36C();
  v7 = swift_allocObject();
  v7[2] = 0xD000000000000022;
  v7[3] = 0x8000000226D813B0;
  v7[4] = &unk_226D74F48;
  v7[5] = v5;
  v14[4] = sub_226B173EC;
  v14[5] = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_226C01160;
  v14[3] = &block_descriptor_7;
  v8 = _Block_copy(v14);

  v9 = [v4 registerForTaskWithIdentifier:v6 usingQueue:0 launchHandler:v8];
  _Block_release(v8);

  if ((v9 & 1) == 0)
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v10 = sub_226D6E07C();
    __swift_project_value_buffer(v10, qword_28105F5E0);
    v11 = sub_226D6E05C();
    v12 = sub_226D6E9DC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_226AB4000, v11, v12, "Unable to register maintenance tasks", v13, 2u);
      MEMORY[0x22AA8BEE0](v13, -1, -1);
    }
  }
}

uint64_t sub_226B9F34C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_226AD827C;

  return sub_226B9E6E4(v2, v3);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226B9F418@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Task = type metadata accessor for BankConnectInstitutionDataFetchTask(0);
  sub_226AF265C(v1 + Task[8], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_226AC47B0(v5, &qword_27D7A8BE0, &unk_226D718F0);
    return sub_226AF265C(v1 + Task[6], a1);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = *(v1 + Task[7]);
    v13 = v12 < 1;
    v14 = v12 - 1;
    if (!v13)
    {
      exp2(v14);
    }

    sub_226D6D3DC();
    (*(v7 + 8))(v9, v6);
    return (*(v7 + 56))(a1, 0, 1, v6);
  }
}

unint64_t sub_226B9F630()
{
  sub_226D6EEFC();

  Task = type metadata accessor for BankConnectInstitutionDataFetchTask(0);
  MEMORY[0x22AA8A510](*(v0 + *(Task + 20)), *(v0 + *(Task + 20) + 8));
  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0xD000000000000035;
}

uint64_t sub_226B9F6C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  v2[4] = swift_task_alloc();
  v3 = sub_226D684AC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_226D6BCEC();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for BankConnectInstitutionDataFetchTask(0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226B9F850, 0, 0);
}

uint64_t sub_226B9F850()
{
  v25 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  v3 = sub_226D6E07C();
  *(v0 + 112) = __swift_project_value_buffer(v3, qword_28105F710);
  sub_226BA1E6C(v2, v1, type metadata accessor for BankConnectInstitutionDataFetchTask);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9AC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24[0] = v10;
    *v9 = 136315138;
    sub_226D6EEFC();

    v24[1] = 0xD000000000000035;
    v24[2] = 0x8000000226D81450;
    MEMORY[0x22AA8A510](*(v7 + *(v8 + 20)), *(v7 + *(v8 + 20) + 8));
    MEMORY[0x22AA8A510](41, 0xE100000000000000);
    sub_226BA1ED4(v7, type metadata accessor for BankConnectInstitutionDataFetchTask);
    v11 = sub_226AC4530(0xD000000000000035, 0x8000000226D81450, v24);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_226AB4000, v4, v5, "%s: Starting to update institution", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  else
  {

    sub_226BA1ED4(v7, type metadata accessor for BankConnectInstitutionDataFetchTask);
  }

  v12 = (*(v0 + 24) + *(*(v0 + 88) + 20));
  if (MEMORY[0x22AA83210](*v12, v12[1]))
  {
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
    v15 = *(v0 + 64);
    sub_226D6BD1C();
    swift_allocObject();
    sub_226D6BD0C();
    (*(v14 + 104))(v13, *MEMORY[0x277CC8130], v15);
    sub_226D6BCFC();

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 24);
  v17 = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  __swift_project_boxed_opaque_existential_1(v17 + 1, v17[4]);
  v18 = sub_226D6C2AC();
  *(v0 + 120) = v18;
  v19 = swift_task_alloc();
  *(v0 + 128) = v19;
  *(v19 + 16) = v18;
  *(v19 + 24) = v16;
  v20 = swift_task_alloc();
  *(v0 + 136) = v20;
  *v20 = v0;
  v20[1] = sub_226B9FBE8;
  v21 = *(v0 + 56);
  v22 = *(v0 + 40);

  return MEMORY[0x282119B28](v21, &unk_226D75008, v19, v22);
}

uint64_t sub_226B9FBE8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_226BA07E4;
  }

  else
  {

    v2 = sub_226B9FD04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226B9FD04()
{
  *(v0 + 152) = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24))[51];

  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_226B9FDC0;
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);

  return MEMORY[0x28211A638](v3, v2);
}

uint64_t sub_226B9FDC0()
{

  return MEMORY[0x2822009F8](sub_226B9FED8, 0, 0);
}

uint64_t sub_226B9FED8()
{
  v30 = v0;
  v1 = *(v0 + 32);
  v2 = sub_226D6D1AC();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_226AC47B0(v1, &unk_27D7A62F8, &unk_226D73B70);
  if (v3 == 1)
  {
    *(v0 + 168) = __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24))[51];

    v4 = sub_226D6848C();
    v6 = v5;
    *(v0 + 176) = v5;
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_226BA0350;

    return MEMORY[0x28211A630](v4, v6);
  }

  else
  {
    v8 = *(v0 + 144);
    v9 = *(v0 + 56);
    v10 = *(v0 + 16);
    v11 = *(v0 + 24);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v12 = sub_226D676AC();
    v13 = swift_task_alloc();
    v13[2] = v11;
    v13[3] = v12;
    v13[4] = v9;
    v13[5] = v10;
    sub_226D6EB7C();
    if (v8)
    {
      v15 = *(v0 + 48);
      v14 = *(v0 + 56);
      v16 = *(v0 + 40);

      (*(v15 + 8))(v14, v16);

      v17 = *(v0 + 8);
    }

    else
    {
      v18 = *(v0 + 96);
      v19 = *(v0 + 24);

      sub_226BA1E6C(v19, v18, type metadata accessor for BankConnectInstitutionDataFetchTask);
      v20 = sub_226D6E05C();
      v21 = sub_226D6E9AC();
      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v0 + 96);
      if (v22)
      {
        v24 = *(v0 + 88);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v29[0] = v26;
        *v25 = 136315138;
        sub_226D6EEFC();

        v29[1] = 0xD000000000000035;
        v29[2] = 0x8000000226D81450;
        MEMORY[0x22AA8A510](*(v23 + *(v24 + 20)), *(v23 + *(v24 + 20) + 8));
        MEMORY[0x22AA8A510](41, 0xE100000000000000);
        sub_226BA1ED4(v23, type metadata accessor for BankConnectInstitutionDataFetchTask);
        v27 = sub_226AC4530(0xD000000000000035, 0x8000000226D81450, v29);

        *(v25 + 4) = v27;
        _os_log_impl(&dword_226AB4000, v20, v21, "%s: Successfully updated institution.", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        MEMORY[0x22AA8BEE0](v26, -1, -1);
        MEMORY[0x22AA8BEE0](v25, -1, -1);
      }

      else
      {

        sub_226BA1ED4(v23, type metadata accessor for BankConnectInstitutionDataFetchTask);
      }

      (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

      v17 = *(v0 + 8);
    }

    return v17();
  }
}

uint64_t sub_226BA0350()
{

  return MEMORY[0x2822009F8](sub_226BA0484, 0, 0);
}

uint64_t sub_226BA0484()
{
  v23 = v0;
  v1 = v0[18];
  v2 = v0[7];
  v3 = v0[2];
  v4 = v0[3];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v5 = sub_226D676AC();
  v6 = swift_task_alloc();
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = v2;
  v6[5] = v3;
  sub_226D6EB7C();
  if (v1)
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];

    (*(v8 + 8))(v7, v9);

    v10 = v0[1];
  }

  else
  {
    v11 = v0[12];
    v12 = v0[3];

    sub_226BA1E6C(v12, v11, type metadata accessor for BankConnectInstitutionDataFetchTask);
    v13 = sub_226D6E05C();
    v14 = sub_226D6E9AC();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[12];
    if (v15)
    {
      v17 = v0[11];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22[0] = v19;
      *v18 = 136315138;
      sub_226D6EEFC();

      v22[1] = 0xD000000000000035;
      v22[2] = 0x8000000226D81450;
      MEMORY[0x22AA8A510](*(v16 + *(v17 + 20)), *(v16 + *(v17 + 20) + 8));
      MEMORY[0x22AA8A510](41, 0xE100000000000000);
      sub_226BA1ED4(v16, type metadata accessor for BankConnectInstitutionDataFetchTask);
      v20 = sub_226AC4530(0xD000000000000035, 0x8000000226D81450, v22);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_226AB4000, v13, v14, "%s: Successfully updated institution.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x22AA8BEE0](v19, -1, -1);
      MEMORY[0x22AA8BEE0](v18, -1, -1);
    }

    else
    {

      sub_226BA1ED4(v16, type metadata accessor for BankConnectInstitutionDataFetchTask);
    }

    (*(v0[6] + 8))(v0[7], v0[5]);

    v10 = v0[1];
  }

  return v10();
}

uint64_t sub_226BA07E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226BA0894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_226D6C5FC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BA0958, 0, 0);
}

uint64_t sub_226BA0958()
{
  type metadata accessor for BankConnectInstitutionDataFetchTask(0);

  sub_226D6C5EC();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_226B4BF14;
  v2 = v0[7];
  v3 = v0[2];

  return MEMORY[0x282119AC8](v3, v2);
}

void sub_226BA0A30(uint64_t a1, void (**a2)(uint64_t, void, uint64_t, uint64_t), uint64_t a3, void *a4)
{
  v62 = a4;
  v68 = a3;
  v72[5] = *MEMORY[0x277D85DE8];
  v67 = sub_226D6D61C();
  v70 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_226D6D6DC();
  v65 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6D4AC();
  v66 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  type metadata accessor for BankConnectInstitutionDataFetchTask(0);
  sub_226D6842C();
  v20 = v71;
  v21 = sub_226D683EC();
  if (!v20)
  {
    v59 = v16;
    v60 = v13;
    v22 = v66;
    v58 = v10;
    v61 = v8;
    v71 = v19;
    v23 = a1;
    v24 = v21;
    v25 = [v21 termsAndConditionsObject];

    if (v25)
    {
      v26 = [v25 publishedAt];

      v27 = v71;
      sub_226D6D45C();

      v28 = v22;
      v22[7](v27, 0, 1, v61);
    }

    else
    {
      v28 = v22;
      v22[7](v71, 1, 1, v61);
    }

    sub_226D6AA6C();
    swift_allocObject();
    sub_226D6AA5C();
    v29 = sub_226D6AA4C();
    v68 = 0;
    v30 = v67;
    v32 = v69;
    v31 = v70;
    v33 = v29;
    v66 = a2;

    v34 = v64;
    v31[13](v64, *MEMORY[0x277CC9810], v30);
    v35 = v63;
    sub_226D6D62C();
    (v31[1])(v34, v30);
    v36 = v60;
    v67 = v23;
    sub_226D6D23C();
    (*(v65 + 8))(v35, v32);
    v37 = sub_226D6D3EC();
    v38 = v28[1];
    v39 = v61;
    v38(v36, v61);
    [v33 setEarliestUpdateRequestStartDate_];

    [v33 setUpdateRequestAttemptCount_];
    [v33 setLastUpdateRequestAttemptDate_];
    v70 = v33;
    v40 = [v33 termsAndConditionsObject];
    if (v40)
    {
      v41 = v40;
      v42 = v71;
      v43 = v59;
      sub_226AF265C(v71, v59);
      if ((v28[6])(v43, 1, v39) == 1)
      {
        sub_226AC47B0(v43, &qword_27D7A8BE0, &unk_226D718F0);

        v44 = v62;
LABEL_12:
        v48 = v70;
        v49 = [v70 id];
        v50 = sub_226D6E39C();
        v52 = v51;

        __swift_project_boxed_opaque_existential_1(v44, v44[3]);
        sub_226D6BADC();
        v53 = v50;
        v54 = v66;
        v55 = v68;
        sub_226BA1184(v53, v52, v66, v72);
        v68 = v55;
        if (v55)
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v72);
          sub_226AC47B0(v42, &qword_27D7A8BE0, &unk_226D718F0);
          return;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v72);

        goto LABEL_16;
      }

      v45 = v58;
      (v28[4])(v58, v43, v39);
      v46 = v41;
      v47 = [v46 publishedAt];
      sub_226D6D45C();

      LOBYTE(v47) = sub_226D6D3FC();
      v38(v36, v39);
      v38(v45, v39);

      v44 = v62;
      if (v47)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v42 = v71;
    }

    v48 = v70;
    v54 = v66;
LABEL_16:
    v72[0] = 0;
    if ([v54 save_])
    {
      v56 = v72[0];
      sub_226AC47B0(v42, &qword_27D7A8BE0, &unk_226D718F0);
    }

    else
    {
      v57 = v72[0];
      sub_226D6D04C();

      swift_willThrow();
      sub_226AC47B0(v42, &qword_27D7A8BE0, &unk_226D718F0);
    }
  }
}

unint64_t sub_226BA1184(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_226D6831C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226D69F0C();
  result = sub_226D69E4C();
  if (v4)
  {
    return result;
  }

  v11 = result;
  if (!(result >> 62))
  {
    result = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }
  }

  result = sub_226D6EDFC();
  if (!result)
  {
  }

LABEL_4:
  v28 = a4;
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v20 = 0;
    v12 = 0;
    v24 = v11 & 0xC000000000000001;
    v23 = *MEMORY[0x277CC7280];
    v21 = (v7 + 8);
    v22 = (v7 + 104);
    v26 = v11;
    v27 = v6;
    v25 = result;
    do
    {
      if (v24)
      {
        v13 = MEMORY[0x22AA8AFD0](v12, v11);
      }

      else
      {
        v13 = *(v11 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      __swift_project_boxed_opaque_existential_1(v28, v28[3]);
      v15 = [v14 accountId];
      v16 = sub_226D6E39C();
      v18 = v17;

      *v9 = v16;
      v9[1] = v18;
      v19 = v27;
      (*v22)(v9, v23, v27);
      sub_226D6AD5C();

      (*v21)(v9, v19);
      v11 = v26;
    }

    while (v25 != v12);
  }

  return result;
}

uint64_t sub_226BA13EC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_226D66DFC();
  v3[6] = swift_task_alloc();
  v3[7] = type metadata accessor for BankConnectInstitutionDataFetchTask(0);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BA14B4, 0, 0);
}

uint64_t sub_226BA14B4()
{
  v25 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  sub_226BA1E6C(v3, v1, type metadata accessor for BankConnectInstitutionDataFetchTask);
  sub_226BA1E6C(v4, v2, MEMORY[0x277CC6528]);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9CC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 64);
  if (v8)
  {
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24[0] = v14;
    *v12 = 136315394;
    sub_226D6EEFC();

    v24[1] = 0xD000000000000035;
    v24[2] = 0x8000000226D81450;
    MEMORY[0x22AA8A510](*(v9 + *(v11 + 20)), *(v9 + *(v11 + 20) + 8));
    MEMORY[0x22AA8A510](41, 0xE100000000000000);
    sub_226BA1ED4(v9, type metadata accessor for BankConnectInstitutionDataFetchTask);
    v15 = sub_226AC4530(0xD000000000000035, 0x8000000226D81450, v24);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2112;
    sub_226BA2164(&qword_27D7A6990, MEMORY[0x277CC6528], MEMORY[0x277CC6530]);
    swift_allocError();
    sub_226BA1E6C(v10, v16, MEMORY[0x277CC6528]);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    sub_226BA1ED4(v10, MEMORY[0x277CC6528]);
    *(v12 + 14) = v17;
    *v13 = v17;
    _os_log_impl(&dword_226AB4000, v6, v7, "%s: Failed to update institution with error: %@", v12, 0x16u);
    sub_226AC47B0(v13, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  else
  {
    v18 = *(v0 + 48);

    sub_226BA1ED4(v18, MEMORY[0x277CC6528]);
    sub_226BA1ED4(v9, type metadata accessor for BankConnectInstitutionDataFetchTask);
  }

  v19 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v20 = sub_226D676AC();
  v21 = swift_task_alloc();
  *(v21 + 16) = v19;
  *(v21 + 24) = v20;
  sub_226D6EB7C();

  v22 = *(v0 + 8);

  return v22();
}

void sub_226BA18B8(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_226D6842C();
  type metadata accessor for BankConnectInstitutionDataFetchTask(0);
  v4 = sub_226D683EC();
  if (!v2)
  {
    v5 = v4;
    if (v4)
    {
      v6 = [v4 updateRequestAttemptCount];
      if (__OFADD__(v6, 1))
      {
        __break(1u);
      }

      [v5 setUpdateRequestAttemptCount_];
      v7 = sub_226D6D3EC();
      [v5 setLastUpdateRequestAttemptDate_];

      v10[0] = 0;
      if ([a2 save_])
      {
        v8 = v10[0];
      }

      else
      {
        v9 = v10[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }
  }
}

uint64_t sub_226BA1A0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226B9F6C0(a1);
}

uint64_t sub_226BA1AA0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226AE5A84;

  return sub_226BA13EC(a1, a2);
}

double sub_226BA1B44@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (v2 + *(a1 + 20));
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
  type metadata accessor for BankConnectWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_226BA1BA0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6998, &unk_226D73D10);
  v3 = *(type metadata accessor for BankConnectWebServiceTaskExclusivityIdentifier(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D71840;
  v6 = (v5 + v4);
  v7 = (v1 + *(a1 + 20));
  v8 = v7[1];
  *v6 = *v7;
  v6[1] = v8;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();

  v9 = sub_226B1ED68(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v9;
}

uint64_t sub_226BA1D70(uint64_t a1)
{
  result = sub_226BA2164(&qword_27D7A74A0, type metadata accessor for BankConnectInstitutionDataFetchTask, &unk_226D74F50);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BankConnectInstitutionDataFetchTask(uint64_t a1)
{
  result = qword_281060338;
  if (!qword_281060338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226BA1E14(uint64_t a1)
{
  result = sub_226BA2164(&qword_27D7A74A8, type metadata accessor for BankConnectInstitutionDataFetchTask, &unk_226D74F94);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226BA1E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226BA1ED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226BA1F50(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226BA0894(a1, v5, v4);
}

void sub_226BA2044(uint64_t a1)
{
  sub_226D6D4AC();
  if (v1 <= 0x3F)
  {
    sub_226B20350(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_226BA20E0(uint64_t a1)
{
  *(a1 + 8) = sub_226BA2164(&qword_27D7A74B0, type metadata accessor for BankConnectInstitutionDataFetchTask, &unk_226D74FC0);
  result = sub_226BA2164(&qword_27D7A74B8, type metadata accessor for BankConnectInstitutionDataFetchTask, &unk_226D75034);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226BA2164(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_226BA21E0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x73694D726564726FLL;
    v7 = 0x52796E614D6F6F74;
    if (a1 != 10)
    {
      v7 = 0xD00000000000001ALL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000019;
    v9 = 0x61766E4961746164;
    if (a1 != 7)
    {
      v9 = 0x766E49726564726FLL;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6E776F6E6B6E75;
    v2 = 0x65736E6F70736572;
    v3 = 0xD000000000000015;
    if (a1 != 4)
    {
      v3 = 0xD00000000000001CLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000015;
    if (a1 != 1)
    {
      v4 = 0x4674736575716572;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_226BA23AC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v3 = 0xD000000000000028;
    if (a1 == 7)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 <= 6u)
    {
      return 0xD000000000000016;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v1 = 0x6E776F6E6B6E75;
    if (a1)
    {
      v1 = 0xD000000000000016;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return 0xD000000000000016;
    }
  }
}

void sub_226BA253C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = a3(a1);
  v8 = v7;
  sub_226BA2760(1, v6, v7);

  sub_226BA27FC();
  sub_226D6ECDC();

  sub_226BA2850(1uLL, v6, v8);

  sub_226BA2900();
  sub_226D6E45C();

  v9 = *(v5 + 16);
  v10 = sub_226D6E36C();
  v11 = sub_226D6E36C();
  v12 = sub_226D6E36C();
  v13 = sub_226D6E36C();

  v14 = sub_226D6E2AC();
  [v9 reportIssueWithDomain:v10 type:v11 subtype:v12 subtypeContext:v13 event:v14];
}

uint64_t sub_226BA2704()
{

  return swift_deallocClassInstance();
}

uint64_t sub_226BA2760(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_226D6E44C();

    return sub_226D6E50C();
  }

  return result;
}

unint64_t sub_226BA27FC()
{
  result = qword_27D7A74C0;
  if (!qword_27D7A74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A74C0);
  }

  return result;
}

unint64_t sub_226BA2850(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_226D6E44C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_226D6E50C();
}

unint64_t sub_226BA2900()
{
  result = qword_27D7A74C8;
  if (!qword_27D7A74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A74C8);
  }

  return result;
}

void sub_226BA2954(uint64_t a1)
{
  v2 = v1;
  v24 = sub_226BA2760(1, 0xD00000000000001DLL, 0x8000000226D816F0);
  v25 = v3;
  v26 = v4;
  v27 = v5;
  sub_226BA27FC();
  v6 = sub_226D6ECDC();
  v8 = v7;

  v22 = v6;
  v23 = v8;
  v18 = sub_226BA2850(1uLL, 0xD00000000000001DLL, 0x8000000226D816F0);
  v19 = v9;
  v20 = v10;
  v21 = v11;
  sub_226BA2900();
  sub_226D6E45C();

  v12 = *(v2 + 16);
  v13 = sub_226D6E36C();
  v14 = sub_226D6E36C();
  v15 = sub_226D6E36C();
  v16 = sub_226D6E36C();

  v17 = sub_226D6E2AC();
  [v12 reportIssueWithDomain:v13 type:v14 subtype:v15 subtypeContext:v16 event:{v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27}];
}

void sub_226BA2B08(uint64_t a1)
{
  v2 = v1;
  v24 = sub_226BA2760(1, 0x6C69614674696E69, 0xEA00000000006465);
  v25 = v3;
  v26 = v4;
  v27 = v5;
  sub_226BA27FC();
  v6 = sub_226D6ECDC();
  v8 = v7;

  v22 = v6;
  v23 = v8;
  v18 = sub_226BA2850(1uLL, 0x6C69614674696E69, 0xEA00000000006465);
  v19 = v9;
  v20 = v10;
  v21 = v11;
  sub_226BA2900();
  sub_226D6E45C();

  v12 = *(v2 + 16);
  v13 = sub_226D6E36C();
  v14 = sub_226D6E36C();
  v15 = sub_226D6E36C();
  v16 = sub_226D6E36C();

  v17 = sub_226D6E2AC();
  [v12 reportIssueWithDomain:v13 type:v14 subtype:v15 subtypeContext:v16 event:{v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27}];
}

void *sub_226BA2CBC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA8AFD0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void sub_226BA2DD0(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v31 = a1;
  v27 = a3;
  v37 = sub_226D68D5C();
  MEMORY[0x28223BE20](v37);
  v36 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v30 = &v27 - v9;
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v32 = v8 + 32;
  v33 = v8;
  v28 = (v8 + 8);
  v29 = v8 + 16;
  v34 = a2;

  v15 = 0;
  v16 = v30;
  if (v13)
  {
    while (1)
    {
      v35 = v4;
      v17 = v15;
LABEL_9:
      v18 = v33;
      v19 = v37;
      (*(v33 + 16))(v16, *(v34 + 48) + *(v33 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v37);
      v20 = *(v18 + 32);
      v21 = v36;
      v20(v36, v16, v19);
      v22 = v35;
      v23 = v31(v21);
      v4 = v22;
      if (v22)
      {
        (*v28)(v36, v37);

        return;
      }

      if (v23)
      {
        break;
      }

      v13 &= v13 - 1;
      (*v28)(v36, v37);
      v15 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v26 = v27;
    v20(v27, v36, v37);
    v25 = v26;
    v24 = 0;
LABEL_14:
    (*(v33 + 56))(v25, v24, 1, v37);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        v24 = 1;
        v25 = v27;
        goto LABEL_14;
      }

      v13 = *(v10 + 8 * v17);
      ++v15;
      if (v13)
      {
        v35 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

void sub_226BA30BC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_226D6EDBC();
    sub_226D69F0C();
    sub_226BAD9D0(&qword_27D7A7278, MEMORY[0x277CC7A70], MEMORY[0x277D85378]);
    sub_226D6E8DC();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_226D6EE2C())
        {
          goto LABEL_20;
        }

        sub_226D69F0C();
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      sub_226AD3C20(v20);
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_20:
      sub_226AD3C20(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_226BA333C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v25 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v8;
    v23 = a4;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v7, v9);
      v18 = v25(v11);
      if (v4)
      {
        return (*v15)(v11, v7);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v7);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v8 = v22;
        a4 = v23;
        return (*(v8 + 56))(a4, v19, 1, v7);
      }
    }

    v8 = v22;
    a4 = v23;
    (*(v22 + 32))(v23, v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a4, v19, 1, v7);
}

uint64_t sub_226BA3514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 96) = a6;
  *(v8 + 104) = v7;
  *(v8 + 385) = a7;
  *(v8 + 80) = a4;
  *(v8 + 88) = a5;
  *(v8 + 64) = a2;
  *(v8 + 72) = a3;
  *(v8 + 56) = a1;
  *(v8 + 112) = *(sub_226D68C1C() - 8);
  *(v8 + 120) = swift_task_alloc();
  v9 = sub_226D685DC();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74D0, &qword_226D75218);
  *(v8 + 168) = v10;
  *(v8 + 176) = *(v10 - 8);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  v11 = sub_226D6B5EC();
  *(v8 + 200) = v11;
  *(v8 + 208) = *(v11 - 8);
  *(v8 + 216) = swift_task_alloc();
  type metadata accessor for BankConnectConsentArbitratingConfiguration(0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  v12 = sub_226D68C5C();
  *(v8 + 240) = v12;
  *(v8 + 248) = *(v12 - 8);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BA382C, 0, 0);
}

uint64_t sub_226BA382C()
{
  v88 = v0;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E90, &qword_226D75220);
  MEMORY[0x22AA87740]();
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 232);
  v6 = *(v0 + 88);
  v7 = sub_226D6E07C();
  *(v0 + 312) = __swift_project_value_buffer(v7, qword_28105F710);
  v8 = *(v4 + 16);
  *(v0 + 320) = v8;
  *(v0 + 328) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v85 = v8;
  v8(v1, v2, v3);
  sub_226BAE258(v6, v5, type metadata accessor for BankConnectConsentArbitratingConfiguration);

  v9 = sub_226D6E05C();
  v10 = sub_226D6E9EC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 296);
  v14 = *(v0 + 240);
  v13 = *(v0 + 248);
  v15 = *(v0 + 232);
  if (v11)
  {
    v81 = *(v0 + 72);
    v82 = *(v0 + 80);
    v16 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v87[0] = v84;
    *v16 = 136315650;
    v83 = v10;
    v17 = sub_226D68C4C();
    v19 = v18;
    v20 = *(v13 + 8);
    v20(v12, v14);
    v21 = sub_226AC4530(v17, v19, v87);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_226AC4530(v81, v82, v87);
    *(v16 + 22) = 2080;
    v22 = sub_226BA5194();
    v24 = v23;
    v25 = v15;
    v26 = v20;
    sub_226BAE2C0(v25, type metadata accessor for BankConnectConsentArbitratingConfiguration);
    v27 = sub_226AC4530(v22, v24, v87);

    *(v16 + 24) = v27;
    _os_log_impl(&dword_226AB4000, v9, v83, "Arbitrating a consent with consentID: %s for institutionID: %s using configuration: %s.", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v84, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
  }

  else
  {

    sub_226BAE2C0(v15, type metadata accessor for BankConnectConsentArbitratingConfiguration);
    v26 = *(v13 + 8);
    v26(v12, v14);
  }

  *(v0 + 336) = v26;
  v28 = sub_226D676AC();
  *(v0 + 344) = v28;
  *(swift_task_alloc() + 16) = v28;
  sub_226D6EB8C();
  v29 = *(v0 + 104);
  v31 = *(v0 + 72);
  v30 = *(v0 + 80);

  v32 = swift_task_alloc();
  v32[2] = v31;
  v32[3] = v30;
  v32[4] = v28;
  v32[5] = v29;
  sub_226D6EB8C();
  v34 = *(v0 + 208);
  v33 = *(v0 + 216);
  v35 = *(v0 + 200);

  v36 = *(v0 + 384);
  sub_226D6B58C();
  v37 = sub_226D6B5CC();
  (*(v34 + 8))(v33, v35);
  if (v37)
  {

    v38 = sub_226D6E05C();
    v39 = sub_226D6E9CC();

    if (os_log_type_enabled(v38, v39))
    {
      v41 = *(v0 + 72);
      v40 = *(v0 + 80);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v87[0] = v43;
      *v42 = 136315394;
      *(v42 + 4) = sub_226AC4530(v41, v40, v87);
      *(v42 + 12) = 1024;
      *(v42 + 14) = v36;
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x22AA8BEE0](v43, -1, -1);
      MEMORY[0x22AA8BEE0](v42, -1, -1);
    }
  }

  else if (!v36)
  {
    v62 = *(v0 + 256);
    v61 = *(v0 + 264);
    v63 = *(v0 + 240);
    MEMORY[0x22AA87740](v86);
    v85(v62, v61, v63);
    v64 = sub_226D6E05C();
    v65 = sub_226D6E9EC();
    v66 = os_log_type_enabled(v64, v65);
    v67 = *(v0 + 256);
    v68 = *(v0 + 240);
    if (v66)
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v87[0] = v70;
      *v69 = 136315138;
      v71 = sub_226D68C4C();
      v72 = v26;
      v74 = v73;
      v72(v67, v68);
      v75 = sub_226AC4530(v71, v74, v87);

      *(v69 + 4) = v75;
      _os_log_impl(&dword_226AB4000, v64, v65, "Attempting to insert or update consent with consentID: %s using single  consent mode.", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      MEMORY[0x22AA8BEE0](v70, -1, -1);
      MEMORY[0x22AA8BEE0](v69, -1, -1);
    }

    else
    {

      v26(v67, v68);
    }

    v76 = swift_task_alloc();
    *(v0 + 368) = v76;
    *v76 = v0;
    v76[1] = sub_226BA4BFC;
    v60 = *(v0 + 184);
    goto LABEL_19;
  }

  v45 = *(v0 + 280);
  v44 = *(v0 + 288);
  v46 = *(v0 + 240);
  MEMORY[0x22AA87740](v86);
  v85(v45, v44, v46);
  v47 = sub_226D6E05C();
  v48 = sub_226D6E9EC();
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 280);
  v51 = *(v0 + 240);
  if (v49)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v87[0] = v53;
    *v52 = 136315138;
    v54 = sub_226D68C4C();
    v55 = v26;
    v57 = v56;
    v55(v50, v51);
    v58 = sub_226AC4530(v54, v57, v87);

    *(v52 + 4) = v58;
    _os_log_impl(&dword_226AB4000, v47, v48, "Attempting to insert or update consent with consentID: %s using multiple  consent mode.", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    MEMORY[0x22AA8BEE0](v53, -1, -1);
    MEMORY[0x22AA8BEE0](v52, -1, -1);
  }

  else
  {

    v26(v50, v51);
  }

  v59 = swift_task_alloc();
  *(v0 + 352) = v59;
  *v59 = v0;
  v59[1] = sub_226BA416C;
  v60 = *(v0 + 192);
LABEL_19:
  v77 = *(v0 + 385);
  v78 = *(v0 + 96);
  v79 = *(v0 + 64);

  return sub_226BA55E4(v60, v79, v78, v77);
}

uint64_t sub_226BA416C()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_226BA4A88;
  }

  else
  {
    v2 = sub_226BA4280;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226BA4280()
{
  v81 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 88);
  sub_226AE532C(*(v0 + 104) + 200, v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_226BAE258(v2, v1, type metadata accessor for BankConnectConsentArbitratingConfiguration);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E98, &unk_226D73780);
  v4 = 1;
  LODWORD(v2) = (*(*(v3 - 8) + 48))(v1, 1, v3);
  v5 = sub_226D6D52C();
  v6 = *(v5 - 8);
  if (v2 != 1)
  {
    (*(*(v5 - 8) + 32))(*(v0 + 152), *(v0 + 224), v5);
    v4 = 0;
  }

  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  v11 = *(v0 + 136);
  v77 = *(v0 + 128);
  (*(v6 + 56))(v9, v4, 1, v5);
  sub_226BACBC0(v9, v8);
  MEMORY[0x22AA87770](v7);
  v12 = sub_226D685CC();
  (*(v11 + 8))(v10, v77);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = *(v0 + 112);
    v80 = MEMORY[0x277D84F90];
    sub_226AE1D68(0, v13, 0);
    v15 = v80;
    v16 = v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v17 = *(v14 + 72);
    do
    {
      v18 = *(v0 + 120);
      v19 = MEMORY[0x277CC75A0];
      sub_226BAE258(v16, v18, MEMORY[0x277CC75A0]);
      v20 = sub_226D68C0C();
      v22 = v21;
      sub_226BAE2C0(v18, v19);
      v80 = v15;
      v24 = *(v15 + 16);
      v23 = *(v15 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_226AE1D68((v23 > 1), v24 + 1, 1);
        v15 = v80;
      }

      *(v15 + 16) = v24 + 1;
      v25 = v15 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      v16 += v17;
      --v13;
    }

    while (v13);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v26 = *(v0 + 360);
  sub_226AE3C28(v15);

  v27 = sub_226D6BF1C();
  if (v26)
  {
    v28 = *(v0 + 336);
    v29 = *(v0 + 288);
    v30 = *(v0 + 240);
    v31 = *(v0 + 192);
    v32 = *(v0 + 168);
    v33 = *(v0 + 176);
    v34 = *(v0 + 160);

    sub_226AC47B0(v34, &qword_27D7A6D68, &qword_226D75210);
    v28(v29, v30);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    (*(v33 + 8))(v31, v32);
  }

  else
  {
    v35 = v27;
    sub_226AC47B0(*(v0 + 160), &qword_27D7A6D68, &qword_226D75210);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    sub_226BA8088(v35);
    if (v36)
    {
      v37 = *(v0 + 344);
      v38 = *(v0 + 192);
      v39 = *(v0 + 104);
      v41 = *(v0 + 80);
      v40 = *(v0 + 88);
      v42 = *(v0 + 72);
      v43 = swift_task_alloc();
      v43[2] = v42;
      v43[3] = v41;
      v43[4] = v37;
      v43[5] = v39;
      v43[6] = v38;
      v43[7] = v35;
      v43[8] = v40;
      sub_226D682FC();
      sub_226D6EB7C();
      v44 = *(v0 + 192);
      v45 = *(v0 + 168);
      v46 = *(v0 + 176);
      (*(v0 + 336))(*(v0 + 288), *(v0 + 240));

      (*(v46 + 8))(v44, v45);
      v73 = *(v0 + 336);
      v74 = *(v0 + 304);
      v75 = *(v0 + 240);

      v73(v74, v75);

      v76 = *(v0 + 8);
      goto LABEL_19;
    }

    v47 = *(v0 + 320);
    v48 = *(v0 + 288);
    v49 = *(v0 + 272);
    v50 = *(v0 + 240);

    v47(v49, v48, v50);
    v51 = sub_226D6E05C();
    v52 = sub_226D6E9CC();
    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 336);
    v55 = *(v0 + 272);
    v56 = *(v0 + 240);
    if (v53)
    {
      v79 = *(v0 + 336);
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v80 = v58;
      *v57 = 136315138;
      v78 = sub_226D68C4C();
      v60 = v59;
      v79(v55, v56);
      v61 = sub_226AC4530(v78, v60, &v80);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_226AB4000, v51, v52, "Partial overlap detected between consent with consentID: %s and existing consents on device. Invalid configuration, aborting arbitration.", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      MEMORY[0x22AA8BEE0](v58, -1, -1);
      MEMORY[0x22AA8BEE0](v57, -1, -1);
    }

    else
    {

      v54(v55, v56);
    }

    v62 = *(v0 + 336);
    v63 = *(v0 + 288);
    v64 = *(v0 + 240);
    v65 = *(v0 + 192);
    v66 = *(v0 + 168);
    v67 = *(v0 + 176);
    sub_226B4E26C();
    swift_allocError();
    *v68 = 0;
    swift_willThrow();
    v62(v63, v64);
    (*(v67 + 8))(v65, v66);
  }

  v69 = *(v0 + 336);
  v70 = *(v0 + 304);
  v71 = *(v0 + 240);

  v69(v70, v71);

  v76 = *(v0 + 8);
LABEL_19:

  return v76();
}

uint64_t sub_226BA4A88()
{
  (*(v0 + 336))(*(v0 + 288), *(v0 + 240));
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  v3 = *(v0 + 240);

  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226BA4BFC()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_226BA5024;
  }

  else
  {
    v2 = sub_226BA4D10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226BA4D10()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 344);
  v3 = *(v0 + 184);
  v4 = *(v0 + 104);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = swift_task_alloc();
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v2;
  v7[5] = v4;
  v7[6] = v3;
  sub_226D682FC();
  sub_226D6EB7C();
  v8 = *(v0 + 336);
  v9 = *(v0 + 264);
  v10 = *(v0 + 240);
  if (v1)
  {
    v11 = *(v0 + 176);
    v8(v9, v10);

    v13 = *(v0 + 336);
    v12 = *(v0 + 344);
    v14 = *(v0 + 304);
    v15 = *(v0 + 240);
    (*(v11 + 8))(*(v0 + 184), *(v0 + 168));

    v13(v14, v15);
  }

  else
  {
    v18 = *(v0 + 176);
    v17 = *(v0 + 184);
    v19 = *(v0 + 168);
    v8(v9, v10);

    (*(v18 + 8))(v17, v19);
    v20 = *(v0 + 336);
    v21 = *(v0 + 304);
    v22 = *(v0 + 240);

    v20(v21, v22);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_226BA5024()
{
  v1 = v0[30];
  v2 = v0[42];
  v3 = v0[43];
  v4 = v0[38];
  v2(v0[33], v1);

  v2(v4, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_226BA5194()
{
  v1 = v0;
  v2 = sub_226D6D52C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BankConnectConsentArbitratingConfiguration(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226BAE258(v1, v8, type metadata accessor for BankConnectConsentArbitratingConfiguration);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E98, &unk_226D73780);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    return 0x746E65736E6F632ELL;
  }

  (*(v3 + 32))(v5, v8, v2);
  v13[0] = 0x65736E6F6365722ELL;
  v13[1] = 0xEB0000000028746ELL;
  v11 = sub_226D6D4CC();
  MEMORY[0x22AA8A510](v11);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  v10 = v13[0];
  (*(v3 + 8))(v5, v2);
  return v10;
}

void sub_226BA539C(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a4@<X8>)
{
  sub_226D6842C();
  v8 = sub_226D683EC();
  if (!v4)
  {
    if (v8)
    {
      v9 = v8;
      v10 = [v8 multipleConsentsEnabled];

      *a4 = v10;
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v11 = sub_226D6E07C();
      __swift_project_value_buffer(v11, qword_28105F710);

      v12 = sub_226D6E05C();
      v13 = sub_226D6E9CC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v18 = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_226AC4530(a1, a2, &v18);
        _os_log_impl(&dword_226AB4000, v12, v13, "Expected institution with institutionID: %s, but it wasn't found in the store. Aborting arbitration.", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
        MEMORY[0x22AA8BEE0](v15, -1, -1);
        MEMORY[0x22AA8BEE0](v14, -1, -1);
      }

      v16 = sub_226D6A0DC();
      sub_226BAD9D0(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277CC7AB8], v16);
      swift_willThrow();
    }
  }
}

uint64_t sub_226BA55E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 336) = a4;
  *(v5 + 80) = a3;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = sub_226D6A99C();
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  v7 = sub_226D6851C();
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  sub_226D67F1C();
  *(v5 + 144) = swift_task_alloc();
  v8 = sub_226D68DAC();
  *(v5 + 152) = v8;
  *(v5 + 160) = *(v8 - 8);
  *(v5 + 168) = swift_task_alloc();
  v9 = sub_226D6885C();
  *(v5 + 176) = v9;
  *(v5 + 184) = *(v9 - 8);
  *(v5 + 192) = swift_task_alloc();
  v10 = sub_226D68C5C();
  *(v5 + 200) = v10;
  *(v5 + 208) = *(v10 - 8);
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BA5854, 0, 0);
}

uint64_t sub_226BA5854()
{
  v28 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E90, &qword_226D75220);
  MEMORY[0x22AA87740]();
  sub_226D6B6AC();
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = sub_226D6E07C();
  *(v0 + 232) = __swift_project_value_buffer(v5, qword_28105F710);
  (*(v4 + 16))(v1, v2, v3);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9EC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 208);
  v9 = *(v0 + 216);
  v11 = *(v0 + 200);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315138;
    v26 = sub_226D68C4C();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_226AC4530(v26, v15, &v27);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_226AB4000, v6, v7, "Fetching granted accounts for consent with consentID: %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  *(v0 + 240) = v16;
  v18 = *(v0 + 88);
  v19 = MEMORY[0x277CC7640];
  if (!*(v0 + 336))
  {
    v19 = MEMORY[0x277CC7638];
  }

  (*(*(v0 + 160) + 104))(*(v0 + 168), *v19, *(v0 + 152));
  v20 = v18[33];
  v21 = v18[34];
  __swift_project_boxed_opaque_existential_1(v18 + 30, v20);
  sub_226AE59B4(0, &qword_27D7A7500, 0x277CCA8D8);
  sub_226D67E7C();
  v22 = sub_226D6EBFC();
  *(v0 + 248) = v22;
  v23 = swift_task_alloc();
  *(v0 + 256) = v23;
  *v23 = v0;
  v23[1] = sub_226BA5B60;
  v24 = *(v0 + 168);

  return MEMORY[0x282118D88](v24, v22, v20, v21);
}

uint64_t sub_226BA5B60()
{
  v1 = *(*v0 + 248);

  return MEMORY[0x2822009F8](sub_226BA5C74, 0, 0);
}

uint64_t sub_226BA5C74()
{
  sub_226AE532C(v0[11] + 240, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = sub_226D6884C();
  if (*(v3 + 16))
  {
    v5 = v0[16];
    v4 = v0[17];
    v6 = v0[15];
    (*(v5 + 16))(v4, v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v6);

    v7 = sub_226D6850C();
    (*(v5 + 8))(v4, v6);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v0[33] = v7;
  v8 = swift_task_alloc();
  v0[34] = v8;
  *v8 = v0;
  v8[1] = sub_226BA5DE0;
  v9 = v0[21];

  return MEMORY[0x282118D80](v9, v7, v1, v2);
}

uint64_t sub_226BA5DE0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {
    v5 = sub_226BA62C0;
  }

  else
  {

    *(v4 + 288) = a1;
    v5 = sub_226BA5F10;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226BA5F10()
{
  v0[7] = v0[36];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[28];
  v2 = v0[21];
  v4 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
  v5 = sub_226D6C2AC();
  v0[37] = v5;
  v6 = swift_task_alloc();
  v0[38] = v6;
  v6[2] = v5;
  v6[3] = v1;
  v6[4] = v0 + 7;
  v6[5] = v4;
  v6[6] = v3;
  v6[7] = v2;
  v7 = swift_task_alloc();
  v0[39] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74D0, &qword_226D75218);
  *v7 = v0;
  v7[1] = sub_226BA6054;
  v9 = v0[8];

  return MEMORY[0x282119B28](v9, &unk_226D75268, v6, v8);
}

uint64_t sub_226BA6054()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_226BA6768;
  }

  else
  {
    v2 = sub_226BA6184;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226BA6184()
{
  v1 = v0[28];
  v11 = v0[30];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[19];
  v8 = v0[20];

  (*(v3 + 8))(v4, v5);

  (*(v8 + 8))(v6, v7);
  v11(v1, v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_226BA62C0()
{
  v1 = v0[35];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v2 = v1;
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[35];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_226AB4000, v3, v4, "Fraud assessment computation has failed, proceeding without it: %@.", v6, 0xCu);
    sub_226AC47B0(v7, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v11 = v0[13];
  v10 = v0[14];
  v13 = v0[11];
  v12 = v0[12];

  sub_226D6979C();
  swift_allocObject();
  v0[7] = sub_226D6977C();
  v14 = v13[33];
  v15 = v13[34];
  __swift_project_boxed_opaque_existential_1(v13 + 30, v14);
  (*(v11 + 104))(v10, *MEMORY[0x277CC7CD8], v12);
  v16 = swift_task_alloc();
  v0[41] = v16;
  *v16 = v0;
  v16[1] = sub_226BA64D4;
  v17 = v0[21];
  v18 = v0[14];

  return MEMORY[0x282118D90](v17, v18, v14, v15);
}

uint64_t sub_226BA64D4()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_226BA662C, 0, 0);
}

uint64_t sub_226BA662C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 168);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
  v5 = sub_226D6C2AC();
  *(v0 + 296) = v5;
  v6 = swift_task_alloc();
  *(v0 + 304) = v6;
  v6[2] = v5;
  v6[3] = v1;
  v6[4] = v0 + 56;
  v6[5] = v4;
  v6[6] = v3;
  v6[7] = v2;
  v7 = swift_task_alloc();
  *(v0 + 312) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74D0, &qword_226D75218);
  *v7 = v0;
  v7[1] = sub_226BA6054;
  v9 = *(v0 + 64);

  return MEMORY[0x282119B28](v9, &unk_226D75268, v6, v8);
}

uint64_t sub_226BA6768()
{
  v1 = v0[28];
  v11 = v0[30];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[19];
  v8 = v0[20];

  (*(v3 + 8))(v4, v5);

  (*(v8 + 8))(v6, v7);
  v11(v1, v2);

  v9 = v0[1];

  return v9();
}

void sub_226BA68A4(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v92 = a3;
  v88 = a4;
  v89 = a5;
  v90 = a2;
  v81 = a6;
  v7 = sub_226D68C1C();
  v83 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v82 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_226D685DC();
  v87 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v76 - v11;
  v13 = sub_226D68C5C();
  v86 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_226D6A94C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6842C();
  v20 = a1;
  v21 = v91;
  v22 = v90;
  v23 = sub_226D683EC();
  if (!v21)
  {
    v79 = v17;
    v80 = v16;
    v91 = v13;
    v77 = v12;
    v78 = v20;
    if (v23)
    {
      v24 = v23;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74D0, &qword_226D75218);
      sub_226D6B6BC();
      sub_226D6A93C();
      v79[1](v19, v80);
      v26 = v88;
      v27 = sub_226BA7230(v15, v24, v92);
      v90 = 0;
      v37 = v27;
      (v86)[1](v15, v91);
      v86 = v37;
      v38 = sub_226D6790C();
      v39 = v77;
      v80 = v25;
      MEMORY[0x22AA87770](v25);
      v40 = sub_226D685CC();
      v41 = *(v87 + 8);
      v87 += 8;
      v79 = v41;
      (v41)(v39, v85);
      v42 = *(v40 + 16);
      if (v42)
      {
        v77 = v38;
        v78 = v24;
        v93 = MEMORY[0x277D84F90];
        sub_226AE1D68(0, v42, 0);
        v43 = v93;
        v44 = v82;
        v45 = *(v83 + 80);
        v76[1] = v40;
        v46 = v40 + ((v45 + 32) & ~v45);
        v91 = *(v83 + 72);
        do
        {
          v47 = MEMORY[0x277CC75A0];
          sub_226BAE258(v46, v44, MEMORY[0x277CC75A0]);
          v48 = sub_226D68C0C();
          v50 = v49;
          sub_226BAE2C0(v44, v47);
          v93 = v43;
          v52 = *(v43 + 16);
          v51 = *(v43 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_226AE1D68((v51 > 1), v52 + 1, 1);
            v43 = v93;
          }

          *(v43 + 16) = v52 + 1;
          v53 = v43 + 16 * v52;
          *(v53 + 32) = v48;
          *(v53 + 40) = v50;
          v46 += v91;
          --v42;
        }

        while (v42);

        v38 = v77;
        v24 = v78;
        v26 = v88;
      }

      else
      {

        v43 = MEMORY[0x277D84F90];
      }

      MEMORY[0x28223BE20](v54);
      v76[-4] = v38;
      v76[-3] = v43;
      v55 = v92;
      v76[-2] = v26;
      v76[-1] = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6560, &qword_226D7CCF0);
      v56 = v90;
      sub_226D6EB8C();
      v90 = v56;

      v91 = v93;
      v57 = v84;
      MEMORY[0x22AA87770](v80);
      v58 = v26;
      v59 = sub_226D685CC();
      (v79)(v57, v85);
      v60 = v86;
      v61 = sub_226D6790C();
      v62 = [v60 consentID];
      v63 = sub_226D6E39C();
      v65 = v64;

      v66 = v90;
      v67 = sub_226BA7964(v59, v61, v63, v65, v55);
      if (v66)
      {

LABEL_18:
        return;
      }

      v68 = v91;
      v69 = v67;

      if (((*(*(v58 + 192) + 24))() & 1) == 0)
      {
        v75 = sub_226BACD5C(v69, v68);

        sub_226BA7F44(v75, v92);

        sub_226D6830C();
        goto LABEL_18;
      }

      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v70 = sub_226D6E07C();
      __swift_project_value_buffer(v70, qword_28105F710);
      v71 = sub_226D6E05C();
      v72 = sub_226D6E9EC();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_226AB4000, v71, v72, "Wallet has been deleted, aborting arbitration.", v73, 2u);
        MEMORY[0x22AA8BEE0](v73, -1, -1);
      }

      sub_226B4E26C();
      swift_allocError();
      *v74 = 1;
      swift_willThrow();
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v28 = sub_226D6E07C();
      __swift_project_value_buffer(v28, qword_28105F710);

      v29 = sub_226D6E05C();
      v30 = sub_226D6E9CC();

      v31 = os_log_type_enabled(v29, v30);
      v32 = v78;
      if (v31)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v93 = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_226AC4530(v32, v22, &v93);
        _os_log_impl(&dword_226AB4000, v29, v30, "Institution with ID %s not found, aborting arbitration.", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        MEMORY[0x22AA8BEE0](v34, -1, -1);
        MEMORY[0x22AA8BEE0](v33, -1, -1);
      }

      v35 = sub_226D6A0DC();
      sub_226BAD9D0(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
      swift_allocError();
      (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277CC7AB8], v35);
      swift_willThrow();
    }
  }
}

void *sub_226BA7230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a2;
  v54 = a1;
  v53 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  v50 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = v49 - v8;
  v9 = sub_226D67F1C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v76, 0, 40);
  sub_226AE532C(v4 + 104, v75);
  sub_226AE532C(v4 + 64, v74);
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  v13 = type metadata accessor for BankConnectConsentArbiter.NoOPDeletedAccountsRemover();
  v14 = swift_allocObject();
  v15 = type metadata accessor for BankConnectConsentArbiter.NoOPDeletedAccountsManager();
  v16 = swift_allocObject();
  v14[5] = v15;
  v14[6] = &off_283A6D1A0;
  v14[2] = v16;
  v70 = v13;
  v71 = &off_283A6D180;
  *&v69 = v14;
  v68[3] = sub_226D6B5EC();
  v68[4] = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(v68);
  sub_226D6B58C();
  *&v63[0] = 0;
  v61 = 0u;
  v62 = 0u;
  sub_226B1B848(v76, &v61);
  sub_226AE532C(v75, v63 + 8);
  sub_226AE532C(v74, v64);
  sub_226AE532C(v68, v65 + 8);
  sub_226AC40E8(v72, &v56, &qword_27D7A6918, &unk_226D7BBC0);
  if (v57)
  {
    sub_226AC47B0(v72, &qword_27D7A6918, &unk_226D7BBC0);
    __swift_destroy_boxed_opaque_existential_0Tm(v74);
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    sub_226AC47B0(v76, &qword_27D7A6910, &unk_226D721C0);
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    sub_226AC484C(&v56, &v58);
  }

  else
  {
    sub_226D67E6C();
    sub_226D67F0C();
    (*(v10 + 8))(v12, v9);
    v17 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v18 = sub_226D6E36C();

    v19 = [v17 initWithBundleIdentifier_];

    v59 = sub_226AE59B4(0, &qword_28105F428, 0x277CE2028);
    v60 = MEMORY[0x277CC85E8];
    *&v58 = v19;
    sub_226AC47B0(v72, &qword_27D7A6918, &unk_226D7BBC0);
    __swift_destroy_boxed_opaque_existential_0Tm(v74);
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    sub_226AC47B0(v76, &qword_27D7A6910, &unk_226D721C0);
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
    if (v57)
    {
      sub_226AC47B0(&v56, &qword_27D7A6918, &unk_226D7BBC0);
    }
  }

  sub_226AC484C(&v58, v66);
  v20 = sub_226AC484C(&v69, v67 + 8);
  v21 = v49;
  v77[12] = v67[0];
  v77[13] = v67[1];
  v77[14] = v67[2];
  v77[8] = v65[1];
  v77[9] = v65[2];
  v77[10] = v66[0];
  v77[11] = v66[1];
  v77[4] = v63[2];
  v77[5] = v64[0];
  v77[6] = v64[1];
  v77[7] = v65[0];
  v22 = v61;
  *&v61 = MEMORY[0x277D84F90];
  v77[0] = v22;
  v77[1] = v62;
  v77[2] = v63[0];
  v77[3] = v63[1];
  MEMORY[0x28223BE20](v20);
  v49[-6] = v51;
  v49[-5] = a3;
  v23 = v54;
  v49[-4] = v4;
  v49[-3] = v23;
  v49[-2] = v77;
  v49[-1] = &v61;
  sub_226D6794C();
  v24 = v78;
  sub_226D6EB8C();
  if (v24)
  {

    sub_226B1B944(v77);
    return v21;
  }

  v21 = v76[0];
  v25 = *(v61 + 16);
  if (!v25)
  {

    goto LABEL_30;
  }

  v49[0] = v76[0];
  v49[1] = 0;
  v54 = *(v53 + 20);
  v26 = *(v50 + 80);
  v51 = v61;
  v27 = v61 + ((v26 + 32) & ~v26);
  v78 = *(v50 + 72);
  v28 = MEMORY[0x277D84F90];
  v29 = v27;
  v50 = v25;
  do
  {
    v31 = v55;
    sub_226BAE258(v29, v55, type metadata accessor for ManagedConsentDeleter.Metadata);
    v32 = *(v31 + v54);

    result = sub_226BAE2C0(v31, type metadata accessor for ManagedConsentDeleter.Metadata);
    v33 = *(v32 + 16);
    v34 = v28[2];
    v35 = v34 + v33;
    if (__OFADD__(v34, v33))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v35 <= v28[3] >> 1)
    {
      if (!*(v32 + 16))
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (v34 <= v35)
      {
        v37 = v34 + v33;
      }

      else
      {
        v37 = v34;
      }

      v28 = sub_226BBB630(isUniquelyReferenced_nonNull_native, v37, 1, v28);
      if (!*(v32 + 16))
      {
LABEL_9:

        if (v33)
        {
          goto LABEL_33;
        }

        goto LABEL_10;
      }
    }

    v38 = (v28[3] >> 1) - v28[2];
    result = type metadata accessor for ManagedConsentDeleter.Metadata.AccountMetadata(0);
    if (v38 < v33)
    {
      goto LABEL_34;
    }

    swift_arrayInitWithCopy();

    if (v33)
    {
      v39 = v28[2];
      v40 = __OFADD__(v39, v33);
      v41 = v39 + v33;
      if (v40)
      {
        goto LABEL_36;
      }

      v28[2] = v41;
    }

LABEL_10:
    v29 += v78;
    --v25;
  }

  while (v25);
  v42 = -v50;
  v43 = -1;
  do
  {
    v44 = v42 + v43;
    if (v42 + v43 == -1)
    {
      break;
    }

    if (++v43 >= *(v51 + 16))
    {
      goto LABEL_35;
    }

    v45 = v27 + v78;
    v46 = v27;
    v47 = v52;
    sub_226BAE258(v46, v52, type metadata accessor for ManagedConsentDeleter.Metadata);
    v48 = *(v47 + *(v53 + 24));
    result = sub_226BAE2C0(v47, type metadata accessor for ManagedConsentDeleter.Metadata);
    v27 = v45;
  }

  while (v48 != 1);
  ManagedConsentDeleter.postProcess(_:shouldUpdateWalletMessages:)(v28, v44 != -1);

  v21 = v49[0];
LABEL_30:
  sub_226B1B944(v77);
  return v21;
}

uint64_t sub_226BA7964(void *a1, uint64_t a2, char *a3, char *a4, void *a5)
{
  v57 = a5;
  v54 = a2;
  v55 = a4;
  v52 = a1;
  v53 = a3;
  v45 = sub_226D67C0C();
  v49 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v56 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v42 - v8;
  v10 = sub_226D6D52C();
  v44 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v42 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v42 - v17;
  v19 = sub_226D6A2EC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x277D84F90];
  v59 = v52;
  v60 = v5;
  v52 = v5;
  v61 = v53;
  v62 = v55;
  v23 = v58;
  v63 = v54;
  v64 = v57;
  v65 = &v66;
  sub_226D6EB8C();
  if (v23)
  {
    v24 = v23;

    return v24;
  }

  v58 = v22;
  v42[1] = 0;
  v54 = v19;
  v43 = v18;
  v55 = v15;
  v53 = v12;
  __swift_project_boxed_opaque_existential_1(v52 + 18, v52[21]);
  v25 = v66;
  result = sub_226D6AE9C();
  v27 = v25;
  v52 = *(v25 + 16);
  if (!v52)
  {
    v57 = MEMORY[0x277D84F90];
LABEL_15:
    v24 = sub_226AE45DC(v57);

    return v24;
  }

  v28 = 0;
  v50 = v20 + 16;
  v29 = (v44 + 32);
  v48 = (v44 + 56);
  ++v49;
  v47 = v20 + 8;
  v46 = (v44 + 48);
  v57 = MEMORY[0x277D84F90];
  v30 = v45;
  v32 = v54;
  v31 = v55;
  v33 = v58;
  v51 = v27;
  while (v28 < *(v27 + 16))
  {
    (*(v20 + 16))(v33, v27 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v28, v32);
    v34 = v56;
    sub_226D6A2BC();
    sub_226D67BDC();
    v32 = v54;
    v35 = v31;
    v36 = *v29;
    (*v29)(v9, v35, v10);
    v37 = v34;
    v33 = v58;
    (*v49)(v37, v30);
    (*v48)(v9, 0, 1, v10);
    (*(v20 + 8))(v33, v32);
    if ((*v46)(v9, 1, v10) == 1)
    {
      result = sub_226AC47B0(v9, &qword_27D7A6D68, &qword_226D75210);
    }

    else
    {
      v38 = v43;
      v36(v43, v9, v10);
      v36(v53, v38, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_226BBB95C(0, v57[2] + 1, 1, v57);
      }

      v40 = v57[2];
      v39 = v57[3];
      if (v40 >= v39 >> 1)
      {
        v57 = sub_226BBB95C((v39 > 1), v40 + 1, 1, v57);
      }

      v41 = v57;
      v57[2] = v40 + 1;
      result = (v36)(v41 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v40);
      v30 = v45;
      v33 = v58;
    }

    ++v28;
    v27 = v51;
    v31 = v55;
    if (v52 == v28)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226BA7F44(uint64_t a1, void *a2)
{
  v4 = v2;
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = v4[43];
  v8 = v4[44];
  __swift_project_boxed_opaque_existential_1(v4 + 40, v7);
  result = (*(v8 + 16))(a1, a2, v7, v8);
  if (!v3)
  {
    v17[0] = 0;
    v10 = [a2 save_];
    v11 = v17[0];
    if (v10)
    {
      v12 = v4[43];
      v13 = v4[44];
      __swift_project_boxed_opaque_existential_1(v4 + 40, v12);
      v14 = *(v13 + 24);
      v15 = v11;
      return v14(v12, v13);
    }

    else
    {
      v16 = v17[0];
      sub_226D6D04C();

      return swift_willThrow();
    }
  }

  return result;
}

void sub_226BA8088(uint64_t a1)
{
  v34 = sub_226D6B3FC();
  v2 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v32 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74F8, &qword_226D75258);
  MEMORY[0x28223BE20](v31);
  v30 = v26 - v4;
  v5 = *(a1 + 64);
  v26[0] = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v28 = v2 + 88;
  v29 = v2 + 16;
  v27 = *MEMORY[0x277CC7F00];
  v33 = v2;
  v26[1] = v2 + 8;
  v35 = a1;

  v10 = 0;
  v11 = v33;
  v12 = v30;
  while (v8)
  {
    v13 = v10;
LABEL_10:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v13 << 6);
    v16 = v34;
    v17 = *(v35 + 56);
    v18 = (*(v35 + 48) + 16 * v15);
    v19 = v18[1];
    v36 = *v18;
    v20 = *(v31 + 48);
    v21 = *(v11 + 16);
    v21(&v12[v20], v17 + *(v11 + 72) * v15, v34);
    *v12 = v36;
    *(v12 + 1) = v19;
    v22 = &v12[v20];
    v23 = v32;
    v21(v32, v22, v16);
    v24 = (*(v11 + 88))(v23, v16);
    v25 = *(v11 + 8);

    v25(v23, v16);
    sub_226AC47B0(v12, &qword_27D7A74F8, &qword_226D75258);
    if (v24 == v27)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
      goto LABEL_11;
    }

    v8 = *(v26[0] + 8 * v13);
    ++v10;
    if (v8)
    {
      v10 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_226BA8344(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v97 = a3;
  v91 = a7;
  v89 = a6;
  v93 = a5;
  v94 = a4;
  v95 = a2;
  v87 = a8;
  v9 = sub_226D68C1C();
  v85 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v84 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_226D685DC();
  v92 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v80 - v13;
  v15 = sub_226D68C5C();
  v90 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_226D6A94C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6842C();
  v22 = a1;
  v23 = v96;
  v24 = v95;
  v25 = sub_226D683EC();
  if (!v23)
  {
    v82 = v14;
    v83 = v19;
    v96 = v15;
    if (v25)
    {
      v26 = v25;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74D0, &qword_226D75218);
      sub_226D6B6BC();
      sub_226D6A93C();
      v83[1](v21, v18);
      v28 = sub_226BA8D50(v89);
      MEMORY[0x28223BE20](v28);
      *(&v80 - 6) = v94;
      *(&v80 - 5) = v17;
      v29 = v97;
      *(&v80 - 4) = v26;
      *(&v80 - 3) = v29;
      v30 = v91;
      *(&v80 - 2) = v31;
      *(&v80 - 1) = v30;
      sub_226D6794C();
      sub_226D6EB8C();
      v95 = 0;
      v89 = v26;

      v40 = v98;
      (*(v90 + 8))(v17, v96);
      v91 = v40;
      v81 = sub_226D6790C();
      v41 = v82;
      v90 = v27;
      MEMORY[0x22AA87770](v27);
      v42 = sub_226D685CC();
      v43 = *(v92 + 8);
      v92 += 8;
      v83 = v43;
      (v43)(v41, v88);
      v44 = *(v42 + 16);
      if (v44)
      {
        v98 = MEMORY[0x277D84F90];
        sub_226AE1D68(0, v44, 0);
        v45 = v98;
        v46 = v84;
        v47 = *(v85 + 80);
        v82 = v42;
        v48 = v42 + ((v47 + 32) & ~v47);
        v96 = *(v85 + 72);
        do
        {
          v49 = MEMORY[0x277CC75A0];
          sub_226BAE258(v48, v46, MEMORY[0x277CC75A0]);
          v50 = sub_226D68C0C();
          v52 = v51;
          sub_226BAE2C0(v46, v49);
          v98 = v45;
          v54 = *(v45 + 16);
          v53 = *(v45 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_226AE1D68((v53 > 1), v54 + 1, 1);
            v45 = v98;
          }

          *(v45 + 16) = v54 + 1;
          v55 = v45 + 16 * v54;
          *(v55 + 32) = v50;
          *(v55 + 40) = v52;
          v48 += v96;
          --v44;
        }

        while (v44);
      }

      else
      {

        v45 = MEMORY[0x277D84F90];
      }

      MEMORY[0x28223BE20](v56);
      *(&v80 - 4) = v81;
      *(&v80 - 3) = v45;
      v57 = v94;
      v58 = v97;
      *(&v80 - 2) = v94;
      *(&v80 - 1) = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6560, &qword_226D7CCF0);
      v59 = v95;
      sub_226D6EB8C();

      v96 = v98;
      v60 = v86;
      MEMORY[0x22AA87770](v90);
      v61 = sub_226D685CC();
      (v83)(v60, v88);
      v62 = v91;
      v63 = sub_226D6790C();
      v64 = [v62 consentID];
      v65 = sub_226D6E39C();
      v67 = v66;

      v68 = sub_226BA7964(v61, v63, v65, v67, v58);
      if (v59)
      {

        v69 = v89;
LABEL_18:

        return;
      }

      v70 = v96;
      v71 = v68;

      if (((*(*(v57 + 192) + 24))() & 1) == 0)
      {
        v79 = sub_226BACD5C(v71, v70);

        sub_226BA7F44(v79, v97);
        v69 = v89;

        sub_226D6830C();
        goto LABEL_18;
      }

      v72 = v89;
      v73 = v91;
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v74 = sub_226D6E07C();
      __swift_project_value_buffer(v74, qword_28105F710);
      v75 = sub_226D6E05C();
      v76 = sub_226D6E9EC();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_226AB4000, v75, v76, "Wallet has been deleted, aborting arbitration.", v77, 2u);
        MEMORY[0x22AA8BEE0](v77, -1, -1);
      }

      sub_226B4E26C();
      swift_allocError();
      *v78 = 1;
      swift_willThrow();
    }

    else
    {
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v32 = sub_226D6E07C();
      __swift_project_value_buffer(v32, qword_28105F710);
      v33 = v24;

      v34 = sub_226D6E05C();
      v35 = sub_226D6E9CC();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v98 = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_226AC4530(v22, v33, &v98);
        _os_log_impl(&dword_226AB4000, v34, v35, "Institution with ID %s not found, aborting arbitration.", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        MEMORY[0x22AA8BEE0](v37, -1, -1);
        MEMORY[0x22AA8BEE0](v36, -1, -1);
      }

      v38 = sub_226D6A0DC();
      sub_226BAD9D0(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
      swift_allocError();
      (*(*(v38 - 8) + 104))(v39, *MEMORY[0x277CC7AB8], v38);
      swift_willThrow();
    }
  }
}

uint64_t sub_226BA8D50(uint64_t a1)
{
  v47 = sub_226D6B3FC();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v4 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74F8, &qword_226D75258);
  MEMORY[0x28223BE20](v45);
  v49 = &v33[-v5];
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v43 = v2 + 88;
  v44 = v2 + 16;
  v42 = *MEMORY[0x277CC7F00];
  v37 = *MEMORY[0x277CC7F08];
  v46 = v2;
  v36 = (v2 + 8);
  v34 = *MEMORY[0x277CC7EF8];
  v48 = a1;

  v11 = 0;
  v35 = MEMORY[0x277D84F90];
  v40 = v10;
  v41 = a1 + 64;
  v39 = v4;
  for (i = v49; v9; v6 = v41)
  {
LABEL_11:
    while (1)
    {
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v16 = v15 | (v11 << 6);
      v17 = v47;
      v18 = (*(v48 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      v21 = v46;
      v22 = *(v45 + 48);
      v23 = *(v46 + 16);
      v23(&i[v22], *(v48 + 56) + *(v46 + 72) * v16, v47);
      v38 = v19;
      *i = v19;
      *(i + 1) = v20;
      v24 = v20;
      v25 = v39;
      v23(v39, &i[v22], v17);
      v26 = (*(v21 + 88))(v25, v17);
      if (v26 != v42)
      {
        break;
      }

      v13 = *v36;

      v13(v25, v17);
LABEL_6:
      v10 = v40;
      v6 = v41;
      sub_226AC47B0(v49, &qword_27D7A74F8, &qword_226D75258);
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    if (v26 == v37)
    {

      goto LABEL_6;
    }

    if (v26 != v34)
    {
      goto LABEL_23;
    }

    swift_bridgeObjectRetain_n();
    sub_226AC47B0(v49, &qword_27D7A74F8, &qword_226D75258);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_226BBAB0C(0, *(v35 + 2) + 1, 1, v35);
    }

    v28 = *(v35 + 2);
    v27 = *(v35 + 3);
    if (v28 >= v27 >> 1)
    {
      v35 = sub_226BBAB0C((v27 > 1), v28 + 1, 1, v35);
    }

    v29 = v35;
    *(v35 + 2) = v28 + 1;
    v30 = &v29[16 * v28];
    *(v30 + 4) = v38;
    *(v30 + 5) = v24;
    v10 = v40;
  }

LABEL_7:
  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      v31 = sub_226AE3C28(v35);

      return v31;
    }

    v9 = *(v6 + 8 * v14);
    ++v11;
    if (v9)
    {
      v11 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  v50 = 0;
  v51 = 0xE000000000000000;

  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000015, 0x8000000226D81900);
  sub_226D6EFBC();
  result = sub_226D6F0AC();
  __break(1u);
  return result;
}

uint64_t sub_226BA91AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_226D6A99C();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v9 = sub_226D6764C();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();
  v10 = sub_226D6C27C();
  v7[15] = v10;
  v7[16] = *(v10 - 8);
  v7[17] = swift_task_alloc();
  v11 = sub_226D6C29C();
  v7[18] = v11;
  v7[19] = *(v11 - 8);
  v7[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226BA938C, 0, 0);
}

uint64_t sub_226BA938C()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[6];
  v8 = v0[4];
  v9 = sub_226D68C5C();
  (*(*(v9 - 8) + 16))(v1, v8, v9);
  (*(v2 + 104))(v1, *MEMORY[0x277CC8228], v3);

  sub_226D6978C();

  (*(v6 + 16))(v4, v7, v5);
  sub_226D6C28C();
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_226BA9518;
  v11 = v0[20];
  v12 = v0[2];

  return MEMORY[0x282119B50](v12, v11);
}

uint64_t sub_226BA9518()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  (*(v2[19] + 8))(v2[20], v2[18]);
  if (v0)
  {
    v3 = sub_226BA9934;
  }

  else
  {
    v3 = sub_226BA9680;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226BA9680()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v4[33];
  v6 = v4[34];
  __swift_project_boxed_opaque_existential_1(v4 + 30, v5);
  (*(v2 + 104))(v1, *MEMORY[0x277CC7CE0], v3);
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_226BA977C;
  v8 = v0[11];
  v9 = v0[8];

  return MEMORY[0x282118D90](v9, v8, v5, v6);
}

uint64_t sub_226BA977C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_226BA9934()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v4[33];
  v6 = v4[34];
  __swift_project_boxed_opaque_existential_1(v4 + 30, v5);
  (*(v2 + 104))(v1, *MEMORY[0x277CC7CE8], v3);
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_226BA9A30;
  v8 = v0[11];
  v9 = v0[8];

  return MEMORY[0x282118D90](v9, v8, v5, v6);
}

uint64_t sub_226BA9A30()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_226BA9B88, 0, 0);
}

uint64_t sub_226BA9B88(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_226BA9C2C()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 25);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 30);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 35);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_226BA9D40@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X5>, uint64_t *a6@<X8>)
{
  v129 = a5;
  v131 = a4;
  v124 = a3;
  v121 = a6;
  v130 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  v128 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v132 = (&v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v133 = &v111 - v10;
  v11 = sub_226D6D4AC();
  v116 = *(v11 - 1);
  v117 = v11;
  MEMORY[0x28223BE20](v11);
  v115 = (&v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_226D6A30C();
  v118 = *(v13 - 8);
  v119 = v13;
  MEMORY[0x28223BE20](v13);
  v120 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_226D68C5C();
  v123 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v111 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v111 - v22;
  v24 = sub_226D6794C();
  v122 = a1;
  v25 = [a1 id];
  sub_226D6E39C();

  v26 = v127;
  v27 = sub_226D6791C();
  if (v26)
  {
  }

  v29 = v27;
  v112 = v20;
  v113 = 0;
  v114 = v15;
  v30 = v122;
  v125 = a2;
  v126 = v23;
  v111 = v24;

  v31 = (v29 >> 62);
  if (v29 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
  {
    v33 = v113;
    v34 = v114;
    v35 = v123;
    v36 = v30;
    v37 = v17;
    v127 = v29;
    v38 = v112;
    if (i == 1)
    {
      break;
    }

    if (!i)
    {

      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v39 = sub_226D6E07C();
      __swift_project_value_buffer(v39, qword_28105F710);
      v40 = v36;
      v41 = sub_226D6E05C();
      v42 = sub_226D6E9EC();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v134 = v44;
        *v43 = 136315138;
        v45 = [v40 id];
        v46 = sub_226D6E39C();
        v48 = v47;

        v49 = sub_226AC4530(v46, v48, &v134);
        v34 = v114;

        *(v43 + 4) = v49;
        _os_log_impl(&dword_226AB4000, v41, v42, "No existing consent found for institutionID: %s, inserting a new consent.", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v44);
        MEMORY[0x22AA8BEE0](v44, -1, -1);
        MEMORY[0x22AA8BEE0](v43, -1, -1);
      }

      v51 = v120;
      v50 = v121;
      v53 = v118;
      v52 = v119;
      (*(v123 + 16))(v126, v124, v34);
      (*(v53 + 104))(v51, *MEMORY[0x277CC7B60], v52);
      v54 = v40;
      v55 = v125;
      result = sub_226D6795C();
      *v50 = result;
      return result;
    }

    if (qword_28105F708 != -1)
    {
      goto LABEL_53;
    }

LABEL_17:
    v70 = sub_226D6E07C();
    __swift_project_value_buffer(v70, qword_28105F710);
    v115 = *(v35 + 16);
    v116 = v35 + 16;
    v115(v37, v124, v34);
    v71 = v36;
    v72 = sub_226D6E05C();
    v29 = sub_226D6E9EC();

    v73 = os_log_type_enabled(v72, v29);
    v117 = v71;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v134 = v123;
      *v74 = 136315394;
      v75 = [v71 id];
      v76 = sub_226D6E39C();
      LODWORD(v122) = v29;
      v77 = v76;
      v79 = v78;

      v80 = sub_226AC4530(v77, v79, &v134);

      *(v74 + 4) = v80;
      *(v74 + 12) = 2080;
      v81 = sub_226D68C4C();
      v29 = v82;
      (*(v35 + 8))(v37, v114);
      v83 = sub_226AC4530(v81, v29, &v134);

      *(v74 + 14) = v83;
      _os_log_impl(&dword_226AB4000, v72, v122, "Multiple consents found for institutionID: %s. It's client configuration indicates that only a single consent is supported. Removing existing consents and replacing it them with consentID: %s.", v74, 0x16u);
      v84 = v123;
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v84, -1, -1);
      MEMORY[0x22AA8BEE0](v74, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v37, v34);
    }

    v30 = v126;
    v17 = v127;
    if (v31)
    {
      v92 = sub_226D6EDFC();
      if (!v92)
      {
LABEL_47:

        v115(v30, v124, v114);
        (*(v118 + 104))(v120, *MEMORY[0x277CC7B60], v119);
        v109 = v117;
        v110 = v125;
        result = sub_226D6795C();
        *v121 = result;
        return result;
      }
    }

    else
    {
      v92 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v92)
      {
        goto LABEL_47;
      }
    }

    v93 = 0;
    v122 = (v17 & 0xFFFFFFFFFFFFFF8);
    v123 = v17 & 0xC000000000000001;
    while (1)
    {
      if (v123)
      {
        v94 = MEMORY[0x22AA8AFD0](v93, v17);
      }

      else
      {
        if (v93 >= *(v122 + 2))
        {
          goto LABEL_50;
        }

        v94 = *(v17 + 8 * v93 + 32);
      }

      v95 = v94;
      v30 = (v93 + 1);
      if (__OFADD__(v93, 1))
      {
        break;
      }

      v96 = [(objc_class *)v94 consentID];
      v97 = sub_226D6E39C();
      v99 = v98;

      MEMORY[0x28223BE20](v100);
      *(&v111 - 6) = v97;
      *(&v111 - 5) = v99;
      v101 = v131;
      *(&v111 - 4) = v125;
      *(&v111 - 3) = v101;
      *(&v111 - 16) = 1;
      v102 = v133;
      sub_226D6EB8C();
      if (v33)
      {
      }

      sub_226BAE258(v102, v132, type metadata accessor for ManagedConsentDeleter.Metadata);
      v31 = v129;
      v103 = *v129;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v31 = v103;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v103 = sub_226BBB9A8(0, v103[2] + 1, 1, v103);
        *v31 = v103;
      }

      v106 = v103[2];
      v105 = v103[3];
      v29 = v106 + 1;
      if (v106 >= v105 >> 1)
      {
        *v31 = sub_226BBB9A8((v105 > 1), v106 + 1, 1, v103);
      }

      sub_226BAE2C0(v133, type metadata accessor for ManagedConsentDeleter.Metadata);
      v107 = *v31;
      *(v107 + 16) = v29;
      sub_226BAE320(v132, v107 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v106);
      ++v93;
      v108 = v30 == v92;
      v30 = v126;
      v17 = v127;
      if (v108)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  v133 = v31;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v56 = sub_226D6E07C();
  __swift_project_value_buffer(v56, qword_28105F710);
  (*(v35 + 16))(v38, v124, v34);
  v31 = v36;
  v37 = sub_226D6E05C();
  v57 = sub_226D6E9EC();

  if (os_log_type_enabled(v37, v57))
  {
    v58 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v134 = v132;
    *v58 = 136315394;
    v59 = [v31 id];
    v60 = sub_226D6E39C();
    LODWORD(v131) = v57;
    v61 = v60;
    v31 = v62;

    v63 = sub_226AC4530(v61, v31, &v134);

    *(v58 + 4) = v63;
    *(v58 + 12) = 2080;
    v64 = sub_226D68C4C();
    v66 = v65;
    v67 = *(v35 + 8);
    v35 += 8;
    v67(v38, v34);
    v68 = sub_226AC4530(v64, v66, &v134);

    *(v58 + 14) = v68;
    _os_log_impl(&dword_226AB4000, v37, v131, "Existing consent found for institutionID: %s, updating the existing consent with values from consent with consentID: %s.", v58, 0x16u);
    v69 = v132;
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v69, -1, -1);
    MEMORY[0x22AA8BEE0](v58, -1, -1);
  }

  else
  {

    v85 = *(v35 + 8);
    v35 += 8;
    v85(v38, v34);
  }

  v36 = v120;
  v34 = v121;
  v86 = v119;
  if (v133)
  {
    result = sub_226D6EDFC();
  }

  else
  {
    result = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {
    __break(1u);
LABEL_53:
    swift_once();
    goto LABEL_17;
  }

  if ((v127 & 0xC000000000000001) != 0)
  {
    v87 = MEMORY[0x22AA8AFD0](0, v127);
    goto LABEL_27;
  }

  if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v87 = *(v127 + 32);
LABEL_27:
    v88 = v87;

    v89 = v118;
    (*(v118 + 104))(v36, *MEMORY[0x277CC7B60], v86);
    v90 = v86;
    v91 = v115;
    sub_226D6D46C();
    sub_226D6793C();
    (*(v116 + 8))(v91, v117);
    result = (*(v89 + 8))(v36, v90);
    *v34 = v88;
    return result;
  }

  __break(1u);
  return result;
}

void sub_226BAAA34(uint64_t a1@<X0>, char *a2@<X1>, void (**a3)(char *, uint64_t)@<X2>, char *a4@<X3>, void *a5@<X4>, NSObject *a6@<X5>, void *a7@<X8>)
{
  v85 = a5;
  v83 = a1;
  v84 = a6;
  v82 = a4;
  v88 = a2;
  v70 = a7;
  v89 = sub_226D6D06C();
  v69 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_226D6A30C();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D68C5C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v76 = &v69 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v69 - v18;
  if (qword_28105F708 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v20 = sub_226D6E07C();
    v21 = __swift_project_value_buffer(v20, qword_28105F710);
    v77 = v12[2];
    v78 = v12 + 2;
    v77(v19, v88, v11);
    v22 = a3;
    v71 = v21;
    v23 = sub_226D6E05C();
    v24 = sub_226D6E9EC();
    v87 = v22;

    v25 = os_log_type_enabled(v23, v24);
    v74 = v12;
    v73 = v14;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v75 = v11;
      v28 = v27;
      *&v91 = v27;
      *v26 = 136315394;
      v29 = sub_226D68C4C();
      v31 = v30;
      v72 = v12[1];
      v72(v19, v75);
      v32 = sub_226AC4530(v29, v31, &v91);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2080;
      v33 = [v87 id];
      v34 = sub_226D6E39C();
      v36 = v35;

      v37 = sub_226AC4530(v34, v36, &v91);

      *(v26 + 14) = v37;
      _os_log_impl(&dword_226AB4000, v23, v24, "Inserting new consent with consentID: %s for institution with institutionID: %s.", v26, 0x16u);
      swift_arrayDestroy();
      v38 = v28;
      v11 = v75;
      MEMORY[0x22AA8BEE0](v38, -1, -1);
      MEMORY[0x22AA8BEE0](v26, -1, -1);
    }

    else
    {

      v72 = v12[1];
      v72(v19, v11);
    }

    sub_226D6794C();
    v39 = v77;
    v77(v76, v88, v11);
    (*(v79 + 104))(v80, *MEMORY[0x277CC7B60], v81);
    v40 = v87;
    v41 = v82;
    v19 = sub_226D6795C();
    MEMORY[0x28223BE20](v19);
    v42 = v83;
    *(&v69 - 4) = v84;
    *(&v69 - 3) = v41;
    v43 = v85;
    *(&v69 - 2) = v42;
    *(&v69 - 1) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74E0, &unk_226D75240);
    v44 = v86;
    sub_226D6EB8C();
    if (v44)
    {

      return;
    }

    v83 = 0;
    v45 = v91;
    v12 = v73;
    v39(v73, v88, v11);
    v46 = v40;
    v47 = v45;
    v48 = v46;

    v49 = sub_226D6E05C();
    v50 = sub_226D6E9EC();
    v85 = v48;

    LODWORD(v87) = v50;
    v51 = os_log_type_enabled(v49, v50);
    v14 = (v47 >> 62);
    v88 = v41;
    v86 = v47;
    if (v51)
    {
      v84 = v49;
      v52 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *&v91 = v81;
      *v52 = 134218498;
      v82 = (v47 >> 62);
      v53 = v47 >> 62 ? sub_226D6EDFC() : *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v52 + 4) = v53;

      *(v52 + 12) = 2080;
      v54 = sub_226D68C4C();
      v56 = v55;
      v72(v12, v11);
      v57 = v54;
      v47 = v86;
      v58 = sub_226AC4530(v57, v56, &v91);

      *(v52 + 14) = v58;
      *(v52 + 22) = 2080;
      v59 = [v85 id];
      v60 = sub_226D6E39C();
      v62 = v61;

      v63 = sub_226AC4530(v60, v62, &v91);

      *(v52 + 24) = v63;
      v64 = v84;
      _os_log_impl(&dword_226AB4000, v84, v87, "Merging the accounts granted by %ld consents into the new consent with consentID: %s for institutionID: %s.", v52, 0x20u);
      v12 = v81;
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v12, -1, -1);
      MEMORY[0x22AA8BEE0](v52, -1, -1);

      v14 = v82;
    }

    else
    {

      v72(v12, v11);
    }

    if (v14)
    {
      break;
    }

    v11 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_29;
    }

LABEL_14:
    v65 = 0;
    v87 = (v86 & 0xC000000000000001);
    v84 = v86 + 4;
    v85 = (v86 & 0xFFFFFFFFFFFFFF8);
    a3 = (v69 + 8);
    while (1)
    {
      if (v87)
      {
        v66 = MEMORY[0x22AA8AFD0](v65, v86);
      }

      else
      {
        if (v65 >= *(v85 + 2))
        {
          goto LABEL_26;
        }

        v66 = v84[v65].isa;
      }

      v12 = v66;
      if (__OFADD__(v65++, 1))
      {
        break;
      }

      v68 = [(objc_class *)v66 accountObjects];
      sub_226D6EBEC();

      while (1)
      {
        sub_226D6D05C();
        if (!v92)
        {
          break;
        }

        sub_226B24A98(&v91, &v90);
        sub_226D69F0C();
        if (swift_dynamicCast())
        {
          v14 = v93;
          sub_226D69EEC();
        }
      }

      (*a3)(v9, v89);
      [v88 deleteObject_];

      if (v65 == v11)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

  v11 = sub_226D6EDFC();
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_29:

  *v70 = v19;
}

void sub_226BAB338(uint64_t a1@<X0>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v51 = a3;
  v49 = a4;
  v6 = sub_226D6D52C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v48 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v48 - v10;
  v11 = type metadata accessor for BankConnectConsentArbitratingConfiguration(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - v21;
  sub_226BAE258(a1, v13, type metadata accessor for BankConnectConsentArbitratingConfiguration);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E98, &unk_226D73780);
  v24 = 1;
  if ((*(*(v23 - 8) + 48))(v13, 1, v23) != 1)
  {
    (*(v7 + 32))(v19, v13, v6);
    v24 = 0;
  }

  (*(v7 + 56))(v19, v24, 1, v6);
  sub_226BACBC0(v19, v22);
  sub_226AC40E8(v22, v16, &qword_27D7A6D68, &qword_226D75210);
  if ((*(v7 + 48))(v16, 1, v6) == 1)
  {
    v25 = 0;
    goto LABEL_5;
  }

  v30 = v50;
  (*(v7 + 32))(v50, v16, v6);
  sub_226D6794C();
  v31 = sub_226D678AC();
  if (v4)
  {
    v32 = *(v7 + 8);
LABEL_9:
    v32(v30, v6);
    sub_226AC47B0(v22, &qword_27D7A6D68, &qword_226D75210);
    return;
  }

  v25 = v31;
  if (!v31)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v35 = sub_226D6E07C();
    __swift_project_value_buffer(v35, qword_28105F710);
    v36 = v48;
    (*(v7 + 16))(v48, v30, v6);
    v37 = sub_226D6E05C();
    v38 = sub_226D6E9CC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v49 = v39;
      v51 = swift_slowAlloc();
      v52 = v51;
      *v39 = 136315138;
      v40 = sub_226D6D4CC();
      v42 = v41;
      v32 = *(v7 + 8);
      v32(v36, v6);
      v43 = sub_226AC4530(v40, v42, &v52);

      v44 = v49;
      *(v49 + 4) = v43;
      v30 = v50;
      _os_log_impl(&dword_226AB4000, v37, v38, "Expected consent with UUID: %s due to arbiter configuration but wasn't found in store. Aborting arbitration.", v44, 0xCu);
      v45 = v51;
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x22AA8BEE0](v45, -1, -1);
      MEMORY[0x22AA8BEE0](v44, -1, -1);
    }

    else
    {

      v32 = *(v7 + 8);
      v32(v36, v6);
    }

    v46 = sub_226D6A0DC();
    sub_226BAD9D0(&qword_27D7A6290, MEMORY[0x277CC7AD0], MEMORY[0x277CC7AD8]);
    swift_allocError();
    (*(*(v46 - 8) + 104))(v47, *MEMORY[0x277CC7AB8], v46);
    swift_willThrow();
    goto LABEL_9;
  }

  (*(v7 + 8))(v30, v6);
LABEL_5:
  sub_226AC47B0(v22, &qword_27D7A6D68, &qword_226D75210);
  sub_226D6794C();
  v26 = sub_226D678BC();
  [v26 setReturnsObjectsAsFaults_];
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_226D70840;
  *(v27 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74E8, &qword_226D75250);
  *(v27 + 64) = sub_226BAE1D0();
  *(v27 + 32) = v51;

  v28 = sub_226D6E91C();
  [v26 setPredicate_];

  v29 = sub_226D6EBBC();
  if (v4)
  {
  }

  else
  {
    v52 = v29;
    if (v25)
    {
      v33 = v25;
      MEMORY[0x22AA8A610]();
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_226D6E61C();
      }

      sub_226D6E65C();

      *v49 = v52;
    }

    else
    {
      v34 = v29;

      *v49 = v34;
    }
  }
}

uint64_t sub_226BABA94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v74 = a5;
  v75 = a6;
  v77 = a3;
  v73 = a2;
  v72 = sub_226D67C0C();
  v78 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_226D6A2EC();
  v12 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v79 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D50, &unk_226D75230);
  MEMORY[0x28223BE20](v14 - 8);
  v68 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v80 = &v61 - v17;
  v18 = sub_226D68C1C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  v71 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v61 - v22;
  sub_226D69C6C();
  swift_allocObject();
  v24 = sub_226D69C5C();
  if (!*(a1 + 16))
  {
  }

  v26 = *(a1 + 16);
  v81 = v7;
  v27 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v67 = (v78 + 56);
  v64 = *(v19 + 72);
  v65 = v12 + 32;
  *&v25 = 136315394;
  v61 = v25;
  v76 = a4;
  v66 = v12;
  v28 = v26;
  v62 = a7;
  while (1)
  {
    v78 = v27;
    sub_226BAE258(v27, v23, MEMORY[0x277CC75A0]);
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v29 = sub_226D6E07C();
    __swift_project_value_buffer(v29, qword_28105F710);
    v30 = v71;
    sub_226BAE258(v23, v71, MEMORY[0x277CC75A0]);

    v31 = sub_226D6E05C();
    v32 = sub_226D6E9EC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = v30;
      v63 = swift_slowAlloc();
      v82 = v63;
      *v33 = v61;
      *(v33 + 4) = sub_226AC4530(v77, a4, &v82);
      *(v33 + 12) = 2080;
      v35 = v28;
      v36 = v24;
      v37 = v23;
      v38 = sub_226D68C0C();
      v40 = v39;
      sub_226BAE2C0(v34, MEMORY[0x277CC75A0]);
      v41 = v38;
      v23 = v37;
      v24 = v36;
      v28 = v35;
      v42 = sub_226AC4530(v41, v40, &v82);

      *(v33 + 14) = v42;
      _os_log_impl(&dword_226AB4000, v31, v32, "Consent with consentID: %s grants access to account with accountID: %s. Inserting or updating account.", v33, 0x16u);
      v43 = v63;
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](v43, -1, -1);
      v44 = v33;
      a7 = v62;
      MEMORY[0x22AA8BEE0](v44, -1, -1);
    }

    else
    {

      v45 = sub_226BAE2C0(v30, MEMORY[0x277CC75A0]);
    }

    v46 = v80;
    MEMORY[0x28223BE20](v45);
    *(&v61 - 2) = v23;
    v47 = v81;
    sub_226BA30BC(sub_226BAD9B0, (&v61 - 2), v74);
    v49 = v48;
    if (v48)
    {
      [v48 setIsAccountEnabled_];
      v50 = v49;
      sub_226D67C1C();
      v51 = 0;
    }

    else
    {
      v51 = 1;
    }

    (*v67)(v46, v51, 1, v72);
    v52 = sub_226D69C3C();
    v81 = v47;
    if (v47)
    {
      break;
    }

    v53 = v52;
    sub_226AC40E8(v46, v68, &qword_27D7A6D50, &unk_226D75230);
    v54 = v53;
    sub_226D67C1C();
    sub_226D6A2CC();
    v55 = *a7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v55;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v55 = sub_226BBB9D0(0, v55[2] + 1, 1, v55);
      *a7 = v55;
    }

    v58 = v55[2];
    v57 = v55[3];
    if (v58 >= v57 >> 1)
    {
      *a7 = sub_226BBB9D0((v57 > 1), v58 + 1, 1, v55);
    }

    sub_226AC47B0(v80, &qword_27D7A6D50, &unk_226D75230);
    v59 = *a7;
    *(v59 + 16) = v58 + 1;
    (*(v66 + 32))(v59 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v58, v79, v69);
    sub_226BAE2C0(v23, MEMORY[0x277CC75A0]);
    v27 = v78 + v64;
    --v28;
    a4 = v76;
    if (!v28)
    {
    }
  }

  sub_226AC47B0(v46, &qword_27D7A6D50, &unk_226D75230);

  return sub_226BAE2C0(v23, MEMORY[0x277CC75A0]);
}

uint64_t sub_226BAC1EC(id *a1)
{
  v1 = [*a1 accountId];
  v2 = sub_226D6E39C();
  v4 = v3;

  if (v2 == sub_226D68C0C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_226D6F21C();
  }

  return v7 & 1;
}

void sub_226BAC29C(uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v95 = a3;
  v77 = a5;
  v93 = sub_226D6D52C();
  v8 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v91 = v75 - v11;

  v13 = sub_226BADF08(v12, a2);
  v76 = v5;

  v105 = MEMORY[0x277D84FA0];
  if ((v13 & 0xC000000000000001) != 0)
  {
    sub_226D6EDBC();
    sub_226D69F0C();
    sub_226BAD9D0(&qword_27D7A7278, MEMORY[0x277CC7A70], MEMORY[0x277D85378]);
    sub_226D6E8DC();
    v13 = v104[1];
    v15 = v104[2];
    v16 = v104[3];
    v17 = v104[4];
    v18 = v104[5];
  }

  else
  {
    v17 = 0;
    v19 = -1 << *(v13 + 32);
    v15 = v13 + 56;
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v13 + 56);
  }

  v75[1] = v16;
  v22 = (v16 + 64) >> 6;
  v80 = *MEMORY[0x277CC7290];
  v87 = (v8 + 8);
  v86 = *MEMORY[0x277CC7298];
  v85 = *MEMORY[0x277CC7278];
  v84 = *MEMORY[0x277CC7288];
  v83 = *MEMORY[0x277CC72A0];
  v82 = *MEMORY[0x277CC7280];
  *&v14 = 136315138;
  v78 = v14;
  v81 = xmmword_226D750B0;
  v79 = xmmword_226D70840;
  v94 = a4;
  v23 = v95;
  v89 = v15;
  v90 = v13;
  v88 = v22;
  while (v13 < 0)
  {
    v31 = sub_226D6EE2C();
    if (!v31 || (v103 = v31, sub_226D69F0C(), swift_dynamicCast(), v30 = v104[0], v28 = v17, v29 = v18, !v104[0]))
    {
LABEL_26:
      sub_226AD3C20(v13);
      *v77 = v105;
      return;
    }

LABEL_18:
    v100 = v29;
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v32 = sub_226D6E07C();
    __swift_project_value_buffer(v32, qword_28105F710);
    v33 = v30;
    v34 = sub_226D6E05C();
    v35 = sub_226D6E9EC();

    v36 = os_log_type_enabled(v34, v35);
    v101 = v28;
    v102 = v33;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v104[0] = v38;
      *v37 = v78;
      v39 = [v33 accountId];
      v40 = sub_226D6E39C();
      v42 = v41;

      v43 = sub_226AC4530(v40, v42, v104);

      *(v37 + 4) = v43;
      v33 = v102;
      _os_log_impl(&dword_226AB4000, v34, v35, "Account with accountID: %s is no longer granted by updated consent. Resetting message status and deleting this account.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x22AA8BEE0](v38, -1, -1);
      MEMORY[0x22AA8BEE0](v37, -1, -1);
    }

    v44 = [v33 externalAccountId];
    if (v44)
    {
      v45 = v44;
      v46 = sub_226D6E39C();
      v48 = v47;

      v49 = v23[11];
      v99 = v23[12];
      __swift_project_boxed_opaque_existential_1(v23 + 8, v49);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74D8, &qword_226D756E0);
      v50 = *(sub_226D6831C() - 8);
      v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = v79;
      v53 = (v52 + v51);
      *v53 = v46;
      v53[1] = v48;
      (*(v50 + 104))();
      v33 = v102;
      sub_226D6AD4C();
    }

    v54 = [v33 accountId];
    v55 = sub_226D6E39C();
    v57 = v56;

    v58 = v23[12];
    v98 = v23[11];
    v99 = v58;
    v97 = __swift_project_boxed_opaque_existential_1(v23 + 8, v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A74D8, &qword_226D756E0);
    v59 = sub_226D6831C();
    v60 = *(v59 - 8);
    v61 = *(v60 + 72);
    v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v96 = 4 * v61;
    v63 = swift_allocObject();
    *(v63 + 16) = v81;
    v64 = (v63 + v62);
    *v64 = v55;
    v64[1] = v57;
    v65 = *(v60 + 104);
    (v65)(v64, v86, v59);
    v66 = (v64 + v61);
    *v66 = v55;
    v66[1] = v57;
    v65();
    v67 = (v64 + 2 * v61);
    *v67 = v55;
    v67[1] = v57;
    v65();
    v68 = 3 * v61;
    v69 = v102;
    v70 = (v64 + v68);
    *v70 = v55;
    v70[1] = v57;
    v65();
    v71 = (v64 + v96);
    *v71 = v55;
    v71[1] = v57;
    v65();
    swift_bridgeObjectRetain_n();
    sub_226D6AD4C();

    v72 = [v69 accountMatchObject];
    v73 = v94;
    if (v72)
    {
      v74 = v72;
      [v94 deleteObject_];
    }

    v24 = v92;
    sub_226D69EBC();
    v25 = v91;
    sub_226C2514C(v91, v24);
    (*v87)(v25, v93);
    [v73 deleteObject_];

    v18 = v100;
    v17 = v101;
    v23 = v95;
    v15 = v89;
    v13 = v90;
    v22 = v88;
  }

  v26 = v17;
  v27 = v18;
  v28 = v17;
  if (v18)
  {
LABEL_14:
    v29 = (v27 - 1) & v27;
    v30 = *(*(v13 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
    if (!v30)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v22)
    {
      goto LABEL_26;
    }

    v27 = *(v15 + 8 * v28);
    ++v26;
    if (v27)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t type metadata accessor for BankConnectConsentArbitratingConfiguration(uint64_t a1)
{
  result = qword_27D7A7508;
  if (!qword_27D7A7508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226BACBC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t *sub_226BACC30(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_226BADA18(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_226BACCCC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_226BACF20(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_226BACD5C(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_226BACF20((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_226BACCCC(v12, v6, a2, a1);

    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  return v10;
}

void sub_226BACF20(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v66 = a1;
  v6 = sub_226D6D52C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v75 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v61 - v10;
  MEMORY[0x28223BE20](v12);
  v76 = (v61 - v13);
  v15.n128_f64[0] = MEMORY[0x28223BE20](v14);
  v65 = v61 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v77 = v7 + 16;
  v73 = a4;
  v74 = a3;
  v69 = v7;
  if (v18 >= v17)
  {
    v42 = 0;
    v43 = *(a3 + 56);
    v64 = a3 + 56;
    v44 = 1 << *(a3 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v43;
    v47 = (v44 + 63) >> 6;
    v72 = a4 + 56;
    v76 = (v7 + 8);
    j = v47;
    v68 = 0;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_31:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v42 >= v47)
      {
LABEL_44:

        sub_226D563B0(v66, v62, v68, a3);
        return;
      }

      v50 = *(v64 + 8 * v42);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        for (i = ((v50 - 1) & v50); ; i = ((v46 - 1) & v46))
        {
          v51 = v48 | (v42 << 6);
          v52 = *(a3 + 48);
          v53 = *(v7 + 72);
          v70 = v51;
          v54 = *(v7 + 16);
          v54(v75, v52 + v53 * v51, v6, v15);
          sub_226BAD9D0(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
          v55 = sub_226D6E2FC();
          v56 = -1 << *(a4 + 32);
          v57 = v55 & ~v56;
          if ((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v65 = (v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v58 = ~v56;
            while (1)
            {
              (v54)(v11, *(v73 + 48) + v57 * v53, v6);
              sub_226BAD9D0(&qword_27D7A6DA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
              v59 = sub_226D6E35C();
              v60 = *v76;
              (*v76)(v11, v6);
              if (v59)
              {
                break;
              }

              v57 = (v57 + 1) & v58;
              if (((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                a4 = v73;
                goto LABEL_42;
              }
            }

            v60(v75, v6);
            v7 = v69;
            *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            v47 = j;
            v27 = __OFADD__(v68++, 1);
            a4 = v73;
            a3 = v74;
            v46 = i;
            if (v27)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v60 = *v76;
LABEL_42:
            v60(v75, v6);
            a3 = v74;
            v7 = v69;
            v47 = j;
            v46 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v48 = __clz(__rbit64(v46));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v68 = 0;
    v19 = a4;
    v20 = 0;
    v22 = v19 + 56;
    v21 = *(v19 + 56);
    v61[0] = v22;
    v23 = 1 << *(v22 - 24);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v63 = v7 + 32;
    v64 = v26;
    v70 = a3 + 56;
    v75 = (v7 + 8);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v26)
      {
        goto LABEL_44;
      }

      v30 = *(v61[0] + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        for (j = (v30 - 1) & v30; ; j = (v25 - 1) & v25)
        {
          v31 = *(v7 + 72);
          v32 = *(v73 + 48) + v31 * (v28 | (v20 << 6));
          v33 = v65;
          i = *(v7 + 16);
          v72 = v31;
          i(v65, v32, v6, v15);
          (*(v7 + 32))(v76, v33, v6);
          sub_226BAD9D0(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
          v34 = sub_226D6E2FC();
          v35 = -1 << *(a3 + 32);
          v36 = v34 & ~v35;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) != 0)
          {
            v61[1] = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v39 = ~v35;
            while (1)
            {
              (i)(v11, *(v74 + 48) + v36 * v72, v6);
              sub_226BAD9D0(&qword_27D7A6DA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
              v40 = sub_226D6E35C();
              v41 = *v75;
              (*v75)(v11, v6);
              if (v40)
              {
                break;
              }

              v36 = (v36 + 1) & v39;
              v37 = v36 >> 6;
              v38 = 1 << v36;
              if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) == 0)
              {
                a3 = v74;
                goto LABEL_21;
              }
            }

            v41(v76, v6);
            v25 = j;
            v66[v37] |= v38;
            v7 = v69;
            v27 = __OFADD__(v68++, 1);
            a3 = v74;
            v26 = v64;
            if (v27)
            {
              goto LABEL_48;
            }

            if (!v25)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v41 = *v75;
LABEL_21:
            v41(v76, v6);
            v7 = v69;
            v26 = v64;
            v25 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v28 = __clz(__rbit64(v25));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_226BAD608(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D52C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BankConnectConsentArbitratingConfiguration(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7528, &unk_226D753A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_226BAE258(a1, &v21 - v12, type metadata accessor for BankConnectConsentArbitratingConfiguration);
  sub_226BAE258(a2, &v13[v15], type metadata accessor for BankConnectConsentArbitratingConfiguration);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6E98, &unk_226D73780);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v13, 1, v16) != 1)
  {
    sub_226BAE258(v13, v10, type metadata accessor for BankConnectConsentArbitratingConfiguration);
    if (v17(&v13[v15], 1, v16) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v18 = sub_226D6D4EC();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_226BAE2C0(v13, type metadata accessor for BankConnectConsentArbitratingConfiguration);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v17(&v13[v15], 1, v16) != 1)
  {
LABEL_6:
    sub_226AC47B0(v13, &qword_27D7A7528, &unk_226D753A0);
    v18 = 0;
    return v18 & 1;
  }

  sub_226BAE2C0(v13, type metadata accessor for BankConnectConsentArbitratingConfiguration);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_226BAD9D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t *sub_226BADA18(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = 0;
  v29 = a4;
  v26 = a2;
  v27 = result;
  v6 = 0;
  v30 = a3;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v33 = v5;
    v12 = __clz(__rbit64(v10));
    v31 = (v10 - 1) & v10;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(v30 + 48) + 8 * v15);
    v17 = [v16 accountId];
    v18 = sub_226D6E39C();
    v20 = v19;

    v32[0] = v18;
    v32[1] = v20;
    MEMORY[0x28223BE20](v21);
    v25[2] = v32;
    v22 = v33;
    LOBYTE(v17) = sub_226CCB428(sub_226BAE5A0, v25, v29);
    v5 = v22;

    v10 = v31;
    if ((v17 & 1) == 0)
    {
      *(v27 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_15:
        v24 = v30;

        return sub_226D568FC(v27, v26, v28, v24);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v33 = v5;
      v12 = __clz(__rbit64(v14));
      v31 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226BADC04(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v37[2] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v30 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v30;
  v34 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v29[1] = v29;
    MEMORY[0x28223BE20](v8);
    v31 = v29 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v7);
    v32 = 0;
    v33 = v4;
    v7 = 0;
    v9 = v4 + 56;
    v10 = 1 << *(v4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v4 + 56);
    v4 = (v10 + 63) >> 6;
    while (v12)
    {
      v13 = __clz(__rbit64(v12));
      v35 = (v12 - 1) & v12;
      v36 = v3;
LABEL_12:
      v16 = v13 | (v7 << 6);
      v17 = *(*(v33 + 48) + 8 * v16);
      v18 = [v17 accountId];
      v19 = sub_226D6E39C();
      v21 = v20;

      v37[0] = v19;
      v37[1] = v21;
      MEMORY[0x28223BE20](v22);
      v29[-2] = v37;
      v23 = v36;
      LOBYTE(v18) = sub_226CCB428(sub_226BAE5A0, &v29[-4], v34);
      v3 = v23;

      v12 = v35;
      if ((v18 & 1) == 0)
      {
        *&v31[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_16:
          v25 = sub_226D568FC(v31, v30, v32, v33);
          goto LABEL_17;
        }
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v4)
      {
        goto LABEL_16;
      }

      v15 = *(v9 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v35 = (v15 - 1) & v15;
        v36 = v3;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = v34;

  v25 = sub_226BACC30(v27, v30, v4, v28);

  MEMORY[0x22AA8BEE0](v27, -1, -1);
LABEL_17:

  return v25;
}

uint64_t sub_226BADF08(int64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_226BADC04(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v27 = MEMORY[0x277D84FA0];

  sub_226D6EDBC();
  v4 = sub_226D6EE2C();
  if (v4)
  {
    v5 = v4;
    sub_226D69F0C();
    v6 = v5;
    do
    {
      v25[0] = v6;
      swift_dynamicCast();
      v7 = [v26 accountId];
      v8 = sub_226D6E39C();
      v10 = v9;

      v25[0] = v8;
      v25[1] = v10;
      MEMORY[0x28223BE20](v11);
      v24[2] = v25;
      LOBYTE(v7) = sub_226CCB428(sub_226BAE190, v24, a2);

      v12 = v26;
      if (v7)
      {
      }

      else
      {
        v13 = *(v3 + 16);
        if (*(v3 + 24) <= v13)
        {
          sub_226C29738(v13 + 1);
        }

        v3 = v27;
        result = sub_226D6EC2C();
        v15 = v3 + 56;
        v16 = -1 << *(v3 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v3 + 56 + 8 * (v17 >> 6))) != 0)
        {
          v19 = __clz(__rbit64((-1 << v17) & ~*(v3 + 56 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = 0;
          v21 = (63 - v16) >> 6;
          do
          {
            if (++v18 == v21 && (v20 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v22 = v18 == v21;
            if (v18 == v21)
            {
              v18 = 0;
            }

            v20 |= v22;
            v23 = *(v15 + 8 * v18);
          }

          while (v23 == -1);
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
        }

        *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v3 + 48) + 8 * v19) = v12;
        ++*(v3 + 16);
      }

      v6 = sub_226D6EE2C();
    }

    while (v6);
  }

  return v3;
}

unint64_t sub_226BAE1D0()
{
  result = qword_27D7A74F0;
  if (!qword_27D7A74F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A74E8, &qword_226D75250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A74F0);
  }

  return result;
}

uint64_t sub_226BAE258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226BAE2C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226BAE320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedConsentDeleter.Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BAE384(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_226AD827C;

  return sub_226BA91AC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_226BAE490(uint64_t a1)
{
  sub_226BAE4E8();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_226BAE4E8()
{
  if (!qword_27D7A7518)
  {
    v0 = sub_226D6D52C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7A7518);
    }
  }
}

unint64_t sub_226BAE534()
{
  result = qword_27D7A7520;
  if (!qword_27D7A7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A7520);
  }

  return result;
}

void sub_226BAE5BC()
{
  v1 = sub_226D66DBC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, *MEMORY[0x277CC64F0], v1, v3);
  v6 = sub_226D66D6C();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = v0[14];
    v7 = v0[15];

    v9 = sub_226D6E36C();
    v10 = objc_allocWithZone(MEMORY[0x277CF94F8]);
    v11 = sub_226D6E36C();
    aBlock[4] = sub_226BB2780;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_226BB212C;
    aBlock[3] = &block_descriptor_19;
    v12 = _Block_copy(aBlock);
    v13 = [v10 initWithIdentifier:v11 handlerBlock:v12 queue:v7 useCase:v9];

    _Block_release(v12);

    v14 = v0[16];
    v0[16] = v13;
  }
}

uint64_t sub_226BAE7CC(void *a1, void *a2, uint64_t a3)
{
  v5 = os_transaction_create();
  if (a2)
  {
    v6 = a2;
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v7 = sub_226D6E07C();
    __swift_project_value_buffer(v7, qword_28105F6A8);
    v8 = a2;
    v9 = sub_226D6E05C();
    v10 = sub_226D6E9CC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_226AB4000, v9, v10, "ExtractedOrder set change error: %@", v11, 0xCu);
      sub_226AC47B0(v12, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v12, -1, -1);
      MEMORY[0x22AA8BEE0](v11, -1, -1);
    }

    else
    {
    }
  }

  else if (a1)
  {
    MEMORY[0x28223BE20](v5);
    v15 = a1;
    sub_226D66E6C();

    return swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_226BAEA08(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = sub_226D6DFCC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v10 = sub_226D6DFFC();
  __swift_project_value_buffer(v10, qword_281064510);
  sub_226D6DFBC();
  v11 = sub_226D6DFDC();
  v12 = sub_226D6EABC();
  if (sub_226D6EC8C())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_226D6DFAC();
    _os_signpost_emit_with_name_impl(&dword_226AB4000, v11, v12, v14, "ExtractedOrderProcessCascadeSetEvent", "", v13, 2u);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
  }

  (*(v4 + 16))(v6, v9, v3);
  sub_226D6E03C();
  swift_allocObject();
  v15 = sub_226D6E02C();
  (*(v4 + 8))(v9, v3);

  sub_226BAEF3C(v18, 1, a1);

  sub_226BAEC60("ExtractedOrderProcessCascadeSetEvent", 36, 2, v15);
}

uint64_t sub_226BAEC60(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = sub_226D6E00C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6DFCC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F728 != -1)
  {
    swift_once();
  }

  v13 = sub_226D6DFFC();
  __swift_project_value_buffer(v13, qword_281064510);
  v14 = sub_226D6DFDC();
  sub_226D6E01C();
  v19 = sub_226D6EAAC();
  result = sub_226D6EC8C();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_226D6E04C();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_226D6DFAC();
      _os_signpost_emit_with_name_impl(&dword_226AB4000, v14, v19, v18, a1, v16, v17, 2u);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_226BAEF3C(void *a1, char a2, uint64_t a3)
{
  oslog = sub_226BB2328();
  sub_226BAF3A8(a1, oslog, a2 & 1, a3);
}

uint64_t sub_226BAF10C()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_226BAF178()
{
  v0 = sub_226D6EA3C();
  MEMORY[0x28223BE20](v0);
  v1 = sub_226D6E1BC();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_226D6EA4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226B2A090();
  (*(v3 + 104))(v5, *MEMORY[0x277D85268], v2);
  sub_226D6E19C();
  v7[1] = MEMORY[0x277D84F90];
  sub_226BB27A4(&qword_28105F478, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6C00, &qword_226D73DF0);
  sub_226B2A124();
  sub_226D6ED5C();
  result = sub_226D6EA8C();
  qword_281064528 = result;
  return result;
}

void sub_226BAF3A8(void *a1, void *a2, char a3, uint64_t a4)
{
  v61 = *MEMORY[0x277D85DE8];
  if (qword_28105F6A0 != -1)
  {
    swift_once();
  }

  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_28105F6A8);
  v7 = sub_226D6E05C();
  v8 = sub_226D6E9EC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_226AB4000, v7, v8, "Start processing cascade set updates", v9, 2u);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  v52 = a2;
  v10 = [a2 bookmarkForSet_];
  v11 = sub_226D6E36C();
  v12 = [a1 changePublisherWithUseCase_];

  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v51 = (v13 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = 1;
  if (!v10)
  {
    v31 = sub_226D676AC();
    MEMORY[0x28223BE20](v31);
    sub_226D6EB8C();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v59 = sub_226BB25E8;
  v60 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v56 = 1107296256;
  v57 = sub_226BB0418;
  v58 = &block_descriptor_8;
  v16 = _Block_copy(&aBlock);

  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a1;
  v17[4] = v14;
  v59 = sub_226BB2608;
  v60 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v56 = 1107296256;
  v57 = sub_226BB11D0;
  v58 = &block_descriptor_16;
  v18 = _Block_copy(&aBlock);

  v19 = a1;

  v20 = [v12 drivableSinkWithBookmark:v10 completion:v16 shouldContinue:v18];
  _Block_release(v18);
  _Block_release(v16);

  swift_beginAccess();
  if (*(v14 + 16) == 1 && (swift_beginAccess(), (v21 = *v51) != 0))
  {
    swift_unknownObjectRetain();
    v22 = sub_226D6E05C();
    v23 = sub_226D6E9EC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_226AB4000, v22, v23, "Finished processing all the cascade set changes. Commiting bookmark.", v24, 2u);
      MEMORY[0x22AA8BEE0](v24, -1, -1);
    }

    v54[0] = 0;
    v25 = [v52 updateBookmark:v21 forSet:v19 error:v54];
    v26 = v54[0];
    if (v25)
    {
      v54[0] = 0;
      v27 = v26;
      v28 = [v52 commitAllBookmarkUpdates_];
      v26 = v54[0];
      if (v28)
      {
        v29 = v54[0];

        swift_unknownObjectRelease();
LABEL_18:
        swift_unknownObjectRelease();
        return;
      }
    }

    v41 = v26;
    v42 = sub_226D6D04C();

    swift_willThrow();
    v43 = v42;
    v44 = sub_226D6E05C();
    v45 = sub_226D6E9CC();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      v48 = v42;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v49;
      *v47 = v49;
      _os_log_impl(&dword_226AB4000, v44, v45, "Update bookmark and commit it with error: %@", v46, 0xCu);
      sub_226AC47B0(v47, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v47, -1, -1);
      MEMORY[0x22AA8BEE0](v46, -1, -1);
    }

    [v52 rollbackAllBookmarkUpdates];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v54[0] = 0;
    if ([v52 clearAllBookmarksAndCommit_])
    {
      v30 = v54[0];
      if (a3)
      {
        sub_226BAEF3C(v19, 0, a4);
      }

      goto LABEL_18;
    }

    v32 = v54[0];
    v33 = sub_226D6D04C();

    swift_willThrow();
    v34 = v33;
    v35 = sub_226D6E05C();
    v36 = sub_226D6E9CC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      v39 = v33;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v40;
      *v38 = v40;
      _os_log_impl(&dword_226AB4000, v35, v36, "Failed to clearAllBookmarksAndCommit with error: %@", v37, 0xCu);
      sub_226AC47B0(v38, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v38, -1, -1);
      MEMORY[0x22AA8BEE0](v37, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_226BAFC9C(uint64_t a1)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v2 = sub_226BB2328();
  v32[0] = 0;
  v3 = [v2 clearAllBookmarksAndCommit_];
  v4 = v32[0];
  if ((v3 & 1) == 0)
  {
    v17 = v32[0];
    v13 = sub_226D6D04C();

    swift_willThrow();
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v18 = sub_226D6E07C();
    __swift_project_value_buffer(v18, qword_28105F6A8);
    v19 = v13;
    v20 = sub_226D6E05C();
    v21 = sub_226D6E9CC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = v13;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      v26 = "Failed to clearAllBookmarksAndCommit with error: %@";
LABEL_18:
      _os_log_impl(&dword_226AB4000, v20, v21, v26, v22, 0xCu);
      sub_226AC47B0(v23, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v23, -1, -1);
      MEMORY[0x22AA8BEE0](v22, -1, -1);

      return;
    }

LABEL_19:

    return;
  }

  v5 = objc_opt_self();
  v6 = v4;
  v7 = sub_226D6E36C();
  v8 = [v5 setEnumeratorWithUseCase_];

  v32[0] = 0;
  v9 = [v8 allSets_];
  swift_unknownObjectRelease();
  v10 = v32[0];
  if (!v9)
  {
    v27 = v32[0];
    v13 = sub_226D6D04C();

    swift_willThrow();
    if (qword_28105F6A0 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7530, qword_226D75420);
  v11 = sub_226D6E5EC();
  v12 = v10;

  if (v11 >> 62)
  {
    v13 = sub_226D6EDFC();
    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_5:
      if (v13 >= 1)
      {
        for (i = 0; i != v13; ++i)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x22AA8AFD0](i, v11);
          }

          else
          {
            v15 = *(v11 + 8 * i + 32);
          }

          v16 = v15;
          sub_226BAF3A8(v15, v2, 1, a1);
        }

        goto LABEL_21;
      }

      __break(1u);
LABEL_23:
      swift_once();
LABEL_16:
      v28 = sub_226D6E07C();
      __swift_project_value_buffer(v28, qword_28105F6A8);
      v29 = v13;
      v20 = sub_226D6E05C();
      v21 = sub_226D6E9CC();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v30 = v13;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v31;
        *v23 = v31;
        v26 = "Failed to query cascade sets with error: %@";
        goto LABEL_18;
      }

      goto LABEL_19;
    }
  }

LABEL_21:
}

uint64_t sub_226BB0288(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(a3 + 16) == 1 && ![a1 state])
  {
    if (qword_28105F6A0 != -1)
    {
      swift_once();
    }

    v9 = sub_226D6E07C();
    __swift_project_value_buffer(v9, qword_28105F6A8);
    v10 = sub_226D6E05C();
    v11 = sub_226D6E9EC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_226AB4000, v10, v11, "Successfully processed all cascade set updates. Updating bookmark.", v12, 2u);
      MEMORY[0x22AA8BEE0](v12, -1, -1);
    }

    swift_beginAccess();
    *(a4 + 16) = a2;
    swift_unknownObjectRelease();
    return swift_unknownObjectRetain();
  }

  else
  {
    swift_beginAccess();
    *(a3 + 16) = 0;
    swift_beginAccess();
    *(a4 + 16) = 0;
    return swift_unknownObjectRelease();
  }
}

void sub_226BB0418(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

uint64_t sub_226BB04A0(unint64_t a1, uint64_t a2, void *a3)
{
  v6 = MEMORY[0x22AA8B6A0]();
  sub_226BB0660(a1, a3, a2);
  objc_autoreleasePoolPop(v6);
  return 1;
}

void sub_226BB0660(unint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v91 = a3;
  v86 = type metadata accessor for ManagedExtractedOrderImporter(0);
  MEMORY[0x28223BE20](v86);
  v87 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D66E1C();
  v84 = *(v8 - 8);
  v85 = v8;
  MEMORY[0x28223BE20](v8);
  v82 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v83 = v77 - v11;
  v12 = sub_226D696EC();
  v88 = *(v12 - 8);
  v89 = v12;
  MEMORY[0x28223BE20](v12);
  v90 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_226D6D52C();
  v14 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v81 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v77 - v18;
  v93 = [a1 sharedItem];
  v94 = v19;
  sub_226BB1228(a2, v93);
  LODWORD(v19) = [a1 sharedItemChangeType];
  if (qword_28105F6A0 != -1)
  {
LABEL_29:
    swift_once();
  }

  v20 = sub_226D6E07C();
  v80 = __swift_project_value_buffer(v20, qword_28105F6A8);
  v21 = sub_226D6E05C();
  v22 = sub_226D6E9EC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_226AB4000, v21, v22, "Begin processing cascade set change", v23, 2u);
    MEMORY[0x22AA8BEE0](v23, -1, -1);
  }

  if (v19 == 2)
  {
    v24 = sub_226D676AC();
    MEMORY[0x28223BE20](v24);
    v25 = v94;
    v75 = v26;
    v76 = v94;
    sub_226D6EB7C();

    (*(v14 + 1))(v25, v92);
    return;
  }

  if (v19 == 1)
  {
    (*(v14 + 1))(v94, v92);

    return;
  }

  if (v19)
  {
    goto LABEL_41;
  }

  v77[1] = v4;
  v27 = [a1 allLocalInstances];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7658, qword_226D75440);
  a1 = sub_226D6E5EC();

  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v79 = v14;
    if (v19)
    {
      goto LABEL_11;
    }

LABEL_31:
    v29 = MEMORY[0x277D84F90];
    goto LABEL_32;
  }

  v19 = sub_226D6EDFC();
  v79 = v14;
  if (!v19)
  {
    goto LABEL_31;
  }

LABEL_11:
  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  do
  {
    v78 = v29;
    v14 = v28;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x22AA8AFD0](v14, a1);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v30 = *(a1 + 8 * v14 + 32);
      }

      v31 = v30;
      v28 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v32 = [v30 metaContent];
      if (v32)
      {
        break;
      }

      ++v14;
      if (v28 == v19)
      {
        v29 = v78;
        goto LABEL_32;
      }
    }

    v33 = v32;
    v34 = [v32 sourceItemIdentifier];

    v35 = sub_226D6E39C();
    v77[0] = v36;

    v37 = v78;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_226BBAB0C(0, *(v37 + 2) + 1, 1, v37);
    }

    v39 = *(v37 + 2);
    v38 = *(v37 + 3);
    v40 = v37;
    if (v39 >= v38 >> 1)
    {
      v40 = sub_226BBAB0C((v38 > 1), v39 + 1, 1, v37);
    }

    *(v40 + 2) = v39 + 1;
    v41 = &v40[16 * v39];
    v29 = v40;
    v42 = v77[0];
    *(v41 + 4) = v35;
    *(v41 + 5) = v42;
  }

  while (v28 != v19);
LABEL_32:

  if (*(v29 + 2))
  {
    v44 = *(v29 + 4);
    v43 = *(v29 + 5);

    v45 = [v93 content];
    v46 = v79;
    v47 = v94;
    if (v45)
    {
      v48 = v45;
      objc_opt_self();
      v49 = swift_dynamicCastObjCClassUnconditional();
      v50 = *(v46 + 2);
      v51 = v81;
      v50(v81, v47, v92);

      v80 = v48;
      sub_226C9C0AC(v49, v44, v43, v51, v90);
      v81 = v43;
      v78 = v44;
      if (qword_281060AF8 != -1)
      {
        swift_once();
      }

      v52 = qword_281064530;
      v103 = &type metadata for TrackedOrderBiomeStream;
      v104 = &off_283A6EDD8;
      v53 = sub_226D6B5EC();
      v54 = MEMORY[0x277CC7F68];
      v101[3] = v53;
      v101[4] = MEMORY[0x277CC7F68];
      __swift_allocate_boxed_opaque_existential_1(v101);
      sub_226D6B58C();
      v100[3] = v53;
      v100[4] = v54;
      __swift_allocate_boxed_opaque_existential_1(v100);
      sub_226D6B5AC();
      v55 = v83;
      sub_226D66E0C();
      v56 = type metadata accessor for ExtractedOrderConfigurationProvider(0);
      v57 = swift_allocObject();
      v59 = v84;
      v58 = v85;
      v60 = v82;
      (*(v84 + 16))(v82, v55, v85);
      v61 = sub_226B686A0(v60, v57);
      (*(v59 + 8))(v55, v58);
      v99[3] = v56;
      v99[4] = &off_283A6D838;
      v99[0] = v61;
      v62 = [objc_allocWithZone(MEMORY[0x277D06D78]) init];
      v98[3] = &type metadata for FoundInMailItemDocumentFinderDefaultIndex;
      v98[4] = &off_283A72E98;
      v98[0] = v62;
      v91 = sub_226D676AC();
      sub_226BB2630(v102, v97);
      v63 = v87;
      sub_226AE532C(v101, (v87 + 48));
      sub_226AE532C(v100, v63 + 88);
      sub_226AE532C(v99, v96);
      type metadata accessor for OrdersAutoBugCaptureReporter();
      v64 = swift_allocObject();
      *(v64 + 16) = [objc_allocWithZone(MEMORY[0x277CC85F0]) init];
      sub_226AE532C(v98, v63 + 176);
      *(v63 + 24) = 0u;
      *(v63 + 40) = 0;
      *(v63 + 8) = 0u;
      *v63 = v52;

      sub_226BB268C(v97, v63 + 8);
      sub_226AE532C(v96, v63 + 128);
      v105 = 0;
      sub_226AE532C(v63 + 48, v95);
      sub_226D6704C();
      sub_226D6701C();
      v105 = 0;
      sub_226AE532C(v63 + 48, v95);
      v65 = v91;
      sub_226D6701C();
      __swift_destroy_boxed_opaque_existential_0Tm(v96);
      v66 = sub_226AC47B0(v97, &unk_27D7A7660, &unk_226D7B420);
      *(v63 + 168) = v64;
      MEMORY[0x28223BE20](v66);
      v67 = v78;
      v77[-6] = v65;
      v77[-5] = v67;
      v77[-4] = v81;
      v77[-3] = v63;
      v68 = v90;
      v75 = v90;
      sub_226D6EB7C();

      sub_226BB2720(v63, type metadata accessor for ManagedExtractedOrderImporter);
      sub_226B4FC54(v102);
      (*(v88 + 8))(v68, v89);
      (*(v79 + 1))(v94, v92);
      __swift_destroy_boxed_opaque_existential_0Tm(v98);
      __swift_destroy_boxed_opaque_existential_0Tm(v99);
      __swift_destroy_boxed_opaque_existential_0Tm(v100);
      __swift_destroy_boxed_opaque_existential_0Tm(v101);
      return;
    }

    __break(1u);
LABEL_41:
    sub_226D6F0AC();
    __break(1u);
    return;
  }

  v69 = sub_226D6E05C();
  v70 = sub_226D6E9CC();
  v71 = os_log_type_enabled(v69, v70);
  v72 = v79;
  v73 = v94;
  if (v71)
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_226AB4000, v69, v70, "Failed to find sourceItemIdentifier for added cascade set item.", v74, 2u);
    MEMORY[0x22AA8BEE0](v74, -1, -1);
  }

  (*(v72 + 1))(v73, v92);
}

uint64_t sub_226BB11D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_226BB1228(void *a1, uint64_t a2)
{
  v2 = [a1 prefixedSharedIdentifier_];
  v3 = sub_226D6D21C();
  v5 = v4;

  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D1EC();
  sub_226D6D50C();

  return sub_226B11B98(v3, v5);
}

uint64_t sub_226BB142C(void *a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(char *, uint64_t))
{
  v58 = a2;
  v60[1] = *MEMORY[0x277D85DE8];
  v9 = sub_226D66DBC();
  v57 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v56 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult(0);
  MEMORY[0x28223BE20](updated - 8);
  v13 = (&v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = [objc_opt_self() currentQueryGenerationToken];
  v60[0] = 0;
  v15 = [a1 setQueryGenerationFromToken:v14 error:v60];

  v16 = &unk_28105F000;
  if (v15)
  {
    v54 = v9;
    v17 = qword_28105F6A0;
    v18 = v60[0];
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = sub_226D6E07C();
    __swift_project_value_buffer(v19, qword_28105F6A8);

    v20 = sub_226D6E05C();
    v21 = sub_226D6E9EC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v55 = a5;
      v23 = v22;
      v24 = a1;
      v25 = v13;
      v26 = a4;
      v27 = swift_slowAlloc();
      v60[0] = v27;
      *v23 = 136315138;
      *(v23 + 4) = sub_226AC4530(v58, a3, v60);
      _os_log_impl(&dword_226AB4000, v20, v21, "Begin processing the extracted order with ID: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      v28 = v27;
      a4 = v26;
      v13 = v25;
      a1 = v24;
      v16 = &unk_28105F000;
      MEMORY[0x22AA8BEE0](v28, -1, -1);
      v29 = v23;
      a5 = v55;
      MEMORY[0x22AA8BEE0](v29, -1, -1);
    }

    v30 = v59;
    sub_226AF5B30(a5, a1, v13);
    v31 = a5;
    v32 = v30;
    if (!v30)
    {
      v55 = v31;

      v33 = sub_226D6E05C();
      v34 = sub_226D6E9EC();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v59 = a4;
        v36 = v35;
        v37 = swift_slowAlloc();
        v60[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_226AC4530(v58, a3, v60);
        _os_log_impl(&dword_226AB4000, v33, v34, "Successfully processed the extracted order with ID: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        MEMORY[0x22AA8BEE0](v37, -1, -1);
        MEMORY[0x22AA8BEE0](v36, -1, -1);
      }

      v38 = v54;
      v40 = v56;
      v39 = v57;
      (*(v57 + 104))(v56, *MEMORY[0x277CC64F8], v54);
      v41 = sub_226D66D6C();
      (*(v39 + 8))(v40, v38);
      if (v41)
      {
        sub_226D6C6DC();
        swift_allocObject();
        sub_226D6C6CC();
        sub_226D46A40(v55, a1);
      }

      v60[0] = 0;
      if ([a1 save_])
      {
        v52 = v60[0];
        sub_226AFB524(v13);
        return sub_226BB2720(v13, type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult);
      }

      v53 = v60[0];
      v32 = sub_226D6D04C();

      swift_willThrow();
      sub_226BB2720(v13, type metadata accessor for ManagedExtractedOrderImporter.InsertOrUpdateResult);
    }
  }

  else
  {
    v42 = v60[0];
    v32 = sub_226D6D04C();

    swift_willThrow();
  }

  if (v16[212] != -1)
  {
    swift_once();
  }

  v43 = sub_226D6E07C();
  __swift_project_value_buffer(v43, qword_28105F6A8);
  v44 = v32;
  v45 = sub_226D6E05C();
  v46 = sub_226D6E9CC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138412290;
    v49 = v32;
    v50 = _swift_stdlib_bridgeErrorToNSError();
    *(v47 + 4) = v50;
    *v48 = v50;
    _os_log_impl(&dword_226AB4000, v45, v46, "Failed to process extracted order: %@", v47, 0xCu);
    sub_226AC47B0(v48, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v48, -1, -1);
    MEMORY[0x22AA8BEE0](v47, -1, -1);
  }

  return swift_willThrow();
}

id sub_226BB1A88(void *a1, uint64_t a2)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for ManagedCascadeExtractedOrderDeleter.Result(0);
  MEMORY[0x28223BE20](v4);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6D52C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() currentQueryGenerationToken];
  v51[0] = 0;
  v11 = [a1 setQueryGenerationFromToken:v10 error:v51];

  if (v11)
  {
    v47 = v4;
    v12 = qword_28105F6A0;
    v13 = v51[0];
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_226D6E07C();
    __swift_project_value_buffer(v14, qword_28105F6A8);
    v15 = *(v7 + 16);
    v48 = a2;
    v45 = v15;
    v46 = v7 + 16;
    v15(v9, a2, v6);
    v16 = sub_226D6E05C();
    v17 = sub_226D6E9EC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v44 = a1;
      v20 = v19;
      v51[0] = v19;
      *v18 = 136315138;
      sub_226BB27A4(&qword_27D7A6648, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v21 = sub_226D6F1CC();
      v23 = v22;
      (*(v7 + 8))(v9, v6);
      v24 = sub_226AC4530(v21, v23, v51);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_226AB4000, v16, v17, "Deleting cascade order with ID: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      v25 = v20;
      a1 = v44;
      MEMORY[0x22AA8BEE0](v25, -1, -1);
      MEMORY[0x22AA8BEE0](v18, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    sub_226D6B1CC();
    v28 = v48;
    v29 = v50;
    v30 = sub_226D6B19C();
    v27 = v29;
    if (v29)
    {
      goto LABEL_10;
    }

    if (v30)
    {
      v40 = v30;
      [a1 deleteObject_];
    }

    v41 = v49;
    v45(v49, v28, v6);
    swift_storeEnumTagMultiPayload();
    sub_226BB2720(v41, type metadata accessor for ManagedCascadeExtractedOrderDeleter.Result);
    v51[0] = 0;
    if ([a1 save_])
    {
      return v51[0];
    }

    v42 = v51[0];
    v27 = sub_226D6D04C();
  }

  else
  {
    v26 = v51[0];
    v27 = sub_226D6D04C();
  }

  swift_willThrow();
LABEL_10:
  if (qword_28105F6A0 != -1)
  {
    swift_once();
  }

  v31 = sub_226D6E07C();
  __swift_project_value_buffer(v31, qword_28105F6A8);
  v32 = v27;
  v33 = sub_226D6E05C();
  v34 = sub_226D6E9CC();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    v37 = v27;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v38;
    *v36 = v38;
    _os_log_impl(&dword_226AB4000, v33, v34, "Failed to delete cascade extracted order: %@", v35, 0xCu);
    sub_226AC47B0(v36, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v36, -1, -1);
    MEMORY[0x22AA8BEE0](v35, -1, -1);
  }

  return swift_willThrow();
}

void sub_226BB2010(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  sub_226D6B1CC();
  v2 = [swift_getObjCClassFromMetadata() fetchRequest];
  v3 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v8[0] = 0;
  v4 = [a1 executeRequest:v3 error:v8];
  if (v4)
  {
    v5 = v4;
    v6 = v8[0];
  }

  else
  {
    v7 = v8[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

void sub_226BB212C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_226BB21B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = sub_226D6E36C();

  v9 = sub_226D6D0DC();
  v18[0] = 0;
  v10 = [v5 initWithFilename:v8 directory:v9 protectionClass:a4 error:v18];

  v11 = v18[0];
  if (v10)
  {
    v12 = sub_226D6D1AC();
    v13 = *(*(v12 - 8) + 8);
    v14 = v11;
    v13(a3, v12);
  }

  else
  {
    v15 = v18[0];
    sub_226D6D04C();

    swift_willThrow();
    v16 = sub_226D6D1AC();
    (*(*(v16 - 8) + 8))(a3, v16);
  }

  return v10;
}

id sub_226BB2328()
{
  v0 = sub_226D6D1AC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v26 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  MEMORY[0x28223BE20](v12);
  v25 = &v25 - v13;
  result = CPSharedResourcesDirectory();
  if (result)
  {
    v15 = result;
    v16 = sub_226D6E39C();
    v18 = v17;

    v27 = v16;
    v28 = v18;
    MEMORY[0x22AA8A510](0x7972617262694C2FLL, 0xE800000000000000);
    sub_226D6D0BC();

    v19 = *(v1 + 32);
    v19(v8, v5, v0);
    sub_226D6D0FC();
    v20 = *(v1 + 8);
    v20(v8, v0);
    v21 = v25;
    v19(v25, v11, v0);
    v22 = v26;
    (*(v1 + 16))(v26, v21, v0);
    v23 = objc_allocWithZone(MEMORY[0x277CF94F0]);
    v24 = sub_226BB21B8(0xD000000000000010, 0x8000000226D81A70, v22, 3);
    v20(v21, v0);
    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226BB268C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A7660, &unk_226D7B420);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BB2720(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226BB27A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_226BB280C()
{
  sub_226D6751C();
  v1 = [swift_getObjCClassFromMetadata() entityName];
  if (!v1)
  {
    sub_226D6E39C();
    v1 = sub_226D6E36C();
  }

  v2 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  v3 = sub_226D6742C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D71F40;
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D84958];
  *(v5 + 16) = xmmword_226D70840;
  v7 = MEMORY[0x277D849A0];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v3;
  *(v4 + 32) = sub_226D6E91C();
  *(v4 + 40) = sub_226D6E91C();
  v8 = sub_226D6E5CC();

  v9 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v2 setPredicate_];
  [v2 setResultType_];
  sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
  v10 = sub_226D6EBBC();
  if (v0)
  {

    return;
  }

  v11 = v10;
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_16:

LABEL_17:

    return;
  }

  v12 = sub_226D6EDFC();
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_7:
  v16 = v2;
  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x22AA8AFD0](i, v11);
      }

      else
      {
        v14 = *(v11 + 8 * i + 32);
      }

      v15 = v14;
      MEMORY[0x28223BE20](v14);
      sub_226D6EB7C();
    }

    goto LABEL_17;
  }

  __break(1u);
}

void sub_226BB2CE4(uint64_t a1, uint64_t a2)
{
  sub_226D6751C();
  v4 = sub_226D674AC();
  if (!v2)
  {
    v5 = v4;
    sub_226BB2E58(v4, a2);
  }
}

void sub_226BB2D50(uint64_t a1)
{
  v1 = sub_226D676AC();
  v2 = sub_226D6E36C();
  [v1 setTransactionAuthor_];

  sub_226D6EB8C();
}

uint64_t sub_226BB2E58(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v77 = *MEMORY[0x277D85DE8];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  MEMORY[0x28223BE20](v51);
  v52 = (&v51 - v2);
  v3 = type metadata accessor for OrderNotificationCenter.Continuation(0);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6D1AC();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult(0);
  MEMORY[0x28223BE20](updated);
  v54 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D68F4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6749C();
  v13 = sub_226D68F3C();
  (*(v10 + 8))(v12, v9);
  v14 = [v13 data];

  v61 = sub_226D6D21C();
  v62 = v15;

  v16 = sub_226B31FA8();
  v17 = type metadata accessor for WalletMessageUpdater();
  v18 = swift_allocObject();
  v19 = sub_226D69BFC();
  v57 = MEMORY[0x22AA85C90]();
  *(&v74 + 1) = &type metadata for ClassicOrderBiomeStream;
  *&v75[0] = &off_283A6D820;
  sub_226C02324(v75 + 8);
  v20 = sub_226D6B5EC();
  v21 = MEMORY[0x277CC7F68];
  v71 = v20;
  v72 = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(&v70);
  sub_226D6B58C();
  v68 = v20;
  v69 = v21;
  v22 = v7;
  __swift_allocate_boxed_opaque_existential_1(&v67);
  sub_226D6B5AC();
  v23 = sub_226D6827C();
  v65 = v17;
  v66 = sub_226B1B7F0();
  *&v64 = v18;
  type metadata accessor for ManagedOrderImporter();
  inited = swift_initStackObject();
  *(inited + 312) = 0xD000000000000018;
  *(inited + 320) = 0x8000000226D81BA0;
  sub_226AC484C(&v70, inited + 232);
  sub_226AC484C(&v67, inited + 272);
  v25 = MEMORY[0x277CC7238];
  *(inited + 16) = v23;
  *(inited + 24) = v25;
  *(inited + 72) = v75[4];
  *(inited + 88) = v76;
  *(inited + 96) = &type metadata for WidgetRefresher;
  *(inited + 104) = v16;
  sub_226AC484C(&v64, inited + 112);
  v26 = v75[2];
  *(inited + 40) = v75[3];
  v27 = v73;
  *(inited + 168) = v74;
  v28 = v75[1];
  *(inited + 184) = v75[0];
  *(inited + 200) = v28;
  *(inited + 32) = v57;
  *(inited + 216) = v26;
  v29 = MEMORY[0x277CC79A8];
  *(inited + 56) = v19;
  *(inited + 64) = v29;
  *(inited + 152) = v27;
  sub_226D6727C();
  v30 = [objc_opt_self() defaultManager];
  v31 = [v30 temporaryDirectory];

  v32 = v61;
  sub_226D6D14C();

  v33 = v62;
  v63[3] = sub_226D6920C();
  v63[4] = MEMORY[0x277CC77F0];
  __swift_allocate_boxed_opaque_existential_1(v63);
  sub_226D691FC();
  v34 = v60;
  v35 = sub_226D6724C();
  if (v34)
  {
    (*(v58 + 8))(v22, v59);

    sub_226B11B98(v32, v33);
    return __swift_destroy_boxed_opaque_existential_0Tm(v63);
  }

  else
  {
    v37 = v35;
    (*(v58 + 8))(v22, v59);
    v38 = __swift_destroy_boxed_opaque_existential_0Tm(v63);
    v60 = &v51;
    MEMORY[0x28223BE20](v38);
    *(&v51 - 6) = inited;
    *(&v51 - 5) = v37;
    *(&v51 - 4) = v32;
    *(&v51 - 3) = v33;
    *(&v51 - 4) = 65793;
    v39 = v32;
    v40 = v56;
    *(&v51 - 1) = v56;
    v41 = v54;
    sub_226D6721C();
    v42 = v41;

    v63[0] = 0;
    if ([v40 save_])
    {
      v43 = qword_281061980;
      v44 = v63[0];
      if (v43 != -1)
      {
        swift_once();
      }

      v45 = v51;
      v46 = __swift_project_value_buffer(v51, qword_281064538);
      v47 = v52;
      sub_226AE532C(v46, v52);
      sub_226BB3658(v46 + *(v45 + 48), v47 + *(v45 + 48));
      v48 = v47 + *(v45 + 48);
      v49 = v53;
      sub_226BB36BC(v48, v53);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      sub_226BE7E54(v42, v49);
      sub_226BB3720(v49, type metadata accessor for OrderNotificationCenter.Continuation);
      [v40 refreshAllObjects];
      sub_226B11B98(v61, v62);
      swift_setDeallocating();
      sub_226AC47B0(inited + 32, &qword_27D7A7790, &unk_226D79770);
      sub_226AC47B0(inited + 72, &qword_27D7A6910, &unk_226D721C0);
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 112));
      sub_226AC47B0(inited + 152, &qword_27D7A6FA0, &qword_226D79780);
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 232));
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 272));
    }

    else
    {
      v50 = v63[0];
      sub_226D6D04C();

      swift_willThrow();
      sub_226B11B98(v39, v62);
    }

    return sub_226BB3720(v42, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
  }
}

void sub_226BB35F4(uint64_t *a1@<X8>)
{
  if (*(v1 + 51))
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 50))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v1 + 49))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  sub_226BBEF20(*(v1 + 24), *(v1 + 32), *(v1 + 40), v4 | *(v1 + 48) | v3 | v2, *(v1 + 56), a1);
}

uint64_t sub_226BB3658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderNotificationCenter.Continuation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BB36BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderNotificationCenter.Continuation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226BB3720(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226BB3780(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7798, &unk_226D75570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v36 - v3;
  v5 = sub_226D6A58C();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D68F4C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult(0);
  MEMORY[0x28223BE20](updated);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = (&v36 - v16);
  sub_226BB8488(a1, &v36 - v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = *v17;
  if (EnumCaseMultiPayload <= 1)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
    sub_226AC47B0(v17 + *(v20 + 48), &qword_27D7A7798, &unk_226D75570);
  }

  sub_226D6749C();
  if ((*(v9 + 88))(v11, v8) == *MEMORY[0x277CC76A8])
  {
    (*(v9 + 96))(v11, v8);
    v21 = *v11;
    v22 = v19;
    v23 = v21;
    sub_226D6A51C();
    sub_226BB8488(a1, v14);
    v24 = swift_getEnumCaseMultiPayload();
    if (v24)
    {
      if (v24 == 1)
      {

        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
        sub_226AFD80C(v14 + *(v25 + 48), v4, &qword_27D7A7798, &unk_226D75570);
        v26 = sub_226BB859C(v7, v4, *(v37 + 16), *(v37 + 24));

        sub_226AC47B0(v4, &qword_27D7A7798, &unk_226D75570);
        (*(v38 + 8))(v7, v39);
        return v26;
      }

      else
      {
        sub_226BB84EC(v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A61C0, &qword_226D775E0);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_226D70840;
        v32 = sub_226D6A4FC();
        v34 = v33;
        *(v31 + 56) = &type metadata for OrderImportAnalyticsEventsBuilder.OrderOutdatedEvent;
        *(v31 + 64) = sub_226BB8548();
        v35 = swift_allocObject();
        *(v31 + 32) = v35;
        v35[2] = 0xD000000000000021;
        v35[3] = 0x8000000226D81C00;
        v35[4] = v32;
        v35[5] = v34;

        (*(v38 + 8))(v7, v39);
        return v31;
      }
    }

    else
    {

      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580) + 48);
      v29 = sub_226D675EC();
      (*(*(v29 - 8) + 56))(v4, 1, 1, v29);
      v30 = sub_226BB859C(v7, v4, *(v37 + 16), *(v37 + 24));

      sub_226AC47B0(v4, &qword_27D7A7798, &unk_226D75570);
      (*(v38 + 8))(v7, v39);
      sub_226AC47B0(v14 + v28, &qword_27D7A7798, &unk_226D75570);
      return v30;
    }
  }

  else
  {

    (*(v9 + 8))(v11, v8);
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_226BB3CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v12 = type metadata accessor for OrderImportAnalyticsEventsBuilder.OrderImportedSuccessEvent(0);
  a6[3] = v12;
  a6[4] = sub_226BB8800();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  v14 = v12[5];
  v15 = sub_226D6A58C();
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1 + v14, a2, v15);
  v16 = v12[6];
  v17 = sub_226D6904C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(boxed_opaque_existential_1 + v16, a1, v17);
  (*(v18 + 56))(boxed_opaque_existential_1 + v16, 0, 1, v17);
  result = sub_226AC40E8(a3, boxed_opaque_existential_1 + v12[7], &qword_27D7A7798, &unk_226D75570);
  *boxed_opaque_existential_1 = 0xD000000000000029;
  boxed_opaque_existential_1[1] = 0x8000000226D81C30;
  v20 = boxed_opaque_existential_1 + v12[8];
  *v20 = a4;
  v20[8] = a5;
  return result;
}

unint64_t sub_226BB3E2C()
{
  v1 = v0;
  v471 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77E0, &qword_226D75668);
  v470 = *(v471 - 8);
  MEMORY[0x28223BE20](v471);
  v469 = v430 - v2;
  v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77E8, &qword_226D75670);
  v466 = *(v467 - 8);
  MEMORY[0x28223BE20](v467);
  v465 = v430 - v3;
  v497 = sub_226D675EC();
  v496 = *(v497 - 8);
  MEMORY[0x28223BE20](v497);
  v468 = v430 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77F0, &qword_226D75678);
  MEMORY[0x28223BE20](v5 - 8);
  v464 = v430 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77F8, &unk_226D75680);
  MEMORY[0x28223BE20](v7 - 8);
  v491 = v430 - v8;
  v521 = sub_226D6900C();
  v512 = *(v521 - 8);
  MEMORY[0x28223BE20](v521);
  v520 = v430 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v487 = sub_226D677AC();
  v486 = *(v487 - 8);
  MEMORY[0x28223BE20](v487);
  v463 = v430 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7800, &unk_226D776D0);
  MEMORY[0x28223BE20](v11 - 8);
  v509 = (v430 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7808, &qword_226D75690);
  MEMORY[0x28223BE20](v13 - 8);
  v492 = v430 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v490 = v430 - v16;
  MEMORY[0x28223BE20](v17);
  v483 = v430 - v18;
  MEMORY[0x28223BE20](v19);
  v480 = v430 - v20;
  MEMORY[0x28223BE20](v21);
  v478 = v430 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7798, &unk_226D75570);
  MEMORY[0x28223BE20](v23 - 8);
  v493 = v430 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v461 = v430 - v26;
  v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7810, &qword_226D75698);
  v451 = *(v452 - 8);
  MEMORY[0x28223BE20](v452);
  v462 = (v430 - v27);
  v522 = sub_226D6801C();
  v473 = *(v522 - 1);
  MEMORY[0x28223BE20](v522);
  v516 = v430 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v515 = v430 - v30;
  MEMORY[0x28223BE20](v31);
  v514 = v430 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7818, &unk_226D756A0);
  MEMORY[0x28223BE20](v33 - 8);
  v449 = v430 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7820, &unk_226D776B0);
  MEMORY[0x28223BE20](v35 - 8);
  v446 = v430 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7828, &unk_226D756B0);
  MEMORY[0x28223BE20](v37 - 8);
  v489 = v430 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v445 = v430 - v40;
  v443 = sub_226D6927C();
  v442 = *(v443 - 8);
  MEMORY[0x28223BE20](v443);
  v441 = v430 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v455 = sub_226D6A82C();
  v454 = *(v455 - 1);
  MEMORY[0x28223BE20](v455);
  v475 = v430 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7830, &unk_226D776C0);
  MEMORY[0x28223BE20](v43 - 8);
  v447 = v430 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7838, &qword_226D756C0);
  MEMORY[0x28223BE20](v45 - 8);
  v448 = v430 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A62F8, &unk_226D73B70);
  MEMORY[0x28223BE20](v47 - 8);
  v488 = v430 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v484 = v430 - v50;
  MEMORY[0x28223BE20](v51);
  v519 = v430 - v52;
  MEMORY[0x28223BE20](v53);
  v518 = v430 - v54;
  MEMORY[0x28223BE20](v55);
  v450 = v430 - v56;
  MEMORY[0x28223BE20](v57);
  v444 = v430 - v58;
  v439 = sub_226D69FEC();
  v438 = *(v439 - 8);
  MEMORY[0x28223BE20](v439);
  v437 = v430 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v457 = sub_226D6B0EC();
  v456 = *(v457 - 8);
  MEMORY[0x28223BE20](v457);
  v472 = v430 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77B8, &qword_226D75588);
  MEMORY[0x28223BE20](v61 - 8);
  v436 = v430 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v474 = v430 - v64;
  v499 = sub_226D6904C();
  v498 = *(v499 - 8);
  MEMORY[0x28223BE20](v499);
  v432 = v430 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v453 = v430 - v67;
  MEMORY[0x28223BE20](v68);
  v503 = v430 - v69;
  v502 = sub_226D6D4AC();
  v494 = *(v502 - 8);
  MEMORY[0x28223BE20](v502);
  v510 = v430 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v71 - 8);
  v440 = v430 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v500 = v430 - v74;
  v523 = sub_226D6D1AC();
  v513 = *(v523 - 8);
  MEMORY[0x28223BE20](v523);
  v517 = v430 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v501 = v430 - v77;
  v78 = sub_226D6731C();
  v79 = *(v78 - 8);
  v507 = v78;
  v508 = v79;
  MEMORY[0x28223BE20](v78);
  v485 = v430 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81);
  v482 = v430 - v82;
  MEMORY[0x28223BE20](v83);
  v481 = v430 - v84;
  MEMORY[0x28223BE20](v85);
  v479 = v430 - v86;
  MEMORY[0x28223BE20](v87);
  v477 = v430 - v88;
  MEMORY[0x28223BE20](v89);
  v91 = v430 - v90;
  v92 = sub_226D6797C();
  v93 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v95 = v430 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_226B224E8(MEMORY[0x277D84F90]);
  v505 = type metadata accessor for OrderImportAnalyticsEventsBuilder.OrderImportedSuccessEvent(0);
  v97 = *(v505 + 20);
  sub_226D6A4BC();

  v98 = sub_226D6E6BC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v524 = v96;
  sub_226BE6628(v98, 0xD000000000000014, 0x8000000226D81C80, isUniquelyReferenced_nonNull_native);
  v100 = v524;
  sub_226D6A52C();
  sub_226D6796C();
  (*(v93 + 8))(v95, v92);
  v101 = sub_226D6E36C();

  v102 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v100;
  sub_226BE6628(v101, 0x617453726564726FLL, 0xEB00000000737574, v102);
  v103 = v524;
  sub_226D6A4FC();
  v104 = sub_226D6E36C();

  v105 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v103;
  v495 = 0xD000000000000013;
  sub_226BE6628(v104, 0xD000000000000013, 0x8000000226D81C60, v105);
  v106 = v524;
  v511 = v97;
  sub_226D6A55C();
  v107 = v501;
  sub_226D672FC();
  v108 = *(v508 + 8);
  v508 += 8;
  v504 = v108;
  v108(v91, v507);
  sub_226D6D15C();
  v110 = v109;
  v111 = *(v513 + 8);
  v434 = v513 + 8;
  v433 = v111;
  v111(v107, v523);
  if (v110)
  {
    v112 = sub_226D6E36C();

    v113 = swift_isUniquelyReferenced_nonNull_native();
    v524 = v106;
    sub_226BE6628(v112, 0x746E61686372656DLL, 0xEE006E69616D6F44, v113);
    v106 = v524;
  }

  v114 = v500;
  sub_226D6A56C();
  v115 = v494;
  v116 = *(v494 + 56);
  v117 = v502;
  v460 = v494 + 56;
  v459 = v116;
  v116(v114, 0, 1, v502);
  v118 = v510;
  sub_226D6D46C();
  v119 = sub_226BB8800();
  v120 = v505;
  v476 = v119;
  v121 = sub_226D6770C();
  v123 = *(v115 + 8);
  v122 = v115 + 8;
  v458 = v123;
  v123(v118, v117);
  sub_226AC47B0(v114, &qword_27D7A8BE0, &unk_226D718F0);
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v106;
  v125 = v120;
  v501 = 0xD000000000000010;
  sub_226BE6628(v121, 0xD000000000000010, 0x8000000226D81CA0, v124);
  v126 = v524;
  v127 = v474;
  v128 = sub_226D6F2CC();
  v129 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v126;
  sub_226BE6628(v128, 0x4374706D65747461, 0xEC000000746E756FLL, v129);
  v130 = v524;
  sub_226AC40E8(v1 + *(v125 + 24), v127, &qword_27D7A77B8, &qword_226D75588);
  v131 = v498;
  v132 = (v498 + 48);
  v133 = *(v498 + 48);
  v134 = v499;
  v135 = v133(v127, 1, v499);
  v506 = v1;
  if (v135 == 1)
  {
    sub_226AC47B0(v127, &qword_27D7A77B8, &qword_226D75588);
    sub_226AE59B4(0, &qword_27D7A6498, 0x277CCACA8);
    v136 = sub_226D6EC5C();
    v137 = swift_isUniquelyReferenced_nonNull_native();
    v524 = v130;
    sub_226BE6628(v136, 0x6D6C6C69666C7566, 0xEF65707954746E65, v137);
    v138 = v524;
    v139 = v509;
    v140 = v480;
    v141 = v478;
    goto LABEL_76;
  }

  v474 = v132;
  v142 = *(v131 + 32);
  v430[1] = v131 + 32;
  v430[0] = v142;
  v142(v503, v127, v134);
  v143 = v453;
  (*(v131 + 16))();
  v144 = (*(v131 + 88))(v143, v134);
  v145 = v144 == *MEMORY[0x277CC7728];
  v431 = v133;
  v435 = v122;
  if (v145)
  {
    (*(v131 + 96))(v143, v134);
    (*(v456 + 32))(v472, v143, v457);
    v146 = v437;
    sub_226D6B0AC();
    sub_226D69FDC();
    (*(v438 + 8))(v146, v439);
    v147 = sub_226D6E36C();

    v148 = swift_isUniquelyReferenced_nonNull_native();
    v524 = v130;
    v454 = 0xD000000000000011;
    sub_226BE6628(v147, 0xD000000000000011, 0x8000000226D81F00, v148);
    v149 = v524;
    sub_226AE59B4(0, &qword_27D7A6498, 0x277CCACA8);
    v150 = sub_226D6EC5C();
    v151 = swift_isUniquelyReferenced_nonNull_native();
    v524 = v149;
    sub_226BE6628(v150, 0x6D6C6C69666C7566, 0xEF65707954746E65, v151);
    v152 = v524;
    sub_226D6B06C();
    if (v153)
    {
      v154 = sub_226D6E6BC();
    }

    else
    {
      sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
      v154 = sub_226D6EC0C();
    }

    v179 = swift_isUniquelyReferenced_nonNull_native();
    v524 = v152;
    sub_226BE6628(v154, 0xD000000000000017, 0x8000000226D82060, v179);
    v180 = v524;
    v181 = v444;
    sub_226D6B05C();
    v182 = *(v513 + 48);
    v475 = (v513 + 48);
    v455 = v182;
    v182(v181, 1, v523);
    v183 = sub_226D6E6BC();
    sub_226AC47B0(v181, &unk_27D7A62F8, &unk_226D73B70);
    v184 = swift_isUniquelyReferenced_nonNull_native();
    v524 = v180;
    sub_226BE6628(v183, 0xD000000000000014, 0x8000000226D82080, v184);
    v185 = v524;
    v186 = v440;
    sub_226D6B08C();
    (*(v494 + 48))(v186, 1, v502);
    v187 = sub_226D6E6BC();
    sub_226AC47B0(v186, &qword_27D7A8BE0, &unk_226D718F0);
    v188 = swift_isUniquelyReferenced_nonNull_native();
    v524 = v185;
    sub_226BE6628(v187, 0xD000000000000014, 0x8000000226D820A0, v188);
    v189 = v524;
    v190 = v447;
    sub_226D6B0CC();
    v191 = sub_226D6A84C();
    v192 = *(v191 - 8);
    if ((*(v192 + 48))(v190, 1, v191) == 1)
    {
      sub_226AC47B0(v190, &qword_27D7A7830, &unk_226D776C0);
      v193 = sub_226D670EC();
      v194 = v448;
      (*(*(v193 - 8) + 56))(v448, 1, 1, v193);
    }

    else
    {
      v194 = v448;
      sub_226D6A83C();
      (*(v192 + 8))(v190, v191);
      v195 = sub_226D670EC();
      (*(*(v195 - 8) + 48))(v194, 1, v195);
    }

    v196 = sub_226D6E6BC();
    sub_226AC47B0(v194, &qword_27D7A7838, &qword_226D756C0);
    v197 = swift_isUniquelyReferenced_nonNull_native();
    v524 = v189;
    sub_226BE6628(v196, 0xD00000000000001DLL, 0x8000000226D820C0, v197);
    v198 = v524;
    sub_226D6B0BC();
    if (v199)
    {
      v200 = sub_226D6E6BC();
    }

    else
    {
      sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
      v200 = sub_226D6EC0C();
    }

    v201 = swift_isUniquelyReferenced_nonNull_native();
    v524 = v198;
    v202 = v200;
    v203 = v501;
    sub_226BE6628(v202, v501, 0x8000000226D820E0, v201);
    v204 = v524;
    v494 = "carrierSpecified";
    v205 = v500;
    v206 = v472;
    sub_226D6B0DC();
    sub_226D6D46C();
    v207 = sub_226D6770C();
    v208 = v502;
    v209 = v458;
    v458(v510, v502);
    sub_226AC47B0(v205, &qword_27D7A8BE0, &unk_226D718F0);
    v210 = swift_isUniquelyReferenced_nonNull_native();
    v524 = v204;
    sub_226BE6628(v207, v203, v494 | 0x8000000000000000, v210);
    v211 = v524;
    sub_226D6B04C();
    sub_226D6D46C();
    v212 = v209;
    v213 = sub_226D6770C();
    v209(v510, v208);
    sub_226AC47B0(v205, &qword_27D7A8BE0, &unk_226D718F0);
    v214 = swift_isUniquelyReferenced_nonNull_native();
    v524 = v211;
    sub_226BE6628(v213, 0xD000000000000012, 0x8000000226D82120, v214);
    v215 = v524;
    sub_226D6B09C();
    if (v216)
    {
      v217 = sub_226D6E6BC();
    }

    else
    {
      sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
      v217 = sub_226D6EC0C();
    }

    v218 = swift_isUniquelyReferenced_nonNull_native();
    v524 = v215;
    sub_226BE6628(v217, 0x6570537365746F6ELL, 0xEE00646569666963, v218);
    v219 = v524;
    sub_226D6B07C();
    if (v220 || (sub_226D6A4CC(), v221))
    {
      v222 = sub_226D6E6BC();
    }

    else
    {
      sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
      v222 = sub_226D6EC0C();
    }

    v223 = swift_isUniquelyReferenced_nonNull_native();
    v524 = v219;
    sub_226BE6628(v222, 0xD00000000000001ALL, 0x8000000226D81F80, v223);
    v224 = v524;
    v225 = v450;
    sub_226D6B05C();
    v226 = v206;
    v227 = v523;
    if (v455(v225, 1, v523) == 1)
    {
      (*(v456 + 8))(v226, v457);
      sub_226AC47B0(v225, &unk_27D7A62F8, &unk_226D73B70);
      v118 = v510;
    }

    else
    {
      v118 = v510;
      sub_226D6D15C();
      v229 = v228;
      v433(v225, v227);
      if (v229)
      {
        v230 = sub_226D6E36C();

        v231 = swift_isUniquelyReferenced_nonNull_native();
        v524 = v224;
        sub_226BE6628(v230, v454, 0x8000000226D82140, v231);
        v232 = v524;
        (*(v456 + 8))(v472, v457);
        v233 = v502;
LABEL_36:
        v234 = v500;
        goto LABEL_37;
      }

      (*(v456 + 8))(v472, v457);
    }

    v233 = v502;
    v232 = v224;
    goto LABEL_36;
  }

  if (v144 != *MEMORY[0x277CC7720])
  {
    result = sub_226D6F0AC();
    __break(1u);
    return result;
  }

  (*(v131 + 96))(v143, v134);
  (*(v454 + 32))(v475, v143, v455);
  v155 = v441;
  sub_226D6A7FC();
  sub_226D6926C();
  (*(v442 + 8))(v155, v443);
  v156 = sub_226D6E36C();

  v157 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v130;
  v494 = 0xD000000000000011;
  sub_226BE6628(v156, 0xD000000000000011, 0x8000000226D81F00, v157);
  v158 = v524;
  sub_226AE59B4(0, &qword_27D7A6498, 0x277CCACA8);
  v159 = sub_226D6EC5C();
  v160 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v158;
  sub_226BE6628(v159, 0x6D6C6C69666C7566, 0xEF65707954746E65, v160);
  v161 = v524;
  v162 = v445;
  sub_226D6A80C();
  v163 = sub_226D67C3C();
  (*(*(v163 - 8) + 48))(v162, 1, v163);
  v164 = sub_226D6E6BC();
  sub_226AC47B0(v162, &qword_27D7A7828, &unk_226D756B0);
  v165 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v161;
  sub_226BE6628(v164, 0xD000000000000016, 0x8000000226D81F20, v165);
  v166 = v524;
  v167 = v446;
  sub_226D6A81C();
  v168 = sub_226D6728C();
  (*(*(v168 - 8) + 48))(v167, 1, v168);
  v169 = sub_226D6E6BC();
  sub_226AC47B0(v167, &qword_27D7A7820, &unk_226D776B0);
  v170 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v166;
  sub_226BE6628(v169, 0xD000000000000017, 0x8000000226D81F40, v170);
  v171 = v524;
  v172 = v449;
  sub_226D6A7DC();
  v173 = sub_226D6CB6C();
  (*(*(v173 - 8) + 48))(v172, 1, v173);
  v174 = sub_226D6E6BC();
  sub_226AC47B0(v172, &qword_27D7A7818, &unk_226D756A0);
  v175 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v171;
  sub_226BE6628(v174, 0xD000000000000017, 0x8000000226D81F60, v175);
  v176 = v524;
  sub_226D6A7EC();
  if (v177)
  {
    v178 = sub_226D6E6BC();
  }

  else
  {
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v178 = sub_226D6EC0C();
  }

  v234 = v500;
  v235 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v176;
  sub_226BE6628(v178, 0x6570537365746F6ELL, 0xEE00646569666963, v235);
  v236 = v524;
  sub_226D6A7CC();
  if (v237 || (sub_226D6A4CC(), v238))
  {
    v239 = sub_226D6E6BC();
  }

  else
  {
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v239 = sub_226D6EC0C();
  }

  v240 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v236;
  sub_226BE6628(v239, 0xD00000000000001ALL, 0x8000000226D81F80, v240);
  v241 = v524;
  sub_226D6A7BC();
  sub_226D6D46C();
  v472 = sub_226D6770C();
  v233 = v502;
  v212 = v458;
  v458(v118, v502);
  sub_226AC47B0(v234, &qword_27D7A8BE0, &unk_226D718F0);
  v242 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v241;
  sub_226BE6628(v472, v494, 0x8000000226D81FA0, v242);
  v232 = v524;
  (*(v454 + 8))(v475, v455);
LABEL_37:
  sub_226D6A57C();
  v459(v234, 0, 1, v233);
  sub_226D6D46C();
  v243 = sub_226D6770C();
  v212(v118, v233);
  sub_226AC47B0(v234, &qword_27D7A8BE0, &unk_226D718F0);
  v244 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v232;
  sub_226BE6628(v243, v501, 0x8000000226D81FC0, v244);
  v245 = v524;
  v246 = sub_226D6903C();
  v247 = *(v246 + 16);
  if (v247)
  {
    v502 = v245;
    v510 = *(v473 + 16);
    v248 = (*(v473 + 80) + 32) & ~*(v473 + 80);
    v500 = v246;
    v249 = v246 + v248;
    v250 = *(v473 + 72);
    v251 = (v473 + 8);
    v252 = MEMORY[0x277D84F90];
    do
    {
      v254 = v514;
      v255 = v522;
      (v510)(v514, v249, v522);
      v256 = sub_226D67FEC();
      v258 = v257;
      (*v251)(v254, v255);
      if (v258)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v252 = sub_226BBAB0C(0, *(v252 + 2) + 1, 1, v252);
        }

        v260 = *(v252 + 2);
        v259 = *(v252 + 3);
        if (v260 >= v259 >> 1)
        {
          v252 = sub_226BBAB0C((v259 > 1), v260 + 1, 1, v252);
        }

        *(v252 + 2) = v260 + 1;
        v253 = &v252[16 * v260];
        *(v253 + 4) = v256;
        *(v253 + 5) = v258;
      }

      v249 += v250;
      --v247;
    }

    while (v247);

    v245 = v502;
  }

  else
  {
  }

  v261 = sub_226D6E6BC();

  v262 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v245;
  sub_226BE6628(v261, 0xD000000000000014, 0x8000000226D81FE0, v262);
  v263 = v524;
  v264 = sub_226D6903C();
  v265 = *(v264 + 16);
  if (v265)
  {
    v502 = v263;
    v514 = *(v473 + 16);
    v266 = (*(v473 + 80) + 32) & ~*(v473 + 80);
    v500 = v264;
    v267 = v264 + v266;
    v510 = *(v473 + 72);
    v268 = (v473 + 8);
    v269 = MEMORY[0x277D84F90];
    v139 = v509;
    do
    {
      v271 = v515;
      v272 = v522;
      (v514)(v515, v267, v522);
      v273 = sub_226D6800C();
      v275 = v274;
      (*v268)(v271, v272);
      if (v275)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v269 = sub_226BBAB0C(0, *(v269 + 2) + 1, 1, v269);
        }

        v277 = *(v269 + 2);
        v276 = *(v269 + 3);
        if (v277 >= v276 >> 1)
        {
          v269 = sub_226BBAB0C((v276 > 1), v277 + 1, 1, v269);
        }

        *(v269 + 2) = v277 + 1;
        v270 = &v269[16 * v277];
        *(v270 + 4) = v273;
        *(v270 + 5) = v275;
        v139 = v509;
      }

      v267 += v510;
      --v265;
    }

    while (v265);

    v263 = v502;
  }

  else
  {

    v139 = v509;
  }

  v278 = sub_226D6E6BC();

  v279 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v263;
  sub_226BE6628(v278, 0xD000000000000018, 0x8000000226D82000, v279);
  v280 = v524;
  v281 = sub_226D6903C();
  v282 = *(v281 + 16);
  if (v282)
  {
    v514 = v280;
    v524 = MEMORY[0x277D84F90];
    sub_226AE23A4(0, v282, 0);
    v283 = v524;
    v515 = *(v473 + 16);
    v284 = *(v473 + 80);
    v510 = v281;
    v285 = v281 + ((v284 + 32) & ~v284);
    v286 = *(v473 + 72);
    v287 = (v473 + 8);
    do
    {
      v288 = v516;
      v289 = v522;
      (v515)(v516, v285, v522);
      v290 = sub_226D67FFC();
      (*v287)(v288, v289);
      v524 = v283;
      v292 = *(v283 + 16);
      v291 = *(v283 + 24);
      if (v292 >= v291 >> 1)
      {
        sub_226AE23A4((v291 > 1), v292 + 1, 1);
        v283 = v524;
      }

      *(v283 + 16) = v292 + 1;
      *(v283 + 8 * v292 + 32) = v290;
      v285 += v286;
      --v282;
    }

    while (v282);

    v139 = v509;
    v280 = v514;
  }

  else
  {
  }

  v293 = sub_226D6E6BC();

  v294 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v280;
  sub_226BE6628(v293, 0xD000000000000018, 0x8000000226D82020, v294);
  v138 = v524;
  v295 = v461;
  sub_226AC40E8(v506 + *(v505 + 28), v461, &qword_27D7A7798, &unk_226D75570);
  v296 = v496;
  v297 = v497;
  v298 = (*(v496 + 48))(v295, 1, v497);
  v140 = v480;
  v299 = v462;
  if (v298 == 1)
  {
    sub_226AC47B0(v295, &qword_27D7A7798, &unk_226D75570);
LABEL_73:
    v141 = v478;
    v311 = v499;
LABEL_74:
    v310 = v498;
    goto LABEL_75;
  }

  sub_226D6756C();
  (*(v296 + 8))(v295, v297);
  v300 = v451;
  v301 = v452;
  if ((*(v451 + 88))(v299, v452) != *MEMORY[0x277CC8590])
  {
    (*(v300 + 8))(v299, v301);
    goto LABEL_73;
  }

  (*(v300 + 96))(v299, v301);
  v302 = *v299;

  if (!v302)
  {
    v305 = v436;
    (*(v498 + 56))(v436, 1, 1, v499);
    goto LABEL_120;
  }

  MEMORY[0x28223BE20](v303);
  v304 = v436;
  sub_226BA3310(sub_226BB8A58, v302, v436);
  v305 = v304;

  v306 = v499;
  if (v431(v304, 1) == 1)
  {
LABEL_120:
    sub_226AC47B0(v305, &qword_27D7A77B8, &qword_226D75588);
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v428 = sub_226D6EC0C();
    v429 = swift_isUniquelyReferenced_nonNull_native();
    v524 = v138;
    sub_226BE6628(v428, 0xD000000000000012, 0x8000000226D82040, v429);
    v311 = v499;
    v138 = v524;
    v141 = v478;
    goto LABEL_74;
  }

  v307 = v432;
  (v430[0])(v432, v304, v306);
  MEMORY[0x22AA850D0](v307, v503);
  v308 = sub_226D6E6BC();
  v309 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v138;
  sub_226BE6628(v308, 0xD000000000000012, 0x8000000226D82040, v309);
  v138 = v524;
  v310 = v498;
  (*(v498 + 8))(v307, v306);
  v311 = v306;
  v141 = v478;
LABEL_75:
  (*(v310 + 8))(v503, v311);
LABEL_76:
  sub_226D6A54C();
  v312 = sub_226D67D3C();
  v313 = *(v312 - 8);
  v509 = *(v313 + 48);
  v510 = v313 + 48;
  v314 = v509(v141, 1, v312);
  v502 = v313;
  if (v314 == 1)
  {
    sub_226AC47B0(v141, &qword_27D7A7808, &qword_226D75690);
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v315 = sub_226D6EC0C();
  }

  else
  {
    sub_226D67CFC();
    (*(v313 + 8))(v141, v312);
    v315 = sub_226D6E6BC();
  }

  v316 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v138;
  sub_226BE6628(v315, 0xD000000000000015, 0x8000000226D81CC0, v316);
  v317 = v524;
  sub_226D6A54C();
  if (v509(v140, 1, v312) == 1)
  {
    sub_226AC47B0(v140, &qword_27D7A7808, &qword_226D75690);
    v318 = 1;
  }

  else
  {
    sub_226D67D1C();
    (*(v502 + 8))(v140, v312);
    v318 = 0;
  }

  v319 = v312;
  v320 = v486;
  v321 = v487;
  (*(v486 + 56))(v139, v318, 1, v487);
  v322 = sub_226D6E6BC();
  sub_226AC47B0(v139, &qword_27D7A7800, &unk_226D776D0);
  v323 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v317;
  sub_226BE6628(v322, 0xD000000000000016, 0x8000000226D81CE0, v323);
  v324 = v524;
  v325 = v483;
  sub_226D6A54C();
  v326 = v509(v325, 1, v312);
  v503 = v312;
  if (v326 == 1)
  {
    sub_226AC47B0(v325, &qword_27D7A7808, &qword_226D75690);
  }

  else
  {
    v327 = v463;
    sub_226D67D1C();
    (*(v502 + 8))(v325, v319);
    sub_226D6778C();
    (*(v320 + 8))(v327, v321);
  }

  v328 = v507;
  v329 = sub_226D6E36C();

  v330 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v324;
  sub_226BE6628(v329, v501, 0x8000000226D81D00, v330);
  v331 = v524;
  v332 = sub_226D6A50C();
  v333 = *(v332 + 16);
  if (v333)
  {
    v500 = v331;
    v334 = v512 + 16;
    v522 = *(v512 + 16);
    v335 = (*(v512 + 80) + 32) & ~*(v512 + 80);
    v501 = v332;
    v336 = v332 + v335;
    v337 = *(v512 + 72);
    v514 = (v512 + 8);
    v338 = (v513 + 48);
    v515 = (v513 + 32);
    v516 = v337;
    v339 = MEMORY[0x277D84F90];
    v512 += 16;
    do
    {
      v341 = v520;
      v340 = v521;
      v342 = v334;
      (v522)(v520, v336, v521);
      v343 = v519;
      sub_226D68FFC();
      v344 = v343;
      v345 = v518;
      sub_226AFD80C(v344, v518, &unk_27D7A62F8, &unk_226D73B70);
      (*v514)(v341, v340);
      v346 = v523;
      if ((*v338)(v345, 1, v523) == 1)
      {
        sub_226AC47B0(v345, &unk_27D7A62F8, &unk_226D73B70);
        v334 = v342;
      }

      else
      {
        v347 = *v515;
        (*v515)(v517, v345, v346);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v339 = sub_226BBB9F8(0, *(v339 + 2) + 1, 1, v339);
        }

        v349 = *(v339 + 2);
        v348 = *(v339 + 3);
        if (v349 >= v348 >> 1)
        {
          v339 = sub_226BBB9F8((v348 > 1), v349 + 1, 1, v339);
        }

        *(v339 + 2) = v349 + 1;
        v347(&v339[((*(v513 + 80) + 32) & ~*(v513 + 80)) + *(v513 + 72) * v349], v517, v523);
        v334 = v512;
      }

      v336 += v516;
      --v333;
    }

    while (v333);

    v328 = v507;
    v331 = v500;
  }

  else
  {
  }

  v350 = sub_226D6E6BC();

  v351 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v331;
  sub_226BE6628(v350, 0xD000000000000012, 0x8000000226D81D20, v351);
  v352 = v524;
  v353 = v477;
  sub_226D6A55C();
  v354 = v484;
  sub_226D6729C();
  v355 = v504;
  v504(v353, v328);
  v356 = *(v513 + 48);
  v513 += 48;
  v522 = v356;
  (v356)(v354, 1, v523);
  v357 = sub_226D6E6BC();
  sub_226AC47B0(v354, &unk_27D7A62F8, &unk_226D73B70);
  v358 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v352;
  sub_226BE6628(v357, 0xD000000000000014, 0x8000000226D81D40, v358);
  v359 = v524;
  v360 = v479;
  sub_226D6A55C();
  sub_226D672BC();
  v362 = v361;
  v355(v360, v328);
  if (v362)
  {
    v363 = sub_226D6E6BC();
  }

  else
  {
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v363 = sub_226D6EC0C();
  }

  v364 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v359;
  sub_226BE6628(v363, 0xD000000000000015, 0x8000000226D81D60, v364);
  v365 = v524;
  v366 = v481;
  sub_226D6A55C();
  v367 = v488;
  sub_226D672DC();
  v368 = v507;
  v369 = v504;
  v504(v366, v507);
  (v522)(v367, 1, v523);
  v370 = sub_226D6E6BC();
  sub_226AC47B0(v367, &unk_27D7A62F8, &unk_226D73B70);
  v371 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v365;
  sub_226BE6628(v370, 0xD000000000000018, 0x8000000226D81D80, v371);
  v372 = v524;
  v373 = v482;
  sub_226D6A55C();
  sub_226D672CC();
  v375 = v374;
  v369(v373, v368);
  if (v375)
  {
    v376 = sub_226D6E6BC();
  }

  else
  {
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v376 = sub_226D6EC0C();
  }

  v377 = v496;
  v378 = v497;
  v379 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v372;
  sub_226BE6628(v376, 0xD000000000000016, 0x8000000226D81DA0, v379);
  v380 = v524;
  v381 = v506;
  v382 = v485;
  sub_226D6A55C();
  sub_226D6730C();
  v384 = v383;
  v504(v382, v507);
  v385 = v378;
  if (v384)
  {
    v386 = sub_226D6E6BC();
  }

  else
  {
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v386 = sub_226D6EC0C();
  }

  v387 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v380;
  sub_226BE6628(v386, 0xD000000000000020, 0x8000000226D81DC0, v387);
  v388 = v524;
  sub_226D6A50C();
  v389 = sub_226D6E6BC();

  v390 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v388;
  sub_226BE6628(v389, v495, 0x8000000226D81DF0, v390);
  v391 = v524;
  v392 = v489;
  sub_226D6A53C();
  v393 = sub_226D67C3C();
  (*(*(v393 - 8) + 48))(v392, 1, v393);
  v394 = sub_226D6E6BC();
  sub_226AC47B0(v392, &qword_27D7A7828, &unk_226D756B0);
  v395 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v391;
  sub_226BE6628(v394, 0xD000000000000014, 0x8000000226D81E10, v395);
  v396 = v524;
  v397 = v491;
  sub_226D6A4EC();
  v398 = sub_226D6BC2C();
  (*(*(v398 - 8) + 48))(v397, 1, v398);
  v399 = sub_226D6E6BC();
  sub_226AC47B0(v397, &qword_27D7A77F8, &unk_226D75680);
  v400 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v396;
  sub_226BE6628(v399, 0xD00000000000001ALL, 0x8000000226D81E30, v400);
  v401 = v524;
  v402 = v490;
  sub_226D6A54C();
  v403 = v503;
  if (v509(v402, 1, v503) == 1)
  {
    v404 = &qword_27D7A7808;
    v405 = &qword_226D75690;
    v406 = v402;
  }

  else
  {
    v407 = v464;
    sub_226D67D2C();
    (*(v502 + 8))(v402, v403);
    v408 = sub_226D699EC();
    v409 = *(v408 - 8);
    if ((*(v409 + 48))(v407, 1, v408) != 1)
    {
      sub_226D699DC();
      (*(v409 + 8))(v407, v408);
      goto LABEL_112;
    }

    v404 = &qword_27D7A77F0;
    v405 = &qword_226D75678;
    v406 = v407;
  }

  sub_226AC47B0(v406, v404, v405);
LABEL_112:
  v410 = sub_226D6E36C();

  v411 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v401;
  sub_226BE6628(v410, 0x53746E656D796170, 0xED00007375746174, v411);
  v412 = v524;
  v413 = v492;
  sub_226D6A54C();
  v414 = v503;
  if (v509(v413, 1, v503) == 1)
  {
    sub_226AC47B0(v413, &qword_27D7A7808, &qword_226D75690);
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v415 = sub_226D6EC0C();
  }

  else
  {
    sub_226D67D0C();
    (*(v502 + 8))(v413, v414);
    v415 = sub_226D6E6BC();
  }

  v416 = swift_isUniquelyReferenced_nonNull_native();
  v524 = v412;
  sub_226BE6628(v415, 0xD000000000000017, 0x8000000226D81E50, v416);
  v417 = v524;
  v418 = v493;
  sub_226AC40E8(v381 + *(v505 + 28), v493, &qword_27D7A7798, &unk_226D75570);
  if ((*(v377 + 48))(v418, 1, v385) == 1)
  {
    sub_226AC47B0(v418, &qword_27D7A7798, &unk_226D75570);
  }

  else
  {
    v419 = v468;
    (*(v377 + 32))(v468, v418, v385);
    v420 = v465;
    sub_226D6757C();
    v421 = sub_226BB7DF4(v420);
    (*(v466 + 8))(v420, v467);
    v422 = swift_isUniquelyReferenced_nonNull_native();
    v524 = v417;
    sub_226BE6628(v421, v495, 0x8000000226D81E70, v422);
    v423 = v524;
    v424 = v469;
    sub_226D675CC();
    v425 = sub_226BB805C(v424);
    (*(v470 + 8))(v424, v471);
    v426 = swift_isUniquelyReferenced_nonNull_native();
    v524 = v423;
    sub_226BE6628(v425, 0x6843737574617473, 0xEC00000065676E61, v426);
    v417 = v524;
    (*(v377 + 8))(v419, v385);
  }

  return v417;
}

uint64_t sub_226BB7D58()
{
  v0 = sub_226D6901C();
  v2 = v1;
  if (v0 == sub_226D6901C() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_226D6F21C();
  }

  return v4 & 1;
}

uint64_t sub_226BB7DF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77E8, &qword_226D75670);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v11 - v5;
  (*(v3 + 16))(v11 - v5, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CC8590])
  {
    (*(v3 + 96))(v6, v2);
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7850, &qword_226D756D8) + 48);
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v9 = sub_226D6EC0C();
    sub_226AC47B0(&v6[v8], &qword_27D7A77F0, &qword_226D75678);
    sub_226AC47B0(v6, &qword_27D7A77F0, &qword_226D75678);
    return v9;
  }

  else if (v7 == *MEMORY[0x277CC8598])
  {
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    return sub_226D6EC0C();
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_226D6EEFC();
    MEMORY[0x22AA8A510](0xD000000000000026, 0x8000000226D82160);
    sub_226D6EFBC();
    result = sub_226D6F0AC();
    __break(1u);
  }

  return result;
}

uint64_t sub_226BB805C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77E0, &qword_226D75668);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v11 - v5;
  (*(v3 + 16))(v11 - v5, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CC8590])
  {
    (*(v3 + 96))(v6, v2);
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7840, &qword_226D756C8) + 48);
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    v9 = sub_226D6EC0C();
    sub_226AC47B0(&v6[v8], &qword_27D7A7848, &qword_226D756D0);
    sub_226AC47B0(v6, &qword_27D7A7848, &qword_226D756D0);
    return v9;
  }

  else if (v7 == *MEMORY[0x277CC8598])
  {
    sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    return sub_226D6EC0C();
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_226D6EEFC();
    MEMORY[0x22AA8A510](0xD000000000000026, 0x8000000226D82160);
    sub_226D6EFBC();
    result = sub_226D6F0AC();
    __break(1u);
  }

  return result;
}

unint64_t sub_226BB82C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D70840;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000226D81C60;
  *(inited + 48) = sub_226D6E36C();
  v1 = sub_226B224E8(inited);
  swift_setDeallocating();
  sub_226AC47B0(inited + 32, &qword_27D7A77D8, &qword_226D75660);
  return v1;
}

uint64_t getEnumTagSinglePayload for OrderImportAnalyticsEventsBuilder.Context(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for OrderImportAnalyticsEventsBuilder.Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_226BB8448(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_226BB8460(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_226BB8488(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_226BB84EC(uint64_t a1)
{
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_226BB8548()
{
  result = qword_27D7A77A0;
  if (!qword_27D7A77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A77A0);
  }

  return result;
}

uint64_t sub_226BB859C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(sub_226D6A4BC() + 16);

  if (v8)
  {
    v9 = sub_226D6A4BC();
    MEMORY[0x28223BE20](v9);
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = a3;
    v20 = a4;
    v10 = sub_226C41508(sub_226BB878C, v19, v9);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A61C0, &qword_226D775E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_226D70840;
    v11 = type metadata accessor for OrderImportAnalyticsEventsBuilder.OrderImportedSuccessEvent(0);
    *(v10 + 56) = v11;
    *(v10 + 64) = sub_226BB8800();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v10 + 32));
    v13 = v11[6];
    v14 = sub_226D6904C();
    (*(*(v14 - 8) + 56))(boxed_opaque_existential_1 + v13, 1, 1, v14);
    *boxed_opaque_existential_1 = 0xD000000000000029;
    boxed_opaque_existential_1[1] = 0x8000000226D81C30;
    v15 = v11[5];
    v16 = sub_226D6A58C();
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1 + v15, a1, v16);
    sub_226AC40E8(a2, boxed_opaque_existential_1 + v11[7], &qword_27D7A7798, &unk_226D75570);
    v17 = boxed_opaque_existential_1 + v11[8];
    *v17 = a3;
    v17[8] = a4;
  }

  return v10;
}

uint64_t type metadata accessor for OrderImportAnalyticsEventsBuilder.OrderImportedSuccessEvent(uint64_t a1)
{
  result = qword_27D7A77C0;
  if (!qword_27D7A77C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_226BB8800()
{
  result = qword_27D7A77B0;
  if (!qword_27D7A77B0)
  {
    type metadata accessor for OrderImportAnalyticsEventsBuilder.OrderImportedSuccessEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A77B0);
  }

  return result;
}

void sub_226BB8880(uint64_t a1)
{
  sub_226D6A58C();
  if (v1 <= 0x3F)
  {
    sub_226BB896C(319, &qword_281062BA8, MEMORY[0x277CC7730]);
    if (v2 <= 0x3F)
    {
      sub_226BB896C(319, &qword_27D7A77D0, MEMORY[0x277CC6C78]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_226BB896C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_226D6EC9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_226BB89C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_226BB8A08(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}