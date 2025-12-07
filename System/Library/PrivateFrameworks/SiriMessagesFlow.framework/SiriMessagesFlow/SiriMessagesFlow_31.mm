uint64_t sub_267E5565C()
{
  v1 = sub_267EF9C38();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E55718, 0, 0);
}

uint64_t sub_267E55718()
{
  OUTLINED_FUNCTION_12();
  sub_267EF9F58();
  OUTLINED_FUNCTION_10(&unk_267F0C7B0);
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_267E557D4;
  OUTLINED_FUNCTION_22_0();

  return v4();
}

uint64_t sub_267E557D4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = v4[4];
  v6 = v4[3];
  v7 = v4[2];
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  *(v10 + 48) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E55928()
{
  OUTLINED_FUNCTION_56();
  sub_267C266B0();
  swift_allocError();
  *v0 = 0xD000000000000032;
  v0[1] = 0x8000000267F1BED0;
  swift_willThrow();

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267E559CC()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267E55A28()
{

  return OUTLINED_FUNCTION_61_0();
}

uint64_t sub_267E55A88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BD5D40;

  return sub_267E51EDC();
}

uint64_t sub_267E55B4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267E55B94(uint64_t a1)
{
  result = sub_267E55B4C(&qword_28022CA10, type metadata accessor for ImageComponent, &unk_267F0C6B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267E55BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_267EF9C28();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_267E55CEC, 0, 0);
}

uint64_t sub_267E55CEC()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_267EF9C38();
  v5 = sub_267E55B4C(&qword_28022CA20, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_267EF9F38();
  sub_267E55B4C(&qword_28022CA28, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_267EF9C48();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_267E55E78;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_267E55E78()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    OUTLINED_FUNCTION_17();

    return v14();
  }
}

uint64_t sub_267E56018()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267E5607C(void *a1)
{
  v2 = [a1 attachmentFiles];

  if (!v2)
  {
    return 0;
  }

  sub_267BA9F38(0, &unk_28022AE20, 0x277CD3C08);
  v3 = sub_267EF92F8();

  return v3;
}

uint64_t sub_267E560F4()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_33_20();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_18_34(v1);
  OUTLINED_FUNCTION_122();

  return sub_267E54160(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_267E56184()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_33_20();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_18_34(v1);
  OUTLINED_FUNCTION_122();

  return sub_267E5388C(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_267E56214(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v3 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_267BBD07C;

  return sub_267E54C18(a1, a2, v6, v7, v8);
}

uint64_t sub_267E562D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E56338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageComponent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E5639C()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for ImageComponent(0);
  OUTLINED_FUNCTION_30_0(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0) - 8);
  v11 = (v9 + *(v10 + 80) + 40) & ~*(v10 + 80);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_267BBD07C;

  return sub_267E55270(v4, v12, v13, v0 + v7, v0 + v9, v0 + v11);
}

uint64_t sub_267E56504()
{
  OUTLINED_FUNCTION_56();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BAEBEC;

  return sub_267E5565C();
}

uint64_t type metadata accessor for EditMessageCATsSimple(uint64_t a1)
{
  result = qword_28022CA30;
  if (!qword_28022CA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267E56644(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  OUTLINED_FUNCTION_22_0();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267E56674()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_267EFCC90;
  *(v2 + 32) = 0x70756F7267;
  *(v2 + 40) = 0xE500000000000000;
  if (v1)
  {
    type metadata accessor for MessagesGroup(0);
    v3 = v1;
  }

  else
  {
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v4 = v0[3];
  *(v2 + 48) = v3;
  OUTLINED_FUNCTION_22_3();
  *(v2 + 72) = v5;
  *(v2 + 80) = v6;
  *(v2 + 88) = 0xE900000000000074;
  v7 = 0;
  if (v4)
  {
    v7 = sub_267EF77C8();
  }

  else
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  *(v2 + 96) = v4;
  *(v2 + 120) = v7;
  v10 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_267E56800;

  return v10(0xD000000000000019, 0x8000000267F13280, v2);
}

uint64_t sub_267E56800()
{
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_15_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_15_0();
  *v7 = v6;
  *(v4 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {

    v11 = *(v6 + 8);

    return v11(v1);
  }
}

uint64_t sub_267E56944()
{
  OUTLINED_FUNCTION_12();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_267E569A4()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 88) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v0;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  *(v1 + 48) = swift_task_alloc();
  *(v1 + 56) = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E56A4C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = swift_allocObject();
  *(v0 + 64) = v3;
  OUTLINED_FUNCTION_2_8(v3, xmmword_267F01440);
  sub_267BB16A4(v2, v1, &unk_28022AE30, &qword_267EFC0B0);
  v4 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_23_11() == 1)
  {
    sub_267B9FF34(*(v0 + 56), &unk_28022AE30, &qword_267EFC0B0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v5();
  }

  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  OUTLINED_FUNCTION_22_3();
  *(v3 + 80) = v9;
  *(v3 + 88) = 0xEA00000000007374;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v3 + 96) = v7;
  *(v3 + 120) = v10;
  *(v3 + 128) = 0x64616F6C796170;
  *(v3 + 136) = 0xE700000000000000;
  sub_267BB16A4(v8, v6, &unk_28022AE30, &qword_267EFC0B0);
  v11 = OUTLINED_FUNCTION_23_11();
  v12 = *(v0 + 48);
  if (v11 == 1)
  {

    sub_267B9FF34(v12, &unk_28022AE30, &qword_267EFC0B0);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v4;
    __swift_allocate_boxed_opaque_existential_0((v3 + 144));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v13();
  }

  v14 = *(v0 + 88);
  *(v3 + 176) = 0xD000000000000011;
  *(v3 + 184) = 0x8000000267F13240;
  *(v3 + 216) = MEMORY[0x277D839B0];
  *(v3 + 192) = v14;
  v17 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v15 = swift_task_alloc();
  *(v0 + 72) = v15;
  *v15 = v0;
  v15[1] = sub_267E56CF4;

  return v17(0xD000000000000017, 0x8000000267F131A0, v3);
}

uint64_t sub_267E56CF4()
{
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_3();

    return v11(v10);
  }
}

uint64_t sub_267E56E3C()
{
  OUTLINED_FUNCTION_12();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_267E56EB0()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v1[5] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267E56F48()
{
  v1 = v0[5];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = swift_allocObject();
  v0[6] = v3;
  OUTLINED_FUNCTION_2_8(v3, xmmword_267EFCC90);
  sub_267BB16A4(v2, v1, &unk_28022AE30, &qword_267EFC0B0);
  v4 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_23_11() == 1)
  {
    sub_267B9FF34(v0[5], &unk_28022AE30, &qword_267EFC0B0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v5();
  }

  v6 = v0[3];
  OUTLINED_FUNCTION_22_3();
  *(v3 + 80) = v7;
  *(v3 + 88) = 0xEA00000000007374;
  *(v3 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v3 + 96) = v6;
  v10 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_267E5711C;

  return v10(0xD000000000000019, 0x8000000267F13100, v3);
}

uint64_t sub_267E5711C()
{
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_3();

    return v11(v10);
  }
}

uint64_t sub_267E57258()
{
  OUTLINED_FUNCTION_12();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_267E572C0()
{
  swift_allocObject();
  OUTLINED_FUNCTION_26_3();
  return sub_267E57310(v0, v1, v2);
}

uint64_t sub_267E57310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_267EF7B88();
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  MEMORY[0x28223BE20](v11 - 8);
  sub_267BB16A4(a1, &v15 - v12, &qword_280229E20, &unk_267EFDCC0);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_267EF79C8();
  (*(v7 + 8))(a2, v3);
  sub_267B9FF34(a1, &qword_280229E20, &unk_267EFDCC0);
  return v13;
}

uint64_t sub_267E5748C(uint64_t a1, uint64_t a2)
{
  sub_267EF7B88();
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_267EF79D8();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_267E57594(uint64_t a1, uint64_t a2)
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_267B93000, v3, v4, "Trial factors updated. Refreshing.", v5, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_267B9AFEC(result + 16, v9);

    v7 = v10;
    v8 = v11;
    __swift_project_boxed_opaque_existential_0(v9, v10);
    (*(v8 + 24))(v7, v8);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  return result;
}

uint64_t sub_267E576F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_267EF79B8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = [v0 amount];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  [v11 doubleValue];

  sub_267E5793C(v0);
  v14 = v13;
  if (v13)
  {
    sub_267EF90F8();

    (*(v5 + 32))(v10, v8, v4);
    sub_267EF7838();
    swift_allocObject();
    sub_267EF7828();
    (*(v5 + 16))(v3, v10, v4);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
    sub_267EF7608();

    sub_267BBD6F0(v3);
    v14 = sub_267EF75F8();

    (*(v5 + 8))(v10, v4);
  }

  return v14;
}

uint64_t sub_267E5793C(void *a1)
{
  v1 = [a1 currencyCode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

unint64_t sub_267E579A0@<X0>(void *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_267BEB478(0xD000000000000017, 0x8000000267F18AD0);
  if (v3)
  {
    v4 = v3;
    result = sub_267BEB4DC();
    a1[3] = result;
    a1[4] = &off_2878D36E8;
    *a1 = v4;
    a1[5] = 0xD000000000000017;
    a1[6] = 0x8000000267F18AD0;
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_267EF9B68();
    MEMORY[0x26D608E60](0xD00000000000004ALL, 0x8000000267F1BFE0);
    MEMORY[0x26D608E60](0xD000000000000017, 0x8000000267F18AD0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v6 = sub_267EF8A08();
    __swift_project_value_buffer(v6, qword_280240FB0);

    v7 = sub_267EF89F8();
    v8 = sub_267EF95E8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_267BA33E8(0, 0xE000000000000000, v11);
      _os_log_impl(&dword_267B93000, v7, v8, "Fatal error: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    result = sub_267EF9C98();
    __break(1u);
  }

  return result;
}

uint64_t sub_267E57BAC(char a1)
{
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  v4 = sub_267E57D38(a1 & 1);
  v5 = (*(v3 + 8))(v4);

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v6 = sub_267EF8A08();
  __swift_project_value_buffer(v6, qword_280240FB0);
  v7 = sub_267EF89F8();
  v8 = sub_267EF95D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315394;
    v11 = sub_267E57D38(a1 & 1);
    v13 = sub_267BA33E8(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v5 & 1;
    _os_log_impl(&dword_267B93000, v7, v8, "#ManualTestFlagStore Flag %s isEnabled is '%{BOOL}d'", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  return v5 & 1;
}

uint64_t sub_267E57D38(char a1)
{
  sub_267EF9B68();
  if (a1)
  {
    v2 = 0x73746E6968;
  }

  else
  {
    v2 = 0x646E65536F747561;
  }

  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  MEMORY[0x26D608E60](v2, v3);

  MEMORY[0x26D608E60](0x546C61756E614D2ELL, 0xEF67616C46747365);
  return 0;
}

double sub_267E57DFC@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a2;
  sub_267EF4C68();
  OUTLINED_FUNCTION_58();
  v63 = v4;
  v64 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_60();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v62 - v9;
  v11 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_267EF6718();
  OUTLINED_FUNCTION_58();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_60();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v62 - v25;
  (*(v13 + 16))(v16, a1, v11);
  OUTLINED_FUNCTION_35_26();
  v28 = v27(v16, v11);
  if (v28 == *MEMORY[0x277D5C128])
  {
    v29 = OUTLINED_FUNCTION_17_28();
    v30(v29);
    goto LABEL_5;
  }

  if (v28 == *MEMORY[0x277D5C158])
  {
    v31 = OUTLINED_FUNCTION_17_28();
    v32(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D50, &qword_267F0C8C0);

LABEL_5:
    v33 = *(v19 + 32);
    v33(v26, v16, v17);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v34 = sub_267EF8A08();
    __swift_project_value_buffer(v34, qword_280240FB0);
    v35 = sub_267EF89F8();
    v36 = sub_267EF95D8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v38, v39, "#SmsIntentHelper building SmsNLv3Intent");
      MEMORY[0x26D60A7B0](v37, -1, -1);
    }

    v33(v23, v26, v17);
    v40 = type metadata accessor for SmsNLv3Intent(0);
    swift_allocObject();
    v41 = sub_267EC41AC(v23);
    if (v41)
    {
      v43 = v65;
      v65[3] = v40;
      v43[4] = &off_2878D9000;
      *v43 = v41;
      return result;
    }

    return OUTLINED_FUNCTION_29_29();
  }

  if (v28 == *MEMORY[0x277D5C160])
  {
    v44 = OUTLINED_FUNCTION_17_28();
    v45(v44);
    v47 = v63;
    v46 = v64;
    (*(v63 + 32))(v10, v16, v64);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v48 = sub_267EF8A08();
    __swift_project_value_buffer(v48, qword_280240FB0);
    v49 = sub_267EF89F8();
    v50 = sub_267EF95D8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_267B93000, v49, v50, "#SmsIntentHelper building an SmsNLv4Intent from usoParse", v51, 2u);
      MEMORY[0x26D60A7B0](v51, -1, -1);
    }

    (*(v47 + 16))(v7, v10, v46);
    v52 = type metadata accessor for SmsNLv4Intent(0);
    swift_allocObject();
    sub_267DD5530();
    if (v53)
    {
      v54 = v65;
      v65[3] = v52;
      v54[4] = &off_2878D5AD8;
      *v54 = v53;
      (*(v47 + 8))(v10, v46);
      return result;
    }

    (*(v47 + 8))(v10, v46);
    return OUTLINED_FUNCTION_29_29();
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v55 = sub_267EF8A08();
  __swift_project_value_buffer(v55, qword_280240FB0);
  v56 = sub_267EF89F8();
  v57 = sub_267EF95D8();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    OUTLINED_FUNCTION_28_11(&dword_267B93000, v59, v60, "#SmsIntentHelper unrecognized parse type, not building SmsIntent");
    MEMORY[0x26D60A7B0](v58, -1, -1);
  }

  v61 = OUTLINED_FUNCTION_29_29();
  (*(v13 + 8))(v16, v11, v61);
  return result;
}

uint64_t sub_267E583C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  a3(0);
  if (swift_dynamicCast())
  {
    return v8[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267E584A8(uint64_t a1, unint64_t a2)
{
  v4 = sub_267EFA0A8();
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = 0;
    v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v19 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = (v5 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_267EF9B58();
        v15 = v14;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v20[0] = a1;
          v20[1] = v19;
          if (*(v20 + v9) < 0)
          {
            switch(__clz(*(v20 + v9) ^ 0xFF))
            {
              case 0x1Au:
LABEL_19:
                v15 = 2;
                break;
              case 0x1Bu:
LABEL_20:
                v15 = 3;
                break;
              case 0x1Cu:
LABEL_21:
                v15 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v11 = v18;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v11 = sub_267EF9BC8();
          }

          v12 = *(v11 + v9);
          v13 = *(v11 + v9);
          if (v12 < 0)
          {
            switch(__clz(v13 ^ 0xFF))
            {
              case 0x1Au:
                goto LABEL_19;
              case 0x1Bu:
                goto LABEL_20;
              case 0x1Cu:
                goto LABEL_21;
              default:
                break;
            }
          }
        }

LABEL_14:
        v15 = 1;
      }

LABEL_15:
      sub_267EFA0B8();
      v16 = sub_267EFA098();
      (*v10)(v7, v4);
      if ((v16 & 1) == 0)
      {
        v9 += v15;
        if (v9 < v8)
        {
          continue;
        }
      }

      return v16 & 1;
    }
  }

  v16 = 0;
  return v16 & 1;
}

uint64_t sub_267E58714()
{
  OUTLINED_FUNCTION_36_24();
  if (v0() & 1) != 0 && (v1 = OUTLINED_FUNCTION_3(), (v2(v1)) && (v3 = OUTLINED_FUNCTION_3(), (v4(v3)))
  {
    v5 = OUTLINED_FUNCTION_3();
    v7 = v6(v5) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_267E587AC()
{
  OUTLINED_FUNCTION_36_24();
  if ((v0() & 1) == 0)
  {
    return 0;
  }

  v1 = OUTLINED_FUNCTION_3();
  if ((v2(v1) & 1) == 0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_3();

  return v4(v3);
}

uint64_t sub_267E58838@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_60();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - v7;
  v9 = sub_267EF8198();
  OUTLINED_FUNCTION_58();
  v56 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_60();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  v18 = OUTLINED_FUNCTION_17_4();
  if (v19(v18) & 1) != 0 || (v20 = OUTLINED_FUNCTION_2_64(), (v21(v20)))
  {
    v57 = a1;
    v22 = OUTLINED_FUNCTION_2_64();
    v55 = v23;
    if (v23(v22))
    {
      sub_267EAC924(v8);

      if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
      {
        v24 = *(v56 + 32);
        v24(v17, v8, v9);
        v25 = v57;
        v26 = v57;
        v27 = v17;
LABEL_23:
        v24(v26, v27, v9);
        __swift_storeEnumTagSinglePayload(v25, 0, 1, v9);
        v52 = type metadata accessor for TapbackAction(0);
        swift_storeEnumTagMultiPayload();
        v53 = v25;
        return __swift_storeEnumTagSinglePayload(v53, 0, 1, v52);
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
    }

    sub_267E59E60(v8);
    v28 = OUTLINED_FUNCTION_2_64();
    v30 = v29(v28);
    if (v31)
    {
      sub_267D704A0(v30, v31, v5);

      if (__swift_getEnumTagSinglePayload(v5, 1, v9) != 1)
      {
        v24 = *(v56 + 32);
        v24(v14, v5, v9);
        v25 = v57;
        v26 = v57;
        v27 = v14;
        goto LABEL_23;
      }

      sub_267E59E60(v5);
    }

    v32 = OUTLINED_FUNCTION_2_64();
    v33 = v55;
    if (v55(v32) && (v34 = sub_267EF60C8(), , v34))
    {
      v35 = v57;
      v36 = OUTLINED_FUNCTION_2_64();
      v37(v36);
    }

    else
    {
      v44 = OUTLINED_FUNCTION_2_64();
      if (!v33(v44) || (v45 = sub_267EF60D8(), v47 = v46, , !v47) || (v48 = sub_267E584A8(v45, v47), , (v48 & 1) == 0))
      {
        v35 = v57;
        __swift_storeEnumTagSinglePayload(v57, 1, 1, v9);
        v52 = type metadata accessor for TapbackAction(0);
        goto LABEL_21;
      }

      v35 = v57;
      v49 = OUTLINED_FUNCTION_2_64();
      v50(v49);
    }

    v51 = sub_267EF4BA8();
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v51);
    v52 = type metadata accessor for TapbackAction(0);
LABEL_21:
    swift_storeEnumTagMultiPayload();
    v53 = v35;
    return __swift_storeEnumTagSinglePayload(v53, 0, 1, v52);
  }

  v38 = OUTLINED_FUNCTION_2_64();
  v40 = v39(v38);
  v41 = type metadata accessor for TapbackAction(0);
  if (v40)
  {
    swift_storeEnumTagMultiPayload();
    v42 = a1;
    v43 = 0;
  }

  else
  {
    v42 = a1;
    v43 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v42, v43, 1, v41);
}

BOOL sub_267E58CE8(char a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  do
  {
    v6 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v8 = 1684957542;
    v9 = 0xE400000000000000;
    switch(*v5)
    {
      case 1:
        v8 = 2003789939;
        break;
      case 2:
        v8 = OUTLINED_FUNCTION_43_22();
        break;
      case 3:
        v8 = 1684104562;
        break;
      case 4:
        v8 = 1684956531;
        break;
      case 5:
        v8 = OUTLINED_FUNCTION_41_19() & 0xFFFF00000000FFFFLL | 0x796C700000;
        break;
      case 6:
        v8 = OUTLINED_FUNCTION_19_39();
        break;
      case 7:
        v8 = OUTLINED_FUNCTION_516();
        break;
      case 8:
        v9 = 0xE600000000000000;
        v11 = 1701602660;
        goto LABEL_29;
      case 9:
        v9 = 0xE600000000000000;
        v10 = 1701867617;
        goto LABEL_33;
      case 0xA:
        v8 = OUTLINED_FUNCTION_20_29();
        break;
      case 0xB:
        v8 = OUTLINED_FUNCTION_7_47();
        break;
      case 0xC:
        v8 = OUTLINED_FUNCTION_18_35();
        break;
      case 0xD:
        v8 = 1886352499;
        break;
      case 0xE:
        v8 = OUTLINED_FUNCTION_40_22();
        break;
      case 0xF:
        v8 = 2036427888;
        break;
      case 0x10:
        v8 = OUTLINED_FUNCTION_44_23();
        break;
      case 0x11:
        v8 = OUTLINED_FUNCTION_15_40();
        break;
      case 0x12:
        v9 = 0xE600000000000000;
        v11 = 1633972341;
LABEL_29:
        v8 = v11 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
        break;
      case 0x13:
        v12 = OUTLINED_FUNCTION_38_26();
        goto LABEL_35;
      case 0x14:
        v8 = OUTLINED_FUNCTION_14_41();
        goto LABEL_21;
      case 0x15:
        v8 = OUTLINED_FUNCTION_12_42();
        break;
      case 0x16:
        v8 = OUTLINED_FUNCTION_21_29();
        break;
      case 0x17:
        v9 = 0xE600000000000000;
        v10 = 1702063733;
LABEL_33:
        v8 = v10 & 0xFFFF0000FFFFFFFFLL | 0x646E00000000;
        break;
      case 0x18:
        v8 = OUTLINED_FUNCTION_45_24();
        break;
      case 0x19:
        v8 = OUTLINED_FUNCTION_41_19() & 0xFFFF00000000FFFFLL | 0x7463610000;
        break;
      case 0x1A:
        v12 = OUTLINED_FUNCTION_39_22();
LABEL_35:
        v8 = v12 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
        break;
      case 0x1B:
        v8 = OUTLINED_FUNCTION_13_42();
LABEL_21:
        v9 = 0xEE00000000000000;
        break;
      default:
        break;
    }

    v13 = 1684957542;
    v14 = 0xE400000000000000;
    switch(a1)
    {
      case 1:
        v13 = 2003789939;
        break;
      case 2:
        OUTLINED_FUNCTION_32_21();
        break;
      case 3:
        v13 = 1684104562;
        break;
      case 4:
        v13 = 1684956531;
        break;
      case 5:
        OUTLINED_FUNCTION_27_31();
        v13 = v17 & 0xFFFF00000000FFFFLL | 0x796C700000;
        break;
      case 6:
        OUTLINED_FUNCTION_25_36();
        break;
      case 7:
        OUTLINED_FUNCTION_31_25();
        break;
      case 8:
        v14 = 0xE600000000000000;
        v18 = 1701602660;
        goto LABEL_61;
      case 9:
        v14 = 0xE600000000000000;
        v15 = 1701867617;
        goto LABEL_65;
      case 10:
        OUTLINED_FUNCTION_23_27();
        break;
      case 11:
        OUTLINED_FUNCTION_8_51();
        break;
      case 12:
        OUTLINED_FUNCTION_22_30();
        break;
      case 13:
        v13 = 1886352499;
        break;
      case 14:
        OUTLINED_FUNCTION_28_33();
        break;
      case 15:
        v13 = 2036427888;
        break;
      case 16:
        OUTLINED_FUNCTION_33_21();
        break;
      case 17:
        OUTLINED_FUNCTION_16_37();
        break;
      case 18:
        v14 = 0xE600000000000000;
        v18 = 1633972341;
LABEL_61:
        v13 = v18 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
        break;
      case 19:
        OUTLINED_FUNCTION_47_17();
        goto LABEL_67;
      case 20:
        OUTLINED_FUNCTION_11_45();
        goto LABEL_53;
      case 21:
        OUTLINED_FUNCTION_9_49();
        break;
      case 22:
        OUTLINED_FUNCTION_24_35();
        break;
      case 23:
        v14 = 0xE600000000000000;
        v15 = 1702063733;
LABEL_65:
        v13 = v15 & 0xFFFF0000FFFFFFFFLL | 0x646E00000000;
        break;
      case 24:
        OUTLINED_FUNCTION_30_33();
        break;
      case 25:
        OUTLINED_FUNCTION_27_31();
        v13 = v16 & 0xFFFF00000000FFFFLL | 0x7463610000;
        break;
      case 26:
        OUTLINED_FUNCTION_48_26();
LABEL_67:
        v13 = v19 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
        break;
      case 27:
        OUTLINED_FUNCTION_10_43();
LABEL_53:
        v14 = 0xEE00000000000000;
        break;
      default:
        break;
    }

    if (v8 == v13 && v9 == v14)
    {

      return v6 != 0;
    }

    sub_267EF9EA8();
    OUTLINED_FUNCTION_51_17();

    ++v5;
  }

  while ((v2 & 1) == 0);
  return v6 != 0;
}

BOOL sub_267E59030(unsigned __int8 a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = (a2 + 32);
  while (v4)
  {
    v6 = a1;
    if (*v5 == 28)
    {
      if (a1 == 28)
      {
        return v4 != 0;
      }
    }

    else
    {
      v7 = 1684957542;
      v8 = 0xE400000000000000;
      switch(*v5)
      {
        case 1:
          v7 = 2003789939;
          break;
        case 2:
          v7 = OUTLINED_FUNCTION_43_22();
          break;
        case 3:
          v7 = 1684104562;
          break;
        case 4:
          v7 = 1684956531;
          break;
        case 5:
          v7 = OUTLINED_FUNCTION_41_19() & 0xFFFF00000000FFFFLL | 0x796C700000;
          break;
        case 6:
          v7 = OUTLINED_FUNCTION_19_39();
          break;
        case 7:
          v7 = OUTLINED_FUNCTION_516();
          break;
        case 8:
          v8 = 0xE600000000000000;
          v10 = 1701602660;
          goto LABEL_31;
        case 9:
          v8 = 0xE600000000000000;
          v9 = 1701867617;
          goto LABEL_35;
        case 0xA:
          v7 = OUTLINED_FUNCTION_20_29();
          break;
        case 0xB:
          v7 = OUTLINED_FUNCTION_7_47();
          break;
        case 0xC:
          v7 = OUTLINED_FUNCTION_18_35();
          break;
        case 0xD:
          v7 = 1886352499;
          break;
        case 0xE:
          v7 = OUTLINED_FUNCTION_40_22();
          break;
        case 0xF:
          v7 = 2036427888;
          break;
        case 0x10:
          v7 = OUTLINED_FUNCTION_44_23();
          break;
        case 0x11:
          v7 = OUTLINED_FUNCTION_15_40();
          break;
        case 0x12:
          v8 = 0xE600000000000000;
          v10 = 1633972341;
LABEL_31:
          v7 = v10 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
          break;
        case 0x13:
          v11 = OUTLINED_FUNCTION_38_26();
          goto LABEL_37;
        case 0x14:
          v7 = OUTLINED_FUNCTION_14_41();
          goto LABEL_23;
        case 0x15:
          v7 = OUTLINED_FUNCTION_12_42();
          break;
        case 0x16:
          v7 = OUTLINED_FUNCTION_21_29();
          break;
        case 0x17:
          v8 = 0xE600000000000000;
          v9 = 1702063733;
LABEL_35:
          v7 = v9 & 0xFFFF0000FFFFFFFFLL | 0x646E00000000;
          break;
        case 0x18:
          v7 = OUTLINED_FUNCTION_45_24();
          break;
        case 0x19:
          v7 = OUTLINED_FUNCTION_41_19() & 0xFFFF00000000FFFFLL | 0x7463610000;
          break;
        case 0x1A:
          v11 = OUTLINED_FUNCTION_39_22();
LABEL_37:
          v7 = v11 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
          break;
        case 0x1B:
          v7 = OUTLINED_FUNCTION_13_42();
LABEL_23:
          v8 = 0xEE00000000000000;
          break;
        default:
          break;
      }

      v12 = 1684957542;
      v13 = 0xE400000000000000;
      switch(v6)
      {
        case 0:
          break;
        case 1:
          v12 = 2003789939;
          break;
        case 2:
          OUTLINED_FUNCTION_32_21();
          break;
        case 3:
          v12 = 1684104562;
          break;
        case 4:
          v12 = 1684956531;
          break;
        case 5:
          OUTLINED_FUNCTION_27_31();
          v12 = v16 & 0xFFFF00000000FFFFLL | 0x796C700000;
          break;
        case 6:
          OUTLINED_FUNCTION_25_36();
          break;
        case 7:
          OUTLINED_FUNCTION_31_25();
          break;
        case 8:
          v13 = 0xE600000000000000;
          v17 = 1701602660;
          goto LABEL_63;
        case 9:
          v13 = 0xE600000000000000;
          v14 = 1701867617;
          goto LABEL_67;
        case 10:
          OUTLINED_FUNCTION_23_27();
          break;
        case 11:
          OUTLINED_FUNCTION_8_51();
          break;
        case 12:
          OUTLINED_FUNCTION_22_30();
          break;
        case 13:
          v12 = 1886352499;
          break;
        case 14:
          OUTLINED_FUNCTION_28_33();
          break;
        case 15:
          v12 = 2036427888;
          break;
        case 16:
          OUTLINED_FUNCTION_33_21();
          break;
        case 17:
          OUTLINED_FUNCTION_16_37();
          break;
        case 18:
          v13 = 0xE600000000000000;
          v17 = 1633972341;
LABEL_63:
          v12 = v17 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
          break;
        case 19:
          OUTLINED_FUNCTION_47_17();
          goto LABEL_69;
        case 20:
          OUTLINED_FUNCTION_11_45();
          goto LABEL_55;
        case 21:
          OUTLINED_FUNCTION_9_49();
          break;
        case 22:
          OUTLINED_FUNCTION_24_35();
          break;
        case 23:
          v13 = 0xE600000000000000;
          v14 = 1702063733;
LABEL_67:
          v12 = v14 & 0xFFFF0000FFFFFFFFLL | 0x646E00000000;
          break;
        case 24:
          OUTLINED_FUNCTION_30_33();
          break;
        case 25:
          OUTLINED_FUNCTION_27_31();
          v12 = v15 & 0xFFFF00000000FFFFLL | 0x7463610000;
          break;
        case 26:
          OUTLINED_FUNCTION_48_26();
LABEL_69:
          v12 = v18 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
          break;
        case 27:
          OUTLINED_FUNCTION_10_43();
LABEL_55:
          v13 = 0xEE00000000000000;
          break;
        default:
          goto LABEL_75;
      }

      if (v7 == v12 && v8 == v13)
      {

        return v4 != 0;
      }

      sub_267EF9EA8();
      OUTLINED_FUNCTION_51_17();

      if (v2)
      {
        return v4 != 0;
      }
    }

LABEL_75:
    ++v5;
    --v4;
  }

  return v4 != 0;
}

uint64_t sub_267E59398(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 440))();
  if (v4 == 17)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    sub_267E6EF84(&unk_2878CB9B8);
    v8 = v7;
    if ((*(a2 + 480))(a1, a2))
    {
      v5 = sub_267EE9664(v6, v8);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

uint64_t sub_267E5944C()
{
  OUTLINED_FUNCTION_46_20();
  v1();
  OUTLINED_FUNCTION_34_28();
  if (v6)
  {
    return 0;
  }

  v4 = sub_267BB9308(v2);
  v6 = v4 == 28526 && v5 == 0xE200000000000000;
  if (v6)
  {

    return 1;
  }

  else
  {
    sub_267EF9EA8();
    OUTLINED_FUNCTION_20_19();
    return v0 & 1;
  }
}

uint64_t sub_267E594D0()
{
  OUTLINED_FUNCTION_46_20();
  v0();
  OUTLINED_FUNCTION_34_28();
  if (v3)
  {
    return 0;
  }

  sub_267BB9308(v1);
  OUTLINED_FUNCTION_37_21();
  if (v3)
  {
    v5 = v4 == 0xE300000000000000;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
  }

  else
  {
    sub_267EF9EA8();
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

uint64_t sub_267E59558()
{
  OUTLINED_FUNCTION_46_20();
  v0();
  OUTLINED_FUNCTION_34_28();
  if (v3)
  {
    return 0;
  }

  sub_267BB9308(v1);
  OUTLINED_FUNCTION_37_21();
  if (v3)
  {
    v5 = v4 == 0xE800000000000000;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
  }

  else
  {
    sub_267EF9EA8();
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

BOOL sub_267E595E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a2 + 416))(a1);

  return sub_267E59030(v4, a3);
}

uint64_t sub_267E5965C(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 216))() & 1) == 0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_3();
  v5 = v4(v3);
  if (v5 != 35)
  {
    sub_267D6C8B0(v5);
    v14 = v13 == 0x74736574616CLL && v12 == 0xE600000000000000;
    if (v14)
    {
      goto LABEL_18;
    }

    v15 = sub_267EF9EA8();

    if (v15)
    {
      return 1;
    }
  }

  v6 = *(a2 + 408);
  v7 = OUTLINED_FUNCTION_3();
  v8 = v6(v7);
  if (v8 != 37)
  {
    sub_267D6C0D4(v8);
    if (v17 != 1953718636 || v16 != 0xE400000000000000)
    {
      v19 = sub_267EF9EA8();

      if ((v19 & 1) == 0)
      {
        goto LABEL_4;
      }

      return 1;
    }

LABEL_18:

    return 1;
  }

LABEL_4:
  v9 = OUTLINED_FUNCTION_3();
  v10 = v6(v9);
  if (v10 == 37)
  {
    return 0;
  }

  sub_267D6C0D4(v10);
  OUTLINED_FUNCTION_37_21();
  if (!v14 || v20 != 0xE500000000000000)
  {
    sub_267EF9EA8();
    OUTLINED_FUNCTION_20_19();
    return 0;
  }

  return 1;
}

uint64_t sub_267E5981C()
{
  OUTLINED_FUNCTION_5_61();
  if (v2())
  {
    v3 = OUTLINED_FUNCTION_3();
    if (v4(v3))
    {
      goto LABEL_3;
    }
  }

  v6 = OUTLINED_FUNCTION_3();
  if (((v2)(v6) & 1) == 0 || (OUTLINED_FUNCTION_35_26(), v7 = OUTLINED_FUNCTION_3(), (v8(v7) & 1) == 0) || (v9 = *(v0 + 368), v10 = OUTLINED_FUNCTION_3(), v9(v10), !v11))
  {
LABEL_14:
    v5 = 0;
    return v5 & 1;
  }

  v12 = OUTLINED_FUNCTION_3();
  v13 = (v9)(v12);
  if (v14)
  {
    if (v13 != 0xD000000000000012 || v14 != 0x8000000267F1C060)
    {
      OUTLINED_FUNCTION_49_22(v13);
      OUTLINED_FUNCTION_20_19();
      v5 = v1 ^ 1;
      return v5 & 1;
    }

    goto LABEL_14;
  }

LABEL_3:
  v5 = 1;
  return v5 & 1;
}

uint64_t sub_267E5992C()
{
  OUTLINED_FUNCTION_5_61();
  if (v0())
  {
    v1 = OUTLINED_FUNCTION_3();
    if (v2(v1))
    {
      goto LABEL_6;
    }
  }

  v3 = OUTLINED_FUNCTION_3();
  if (((v0)(v3) & 1) == 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_35_26();
  v4 = OUTLINED_FUNCTION_3();
  if ((v5(v4) & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = OUTLINED_FUNCTION_3();
  if (v7(v6))
  {
LABEL_6:
    v8 = 1;
    return v8 & 1;
  }

  v9 = OUTLINED_FUNCTION_3();
  v11 = v10(v9);
  if (!v12)
  {
LABEL_13:
    v8 = 0;
    return v8 & 1;
  }

  if (v11 == 0xD000000000000012 && v12 == 0x8000000267F1C060)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_49_22(v11);
  }

  return v8 & 1;
}

uint64_t sub_267E59A40()
{
  OUTLINED_FUNCTION_5_61();
  if (v0())
  {
    v1 = OUTLINED_FUNCTION_3();
    if (v2(v1))
    {
      return 1;
    }
  }

  v3 = OUTLINED_FUNCTION_3();
  if ((v0)(v3))
  {
    OUTLINED_FUNCTION_35_26();
    v4 = OUTLINED_FUNCTION_3();
    if (v5(v4))
    {
      v6 = OUTLINED_FUNCTION_3();
      if (v7(v6))
      {
        return 1;
      }

      v8 = OUTLINED_FUNCTION_3();
      v9(v8);
      if (v10)
      {

        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_267E59B14(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = (*(a2 + 392))();
  v4 = OUTLINED_FUNCTION_17_4();
  v6 = v5(v4);
  v7 = OUTLINED_FUNCTION_17_4();
  if ((v8(v7) & 1) == 0)
  {
    v9 = OUTLINED_FUNCTION_17_4();
    if ((v10(v9) & 1) == 0)
    {
      v11 = OUTLINED_FUNCTION_17_4();
      if ((v12(v11) & 1) == 0)
      {
        v13 = OUTLINED_FUNCTION_17_4();
        if ((v14(v13) & 1) == 0)
        {
          v15 = OUTLINED_FUNCTION_17_4();
          if ((v16(v15) & 1) == 0)
          {
            return 0;
          }
        }
      }
    }
  }

  v17 = OUTLINED_FUNCTION_17_4();
  if (v18(v17))
  {
    return 0;
  }

  if (v6 != 37)
  {
    sub_267D6C0D4(v6);
    if (v21 == 6645876 && v20 == 0xE300000000000000)
    {
      goto LABEL_25;
    }

    sub_267EF9EA8();
    OUTLINED_FUNCTION_51_17();
    if (v2)
    {
      goto LABEL_26;
    }

    sub_267D6C0D4(v6);
    if (v24 == 6647407 && v23 == 0xE300000000000000)
    {
      goto LABEL_25;
    }

    sub_267EF9EA8();
    OUTLINED_FUNCTION_51_17();
    if (v2)
    {
      goto LABEL_26;
    }

    sub_267D6C0D4(v6);
    if (v27 == 1936287860 && v26 == 0xE400000000000000)
    {
LABEL_25:
    }

    else
    {
      v29 = sub_267EF9EA8();

      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }
  }

LABEL_26:
  if (v3 != 6)
  {
    sub_267D6CE3C(v3);
    if (v31 == 0x6567617373656DLL && v30 == 0xE700000000000000)
    {
LABEL_37:

      return 1;
    }

    v33 = sub_267EF9EA8();

    if ((v33 & 1) == 0)
    {
      sub_267D6CE3C(v3);
      if (v35 != 0x656D5F6F69647561 || v34 != 0xED00006567617373)
      {
        sub_267EF9EA8();
        OUTLINED_FUNCTION_20_19();
        return 1;
      }

      goto LABEL_37;
    }
  }

  return 1;
}

uint64_t sub_267E59DD4()
{
  OUTLINED_FUNCTION_46_20();
  v0();
  OUTLINED_FUNCTION_34_28();
  if (v3)
  {
    return 0;
  }

  sub_267BB9308(v1);
  OUTLINED_FUNCTION_37_21();
  if (v3)
  {
    v5 = v4 == 0xE600000000000000;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
  }

  else
  {
    sub_267EF9EA8();
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

uint64_t sub_267E59E60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_267E59EF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - v5;
  v7 = sub_267EF2A58();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  sub_267EF2A48();
  sub_267BE28D0(v0, &selRef_firstNamePhonetic);
  sub_267EF2998();
  sub_267BE28D0(v0, &selRef_lastNamePhonetic);
  sub_267EF29B8();
  sub_267EF2A48();
  v14 = *(v8 + 16);
  v14(v6, v13, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  sub_267EF2A08();
  sub_267BE28D0(v0, &selRef_firstName);
  sub_267EF2998();
  sub_267BE28D0(v0, &selRef_lastName);
  sub_267EF29B8();
  v15 = objc_allocWithZone(MEMORY[0x277CD3E98]);
  v31 = sub_267E7605C(0, 0, 0);
  v14(v4, v11, v7);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  v16 = sub_267BE28D0(v0, &selRef_fullName);
  v29 = v17;
  v30 = v16;
  v18 = sub_267BE28D0(v0, &selRef_internalGUID);
  v20 = v19;
  v21 = [v0 me];
  sub_267E5A3C8();
  v22 = sub_267EF97F8();
  if (v21)
  {
    v23 = sub_267EF9818();

    v22 = v21;
  }

  else
  {
    v23 = 0;
  }

  v24 = objc_allocWithZone(MEMORY[0x277CD3E90]);
  v25 = sub_267E5A238(v31, v4, v30, v29, 0, v18, v20, 0, 0, v23 & 1);
  v26 = *(v8 + 8);
  v26(v11, v7);
  v26(v13, v7);
  return v25;
}

id sub_267E5A238(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v11 = v10;
  v17 = sub_267EF2A58();
  v18 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v17) != 1)
  {
    v18 = sub_267EF29E8();
    (*(*(v17 - 8) + 8))(a2, v17);
  }

  if (a4)
  {
    v19 = sub_267EF8FF8();
  }

  else
  {
    v19 = 0;
  }

  if (a7)
  {
    v20 = sub_267EF8FF8();
  }

  else
  {
    v20 = 0;
  }

  if (a9)
  {
    v21 = sub_267EF8FF8();
  }

  else
  {
    v21 = 0;
  }

  LOBYTE(v24) = a10 & 1;
  v22 = [v11 initWithPersonHandle:a1 nameComponents:v18 displayName:v19 image:a5 contactIdentifier:v20 customIdentifier:v21 isMe:v24];

  return v22;
}

unint64_t sub_267E5A3C8()
{
  result = qword_280229538;
  if (!qword_280229538)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280229538);
  }

  return result;
}

uint64_t sub_267E5A40C(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B5F8, &qword_267F068F0);
  swift_allocObject();
  sub_267EF80E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CA48, &qword_267F0C8C8);
  swift_allocObject();

  v2 = sub_267EF80E8();

  sub_267EF80F8();

  return v2;
}

uint64_t sub_267E5A528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v160 = a2;
  v3 = sub_267EF3868();
  OUTLINED_FUNCTION_58();
  v148 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v147 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  v9 = OUTLINED_FUNCTION_18(v8);
  MEMORY[0x28223BE20](v9);
  v145 = &v143 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v12 = OUTLINED_FUNCTION_18(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_60();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v153 = &v143 - v17;
  sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v155 = v19;
  v156 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_60();
  v150 = v20 - v21;
  v23 = MEMORY[0x28223BE20](v22);
  v152 = &v143 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v143 - v25;
  sub_267EF4BE8();
  OUTLINED_FUNCTION_58();
  v158 = v28;
  v159 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_60();
  v151 = v29 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v143 - v32;
  v34 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_0_0();
  v40 = v39 - v38;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v154 = v33;
  v41 = sub_267EF8A08();
  v42 = __swift_project_value_buffer(v41, qword_280240FB0);
  OUTLINED_FUNCTION_72_14();
  v157 = a1;
  v43(v40, a1, v34);
  v161 = v42;
  v44 = sub_267EF89F8();
  v45 = sub_267EF95C8();
  v46 = os_log_type_enabled(v44, v45);
  v149 = v3;
  if (v46)
  {
    v47 = OUTLINED_FUNCTION_48();
    v144 = v15;
    v48 = v47;
    v164[0] = swift_slowAlloc();
    *v48 = 136315138;
    sub_267BC4228(&qword_28022AF50, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v49 = sub_267EF9E58();
    v51 = v50;
    (*(v36 + 8))(v40, v34);
    v52 = sub_267BA33E8(v49, v51, v164);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_267B93000, v44, v45, "#EditMessageConfirmIntentFlowStrategy received input: %s", v48, 0xCu);
    OUTLINED_FUNCTION_11_42();
    v15 = v144;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v36 + 8))(v40, v34);
  }

  sub_267EF4B88();
  v54 = v155;
  v53 = v156;
  v55 = *(v155 + 88);
  v56 = v55(v26, v156);
  v57 = v158;
  v58 = v159;
  if (v56 == *MEMORY[0x277D5C150])
  {
    (*(v54 + 96))(v26, v53);
    v59 = v154;
    (*(v57 + 32))(v154, v26, v58);
    v60 = sub_267EF89F8();
    v61 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v61))
    {
      v62 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v62);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v63, v64, "#EditMessageConfirmIntentFlowStrategy received directInvocation");
      OUTLINED_FUNCTION_26();
    }

    v65 = v153;
    sub_267B9CC04(v59, v153);
    v66 = type metadata accessor for DirectInvocationUseCases(0);
    if (__swift_getEnumTagSinglePayload(v65, 1, v66) == 1)
    {
      goto LABEL_10;
    }

    sub_267B9A598(v65, v15, &unk_28022BBE0, qword_267EFD030);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 11) < 2)
    {
      OUTLINED_FUNCTION_35_27();
      sub_267B9F98C(v65, &unk_28022BBE0, qword_267EFD030);
      sub_267EF3E68();
      return (*(v57 + 8))(v59, v58);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v103 = sub_267EF8228();
      OUTLINED_FUNCTION_58();
      v105 = v104;
      v107 = (*(v106 + 88))(v15, v103);
      if (v107 == *MEMORY[0x277D5D4E8])
      {
        v108 = sub_267EF44F8();
        OUTLINED_FUNCTION_22();
        v109 = OUTLINED_FUNCTION_58_16();
        v110(v109);
        OUTLINED_FUNCTION_9();
        __swift_storeEnumTagSinglePayload(v111, v112, v113, v108);
        v114 = OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_confirmationResponse;
        v115 = v146;
        swift_beginAccess();
        sub_267C26980(v53, v115 + v114, &qword_280229310, &unk_267EFCF70);
        swift_endAccess();
        sub_267EF3E58();
LABEL_44:
        (*(v57 + 8))(v59, v58);
        return sub_267B9F98C(v65, &unk_28022BBE0, qword_267EFD030);
      }

      if (v107 == *MEMORY[0x277D5D4D8])
      {
        v133 = sub_267EF89F8();
        v134 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v134))
        {
          v135 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v135);
          OUTLINED_FUNCTION_17_0(&dword_267B93000, v136, v137, "#EditMessageConfirmIntentFlowStrategy prompt is cancelled by button press");
          OUTLINED_FUNCTION_26();
        }

        sub_267EF3E48();
        goto LABEL_44;
      }

      (*(v105 + 8))(v15, v103);
    }

    else
    {
      OUTLINED_FUNCTION_35_27();
    }

LABEL_10:
    OUTLINED_FUNCTION_72_14();
    v67 = v151;
    v68(v151, v59, v58);
    v69 = sub_267EF89F8();
    v70 = sub_267EF95D8();
    if (os_log_type_enabled(v69, v70))
    {
      OUTLINED_FUNCTION_48();
      v164[0] = OUTLINED_FUNCTION_64_2();
      *v53 = 136315138;
      v71 = sub_267EF4BC8();
      v73 = v72;
      v74 = *(v57 + 8);
      v74(v67, v58);
      v75 = sub_267BA33E8(v71, v73, v164);
      v65 = v153;

      *(v53 + 4) = v75;
      _os_log_impl(&dword_267B93000, v69, v70, "#EditMessageConfirmIntentFlowStrategy ignoring direct invocation: %s", v53, 0xCu);
      OUTLINED_FUNCTION_11_42();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      v74 = *(v57 + 8);
      v74(v67, v58);
    }

    sub_267EF3E68();
    v74(v154, v58);
    return sub_267B9F98C(v65, &unk_28022BBE0, qword_267EFD030);
  }

  v76 = v53;
  v77 = *(v54 + 8);
  v77(v26, v76);
  v78 = v152;
  sub_267EF4B88();
  v79 = v55(v78, v76);
  v80 = *MEMORY[0x277D5C168];
  v77(v78, v76);
  if (v79 == v80)
  {
    v81 = sub_267EF89F8();
    v82 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v82))
    {
      v83 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v83);
      v86 = "#EditMessageConfirmIntentFlowStrategy empty input";
LABEL_30:
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v84, v85, v86);
      OUTLINED_FUNCTION_26();
      goto LABEL_31;
    }

    goto LABEL_31;
  }

  v89 = v150;
  sub_267EF4B88();
  v90 = sub_267E57DFC(v89, &v162);
  (v77)(v89, v76, v90);
  if (!v163)
  {
    sub_267B9F98C(&v162, &unk_28022BBF0, &unk_267F01C60);
    v81 = sub_267EF89F8();
    v116 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_36(v116))
    {
      v117 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v117);
      v86 = "#EditMessageConfirmIntentFlowStrategy unsupported input";
      goto LABEL_30;
    }

LABEL_31:

    return sub_267EF3E68();
  }

  sub_267B9A5E8(&v162, v164);
  v91 = v166;
  __swift_project_boxed_opaque_existential_0(v164, v165);
  v92 = v147;
  v93 = OUTLINED_FUNCTION_38_0();
  v94(v93);
  v95 = v148;
  v96 = v149;
  v97 = (*(v148 + 88))(v92, v149);
  if (v97 == *MEMORY[0x277D5B970])
  {
    v98 = sub_267EF89F8();
    v99 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v99))
    {
      v100 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v100);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v101, v102, "#EditMessageConfirmIntentFlowStrategy request is cancelled");
      OUTLINED_FUNCTION_26();
    }

    sub_267EF3E48();
  }

  else
  {
    if (v97 == *MEMORY[0x277D5B978])
    {
      goto LABEL_33;
    }

    if (v97 != *MEMORY[0x277D5B968])
    {
      v138 = sub_267EF89F8();
      v139 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v139))
      {
        v140 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v140);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v141, v142, "#EditMessageConfirmIntentFlowStrategy no valid confirmation in the intent, ignoring");
        OUTLINED_FUNCTION_26();
      }

      sub_267EF3E68();
      (*(v95 + 8))(v92, v96);
      return __swift_destroy_boxed_opaque_existential_0(v164);
    }

    v91 = v166;
    __swift_project_boxed_opaque_existential_0(v164, v165);
    v126 = OUTLINED_FUNCTION_38_0();
    if ((v127(v126) & 1) == 0)
    {
LABEL_33:
      v118 = sub_267EF44F8();
      OUTLINED_FUNCTION_22();
      v119 = OUTLINED_FUNCTION_58_16();
      v120(v119);
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v121, v122, v123, v118);
      v124 = OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_confirmationResponse;
      v125 = v146;
      swift_beginAccess();
      sub_267C26980(v91, v125 + v124, &qword_280229310, &unk_267EFCF70);
      swift_endAccess();
      sub_267EF3E58();
    }

    else
    {
      v128 = sub_267EF89F8();
      v129 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v129))
      {
        v130 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v130);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v131, v132, "#EditMessageConfirmIntentFlowStrategy 'no' with fresh verb, ignoring");
        OUTLINED_FUNCTION_26();
      }

      sub_267EF3E68();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v164);
}

uint64_t sub_267E5B1CC()
{
  OUTLINED_FUNCTION_12();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  v1[8] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v5 = sub_267EF44F8();
  v1[11] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E5B2B8()
{
  v40 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_confirmationResponse;
  swift_beginAccess();
  sub_267B9A598(v3 + v4, v1, &qword_280229310, &unk_267EFCF70);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_267B9F98C(v0[10], &qword_280229310, &unk_267EFCF70);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v5 = sub_267EF8A08();
    __swift_project_value_buffer(v5, qword_280240FB0);
    v6 = sub_267EF89F8();
    v7 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v7))
    {
      v8 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v8);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_267C4BE60();
    swift_allocError();
    *v14 = 0;
    v14[1] = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_17();
  }

  else
  {
    (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v16 = v0[7];
    v17 = sub_267EF8A08();
    __swift_project_value_buffer(v17, qword_280240FB0);

    v18 = sub_267EF89F8();
    v19 = sub_267EF95D8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[9];
      OUTLINED_FUNCTION_48();
      v21 = OUTLINED_FUNCTION_64_2();
      v39 = v21;
      *v16 = 136315138;
      sub_267B9A598(v3 + v4, v20, &qword_280229310, &unk_267EFCF70);
      v22 = sub_267EF9098();
      v24 = sub_267BA33E8(v22, v23, &v39);

      *(v16 + 4) = v24;
      OUTLINED_FUNCTION_21();
      _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    v31 = v0[12];
    v30 = v0[13];
    v32 = v0[11];
    OUTLINED_FUNCTION_72_14();
    v33 = OUTLINED_FUNCTION_290();
    v34(v33);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
    sub_267EF4668();
    sub_267BA9F38(0, &qword_28022A9F0, 0x277CD3BC0);
    sub_267EF4468();
    (*(v31 + 8))(v30, v32);

    OUTLINED_FUNCTION_1();
  }

  return v15();
}

uint64_t sub_267E5B634(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267E5B660()
{
  OUTLINED_FUNCTION_56();
  __swift_project_boxed_opaque_existential_0((v0[9] + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_featureFlags), *(v0[9] + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_featureFlags + 24));
  if (sub_267CC8B28() & 1) != 0 && (OUTLINED_FUNCTION_129((v0[9] + 16)), v1 = OUTLINED_FUNCTION_38_0(), v2(v1), OUTLINED_FUNCTION_131(v0 + 2), v3 = sub_267BF30D0(), __swift_destroy_boxed_opaque_existential_0(v0 + 2), (v3))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[10] = v4;
    *v4 = v5;
    OUTLINED_FUNCTION_60_0(v4);

    return sub_267E5B7BC();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[11] = v7;
    *v7 = v8;
    OUTLINED_FUNCTION_60_0(v7);

    return sub_267E5CAB0();
  }
}

uint64_t sub_267E5B7BC()
{
  OUTLINED_FUNCTION_12();
  v1[27] = v2;
  v1[28] = v0;
  v1[26] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  v1[29] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[30] = v5;
  v1[31] = *(v6 + 64);
  v1[32] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF48A8();
  v1[33] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[34] = v8;
  v1[35] = OUTLINED_FUNCTION_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB20, &unk_267F092D0);
  OUTLINED_FUNCTION_18(v9);
  v1[36] = OUTLINED_FUNCTION_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB28, &qword_267F082B0);
  OUTLINED_FUNCTION_18(v10);
  v1[37] = OUTLINED_FUNCTION_2();
  v11 = sub_267EF84F8();
  v1[38] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v1[39] = v12;
  v1[40] = OUTLINED_FUNCTION_2();
  v13 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v13);
  v1[41] = OUTLINED_FUNCTION_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v14);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_267E5B9C8()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  *(v0 + 352) = __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_26();
  }

  v10 = *(v0 + 224);

  v11 = v10 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_sentMessageContext;
  v12 = type metadata accessor for TimedSentMessageContext(0);
  v13 = sub_267EF97C8();
  *(v0 + 360) = v13;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  sub_267ECE290();
  sub_267B9F98C(v0 + 176, &qword_28022AEF0, &qword_267EFCDE0);
  v14 = [v13 speakableGroupName];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 spokenPhrase];

    sub_267EF9028();
    sub_267EF90F8();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = *(v0 + 344);
  v19 = *(v0 + 224);
  v39 = *(v0 + 216);
  v40 = *(v0 + 232);
  v20 = sub_267EF79B8();
  v21 = 1;
  __swift_storeEnumTagSinglePayload(v18, v17, 1, v20);
  *(v0 + 368) = *(v11 + *(v12 + 36));
  v23 = v19[5];
  v22 = v19[6];
  __swift_project_boxed_opaque_existential_0(v19 + 2, v23);
  OUTLINED_FUNCTION_14_4();
  v24(v23, v22);
  v25 = OUTLINED_FUNCTION_26_0();
  sub_267ED9AEC(v25, v26, v27, v28, v29, v30, v31, v32, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v0);
  *(v0 + 376) = v33;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  type metadata accessor for EditMessageCATsSimple(0);
  sub_267EF7B68();
  *(v0 + 384) = sub_267EF79E8();
  v34 = sub_267EF4668();
  sub_267E97F78(v34);
  if (v35)
  {
    sub_267EF90F8();

    v21 = 0;
  }

  __swift_storeEnumTagSinglePayload(*(v0 + 336), v21, 1, v20);
  v36 = swift_task_alloc();
  *(v0 + 392) = v36;
  *v36 = v0;
  v36[1] = sub_267E5BCE8;

  return sub_267E569A4();
}

uint64_t sub_267E5BCE8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v9 + 400) = v8;
  *(v9 + 408) = v0;

  sub_267B9F98C(v5, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267E5BE54()
{
  v1 = v0[45];
  v2 = v0[28];
  __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
  v3 = OUTLINED_FUNCTION_290();
  v4(v3);
  __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_catProvider), *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_catProvider + 24));
  sub_267BB4A3C();
  v5 = [v1 speakableGroupName];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 spokenPhrase];
    v49 = sub_267EF9028();
    v51 = v8;
  }

  else
  {
    v9 = v0[45];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    OUTLINED_FUNCTION_10_3();
    v10 = sub_267EF3C48();
    v11 = sub_267BCEA0C(v9);
    if (v10)
    {
      v12 = sub_267DA2578(v11);
    }

    else
    {
      sub_267DA2180();
    }

    v49 = v12;
    v51 = v13;
  }

  v48 = v0[50];
  v14 = v0[45];
  v44 = v0[38];
  v45 = v0[39];
  v40 = v0[37];
  v41 = v0[36];
  v43 = v0[40];
  v47 = v0[32];
  v15 = v0[30];
  v50 = v0[29];
  v16 = v0[28];
  v42 = v0[27];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v18 = v16[5];
  v17 = v16[6];
  __swift_project_boxed_opaque_existential_0(v16 + 2, v18);
  v19 = *(v17 + 8);
  v46 = v14;

  v19(v18, v17);
  v20 = v0[16];
  v21 = OUTLINED_FUNCTION_131(v0 + 12);
  sub_267BCD18C(v21, v20);
  v22 = sub_267EF4668();
  sub_267E97F78(v22);
  v23 = sub_267EF81F8();
  OUTLINED_FUNCTION_79_5(v40, v24, v25, v23);
  v26 = sub_267EF82A8();
  OUTLINED_FUNCTION_79_5(v41, v27, v28, v26);
  sub_267EF84E8();
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  sub_267E5FAF8();
  v0[20] = v44;
  v0[21] = sub_267BC4228(&unk_28022BB30, MEMORY[0x277D5D8A8], MEMORY[0x277D5D8A0]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
  (*(v45 + 16))(boxed_opaque_existential_0, v43, v44);
  OUTLINED_FUNCTION_72_14();
  v30(v47, v42, v50);
  v31 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v32 = swift_allocObject();
  v0[52] = v32;
  *(v32 + 2) = v46;
  *(v32 + 3) = v49;
  *(v32 + 4) = v51;
  *(v32 + 5) = v16;
  (*(v15 + 32))(&v32[v31], v47, v50);
  v33 = v46;
  v34 = v48;

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[53] = v35;
  *v35 = v36;
  v35[1] = sub_267E5C28C;
  v37 = v0[35];
  v38 = v0[26];

  return (sub_267ECC1D0)(v38, v48, v37, v0 + 17, &unk_267F0CAB8, v32);
}

uint64_t sub_267E5C28C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 432) = v0;

  if (v0)
  {
    v7 = *(v3 + 400);
  }

  else
  {

    sub_267B9F98C(v3 + 136, &qword_280229330, &qword_267F092F0);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E5C3C4(uint64_t a1)
{
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    *v4 = 0;
    _os_log_impl(&dword_267B93000, v2, v3, "#EditMessageConfirmIntentFlowStrategy returning SMART output", v4, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v5 = v1[50];
  v6 = v1[45];
  v7 = v1[43];
  v8 = v1[40];
  v9 = v1[39];
  v15 = v1[38];
  v10 = v1[34];
  v11 = v1[35];
  v12 = v1[33];

  (*(v10 + 8))(v11, v12);
  (*(v9 + 8))(v8, v15);
  sub_267B9F98C(v7, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_1();

  return v13();
}

uint64_t sub_267E5C558()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 344);

  sub_267B9F98C(v1, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_65_14();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E5C624()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 360);
  v2 = *(v0 + 344);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 264);

  (*(v4 + 8))(v3, v5);
  v6 = OUTLINED_FUNCTION_26_0();
  v7(v6);
  sub_267B9F98C(v2, &unk_28022AE30, &qword_267EFC0B0);
  sub_267B9F98C(v0 + 136, &qword_280229330, &qword_267F092F0);
  OUTLINED_FUNCTION_65_14();

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_267E5C74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB20, &unk_267F092D0);
  v6[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB28, &qword_267F082B0);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E5C828, 0, 0);
}

uint64_t sub_267E5C828()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[7];
  v22 = v0[8];
  v5 = sub_267EF8178();
  v4[3] = v5;
  v4[4] = sub_267BC4228(qword_280229338, MEMORY[0x277D5D3A0], MEMORY[0x277D5D398]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  v6 = v3[5];
  v7 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v6);
  OUTLINED_FUNCTION_14_4();
  v8(v6, v7);
  v9 = v0[6];
  v10 = OUTLINED_FUNCTION_131(v0 + 2);
  sub_267BCD18C(v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  v11 = sub_267EF4668();
  sub_267E97F78(v11);
  sub_267EF8308();
  sub_267EF82F8();
  sub_267EF4648();
  sub_267EF7C18();

  sub_267EF82E8();

  v12 = sub_267EF81F8();
  OUTLINED_FUNCTION_79_5(v2, v13, v14, v12);
  v15 = sub_267EF82A8();
  OUTLINED_FUNCTION_79_5(v1, v16, v17, v15);

  v18 = v22;
  sub_267EF84C8();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(*(v5 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D5D370], v5);

  OUTLINED_FUNCTION_17();

  return v19();
}

uint64_t sub_267E5CAB0()
{
  OUTLINED_FUNCTION_12();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = sub_267EF48A8();
  v1[25] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[26] = v5;
  v1[27] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v6);
  v1[28] = OUTLINED_FUNCTION_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v7);
  v1[29] = OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E5CE80()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v7 + 272) = v6;
  *(v7 + 280) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E5CFC0()
{
  OUTLINED_FUNCTION_29();
  v27 = v1;
  v2 = *(v1 + 272);
  __swift_destroy_boxed_opaque_existential_0((v1 + 56));
  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v4))
  {
    v5 = *(v1 + 272);
    OUTLINED_FUNCTION_48();
    v26 = OUTLINED_FUNCTION_64_2();
    *v0 = 136315138;
    v6 = [v5 patternId];
    v7 = sub_267EF9028();
    v9 = v8;

    v10 = sub_267BA33E8(v7, v9, &v26);

    *(v0 + 4) = v10;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    OUTLINED_FUNCTION_11_42();
    OUTLINED_FUNCTION_26();
  }

  v16 = *(v1 + 192);
  sub_267EF4198();
  swift_allocObject();
  *(v1 + 288) = sub_267EF4188();
  OUTLINED_FUNCTION_74_12();
  sub_267E5FAF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  v17 = sub_267EF4648();
  *(v1 + 296) = v17;
  __swift_project_boxed_opaque_existential_0((v16 + 16), *(v16 + 40));
  v18 = OUTLINED_FUNCTION_9_50();
  v19(v18);
  __swift_project_boxed_opaque_existential_0((v1 + 136), *(v1 + 160));
  OUTLINED_FUNCTION_10_3();
  v20 = sub_267EF3C48();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 304) = v21;
  *v21 = v22;
  v21[1] = sub_267E5D264;
  v23 = *(v1 + 272);
  v24 = *(v1 + 216);

  return sub_267BCF3A4(v1 + 96, v23, v24, v17, v20 & 1);
}

uint64_t sub_267E5D1C8()
{
  OUTLINED_FUNCTION_56();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_267B9F98C(*(v0 + 232), &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267E5D264()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = v5[34];
  v7 = v5[27];
  v8 = v5[26];
  v9 = v5[25];
  v10 = *v1;
  OUTLINED_FUNCTION_5();
  *v11 = v10;
  *(v3 + 312) = v0;

  (*(v8 + 8))(v7, v9);
  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 136));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_267E5D434(uint64_t a1)
{
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_26();
  }

  v10 = *(v1 + 232);
  v11 = *(v1 + 176);

  sub_267B9A5E8((v1 + 96), v11);
  sub_267B9F98C(v10, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_1();

  return v12();
}

uint64_t sub_267E5D52C()
{
  OUTLINED_FUNCTION_56();

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  sub_267B9F98C(*(v0 + 232), &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267E5D5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[62] = a3;
  v4[63] = a4;
  v4[60] = a1;
  v4[61] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0);
  v4[64] = swift_task_alloc();
  v5 = sub_267EF8488();
  v4[65] = v5;
  v4[66] = *(v5 - 8);
  v4[67] = swift_task_alloc();
  v6 = sub_267EF8228();
  v4[68] = v6;
  v4[69] = *(v6 - 8);
  v4[70] = swift_task_alloc();
  v7 = sub_267EF8248();
  v4[71] = v7;
  v4[72] = *(v7 - 8);
  v4[73] = swift_task_alloc();
  v8 = sub_267EF8368();
  v4[74] = v8;
  v4[75] = *(v8 - 8);
  v4[76] = swift_task_alloc();
  v9 = sub_267EF81B8();
  v4[77] = v9;
  v4[78] = *(v9 - 8);
  v4[79] = swift_task_alloc();
  v10 = sub_267EF81D8();
  v4[80] = v10;
  v4[81] = *(v10 - 8);
  v4[82] = swift_task_alloc();
  v4[83] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v4[84] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BB00, &unk_267EFCF90);
  v4[85] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v4[86] = swift_task_alloc();
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v4[90] = swift_task_alloc();
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E5D9B0, 0, 0);
}

void sub_267E5D9B0()
{
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v3 = *(v0 + 480);
  v4 = type metadata accessor for EditMessageConfirmEditParameters(0);
  *(v0 + 768) = v4;
  sub_267BE855C(v2, v3 + *(v4 + 52));
  v5 = v1 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_sentMessageContext;
  v6 = *(v5 + *(type metadata accessor for TimedSentMessageContext(0) + 28));
  *(v0 + 776) = v6;
  sub_267D29870();
  if (v7)
  {
    sub_267EF90F8();

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v0 + 760);
  v10 = *(v0 + 496);
  v11 = *(v0 + 480);
  v72 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v9, v8, 1, v72);
  v73 = v4;
  v12 = *(v4 + 28);
  *(v0 + 888) = v12;
  sub_267C26980(v9, v11 + v12, &unk_28022AE30, &qword_267EFC0B0);
  sub_267EF7958();
  *(v0 + 784) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  v13 = sub_267EF4648();
  v14 = sub_267E80518(v13);

  *v11 = v14;
  v15 = *(v10 + 40);
  v16 = *(v10 + 48);
  OUTLINED_FUNCTION_80_12();
  OUTLINED_FUNCTION_14_4();
  v17(v15, v16);
  v18 = OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_catProvider;
  *(v0 + 792) = OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_catProvider;
  v71 = v10;
  __swift_project_boxed_opaque_existential_0((v10 + v18), *(v10 + v18 + 24));
  sub_267BB4A3C();
  v19 = [v6 speakableGroupName];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 spokenPhrase];
    v22 = sub_267EF9028();
    v24 = v23;
  }

  else
  {
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v25 = sub_267EF3C48();
    v26 = sub_267BCEA0C(v6);
    if (v25)
    {
      v27 = sub_267DA2578(v26);
    }

    else
    {
      sub_267DA2180();
    }

    v22 = v27;
    v24 = v28;
  }

  v29 = *(v0 + 752);
  v30 = *(v0 + 480);
  *(v0 + 800) = v24;
  *(v0 + 808) = v22;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_63();
  sub_267EF90F8();
  *(v0 + 816) = v72;
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v72);
  sub_267C26980(v29, v30 + *(v73 + 44), &unk_28022AE30, &qword_267EFC0B0);
  sub_267EF4648();
  v34 = sub_267EF7C18();
  v36 = v35;

  if (v36)
  {
    v37 = v34;
  }

  else
  {
    v37 = 0;
  }

  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0xE000000000000000;
  }

  v39 = sub_267DA133C(v6, v37, v38);

  *(v0 + 456) = v39;
  sub_267BA9F38(0, &unk_28022BB50, 0x277D473F0);
  sub_267EF8348();
  *(v0 + 824) = 0;
  v42 = *(v0 + 744);
  v43 = *(v0 + 480);

  v44 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v72);
  sub_267C26980(v42, v43 + *(v73 + 68), &unk_28022AE30, &qword_267EFC0B0);
  v47 = sub_267E76140(v6);
  *(v0 + 832) = v47;
  if (v47)
  {
    OUTLINED_FUNCTION_129((v71 + 16));
    v48 = OUTLINED_FUNCTION_38_0();
    v49(v48);
    *(v0 + 840) = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
    v50 = OUTLINED_FUNCTION_47_18(&dword_267F0DF30);
    *(v0 + 848) = v50;
    *v50 = v0;
    v50[1] = sub_267E5E68C;
    OUTLINED_FUNCTION_538();

    __asm { BR              X0 }
  }

  v53 = *(v0 + 816);
  v54 = *(v0 + 768);
  v55 = *(v0 + 752);
  v56 = *(v0 + 496);
  v57 = *(v0 + 480);
  v58 = sub_267EF4668();
  sub_267E97F78(v58);
  OUTLINED_FUNCTION_26_0();
  sub_267EF90F8();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v53);
  sub_267C26980(v55, v57 + *(v54 + 60), &unk_28022AE30, &qword_267EFC0B0);
  __swift_project_boxed_opaque_existential_0((v56 + 16), *(v56 + 40));
  v62 = OUTLINED_FUNCTION_10_3();
  v63(v62);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_10_3();
  v64 = sub_267EF3C28();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  if (v64)
  {
    v65 = *(v0 + 632);
    v66 = *(v0 + 624);
    v67 = *(v0 + 616);

    (*(v66 + 104))(v65, *MEMORY[0x277D5D410], v67);
    OUTLINED_FUNCTION_26_0();
    sub_267EF81C8();
    OUTLINED_FUNCTION_143();
    v68 = *(v0 + 656);
    v69 = *(v0 + 648);
    v70 = *(v0 + 640);
  }

  else
  {
    OUTLINED_FUNCTION_26_0();
    sub_267EF8358();
    OUTLINED_FUNCTION_143();
    v68 = *(v0 + 608);
    v69 = *(v0 + 600);
    v70 = *(v0 + 592);
  }

  (*(v69 + 8))(v68, v70);
  OUTLINED_FUNCTION_56_19();
  OUTLINED_FUNCTION_10_44();
  OUTLINED_FUNCTION_34_29();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_538();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267E5E68C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 856) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void *sub_267E5E778()
{
  sub_267EF8458();

  if (*(v0 + 400))
  {
    v1 = *(v0 + 856);
    sub_267B9A5E8((v0 + 376), v0 + 336);
    sub_267B9AFEC(v0 + 336, v0 + 416);
    sub_267EF8328();

    __swift_destroy_boxed_opaque_existential_0((v0 + 336));
  }

  else
  {
    v2 = *(v0 + 680);

    sub_267B9F98C(v0 + 376, &qword_28022BB10, &qword_267EFDCF0);
    v3 = sub_267EF8338();
    OUTLINED_FUNCTION_79_5(v2, v4, v5, v3);
  }

  v6 = *(v0 + 680);
  v7 = sub_267EF8338();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);
  v9 = *(v0 + 840);
  if (EnumTagSinglePayload == 1)
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 296));
    sub_267B9F98C(v6, &unk_28022BB00, &unk_267EFCF90);
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0;
LABEL_9:

    sub_267B9F98C(v0 + 256, &qword_28022BB10, &qword_267EFDCF0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v18 = sub_267EF8A08();
    __swift_project_value_buffer(v18, qword_280240FB0);
    v19 = sub_267EF89F8();
    v20 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v20))
    {
      v21 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v21);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v22, v23, v24, v25, v26, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_267C266B0();
    swift_allocError();
    *v27 = 0xD00000000000002FLL;
    v27[1] = 0x8000000267F19C10;
    swift_willThrow();
    goto LABEL_14;
  }

  sub_267EF8318();

  __swift_destroy_boxed_opaque_existential_0((v0 + 296));
  (*(*(v7 - 8) + 8))(v6, v7);
  if (!*(v0 + 280))
  {
    goto LABEL_9;
  }

  v10 = *(v0 + 824);
  v11 = *(v0 + 816);
  v12 = *(v0 + 888);
  v13 = *(v0 + 752);
  v14 = *(v0 + 480);
  sub_267B9A5E8((v0 + 256), v0 + 216);
  __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
  swift_getDynamicType();
  sub_267EF83B8();
  sub_267EF90F8();

  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  sub_267C26980(v13, v14 + v12, &unk_28022AE30, &qword_267EFC0B0);
  __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
  sub_267EF8348();
  if (v10)
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
LABEL_14:
    OUTLINED_FUNCTION_56_19();
    OUTLINED_FUNCTION_10_44();
    OUTLINED_FUNCTION_34_29();

    OUTLINED_FUNCTION_17();
    goto LABEL_15;
  }

  v30 = *(v0 + 768);
  v31 = *(v0 + 736);
  v32 = *(v0 + 672);
  v33 = *(v0 + 480);
  v34 = (*(v0 + 496) + *(v0 + 792));
  v35 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  sub_267C26980(v31, v33 + *(v30 + 24), &unk_28022AE30, &qword_267EFC0B0);
  __swift_project_boxed_opaque_existential_0(v34, v34[3]);
  sub_267BB4A3C();
  sub_267C7FEC8();

  v137 = sub_267EFA028();
  sub_267B9F98C(v32, &qword_2802295B8, &qword_267EFDCB0);
  v39 = 0xE000000000000000;
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  v40 = *(v0 + 816);
  v41 = *(v0 + 768);
  v42 = *(v0 + 752);
  v43 = *(v0 + 496);
  v44 = *(v0 + 480);
  v45 = sub_267EF4668();
  sub_267E97F78(v45);
  if (v46)
  {
    v39 = v46;
  }

  OUTLINED_FUNCTION_63();
  sub_267EF90F8();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v40);
  sub_267C26980(v42, v44 + *(v41 + 60), &unk_28022AE30, &qword_267EFC0B0);
  v50 = v43[5];
  v51 = v43[6];
  __swift_project_boxed_opaque_existential_0(v43 + 2, v50);
  (*(v51 + 8))(v50, v51);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  v52 = sub_267EF3C28();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  if (v52)
  {
    v53 = *(v0 + 728);
    v54 = *(v0 + 656);
    v55 = *(v0 + 632);
    v56 = *(v0 + 624);
    v57 = *(v0 + 616);

    v58 = *(v56 + 104);
    v44 = v56 + 104;
    v58(v55, *MEMORY[0x277D5D410], v57);
    OUTLINED_FUNCTION_63();
    sub_267EF81C8();
    OUTLINED_FUNCTION_78_16();
    if (v54)
    {
      v59 = *(v0 + 656);
      v60 = *(v0 + 648);
      v61 = *(v0 + 640);
LABEL_25:

      (*(v60 + 8))(v59, v61);
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_63_13();
  }

  else
  {
    v53 = *(v0 + 720);
    v62 = *(v0 + 608);
    OUTLINED_FUNCTION_63();
    sub_267EF8358();
    OUTLINED_FUNCTION_78_16();
    if (v62)
    {
      v59 = *(v0 + 608);
      v60 = *(v0 + 600);
      v61 = *(v0 + 592);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_62_13();
  }

  v64 = OUTLINED_FUNCTION_176(v63);
  v65(v64);
  v66 = *v53;
  *(v0 + 864) = 0;
  v67 = *(v0 + 768);
  v68 = *(v0 + 496);
  v69 = *(v0 + 480);
  v70 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
  sub_267C26980(v66, v69 + *(v67 + v44), &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_129((v68 + 16));
  v74 = OUTLINED_FUNCTION_38_0();
  v75(v74);
  __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
  OUTLINED_FUNCTION_38_0();
  LOBYTE(v66) = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  if ((v66 & 1) == 0)
  {

    goto LABEL_39;
  }

  v76 = *(v0 + 776);
  v77 = sub_267EF4648();
  v78 = sub_267BDAF74(v77);
  OUTLINED_FUNCTION_76_13(v78);
  v79 = sub_267BCEA0C(v76);
  v80 = MEMORY[0x277D84F90];
  if (!v79)
  {
LABEL_41:
    *(v0 + 872) = v80;
    if (v69)
    {
      v110 = OUTLINED_FUNCTION_47_18(&dword_267F00478);
      *(v0 + 880) = v110;
      *v110 = v0;
      OUTLINED_FUNCTION_28_34(v110);
      OUTLINED_FUNCTION_538();

      __asm { BR              X2 }
    }

    OUTLINED_FUNCTION_39_23();
    sub_267EF7C18();
    OUTLINED_FUNCTION_67_13();
    OUTLINED_FUNCTION_18_23();
    sub_267EF8238();
    OUTLINED_FUNCTION_79_12();
    if (v76)
    {
      v113 = OUTLINED_FUNCTION_13_43();
LABEL_52:
      (*(v114 + 8))(v113);
      goto LABEL_14;
    }

    v115 = *(v0 + 816);
    v116 = *(v0 + 768);
    v117 = OUTLINED_FUNCTION_12_43();
    v118(v117);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v119, v120, v121, v115);
    sub_267C26980(v80, v68 + *(v116 + 40), &unk_28022AE30, &qword_267EFC0B0);
LABEL_39:
    v89 = *(v0 + 560);
    v90 = *(v0 + 552);
    v91 = *(v0 + 544);
    v92 = *(v0 + 496);
    v138 = *(v90 + 104);
    v138(v89, *MEMORY[0x277D5D4E8], v91);
    __swift_project_boxed_opaque_existential_0((v92 + 16), *(v92 + 40));
    v93 = OUTLINED_FUNCTION_9_50();
    v94(v93);
    v95 = sub_267BEA714(v89, (v0 + 136));
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    v96 = *(v90 + 8);
    v96(v89, v91);
    *(v0 + 464) = v95;
    v97 = sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
    sub_267EF8348();
    v98 = *(v0 + 816);
    v136 = *(v0 + 768);
    v99 = *(v0 + 704);
    v100 = *(v0 + 560);
    v101 = *(v0 + 544);
    v102 = *(v0 + 496);
    v135 = *(v0 + 480);

    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v98);
    sub_267C26980(v99, v135 + *(v136 + 48), &unk_28022AE30, &qword_267EFC0B0);
    v138(v100, *MEMORY[0x277D5D4D8], v101);
    v106 = *(v102 + 48);
    OUTLINED_FUNCTION_80_12();
    v107 = OUTLINED_FUNCTION_42_22();
    v108(v107, v106);
    v109 = sub_267BEA714(v100, (v0 + 176));
    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    v96(v100, v101);
    *(v0 + 472) = v109;
    sub_267EF8348();
    OUTLINED_FUNCTION_26_33();
    v122 = 1;
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v123, v124, v125, v102);
    sub_267C26980(v97, v106 + *(v101 + 36), &unk_28022AE30, &qword_267EFC0B0);
    v126 = sub_267EF4648();
    sub_267BE84FC(v126);

    v127 = sub_267EF6FF8();
    v128 = sub_267EF6FC8();
    if (v128)
    {
      v127 = v128;
      sub_267EF6FA8();

      OUTLINED_FUNCTION_74_12();
      sub_267EF8698();

      v122 = 0;
    }

    v129 = OUTLINED_FUNCTION_37_22();
    OUTLINED_FUNCTION_5_62(v129);
    OUTLINED_FUNCTION_143();
    if (!v122)
    {
      OUTLINED_FUNCTION_3_74();
      v130 = OUTLINED_FUNCTION_15_41();
      v131(v130);
      v132 = OUTLINED_FUNCTION_118();
      __swift_storeEnumTagSinglePayload(v132, v133, v134, v106);
      sub_267C26980(v127, v109 + *(v101 + 32), &unk_28022AE30, &qword_267EFC0B0);

      OUTLINED_FUNCTION_1();
LABEL_15:
      OUTLINED_FUNCTION_538();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_52_16();
    goto LABEL_52;
  }

  v81 = v79;
  v82 = sub_267BAF0DC(v79);
  if (!v82)
  {

    goto LABEL_41;
  }

  result = OUTLINED_FUNCTION_51_18(v82);
  if ((v68 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_60_13();
    do
    {
      v84 = MEMORY[0x26D609870](v39, v81);
      sub_267BBD380(v84);
      v81 = v85;

      OUTLINED_FUNCTION_70_12();
      if (v87)
      {
        OUTLINED_FUNCTION_64_14(v86);
        v80 = v139;
      }

      OUTLINED_FUNCTION_50_16();
    }

    while (!v88);

    LOBYTE(v69) = v137;
    goto LABEL_41;
  }

  __break(1u);
  return result;
}

uint64_t sub_267E5F3F8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 893) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267E5F4E4()
{
  v1 = *(v0 + 872);
  v2 = *(v0 + 892);
  v51 = *(v0 + 864);
  sub_267EF4648();
  sub_267EF7C18();
  OUTLINED_FUNCTION_67_13();
  OUTLINED_FUNCTION_18_23();
  sub_267EF8238();
  sub_267EF8348();
  if (v51)
  {
    v3 = OUTLINED_FUNCTION_13_43();
LABEL_3:
    (*(v4 + 8))(v3);
    OUTLINED_FUNCTION_56_19();
    OUTLINED_FUNCTION_10_44();

    OUTLINED_FUNCTION_17();
    goto LABEL_5;
  }

  v5 = *(v0 + 816);
  v6 = *(v0 + 768);
  v7 = OUTLINED_FUNCTION_12_43();
  v8(v7);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
  sub_267C26980(v1, v2 + *(v6 + 40), &unk_28022AE30, &qword_267EFC0B0);
  v12 = *(v0 + 560);
  v13 = *(v0 + 552);
  v14 = *(v0 + 544);
  v15 = *(v0 + 496);
  v50 = *(v13 + 104);
  v50(v12, *MEMORY[0x277D5D4E8], v14);
  v16 = v15[5];
  v17 = v15[6];
  __swift_project_boxed_opaque_existential_0(v15 + 2, v16);
  (*(v17 + 8))(v16, v17);
  v18 = sub_267BEA714(v12, (v0 + 136));
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  v19 = *(v13 + 8);
  v19(v12, v14);
  *(v0 + 464) = v18;
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v20 = *(v0 + 816);
  v48 = *(v0 + 768);
  v49 = v19;
  v21 = *(v0 + 704);
  v22 = *(v0 + 560);
  v23 = *(v0 + 544);
  v24 = *(v0 + 496);
  v47 = *(v0 + 480);

  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v20);
  sub_267C26980(v21, v47 + *(v48 + 48), &unk_28022AE30, &qword_267EFC0B0);
  v50(v22, *MEMORY[0x277D5D4D8], v23);
  v28 = *(v24 + 48);
  OUTLINED_FUNCTION_80_12();
  v29 = OUTLINED_FUNCTION_42_22();
  v30(v29, v28);
  v31 = sub_267BEA714(v22, (v0 + 176));
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  v49(v22, v23);
  *(v0 + 472) = v31;
  sub_267EF8348();
  OUTLINED_FUNCTION_26_33();
  v34 = 1;
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v24);
  sub_267C26980(v13 + 8, v28 + *(v22 + 36), &unk_28022AE30, &qword_267EFC0B0);
  v38 = sub_267EF4648();
  sub_267BE84FC(v38);

  sub_267EF6FF8();
  if (sub_267EF6FC8())
  {
    sub_267EF6FA8();

    OUTLINED_FUNCTION_74_12();
    sub_267EF8698();

    v34 = 0;
  }

  v39 = OUTLINED_FUNCTION_37_22();
  OUTLINED_FUNCTION_5_62(v39);
  OUTLINED_FUNCTION_143();
  if (v34)
  {
    OUTLINED_FUNCTION_52_16();
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_3_74();
  v40 = *(v0 + 688);
  v41 = *(v0 + 536);
  OUTLINED_FUNCTION_52_16();
  v42 = *(v0 + 480);
  (*(v43 + 8))(v41);
  v44 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v28);
  sub_267C26980(v40, v42 + *(v22 + 32), &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_1();
LABEL_5:

  return v32();
}

uint64_t sub_267E5FAF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v2 = OUTLINED_FUNCTION_18(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v15[-1] - v3;
  v5 = sub_267EF3CF8();
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  sub_267EF3C98();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  sub_267E5FC7C(v4);
  sub_267EF4158();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  sub_267EF4818();
  v11 = v0[5];
  v12 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v11);
  (*(v12 + 8))(v15, v11, v12);
  OUTLINED_FUNCTION_131(v15);
  sub_267BCF0D8();
  sub_267EF4898();
  return __swift_destroy_boxed_opaque_existential_0(v15);
}

uint64_t sub_267E5FC7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267EF53D8();
  OUTLINED_FUNCTION_58();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  v8 = (v6 - v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  sub_267EF4148();
  sub_267EF4098();
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  sub_267BB8DFC();
  sub_267EF40D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v15 = swift_allocObject();
  v48 = xmmword_267EFC020;
  *(v15 + 16) = xmmword_267EFC020;
  if (qword_2802288C8 != -1)
  {
    swift_once();
  }

  *(v15 + 32) = sub_267BC9500();
  *(v15 + 40) = v16;
  sub_267EF4118();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_267EFCE30;
  *(v17 + 32) = sub_267BB90E4(0);
  *(v17 + 40) = v18;
  *(v17 + 48) = sub_267BB90E4(1);
  *(v17 + 56) = v19;
  *(v17 + 64) = sub_267BB90E4(2);
  *(v17 + 72) = v20;
  sub_267EF4108();
  sub_267EF6448();
  swift_allocObject();
  sub_267EF6438();
  sub_267BBB050();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v21 = sub_267EF8A08();
  __swift_project_value_buffer(v21, qword_280240FB0);
  v22 = *(v4 + 16);
  v49 = v14;
  v22(v12, v14, v2);
  v23 = sub_267EF89F8();
  v24 = sub_267EF95D8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_48();
    v47 = a1;
    v26 = v25;
    v45 = v25;
    v46 = swift_slowAlloc();
    v51 = v46;
    *v26 = 136315138;
    v22(v8, v12, v2);
    sub_267EF5458();
    v50[3] = v2;
    v50[4] = sub_267BC4228(&qword_28022BAF0, MEMORY[0x277D5DC70], MEMORY[0x277D5DC50]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v50);
    v22(boxed_opaque_existential_0, v8, v2);
    v43 = sub_267EF5448();
    v28 = v12;
    v29 = v2;
    v31 = v30;
    v44 = v24;
    v32 = *(v4 + 8);
    v33 = v8;
    v34 = v4;
    v32(v33, v29);
    v32(v28, v29);
    __swift_destroy_boxed_opaque_existential_0(v50);
    v35 = sub_267BA33E8(v43, v31, &v51);

    v36 = v45;
    *(v45 + 4) = v35;
    _os_log_impl(&dword_267B93000, v23, v44, "#EditMessageConfirmIntentFlowStrategy sending system dialog act: %s", v36, 0xCu);
    OUTLINED_FUNCTION_11_42();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v32 = *(v4 + 8);
    v34 = v4;
    v32(v12, v2);
    v29 = v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v48;
  v39 = v38 + v37;
  v40 = v49;
  v22(v39, v49, v29);
  sub_267EF4088();
  return (v32)(v40, v29);
}

uint64_t sub_267E6015C()
{
  OUTLINED_FUNCTION_53_2(OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_sentMessageContext);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_catProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_sharedContextService));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_commonTemplateProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_featureFlags));
  return sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_confirmationResponse, &qword_280229310, &unk_267EFCF70);
}

uint64_t sub_267E601EC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_53_2(OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_sentMessageContext);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_catProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_sharedContextService));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_commonTemplateProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_featureFlags));
  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow36EditMessageConfirmIntentFlowStrategy_confirmationResponse, &qword_280229310, &unk_267EFCF70);
  return v0;
}

uint64_t sub_267E60288()
{
  sub_267E601EC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EditMessageConfirmIntentFlowStrategy(uint64_t a1)
{
  result = qword_28022CA80;
  if (!qword_28022CA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267E60334(uint64_t a1)
{
  type metadata accessor for TimedSentMessageContext(319);
  if (v1 <= 0x3F)
  {
    sub_267C25DD4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_267E60440()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267E5B1CC();
}

uint64_t sub_267E604EC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267BBD07C;

  return sub_267E5B634(a1, a2);
}

uint64_t sub_267E60598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EditMessageConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D08](a1, a2, v9, a4);
}

uint64_t sub_267E60660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EditMessageConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D10](a1, a2, v9, a4);
}

uint64_t sub_267E60728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EditMessageConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D18](a1, a2, v9, a4);
}

uint64_t sub_267E607F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EditMessageConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BAEBEC;

  return MEMORY[0x2821B9CF8](a1, a2, v9, a4);
}

uint64_t sub_267E608B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for EditMessageConfirmIntentFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D00](a1, a2, a3, v11, a5);
}

uint64_t sub_267E60988()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_267BAEBEC;
  v5 = OUTLINED_FUNCTION_26_0();

  return sub_267E5D5D0(v5, v6, v2, v3);
}

uint64_t sub_267E60A30()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA00, &unk_267F0CAA0);
  OUTLINED_FUNCTION_18(v4);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_267BAEBEC;

  return sub_267E5C74C(v3, v7, v8, v9, v10, v0 + v6);
}

unint64_t sub_267E60B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0x74737269467369;
  v7 = a1 == 0x74737269467369 && a2 == 0xE700000000000000;
  if (v7 || (result = OUTLINED_FUNCTION_2_6(0x74737269467369, 0xE700000000000000), (result & 1) != 0))
  {
    v9 = *(v3 + 24);
LABEL_7:
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v9;
    return result;
  }

  result = 0x646E6F6365537369;
  v10 = a1 == 0x646E6F6365537369 && a2 == 0xE800000000000000;
  if (v10 || (result = OUTLINED_FUNCTION_2_6(0x646E6F6365537369, 0xE800000000000000), (result & 1) != 0))
  {
    v9 = *(v3 + 25);
    goto LABEL_7;
  }

  result = 0x7473614C7369;
  v11 = a1 == 0x7473614C7369 && a2 == 0xE600000000000000;
  if (v11 || (result = OUTLINED_FUNCTION_2_6(0x7473614C7369, 0xE600000000000000), (result & 1) != 0))
  {
    v9 = *(v3 + 26);
    goto LABEL_7;
  }

  result = 0x646E657070417369;
  v12 = a1 == 0x646E657070417369 && a2 == 0xEA00000000006465;
  if (v12 || (result = OUTLINED_FUNCTION_2_6(0x646E657070417369, 0xEA00000000006465), (result & 1) != 0))
  {
    v9 = *(v3 + 27);
    goto LABEL_7;
  }

  v13 = a1 == 0xD00000000000001ELL && 0x8000000267F11A30 == a2;
  if (v13 || (result = OUTLINED_FUNCTION_2_6(0xD00000000000001ELL, 0x8000000267F11A30), (result & 1) != 0))
  {
    v9 = *(v3 + 28);
    goto LABEL_7;
  }

  result = 0x70756F72477369;
  v14 = a1 == 0x70756F72477369 && a2 == 0xE700000000000000;
  if (v14 || (result = OUTLINED_FUNCTION_2_6(0x70756F72477369, 0xE700000000000000), (result & 1) != 0))
  {
    v9 = *(v3 + 29);
    goto LABEL_7;
  }

  result = 0x70756F7267;
  if (a1 != 0x70756F7267 || a2 != 0xE500000000000000)
  {
    result = OUTLINED_FUNCTION_2_6(0x70756F7267, 0xE500000000000000);
    if ((result & 1) == 0)
    {
      v17 = a1 == 0xD00000000000001ELL && 0x8000000267F10140 == a2;
      if (v17 || (result = OUTLINED_FUNCTION_2_6(0xD00000000000001ELL, 0x8000000267F10140), (result & 1) != 0))
      {
        v9 = *(v3 + 40);
        goto LABEL_7;
      }

      result = 0xD000000000000019;
      v18 = a1 == 0xD000000000000019 && 0x8000000267F11A60 == a2;
      if (v18 || (result = OUTLINED_FUNCTION_2_6(0xD000000000000019, 0x8000000267F11A60), (result & 1) != 0))
      {
        v9 = *(v3 + 41);
        goto LABEL_7;
      }

      goto LABEL_59;
    }
  }

  v16 = *(v3 + 32);
  if (!v16)
  {
LABEL_59:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = type metadata accessor for MessagesGroup(0);
  *a3 = v16;
}

unint64_t sub_267E60DB0(uint64_t a1, uint64_t a2)
{
  v2 = sub_267EF9D38();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_267E60E28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_267E60DB0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_267E60E58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267BFBD50(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267E60E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267E60DFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267E60EB8(uint64_t a1)
{
  v2 = sub_267BFBCE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267E60EF4(uint64_t a1)
{
  v2 = sub_267BFBCE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267E60F30(void *a1)
{
  v2 = swift_allocObject();
  sub_267E60F80(a1);
  return v2;
}

uint64_t sub_267E60F80(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CAA0, &qword_267F0CC40);
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v5);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267BFBCE0();
  sub_267EFA078();
  if (v2)
  {

    type metadata accessor for MessagesConversationDialogContext();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v12) = 0;
    *(v1 + 24) = sub_267EF9DA8() & 1;
    *(v1 + 25) = OUTLINED_FUNCTION_1_79(1) & 1;
    *(v1 + 26) = OUTLINED_FUNCTION_1_79(2) & 1;
    *(v1 + 27) = OUTLINED_FUNCTION_1_79(3) & 1;
    *(v1 + 28) = OUTLINED_FUNCTION_1_79(4) & 1;
    *(v1 + 29) = OUTLINED_FUNCTION_1_79(5) & 1;
    type metadata accessor for MessagesGroup(0);
    OUTLINED_FUNCTION_3_75();
    sub_267BFBE6C(v6, 255, v7, &unk_267F05F68);
    sub_267EF9D88();
    *(v1 + 32) = v12;
    *(v1 + 40) = OUTLINED_FUNCTION_1_79(7) & 1;
    v9 = OUTLINED_FUNCTION_1_79(8);
    v10 = OUTLINED_FUNCTION_8_32();
    v11(v10);
    *(v3 + 41) = v9 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_267E6128C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_267E60F30(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessagesConversationDialogContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267E61428()
{
  result = qword_28022CAB8;
  if (!qword_28022CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CAB8);
  }

  return result;
}

unint64_t sub_267E61480()
{
  result = qword_28022CAC0;
  if (!qword_28022CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CAC0);
  }

  return result;
}

unint64_t sub_267E614D8()
{
  result = qword_28022CAC8;
  if (!qword_28022CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CAC8);
  }

  return result;
}

BOOL sub_267E61530(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = sub_267EF9A68();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

uint64_t sub_267E61584@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAE0, &unk_267F07D80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294B0, &qword_267F001F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - v8;
  v10 = sub_267EF8AE8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_267BE8214())
  {
    v14 = [v1 groupName];
    if (v14)
    {
      v15 = v14;
      v16 = sub_267EF8A78();
      OUTLINED_FUNCTION_4_60(v16);
      sub_267EB8B0C(v6, v9);

      sub_267B9FF34(v6, &unk_28022BAE0, &unk_267F07D80);
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
      {
        v17 = *(v11 + 32);
        v17(v13, v9, v10);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v18 = sub_267EF8A08();
        __swift_project_value_buffer(v18, qword_280240FB0);
        v19 = sub_267EF89F8();
        v20 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_5_2(v20))
        {
          v21 = OUTLINED_FUNCTION_32();
          *v21 = 0;
          _os_log_impl(&dword_267B93000, v19, v20, "#INMessage Made group RR entity", v21, 2u);
          OUTLINED_FUNCTION_32_0();
        }

        v17(a1, v13, v10);
LABEL_17:
        v29 = 0;
        return __swift_storeEnumTagSinglePayload(a1, v29, 1, v10);
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    }

    sub_267B9FF34(v9, &qword_2802294B0, &qword_267F001F0);
  }

  v22 = [v2 sender];
  if (v22)
  {
    v23 = v22;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v24 = sub_267EF8A08();
    __swift_project_value_buffer(v24, qword_280240FB0);
    v25 = sub_267EF89F8();
    v26 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v26))
    {
      v27 = OUTLINED_FUNCTION_32();
      *v27 = 0;
      _os_log_impl(&dword_267B93000, v25, v26, "#INMessage Made sender RR entity", v27, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v28 = sub_267EF8A78();
    OUTLINED_FUNCTION_4_60(v28);
    sub_267BF66B0();

    sub_267B9FF34(v6, &unk_28022BAE0, &unk_267F07D80);
    goto LABEL_17;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v30 = sub_267EF8A08();
  __swift_project_value_buffer(v30, qword_280240FB0);
  v31 = sub_267EF89F8();
  v32 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v32))
  {
    v33 = OUTLINED_FUNCTION_32();
    *v33 = 0;
    _os_log_impl(&dword_267B93000, v31, v32, "#INMessage No RR entity", v33, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v29 = 1;
  return __swift_storeEnumTagSinglePayload(a1, v29, 1, v10);
}

uint64_t sub_267E619C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267BA9F38(0, &qword_28022CAD0, 0x277D479E8);
  v5 = sub_267BF20D0(a1, v4, a2);
  if (sub_267BAF0DC(v5))
  {
    sub_267BBD0EC(0, (v5 & 0xC000000000000001) == 0, v5);
    if ((v5 & 0xC000000000000001) != 0)
    {
      goto LABEL_21;
    }

    for (i = *(v5 + 32); ; i = MEMORY[0x26D609870](0, v5))
    {
      v7 = i;

      result = [v7 views];
      if (!result)
      {
        break;
      }

      v9 = result;
      sub_267BA9F38(0, &unk_28022BBA0, 0x277D47140);
      v5 = sub_267EF92F8();

      v10 = sub_267BAF0DC(v5);
      for (j = 0; ; ++j)
      {
        if (v10 == j)
        {

          return 0;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x26D609870](j, v5);
        }

        else
        {
          if (j >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v12 = *(v5 + 8 * j + 32);
        }

        v13 = v12;
        if (__OFADD__(j, 1))
        {
          break;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
        {

          return 1;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

void sub_267E61BA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _BYTE *a7, uint64_t a8, void **a9)
{
  v11 = a1;
  v12 = [a1 views];
  if (!v12)
  {
LABEL_31:
    [v11 setViews_];

    return;
  }

  sub_267BA9F38(0, &unk_28022BBA0, 0x277D47140);
  v13 = sub_267EF92F8();

  v14 = sub_267BAF0DC(v13);
  v37 = a3;
  if (!v14)
  {

LABEL_30:
    v12 = sub_267EF92D8();

    goto LABEL_31;
  }

  v15 = v14;
  sub_267EF9BF8();
  if (v15 < 0)
  {
    goto LABEL_36;
  }

  v34 = v11;
  v36 = a8;
  v16 = 0;
  v35 = OBJC_IVAR____TtC16SiriMessagesFlow36SendMessageConfirmIntentFlowStrategy_delayedActionCancelCommand;
  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x26D609870](v16, v13);
      goto LABEL_10;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_35;
    }

    v17 = *(v13 + 8 * v16 + 32);
LABEL_10:
    v18 = v17;
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = v19;
      v21 = v18;
      v22 = sub_267E61F74(v20);
      if (v23)
      {
        if (v22 == a2 && v23 == a3)
        {
        }

        else
        {
          v25 = sub_267EF9EA8();

          if ((v25 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        sub_267E61FD8(a4, a5, v20);
        if (!a6 && *a7 == 1)
        {
          if (qword_280228818 != -1)
          {
            swift_once();
          }

          v26 = sub_267EF8A08();
          __swift_project_value_buffer(v26, qword_280240FB0);
          v27 = sub_267EF89F8();
          v28 = sub_267EF95D8();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            *v29 = 0;
            _os_log_impl(&dword_267B93000, v27, v28, "#SendMessageConfirmIntentFlowStrategy for voiceOnly, setting delay dismissal to 5 second, and preserving the cancel command", v29, 2u);
            MEMORY[0x26D60A7B0](v29, -1, -1);
          }

          v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          [v20 setDelayDismissalMs_];

          v31 = *a9;
          v32 = *(v36 + v35);
          *(v36 + v35) = *a9;
          v33 = v31;

          v21 = v32;
          a3 = v37;
        }
      }

LABEL_26:
    }

    ++v16;
    sub_267EF9BD8();
    sub_267EF9C08();
    sub_267EF9C18();
    sub_267EF9BE8();
    if (v15 == v16)
    {

      v11 = v34;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_267E61F74(void *a1)
{
  v1 = [a1 aceId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

void sub_267E61FD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();
  [a3 setAceId_];
}

uint64_t sub_267E62030(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB70, &unk_267F0BA10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_267E62098(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v15 = sub_267EF8A08();
  __swift_project_value_buffer(v15, qword_280240FB0);

  v16 = sub_267EF89F8();
  v17 = sub_267EF95D8();

  if (os_log_type_enabled(v16, v17))
  {
    v31 = a8;
    v18 = swift_slowAlloc();
    v30 = a2;
    v19 = swift_slowAlloc();
    v33 = v19;
    *v18 = 136315394;
    if (a4)
    {
      v20 = a4;
    }

    else
    {
      a3 = 7104878;
      v20 = 0xE300000000000000;
    }

    v21 = sub_267BA33E8(a3, v20, &v33);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    if (a6)
    {
      v22 = a5;
    }

    else
    {
      v22 = 7104878;
    }

    if (a6)
    {
      v23 = a6;
    }

    else
    {
      v23 = 0xE300000000000000;
    }

    v24 = sub_267BA33E8(v22, v23, &v33);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_267B93000, v16, v17, "#ReadComponentAction creating multilingual sayIt for language: %s, with voice: %s", v18, 0x16u);
    swift_arrayDestroy();
    v25 = v19;
    a2 = v30;
    MEMORY[0x26D60A7B0](v25, -1, -1);
    v26 = v18;
    a8 = v31;
    MEMORY[0x26D60A7B0](v26, -1, -1);
  }

  sub_267E62364();

  v27 = sub_267E7E88C(a1, a2, a7, a8, 0, 0, 0);
  if (a6)
  {
    v28 = sub_267EF8FF8();
  }

  else
  {
    v28 = 0;
  }

  [v27 setVoiceName_];

  if (a4)
  {
    a4 = sub_267EF8FF8();
  }

  [v27 setLanguageCode_];

  return v27;
}

unint64_t sub_267E62364()
{
  result = qword_28022A0B0;
  if (!qword_28022A0B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28022A0B0);
  }

  return result;
}

uint64_t sub_267E623A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = type metadata accessor for ConversationActionGroup(0);
    OUTLINED_FUNCTION_97(v5);

    v6 = sub_267BE6480(a2, a3, 0, 1);
    v7 = &unk_28022BC80;
    v8 = type metadata accessor for ConversationActionGroup;
  }

  else if (sub_267E2B428())
  {
    v9 = type metadata accessor for ConversationAppendingActionGroup(0);
    OUTLINED_FUNCTION_97(v9);

    v6 = sub_267DA7BA4(v10, a3);
    v7 = &unk_28022CAF0;
    v8 = type metadata accessor for ConversationAppendingActionGroup;
  }

  else
  {
    v11 = type metadata accessor for RequestConclusionActionGroup(0);
    OUTLINED_FUNCTION_97(v11);

    v6 = sub_267DFA04C(v12);
    v7 = &qword_28022BD38;
    v8 = type metadata accessor for RequestConclusionActionGroup;
  }

  sub_267E638F4(v7, v8, &unk_267F0D600);
  return v6;
}

uint64_t sub_267E624F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v235 = a2;
  v234 = sub_267EF4548();
  v3 = *(v234 - 8);
  v4 = MEMORY[0x28223BE20](v234);
  v6 = &v227 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v232 = (&v227 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  MEMORY[0x28223BE20](v8 - 8);
  v231 = (&v227 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BC68, &unk_267F08710);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v227 - v11;
  v13 = type metadata accessor for ReadingOfferBehaviorFlowFrameResult(0);
  OUTLINED_FUNCTION_22();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v227 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v227 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v227 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v227 - v24;
  sub_267DA0E58(a1, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_267B9F98C(v12, &qword_28022BC68, &unk_267F08710);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v26 = sub_267EF8A08();
    __swift_project_value_buffer(v26, qword_280240FB0);
    v27 = sub_267EF89F8();
    v28 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v28))
    {
      v29 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v29);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v30, v31, v32, v33, v34, 2u);
      OUTLINED_FUNCTION_26();
    }

    v35 = v235;
    v36 = 1;
  }

  else
  {
    sub_267E637D8(v12, v25);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v37 = sub_267EF8A08();
    v38 = __swift_project_value_buffer(v37, qword_280240FB0);
    sub_267E0BAE4(v25, v23);
    v230 = v38;
    v39 = sub_267EF89F8();
    v40 = sub_267EF95D8();
    v41 = OUTLINED_FUNCTION_5_2(v40);
    v229 = v6;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v227 = v3;
      v43 = v42;
      v44 = swift_slowAlloc();
      v228 = v25;
      v45 = v44;
      *&v237 = v44;
      *v43 = 136315138;
      sub_267E0BAE4(v23, v20);
      v46 = sub_267EF9098();
      v48 = v47;
      sub_267BA1B7C(v23);
      v13 = sub_267BA33E8(v46, v48, &v237);

      *(v43 + 4) = v13;
      _os_log_impl(&dword_267B93000, v39, v40, "#OfferReplyReturnGroup acting on exit value for offer reply: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      v25 = v228;
      OUTLINED_FUNCTION_32_0();
      v3 = v227;
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      sub_267BA1B7C(v23);
    }

    sub_267E0BAE4(v25, v17);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 9, v49);
    v51 = v233;
    switch(EnumTagSinglePayload)
    {
      case 1:
        v13 = v233[2];
        v148 = *(v13 + 80);
        v237 = *(v13 + 64);
        v238 = v148;
        v239 = *(v13 + 96);
        v240 = *(v13 + 112);
        *&v236[0] = *(&v148 + 1);
        v149 = v237;
        sub_267E6383C(v236, v241);

        v150 = sub_267E2B2D0();

        sub_267E63898(v236);

        if ((v150 & 1) == 0)
        {
          goto LABEL_51;
        }

        v152 = OUTLINED_FUNCTION_9_51(v151);
        v153 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_5_2(v153))
        {
          *OUTLINED_FUNCTION_32() = 0;
          OUTLINED_FUNCTION_28_11(&dword_267B93000, v154, v155, "#OfferReplyReturnGroup request to read a single thread. No need to summarize.");
          OUTLINED_FUNCTION_32_0();
        }

LABEL_49:
        v156 = v51[3];
        v157 = type metadata accessor for ReadingTerminatedActionGroup(0);
        OUTLINED_FUNCTION_97(v157);

        sub_267DFA1D0(v13, v156);
        OUTLINED_FUNCTION_15_42();
        v135 = &unk_28022BC70;
        v136 = type metadata accessor for ReadingTerminatedActionGroup;
LABEL_50:
        v158 = sub_267E638F4(v135, v136, &unk_267F0D600);
        v159 = v235;
        *v235 = v13;
        v159[1] = v158;
        v160 = v234;
        (*(v3 + 104))(v159, *MEMORY[0x277D5BF58], v234);
        OUTLINED_FUNCTION_9();
        v91 = v160;
        return __swift_storeEnumTagSinglePayload(v35, v36, v90, v91);
      case 2:
        v113 = OUTLINED_FUNCTION_9_51(EnumTagSinglePayload);
        v114 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v114))
        {
          v115 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v115);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v116, v117, v118, v119, v120, 2u);
          OUTLINED_FUNCTION_26();
        }

        v13 = v51[2];
        goto LABEL_49;
      case 3:
        v121 = OUTLINED_FUNCTION_9_51(EnumTagSinglePayload);
        v122 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v122))
        {
          v123 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v123);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v124, v125, v126, v127, v128, 2u);
          OUTLINED_FUNCTION_26();
        }

        v129 = v51[2];
        v130 = *(v129 + 416);
        if (v130)
        {
          *(v130 + 82) = 0;
        }

        *(&v238 + 1) = &type metadata for Features;
        v131 = sub_267BAFCAC();
        v132 = OUTLINED_FUNCTION_13_44(v131);
        __swift_destroy_boxed_opaque_existential_0(&v237);
        if (v132)
        {
          v133 = *(v129 + 416);
          if (v133)
          {

            sub_267E2B73C(0, v133);
          }
        }

        v13 = v51[3];
        v134 = type metadata accessor for ConversationActionGroup(0);
        OUTLINED_FUNCTION_97(v134);

        sub_267BE6480(v13, v129, 0, 0);
        OUTLINED_FUNCTION_15_42();
        v135 = &unk_28022BC80;
        v136 = type metadata accessor for ConversationActionGroup;
        goto LABEL_50;
      case 4:
        v99 = v3;
        v100 = v25;
        v101 = v233[2];
        if (*(v101 + 88))
        {
          OUTLINED_FUNCTION_12_44();
          v102 = v100;
          goto LABEL_52;
        }

        v184 = OUTLINED_FUNCTION_9_51(EnumTagSinglePayload);
        v185 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v185))
        {
          v186 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v186);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v187, v188, v189, v190, v191, 2u);
          OUTLINED_FUNCTION_26();
        }

        *(&v238 + 1) = &type metadata for Features;
        v192 = sub_267BAFCAC();
        v193 = OUTLINED_FUNCTION_13_44(v192);
        __swift_destroy_boxed_opaque_existential_0(&v237);
        if ((v193 & 1) != 0 && (v194 = *(v101 + 416)) != 0 && *(v194 + 82) == 1)
        {

          v196 = OUTLINED_FUNCTION_9_51(v195);
          v197 = sub_267EF95C8();

          if (os_log_type_enabled(v196, v197))
          {
            v198 = swift_slowAlloc();
            v199 = swift_slowAlloc();
            *&v236[0] = v199;
            *v198 = 136315138;
            v200 = *(v101 + 416);
            if (v200)
            {
              v201 = *(v200 + 88);
            }

            else
            {
              v201 = 0;
              v202 = 0;
            }

            *&v237 = v201;
            *(&v237 + 1) = v202;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
            v219 = sub_267EF9098();
            v221 = sub_267BA33E8(v219, v220, v236);

            *(v198 + 4) = v221;
            OUTLINED_FUNCTION_64_1();
            _os_log_impl(v222, v223, v224, v225, v226, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v199);
            OUTLINED_FUNCTION_32_0();
            OUTLINED_FUNCTION_26();

            v203 = MEMORY[0x277D84F90];
          }

          else
          {

            v203 = MEMORY[0x277D84F90];
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B10, &qword_267EFEFB0);
          v203 = swift_allocObject();
          *(v203 + 16) = xmmword_267EFC020;
          v204 = v51[3];
          sub_267DE2198();
          v206 = v205;
          v207 = *(v204 + 128);
          type metadata accessor for MarkMessagesAsReadAction();
          swift_allocObject();
          v208 = sub_267C138B4(v206, v207, v101);
          v209 = sub_267E638F4(&qword_28022BCC8, type metadata accessor for MarkMessagesAsReadAction, &unk_267EFC938);
          *(v203 + 32) = v208;
          *(v203 + 40) = v209;
        }

        sub_267E6362C(v231);
        OUTLINED_FUNCTION_9();
        v210 = v234;
        __swift_storeEnumTagSinglePayload(v211, v212, v213, v234);
        v214 = sub_267EF4338();
        OUTLINED_FUNCTION_97(v214);
        sub_267EF4328();
        OUTLINED_FUNCTION_15_42();
        OUTLINED_FUNCTION_4_61();
        v217 = sub_267E638F4(v215, v216, MEMORY[0x277D5BDC8]);
        v218 = v235;
        *v235 = v203;
        v218[1] = v217;
        (*(v99 + 104))(v218, *MEMORY[0x277D5BF58], v210);
        OUTLINED_FUNCTION_9();
        v91 = v210;
        return __swift_storeEnumTagSinglePayload(v35, v36, v90, v91);
      case 5:
      case 6:
        v52 = v233[2];
        v53 = *(v52 + 80);
        v237 = *(v52 + 64);
        v238 = v53;
        v239 = *(v52 + 96);
        v240 = *(v52 + 112);
        *&v236[0] = *(&v53 + 1);
        v54 = v237;
        sub_267E6383C(v236, v241);

        v55 = sub_267E2B2D0();

        sub_267E63898(v236);

        if (v55)
        {
          v57 = OUTLINED_FUNCTION_9_51(v56);
          v58 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_36(v58))
          {
            v59 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v59);
            OUTLINED_FUNCTION_64_1();
            _os_log_impl(v60, v61, v62, v63, v64, 2u);
            OUTLINED_FUNCTION_26();
          }

          sub_267CAB4D0(v52, v235);
          return sub_267BA1B7C(v25);
        }

        v13 = sub_267E624E8();
        type metadata accessor for ConversationActionGroup(0);
        v92 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v92 && (v13 = v51[4]) != 0)
        {

          v94 = OUTLINED_FUNCTION_9_51(v93);
          v95 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_5_2(v95))
          {
            *OUTLINED_FUNCTION_32() = 0;
            OUTLINED_FUNCTION_28_11(&dword_267B93000, v96, v97, "#OfferReplyReturnGroup creating offer transition for native flow");
            OUTLINED_FUNCTION_32_0();
          }

          v98 = v235;
          sub_267CAA1C0(v13, v52, v235);

          sub_267BA1B7C(v25);
          v35 = v98;
        }

        else
        {
LABEL_51:
          OUTLINED_FUNCTION_12_44();
          v102 = v25;
LABEL_52:
          sub_267BA1B7C(v102);
          v35 = v13;
        }

        v36 = 0;
        break;
      case 7:
        v103 = OUTLINED_FUNCTION_9_51(EnumTagSinglePayload);
        v104 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v104))
        {
          v105 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v105);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v106, v107, v108, v109, v110, 2u);
          OUTLINED_FUNCTION_26();
        }

        v111 = type metadata accessor for FlowLocatorPhoneFlowFinder();
        inited = swift_initStackObject();
        *(&v238 + 1) = v111;
        *&v239 = &off_2878D76D0;
        *&v237 = inited;
        sub_267CAA984(v235);
        sub_267BA1B7C(v25);
        return __swift_destroy_boxed_opaque_existential_0(&v237);
      case 8:
        v161 = OUTLINED_FUNCTION_9_51(EnumTagSinglePayload);
        v162 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v162))
        {
          v163 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v163);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v164, v165, v166, v167, v168, 2u);
          OUTLINED_FUNCTION_26();
        }

        v169 = type metadata accessor for OfferTransitionActionGroup(0);
        OUTLINED_FUNCTION_97(v169);

        v170 = sub_267CFB440(sub_267E638EC, v51);
        v171 = sub_267E638F4(&qword_280229990, type metadata accessor for OfferTransitionActionGroup, &unk_267F02F50);
        v172 = v232;
        *v232 = v170;
        v172[1] = v171;
        v173 = *MEMORY[0x277D5BF58];
        v174 = v3;
        v231 = *(v3 + 104);
        v175 = v234;
        (v231)(v172, v173, v234);
        v176 = v51[2];
        v177 = v51[3];
        v178 = *(v3 + 16);
        v179 = v229;
        v178(v229, v172, v175);
        SenderInfoActionGroup = type metadata accessor for ReadSenderInfoActionGroup(0);
        OUTLINED_FUNCTION_97(SenderInfoActionGroup);

        v181 = sub_267C4BF48(v176, v177, v179);
        (*(v174 + 8))(v172, v175);
        sub_267BA1B7C(v25);
        v182 = sub_267E638F4(&qword_28022BC78, type metadata accessor for ReadSenderInfoActionGroup, &unk_267EFE040);
        v183 = v235;
        *v235 = v181;
        v183[1] = v182;
        (v231)(v183, v173, v175);
        OUTLINED_FUNCTION_9();
        v91 = v175;
        return __swift_storeEnumTagSinglePayload(v35, v36, v90, v91);
      case 9:
        v66 = v233[2];
        v67 = *(v66 + 80);
        v237 = *(v66 + 64);
        v238 = v67;
        v239 = *(v66 + 96);
        v240 = *(v66 + 112);
        v13 = v239;
        v241[0] = *(&v67 + 1);
        v68 = v237;
        sub_267E6383C(v241, v236);

        v69 = sub_267E2B2D0();

        sub_267E63898(v241);

        if ((v69 & 1) == 0)
        {
          goto LABEL_51;
        }

        v71 = OUTLINED_FUNCTION_9_51(v70);
        v72 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v72))
        {
          v73 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v73);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v74, v75, v76, v77, v78, 2u);
          OUTLINED_FUNCTION_26();
        }

        v79 = *(v66 + 40);
        v80 = *(v66 + 48);
        __swift_project_boxed_opaque_existential_0((v66 + 16), v79);
        (*(v80 + 16))(v236, v79, v80);
        type metadata accessor for CloseAssistantAction();
        v81 = swift_allocObject();
        *(v81 + 16) = 0;
        *(v81 + 24) = 0;
        sub_267B9A5E8(v236, v81 + 32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B10, &qword_267EFEFB0);
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_267EFC020;
        v83 = sub_267E638F4(&qword_28022CAE8, type metadata accessor for CloseAssistantAction, &unk_267F06688);
        *(v82 + 32) = v81;
        *(v82 + 40) = v83;
        v84 = v234;
        __swift_storeEnumTagSinglePayload(v231, 1, 1, v234);
        v85 = sub_267EF4338();
        OUTLINED_FUNCTION_97(v85);
        sub_267EF4328();
        OUTLINED_FUNCTION_15_42();
        OUTLINED_FUNCTION_4_61();
        v88 = sub_267E638F4(v86, v87, MEMORY[0x277D5BDC8]);
        v89 = v235;
        *v235 = "MessagesDataStore#";
        v89[1] = v88;
        (*(v3 + 104))(v89, *MEMORY[0x277D5BF58], v84);
        OUTLINED_FUNCTION_9();
        v91 = v84;
        return __swift_storeEnumTagSinglePayload(v35, v36, v90, v91);
      default:
        v137 = OUTLINED_FUNCTION_9_51(EnumTagSinglePayload);
        v138 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v138))
        {
          v139 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v139);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v140, v141, v142, v143, v144, 2u);
          OUTLINED_FUNCTION_26();
        }

        OUTLINED_FUNCTION_12_44();
        sub_267BA1B7C(v25);
        OUTLINED_FUNCTION_9();
        __swift_storeEnumTagSinglePayload(v145, v146, v147, v234);
        return sub_267B9F98C(v17, &qword_280229920, &unk_267F0ABD0);
    }
  }

  v90 = 1;
  v91 = v234;
  return __swift_storeEnumTagSinglePayload(v35, v36, v90, v91);
}

uint64_t sub_267E6362C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    *v5 = 0;
    _os_log_impl(&dword_267B93000, v3, v4, "#OfferReplyReturnGroup moving to next group", v5, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  *a1 = sub_267E624E8();
  a1[1] = v6;
  v7 = *MEMORY[0x277D5BF58];
  sub_267EF4548();
  OUTLINED_FUNCTION_22();
  v10 = *(v9 + 104);

  return v10(a1, v7, v8);
}

uint64_t sub_267E63768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for OfferReplyReturnGroup();

  return sub_267EF44D8();
}

uint64_t sub_267E637D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingOfferBehaviorFlowFrameResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E638F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267E6393C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v7 = sub_267EF8A08();
  v8 = __swift_project_value_buffer(v7, qword_280240FB0);

  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v11 = OUTLINED_FUNCTION_55_0();
    v46 = v11;
    *v3 = 136315138;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A340, &unk_267F00A50);
    v13 = MEMORY[0x26D608FD0](a2, v12);
    v15 = sub_267BA33E8(v13, v14, &v46);

    *(v3 + 4) = v15;
    OUTLINED_FUNCTION_6_20(&dword_267B93000, v16, v10, "#getUpdatedPersonList selectedPersons=%s");
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  v17 = MEMORY[0x277D84F90];
  v46 = MEMORY[0x277D84F90];
  v18 = *(a2 + 16);
  for (i = (a2 + 32); v18; --v18)
  {
    v45 = *i;
    sub_267C7B60C(&v45, &v44);
    if (v44)
    {
      MEMORY[0x26D608F90]();
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      sub_267EF9368();
      v17 = v46;
    }

    ++i;
  }

  if (!a3)
  {
    return v17;
  }

  v20 = sub_267BAF0DC(a3);
  if (v20 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v21 = v20;

  if (v21 <= a1)
  {
    v28 = sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134218240;
      *(v30 + 4) = a1;
      *(v30 + 12) = 2048;
      *(v30 + 14) = sub_267BAF0DC(a3);

      _os_log_impl(&dword_267B93000, v28, v21, "#resolvePersonsFromIntentContacts selectedIndex %ld is out of persons count: %ld", v30, 0x16u);
      OUTLINED_FUNCTION_18_2();
    }

    else
    {
    }

    return v17;
  }

  sub_267C6F008(a1, a3);
  v23 = v22;
  v25 = v24;
  if (v24)
  {
    sub_267EF9ED8();
    swift_unknownObjectRetain_n();
    v31 = swift_dynamicCastClass();
    if (!v31)
    {
      swift_unknownObjectRelease();
      v31 = MEMORY[0x277D84F90];
    }

    v32 = *(v31 + 16);

    if (__OFSUB__(v25 >> 1, v23))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v32 != (v25 >> 1) - v23)
    {
      goto LABEL_49;
    }

    v27 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v27)
    {
      goto LABEL_25;
    }

    v27 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  while (1)
  {
    sub_267C73BFC();
    v27 = v26;
LABEL_24:
    swift_unknownObjectRelease();
LABEL_25:
    v46 = v27;
    sub_267C9B508(v17);
    v8 = v46;
    v33 = a1 + 1;
    OUTLINED_FUNCTION_66();
    sub_267C74A48();
    result = sub_267C74A48();
    if ((a3 & 0xC000000000000001) == 0)
    {

LABEL_34:

      a1 = a3 & 0xFFFFFFFFFFFFFF8;
      v17 = (a3 & 0xFFFFFFFFFFFFFF8) + 32;
      v21 = (2 * v21) | 1;
      if ((v21 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_38;
    }

    if (v33 == v21)
    {

      goto LABEL_33;
    }

    if (v33 >= v21)
    {
      break;
    }

    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);

    v35 = a1 + 1;
    do
    {
      v36 = v35 + 1;
      sub_267EF9B98();
      v35 = v36;
    }

    while (v21 != v36);
LABEL_33:
    if (!(a3 >> 62))
    {
      goto LABEL_34;
    }

LABEL_37:

    a1 = sub_267EF9CC8();
    v17 = v39;
    v33 = v40;
    v21 = v41;

    if ((v21 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    a3 = sub_267EF9ED8();
    swift_unknownObjectRetain_n();
    v42 = swift_dynamicCastClass();
    if (!v42)
    {
      swift_unknownObjectRelease();
      v42 = MEMORY[0x277D84F90];
    }

    v43 = *(v42 + 16);

    if (!__OFSUB__(v21 >> 1, v33))
    {
      if (v43 == (v21 >> 1) - v33)
      {
        v38 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (!v38)
        {
          v38 = MEMORY[0x277D84F90];
          goto LABEL_44;
        }
      }

      else
      {
        swift_unknownObjectRelease_n();
LABEL_35:
        sub_267C73BFC();
        v38 = v37;
LABEL_44:
        swift_unknownObjectRelease();
      }

      v46 = v8;
      sub_267C9B508(v38);
      return v46;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

void sub_267E6417C()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAE0, &unk_267F07D80);
  v3 = OUTLINED_FUNCTION_18(v2);
  MEMORY[0x28223BE20](v3);
  v5 = v27 - v4;
  v28 = sub_267EF8AE8();
  OUTLINED_FUNCTION_58();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  v11 = v10 - v9;
  sub_267EF2D28();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  sub_267EF2D18();
  v27[1] = sub_267EF2CE8();
  v13 = OUTLINED_FUNCTION_21_11();
  v14(v13);
  v15 = sub_267BAF0DC(v1);
  v16 = 0;
  v30 = v1;
  v31 = v1 & 0xC000000000000001;
  v29 = v1 & 0xFFFFFFFFFFFFFF8;
  v27[0] = v7 + 32;
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v15 == v16)
    {

      OUTLINED_FUNCTION_47();
      return;
    }

    if (v31)
    {
      v18 = MEMORY[0x26D609870](v16, v30);
    }

    else
    {
      if (v16 >= *(v29 + 16))
      {
        goto LABEL_15;
      }

      v18 = *(v30 + 8 * v16 + 32);
    }

    v19 = v18;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    sub_267EF8A68();
    sub_267EF8A78();
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    sub_267BF66B0();
    sub_267B9F98C(v5, &unk_28022BAE0, &unk_267F07D80);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267C70CB0();
      v17 = v25;
    }

    v24 = *(v17 + 16);
    if (v24 >= *(v17 + 24) >> 1)
    {
      sub_267C70CB0();
      v17 = v26;
    }

    *(v17 + 16) = v24 + 1;
    (*(v7 + 32))(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v24, v11, v28);
    ++v16;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_267E64670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_164_1();
  a27 = v28;
  a28 = v29;
  v31 = v30;
  v32 = [v30 disambiguationItems];
  v33 = sub_267EF92F8();

  v34 = *(v33 + 16);

  v35 = &selRef_alternatives;
  if (v34)
  {
    v35 = &selRef_disambiguationItems;
  }

  v36 = [v31 *v35];
  v37 = sub_267EF92F8();

  a16 = MEMORY[0x277D84F90];
  v38 = *(v37 + 16);
  if (v38)
  {
    v39 = v37 + 32;
    do
    {
      sub_267BA2E04(v39, &a13);
      sub_267BA7F4C(&a13, &a9);
      OUTLINED_FUNCTION_170();
      sub_267BA9F38(v40, v41, v42);
      if ((swift_dynamicCast() & 1) != 0 && a12)
      {
        MEMORY[0x26D608F90]();
        if (*((a16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        OUTLINED_FUNCTION_161_2();
        sub_267EF9368();
      }

      v39 += 32;
      --v38;
    }

    while (v38);
  }

  OUTLINED_FUNCTION_163_2();
}

void sub_267E64914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_164_1();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  a13 = &a18;
  a14 = v40;
  a15 = v41;

  sub_267CF2E80(v33, &a11, v35);
  v43 = v42;
  if (!sub_267BAF0DC(v42))
  {

    if (qword_280228818 != -1)
    {
LABEL_42:
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v61 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v61, qword_280240FB0);

    v62 = sub_267EF89F8();
    v63 = sub_267EF95D8();

    if (!os_log_type_enabled(v62, v63))
    {
      goto LABEL_36;
    }

    v64 = OUTLINED_FUNCTION_48();
    v65 = OUTLINED_FUNCTION_52();
    a16 = v65;
    *v64 = 136315138;
    v66 = OUTLINED_FUNCTION_161_2();
    *(v64 + 4) = sub_267BA33E8(v66, v67, v68);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v69, v70, v71, v72, v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v65);
    OUTLINED_FUNCTION_40_0();
    goto LABEL_35;
  }

  if (sub_267BAF0DC(v43) == 1)
  {
    sub_267BBD0EC(0, (v43 & 0xC000000000000001) == 0, v43);
    if ((v43 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x26D609870](0, v43);
    }

    else
    {
      v44 = *(v43 + 32);
    }

    v45 = v44;

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v46 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v46, qword_280240FB0);

    v47 = v45;
    v48 = sub_267EF89F8();
    sub_267EF95D8();

    if (OUTLINED_FUNCTION_54_8())
    {
      swift_slowAlloc();
      v49 = OUTLINED_FUNCTION_55_0();
      a16 = v49;
      *v39 = 134218242;
      *(v39 + 4) = sub_267BAF0DC(v35);

      *(v39 + 12) = 2080;
      v50 = v47;
      v51 = [v50 description];
      sub_267EF9028();

      v52 = OUTLINED_FUNCTION_61_4();
      v55 = sub_267BA33E8(v52, v53, v54);

      *(v39 + 14) = v55;
      OUTLINED_FUNCTION_16_28();
      _os_log_impl(v56, v57, v58, v59, v60, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v49);
      OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {

LABEL_38:
    }

    goto LABEL_39;
  }

  if (!v37)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v85 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v85, qword_280240FB0);
    v62 = sub_267EF89F8();
    v86 = sub_267EF95D8();
    if (!OUTLINED_FUNCTION_36(v86))
    {
      goto LABEL_36;
    }

    v87 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v87);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v88, v89, v90, v91, v92, 2u);
LABEL_35:
    OUTLINED_FUNCTION_26();
LABEL_36:

    goto LABEL_39;
  }

  v74 = sub_267BAF0DC(v35);
  for (i = 0; v74 != i; ++i)
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v76 = MEMORY[0x26D609870](i, v35);
    }

    else
    {
      if (i >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v76 = *(v35 + 8 * i + 32);
    }

    v77 = v76;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v78 = [v76 personHandle];
    if (v78 && (v79 = v78, v80 = sub_267C85790(), v82 = v81, v79, v82))
    {
      if (v80 == v39 && v82 == v37)
      {
        goto LABEL_38;
      }

      v84 = sub_267EF9EA8();

      if (v84)
      {
        break;
      }
    }

    else
    {
    }
  }

LABEL_39:
  OUTLINED_FUNCTION_163_2();
}

char *sub_267E64D5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_267E64FC8(a1, a2);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v4 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v4, qword_280240FB0);
  v5 = v3;
  v6 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v14 = OUTLINED_FUNCTION_100_8();
    *v2 = 136315138;
    v7 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229790, &qword_267EFE4C0);
    v8 = sub_267EF9098();
    v10 = sub_267BA33E8(v8, v9, &v14);

    *(v2 + 4) = v10;
    OUTLINED_FUNCTION_59_2(&dword_267B93000, v11, v12, "ContactDisambiguation# Selected person by reference: %s");
    OUTLINED_FUNCTION_11_42();
    OUTLINED_FUNCTION_40_0();
  }

  return v3;
}

char *sub_267E64FC8(uint64_t a1, uint64_t a2)
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v4 = sub_267EF8A08();
  __swift_project_value_buffer(v4, qword_280240FB0);
  v5 = sub_267EF89F8();
  v6 = sub_267EF95D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315138;
    sub_267D6C6D4(a1);
    v11 = sub_267BA33E8(v9, v10, &v27);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_267B93000, v5, v6, "Looking for item by reference '%s'", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D60A7B0](v8, -1, -1);
    MEMORY[0x26D60A7B0](v7, -1, -1);
  }

  if (a1 != 25)
  {
    v13 = sub_267EA16B0(a1);
    if (v14)
    {
      v15 = sub_267EF89F8();
      v16 = sub_267EF95D8();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v27 = v18;
        *v17 = 136315138;
        sub_267D6C6D4(a1);
        v21 = sub_267BA33E8(v19, v20, &v27);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_267B93000, v15, v16, "Unsupported reference type %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x26D60A7B0](v18, -1, -1);
        MEMORY[0x26D60A7B0](v17, -1, -1);
      }

      return 0;
    }

    v22 = v13;
    v23 = sub_267BAF0DC(a2);
    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      if (v22 >= v23)
      {

        v24 = sub_267EF89F8();
        v25 = sub_267EF95D8();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 134218240;
          *(v26 + 4) = v22;
          *(v26 + 12) = 2048;
          *(v26 + 14) = sub_267BAF0DC(a2);

          _os_log_impl(&dword_267B93000, v24, v25, "Ordinal index %ld is out of range of %ld", v26, 0x16u);
          MEMORY[0x26D60A7B0](v26, -1, -1);
        }

        else
        {
        }

        return 0;
      }

      sub_267BBD0EC(v22, (a2 & 0xC000000000000001) == 0, a2);
      if ((a2 & 0xC000000000000001) == 0)
      {
        return *(a2 + 8 * v22 + 32);
      }
    }

    return MEMORY[0x26D609870](v22, a2);
  }

  return sub_267BF6698();
}

void sub_267E65350()
{
  OUTLINED_FUNCTION_48_0();
  v162 = v1;
  v161 = v2;
  v159 = v3;
  v163 = v0;
  v160 = v4;
  v177 = v5;
  v7 = v6;
  v8 = sub_267EF4BE8();
  OUTLINED_FUNCTION_58();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_0();
  v14 = v13 - v12;
  sub_267EF6A08();
  OUTLINED_FUNCTION_58();
  v174 = v16;
  v175 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v176 = v17;
  OUTLINED_FUNCTION_26_2();
  v171 = sub_267EF6A88();
  OUTLINED_FUNCTION_58();
  v169 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v170 = v20;
  OUTLINED_FUNCTION_26_2();
  v167 = sub_267EF6B88();
  OUTLINED_FUNCTION_58();
  v166 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v168 = v23;
  OUTLINED_FUNCTION_26_2();
  v24 = sub_267EF6B38();
  v25 = OUTLINED_FUNCTION_18(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v165 = v26;
  OUTLINED_FUNCTION_26_2();
  v27 = sub_267EF2E38();
  v28 = OUTLINED_FUNCTION_18(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  v179 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229428, &unk_267F00E50);
  v31 = OUTLINED_FUNCTION_18(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_60();
  v178 = v32 - v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_45_0();
  v182 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_0();
  v38 = MEMORY[0x28223BE20](v37);
  v40 = &v154 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v154 - v42;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_45_0();
  v181 = v44;
  OUTLINED_FUNCTION_26_2();
  sub_267EF6B18();
  OUTLINED_FUNCTION_58();
  v172 = v46;
  v173 = v45;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_0();
  v180 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v49 = OUTLINED_FUNCTION_18(v48);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_60();
  v52 = (v50 - v51);
  MEMORY[0x28223BE20](v53);
  v55 = &v154 - v54;
  sub_267B9CC04(v7, &v154 - v54);
  v56 = type metadata accessor for DirectInvocationUseCases(0);
  if (__swift_getEnumTagSinglePayload(v55, 1, v56) == 1)
  {
    goto LABEL_2;
  }

  sub_267C2FB6C(v55, v52, &unk_28022BBE0, qword_267EFD030);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 15)
  {
    if (EnumCaseMultiPayload == 14)
    {
      v74 = *v52;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v75 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v75, qword_280240FB0);
      v76 = sub_267EF89F8();
      v77 = sub_267EF95D8();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = OUTLINED_FUNCTION_48();
        *v78 = 134217984;
        *(v78 + 4) = v74;
        OUTLINED_FUNCTION_16_28();
        _os_log_impl(v79, v80, v81, v82, v83, 0xCu);
        OUTLINED_FUNCTION_29_1();
      }

      sub_267E64670(v177, v84, v85, v86, v87, v88, v89, v90, v154, v155, *(&v155 + 1), v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172);
      sub_267EB0E0C(v74, v91);
      OUTLINED_FUNCTION_53_0();
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_267CCEDF4(v52);
LABEL_2:
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v57 = sub_267EF8A08();
        __swift_project_value_buffer(v57, qword_280240FB0);
        (*(v10 + 16))(v14, v7, v8);
        v58 = sub_267EF89F8();
        v59 = sub_267EF95E8();
        if (os_log_type_enabled(v58, v59))
        {
          OUTLINED_FUNCTION_48();
          v60 = OUTLINED_FUNCTION_100_8();
          v186[0] = v60;
          *v40 = 136315138;
          v61 = Parse.DirectInvocation.description.getter();
          v63 = v62;
          (*(v10 + 8))(v14, v8);
          sub_267BA33E8(v61, v63, v186);
          OUTLINED_FUNCTION_61_2();

          *(v40 + 4) = v61;
          _os_log_impl(&dword_267B93000, v58, v59, "ContactDisambiguation# unexpected direct invocation: %s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v60);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_40_0();
        }

        else
        {

          (*(v10 + 8))(v14, v8);
        }

        goto LABEL_21;
      }

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v65 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v65, qword_280240FB0);

      v66 = sub_267EF89F8();
      v67 = sub_267EF95D8();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = OUTLINED_FUNCTION_48();
        v69 = OUTLINED_FUNCTION_52();
        v186[0] = v69;
        *v68 = 136315138;
        v70 = OUTLINED_FUNCTION_46_2();
        *(v68 + 4) = sub_267BA33E8(v70, v71, v72);
        OUTLINED_FUNCTION_173_2(&dword_267B93000, v66, v67, "ContactDisambiguation# contact selection with itemIdentifier=%s");
        __swift_destroy_boxed_opaque_existential_0(v69);
        OUTLINED_FUNCTION_45_2();
        OUTLINED_FUNCTION_18_2();
      }

      v73 = OUTLINED_FUNCTION_46_2();
      sub_267E64808(v73);
    }

    goto LABEL_21;
  }

  v92 = *v52;
  v93 = v52[1];
  *(&v157 + 1) = v92;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v94 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v94, qword_280240FB0);

  v158 = v7;
  v95 = sub_267EF89F8();
  v96 = sub_267EF95D8();

  v97 = os_log_type_enabled(v95, v96);
  *&v157 = v93;
  if (v97)
  {
    v98 = OUTLINED_FUNCTION_48();
    v99 = OUTLINED_FUNCTION_52();
    v186[0] = v99;
    *v98 = 136315138;
    *(v98 + 4) = sub_267BA33E8(*(&v157 + 1), v93, v186);
    _os_log_impl(&dword_267B93000, v95, v96, "ContactDisambiguation# contact picker with contactId=%s", v98, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v99);
    OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_26();
  }

  v100 = v163;
  v101 = (v163 + *v159);
  v102 = v101[3];
  v159 = v101;
  __swift_project_boxed_opaque_existential_0(v101, v102);
  v160 = sub_267EF7C18();
  v177 = v103;
  *&v155 = sub_267BA9F38(0, v161, v162);
  v104 = v100[5];
  v105 = v100[6];
  __swift_project_boxed_opaque_existential_0(v100 + 2, v104);
  (*(v105 + 8))(v186, v104, v105);
  sub_267EF2D28();
  v106 = v181;
  OUTLINED_FUNCTION_78();
  v161 = v107;
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v107);
  sub_267EF6C28();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
  LODWORD(v162) = OUTLINED_FUNCTION_28_3();
  sub_267EF6FF8();
  v115 = sub_267EF6FC8();
  v116 = v177;
  sub_267C2FB6C(v106, v43, &qword_280229430, &qword_267EFD2C0);

  v117 = sub_267EF89F8();
  v118 = sub_267EF95D8();

  v119 = os_log_type_enabled(v117, v118);
  v163 = v115;
  if (v119)
  {
    v120 = swift_slowAlloc();
    *(&v154 + 1) = swift_slowAlloc();
    v184 = v116;
    v185[0] = *(&v154 + 1);
    *v120 = 136315394;
    v183 = v160;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v121 = sub_267EF9098();
    v123 = sub_267BA33E8(v121, v122, v185);

    *(v120 + 4) = v123;
    *(v120 + 12) = 2080;
    sub_267C2FB6C(v43, v40, &qword_280229430, &qword_267EFD2C0);
    v124 = sub_267EF9098();
    v126 = v125;
    v115 = v163;
    sub_267B9F98C(v43, &qword_280229430, &qword_267EFD2C0);
    v127 = sub_267BA33E8(v124, v126, v185);

    *(v120 + 14) = v127;
    _os_log_impl(&dword_267B93000, v117, v118, "#SiriKitContactResolving CRR config creation with appIdentifier:%s, crrCommsAppSelectionJointId:%s", v120, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_45_2();
  }

  else
  {

    sub_267B9F98C(v43, &qword_280229430, &qword_267EFD2C0);
  }

  v128 = v161;
  if (v115 && (sub_267EF6F98(), v129 = sub_267EF37B8(), v131 = v130, , v131))
  {
    *(&v154 + 1) = v129;
  }

  else
  {

    *(&v154 + 1) = 0;
  }

  v183 = v155;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229438, &unk_267F01FB0);
  sub_267EF9098();
  __swift_project_boxed_opaque_existential_0(v186, v186[3]);
  OUTLINED_FUNCTION_37_1();
  sub_267EF3B68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v132 = swift_allocObject();
  v155 = xmmword_267EFC020;
  *(v132 + 16) = xmmword_267EFC020;
  v133 = 0x8000000267F10280;
  v134 = v178;
  v135 = 0xD000000000000013;
  if (v177)
  {
    v135 = v160;
    v133 = v177;
  }

  *(v132 + 32) = v135;
  *(v132 + 40) = v133;
  sub_267C2FB6C(v182, v134, &qword_280229428, &unk_267F00E50);
  v136 = v164;
  sub_267C2FB6C(v181, v164, &qword_280229430, &qword_267EFD2C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v136, 1, v128);

  if (EnumTagSinglePayload == 1)
  {
    sub_267B9F98C(v136, &qword_280229430, &qword_267EFD2C0);
  }

  else
  {
    sub_267EF2CE8();
    (*(*(v128 - 1) + 8))(v136, v128);
  }

  sub_267EF6B28();
  (*(v166 + 104))(v168, *MEMORY[0x277D56148], v167);
  (*(v169 + 104))(v170, *MEMORY[0x277D560D0], v171);
  sub_267EF6AF8();

  sub_267B9F98C(v182, &qword_280229428, &unk_267F00E50);
  sub_267B9F98C(v181, &qword_280229430, &qword_267EFD2C0);
  __swift_destroy_boxed_opaque_existential_0(v186);
  v138 = v176;
  sub_267EF69F8();
  sub_267EF6978();
  __swift_project_boxed_opaque_existential_0(v159, v159[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B00, &unk_267EFEF90);
  v139 = v174;
  v140 = (*(v174 + 80) + 32) & ~*(v174 + 80);
  v141 = swift_allocObject();
  *(v141 + 16) = v155;
  (*(v139 + 16))(v141 + v140, v138, v175);
  v142 = sub_267EF6888();

  v143 = sub_267EF89F8();
  v144 = sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v145 = OUTLINED_FUNCTION_55_0();
    v186[0] = v145;
    *v141 = 136315138;
    v146 = sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v147 = MEMORY[0x26D608FD0](v142, v146);
    v149 = sub_267BA33E8(v147, v148, v186);

    *(v141 + 4) = v149;
    OUTLINED_FUNCTION_6_20(&dword_267B93000, v150, v144, "ContactDisambiguation# resolved to %s");
    __swift_destroy_boxed_opaque_existential_0(v145);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  if (sub_267BAF0DC(v142))
  {
    sub_267BBD0EC(0, (v142 & 0xC000000000000001) == 0, v142);
    if ((v142 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D609870](0, v142);
    }

    else
    {
      v151 = *(v142 + 32);
    }

    OUTLINED_FUNCTION_53_0();
  }

  else
  {
  }

  v152 = OUTLINED_FUNCTION_19_25();
  v153(v152);
  (*(v172 + 8))(v180, v173);
LABEL_21:
  sub_267B9F98C(v55, &unk_28022BBE0, qword_267EFD030);
  OUTLINED_FUNCTION_47();
}

void sub_267E664F0()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v67 = v0;
  v9 = v7[4];
  v10 = OUTLINED_FUNCTION_131(v7);
  if (sub_267E58398(v10, v9))
  {
    sub_267EC4E04();
    v9 = v11;

    if (*(v9 + 16))
    {
      goto LABEL_11;
    }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v12 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v12, qword_280240FB0);
  v13 = sub_267EF89F8();
  v14 = sub_267EF95D8();
  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_48();
    v15 = OUTLINED_FUNCTION_55_0();
    v66[0] = v15;
    *v9 = 136315138;
    v16 = sub_267EDBC50(v4);
    v18 = sub_267BA33E8(v16, v17, v66);

    *(v9 + 4) = v18;
    OUTLINED_FUNCTION_6_20(&dword_267B93000, v19, v14, "#resolvePersonsFromIntentContacts No sms contact for role %s -> fallback to all roles");
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  v20 = v8[4];
  v21 = OUTLINED_FUNCTION_131(v8);
  if (sub_267E58398(v21, v20))
  {
    sub_267EC4E04();
    v9 = v22;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

LABEL_11:
  if (*(v9 + 16))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v23 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v23, qword_280240FB0);
    v24 = sub_267EF89F8();
    v25 = sub_267EF95D8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_32();
      *v26 = 0;
      _os_log_impl(&dword_267B93000, v24, v25, "#resolvePersonsFromIntentContacts Found contact(s) in input", v26, 2u);
      OUTLINED_FUNCTION_18_2();
    }

    MEMORY[0x28223BE20](v27);
    v64[2] = &v67;
    v64[3] = v6;
    sub_267DA4ECC(v2, v64, v9);

    goto LABEL_33;
  }

  v28 = v8[4];
  v29 = OUTLINED_FUNCTION_46_2();
  __swift_project_boxed_opaque_existential_0(v29, v30);
  v31 = OUTLINED_FUNCTION_37_1();
  v33 = v32(v31);
  if (v33 == 37)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v34 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v34, qword_280240FB0);
    v35 = sub_267EF89F8();
    v36 = sub_267EF95D8();
    if (!OUTLINED_FUNCTION_36(v36))
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v37 = v33;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v38 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v38, qword_280240FB0);
  v39 = sub_267EF89F8();
  v40 = sub_267EF95D8();
  if (os_log_type_enabled(v39, v40))
  {
    OUTLINED_FUNCTION_48();
    v41 = OUTLINED_FUNCTION_55_0();
    v66[0] = v41;
    *v28 = 136315138;
    v65 = v37;
    v42 = sub_267EF9098();
    v44 = sub_267BA33E8(v42, v43, v66);

    *(v28 + 4) = v44;
    _os_log_impl(&dword_267B93000, v39, v40, "#resolvePersonsFromIntentContacts Found reference %s in input", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_29_1();
  }

  v45 = sub_267E64E7C(v37, v6);
  if (!v45)
  {
    v35 = sub_267EF89F8();
    v57 = sub_267EF95D8();
    if (!OUTLINED_FUNCTION_36(v57))
    {
LABEL_32:

      goto LABEL_33;
    }

LABEL_31:
    v58 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v58);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v59, v60, v61, v62, v63, 2u);
    OUTLINED_FUNCTION_26();
    goto LABEL_32;
  }

  v46 = v45;
  v47 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v66[0] = OUTLINED_FUNCTION_100_8();
    *v39 = 136315138;
    v48 = [v46 displayName];
    sub_267EF9028();

    v49 = OUTLINED_FUNCTION_68_0();
    v52 = sub_267BA33E8(v49, v50, v51);

    *(v39 + 4) = v52;
    OUTLINED_FUNCTION_59_2(&dword_267B93000, v53, v54, "#resolvePersonsFromIntentContacts Found person %s by reference");
    OUTLINED_FUNCTION_11_42();
    OUTLINED_FUNCTION_40_0();
  }

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v56 = OUTLINED_FUNCTION_47_3(v55);
  *(v56 + 16) = xmmword_267EFCA40;
  *(v56 + 32) = v46;
LABEL_33:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267E66A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  OUTLINED_FUNCTION_22_0();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E66AB8()
{
  OUTLINED_FUNCTION_12();
  __swift_project_boxed_opaque_existential_0((v0[6] + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_featureFlags), *(v0[6] + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_featureFlags + 24));
  if (sub_267CC8B28())
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[7] = v1;
    *v1 = v2;
    v3 = OUTLINED_FUNCTION_29_30(v1);

    return sub_267E66DD0(v3, v4, v5, v6);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[8] = v8;
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_29_30(v8);

    return sub_267E67EF8(v10, v11, v12, v13);
  }
}

uint64_t sub_267E66BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_267E66BE8, 0, 0);
}

uint64_t sub_267E66BE8()
{
  OUTLINED_FUNCTION_12();
  __swift_project_boxed_opaque_existential_0((v0[6] + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags), *(v0[6] + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags + 24));
  if (sub_267CC8B28())
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[7] = v1;
    *v1 = v2;
    v3 = OUTLINED_FUNCTION_29_30(v1);

    return sub_267E6757C(v3, v4, v5, v6);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[8] = v8;
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_29_30(v8);

    return sub_267E684E4(v10, v11, v12, v13);
  }
}

uint64_t sub_267E66CF0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267E66DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_267EF8428();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  sub_267EF3CF8();
  v5[20] = swift_task_alloc();
  v7 = sub_267EF48A8();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v8 = sub_267EF2E38();
  v5[24] = v8;
  v5[25] = *(v8 - 8);
  v5[26] = swift_task_alloc();
  v9 = sub_267EF7DA8();
  v5[27] = v9;
  v5[28] = *(v9 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E66FE4, 0, 0);
}

void sub_267E66FE4()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v3 = sub_267EF8A08();
  __swift_project_value_buffer(v3, qword_280240FB0);
  OUTLINED_FUNCTION_142_2();
  v4 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_12_3();
  if (os_log_type_enabled(v4, v5))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_374(&dword_267B93000, v6, v7, "ContactDisambiguation# generating SMART contact disambiguation prompt");
    OUTLINED_FUNCTION_29_1();
  }

  sub_267EF7C18();
  if (v8)
  {
    OUTLINED_FUNCTION_89_13();
    OUTLINED_FUNCTION_1_0();
    v9 = OUTLINED_FUNCTION_4_1();
    v10(v9);
    OUTLINED_FUNCTION_171_3();
    sub_267B9F98C((v2 + 2), &qword_28022A620, &qword_267F08EC0);
    sub_267EF7898();

    v11 = v1[6];
    __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
    v12 = OUTLINED_FUNCTION_111_7();
    v13(v12);
    v14 = sub_267EF7E98();
    v15 = OUTLINED_FUNCTION_97(v14);
    v2[31] = OUTLINED_FUNCTION_137_3(v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_1_0();
    v20 = OUTLINED_FUNCTION_4_1();
    v21(v20);
    __swift_project_boxed_opaque_existential_0(v2 + 7, v2[10]);
    OUTLINED_FUNCTION_4_1();
    sub_267EF3B68();
    sub_267EF7D88();
    (*(v0 + 8))(v4);
    __swift_destroy_boxed_opaque_existential_0(v2 + 7);
    v22 = sub_267E68C54(v67);
    v2[32] = v22;
    v2[33] = v23;
    if (v22)
    {
      OUTLINED_FUNCTION_120_7();
      *(swift_task_alloc() + 16) = v11;
      OUTLINED_FUNCTION_165_2();

      v24 = OUTLINED_FUNCTION_141_3();
      v25(v24);
      v26 = sub_267EF8418();
      v28 = OUTLINED_FUNCTION_119_5(v26, v27);
      v29(v28);
      OUTLINED_FUNCTION_46_21();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v2[35] = v30;
      *v30 = v31;
      OUTLINED_FUNCTION_92_11(v30);
      OUTLINED_FUNCTION_93();

      __asm { BRAA            X5, X16 }
    }

    (*(v2[28] + 16))(v2[29], v2[30], v2[27]);
    v45 = sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_12_3();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v2[29];
    v49 = v2[27];
    if (v47)
    {
      v50 = OUTLINED_FUNCTION_48();
      v69[0] = OUTLINED_FUNCTION_52();
      *v50 = 136315138;
      v68 = sub_267EF7D98();
      v52 = v51;
      v53 = OUTLINED_FUNCTION_19_40();
      v54(v53);
      sub_267BA33E8(v68, v52, v69);
      OUTLINED_FUNCTION_528();

      *(v50 + 4) = v48;
      OUTLINED_FUNCTION_156_1();
      OUTLINED_FUNCTION_173_2(v55, v56, v57, v58);
      OUTLINED_FUNCTION_90_11();
      OUTLINED_FUNCTION_18_2();
    }

    else
    {

      v59 = OUTLINED_FUNCTION_19_40();
      v60(v59);
    }

    v61 = sub_267C4BE60();
    v62 = OUTLINED_FUNCTION_61_1(&type metadata for Errors, v61);
    OUTLINED_FUNCTION_118_6(v62, v63);

    v64 = OUTLINED_FUNCTION_115_6();
    v49(v64);
  }

  else
  {
    v34 = sub_267EF89F8();
    v35 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v35))
    {
      v36 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v36);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      OUTLINED_FUNCTION_26();
    }

    v42 = sub_267C4BE60();
    v43 = OUTLINED_FUNCTION_61_1(&type metadata for Errors, v42);
    OUTLINED_FUNCTION_170_3(v43, v44, xmmword_267F0CE20);
  }

  OUTLINED_FUNCTION_106_6();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_93();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267E67464()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 288) = v0;

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267E6757C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_267EF8428();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  sub_267EF3CF8();
  v5[20] = swift_task_alloc();
  v7 = sub_267EF48A8();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v8 = sub_267EF2E38();
  v5[24] = v8;
  v5[25] = *(v8 - 8);
  v5[26] = swift_task_alloc();
  v9 = sub_267EF7DA8();
  v5[27] = v9;
  v5[28] = *(v9 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E67790, 0, 0);
}

void sub_267E67790()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v3 = sub_267EF8A08();
  __swift_project_value_buffer(v3, qword_280240FB0);
  OUTLINED_FUNCTION_142_2();
  v4 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_12_3();
  if (os_log_type_enabled(v4, v5))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_374(&dword_267B93000, v6, v7, "ContactDisambiguation# generating SMART contact disambiguation prompt");
    OUTLINED_FUNCTION_29_1();
  }

  sub_267EF7C18();
  if (v8)
  {
    OUTLINED_FUNCTION_89_13();
    OUTLINED_FUNCTION_1_0();
    v9 = OUTLINED_FUNCTION_4_1();
    v10(v9);
    OUTLINED_FUNCTION_171_3();
    sub_267B9F98C((v2 + 2), &qword_28022A620, &qword_267F08EC0);
    sub_267EF7898();

    v11 = v1[6];
    __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
    v12 = OUTLINED_FUNCTION_111_7();
    v13(v12);
    v14 = sub_267EF7E98();
    v15 = OUTLINED_FUNCTION_97(v14);
    v2[31] = OUTLINED_FUNCTION_137_3(v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_1_0();
    v20 = OUTLINED_FUNCTION_4_1();
    v21(v20);
    __swift_project_boxed_opaque_existential_0(v2 + 7, v2[10]);
    OUTLINED_FUNCTION_4_1();
    sub_267EF3B68();
    sub_267EF7D88();
    (*(v0 + 8))(v4);
    __swift_destroy_boxed_opaque_existential_0(v2 + 7);
    v22 = sub_267E68C54(v67);
    v2[32] = v22;
    v2[33] = v23;
    if (v22)
    {
      OUTLINED_FUNCTION_120_7();
      *(swift_task_alloc() + 16) = v11;
      OUTLINED_FUNCTION_165_2();

      v24 = OUTLINED_FUNCTION_141_3();
      v25(v24);
      v26 = sub_267EF8418();
      v28 = OUTLINED_FUNCTION_119_5(v26, v27);
      v29(v28);
      OUTLINED_FUNCTION_46_21();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v2[35] = v30;
      *v30 = v31;
      OUTLINED_FUNCTION_92_11(v30);
      OUTLINED_FUNCTION_93();

      __asm { BRAA            X5, X16 }
    }

    (*(v2[28] + 16))(v2[29], v2[30], v2[27]);
    v45 = sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_12_3();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v2[29];
    v49 = v2[27];
    if (v47)
    {
      v50 = OUTLINED_FUNCTION_48();
      v69[0] = OUTLINED_FUNCTION_52();
      *v50 = 136315138;
      v68 = sub_267EF7D98();
      v52 = v51;
      v53 = OUTLINED_FUNCTION_19_40();
      v54(v53);
      sub_267BA33E8(v68, v52, v69);
      OUTLINED_FUNCTION_528();

      *(v50 + 4) = v48;
      OUTLINED_FUNCTION_156_1();
      OUTLINED_FUNCTION_173_2(v55, v56, v57, v58);
      OUTLINED_FUNCTION_90_11();
      OUTLINED_FUNCTION_18_2();
    }

    else
    {

      v59 = OUTLINED_FUNCTION_19_40();
      v60(v59);
    }

    v61 = sub_267C4BE60();
    v62 = OUTLINED_FUNCTION_61_1(&type metadata for Errors, v61);
    OUTLINED_FUNCTION_118_6(v62, v63);

    v64 = OUTLINED_FUNCTION_115_6();
    v49(v64);
  }

  else
  {
    v34 = sub_267EF89F8();
    v35 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v35))
    {
      v36 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v36);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      OUTLINED_FUNCTION_26();
    }

    v42 = sub_267C4BE60();
    v43 = OUTLINED_FUNCTION_61_1(&type metadata for Errors, v42);
    OUTLINED_FUNCTION_170_3(v43, v44, xmmword_267F0CE20);
  }

  OUTLINED_FUNCTION_106_6();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_93();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267E67C10()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 288) = v0;

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267E67D28()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[27];
  sub_267BA1BFC(v0[32], v0[33]);

  v4 = OUTLINED_FUNCTION_68_0();
  v5(v4);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_17();

  return v6();
}

uint64_t sub_267E67E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  sub_267BA1BFC(*(v10 + 256), *(v10 + 264));

  v11 = OUTLINED_FUNCTION_44_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_26_0();
  v14(v13);
  OUTLINED_FUNCTION_106_6();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_36_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_267E67EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v4[4] = swift_task_alloc();
  sub_267EF3CF8();
  v4[5] = swift_task_alloc();
  v7 = sub_267EF48A8();
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v4[8] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[9] = v8;
  *v8 = v4;
  v8[1] = sub_267E68060;

  return sub_267E68E54(a2, a4);
}

uint64_t sub_267E68060()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 80) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_17();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_267E681A4()
{
  OUTLINED_FUNCTION_53();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_267EF8A08();
  v0[11] = OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  LOBYTE(v1) = sub_267EF95D8();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = v0[10];
    v6 = OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_52();
    *v6 = 136315138;
    v7 = [v5 patternId];
    sub_267EF9028();

    v8 = OUTLINED_FUNCTION_68_0();
    v11 = sub_267BA33E8(v8, v9, v10);

    *(v6 + 4) = v11;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_11_42();
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_168_3();
  OUTLINED_FUNCTION_66_18();
  sub_267EF47F8();
  sub_267EF4858();
  v17 = sub_267EF4158();
  OUTLINED_FUNCTION_22();
  v18 = OUTLINED_FUNCTION_37_1();
  v19(v18);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v17);
  sub_267EF4818();
  v23 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v23);
  v0[12] = sub_267EF4188();
  OUTLINED_FUNCTION_10(MEMORY[0x277D5BD48]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[13] = v24;
  *v24 = v25;
  v26 = OUTLINED_FUNCTION_113_8(v24);

  return v27(v26);
}

uint64_t sub_267E683C8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *(v4 + 112) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E684E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v4[4] = swift_task_alloc();
  sub_267EF3CF8();
  v4[5] = swift_task_alloc();
  v7 = sub_267EF48A8();
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v4[8] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[9] = v8;
  *v8 = v4;
  v8[1] = sub_267E6864C;

  return sub_267E69C8C(a2, a4);
}

uint64_t sub_267E6864C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 80) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_17();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_267E68790()
{
  OUTLINED_FUNCTION_53();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_267EF8A08();
  v0[11] = OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  LOBYTE(v1) = sub_267EF95D8();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = v0[10];
    v6 = OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_52();
    *v6 = 136315138;
    v7 = [v5 patternId];
    sub_267EF9028();

    v8 = OUTLINED_FUNCTION_68_0();
    v11 = sub_267BA33E8(v8, v9, v10);

    *(v6 + 4) = v11;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_11_42();
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_168_3();
  OUTLINED_FUNCTION_66_18();
  sub_267EF47F8();
  sub_267EF4858();
  v17 = sub_267EF4158();
  OUTLINED_FUNCTION_22();
  v18 = OUTLINED_FUNCTION_37_1();
  v19(v18);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v17);
  sub_267EF4818();
  v23 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v23);
  v0[12] = sub_267EF4188();
  OUTLINED_FUNCTION_10(MEMORY[0x277D5BD48]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[13] = v24;
  *v24 = v25;
  v26 = OUTLINED_FUNCTION_113_8(v24);

  return v27(v26);
}

uint64_t sub_267E689B4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *(v4 + 112) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E68AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v11 = sub_267EF89F8();
  v12 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v12))
  {
    v13 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v13);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v14, v15, v16, v17, v18, 2u);
    OUTLINED_FUNCTION_26();
    v19 = *(v10 + 80);
  }

  else
  {
    v19 = v11;
    v11 = *(v10 + 80);
  }

  v20 = OUTLINED_FUNCTION_26_0();
  v21(v20);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_36_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_267E68BBC()
{
  OUTLINED_FUNCTION_56();

  v1 = OUTLINED_FUNCTION_21_11();
  v2(v1);

  OUTLINED_FUNCTION_17();

  return v3();
}

void *sub_267E68C54(uint64_t a1)
{
  v2 = sub_267EF7DA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D564D8])
  {

    return &unk_267F0CFF8;
  }

  else if (v6 == *MEMORY[0x277D564E8])
  {

    return &unk_267F0CFD8;
  }

  else if (v6 == *MEMORY[0x277D564E0])
  {

    return &unk_267F0CFC8;
  }

  else if (v6 == *MEMORY[0x277D564F0])
  {

    return &unk_267F0CFB8;
  }

  else
  {
    if (v6 != *MEMORY[0x277D564F8])
    {
      (*(v3 + 8))(v5, v2);
      return 0;
    }

    return &unk_267F0CFE8;
  }
}

uint64_t sub_267E68E54(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB10, &qword_267F0D038);
  v3[30] = swift_task_alloc();
  v4 = sub_267EF2E38();
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  v5 = sub_267EF7DA8();
  v3[34] = v5;
  v3[35] = *(v5 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v6 = sub_267EF8428();
  v3[39] = v6;
  v3[40] = *(v6 - 8);
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E69020, 0, 0);
}

uint64_t sub_267E69020(uint64_t a1)
{
  v85 = v1;
  v4 = v1[40];
  v5 = OUTLINED_FUNCTION_157_0();
  v6(v5);
  v7 = sub_267EF8418();
  v1[42] = v8;
  v9 = v4 + 8;
  v10 = OUTLINED_FUNCTION_66();
  v11(v10);
  sub_267EF7C18();
  if (!v12)
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v40 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v40, qword_280240FB0);
    v41 = sub_267EF89F8();
    v42 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v42))
    {
      v43 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v43);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v44, v45, v46, v47, v48, 2u);
      OUTLINED_FUNCTION_26();
    }

    v49 = sub_267C4BE60();
    v50 = OUTLINED_FUNCTION_61_1(&type metadata for Errors, v49);
    OUTLINED_FUNCTION_170_3(v50, v51, xmmword_267F0CE20);
LABEL_11:
    OUTLINED_FUNCTION_21_30();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_63_1();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_72_15();
  OUTLINED_FUNCTION_172_3();
  OUTLINED_FUNCTION_14_4();
  v13 = OUTLINED_FUNCTION_115_6();
  v14(v13);
  OUTLINED_FUNCTION_171_3();
  sub_267B9F98C((v1 + 2), &qword_28022A620, &qword_267F08EC0);
  sub_267EF7898();

  __swift_project_boxed_opaque_existential_0((v9 + 16), *(v9 + 40));
  v15 = OUTLINED_FUNCTION_110_9();
  v16(v15);
  v17 = sub_267EF7E68();
  v18 = OUTLINED_FUNCTION_97(v17);
  v26 = OUTLINED_FUNCTION_136_2(v18, v19, v20, v21, v22, v23, v24, v25, v82);
  v1[43] = v26;
  OUTLINED_FUNCTION_172_3();
  v27 = OUTLINED_FUNCTION_38_0();
  v28(v27);
  __swift_project_boxed_opaque_existential_0(v1 + 7, v1[10]);
  OUTLINED_FUNCTION_38_0();
  sub_267EF3B68();
  sub_267EF7D88();
  (*(v2 + 8))(v3);
  __swift_destroy_boxed_opaque_existential_0(v1 + 7);
  v29 = *(v7 + 16);
  v30 = OUTLINED_FUNCTION_66();
  v29(v30);
  v31 = OUTLINED_FUNCTION_66();
  v33 = v32(v31);
  if (v33 == *MEMORY[0x277D564D8])
  {
    sub_267EF4A68();
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    v38 = swift_task_alloc();
    v1[44] = v38;
    *v38 = v1;
    v38[1] = sub_267E696D4;
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_63_1();

    return MEMORY[0x2821B9190]();
  }

  if (v33 == *MEMORY[0x277D564E8])
  {
    v54 = swift_task_alloc();
    v1[48] = v54;
    *v54 = v1;
    v54[1] = sub_267E69938;
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_63_1();

    return MEMORY[0x2821B91A8]();
  }

  if (v33 == *MEMORY[0x277D564E0])
  {
    v56 = swift_task_alloc();
    v1[50] = v56;
    *v56 = v1;
    v56[1] = sub_267E69A54;
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_63_1();

    return MEMORY[0x2821B91A0]();
  }

  if (v33 == *MEMORY[0x277D564F0])
  {
    v58 = swift_task_alloc();
    v1[52] = v58;
    *v58 = v1;
    v58[1] = sub_267E69B70;
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_63_1();

    return MEMORY[0x2821B91B0]();
  }

  if (v33 != *MEMORY[0x277D564F8])
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v62 = OUTLINED_FUNCTION_134_3();
    __swift_project_value_buffer(v62, qword_280240FB0);
    v63 = OUTLINED_FUNCTION_158_3();
    v29(v63);
    v64 = sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_12_3();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v1[36];
    if (v66)
    {
      OUTLINED_FUNCTION_48();
      v84[0] = OUTLINED_FUNCTION_55_0();
      *v9 = 136315138;
      v83 = sub_267EF7D98();
      v69 = v68;
      v70 = OUTLINED_FUNCTION_27_32();
      v26(v70);
      sub_267BA33E8(v83, v69, v84);
      OUTLINED_FUNCTION_61_2();

      *(v9 + 4) = v67;
      OUTLINED_FUNCTION_156_1();
      _os_log_impl(v71, v72, v73, v74, v9, 0xCu);
      OUTLINED_FUNCTION_90_11();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {

      v75 = OUTLINED_FUNCTION_27_32();
      v26(v75);
    }

    v76 = sub_267C4BE60();
    v77 = OUTLINED_FUNCTION_61_1(&type metadata for Errors, v76);
    OUTLINED_FUNCTION_118_6(v77, v78);

    v79 = OUTLINED_FUNCTION_115_6();
    v26(v79);
    v80 = OUTLINED_FUNCTION_44_0();
    v26(v80);
    goto LABEL_11;
  }

  v60 = swift_task_alloc();
  v1[46] = v60;
  *v60 = v1;
  v60[1] = sub_267E6981C;
  OUTLINED_FUNCTION_1_80();
  OUTLINED_FUNCTION_63_1();

  return MEMORY[0x2821B91B8]();
}

uint64_t sub_267E696D4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v3[12] = v2;
  v3[13] = v5;
  v3[14] = v0;
  OUTLINED_FUNCTION_22_2();
  *v6 = *v2;
  *(v7 + 360) = v0;

  OUTLINED_FUNCTION_22_2();
  sub_267B9F98C(*(v1 + 240), &qword_28022CB10, &qword_267F0D038);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E6981C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[15] = v1;
  v2[16] = v4;
  v2[17] = v0;
  OUTLINED_FUNCTION_22_2();
  *v5 = *v1;
  *(v6 + 376) = v0;

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E69938()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[18] = v1;
  v2[19] = v4;
  v2[20] = v0;
  OUTLINED_FUNCTION_22_2();
  *v5 = *v1;
  *(v6 + 392) = v0;

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E69A54()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[21] = v1;
  v2[22] = v4;
  v2[23] = v0;
  OUTLINED_FUNCTION_22_2();
  *v5 = *v1;
  *(v6 + 408) = v0;

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E69B70()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[24] = v1;
  v2[25] = v4;
  v2[26] = v0;
  OUTLINED_FUNCTION_22_2();
  *v5 = *v1;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E69C8C(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CB10, &qword_267F0D038);
  v3[30] = swift_task_alloc();
  v4 = sub_267EF2E38();
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  v5 = sub_267EF7DA8();
  v3[34] = v5;
  v3[35] = *(v5 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v6 = sub_267EF8428();
  v3[39] = v6;
  v3[40] = *(v6 - 8);
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E69E58, 0, 0);
}

uint64_t sub_267E69E58(uint64_t a1)
{
  v85 = v1;
  v4 = v1[40];
  v5 = OUTLINED_FUNCTION_157_0();
  v6(v5);
  v7 = sub_267EF8418();
  v1[42] = v8;
  v9 = v4 + 8;
  v10 = OUTLINED_FUNCTION_66();
  v11(v10);
  sub_267EF7C18();
  if (!v12)
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v40 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v40, qword_280240FB0);
    v41 = sub_267EF89F8();
    v42 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v42))
    {
      v43 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v43);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v44, v45, v46, v47, v48, 2u);
      OUTLINED_FUNCTION_26();
    }

    v49 = sub_267C4BE60();
    v50 = OUTLINED_FUNCTION_61_1(&type metadata for Errors, v49);
    OUTLINED_FUNCTION_170_3(v50, v51, xmmword_267F0CE20);
LABEL_11:
    OUTLINED_FUNCTION_21_30();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_63_1();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_72_15();
  OUTLINED_FUNCTION_172_3();
  OUTLINED_FUNCTION_14_4();
  v13 = OUTLINED_FUNCTION_115_6();
  v14(v13);
  OUTLINED_FUNCTION_171_3();
  sub_267B9F98C((v1 + 2), &qword_28022A620, &qword_267F08EC0);
  sub_267EF7898();

  __swift_project_boxed_opaque_existential_0((v9 + 16), *(v9 + 40));
  v15 = OUTLINED_FUNCTION_110_9();
  v16(v15);
  v17 = sub_267EF7E68();
  v18 = OUTLINED_FUNCTION_97(v17);
  v26 = OUTLINED_FUNCTION_136_2(v18, v19, v20, v21, v22, v23, v24, v25, v82);
  v1[43] = v26;
  OUTLINED_FUNCTION_172_3();
  v27 = OUTLINED_FUNCTION_38_0();
  v28(v27);
  __swift_project_boxed_opaque_existential_0(v1 + 7, v1[10]);
  OUTLINED_FUNCTION_38_0();
  sub_267EF3B68();
  sub_267EF7D88();
  (*(v2 + 8))(v3);
  __swift_destroy_boxed_opaque_existential_0(v1 + 7);
  v29 = *(v7 + 16);
  v30 = OUTLINED_FUNCTION_66();
  v29(v30);
  v31 = OUTLINED_FUNCTION_66();
  v33 = v32(v31);
  if (v33 == *MEMORY[0x277D564D8])
  {
    sub_267EF4A68();
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    v38 = swift_task_alloc();
    v1[44] = v38;
    *v38 = v1;
    v38[1] = sub_267E6A50C;
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_63_1();

    return MEMORY[0x2821B9190]();
  }

  if (v33 == *MEMORY[0x277D564E8])
  {
    v54 = swift_task_alloc();
    v1[48] = v54;
    *v54 = v1;
    v54[1] = sub_267E6A770;
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_63_1();

    return MEMORY[0x2821B91A8]();
  }

  if (v33 == *MEMORY[0x277D564E0])
  {
    v56 = swift_task_alloc();
    v1[50] = v56;
    *v56 = v1;
    v56[1] = sub_267E6A88C;
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_63_1();

    return MEMORY[0x2821B91A0]();
  }

  if (v33 == *MEMORY[0x277D564F0])
  {
    v58 = swift_task_alloc();
    v1[52] = v58;
    *v58 = v1;
    v58[1] = sub_267E6A9A8;
    OUTLINED_FUNCTION_1_80();
    OUTLINED_FUNCTION_63_1();

    return MEMORY[0x2821B91B0]();
  }

  if (v33 != *MEMORY[0x277D564F8])
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v62 = OUTLINED_FUNCTION_134_3();
    __swift_project_value_buffer(v62, qword_280240FB0);
    v63 = OUTLINED_FUNCTION_158_3();
    v29(v63);
    v64 = sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_12_3();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v1[36];
    if (v66)
    {
      OUTLINED_FUNCTION_48();
      v84[0] = OUTLINED_FUNCTION_55_0();
      *v9 = 136315138;
      v83 = sub_267EF7D98();
      v69 = v68;
      v70 = OUTLINED_FUNCTION_27_32();
      v26(v70);
      sub_267BA33E8(v83, v69, v84);
      OUTLINED_FUNCTION_61_2();

      *(v9 + 4) = v67;
      OUTLINED_FUNCTION_156_1();
      _os_log_impl(v71, v72, v73, v74, v9, 0xCu);
      OUTLINED_FUNCTION_90_11();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {

      v75 = OUTLINED_FUNCTION_27_32();
      v26(v75);
    }

    v76 = sub_267C4BE60();
    v77 = OUTLINED_FUNCTION_61_1(&type metadata for Errors, v76);
    OUTLINED_FUNCTION_118_6(v77, v78);

    v79 = OUTLINED_FUNCTION_115_6();
    v26(v79);
    v80 = OUTLINED_FUNCTION_44_0();
    v26(v80);
    goto LABEL_11;
  }

  v60 = swift_task_alloc();
  v1[46] = v60;
  *v60 = v1;
  v60[1] = sub_267E6A654;
  OUTLINED_FUNCTION_1_80();
  OUTLINED_FUNCTION_63_1();

  return MEMORY[0x2821B91B8]();
}

uint64_t sub_267E6A50C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v3[12] = v2;
  v3[13] = v5;
  v3[14] = v0;
  OUTLINED_FUNCTION_22_2();
  *v6 = *v2;
  *(v7 + 360) = v0;

  OUTLINED_FUNCTION_22_2();
  sub_267B9F98C(*(v1 + 240), &qword_28022CB10, &qword_267F0D038);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E6A654()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[15] = v1;
  v2[16] = v4;
  v2[17] = v0;
  OUTLINED_FUNCTION_22_2();
  *v5 = *v1;
  *(v6 + 376) = v0;

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E6A770()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[18] = v1;
  v2[19] = v4;
  v2[20] = v0;
  OUTLINED_FUNCTION_22_2();
  *v5 = *v1;
  *(v6 + 392) = v0;

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E6A88C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[21] = v1;
  v2[22] = v4;
  v2[23] = v0;
  OUTLINED_FUNCTION_22_2();
  *v5 = *v1;
  *(v6 + 408) = v0;

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E6A9A8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[24] = v1;
  v2[25] = v4;
  v2[26] = v0;
  OUTLINED_FUNCTION_22_2();
  *v5 = *v1;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E6AAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_24_36();
  v12 = OUTLINED_FUNCTION_53_18();
  v13(v12);

  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_40();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_267E6AB64()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_98_10();
  v0 = OUTLINED_FUNCTION_21_11();
  v1(v0);
  OUTLINED_FUNCTION_21_30();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E6AC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_24_36();
  v12 = OUTLINED_FUNCTION_53_18();
  v13(v12);

  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_40();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_267E6ACA8()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_98_10();
  v0 = OUTLINED_FUNCTION_21_11();
  v1(v0);
  OUTLINED_FUNCTION_21_30();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E6AD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_24_36();
  v12 = OUTLINED_FUNCTION_53_18();
  v13(v12);

  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_40();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_267E6ADEC()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_98_10();
  v0 = OUTLINED_FUNCTION_21_11();
  v1(v0);
  OUTLINED_FUNCTION_21_30();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E6AE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_24_36();
  v12 = OUTLINED_FUNCTION_53_18();
  v13(v12);

  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_40();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_267E6AF30()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_98_10();
  v0 = OUTLINED_FUNCTION_21_11();
  v1(v0);
  OUTLINED_FUNCTION_21_30();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E6AFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_24_36();
  v12 = OUTLINED_FUNCTION_53_18();
  v13(v12);

  OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_40();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_267E6B074()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_98_10();
  v0 = OUTLINED_FUNCTION_21_11();
  v1(v0);
  OUTLINED_FUNCTION_21_30();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E6B118(uint64_t a1, uint64_t a2, id a3, uint64_t a4)
{
  if (sub_267BBDEAC() == a3 && v5 == a4)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_267EF9EA8();
  }

  return v7 & 1;
}

uint64_t sub_267E6B190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  *(v6 + 16) = a6;
  v13 = swift_task_alloc();
  *(v6 + 24) = v13;
  *v13 = v6;
  v13[1] = sub_267E71518;
  v14 = MEMORY[0x277D56578];

  return MEMORY[0x2821B9200](a1, a2, a3, a4, a5, v12, v14);
}

uint64_t sub_267E6B2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  *(v6 + 16) = a6;
  v13 = swift_task_alloc();
  *(v6 + 24) = v13;
  *v13 = v6;
  v13[1] = sub_267E6B3B0;
  v14 = MEMORY[0x277D56578];

  return MEMORY[0x2821B9220](a1, a2, a3, a4, a5, v12, v14);
}

uint64_t sub_267E6B3B0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267E6B490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  *(v6 + 16) = a6;
  v13 = swift_task_alloc();
  *(v6 + 24) = v13;
  *v13 = v6;
  v13[1] = sub_267E71518;
  v14 = MEMORY[0x277D56578];

  return MEMORY[0x2821B9210](a1, a2, a3, a4, a5, v12, v14);
}

uint64_t sub_267E6B5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  *(v6 + 16) = a6;
  v13 = swift_task_alloc();
  *(v6 + 24) = v13;
  *v13 = v6;
  v13[1] = sub_267E71518;
  v14 = MEMORY[0x277D56578];

  return MEMORY[0x2821B9208](a1, a2, a3, a4, a5, v12, v14);
}

uint64_t sub_267E6B6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  *(v6 + 16) = a6;
  v13 = swift_task_alloc();
  *(v6 + 24) = v13;
  *v13 = v6;
  v13[1] = sub_267E71518;
  v14 = MEMORY[0x277D56578];

  return MEMORY[0x2821B9218](a1, a2, a3, a4, a5, v12, v14);
}

void sub_267E6B7C0()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v162 = v2;
  v4 = v3;
  v6 = v5;
  sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v164 = v8;
  v165 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v158 - v10;
  sub_267EF4BE8();
  OUTLINED_FUNCTION_58();
  v167 = v13;
  *&v168 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v166 = v14;
  OUTLINED_FUNCTION_26_2();
  v15 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_0();
  v21 = v20 - v19;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v22 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v22, qword_280240FB0);
  v23 = *(v17 + 16);
  v163 = v4;
  v23(v21, v4, v15);
  v169 = v0;
  v24 = sub_267EF89F8();
  v25 = sub_267EF95C8();
  v26 = &unk_267EFC000;
  if (os_log_type_enabled(v24, v25))
  {
    v27 = OUTLINED_FUNCTION_48();
    v160 = v6;
    v6 = v27;
    v28 = OUTLINED_FUNCTION_52();
    v159 = v0;
    v29 = v28;
    v173[0] = v28;
    *v6 = 136315138;
    sub_267E71494(&qword_28022AF50, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v30 = sub_267EF9E58();
    v32 = v31;
    (*(v17 + 8))(v21, v15);
    sub_267BA33E8(v30, v32, v173);
    OUTLINED_FUNCTION_528();
    v26 = &unk_267EFC000;

    *(v6 + 4) = v30;
    OUTLINED_FUNCTION_173_2(&dword_267B93000, v24, v25, "#SendContactDisambiguation received input: %s");
    __swift_destroy_boxed_opaque_existential_0(v29);
    v1 = v159;
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_127_6();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v17 + 8))(v21, v15);
  }

  sub_267EF4B88();
  v33 = v164;
  v34 = OUTLINED_FUNCTION_5_29();
  if (v35(v34) == *MEMORY[0x277D5C150])
  {
    v36 = OUTLINED_FUNCTION_5_29();
    v37(v36);
    (*(v167 + 32))(v166, v11, v168);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
    v38 = sub_267EF4928();
    v39 = sub_267EF4908();
    sub_267E65350();
    v41 = v40;

    if (v41)
    {
      v42 = v41;
      v43 = sub_267EF89F8();
      sub_267EF95D8();

      if (OUTLINED_FUNCTION_99())
      {
        OUTLINED_FUNCTION_48();
        v173[0] = OUTLINED_FUNCTION_100_8();
        *v39 = v26[9];
        v44 = v42;
        v160 = v6;
        v45 = v44;
        v46 = [v44 description];
        sub_267EF9028();

        v47 = OUTLINED_FUNCTION_61_4();
        v50 = sub_267BA33E8(v47, v48, v49);

        *(v39 + 4) = v50;
        OUTLINED_FUNCTION_127_6();
        OUTLINED_FUNCTION_59_2(&dword_267B93000, v51, v52, "#SendContactDisambiguation Selected person %s");
        OUTLINED_FUNCTION_11_42();
        OUTLINED_FUNCTION_40_0();
      }

      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297A8, &unk_267EFEFA0);
      v54 = OUTLINED_FUNCTION_47_3(v53);
      *(v54 + 16) = xmmword_267EFC020;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v56 = OUTLINED_FUNCTION_47_3(v55);
      *(v56 + 16) = xmmword_267EFCA40;
      *(v56 + 32) = v42;
      *(v54 + 32) = v56;
      *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow49SendMessageContactNeedsDisambiguationFlowStrategy_selectedPersons) = v54;
      v57 = v42;

      sub_267EF3E58();
    }

    else
    {
      v72 = sub_267EF89F8();
      v73 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v73))
      {
        v74 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v74);
        OUTLINED_FUNCTION_64_1();
        _os_log_impl(v75, v76, v77, v78, v79, 2u);
        OUTLINED_FUNCTION_26();
      }

      sub_267EF3E68();
    }

    (*(v167 + 8))(v166, v168);
    goto LABEL_80;
  }

  v58 = *(v33 + 8);
  v59 = OUTLINED_FUNCTION_5_29();
  v58(v59);
  v60 = v161;
  sub_267EF4B88();
  sub_267E57DFC(v60, &v171);
  v61 = OUTLINED_FUNCTION_5_29();
  v58(v61);
  if (!v172)
  {
    sub_267B9F98C(&v171, &unk_28022BBF0, &unk_267F01C60);
    v80 = sub_267EF89F8();
    v81 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v81))
    {
      v82 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v82);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v83, v84, v85, v86, v87, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_267EF3E68();
    goto LABEL_80;
  }

  sub_267BE58F4(&v171, v173);
  __swift_project_boxed_opaque_existential_0(v173, v174);
  v62 = OUTLINED_FUNCTION_38_0();
  if (v63(v62))
  {
    v64 = sub_267EF89F8();
    v65 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v65))
    {
      v66 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v66);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v67, v68, v69, v70, v71, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_267EF3E48();
    goto LABEL_79;
  }

  __swift_project_boxed_opaque_existential_0(v173, v174);
  v88 = OUTLINED_FUNCTION_38_0();
  if (v89(v88))
  {
    v90 = sub_267EF89F8();
    v91 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v91))
    {
      v92 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v92);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v93, v94, v95, v96, v97, 2u);
      OUTLINED_FUNCTION_26();
    }

LABEL_27:
    sub_267EF3E68();
    goto LABEL_79;
  }

  v98 = *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver + 24);
  v99 = *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver), v98);
  v100 = sub_267EBE108(v173, v98, v99);
  v101 = OBJC_IVAR____TtC16SiriMessagesFlow49SendMessageContactNeedsDisambiguationFlowStrategy_selectedPersons;
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow49SendMessageContactNeedsDisambiguationFlowStrategy_selectedPersons) = v100;

  if (!*(*(v1 + v101) + 16))
  {
    v167 = v101;
    v116 = sub_267EF89F8();
    v117 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v117))
    {
      v118 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v118);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v119, v120, v121, v122, v123, 2u);
      OUTLINED_FUNCTION_26();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
    v124 = sub_267EF4928();
    sub_267E664F0();
    v126 = v125;

    v127 = sub_267BAF0DC(v126);
    if (v127)
    {
      v128 = v127;
      v159 = v1;
      v160 = v6;
      *&v171 = MEMORY[0x277D84F90];
      sub_267C724EC();
      if (v128 < 0)
      {
        goto LABEL_83;
      }

      v129 = 0;
      v130 = v171;
      v168 = xmmword_267EFCA40;
      do
      {
        if ((v126 & 0xC000000000000001) != 0)
        {
          v131 = MEMORY[0x26D609870](v129, v126);
        }

        else
        {
          v131 = *(v126 + 8 * v129 + 32);
        }

        v132 = v131;
        v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
        v134 = OUTLINED_FUNCTION_47_3(v133);
        *(v134 + 16) = v168;
        *(v134 + 32) = v132;
        *&v171 = v130;
        v136 = *(v130 + 16);
        v135 = *(v130 + 24);
        if (v136 >= v135 >> 1)
        {
          OUTLINED_FUNCTION_8_2(v135);
          sub_267C724EC();
          v130 = v171;
        }

        ++v129;
        *(v130 + 16) = v136 + 1;
        *(v130 + 8 * v136 + 32) = v134;
      }

      while (v128 != v129);

      OUTLINED_FUNCTION_127_6();
      v1 = v159;
    }

    else
    {

      v130 = MEMORY[0x277D84F90];
    }

    v143 = v167;
    *(v1 + v167) = v130;

    if (!*(*(v1 + v143) + 16))
    {
      goto LABEL_27;
    }

    v102 = sub_267EF89F8();
    v103 = sub_267EF95D8();

    if (!os_log_type_enabled(v102, v103))
    {
      goto LABEL_78;
    }

    v104 = OUTLINED_FUNCTION_48();
    v169 = OUTLINED_FUNCTION_52();
    *&v171 = v169;
    *v104 = 136315138;
    v144 = *(v1 + v143);
    v145 = MEMORY[0x277D84F90];
    if (!*(v144 + 16))
    {
      goto LABEL_76;
    }

    OUTLINED_FUNCTION_125_6();
    OUTLINED_FUNCTION_166_2();
    v145 = v170;
    while (1)
    {
      v146 = *(v144 + 32);
      if (v146 >> 62)
      {
        if (sub_267EF9A68())
        {
LABEL_65:
          if ((v146 & 0xC000000000000001) != 0)
          {

            v148 = MEMORY[0x26D609870](0, v146);
          }

          else
          {
            if (!*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_82;
            }

            v147 = *(v146 + 32);

            v148 = v147;
          }

          v149 = v148;
          v150 = [v148 displayName];

          sub_267EF9028();
        }
      }

      else if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      OUTLINED_FUNCTION_151_2();
      if (v113)
      {
        v152 = OUTLINED_FUNCTION_8_2(v151);
        sub_267BE8B74(v152, v146, 1);
        v145 = v170;
      }

      OUTLINED_FUNCTION_129_3();
      if (v114)
      {

        OUTLINED_FUNCTION_127_6();
        v103 = v168;
        v104 = v167;
LABEL_76:
        v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
        v154 = MEMORY[0x26D608FD0](v145, v153);
        v156 = v155;

        v157 = sub_267BA33E8(v154, v156, &v171);

        *(v104 + 4) = v157;
        v142 = "#SendContactDisambiguation Found recipients in SmsIntent: %s";
LABEL_77:
        _os_log_impl(&dword_267B93000, v102, v103, v142, v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v169);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
LABEL_78:

        sub_267EF3E58();
LABEL_79:
        __swift_destroy_boxed_opaque_existential_0(v173);
LABEL_80:
        OUTLINED_FUNCTION_47();
        return;
      }
    }
  }

  v102 = sub_267EF89F8();
  v103 = sub_267EF95D8();

  if (!os_log_type_enabled(v102, v103))
  {
    goto LABEL_78;
  }

  v104 = OUTLINED_FUNCTION_48();
  v169 = OUTLINED_FUNCTION_52();
  *&v171 = v169;
  *v104 = v26[9];
  v105 = *(v1 + v101);
  v106 = MEMORY[0x277D84F90];
  if (!*(v105 + 16))
  {
LABEL_57:
    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v138 = MEMORY[0x26D608FD0](v106, v137);
    v140 = v139;

    v141 = sub_267BA33E8(v138, v140, &v171);

    *(v104 + 4) = v141;
    v142 = "#SendContactDisambiguation Found recipients in SRR: %s";
    goto LABEL_77;
  }

  OUTLINED_FUNCTION_125_6();
  OUTLINED_FUNCTION_166_2();
  v106 = v170;
  while (1)
  {
    v107 = *(v105 + 32);
    if (v107 >> 62)
    {
      break;
    }

    if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

LABEL_39:
    OUTLINED_FUNCTION_151_2();
    if (v113)
    {
      v115 = OUTLINED_FUNCTION_8_2(v112);
      sub_267BE8B74(v115, v107, 1);
      v106 = v170;
    }

    OUTLINED_FUNCTION_129_3();
    if (v114)
    {

      OUTLINED_FUNCTION_127_6();
      v103 = v168;
      v104 = v167;
      goto LABEL_57;
    }
  }

  if (!sub_267EF9A68())
  {
    goto LABEL_39;
  }

LABEL_34:
  if ((v107 & 0xC000000000000001) != 0)
  {

    v109 = MEMORY[0x26D609870](0, v107);
    goto LABEL_37;
  }

  if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v108 = *(v107 + 32);

    v109 = v108;
LABEL_37:
    v110 = v109;
    v111 = [v109 displayName];

    sub_267EF9028();

    goto LABEL_39;
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
}

uint64_t sub_267E6C534()
{
  OUTLINED_FUNCTION_12();
  v1[20] = v2;
  v1[21] = v0;
  v3 = sub_267EF2E38();
  v1[22] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[23] = v4;
  v1[24] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF7DA8();
  v1[25] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[26] = v6;
  v1[27] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF44C8();
  v1[28] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[29] = v8;
  v1[30] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF43F8();
  v1[31] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[32] = v10;
  v1[33] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E6CAC0()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297B0, &unk_267EFE4E0);
  v1[5] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF44C8();
  v1[8] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267E6CBC4()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC16SiriMessagesFlow49SendMessageContactNeedsDisambiguationFlowStrategy_selectedPersons;
  v3 = v0[10];
  if (*(*(v1 + OBJC_IVAR____TtC16SiriMessagesFlow49SendMessageContactNeedsDisambiguationFlowStrategy_selectedPersons) + 16))
  {
    v5 = v0[8];
    v4 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
    v24 = sub_267EF4918();
    sub_267EF4938();
    v6 = sub_267EF44A8();
    v8 = v7;
    (*(v4 + 8))(v3, v5);
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
    v10 = *(v1 + v2);

    v11 = sub_267EF4918();
    v12 = sub_267EB7470(v11);
    v13 = sub_267E6393C(v9, v10, v12);

    v14 = sub_267D28C4C(v24, v13);
    v15 = *(v1 + v2);
    if (*(v15 + 16))
    {
      v16 = *(v15 + 32);
      if (sub_267BAF0DC(v16))
      {
        sub_267BBD0EC(0, (v16 & 0xC000000000000001) == 0, v16);
        if ((v16 & 0xC000000000000001) != 0)
        {

          MEMORY[0x26D609870](0, v16);
        }

        else
        {
          *(v16 + 32);
        }

        sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      }
    }

    v17 = v14;
    sub_267EF4388();
    OUTLINED_FUNCTION_44_0();
    sub_267EF4508();

    v18 = OUTLINED_FUNCTION_44_0();
    v19(v18);

    OUTLINED_FUNCTION_17();
  }

  else
  {
    v21 = sub_267C266B0();
    OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v21);
    *v22 = 0xD000000000000015;
    v22[1] = 0x8000000267F1C230;
    swift_willThrow();

    OUTLINED_FUNCTION_17();
  }

  return v20();
}

uint64_t sub_267E6CE84()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_267EF4158();
  v1[10] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E6D104()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267E6D258()
{
  OUTLINED_FUNCTION_12();
  v0 = OUTLINED_FUNCTION_152_3();
  v1(v0);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E6D2C4()
{
  OUTLINED_FUNCTION_12();
  v0 = OUTLINED_FUNCTION_152_3();
  v1(v0);

  OUTLINED_FUNCTION_17();

  return v2();
}

void sub_267E6D330()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v71 = v2;
  v70 = v3;
  v4 = sub_267EF53D8();
  OUTLINED_FUNCTION_58();
  v73 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v64 - v9;
  v11 = sub_267EF2E38();
  OUTLINED_FUNCTION_58();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_0();
  v17 = v16 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229750, &unk_267F01E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFCE30;
  if (qword_280228898 != -1)
  {
    swift_once();
  }

  v72 = v10;
  v19 = qword_280241050;
  v20 = sub_267EF54C8();
  v21 = MEMORY[0x277D5E210];
  *(inited + 56) = v20;
  *(inited + 64) = v21;
  *(inited + 32) = v19;
  v22 = qword_280228888;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_17_29();
    swift_once();
  }

  v23 = qword_280241040;
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  *(inited + 104) = sub_267C586C4(&qword_280229758, &unk_28022CF00, &unk_267EFE460);
  *(inited + 72) = v23;
  v24 = qword_280228870;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_32_22(&qword_280228870);
  }

  v25 = qword_280241028;
  *(inited + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229760, &unk_267F004C0);
  *(inited + 144) = sub_267C586C4(&qword_280229768, &qword_280229760, &unk_267F004C0);
  *(inited + 112) = v25;
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);

  sub_267EF3B68();
  type metadata accessor for ContactIdOrBase64PersonIdentifierProvider();
  v26 = swift_initStackObject();
  sub_267E6FE5C(v71, v17, v26, v27, v28, v29, v30, v31, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74[0], v74[1]);
  v33 = v32;
  (*(v13 + 8))(v17, v11);
  sub_267C37CA8(inited, v33, v1);

  swift_setDeallocating();
  sub_267DB70BC();
  v34 = v72;
  sub_267E6DA84();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v35 = sub_267EF8A08();
  __swift_project_value_buffer(v35, qword_280240FB0);
  v36 = v73;
  v37 = *(v73 + 16);
  v38 = v69;
  v37(v69, v34, v4);
  v39 = sub_267EF89F8();
  HIDWORD(v67) = sub_267EF95D8();
  if (os_log_type_enabled(v39, BYTE4(v67)))
  {
    v40 = OUTLINED_FUNCTION_48();
    v65 = v40;
    v66 = OUTLINED_FUNCTION_52();
    v75 = v66;
    *v40 = 136315138;
    v41 = v68;
    v42 = OUTLINED_FUNCTION_61_4();
    (v37)(v42);
    sub_267EF5458();
    v74[3] = v4;
    v74[4] = sub_267E71494(&qword_28022BAF0, MEMORY[0x277D5DC70], MEMORY[0x277D5DC50]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v74);
    v37(boxed_opaque_existential_0, v41, v4);
    v44 = sub_267EF5448();
    v46 = v45;
    v64 = v37;
    v47 = v4;
    v48 = *(v73 + 8);
    v48(v41, v4);
    v69 = v48;
    v48(v38, v4);
    __swift_destroy_boxed_opaque_existential_0(v74);
    sub_267BA33E8(v44, v46, &v75);
    OUTLINED_FUNCTION_53_0();
    v36 = v73;

    v49 = v65;
    *(v65 + 1) = v44;
    _os_log_impl(&dword_267B93000, v39, BYTE4(v67), "SendContactDisambiguation# submitting NLv4 dialog act: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    v34 = v72;
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();

    v50 = v64;
  }

  else
  {

    v69 = *(v36 + 8);
    v69(v38, v4);
    v50 = v37;
    v47 = v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v51 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_267EFC020;
  v50(v52 + v51, v34, v47);
  sub_267EF4088();
  sub_267E6417C();
  v54 = v53;

  v55 = sub_267EF89F8();
  v56 = sub_267EF95D8();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = OUTLINED_FUNCTION_48();
    v58 = OUTLINED_FUNCTION_52();
    v74[0] = v58;
    *v57 = 136315138;
    v59 = sub_267EF8AE8();
    v60 = MEMORY[0x26D608FD0](v54, v59);
    v62 = sub_267BA33E8(v60, v61, v74);

    *(v57 + 4) = v62;
    _os_log_impl(&dword_267B93000, v55, v56, "SendContactDisambiguation# Donating RRaaS entities: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_45_2();
  }

  sub_267EF4058();
  v63 = OUTLINED_FUNCTION_61_4();
  (v69)(v63);
  OUTLINED_FUNCTION_47();
}

void sub_267E6DA84()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C288, &unk_267F09BF0);
  OUTLINED_FUNCTION_58();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v35 = v32 - v8;
  v44 = MEMORY[0x277D84F90];
  v40 = v1;
  v9 = sub_267BAF0DC(v1);
  if (!v9)
  {
LABEL_16:
    sub_267BC8938();

    OUTLINED_FUNCTION_47();
    return;
  }

  if (v9 >= 1)
  {
    v32[1] = v3;
    v11 = 0;
    v37 = v6 + 8;
    v38 = v40 & 0xC000000000000001;
    *&v10 = 138412290;
    v34 = v10;
    *&v10 = 136315138;
    v33 = v10;
    v36 = v4;
    v39 = v9;
    do
    {
      if (v38)
      {
        v12 = MEMORY[0x26D609870](v11, v40);
      }

      else
      {
        v12 = *(v40 + 8 * v11 + 32);
      }

      v13 = v12;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v14 = sub_267EF8A08();
      __swift_project_value_buffer(v14, qword_280240FB0);
      v15 = v13;
      v16 = sub_267EF89F8();
      v17 = sub_267EF95D8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_48();
        v19 = swift_slowAlloc();
        *v18 = v34;
        *(v18 + 4) = v15;
        *v19 = v15;
        v20 = v15;
        _os_log_impl(&dword_267B93000, v16, v17, "SendContactDisambiguation# adding context for intentPerson %@", v18, 0xCu);
        sub_267B9F98C(v19, &unk_280229E30, &unk_267EFC270);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_45_2();
      }

      v21 = sub_267EF6268();
      OUTLINED_FUNCTION_97(v21);
      v41 = sub_267EF6258();
      v22 = sub_267EF6168();
      OUTLINED_FUNCTION_97(v22);
      sub_267EF6158();
      v23 = [v15 displayName];
      sub_267EF9028();

      sub_267EF6148();

      sub_267EF7028();
      v24 = sub_267EF7038();
      v43 = v15;
      v24(&v42, &v43);

      v25 = sub_267EF5C08();

      if (v25)
      {
        v26 = sub_267EF65F8();
        OUTLINED_FUNCTION_97(v26);
        sub_267EF65E8();

        sub_267EF56B8();
        OUTLINED_FUNCTION_53_0();

        sub_267EF5D18();

        sub_267EF6138();
      }

      v27 = OUTLINED_FUNCTION_19_25();
      v28(v27);

      sub_267EF6218();

      v29 = sub_267EF6448();
      OUTLINED_FUNCTION_97(v29);
      sub_267EF6438();
      sub_267EF61F8();

      MEMORY[0x26D608F90](v30);
      v31 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v31 >> 1)
      {
        OUTLINED_FUNCTION_8_2(v31);
        sub_267EF9328();
      }

      ++v11;
      sub_267EF9368();
    }

    while (v39 != v11);
    goto LABEL_16;
  }

  __break(1u);
}