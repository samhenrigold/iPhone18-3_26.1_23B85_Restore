uint64_t sub_21867F078()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21867F0B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21867F118(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2186818F8;

  return sub_21867F1D0(a1, v4);
}

uint64_t sub_21867F1D0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2186819F4;

  return v6(a1);
}

uint64_t sub_21867F2C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2186818F8;

  return sub_21867F394(a1, v4, v5, v6);
}

uint64_t sub_21867F394(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_218681150;

  return v7();
}

uint64_t sub_21867F47C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2186818F8;

  return sub_21867F53C(v2, v3, v4);
}

uint64_t sub_21867F53C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2186818F8;

  return v6();
}

uint64_t sub_21867F624()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2186818F8;

  return sub_21867F6D0(v2);
}

uint64_t sub_21867F6D0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2186817D0;

  return sub_21867F778();
}

uint64_t sub_21867F778()
{
  v1 = sub_2186B794C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21867F840, 0, 0);
}

uint64_t sub_21867F840()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];
  v4 = sub_21867F9D4();
  v0[6] = v4;
  v5 = *(v3 + 16);
  v0[7] = v5;
  v0[8] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2186B792C();
  v7 = sub_2186B7BCC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21867D000, v6, v7, "Checking pending game activities.", v8, 2u);
    MEMORY[0x21CEB1A70](v8, -1, -1);
  }

  v9 = v0[5];
  v10 = v0[2];
  v11 = v0[3];

  v12 = *(v11 + 8);
  v0[9] = v12;
  v12(v9, v10);
  if (qword_2811ED5E0 != -1)
  {
    swift_once();
  }

  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_218681478;

  return sub_21867FFF8();
}

uint64_t sub_21867F9F8(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_2186B794C();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_21867FA4C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2186B794C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2186B793C();
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

uint64_t sub_21867FB88()
{
  v0 = sub_21867FC04();
  sub_21867FF24(v0, v6);
  v1 = type metadata accessor for GSGameActivitySupport();
  v2 = objc_allocWithZone(v1);
  sub_21867FF24(v6, v2 + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0(v6);
  qword_2811ED610 = v3;
  return result;
}

uint64_t *sub_21867FC04()
{
  if (qword_2811ED5E8 != -1)
  {
    swift_once();
  }

  return &qword_2811ED618;
}

unint64_t sub_21867FC58()
{
  v0 = sub_2186B759C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2186B791C();
  sub_2186B758C();
  if (qword_2811ED5F0 != -1)
  {
    swift_once();
  }

  v5 = sub_2186B790C();
  (*(v1 + 8))(v3, v0);
  qword_2811ED630 = v4;
  result = sub_21867FECC();
  qword_2811ED638 = result;
  qword_2811ED618 = v5;
  return result;
}

uint64_t sub_21867FE74()
{
  sub_2186B755C();
  swift_allocObject();
  result = sub_2186B754C();
  qword_2811ED640 = result;
  return result;
}

unint64_t sub_21867FECC()
{
  result = qword_2811ED5B8;
  if (!qword_2811ED5B8)
  {
    sub_2186B791C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811ED5B8);
  }

  return result;
}

uint64_t sub_21867FF24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_21867FFF8()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E88, &qword_2186B9740);
  v1[3] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E90, &unk_2186B9060);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v1[9] = *(v4 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218680178, 0, 0);
}

uint64_t sub_218680178()
{
  sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
  sub_218680544();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[7];
  v6 = v0[2];
  v5 = v0[3];
  v7 = sub_2186B789C();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  (*(v3 + 16))(v2, v1, v4);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  (*(v3 + 32))(v9 + v8, v2, v4);
  v10 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06EA0, &qword_2186B9080);
  sub_218680664(&qword_2811ED5C0, &qword_27CC06EA0, &qword_2186B9080, MEMORY[0x277D0D520]);
  sub_218680664(&qword_2811ED5C8, &qword_27CC06EA0, &qword_2186B9080, MEMORY[0x277D0D500]);
  sub_2186B762C();
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_218681244;
  v12 = v0[4];

  return MEMORY[0x282164EA8](v12);
}

uint64_t sub_21868042C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2186804FC(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_218680544()
{
  v0 = [swift_getObjCClassFromMetadata() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_2186B7A0C();

    return sub_2186B77CC();
  }

  else
  {
    sub_2186B757C();
    sub_2186AF044(&qword_27CC06D88, MEMORY[0x277D0CE80], MEMORY[0x277D0CE88]);
    swift_allocError();
    sub_2186B756C();
    return swift_willThrow();
  }
}

uint64_t sub_218680664(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2186806AC(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_218681150;

  return sub_2186807AC(a1, a2, v8, v2 + v7);
}

uint64_t sub_2186807AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2186807D0, 0, 0);
}

uint64_t sub_2186807D0()
{
  v1 = (v0[4] + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC070D0, &qword_2186B9408);
  v4 = sub_2186B70AC();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v0[6] = v7;
  *(v7 + 16) = xmmword_2186B8F70;
  v8 = *MEMORY[0x277D0CD08];
  v9 = sub_2186B74FC();
  (*(*(v9 - 8) + 104))(v7 + v6, v8, v9);
  (*(v5 + 104))(v7 + v6, *MEMORY[0x277D0CA80], v4);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_218681014;
  v11 = v0[5];
  v12 = v0[2];
  v13 = v0[3];

  return MEMORY[0x282164888](v12, v11, v7, 0, v13, v2, v3);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2186809FC(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E28, &unk_2186B8FF0);
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218680AC8, 0, 0);
}

uint64_t sub_218680AC8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v11 = objc_opt_self();
  v8 = sub_2186B6FBC();
  v1[25] = v8;
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_218680E84;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
  sub_2186B7B1C();
  (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_218680DC4;
  v1[13] = &block_descriptor_1;
  [v11 invokeWithData:v8 completionHandler:v3];
  (*(v6 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_218680D68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_218680DC4(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E28, &unk_2186B8FF0);
    sub_2186B7B2C();
  }

  else
  {
    v6 = a2;
    sub_2186B6FCC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E28, &unk_2186B8FF0);
    sub_2186B7B3C();
  }
}

uint64_t sub_218680E84()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_218686AA8;
  }

  else
  {
    v2 = sub_218680F94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218680F94()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_218681014()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21869DCF0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_218681150()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_218681244(uint64_t a1)
{
  v4 = *v2;
  v4[13] = v1;

  v5 = v4[6];
  v6 = v4[5];
  v7 = v4[4];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_21869395C;
  }

  else
  {
    v4[14] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_2186813CC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2186813CC()
{
  (*(v0[8] + 8))(v0[11], v0[7]);

  v1 = v0[1];
  v2 = v0[14];

  return v1(v2);
}

uint64_t sub_218681478(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 88) = a1;

    return MEMORY[0x2822009F8](sub_2186815E0, 0, 0);
  }
}

uint64_t sub_2186815E0()
{
  v23 = v0;
  v1 = v0[7];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = *(v0[11] + 16);

  v1(v3, v2, v4);
  v6 = sub_2186B792C();
  v7 = sub_2186B7BDC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[9];
  v10 = v0[4];
  v11 = v0[2];
  if (v8)
  {
    v21 = v0[4];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    if (v5)
    {
      v14 = 0;
    }

    else
    {
      v14 = 544501614;
    }

    v20 = v9;
    v15 = v5;
    if (v5)
    {
      v16 = 0xE000000000000000;
    }

    else
    {
      v16 = 0xE400000000000000;
    }

    v17 = sub_2186864E8(v14, v16, &v22);
    v5 = v15;

    *(v12 + 4) = v17;
    _os_log_impl(&dword_21867D000, v6, v7, "Did %sfind pending game activities.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x21CEB1A70](v13, -1, -1);
    MEMORY[0x21CEB1A70](v12, -1, -1);

    v20(v21, v11);
  }

  else
  {

    v9(v10, v11);
  }

  v18 = v0[1];

  return v18(v5 != 0);
}

uint64_t sub_2186817D0(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2186818FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_218681A3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_218681A74()
{
  MEMORY[0x21CEB1B10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_218681AAC()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_218681AFC()
{
  swift_unknownObjectRelease();

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_218681B64()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_218681B9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_218681BDC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_218681C1C()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_218681C60()
{
  MEMORY[0x21CEB1B10](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_218681C9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_218681D0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_218681DF0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_218681E3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_218681E74()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_218681EB4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_218681F08()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_218681F54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_218681F8C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_218681FCC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_218682004()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_218682758(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = aBlock - v7;
  v9 = sub_2186B6FAC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218682A28(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_218682A98(v8);
    return a2(0, 0);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = sub_2186B6F8C();
    sub_218682B00();
    v16 = sub_2186B7C2C();
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    aBlock[4] = sub_218682B4C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218682B78;
    aBlock[3] = &block_descriptor;
    v18 = _Block_copy(aBlock);

    [ObjCClassFromMetadata loadImageForURL:v15 queue:v16 withCompletionHandler:v18];
    _Block_release(v18);

    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_218682A28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218682A98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D70, &qword_2186B92A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218682B00()
{
  result = qword_27CC06D78;
  if (!qword_27CC06D78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CC06D78);
  }

  return result;
}

void sub_218682B78(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_218682BE4(uint64_t a1, int *a2)
{
  v4 = v2;
  v6 = sub_2186B794C();
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v4[5] = swift_task_alloc();
  v7 = sub_2186B757C();
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v4[11] = v8;
  *v8 = v4;
  v8[1] = sub_218682DBC;

  return v10(a1);
}

uint64_t sub_218682DBC()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_218682F28, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_218682F28()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);

    (*(v6 + 32))(v3, v4, v7);
    v11 = sub_218683DD0(v3);
    v12 = sub_2186AF118();
    (*(v10 + 16))(v8, v12, v9);
    v13 = *(v6 + 16);
    v13(v5, v3, v7);
    v14 = v11;
    v15 = sub_2186B792C();
    v16 = sub_2186B7BCC();

    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 56);
    v18 = *(v0 + 64);
    v20 = *(v0 + 48);
    if (v17)
    {
      log = v15;
      v21 = swift_slowAlloc();
      v32 = v16;
      v22 = swift_slowAlloc();
      *v21 = 138412546;
      sub_218683F9C(&qword_27CC06D88, MEMORY[0x277D0CE80], MEMORY[0x277D0CE88]);
      swift_allocError();
      v13(v23, v18, v20);
      v24 = _swift_stdlib_bridgeErrorToNSError();
      v25 = *(v19 + 8);
      v25(v18, v20);
      *(v21 + 4) = v24;
      *v22 = v24;
      *(v21 + 12) = 2112;
      v26 = v14;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v27;
      v22[1] = v27;
      _os_log_impl(&dword_21867D000, log, v32, "Throwing converted error: %@ as: %@", v21, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D90, &qword_2186B8C70);
      swift_arrayDestroy();
      MEMORY[0x21CEB1A70](v22, -1, -1);
      MEMORY[0x21CEB1A70](v21, -1, -1);
    }

    else
    {

      v25 = *(v19 + 8);
      v25(v18, v20);
    }

    v28 = *(v0 + 72);
    v29 = *(v0 + 48);
    (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
    swift_willThrow();
    v25(v28, v29);
  }

  else
  {

    swift_willThrow();
  }

  v30 = *(v0 + 8);

  return v30();
}

void sub_2186832AC(void (*a1)(uint64_t))
{
  v3 = sub_2186B794C();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2186B757C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v33 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - v14;
  a1(v13);
  if (v1)
  {
    v39 = v1;
    v16 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
    if (swift_dynamicCast())
    {

      (*(v6 + 32))(v12, v15, v5);
      v17 = sub_218683DD0(v12);
      v18 = sub_2186AF118();
      (*(v37 + 16))(v36, v18, v38);
      v19 = *(v6 + 16);
      v19(v9, v12, v5);
      v20 = v17;
      v21 = sub_2186B792C();
      v22 = sub_2186B7BCC();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v33 = v19;
        v24 = v23;
        v35 = swift_slowAlloc();
        *v24 = 138412546;
        sub_218683F9C(&qword_27CC06D88, MEMORY[0x277D0CE80], MEMORY[0x277D0CE88]);
        swift_allocError();
        v34 = v21;
        v33(v25, v9, v5);
        v26 = _swift_stdlib_bridgeErrorToNSError();
        LODWORD(v33) = v22;
        v27 = *(v6 + 8);
        v27(v9, v5);
        *(v24 + 4) = v26;
        v28 = v35;
        *v35 = v26;
        *(v24 + 12) = 2112;
        v29 = v20;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 14) = v30;
        v28[1] = v30;
        v31 = v28;
        v32 = v34;
        _os_log_impl(&dword_21867D000, v34, v33, "Throwing converted error: %@ as: %@", v24, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D90, &qword_2186B8C70);
        swift_arrayDestroy();
        MEMORY[0x21CEB1A70](v31, -1, -1);
        MEMORY[0x21CEB1A70](v24, -1, -1);
      }

      else
      {

        v27 = *(v6 + 8);
        v27(v9, v5);
      }

      (*(v37 + 8))(v36, v38);
      swift_willThrow();
      v27(v12, v5);
    }

    else
    {

      swift_willThrow();
    }
  }
}

uint64_t sub_21868370C(uint64_t a1)
{
  v2 = sub_218683F9C(&qword_27CC06DC8, type metadata accessor for GKError, &unk_2186B8DD4);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_218683778(uint64_t a1)
{
  v2 = sub_218683F9C(&qword_27CC06DC8, type metadata accessor for GKError, &unk_2186B8DD4);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2186837E8(uint64_t a1)
{
  v2 = sub_218683F9C(&qword_27CC06D98, type metadata accessor for GKError, &unk_2186B8E18);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_218683874(uint64_t a1)
{
  v2 = sub_218683F9C(&qword_27CC06D98, type metadata accessor for GKError, &unk_2186B8E18);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2186838E0(uint64_t a1)
{
  v2 = sub_218683F9C(&qword_27CC06D98, type metadata accessor for GKError, &unk_2186B8E18);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_21868394C(void *a1, uint64_t a2)
{
  v4 = sub_218683F9C(&qword_27CC06D98, type metadata accessor for GKError, &unk_2186B8E18);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_218683A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_218683F9C(&qword_27CC06D98, type metadata accessor for GKError, &unk_2186B8E18);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_218683A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186B7EBC();
  sub_2186B79DC();
  return sub_2186B7ECC();
}

void *sub_218683ADC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_218683AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_218683F9C(&qword_27CC06D98, type metadata accessor for GKError, &unk_2186B8E18);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

unint64_t sub_218683B90(uint64_t a1, uint64_t a2)
{
  sub_2186B7EBC();
  sub_2186B7A4C();
  v4 = sub_2186B7ECC();

  return sub_218683C08(a1, a2, v4);
}

unint64_t sub_218683C08(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2186B7E5C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_218683CC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06DA0, &unk_2186B8C90);
    v3 = sub_2186B7E2C();
    v4 = a1 + 32;

    while (1)
    {
      sub_218683FE4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_218683B90(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_218684054(&v15, (v3[7] + 32 * result));
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

uint64_t sub_218683DD0(uint64_t a1)
{
  v2 = sub_2186B757C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D0CE68])
  {
    v7 = 17;
LABEL_6:
    (*(v3 + 8))(v5, v2);
    goto LABEL_7;
  }

  if (v6 != *MEMORY[0x277D0CE78])
  {
    v7 = 1;
    goto LABEL_6;
  }

  v7 = 3;
LABEL_7:
  type metadata accessor for GKError(0);
  v9[0] = v7;
  sub_218683CC0(MEMORY[0x277D84F90]);
  sub_218683F9C(&qword_27CC06D98, type metadata accessor for GKError, &unk_2186B8E18);
  sub_2186B6F5C();
  return v9[1];
}

uint64_t sub_218683F9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218683FE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06DA8, &qword_2186B9400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_218684054(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_218684228(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_2186842C0()
{
  result = qword_27CC06DF0;
  if (!qword_27CC06DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC06DF0);
  }

  return result;
}

uint64_t sub_2186843A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v14;
  v8[12] = v15;
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v8[13] = *(v15 - 8);
  v8[14] = swift_task_alloc();
  v10 = sub_2186B7C6C();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = *(v14 - 8);
  v8[19] = swift_task_alloc();
  v11 = *(a8 - 8);
  v8[20] = v11;
  v8[21] = *(v11 + 64);
  v8[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218684580, 0, 0);
}

uint64_t sub_218684580()
{
  (*(v0[13] + 16))(v0[3], v0[5], v0[12]);
  if (sub_2186B7AFC())
  {
    v1 = sub_2186B7ADC();
    sub_2186B7ABC();
    if (v1)
    {
      (*(v0[20] + 16))(v0[22], v0[4] + ((*(v0[20] + 80) + 32) & ~*(v0[20] + 80)), v0[10]);
    }

    else
    {
      v7 = v0[21];
      result = sub_2186B7D5C();
      if (v7 != 8)
      {
        __break(1u);
        return result;
      }

      v8 = v0[22];
      v9 = v0[20];
      v10 = v0[10];
      v0[2] = result;
      (*(v9 + 16))(v8, v0 + 2, v10);
      swift_unknownObjectRelease();
    }

    v0[23] = 1;
    v11 = (v0[6] + *v0[6]);
    v2 = swift_task_alloc();
    v0[24] = v2;
    *v2 = v0;
    v2[1] = sub_2186847D4;
    v3 = v0[22];
    v4 = v0[17];

    return v11(v4, v3);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2186847D4()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  (*(v2[20] + 8))(v2[22], v2[10]);
  if (v0)
  {
    v3 = sub_218684C9C;
  }

  else
  {
    v3 = sub_21868493C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21868493C()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[11];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[16] + 8))(v1, v0[15]);
  }

  else
  {
    v4 = v0[19];
    v6 = v0[13];
    v5 = v0[14];
    v21 = v0[12];
    v7 = v0[8];
    v8 = v0[3];
    (*(v2 + 32))(v4, v1, v3);
    v7(v8, v4);
    (*(v2 + 8))(v4, v3);
    (*(v6 + 8))(v8, v21);
    (*(v6 + 32))(v8, v5, v21);
  }

  v9 = v0[23];
  if (v9 == sub_2186B7AFC())
  {

    v10 = v0[1];

    return v10();
  }

  v12 = v0[23];
  v13 = sub_2186B7ADC();
  sub_2186B7ABC();
  if (v13)
  {
    result = (*(v0[20] + 16))(v0[22], v0[4] + ((*(v0[20] + 80) + 32) & ~*(v0[20] + 80)) + *(v0[20] + 72) * v12, v0[10]);
  }

  else
  {
    v17 = v0[21];
    result = sub_2186B7D5C();
    if (v17 != 8)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v18 = v0[22];
    v19 = v0[20];
    v20 = v0[10];
    v0[2] = result;
    (*(v19 + 16))(v18, v0 + 2, v20);
    result = swift_unknownObjectRelease();
  }

  v0[23] = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = (v0[6] + *v0[6]);
  v14 = swift_task_alloc();
  v0[24] = v14;
  *v14 = v0;
  v14[1] = sub_2186847D4;
  v15 = v0[22];
  v16 = v0[17];

  return v22(v16, v15);
}

uint64_t sub_218684C9C()
{
  (*(v0[13] + 8))(v0[3], v0[12]);

  v1 = v0[1];

  return v1();
}

void GKAccessPoint.trigger(gameActivityDefinitionID:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E08, &qword_2186B9120);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2186B8F70;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = sub_2186B7A9C();

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v14[4] = sub_218685544;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_218685598;
  v14[3] = &block_descriptor_0;
  v13 = _Block_copy(v14);

  sub_21868562C(a3, a4);

  [v8 loadGameActivityDefinitionsWithIDs:v10 completionHandler:v13];
  _Block_release(v13);
}

void sub_218684EFC(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v56 = a4;
  v57 = a6;
  v11 = sub_2186B794C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v54 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    if (!a1 || a2)
    {
      v23 = sub_21867F9D4();
      (*(v12 + 16))(v15, v23, v11);

      v24 = a2;
      v25 = sub_2186B792C();
      v26 = sub_2186B7BEC();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v54 = v11;
        v28 = v27;
        v29 = swift_slowAlloc();
        v55 = v22;
        v30 = v29;
        aBlock[0] = v29;
        *v28 = 136315394;
        *(v28 + 4) = sub_2186864E8(v56, a5, aBlock);
        *(v28 + 12) = 2080;
        aBlock[6] = a2;
        v31 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E18, qword_2186B8FB8);
        v32 = sub_2186B7A1C();
        v34 = sub_2186864E8(v32, v33, aBlock);

        *(v28 + 14) = v34;
        _os_log_impl(&dword_21867D000, v25, v26, "Failed to load game activity definition with ID: %s due to error: %s", v28, 0x16u);
        swift_arrayDestroy();
        v22 = v55;
        MEMORY[0x21CEB1A70](v30, -1, -1);
        MEMORY[0x21CEB1A70](v28, -1, -1);

        v35 = (*(v12 + 8))(v15, v54);
LABEL_8:
        if (v57)
        {
          v57(v35);
        }

        v38 = v22;
LABEL_11:

        return;
      }

      v36 = *(v12 + 8);
      v37 = v15;
LABEL_7:
      v35 = v36(v37, v11);
      goto LABEL_8;
    }

    if (a1 >> 62)
    {
      if (sub_2186B7CCC())
      {
        goto LABEL_15;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_15:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x21CEB1380](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v39 = *(a1 + 32);
      }

      v40 = v39;
      if ([v39 supportsPartyCode])
      {
        v38 = sub_2186B79FC();
        if (v57)
        {
          aBlock[4] = v57;
          aBlock[5] = a7;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_218685554;
          aBlock[3] = &block_descriptor_31;
          v41 = _Block_copy(aBlock);
        }

        else
        {
          v41 = 0;
        }

        [v22 _triggerAccessPointWithGameActivityDefinitionID_handler_];
        _Block_release(v41);
      }

      else
      {
        v42 = sub_21867F9D4();
        (*(v12 + 16))(v20, v42, v11);

        v43 = sub_2186B792C();
        v44 = sub_2186B7BEC();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v55 = v22;
          v46 = v45;
          v47 = swift_slowAlloc();
          aBlock[0] = v47;
          *v46 = 136315138;
          *(v46 + 4) = sub_2186864E8(v56, a5, aBlock);
          _os_log_impl(&dword_21867D000, v43, v44, "Cannot trigger access point for game activity definition with ID: %s because it does not support party code.", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v47);
          MEMORY[0x21CEB1A70](v47, -1, -1);
          v22 = v55;
          MEMORY[0x21CEB1A70](v46, -1, -1);
        }

        v48 = (*(v12 + 8))(v20, v11);
        if (v57)
        {
          v57(v48);
        }

        v38 = v40;
      }

      goto LABEL_11;
    }

    v49 = sub_21867F9D4();
    (*(v12 + 16))(v18, v49, v11);

    v50 = sub_2186B792C();
    v51 = sub_2186B7BEC();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      aBlock[0] = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_2186864E8(v56, a5, aBlock);
      _os_log_impl(&dword_21867D000, v50, v51, "Failed to load game activity definition with ID: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x21CEB1A70](v53, -1, -1);
      MEMORY[0x21CEB1A70](v52, -1, -1);
    }

    v36 = *(v12 + 8);
    v37 = v18;
    goto LABEL_7;
  }
}

uint64_t sub_218685554(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_218685598(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for GKGameActivityDefinition(0);
    v4 = sub_2186B7AAC();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_21868562C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21868563C(void *a1, int a2, uint64_t a3, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = sub_2186B7A0C();
  v8 = v7;
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v5 = sub_218686A9C;
  }

  else
  {
    v9 = 0;
  }

  v10 = a1;
  GKAccessPoint.trigger(gameActivityDefinitionID:handler:)(v6, v8, v5, v9);
  sub_218686188(v5, v9);
}

uint64_t GKAccessPoint.trigger(gameActivity:handler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a2;
  v29 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v30 = sub_2186B72AC();
  v9 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218686C50(v11);
  v12 = sub_2186B71EC();
  v14 = v13;
  v15 = [a1 activityDefinition];
  v16 = [v15 identifier];

  v17 = sub_2186B7A0C();
  v19 = v18;

  v20 = sub_2186B7B7C();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a1;
  v21[5] = v4;
  v21[6] = v17;
  v21[7] = v19;
  v21[8] = v12;
  v21[9] = v14;
  v23 = v28;
  v22 = v29;
  v21[10] = v28;
  v21[11] = v22;
  v24 = a1;
  v25 = v4;
  sub_21868562C(v23, v22);
  sub_218685DF8(0, 0, v8, &unk_2186B8F98, v21);

  return (*(v9 + 8))(v11, v30);
}

uint64_t sub_21868594C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v13;
  *(v8 + 96) = v12;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  v9 = swift_task_alloc();
  *(v8 + 120) = v9;
  *v9 = v8;
  v9[1] = sub_2186859FC;

  return sub_218693CAC();
}

uint64_t sub_2186859FC()
{

  return MEMORY[0x2822009F8](sub_218685AF8, 0, 0);
}

uint64_t sub_218685AF8()
{
  *(v0 + 128) = sub_2186B7B5C();
  *(v0 + 136) = sub_2186B7B4C();
  v2 = sub_2186B7B0C();

  return MEMORY[0x2822009F8](sub_218685B90, v2, v1);
}

uint64_t sub_218685B90()
{

  sub_2186B7B4C();
  sub_2186B7B0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = v0[13];
  v2 = sub_2186B79FC();
  v3 = sub_2186B79FC();
  if (v1)
  {
    v4 = v0[14];
    v0[6] = v0[13];
    v0[7] = v4;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_218685554;
    v0[5] = &block_descriptor_28;
    v5 = _Block_copy(v0 + 2);
  }

  else
  {
    v5 = 0;
  }

  [v0[8] _triggerAccessPointWithGameActivityDefinitionID_gameActivityInstanceID_handler_];
  _Block_release(v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_218685D18()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_218681150;

  return sub_21868594C(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_218685DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2186861A8(a3, v25 - v10);
  v12 = sub_2186B7B7C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_218686218(v11);
  }

  else
  {
    sub_2186B7B6C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2186B7B0C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2186B7A3C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_218686218(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_218686218(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_2186860B8(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_218686198;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = a1;
  GKAccessPoint.trigger(gameActivity:handler:)(v8, v6, v7);
  sub_218686188(v6, v7);
}

uint64_t sub_218686188(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2186861A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218686218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218686280(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2186818FC;

  return v6(a1);
}

uint64_t sub_218686378(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2186818F8;

  return sub_218686280(a1, v4);
}

uint64_t sub_218686430(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_218681150;

  return sub_218686280(a1, v4);
}

unint64_t sub_2186864E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2186865B4(v11, 0, 0, 1, a1, a2);
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
    sub_218680D68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2186865B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2186866C0(a5, a6);
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
    result = sub_2186B7D8C();
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

void *sub_2186866C0(uint64_t a1, unint64_t a2)
{
  v3 = sub_21868670C(a1, a2);
  sub_21868683C(&unk_282A02610);
  return v3;
}

void *sub_21868670C(uint64_t a1, unint64_t a2)
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

  v6 = sub_218686928(v5, 0);
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

  result = sub_2186B7D8C();
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
        v10 = sub_2186B7A6C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_218686928(v10, 0);
        result = sub_2186B7D3C();
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

uint64_t sub_21868683C(uint64_t result)
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

  result = sub_21868699C(result, v11, 1, v3);
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

void *sub_218686928(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E20, qword_2186B9410);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21868699C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E20, qword_2186B9410);
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

uint64_t sub_218686AA8(uint64_t a1)
{
  v2 = *(v1 + 200);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t *sub_218686B24()
{
  if (qword_2811ED5F0 != -1)
  {
    swift_once();
  }

  return &qword_2811ED640;
}

uint64_t sub_218686B74()
{
  if (qword_2811ED5F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_218686BD0@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_2811ED5E8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_21867FF24(&qword_2811ED618, v2);
}

void sub_218686C50(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  v6 = sub_2186B72AC();
  (*(*(v6 - 8) + 16))(a1, v3 + v4, v6);

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_218686DBC()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivity_identifier);

  return v1;
}

uint64_t sub_218686EF0()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  v3 = sub_2186B70BC();
  os_unfair_lock_unlock((v1 + v2));
  return v3;
}

uint64_t sub_218687064(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v3 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v3));
  sub_218687118();
  os_unfair_lock_unlock((v2 + v3));
}

uint64_t sub_21868730C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2186B709C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v8 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v8));
  sub_2186B71FC();
  v9 = (*(v4 + 88))(v6, v3);
  if (v9 == *MEMORY[0x277D0CA40])
  {
    v10 = 1;
  }

  else if (v9 == *MEMORY[0x277D0CA48])
  {
    v10 = 2;
  }

  else if (v9 == *MEMORY[0x277D0CA38])
  {
    v10 = 4;
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    v10 = 0;
  }

  os_unfair_lock_unlock((v7 + v8));
  return v10;
}

uint64_t sub_2186875A4()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  sub_2186876C4(&v4);
  os_unfair_lock_unlock((v1 + v2));
  return v4;
}

uint64_t sub_21868764C@<X0>(id a1@<X1>, void *a2@<X8>)
{
  v3 = [a1 activityDefinition];
  v4 = [v3 supportsPartyCode];

  if (v4)
  {
    result = sub_2186B727C();
  }

  else
  {
    result = 0;
    v6 = 0;
  }

  *a2 = result;
  a2[1] = v6;
  return result;
}

void sub_218687894(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v4 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v4));
  sub_218687A0C(a1);
  os_unfair_lock_unlock((v3 + v4));
}

uint64_t sub_218687944@<X0>(id a1@<X1>, uint64_t a2@<X8>)
{
  v3 = [a1 activityDefinition];
  v4 = [v3 supportsPartyCode];

  if (v4)
  {
    return sub_2186B726C();
  }

  v6 = sub_2186B6FAC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, 1, 1, v6);
}

id sub_218687C2C(char *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F08, &qword_2186B90A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = *&a1[OBJC_IVAR___GKGameActivity__instanceSnapshot];
  v9 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  v10 = a1;
  os_unfair_lock_lock((v8 + v9));
  a3();
  os_unfair_lock_unlock((v8 + v9));

  v11 = sub_2186B701C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v7, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_2186B6FEC();
    (*(v12 + 8))(v7, v11);
    v14 = v15;
  }

  return v14;
}

void sub_218687DE8(void (*a1)(void))
{
  v3 = *(v1 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v4 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v4));
  a1();

  os_unfair_lock_unlock((v3 + v4));
}

double sub_218687F44()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  sub_2186B725C();
  sub_2186B7EDC();
  v4 = v3;
  os_unfair_lock_unlock((v1 + v2));
  return v4;
}

id sub_218688038(char *a1, uint64_t a2, void *a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  v9 = *&a1[*a3];
  v10 = a1;
  os_unfair_lock_lock(v9 + 6);

  os_unfair_lock_unlock(v9 + 6);

  sub_2186804FC(0, a4, a5);
  sub_21869D768(a6, a4, a5, MEMORY[0x277D85378]);
  v11 = sub_2186B7B8C();

  return v11;
}

uint64_t sub_218688114(void *a1)
{
  v2 = *(v1 + *a1);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));
  return v3;
}

id sub_218688398(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_2186B79FC();

  return v3;
}

uint64_t *sub_218688404()
{
  if (qword_2811ED5E0 != -1)
  {
    swift_once();
  }

  return &qword_2811ED610;
}

char *sub_218688454(void *a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, char a16, void *a17, void *a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char *a23, void *a24, void *a25)
{
  v26 = v25;
  v150 = a8;
  v142 = a7;
  v115 = a6;
  v112 = a5;
  v141 = a4;
  v139 = a3;
  v151 = a2;
  v147 = a1;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v117 = v98 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07000, &qword_2186B9330);
  MEMORY[0x28223BE20](v28 - 8);
  v114 = v98 - v29;
  v113 = sub_2186B74FC();
  v109 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v110 = v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F30, &qword_2186B90D0);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v107 = v98 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v126 = v98 - v34;
  v108 = sub_2186B709C();
  v111 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v125 = v98 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F08, &qword_2186B90A8);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v124 = v98 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v123 = v98 - v40;
  MEMORY[0x28223BE20](v39);
  v122 = v98 - v41;
  v42 = sub_2186B701C();
  v148 = *(v42 - 8);
  v149 = v42;
  MEMORY[0x28223BE20](v42);
  v121 = v98 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  MEMORY[0x28223BE20](v44 - 8);
  v120 = v98 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F58, &qword_2186B90F8);
  MEMORY[0x28223BE20](v46 - 8);
  v48 = v98 - v47;
  v119 = sub_2186B72AC();
  v116 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v118 = v98 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = OBJC_IVAR___GKGameActivity_subscriptions;
  *&v25[OBJC_IVAR___GKGameActivity_subscriptions] = MEMORY[0x277D84FA0];
  v133 = OBJC_IVAR___GKGameActivity_gsTimer;
  *&v25[OBJC_IVAR___GKGameActivity_gsTimer] = 0;
  v50 = OBJC_IVAR___GKGameActivity_updateTrigger;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E58, &unk_2186B9020);
  swift_allocObject();
  v51 = sub_2186B796C();
  v134 = v50;
  *&v25[v50] = v51;
  v52 = [objc_opt_self() distantPast];
  if (v52)
  {
    v135 = a25;
    v136 = a22;
    v137 = a18;
    v138 = a17;
    v143 = a20;
    v144 = a12;
    v145 = a11;
    v146 = a10;
    v131 = OBJC_IVAR___GKGameActivity_lastUpdateTime;
    *&v25[OBJC_IVAR___GKGameActivity_lastUpdateTime] = v52;
    v53 = &v25[OBJC_IVAR___GKGameActivity_identifier];
    v129 = &v25[OBJC_IVAR___GKGameActivity_identifier];
    v54 = v151;
    *v53 = v147;
    v53[1] = v54;
    v130 = OBJC_IVAR___GKGameActivity_activityDefinition;
    v55 = v139;
    *&v26[OBJC_IVAR___GKGameActivity_activityDefinition] = v139;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07008, &qword_2186B9338);
    v56 = swift_allocObject();
    *(v56 + 24) = 0;
    *(v56 + 16) = a13;
    v128 = OBJC_IVAR___GKGameActivity__achievements;
    *&v26[OBJC_IVAR___GKGameActivity__achievements] = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07010, &qword_2186B9340);
    v57 = swift_allocObject();
    *(v57 + 24) = 0;
    *(v57 + 16) = a14;
    v127 = OBJC_IVAR___GKGameActivity__leaderboardScores;
    *&v26[OBJC_IVAR___GKGameActivity__leaderboardScores] = v57;

    v58 = v55;

    v59 = v140;
    sub_2186AAACC(v48);
    v60 = v48;
    v61 = v59;
    if (v59)
    {

      sub_21867F0B8(v144, &qword_27CC06F08, &qword_2186B90A8);
      sub_21867F0B8(v145, &qword_27CC06F08, &qword_2186B90A8);
      sub_21867F0B8(v146, &qword_27CC06F08, &qword_2186B90A8);
      (*(v148 + 8))(v150, v149);
    }

    else
    {
      v100 = v60;
      v139 = a24;
      v140 = a15;
      v104 = v58;
      v102 = a13;
      v103 = a14;
      v101 = a19;
      v62 = sub_2186897FC(a19);
      v63 = sub_2186A0E44(v143);
      if (*(v63 + 16))
      {
        v64 = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07018, &qword_2186B9348);
        v65 = sub_2186B7E2C();
        v63 = v64;
      }

      else
      {
        v65 = MEMORY[0x277D84F98];
      }

      v66 = v144;
      v67 = v114;
      v153 = v65;
      sub_2186A4144(v63, 1, &v153);
      v99 = 0;
      v114 = a23;
      v98[4] = v153;
      v68 = [v140 internalPlayerID];
      sub_2186B7A0C();

      sub_2186B786C();
      (*(v148 + 16))(v121, v150, v149);
      sub_2186A7D78(v146, v122, &qword_27CC06F08, &qword_2186B90A8);
      sub_2186A7D78(v145, v123, &qword_27CC06F08, &qword_2186B90A8);
      sub_2186A7D78(v66, v124, &qword_27CC06F08, &qword_2186B90A8);
      v69 = sub_2186B7EFC();
      v70 = *(v111 + 104);
      v98[3] = v62;
      v98[2] = v69;
      v98[1] = v71;
      if ((v112 - 1) >= 4)
      {
        v72 = MEMORY[0x277D0CA30];
      }

      else
      {
        v72 = qword_278236AC0[v112 - 1];
      }

      v73 = v109;
      v70(v125, *v72, v108);
      v74 = sub_2186B73DC();
      (*(*(v74 - 8) + 56))(v126, 1, 1, v74);

      sub_2186B74DC();
      v75 = *(v73 + 48);
      v76 = v113;
      if (v75(v67, 1, v113) == 1)
      {
        (*(v73 + 104))(v110, *MEMORY[0x277D0CD18], v76);
        v77 = v75(v67, 1, v76);
        v78 = v135;
        if (v77 != 1)
        {
          sub_21867F0B8(v67, &qword_27CC07000, &qword_2186B9330);
        }
      }

      else
      {
        (*(v73 + 32))(v110, v67, v76);
        v78 = v135;
      }

      v61 = (a16 & 1);
      v79 = v118;
      sub_2186B71DC();
      sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
      v80 = v99;
      sub_218680544();
      v81 = v104;
      if (!v80)
      {
        v84 = v140;
        *&v26[OBJC_IVAR___GKGameActivity_creator] = v140;
        v26[OBJC_IVAR___GKGameActivity_initiatedByApple] = v61;
        v85 = v138;
        *&v26[OBJC_IVAR___GKGameActivity_referralLeaderboard] = v138;
        v86 = v78;
        v87 = v137;
        *&v26[OBJC_IVAR___GKGameActivity_referralAchievement] = v137;
        *&v26[OBJC_IVAR___GKGameActivity_participants] = v101;
        *&v26[OBJC_IVAR___GKGameActivity_participantStates] = v143;
        v88 = &v26[OBJC_IVAR___GKGameActivity_consumptionState];
        v89 = v139;
        *v88 = v114;
        v88[1] = v89;
        *&v26[OBJC_IVAR___GKGameActivity_support] = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07020, &qword_2186B9350);
        v90 = swift_allocObject();
        *(v90 + ((*(*v90 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
        (*(v116 + 16))(v90 + *(*v90 + *MEMORY[0x277D841D0] + 16), v79, v119);
        *&v26[OBJC_IVAR___GKGameActivity__instanceSnapshot] = v90;
        v152.receiver = v26;
        v152.super_class = GKGameActivity;
        v151 = v84;
        v91 = v85;
        v92 = v87;
        v93 = v86;
        v61 = objc_msgSendSuper2(&v152, sel_init);
        sub_218689A2C(v107);
        v147 = v93;
        v142 = v98;
        v143 = v92;
        v94 = *&v61[OBJC_IVAR___GKGameActivity__instanceSnapshot];
        MEMORY[0x28223BE20](v95);
        v96 = *(*v94 + *MEMORY[0x277D841D0] + 16);
        v97 = (*(*v94 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v94 + v97));
        sub_2186A7CA4(v94 + v96);
        os_unfair_lock_unlock((v94 + v97));

        [v61 setupUpdateSubscription];

        sub_21867F0B8(v144, &qword_27CC06F08, &qword_2186B90A8);
        sub_21867F0B8(v145, &qword_27CC06F08, &qword_2186B90A8);
        sub_21867F0B8(v146, &qword_27CC06F08, &qword_2186B90A8);
        (*(v148 + 8))(v150, v149);
        (*(v116 + 8))(v118, v119);
        sub_21867F0B8(v107, &qword_27CC06F30, &qword_2186B90D0);
        (*(v105 + 8))(v117, v106);
        return v61;
      }

      sub_21867F0B8(v144, &qword_27CC06F08, &qword_2186B90A8);
      sub_21867F0B8(v145, &qword_27CC06F08, &qword_2186B90A8);
      sub_21867F0B8(v146, &qword_27CC06F08, &qword_2186B90A8);
      (*(v148 + 8))(v150, v149);
      (*(v116 + 8))(v79, v119);
    }

    swift_unknownObjectRelease();

    type metadata accessor for GKGameActivity(v82);
    swift_deallocPartialClassInstance();
    return v61;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21868977C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E58, &unk_2186B9020);
  swift_allocObject();
  return sub_2186B796C();
}

id sub_2186897C0()
{
  result = [objc_opt_self() distantPast];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2186897FC(uint64_t a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v2 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v4 = &v16 - v3;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  v16 = v2 + 32;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  if (v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      v15 = sub_2186A69B8(v11);

      return v15;
    }

    v7 = *(a1 + 56 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      do
      {
LABEL_8:

        sub_2186B786C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_2186A15F4(0, v11[2] + 1, 1, v11);
        }

        v14 = v11[2];
        v13 = v11[3];
        if (v14 >= v13 >> 1)
        {
          v11 = sub_2186A15F4((v13 > 1), v14 + 1, 1, v11);
        }

        v7 &= v7 - 1;
        v11[2] = v14 + 1;
        result = (*(v2 + 32))(v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14, v4, v17);
      }

      while (v7);
    }
  }

  __break(1u);
  return result;
}

void sub_218689A2C(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  v6 = [v1 referralLeaderboard];
  if (!v6)
  {
    v10 = [v1 referralAchievement];
    if (!v10)
    {
      v12 = sub_2186B73DC();
      (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
      return;
    }

    v7 = v10;
    v11 = [v10 identifier];
    sub_2186B7A0C();

    sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
    sub_218680544();
    if (!v2)
    {
      sub_2186B784C();

      v9 = MEMORY[0x277D0CB98];
      goto LABEL_9;
    }

LABEL_6:

    return;
  }

  v7 = v6;
  v8 = [v6 baseLeaderboardID];
  sub_2186B7A0C();

  sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
  sub_218680544();
  if (v2)
  {
    goto LABEL_6;
  }

  sub_2186B782C();

  v9 = MEMORY[0x277D0CB90];
LABEL_9:
  v13 = *v9;
  v14 = sub_2186B73DC();
  v15 = *(v14 - 8);
  (*(v15 + 104))(a1, v13, v14);
  (*(v15 + 56))(a1, 0, 1, v14);
}

uint64_t sub_218689D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v84 = a5;
  v98 = a3;
  v85 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F18, &qword_2186B90B8);
  MEMORY[0x28223BE20](v7 - 8);
  v87 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F30, &qword_2186B90D0);
  MEMORY[0x28223BE20](v9 - 8);
  v83 = &v80 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F08, &qword_2186B90A8);
  MEMORY[0x28223BE20](v11 - 8);
  v93 = &v80 - v12;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v13 = *(v97 - 8);
  v14 = MEMORY[0x28223BE20](v97);
  v88 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v96 = &v80 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07028, &qword_2186B9358);
  MEMORY[0x28223BE20](v17 - 8);
  v95 = &v80 - v18;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v81 = *(v82 - 8);
  v19 = MEMORY[0x28223BE20](v82);
  v102 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v80 - v21;
  v23 = sub_2186B749C();
  v107 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v101 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v108 = &v80 - v26;
  v100 = a4;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2186B7CBC();
    sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
    sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520, MEMORY[0x277D85378]);
    result = sub_2186B7BBC();
    a2 = v113;
    v28 = v114;
    v29 = v115;
    v30 = v116;
    v31 = v117;
  }

  else
  {
    v32 = -1 << *(a2 + 32);
    v28 = a2 + 56;
    v33 = ~v32;
    v34 = -v32;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v31 = v35 & *(a2 + 56);

    v29 = v33;
    v30 = 0;
  }

  v86 = v29;
  v36 = (v29 + 64) >> 6;
  v94 = (v13 + 16);
  v90 = *MEMORY[0x277D0CBF8];
  v103 = v107 + 32;
  v104 = (v107 + 104);
  v105 = v23;
  v37 = MEMORY[0x277D84F90];
  v99 = a2;
  v92 = v28;
  v91 = v36;
  if (a2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v38 = v30;
  v39 = v31;
  v40 = v30;
  if (!v31)
  {
    while (1)
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v40 >= v36)
      {
        goto LABEL_23;
      }

      v39 = *(v28 + 8 * v40);
      ++v38;
      if (v39)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_12:
  v109 = v37;
  v41 = (v39 - 1) & v39;
  v42 = *(*(a2 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v39)))));
  if (!v42)
  {
LABEL_47:
    v37 = v109;
LABEL_23:
    sub_2186A67A0(a2);
    v55 = v100;
    if ((v100 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_2186B7CBC();
      sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
      sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548, MEMORY[0x277D85378]);
      result = sub_2186B7BBC();
      v55 = v118;
      v56 = v119;
      v57 = v120;
      v58 = v121;
      v59 = v122;
    }

    else
    {
      v60 = -1 << *(v100 + 32);
      v56 = v100 + 56;
      v61 = ~v60;
      v62 = -v60;
      if (v62 < 64)
      {
        v63 = ~(-1 << v62);
      }

      else
      {
        v63 = -1;
      }

      v59 = (v63 & *(v100 + 56));

      v57 = v61;
      v58 = 0;
    }

    v96 = v57;
    v64 = (v57 + 64) >> 6;
    LODWORD(v99) = *MEMORY[0x277D0CC00];
    v100 = v55;
    v106 = v56;
    if (v55 < 0)
    {
      goto LABEL_36;
    }

LABEL_30:
    v65 = v58;
    v66 = v59;
    v67 = v58;
    if (v59)
    {
LABEL_34:
      v109 = v37;
      v68 = (v66 - 1) & v66;
      v69 = *(*(v55 + 48) + ((v67 << 9) | (8 * __clz(__rbit64(v66)))));
      if (!v69)
      {
LABEL_46:
        sub_2186A67A0(v55);
        sub_2186B710C();
        sub_2186A7D78(v84, v83, &qword_27CC06F30, &qword_2186B90D0);
        return sub_2186B718C();
      }

      while (1)
      {
        v108 = v68;
        v98 = v58;
        v71 = [v69 player];
        v72 = [v71 internalPlayerID];

        sub_2186B7A0C();
        sub_2186B786C();
        [v69 value];
        result = [v69 context];
        if (result < 0)
        {
          goto LABEL_54;
        }

        v97 = v59;
        v73 = [v69 leaderboardID];
        sub_2186B7A0C();

        sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
        v74 = v110;
        sub_218680544();
        if (v74)
        {
          v110 = v74;
          (*(v81 + 8))(v102, v82);

          v79 = v100;
          goto LABEL_51;
        }

        sub_2186B782C();
        v110 = 0;
        v75 = v101;
        sub_2186B75EC();
        v76 = v105;
        (*v104)(v75, v99, v105);
        v37 = v109;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_2186A18F0(0, v37[2] + 1, 1, v37, &qword_27CC07030, &qword_2186B9360, MEMORY[0x277D0CC08]);
        }

        v78 = v37[2];
        v77 = v37[3];
        v55 = v100;
        if (v78 >= v77 >> 1)
        {
          v37 = sub_2186A18F0((v77 > 1), v78 + 1, 1, v37, &qword_27CC07030, &qword_2186B9360, MEMORY[0x277D0CC08]);
        }

        v37[2] = v78 + 1;
        result = (*(v107 + 32))(v37 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v78, v101, v76);
        v58 = v67;
        v59 = v108;
        v56 = v106;
        if ((v55 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

LABEL_36:
        v70 = sub_2186B7CEC();
        if (v70)
        {
          v109 = v37;
          v111 = v70;
          sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
          swift_dynamicCast();
          v69 = v112;
          v67 = v58;
          v68 = v59;
          if (v112)
          {
            continue;
          }
        }

        goto LABEL_46;
      }
    }

    while (1)
    {
      v67 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      if (v67 >= v64)
      {
        goto LABEL_46;
      }

      v66 = *(v56 + 8 * v67);
      ++v65;
      if (v66)
      {
        goto LABEL_34;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    return result;
  }

  while (1)
  {
    v106 = v41;
    v89 = v31;
    v44 = [v42 player];
    v45 = [v44 internalPlayerID];

    sub_2186B7A0C();
    sub_2186B786C();
    v46 = [v42 identifier];
    sub_2186B7A0C();

    (*v94)(v96, v98, v97);
    v47 = v110;
    sub_2186B77DC();
    v110 = v47;
    if (v47)
    {
      break;
    }

    [v42 percentComplete];
    [v42 isCompleted];
    v48 = [v42 lastReportedDate];
    v49 = v93;
    sub_2186B6FFC();

    v50 = sub_2186B701C();
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    v51 = v108;
    sub_2186B768C();
    v52 = v105;
    (*v104)(v51, v90, v105);
    v37 = v109;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_2186A18F0(0, v37[2] + 1, 1, v37, &qword_27CC07030, &qword_2186B9360, MEMORY[0x277D0CC08]);
    }

    v36 = v91;
    v54 = v37[2];
    v53 = v37[3];
    if (v54 >= v53 >> 1)
    {
      v37 = sub_2186A18F0((v53 > 1), v54 + 1, 1, v37, &qword_27CC07030, &qword_2186B9360, MEMORY[0x277D0CC08]);
    }

    v28 = v92;

    v37[2] = v54 + 1;
    result = (*(v107 + 32))(v37 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v54, v108, v52);
    v30 = v40;
    v31 = v106;
    a2 = v99;
    if ((v99 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v43 = sub_2186B7CEC();
    if (!v43)
    {
      goto LABEL_23;
    }

    v109 = v37;
    v111 = v43;
    sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
    swift_dynamicCast();
    v42 = v112;
    v40 = v30;
    v41 = v31;
    if (!v112)
    {
      goto LABEL_47;
    }
  }

  (*(v81 + 8))(v22, v82);

  v79 = v99;
LABEL_51:
  sub_2186A67A0(v79);
}

uint64_t sub_21868B22C()
{
  v12 = sub_2186B7C1C();
  v1 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06FE0, &qword_2186B9318);
  v5 = *(v4 - 8);
  v13 = v4;
  v14 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v15 = *(v0 + OBJC_IVAR___GKGameActivity_updateTrigger);

  sub_2186B7C0C();
  sub_2186804FC(0, &qword_27CC06D78, 0x277D85C78);
  v8 = sub_2186B7C2C();
  v16 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E58, &unk_2186B9020);
  sub_218680664(&qword_27CC06FE8, &qword_27CC06E58, &unk_2186B9020, MEMORY[0x277CBCE20]);
  sub_21869D768(&qword_27CC06FF0, &qword_27CC06D78, 0x277D85C78, MEMORY[0x277D85228]);
  sub_2186B798C();

  (*(v1 + 8))(v3, v12);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218680664(&qword_27CC06FF8, &qword_27CC06FE0, &qword_2186B9318, MEMORY[0x277CBCD20]);
  v9 = v13;
  sub_2186B799C();

  (*(v14 + 8))(v7, v9);
  swift_beginAccess();
  sub_2186B795C();
  swift_endAccess();
}

void *sub_21868B560(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_2186B74BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    (*(v5 + 104))(v10, *MEMORY[0x277D0CC48], v4);
    v13 = sub_2186B7B7C();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    (*(v5 + 16))(v8, v10, v4);
    v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 4) = v12;
    (*(v5 + 32))(&v15[v14], v8, v4);
    v16 = v12;
    sub_21869BCBC(0, 0, v3, &unk_2186B9328, v15);

    return (*(v5 + 8))(v10, v4);
  }

  return result;
}

id GKGameActivity.init(definition:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDefinition_];

  return v2;
}

{
  v2 = v1;
  v97 = *MEMORY[0x277D85DE8];
  v76 = sub_2186B794C();
  v75 = *(v76 - 8);
  v4 = MEMORY[0x28223BE20](v76);
  v73 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v74 = &v68 - v6;
  v72 = sub_2186B757C();
  v71 = *(v72 - 8);
  v7 = MEMORY[0x28223BE20](v72);
  v70 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v69 = &v68 - v9;
  v10 = sub_2186B74BC();
  v87 = *(v10 - 8);
  v88 = v10;
  MEMORY[0x28223BE20](v10);
  v86 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_2186B74FC();
  v81 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_2186B701C();
  v13 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2186B704C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromObject = swift_getObjCClassFromObject();
  v89 = v2;
  ObjectType = swift_getObjectType();
  v21 = objc_opt_self();
  v22 = a1;
  v91 = [v21 localPlayer];
  if (qword_2811ED5E0 != -1)
  {
    swift_once();
  }

  v90 = qword_2811ED610;
  v23 = [v22 defaultProperties];
  v92 = v22;
  sub_2186B79BC();

  v82 = objc_allocWithZone(ObjCClassFromObject);
  sub_2186B703C();
  sub_2186B702C();
  (*(v17 + 8))(v19, v16);
  v80 = sub_2186B79FC();

  v79 = sub_2186B79AC();

  sub_2186B700C();
  v78 = sub_2186B6FEC();
  (*(v13 + 8))(v15, v77);
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  v24 = MEMORY[0x277D85378];
  sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520, MEMORY[0x277D85378]);
  v77 = sub_2186B7B8C();
  sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
  sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548, v24);
  v25 = sub_2186B7B8C();
  sub_2186B71CC();
  v26 = sub_2186B79FC();

  v27 = sub_2186B7B8C();
  sub_2186A6594(MEMORY[0x277D84F90]);
  v28 = sub_2186B79AC();

  v29 = v81;
  v30 = v83;
  v31 = v84;
  (*(v81 + 104))(v83, *MEMORY[0x277D0CD18], v84);
  sub_2186B74EC();
  (*(v29 + 8))(v30, v31);
  v32 = sub_2186B79FC();

  v94 = 0;
  LOBYTE(v67) = 0;
  v33 = v77;
  v34 = v80;
  v35 = v79;
  v36 = v78;
  v37 = [v82 initWithIdentifier:v80 activityDefinition:v92 properties:v79 state:0 partyCode:0 creationDate:v78 startDate:0.0 lastResumeDate:0 endDate:0 duration:0 achievements:v77 leaderboardScores:v25 creator:v91 initiatedByApple:v67 referralLeaderboard:0 referralAchievement:0 participants:v27 participantStates:v28 shortGroupID:v26 consumptionState:v32 support:v90 error:&v94];

  v38 = v94;
  if (v37)
  {
    v40 = v86;
    v39 = v87;
    v41 = v88;
    (*(v87 + 104))(v86, *MEMORY[0x277D0CC10], v88);
    v42 = v38;
    v43 = v37;
    sub_21868D6FC(v40);
    v44 = v92;

    (*(v39 + 8))(v40, v41);
    swift_deallocPartialClassInstance();
    return v43;
  }

  else
  {
    v46 = v94;
    v47 = sub_2186B6F7C();

    swift_willThrow();
    v96 = v47;
    v48 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
    if (swift_dynamicCast())
    {
      v49 = v70;
      (*(v71 + 32))(v70, v69, v72);
      v50 = sub_2186832A8(v49);
      v51 = sub_21867F9D4();
      (*(v75 + 16))(v74, v51, v76);
      v52 = v50;
      v53 = sub_2186B792C();
      v54 = sub_2186B7BEC();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412290;
        v57 = v52;
        v58 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 4) = v58;
        *v56 = v58;
        _os_log_impl(&dword_21867D000, v53, v54, "Failed to initialize GKGameActivity: %@", v55, 0xCu);
        sub_21867F0B8(v56, &qword_27CC06D90, &qword_2186B8C70);
        MEMORY[0x21CEB1A70](v56, -1, -1);
        MEMORY[0x21CEB1A70](v55, -1, -1);
      }

      (*(v75 + 8))(v74, v76);
      v94 = 0;
      v95 = 0xE000000000000000;
      sub_2186B7D4C();
      MEMORY[0x21CEB1070](0xD000000000000025, 0x80000002186B9980);
      v93 = v52;
      type metadata accessor for GKError(0);
      sub_2186B7DDC();
    }

    else
    {

      v59 = sub_21867F9D4();
      (*(v75 + 16))(v73, v59, v76);
      v60 = v47;
      v61 = sub_2186B792C();
      v62 = sub_2186B7BEC();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v63 = 138412290;
        v65 = v47;
        v66 = _swift_stdlib_bridgeErrorToNSError();
        *(v63 + 4) = v66;
        *v64 = v66;
        _os_log_impl(&dword_21867D000, v61, v62, "Failed to initialize GKGameActivity: %@", v63, 0xCu);
        sub_21867F0B8(v64, &qword_27CC06D90, &qword_2186B8C70);
        MEMORY[0x21CEB1A70](v64, -1, -1);
        MEMORY[0x21CEB1A70](v63, -1, -1);
      }

      (*(v75 + 8))(v73, v76);
      v94 = 0;
      v95 = 0xE000000000000000;
      sub_2186B7D4C();
      MEMORY[0x21CEB1070](0xD000000000000025, 0x80000002186B9980);
      swift_getErrorValue();
      sub_2186B7E4C();
    }

    result = sub_2186B7DEC();
    __break(1u);
  }

  return result;
}

id sub_21868C4A4(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v92 = a4;
  v93 = a1;
  v95[1] = *MEMORY[0x277D85DE8];
  v8 = sub_2186B74BC();
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x28223BE20](v8);
  v81 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2186B74FC();
  v89 = *(v10 - 8);
  v90 = v10;
  MEMORY[0x28223BE20](v10);
  v88 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2186B701C();
  v86 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v85 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2186B704C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_2186B794C();
  v84 = *(v91 - 1);
  v18 = MEMORY[0x28223BE20](v91);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v77 - v21;
  if (!a3)
  {
    v80 = a2;
    v91 = a5;
    v26 = 0;
    v28 = v93;
    goto LABEL_6;
  }

  v79 = v12;
  v23 = a5;
  v24 = sub_2186B7A2C();
  v26 = v25;

  v80 = v24;
  valid = _sSo14GKGameActivityC7GameKitE16isValidPartyCodeySbSSFZ_0();

  if (valid)
  {
    v28 = v93;
    v29 = v23;
    if ([v93 supportsPartyCode])
    {
      v91 = v23;
      v12 = v79;
LABEL_6:
      v30 = [v28 defaultProperties];
      sub_2186B79BC();

      sub_2186B703C();
      sub_2186B702C();
      (*(v15 + 8))(v17, v14);
      v84 = sub_2186B79FC();

      v79 = sub_2186B79AC();

      if (v26)
      {
        v80 = sub_2186B79FC();
      }

      else
      {
        v80 = 0;
      }

      v87 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v39 = v85;
      sub_2186B700C();
      v78 = sub_2186B6FEC();
      (*(v86 + 8))(v39, v12);
      sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
      v40 = MEMORY[0x277D85378];
      sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520, MEMORY[0x277D85378]);
      v86 = sub_2186B7B8C();
      sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
      sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548, v40);
      v41 = sub_2186B7B8C();
      sub_2186B71CC();
      v42 = sub_2186B79FC();

      v43 = sub_2186B7B8C();
      v77 = v43;
      sub_2186A6594(MEMORY[0x277D84F90]);
      v44 = sub_2186B79AC();
      v85 = v44;

      v45 = v88;
      v46 = v89;
      v47 = v90;
      (*(v89 + 104))(v88, *MEMORY[0x277D0CD18], v90);
      sub_2186B74EC();
      (*(v46 + 8))(v45, v47);
      v48 = sub_2186B79FC();

      v95[0] = 0;
      v75 = v44;
      v76 = v42;
      v49 = v42;
      v74 = v43;
      LOBYTE(v73) = 0;
      v72 = v41;
      v50 = v41;
      v51 = v86;
      v52 = v84;
      v53 = v79;
      v54 = v80;
      v55 = v78;
      v56 = [v87 initWithIdentifier:v84 activityDefinition:v93 properties:v79 state:0 partyCode:v80 creationDate:v78 startDate:0.0 lastResumeDate:0 endDate:0 duration:0 achievements:v86 leaderboardScores:v72 creator:v92 initiatedByApple:v73 referralLeaderboard:0 referralAchievement:0 participants:v74 participantStates:v75 shortGroupID:v76 consumptionState:v48 support:v91 error:v95];

      v57 = v95[0];
      if (v56)
      {
        v59 = v81;
        v58 = v82;
        v60 = v83;
        (*(v82 + 104))(v81, *MEMORY[0x277D0CC10], v83);
        v61 = v57;
        v38 = v56;
        sub_21868D6FC(v59);

        (*(v58 + 8))(v59, v60);
      }

      else
      {
        v38 = v95[0];
        sub_2186B6F7C();

        swift_willThrow();
      }

      return v38;
    }

    v62 = sub_21867F9D4();
    v63 = v84;
    v64 = v91;
    (*(v84 + 16))(v22, v62, v91);
    v65 = sub_2186B792C();
    v66 = sub_2186B7BEC();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = v29;
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_21867D000, v65, v66, "Party code is not supported for this activity.", v68, 2u);
      v69 = v68;
      v29 = v67;
      v28 = v93;
      MEMORY[0x21CEB1A70](v69, -1, -1);
    }

    (*(v63 + 8))(v22, v64);
    type metadata accessor for GKError(0);
    v38 = v70;
    v94 = 17;
    sub_218683CC0(MEMORY[0x277D84F90]);
    sub_2186A7360(&qword_27CC06D98, type metadata accessor for GKError, &unk_2186B8E18);
    sub_2186B6F5C();
    swift_willThrow();
  }

  else
  {

    v31 = sub_21867F9D4();
    v32 = v84;
    v33 = v91;
    (*(v84 + 16))(v20, v31, v91);
    v34 = sub_2186B792C();
    v35 = sub_2186B7BEC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_21867D000, v34, v35, "Invalid party code provided.", v36, 2u);
      MEMORY[0x21CEB1A70](v36, -1, -1);
    }

    (*(v32 + 8))(v20, v33);
    type metadata accessor for GKError(0);
    v38 = v37;
    v94 = 17;
    sub_218683CC0(MEMORY[0x277D84F90]);
    sub_2186A7360(&qword_27CC06D98, type metadata accessor for GKError, &unk_2186B8E18);
    sub_2186B6F5C();
    swift_willThrow();
  }

  return v38;
}

void static GKGameActivity.start(definition:partyCode:)(uint64_t a1)
{
  if (qword_2811ED5E0 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  v2 = MEMORY[0x28223BE20](a1);
  type metadata accessor for GKGameActivity(v2);
  sub_2186832AC(sub_2186A66BC);
}

void static GKGameActivity.start(definition:)(uint64_t a1)
{
  if (qword_2811ED5E0 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  v2 = MEMORY[0x28223BE20](a1);
  type metadata accessor for GKGameActivity(v2);
  sub_2186832AC(sub_2186A8670);
}

Swift::Void __swiftcall GKGameActivity.start()()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  sub_2186A66F0();
  os_unfair_lock_unlock((v1 + v2));
}

uint64_t sub_21868D4AC()
{
  v0 = sub_2186B74BC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F08, &qword_2186B90A8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_2186B709C();
  MEMORY[0x28223BE20](v7);
  (*(v9 + 104))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D0CA40]);
  sub_2186B720C();
  sub_2186B700C();
  v10 = sub_2186B701C();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  sub_2186B729C();
  sub_2186B728C();
  sub_2186B714C();
  (*(v1 + 104))(v3, *MEMORY[0x277D0CC60], v0);
  sub_21868D6FC(v3);
  return (*(v1 + 8))(v3, v0);
}

void sub_21868D6FC(uint64_t a1)
{
  v3 = sub_2186B74BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v18 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  v9 = [v1 lastUpdateTime];
  [v18 timeIntervalSinceDate_];
  v11 = v10;

  if (v11 >= 2.0)
  {
    v13 = sub_2186B7B7C();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    (*(v4 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v14 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 4) = v1;
    (*(v4 + 32))(&v15[v14], &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    v16 = v1;
    sub_21869BCBC(0, 0, v8, &unk_2186B9450, v15);

    [v16 setLastUpdateTime_];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E58, &unk_2186B9020);
    sub_218680664(&qword_27CC070E0, &qword_27CC06E58, &unk_2186B9020, MEMORY[0x277CBCE18]);
    sub_2186B797C();
    v12 = v18;
  }
}

Swift::Void __swiftcall GKGameActivity.pause()()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_2186A671C(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_21868DB48(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v2 = sub_2186B74BC();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2186B794C();
  v4 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F08, &qword_2186B90A8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = sub_2186B701C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  v20 = sub_2186B709C();
  MEMORY[0x28223BE20](v20);
  (*(v22 + 104))(&v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D0CA48]);
  sub_2186B720C();
  sub_2186B713C();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21867F0B8(v12, &qword_27CC06F08, &qword_2186B90A8);
    v23 = sub_21867F9D4();
    v24 = v35;
    (*(v4 + 16))(v6, v23, v35);
    v25 = sub_2186B792C();
    v26 = sub_2186B7BEC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21867D000, v25, v26, "Failed to pause game activity: last resume date is nil.", v27, 2u);
      MEMORY[0x21CEB1A70](v27, -1, -1);
    }

    return (*(v4 + 8))(v6, v24);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    sub_2186B700C();
    sub_2186B6FDC();
    v29 = *(v14 + 8);
    v29(v17, v13);
    sub_2186B7EFC();
    v30 = sub_2186B724C();
    sub_2186B7EEC();
    v30(v40, 0);
    (*(v14 + 56))(v10, 1, 1, v13);
    sub_2186B714C();
    v32 = v37;
    v31 = v38;
    v33 = v39;
    (*(v38 + 104))(v37, *MEMORY[0x277D0CC50], v39);
    sub_21868D6FC(v32);
    (*(v31 + 8))(v32, v33);
    return (v29)(v19, v13);
  }
}

Swift::Void __swiftcall GKGameActivity.resume()()
{
  v1 = *(v0 + OBJC_IVAR___GKGameActivity__instanceSnapshot);
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v2));
  sub_2186A6748();
  os_unfair_lock_unlock((v1 + v2));
}

uint64_t sub_21868E1B8()
{
  v0 = sub_2186B74BC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F08, &qword_2186B90A8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_2186B709C();
  MEMORY[0x28223BE20](v7);
  (*(v9 + 104))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D0CA40]);
  sub_2186B720C();
  sub_2186B700C();
  v10 = sub_2186B701C();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  sub_2186B714C();
  (*(v1 + 104))(v3, *MEMORY[0x277D0CC58], v0);
  sub_21868D6FC(v3);
  return (*(v1 + 8))(v3, v0);
}

Swift::Void __swiftcall GKGameActivity.end()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  MEMORY[0x28223BE20](v1 - 8);
  v34 = v33 - v2;
  v3 = *&v0[OBJC_IVAR___GKGameActivity__instanceSnapshot];
  v36 = v0;
  v4 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_2186A6774(v3 + v4);
  v33[3] = 0;
  os_unfair_lock_unlock((v3 + v5));
  v35 = v0;
  v6 = [v0 achievements];
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  v7 = sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520, MEMORY[0x277D85378]);
  v8 = sub_2186B7B9C();

  v33[2] = v7;
  if ((v8 & 0xC000000000000001) != 0)
  {
    sub_2186B7CBC();
    sub_2186B7BBC();
    v8 = aBlock[7];
    v9 = aBlock[8];
    v10 = aBlock[9];
    v11 = aBlock[10];
    v12 = aBlock[11];
  }

  else
  {
    v11 = 0;
    v13 = -1 << *(v8 + 32);
    v9 = v8 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v8 + 56);
  }

  v33[1] = v10;
  v16 = (v10 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v17 = v11;
    v18 = v12;
    v19 = v11;
    if (!v12)
    {
      break;
    }

LABEL_12:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v8 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v21)
    {
LABEL_18:
      sub_2186A67A0(v8);
      v23 = objc_opt_self();
      v24 = v35;
      v25 = [v35 achievements];
      v26 = sub_2186B7B9C();

      sub_21868EF08(v26);

      v27 = sub_2186B7A9C();

      aBlock[4] = sub_21868F174;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21868F364;
      aBlock[3] = &block_descriptor_2;
      v28 = _Block_copy(aBlock);
      [v23 reportAchievements:v27 withCompletionHandler:v28];
      _Block_release(v28);

      v29 = sub_2186B7B7C();
      v30 = v34;
      (*(*(v29 - 8) + 56))(v34, 1, 1, v29);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v24;
      v32 = v24;
      sub_218685DF8(0, 0, v30, &unk_2186B9038, v31);

      return;
    }

    while (1)
    {
      [v21 setShowsCompletionBanner_];

      v11 = v19;
      v12 = v20;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v22 = sub_2186B7CEC();
      if (v22)
      {
        v37 = v22;
        swift_dynamicCast();
        v21 = aBlock[0];
        v19 = v11;
        v20 = v12;
        if (aBlock[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_18;
    }

    v18 = *(v9 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_21868E93C(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v2 = sub_2186B794C();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2186B74BC();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2186B701C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v40 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F08, &qword_2186B90A8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  v20 = sub_2186B709C();
  MEMORY[0x28223BE20](v20);
  (*(v22 + 104))(&v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D0CA38]);
  sub_2186B720C();
  sub_2186B700C();
  v42 = *(v7 + 56);
  v42(v19, 0, 1, v6);
  sub_2186B723C();
  sub_2186B728C();
  v23 = *(v7 + 48);
  v24 = v23(v17, 1, v6);
  sub_21867F0B8(v17, &qword_27CC06F08, &qword_2186B90A8);
  if (v24 == 1)
  {
    v25 = sub_21867F9D4();
    v27 = v43;
    v26 = v44;
    v28 = v45;
    (*(v44 + 16))(v43, v25, v45);
    v29 = sub_2186B792C();
    v30 = sub_2186B7BEC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_21867D000, v29, v30, "Failed to end game activity: start date is nil.", v31, 2u);
      MEMORY[0x21CEB1A70](v31, -1, -1);
    }

    return (*(v26 + 8))(v27, v28);
  }

  else
  {
    sub_2186B713C();
    if (v23(v14, 1, v6) == 1)
    {
      sub_21867F0B8(v14, &qword_27CC06F08, &qword_2186B90A8);
    }

    else
    {
      v33 = v41;
      (*(v7 + 32))(v41, v14, v6);
      v34 = v40;
      sub_2186B700C();
      sub_2186B6FDC();
      v35 = *(v7 + 8);
      v35(v34, v6);
      sub_2186B7EFC();
      v36 = sub_2186B724C();
      sub_2186B7EEC();
      v36(v50, 0);
      v35(v33, v6);
    }

    v42(v19, 1, 1, v6);
    sub_2186B714C();
    v38 = v46;
    v37 = v47;
    v39 = v48;
    (*(v47 + 104))(v46, *MEMORY[0x277D0CC40], v48);
    sub_21868D6FC(v38);
    return (*(v37 + 8))(v38, v39);
  }
}

void *sub_21868EF08(uint64_t a1)
{
  v1 = a1;
  v20 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2186B7CBC();
    sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
    sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520, MEMORY[0x277D85378]);
    result = sub_2186B7BBC();
    v1 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
    v6 = v19;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = MEMORY[0x277D84F90];
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v12 - 1) & v12;
    if (!*(*(v1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v12))))))
    {
LABEL_20:
      sub_2186A67A0(v1);
      return v10;
    }

    while (1)
    {
      MEMORY[0x21CEB10A0]();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2186B7ACC();
      }

      result = sub_2186B7AEC();
      v10 = v20;
      v6 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_2186B7CEC())
      {
        sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
        swift_dynamicCast();
        v13 = v6;
        if (v14)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v12 = *(v3 + 8 * v5);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21868F174(void *a1)
{
  v2 = sub_2186B794C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21867F9D4();
  (*(v3 + 16))(v5, v6, v2);
  v7 = a1;
  v8 = sub_2186B792C();
  v9 = sub_2186B7BEC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = a1;
    v18 = v11;
    *v10 = 136315138;
    v12 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E18, qword_2186B8FB8);
    v13 = sub_2186B7A1C();
    v15 = sub_2186864E8(v13, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_21867D000, v8, v9, "Failed to report achievements on activity end, due to error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x21CEB1A70](v11, -1, -1);
    MEMORY[0x21CEB1A70](v10, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_21868F364(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_21868F3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = sub_2186B794C();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21868F490, 0, 0);
}

void sub_21868F490()
{
  v1 = [*(v0 + 104) leaderboardScores];
  *(v0 + 136) = sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
  sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548, MEMORY[0x277D85378]);
  v2 = sub_2186B7B9C();

  if ((v2 & 0xC000000000000001) != 0)
  {
    sub_2186B7CBC();
    sub_2186B7BBC();
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    *(v0 + 152) = v3;
    *(v0 + 160) = v4;
    *(v0 + 144) = v2;
    if (v2 < 0)
    {
      v18 = sub_2186B7CEC();
      if (!v18)
      {
LABEL_19:
        sub_2186A67A0(*(v0 + 144));

        v19 = *(v0 + 8);

        v19();
        return;
      }

      *(v0 + 96) = v18;
      swift_dynamicCast();
      v15 = *(v0 + 88);
      v11 = v5;
      v14 = v6;
LABEL_13:
      *(v0 + 176) = v11;
      *(v0 + 184) = v14;
      *(v0 + 168) = v15;
      if (v15)
      {
        v16 = swift_task_alloc();
        *(v0 + 192) = v16;
        *(v16 + 16) = v15;
        v17 = swift_task_alloc();
        *(v0 + 200) = v17;
        *v17 = v0;
        v17[1] = sub_21868F77C;

        sub_218682BE4(v17, &unk_2186B9438);
        return;
      }

      goto LABEL_19;
    }

    v7 = v4 + 64;
  }

  else
  {
    v5 = 0;
    v8 = -1;
    v9 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v6 = v8 & *(v2 + 56);
    *(v0 + 152) = v3;
    *(v0 + 160) = ~v9;
    *(v0 + 144) = v2;
    v7 = 63 - v9;
  }

  v10 = v6;
  v11 = v5;
  if (v6)
  {
LABEL_12:
    v14 = (v10 - 1) & v10;
    v15 = *(*(v2 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    goto LABEL_13;
  }

  v12 = v7 >> 6;
  v13 = v5;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= v12)
    {
      goto LABEL_19;
    }

    v10 = *(v3 + 8 * v11);
    ++v13;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_21868F77C()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_21868FA90;
  }

  else
  {

    v2 = sub_21868F898;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_21868F898()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 144);
  if (v3 < 0)
  {
    v9 = sub_2186B7CEC();
    if (!v9)
    {
LABEL_14:
      sub_2186A67A0(*(v0 + 144));

      v12 = *(v0 + 8);

      v12();
      return;
    }

    *(v0 + 96) = v9;
    swift_dynamicCast();
    v8 = *(v0 + 88);
    v5 = v1;
    v7 = v2;
LABEL_10:
    *(v0 + 176) = v5;
    *(v0 + 184) = v7;
    *(v0 + 168) = v8;
    if (v8)
    {
      v10 = swift_task_alloc();
      *(v0 + 192) = v10;
      *(v10 + 16) = v8;
      v11 = swift_task_alloc();
      *(v0 + 200) = v11;
      *v11 = v0;
      v11[1] = sub_21868F77C;

      sub_218682BE4(v11, &unk_2186B9438);
      return;
    }

    goto LABEL_14;
  }

  v4 = *(v0 + 184);
  v5 = *(v0 + 176);
  if (v2)
  {
LABEL_7:
    v7 = (v4 - 1) & v4;
    v8 = *(*(v3 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v4)))));
    goto LABEL_10;
  }

  v6 = *(v0 + 176);
  while (1)
  {
    v5 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v5 >= ((*(v0 + 160) + 64) >> 6))
    {
      goto LABEL_14;
    }

    v4 = *(*(v0 + 152) + 8 * v5);
    ++v6;
    if (v4)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_21868FA90()
{
  v47 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 112);

  v6 = sub_21867F9D4();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = v1;
  v9 = sub_2186B792C();
  v10 = sub_2186B7BEC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 168);
    v42 = *(v0 + 208);
    v43 = v11;
    v12 = *(v0 + 120);
    v44 = *(v0 + 112);
    v45 = *(v0 + 128);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v46 = v14;
    *v13 = 136315394;
    v15 = [v11 leaderboardID];
    v16 = sub_2186B7A0C();
    v18 = v17;

    v19 = sub_2186864E8(v16, v18, &v46);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v20 = *(*(v0 + 64) - 8);
    swift_task_alloc();
    (*(v20 + 16))();
    v21 = sub_2186B7A1C();
    v23 = v22;

    v24 = sub_2186864E8(v21, v23, &v46);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_21867D000, v9, v10, "Failed to report score on activity end for leaderboard %s, due to error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEB1A70](v14, -1, -1);
    MEMORY[0x21CEB1A70](v13, -1, -1);

    result = (*(v12 + 8))(v45, v44);
  }

  else
  {
    v26 = *(v0 + 208);
    v28 = *(v0 + 120);
    v27 = *(v0 + 128);
    v29 = *(v0 + 112);

    result = (*(v28 + 8))(v27, v29);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 184);
  v32 = *(v0 + 144);
  if (v32 < 0)
  {
    v38 = sub_2186B7CEC();
    if (!v38)
    {
LABEL_17:
      sub_2186A67A0(*(v0 + 144));

      v41 = *(v0 + 8);

      return v41();
    }

    *(v0 + 96) = v38;
    swift_dynamicCast();
    v37 = *(v0 + 88);
    v34 = v30;
    v36 = v31;
LABEL_13:
    *(v0 + 176) = v34;
    *(v0 + 184) = v36;
    *(v0 + 168) = v37;
    if (v37)
    {
      v39 = swift_task_alloc();
      *(v0 + 192) = v39;
      *(v39 + 16) = v37;
      v40 = swift_task_alloc();
      *(v0 + 200) = v40;
      *v40 = v0;
      v40[1] = sub_21868F77C;

      return sub_218682BE4(v40, &unk_2186B9438);
    }

    goto LABEL_17;
  }

  v33 = *(v0 + 184);
  v34 = *(v0 + 176);
  if (v31)
  {
LABEL_10:
    v36 = (v33 - 1) & v33;
    v37 = *(*(v32 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v33)))));
    goto LABEL_13;
  }

  v35 = *(v0 + 176);
  while (1)
  {
    v34 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v34 >= ((*(v0 + 160) + 64) >> 6))
    {
      goto LABEL_17;
    }

    v33 = *(*(v0 + 152) + 8 * v34);
    ++v35;
    if (v33)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21868FF24(uint64_t a1, uint64_t a2)
{
  v2[18] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC070D8, &unk_2186B9440);
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21868FFF0, 0, 0);
}

uint64_t sub_21868FFF0()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v1[18];
  v18 = objc_opt_self();
  v17 = [v6 value];
  v16 = [v6 context];
  v7 = [v6 player];
  v1[22] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E08, &qword_2186B9120);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2186B8F70;
  v9 = [v6 leaderboardID];
  v10 = sub_2186B7A0C();
  v12 = v11;

  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  v13 = sub_2186B7A9C();
  v1[23] = v13;

  v1[2] = v1;
  v1[3] = sub_218690288;
  swift_continuation_init();
  v1[17] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
  sub_2186B7B1C();
  (*(v3 + 32))(boxed_opaque_existential_0, v4, v5);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_218690494;
  v1[13] = &block_descriptor_195;
  [v18 submitScore:v17 context:v16 player:v7 leaderboardIDs:v13 completionHandler:?];
  (*(v3 + 8))(boxed_opaque_existential_0, v5);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_218690288()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_21869040C;
  }

  else
  {
    v2 = sub_218690398;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218690398()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21869040C(uint64_t a1)
{
  v2 = v1[23];
  v3 = v1[22];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

void sub_218690494(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC070D8, &unk_2186B9440);
    sub_2186B7B2C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC070D8, &unk_2186B9440);
    sub_2186B7B3C();
  }
}

Swift::Void __swiftcall GKGameActivity.setScore(on:to:context:)(GKLeaderboard on, Swift::Int to, Swift::Int context)
{
  v4 = v3;
  v8 = sub_2186B74BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_opt_self() localPlayer];
  if ([v4 state] == 4)
  {
    v12 = v23;
  }

  else
  {
    v22 = v8;
    v13 = [objc_allocWithZone(off_278236548) init];
    v14 = [(objc_class *)on.super.isa baseLeaderboardID];
    if (!v14)
    {
      sub_2186B7A0C();
      v14 = sub_2186B79FC();
    }

    v15 = sub_2186B7A0C();
    v17 = v16;
    [v13 setLeaderboardID_];

    [v13 setValue_];
    [v13 setContext_];
    v18 = [v13 setPlayer_];
    v19 = *&v4[OBJC_IVAR___GKGameActivity__leaderboardScores];
    MEMORY[0x28223BE20](v18);
    *(&v21 - 4) = v15;
    *(&v21 - 3) = v17;
    *(&v21 - 2) = v13;
    os_unfair_lock_lock((v19 + 24));
    sub_2186A683C((v19 + 16));
    os_unfair_lock_unlock((v19 + 24));

    v20 = v22;
    (*(v9 + 104))(v11, *MEMORY[0x277D0CC30], v22);
    sub_21868D6FC(v11);

    (*(v9 + 8))(v11, v20);
  }
}

Swift::Void __swiftcall GKGameActivity.setScore(on:to:)(GKLeaderboard on, Swift::Int to)
{
  v5 = sub_2186B74BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_opt_self() localPlayer];
  if ([v2 state] == 4)
  {
    v9 = v20;
  }

  else
  {
    v19 = v5;
    v10 = [objc_allocWithZone(off_278236548) init];
    v11 = [(objc_class *)on.super.isa baseLeaderboardID];
    if (!v11)
    {
      sub_2186B7A0C();
      v11 = sub_2186B79FC();
    }

    v12 = sub_2186B7A0C();
    v14 = v13;
    [v10 setLeaderboardID_];

    [v10 setValue_];
    [v10 setContext_];
    v15 = [v10 setPlayer_];
    v16 = *&v2[OBJC_IVAR___GKGameActivity__leaderboardScores];
    MEMORY[0x28223BE20](v15);
    *(&v18 - 4) = v12;
    *(&v18 - 3) = v14;
    *(&v18 - 2) = v10;
    os_unfair_lock_lock((v16 + 24));
    sub_2186A870C((v16 + 16));
    os_unfair_lock_unlock((v16 + 24));

    v17 = v19;
    (*(v6 + 104))(v8, *MEMORY[0x277D0CC30], v19);
    sub_21868D6FC(v8);

    (*(v6 + 8))(v8, v17);
  }
}

GKLeaderboardScore_optional __swiftcall GKGameActivity.score(on:)(GKLeaderboard on)
{
  v2 = [v1 leaderboardScores];
  sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
  sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548, MEMORY[0x277D85378]);
  v3 = sub_2186B7B9C();

  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2186B7CBC();
    v4 = sub_2186B7BBC();
    v6 = v38;
    v7 = v39;
    v8 = v40;
    v9 = v41;
    v10 = v42;
  }

  else
  {
    v11 = -1 << *(v3 + 32);
    v7 = v3 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v3 + 56);

    v9 = 0;
    v6 = v3;
  }

  v34 = v8;
  v14 = (v8 + 64) >> 6;
  while (v6 < 0)
  {
    if (!sub_2186B7CEC())
    {
LABEL_26:
      v22 = 0;
LABEL_27:
      sub_2186A67A0(v6);

      v4 = v22;
      goto LABEL_30;
    }

    swift_dynamicCast();
    v22 = v37;
    v20 = v9;
    v21 = v10;
    if (!v37)
    {
      goto LABEL_27;
    }

LABEL_20:
    v36 = v21;
    v23 = v6;
    v24 = [(objc_class *)v22 leaderboardID];
    v25 = sub_2186B7A0C();
    v27 = v26;

    v28 = [(objc_class *)on.super.isa baseLeaderboardID];
    v29 = sub_2186B7A0C();
    v31 = v30;

    if (v25 == v29 && v27 == v31)
    {

      v6 = v23;
    }

    else
    {
      v33 = sub_2186B7E5C();

      v6 = v23;
      if ((v33 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_2186804FC(0, &qword_27CC06E80, 0x277D82BB8);
    v15 = [(objc_class *)v22 player];
    v16 = [objc_opt_self() localPlayer];
    v17 = sub_2186B7C4C();

    if (v17)
    {
      goto LABEL_27;
    }

LABEL_10:

    v9 = v20;
    v10 = v36;
  }

  v18 = v9;
  v19 = v10;
  v20 = v9;
  if (v10)
  {
LABEL_16:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v6 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v14)
    {
      goto LABEL_26;
    }

    v19 = *(v7 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  result.value.super.isa = v4;
  result.is_nil = v5;
  return result;
}

Swift::Void __swiftcall GKGameActivity.removeScores(from:)(Swift::OpaquePointer from)
{
  v2 = sub_2186B74BC();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x28223BE20](v2);
  v19 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (from._rawValue >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((from._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2186B7CCC())
  {
    v5 = 0;
    v24 = from._rawValue & 0xC000000000000001;
    v22 = OBJC_IVAR___GKGameActivity__leaderboardScores;
    v23 = from._rawValue & 0xFFFFFFFFFFFFFF8;
    while (v24)
    {
      v6 = MEMORY[0x21CEB1380](v5, from._rawValue);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v8 = v6;
      v9 = [v6 baseLeaderboardID];
      v10 = sub_2186B7A0C();
      v12 = v11;

      v26 = &v18;
      v13 = *(v25 + v22);
      MEMORY[0x28223BE20](v14);
      *(&v18 - 2) = v10;
      *(&v18 - 1) = v12;
      os_unfair_lock_lock((v13 + 24));
      sub_2186A685C((v13 + 16));
      os_unfair_lock_unlock((v13 + 24));

      ++v5;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    if (v5 >= *(v23 + 16))
    {
      goto LABEL_12;
    }

    v6 = *(from._rawValue + v5 + 4);
    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  v16 = v19;
  v15 = v20;
  v17 = v21;
  (*(v20 + 104))(v19, *MEMORY[0x277D0CC30], v21);
  sub_21868D6FC(v16);
  (*(v15 + 8))(v16, v17);
}

void sub_2186911E4(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2186B7CBC();
    sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
    sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520, MEMORY[0x277D85378]);
    sub_2186B7BBC();
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
        a1(&v26);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_2186B7CEC())
        {
          goto LABEL_19;
        }

        sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      v18 = v20;
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_19:
      v18 = v5;
    }

    sub_2186A67A0(v18);
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
        goto LABEL_19;
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

void sub_218691430(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2186B7CBC();
    sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
    sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548, MEMORY[0x277D85378]);
    sub_2186B7BBC();
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      do
      {
        v23 = v16;
        sub_21869EC34(&v23, a2);

        if (v3)
        {
          break;
        }

        v7 = v14;
        v8 = v15;
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_2186B7CEC())
        {
          break;
        }

        sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
        swift_dynamicCast();
        v16 = v23;
        v14 = v7;
        v15 = v8;
      }

      while (v23);
    }

LABEL_19:
    sub_2186A67A0(v4);
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= ((v6 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v13 = *(v5 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

Swift::Void __swiftcall GKGameActivity.setProgress(on:to:)(GKAchievement on, Swift::Double to)
{
  v5 = sub_2186B794C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (to > 100.0 || to < 0.0)
  {
    v11 = sub_21867F9D4();
    (*(v6 + 16))(v9, v11, v5);
    v12 = sub_2186B792C();
    v13 = sub_2186B7BEC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21867D000, v12, v13, "Invalid progress complete value provided.", v14, 2u);
      MEMORY[0x21CEB1A70](v14, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v10 = *(v2 + OBJC_IVAR___GKGameActivity__achievements);
    MEMORY[0x28223BE20](v7);
    *&v15[-32] = on;
    *&v15[-24] = to;
    *&v15[-16] = v2;
    os_unfair_lock_lock(v10 + 6);
    sub_2186A6968(&v10[4]);
    os_unfair_lock_unlock(v10 + 6);
  }
}

uint64_t sub_2186918B8(double a1, uint64_t a2, void *a3)
{
  v5 = sub_2186B74BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  [a3 setPercentComplete_];
  sub_2186A2278(&v11, a3, &qword_27CC06E60, &off_278236520, &qword_27CC070A0, &qword_2186B93D8);

  (*(v6 + 104))(v8, *MEMORY[0x277D0CC38], v5);
  sub_21868D6FC(v8);
  return (*(v6 + 8))(v8, v5);
}

Swift::Double __swiftcall GKGameActivity.progress(on:)(GKAchievement on)
{
  v2 = [v1 achievements];
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520, MEMORY[0x277D85378]);
  v3 = sub_2186B7B9C();

  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2186B7CBC();
    sub_2186B7BBC();
    v3 = v37;
    v5 = v38;
    v6 = v39;
    v7 = v40;
    v8 = v41;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);

    v7 = 0;
  }

  v33 = v6;
  v12 = (v6 + 64) >> 6;
  while (v3 < 0)
  {
    if (!sub_2186B7CEC() || (swift_dynamicCast(), v20 = v36, v18 = v7, v19 = v8, !v36))
    {
LABEL_26:
      sub_2186A67A0(v3);

      return 0.0;
    }

LABEL_20:
    v35 = v19;
    v21 = [v20 identifier];
    v22 = sub_2186B7A0C();
    v24 = v23;

    v25 = [(objc_class *)on.super.isa identifier];
    v26 = sub_2186B7A0C();
    v28 = v27;

    if (v22 == v26 && v24 == v28)
    {
    }

    else
    {
      v30 = sub_2186B7E5C();

      if ((v30 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_2186804FC(0, &qword_27CC06E80, 0x277D82BB8);
    v13 = [v20 player];
    v14 = [objc_opt_self() localPlayer];
    v15 = sub_2186B7C4C();

    if (v15)
    {
      sub_2186A67A0(v3);

      [v20 percentComplete];
      v32 = v31;

      return v32;
    }

LABEL_10:

    v7 = v18;
    v8 = v35;
  }

  v16 = v7;
  v17 = v8;
  v18 = v7;
  if (v8)
  {
LABEL_16:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v3 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v12)
    {
      goto LABEL_26;
    }

    v17 = *(v5 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall GKGameActivity.removeAchievements(_:)(Swift::OpaquePointer a1)
{
  v2 = *(v1 + OBJC_IVAR___GKGameActivity__achievements);
  os_unfair_lock_lock((v2 + 24));
  sub_2186A699C((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_218691F10(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v13[1] = a3;
  v5 = sub_2186B74BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2186A6114(*a1, &qword_27CC06E60, &off_278236520, &qword_27CC06E68);

  v9 = sub_2186A6CA4(&v14, a2);

  if (v14 >> 62)
  {
    result = sub_2186B7CCC();
    v11 = result;
    if (result >= v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v9)
    {
LABEL_3:
      sub_2186A7F6C(v9, v11, &qword_27CC06E60, &off_278236520);
      v12 = sub_2186A6F40(v14);

      *a1 = v12;
      (*(v6 + 104))(v8, *MEMORY[0x277D0CC38], v5);
      sub_21868D6FC(v8);
      return (*(v6 + 8))(v8, v5);
    }
  }

  __break(1u);
  return result;
}

id sub_2186921A0()
{
  v0 = sub_2186B794C();
  MEMORY[0x28223BE20](v0);
  return sub_218692390();
}

id sub_218692390()
{
  v1 = v0;
  v2 = [v0 activityDefinition];
  GKGameActivityDefinition.playerRange.getter(v12);

  if (!v12[3])
  {
    sub_21867F0B8(v12, &qword_27CC06FB0, &unk_2186B92D0);
LABEL_8:
    type metadata accessor for GKError(0);
    sub_218683CC0(MEMORY[0x277D84F90]);
    sub_2186A7360(&qword_27CC06D98, type metadata accessor for GKError, &unk_2186B8E18);
    sub_2186B6F5C();
    swift_willThrow();
    return v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06FB8, &qword_2186B94D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06FC0, &qword_2186B92E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = [v1 partyCode];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  sub_2186B7A0C();

  v5 = sub_2186B766C();
  v7 = v6;

  if (v7)
  {
    goto LABEL_8;
  }

  v1 = [v1 activityDefinition];
  v8 = [v1 supportsPartyCode];

  if ((v8 & 1) == 0)
  {
    goto LABEL_8;
  }

  v1 = [objc_allocWithZone(off_278236560) init];
  [v1 setMinPlayers_];
  [v1 setMaxPlayers_];
  [v1 setPlayerGroup_];
  return v1;
}

uint64_t sub_218692608()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06FC8, &qword_2186B9310);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2186926D4, 0, 0);
}

uint64_t sub_2186926D4()
{
  v1 = sub_218692390();
  v0[23] = v1;
  v2 = v1;
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];
  v6 = [objc_opt_self() sharedMatchmaker];
  v0[24] = v6;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_218692930;
  swift_continuation_init();
  v0[17] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_2186804FC(0, &qword_27CC06FD0, &off_278236558);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
  sub_2186B7B1C();
  (*(v3 + 32))(boxed_opaque_existential_0, v4, v5);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_218692A40;
  v0[13] = &block_descriptor_133;
  [v6 findMatchForRequest:v2 withCompletionHandler:?];
  (*(v3 + 8))(boxed_opaque_existential_0, v5);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_218692930()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_2186A8650;
  }

  else
  {
    v2 = sub_2186A8704;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_218692A40(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06FC8, &qword_2186B9310);
    sub_2186B7B2C();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06FC8, &qword_2186B9310);
    sub_2186B7B3C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218692C64(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_218692D0C;

  return sub_218692608();
}

uint64_t sub_218692D0C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_2186B6F6C();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_218692EAC()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F38, &qword_2186B90D8);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218692F78, 0, 0);
}

uint64_t sub_218692F78()
{
  v1 = sub_218692390();
  v0[23] = v1;
  v2 = v1;
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];
  v6 = [objc_opt_self() sharedMatchmaker];
  v0[24] = v6;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2186931D0;
  swift_continuation_init();
  v0[17] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F70, &qword_2186B9128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
  sub_2186B7B1C();
  (*(v3 + 32))(boxed_opaque_existential_0, v4, v5);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2186933E4;
  v0[13] = &block_descriptor_114;
  [v6 findPlayersForHostedRequest:v2 withCompletionHandler:?];
  (*(v3 + 8))(boxed_opaque_existential_0, v5);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2186931D0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_218693364;
  }

  else
  {
    v2 = sub_2186932E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2186932E0()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_218693364(uint64_t a1)
{
  v2 = v1[24];
  v3 = v1[23];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_21869357C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_218693624;

  return sub_218692EAC();
}

uint64_t sub_218693624(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_2186B6F6C();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_2186804FC(0, &qword_27CC06FA8, &off_278236570);
    v10 = sub_2186B7A9C();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_2186937C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_218693860;

  return sub_21867F778();
}

uint64_t sub_218693860(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_21869395C()
{
  (*(v0[8] + 8))(v0[11], v0[7]);

  v1 = v0[1];

  return v1();
}

id GKGameActivity.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_218693BCC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  type metadata accessor for GKGameActivity(a1);
  v11 = objc_opt_self();

  result = sub_21868C4A4(a1, a2, a3, [v11 localPlayer], a4);
  if (!v5)
  {
    v13 = result;
    result = [result start];
    *a5 = v13;
  }

  return result;
}

uint64_t sub_218693CAC()
{
  v1[2] = v0;
  v2 = sub_2186B74BC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218693D6C, 0, 0);
}

uint64_t sub_218693D6C()
{
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277D0CC18], v0[3]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_218693E28;
  v2 = v0[5];

  return sub_218693F80(v2);
}

uint64_t sub_218693E28()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_218693F80(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2186B794C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218694040, 0, 0);
}

uint64_t sub_218694040()
{
  *(v0 + 56) = [*(v0 + 24) support];
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_2186940F4;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_21869B514(v3, v2);
}

uint64_t sub_2186940F4()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_218694238, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_218694238()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);

  v5 = sub_21867F9D4();
  (*(v4 + 16))(v2, v5, v3);
  v6 = v1;
  v7 = sub_2186B792C();
  v8 = sub_2186B7BEC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 72);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_21867D000, v7, v8, "Failed to asynchronously update game activity: %@", v11, 0xCu);
    sub_21867F0B8(v12, &qword_27CC06D90, &qword_2186B8C70);
    MEMORY[0x21CEB1A70](v12, -1, -1);
    MEMORY[0x21CEB1A70](v11, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2186943E0(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_2186B74BC();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_2186B74FC();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = sub_2186B72AC();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218694558, 0, 0);
}

uint64_t sub_218694558()
{
  sub_218680D68(v0[10], (v0 + 2));
  sub_2186804FC(0, &qword_27CC06FA0, 0x277CBEA90);
  if (swift_dynamicCast())
  {
    v0[20] = v0[6];
    sub_2186B74AC();
    (*(v0[15] + 104))(v0[16], *MEMORY[0x277D0CD20], v0[14]);
    sub_2186B716C();
    if (qword_2811ED5E0 != -1)
    {
      swift_once();
    }

    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[11];
    v6 = qword_2811ED610;
    v0[21] = qword_2811ED610;
    (*(v4 + 104))(v3, *MEMORY[0x277D0CC28], v5);
    v7 = *(v6 + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service + 24);
    v8 = *(v6 + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service + 32);
    __swift_project_boxed_opaque_existential_0((v6 + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service), v7);
    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v9[1] = sub_218694808;
    v10 = v0[19];
    v11 = v0[13];

    return MEMORY[0x282164880](v10, v11, v7, v8);
  }

  else
  {
    type metadata accessor for GKError(0);
    v0[8] = 17;
    sub_218683CC0(MEMORY[0x277D84F90]);
    sub_2186A7360(&qword_27CC06D98, type metadata accessor for GKError, &unk_2186B8E18);
    sub_2186B6F5C();
    swift_willThrow();

    v1 = v0[1];

    return v1();
  }
}

uint64_t sub_218694808()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_218694AF4;
  }

  else
  {
    v2 = sub_21869491C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21869491C()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_2186949CC;
  v2 = v0[19];

  return sub_218694F00(v2);
}

uint64_t sub_2186949CC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_218694C78;
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = sub_218694BB4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_218694AF4()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  (*(v0[12] + 8))(v0[13], v0[11]);

  (*(v4 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_218694BB4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 72);

  (*(v4 + 8))(v2, v3);
  *v5 = v1;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_218694C78()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_218694D20(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_218694D44, 0, 0);
}

uint64_t sub_218694D44()
{
  v1 = (v0[4] + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_218694E0C;
  v6 = v0[2];
  v5 = v0[3];

  return MEMORY[0x282164880](v6, v5, v2, v3);
}

uint64_t sub_218694E0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_218694F00(uint64_t a1)
{
  v2[60] = a1;
  v2[61] = v1;
  v3 = sub_2186B74FC();
  v2[62] = v3;
  v2[63] = *(v3 - 8);
  v2[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F08, &qword_2186B90A8);
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v4 = sub_2186B701C();
  v2[68] = v4;
  v2[69] = *(v4 - 8);
  v2[70] = swift_task_alloc();
  v5 = sub_2186B709C();
  v2[71] = v5;
  v2[72] = *(v5 - 8);
  v2[73] = swift_task_alloc();
  v6 = sub_2186B794C();
  v2[74] = v6;
  v2[75] = *(v6 - 8);
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F10, &qword_2186B90B0);
  v2[78] = v7;
  v2[79] = *(v7 - 8);
  v2[80] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F18, &qword_2186B90B8);
  v2[81] = v8;
  v2[82] = *(v8 - 8);
  v2[83] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F20, &qword_2186B90C0);
  v2[84] = v9;
  v2[85] = *(v9 - 8);
  v2[86] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F28, &qword_2186B90C8);
  v2[87] = v10;
  v2[88] = *(v10 - 8);
  v2[89] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F30, &qword_2186B90D0);
  v2[90] = swift_task_alloc();
  v11 = sub_2186B73DC();
  v2[91] = v11;
  v2[92] = *(v11 - 8);
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F38, &qword_2186B90D8);
  v2[95] = v12;
  v2[96] = *(v12 - 8);
  v2[97] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v2[98] = v13;
  v2[99] = *(v13 - 8);
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v14 = sub_2186B73CC();
  v2[102] = v14;
  v2[103] = *(v14 - 8);
  v2[104] = swift_task_alloc();
  v2[105] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F48, &unk_2186B9500) - 8);
  v2[106] = swift_task_alloc();
  v2[107] = swift_task_alloc();
  v2[108] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218695550, 0, 0);
}

uint64_t sub_218695550()
{
  v1 = (v0[61] + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F50, &qword_2186B90F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F58, &qword_2186B90F8);
  v4 = swift_allocObject();
  v0[109] = v4;
  *(v4 + 16) = xmmword_2186B8F70;
  sub_2186B712C();
  v5 = swift_task_alloc();
  v0[110] = v5;
  *v5 = v0;
  v5[1] = sub_2186956F8;

  return MEMORY[0x2821648A8](v4, v2, v3);
}

uint64_t sub_2186956F8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 888) = a1;
  *(v3 + 896) = v1;

  if (v1)
  {
    v4 = sub_21869993C;
  }

  else
  {

    v4 = sub_21869584C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21869584C()
{
  v1 = v0[111];
  if (!*(v1 + 16))
  {

    goto LABEL_5;
  }

  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[106];
  v5 = v0[103];
  v6 = v0[102];
  v7 = *(v0[105] + 80);
  sub_2186A7D78(v1 + ((v7 + 32) & ~v7), v3, &qword_27CC06F48, &unk_2186B9500);

  sub_2186A7CC4(v3, v2, &qword_27CC06F48, &unk_2186B9500);
  sub_2186A7D78(v2, v4, &qword_27CC06F48, &unk_2186B9500);
  if ((*(v5 + 48))(v4, 1, v6) == 1)
  {
    v8 = v0[106];
    sub_21867F0B8(v0[108], &qword_27CC06F48, &unk_2186B9500);
    sub_21867F0B8(v8, &qword_27CC06F48, &unk_2186B9500);
LABEL_5:
    v9 = v0[76];
    v10 = v0[75];
    v11 = v0[74];
    v12 = sub_21867F9D4();
    (*(v10 + 16))(v9, v12, v11);
    v13 = sub_2186B792C();
    v14 = sub_2186B7BEC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21867D000, v13, v14, "Invalid game activity definition.", v15, 2u);
      MEMORY[0x21CEB1A70](v15, -1, -1);
    }

    v16 = v0[76];
    v17 = v0[75];
    v18 = v0[74];

    (*(v17 + 8))(v16, v18);
    type metadata accessor for GKError(0);
    v0[51] = 17;
    sub_218683CC0(MEMORY[0x277D84F90]);
    sub_2186A7360(&qword_27CC06D98, type metadata accessor for GKError, &unk_2186B8E18);
    sub_2186B6F5C();
    swift_willThrow();

    v19 = v0[1];

    return v19();
  }

  (*(v0[103] + 32))(v0[104], v0[106], v0[102]);
  v0[113] = sub_2186AA094();
  v21 = sub_2186B70FC();
  v0[114] = v21;
  v0[53] = MEMORY[0x277D84F90];
  v22 = swift_task_alloc();
  v0[115] = v22;
  v23 = sub_2186B749C();
  v0[116] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F60, &qword_2186B9108);
  *v22 = v0;
  v22[1] = sub_218695D7C;

  return sub_2186843A8((v0 + 52), v21, (v0 + 53), &unk_2186B9100, 0, sub_21869FACC, 0, v23);
}

uint64_t sub_218695D7C()
{
  *(*v1 + 936) = v0;

  if (v0)
  {
    v2 = sub_218699B10;
  }

  else
  {
    v2 = sub_218695ED4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218695ED4()
{
  v0[118] = v0[52];
  v1 = sub_2186B70FC();
  v0[119] = v1;
  v0[55] = MEMORY[0x277D84F90];
  v2 = swift_task_alloc();
  v0[120] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F68, &qword_2186B9118);
  *v2 = v0;
  v2[1] = sub_21869601C;
  v3 = v0[116];

  return sub_2186843A8((v0 + 54), v1, (v0 + 55), &unk_2186B9110, 0, sub_2186A063C, 0, v3);
}

uint64_t sub_21869601C()
{
  *(*v1 + 968) = v0;

  if (v0)
  {

    v2 = sub_218699D24;
  }

  else
  {
    v2 = sub_218696180;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218696180()
{
  v1 = *(v0 + 968);
  *(v0 + 976) = *(v0 + 432);
  *(v0 + 984) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E08, &qword_2186B9120);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2186B8F70;
  sub_2186B721C();
  v3 = sub_2186B787C();
  *(v0 + 992) = v1;
  if (v1)
  {
    v24 = *(v0 + 864);
    v5 = *(v0 + 832);
    v6 = *(v0 + 824);
    v7 = *(v0 + 816);
    v8 = *(v0 + 808);
    v9 = *(v0 + 792);
    v10 = *(v0 + 784);

    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v5, v7);
    sub_21867F0B8(v24, &qword_27CC06F48, &unk_2186B9500);
    *(v2 + 16) = 0;

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = v3;
    v14 = v4;
    v15 = *(v0 + 808);
    v16 = *(v0 + 792);
    v17 = *(v0 + 784);
    v23 = *(v0 + 776);
    v18 = *(v0 + 768);
    v22 = *(v0 + 760);
    v25 = objc_opt_self();
    v19 = *(v16 + 8);
    *(v0 + 1000) = v19;
    *(v0 + 1008) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v15, v17);
    *(v2 + 32) = v13;
    *(v2 + 40) = v14;
    v20 = sub_2186B7A9C();
    *(v0 + 1016) = v20;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 448;
    *(v0 + 24) = sub_218696664;
    swift_continuation_init();
    *(v0 + 264) = v22;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 240));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F70, &qword_2186B9128);
    *(v0 + 1024) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
    sub_2186B7B1C();
    (*(v18 + 32))(boxed_opaque_existential_0, v23, v22);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_2186933E4;
    *(v0 + 232) = &block_descriptor_20;
    [v25 loadPlayersForIdentifiersPrivate:v20 withCompletionHandler:?];
    (*(v18 + 8))(boxed_opaque_existential_0, v22);

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_218696664()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1032) = v1;
  if (v1)
  {

    v2 = sub_218699F38;
  }

  else
  {
    v2 = sub_2186967B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2186967B4()
{
  v1 = *(v0 + 448);
  if (v1 >> 62)
  {
    if (sub_2186B7CCC())
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_72:
    v2 = MEMORY[0x21CEB1380](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v2 = *(v1 + 32);
  }

  v3 = v2;

LABEL_9:
  *(v0 + 1040) = v3;
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);

  sub_2186B717C();
  if ((*(v4 + 48))(v6, 1, v5) != 1)
  {
    v12 = *(v0 + 752);
    v13 = *(v0 + 744);
    v14 = *(v0 + 736);
    v15 = *(v0 + 728);
    (*(v14 + 32))(v12, *(v0 + 720), v15);
    (*(v14 + 16))(v13, v12, v15);
    v16 = (*(v14 + 88))(v13, v15);
    if (v16 == *MEMORY[0x277D0CB90])
    {
      v17 = *(v0 + 992);
      v18 = *(v0 + 744);
      v19 = *(v0 + 664);
      v20 = *(v0 + 656);
      v21 = *(v0 + 648);
      (*(*(v0 + 736) + 96))(v18, *(v0 + 728));
      (*(v20 + 32))(v19, v18, v21);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_2186B8F70;
      v23 = sub_2186B783C();
      *(v0 + 1080) = v17;
      if (v17)
      {
        v164 = *(v0 + 832);
        v168 = *(v0 + 864);
        v25 = *(v0 + 824);
        v158 = *(v0 + 752);
        v161 = *(v0 + 816);
        v26 = *(v0 + 736);
        v155 = *(v0 + 728);
        v27 = *(v0 + 664);
        v28 = *(v0 + 656);
        v29 = *(v0 + 648);

        (*(v28 + 8))(v27, v29);
        (*(v26 + 8))(v158, v155);
        (*(v25 + 8))(v164, v161);
        sub_21867F0B8(v168, &qword_27CC06F48, &unk_2186B9500);
        *(v22 + 16) = 0;

LABEL_64:

        v135 = *(v0 + 8);

        return v135();
      }

      v59 = v23;
      v60 = v24;
      v61 = v0 + 80;
      v62 = *(v0 + 640);
      v63 = *(v0 + 632);
      v64 = *(v0 + 624);
      v170 = objc_opt_self();
      *(v22 + 32) = v59;
      *(v22 + 40) = v60;
      v65 = sub_2186B7A9C();
      *(v0 + 1088) = v65;

      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 464;
      *(v0 + 88) = sub_218698AE8;
      swift_continuation_init();
      *(v0 + 328) = v64;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 304));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F78, &qword_2186B9130);
      sub_2186B7B1C();
      (*(v63 + 32))(boxed_opaque_existential_0, v62, v64);
      *(v0 + 272) = MEMORY[0x277D85DD0];
      *(v0 + 280) = 1107296256;
      *(v0 + 288) = sub_2186A06D8;
      *(v0 + 296) = &block_descriptor_24;
      [v170 loadLeaderboardsWithIDs:v65 completionHandler:?];
      (*(v63 + 8))(boxed_opaque_existential_0, v64);
    }

    else
    {
      if (v16 != *MEMORY[0x277D0CB98])
      {
        v44 = *(v0 + 616);
        v45 = *(v0 + 600);
        v46 = *(v0 + 592);
        v47 = sub_21867F9D4();
        (*(v45 + 16))(v44, v47, v46);
        v48 = sub_2186B792C();
        v49 = sub_2186B7BEC();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_21867D000, v48, v49, "Unknown referral found for game activity.", v50, 2u);
          MEMORY[0x21CEB1A70](v50, -1, -1);
        }

        v51 = *(v0 + 752);
        v52 = *(v0 + 744);
        v53 = *(v0 + 736);
        v54 = *(v0 + 728);
        v55 = *(v0 + 616);
        v56 = *(v0 + 600);
        v57 = *(v0 + 592);

        (*(v56 + 8))(v55, v57);
        v58 = *(v53 + 8);
        v58(v51, v54);
        v58(v52, v54);
        goto LABEL_11;
      }

      v30 = *(v0 + 992);
      v31 = *(v0 + 744);
      v32 = *(v0 + 712);
      v33 = *(v0 + 704);
      v34 = *(v0 + 696);
      (*(*(v0 + 736) + 96))(v31, *(v0 + 728));
      (*(v33 + 32))(v32, v31, v34);
      v35 = sub_2186B785C();
      *(v0 + 1048) = v30;
      *(v0 + 1056) = v35;
      *(v0 + 1064) = v36;
      if (v30)
      {
        v165 = *(v0 + 832);
        v169 = *(v0 + 864);
        v37 = *(v0 + 824);
        v159 = *(v0 + 752);
        v162 = *(v0 + 816);
        v38 = *(v0 + 736);
        v39 = *(v0 + 728);
        v40 = *(v0 + 712);
        v41 = *(v0 + 704);
        v42 = *(v0 + 696);

        (*(v41 + 8))(v40, v42);
        (*(v38 + 8))(v159, v39);
        (*(v37 + 8))(v165, v162);
        v43 = v169;
LABEL_63:
        sub_21867F0B8(v43, &qword_27CC06F48, &unk_2186B9500);
        goto LABEL_64;
      }

      v61 = v0 + 144;
      v136 = *(v0 + 688);
      v137 = *(v0 + 680);
      v138 = *(v0 + 672);
      v174 = objc_opt_self();
      *(v0 + 144) = v0;
      *(v0 + 184) = v0 + 472;
      *(v0 + 152) = sub_218697BC8;
      swift_continuation_init();
      *(v0 + 392) = v138;
      v139 = __swift_allocate_boxed_opaque_existential_0((v0 + 368));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F80, &qword_2186B9138);
      sub_2186B7B1C();
      (*(v137 + 32))(v139, v136, v138);
      *(v0 + 336) = MEMORY[0x277D85DD0];
      *(v0 + 344) = 1107296256;
      *(v0 + 352) = sub_2186A06B4;
      *(v0 + 360) = &block_descriptor_27;
      [v174 loadAchievementDescriptionsWithCompletionHandler_];
      (*(v137 + 8))(v139, v138);
    }

    return MEMORY[0x282200938](v61);
  }

  sub_21867F0B8(*(v0 + 720), &qword_27CC06F30, &qword_2186B90D0);
LABEL_11:
  v7 = *(v0 + 992);
  v8 = *(v0 + 584);
  v9 = *(v0 + 576);
  v10 = *(v0 + 568);
  sub_2186B71EC();
  sub_2186B70BC();
  sub_2186B71FC();
  v11 = (*(v9 + 88))(v8, v10);
  if (v11 == *MEMORY[0x277D0CA40])
  {
    v153 = 1;
  }

  else if (v11 == *MEMORY[0x277D0CA48])
  {
    v153 = 2;
  }

  else if (v11 == *MEMORY[0x277D0CA38])
  {
    v153 = 4;
  }

  else
  {
    (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));
    v153 = 0;
  }

  v67 = *(v0 + 1040);
  v68 = *(v0 + 976);
  v69 = *(v0 + 944);
  sub_2186B727C();
  v145 = v70;
  sub_2186B70DC();
  sub_2186B728C();
  sub_2186B713C();
  sub_2186B722C();
  sub_2186B725C();
  sub_2186B7EDC();
  v72 = v71;
  sub_2186A6F40(v69);

  sub_2186A70E0(v68);

  if (v67)
  {
    v73 = *(v0 + 1040);
    v74 = v73;
  }

  else
  {
    v74 = [objc_opt_self() localPlayer];
    v73 = 0;
  }

  v160 = v74;
  v75 = *(v0 + 792);
  v1 = *(v0 + 480);
  v154 = v73;
  v151 = sub_2186B71AC();
  v76 = sub_2186B70EC();
  v77 = v76 + 56;
  v78 = -1;
  v79 = -1 << *(v76 + 32);
  if (-v79 < 64)
  {
    v78 = ~(-1 << -v79);
  }

  v80 = v78 & *(v76 + 56);
  v81 = (63 - v79) >> 6;
  v166 = v75;
  v171 = v76;

  v82 = 0;
  v156 = MEMORY[0x277D84F90];
  while (1)
  {
    v83 = v82;
    if (!v80)
    {
      break;
    }

LABEL_38:
    v84 = __clz(__rbit64(v80));
    v80 &= v80 - 1;
    (*(v166 + 16))(*(v0 + 800), *(v171 + 48) + *(v166 + 72) * (v84 | (v82 << 6)), *(v0 + 784));
    v85 = sub_2186B787C();
    v87 = *(v0 + 1000);
    v1 = *(v0 + 800);
    v88 = *(v0 + 784);
    if (v7)
    {

      v87(v1, v88);
      v7 = 0;
    }

    else
    {
      v89 = v86;
      v144 = v85;
      v87(v1, v88);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v156 = sub_2186A17E4(0, *(v156 + 2) + 1, 1, v156);
      }

      v91 = *(v156 + 2);
      v90 = *(v156 + 3);
      v1 = v91 + 1;
      v92 = v144;
      if (v91 >= v90 >> 1)
      {
        v95 = sub_2186A17E4((v90 > 1), v91 + 1, 1, v156);
        v93 = v89;
        v156 = v95;
        v92 = v144;
      }

      else
      {
        v93 = v89;
      }

      v7 = 0;
      *(v156 + 2) = v1;
      v94 = &v156[16 * v91];
      *(v94 + 4) = v92;
      *(v94 + 5) = v93;
    }
  }

  while (1)
  {
    v82 = v83 + 1;
    if (__OFADD__(v83, 1))
    {
      __break(1u);
      goto LABEL_72;
    }

    if (v82 >= v81)
    {
      break;
    }

    v80 = *(v77 + 8 * v82);
    ++v83;
    if (v80)
    {
      goto LABEL_38;
    }
  }

  v97 = *(v0 + 504);
  v96 = *(v0 + 512);
  v98 = *(v0 + 496);

  sub_2186A7280(v156);

  v99 = sub_2186B71BC();
  sub_2186A06FC(v99);

  sub_2186B711C();
  (*(v97 + 104))(v96, *MEMORY[0x277D0CD18], v98);
  sub_2186B74EC();
  (*(v97 + 8))(v96, v98);
  v167 = sub_2186B79FC();

  v163 = sub_2186B79AC();

  if (v145)
  {
    v157 = sub_2186B79FC();
  }

  else
  {
    v157 = 0;
  }

  v100 = *(v0 + 552);
  v101 = *(v0 + 544);
  v102 = *(v0 + 536);
  v149 = sub_2186B6FEC();
  v103 = *(v100 + 48);
  if (v103(v102, 1, v101) == 1)
  {
    v148 = 0;
  }

  else
  {
    v104 = *(v0 + 552);
    v105 = *(v0 + 544);
    v106 = *(v0 + 536);
    v148 = sub_2186B6FEC();
    (*(v104 + 8))(v106, v105);
  }

  v107 = *(v0 + 544);
  v108 = *(v0 + 528);
  if (v103(v108, 1, v107) == 1)
  {
    v147 = 0;
  }

  else
  {
    v109 = *(v0 + 552);
    v147 = sub_2186B6FEC();
    (*(v109 + 8))(v108, v107);
    v107 = *(v0 + 544);
  }

  v110 = *(v0 + 520);
  if (v103(v110, 1, v107) == 1)
  {
    v146 = 0;
  }

  else
  {
    v111 = *(v0 + 552);
    v146 = sub_2186B6FEC();
    (*(v111 + 8))(v110, v107);
  }

  v143 = *(v0 + 904);
  v112 = *(v0 + 488);
  v113 = objc_allocWithZone(GKGameActivity);
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  v114 = MEMORY[0x277D85378];
  sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520, MEMORY[0x277D85378]);
  v142 = sub_2186B7B8C();

  sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
  sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548, v114);
  v150 = sub_2186B7B8C();

  v152 = sub_2186B7B8C();

  v141 = sub_2186B79AC();

  v115 = sub_2186B79FC();

  v116 = sub_2186B79FC();

  *(v0 + 456) = 0;
  LOBYTE(v140) = v151 & 1;
  v172 = [v113 initWithIdentifier:v167 activityDefinition:v143 properties:v163 state:v153 partyCode:v157 creationDate:v149 startDate:v72 lastResumeDate:v148 endDate:v147 duration:v146 achievements:v142 leaderboardScores:v150 creator:v160 initiatedByApple:v140 referralLeaderboard:0 referralAchievement:0 participants:v152 participantStates:v141 shortGroupID:v115 consumptionState:v116 support:v112 error:v0 + 456];

  v117 = *(v0 + 456);
  v118 = *(v0 + 904);
  v119 = *(v0 + 864);
  if (!v172)
  {
    v129 = *(v0 + 832);
    v130 = *(v0 + 824);
    v173 = *(v0 + 816);
    v131 = *(v0 + 560);
    v132 = *(v0 + 552);
    v133 = *(v0 + 544);
    v134 = v117;
    sub_2186B6F7C();

    swift_willThrow();
    (*(v132 + 8))(v131, v133);
    (*(v130 + 8))(v129, v173);
    v43 = v119;
    goto LABEL_63;
  }

  v120 = *(v0 + 832);
  v121 = *(v0 + 824);
  v122 = *(v0 + 816);
  v123 = *(v0 + 560);
  v124 = *(v0 + 552);
  v125 = *(v0 + 544);
  v126 = v117;

  (*(v124 + 8))(v123, v125);
  (*(v121 + 8))(v120, v122);
  sub_21867F0B8(v119, &qword_27CC06F48, &unk_2186B9500);

  v127 = *(v0 + 8);

  return v127(v172);
}

uint64_t sub_218697BC8()
{
  v1 = *(*v0 + 176);
  *(*v0 + 1072) = v1;
  if (v1)
  {

    v2 = sub_21869A15C;
  }

  else
  {
    v2 = sub_218697D2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218697D2C()
{
  v1 = v0[59];
  if (v1 >> 62)
  {
LABEL_19:
    v2 = sub_2186B7CCC();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x21CEB1380](v3, v1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

            goto LABEL_21;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v4 = *(v1 + 8 * v3 + 32);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_16;
          }
        }

        v6 = v0[133];
        v7 = v0[132];
        v118 = v4;
        v8 = [v4 identifier];
        v9 = sub_2186B7A0C();
        v11 = v10;

        if (v9 == v7 && v11 == v6)
        {
          goto LABEL_17;
        }

        v13 = sub_2186B7E5C();

        if (v13)
        {
          goto LABEL_21;
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  v118 = 0;
LABEL_21:
  v14 = v0[94];
  v15 = v0[92];
  v16 = v0[91];
  v17 = v0[89];
  v18 = v0[88];
  v19 = v0[87];

  (*(v18 + 8))(v17, v19);
  (*(v15 + 8))(v14, v16);
  v20 = v0[131];
  v21 = v0[73];
  v22 = v0[72];
  v23 = v0[71];
  sub_2186B71EC();
  sub_2186B70BC();
  sub_2186B71FC();
  v24 = (*(v22 + 88))(v21, v23);
  if (v24 == *MEMORY[0x277D0CA40])
  {
    v106 = 1;
  }

  else if (v24 == *MEMORY[0x277D0CA48])
  {
    v106 = 2;
  }

  else if (v24 == *MEMORY[0x277D0CA38])
  {
    v106 = 4;
  }

  else
  {
    (*(v0[72] + 8))(v0[73], v0[71]);
    v106 = 0;
  }

  v25 = v0[130];
  v26 = v0[122];
  v27 = v0[118];
  sub_2186B727C();
  v98 = v28;
  sub_2186B70DC();
  sub_2186B728C();
  sub_2186B713C();
  sub_2186B722C();
  sub_2186B725C();
  sub_2186B7EDC();
  v30 = v29;
  sub_2186A6F40(v27);

  sub_2186A70E0(v26);

  if (v25)
  {
    v31 = v0[130];
    v32 = v31;
  }

  else
  {
    v32 = [objc_opt_self() localPlayer];
    v31 = 0;
  }

  v111 = v32;
  v33 = v0[99];
  v108 = v31;
  v104 = sub_2186B71AC();
  v34 = sub_2186B70EC();
  v35 = v34 + 56;
  v36 = -1;
  v37 = -1 << *(v34 + 32);
  if (-v37 < 64)
  {
    v36 = ~(-1 << -v37);
  }

  v38 = v36 & *(v34 + 56);
  v39 = (63 - v37) >> 6;
  v115 = v34;

  v40 = 0;
  v109 = MEMORY[0x277D84F90];
  while (1)
  {
    v41 = v40;
    if (!v38)
    {
      break;
    }

LABEL_38:
    v42 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    (*(v33 + 16))(v0[100], *(v115 + 48) + *(v33 + 72) * (v42 | (v40 << 6)), v0[98]);
    v43 = sub_2186B787C();
    v45 = v0[125];
    v46 = v0[100];
    v47 = v0[98];
    if (v20)
    {

      v45(v46, v47);
      v20 = 0;
    }

    else
    {
      v48 = v44;
      v96 = v43;
      v45(v46, v47);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v109 = sub_2186A17E4(0, *(v109 + 2) + 1, 1, v109);
      }

      v50 = *(v109 + 2);
      v49 = *(v109 + 3);
      v51 = v96;
      if (v50 >= v49 >> 1)
      {
        v54 = sub_2186A17E4((v49 > 1), v50 + 1, 1, v109);
        v52 = v48;
        v109 = v54;
        v51 = v96;
      }

      else
      {
        v52 = v48;
      }

      v20 = 0;
      *(v109 + 2) = v50 + 1;
      v53 = &v109[16 * v50];
      *(v53 + 4) = v51;
      *(v53 + 5) = v52;
    }
  }

  while (1)
  {
    v40 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
    }

    if (v40 >= v39)
    {
      break;
    }

    v38 = *(v35 + 8 * v40);
    ++v41;
    if (v38)
    {
      goto LABEL_38;
    }
  }

  v55 = v0[63];
  v56 = v0[64];
  v57 = v0[62];

  sub_2186A7280(v109);

  v58 = sub_2186B71BC();
  sub_2186A06FC(v58);

  sub_2186B711C();
  (*(v55 + 104))(v56, *MEMORY[0x277D0CD18], v57);
  sub_2186B74EC();
  (*(v55 + 8))(v56, v57);
  v116 = sub_2186B79FC();

  v113 = sub_2186B79AC();

  if (v98)
  {
    v112 = sub_2186B79FC();
  }

  else
  {
    v112 = 0;
  }

  v59 = v0[69];
  v60 = v0[68];
  v61 = v0[67];
  v110 = sub_2186B6FEC();
  v62 = *(v59 + 48);
  if (v62(v61, 1, v60) == 1)
  {
    v101 = 0;
  }

  else
  {
    v63 = v0[69];
    v64 = v0[68];
    v65 = v0[67];
    v101 = sub_2186B6FEC();
    (*(v63 + 8))(v65, v64);
  }

  v66 = v0[68];
  v67 = v0[66];
  if (v62(v67, 1, v66) == 1)
  {
    v102 = 0;
  }

  else
  {
    v68 = v0[69];
    v102 = sub_2186B6FEC();
    (*(v68 + 8))(v67, v66);
    v66 = v0[68];
  }

  v69 = v0[65];
  if (v62(v69, 1, v66) == 1)
  {
    v99 = 0;
  }

  else
  {
    v70 = v0[69];
    v99 = sub_2186B6FEC();
    (*(v70 + 8))(v69, v66);
  }

  v100 = v0[113];
  v71 = v0[61];
  v72 = objc_allocWithZone(GKGameActivity);
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  v73 = MEMORY[0x277D85378];
  sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520, MEMORY[0x277D85378]);
  v95 = sub_2186B7B8C();

  sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
  sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548, v73);
  v103 = sub_2186B7B8C();

  v105 = sub_2186B7B8C();

  v97 = sub_2186B79AC();

  v74 = sub_2186B79FC();

  v75 = sub_2186B79FC();

  v0[57] = 0;
  LOBYTE(v94) = v104 & 1;
  v107 = [v72 initWithIdentifier:v116 activityDefinition:v100 properties:v113 state:v106 partyCode:v112 creationDate:v110 startDate:v30 lastResumeDate:v101 endDate:v102 duration:v99 achievements:v95 leaderboardScores:v103 creator:v111 initiatedByApple:v94 referralLeaderboard:0 referralAchievement:v118 participants:v105 participantStates:v97 shortGroupID:v74 consumptionState:v75 support:v71 error:v0 + 57];

  v76 = v0[57];
  v77 = v0[113];
  v117 = v0[108];
  if (v107)
  {
    v78 = v0[104];
    v79 = v0[103];
    v80 = v0[102];
    v81 = v0[70];
    v82 = v0[69];
    v83 = v0[68];
    v84 = v76;

    (*(v82 + 8))(v81, v83);
    (*(v79 + 8))(v78, v80);
    sub_21867F0B8(v117, &qword_27CC06F48, &unk_2186B9500);

    v85 = v0[1];

    return v85(v107);
  }

  else
  {
    v114 = v0[104];
    v87 = v0[103];
    v88 = v0[102];
    v89 = v0[70];
    v90 = v0[69];
    v91 = v0[68];
    v92 = v76;
    sub_2186B6F7C();

    swift_willThrow();
    (*(v90 + 8))(v89, v91);
    (*(v87 + 8))(v114, v88);
    sub_21867F0B8(v117, &qword_27CC06F48, &unk_2186B9500);

    v93 = v0[1];

    return v93();
  }
}

uint64_t sub_218698AE8()
{
  v1 = *(*v0 + 112);
  *(*v0 + 1096) = v1;
  if (v1)
  {

    v2 = sub_21869A3CC;
  }

  else
  {
    v2 = sub_218698C38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218698C38()
{
  v1 = v0[58];
  if (v1 >> 62)
  {
    if (sub_2186B7CCC())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
LABEL_54:
      v2 = MEMORY[0x21CEB1380](0, v1);
    }

    else
    {
      if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v2 = *(v1 + 32);
    }

    v3 = v2;
    goto LABEL_9;
  }

  v3 = 0;
LABEL_9:
  v4 = v0[136];
  v5 = v0[94];
  v6 = v0[92];
  v7 = v0[91];
  v8 = v0[83];
  v9 = v0[82];
  v10 = v0[81];

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);

  v11 = v0[135];
  v12 = v0[73];
  v13 = v0[72];
  v14 = v0[71];
  sub_2186B71EC();
  sub_2186B70BC();
  sub_2186B71FC();
  v15 = (*(v13 + 88))(v12, v14);
  v102 = v3;
  if (v15 == *MEMORY[0x277D0CA40])
  {
    v97 = 1;
  }

  else if (v15 == *MEMORY[0x277D0CA48])
  {
    v97 = 2;
  }

  else if (v15 == *MEMORY[0x277D0CA38])
  {
    v97 = 4;
  }

  else
  {
    (*(v0[72] + 8))(v0[73], v0[71]);
    v97 = 0;
  }

  v16 = v0[130];
  v17 = v0[122];
  v18 = v0[118];
  sub_2186B727C();
  v90 = v19;
  sub_2186B70DC();
  sub_2186B728C();
  sub_2186B713C();
  sub_2186B722C();
  sub_2186B725C();
  sub_2186B7EDC();
  v21 = v20;
  sub_2186A6F40(v18);

  sub_2186A70E0(v17);

  if (v16)
  {
    v22 = v0[130];
    v23 = v22;
  }

  else
  {
    v23 = [objc_opt_self() localPlayer];
    v22 = 0;
  }

  v101 = v23;
  v24 = v0[99];
  v1 = v0[60];
  v98 = v22;
  v95 = sub_2186B71AC();
  v25 = sub_2186B70EC();
  v26 = v25 + 56;
  v27 = -1;
  v28 = -1 << *(v25 + 32);
  if (-v28 < 64)
  {
    v27 = ~(-1 << -v28);
  }

  v29 = v27 & *(v25 + 56);
  v30 = (63 - v28) >> 6;
  v106 = v25;

  v31 = 0;
  v99 = MEMORY[0x277D84F90];
  while (1)
  {
    v32 = v31;
    if (!v29)
    {
      break;
    }

LABEL_26:
    v33 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    (*(v24 + 16))(v0[100], *(v106 + 48) + *(v24 + 72) * (v33 | (v31 << 6)), v0[98]);
    v34 = sub_2186B787C();
    v36 = v0[125];
    v1 = v0[100];
    v37 = v0[98];
    if (v11)
    {

      v36(v1, v37);
      v11 = 0;
    }

    else
    {
      v38 = v35;
      v88 = v34;
      v36(v1, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v99 = sub_2186A17E4(0, *(v99 + 2) + 1, 1, v99);
      }

      v40 = *(v99 + 2);
      v39 = *(v99 + 3);
      v1 = v40 + 1;
      v41 = v88;
      if (v40 >= v39 >> 1)
      {
        v44 = sub_2186A17E4((v39 > 1), v40 + 1, 1, v99);
        v42 = v38;
        v99 = v44;
        v41 = v88;
      }

      else
      {
        v42 = v38;
      }

      v11 = 0;
      *(v99 + 2) = v1;
      v43 = &v99[16 * v40];
      *(v43 + 4) = v41;
      *(v43 + 5) = v42;
    }
  }

  while (1)
  {
    v31 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v31 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v31);
    ++v32;
    if (v29)
    {
      goto LABEL_26;
    }
  }

  v46 = v0[63];
  v45 = v0[64];
  v47 = v0[62];

  sub_2186A7280(v99);

  v48 = sub_2186B71BC();
  sub_2186A06FC(v48);

  sub_2186B711C();
  (*(v46 + 104))(v45, *MEMORY[0x277D0CD18], v47);
  sub_2186B74EC();
  (*(v46 + 8))(v45, v47);
  v103 = sub_2186B79FC();

  v104 = sub_2186B79AC();

  if (v90)
  {
    v100 = sub_2186B79FC();
  }

  else
  {
    v100 = 0;
  }

  v49 = v0[69];
  v50 = v0[68];
  v51 = v0[67];
  v94 = sub_2186B6FEC();
  v52 = *(v49 + 48);
  if (v52(v51, 1, v50) == 1)
  {
    v93 = 0;
  }

  else
  {
    v53 = v0[69];
    v54 = v0[68];
    v55 = v0[67];
    v93 = sub_2186B6FEC();
    (*(v53 + 8))(v55, v54);
  }

  v56 = v0[68];
  v57 = v0[66];
  if (v52(v57, 1, v56) == 1)
  {
    v92 = 0;
  }

  else
  {
    v58 = v0[69];
    v92 = sub_2186B6FEC();
    (*(v58 + 8))(v57, v56);
    v56 = v0[68];
  }

  v59 = v0[65];
  if (v52(v59, 1, v56) == 1)
  {
    v91 = 0;
  }

  else
  {
    v60 = v0[69];
    v91 = sub_2186B6FEC();
    (*(v60 + 8))(v59, v56);
  }

  v87 = v0[113];
  v61 = v0[61];
  v62 = objc_allocWithZone(GKGameActivity);
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  v63 = MEMORY[0x277D85378];
  sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520, MEMORY[0x277D85378]);
  v86 = sub_2186B7B8C();

  sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
  sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548, v63);
  v89 = sub_2186B7B8C();

  v96 = sub_2186B7B8C();

  v85 = sub_2186B79AC();

  v64 = sub_2186B79FC();

  v65 = sub_2186B79FC();

  v0[57] = 0;
  LOBYTE(v84) = v95 & 1;
  v107 = [v62 initWithIdentifier:v103 activityDefinition:v87 properties:v104 state:v97 partyCode:v100 creationDate:v94 startDate:v21 lastResumeDate:v93 endDate:v92 duration:v91 achievements:v86 leaderboardScores:v89 creator:v101 initiatedByApple:v84 referralLeaderboard:v102 referralAchievement:0 participants:v96 participantStates:v85 shortGroupID:v64 consumptionState:v65 support:v61 error:v0 + 57];

  v66 = v0[57];
  v67 = v0[113];
  v68 = v0[108];
  if (v107)
  {
    v69 = v0[104];
    v70 = v0[103];
    v71 = v0[102];
    v72 = v0[70];
    v73 = v0[69];
    v74 = v0[68];
    v75 = v66;

    (*(v73 + 8))(v72, v74);
    (*(v70 + 8))(v69, v71);
    sub_21867F0B8(v68, &qword_27CC06F48, &unk_2186B9500);

    v76 = v0[1];

    return v76(v107);
  }

  else
  {
    v78 = v0[103];
    v105 = v0[102];
    v108 = v0[104];
    v79 = v0[70];
    v80 = v0[69];
    v81 = v0[68];
    v82 = v66;
    sub_2186B6F7C();

    swift_willThrow();
    (*(v80 + 8))(v79, v81);
    (*(v78 + 8))(v108, v105);
    sub_21867F0B8(v68, &qword_27CC06F48, &unk_2186B9500);

    v83 = v0[1];

    return v83();
  }
}

uint64_t sub_21869993C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218699B10()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = *(v0 + 816);

  (*(v3 + 8))(v2, v4);
  sub_21867F0B8(v1, &qword_27CC06F48, &unk_2186B9500);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_218699D24()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = *(v0 + 816);

  (*(v3 + 8))(v2, v4);
  sub_21867F0B8(v1, &qword_27CC06F48, &unk_2186B9500);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_218699F38(uint64_t a1)
{
  v2 = v1[127];
  v3 = v1[113];
  v4 = v1[108];
  v5 = v1[104];
  v6 = v1[103];
  v7 = v1[102];
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  sub_21867F0B8(v4, &qword_27CC06F48, &unk_2186B9500);

  v8 = v1[1];

  return v8();
}

uint64_t sub_21869A15C(uint64_t a1)
{
  v2 = v1[130];
  v3 = v1[113];
  v14 = v1[104];
  v15 = v1[108];
  v4 = v1[103];
  v12 = v1[94];
  v13 = v1[102];
  v5 = v1[92];
  v6 = v1[91];
  v7 = v1[89];
  v8 = v1[88];
  v9 = v1[87];
  swift_willThrow();

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v12, v6);
  (*(v4 + 8))(v14, v13);
  sub_21867F0B8(v15, &qword_27CC06F48, &unk_2186B9500);

  v10 = v1[1];

  return v10();
}

uint64_t sub_21869A3CC(uint64_t a1)
{
  v2 = v1[130];
  v3 = v1[113];
  v15 = v1[108];
  v16 = v1[136];
  v4 = v1[103];
  v13 = v1[102];
  v14 = v1[104];
  v12 = v1[94];
  v5 = v1[92];
  v6 = v1[91];
  v7 = v1[83];
  v8 = v1[82];
  v9 = v1[81];
  swift_willThrow();

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v12, v6);
  (*(v4 + 8))(v14, v13);
  sub_21867F0B8(v15, &qword_27CC06F48, &unk_2186B9500);

  v10 = v1[1];

  return v10();
}

uint64_t sub_21869A7D4(uint64_t a1, void *aBlock)
{
  *(v2 + 56) = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_2186B7C7C();
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_21869A85C, 0, 0);
}

uint64_t sub_21869A85C()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *(v1 + 16) = v0 + 16;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  type metadata accessor for GKGameActivity(v2);
  *v2 = v0;
  v2[1] = sub_21869A92C;

  return sub_218682BE4(v0 + 48, &unk_2186B9298);
}

uint64_t sub_21869A92C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_21869AAD0;
  }

  else
  {

    v2 = sub_21869AA48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21869AA48()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_21869AAD0()
{
  v1 = v0[10];
  v2 = v0[7];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = sub_2186B6F6C();

  (v2)[2](v2, 0, v3);
  _Block_release(v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_21869AB7C()
{
  v0 = sub_2186B74BC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2186B74FC();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D0CD28]);
  sub_2186B716C();
  (*(v1 + 104))(v3, *MEMORY[0x277D0CC28], v0);
  sub_21868D6FC(v3);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21869ADCC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2186B6FAC();
  v16[0] = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - v7;
  v9 = [v1 activityDefinition];
  v10 = [v9 fallbackURL];

  if (v10)
  {
    sub_2186B6F9C();

    v11 = (*(v16[0] + 32))(v8, v6, v3);
    v12 = *&v1[OBJC_IVAR___GKGameActivity__instanceSnapshot];
    MEMORY[0x28223BE20](v11);
    v16[-2] = v8;
    v16[-1] = v1;
    v13 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v12 + v13));
    sub_2186A7954();
    os_unfair_lock_unlock((v12 + v13));
    return (*(v16[0] + 8))(v8, v3);
  }

  else
  {
    v15 = *(v16[0] + 56);

    return v15(a1, 1, 1, v3);
  }
}

void sub_21869B140(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = sub_2186A6114(*a1, &qword_27CC06E70, &off_278236548, &qword_27CC06E78);

  v8 = sub_2186A81BC(&v12, a2, a3);

  if (v12 >> 62)
  {
    v9 = sub_2186B7CCC();
    if (v9 >= v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 >= v8)
    {
LABEL_3:
      sub_2186A7F6C(v8, v9, &qword_27CC06E70, &off_278236548);
      v10 = sub_2186A70E0(v12);

      *a1 = v10;
      sub_2186A2278(&v11, a4, &qword_27CC06E70, &off_278236548, &qword_27CC07098, &qword_2186B93D0);

      return;
    }
  }

  __break(1u);
}

uint64_t sub_21869B2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_21869B2C0, 0, 0);
}

uint64_t sub_21869B2C0()
{
  *(v0 + 32) = [*(v0 + 16) support];
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_21869B374;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_21869B514(v3, v2);
}

uint64_t sub_21869B374()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21869B4B0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21869B4B0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21869B514(uint64_t a1, uint64_t a2)
{
  v3[2] = a2;
  v3[3] = v2;
  v5 = sub_2186B74FC();
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v3[6] = swift_task_alloc();
  v6 = sub_2186B74BC();
  v3[7] = v6;
  v3[8] = *(v6 - 8);
  v3[9] = swift_task_alloc();
  v7 = sub_2186B72AC();
  v3[10] = v7;
  v3[11] = *(v7 - 8);
  v8 = swift_task_alloc();
  v3[12] = v8;
  v9 = swift_task_alloc();
  v3[13] = v9;
  *v9 = v3;
  v9[1] = sub_21869B6CC;

  return sub_21869DDC8(v8, a1);
}

uint64_t sub_21869B6CC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_21869BC38;
  }

  else
  {
    v2 = sub_21869B7E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21869B7E0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = *(v2 + 104);
  v4(v1, *MEMORY[0x277D0CC48], v3);
  sub_2186A7360(&qword_27CC06F88, MEMORY[0x277D0CC68], MEMORY[0x277D0CC78]);
  v5 = sub_2186B79EC();
  v6 = *(v2 + 8);
  v6(v1, v3);
  if ((v5 & 1) == 0)
  {
    v7 = v0[9];
    v8 = v0[7];
    v4(v7, *MEMORY[0x277D0CC10], v8);
    v9 = sub_2186B79EC();
    v6(v7, v8);
    if ((v9 & 1) == 0)
    {
      (*(v0[5] + 104))(v0[6], *MEMORY[0x277D0CD28], v0[4]);
      sub_2186B716C();
    }
  }

  v10 = (v0[3] + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service);
  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_0(v10, v11);
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_21869B9EC;
  v14 = v0[12];
  v15 = v0[2];

  return MEMORY[0x282164880](v14, v15, v11, v12);
}

uint64_t sub_21869B9EC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_21869BB9C;
  }

  else
  {
    v2 = sub_21869BB00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21869BB00()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21869BB9C()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21869BC38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21869BCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E10, &qword_2186B9590);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2186A7D78(a3, v22 - v9, &qword_27CC06E10, &qword_2186B9590);
  v11 = sub_2186B7B7C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_21867F0B8(v10, &qword_27CC06E10, &qword_2186B9590);
  }

  else
  {
    sub_2186B7B6C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2186B7B0C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2186B7A3C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_21867F0B8(a3, &qword_27CC06E10, &qword_2186B9590);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21867F0B8(a3, &qword_27CC06E10, &qword_2186B9590);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

id sub_21869BF68(void *a1, uint64_t a2)
{
  v59[4] = *MEMORY[0x277D85DE8];
  v4 = sub_2186B74BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v51 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2186B74FC();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x28223BE20](v7);
  v54 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2186B701C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2186B704C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218680D68(a2, v59);
  type metadata accessor for GSGameActivitySupport();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v45 = v5;
  v46 = v4;
  v57 = v58;
  v17 = objc_opt_self();
  v18 = a1;
  v53 = v18;
  v52 = [v17 localPlayer];
  v19 = [v18 defaultProperties];
  sub_2186B79BC();

  v50 = objc_allocWithZone(GKGameActivity);
  sub_2186B703C();
  sub_2186B702C();
  (*(v14 + 8))(v16, v13);
  v49 = sub_2186B79FC();

  v48 = sub_2186B79AC();

  sub_2186B700C();
  v47 = sub_2186B6FEC();
  (*(v10 + 8))(v12, v9);
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  v20 = MEMORY[0x277D85378];
  sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520, MEMORY[0x277D85378]);
  v21 = sub_2186B7B8C();
  sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
  sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548, v20);
  v22 = sub_2186B7B8C();
  sub_2186B71CC();
  v23 = sub_2186B79FC();

  v24 = sub_2186B7B8C();
  sub_2186A6594(MEMORY[0x277D84F90]);
  v25 = sub_2186B79AC();

  v26 = v54;
  v27 = v55;
  v28 = v56;
  (*(v55 + 104))(v54, *MEMORY[0x277D0CD18], v56);
  sub_2186B74EC();
  (*(v27 + 8))(v26, v28);
  v29 = sub_2186B79FC();

  v59[0] = 0;
  LOBYTE(v43) = 0;
  v30 = v49;
  v31 = v47;
  v32 = v48;
  v33 = [v50 initWithIdentifier:v49 activityDefinition:v53 properties:v48 state:0 partyCode:0 creationDate:v47 startDate:0.0 lastResumeDate:0 endDate:0 duration:0 achievements:v21 leaderboardScores:v22 creator:v52 initiatedByApple:v43 referralLeaderboard:0 referralAchievement:0 participants:v24 participantStates:v25 shortGroupID:v23 consumptionState:v29 support:v57 error:v59];

  v34 = v59[0];
  if (v33)
  {
    v36 = v45;
    v35 = v46;
    v37 = v51;
    (*(v45 + 104))(v51, *MEMORY[0x277D0CC10], v46);
    v38 = v34;
    v39 = v33;
    sub_21868D6FC(v37);

    (*(v36 + 8))(v37, v35);
  }

  else
  {
    v40 = v59[0];
    v41 = sub_2186B6F7C();

    swift_willThrow();
  }

  return v33;
}

uint64_t sub_21869C614()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21869C6A4;

  return sub_21867FFF8();
}

uint64_t sub_21869C6A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_21869C7F4, 0, 0);
  }
}

uint64_t sub_21869C7F4()
{
  v1 = *(*(v0 + 24) + 16);

  v2 = *(v0 + 8);

  return v2(v1 != 0);
}

uint64_t sub_21869C864()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21869C8F4;

  return sub_21867FFF8();
}

uint64_t sub_21869C8F4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_21869C9F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2186A8774;

  return sub_21869CA84();
}

uint64_t sub_21869CA84()
{
  v1[3] = v0;
  v2 = sub_2186B72AC();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F90, &unk_2186B9170) - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[11] = v3;
  *v3 = v1;
  v3[1] = sub_21869CBEC;

  return sub_21867FFF8();
}

uint64_t sub_21869CBEC(uint64_t a1)
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
    *(v4 + 96) = a1;

    return MEMORY[0x2822009F8](sub_21869CD54, 0, 0);
  }
}

uint64_t sub_21869CD54()
{
  v1 = v0[3];
  v0[2] = MEMORY[0x277D84F90];
  v2 = *(v1 + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service), v2);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_21869CE28;
  v5 = v0[12];

  return MEMORY[0x2821648A0](v5, v2, v3);
}

uint64_t sub_21869CE28(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_21869D5F8;
  }

  else
  {
    v4 = sub_21869CF5C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21869CF5C()
{
  v1 = v0[14];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v4 = v0[5];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = (v4 + 48);
    v23 = v4;
    v24 = (v4 + 32);
    v7 = MEMORY[0x277D84F90];
    v25 = *(v3 + 72);
    do
    {
      v9 = v0[9];
      v8 = v0[10];
      v10 = v0[4];
      sub_2186A7D78(v5, v8, &qword_27CC06F90, &unk_2186B9170);
      sub_2186A7CC4(v8, v9, &qword_27CC06F90, &unk_2186B9170);
      if ((*v6)(v9, 1, v10) == 1)
      {
        sub_21867F0B8(v0[9], &qword_27CC06F90, &unk_2186B9170);
      }

      else
      {
        v11 = *v24;
        (*v24)(v0[6], v0[9], v0[4]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2186A18F0(0, *(v7 + 2) + 1, 1, v7, &qword_27CC07070, &qword_2186B93B0, MEMORY[0x277D0CB18]);
        }

        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          v7 = sub_2186A18F0((v12 > 1), v13 + 1, 1, v7, &qword_27CC07070, &qword_2186B93B0, MEMORY[0x277D0CB18]);
        }

        v14 = v0[6];
        v15 = v0[4];
        *(v7 + 2) = v13 + 1;
        v11(&v7[((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v13], v14, v15);
      }

      v5 += v25;
      --v2;
    }

    while (v2);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v0[16] = v7;
  v17 = *(v7 + 2);
  v0[17] = v17;
  if (v17)
  {
    v18 = v0[5];
    v0[18] = MEMORY[0x277D84F90];
    v0[19] = 0;
    if (*(v7 + 2))
    {
      (*(v18 + 16))(v0[7], &v7[(*(v18 + 80) + 32) & ~*(v18 + 80)], v0[4]);
      v19 = swift_task_alloc();
      v0[20] = v19;
      *v19 = v0;
      v19[1] = sub_21869D2C4;
      v20 = v0[7];

      return sub_218694F00(v20);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v21 = v0[1];
    v22 = MEMORY[0x277D84F90];

    return v21(v22);
  }

  return result;
}

uint64_t sub_21869D2C4(uint64_t a1)
{
  v3 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  (*(v3[5] + 8))(v3[7], v3[4]);
  if (v1)
  {

    v4 = sub_21869D680;
  }

  else
  {
    v4 = sub_21869D428;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21869D428()
{
  MEMORY[0x21CEB10A0]();
  if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2186B7ACC();
  }

  v1 = v0[17];
  v2 = v0[19] + 1;
  result = sub_2186B7AEC();
  v4 = v0[2];
  if (v2 == v1)
  {

    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    v6 = v0[19] + 1;
    v0[18] = v4;
    v0[19] = v6;
    v7 = v0[16];
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
    }

    else
    {
      (*(v0[5] + 16))(v0[7], v7 + ((*(v0[5] + 80) + 32) & ~*(v0[5] + 80)) + *(v0[5] + 72) * v6, v0[4]);
      v8 = swift_task_alloc();
      v0[20] = v8;
      *v8 = v0;
      v8[1] = sub_21869D2C4;
      v9 = v0[7];

      return sub_218694F00(v9);
    }
  }

  return result;
}

uint64_t sub_21869D5F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21869D680()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_21869D70C()
{
  if (qword_2811ED5E0 != -1)
  {
    swift_once();
  }

  v1 = qword_2811ED610;

  return v1;
}

uint64_t sub_21869D768(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2186804FC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_21869D7AC(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_21867FF24(a1, v3 + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

id sub_21869D820()
{
  if (qword_2811ED5E0 != -1)
  {
    swift_once();
  }

  v0 = qword_2811ED610;

  return v0;
}

void *sub_21869D8D8(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_21867FF24(a1, v1 + OBJC_IVAR____TtC7GameKit21GSGameActivitySupport_service);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t sub_21869DAC0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_21869DB68;

  return sub_21869CA84();
}

uint64_t sub_21869DB68(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v8 = sub_2186B6F6C();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for GKGameActivity(v7);
    v11 = sub_2186B7A9C();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v4 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v6 + 8);

  return v13();
}

uint64_t sub_21869DCF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21869DD54@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D0CC48];
  v3 = sub_2186B74BC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_21869DDC8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_2186B794C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_2186B74FC();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F30, &qword_2186B90D0);
  v2[15] = swift_task_alloc();
  v5 = sub_2186B72AC();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21869DFF8, 0, 0);
}

uint64_t sub_21869DFF8()
{
  v0[2] = MEMORY[0x277D84F90];
  sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
  sub_218680544();
  v50 = v0[21];
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[6];
  v5 = *&v4[OBJC_IVAR___GKGameActivity__instanceSnapshot];
  v6 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  (*(v2 + 16))(v1, v5 + v6, v3);
  os_unfair_lock_unlock((v5 + v7));
  v8 = [v4 achievements];
  sub_2186804FC(0, &qword_27CC06E60, &off_278236520);
  sub_21869D768(&qword_27CC06E68, &qword_27CC06E60, &off_278236520, MEMORY[0x277D85378]);
  v9 = sub_2186B7B9C();

  v10 = swift_task_alloc();
  *(v10 + 16) = v0 + 2;
  *(v10 + 24) = v50;
  sub_2186911E4(sub_2186A73A8, v10, v9);
  v11 = v0[6];

  v12 = [v11 leaderboardScores];
  sub_2186804FC(0, &qword_27CC06E70, &off_278236548);
  sub_21869D768(&qword_27CC06E78, &qword_27CC06E70, &off_278236548, MEMORY[0x277D85378]);
  v13 = sub_2186B7B9C();

  sub_218691430(v13, v0 + 2);
  v16 = v0[6];

  v17 = [v16 referralLeaderboard];
  if (v17 && (v18 = v0[6], v17, (v19 = [v18 referralAchievement]) != 0))
  {
    v21 = v0[8];
    v20 = v0[9];
    v22 = v0[7];

    v23 = sub_21867F9D4();
    (*(v21 + 16))(v20, v23, v22);
    v24 = sub_2186B792C();
    v25 = sub_2186B7BEC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_21867D000, v24, v25, "Invalid referral found for game activity.", v26, 2u);
      MEMORY[0x21CEB1A70](v26, -1, -1);
    }

    v27 = v0[20];
    v28 = v0[18];
    v49 = v0[19];
    v51 = v0[21];
    v30 = v0[16];
    v29 = v0[17];
    v32 = v0[8];
    v31 = v0[9];
    v33 = v0[7];

    (*(v32 + 8))(v31, v33);
    type metadata accessor for GKError(0);
    v0[4] = 17;
    sub_218683CC0(MEMORY[0x277D84F90]);
    sub_2186A7360(&qword_27CC06D98, type metadata accessor for GKError, &unk_2186B8E18);
    sub_2186B6F5C();
    swift_willThrow();
    (*(v29 + 8))(v28, v30);
    (*(v27 + 8))(v51, v49);

    v14 = v0[1];
  }

  else
  {
    v34 = v0[15];

    sub_2186B710C();
    sub_218689A2C(v34);
    v36 = v0[12];
    v35 = v0[13];
    v37 = v0[10];
    v38 = v0[11];
    sub_2186B718C();
    sub_2186B715C();
    v39 = *MEMORY[0x277D0CD20];
    v52 = *(v38 + 104);
    v52(v36, v39, v37);
    v40 = sub_2186B74CC();
    v41 = *(v38 + 8);
    v41(v36, v37);
    v41(v35, v37);
    if (v40)
    {
      v52(v0[14], v39, v0[10]);
    }

    else
    {
      sub_2186B715C();
    }

    v43 = v0[20];
    v42 = v0[21];
    v44 = v0[18];
    v45 = v0[19];
    v46 = v0[16];
    v47 = v0[17];
    v48 = v0[5];
    sub_2186B716C();
    (*(v47 + 32))(v48, v44, v46);
    (*(v43 + 8))(v42, v45);

    v14 = v0[1];
  }

  return v14();
}

uint64_t sub_21869E708(id *a1, uint64_t *a2, uint64_t a3)
{
  v39 = a3;
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F08, &qword_2186B90A8);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = &v31 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v6 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07028, &qword_2186B9358);
  MEMORY[0x28223BE20](v9 - 8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v10 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v12 = &v31 - v11;
  v13 = sub_2186B749C();
  v33 = *(v13 - 8);
  v34 = v13;
  MEMORY[0x28223BE20](v13);
  v32 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = [*a1 player];
  v17 = [v16 internalPlayerID];

  sub_2186B7A0C();
  sub_2186B786C();
  v18 = [v15 identifier];
  sub_2186B7A0C();

  (*(v6 + 16))(v8, v39, v38);
  v19 = v40;
  sub_2186B77DC();
  if (v19)
  {
    return (*(v10 + 8))(v12, v37);
  }

  [v15 percentComplete];
  [v15 isCompleted];
  v21 = [v15 lastReportedDate];
  v22 = v35;
  sub_2186B6FFC();

  v23 = sub_2186B701C();
  (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  v24 = v32;
  sub_2186B768C();
  v25 = v33;
  (*(v33 + 104))(v24, *MEMORY[0x277D0CBF8], v34);
  v26 = v36;
  v27 = *v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v26 = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = sub_2186A18F0(0, v27[2] + 1, 1, v27, &qword_27CC07030, &qword_2186B9360, MEMORY[0x277D0CC08]);
    *v26 = v27;
  }

  v30 = v27[2];
  v29 = v27[3];
  if (v30 >= v29 >> 1)
  {
    v27 = sub_2186A18F0((v29 > 1), v30 + 1, 1, v27, &qword_27CC07030, &qword_2186B9360, MEMORY[0x277D0CC08]);
    *v26 = v27;
  }

  v27[2] = v30 + 1;
  return (*(v25 + 32))(v27 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v30, v24);
}

uint64_t sub_21869EC34(void **a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F18, &qword_2186B90B8);
  MEMORY[0x28223BE20](v7 - 8);
  v30 = &v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_2186B749C();
  v28 = *(v13 - 8);
  v29 = v13;
  MEMORY[0x28223BE20](v13);
  v27 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = [v15 player];
  v17 = [v16 internalPlayerID];

  sub_2186B7A0C();
  sub_2186B786C();
  v18 = [v15 value];
  if (([v15 context] & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    v18 = sub_2186A18F0(0, v18[2] + 1, 1, v18, &qword_27CC07030, &qword_2186B9360, MEMORY[0x277D0CC08]);
    *a2 = v18;
    goto LABEL_5;
  }

  v26 = a2;
  v19 = [v15 leaderboardID];
  sub_2186B7A0C();

  sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
  v20 = v31;
  sub_218680544();
  if (v20)
  {
    (*(v10 + 8))(v12, v9);
  }

  v31 = v18;
  sub_2186B782C();
  v9 = v27;
  sub_2186B75EC();
  v10 = v28;
  v6 = v29;
  (*(v28 + 104))(v9, *MEMORY[0x277D0CC00], v29);
  a2 = v26;
  v18 = *v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v24 = v18[2];
  v23 = v18[3];
  if (v24 >= v23 >> 1)
  {
    v18 = sub_2186A18F0((v23 > 1), v24 + 1, 1, v18, &qword_27CC07030, &qword_2186B9360, MEMORY[0x277D0CC08]);
    *a2 = v18;
  }

  v18[2] = v24 + 1;
  return (*(v10 + 32))(v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v24, v9, v6);
}

uint64_t sub_21869F0A4(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC070C0, &qword_2186B93E8);
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07028, &qword_2186B9358);
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v5 = sub_2186B749C();
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();
  v6 = sub_2186B769C();
  v2[30] = v6;
  v2[31] = *(v6 - 8);
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21869F290, 0, 0);
}

uint64_t sub_21869F290()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  (*(v2 + 16))(v1, v0[20], v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D0CBF8])
  {
    v5 = v0[31];
    v4 = v0[32];
    v7 = v0[29];
    v6 = v0[30];
    (*(v0[28] + 96))(v7, v0[27]);
    (*(v5 + 32))(v4, v7, v6);
    sub_2186B767C();
    sub_2186B77EC();
    v11 = v0[25];
    v12 = v0[26];
    v13 = v0[24];
    v24 = v0[23];
    v14 = v0[21];
    v15 = v0[22];
    v26 = objc_opt_self();
    (*(v11 + 8))(v12, v13);
    v25 = sub_2186B79FC();
    v0[33] = v25;

    v16 = [objc_opt_self() currentGame];
    v0[34] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC070C8, &unk_2186B93F0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2186B8F70;
    v18 = [objc_opt_self() playerID];
    v19 = sub_2186B7A0C();
    v21 = v20;

    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 32) = v19;
    *(v17 + 40) = v21;
    v22 = sub_2186B7A9C();
    v0[35] = v22;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_21869F72C;
    swift_continuation_init();
    v0[17] = v14;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F60, &qword_2186B9108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06D80, &qword_2186B97E0);
    sub_2186B7B1C();
    (*(v15 + 32))(boxed_opaque_existential_0, v24, v14);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21869F9D8;
    v0[13] = &block_descriptor_175;
    [v26 loadAchievementWithId:v25 forGame:v16 playerIDs:v22 withCompletionHandler:?];
    (*(v15 + 8))(boxed_opaque_existential_0, v14);

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v8 = v0[19];
    (*(v0[28] + 8))(v0[29], v0[27]);
    *v8 = 0;

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_21869F72C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_21869F900;
  }

  else
  {
    v2 = sub_21869F83C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21869F83C()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[19];
  (*(v0[31] + 8))(v0[32], v0[30]);
  *v4 = v0[18];

  v5 = v0[1];

  return v5();
}

uint64_t sub_21869F900(uint64_t a1)
{
  v2 = v1[35];
  v4 = v1[33];
  v3 = v1[34];
  v6 = v1[31];
  v5 = v1[32];
  v7 = v1[30];
  swift_willThrow();
  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8();
}

void sub_21869F9FC(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v12 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    sub_2186B7B2C();
  }

  else
  {
    sub_2186804FC(0, a6, a7);
    sub_2186B7AAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    sub_2186B7B3C();
  }
}