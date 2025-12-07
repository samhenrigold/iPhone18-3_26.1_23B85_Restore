uint64_t sub_2450CF53C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2450D0E34;

  return sub_2450D07C4();
}

uint64_t sub_2450CF770(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2450D0E34;

  return sub_2450D08F8();
}

uint64_t sub_2450CF994(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2450D0E34;

  return sub_2450D0A2C();
}

uint64_t sub_2450CFA64()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2450D0E60;

  return sub_2450CF994(v2);
}

uint64_t sub_2450CFB10(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2450D0E60;

  return v6();
}

uint64_t sub_2450CFBF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2450D0E60;

  return sub_2450CFB10(v2, v3, v4);
}

uint64_t sub_2450CFCB8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2450CFDA0;

  return v7();
}

uint64_t sub_2450CFDA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2450CFE98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2450D0E60;

  return sub_2450CFCB8(a1, v4, v5, v6);
}

uint64_t sub_2450CFF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EC8, "Ĉ");
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2450D0220(a3, v23 - v10);
  v12 = sub_2450E5908();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2450D0290(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2450E58F8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_2450E58E8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_2450E5828() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_2450D0290(a3);

    return v21;
  }

LABEL_8:
  sub_2450D0290(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_2450D0220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EC8, "Ĉ");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2450D0290(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EC8, "Ĉ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2450D02F8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2450D03F0;

  return v6(a1);
}

uint64_t sub_2450D03F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2450D04E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2450D0520(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2450D0E60;

  return sub_2450D02F8(a1, v4);
}

uint64_t sub_2450D05D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2450CFDA0;

  return sub_2450D02F8(a1, v4);
}

uint64_t sub_2450D06AC()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v1 = sub_2450E5638();
  __swift_project_value_buffer(v1, qword_27EE0AEC8);
  v2 = sub_2450E5628();
  v3 = sub_2450E5988();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24508F000, v2, v3, "Enabling mic activity detection", v4, 2u);
    MEMORY[0x245D63500](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_2450D07E0()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v1 = sub_2450E5638();
  __swift_project_value_buffer(v1, qword_27EE0AEC8);
  v2 = sub_2450E5628();
  v3 = sub_2450E5988();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24508F000, v2, v3, "Disabling mic activity detection", v4, 2u);
    MEMORY[0x245D63500](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_2450D0914()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v1 = sub_2450E5638();
  __swift_project_value_buffer(v1, qword_27EE0AEC8);
  v2 = sub_2450E5628();
  v3 = sub_2450E5988();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24508F000, v2, v3, "Listening for mic activity detection", v4, 2u);
    MEMORY[0x245D63500](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_2450D0A48()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v1 = sub_2450E5638();
  __swift_project_value_buffer(v1, qword_27EE0AEC8);
  v2 = sub_2450E5628();
  v3 = sub_2450E5988();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24508F000, v2, v3, "Stop listenting for mic activity detection", v4, 2u);
    MEMORY[0x245D63500](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_2450D0B60()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2450D0BA8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2450D0E60;

  return sub_2450CF770(v2, v3);
}

uint64_t sub_2450D0C5C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2450D0E60;

  return sub_2450CF53C(v2);
}

uint64_t objectdestroyTm_0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2450D0D48()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2450CFDA0;

  return sub_2450CF1E0(v2);
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2450D0E8C(char *a1)
{
  v2 = sub_2450E56C8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v11 = sub_2450E5638();
  __swift_project_value_buffer(v11, qword_27EE0AEC8);
  sub_2450D1B80(a1, v10);
  v12 = sub_2450E5628();
  v13 = sub_2450E5988();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v8;
    v16 = v15;
    v30[0] = v15;
    *v14 = 136315138;
    if (*v10)
    {
      v17 = 4473165;
    }

    else
    {
      v17 = 4473160;
    }

    sub_2450B43F0(v10);
    v18 = sub_2450C0EE8(v17, 0xE300000000000000, v30);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_24508F000, v12, v13, "Registering the client: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    v19 = v16;
    v8 = v27;
    MEMORY[0x245D63500](v19, -1, -1);
    MEMORY[0x245D63500](v14, -1, -1);
  }

  else
  {

    sub_2450B43F0(v10);
  }

  v20 = *a1;
  v21 = *(v3 + 16);
  v21(v7, &a1[*(v8 + 20)], v2);
  v22 = swift_allocObject();
  *(v22 + 16) = v29;
  *(v22 + 24) = v20;
  type metadata accessor for ClientXPCConnection();
  swift_allocObject();
  v23 = v28;
  v21(v28, v7, v2);

  v24 = sub_2450A7498(v23, sub_2450D1C1C, v22);
  (*(v3 + 8))(v7, v2);
  LOBYTE(v30[0]) = v20;

  sub_2450AB974(v30, v24);

  return sub_2450E5788();
}

void sub_2450D121C(uint64_t a1, uint64_t a2, char a3)
{
  sub_2450B56B4(a1);
  v5 = *(*(a2 + 40) + 16);
  if (*(v5 + 16))
  {

    v6 = sub_2450C81F8(a3 & 1);
    if (v7)
    {
      v8 = *(**(*(v5 + 56) + 8 * v6) + 168);

      v8(v9);
    }
  }
}

uint64_t sub_2450D12D4(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v4 = sub_2450E5638();
  __swift_project_value_buffer(v4, qword_27EE0AEC8);
  v5 = sub_2450E5628();
  v6 = sub_2450E5988();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136315138;
    if (v3)
    {
      v9 = 4473165;
    }

    else
    {
      v9 = 4473160;
    }

    v10 = sub_2450C0EE8(v9, 0xE300000000000000, v19);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_24508F000, v5, v6, "Client notified about a hardware change: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245D63500](v8, -1, -1);
    MEMORY[0x245D63500](v7, -1, -1);
  }

  v11 = *(*(v2 + 40) + 16);
  if (!*(v11 + 16))
  {
    goto LABEL_14;
  }

  v12 = sub_2450C81F8(v3);
  if ((v13 & 1) == 0)
  {

    goto LABEL_14;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  v19[0] = v14;
  type metadata accessor for RegisteredClient();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7ED8, &qword_2450EEBB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_15;
  }

  if (!*(&v17 + 1))
  {
LABEL_15:
    sub_24509F608(&v16, &qword_27EDF7ED0, &qword_2450EEBA8);
    return sub_2450E5788();
  }

  sub_24509551C(&v16, v19);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  sub_2450B071C();
  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  return sub_2450E5788();
}

uint64_t sub_2450D151C(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 1);
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v5 = sub_2450E5638();
  __swift_project_value_buffer(v5, qword_27EE0AEC8);

  v6 = sub_2450E5628();
  v7 = sub_2450E5988();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22[0] = v9;
    *v8 = 136315138;
    if (v3)
    {
      v10 = 4473165;
    }

    else
    {
      v10 = 4473160;
    }

    v11 = sub_2450C0EE8(v10, 0xE300000000000000, v22);

    *(v8 + 4) = v11;
    _os_log_impl(&dword_24508F000, v6, v7, "Client requested self configuration: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245D63500](v9, -1, -1);
    MEMORY[0x245D63500](v8, -1, -1);
  }

  v12 = *(*(v2 + 40) + 16);
  if (!*(v12 + 16))
  {
    goto LABEL_15;
  }

  v13 = sub_2450C81F8(v3);
  if ((v14 & 1) == 0)
  {

    goto LABEL_15;
  }

  v15 = *(*(v12 + 56) + 8 * v13);

  v22[0] = v15;
  type metadata accessor for RegisteredClient();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EE8, &qword_2450EEBC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    goto LABEL_16;
  }

  if (!*(&v20 + 1))
  {
LABEL_16:
    sub_24509F608(&v19, &qword_27EDF7EE0, &qword_2450EEBB8);
    return 2;
  }

  sub_24509551C(&v19, v22);
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  v16 = sub_2450DCE04(v4);
  if (v16 == sub_2450E5788())
  {
    v17 = sub_2450E5788();
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    return v17;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  return 2;
}

uint64_t sub_2450D179C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CoreAudioOrchestratorServerXPC.Request(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2450D1AC4();
  sub_2450E5778();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = v7[1];
      v17[0] = *v7;
      v17[1] = v9;
      v10 = sub_2450D12D4(v17);
    }

    else
    {
      v14 = *(v7 + 1);
      v17[0] = *v7;
      v18 = v14;
      v10 = sub_2450D151C(v17);
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF74D8, &unk_2450EB790);
    result = sub_2450AD608(&qword_27EDF74E0, &qword_27EDF74D8, &unk_2450EB790);
    v19 = 0;
  }

  else
  {
    sub_2450D1B1C(v7, v4);
    v10 = sub_2450D0E8C(v4);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF74D8, &unk_2450EB790);
    v12 = sub_2450AD608(&qword_27EDF74E0, &qword_27EDF74D8, &unk_2450EB790);
    v19 = 0;
    sub_2450B43F0(v4);
    result = v12;
  }

  *a1 = v10;
  *(a1 + 8) = 0;
  *(a1 + 16) = v19;
  *(a1 + 17) = v16;
  *(a1 + 20) = *(&v16 + 3);
  *(a1 + 24) = v11;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2450D1A58()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

unint64_t sub_2450D1AC4()
{
  result = qword_27EDF7638;
  if (!qword_27EDF7638)
  {
    type metadata accessor for CoreAudioOrchestratorServerXPC.Request(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7638);
  }

  return result;
}

uint64_t sub_2450D1B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2450D1B80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreAudioOrchestratorServerXPC.RegisterClient(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2450D1BE4()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

double sub_2450D1C28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2450C8178(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2450C93C0();
      v9 = v11;
    }

    sub_2450C5C34((*(v9 + 56) + 40 * v7), a2);
    sub_2450C88BC(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_2450D1CC4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_2450C8178(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2450C9990();
      v9 = v14;
    }

    v10 = (*(v9 + 56) + 96 * v7);
    v11 = v10[3];
    a2[2] = v10[2];
    a2[3] = v11;
    a2[4] = v10[4];
    *(a2 + 73) = *(v10 + 73);
    v12 = v10[1];
    *a2 = *v10;
    a2[1] = v12;
    sub_2450C8F78(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *(a2 + 73) = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_2450D1E74(uint64_t a1)
{
  v2 = v1;
  result = sub_2450C9B28(a1, v31);
  v4 = *(v1 + 16);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = v5;
    v32 = v4 + 1;
    v33 = 0;
    sub_2450C9B28(v31, v29);
    swift_beginAccess();
    sub_2450D3DC4(v29, v5, v30);
    sub_2450D4D00(v30);
    swift_endAccess();
    v6 = v34;
    v7 = v35;
    swift_beginAccess();
    v8 = *(v1 + 32);
    v9 = MEMORY[0x277D84FA0];
    if (*(v8 + 16))
    {

      v10 = sub_2450C7FE0(v6, v7);
      if (v11)
      {
        v12 = *(*(v8 + 56) + 8 * v10);
      }

      else
      {
        v12 = MEMORY[0x277D84FA0];
      }
    }

    else
    {
      v12 = MEMORY[0x277D84FA0];
    }

    v27 = v12;
    sub_2450D62D8(v29, v5);
    swift_beginAccess();
    sub_2450D3C64(v12, v6, v7);
    swift_endAccess();

    v13 = v36;
    v14 = v37;
    swift_beginAccess();
    v15 = *(v2 + 40);
    if (*(v15 + 16) && (LOBYTE(v28[0]) = v14, v16 = sub_2450C8058(v13 | (v14 << 32)), (v17 & 1) != 0))
    {
      v26 = *(*(v15 + 56) + 8 * v16);
    }

    else
    {
      v26 = v9;
    }

    sub_2450D62D8(v28, v5);
    swift_beginAccess();
    LOBYTE(v24[0]) = v14;
    sub_2450D3B30(v26, v13 | (v14 << 32));
    swift_endAccess();

    v18 = v38;
    v19 = v39;
    swift_beginAccess();
    v20 = *(v2 + 48);
    if (*(v20 + 16) && (v21 = sub_2450C80E8(v18, v19), (v22 & 1) != 0))
    {
      v25 = *(*(v20 + 56) + 8 * v21);
    }

    else
    {
      v25 = v9;
    }

    sub_2450D62D8(v24, v5);
    v23 = v25;
    swift_beginAccess();
    sub_2450D39C4(v23, v18, v19);
    swift_endAccess();

    sub_2450C5B18(v31);
    return v5;
  }

  return result;
}

double sub_2450D2134@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  sub_2450D1CC4(a1, &v23);
  swift_endAccess();
  if (*(&v24 + 1))
  {
    v38 = v23;
    v39 = v24;
    v40 = v25;
    v4 = v27;
    v41 = v26;
    v5 = v28;
    v21 = v29;
    v20 = v30;
    v36 = v31;
    v37 = v32;
    v6 = v33;
    v35 = v34;
    v7 = sub_2450D1D80(&v23);
    v19 = v4;
    v8 = sub_2450D23BC(v22, v4, v5);
    if (*v9)
    {
      sub_2450D3284(a1);
    }

    (v8)(v22, 0);
    (v7)(&v23, 0);
    v10 = sub_2450D1DD0(&v23);
    v11 = sub_2450D2448(v22, v21 | (v20 << 32));
    if (*v12)
    {
      sub_2450D3284(a1);
    }

    (v11)(v22, 0);
    (v10)(&v23, 0);
    v13 = v35;
    v14 = sub_2450D1E24(&v23);
    v15 = sub_2450D24D0(v22, v6, v13);
    if (*v16)
    {
      sub_2450D3284(a1);
    }

    (v15)(v22, 0);
    (v14)(&v23, 0);
    v17 = v39;
    *a2 = v38;
    *(a2 + 16) = v17;
    result = *&v40;
    *(a2 + 32) = v40;
    *(a2 + 48) = v41;
    *(a2 + 56) = v19;
    *(a2 + 64) = v5;
    *(a2 + 72) = v21;
    *(a2 + 76) = v20;
    *(a2 + 77) = v36;
    *(a2 + 79) = v37;
    *(a2 + 80) = v6;
    *(a2 + 88) = v35;
  }

  else
  {
    sub_2450D4D00(&v23);
    result = 0.0;
    *(a2 + 73) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t (*sub_2450D23BC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2450D40E0(v6, a2, a3);
  return sub_2450D2444;
}

uint64_t (*sub_2450D2448(uint64_t **a1, unint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2450D402C(v4, a2 | ((HIDWORD(a2) & 1) << 32));
  return sub_2450D4EB4;
}

uint64_t (*sub_2450D24D0(uint64_t **a1, uint64_t a2, char a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2450D3F80(v6, a2, a3 & 1);
  return sub_2450D4EB4;
}

void sub_2450D2558(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void *sub_2450D25A4(uint64_t a1)
{
  v2 = v1;
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v4 = sub_2450E5638();
  __swift_project_value_buffer(v4, qword_27EE0AEC8);

  v5 = sub_2450E5628();
  v6 = sub_2450E5998();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    swift_beginAccess();
    *(v7 + 4) = *(v2[3] + 16);

    _os_log_impl(&dword_24508F000, v5, v6, "querying subscriptions from set of %ld", v7, 0xCu);
    MEMORY[0x245D63500](v7, -1, -1);
  }

  else
  {
  }

  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = *a1;
    swift_beginAccess();
    v11 = v2[4];
    if (*(v11 + 16))
    {

      v12 = sub_2450C7FE0(v10, v9);
      if (v13)
      {
        v14 = *(*(v11 + 56) + 8 * v12);
      }

      else
      {
        v14 = MEMORY[0x277D84FA0];
      }
    }

    else
    {
      v14 = MEMORY[0x277D84FA0];
    }

    sub_2450D2A54(v14, v8);
  }

  if ((*(a1 + 20) & 1) == 0)
  {
    v15 = *(a1 + 16);
    swift_beginAccess();
    v16 = v2[5];
    if (*(v16 + 16) && (LOBYTE(v47) = 0, v17 = sub_2450C8058(v15), (v18 & 1) != 0))
    {
      v19 = *(*(v16 + 56) + 8 * v17);
    }

    else
    {
      v19 = MEMORY[0x277D84FA0];
    }

    sub_2450D2A54(v19, v8);
  }

  v20 = MEMORY[0x277D84FA0];
  if ((*(a1 + 32) & 1) == 0)
  {
    v21 = *(a1 + 24);
    swift_beginAccess();
    v22 = v2[6];
    if (*(v22 + 16) && (v23 = sub_2450C80E8(v21, 0), (v24 & 1) != 0))
    {
      v25 = *(*(v22 + 56) + 8 * v23);
    }

    else
    {
      v25 = MEMORY[0x277D84FA0];
    }

    sub_2450D2A54(v25, v8);
  }

  swift_beginAccess();
  if (*(v8 + 16))
  {
    v26 = *(v8 + 16);
  }

  else
  {
    v26 = v20;
  }

  v27 = *(v26 + 16);
  if (!v27)
  {

    v28 = MEMORY[0x277D84F90];
    v32 = *(MEMORY[0x277D84F90] + 16);
    if (v32)
    {
LABEL_32:
      v33 = v28 + 4;
      swift_beginAccess();
      v34 = MEMORY[0x277D84F90];
      do
      {
        v36 = *v33++;
        v35 = v36;
        v37 = v2[3];
        if (*(v37 + 16) && (v38 = sub_2450C8178(v35), (v39 & 1) != 0))
        {
          sub_2450C9B28(*(v37 + 56) + 96 * v38, &v47);
        }

        else
        {
          v50 = 0u;
          memset(v51, 0, 25);
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_2450D2CBC(0, v34[2] + 1, 1, v34);
        }

        v41 = v34[2];
        v40 = v34[3];
        if (v41 >= v40 >> 1)
        {
          v34 = sub_2450D2CBC((v40 > 1), v41 + 1, 1, v34);
        }

        v34[2] = v41 + 1;
        v42 = &v34[12 * v41];
        v43 = v48;
        v42[2] = v47;
        v42[3] = v43;
        v44 = v49;
        v45 = v50;
        v46 = v51[0];
        *(v42 + 105) = *(v51 + 9);
        v42[5] = v45;
        v42[6] = v46;
        v42[4] = v44;
        --v32;
      }

      while (v32);

      goto LABEL_45;
    }

LABEL_44:

    v34 = MEMORY[0x277D84F90];
LABEL_45:

    return v34;
  }

  v28 = sub_2450D31B0(v27, 0);
  v29 = sub_2450D4C00(&v47, v28 + 4, v27, v26);
  v30 = v47;

  result = sub_24509BD4C(v30);
  if (v29 == v27)
  {
    v32 = v28[2];
    if (v32)
    {
      goto LABEL_32;
    }

    goto LABEL_44;
  }

  __break(1u);
  return result;
}

uint64_t sub_2450D2A54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(a2 + 16))
  {
    v7 = *(a2 + 16);
    swift_bridgeObjectRetain_n();

    sub_2450D499C(v4);

    sub_2450D2B30(v5);
    sub_2450D4B08(v7);

    swift_beginAccess();
    *(a2 + 16) = v7;
  }

  else
  {
    swift_beginAccess();
    *(a2 + 16) = a1;
  }
}

uint64_t sub_2450D2B30(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_2450D62D8(v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_2450D2C10()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2450D2C84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_2450D2CBC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EF0, &qword_2450EEC38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D38, &qword_2450EEC40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2450D2E00(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7C58, &unk_2450EDCA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78A8, &qword_2450ECFF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2450D2F34(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F20, &qword_2450EEC70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7900, &unk_2450EDD80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2450D307C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F10, &qword_2450EEC60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F18, &qword_2450EEC68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2450D31B0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7EF8, &qword_2450EEC48);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_2450D3234@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_2450D3264(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2450D3284(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_2450E5EE8();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2450D7060();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_2450D3470(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_2450D3374(unsigned int a1)
{
  v3 = *v1;
  v4 = MEMORY[0x245D62B60](*(*v1 + 40), a1, 4);
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (*(*(v3 + 48) + 4 * v6) != a1)
    {
      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    v13 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2450D71A0();
      v11 = v13;
    }

    v8 = *(*(v11 + 48) + 4 * v6);
    sub_2450D35F4(v6);
    v9 = 0;
    *v1 = v13;
  }

  else
  {
LABEL_5:
    v8 = 0;
    v9 = 1;
  }

  return v8 | (v9 << 32);
}

unint64_t sub_2450D3470(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2450E5A28();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_2450E5EE8() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2450D35F4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2450E5A28();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 4 * v6);
        v12 = MEMORY[0x245D62B60](*(v3 + 40), *v11, 4) & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 4 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2450D377C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 8 * result;
  *v4 = a2;
  *(v4 + 4) = BYTE4(a2) & 1;
  *(a4[7] + 8 * result) = a3;
  v5 = a4[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v7;
  }

  return result;
}

uint64_t sub_2450D37D0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v28 = v10;
  v11 = sub_2450C8178(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_2450DD9D0(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_2450C8178(a2);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    v11 = sub_2450E5E88();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = v11;
    sub_2450C93C0();
    v11 = v21;
    v18 = v28;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    v22 = v11;
    v23 = __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 3));
    MEMORY[0x28223BE20](v23);
    v25 = (&v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    sub_2450D4E0C(v22, a2, *v25, v18);
    result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    goto LABEL_11;
  }

LABEL_6:
  v18 = v28;
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v19 = 40 * v11;
  sub_2450C5C34((v18[7] + 40 * v11), a3);
  result = sub_2450C5C34(a1, v18[7] + v19);
LABEL_11:
  *v5 = v18;
  return result;
}

unint64_t sub_2450D39C4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  result = sub_2450C80E8(a2, a3 & 1);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_2450DDC50(v16, isUniquelyReferenced_nonNull_native);
    result = sub_2450C80E8(a2, a3 & 1);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F00, &qword_2450EEC50);
    result = sub_2450E5E88();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = result;
    sub_2450C9540();
    result = v21;
    v18 = v10;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  v18 = v10;
  if (v4)
  {
LABEL_7:
    v19 = v18[7];
    v20 = *(v19 + 8 * result);
    *(v19 + 8 * result) = a1;
LABEL_12:
    *v5 = v18;
    return v20;
  }

LABEL_10:
  v18[(result >> 6) + 8] |= 1 << result;
  v22 = v18[6] + 16 * result;
  *v22 = a2;
  *(v22 + 8) = a3 & 1;
  *(v18[7] + 8 * result) = a1;
  v23 = v18[2];
  v24 = v23 + 1;
  if (!__OFADD__(v23, 1))
  {
    v20 = 0;
    v18[2] = v24;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2450D3B30(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  v8 = HIDWORD(a2) & 1;
  v9 = a2;
  v10 = sub_2450C8058(a2 | (v8 << 32));
  v12 = v7[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  LOBYTE(a2) = v11;
  if (v7[3] < v15)
  {
    sub_2450DDF10(v15, isUniquelyReferenced_nonNull_native);
    v10 = sub_2450C8058(v9 | (v8 << 32));
    if ((a2 & 1) == (v16 & 1))
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F08, &qword_2450EEC58);
    v10 = sub_2450E5E88();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v19 = v10;
    sub_2450C96B0();
    v10 = v19;
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_2450D377C(v10, v9 | (v8 << 32), a1, v7);
    v18 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((a2 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v17 = v7[7];
  v18 = *(v17 + 8 * v10);
  *(v17 + 8 * v10) = a1;
LABEL_11:
  *v3 = v7;
  return v18;
}

unint64_t sub_2450D3C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  result = sub_2450C7FE0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_2450DE1D8(v16, isUniquelyReferenced_nonNull_native);
    result = sub_2450C7FE0(a2, a3);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    result = sub_2450E5E88();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v20 = result;
    sub_2450C9820();
    result = v20;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  if (v4)
  {
LABEL_7:
    v18 = v10[7];
    v19 = *(v18 + 8 * result);
    *(v18 + 8 * result) = a1;
LABEL_12:
    *v5 = v10;
    return v19;
  }

LABEL_10:
  v10[(result >> 6) + 8] |= 1 << result;
  v21 = (v10[6] + 16 * result);
  *v21 = a2;
  v21[1] = a3;
  *(v10[7] + 8 * result) = a1;
  v22 = v10[2];
  v15 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (!v15)
  {
    v10[2] = v23;

    v19 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_2450D3DC4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  result = sub_2450C8178(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_2450DE480(v16, isUniquelyReferenced_nonNull_native);
    result = sub_2450C8178(a2);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    result = sub_2450E5E88();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v24 = result;
    sub_2450C9990();
    result = v24;
    v18 = v10;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  v18 = v10;
  if (v4)
  {
LABEL_7:
    v19 = (v18[7] + 96 * result);
    v20 = v19[3];
    a3[2] = v19[2];
    a3[3] = v20;
    a3[4] = v19[4];
    *(a3 + 73) = *(v19 + 73);
    v21 = v19[1];
    *a3 = *v19;
    a3[1] = v21;
    v22 = a1[3];
    v19[2] = a1[2];
    v19[3] = v22;
    v19[4] = a1[4];
    *(v19 + 73) = *(a1 + 73);
    v23 = a1[1];
    *v19 = *a1;
    v19[1] = v23;
LABEL_12:
    *v5 = v18;
    return result;
  }

LABEL_10:
  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a2;
  v25 = (v18[7] + 96 * result);
  v26 = a1[1];
  *v25 = *a1;
  v25[1] = v26;
  *(v25 + 73) = *(a1 + 73);
  v27 = a1[4];
  v25[3] = a1[3];
  v25[4] = v27;
  v25[2] = a1[2];
  v28 = v18[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v15)
  {
    v18[2] = v29;
    *a3 = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    a3[4] = 0u;
    *(a3 + 73) = 0u;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2450D3F80(uint64_t *a1, uint64_t a2, char a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_2450D4940(v7);
  v7[9] = sub_2450D41F0(v7 + 4, a2, a3 & 1, isUniquelyReferenced_nonNull_native);
  return sub_2450D4EB8;
}

uint64_t (*sub_2450D402C(uint64_t *a1, unint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_2450D4940(v5);
  v5[9] = sub_2450D4494(v5 + 4, a2 | ((HIDWORD(a2) & 1) << 32), isUniquelyReferenced_nonNull_native);
  return sub_2450D4EB8;
}

uint64_t (*sub_2450D40E0(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_2450D4968(v7);
  v7[9] = sub_2450D46A4(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_2450D418C;
}

void sub_2450D4190(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2450D41F0(uint64_t *a1, uint64_t a2, char a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  v11 = v10;
  *a1 = v10;
  *(v10 + 32) = a3;
  *(v10 + 8) = a2;
  *(v10 + 16) = v4;
  v12 = *v4;
  v13 = sub_2450C80E8(a2, a3 & 1);
  *(v11 + 33) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_2450C9540();
      v13 = v21;
      goto LABEL_11;
    }

    sub_2450DDC50(v18, a4 & 1);
    v13 = sub_2450C80E8(a2, a3 & 1);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F00, &qword_2450EEC50);
    result = sub_2450E5E88();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v11 + 24) = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_2450D4354;
}

void sub_2450D4354(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(v2 + 33);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[3];
    v6 = *v2[2];
    if (*(v2 + 33))
    {
      goto LABEL_9;
    }

    v7 = *(v2 + 32);
    v8 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = v6[6] + 16 * v5;
    *v9 = v8;
    *(v9 + 8) = v7 & 1;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      sub_2450C8A38(v2[3], *v2[2]);
    }

    goto LABEL_14;
  }

  v5 = v2[3];
  v6 = *v2[2];
  if ((v4 & 1) == 0)
  {
    v12 = *(v2 + 32);
    v13 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v14 = v6[6] + 16 * v5;
    *v14 = v13;
    *(v14 + 8) = v12 & 1;
    *(v6[7] + 8 * v5) = v3;
    v15 = v6[2];
    v11 = __OFADD__(v15, 1);
    v4 = v15 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

void (*sub_2450D4494(uint64_t *a1, unint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = HIDWORD(a2) & 1;
  v12 = a2;
  v13 = sub_2450C8058(a2 | (v11 << 32));
  *(v9 + 32) = v14 & 1;
  v15 = *(v10 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v10 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      v21 = v13;
      sub_2450C96B0();
      v13 = v21;
      goto LABEL_11;
    }

    sub_2450DDF10(v18, a3 & 1);
    v13 = sub_2450C8058(v12 | (v11 << 32));
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F08, &qword_2450EEC58);
    result = sub_2450E5E88();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v13;
  if (v19)
  {
    v23 = *(*(*v4 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v9 = v23;
  return sub_2450D45FC;
}

void sub_2450D45FC(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_2450D377C(v4, v1[1] | ((HIDWORD(v1[1]) & 1) << 32), v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    sub_2450C8C00(v1[3], *v1[2]);
  }

  free(v1);
}

void (*sub_2450D46A4(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_2450C7FE0(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_2450C9820();
      v13 = v21;
      goto LABEL_11;
    }

    sub_2450DE1D8(v18, a4 & 1);
    v13 = sub_2450C7FE0(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2450E5E88();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_2450D47FC;
}

void sub_2450D47FC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_2450D4D68(*(v13 + 48) + 16 * v12);
      sub_2450C8DC8(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_2450D4940(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2450D4EAC;
}

uint64_t (*sub_2450D4968(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2450D4990;
}

uint64_t sub_2450D499C(uint64_t result)
{
  v2 = result;
  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_2450D3284(v11))
  {
LABEL_11:
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(*(v2 + 48) + ((v3 << 9) | (8 * v10)));
      v12 = *v1;
      if (*(*v1 + 16))
      {
        v13 = sub_2450E5EE8();
        v14 = -1 << *(v12 + 32);
        v15 = v13 & ~v14;
        if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
        {
          break;
        }
      }

LABEL_6:
      result = sub_2450D62D8(v17, v11);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v16 = ~v14;
    while (*(*(v12 + 48) + 8 * v15) != v11)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= i)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_11;
    }
  }
}

uint64_t sub_2450D4B08(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_2450D3284(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_2450D4C00(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_2450D4D00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D38, &qword_2450EEC40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_2450D4E0C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = type metadata accessor for HADRegisteredClient();
  v14 = &off_2858011B0;
  *&v12 = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_2450C5C34(&v12, a4[7] + 40 * a1);
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2450D4ED0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2450D4EF0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_2450D4F30(void *a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  v13 = a5;
  v12[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F38, &qword_2450EECF8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450D54BC();
  sub_2450E5F58();
  v15 = 0;
  sub_2450E5DB8();
  if (!v5)
  {
    v14 = 1;
    sub_2450E5D88();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2450D50D0()
{
  if (*v0)
  {
    return 0x646F43726F727265;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_2450D5114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000002450F3EF0 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2450E5E68();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2450D5204(uint64_t a1)
{
  v2 = sub_2450D54BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450D5240(uint64_t a1)
{
  v2 = sub_2450D54BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450D527C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_2450D52F4(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_2450D52F4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F28, &qword_2450EECF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_2450D54BC();
  sub_2450E5F48();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v13[31] = 0;
    v7 = sub_2450E5CB8();
    v9 = v8;
    v13[30] = 1;
    sub_2450E5C88();
    v12 = v11;
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v13[24] = v9 & 1;
    v13[8] = v12 & 1;
  }

  return v7;
}

unint64_t sub_2450D54BC()
{
  result = qword_27EDF7F30;
  if (!qword_27EDF7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7F30);
  }

  return result;
}

unint64_t sub_2450D5524()
{
  result = qword_27EDF7F40;
  if (!qword_27EDF7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7F40);
  }

  return result;
}

unint64_t sub_2450D557C()
{
  result = qword_27EDF7F48;
  if (!qword_27EDF7F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7F48);
  }

  return result;
}

unint64_t sub_2450D55D4()
{
  result = qword_27EDF7F50;
  if (!qword_27EDF7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7F50);
  }

  return result;
}

uint64_t sub_2450D5628()
{
  sub_2450D5690();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id sub_2450D5690()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v1 = sub_2450E5638();
  __swift_project_value_buffer(v1, qword_27EE0AEC8);
  v2 = sub_2450E5628();
  v3 = sub_2450E5988();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24508F000, v2, v3, "Destroying IO Proc", v4, 2u);
    MEMORY[0x245D63500](v4, -1, -1);
  }

  result = [*(v0 + 16) destroyHALIOProc];
  if (result)
  {
    v6 = result;
    v7 = sub_2450E5628();
    v8 = sub_2450E59A8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24508F000, v7, v8, "Could not destory IOProc for provided deviceID!", v9, 2u);
      MEMORY[0x245D63500](v9, -1, -1);
    }

    return v6;
  }

  return result;
}

uint64_t sub_2450D58E4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 36);
  v7 = *(a3 + 72);
  v9 = *a1;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  return v7(&v9, a2);
}

uint64_t sub_2450D5938(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 36);
  v7 = *(a3 + 80);
  v9 = *a1;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  return v7(&v9, a2);
}

uint64_t sub_2450D5990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 40);
  v5 = *(a3 + 88);
  v7[0] = *a1;
  v7[1] = v3;
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v10 = v4;
  return v5(v7, a2);
}

uint64_t sub_2450D59E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 40);
  v7 = *(a5 + 96);
  v9[0] = *a1;
  v9[1] = v5;
  v10 = *(a1 + 16);
  v11 = *(a1 + 32);
  v12 = v6;
  return v7(v9, a2, a3, a4);
}

void *sub_2450D5A88()
{
  v1 = v0;
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v2 = sub_2450E5638();
  __swift_project_value_buffer(v2, qword_27EE0AEC8);
  v3 = sub_2450E5628();
  v4 = sub_2450E5988();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24508F000, v3, v4, "OrchestratorClient deallocated", v5, 2u);
    MEMORY[0x245D63500](v5, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 24));

  return v1;
}

uint64_t sub_2450D5B80()
{
  sub_2450D5A88();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_2450D5BD8(char *a1)
{
  v2 = v1;
  v4 = sub_2450E56C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v9 = sub_2450E5638();
  __swift_project_value_buffer(v9, qword_27EE0AEC8);
  v10 = sub_2450E5628();
  v11 = sub_2450E5988();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_24508F000, v10, v11, "OrchestratorClient should register", v12, 2u);
    MEMORY[0x245D63500](v12, -1, -1);
  }

  v13 = *(v2 + 64);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v8;

  sub_2450AC180(sub_2450D7C44, v15);

  v19 = v8;
  if (*(v13 + 16))
  {

    sub_2450E5728();

    v17 = sub_2450B0C1C(&v19, v7);
    (*(v5 + 8))(v7, v4);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2450D5E24(char a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v9 = a3 & 1;
    sub_2450B0EF8(&v9, a1 & 1);
  }

  else
  {
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v5 = sub_2450E5638();
    __swift_project_value_buffer(v5, qword_27EE0AEC8);
    v6 = sub_2450E5628();
    v7 = sub_2450E59A8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24508F000, v6, v7, "Client unavailable for hardware availability handler!", v8, 2u);
      MEMORY[0x245D63500](v8, -1, -1);
    }
  }
}

uint64_t sub_2450D5F58(_BYTE *a1)
{
  LOBYTE(v1) = *a1;
  if (qword_27EDF6748 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v2 = sub_2450E5638();
    __swift_project_value_buffer(v2, qword_27EE0AEC8);
    v3 = sub_2450E5628();
    v4 = sub_2450E5988();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24508F000, v3, v4, "OrchestratorClient submitting available devices for configuration", v5, 2u);
      MEMORY[0x245D63500](v5, -1, -1);
    }

    v24 = MEMORY[0x277D84FA0];
    v22 = v1;
    v6 = sub_2450D82CC()[6];
    if ((v6 & 0xC000000000000001) != 0)
    {

      sub_2450E5A48();
      type metadata accessor for AudioDeviceInfo();
      sub_2450CB9D8();
      sub_2450E5948();
      v6 = v25;
      v7 = v26;
      v1 = v27;
      v8 = v28;
      v9 = v29;
    }

    else
    {
      v10 = -1 << *(v6 + 32);
      v7 = v6 + 56;
      v1 = ~v10;
      v11 = -v10;
      v12 = v11 < 64 ? ~(-1 << v11) : -1;
      v9 = v12 & *(v6 + 56);

      v8 = 0;
    }

    if (v6 < 0)
    {
      break;
    }

LABEL_11:
    v13 = v8;
    v14 = v9;
    v15 = v8;
    if (v9)
    {
LABEL_15:
      v16 = (v14 - 1) & v14;
      v17 = *(*(v6 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

      if (v17)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v1 + 64) >> 6))
      {
        goto LABEL_21;
      }

      v14 = *(v7 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  while (sub_2450E5AB8())
  {
    type metadata accessor for AudioDeviceInfo();
    swift_dynamicCast();
    v17 = v23;
    v15 = v8;
    v16 = v9;
    if (!v23)
    {
      break;
    }

LABEL_19:
    v18 = *(v17 + 24);
    v19 = *(v17 + 32);

    sub_2450D64A0(&v23, v18, v19);

    v8 = v15;
    v9 = v16;
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_21:
  sub_24509BD4C(v6);

  LOBYTE(v23) = v22;
  v20 = sub_2450B10BC(&v23, v24);

  return v20;
}

uint64_t sub_2450D62D8(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_2450E5EE8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2450D6C9C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2450D63B8(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x245D62B60](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2450D6DBC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2450D64A0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2450E5EF8();
  sub_2450E5838();
  v8 = sub_2450E5F38();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2450E5E68() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2450D6EE0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2450D65F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F58, "܅");
  result = sub_2450E5B28();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_2450E5EE8();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2450D6814(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F60, "ޅ");
  result = sub_2450E5B28();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      result = MEMORY[0x245D62B60](*(v5 + 40), v17, 4);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2450D6A3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7C50, &unk_2450EDC90);
  result = sub_2450E5B28();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_2450E5EF8();
      sub_2450E5838();
      result = sub_2450E5F38();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2450D6C9C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2450D65F0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2450D7060();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2450D743C(v5 + 1);
  }

  v8 = *v3;
  result = sub_2450E5EE8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2450E5E78();
  __break(1u);
  return result;
}

uint64_t sub_2450D6DBC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2450D6814(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2450D71A0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2450D762C(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x245D62B60](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2450E5E78();
  __break(1u);
  return result;
}

uint64_t sub_2450D6EE0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2450D6A3C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2450D72E0();
      goto LABEL_16;
    }

    sub_2450D7820(v8 + 1);
  }

  v10 = *v4;
  sub_2450E5EF8();
  sub_2450E5838();
  result = sub_2450E5F38();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2450E5E68();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2450E5E78();
  __break(1u);
  return result;
}

void *sub_2450D7060()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F58, "܅");
  v2 = *v0;
  v3 = sub_2450E5B18();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_2450D71A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F60, "ޅ");
  v2 = *v0;
  v3 = sub_2450E5B18();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_2450D72E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7C50, &unk_2450EDC90);
  v2 = *v0;
  v3 = sub_2450E5B18();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

uint64_t sub_2450D743C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F58, "܅");
  result = sub_2450E5B28();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_2450E5EE8();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_2450D762C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F60, "ޅ");
  result = sub_2450E5B28();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      result = MEMORY[0x245D62B60](*(v5 + 40), v16, 4);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_2450D7820(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7C50, &unk_2450EDC90);
  result = sub_2450E5B28();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2450E5EF8();

      sub_2450E5838();
      result = sub_2450E5F38();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2450D7AD8(const char *a1, uint64_t (*a2)(void))
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v3 = sub_2450E5638();
  __swift_project_value_buffer(v3, qword_27EE0AEC8);
  v4 = sub_2450E5628();
  v5 = sub_2450E5988();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24508F000, v4, v5, a1, v6, 2u);
    MEMORY[0x245D63500](v6, -1, -1);
  }

  return a2();
}

uint64_t sub_2450D7BD4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2450D7C0C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

void *sub_2450D7C74(uint64_t a1, void *a2)
{
  v4 = sub_2450E56F8();
  MEMORY[0x28223BE20](v4 - 8);
  v7[3] = type metadata accessor for TempClientHardware();
  v7[4] = &off_2858027B8;
  v7[0] = a1;
  a2[10] = sub_2450AC098;
  a2[11] = 0;
  sub_2450AD6FC(v7, (a2 + 5));
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0xE000000000000000;

  sub_2450E56E8();
  sub_2450E5738();
  swift_allocObject();
  v5 = sub_2450E56D8();
  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  a2[2] = v5;

  return a2;
}

uint64_t sub_2450D7D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TempClientHardware();
  v22[3] = v6;
  v22[4] = &off_2858027B8;
  v22[0] = a2;
  *(a3 + 16) = a1;
  sub_2450AD6FC(v22, a3 + 24);
  sub_2450AD6FC(a3 + 24, v21);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v21, v21[3]);
  MEMORY[0x28223BE20](v7);
  v9 = (&v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v20[3] = v6;
  v20[4] = &off_2858027B8;
  v20[0] = v11;
  type metadata accessor for ClientHardwareXPCService();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v6);
  MEMORY[0x28223BE20](v13);
  v15 = (&v20[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_2450D7C74(*v15, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  *(a3 + 64) = v17;
  return a3;
}

uint64_t sub_2450D7F88()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v0 = sub_2450E5638();
  __swift_project_value_buffer(v0, qword_27EE0AEC8);
  v1 = sub_2450E5628();
  v2 = sub_2450E5988();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24508F000, v1, v2, "OrchestratorClient allocated", v3, 2u);
    MEMORY[0x245D63500](v3, -1, -1);
  }

  type metadata accessor for OrchestratorClientMessageProtocol();
  v4 = swift_allocObject();
  type metadata accessor for RegistrationMessageAuthor();
  *(v4 + 24) = swift_allocObject();
  type metadata accessor for ServerXPCConnection();
  swift_allocObject();
  *(v4 + 16) = sub_2450A7230(0xD00000000000002ELL, 0x80000002450F3A50, sub_2450B09FC, 0);
  v14 = type metadata accessor for TempClientHardware();
  v15 = &off_2858027B8;
  v13[0] = swift_allocObject();
  type metadata accessor for OrchestratorClient();
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  MEMORY[0x28223BE20](v6);
  v8 = (&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = sub_2450D7D94(v4, *v8, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  return v10;
}

void sub_2450D81EC()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v0 = sub_2450E5638();
  __swift_project_value_buffer(v0, qword_27EE0AEC8);
  v1 = sub_2450E5628();
  v2 = sub_2450E5988();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24508F000, v1, v2, "TempClientHardware - NO OP!", v3, 2u);
    MEMORY[0x245D63500](v3, -1, -1);
  }
}

void *sub_2450D82CC()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v0 = sub_2450E5638();
  __swift_project_value_buffer(v0, qword_27EE0AEC8);
  v1 = sub_2450E5628();
  v2 = sub_2450E5988();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24508F000, v1, v2, "TempClientHardware - NO OP!", v3, 2u);
    MEMORY[0x245D63500](v3, -1, -1);
  }

  type metadata accessor for AudioSystemInfo();
  result = swift_allocObject();
  result[2] = 0;
  result[3] = 0xE000000000000000;
  result[4] = 0;
  result[5] = 0xE000000000000000;
  result[6] = MEMORY[0x277D84FA0];
  return result;
}

void sub_2450D83D8()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v0 = sub_2450E5638();
  __swift_project_value_buffer(v0, qword_27EE0AEC8);
  oslog = sub_2450E5628();
  v1 = sub_2450E5988();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_24508F000, oslog, v1, "TempClientHardware - NO OP!", v2, 2u);
    MEMORY[0x245D63500](v2, -1, -1);
  }
}

double sub_2450D84C0@<D0>(uint64_t a1@<X8>)
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v2 = sub_2450E5638();
  __swift_project_value_buffer(v2, qword_27EE0AEC8);
  v3 = sub_2450E5628();
  v4 = sub_2450E5988();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24508F000, v3, v4, "TempClientHardware - NO OP!", v5, 2u);
    MEMORY[0x245D63500](v5, -1, -1);
  }

  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_2450D85AC()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v0 = sub_2450E5638();
  __swift_project_value_buffer(v0, qword_27EE0AEC8);
  v1 = sub_2450E5628();
  v2 = sub_2450E5988();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24508F000, v1, v2, "TempClientHardware - NO OP!", v3, 2u);
    MEMORY[0x245D63500](v3, -1, -1);
  }

  return 0;
}

uint64_t sub_2450D869C()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v0 = sub_2450E5638();
  __swift_project_value_buffer(v0, qword_27EE0AEC8);
  v1 = sub_2450E5628();
  v2 = sub_2450E5988();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24508F000, v1, v2, "TempClientHardware - NO OP!", v3, 2u);
    MEMORY[0x245D63500](v3, -1, -1);
  }

  return 0;
}

uint64_t sub_2450D877C()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v0 = sub_2450E5638();
  __swift_project_value_buffer(v0, qword_27EE0AEC8);
  v1 = sub_2450E5628();
  v2 = sub_2450E5988();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24508F000, v1, v2, "TempClientHardware - NO OP!", v3, 2u);
    MEMORY[0x245D63500](v3, -1, -1);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_2450D8904@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (qword_27EDF6718 != -1)
  {
    result = swift_once();
  }

  v4 = qword_27EE0AEA0;
  if (*(qword_27EE0AEA0 + 16) && (result = sub_2450C81F8(v3), (v5 & 1) != 0))
  {
    v6 = (*(v4 + 56) + 16 * result);
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (qword_27EDF6720 != -1)
  {
    result = swift_once();
  }

  v9 = qword_27EE0AEA8;
  if (*(qword_27EE0AEA8 + 16))
  {
    result = sub_2450C81F8(v3);
    if (v10)
    {
      v11 = (*(v9 + 56) + 16 * result);
      v12 = *v11;
      v13 = v11[1];

      if ((v3 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_17:
      if (qword_27EDF6728 == -1)
      {
LABEL_18:
        v15 = qword_27EE0AEB0;
        if (*(qword_27EE0AEB0 + 16) && (result = sub_2450C81F8(1), (v16 & 1) != 0))
        {
          v17 = *(*(v15 + 56) + 8 * result);
          result = v17;
        }

        else
        {
          v17 = 0;
        }

        if (qword_27EDF6730 != -1)
        {
          result = swift_once();
        }

        v18 = qword_27EE0AEB8;
        if (*(qword_27EE0AEB8 + 16) && (result = sub_2450C81F8(1), (v19 & 1) != 0))
        {
          result = sub_24509FAE0(*(v18 + 56) + 32 * result, v27);
        }

        else
        {
          memset(v27, 0, sizeof(v27));
        }

        if (qword_27EDF6758 == -1)
        {
          if (v17)
          {
            goto LABEL_30;
          }
        }

        else
        {
          result = swift_once();
          if (v17)
          {
LABEL_30:
            result = sub_2450C5BCC(v27, v24, &qword_27EDF7D48, &unk_2450EDDC0);
            if (v25)
            {
              if (v8)
              {
                if (v13)
                {
                  v20 = type metadata accessor for NSXPCClientPortal();
                  swift_allocObject();
                  v21 = v17;
                  v22 = sub_24509F760(v21, v24, v7, v8, v12, v13);
                  v25 = v20;
                  v26 = &off_2857FFAE8;
                  *v24 = v22;
                  swift_beginAccess();
                  sub_2450D8DA4(v24, &xmmword_27EE0AEE8);
                  swift_endAccess();

                  sub_24509F608(v27, &qword_27EDF7D48, &unk_2450EDDC0);
                  goto LABEL_34;
                }

LABEL_48:
                __break(1u);
                return result;
              }

LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

LABEL_46:
            __break(1u);
            goto LABEL_47;
          }
        }

        __break(1u);
        goto LABEL_45;
      }

LABEL_42:
      result = swift_once();
      goto LABEL_18;
    }
  }

  v12 = 0;
  v13 = 0;
  if (v3)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (qword_27EDF6758 == -1)
  {
    if (v8)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

  result = swift_once();
  if (!v8)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_14:
  if (!v13)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v14 = type metadata accessor for SwiftXPCClientPortal();
  swift_allocObject();
  v25 = v14;
  v26 = &off_2858011E0;
  *v24 = sub_2450B14E0(v7, v8, v12, v13);
  swift_beginAccess();
  sub_2450D8DA4(v24, &xmmword_27EE0AEE8);
  swift_endAccess();
LABEL_34:
  if (qword_27EDF6758 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2450C5BCC(&xmmword_27EE0AEE8, v24, &qword_27EDF7F68, qword_2450EF090);
  v23 = v25;
  sub_24509F608(v24, &qword_27EDF7F68, qword_2450EF090);
  if (v23)
  {
    v24[0] = v3;
    sub_2450CE3F0(v24);
    if (v3)
    {
      v24[0] = v3;
      sub_2450CE538(v24);
    }
  }

  return sub_2450C5BCC(&xmmword_27EE0AEE8, a2, &qword_27EDF7F68, qword_2450EF090);
}

double sub_2450D8D68()
{
  qword_27EE0AF08 = 0;
  result = 0.0;
  xmmword_27EE0AEE8 = 0u;
  unk_27EE0AEF8 = 0u;
  return result;
}

uint64_t sub_2450D8DA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F68, qword_2450EF090);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2450D8E64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2450D8EB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2450D8F54(uint64_t a1)
{
  v2 = sub_2450DAA9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450D8F90(uint64_t a1)
{
  v2 = sub_2450DAA9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450D90A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void), uint64_t a9)
{
  v17[2] = a3;
  v18 = a5;
  v17[1] = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a8();
  sub_2450E5F58();
  v20 = 0;
  v15 = v17[3];
  sub_2450E5DC8();
  if (!v15)
  {
    v19 = 1;
    sub_2450E5D88();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_2450D9240()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_2450D927C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2450E5E68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002450F4120 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2450E5E68();

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

uint64_t sub_2450D9360(uint64_t a1)
{
  v2 = sub_2450DAA48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450D939C(uint64_t a1)
{
  v2 = sub_2450DAA48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450D9404@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

unint64_t sub_2450D94C8()
{
  result = qword_27EDF7F70;
  if (!qword_27EDF7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7F70);
  }

  return result;
}

unint64_t sub_2450D9548()
{
  result = qword_27EDF7F78;
  if (!qword_27EDF7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7F78);
  }

  return result;
}

uint64_t sub_2450D95AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2450E5E68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2450D9634(uint64_t a1)
{
  v2 = sub_2450DC158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450D9670(uint64_t a1)
{
  v2 = sub_2450DC158();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2450D96AC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2450DB40C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_2450D96D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8098, &qword_2450EF988);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DC158();
  sub_2450E5F58();
  sub_2450E5DC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2450D9814(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v12 = a4;
  v13 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8080, &qword_2450EF970);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DBEC8();
  sub_2450E5F58();
  LOBYTE(v14) = 0;
  sub_2450E5DC8();
  if (!v5)
  {
    v14 = v12;
    v15 = v13;
    v16 = 1;
    sub_2450C5A70(v12, v13);
    sub_2450A2C60();
    sub_2450E5E08();
    sub_2450A5294(v14, v15);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2450D99B0(uint64_t a1)
{
  v2 = sub_2450DBEC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450D99EC(uint64_t a1)
{
  v2 = sub_2450DBEC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450D9A28@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_2450C5A70(v2, v3);
}

uint64_t sub_2450D9A34@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2450DB5A0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_2450D9A84(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8078, &qword_2450EF968);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DBE74();
  sub_2450E5F58();
  v14 = 0;
  sub_2450E5DC8();
  if (!v4)
  {
    v13 = 1;
    sub_2450E5DD8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2450D9C18()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_2450D9C4C(uint64_t a1)
{
  v2 = sub_2450DBE74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450D9C88(uint64_t a1)
{
  v2 = sub_2450DBE74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450D9CD0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_2450DB7F8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_2450D9D24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8070, &qword_2450EF960);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DBE20();
  sub_2450E5F58();
  v14 = 0;
  sub_2450E5DC8();
  if (!v5)
  {
    v13 = 1;
    sub_2450E5DC8();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2450D9EB8(uint64_t a1)
{
  v2 = sub_2450DBE20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450D9EF4(uint64_t a1)
{
  v2 = sub_2450DBE20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450D9F30@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_2450D9F3C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2450DB9E0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_2450D9F8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8068, &qword_2450EF958);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DBDCC();
  sub_2450E5F58();
  v13 = 0;
  sub_2450E5DC8();
  if (!v4)
  {
    v12 = 1;
    sub_2450E5DF8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2450DA120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2450E5E68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2450E5E68();

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

uint64_t sub_2450DA1F8(uint64_t a1)
{
  v2 = sub_2450DBDCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450DA234(uint64_t a1)
{
  v2 = sub_2450DBDCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450DA27C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2450DBBE4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_2450DA2CC(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF80A0, &qword_2450EF990);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DC104();
  sub_2450E5F58();
  v14 = 0;
  sub_2450E5DC8();
  if (!v4)
  {
    v13 = 1;
    sub_2450E5E28();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2450DA45C()
{
  if (*v0)
  {
    return 0x4965736143657375;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_2450DA494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2450E5E68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4965736143657375 && a2 == 0xE900000000000044)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2450E5E68();

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

uint64_t sub_2450DA578(uint64_t a1)
{
  v2 = sub_2450DC104();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450DA5B4(uint64_t a1)
{
  v2 = sub_2450DC104();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450DA5F0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_2450DBF1C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_2450DA640(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F90, &unk_2450EF210);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v10 = &type metadata for SetPropertyHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D20, &qword_2450EDD98);
  sub_2450E5818();

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DAA9C();
  sub_2450E5F48();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_2450E5CC8();
    v9[14] = 1;
    sub_2450E5C88();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

uint64_t sub_2450DA844(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F80, &unk_2450EF200);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v10 = &type metadata for GetPropertyHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D30, &unk_2450EDDA0);
  sub_2450E5818();

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DAA48();
  sub_2450E5F48();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_2450E5CC8();
    v9[14] = 1;
    sub_2450E5C88();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_2450DAA48()
{
  result = qword_27EDF7F88;
  if (!qword_27EDF7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7F88);
  }

  return result;
}

unint64_t sub_2450DAA9C()
{
  result = qword_27EDF7F98;
  if (!qword_27EDF7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7F98);
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

uint64_t sub_2450DAB04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2450DAB4C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2450DABB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2450DAC00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2450DAC54(uint64_t a1, int a2)
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

uint64_t sub_2450DACA0(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_2450DAD14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_2450DAD5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2450DADD0()
{
  result = qword_27EDF7FB0;
  if (!qword_27EDF7FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7FB0);
  }

  return result;
}

unint64_t sub_2450DAE28()
{
  result = qword_27EDF7FB8;
  if (!qword_27EDF7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7FB8);
  }

  return result;
}

unint64_t sub_2450DAE7C(uint64_t a1)
{
  result = sub_2450B8C0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2450DAEA4(uint64_t a1)
{
  result = sub_2450B8B64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2450DAECC(uint64_t a1)
{
  result = sub_2450B8AB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2450DAEF4(uint64_t a1)
{
  result = sub_2450B88E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2450DAF48()
{
  result = qword_27EDF7FC0;
  if (!qword_27EDF7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7FC0);
  }

  return result;
}

unint64_t sub_2450DAFC8()
{
  result = qword_27EDF7FC8;
  if (!qword_27EDF7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7FC8);
  }

  return result;
}

unint64_t sub_2450DB048()
{
  result = qword_27EDF7FD0;
  if (!qword_27EDF7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7FD0);
  }

  return result;
}

unint64_t sub_2450DB0C8()
{
  result = qword_27EDF7FD8;
  if (!qword_27EDF7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7FD8);
  }

  return result;
}

unint64_t sub_2450DB148()
{
  result = qword_27EDF7FE0;
  if (!qword_27EDF7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7FE0);
  }

  return result;
}

uint64_t sub_2450DB1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2450DB204()
{
  result = qword_27EDF7FE8;
  if (!qword_27EDF7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7FE8);
  }

  return result;
}

unint64_t sub_2450DB258()
{
  result = qword_27EDF7FF0;
  if (!qword_27EDF7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7FF0);
  }

  return result;
}

unint64_t sub_2450DB2B0()
{
  result = qword_27EDF7FF8;
  if (!qword_27EDF7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF7FF8);
  }

  return result;
}

unint64_t sub_2450DB308()
{
  result = qword_27EDF8000;
  if (!qword_27EDF8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8000);
  }

  return result;
}

unint64_t sub_2450DB360()
{
  result = qword_27EDF8008;
  if (!qword_27EDF8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8008);
  }

  return result;
}

unint64_t sub_2450DB3B8()
{
  result = qword_27EDF8010;
  if (!qword_27EDF8010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8010);
  }

  return result;
}

void *sub_2450DB40C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8088, &unk_2450EF978);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v9[1] = &type metadata for GetPropertyResponseHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78B0, &unk_2450ED000);
  sub_2450E5818();

  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DC158();
  sub_2450E5F48();
  if (!v1)
  {
    v7 = sub_2450E5CC8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

uint64_t sub_2450DB5A0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8048, &unk_2450EF938);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v11[0] = &type metadata for DataPayload;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7938, &unk_2450ED150);
  sub_2450E5818();
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DBEC8();
  sub_2450E5F48();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    LOBYTE(v11[0]) = 0;
    v7 = sub_2450E5CC8();

    v12 = 1;
    sub_2450A2B84();
    sub_2450E5D08();
    (*(v4 + 8))(v6, v3);
    v9 = v11[0];
    v10 = v11[1];

    sub_2450C5A70(v9, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    sub_2450A5294(v9, v10);
  }

  return v7;
}

uint64_t sub_2450DB7F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8038, &qword_2450EF928);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v10 = &type metadata for BoolPayload;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7940, &qword_2450EF930);
  sub_2450E5818();

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DBE74();
  sub_2450E5F48();
  if (!v1)
  {
    v9[7] = 0;
    v7 = sub_2450E5CC8();
    v9[6] = 1;
    sub_2450E5CD8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

uint64_t sub_2450DB9E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8028, &unk_2450EF918);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v10 = &type metadata for StringPayload;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7948, &unk_2450ED160);
  sub_2450E5818();

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DBE20();
  sub_2450E5F48();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_2450E5CC8();
    v9[14] = 1;
    sub_2450E5CC8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

uint64_t sub_2450DBBE4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8018, &unk_2450EF908);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v10 = &type metadata for IntPayload;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7950, &qword_2450EDDD0);
  sub_2450E5818();

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DBDCC();
  sub_2450E5F48();
  if (!v1)
  {
    v9[7] = 0;
    v7 = sub_2450E5CC8();
    v9[6] = 1;
    sub_2450E5CF8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_2450DBDCC()
{
  result = qword_27EDF8020;
  if (!qword_27EDF8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8020);
  }

  return result;
}

unint64_t sub_2450DBE20()
{
  result = qword_27EDF8030;
  if (!qword_27EDF8030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8030);
  }

  return result;
}

unint64_t sub_2450DBE74()
{
  result = qword_27EDF8040;
  if (!qword_27EDF8040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8040);
  }

  return result;
}

unint64_t sub_2450DBEC8()
{
  result = qword_27EDF8050;
  if (!qword_27EDF8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8050);
  }

  return result;
}

uint64_t sub_2450DBF1C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8058, &qword_2450EF948);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v10 = &type metadata for IsolatedUseCaseDevicesAvailable;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7930, &qword_2450EF950);
  sub_2450E5818();

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DC104();
  sub_2450E5F48();
  if (!v1)
  {
    v9[7] = 0;
    v7 = sub_2450E5CC8();
    v9[6] = 1;
    sub_2450E5D28();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_2450DC104()
{
  result = qword_27EDF8060;
  if (!qword_27EDF8060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8060);
  }

  return result;
}

unint64_t sub_2450DC158()
{
  result = qword_27EDF8090;
  if (!qword_27EDF8090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8090);
  }

  return result;
}

unint64_t sub_2450DC210()
{
  result = qword_27EDF80A8;
  if (!qword_27EDF80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80A8);
  }

  return result;
}

unint64_t sub_2450DC268()
{
  result = qword_27EDF80B0;
  if (!qword_27EDF80B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80B0);
  }

  return result;
}

unint64_t sub_2450DC2C0()
{
  result = qword_27EDF80B8;
  if (!qword_27EDF80B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80B8);
  }

  return result;
}

unint64_t sub_2450DC318()
{
  result = qword_27EDF80C0;
  if (!qword_27EDF80C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80C0);
  }

  return result;
}

unint64_t sub_2450DC370()
{
  result = qword_27EDF80C8;
  if (!qword_27EDF80C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80C8);
  }

  return result;
}

unint64_t sub_2450DC3C8()
{
  result = qword_27EDF80D0;
  if (!qword_27EDF80D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80D0);
  }

  return result;
}

unint64_t sub_2450DC420()
{
  result = qword_27EDF80D8;
  if (!qword_27EDF80D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80D8);
  }

  return result;
}

unint64_t sub_2450DC478()
{
  result = qword_27EDF80E0;
  if (!qword_27EDF80E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80E0);
  }

  return result;
}

unint64_t sub_2450DC4D0()
{
  result = qword_27EDF80E8;
  if (!qword_27EDF80E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80E8);
  }

  return result;
}

unint64_t sub_2450DC528()
{
  result = qword_27EDF80F0;
  if (!qword_27EDF80F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80F0);
  }

  return result;
}

unint64_t sub_2450DC580()
{
  result = qword_27EDF80F8;
  if (!qword_27EDF80F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF80F8);
  }

  return result;
}

unint64_t sub_2450DC5D8()
{
  result = qword_27EDF8100;
  if (!qword_27EDF8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8100);
  }

  return result;
}

unint64_t sub_2450DC630()
{
  result = qword_27EDF8108;
  if (!qword_27EDF8108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8108);
  }

  return result;
}

unint64_t sub_2450DC688()
{
  result = qword_27EDF8110;
  if (!qword_27EDF8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8110);
  }

  return result;
}

unint64_t sub_2450DC6E0()
{
  result = qword_27EDF8118;
  if (!qword_27EDF8118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8118);
  }

  return result;
}

unint64_t sub_2450DC738()
{
  result = qword_27EDF8120;
  if (!qword_27EDF8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8120);
  }

  return result;
}

unint64_t sub_2450DC790()
{
  result = qword_27EDF8128;
  if (!qword_27EDF8128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8128);
  }

  return result;
}

unint64_t sub_2450DC7E8()
{
  result = qword_27EDF8130;
  if (!qword_27EDF8130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8130);
  }

  return result;
}

uint64_t sub_2450DC8F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_2450C8178(v3);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  result = swift_dynamicCastClass();
  if (result)
  {
    v6 = result;
    swift_unknownObjectRetain();
    return v6;
  }

  return result;
}

uint64_t sub_2450DC964()
{
  v1 = v0;
  if (qword_27EDF6738 != -1)
  {
    swift_once();
  }

  v2 = off_27EDF7D98;
  if (*(off_27EDF7D98 + 2) && (v3 = sub_2450C8284(1836346212), (v4 & 1) != 0))
  {
    v5 = *(v2[7] + 8 * v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7600, &unk_2450F0020);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2450EA8E0;
    type metadata accessor for UseCaseConfigurationBehavior();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(inited + 32) = v7;
    *(inited + 40) = &off_285801758;
    swift_retain_n();
    v8 = sub_2450C9B84(inited);
    swift_setDeallocating();
    swift_unknownObjectRelease();
    v9 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];

    v10 = v8;
    *(v1 + 16) = v9;
  }

  else
  {
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v11 = sub_2450E5638();
    __swift_project_value_buffer(v11, qword_27EE0AEC8);
    v12 = sub_2450E5628();
    v13 = sub_2450E59A8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24508F000, v12, v13, "Could not register the MAD client with appropriate behaviors!", v14, 2u);
      MEMORY[0x245D63500](v14, -1, -1);
    }

    *(v1 + 16) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    v10 = sub_2450C3028(MEMORY[0x277D84F90]);
  }

  *(v1 + 24) = v10;
  return v1;
}

uint64_t sub_2450DCB78(uint64_t a1)
{
  type metadata accessor for ClientHardwareConnectionBehavior();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;

  sub_2450DE74C(v4, v1, &off_285802190);

  v5 = *(v3 + 16);
  type metadata accessor for ClientHardwareProtocol();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  type metadata accessor for HardwareConfigurationBehavior();
  *(swift_allocObject() + 16) = v6;

  sub_2450DE74C(v7, v1, &off_285801E68);

  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  type metadata accessor for ADMBehavior();
  *(swift_allocObject() + 16) = v9;

  sub_2450DE74C(v10, v1, &off_2857FFA48);
}

id sub_2450DCCC4()
{
  v1 = type metadata accessor for ADMBehavior();
  v2 = *(v0 + 16);
  [v2 lock];
  swift_beginAccess();
  sub_2450C7F5C(v1);
  swift_endAccess();
  [v2 unlock];
  v3 = type metadata accessor for HardwareConfigurationBehavior();
  [v2 lock];
  swift_beginAccess();
  sub_2450C7F5C(v3);
  swift_endAccess();
  [v2 unlock];
  v4 = type metadata accessor for ClientHardwareConnectionBehavior();
  [v2 lock];
  swift_beginAccess();
  sub_2450C7F5C(v4);
  swift_endAccess();
  return [v2 unlock];
}

uint64_t sub_2450DCE04(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  [v3 lock];
  swift_beginAccess();
  v4 = sub_2450DC8F0(*(v2 + 24), type metadata accessor for UseCaseConfigurationBehavior);
  [v3 unlock];
  if (v4)
  {
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v5 = sub_2450E5638();
    __swift_project_value_buffer(v5, qword_27EE0AEC8);

    v6 = sub_2450E5628();
    v7 = sub_2450E5988();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      v10 = sub_2450E5928();
      v12 = sub_2450C0EE8(v10, v11, &v19);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_24508F000, v6, v7, "Available Hardware UIDs: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x245D63500](v9, -1, -1);
      MEMORY[0x245D63500](v8, -1, -1);
    }

    v13 = sub_2450DD098();
  }

  else
  {
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v14 = sub_2450E5638();
    __swift_project_value_buffer(v14, qword_27EE0AEC8);
    v15 = sub_2450E5628();
    v16 = sub_2450E59A8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24508F000, v15, v16, "MAD is missing Use Case Configuration Behavior!", v17, 2u);
      MEMORY[0x245D63500](v17, -1, -1);
    }

    return 1;
  }

  return v13;
}

uint64_t sub_2450DD098()
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v1 = sub_2450E5638();
  __swift_project_value_buffer(v1, qword_27EE0AEC8);
  v2 = sub_2450E5628();
  v3 = sub_2450E5988();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24508F000, v2, v3, "MAD self configuration executing...", v4, 2u);
    MEMORY[0x245D63500](v4, -1, -1);
  }

  v5 = *(v0 + 16);
  [v5 lock];
  swift_beginAccess();
  v6 = sub_2450DC8F0(*(v0 + 24), type metadata accessor for UseCaseConfigurationBehavior);
  [v5 unlock];
  if (!v6)
  {
    sub_2450B09A8();
    v13 = swift_allocError();
    *v14 = 0xD000000000000025;
    *(v14 + 8) = 0x80000002450F4180;
    *(v14 + 16) = 2;
    swift_willThrow();
    goto LABEL_15;
  }

  [v5 lock];
  v7 = sub_2450DC8F0(*(v0 + 24), type metadata accessor for HardwareConfigurationBehavior);
  [v5 unlock];
  if (!v7)
  {
    sub_2450B09A8();
    v13 = swift_allocError();
    *v15 = 0xD000000000000033;
    *(v15 + 8) = 0x80000002450F41B0;
    *(v15 + 16) = 2;
    swift_willThrow();
LABEL_14:

LABEL_15:
    v17 = sub_2450E5628();
    v18 = sub_2450E59A8();
    if (os_log_type_enabled(v17, v18))
    {
      v12 = 2;
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24508F000, v17, v18, "Something went wrong when self configuring MAD", v19, 2u);
      MEMORY[0x245D63500](v19, -1, -1);
    }

    else
    {

      return 2;
    }

    return v12;
  }

  [v5 lock];
  v8 = sub_2450DC8F0(*(v0 + 24), type metadata accessor for ADMBehavior);
  [v5 unlock];
  if (!v8)
  {
    sub_2450B09A8();
    v13 = swift_allocError();
    *v16 = 0xD000000000000020;
    *(v16 + 8) = 0x80000002450F41F0;
    *(v16 + 16) = 2;
    swift_willThrow();

    goto LABEL_14;
  }

  v9 = sub_2450E5628();
  v10 = sub_2450E5988();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24508F000, v9, v10, "...MAD self configuration completed!", v11, 2u);
    MEMORY[0x245D63500](v11, -1, -1);
  }

  return sub_2450E5788();
}

uint64_t sub_2450DD4B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CC8, &qword_2450EDD28);
  result = sub_2450E5C18();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      result = sub_2450E5EE8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2450DD724(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CE0, &unk_2450EDD40);
  v30 = v4;
  result = sub_2450E5C18();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_2450E5EF8();
      sub_2450E5838();

      result = sub_2450E5F38();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2450DD9D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CE8, &unk_2450EE350);
  result = sub_2450E5C18();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_2450C5C34(v21, v31);
      }

      else
      {
        sub_2450AD6FC(v21, v31);
      }

      result = sub_2450E5EE8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_2450C5C34(v31, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2450DDC50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CB0, &qword_2450EDD10);
  v35 = v4;
  result = sub_2450E5C18();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v21 + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_2450E5EF8();
      sub_2450E5F18();
      if (!v24)
      {
        MEMORY[0x245D62B90](v23);
      }

      result = sub_2450E5F38();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_2450DDF10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CB8, &qword_2450EDD18);
  v36 = v4;
  result = sub_2450E5C18();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 8 * (v18 | (v8 << 6));
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + v21;
      v24 = *v23;
      v25 = *(v23 + 4);
      v26 = *(v22 + v21);
      if ((v36 & 1) == 0)
      {
      }

      sub_2450E5EF8();
      sub_2450E5F18();
      if (!v25)
      {
        sub_2450E5F28();
      }

      result = sub_2450E5F38();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 8 * v15;
      v17 = *(v7 + 48) + v16;
      *v17 = v24;
      *(v17 + 4) = v25;
      *(*(v7 + 56) + v16) = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_2450DE1D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7CC0, &qword_2450EDD20);
  v34 = v4;
  result = sub_2450E5C18();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_2450E5EF8();
      sub_2450E5838();
      result = sub_2450E5F38();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2450DE480(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7DF8, &qword_2450EE348);
  result = sub_2450E5C18();
  v7 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
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
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = *(*(v5 + 48) + 8 * v24);
      v26 = (*(v5 + 56) + 96 * v24);
      if (v4)
      {
        v27 = v26[1];
        v40 = *v26;
        v41 = v27;
        v28 = v26[2];
        v29 = v26[3];
        v30 = v26[4];
        *(v44 + 9) = *(v26 + 73);
        v43 = v29;
        v44[0] = v30;
        v42 = v28;
      }

      else
      {
        sub_2450C9B28(v26, &v40);
      }

      result = sub_2450E5EE8();
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
      *(*(v7 + 48) + 8 * v15) = v25;
      v16 = (*(v7 + 56) + 96 * v15);
      v17 = v41;
      *v16 = v40;
      v16[1] = v17;
      v18 = v42;
      v19 = v43;
      v20 = v44[0];
      *(v16 + 73) = *(v44 + 9);
      v16[3] = v19;
      v16[4] = v20;
      v16[2] = v18;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v38 = 1 << *(v5 + 32);
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

    v3 = v39;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

id sub_2450DE74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  [v6 lock];
  swift_beginAccess();
  ObjectType = swift_getObjectType();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + 24);
  *(a2 + 24) = 0x8000000000000000;
  sub_2450DE83C(a1, ObjectType, isUniquelyReferenced_nonNull_native, &v10, a3);
  *(a2 + 24) = v10;
  swift_endAccess();
  return [v6 unlock];
}

unint64_t sub_2450DE83C(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v10 = *a4;
  result = sub_2450C8178(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_2450DD4B0(v16, a3 & 1);
      result = sub_2450C8178(a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_2450E5E88();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2450C9100();
      result = v19;
    }
  }

  v21 = *a4;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a2;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a5;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a5;

  return swift_unknownObjectRelease();
}

uint64_t sub_2450DE9BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8178, &qword_2450F01E8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DF540();
  sub_2450E5F58();
  v13 = 0;
  sub_2450E5DC8();
  if (!v4)
  {
    v12 = 1;
    sub_2450E5DF8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2450DEB50()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_2450DEB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2450E5E68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002450F4220 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2450E5E68();

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

uint64_t sub_2450DEC6C(uint64_t a1)
{
  v2 = sub_2450DF540();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450DECA8(uint64_t a1)
{
  v2 = sub_2450DF540();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450DECE4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2450DF11C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_2450DED34(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8180, &qword_2450F01F0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DF4EC();
  sub_2450E5F58();
  v14 = 0;
  sub_2450E5DC8();
  if (!v4)
  {
    v13 = 1;
    sub_2450E5E28();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2450DEEC4(uint64_t a1)
{
  v2 = sub_2450DF4EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450DEF00(uint64_t a1)
{
  v2 = sub_2450DF4EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450DEF3C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_2450DF304(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_2450DEFB8()
{
  result = qword_27EDF8138;
  if (!qword_27EDF8138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8138);
  }

  return result;
}

uint64_t sub_2450DF038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2450DF074()
{
  result = qword_27EDF8140;
  if (!qword_27EDF8140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8140);
  }

  return result;
}

unint64_t sub_2450DF0C8()
{
  result = qword_27EDF8148;
  if (!qword_27EDF8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8148);
  }

  return result;
}

uint64_t sub_2450DF11C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8160, &qword_2450F01D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v10 = &type metadata for IncomingConfigurationEventHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8168, &qword_2450F01E0);
  sub_2450E5818();

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DF540();
  sub_2450E5F48();
  if (!v1)
  {
    v9[7] = 0;
    v7 = sub_2450E5CC8();
    v9[6] = 1;
    sub_2450E5CF8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

uint64_t sub_2450DF304(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8150, &unk_2450F01C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v10 = &type metadata for IsolatedUseCaseDevicesAvailabilityChanged;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF67E0, &unk_2450E7470);
  sub_2450E5818();

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450DF4EC();
  sub_2450E5F48();
  if (!v1)
  {
    v9[7] = 0;
    v7 = sub_2450E5CC8();
    v9[6] = 1;
    sub_2450E5D28();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_2450DF4EC()
{
  result = qword_27EDF8158;
  if (!qword_27EDF8158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8158);
  }

  return result;
}

unint64_t sub_2450DF540()
{
  result = qword_27EDF8170;
  if (!qword_27EDF8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8170);
  }

  return result;
}

unint64_t sub_2450DF5B8()
{
  result = qword_27EDF8188;
  if (!qword_27EDF8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8188);
  }

  return result;
}

unint64_t sub_2450DF610()
{
  result = qword_27EDF8190;
  if (!qword_27EDF8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8190);
  }

  return result;
}

unint64_t sub_2450DF668()
{
  result = qword_27EDF8198;
  if (!qword_27EDF8198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8198);
  }

  return result;
}

unint64_t sub_2450DF6C0()
{
  result = qword_27EDF81A0;
  if (!qword_27EDF81A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF81A0);
  }

  return result;
}

unint64_t sub_2450DF718()
{
  result = qword_27EDF81A8;
  if (!qword_27EDF81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF81A8);
  }

  return result;
}

unint64_t sub_2450DF770()
{
  result = qword_27EDF81B0;
  if (!qword_27EDF81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF81B0);
  }

  return result;
}

uint64_t sub_2450DF7D4(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF81D0, &qword_2450F04E0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E0014();
  sub_2450E5F58();
  v14 = 0;
  sub_2450E5DC8();
  if (!v4)
  {
    v13 = 1;
    sub_2450E5E28();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2450DF964(uint64_t a1)
{
  v2 = sub_2450E0014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450DF9A0(uint64_t a1)
{
  v2 = sub_2450E0014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450DF9DC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_2450DFE2C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_2450DFA58()
{
  result = qword_27EDF81B8;
  if (!qword_27EDF81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF81B8);
  }

  return result;
}

uint64_t sub_2450DFAAC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8200, &qword_2450F06C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E06A8();
  sub_2450E5F58();
  v8[15] = 0;
  sub_2450E5DC8();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_2450E5D68();
  v8[13] = 2;
  sub_2450E5E28();
  v8[12] = 3;
  sub_2450E5E28();
  v8[11] = 4;
  sub_2450E5E28();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2450DFC8C()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0xD00000000000001BLL;
  v4 = 0xD000000000000018;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4955656369766564;
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

uint64_t sub_2450DFD30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2450E01F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2450DFD58(uint64_t a1)
{
  v2 = sub_2450E06A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450DFD94(uint64_t a1)
{
  v2 = sub_2450E06A8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2450DFDD0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2450E03BC(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 12);
    *(a1 + 28) = *(v7 + 12);
  }

  return result;
}

uint64_t sub_2450DFE2C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF81C0, &unk_2450F04D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v10 = &type metadata for UseCaseID;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7920, &qword_2450ED140);
  sub_2450E5818();

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E0014();
  sub_2450E5F48();
  if (!v1)
  {
    v9[7] = 0;
    v7 = sub_2450E5CC8();
    v9[6] = 1;
    sub_2450E5D28();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_2450E0014()
{
  result = qword_27EDF81C8;
  if (!qword_27EDF81C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF81C8);
  }

  return result;
}

unint64_t sub_2450E008C()
{
  result = qword_27EDF81D8;
  if (!qword_27EDF81D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF81D8);
  }

  return result;
}

uint64_t sub_2450E010C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2450E014C()
{
  result = qword_27EDF81E0;
  if (!qword_27EDF81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF81E0);
  }

  return result;
}

unint64_t sub_2450E01A4()
{
  result = qword_27EDF81E8;
  if (!qword_27EDF81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF81E8);
  }

  return result;
}

uint64_t sub_2450E01F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4955656369766564 && a2 == 0xE900000000000044 || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002450F4240 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002450F4260 == a2 || (sub_2450E5E68() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002450F4280 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_2450E5E68();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2450E03BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF81F0, &unk_2450F06B0);
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v21 - v6;
  v32 = &type metadata for DevicePropertyDescription;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7928, &qword_2450ED148);
  sub_2450E5818();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E06A8();
  sub_2450E5F48();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v8 = v5;
    v25 = a2;
    v31 = 0;
    v9 = v26;
    v10 = sub_2450E5CC8();
    v12 = v11;
    v24 = v10;

    v30 = 1;
    v13 = sub_2450E5C68();
    v15 = v14;
    v16 = v13;
    v29 = 2;
    v23 = sub_2450E5D28();
    v28 = 3;
    v22 = sub_2450E5D28();
    v27 = 4;
    v17 = sub_2450E5D28();
    (*(v8 + 8))(v7, v9);

    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    v19 = v25;
    *v25 = v24;
    v19[1] = v12;
    v19[2] = v16;
    v19[3] = v15;
    v20 = v22;
    *(v19 + 8) = v23;
    *(v19 + 9) = v20;
    *(v19 + 10) = v17;
  }

  return result;
}

unint64_t sub_2450E06A8()
{
  result = qword_27EDF81F8;
  if (!qword_27EDF81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF81F8);
  }

  return result;
}

unint64_t sub_2450E0710()
{
  result = qword_27EDF8208;
  if (!qword_27EDF8208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8208);
  }

  return result;
}

unint64_t sub_2450E0768()
{
  result = qword_27EDF8210;
  if (!qword_27EDF8210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8210);
  }

  return result;
}

unint64_t sub_2450E07C0()
{
  result = qword_27EDF8218;
  if (!qword_27EDF8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8218);
  }

  return result;
}

uint64_t sub_2450E0814()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2450E0878(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionHandlers();
  v15[3] = v4;
  v15[4] = &off_285803750;
  v15[0] = a1;
  v5 = *(a2 + 16);

  [v5 lock];
  swift_beginAccess();
  v6 = sub_2450DC878(*(a2 + 24));
  [v5 unlock];
  if (v6)
  {
    v7 = *__swift_project_boxed_opaque_existential_1(v15, v4);
    v14[3] = v4;
    v14[4] = &off_285803750;
    v14[0] = v7;
    sub_2450AD6FC(v14, v13);
    swift_beginAccess();

    sub_2450E0FA0(v13, v6 + 16);
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  else
  {
    if (qword_27EDF6748 != -1)
    {
      swift_once();
    }

    v8 = sub_2450E5638();
    __swift_project_value_buffer(v8, qword_27EE0AEC8);
    v9 = sub_2450E5628();
    v10 = sub_2450E59A8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24508F000, v9, v10, "HAD is missing it's hardware availability behavior!", v11, 2u);
      MEMORY[0x245D63500](v11, -1, -1);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

void sub_2450E0A40(int a1)
{
  if (qword_27EDF6748 != -1)
  {
    swift_once();
  }

  v3 = sub_2450E5638();
  __swift_project_value_buffer(v3, qword_27EE0AEC8);
  v4 = sub_2450E5628();
  v5 = sub_2450E5988();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_24508F000, v4, v5, "notifyHardwareAvailabilitySubscribers - notifying for: %u", v6, 8u);
    MEMORY[0x245D63500](v6, -1, -1);
  }

  v7 = *(v1 + 24);
  if (v7)
  {
    *&v30 = &type metadata for IsolatedUseCaseDevicesAvailabilityChanged;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF67E0, &unk_2450E7470);
    v35[0] = sub_2450E5818();
    v35[1] = v8;
    v36 = a1;
    v37 = 0;
    v38 = 0;
    v39 = 1;
    v9 = sub_2450D25A4(v35);

    v10 = v9[2];
    if (v10)
    {
      v11 = (v9 + 4);
      do
      {
        sub_2450E1010(v11, &v30);
        if (*(&v31 + 1))
        {
          v28 = v33;
          v29[0] = v34[0];
          *(v29 + 9) = *(v34 + 9);
          v26[0] = v30;
          v26[1] = v31;
          v27 = v32;
          if ((v33 & 1) == 0)
          {
            v12 = *(&v27 + 1);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8168, &qword_2450F01E0);
            v13 = sub_2450E5818();
            v15 = v14;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7F20, &qword_2450EEC70);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_2450EBD40;
            *(inited + 56) = &type metadata for IncomingConfigurationEventHeader;
            *(inited + 64) = sub_2450E1080();
            *(inited + 32) = v13;
            *(inited + 40) = v15;
            *(inited + 48) = v12;
            sub_2450AD6FC(v26, inited + 72);
            v17 = sub_2450B68D0(inited);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7900, &unk_2450EDD80);
            swift_arrayDestroy();
            sub_2450BCC90(v17);

            v18 = sub_2450E5798();
          }

          sub_2450C5B18(v26);
        }

        else
        {
          sub_2450D4D00(&v30);
        }

        v11 += 96;
        --v10;
      }

      while (v10);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    oslog = sub_2450E5628();
    v19 = sub_2450E59A8();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v30 = v21;
      *v20 = 136315138;
      *&v26[0] = &type metadata for IsolatedUseCaseDevicesAvailabilityChanged;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF67E0, &unk_2450E7470);
      v22 = sub_2450E5818();
      v24 = sub_2450C0EE8(v22, v23, &v30);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_24508F000, oslog, v19, "Tried to notify for %s, but no callback was set", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x245D63500](v21, -1, -1);
      MEMORY[0x245D63500](v20, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2450E0EB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 32);

    do
    {
      v5 = *v4;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v6 = v5 == 0;
      }

      else
      {
        v6 = 1;
      }

      if (!v6)
      {
        v10 = type metadata accessor for SubscriptionHandlers();
        v11 = &off_285803750;
        v9[0] = v2;
        v7 = *__swift_project_boxed_opaque_existential_1(v9, v10);
        swift_unknownObjectRetain();

        sub_2450E0878(v7, v5);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(v9);
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {
  }

  return v2;
}

uint64_t sub_2450E0FA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF67D8, &unk_2450F0830);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2450E1010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D38, &qword_2450EEC40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2450E1080()
{
  result = qword_27EDF8220;
  if (!qword_27EDF8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8220);
  }

  return result;
}

uint64_t sub_2450E111C(uint64_t a1)
{
  v2 = sub_2450E1E64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450E1158(uint64_t a1)
{
  v2 = sub_2450E1E64();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2450E1194@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2450E1CD0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_2450E11C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF82A0, &qword_2450F0B28);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E1E64();
  sub_2450E5F58();
  sub_2450E5DC8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2450E1328()
{
  result = qword_27EDF8228;
  if (!qword_27EDF8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8228);
  }

  return result;
}

uint64_t sub_2450E137C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v13 = a5;
  v12[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8328, &qword_2450F1020);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E2CF0();
  sub_2450E5F58();
  v15 = 0;
  sub_2450E5DC8();
  if (!v5)
  {
    v14 = 1;
    sub_2450E5D88();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2450E151C(uint64_t a1)
{
  v2 = sub_2450E2CF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450E1558(uint64_t a1)
{
  v2 = sub_2450E2CF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450E1594@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_2450E1EB8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_2450E1634(uint64_t a1)
{
  v2 = sub_2450E22A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450E1670(uint64_t a1)
{
  v2 = sub_2450E22A4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2450E1750()
{
  result = qword_27EDF8230;
  if (!qword_27EDF8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8230);
  }

  return result;
}

uint64_t sub_2450E17E8(uint64_t a1)
{
  v2 = sub_2450E24E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450E1824(uint64_t a1)
{
  v2 = sub_2450E24E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450E188C@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_2450E1938()
{
  result = qword_27EDF8238;
  if (!qword_27EDF8238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8238);
  }

  return result;
}

uint64_t sub_2450E19D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t a8)
{
  v16[2] = a3;
  v16[1] = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a7();
  sub_2450E5F58();
  v18 = 0;
  v14 = v16[3];
  sub_2450E5DC8();
  if (!v14)
  {
    v17 = 1;
    sub_2450E5DF8();
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_2450E1B60(uint64_t a1)
{
  v2 = sub_2450E271C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450E1B9C(uint64_t a1)
{
  v2 = sub_2450E271C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2450E1C7C()
{
  result = qword_27EDF8240;
  if (!qword_27EDF8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8240);
  }

  return result;
}

void *sub_2450E1CD0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8248, &unk_2450F0AD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v9[1] = &type metadata for CreateConfigurationHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D88, &qword_2450EDE20);
  sub_2450E5818();

  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E1E64();
  sub_2450E5F48();
  if (!v1)
  {
    v7 = sub_2450E5CC8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_2450E1E64()
{
  result = qword_27EDF8250;
  if (!qword_27EDF8250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8250);
  }

  return result;
}

uint64_t sub_2450E1EB8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8318, &unk_2450F1010);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v10 = &type metadata for CreateConfigurationResponseHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78F0, qword_2450ED020);
  sub_2450E5818();

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E2CF0();
  sub_2450E5F48();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_2450E5CC8();
    v9[14] = 1;
    sub_2450E5C88();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

uint64_t sub_2450E20BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8258, &unk_2450F0AE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v10 = &type metadata for ActivateConfigurationHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D70, &unk_2450EDDF8);
  sub_2450E5818();

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E22A4();
  sub_2450E5F48();
  if (!v1)
  {
    v9[7] = 0;
    v7 = sub_2450E5CC8();
    v9[6] = 1;
    sub_2450E5CF8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_2450E22A4()
{
  result = qword_27EDF8260;
  if (!qword_27EDF8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8260);
  }

  return result;
}

uint64_t sub_2450E22F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8268, &unk_2450F0AF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v10 = &type metadata for DeactivateConfigurationHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D68, &qword_2450EDDF0);
  sub_2450E5818();

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E24E0();
  sub_2450E5F48();
  if (!v1)
  {
    v9[7] = 0;
    v7 = sub_2450E5CC8();
    v9[6] = 1;
    sub_2450E5CF8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_2450E24E0()
{
  result = qword_27EDF8270;
  if (!qword_27EDF8270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8270);
  }

  return result;
}

uint64_t sub_2450E2534(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8278, &unk_2450F0B00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v10 = &type metadata for DestroyConfigurationHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D60, &qword_2450EDDE8);
  sub_2450E5818();

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E271C();
  sub_2450E5F48();
  if (!v1)
  {
    v9[7] = 0;
    v7 = sub_2450E5CC8();
    v9[6] = 1;
    sub_2450E5CF8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_2450E271C()
{
  result = qword_27EDF8280;
  if (!qword_27EDF8280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8280);
  }

  return result;
}

unint64_t sub_2450E27C4()
{
  result = qword_27EDF82A8;
  if (!qword_27EDF82A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82A8);
  }

  return result;
}

unint64_t sub_2450E281C()
{
  result = qword_27EDF82B0;
  if (!qword_27EDF82B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82B0);
  }

  return result;
}

unint64_t sub_2450E2874()
{
  result = qword_27EDF82B8;
  if (!qword_27EDF82B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82B8);
  }

  return result;
}

unint64_t sub_2450E28CC()
{
  result = qword_27EDF82C0;
  if (!qword_27EDF82C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82C0);
  }

  return result;
}

uint64_t sub_2450E294C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2450E2988()
{
  result = qword_27EDF82C8;
  if (!qword_27EDF82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82C8);
  }

  return result;
}

unint64_t sub_2450E29DC()
{
  result = qword_27EDF82D0;
  if (!qword_27EDF82D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82D0);
  }

  return result;
}

unint64_t sub_2450E2A34()
{
  result = qword_27EDF82D8;
  if (!qword_27EDF82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82D8);
  }

  return result;
}

unint64_t sub_2450E2A8C()
{
  result = qword_27EDF82E0;
  if (!qword_27EDF82E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82E0);
  }

  return result;
}

unint64_t sub_2450E2AE4()
{
  result = qword_27EDF82E8;
  if (!qword_27EDF82E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82E8);
  }

  return result;
}

unint64_t sub_2450E2B3C()
{
  result = qword_27EDF82F0;
  if (!qword_27EDF82F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82F0);
  }

  return result;
}

unint64_t sub_2450E2B94()
{
  result = qword_27EDF82F8;
  if (!qword_27EDF82F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF82F8);
  }

  return result;
}

unint64_t sub_2450E2BEC()
{
  result = qword_27EDF8300;
  if (!qword_27EDF8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8300);
  }

  return result;
}

unint64_t sub_2450E2C44()
{
  result = qword_27EDF8308;
  if (!qword_27EDF8308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8308);
  }

  return result;
}

unint64_t sub_2450E2C9C()
{
  result = qword_27EDF8310;
  if (!qword_27EDF8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8310);
  }

  return result;
}

unint64_t sub_2450E2CF0()
{
  result = qword_27EDF8320;
  if (!qword_27EDF8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8320);
  }

  return result;
}

unint64_t sub_2450E2D58()
{
  result = qword_27EDF8330;
  if (!qword_27EDF8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8330);
  }

  return result;
}

unint64_t sub_2450E2DB0()
{
  result = qword_27EDF8338;
  if (!qword_27EDF8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8338);
  }

  return result;
}

unint64_t sub_2450E2E08()
{
  result = qword_27EDF8340;
  if (!qword_27EDF8340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8340);
  }

  return result;
}

uint64_t sub_2450E2EC0(uint64_t a1)
{
  v2 = sub_2450E3808();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450E2EFC(uint64_t a1)
{
  v2 = sub_2450E3808();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2450E2F38@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2450E3674(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_2450E2F64(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8380, &qword_2450F12E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E3808();
  sub_2450E5F58();
  sub_2450E5DC8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2450E30CC()
{
  result = qword_27EDF8348;
  if (!qword_27EDF8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8348);
  }

  return result;
}

uint64_t sub_2450E3120(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v13 = a5;
  v12[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF83D8, &qword_2450F15C8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E3FEC();
  sub_2450E5F58();
  v15 = 0;
  sub_2450E5DC8();
  if (!v5)
  {
    v14 = 1;
    sub_2450E5D88();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2450E32C0(uint64_t a1)
{
  v2 = sub_2450E3FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450E32FC(uint64_t a1)
{
  v2 = sub_2450E3FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450E3338@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_2450E385C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_2450E3394(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8378, &qword_2450F12E0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E3C48();
  sub_2450E5F58();
  v13 = 0;
  sub_2450E5DC8();
  if (!v4)
  {
    v12 = 1;
    sub_2450E5DF8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2450E352C(uint64_t a1)
{
  v2 = sub_2450E3C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450E3568(uint64_t a1)
{
  v2 = sub_2450E3C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2450E35A4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2450E3A60(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

unint64_t sub_2450E3620()
{
  result = qword_27EDF8350;
  if (!qword_27EDF8350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8350);
  }

  return result;
}

void *sub_2450E3674(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8358, &unk_2450F12C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v9[1] = &type metadata for SubscribeHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D50, &qword_2450EDDD8);
  sub_2450E5818();

  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E3808();
  sub_2450E5F48();
  if (!v1)
  {
    v7 = sub_2450E5CC8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_2450E3808()
{
  result = qword_27EDF8360;
  if (!qword_27EDF8360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8360);
  }

  return result;
}

uint64_t sub_2450E385C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF83C8, &unk_2450F15B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v10 = &type metadata for SubscriptionResponseHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78D0, &qword_2450ED010);
  sub_2450E5818();

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E3FEC();
  sub_2450E5F48();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_2450E5CC8();
    v9[14] = 1;
    sub_2450E5C88();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

uint64_t sub_2450E3A60(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8368, &unk_2450F12D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v10 = &type metadata for UnsubscribeHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7D40, &unk_2450EDDB0);
  sub_2450E5818();

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E3C48();
  sub_2450E5F48();
  if (!v1)
  {
    v9[7] = 0;
    v7 = sub_2450E5CC8();
    v9[6] = 1;
    sub_2450E5CF8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_2450E3C48()
{
  result = qword_27EDF8370;
  if (!qword_27EDF8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8370);
  }

  return result;
}

unint64_t sub_2450E3CD0()
{
  result = qword_27EDF8388;
  if (!qword_27EDF8388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8388);
  }

  return result;
}

unint64_t sub_2450E3D28()
{
  result = qword_27EDF8390;
  if (!qword_27EDF8390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8390);
  }

  return result;
}

uint64_t sub_2450E3DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2450E3DE4()
{
  result = qword_27EDF8398;
  if (!qword_27EDF8398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8398);
  }

  return result;
}

unint64_t sub_2450E3E38()
{
  result = qword_27EDF83A0;
  if (!qword_27EDF83A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF83A0);
  }

  return result;
}

unint64_t sub_2450E3E90()
{
  result = qword_27EDF83A8;
  if (!qword_27EDF83A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF83A8);
  }

  return result;
}

unint64_t sub_2450E3EE8()
{
  result = qword_27EDF83B0;
  if (!qword_27EDF83B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF83B0);
  }

  return result;
}

unint64_t sub_2450E3F40()
{
  result = qword_27EDF83B8;
  if (!qword_27EDF83B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF83B8);
  }

  return result;
}

unint64_t sub_2450E3F98()
{
  result = qword_27EDF83C0;
  if (!qword_27EDF83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF83C0);
  }

  return result;
}

unint64_t sub_2450E3FEC()
{
  result = qword_27EDF83D0;
  if (!qword_27EDF83D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF83D0);
  }

  return result;
}

unint64_t sub_2450E4054()
{
  result = qword_27EDF83E0;
  if (!qword_27EDF83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF83E0);
  }

  return result;
}

unint64_t sub_2450E40AC()
{
  result = qword_27EDF83E8;
  if (!qword_27EDF83E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF83E8);
  }

  return result;
}

unint64_t sub_2450E4104()
{
  result = qword_27EDF83F0;
  if (!qword_27EDF83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF83F0);
  }

  return result;
}

uint64_t sub_2450E4170(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2450E41B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2450E4210(uint64_t a1)
{
  v2 = sub_2450E4A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450E424C(uint64_t a1)
{
  v2 = sub_2450E4A60();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2450E4288@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2450E48CC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_2450E42B4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8428, &qword_2450F1860);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E4A60();
  sub_2450E5F58();
  sub_2450E5DC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2450E43F0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8440, &qword_2450F1878);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E4E20();
  sub_2450E5F58();
  v8[15] = 0;
  sub_2450E5DC8();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_2450E5E18();
  v8[13] = 2;
  sub_2450E5D68();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2450E4590()
{
  v1 = 0x737574617473;
  if (*v0 != 1)
  {
    v1 = 0x73654D6775626564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_2450E45E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2450E4AB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2450E4610(uint64_t a1)
{
  v2 = sub_2450E4E20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2450E464C(uint64_t a1)
{
  v2 = sub_2450E4E20();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2450E4688@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2450E4BCC(a2, v6);
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

unint64_t sub_2450E4714()
{
  result = qword_27EDF83F8;
  if (!qword_27EDF83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF83F8);
  }

  return result;
}

unint64_t sub_2450E4768()
{
  result = qword_27EDF8400;
  if (!qword_27EDF8400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8400);
  }

  return result;
}

uint64_t sub_2450E47E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2450E4824()
{
  result = qword_27EDF8408;
  if (!qword_27EDF8408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8408);
  }

  return result;
}

unint64_t sub_2450E4878()
{
  result = qword_27EDF8410;
  if (!qword_27EDF8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8410);
  }

  return result;
}

void *sub_2450E48CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8418, &unk_2450F1850);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v9[1] = &type metadata for StatusResponseHeader;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78E0, &qword_2450ED018);
  sub_2450E5818();

  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E4A60();
  sub_2450E5F48();
  if (!v1)
  {
    v7 = sub_2450E5CC8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t sub_2450E4A60()
{
  result = qword_27EDF8420;
  if (!qword_27EDF8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8420);
  }

  return result;
}

uint64_t sub_2450E4AB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_2450E5E68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_2450E5E68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73654D6775626564 && a2 == 0xEC00000065676173)
  {

    return 2;
  }

  else
  {
    v6 = sub_2450E5E68();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2450E4BCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF8430, &qword_2450F1868);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v23 = &type metadata for StatusDescription;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF78C0, &qword_2450F1870);
  sub_2450E5818();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2450E4E20();
  sub_2450E5F48();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v8 = v5;
    v9 = v19;
    v22 = 0;
    v10 = sub_2450E5CC8();
    v12 = v11;
    v18 = v10;

    v21 = 1;
    HIDWORD(v17) = sub_2450E5D18();
    v20 = 2;
    v13 = sub_2450E5C68();
    v15 = v14;
    (*(v8 + 8))(v7, v4);
    result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
    *v9 = v18;
    *(v9 + 8) = v12;
    *(v9 + 16) = HIDWORD(v17);
    *(v9 + 24) = v13;
    *(v9 + 32) = v15;
  }

  return result;
}

unint64_t sub_2450E4E20()
{
  result = qword_27EDF8438;
  if (!qword_27EDF8438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8438);
  }

  return result;
}

unint64_t sub_2450E4E98()
{
  result = qword_27EDF8448;
  if (!qword_27EDF8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8448);
  }

  return result;
}

unint64_t sub_2450E4EF0()
{
  result = qword_27EDF8450;
  if (!qword_27EDF8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8450);
  }

  return result;
}

unint64_t sub_2450E4F48()
{
  result = qword_27EDF8458;
  if (!qword_27EDF8458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8458);
  }

  return result;
}

unint64_t sub_2450E4FA0()
{
  result = qword_27EDF8460;
  if (!qword_27EDF8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8460);
  }

  return result;
}

unint64_t sub_2450E4FF8()
{
  result = qword_27EDF8468;
  if (!qword_27EDF8468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8468);
  }

  return result;
}

unint64_t sub_2450E5050()
{
  result = qword_27EDF8470;
  if (!qword_27EDF8470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8470);
  }

  return result;
}

uint64_t sub_2450E50E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2450AD6FC(a1, a2);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 24))(v4, v5);
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = v6;
  *(a2 + 64) = v7;
  *(a2 + 72) = 0;
  *(a2 + 76) = 1;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (swift_getDynamicType() == &type metadata for IsolatedUseCaseDevicesAvailabilityChanged)
  {
    sub_2450AD6FC(a1, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDF7900, &unk_2450EDD80);
    if (swift_dynamicCast())
    {

      *(a2 + 72) = v16;
      *(a2 + 76) = 0;
      return result;
    }

    sub_2450E52A0();
    swift_allocError();
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 16) = 2;
  }

  else
  {
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    v10 = (*(v9 + 24))(v8, v9);
    v12 = v11;
    sub_2450E52A0();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    *(v13 + 16) = 0;
  }

  swift_willThrow();
  return sub_2450C5B18(a2);
}

unint64_t sub_2450E52A0()
{
  result = qword_27EDF8478;
  if (!qword_27EDF8478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDF8478);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22CoreAudioOrchestration17SubscriptionErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2450E5310(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void sIsolatedCoreAudioOrchestrationLog()
{
  if (__cxa_guard_acquire(byte_27EDF8488))
  {
    _MergedGlobals = os_log_create("com.apple.coreaudio", "CoreAudioOrchestration");

    __cxa_guard_release(byte_27EDF8488);
  }
}

{
  if (__cxa_guard_acquire(byte_27EDF8498))
  {
    _MergedGlobals_0 = os_log_create("com.apple.coreaudio", "CoreAudioOrchestration");

    __cxa_guard_release(byte_27EDF8498);
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}