uint64_t sub_267E99F98()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E9A0C4()
{
  OUTLINED_FUNCTION_56();
  (*(v0[31] + 8))(v0[32], v0[30]);
  v1 = OUTLINED_FUNCTION_21_11();
  v2(v1);
  __swift_project_boxed_opaque_existential_0((v0[24] + 16), *(v0[24] + 40));
  v3 = OUTLINED_FUNCTION_12_48();
  v4(v3);
  __swift_project_boxed_opaque_existential_0(v0 + 12, v0[15]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[52] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_7_52(v5);

  return MEMORY[0x2821BB5D0](v7, v8, v9);
}

uint64_t sub_267E9A1A4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E9A2C0()
{
  OUTLINED_FUNCTION_56();
  __swift_project_boxed_opaque_existential_0((v0[24] + 16), *(v0[24] + 40));
  v1 = OUTLINED_FUNCTION_12_48();
  v2(v1);
  __swift_project_boxed_opaque_existential_0(v0 + 12, v0[15]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[52] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_7_52(v3);

  return MEMORY[0x2821BB5D0](v5, v6, v7);
}

uint64_t sub_267E9A370()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *(v4 + 424) = v0;

  if (v0)
  {
    v5 = sub_267E9A740;
  }

  else
  {
    v5 = sub_267E9A474;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_267E9A474()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OUTLINED_FUNCTION_21_11();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  OUTLINED_FUNCTION_8_56();

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267E9A554()
{
  v17 = v0;

  v1 = *(v0 + 360);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    *(v0 + 176) = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v9 = sub_267EF9098();
    v11 = sub_267BA33E8(v9, v10, &v16);

    *(v6 + 4) = v11;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v12, v13, "#NoMeCardUnsupportedValueFlow failed with error: %s");
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_8_56();

  OUTLINED_FUNCTION_17();

  return v14();
}

uint64_t sub_267E9A740()
{
  v19 = v0;

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OUTLINED_FUNCTION_21_11();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v3 = *(v0 + 424);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v4 = sub_267EF8A08();
  __swift_project_value_buffer(v4, qword_280240FB0);
  v5 = v3;
  v6 = sub_267EF89F8();
  v7 = sub_267EF95E8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    *(v0 + 176) = v3;
    v10 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v11 = sub_267EF9098();
    v13 = sub_267BA33E8(v11, v12, &v18);

    *(v8 + 4) = v13;
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v14, v15, "#NoMeCardUnsupportedValueFlow failed with error: %s");
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_8_56();

  OUTLINED_FUNCTION_17();

  return v16();
}

uint64_t sub_267E9A954(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_267E9AA58();
  v10 = v9;
  v11 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = v8;
  v12[7] = v10;

  sub_267E8FA18();
}

uint64_t sub_267E9AA98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267E99630();
}

uint64_t sub_267E9AB70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267E99630();
}

uint64_t sub_267E9AC28()
{
  OUTLINED_FUNCTION_12();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BAEBEC;

  return sub_267E9AA98();
}

unint64_t sub_267E9AD00(uint64_t a1, uint64_t a2)
{
  v2 = sub_267EF9EE8();

  if (v2 >= 0x4A)
  {
    return 74;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_267E9AD54()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 123) = v18;
  *(v1 + 64) = v17;
  *(v1 + 72) = v0;
  *(v1 + 122) = v16;
  *(v1 + 121) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  *(v1 + 120) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v10);
  *(v1 + 80) = OUTLINED_FUNCTION_50();
  *(v1 + 88) = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E9AE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v12 = swift_allocObject();
  *(v10 + 96) = v12;
  *(v12 + 16) = xmmword_267F0E130;
  *(v12 + 32) = 0x70756F7267;
  *(v12 + 40) = 0xE500000000000000;
  if (v11)
  {
    type metadata accessor for MessagesGroup(0);
  }

  else
  {
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
  }

  v13 = *(v10 + 24);
  *(v12 + 48) = v11;
  OUTLINED_FUNCTION_22_3();
  *(v12 + 72) = v14;
  *(v12 + 80) = v15;
  *(v12 + 88) = 0xE900000000000074;
  v16 = 0;
  if (v13)
  {
    v16 = sub_267EF77C8();
  }

  else
  {
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  v17 = *(v10 + 88);
  v18 = *(v10 + 32);
  *(v12 + 96) = v13;
  *(v12 + 120) = v16;
  *(v12 + 128) = 0x65736143657375;
  *(v12 + 136) = 0xE700000000000000;
  sub_267BB16A4(v18, v17, &unk_28022AE30, &qword_267EFC0B0);
  v19 = sub_267EF79B8();
  v20 = OUTLINED_FUNCTION_15_1(v19);
  v21 = *(v10 + 88);
  if (v20 == 1)
  {

    sub_267B9FF34(v21, &unk_28022AE30, &qword_267EFC0B0);
    *(v12 + 144) = 0u;
    *(v12 + 160) = 0u;
  }

  else
  {
    *(v12 + 168) = v13;
    __swift_allocate_boxed_opaque_existential_0((v12 + 144));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v22();
  }

  v23 = *(v10 + 40);
  *(v12 + 176) = 7368801;
  *(v12 + 184) = 0xE300000000000000;
  v24 = 0;
  if (v23)
  {
    v24 = sub_267EF7958();
  }

  else
  {
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
  }

  v25 = *(v10 + 80);
  v26 = *(v10 + 48);
  v27 = *(v10 + 120);
  *(v12 + 192) = v23;
  *(v12 + 216) = v24;
  *(v12 + 224) = 0xD000000000000016;
  *(v12 + 232) = 0x8000000267F150E0;
  v28 = MEMORY[0x277D839B0];
  *(v12 + 240) = v27;
  *(v12 + 264) = v28;
  *(v12 + 272) = 0xD000000000000011;
  *(v12 + 280) = 0x8000000267F150A0;
  sub_267BB16A4(v26, v25, &unk_28022AE30, &qword_267EFC0B0);
  v29 = OUTLINED_FUNCTION_23_11();
  v30 = *(v10 + 80);
  if (v29 == 1)
  {

    sub_267B9FF34(v30, &unk_28022AE30, &qword_267EFC0B0);
    *(v12 + 288) = 0u;
    *(v12 + 304) = 0u;
  }

  else
  {
    *(v12 + 312) = v13;
    __swift_allocate_boxed_opaque_existential_0((v12 + 288));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v31();
  }

  v32 = *(v10 + 121);
  strcpy((v12 + 320), "showSeasDialog");
  *(v12 + 335) = -18;
  *(v12 + 336) = v32;
  OUTLINED_FUNCTION_202();
  *(v12 + 360) = v28;
  *(v12 + 368) = 0xD00000000000001ALL;
  *(v12 + 376) = v33;
  if (v34)
  {
    v35 = 0;
    v36 = 0;
    *(v12 + 392) = 0;
    *(v12 + 400) = 0;
  }

  else
  {
    v35 = *(v10 + 56);
    v36 = MEMORY[0x277D839F8];
  }

  v37 = *(v10 + 123);
  *(v12 + 384) = v35;
  *(v12 + 408) = v36;
  *(v12 + 416) = 0x6F43796669646F6DLL;
  *(v12 + 424) = 0xEB00000000746E75;
  if (v37)
  {
    v38 = 0;
    v39 = 0;
    *(v12 + 440) = 0;
    *(v12 + 448) = 0;
  }

  else
  {
    v38 = *(v10 + 64);
    v39 = MEMORY[0x277D839F8];
  }

  *(v12 + 432) = v38;
  *(v12 + 456) = v39;
  OUTLINED_FUNCTION_2_68(MEMORY[0x277D55C70]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 104) = v40;
  *v40 = v41;
  v40[1] = sub_267E9B1F8;
  OUTLINED_FUNCTION_68();

  return v45(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10);
}

uint64_t sub_267E9B1F8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 112) = v0;

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

uint64_t sub_267E9B334()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267E9B3A4()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v3);
  v1[4] = OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267E9B428()
{
  OUTLINED_FUNCTION_62();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1(v1);
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_267EFC020;
  OUTLINED_FUNCTION_45_26();
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  OUTLINED_FUNCTION_48_11(v3, v6, &unk_28022AE30, &qword_267EFC0B0);
  v7 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v7) == 1)
  {
    sub_267B9FF34(*(v0 + 32), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v8();
  }

  OUTLINED_FUNCTION_2_68(MEMORY[0x277D55C70]);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_37_24(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_31_29(v10);
  v12 = OUTLINED_FUNCTION_41_20(27);

  return v13(v12);
}

uint64_t sub_267E9B57C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 56) = v0;

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

uint64_t sub_267E9B6AC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9B6C4()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1(v2);
  *(v3 + 32) = 0xD000000000000013;
  *(v3 + 40) = 0x8000000267F14EA0;
  *(v3 + 72) = MEMORY[0x277D839B0];
  v4 = MEMORY[0x277D55C70];
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_2_68(v4);
  *(v0 + 24) = v3;
  *(v3 + 16) = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 32) = v6;
  *v6 = v7;
  v6[1] = sub_267D409A4;

  return v9(0xD000000000000019, 0x8000000267F10300, v3);
}

uint64_t sub_267E9B7D8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9B7EC()
{
  OUTLINED_FUNCTION_62();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v4 = OUTLINED_FUNCTION_43_1(v3);
  v5 = OUTLINED_FUNCTION_46_22(v4);
  OUTLINED_FUNCTION_16(v5, xmmword_267EFC020);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for MessagesApp(0);
  }

  else
  {
    v1[7] = 0;
    v1[8] = 0;
  }

  v1[6] = v2;
  v1[9] = v6;
  v9 = OUTLINED_FUNCTION_25_3(MEMORY[0x277D55C70]);

  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_33_23(v7);

  return (v9)(0xD000000000000016, 0x8000000267F10F70, v1);
}

uint64_t sub_267E9B900()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_26_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_208();

    return v11(v10);
  }
}

uint64_t sub_267E9BA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  OUTLINED_FUNCTION_12();
  *(v10 + 123) = a9;
  *(v10 + 122) = v11;
  *(v10 + 121) = v12;
  *(v10 + 120) = v13;
  *(v10 + 48) = v14;
  *(v10 + 56) = v9;
  *(v10 + 32) = v15;
  *(v10 + 40) = v16;
  *(v10 + 16) = v17;
  *(v10 + 24) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v19);
  *(v10 + 64) = OUTLINED_FUNCTION_50();
  *(v10 + 72) = swift_task_alloc();
  *(v10 + 80) = swift_task_alloc();
  *(v10 + 88) = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_323(v20, v21, v22);
}

uint64_t sub_267E9BAE8()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = swift_allocObject();
  *(v0 + 96) = v2;
  v3 = OUTLINED_FUNCTION_34_31(v2, xmmword_267EFFD10);
  OUTLINED_FUNCTION_48_11(v3, v4, &unk_28022AE30, &qword_267EFC0B0);
  v5 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v5) == 1)
  {
    sub_267B9FF34(*(v0 + 88), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_54_15();
  }

  else
  {
    OUTLINED_FUNCTION_65_15();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v6();
  }

  v7 = *(v0 + 80);
  OUTLINED_FUNCTION_14_45();
  *(v2 + 80) = v8;
  *(v2 + 88) = v9;
  sub_267BB16A4(v10, v7, &unk_28022AE30, &qword_267EFC0B0);
  if (OUTLINED_FUNCTION_23_11() == 1)
  {
    sub_267B9FF34(*(v0 + 80), &unk_28022AE30, &qword_267EFC0B0);
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
  }

  else
  {
    *(v2 + 120) = v1;
    __swift_allocate_boxed_opaque_existential_0((v2 + 96));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v11();
  }

  v12 = *(v0 + 72);
  v13 = *(v0 + 32);
  v14 = *(v0 + 40);
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_56_20();
  *(v2 + 128) = v15;
  *(v2 + 136) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v2 + 144) = v13;
  *(v2 + 168) = v17;
  strcpy((v2 + 176), "attachmentType");
  *(v2 + 191) = -18;
  sub_267BB16A4(v14, v12, &unk_28022AE30, &qword_267EFC0B0);
  v18 = OUTLINED_FUNCTION_23_11();
  v19 = *(v0 + 72);
  if (v18 == 1)
  {

    sub_267B9FF34(v19, &unk_28022AE30, &qword_267EFC0B0);
    *(v2 + 192) = 0u;
    *(v2 + 208) = 0u;
  }

  else
  {
    *(v2 + 216) = v1;
    __swift_allocate_boxed_opaque_existential_0((v2 + 192));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v20();
  }

  v21 = *(v0 + 64);
  OUTLINED_FUNCTION_45_26();
  *(v2 + 224) = v22;
  *(v2 + 232) = v23;
  sub_267BB16A4(v24, v21, &unk_28022AE30, &qword_267EFC0B0);
  if (OUTLINED_FUNCTION_23_11() == 1)
  {
    sub_267B9FF34(*(v0 + 64), &unk_28022AE30, &qword_267EFC0B0);
    *(v2 + 240) = 0u;
    *(v2 + 256) = 0u;
  }

  else
  {
    *(v2 + 264) = v1;
    __swift_allocate_boxed_opaque_existential_0((v2 + 240));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v25();
  }

  v26 = *(v0 + 120);
  *(v2 + 272) = 0x7765697665527369;
  *(v2 + 280) = 0xE800000000000000;
  *(v2 + 288) = v26;
  OUTLINED_FUNCTION_52_17();
  *(v2 + 312) = v27;
  *(v2 + 320) = v28;
  OUTLINED_FUNCTION_51_20();
  *(v2 + 328) = v29;
  *(v2 + 336) = v30;
  *(v2 + 360) = v31;
  *(v2 + 368) = 0xD000000000000018;
  *(v2 + 376) = 0x8000000267F14FD0;
  *(v2 + 384) = v32;
  *(v2 + 408) = v31;
  *(v2 + 416) = 0xD00000000000001BLL;
  *(v2 + 424) = 0x8000000267F14FB0;
  *(v2 + 432) = v33;
  OUTLINED_FUNCTION_202();
  *(v2 + 456) = v34;
  *(v2 + 464) = 0xD000000000000021;
  *(v2 + 472) = v35;
  *(v2 + 504) = v34;
  *(v2 + 480) = v36;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 104) = v37;
  *v37 = v38;
  v37[1] = sub_267E9BF08;
  OUTLINED_FUNCTION_30_36();

  return v39();
}

uint64_t sub_267E9BF08()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 112) = v0;

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

uint64_t sub_267E9C064()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267E9C0F0()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 77) = v3;
  *(v1 + 76) = v4;
  *(v1 + 75) = v5;
  *(v1 + 74) = v6;
  *(v1 + 73) = v7;
  *(v1 + 72) = v8;
  *(v1 + 16) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v10);
  *(v1 + 40) = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E9C190()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v1 = swift_allocObject();
  *(v0 + 48) = v1;
  *(v1 + 16) = xmmword_267F02660;
  OUTLINED_FUNCTION_14_45();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  OUTLINED_FUNCTION_48_11(v2, v5, &unk_28022AE30, &qword_267EFC0B0);
  v6 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v6) == 1)
  {
    sub_267B9FF34(*(v0 + 40), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v7();
  }

  v8 = *(v0 + 77);
  v9 = *(v0 + 76);
  v10 = *(v0 + 75);
  v11 = *(v0 + 74);
  v12 = *(v0 + 73);
  v13 = *(v0 + 72);
  v14 = *(v0 + 24);
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_56_20();
  *(v1 + 80) = v15;
  *(v1 + 88) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v1 + 96) = v14;
  *(v1 + 120) = v17;
  *(v1 + 128) = 0xD000000000000016;
  *(v1 + 136) = 0x8000000267F15050;
  v18 = MEMORY[0x277D839B0];
  *(v1 + 144) = v13;
  *(v1 + 168) = v18;
  strcpy((v1 + 176), "shouldAutoSend");
  *(v1 + 191) = -18;
  *(v1 + 192) = v12;
  OUTLINED_FUNCTION_202();
  *(v1 + 216) = v19;
  *(v1 + 224) = 0xD00000000000001BLL;
  *(v1 + 232) = v20;
  *(v1 + 240) = v11;
  OUTLINED_FUNCTION_202();
  *(v1 + 264) = v21;
  *(v1 + 272) = 0xD000000000000021;
  *(v1 + 280) = v22;
  *(v1 + 288) = v10;
  *(v1 + 312) = v21;
  *(v1 + 320) = 0x646E657070417369;
  *(v1 + 328) = 0xE800000000000000;
  *(v1 + 336) = v9;
  *(v1 + 360) = v21;
  *(v1 + 368) = 0x7765697665527369;
  *(v1 + 376) = 0xE800000000000000;
  *(v1 + 408) = v21;
  v26 = OUTLINED_FUNCTION_25_3(MEMORY[0x277D55C70]);
  *(v1 + 384) = v8;

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 56) = v23;
  *v23 = v24;
  OUTLINED_FUNCTION_58_17(v23);

  return (v26)(0xD00000000000001FLL, 0x8000000267F10350, v1);
}

uint64_t sub_267E9C43C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
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

uint64_t sub_267E9C56C()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 90) = v3;
  *(v1 + 89) = v4;
  *(v1 + 88) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v8);
  *(v1 + 48) = OUTLINED_FUNCTION_50();
  *(v1 + 56) = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E9C60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v12 = swift_allocObject();
  *(v10 + 64) = v12;
  v13 = OUTLINED_FUNCTION_43_24(v12, xmmword_267F00200);
  v13[2].n128_u64[0] = v14;
  v13[2].n128_u64[1] = 0xEB00000000657079;
  OUTLINED_FUNCTION_48_11(v13, v15, &unk_28022AE30, &qword_267EFC0B0);
  v16 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v16) == 1)
  {
    sub_267B9FF34(*(v10 + 56), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_54_15();
  }

  else
  {
    OUTLINED_FUNCTION_65_15();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v17();
  }

  v18 = *(v10 + 24);
  OUTLINED_FUNCTION_22_3();
  *(v12 + 80) = v19;
  *(v12 + 88) = 0xE900000000000074;
  v20 = 0;
  if (v18)
  {
    v20 = sub_267EF77C8();
  }

  else
  {
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  v21 = *(v10 + 48);
  v22 = *(v10 + 32);
  v23 = *(v10 + 90);
  v24 = *(v10 + 89);
  v25 = *(v10 + 88);
  *(v12 + 96) = v18;
  *(v12 + 120) = v20;
  *(v12 + 128) = 0xD000000000000011;
  v26 = MEMORY[0x277D839B0];
  *(v12 + 136) = 0x8000000267F1CC30;
  *(v12 + 144) = v25;
  *(v12 + 168) = v26;
  strcpy((v12 + 176), "shouldBeSilent");
  *(v12 + 191) = -18;
  *(v12 + 192) = v24;
  *(v12 + 216) = v26;
  *(v12 + 224) = 0x70756F72477369;
  *(v12 + 232) = 0xE700000000000000;
  *(v12 + 240) = v23;
  *(v12 + 264) = v26;
  *(v12 + 272) = 0x546567617373656DLL;
  *(v12 + 280) = 0xEB00000000657079;
  sub_267BB16A4(v22, v21, &unk_28022AE30, &qword_267EFC0B0);
  v27 = OUTLINED_FUNCTION_23_11();
  v28 = *(v10 + 48);
  if (v27 == 1)
  {

    sub_267B9FF34(v28, &unk_28022AE30, &qword_267EFC0B0);
    *(v12 + 288) = 0u;
    *(v12 + 304) = 0u;
  }

  else
  {
    *(v12 + 312) = v11;
    __swift_allocate_boxed_opaque_existential_0((v12 + 288));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v29();
  }

  OUTLINED_FUNCTION_2_68(MEMORY[0x277D55C70]);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 72) = v30;
  *v30 = v31;
  v30[1] = sub_267E9C8E4;
  OUTLINED_FUNCTION_68();

  return v35(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

uint64_t sub_267E9C8E4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
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

uint64_t sub_267E9CA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, char a11, char a12, char a13, char a14)
{
  OUTLINED_FUNCTION_12();
  *(v15 + 40) = v16;
  *(v15 + 48) = v14;
  *(v15 + 105) = a14;
  *(v15 + 104) = a13;
  *(v15 + 103) = a12;
  *(v15 + 102) = a11;
  *(v15 + 101) = a10;
  *(v15 + 100) = a9;
  *(v15 + 99) = v17;
  *(v15 + 98) = v18;
  *(v15 + 97) = v19;
  *(v15 + 96) = v20;
  *(v15 + 24) = v21;
  *(v15 + 32) = v22;
  *(v15 + 16) = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v24);
  *(v15 + 56) = OUTLINED_FUNCTION_50();
  *(v15 + 64) = swift_task_alloc();
  v25 = OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_323(v25, v26, v27);
}

uint64_t sub_267E9CAEC()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = swift_allocObject();
  *(v0 + 72) = v2;
  v3 = OUTLINED_FUNCTION_34_31(v2, xmmword_267F016D0);
  OUTLINED_FUNCTION_48_11(v3, v4, &unk_28022AE30, &qword_267EFC0B0);
  v5 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v5) == 1)
  {
    sub_267B9FF34(*(v0 + 64), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_54_15();
  }

  else
  {
    OUTLINED_FUNCTION_65_15();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v6();
  }

  v7 = *(v0 + 56);
  OUTLINED_FUNCTION_14_45();
  *(v2 + 80) = v8;
  *(v2 + 88) = v9;
  sub_267BB16A4(v10, v7, &unk_28022AE30, &qword_267EFC0B0);
  if (OUTLINED_FUNCTION_23_11() == 1)
  {
    sub_267B9FF34(*(v0 + 56), &unk_28022AE30, &qword_267EFC0B0);
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
  }

  else
  {
    *(v2 + 120) = v1;
    __swift_allocate_boxed_opaque_existential_0((v2 + 96));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v11();
  }

  v13 = *(v0 + 32);
  v12 = *(v0 + 40);
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_56_20();
  *(v2 + 128) = v14;
  *(v2 + 136) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v2 + 144) = v13;
  *(v2 + 168) = v16;
  *(v2 + 176) = 7368801;
  *(v2 + 184) = 0xE300000000000000;
  v17 = 0;
  if (v12)
  {
    v17 = sub_267EF7958();
  }

  else
  {
    *(v2 + 200) = 0;
    *(v2 + 208) = 0;
  }

  v18 = *(v0 + 101);
  v19 = *(v0 + 100);
  v20 = *(v0 + 99);
  v21 = *(v0 + 98);
  v22 = *(v0 + 97);
  v23 = *(v0 + 96);
  *(v2 + 192) = v12;
  *(v2 + 216) = v17;
  *(v2 + 224) = 0xD000000000000016;
  *(v2 + 232) = 0x8000000267F15050;
  v24 = MEMORY[0x277D839B0];
  *(v2 + 240) = v23;
  *(v2 + 264) = v24;
  *(v2 + 272) = 0x646E65536F747561;
  *(v2 + 280) = 0xEF64656C62616E45;
  *(v2 + 288) = v22;
  *(v2 + 312) = v24;
  *(v2 + 320) = 0xD000000000000018;
  *(v2 + 328) = 0x8000000267F14FD0;
  *(v2 + 336) = v21;
  *(v2 + 360) = v24;
  *(v2 + 368) = 0xD00000000000001BLL;
  *(v2 + 376) = 0x8000000267F14FB0;
  *(v2 + 384) = v20;
  *(v2 + 408) = v24;
  *(v2 + 416) = 0xD000000000000021;
  *(v2 + 424) = 0x8000000267F15020;
  *(v2 + 432) = v19;
  *(v2 + 456) = v24;
  *(v2 + 464) = 0x7765697665527369;
  *(v2 + 472) = 0xE800000000000000;
  *(v2 + 480) = v18;
  OUTLINED_FUNCTION_52_17();
  *(v2 + 504) = v25;
  *(v2 + 512) = v26;
  OUTLINED_FUNCTION_51_20();
  *(v2 + 520) = v27;
  *(v2 + 552) = v28;
  *(v2 + 528) = v29;
  strcpy((v2 + 560), "showSeasDialog");
  *(v2 + 575) = -18;
  *(v2 + 600) = v28;
  *(v2 + 576) = v30;
  *(v2 + 608) = 0xD000000000000020;
  *(v2 + 616) = 0x8000000267F14FF0;
  *(v2 + 648) = v28;
  *(v2 + 624) = v31;
  *(v2 + 656) = 0xD000000000000011;
  *(v2 + 664) = 0x8000000267F13240;
  *(v2 + 696) = v28;
  *(v2 + 672) = v32;

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 80) = v33;
  *v33 = v34;
  v33[1] = sub_267E9CEEC;
  OUTLINED_FUNCTION_30_36();

  return v35();
}

uint64_t sub_267E9CEEC()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 88) = v0;

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

uint64_t sub_267E9D028()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267E9D098()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_2_68(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v1[1] = sub_267E9EDF0;
  OUTLINED_FUNCTION_35_29();
  v3 = OUTLINED_FUNCTION_53_20(27);

  return v4(v3);
}

uint64_t sub_267E9D140(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9D15C()
{
  OUTLINED_FUNCTION_29();
  v2 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = swift_allocObject();
  v1[5] = v3;
  OUTLINED_FUNCTION_16(v3, xmmword_267EFCE30);
  if (v2)
  {
    v4 = type metadata accessor for MessagesApp(0);
    v5 = v2;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_40_25();
  }

  OUTLINED_FUNCTION_8_57(v4, v5);
  if (v0)
  {
    sub_267EF7AE8();
  }

  else
  {
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v3[6].n128_u64[0] = v0;
  OUTLINED_FUNCTION_202();
  v3[8].n128_u64[1] = v6;
  v3[10].n128_u64[1] = MEMORY[0x277D839B0];
  v3[9].n128_u8[0] = v7;
  OUTLINED_FUNCTION_21_35();
  OUTLINED_FUNCTION_48_27(v8);

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[6] = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_58_17(v9);
  OUTLINED_FUNCTION_30_36();

  return v11();
}

uint64_t sub_267E9D2B4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_26_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_208();

    return v11(v10);
  }
}

uint64_t sub_267E9D3DC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9D3F8()
{
  OUTLINED_FUNCTION_29();
  v2 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = swift_allocObject();
  v1[5] = v3;
  OUTLINED_FUNCTION_16(v3, xmmword_267EFCE30);
  if (v2)
  {
    v4 = type metadata accessor for MessagesApp(0);
    v5 = v2;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_40_25();
  }

  OUTLINED_FUNCTION_8_57(v4, v5);
  if (v0)
  {
    sub_267EF7AE8();
  }

  else
  {
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v3[6].n128_u64[0] = v0;
  OUTLINED_FUNCTION_202();
  v3[8].n128_u64[1] = v6;
  v3[10].n128_u64[1] = MEMORY[0x277D839B0];
  v3[9].n128_u8[0] = v7;
  OUTLINED_FUNCTION_21_35();
  OUTLINED_FUNCTION_48_27(v8);

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[6] = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_58_17(v9);
  OUTLINED_FUNCTION_30_36();

  return v11();
}

uint64_t sub_267E9D550(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9D568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v11 = *(v9 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v12 = swift_allocObject();
  *(OUTLINED_FUNCTION_46_22(v12) + 16) = xmmword_267EFCC90;
  OUTLINED_FUNCTION_12_49();
  *(v13 + 32) = v14;
  *(v13 + 40) = 0xEB00000000657461;
  if (v11)
  {
    sub_267EF7AE8();
  }

  else
  {
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
  }

  *(v10 + 48) = v11;
  OUTLINED_FUNCTION_202();
  *(v10 + 88) = v15;
  *(v10 + 120) = MEMORY[0x277D839B0];
  *(v10 + 96) = v16;
  OUTLINED_FUNCTION_21_35();
  v30 = v17;
  *(v10 + 72) = v18;
  *(v10 + 80) = 0xD000000000000012;

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v9 + 40) = v19;
  *v19 = v20;
  OUTLINED_FUNCTION_33_23(v19);
  OUTLINED_FUNCTION_18_40();
  OUTLINED_FUNCTION_68();

  return v24(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t sub_267E9D6B0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9D6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v12 = *(v11 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v13 = swift_allocObject();
  *(v11 + 40) = v13;
  OUTLINED_FUNCTION_16(v13, xmmword_267EFCC90);
  if (v12)
  {
    v14 = type metadata accessor for MessagesApp(0);
    v15 = v12;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_40_25();
  }

  v16 = OUTLINED_FUNCTION_8_57(v14, v15);
  if (v10)
  {
    v16 = sub_267EF7AE8();
  }

  else
  {
    v13[6].n128_u64[1] = 0;
    v13[7].n128_u64[0] = 0;
  }

  v13[6].n128_u64[0] = v10;
  v13[7].n128_u64[1] = v16;
  OUTLINED_FUNCTION_62_14();

  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_37_24(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_58_17(v18);
  OUTLINED_FUNCTION_68();

  return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_267E9D7FC()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_26_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_208();

    return v11(v10);
  }
}

uint64_t sub_267E9D924(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9D93C()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1(v2);
  *(v0 + 24) = v3;
  *(v3 + 16) = xmmword_267EFC020;
  *(v3 + 32) = 0xD000000000000019;
  *(v3 + 40) = 0x8000000267F14F90;
  *(v3 + 72) = MEMORY[0x277D839B0];
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_21_35();
  v7 = v4;
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_108_0(v5);

  return v7(0xD000000000000014);
}

uint64_t sub_267E9DA50(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9DA68()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = OUTLINED_FUNCTION_43_1(v2);
  strcpy((v3 + 32), "shouldBeSilent");
  *(v3 + 47) = -18;
  *(v3 + 72) = MEMORY[0x277D839B0];
  *(v3 + 48) = v1;
  OUTLINED_FUNCTION_21_35();
  v8 = v4;
  *(v0 + 24) = v3;
  *(v3 + 16) = v5;
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_108_0(v6);

  return v8(0xD000000000000020);
}

uint64_t sub_267E9DB80()
{
  OUTLINED_FUNCTION_12();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v6);
  v1[7] = OUTLINED_FUNCTION_50();
  v1[8] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E9DC18()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = swift_allocObject();
  v0[9] = v2;
  *(v2 + 16) = xmmword_267F01440;
  *(v2 + 32) = 0x746E65746E6F63;
  *(v2 + 40) = 0xE700000000000000;
  OUTLINED_FUNCTION_48_11(v2, v3, &unk_28022AE30, &qword_267EFC0B0);
  v4 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v4) == 1)
  {
    sub_267B9FF34(v0[8], &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_54_15();
  }

  else
  {
    OUTLINED_FUNCTION_65_15();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v5();
  }

  v6 = v0[7];
  v7 = v0[3];
  v8 = v0[4];
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_56_20();
  *(v2 + 80) = v9;
  *(v2 + 88) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v2 + 96) = v7;
  *(v2 + 120) = v11;
  *(v2 + 128) = 0x6D614E70756F7267;
  *(v2 + 136) = 0xE900000000000065;
  sub_267BB16A4(v8, v6, &unk_28022AE30, &qword_267EFC0B0);
  v12 = OUTLINED_FUNCTION_23_11();
  v13 = v0[7];
  if (v12 == 1)
  {

    sub_267B9FF34(v13, &unk_28022AE30, &qword_267EFC0B0);
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
  }

  else
  {
    *(v2 + 168) = v1;
    __swift_allocate_boxed_opaque_existential_0((v2 + 144));
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v14();
  }

  v15 = v0[5];
  OUTLINED_FUNCTION_12_49();
  *(v2 + 176) = v16;
  *(v2 + 184) = 0xEB00000000657461;
  v17 = 0;
  if (v15)
  {
    v17 = sub_267EF7AE8();
  }

  else
  {
    *(v2 + 200) = 0;
    *(v2 + 208) = 0;
  }

  *(v2 + 192) = v15;
  *(v2 + 216) = v17;
  v20 = OUTLINED_FUNCTION_25_3(MEMORY[0x277D55C70]);

  v18 = swift_task_alloc();
  v0[10] = v18;
  *v18 = v0;
  v18[1] = sub_267E9DEC4;

  return (v20)(0xD00000000000002ALL, 0x8000000267F11400, v2);
}

uint64_t sub_267E9DEC4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 88) = v0;

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

uint64_t sub_267E9E000(char a1, char a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 59) = a5;
  *(v6 + 58) = a4;
  *(v6 + 16) = a3;
  *(v6 + 24) = v5;
  *(v6 + 57) = a2;
  *(v6 + 56) = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9E024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_46_22(v13);
  v15 = OUTLINED_FUNCTION_25_41(v14, xmmword_267EFCDC0);
  OUTLINED_FUNCTION_23_31(v15);
  if (v12)
  {
    sub_267EF7958();
  }

  else
  {
    v11[19] = 0;
    v11[20] = 0;
  }

  v11[18] = v12;
  OUTLINED_FUNCTION_22_35();
  OUTLINED_FUNCTION_57_18(v16);
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_36_26(v17);
  OUTLINED_FUNCTION_25_3(MEMORY[0x277D55C70]);
  OUTLINED_FUNCTION_62_14();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 40) = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_33_23(v18);
  OUTLINED_FUNCTION_18_40();
  OUTLINED_FUNCTION_68();

  return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_267E9E148()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_26_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_208();

    return v11(v10);
  }
}

uint64_t sub_267E9E270(char a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 58) = a4;
  *(v5 + 57) = a3;
  *(v5 + 16) = a2;
  *(v5 + 24) = v4;
  *(v5 + 56) = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9E290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v12 = *(v10 + 16);
  v13 = *(v10 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_46_22(v14);
  *(v15 + 16) = xmmword_267F01440;
  *(v15 + 32) = 0x656E696C66666FLL;
  *(v15 + 40) = 0xE700000000000000;
  v16 = MEMORY[0x277D839B0];
  *(v15 + 48) = v13;
  *(v15 + 72) = v16;
  *(v15 + 80) = 7368801;
  *(v15 + 88) = 0xE300000000000000;
  if (v12)
  {
    sub_267EF7958();
  }

  else
  {
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  *(v11 + 96) = v12;
  OUTLINED_FUNCTION_22_35();
  *(v11 + 120) = v17;
  *(v11 + 128) = v18;
  *(v11 + 136) = 0xE800000000000000;
  *(v11 + 144) = v19;
  OUTLINED_FUNCTION_202();
  *(v11 + 168) = v16;
  *(v11 + 176) = 0xD000000000000013;
  *(v11 + 184) = v20;
  *(v11 + 216) = v16;
  *(v11 + 192) = v21;
  OUTLINED_FUNCTION_25_3(MEMORY[0x277D55C70]);
  OUTLINED_FUNCTION_62_14();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 40) = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_33_23(v22);
  OUTLINED_FUNCTION_18_40();
  OUTLINED_FUNCTION_68();

  return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_267E9E400()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_2_68(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v1[1] = sub_267C97964;
  OUTLINED_FUNCTION_35_29();
  v3 = OUTLINED_FUNCTION_53_20(39);

  return v4(v3);
}

uint64_t sub_267E9E4A8(char a1, char a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 59) = a5;
  *(v6 + 58) = a4;
  *(v6 + 16) = a3;
  *(v6 + 24) = v5;
  *(v6 + 57) = a2;
  *(v6 + 56) = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267E9E4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29();
  v12 = *(v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_46_22(v13);
  v15 = OUTLINED_FUNCTION_25_41(v14, xmmword_267EFCDC0);
  OUTLINED_FUNCTION_23_31(v15);
  if (v12)
  {
    sub_267EF7958();
  }

  else
  {
    v11[19] = 0;
    v11[20] = 0;
  }

  v11[18] = v12;
  OUTLINED_FUNCTION_22_35();
  OUTLINED_FUNCTION_57_18(v16);
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_36_26(v17);
  OUTLINED_FUNCTION_25_3(MEMORY[0x277D55C70]);
  OUTLINED_FUNCTION_62_14();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v10 + 40) = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_33_23(v18);
  OUTLINED_FUNCTION_18_40();
  OUTLINED_FUNCTION_68();

  return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_267E9E5F0()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v3);
  v1[4] = OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267E9E674()
{
  OUTLINED_FUNCTION_62();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = OUTLINED_FUNCTION_43_1(v1);
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_267EFC020;
  *(v2 + 32) = 0x79726F6765746163;
  *(v2 + 40) = 0xE800000000000000;
  OUTLINED_FUNCTION_48_11(v2, v3, &unk_28022AE30, &qword_267EFC0B0);
  v4 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v4) == 1)
  {
    sub_267B9FF34(*(v0 + 32), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v5();
  }

  OUTLINED_FUNCTION_2_68(MEMORY[0x277D55C70]);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_37_24(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_31_29(v7);
  v9 = OUTLINED_FUNCTION_41_20(38);

  return v10(v9);
}

uint64_t sub_267E9E7D8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_2_68(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v1[1] = sub_267E9EDF0;
  OUTLINED_FUNCTION_35_29();
  v3 = OUTLINED_FUNCTION_53_20(41);

  return v4(v3);
}

uint64_t sub_267E9E880()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 64) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v4);
  *(v1 + 32) = OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E9E908()
{
  OUTLINED_FUNCTION_62();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v1 = swift_allocObject();
  *(v0 + 40) = v1;
  v2 = OUTLINED_FUNCTION_43_24(v1, xmmword_267EFCC90);
  v2[2].n128_u64[0] = v3;
  v2[2].n128_u64[1] = 0xEB00000000657079;
  OUTLINED_FUNCTION_48_11(v2, v4, &unk_28022AE30, &qword_267EFC0B0);
  v5 = sub_267EF79B8();
  if (OUTLINED_FUNCTION_15_1(v5) == 1)
  {
    sub_267B9FF34(*(v0 + 32), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    OUTLINED_FUNCTION_18_0();
    OUTLINED_FUNCTION_26_3();
    v6();
  }

  v7 = *(v0 + 64);
  strcpy(&v1[5], "shouldBeSilent");
  v1[5].n128_u8[15] = -18;
  v1[7].n128_u64[1] = MEMORY[0x277D839B0];
  v1[6].n128_u8[0] = v7;
  OUTLINED_FUNCTION_2_68(MEMORY[0x277D55C70]);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_37_24(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_31_29(v9);
  v11 = OUTLINED_FUNCTION_41_20(26);

  return v12(v11);
}

uint64_t sub_267E9EAA4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 56) = v0;

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

uint64_t sub_267E9EBD4()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267E9EC38()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_2_68(MEMORY[0x277D55C70]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v1[1] = sub_267E9EDF0;
  OUTLINED_FUNCTION_35_29();
  v3 = OUTLINED_FUNCTION_53_20(32);

  return v4(v3);
}

uint64_t sub_267E9ECE0(uint64_t a1, uint64_t a2)
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

uint64_t sub_267E9EDF4@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v4 = sub_267EF8228();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  v56 = (v6 - v7);
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77_0();
  v57 = v9;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77_0();
  v58 = v11;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  v17 = sub_267EF8218();
  v19 = v18;
  v20 = OUTLINED_FUNCTION_14_46();
  v59 = v21;
  v21(v20);
  sub_267EF8218();
  OUTLINED_FUNCTION_23_21();
  v22 = OUTLINED_FUNCTION_25_42();
  v23(v22);
  if (v1 == v17 && v16 == v19)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_20_33();
  if (v1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_13_50();
  v32();
  v33 = v3;
  sub_267EF8218();
  OUTLINED_FUNCTION_23_21();
  v34 = v3;
  v35 = v16;
  (v16)(v34, v4);
  if (v1 == v17 && v33 == v19)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_20_33();
  if (v1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_13_50();
  v37();
  sub_267EF8218();
  OUTLINED_FUNCTION_23_21();
  (v16)(v2, v4);
  if (v1 == v17 && v2 == v19)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_20_33();
  if (v1)
  {
    goto LABEL_8;
  }

  v39 = v58;
  v40 = OUTLINED_FUNCTION_14_46();
  v41(v40);
  sub_267EF8218();
  v42 = OUTLINED_FUNCTION_2_69();
  (v35)(v42);
  if (v1 == v17 && v39 == v19)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_20_33();
  if (v1)
  {
    goto LABEL_8;
  }

  v44 = v57;
  v45 = OUTLINED_FUNCTION_9_55();
  v46(v45);
  sub_267EF8218();
  v47 = OUTLINED_FUNCTION_2_69();
  (v35)(v47);
  if (v1 == v17 && v44 == v19)
  {
LABEL_7:

LABEL_8:

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_20_33();
  if (v1)
  {
    goto LABEL_8;
  }

  v49 = v56;
  v50 = OUTLINED_FUNCTION_9_55();
  v51(v50);
  sub_267EF8218();
  v52 = OUTLINED_FUNCTION_2_69();
  (v35)(v52);
  if (v1 == v17 && v49 == v19)
  {
  }

  else
  {
    v54 = OUTLINED_FUNCTION_1_85();

    if ((v54 & 1) == 0)
    {
      sub_267EF8198();
      OUTLINED_FUNCTION_78();
      return __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    }
  }

LABEL_9:
  sub_267EF8198();
  OUTLINED_FUNCTION_22();
  v25 = OUTLINED_FUNCTION_31_30();
  v26(v25);
  OUTLINED_FUNCTION_21_36();
  return __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
}

uint64_t sub_267E9F260@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v4 = sub_267EF8228();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  v56 = (v6 - v7);
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77_0();
  v57 = v9;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77_0();
  v58 = v11;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  v17 = sub_267EF8218();
  v19 = v18;
  v20 = OUTLINED_FUNCTION_14_46();
  v59 = v21;
  v21(v20);
  sub_267EF8218();
  OUTLINED_FUNCTION_23_21();
  v22 = OUTLINED_FUNCTION_25_42();
  v23(v22);
  if (v1 == v17 && v16 == v19)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_20_33();
  if (v1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_13_50();
  v32();
  v33 = v3;
  sub_267EF8218();
  OUTLINED_FUNCTION_23_21();
  v34 = v3;
  v35 = v16;
  (v16)(v34, v4);
  if (v1 == v17 && v33 == v19)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_20_33();
  if (v1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_13_50();
  v37();
  sub_267EF8218();
  OUTLINED_FUNCTION_23_21();
  (v16)(v2, v4);
  if (v1 == v17 && v2 == v19)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_20_33();
  if (v1)
  {
    goto LABEL_8;
  }

  v39 = v58;
  v40 = OUTLINED_FUNCTION_14_46();
  v41(v40);
  sub_267EF8218();
  v42 = OUTLINED_FUNCTION_2_69();
  (v35)(v42);
  if (v1 == v17 && v39 == v19)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_20_33();
  if (v1)
  {
    goto LABEL_8;
  }

  v44 = v57;
  v45 = OUTLINED_FUNCTION_9_55();
  v46(v45);
  sub_267EF8218();
  v47 = OUTLINED_FUNCTION_2_69();
  (v35)(v47);
  if (v1 == v17 && v44 == v19)
  {
LABEL_7:

LABEL_8:

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_20_33();
  if (v1)
  {
    goto LABEL_8;
  }

  v49 = v56;
  v50 = OUTLINED_FUNCTION_9_55();
  v51(v50);
  sub_267EF8218();
  v52 = OUTLINED_FUNCTION_2_69();
  (v35)(v52);
  if (v1 == v17 && v49 == v19)
  {
  }

  else
  {
    v54 = OUTLINED_FUNCTION_1_85();

    if ((v54 & 1) == 0)
    {
      sub_267EF8198();
      OUTLINED_FUNCTION_78();
      return __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    }
  }

LABEL_9:
  sub_267EF8198();
  OUTLINED_FUNCTION_22();
  v25 = OUTLINED_FUNCTION_31_30();
  v26(v25);
  OUTLINED_FUNCTION_21_36();
  return __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
}

uint64_t sub_267E9F6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v83 = sub_267EF8428();
  OUTLINED_FUNCTION_58();
  v90 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_60();
  v81 = (v5 - v6);
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v7);
  v82 = &v80 - v8;
  sub_267EF4BE8();
  OUTLINED_FUNCTION_58();
  v85 = v10;
  v86 = v9;
  MEMORY[0x28223BE20](v9);
  v91 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v87 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_60();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v92 = &v80 - v19;
  v20 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v26 = sub_267EF8A08();
  v27 = __swift_project_value_buffer(v26, qword_280240FB0);
  (*(v22 + 16))(v25, a1, v20);
  v84 = v27;
  v28 = sub_267EF89F8();
  v29 = sub_267EF95C8();
  v30 = os_log_type_enabled(v28, v29);
  v88 = v12;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v93 = v32;
    *v31 = 136315138;
    sub_267C31120();
    v33 = sub_267EF9E58();
    v80 = v17;
    v35 = v34;
    (*(v22 + 8))(v25, v20);
    v36 = sub_267BA33E8(v33, v35, &v93);
    v17 = v80;

    *(v31 + 4) = v36;
    _os_log_impl(&dword_267B93000, v28, v29, "#PromptForTapbackFlowStrategy received input: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v12 = v88;
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v22 + 8))(v25, v20);
  }

  v37 = v92;
  sub_267EF4B88();
  v38 = v87;
  v39 = (*(v87 + 88))(v37, v12);
  if (v39 == *MEMORY[0x277D5C150])
  {
    (*(v38 + 16))(v17, v37, v12);
    (*(v38 + 96))(v17, v12);
    (*(v85 + 32))(v91, v17, v86);
    v40 = v90;
    v41 = *(v90 + 104);
    v42 = v82;
    v43 = v83;
    v41(v82, *MEMORY[0x277D5D6F8], v83);
    v44 = sub_267EF8418();
    v46 = v45;
    v47 = *(v40 + 8);
    v90 = v40 + 8;
    v47(v42, v43);
    if (v44 != sub_267EF4BC8() || v46 != v48)
    {
      v50 = OUTLINED_FUNCTION_10_47();

      if (v50)
      {
LABEL_23:
        v64 = sub_267EF89F8();
        v65 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v65))
        {
          v66 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v66);
          OUTLINED_FUNCTION_17_0(&dword_267B93000, v67, v68, "#PromptForTapbackFlowStrategy received directInvocation via button press, handling");
          OUTLINED_FUNCTION_26();
        }

        sub_267EF3E58();
        (*(v85 + 8))(v91, v86);
        v12 = v88;
        v37 = v92;
        return (*(v38 + 8))(v37, v12);
      }

      v51 = v81;
      v52 = v83;
      v41(v81, *MEMORY[0x277D5D708], v83);
      v53 = sub_267EF8418();
      v55 = v54;
      v47(v51, v52);
      if (v53 != sub_267EF4BC8() || v55 != v56)
      {
        v58 = OUTLINED_FUNCTION_10_47();

        if ((v58 & 1) == 0)
        {
          (*(v85 + 8))(v91, v86);
          v12 = v88;
          v37 = v92;
LABEL_30:
          v74 = sub_267EF89F8();
          v75 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_36(v75))
          {
            v76 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v76);
            OUTLINED_FUNCTION_17_0(&dword_267B93000, v77, v78, "#PromptForTapbackFlowStrategy received unhandled input, ignoring");
            OUTLINED_FUNCTION_26();
          }

          sub_267EF3E68();
          return (*(v38 + 8))(v37, v12);
        }

        goto LABEL_23;
      }
    }

    goto LABEL_23;
  }

  if (v39 == *MEMORY[0x277D5C160])
  {
    v59 = sub_267EF89F8();
    v60 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v60))
    {
      v61 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v61);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v62, v63, "#PromptForTapbackFlowStrategy received uso parse");
      OUTLINED_FUNCTION_26();
    }

    sub_267EF3E58();
  }

  else
  {
    if (v39 != *MEMORY[0x277D5C168])
    {
      goto LABEL_30;
    }

    v69 = sub_267EF89F8();
    v70 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v70))
    {
      v71 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v71);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v72, v73, "#PromptForTapbackFlowStrategy received empty input");
      OUTLINED_FUNCTION_26();
    }

    sub_267EF3E48();
  }

  return (*(v38 + 8))(v37, v12);
}

uint64_t sub_267E9FDD4(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229970, &unk_267F0E300);
  v3[21] = v4;
  OUTLINED_FUNCTION_18(v4);
  v3[22] = OUTLINED_FUNCTION_50();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229928, &qword_267EFEB80);
  OUTLINED_FUNCTION_18(v5);
  v3[25] = OUTLINED_FUNCTION_50();
  v3[26] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BFD0, &qword_267F0D0B0);
  OUTLINED_FUNCTION_18(v6);
  v3[27] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229920, &unk_267F0ABD0);
  v3[28] = v7;
  OUTLINED_FUNCTION_18(v7);
  v3[29] = OUTLINED_FUNCTION_50();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v8 = sub_267EF8198();
  v3[33] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v3[34] = v9;
  v3[35] = swift_task_alloc();
  v10 = sub_267EF8428();
  v3[36] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v3[37] = v11;
  v3[38] = OUTLINED_FUNCTION_50();
  v3[39] = swift_task_alloc();
  v12 = sub_267EF4BE8();
  v3[40] = v12;
  OUTLINED_FUNCTION_30_0(v12);
  v3[41] = v13;
  v3[42] = swift_task_alloc();
  v14 = sub_267EF4C08();
  v3[43] = v14;
  OUTLINED_FUNCTION_30_0(v14);
  v3[44] = v15;
  v3[45] = OUTLINED_FUNCTION_50();
  v3[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267EA009C, 0, 0);
}

uint64_t sub_267EA009C(uint64_t a1)
{
  v126 = v1;
  v3 = *(v1 + 360);
  v2 = *(v1 + 368);
  v4 = *(v1 + 344);
  v5 = *(v1 + 352);
  v6 = *(*(v1 + 160) + 24);
  sub_267EF4B88();
  v7 = sub_267EBF874();
  v8 = *(v5 + 8);
  v8(v2, v4);
  *(v6 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_isTriggeredByButtonTap) = v7;
  sub_267EF4B88();
  v9 = (*(v5 + 88))(v3, v4);
  v10 = *(v1 + 360);
  if (v9 != *MEMORY[0x277D5C150])
  {
    v8(*(v1 + 360), *(v1 + 344));
    goto LABEL_9;
  }

  v123 = v8;
  v11 = *(v1 + 328);
  v12 = *(v1 + 336);
  v14 = *(v1 + 312);
  v13 = *(v1 + 320);
  v15 = *(v1 + 288);
  v16 = *(v1 + 296);
  (*(*(v1 + 352) + 96))(v10, *(v1 + 344));
  (*(v11 + 32))(v12, v10, v13);
  v124 = *(v16 + 104);
  v124(v14, *MEMORY[0x277D5D6F8], v15);
  v17 = sub_267EF8418();
  v19 = v18;
  v20 = v15;
  v21 = *(v16 + 8);
  v21(v14, v20);
  if (v17 == sub_267EF4BC8() && v19 == v22)
  {
  }

  else
  {
    v24 = OUTLINED_FUNCTION_10_47();

    if ((v24 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  if (!sub_267EF4BD8())
  {
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    goto LABEL_29;
  }

  sub_267BB40A0();

  if (!*(v1 + 120))
  {
LABEL_29:
    v65 = &qword_28022AEF0;
    v66 = &qword_267EFCDE0;
    v67 = v1 + 96;
LABEL_30:
    sub_267B9F98C(v67, v65, v66);
    goto LABEL_31;
  }

  if (swift_dynamicCast())
  {
    v50 = *(v1 + 216);
    sub_267EF8208();
    v51 = sub_267EF8228();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v51);
    v54 = *(v1 + 256);
    v53 = *(v1 + 264);
    v55 = *(v1 + 216);
    if (EnumTagSinglePayload == 1)
    {
      sub_267B9F98C(*(v1 + 216), &qword_28022BFD0, &qword_267F0D0B0);
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v56, v57, v58, v53);
    }

    else
    {
      sub_267E9F260(*(v1 + 256));
      (*(*(v51 - 8) + 8))(v55, v51);
      if (__swift_getEnumTagSinglePayload(v54, 1, v53) != 1)
      {
        v110 = *(*(v1 + 272) + 32);
        v110(*(v1 + 280), *(v1 + 256), *(v1 + 264));
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v111 = sub_267EF8A08();
        __swift_project_value_buffer(v111, qword_280240FB0);
        v112 = sub_267EF89F8();
        v113 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_10_2(v113))
        {
          v114 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v114);
          OUTLINED_FUNCTION_3_0(&dword_267B93000, v115, v116, "#PromptForTapbackFlowStrategy received tapback selection");
          OUTLINED_FUNCTION_26();
        }

        v118 = *(v1 + 328);
        v117 = *(v1 + 336);
        v119 = *(v1 + 320);
        v120 = *(v1 + 280);
        v121 = *(v1 + 264);
        v122 = *(v1 + 144);

        (*(v118 + 8))(v117, v119);
        v110(v122, v120, v121);
        __swift_storeEnumTagSinglePayload(v122, 0, 1, v121);
        type metadata accessor for TapbackAction(0);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_21_36();
        goto LABEL_40;
      }
    }

    v67 = *(v1 + 256);
    v65 = &qword_280229920;
    v66 = &unk_267F0ABD0;
    goto LABEL_30;
  }

LABEL_31:
  v68 = *(v1 + 304);
  v69 = *(v1 + 288);
  v124(v68, *MEMORY[0x277D5D708], v69);
  v70 = sub_267EF8418();
  v72 = v71;
  v21(v68, v69);
  if (v70 == sub_267EF4BC8() && v72 == v73)
  {

    v78 = OUTLINED_FUNCTION_108();
    v79(v78);
LABEL_38:
    type metadata accessor for TapbackAction(0);
LABEL_39:
    OUTLINED_FUNCTION_78();
LABEL_40:
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
    goto LABEL_55;
  }

  v75 = sub_267EF9EA8();

  v76 = OUTLINED_FUNCTION_108();
  v77(v76);
  v8 = v123;
  if (v75)
  {
    goto LABEL_38;
  }

LABEL_9:
  v25 = *(v1 + 368);
  v26 = *(v1 + 344);
  sub_267EF4B88();
  v27 = sub_267E57DFC(v25, (v1 + 56));
  (v8)(v25, v26, v27);
  if (!*(v1 + 80))
  {
    sub_267B9F98C(v1 + 56, &unk_28022BBF0, &unk_267F01C60);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v59 = sub_267EF8A08();
    __swift_project_value_buffer(v59, qword_280240FB0);
    v60 = sub_267EF89F8();
    v61 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v61))
    {
      v62 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v62);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v63, v64, "#PromptForTapbackFlowStrategy received unsupported parse");
      OUTLINED_FUNCTION_26();
    }

    type metadata accessor for TapbackAction(0);
    goto LABEL_39;
  }

  v28 = *(v1 + 208);
  sub_267BE58F4((v1 + 56), v1 + 16);
  __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
  sub_267E58838(v28);
  v29 = type metadata accessor for TapbackAction(0);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) != 1)
  {
    sub_267B9A598(*(v1 + 208), *(v1 + 200), &qword_280229928, &qword_267EFEB80);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      sub_267BBE134(*(v1 + 200), *(v1 + 248), &qword_280229920, &unk_267F0ABD0);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v84 = sub_267EF8A08();
      __swift_project_value_buffer(v84, qword_280240FB0);
      v85 = OUTLINED_FUNCTION_108();
      sub_267B9A598(v85, v86, v87, v88);
      v89 = sub_267EF89F8();
      v90 = sub_267EF95D8();
      v91 = os_log_type_enabled(v89, v90);
      v92 = *(v1 + 240);
      if (v91)
      {
        v93 = *(v1 + 232);
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v125 = v95;
        *v94 = 136315138;
        sub_267B9A598(v92, v93, &qword_280229920, &unk_267F0ABD0);
        v96 = sub_267EF9098();
        v98 = v97;
        sub_267B9F98C(v92, &qword_280229920, &unk_267F0ABD0);
        v99 = sub_267BA33E8(v96, v98, &v125);

        *(v94 + 4) = v99;
        _os_log_impl(&dword_267B93000, v89, v90, "#PromptForTapbackFlowStrategy received reaction with type %s", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v95);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      else
      {

        sub_267B9F98C(v92, &qword_280229920, &unk_267F0ABD0);
      }

      v100 = *(v1 + 208);
      v107 = *(v1 + 144);
      sub_267BBE134(*(v1 + 248), v107, &qword_280229920, &unk_267F0ABD0);
      swift_storeEnumTagMultiPayload();
      v101 = v107;
      goto LABEL_53;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_267BBE134(*(v1 + 200), *(v1 + 192), &qword_280229970, &unk_267F0E300);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v31 = sub_267EF8A08();
      __swift_project_value_buffer(v31, qword_280240FB0);
      v32 = OUTLINED_FUNCTION_108();
      sub_267B9A598(v32, v33, v34, v35);
      v36 = sub_267EF89F8();
      v37 = sub_267EF95D8();
      v38 = os_log_type_enabled(v36, v37);
      v40 = *(v1 + 184);
      v39 = *(v1 + 192);
      if (v38)
      {
        v41 = *(v1 + 176);
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v125 = v43;
        *v42 = 136315138;
        sub_267B9A598(v40, v41, &qword_280229970, &unk_267F0E300);
        v44 = sub_267EF9098();
        v46 = v45;
        sub_267B9F98C(v40, &qword_280229970, &unk_267F0E300);
        v47 = sub_267BA33E8(v44, v46, &v125);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_267B93000, v36, v37, "#PromptForTapbackFlowStrategy received unsupported reaction category %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();

        v48 = v39;
        v49 = &qword_280229970;
      }

      else
      {

        sub_267B9F98C(v40, &qword_280229970, &unk_267F0E300);
        v48 = OUTLINED_FUNCTION_108();
      }

      sub_267B9F98C(v48, v49, &unk_267F0E300);
      v100 = *(v1 + 208);
      v104 = *(v1 + 144);
      v103 = *(v1 + 152);
      v105 = sub_267EF4BA8();
      OUTLINED_FUNCTION_22();
      (*(v106 + 16))(v104, v103, v105);
      __swift_storeEnumTagSinglePayload(v104, 0, 1, v105);
      swift_storeEnumTagMultiPayload();
      v101 = v104;
LABEL_53:
      v102 = 0;
      goto LABEL_54;
    }

    sub_267EA13BC(*(v1 + 200));
  }

  v100 = *(v1 + 208);
  v101 = *(v1 + 144);
  v102 = 1;
LABEL_54:
  __swift_storeEnumTagSinglePayload(v101, v102, 1, v29);
  sub_267B9F98C(v100, &qword_280229928, &qword_267EFEB80);
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
LABEL_55:

  OUTLINED_FUNCTION_17();

  return v108();
}

uint64_t sub_267EA0C5C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_267EA0C7C, 0, 0);
}

uint64_t sub_267EA0C7C()
{
  v1 = *(*(v0 + 24) + 24);
  v2 = OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_hasPrompted;
  if (*(v1 + OBJC_IVAR____TtC16SiriMessagesFlow16SendTapbackState_hasPrompted))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v3 = sub_267EF8A08();
    __swift_project_value_buffer(v3, qword_280240FB0);
    v4 = sub_267EF89F8();
    v5 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v5))
    {
      v6 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v6);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v7, v8, "#PromptForTapbackFlowStrategy suppressing reprompt");
      OUTLINED_FUNCTION_26();
    }

    sub_267EF3D38();
    sub_267EF3D28();
    OUTLINED_FUNCTION_17();

    return v9();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v11 = sub_267EF8A08();
    __swift_project_value_buffer(v11, qword_280240FB0);
    v12 = sub_267EF89F8();
    v13 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v13))
    {
      v14 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v14);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v15, v16, "#PromptForTapbackFlowStrategy returning tapback prompt response output");
      OUTLINED_FUNCTION_26();
    }

    *(v1 + v2) = 1;
    v17 = swift_task_alloc();
    *(v0 + 32) = v17;
    *v17 = v0;
    v17[1] = sub_267EA0E70;

    return sub_267E43D18();
  }
}

uint64_t sub_267EA0E70()
{

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267EA0F9C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267CDE0E8;

  return sub_267E9FDD4(a1, a2);
}

uint64_t sub_267EA1044(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267CDE0E8;

  return sub_267EA0C5C(a1);
}

uint64_t sub_267EA10DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267CDE0E8;

  return MEMORY[0x2821B9D48](a1, a2, a3);
}

uint64_t sub_267EA1190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267CDE0E8;

  return MEMORY[0x2821B9D50](a1, a2, a3);
}

uint64_t sub_267EA1244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267CDDF34;

  return MEMORY[0x2821B9D38](a1, a2, a3);
}

uint64_t sub_267EA12F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267CDE0E8;

  return MEMORY[0x2821B9D40](a1, a2, a3, a4);
}

uint64_t sub_267EA13BC(uint64_t a1)
{
  v2 = type metadata accessor for TapbackAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_267EA1418(void (*a1)(uint64_t), void *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_6_55(v10, v31);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_70();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_25_2();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_3_83();
  if (v15)
  {
    v16 = v15;
    v32 = a1;
    sub_267EF2C98();

    v17 = OUTLINED_FUNCTION_5_70();
    a1(v17);
    v18 = [a2 (v3 + 1583)];
    if (v18)
    {
      v19 = v18;
      sub_267EF2C98();

      (a1)(v4, v5, v2);
      sub_267EF2C88();
      v21 = v20;
      sub_267EF2C88();
      v22 = OUTLINED_FUNCTION_8_58();
      v4(v22);
      v23 = OUTLINED_FUNCTION_100_1();
      v4(v23);
      return v6 < v21;
    }

    v25 = OUTLINED_FUNCTION_100_1();
    v26(v25);
  }

  v27 = [a1 (v3 + 1583)];
  if (v27)
  {
    v28 = v27;
    sub_267EF2C98();

    OUTLINED_FUNCTION_1_86(v33, 0);
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_1_86(v33, 1);
    if (qword_280228820 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_280228820);
    }

    v29 = qword_280240FC8;
    v30 = sub_267EF95D8();
    sub_267EF8998("#dateSorterNewest Found message with no dateTime", 48, 2, &dword_267B93000, v29, v30, MEMORY[0x277D84F90]);
    return 1;
  }
}

uint64_t sub_267EA16C8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = a2(a1);
  v4 = v3;
  v5 = v2 == 0x7473726966 && v3 == 0xE500000000000000;
  if (v5 || (v6 = v2, (OUTLINED_FUNCTION_9_56(0x7473726966, 0xE500000000000000) & 1) != 0))
  {

    return 0;
  }

  else
  {
    v8 = v6 == 0x646E6F636573 && v4 == 0xE600000000000000;
    if (v8 || (OUTLINED_FUNCTION_9_56(0x646E6F636573, 0xE600000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = v6 == 0x6472696874 && v4 == 0xE500000000000000;
      if (v9 || (OUTLINED_FUNCTION_9_56(0x6472696874, 0xE500000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = v6 == 0x687472756F66 && v4 == 0xE600000000000000;
        if (v10 || (OUTLINED_FUNCTION_9_56(0x687472756F66, 0xE600000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = v6 == 0x6874666966 && v4 == 0xE500000000000000;
          if (v11 || (OUTLINED_FUNCTION_9_56(0x6874666966, 0xE500000000000000) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = v6 == 0x6874786973 && v4 == 0xE500000000000000;
            if (v12 || (OUTLINED_FUNCTION_9_56(0x6874786973, 0xE500000000000000) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v13 = v6 == 0x68746E65766573 && v4 == 0xE700000000000000;
              if (v13 || (OUTLINED_FUNCTION_9_56(0x68746E65766573, 0xE700000000000000) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v14 = v6 == 0x687468676965 && v4 == 0xE600000000000000;
                if (v14 || (OUTLINED_FUNCTION_9_56(0x687468676965, 0xE600000000000000) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v15 = v6 == 0x68746E696ELL && v4 == 0xE500000000000000;
                  if (v15 || (OUTLINED_FUNCTION_9_56(0x68746E696ELL, 0xE500000000000000) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v16 = v6 == 0x68746E6574 && v4 == 0xE500000000000000;
                    if (v16 || (OUTLINED_FUNCTION_9_56(0x68746E6574, 0xE500000000000000) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v17 = v6 == 0x68746E6576656C65 && v4 == 0xE800000000000000;
                      if (v17 || (OUTLINED_FUNCTION_9_56(0x68746E6576656C65, 0xE800000000000000) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v18 = v6 == 0x6874666C657774 && v4 == 0xE700000000000000;
                        if (v18 || (OUTLINED_FUNCTION_9_56(0x6874666C657774, 0xE700000000000000) & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v19 = OUTLINED_FUNCTION_30_37(0x72696874u);
                          v20 = v5 && v4 == 0xEA00000000006874;
                          if (v20 || (OUTLINED_FUNCTION_9_56(v19, 0xEA00000000006874) & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v21 = OUTLINED_FUNCTION_30_37(0x72756F66u);
                            v22 = v5 && v4 == 0xEA00000000006874;
                            if (v22 || (OUTLINED_FUNCTION_9_56(v21, 0xEA00000000006874) & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v23 = v6 == 0x746E656574666966 && v4 == 0xE900000000000068;
                              if (v23 || (OUTLINED_FUNCTION_9_56(0x746E656574666966, 0xE900000000000068) & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v24 = v6 == 0x746E656574786973 && v4 == 0xE900000000000068;
                                if (v24 || (OUTLINED_FUNCTION_9_56(0x746E656574786973, 0xE900000000000068) & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v25 = v6 == 0x6565746E65766573 && v4 == 0xEB0000000068746ELL;
                                  if (v25 || (OUTLINED_FUNCTION_9_56(0x6565746E65766573, 0xEB0000000068746ELL) & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v26 = OUTLINED_FUNCTION_30_37(0x68676965u);
                                    v27 = v5 && v4 == 0xEA00000000006874;
                                    if (v27 || (OUTLINED_FUNCTION_9_56(v26, 0xEA00000000006874) & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v28 = OUTLINED_FUNCTION_30_37(0x656E696Eu);
                                      v29 = v5 && v4 == 0xEA00000000006874;
                                      if (v29 || (OUTLINED_FUNCTION_9_56(v28, 0xEA00000000006874) & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v30 = v6 == 0x746569746E657774 && v4 == 0xE900000000000068;
                                        if (v30 || (OUTLINED_FUNCTION_9_56(0x746569746E657774, 0xE900000000000068) & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v31 = v6 == 0x662079746E657774 && v4 == 0xEC00000074737269;
                                          if (v31 || (OUTLINED_FUNCTION_9_56(0x662079746E657774, 0xEC00000074737269) & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v32 = v6 == 0x732079746E657774 && v4 == 0xED0000646E6F6365;
                                            if (v32 || (OUTLINED_FUNCTION_9_56(0x732079746E657774, 0xED0000646E6F6365) & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v33 = v6 == 0x742079746E657774 && v4 == 0xEC00000064726968;
                                              if (v33 || (OUTLINED_FUNCTION_9_56(0x742079746E657774, 0xEC00000064726968) & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v34 = v6 == 0x662079746E657774 && v4 == 0xED0000687472756FLL;
                                                if (v34 || (OUTLINED_FUNCTION_9_56(0x662079746E657774, 0xED0000687472756FLL) & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else if (v6 == 0x662079746E657774 && v4 == 0xEC00000068746669)
                                                {

                                                  return 24;
                                                }

                                                else
                                                {
                                                  v36 = OUTLINED_FUNCTION_9_56(0x662079746E657774, 0xEC00000068746669);

                                                  if (v36)
                                                  {
                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    return 0;
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
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_267EA1D30(uint64_t a1)
{
  if (qword_2802287B8 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_0(qword_280240E58, qword_280240E70);
  v2 = sub_267DE2E8C();
  v4 = v3;
  if (qword_2802287C0 != -1)
  {
    swift_once();
  }

  sub_267B9AFEC(&qword_280240E80, v9);
  v5 = v9[4];
  __swift_project_boxed_opaque_existential_0(v9, v9[3]);
  sub_267EDECC0(a1);
  v6 = (*(v5 + 8))();

  __swift_destroy_boxed_opaque_existential_0(v9);

  v9[0] = sub_267D32728(v7);
  sub_267EA9800(v9, v2, v4, v6);

  return v9[0];
}

BOOL sub_267EA1EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_267EF7C18();
  if (v9)
  {
    if (a4)
    {
      if (v8 == a3 && v9 == a4)
      {

        return 1;
      }

      v11 = sub_267EF9EA8();

      if (v11)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  else if (!a4)
  {
    return 1;
  }

  v12 = sub_267EF7C18();
  if (v13)
  {
    if (a4)
    {
      if (v12 == a3 && v13 == a4)
      {

        return 0;
      }

      v15 = sub_267EF9EA8();

      if (v15)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  else if (!a4)
  {
    return 0;
  }

  v17 = sub_267EF7C18();
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v20 = COERCE_DOUBLE(sub_267C8EEE0(v17, v19, a5));
  v22 = v21;

  if (v22)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v20;
  }

  v24 = sub_267EF7C18();
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  v27 = sub_267C8EEE0(v24, v26, a5);
  v29 = v28;

  v30 = *&v27;
  if (v29)
  {
    v30 = 0.0;
  }

  return v30 < v23;
}

uint64_t sub_267EA2064()
{
  OUTLINED_FUNCTION_12();
  v1[28] = v2;
  v1[29] = v0;
  v3 = sub_267EF7D48();
  v1[30] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[31] = v4;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v5 = sub_267EF4C08();
  v1[35] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[36] = v6;
  v1[37] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EA2174(uint64_t a1)
{
  v2 = v1[37];
  sub_267EF4B88();
  sub_267E57DFC(v2, v1 + 2);
  v3 = OUTLINED_FUNCTION_26_0();
  v4(v3);
  sub_267EABAEC((v1 + 2), (v1 + 7));
  v5 = v1[10];
  if (v5)
  {
    __swift_project_boxed_opaque_existential_0(v1 + 7, v1[10]);
    v6 = OUTLINED_FUNCTION_38_0();
    v8 = v7(v6);
    v5 = v9;
    __swift_destroy_boxed_opaque_existential_0(v1 + 7);
  }

  else
  {
    sub_267B9FF34((v1 + 7), &unk_28022BBF0, &unk_267F01C60);
    v8 = 0;
  }

  v10 = (v1[29] + OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_appName);
  *v10 = v8;
  v10[1] = v5;

  sub_267EABAEC((v1 + 2), (v1 + 12));
  if (v1[15])
  {
    __swift_project_boxed_opaque_existential_0(v1 + 12, v1[15]);
    v11 = OUTLINED_FUNCTION_38_0();
    v13 = v12(v11);
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_0(v1 + 12);
  }

  else
  {
    sub_267B9FF34((v1 + 12), &unk_28022BBF0, &unk_267F01C60);
    v13 = 0;
    v15 = 0;
  }

  v1[38] = v15;
  if (v10[1] && !v15)
  {
    v22 = qword_280228818;

    if (v22 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v23 = sub_267EF8A08();
    __swift_project_value_buffer(v23, qword_280240FB0);
    OUTLINED_FUNCTION_43();

    v24 = sub_267EF89F8();
    v25 = sub_267EF95D8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_48();
      v33 = OUTLINED_FUNCTION_52();
      *v26 = 136315138;
      v27 = OUTLINED_FUNCTION_3();
      v30 = sub_267BA33E8(v27, v28, v29);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_267B93000, v24, v25, "#SendMessageAppResolutionOnDeviceFlowStrategy.resolveApp app bundle ID for requested app '%s' is not available", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
    }

    sub_267EF4458();
    sub_267EF4408();
    sub_267B9FF34((v1 + 2), &unk_28022BBF0, &unk_267F01C60);

    v31 = OUTLINED_FUNCTION_37();

    return v32(v31);
  }

  else
  {
    v16 = v1[29];
    v17 = swift_task_alloc();
    v1[39] = v17;
    v17[2] = v16;
    v17[3] = v13;
    v17[4] = v15;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v1[40] = v18;
    *v18 = v19;
    v18[1] = sub_267EA252C;
    v20 = v1[34];

    return sub_267C9C318(v20, sub_267EABB5C, v17);
  }
}

uint64_t sub_267EA252C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 328) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EA2634()
{
  v46 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[30];
  v3 = v0[31];
  v5 = sub_267EF8A08();
  __swift_project_value_buffer(v5, qword_280240FB0);
  v8 = *(v3 + 16);
  v6 = v3 + 16;
  v7 = v8;
  v8(v2, v1, v4);
  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[31];
  if (v11)
  {
    v43 = OUTLINED_FUNCTION_48();
    v44 = OUTLINED_FUNCTION_52();
    v45 = v44;
    *v43 = 136315138;
    sub_267EABB68(&qword_2802294E8, MEMORY[0x277D55430], MEMORY[0x277D55438]);
    v13 = sub_267EF9E58();
    v15 = v14;
    v42 = v10;
    v16 = *(v12 + 8);
    v17 = OUTLINED_FUNCTION_401();
    v16(v17);
    v18 = sub_267BA33E8(v13, v15, &v45);

    *(v43 + 4) = v18;
    _os_log_impl(&dword_267B93000, v9, v42, "#SendMessageAppResolutionOnDeviceFlowStrategy app resolution result: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v16 = *(v12 + 8);
    v19 = OUTLINED_FUNCTION_401();
    v16(v19);
  }

  v21 = v0[31];
  v20 = v0[32];
  v22 = v0[30];
  v7(v20, v0[34], v22);
  v23 = (*(v21 + 88))(v20, v22);
  v24 = v0[32];
  v25 = v0[30];
  if (v23 == *MEMORY[0x277D55428])
  {
    (*(v0[31] + 96))(v0[32], v25);
    v26 = *v24;
    sub_267EABAEC((v0 + 2), (v0 + 17));
    if (v0[20])
    {
      v27 = v0[21];
      __swift_project_boxed_opaque_existential_0(v0 + 17, v0[20]);
      v28 = OUTLINED_FUNCTION_54_1();
      v30 = v29(v28, v27);
      __swift_destroy_boxed_opaque_existential_0(v0 + 17);
      if (v30)
      {
        v31 = v0[29];

        *(*(v31 + 56) + 96) = 1;
        goto LABEL_18;
      }
    }

    else
    {
      sub_267B9FF34((v0 + 17), &unk_28022BBF0, &unk_267F01C60);
    }

    v32 = *(v0[29] + OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_previouslyResolvedApp);
    if (v32 && (v0[26] = v32, v0[27] = v26, sub_267EF7C38(), sub_267EABB68(&qword_28022CF90, MEMORY[0x277D55380], MEMORY[0x277D55388]), , v33 = sub_267EF8FE8(), , (v33 & 1) == 0))
    {
      v34 = sub_267EF89F8();
      v35 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_10_2(v35))
      {
        v36 = OUTLINED_FUNCTION_32();
        *v36 = 0;
        _os_log_impl(&dword_267B93000, v34, v6, "#SendMessageAppResolutionOnDeviceFlowStrategy app is changed by SeAS", v36, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v37 = v0[29];

      *(*(v37 + 56) + 97) = 1;
    }

    else
    {
    }
  }

  else
  {
    (v16)(v0[32], v25);
  }

LABEL_18:
  v38 = sub_267EA2DEC();
  v39 = OUTLINED_FUNCTION_66();
  v16(v39);
  sub_267B9FF34((v0 + 2), &unk_28022BBF0, &unk_267F01C60);

  v40 = v0[1];

  return v40(v38);
}

uint64_t sub_267EA2AC0()
{
  v14 = v0;

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = *(v0 + 328);
  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = OUTLINED_FUNCTION_54_1();
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_48();
    v13 = OUTLINED_FUNCTION_55_0();
    *v1 = 136315138;
    swift_getErrorValue();
    v6 = sub_267EF9F68();
    v8 = sub_267BA33E8(v6, v7, &v13);

    *(v1 + 1) = v8;
    OUTLINED_FUNCTION_52_18(&dword_267B93000, v9, v5, "#SendMessageAppResolutionOnDeviceFlowStrategy failed to resolve app due to error: %s");
    OUTLINED_FUNCTION_50_18();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  sub_267EF4458();
  sub_267EF4408();

  sub_267B9FF34(v0 + 16, &unk_28022BBF0, &unk_267F01C60);

  v10 = OUTLINED_FUNCTION_37();

  return v11(v10);
}

uint64_t sub_267EA2C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[3] = sub_267EF7D28();
  v8[4] = MEMORY[0x277D553E0];
  __swift_allocate_boxed_opaque_existential_0(v8);

  sub_267EA2D3C(a4, a5);
  sub_267EF7D58();
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t sub_267EA2D3C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D47448]) init];
  if (a2)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D47968]) init];
    sub_267EAB120(a1, a2, v5);
    [v4 setRequestedApp_];
  }

  return MEMORY[0x2821B69A0](v4);
}

uint64_t sub_267EA2DEC()
{
  v2 = sub_267EF7D48();
  OUTLINED_FUNCTION_58();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_58_18();
  (*(v4 + 16))(v1, v0, v2);
  v6 = OUTLINED_FUNCTION_3();
  v8 = v7(v6);
  if (v8 == *MEMORY[0x277D55418])
  {
    v9 = OUTLINED_FUNCTION_3();
    v10(v9);
    sub_267EF4458();
    OUTLINED_FUNCTION_43();
    sub_267EF4448();
  }

  else
  {
    if (v8 == *MEMORY[0x277D55420])
    {
      v11 = OUTLINED_FUNCTION_3();
      v12(v11);
      sub_267EF4458();
      OUTLINED_FUNCTION_43();
      sub_267EF4418();
      OUTLINED_FUNCTION_43();

      return v0;
    }

    if (v8 != *MEMORY[0x277D55428])
    {
      sub_267EF4458();
      v0 = sub_267EF4408();
      v15 = OUTLINED_FUNCTION_3();
      v16(v15);
      return v0;
    }

    v13 = OUTLINED_FUNCTION_3();
    v14(v13);
    sub_267EF4458();
    OUTLINED_FUNCTION_43();
    sub_267EF4438();
  }

  OUTLINED_FUNCTION_43();

  return v0;
}

void sub_267EA2FA8()
{
  OUTLINED_FUNCTION_48_0();
  v102 = v0;
  v3 = v2;
  v106 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v104 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v107 = v7 - v6;
  OUTLINED_FUNCTION_26_2();
  v8 = sub_267EF3868();
  OUTLINED_FUNCTION_58();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6();
  v101 = v12;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v98 - v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_45_0();
  v108 = v17;
  OUTLINED_FUNCTION_26_2();
  v18 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_58_18();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v22 = sub_267EF8A08();
  v23 = __swift_project_value_buffer(v22, qword_280240FB0);
  v24 = *(v20 + 16);
  v105 = v3;
  v24(v1, v3, v18);
  v103 = v23;
  v25 = sub_267EF89F8();
  v26 = sub_267EF95C8();
  if (os_log_type_enabled(v25, v26))
  {
    OUTLINED_FUNCTION_48();
    v99 = v16;
    v27 = OUTLINED_FUNCTION_55_0();
    v100 = v10;
    v28 = v27;
    v109[0] = v27;
    *v16 = 136315138;
    OUTLINED_FUNCTION_23_32();
    sub_267EABB68(v29, v30, MEMORY[0x277D5C120]);
    v31 = sub_267EF9E58();
    v32 = v8;
    v34 = v33;
    (*(v20 + 8))(v1, v18);
    v35 = sub_267BA33E8(v31, v34, v109);
    v8 = v32;

    *(v16 + 4) = v35;
    OUTLINED_FUNCTION_52_18(&dword_267B93000, v36, v26, "#SendMessageAppResolutionOnDeviceFlowStrategy.parseConfirmationResponse: %s");
    __swift_destroy_boxed_opaque_existential_0(v28);
    v10 = v100;
    OUTLINED_FUNCTION_32_0();
    v16 = v99;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v20 + 8))(v1, v18);
  }

  v37 = v107;
  sub_267EF4B88();
  v38 = v108;
  sub_267EBF390(v108);
  v39 = *(v104 + 8);
  v40 = v106;
  v39(v37, v106);
  (*(v10 + 16))(v16, v38, v8);
  v41 = (*(v10 + 88))(v16, v8);
  v42 = *MEMORY[0x277D5B960];
  if (v41 == v42 || v41 == *MEMORY[0x277D5B970])
  {
    goto LABEL_11;
  }

  if (v41 == *MEMORY[0x277D5B978])
  {
    OUTLINED_FUNCTION_44_24(*(v102 + 56));
    sub_267EF46F8();
    sub_267EF46E8();
LABEL_18:
    (*(v10 + 8))(v108, v8);
    goto LABEL_33;
  }

  v37 = v107;
  if (v41 == *MEMORY[0x277D5B968])
  {
LABEL_11:
    sub_267EF4B88();
    v44 = sub_267E57DFC(v37, v109);
    (v39)(v37, v40, v44);
    v45 = v110;
    if (v110)
    {
      v46 = v111;
      __swift_project_boxed_opaque_existential_0(v109, v110);
      v47 = (*(v46 + 368))(v45, v46);
      v49 = v48;
      __swift_destroy_boxed_opaque_existential_0(v109);
      if (v49)
      {

        v50 = sub_267EF89F8();
        v51 = sub_267EF95D8();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = OUTLINED_FUNCTION_48();
          v53 = OUTLINED_FUNCTION_52();
          v109[0] = v53;
          *v52 = 136315138;
          *(v52 + 4) = sub_267BA33E8(v47, v49, v109);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v53);
          OUTLINED_FUNCTION_29_1();
          OUTLINED_FUNCTION_26();
        }

        OUTLINED_FUNCTION_44_24(*(v102 + 56));
        sub_267EF46F8();
        sub_267EF7C38();
        sub_267EF7C08();
        sub_267EF46D8();
        OUTLINED_FUNCTION_91_3();

        goto LABEL_18;
      }
    }

    else
    {
      sub_267B9FF34(v109, &unk_28022BBF0, &unk_267F01C60);
    }

    v68 = *(v10 + 104);
    v69 = v101;
    v68();
    v70 = sub_267C29010(v108, v69);
    v71 = *(v10 + 8);
    v71(v69, v8);
    if (v70)
    {
      v72 = sub_267EF89F8();
      v73 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v73))
      {
LABEL_26:
        v74 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v74);
        OUTLINED_FUNCTION_64_1();
        _os_log_impl(v75, v76, v77, v78, v79, 2u);
        OUTLINED_FUNCTION_26();
      }
    }

    else
    {
      (v68)(v69, v42, v8);
      v80 = sub_267C29010(v108, v69);
      v71(v69, v8);
      if (v80)
      {
        v81 = sub_267EF89F8();
        v82 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v82))
        {
          v83 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v83);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v84, v85, v86, v87, v88, 2u);
          OUTLINED_FUNCTION_26();
        }

        sub_267EF46F8();
        sub_267EF46C8();
        goto LABEL_32;
      }

      v89 = sub_267BAF0DC(*(v102 + OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_eligibleApps));
      v72 = sub_267EF89F8();
      v90 = sub_267EF95D8();
      v91 = OUTLINED_FUNCTION_36(v90);
      if (v89 >= 2)
      {
        if (v91)
        {
          v92 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v92);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v93, v94, v95, v96, v97, 2u);
          OUTLINED_FUNCTION_26();
        }

        sub_267EF46F8();

        sub_267EF46A8();
        OUTLINED_FUNCTION_91_3();

        goto LABEL_32;
      }

      if (v91)
      {
        goto LABEL_26;
      }
    }

    sub_267EF46F8();
    sub_267EF46B8();
LABEL_32:
    v71(v108, v8);
    goto LABEL_33;
  }

  v59 = sub_267EF89F8();
  v60 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_36(v60))
  {
    v61 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v61);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v62, v63, v64, v65, v66, 2u);
    OUTLINED_FUNCTION_26();
  }

  sub_267EF46F8();
  sub_267EF46C8();
  v67 = *(v10 + 8);
  v67(v108, v8);
  v67(v16, v8);
LABEL_33:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EA37CC()
{
  OUTLINED_FUNCTION_12();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_267EF8178();
  v1[15] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[16] = v5;
  v1[17] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v6);
  v1[18] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF48A8();
  v1[19] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[20] = v8;
  v1[21] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v9);
  v1[22] = OUTLINED_FUNCTION_2();
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267EA3900()
{
  OUTLINED_FUNCTION_56();
  __swift_project_boxed_opaque_existential_0((*(v0 + 112) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder), *(*(v0 + 112) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder + 24));
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_14_10(v1);
  v2 = OUTLINED_FUNCTION_66();

  return sub_267CB8088(v2, v3);
}

uint64_t sub_267EA39B8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267EA3AA0()
{
  OUTLINED_FUNCTION_56();
  *(v0[14] + OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_eligibleApps) = v0[24];

  type metadata accessor for SendMessageCATsSimple(0);
  sub_267EF7B68();
  v0[25] = sub_267EF79E8();
  type metadata accessor for MessagesApp(0);
  OUTLINED_FUNCTION_43();

  v2 = sub_267EC814C(v1);
  v0[26] = v2;
  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_14_10(v3);

  return sub_267E9B7D8(v2);
}

uint64_t sub_267EA3B9C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 224) = v5;
  *(v3 + 232) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267EA3CAC(uint64_t a1)
{
  v2 = *(v1 + 224);
  v37 = *(v1 + 104);
  sub_267EF3C98();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = vextq_s8(v37, v37, 8uLL);
  sub_267EF47A8();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v4 = sub_267EF8A08();
  __swift_project_value_buffer(v4, qword_280240FB0);
  v5 = sub_267EF89F8();
  v6 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_10_2(v6))
  {
    v7 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v7);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v8, v9, "#SendMessageAppResolutionOnDeviceFlowStrategy returning SMART confirmation prompt");
    OUTLINED_FUNCTION_26();
  }

  v10 = *(v1 + 112);

  __swift_project_boxed_opaque_existential_0((v10 + 16), *(v10 + 40));
  v11 = OUTLINED_FUNCTION_38_0();
  v12(v11);
  __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
  OUTLINED_FUNCTION_38_0();
  v13 = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  if (v13)
  {
    v14 = *(v1 + 224);
    v15 = sub_267EF4198();
    OUTLINED_FUNCTION_97(v15);
    *(v1 + 240) = sub_267EF4188();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v16 = swift_allocObject();
    *(v1 + 248) = v16;
    *(v16 + 16) = xmmword_267EFCA40;
    *(v16 + 32) = v14;
    v38 = OUTLINED_FUNCTION_25_3(MEMORY[0x277D5BD50]);
    v17 = v14;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v1 + 256) = v18;
    *v18 = v19;
    v18[1] = sub_267EA4038;
    v20 = *(v1 + 168);
    v21 = *(v1 + 96);

    return (v38)(v21, v16, v20);
  }

  else
  {
    v23 = *(v1 + 224);
    v25 = *(v1 + 128);
    v24 = *(v1 + 136);
    v26 = *(v1 + 120);
    OUTLINED_FUNCTION_22_0();
    sub_267DA18D4();
    v27 = sub_267EF4198();
    OUTLINED_FUNCTION_97(v27);
    *(v1 + 264) = sub_267EF4188();
    *(v1 + 80) = v26;
    OUTLINED_FUNCTION_22_36();
    *(v1 + 88) = sub_267EABB68(v28, v29, MEMORY[0x277D5D398]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v1 + 56));
    (*(v25 + 16))(boxed_opaque_existential_0, v24, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v31 = swift_allocObject();
    *(v1 + 272) = v31;
    *(v31 + 16) = xmmword_267EFCA40;
    *(v31 + 32) = v23;
    v39 = OUTLINED_FUNCTION_25_3(MEMORY[0x277D5BD40]);
    v32 = v23;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v1 + 280) = v33;
    *v33 = v34;
    v33[1] = sub_267EA41E4;
    v35 = *(v1 + 168);
    v36 = *(v1 + 96);

    return (v39)(v36, v1 + 56, v31, v35);
  }
}

uint64_t sub_267EA4038()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267EA4154()
{
  OUTLINED_FUNCTION_56();

  v1 = OUTLINED_FUNCTION_48_28();
  v2(v1);

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_267EA41E4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267EA4308()
{
  OUTLINED_FUNCTION_56();

  v1 = OUTLINED_FUNCTION_66();
  v2(v1);
  v3 = OUTLINED_FUNCTION_48_28();
  v4(v3);

  OUTLINED_FUNCTION_1();

  return v5();
}

uint64_t sub_267EA43B4()
{

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267EA4454(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = [a2 catId];
  sub_267EF9028();

  sub_267EF47D8();
  sub_267EF47F8();
  sub_267EF4858();
  sub_267EA67DC();
  v9 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  return sub_267EF4818();
}

void sub_267EA456C()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  v141 = &v138 - v7;
  OUTLINED_FUNCTION_26_2();
  sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v143 = v9;
  v144 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6();
  v140 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_45_0();
  v142 = v12;
  OUTLINED_FUNCTION_26_2();
  v13 = sub_267EF4BE8();
  OUTLINED_FUNCTION_58();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_0();
  v147 = v18 - v17;
  OUTLINED_FUNCTION_26_2();
  v19 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_58_18();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v23 = sub_267EF8A08();
  v24 = __swift_project_value_buffer(v23, qword_280240FB0);
  v25 = *(v21 + 16);
  v145 = v4;
  v25(v1, v4, v19);
  v146 = v24;
  v26 = sub_267EF89F8();
  v27 = sub_267EF95C8();
  v28 = &unk_267EFC000;
  if (os_log_type_enabled(v26, v27))
  {
    v29 = OUTLINED_FUNCTION_48();
    v139 = v13;
    v30 = v29;
    v31 = OUTLINED_FUNCTION_52();
    v138 = v15;
    v151[0] = v31;
    *v30 = 136315138;
    OUTLINED_FUNCTION_23_32();
    sub_267EABB68(v32, v33, MEMORY[0x277D5C120]);
    v34 = sub_267EF9E58();
    v35 = v2;
    v37 = v36;
    v38 = OUTLINED_FUNCTION_3();
    v39(v38);
    v40 = sub_267BA33E8(v34, v37, v151);
    v2 = v35;
    v28 = &unk_267EFC000;

    *(v30 + 4) = v40;
    _os_log_impl(&dword_267B93000, v26, v27, "#SendMessageAppResolutionOnDeviceFlowStrategy.parseDisambiguationResponse: %s", v30, 0xCu);
    OUTLINED_FUNCTION_50_18();
    v15 = v138;
    OUTLINED_FUNCTION_32_0();
    v13 = v139;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v41 = OUTLINED_FUNCTION_3();
    v42(v41);
  }

  v43 = v142;
  sub_267EF4B88();
  v44 = v143;
  v45 = OUTLINED_FUNCTION_1_10();
  if (v46(v45) == *MEMORY[0x277D5C150])
  {
    v47 = v44 + 96;
    v48 = OUTLINED_FUNCTION_1_10();
    v49(v48);
    v50 = v147;
    (*(v15 + 32))(v147, v43, v13);
    v51 = v141;
    sub_267B9CC04(v50, v141);
    v52 = type metadata accessor for DirectInvocationUseCases(0);
    if (__swift_getEnumTagSinglePayload(v51, 1, v52) == 1)
    {
      sub_267B9FF34(v51, &unk_28022BBE0, qword_267EFD030);
    }

    else
    {
      OUTLINED_FUNCTION_66();
      if (swift_getEnumCaseMultiPayload() == 2)
      {

        v67 = sub_267EF89F8();
        sub_267EF95D8();
        OUTLINED_FUNCTION_60_14();

        if (os_log_type_enabled(v67, v47))
        {
          OUTLINED_FUNCTION_48();
          v151[0] = OUTLINED_FUNCTION_55_0();
          *v43 = v28[9];
          v68 = OUTLINED_FUNCTION_26_0();
          *(v43 + 4) = sub_267BA33E8(v68, v69, v70);
          OUTLINED_FUNCTION_68_1(&dword_267B93000, v71, v72, "#SendMessageAppResolutionOnDeviceFlowStrategy.parseDisambiguationResponse item selected by button tap: %s");
          OUTLINED_FUNCTION_50_18();
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_29_1();
        }

        sub_267EF7C38();
        OUTLINED_FUNCTION_38_0();
        sub_267EF7C08();
        sub_267EA67A8();
        OUTLINED_FUNCTION_91_3();

        goto LABEL_30;
      }

      sub_267CCEDF4(v51);
    }

    v93 = sub_267EF89F8();
    v94 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_36(v94))
    {
      v95 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v95);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v96, v97, v98, v99, v100, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_267EF48F8();
    sub_267EF48D8();
LABEL_30:
    (*(v15 + 8))(v147, v13);
    goto LABEL_46;
  }

  v53 = *(v44 + 8);
  LOBYTE(v44) = v44 + 8;
  v54 = OUTLINED_FUNCTION_1_10();
  v53(v54);
  v55 = v140;
  sub_267EF4B88();
  sub_267E57DFC(v55, &v149);
  v56 = OUTLINED_FUNCTION_1_10();
  v53(v56);
  if (v150)
  {
    sub_267BE58F4(&v149, v151);
    OUTLINED_FUNCTION_33_0();
    v57 = OUTLINED_FUNCTION_38_0();
    if (v58(v57))
    {
      v59 = sub_267EF89F8();
      v60 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v60))
      {
        v61 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v61);
        OUTLINED_FUNCTION_64_1();
        _os_log_impl(v62, v63, v64, v65, v66, 2u);
        OUTLINED_FUNCTION_26();
      }

      sub_267EF48F8();
      sub_267EF48C8();
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_33_0();
    v81 = OUTLINED_FUNCTION_38_0();
    v83 = v82(v81);
    if (v83 == 37)
    {
      OUTLINED_FUNCTION_33_0();
      v109 = OUTLINED_FUNCTION_38_0();
      v110(v109);
      if (!v111)
      {
        v130 = sub_267EF89F8();
        v131 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_36(v131))
        {
          v132 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v132);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v133, v134, v135, v136, v137, 2u);
          OUTLINED_FUNCTION_26();
        }

        sub_267EF48F8();
        sub_267EF48D8();
        goto LABEL_45;
      }

      v112 = sub_267EF89F8();
      sub_267EF95C8();
      OUTLINED_FUNCTION_60_14();

      if (os_log_type_enabled(v112, v44))
      {
        OUTLINED_FUNCTION_48();
        *&v149 = OUTLINED_FUNCTION_55_0();
        *v55 = v28[9];
        v113 = OUTLINED_FUNCTION_26_0();
        *(v55 + 4) = sub_267BA33E8(v113, v114, v115);
        OUTLINED_FUNCTION_68_1(&dword_267B93000, v116, v117, "#SendMessageAppResolutionOnDeviceFlowStrategy.parseDisambiguationResponse selected app: '%s'");
        OUTLINED_FUNCTION_50_18();
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_29_1();
      }

      sub_267EF7C38();
      OUTLINED_FUNCTION_38_0();
      sub_267EF7C08();
      goto LABEL_41;
    }

    v84 = v83;
    if (v83 == 25 && (, v85 = sub_267BB8BC4(), , v85))
    {

      v86 = sub_267EF89F8();
      sub_267EF95D8();
      OUTLINED_FUNCTION_60_14();

      if (!os_log_type_enabled(v86, v44))
      {
LABEL_36:

LABEL_41:
        sub_267EA67A8();
        OUTLINED_FUNCTION_91_3();

LABEL_45:
        __swift_destroy_boxed_opaque_existential_0(v151);
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_48();
      v148 = OUTLINED_FUNCTION_55_0();
      *v55 = v28[9];
      *&v149 = sub_267EF7C18();
      *(&v149 + 1) = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
      v88 = sub_267EF9098();
      v90 = sub_267BA33E8(v88, v89, &v148);

      *(v55 + 4) = v90;
      v92 = "#SendMessageAppResolutionOnDeviceFlowStrategy.parseDisambiguationResponse selected app using last ordinal reference '%s'";
    }

    else
    {
      v101 = sub_267EA16C8(v84, sub_267D6C0D4);
      if ((v102 & 1) != 0 || (v103 = v101, v44 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_apps), , v104 = sub_267EB0E94(v103, v44), , !v104))
      {

        v118 = sub_267EF89F8();
        v119 = sub_267EF95C8();

        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          *&v149 = swift_slowAlloc();
          *v120 = 136315394;
          LOBYTE(v148) = v84;
          v121 = sub_267EF9098();
          v123 = sub_267BA33E8(v121, v122, &v149);

          *(v120 + 4) = v123;
          *(v120 + 12) = 2080;
          v124 = sub_267EF7C38();

          v126 = MEMORY[0x26D608FD0](v125, v124);
          v128 = v127;

          v129 = sub_267BA33E8(v126, v128, &v149);

          *(v120 + 14) = v129;
          _os_log_impl(&dword_267B93000, v118, v119, "#SendMessageAppResolutionOnDeviceFlowStrategy.parseDisambiguationResponse unable to resolve smsReference value '%s' in app list: '%s'", v120, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_29_1();
          OUTLINED_FUNCTION_26();
        }

        sub_267EF48F8();

        sub_267EF48B8();
        OUTLINED_FUNCTION_91_3();

        goto LABEL_45;
      }

      v86 = sub_267EF89F8();
      sub_267EF95D8();
      OUTLINED_FUNCTION_60_14();

      if (!os_log_type_enabled(v86, v44))
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_48();
      v148 = OUTLINED_FUNCTION_55_0();
      *v55 = v28[9];
      *&v149 = sub_267EF7C18();
      *(&v149 + 1) = v105;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
      v106 = sub_267EF9098();
      v108 = sub_267BA33E8(v106, v107, &v148);

      *(v55 + 4) = v108;
      v92 = "#SendMessageAppResolutionOnDeviceFlowStrategy.parseDisambiguationResponse selected app using ordinal reference '%s'";
    }

    OUTLINED_FUNCTION_52_18(&dword_267B93000, v91, v44, v92);
    OUTLINED_FUNCTION_50_18();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
    goto LABEL_36;
  }

  sub_267B9FF34(&v149, &unk_28022BBF0, &unk_267F01C60);
  v73 = sub_267EF89F8();
  v74 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_36(v74))
  {
    v75 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v75);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v76, v77, v78, v79, v80, 2u);
    OUTLINED_FUNCTION_26();
  }

  sub_267EF48F8();
  sub_267EF48D8();
LABEL_46:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EA5098()
{
  OUTLINED_FUNCTION_12();
  v1[38] = v2;
  v1[39] = v0;
  v1[37] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v4);
  v1[40] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF2E38();
  v1[41] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[42] = v6;
  v1[43] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF4228();
  v1[44] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[45] = v8;
  v1[46] = OUTLINED_FUNCTION_2();
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267EA51B8()
{
  OUTLINED_FUNCTION_56();
  __swift_project_boxed_opaque_existential_0((*(v0 + 312) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder), *(*(v0 + 312) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder + 24));
  v1 = swift_task_alloc();
  *(v0 + 376) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_14_10(v1);
  v2 = OUTLINED_FUNCTION_66();

  return sub_267CB8088(v2, v3);
}

uint64_t sub_267EA5270()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 384) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267EA5358()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[38];
  v1 = v0[39];
  *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_eligibleApps) = v0[48];

  v3 = sub_267EA1D30(v2);
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_apps;
  v0[49] = OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_apps;
  *(v1 + v4) = v3;

  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags), *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags + 24));
  if (sub_267CC8B28())
  {
    v0[50] = *(v1 + v4);

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[51] = v5;
    *v5 = v6;
    v5[1] = sub_267EA54DC;

    return sub_267EA5C58();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[53] = v8;
    *v8 = v9;
    v8[1] = sub_267EA5618;

    return sub_267E4AD30();
  }
}

uint64_t sub_267EA54DC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 416) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v10();
  }
}

uint64_t sub_267EA5618()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 432) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EA5710()
{
  v1 = *(v0 + 312);
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v2 = OUTLINED_FUNCTION_38_0();
  v3(v2);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v4 = OUTLINED_FUNCTION_66();
  v6 = sub_267DBF950(v4, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if ((v6 & 1) == 0)
  {
    v37 = *(v0 + 392);
    v8 = *(v0 + 336);
    v7 = *(v0 + 344);
    v33 = *(v0 + 328);
    v34 = *(v0 + 312);
    v9 = v1[5];
    v10 = v1[6];
    __swift_project_boxed_opaque_existential_0(v1 + 2, v9);
    v11 = *(v10 + 8);

    v11(v9, v10);
    __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    OUTLINED_FUNCTION_54_1();
    sub_267EF3B68();
    sub_267EF4558();

    (*(v8 + 8))(v7, v33);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v12 = v1[5];
    v13 = v1[6];
    __swift_project_boxed_opaque_existential_0(v1 + 2, v12);
    v14 = *(v13 + 8);

    v14(v12, v13);
    v15 = v1[6];
    __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
    v16 = OUTLINED_FUNCTION_43();
    v17(v16, v15);
    __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
    OUTLINED_FUNCTION_66();
    sub_267DBF878();
    v18 = sub_267EF4568();

    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    v19 = *(v34 + v37);

    sub_267EA700C(v18, v19);
  }

  v20 = *(v0 + 360);
  v35 = *(v0 + 368);
  v36 = *(v0 + 352);
  v21 = *(v0 + 320);
  v22 = *(v0 + 296);
  v24 = v1[5];
  v23 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v24);
  (*(v23 + 8))(v24, v23);
  v25 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v26 = OUTLINED_FUNCTION_54_1();
  v27(v26, v25);
  __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
  OUTLINED_FUNCTION_54_1();
  sub_267EF3BC8();

  sub_267EA7B14();

  v28 = sub_267EF4158();
  OUTLINED_FUNCTION_63_14(v28);
  v29 = sub_267EF4CC8();
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  v30 = MEMORY[0x277D5C1D8];
  v22[3] = v29;
  v22[4] = v30;
  __swift_allocate_boxed_opaque_existential_0(v22);
  sub_267EF3F68();

  sub_267B9FF34(v0 + 256, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v21, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  (*(v20 + 8))(v35, v36);
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));

  OUTLINED_FUNCTION_1();

  return v31();
}

uint64_t sub_267EA5B58()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267EA5BDC()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267EA5C58()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_267EF8528();
  v1[10] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF3DA8();
  v1[13] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v8);
  v1[16] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v9);
  v1[17] = OUTLINED_FUNCTION_2();
  v10 = sub_267EF48A8();
  v1[18] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v1[19] = v11;
  v1[20] = OUTLINED_FUNCTION_2();
  v12 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v12);
  v1[21] = OUTLINED_FUNCTION_2();
  v13 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267EA5E04()
{
  OUTLINED_FUNCTION_12();
  type metadata accessor for SendMessageCATsSimple(0);
  sub_267EF7B68();
  *(v0 + 176) = sub_267EF79E8();
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_14_10(v1);

  return sub_267E9D098();
}

uint64_t sub_267EA5EB8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 192) = v5;
  *(v3 + 200) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267EA5FC0()
{
  v1 = v0[24];
  v3 = v0[14];
  v2 = v0[15];
  v47 = v0[13];
  sub_267EF3CA8();
  sub_267EF47A8();
  v4 = [v1 catId];
  sub_267EF9028();

  sub_267EF47D8();
  sub_267EF47F8();
  sub_267EF4858();
  sub_267EA7B14();
  v5 = sub_267EF4158();
  OUTLINED_FUNCTION_63_14(v5);
  sub_267EF4818();
  (*(v3 + 104))(v2, *MEMORY[0x277D5BC50], v47);
  sub_267EF47B8();
  if (qword_280228818 != -1)
  {
LABEL_27:
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v6 = sub_267EF8A08();
  __swift_project_value_buffer(v6, qword_280240FB0);
  v7 = sub_267EF89F8();
  v8 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_10_2(v8))
  {
    v9 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v9);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v10, v11, "#SendMessageAppResolutionOnDeviceFlowStrategy returning SMART disambiguation prompt");
    OUTLINED_FUNCTION_26();
  }

  v12 = v0[24];

  v13 = [v12 dialog];
  sub_267BA9F38(0, &unk_28022CF70, 0x277D052B0);
  v14 = sub_267EF92F8();

  if (sub_267BAF0DC(v14))
  {
    sub_267BBD0EC(0, (v14 & 0xC000000000000001) == 0, v14);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x26D609870](0, v14);
    }

    else
    {
      v15 = *(v14 + 32);
    }

    v16 = v15;

    v17 = [v16 unfilteredFullPrint];

    sub_267EF9028();
  }

  else
  {
  }

  v48 = v0;
  v18 = v0[8];
  v19 = sub_267BAF0DC(v18);
  v20 = 0;
  v21 = v18 & 0xC000000000000001;
  v22 = v18 & 0xFFFFFFFFFFFFFF8;
  v0 = MEMORY[0x277D84F90];
  while (v19 != v20)
  {
    if (v21)
    {
      MEMORY[0x26D609870](v20, v48[8]);
    }

    else
    {
      if (v20 >= *(v22 + 16))
      {
        goto LABEL_26;
      }
    }

    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v24 = sub_267EF7C18();
    v26 = v25;

    ++v20;
    if (v26)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267BF4EE8();
        v0 = v29;
      }

      v27 = v0[2];
      if (v27 >= v0[3] >> 1)
      {
        sub_267BF4EE8();
        v0 = v30;
      }

      v0[2] = v27 + 1;
      v28 = &v0[2 * v27];
      v28[4] = v24;
      v28[5] = v26;
      v20 = v23;
    }
  }

  v31 = v48[24];
  v33 = v48[11];
  v32 = v48[12];
  v34 = v48[10];
  sub_267EF8518();
  v35 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v35);
  v48[26] = sub_267EF4188();
  v36 = sub_267EF8178();
  v48[5] = v36;
  OUTLINED_FUNCTION_22_36();
  v48[6] = sub_267EABB68(v37, v38, MEMORY[0x277D5D398]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v48 + 2);
  (*(v33 + 16))(boxed_opaque_existential_0, v32, v34);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D5D380], v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v40 = swift_allocObject();
  v48[27] = v40;
  *(v40 + 16) = xmmword_267EFCA40;
  *(v40 + 32) = v31;
  v46 = OUTLINED_FUNCTION_25_3(MEMORY[0x277D5BD38]);
  v41 = v31;
  v42 = swift_task_alloc();
  v48[28] = v42;
  *v42 = v48;
  v42[1] = sub_267EA64E0;
  v43 = v48[20];
  v44 = v48[7];

  return (v46)(v44, v48 + 2, v40, v43);
}

uint64_t sub_267EA64E0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267EA6604()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);

  (*(v1 + 8))(v2, v3);
  v4 = OUTLINED_FUNCTION_26_0();
  v5(v4);

  OUTLINED_FUNCTION_1();

  return v6();
}

uint64_t sub_267EA66F8()
{

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267EA67A8()
{
  OUTLINED_FUNCTION_44_24(*(v0 + 56));
  sub_267EF48F8();
  OUTLINED_FUNCTION_43();
  return sub_267EF48E8();
}

void sub_267EA67DC()
{
  OUTLINED_FUNCTION_48_0();
  v64 = v1;
  v69 = v2;
  v3 = sub_267EF5148();
  v4 = OUTLINED_FUNCTION_18(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(v6 - v5);
  v68 = sub_267EF53D8();
  OUTLINED_FUNCTION_58();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v10);
  v12 = v62 - v11;
  sub_267EF5248();
  OUTLINED_FUNCTION_58();
  v77 = v14;
  v78 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_45_0();
  v75 = v16;
  OUTLINED_FUNCTION_26_2();
  v76 = sub_267EF5318();
  OUTLINED_FUNCTION_58();
  v74 = v17;
  v19 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_45_0();
  v73 = v20;
  OUTLINED_FUNCTION_26_2();
  v21 = sub_267EF5198();
  v22 = OUTLINED_FUNCTION_18(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_0();
  sub_267EF5438();
  OUTLINED_FUNCTION_58();
  v71 = v24;
  v72 = v23;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_45_0();
  v70 = v28;
  OUTLINED_FUNCTION_26_2();
  v67 = sub_267EF4158();
  OUTLINED_FUNCTION_58();
  v66 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_0_0();
  v33 = v32 - v31;
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v34 = OUTLINED_FUNCTION_10_0();
  v35(v34);
  sub_267EF4148();
  __swift_project_boxed_opaque_existential_0(v80, v81);
  OUTLINED_FUNCTION_10_0();
  sub_267EF3B98();
  sub_267EF4128();
  __swift_destroy_boxed_opaque_existential_0(v80);
  sub_267EF4098();
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  sub_267BB8DFC();
  sub_267EF40D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v36 = swift_allocObject();
  v63 = xmmword_267EFC020;
  *(v36 + 16) = xmmword_267EFC020;
  if (qword_2802288C8 != -1)
  {
    OUTLINED_FUNCTION_31_31(&qword_2802288C8);
  }

  *(v36 + 32) = sub_267BC9500();
  *(v36 + 40) = v37;
  sub_267EF4118();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_267EFCE30;
  *(v38 + 32) = sub_267BB90E4(0);
  *(v38 + 40) = v39;
  *(v38 + 48) = sub_267BB90E4(1);
  *(v38 + 56) = v40;
  *(v38 + 64) = sub_267BB90E4(2);
  *(v38 + 72) = v41;
  sub_267EF4108();
  v42 = v70;
  sub_267EF5428();
  sub_267EA8600();
  sub_267EF5418();
  sub_267EF5308();
  (*(v71 + 16))(v27, v42, v72);
  sub_267EF52A8();
  v43 = v75;
  sub_267EF5238();
  v44 = OUTLINED_FUNCTION_14_1();
  v45(v44);
  sub_267EF5228();
  sub_267EF53C8();
  (*(v77 + 16))(v62[1], v43, v78);
  sub_267EF53A8();
  sub_267BBB3D0();
  sub_267EF5398();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v46 = sub_267EF8A08();
  __swift_project_value_buffer(v46, qword_280240FB0);
  v47 = sub_267EF89F8();
  v48 = sub_267EF95D8();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = OUTLINED_FUNCTION_48();
    v64 = OUTLINED_FUNCTION_52();
    v79[3] = v64;
    *v49 = 136315138;
    OUTLINED_FUNCTION_83(v12, v79);
    v65 = v8;
    v50 = *(v8 + 16);
    v51 = v62[0];
    v52 = v68;
    v50(v62[0], v12, v68);
    sub_267EF5458();
    v81 = v52;
    OUTLINED_FUNCTION_24_40();
    v82 = sub_267EABB68(v53, v54, MEMORY[0x277D5DC50]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v80);
    v50(boxed_opaque_existential_0, v51, v52);
    v8 = v65;
    sub_267EF5448();
    (*(v8 + 8))(v51, v52);
    __swift_destroy_boxed_opaque_existential_0(v80);
    v56 = OUTLINED_FUNCTION_401();
    v59 = sub_267BA33E8(v56, v57, v58);

    *(v49 + 4) = v59;
    _os_log_impl(&dword_267B93000, v47, v48, "#SendMessageAppResolutionOnDeviceFlowStrategy sending confirmation system dialog acts: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v52 = v68;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v60 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = v63;
  OUTLINED_FUNCTION_83(v12, v80);
  (*(v8 + 16))(v61 + v60, v12, v52);
  sub_267EF4088();
  (*(v77 + 8))(v75, v78);
  (*(v74 + 8))(v73, v76);
  (*(v71 + 8))(v70, v72);
  (*(v66 + 32))(v69, v33, v67);
  (*(v8 + 8))(v12, v52);
  OUTLINED_FUNCTION_47();
}

void sub_267EA700C(uint64_t a1, unint64_t a2)
{
  v5 = sub_267BAF0DC(a1);
  for (i = 0; v5 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D609870](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v9 = v7;
    sub_267EA70D8(&v9, a2, v2);
  }
}

void sub_267EA70D8(void **a1, unint64_t a2, uint64_t a3)
{
  v4 = *a1;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    goto LABEL_46;
  }

  v6 = v5;
  v7 = v4;
  v8 = sub_267EAB208(v6);
  v10 = v9;
  v11 = objc_allocWithZone(MEMORY[0x277D4C728]);
  v12 = sub_267EA978C(v8, v10);
  if (!v12)
  {
    goto LABEL_59;
  }

  v13 = v12;
  v14 = [objc_allocWithZone(MEMORY[0x277D4C230]) initWithProtobuf_];

  v51 = v14;
  if (!v14)
  {

LABEL_46:
    objc_opt_self();
    v42 = swift_dynamicCastObjCClass();
    if (!v42)
    {
      return;
    }

    v43 = v42;
    v41 = v4;
    v44 = sub_267D102E0(v43, &selRef_items, &unk_28022CF60, 0x277D47AB8);
    if (v44)
    {
      v45 = v44;

      sub_267EA7698(v45, a2, sub_267EABAD8);
      v47 = v46;

      sub_267EAB184(v47, v43);
    }

    goto LABEL_51;
  }

  v15 = sub_267BAF0DC(a2);
  v16 = MEMORY[0x277D84F90];
  v50 = v7;
  v52 = v6;
  if (v15)
  {
    v54 = MEMORY[0x277D84F90];
    sub_267EF9BF8();
    if (v15 < 0)
    {
      goto LABEL_57;
    }

    v17 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x26D609870](v17, a2);
      }

      else
      {
        v18 = *(a2 + 8 * v17 + 32);
      }

      ++v17;
      sub_267EA79EC(v18);

      sub_267EF9BD8();
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    while (v15 != v17);
    v16 = v54;
    v7 = v50;
  }

  sub_267DA3648(v16, v6, &selRef_setReferencedCommands_);
  v19 = v14;
  v20 = sub_267D102E0(v14, &selRef_cardSections, &qword_28022CF58, 0x277D4C238);
  if (!v20)
  {
LABEL_42:
    v38 = [objc_allocWithZone(MEMORY[0x277D4C728]) initWithFacade_];
    if (v38 && (v39 = sub_267DEC238(v38), v40 >> 60 != 15))
    {
      v48 = v39;
      v49 = v40;
      v41 = sub_267EF2BB8();
      sub_267BBE0C8(v48, v49);
    }

    else
    {
      v41 = 0;
    }

    [v6 setCardData_];

LABEL_51:
    return;
  }

  v21 = v20;
  v22 = v20 & 0xC000000000000001;
  v23 = -sub_267BAF0DC(v20);
  v24 = 4;
  v53 = v22;
  while (1)
  {
    if (v23 + v24 == 4)
    {

      v7 = v50;
      v19 = v51;
      v6 = v52;
      goto LABEL_42;
    }

    v25 = v24 - 4;
    if (v22)
    {
      v26 = MEMORY[0x26D609870](v24 - 4, v21);
    }

    else
    {
      if (v25 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      v26 = *(v21 + 8 * v24);
    }

    v27 = v26;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    v28 = sub_267D102E0(v26, &selRef_commands, &qword_28022CF50, 0x277D4C1A0);
    if (!v28)
    {

      goto LABEL_38;
    }

    v29 = v28;
    v30 = v28 & 0xFFFFFFFFFFFFFF8;
    if (v28 >> 62)
    {
      if (!sub_267EF9A68())
      {
LABEL_37:

        goto LABEL_38;
      }
    }

    else if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    if ((v29 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x26D609870](0, v29);
    }

    else
    {
      if (!*(v30 + 16))
      {
        goto LABEL_55;
      }

      v31 = *(v29 + 32);
    }

    v32 = v31;

    v33 = [v32 value];

    if (v33 && (v34 = [v33 referentialCommand], v33, v34))
    {
      v35 = sub_267BDE6DC(v52);
      if (!v35)
      {
        goto LABEL_58;
      }

      if ((v35 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x26D609870](v24 - 4, v35);
      }

      else
      {
        if (v25 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v36 = *(v35 + 8 * v24);
        swift_unknownObjectRetain();
      }

      v37 = [v36 aceId];
      swift_unknownObjectRelease();
      [v34 setReferenceIdentifier_];
    }

    else
    {
    }

    v22 = v53;
LABEL_38:
    ++v24;
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

id sub_267EA75FC(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_267EFCA40;
  *(v3 + 32) = sub_267EA79EC(a2);
  sub_267DA3648(v3, a1, &selRef_setCommands_);

  return a1;
}

void sub_267EA7698(unint64_t a1, unint64_t a2, uint64_t (*a3)(unint64_t, uint64_t))
{
  v5 = sub_267BAF0DC(a1);
  v6 = sub_267BAF0DC(a2);
  if (v6 < v5)
  {
    v5 = v6;
  }

  v29 = MEMORY[0x277D84F90];
  sub_267EF9BF8();
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_52:
    __break(1u);
LABEL_53:

    __break(1u);
    return;
  }

  v28 = a1 >> 62;
  v26 = a2 >> 62;
  v23 = a2;
  if (v5)
  {
    v27 = a1 & 0xC000000000000001;
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = a2 & 0xFFFFFFFFFFFFFF8;
    v25 = a2 & 0xC000000000000001;
    v9 = 4;
    v22 = v5;
    v10 = v5;
    while (1)
    {
      v11 = v28 ? sub_267EF9A68() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v9 - 4;
      if (v9 - 4 == v11)
      {
        break;
      }

      if (v27)
      {
        v13 = MEMORY[0x26D609870](v9 - 4, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v13 = *(a1 + 8 * v9);
      }

      v5 = v13;
      if (v26)
      {
        v14 = sub_267EF9A68();
      }

      else
      {
        v14 = *(v8 + 16);
      }

      if (v12 == v14)
      {
        goto LABEL_53;
      }

      if (v25)
      {
        v15 = MEMORY[0x26D609870](v9 - 4, a2);
      }

      else
      {
        if (v12 >= *(v8 + 16))
        {
          goto LABEL_47;
        }

        v15 = *(a2 + 8 * v9);
      }

      a3(v5, v15);

      sub_267EF9BD8();
      v5 = *(v29 + 16);
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
      ++v9;
      --v10;
      a2 = v23;
      if (!v10)
      {
        v5 = v22;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v27 = a1 & 0xC000000000000001;
  v8 = a2 & 0xFFFFFFFFFFFFFF8;
  v25 = a2 & 0xC000000000000001;
LABEL_25:
  for (i = v5 + 4; ; ++i)
  {
    v17 = v28 ? sub_267EF9A68() : *(v7 + 16);
    v5 = i - 4;
    if (i - 4 == v17)
    {
      break;
    }

    if (v27)
    {
      v18 = MEMORY[0x26D609870](i - 4, a1);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_49;
      }

      v18 = *(a1 + 8 * i);
    }

    v19 = v18;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_48;
    }

    if (v26)
    {
      v20 = sub_267EF9A68();
    }

    else
    {
      v20 = *(v8 + 16);
    }

    if (v5 == v20)
    {

      return;
    }

    if (v25)
    {
      v21 = MEMORY[0x26D609870](i - 4, v23);
    }

    else
    {
      if (v5 >= *(v8 + 16))
      {
        goto LABEL_50;
      }

      v21 = *(v23 + 8 * i);
    }

    a3(v19, v21);

    sub_267EF9BD8();
    sub_267EF9C08();
    sub_267EF9C18();
    sub_267EF9BE8();
  }
}

id sub_267EA79EC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_267EF7C18();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = sub_267CEFFB0(v3, v5);

  v7 = objc_opt_self();
  v8 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
  v9 = OUTLINED_FUNCTION_54_1();
  v10(v9, v8);
  __swift_project_boxed_opaque_existential_0(v15, v15[3]);
  v11 = sub_267EF3C68();
  v12 = [v7 runSiriKitExecutorCommandWithContext:v11 payload:v6];

  __swift_destroy_boxed_opaque_existential_0(v15);
  v13 = [v7 wrapCommandInStartLocalRequest_];

  return v13;
}

void sub_267EA7B14()
{
  OUTLINED_FUNCTION_48_0();
  v3 = v2;
  v97 = v4;
  v5 = sub_267EF5198();
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(v8 - v7);
  v106 = sub_267EF5378();
  OUTLINED_FUNCTION_58();
  v102 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v89 - v12;
  v105 = sub_267EF5318();
  OUTLINED_FUNCTION_58();
  v107 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(v17 - v16);
  v96 = sub_267EF53D8();
  OUTLINED_FUNCTION_58();
  v95 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v89 - v21;
  v100 = sub_267EF5408();
  OUTLINED_FUNCTION_58();
  v99 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_1(v26);
  v27 = sub_267EF4158();
  OUTLINED_FUNCTION_58();
  v93 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(v31 - v30);
  sub_267EF2E38();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_58_18();
  v33 = v0[5];
  v34 = v0[6];
  v108 = v0;
  __swift_project_boxed_opaque_existential_0(v0 + 2, v33);
  (*(v34 + 8))(v112, v33, v34);
  __swift_project_boxed_opaque_existential_0(v112, v113);
  sub_267EF3B68();
  v109 = v3;
  v103 = sub_267EAB26C(v3, v1);
  v35 = OUTLINED_FUNCTION_3();
  v36(v35);
  __swift_destroy_boxed_opaque_existential_0(v112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229750, &unk_267F01E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFCE30;
  if (qword_2802288A8 != -1)
  {
    swift_once();
  }

  v38 = qword_280241060;
  v39 = OUTLINED_FUNCTION_14_1();
  *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
  *(inited + 64) = sub_267C586C4(&qword_280229758, &unk_28022CF00, &unk_267EFE460);
  *(inited + 32) = v38;
  v41 = qword_2802288E8;

  if (v41 != -1)
  {
    swift_once();
  }

  v94 = v27;
  v42 = qword_2802410A0;
  v43 = OUTLINED_FUNCTION_14_1();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(v43, v44);
  *(inited + 104) = sub_267C586C4(&qword_28022CF18, &qword_28022CF10, &unk_267F0EC50);
  *(inited + 72) = v42;
  v45 = qword_2802288C8;

  v46 = v100;
  if (v45 != -1)
  {
    OUTLINED_FUNCTION_31_31(&qword_2802288C8);
  }

  v47 = qword_280241080;
  v48 = OUTLINED_FUNCTION_14_1();
  *(inited + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
  *(inited + 144) = sub_267C586C4(&qword_28022A130, &unk_28022CF20, &qword_267F004D0);
  *(inited + 112) = v47;
  v50 = v108[6];
  __swift_project_boxed_opaque_existential_0(v108 + 2, v108[5]);
  v51 = *(v50 + 8);

  v52 = OUTLINED_FUNCTION_14_1();
  v51(v52);
  sub_267C37CA8(inited, v103, v112);
  swift_setDeallocating();
  sub_267DB70BC();

  __swift_destroy_boxed_opaque_existential_0(v112);
  v53 = sub_267BAF0DC(v109);
  if (v53)
  {
    v54 = v53;
    v112[0] = MEMORY[0x277D84F90];
    sub_267C72814(0, v53 & ~(v53 >> 63), 0);
    if (v54 < 0)
    {
      __break(1u);
      return;
    }

    v90 = v22;
    v55 = 0;
    v56 = v112[0];
    v103 = v109 & 0xC000000000000001;
    v57 = (v102 + 8);
    v102 = v107 + 32;
    do
    {
      if (v103)
      {
        MEMORY[0x26D609870](v55, v109);
      }

      else
      {
      }

      sub_267EF5368();
      sub_267EA8600();
      sub_267EF5358();
      v58 = v104;
      sub_267EF5308();
      v59 = OUTLINED_FUNCTION_401();
      v60 = v106;
      v61(v59);
      sub_267EF5298();

      (*v57)(v13, v60);
      v112[0] = v56;
      v63 = *(v56 + 16);
      v62 = *(v56 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_267C72814(v62 > 1, v63 + 1, 1);
        v56 = v112[0];
      }

      ++v55;
      *(v56 + 16) = v63 + 1;
      (*(v107 + 32))(v56 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v63, v58, v105);
    }

    while (v54 != v55);
    v22 = v90;
    v46 = v100;
  }

  v64 = v98;
  sub_267EF53F8();
  sub_267EF51C8();
  sub_267EF53C8();
  v65 = v99;
  (*(v99 + 16))(v92, v64, v46);
  sub_267EF5388();
  v66 = v96;
  v67 = v95;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v68 = sub_267EF8A08();
  v69 = __swift_project_value_buffer(v68, qword_280240FB0);
  v70 = sub_267EF89F8();
  v71 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_36(v71))
  {
    v72 = OUTLINED_FUNCTION_48();
    v109 = OUTLINED_FUNCTION_52();
    v111 = v109;
    *v72 = 136315138;
    OUTLINED_FUNCTION_83(v22, &v110);
    v73 = v46;
    v74 = v22;
    v75 = *(v67 + 16);
    v76 = v91;
    v75(v91, v74, v66);
    sub_267EF5458();
    LODWORD(v108) = v69;
    v113 = v66;
    OUTLINED_FUNCTION_24_40();
    v114 = sub_267EABB68(v77, v78, MEMORY[0x277D5DC50]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v112);
    v75(boxed_opaque_existential_0, v76, v66);
    v22 = v74;
    v46 = v73;
    v64 = v98;
    v80 = sub_267EF5448();
    v82 = v81;
    (*(v67 + 8))(v76, v66);
    __swift_destroy_boxed_opaque_existential_0(v112);
    v83 = sub_267BA33E8(v80, v82, &v111);

    *(v72 + 4) = v83;
    _os_log_impl(&dword_267B93000, v70, v108, "#SendMessageAppResolutionOnDeviceFlowStrategy sending disambiguation system dialog acts: %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v109);
    OUTLINED_FUNCTION_32_0();
    v65 = v99;
    OUTLINED_FUNCTION_32_0();
  }

  v84 = v94;
  v85 = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v86 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_267EFC020;
  OUTLINED_FUNCTION_83(v22, v112);
  (*(v67 + 16))(v87 + v86, v22, v66);
  v88 = v101;
  sub_267EF4088();
  (*(v65 + 8))(v64, v46);
  (*(v85 + 32))(v97, v88, v84);
  (*(v67 + 8))(v22, v66);
  OUTLINED_FUNCTION_47();
}

void sub_267EA8600()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v3 = sub_267EF2E38();
  OUTLINED_FUNCTION_58();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  v10 = sub_267EF6268();
  OUTLINED_FUNCTION_97(v10);
  sub_267EF6258();
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v11 = OUTLINED_FUNCTION_10_0();
  v12(v11);
  __swift_project_boxed_opaque_existential_0(v14, v14[3]);
  sub_267EF3B68();
  sub_267DE3164(v9);
  (*(v5 + 8))(v9, v3);
  __swift_destroy_boxed_opaque_existential_0(v14);
  sub_267EF5DD8();

  v13 = sub_267EF6448();
  OUTLINED_FUNCTION_97(v13);
  sub_267EF6438();
  sub_267EF61F8();
  sub_267BC8EDC(0, 0, v2);

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EA8798()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_appInfoBuilder));
}

char *sub_267EA882C()
{
  v0 = sub_267B9DCC8();

  __swift_destroy_boxed_opaque_existential_0(&v0[OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_appInfoBuilder]);

  return v0;
}

uint64_t sub_267EA88C8()
{
  sub_267EA882C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SendMessageAppResolutionOnDeviceFlowStrategy(uint64_t a1)
{
  result = qword_28022CEC8;
  if (!qword_28022CEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267EA89F4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC16SiriMessagesFlow44SendMessageAppResolutionOnDeviceFlowStrategy_appName);

  return v1;
}

uint64_t sub_267EA8A34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267EA8ACC;

  return sub_267EA2064();
}

uint64_t sub_267EA8ACC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_37();

  return v4(v3);
}

uint64_t sub_267EA8BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821BA000](a1, a2, a3, a4);
}

uint64_t sub_267EA8C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  swift_getWitnessTable();
  *v4 = v3;
  v4[1] = sub_267BBD07C;

  return sub_267E48E64();
}

uint64_t sub_267EA8D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821BA010](a1, a2, a3, a4);
}

uint64_t sub_267EA8E34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267EA37CC();
}

uint64_t sub_267EA8EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267BAEBEC;

  return MEMORY[0x2821BB9E8](a1, a2, a3, a4);
}

uint64_t sub_267EA8FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821BB9F0](a1, a2, a3, a4);
}

uint64_t sub_267EA9068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821BB9D8](a1, a2, a3, a4);
}

uint64_t sub_267EA912C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821BB9E0](a1, a2, a3, a4);
}

uint64_t sub_267EA91F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821BB9D0](a1, a2, a3, a4, a5);
}

uint64_t sub_267EA92E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267EA5098();
}

uint64_t sub_267EA938C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821BBAB0](a1, a2, a3, a4);
}

uint64_t sub_267EA9450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821BBAB8](a1, a2, a3, a4);
}

uint64_t sub_267EA9514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_267BBD07C;

  return MEMORY[0x2821BBAA8](a1, a2, a3, a4);
}

uint64_t sub_267EA95D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821BBAA0](a1, a2, a3, a4, a5);
}

uint64_t sub_267EA9734(uint64_t a1)
{
  result = sub_267EABB68(&unk_28022CEF0, type metadata accessor for SendMessageAppResolutionOnDeviceFlowStrategy, &unk_267F0E4C8);
  *(a1 + 8) = result;
  return result;
}

id sub_267EA978C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_267EF2BB8();
    sub_267BBE0C8(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

uint64_t sub_267EA9800(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_267BE6A50(v9);
    *a1 = v9;
  }

  v11 = *(v9 + 16);
  v13[0] = v9 + 32;
  v13[1] = v11;

  sub_267EA990C(v13, a2, a3, a4);
  sub_267EF9BE8();
  if (v4)
  {

    swift_bridgeObjectRelease_n();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_267EA990C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1[1];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  result = sub_267EF9E48();
  if (result >= v9)
  {
    goto LABEL_5;
  }

  v11 = result;
  v12 = sub_267D2FE30(v9 / 2);
  v14[0] = v13;
  v14[1] = (v9 / 2);

  result = sub_267EA9D3C(v14, v15, a1, v11, a2, a3, a4);
  if (!v4)
  {
    if (v9 < -1)
    {
      goto LABEL_14;
    }

LABEL_9:
    *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    swift_bridgeObjectRelease_n();
    goto LABEL_10;
  }

  if (v9 >= -1)
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_5:
  if ((v9 & 0x8000000000000000) == 0)
  {
    if (!v9)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_11;
    }

    sub_267EA9A8C(0, v9, 1, a1, a2, a3, a4);
LABEL_10:

LABEL_11:

    return swift_bridgeObjectRelease_n();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_267EA9A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 == a2)
  {
    goto LABEL_42;
  }

  v9 = *a4;
  v10 = (*a4 + 8 * a3 - 8);
  v11 = a1 - a3;
  while (2)
  {
    v31 = v10;
    v32 = a3;
    v30 = v11;
    while (1)
    {

      v12 = sub_267EF7C18();
      if (!v13)
      {
        if (a6)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      if (!a6)
      {
        break;
      }

      if (v12 == a5 && v13 == a6)
      {

        goto LABEL_35;
      }

      v15 = sub_267EF9EA8();

      if ((v15 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_13:

LABEL_35:
      if (!v9)
      {
        __break(1u);
        return result;
      }

      v27 = *v10;
      *v10 = v10[1];
      v10[1] = v27;
      --v10;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_41;
      }
    }

LABEL_15:
    v17 = sub_267EF7C18();
    if (!v18)
    {
      if (!a6)
      {
LABEL_39:

        goto LABEL_41;
      }

      goto LABEL_27;
    }

    if (!a6)
    {

LABEL_27:
      sub_267EF7C18();
      v21 = 0.0;
      if (*(a7 + 16))
      {
        v22 = sub_267BA9948();
        if (v23)
        {
          v21 = *(*(a7 + 56) + 8 * v22);
        }
      }

      sub_267EF7C18();
      if (*(a7 + 16) && (v24 = sub_267BA9948(), (v25 & 1) != 0))
      {
        v26 = *(*(a7 + 56) + 8 * v24);

        if (v26 >= v21)
        {
          goto LABEL_41;
        }
      }

      else
      {

        if (v21 <= 0.0)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_35;
    }

    if (v17 != a5 || v18 != a6)
    {
      v20 = sub_267EF9EA8();

      if (v20)
      {
        goto LABEL_39;
      }

      goto LABEL_27;
    }

LABEL_41:
    a3 = v32 + 1;
    v10 = v31 + 1;
    v11 = v30 - 1;
    if (v32 + 1 != a2)
    {
      continue;
    }

    break;
  }

LABEL_42:
}

uint64_t sub_267EA9D3C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v130 = MEMORY[0x277D84F90];
  v10 = a3[1];
  if (v10 < 1)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
LABEL_159:
    v109 = *a1;
    if (!*a1)
    {
      goto LABEL_188;
    }

    sub_267EAA7E4(&v130, v109, a3, a5, a6, a7);
LABEL_161:

    swift_bridgeObjectRelease_n();

    return swift_bridgeObjectRelease_n();
  }

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  v127 = a7;
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 >= v10)
    {
      v10 = v11 + 1;
      goto LABEL_56;
    }

    v14 = a7;
    v15 = *a3;
    v16 = *(*a3 + 8 * v13);
    v17 = *(*a3 + 8 * v11);

    v124 = sub_267EA1EB4(v16, v17, a5, a6, v14);
    if (v8)
    {

      goto LABEL_161;
    }

    v116 = v12;

    v118 = v11;
    v18 = 8 * v11;
    v19 = v15 + 8 * v11 + 16;
    a7 = v127;
    v20 = v10;
    while (1)
    {
      if (v13 + 1 >= v10)
      {
        goto LABEL_44;
      }

      v21 = sub_267EF7C18();
      if (v22)
      {
        if (a6)
        {
          if (v21 == a5 && v22 == a6)
          {

LABEL_29:
            if (!v124)
            {
              v10 = v13 + 1;
              v8 = 0;
              v12 = v116;
              goto LABEL_46;
            }

            goto LABEL_42;
          }

          v24 = sub_267EF9EA8();

          if (v24)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      else if (!a6)
      {
LABEL_16:

        v10 = v20;
        goto LABEL_29;
      }

      v25 = sub_267EF7C18();
      if (!v26)
      {
        if (a6)
        {
          goto LABEL_32;
        }

        goto LABEL_27;
      }

      if (!a6)
      {
        break;
      }

      if (v25 != a5 || v26 != a6)
      {
        v28 = sub_267EF9EA8();

        if ((v28 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_27:

        goto LABEL_41;
      }

LABEL_41:
      v10 = v20;
      if (v124)
      {
        v10 = v13 + 1;
        v12 = v116;
LABEL_48:
        v11 = v118;
        if (v10 >= v118)
        {
          if (v118 < v10)
          {
            v35 = 8 * v10 - 8;
            v36 = v10;
            v37 = v118;
            do
            {
              if (v37 != --v36)
              {
                v38 = *a3;
                if (!*a3)
                {
                  goto LABEL_186;
                }

                v39 = *(v38 + v18);
                *(v38 + v18) = *(v38 + v35);
                *(v38 + v35) = v39;
              }

              ++v37;
              v35 -= 8;
              v18 += 8;
            }

            while (v37 < v36);
          }

          v8 = 0;
          goto LABEL_56;
        }

        goto LABEL_183;
      }

LABEL_42:
      v19 += 8;
      ++v13;
    }

LABEL_32:
    sub_267EF7C18();
    v29 = 0.0;
    v30 = 0.0;
    if (*(v127 + 16))
    {
      v31 = sub_267BA9948();
      if (v32)
      {
        v30 = *(*(v127 + 56) + 8 * v31);
      }
    }

    sub_267EF7C18();
    if (*(v127 + 16))
    {
      v33 = sub_267BA9948();
      if (v34)
      {
        v29 = *(*(v127 + 56) + 8 * v33);
      }
    }

    v10 = v20;
    if (((v124 ^ (v29 < v30)) & 1) == 0)
    {
      goto LABEL_42;
    }

    v10 = v13 + 1;
LABEL_44:
    v12 = v116;
    if (v124)
    {
      goto LABEL_48;
    }

    v8 = 0;
LABEL_46:
    v11 = v118;
LABEL_56:
    v40 = a3[1];
    if (v10 < v40)
    {
      if (__OFSUB__(v10, v11))
      {
        goto LABEL_180;
      }

      if (v10 - v11 < a4)
      {
        break;
      }
    }

LABEL_105:
    if (v10 < v11)
    {
      goto LABEL_179;
    }

    v115 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267C70730(0, *(v12 + 16) + 1, 1, v12);
      v12 = v107;
    }

    v62 = *(v12 + 16);
    v61 = *(v12 + 24);
    v63 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      sub_267C70730(v61 > 1, v62 + 1, 1, v12);
      v12 = v108;
    }

    *(v12 + 16) = v63;
    v64 = v12 + 32;
    v65 = (v12 + 32 + 16 * v62);
    *v65 = v11;
    v65[1] = v10;
    v130 = v12;
    v120 = *a1;
    if (!*a1)
    {
      goto LABEL_187;
    }

    if (v62)
    {
      while (1)
      {
        v66 = v63 - 1;
        v67 = (v64 + 16 * (v63 - 1));
        v68 = (v12 + 16 * v63);
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v69 = *(v12 + 32);
          v70 = *(v12 + 40);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_125:
          if (v72)
          {
            goto LABEL_169;
          }

          v84 = *v68;
          v83 = v68[1];
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_172;
          }

          v88 = v67[1];
          v89 = v88 - *v67;
          if (__OFSUB__(v88, *v67))
          {
            goto LABEL_175;
          }

          if (__OFADD__(v86, v89))
          {
            goto LABEL_177;
          }

          if (v86 + v89 >= v71)
          {
            if (v71 < v89)
            {
              v66 = v63 - 2;
            }

            goto LABEL_147;
          }

          goto LABEL_140;
        }

        if (v63 < 2)
        {
          goto LABEL_171;
        }

        v91 = *v68;
        v90 = v68[1];
        v79 = __OFSUB__(v90, v91);
        v86 = v90 - v91;
        v87 = v79;
LABEL_140:
        if (v87)
        {
          goto LABEL_174;
        }

        v93 = *v67;
        v92 = v67[1];
        v79 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v79)
        {
          goto LABEL_176;
        }

        if (v94 < v86)
        {
          goto LABEL_154;
        }

LABEL_147:
        if (v66 - 1 >= v63)
        {
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

        v98 = *a3;
        if (!*a3)
        {
          goto LABEL_185;
        }

        v99 = (v64 + 16 * (v66 - 1));
        v100 = *v99;
        v101 = v66;
        v102 = (v64 + 16 * v66);
        v103 = v102[1];
        v123 = (v98 + 8 * *v102);
        v126 = (v98 + 8 * *v99);
        v104 = (v98 + 8 * v103);

        sub_267EAA988(v126, v123, v104, v120, a5, a6, v127);
        if (v8)
        {
          goto LABEL_161;
        }

        if (v103 < v100)
        {
          goto LABEL_164;
        }

        v105 = *(v12 + 16);
        if (v101 > v105)
        {
          goto LABEL_165;
        }

        *v99 = v100;
        v99[1] = v103;
        if (v101 >= v105)
        {
          goto LABEL_166;
        }

        v106 = v101;
        v63 = v105 - 1;
        memmove(v102, v102 + 2, 16 * (v105 - 1 - v106));
        *(v12 + 16) = v105 - 1;
        a7 = v127;
        v64 = v12 + 32;
        if (v105 <= 2)
        {
LABEL_154:
          v130 = v12;
          goto LABEL_155;
        }
      }

      v73 = v64 + 16 * v63;
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_167;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_168;
      }

      v80 = v68[1];
      v81 = v80 - *v68;
      if (__OFSUB__(v80, *v68))
      {
        goto LABEL_170;
      }

      v79 = __OFADD__(v71, v81);
      v82 = v71 + v81;
      if (v79)
      {
        goto LABEL_173;
      }

      if (v82 >= v76)
      {
        v96 = *v67;
        v95 = v67[1];
        v79 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v79)
        {
          goto LABEL_178;
        }

        if (v71 < v97)
        {
          v66 = v63 - 2;
        }

        goto LABEL_147;
      }

      goto LABEL_125;
    }

LABEL_155:
    v10 = a3[1];
    v11 = v115;
    if (v115 >= v10)
    {
      goto LABEL_159;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_181;
  }

  if (v11 + a4 < v40)
  {
    v40 = v11 + a4;
  }

  if (v40 >= v11)
  {
    if (v10 == v40)
    {
      goto LABEL_105;
    }

    v114 = v40;
    v117 = v12;
    v112 = v8;
    v41 = *a3;
    v42 = (*a3 + 8 * v10 - 8);
    v119 = v11;
    v43 = v11 - v10;
    while (1)
    {
      v122 = v43;
      v125 = v10;
      v44 = v42;
      while (1)
      {

        v45 = sub_267EF7C18();
        if (!v46)
        {
          if (a6)
          {
            goto LABEL_77;
          }

          goto LABEL_75;
        }

        if (!a6)
        {
          break;
        }

        if (v45 == a5 && v46 == a6)
        {

          goto LABEL_97;
        }

        v48 = sub_267EF9EA8();

        if ((v48 & 1) == 0)
        {
          goto LABEL_77;
        }

LABEL_75:

LABEL_97:
        if (!v41)
        {
          goto LABEL_184;
        }

        v59 = *v42;
        *v42 = v42[1];
        v42[1] = v59;
        --v42;
        if (__CFADD__(v43++, 1))
        {
          goto LABEL_103;
        }
      }

LABEL_77:
      v49 = sub_267EF7C18();
      if (!v50)
      {
        if (!a6)
        {
LABEL_101:

          goto LABEL_103;
        }

        goto LABEL_89;
      }

      if (!a6)
      {

        goto LABEL_89;
      }

      if (v49 != a5 || v50 != a6)
      {
        v52 = sub_267EF9EA8();

        if (v52)
        {
          goto LABEL_101;
        }

LABEL_89:
        sub_267EF7C18();
        v53 = 0.0;
        if (*(a7 + 16))
        {
          v54 = sub_267BA9948();
          if (v55)
          {
            v53 = *(*(a7 + 56) + 8 * v54);
          }
        }

        sub_267EF7C18();
        if (*(a7 + 16) && (v56 = sub_267BA9948(), (v57 & 1) != 0))
        {
          v58 = *(*(a7 + 56) + 8 * v56);

          if (v58 >= v53)
          {
            goto LABEL_103;
          }
        }

        else
        {

          if (v53 <= 0.0)
          {
            goto LABEL_103;
          }
        }

        goto LABEL_97;
      }

LABEL_103:
      ++v10;
      v42 = v44 + 1;
      v43 = v122 - 1;
      if (v125 + 1 == v114)
      {
        v8 = v112;
        v12 = v117;
        v11 = v119;
        v10 = v114;
        goto LABEL_105;
      }
    }
  }

LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_185:
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_186:
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_187:
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_188:
  swift_bridgeObjectRelease_n();
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_267EAA7E4(char **a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v9 = sub_267EAAFE0(v9);
  }

  for (*a1 = v9; ; v9 = *a1)
  {
    v10 = *(v9 + 2);
    if (v10 < 2)
    {
LABEL_11:
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      return 1;
    }

    v11 = *a3;
    if (!*a3)
    {
      break;
    }

    v12 = *&v9[16 * v10];
    v13 = *&v9[16 * v10 + 24];
    v14 = (v11 + 8 * v12);
    v15 = (v11 + 8 * *&v9[16 * v10 + 16]);
    v16 = (v11 + 8 * v13);

    sub_267EAA988(v14, v15, v16, a2, a4, a5, a6);
    if (v7)
    {
      goto LABEL_11;
    }

    if (v13 < v12)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_267EAAFE0(v9);
    }

    if (v10 - 2 >= *(v9 + 2))
    {
      goto LABEL_13;
    }

    v17 = &v9[16 * v10];
    *v17 = v12;
    *(v17 + 1) = v13;
    *a1 = v9;
    sub_267EAAF54(v10 - 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_267EAA988(char *a1, char *a2, char *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = (a2 - a1) / 8;
  v13 = (a3 - a2) / 8;
  if (v12 < v13)
  {
    sub_267C74A34(a1, (a2 - a1) / 8, a4);
    v14 = &v8[8 * v12];
    v57 = v9;
    v61 = v14;
    while (1)
    {
      if (v8 >= v14 || v10 >= v9)
      {
        v10 = v11;
        goto LABEL_94;
      }

      v16 = sub_267EF7C18();
      if (v17)
      {
        if (a6)
        {
          v18 = v16 == a5 && v17 == a6;
          if (v18)
          {

LABEL_39:
            v31 = v10;
            v18 = v11 == v10;
            v10 += 8;
            if (v18)
            {
              goto LABEL_41;
            }

LABEL_40:
            *v11 = *v31;
            goto LABEL_41;
          }

          v19 = sub_267EF9EA8();

          if (v19)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      else if (!a6)
      {
LABEL_16:

        v9 = v57;
        goto LABEL_39;
      }

      v20 = sub_267EF7C18();
      if (v21)
      {
        if (a6)
        {
          if (v20 == a5 && v21 == a6)
          {

            goto LABEL_43;
          }

          v23 = sub_267EF9EA8();

          if (v23)
          {
            goto LABEL_27;
          }
        }

        else
        {
        }
      }

      else if (!a6)
      {
LABEL_27:

LABEL_43:
        v9 = v57;
        goto LABEL_44;
      }

      sub_267EF7C18();
      v24 = 0.0;
      if (*(a7 + 16))
      {
        v25 = a7;
        v26 = sub_267BA9948();
        if (v27)
        {
          v24 = *(*(a7 + 56) + 8 * v26);
        }
      }

      else
      {
        v25 = a7;
      }

      sub_267EF7C18();
      if (*(v25 + 16) && (v28 = sub_267BA9948(), (v29 & 1) != 0))
      {
        v30 = *(*(a7 + 56) + 8 * v28);

        v9 = v57;
        v14 = v61;
        if (v30 < v24)
        {
          goto LABEL_39;
        }
      }

      else
      {

        v9 = v57;
        v14 = v61;
        if (v24 > 0.0)
        {
          goto LABEL_39;
        }
      }

LABEL_44:
      v31 = v8;
      v18 = v11 == v8;
      v8 += 8;
      if (!v18)
      {
        goto LABEL_40;
      }

LABEL_41:
      v11 += 8;
    }
  }

  sub_267C74A34(a2, (a3 - a2) / 8, a4);
  v14 = &v8[8 * v13];
  v54 = a6;
  v55 = v11;
LABEL_48:
  v32 = v9 - 8;
  v56 = v10;
  v58 = v10 - 8;
  while (v14 > v8 && v10 > v11)
  {
    v62 = v14;
    v14 -= 8;

    v34 = sub_267EF7C18();
    if (v35)
    {
      v36 = v32;
      if (a6)
      {
        if (v34 == a5 && v35 == a6)
        {

LABEL_91:
          v9 = v36;
          v50 = v36 + 8;
          v10 = v58;
          v14 = v62;
          if (v50 != v56)
          {
            *v9 = *v58;
          }

          goto LABEL_48;
        }

        v38 = sub_267EF9EA8();

        if (v38)
        {
          goto LABEL_89;
        }
      }

      else
      {
      }
    }

    else
    {
      v36 = v32;
      if (!a6)
      {
LABEL_89:

        goto LABEL_91;
      }
    }

    v39 = sub_267EF7C18();
    if (v40)
    {
      if (a6)
      {
        if (v39 == a5 && v40 == a6)
        {

          goto LABEL_86;
        }

        v42 = sub_267EF9EA8();

        if (v42)
        {
          goto LABEL_74;
        }
      }

      else
      {
      }
    }

    else if (!a6)
    {
LABEL_74:

      goto LABEL_86;
    }

    sub_267EF7C18();
    v43 = 0.0;
    if (*(a7 + 16))
    {
      v44 = sub_267BA9948();
      if (v45)
      {
        v43 = *(*(a7 + 56) + 8 * v44);
      }
    }

    sub_267EF7C18();
    if (*(a7 + 16) && (v46 = sub_267BA9948(), (v47 & 1) != 0))
    {
      v48 = *(*(a7 + 56) + 8 * v46);

      a6 = v54;
      v11 = v55;
      if (v48 < v43)
      {
        goto LABEL_91;
      }
    }

    else
    {

      a6 = v54;
      v11 = v55;
      if (v43 > 0.0)
      {
        goto LABEL_91;
      }
    }

LABEL_86:
    v49 = v36;
    v18 = v62 == v36 + 8;
    v10 = v56;
    if (!v18)
    {
      *v49 = *v14;
    }

    v32 = v49 - 8;
  }

LABEL_94:
  v51 = (v14 - v8) / 8;
  if (v10 != v8 || v10 >= &v8[8 * v51])
  {
    memmove(v10, v8, 8 * v51);
  }

  return 1;
}

uint64_t sub_267EAAF54(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_267EAAFE0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    memmove((v8 + 32), (v8 + 48), 16 * v7);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

char *sub_267EAAFF4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_267EAB020(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229AF0, &qword_267EFEF80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_267EAB120(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();

  [a3 setBundleId_];
}

void sub_267EAB184(uint64_t a1, void *a2)
{
  sub_267BA9F38(0, &unk_28022CF60, 0x277D47AB8);
  v3 = sub_267EF92D8();

  [a2 setItems_];
}

uint64_t sub_267EAB208(void *a1)
{
  v1 = [a1 cardData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF2BE8();

  return v3;
}

uint64_t sub_267EAB26C(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF40, &unk_267F0CF80);
  MEMORY[0x28223BE20](v3 - 8);
  v57 = &v49 - v4;
  v58 = sub_267EF3D18();
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v65 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_267EF3E38();
  v59 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v56 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v64 = &v49 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v69 = &v49 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - v13;
  v15 = sub_267EF4968();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x277D84F90];
  v72 = MEMORY[0x277D84F90];
  result = sub_267BAF0DC(a1);
  v52 = v15;
  v51 = v16;
  v50 = v18;
  if (result)
  {
    v66 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v21 = 0;
    v70 = a1 & 0xC000000000000001;
    v63 = (v59 + 16);
    v55 = v59 + 32;
    v54 = (v59 + 8);
    v53 = v60 + 32;
    v67 = v19;
    v22 = v66;
    v61 = a1;
    do
    {
      if (v70)
      {
        MEMORY[0x26D609870](v21, a1);
      }

      else
      {
      }

      sub_267EF7C18();
      if (v23)
      {
        v24 = sub_267EF41B8();
        if (v24)
        {
          v25 = v24;
          v68 = v19;
          sub_267EF9868();
          if (v26)
          {
            if (qword_2802288B0 != -1)
            {
              swift_once();
            }

            sub_267EF5648();
            sub_267EF3E28();
            if (qword_2802288A8 != -1)
            {
              swift_once();
            }

            sub_267EF5648();
            sub_267EF3E28();
            v27 = *v63;
            (*v63)(v64, v14, v6);
            v19 = v68;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_267C71114();
              v19 = v33;
            }

            v28 = *(v19 + 16);
            if (v28 >= *(v19 + 24) >> 1)
            {
              sub_267C71114();
              v19 = v34;
            }

            *(v19 + 16) = v28 + 1;
            (*(v59 + 32))(v19 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v28, v64, v6);
            v29 = v57;
            v27(v57, v14, v6);
            __swift_storeEnumTagSinglePayload(v29, 0, 1, v6);
            v27(v56, v69, v6);
            sub_267EF3D08();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_267C7103C();
              v67 = v35;
            }

            a1 = v61;
            v30 = *(v67 + 16);
            if (v30 >= *(v67 + 24) >> 1)
            {
              sub_267C7103C();
              v67 = v36;
            }

            v31 = *v54;
            (*v54)(v69, v6);
            v31(v14, v6);
            v32 = v67;
            *(v67 + 16) = v30 + 1;
            (*(v60 + 32))(v32 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v30, v65, v58);
            v72 = v32;
          }

          else
          {

            a1 = v61;
            v19 = v68;
          }
        }

        else
        {
        }

        v22 = v66;
      }

      else
      {
      }

      ++v21;
    }

    while (v22 != v21);
  }

  if (qword_2802288E8 != -1)
  {
    swift_once();
  }

  sub_267EF5648();
  v37 = v50;
  sub_267EF4948();
  v38 = sub_267EF4958();

  (*(v51 + 8))(v37, v52);
  sub_267C9B4C4(v38);
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v39 = sub_267EF8A08();
  __swift_project_value_buffer(v39, qword_280240FB0);
  v40 = sub_267EF89F8();
  v41 = sub_267EF95D8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v71[0] = v43;
    *v42 = 136315138;
    swift_beginAccess();

    v45 = MEMORY[0x26D608FD0](v44, v58);
    v47 = v46;

    v48 = sub_267BA33E8(v45, v47, v71);

    *(v42 + 4) = v48;
    _os_log_impl(&dword_267B93000, v40, v41, "Built display hints for app disambiguaation: %s'", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x26D60A7B0](v43, -1, -1);
    MEMORY[0x26D60A7B0](v42, -1, -1);
  }

  swift_beginAccess();
  return v72;
}

uint64_t sub_267EABAEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBF0, &unk_267F01C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267EABB68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267EABBB0()
{
  v2 = v1;
  sub_267EF63C8();
  OUTLINED_FUNCTION_4_6();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v2, v0);
  v9 = (*(v4 + 88))(v8, v0);
  if (v9 == *MEMORY[0x277D5F110])
  {
    return 0;
  }

  if (v9 == *MEMORY[0x277D5F100])
  {
    return 1;
  }

  if (v9 == *MEMORY[0x277D5F108])
  {
    return 2;
  }

  if (v9 == *MEMORY[0x277D5F118])
  {
    return 3;
  }

  (*(v4 + 8))(v8, v0);
  return 4;
}

void sub_267EABD04()
{
  OUTLINED_FUNCTION_48_0();
  sub_267EF57C8();
  OUTLINED_FUNCTION_4_6();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_60();
  v6 = v4 - v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v59 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEE0, &qword_267F01FA0);
  v14 = OUTLINED_FUNCTION_18(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_60();
  v63 = v15 - v16;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v17);
  v62 = &v59 - v18;
  OUTLINED_FUNCTION_115();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v59 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v59 - v23;
  v25 = sub_267EF5A38();
  if (!v25)
  {
    goto LABEL_58;
  }

  v26 = v25;
  v66 = *(v25 + 16);
  v64 = v10;
  if (!v66)
  {
    v36 = 1;
    goto LABEL_24;
  }

  v60 = v22;
  v61 = v24;
  v27 = 0;
  OUTLINED_FUNCTION_20_4();
  v65 = v26 + v28;
  while (1)
  {
    if (v27 >= *(v26 + 16))
    {
LABEL_60:
      __break(1u);
      return;
    }

    (*(v2 + 16))(v12, v65 + *(v2 + 72) * v27, v0);
    v29 = sub_267EF57B8();
    if (!v30)
    {
      goto LABEL_18;
    }

    v31 = v29 == 0x64695F6D657469 && v30 == 0xE700000000000000;
    if (v31)
    {
    }

    else
    {
      v32 = sub_267EF9EA8();

      if ((v32 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (sub_267EF5768() == 0x746163696C707041 && v33 == 0xEC000000736E6F69)
    {
      break;
    }

    v35 = sub_267EF9EA8();

    if (v35)
    {
      goto LABEL_22;
    }

LABEL_18:
    ++v27;
    (*(v2 + 8))(v12, v0);
    if (v66 == v27)
    {
      v36 = 1;
      v10 = v64;
      v24 = v61;
      goto LABEL_23;
    }
  }

LABEL_22:
  v24 = v61;
  (*(v2 + 32))(v61, v12, v0);
  v36 = 0;
  v10 = v64;
LABEL_23:
  v22 = v60;
LABEL_24:
  OUTLINED_FUNCTION_10_48(v24, v36);
  sub_267C2FB6C(v24, v22, &qword_28022AEE0, &qword_267F01FA0);
  OUTLINED_FUNCTION_8_7(v22);
  if (v31)
  {
    sub_267B9F98C(v24, &qword_28022AEE0, &qword_267F01FA0);
  }

  else
  {
    (*(v2 + 32))(v10, v22, v0);
    v37 = sub_267EF57A8();
    v39 = v38;
    v40 = OUTLINED_FUNCTION_12_4();
    v41(v40);
    sub_267B9F98C(v24, &qword_28022AEE0, &qword_267F01FA0);
    v42 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v42 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (v42)
    {

      goto LABEL_58;
    }
  }

  v43 = 0;
  while (2)
  {
    if (v66 == v43)
    {

      v54 = 1;
      v55 = v62;
      goto LABEL_54;
    }

    if (v43 >= *(v26 + 16))
    {
      __break(1u);
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_20_4();
    (*(v2 + 16))(v6, v26 + v44 + *(v2 + 72) * v43, v0);
    v45 = sub_267EF57B8();
    if (!v46)
    {
      goto LABEL_51;
    }

    if (v45 == 0x656D614E707061 && v46 == 0xE700000000000000)
    {
    }

    else
    {
      v48 = sub_267EF9EA8();

      if ((v48 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    if (sub_267EF5768() == 0xD000000000000015 && 0x8000000267F1CDA0 == v49)
    {
    }

    else
    {
      v51 = sub_267EF9EA8();

      if ((v51 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    v69 = sub_267EF57A8();
    v70 = v52;
    v67 = 46;
    v68 = 0xE100000000000000;
    sub_267BB5034();
    v53 = sub_267EF9978();

    if ((v53 & 1) == 0)
    {
LABEL_51:
      (*(v2 + 8))(v6, v0);
      ++v43;
      continue;
    }

    break;
  }

  v55 = v62;
  (*(v2 + 32))(v62, v6, v0);
  v54 = 0;
LABEL_54:
  OUTLINED_FUNCTION_10_48(v55, v54);
  v56 = v63;
  sub_267C2FB6C(v55, v63, &qword_28022AEE0, &qword_267F01FA0);
  OUTLINED_FUNCTION_8_7(v56);
  if (!v31)
  {
    (*(v2 + 32))(v64, v56, v0);
    sub_267EF57A8();
    v57 = OUTLINED_FUNCTION_12_4();
    v58(v57);
  }

  sub_267B9F98C(v55, &qword_28022AEE0, &qword_267F01FA0);
LABEL_58:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EAC3A8()
{
  sub_267EF5B88();
  if (v0)
  {
  }

  else
  {
    result = sub_267EF5B78();
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

uint64_t sub_267EAC3E0(uint64_t a1)
{
  sub_267EF56B8();
  sub_267EF6768();

  v1 = OUTLINED_FUNCTION_6_56();
  v2 = sub_267BC2EE0(v1);

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x277D84F90];
  result = sub_267BAF0DC(v2);
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {

      return v3;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v10 = OUTLINED_FUNCTION_64_0();
      result = MEMORY[0x26D609870](v10);
    }

    else
    {
      if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }
    }

    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (sub_267EF6738())
    {
      v8 = sub_267EF5748();

      if (v8)
      {
        sub_267EF6728();
      }
    }

    sub_267EF5B98();
    sub_267EF5E08();

    ++v6;
    if (v11)
    {
      MEMORY[0x26D608F90](result);
      v9 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v9 >> 1)
      {
        OUTLINED_FUNCTION_8_2(v9);
        sub_267EF9328();
      }

      result = sub_267EF9368();
      v3 = v12;
      v6 = v7;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_267EAC598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v22;
  a20 = v23;
  sub_267EF61C8();
  OUTLINED_FUNCTION_4_6();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C140, &qword_267F09670);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_53();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C100, &qword_267F09618);
  v30 = OUTLINED_FUNCTION_18(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_60();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_53_3();
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  if (sub_267EF5A08())
  {
    sub_267EF61A8();
  }

  else
  {
    OUTLINED_FUNCTION_10_48(v37, 1);
  }

  v38 = OUTLINED_FUNCTION_20_34();
  v39(v38);
  OUTLINED_FUNCTION_10_48(v21, 0);
  v40 = *(v27 + 48);
  OUTLINED_FUNCTION_21_37();
  OUTLINED_FUNCTION_24_41();
  OUTLINED_FUNCTION_8_7(v20);
  if (!v47)
  {
    sub_267C2FB6C(v20, v33, &qword_28022C100, &qword_267F09618);
    OUTLINED_FUNCTION_8_7(v20 + v40);
    if (!v47)
    {
      v56 = OUTLINED_FUNCTION_9_57();
      v57(v56);
      v58 = sub_267EAD894(&qword_28022C148, MEMORY[0x277D5EE58], MEMORY[0x277D5EE60]);
      OUTLINED_FUNCTION_12_50(v58);
      v59 = *(v25 + 8);
      v60 = OUTLINED_FUNCTION_12_4();
      v59(v60);
      OUTLINED_FUNCTION_11_51(v21);
      OUTLINED_FUNCTION_11_51(v37);
      v61 = OUTLINED_FUNCTION_64_0();
      v59(v61);
      OUTLINED_FUNCTION_11_51(v20);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_99_0();
    sub_267B9F98C(v48, v49, v50);
    OUTLINED_FUNCTION_99_0();
    sub_267B9F98C(v51, v52, v53);
    v54 = OUTLINED_FUNCTION_64_0();
    v55(v54);
LABEL_12:
    sub_267B9F98C(v20, &qword_28022C140, &qword_267F09670);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_99_0();
  sub_267B9F98C(v41, v42, v43);
  OUTLINED_FUNCTION_99_0();
  sub_267B9F98C(v44, v45, v46);
  OUTLINED_FUNCTION_8_7(v20 + v40);
  if (!v47)
  {
    goto LABEL_12;
  }

  sub_267B9F98C(v20, &qword_28022C100, &qword_267F09618);
LABEL_13:
  OUTLINED_FUNCTION_47();
}

void sub_267EAC8BC(uint64_t a1)
{
  sub_267EF5BE8();
  sub_267EACF84();
  if (v1)
  {
    sub_267EF69B8();
    sub_267EF5C18();
    sub_267EF69C8();
  }
}

uint64_t sub_267EAC924@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CF98, &qword_267F0E538);
  v4 = OUTLINED_FUNCTION_18(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_53();
  sub_267EF60A8();
  v5 = sub_267EF60B8();
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    sub_267EF8198();
    v6 = OUTLINED_FUNCTION_55();
    return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  v10 = *(v5 - 8);
  v11 = (*(v10 + 88))(v1, v5);
  if (v11 == *MEMORY[0x277D5ECB0])
  {
    v12 = MEMORY[0x277D5D3A8];
LABEL_15:
    v13 = *v12;
    v14 = sub_267EF8198();
    OUTLINED_FUNCTION_22();
    (*(v15 + 104))(a1, v13, v14);
    v6 = a1;
    v7 = 0;
    v8 = 1;
    v9 = v14;
    return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  if (v11 == *MEMORY[0x277D5ECA8])
  {
    v12 = MEMORY[0x277D5D3C0];
    goto LABEL_15;
  }

  if (v11 == *MEMORY[0x277D5ECA0])
  {
    v12 = MEMORY[0x277D5D3C8];
    goto LABEL_15;
  }

  if (v11 == *MEMORY[0x277D5EC90])
  {
    v12 = MEMORY[0x277D5D3B0];
    goto LABEL_15;
  }

  if (v11 == *MEMORY[0x277D5EC98])
  {
    v12 = MEMORY[0x277D5D3D0];
    goto LABEL_15;
  }

  if (v11 == *MEMORY[0x277D5ECB8])
  {
    v12 = MEMORY[0x277D5D3B8];
    goto LABEL_15;
  }

  sub_267EF8198();
  v17 = OUTLINED_FUNCTION_55();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  return (*(v10 + 8))(v1, v5);
}

uint64_t sub_267EACB78(uint64_t (*a1)(void))
{
  if (sub_267EF5A08() || sub_267EF59E8() || sub_267EF5A28() || a1() && (v3 = sub_267EF5A08(), , v3) || a1() && (v4 = sub_267EF59E8(), , v4))
  {
LABEL_4:

    return 1;
  }

  result = a1();
  if (result)
  {
    v5 = sub_267EF5A28();

    if (!v5)
    {
      return 0;
    }

    goto LABEL_4;
  }

  return result;
}

void sub_267EACC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v22;
  a20 = v23;
  sub_267EF5F28();
  OUTLINED_FUNCTION_4_6();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A3E0, &qword_267F00AA0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_53();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A3D8, &qword_267F08D00);
  v30 = OUTLINED_FUNCTION_18(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_60();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_53_3();
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  if (sub_267EF59D8())
  {
    sub_267EF5F18();
  }

  else
  {
    OUTLINED_FUNCTION_10_48(v37, 1);
  }

  v38 = OUTLINED_FUNCTION_20_34();
  v39(v38);
  OUTLINED_FUNCTION_10_48(v21, 0);
  v40 = *(v27 + 48);
  OUTLINED_FUNCTION_21_37();
  OUTLINED_FUNCTION_24_41();
  OUTLINED_FUNCTION_8_7(v20);
  if (!v47)
  {
    sub_267C2FB6C(v20, v33, &qword_28022A3D8, &qword_267F08D00);
    OUTLINED_FUNCTION_8_7(v20 + v40);
    if (!v47)
    {
      v56 = OUTLINED_FUNCTION_9_57();
      v57(v56);
      v58 = sub_267EAD894(&qword_28022A3E8, MEMORY[0x277D5EA60], MEMORY[0x277D5EA70]);
      OUTLINED_FUNCTION_12_50(v58);
      v59 = *(v25 + 8);
      v60 = OUTLINED_FUNCTION_12_4();
      v59(v60);
      OUTLINED_FUNCTION_11_51(v21);
      OUTLINED_FUNCTION_11_51(v37);
      v61 = OUTLINED_FUNCTION_64_0();
      v59(v61);
      OUTLINED_FUNCTION_11_51(v20);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_99_0();
    sub_267B9F98C(v48, v49, v50);
    OUTLINED_FUNCTION_99_0();
    sub_267B9F98C(v51, v52, v53);
    v54 = OUTLINED_FUNCTION_64_0();
    v55(v54);
LABEL_12:
    sub_267B9F98C(v20, &qword_28022A3E0, &qword_267F00AA0);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_99_0();
  sub_267B9F98C(v41, v42, v43);
  OUTLINED_FUNCTION_99_0();
  sub_267B9F98C(v44, v45, v46);
  OUTLINED_FUNCTION_8_7(v20 + v40);
  if (!v47)
  {
    goto LABEL_12;
  }

  sub_267B9F98C(v20, &qword_28022A3D8, &qword_267F08D00);
LABEL_13:
  OUTLINED_FUNCTION_47();
}

void sub_267EACF84()
{
  OUTLINED_FUNCTION_48_0();
  sub_267EF56E8();
  OUTLINED_FUNCTION_4_6();
  v64 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  v5 = v4 - v3;
  v6 = sub_267EF5738();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_60();
  v59 = (v8 - v9);
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v10);
  v62 = &v56 - v11;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - v13;
  v15 = sub_267EF5A18();
  if (!v15)
  {
    goto LABEL_45;
  }

  v16 = v15;
  v61 = v5;
  v63 = v0;
  v17 = 0;
  v65 = *(v15 + 16);
  v66 = v7 + 16;
  v58 = (v7 + 32);
  v18 = (v7 + 8);
  v60 = MEMORY[0x277D84F90];
  while (v65 != v17)
  {
    if (v17 >= *(v16 + 16))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      return;
    }

    v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v20 = *(v7 + 72);
    (*(v7 + 16))(v14, v16 + v19 + v20 * v17, v6);
    v21 = sub_267EF5728();
    if (v22)
    {
      if (v21 == 0x73746361746E6F43 && v22 == 0xE800000000000000)
      {
      }

      else
      {
        v24 = sub_267EF9EA8();

        if ((v24 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v57 = *v58;
      v57(v59, v14, v6);
      v25 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_267C72744(0, *(v25 + 16) + 1, 1);
        v25 = v67;
      }

      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v30 = OUTLINED_FUNCTION_8_2(v27);
        v60 = v31;
        sub_267C72744(v30, v31, 1);
        v29 = v60;
        v25 = v67;
      }

      ++v17;
      *(v25 + 16) = v29;
      v60 = v25;
      v57(v25 + v19 + v28 * v20, v59, v6);
    }

    else
    {
LABEL_11:
      (*v18)(v14, v6);
      ++v17;
    }
  }

  v32 = *(v60 + 16);
  if (v32)
  {
    OUTLINED_FUNCTION_20_4();
    v35 = v33 + v34;
    v65 = *(v7 + 72);
    v36 = *(v7 + 16);
    v37 = MEMORY[0x277D84F90];
    while (1)
    {
      v38 = v62;
      v36(v62, v35, v6);
      v39 = sub_267EF5708();
      (*v18)(v38, v6);
      v40 = *(v39 + 16);
      v41 = *(v37 + 16);
      if (__OFADD__(v41, v40))
      {
        goto LABEL_47;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v41 + v40 > *(v37 + 24) >> 1)
      {
        sub_267C71DB0();
        v37 = v42;
      }

      if (*(v39 + 16))
      {
        if ((*(v37 + 24) >> 1) - *(v37 + 16) < v40)
        {
          goto LABEL_49;
        }

        swift_arrayInitWithCopy();

        if (v40)
        {
          v43 = *(v37 + 16);
          v44 = __OFADD__(v43, v40);
          v45 = v43 + v40;
          if (v44)
          {
            goto LABEL_51;
          }

          *(v37 + 16) = v45;
        }
      }

      else
      {

        if (v40)
        {
          goto LABEL_48;
        }
      }

      v35 += v65;
      if (!--v32)
      {

        goto LABEL_34;
      }
    }
  }

  v37 = MEMORY[0x277D84F90];
LABEL_34:
  v46 = 0;
  v47 = *(v37 + 16);
  v48 = (v64 + 8);
  while (v47 != v46)
  {
    if (v46 >= *(v37 + 16))
    {
      goto LABEL_50;
    }

    v49 = v63;
    OUTLINED_FUNCTION_20_4();
    v52 = v61;
    (*(v51 + 16))(v61, v37 + v50 + *(v51 + 72) * v46, v49);
    if (sub_267EF56D8() == 0x694E6E6F73726570 && v53 == 0xEE00656D616E6B63)
    {

      (*v48)(v52, v49);
      break;
    }

    ++v46;
    v55 = sub_267EF9EA8();

    (*v48)(v52, v49);
    if (v55)
    {
      break;
    }
  }

LABEL_45:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EAD4F4(uint64_t a1, uint64_t a2)
{
  sub_267EF56B8();
  sub_267EF6768();

  v4 = OUTLINED_FUNCTION_6_56();
  v5 = sub_267BC2EE0(v4);

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v25 = a2;
  v27 = MEMORY[0x277D84F90];
  result = sub_267BAF0DC(v5);
  v8 = result;
  v9 = 0;
  v10 = v6;
  while (v8 != v9)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D609870](v9, v5);
    }

    else
    {
      if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }
    }

    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return result;
    }

    v12 = sub_267EF6738();

    ++v9;
    if (v12)
    {
      MEMORY[0x26D608F90](result);
      v13 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v13 >> 1)
      {
        OUTLINED_FUNCTION_8_2(v13);
        sub_267EF9328();
      }

      result = sub_267EF9368();
      v10 = v27;
      v9 = v11;
    }
  }

  v28 = MEMORY[0x277D84F90];
  result = sub_267BAF0DC(v10);
  v14 = result;
  for (i = 0; v14 != i; ++i)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D609870](i, v10);
    }

    else
    {
      if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_47;
    }

    v16 = sub_267EF5758();
    if (!v17)
    {
LABEL_25:

      continue;
    }

    if (v16 == a1 && v17 == v25)
    {
    }

    else
    {
      OUTLINED_FUNCTION_99_0();
      v19 = sub_267EF9EA8();

      if ((v19 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    sub_267EF9BD8();
    sub_267EF9C08();
    sub_267EF9C18();
    result = sub_267EF9BE8();
  }

  v20 = v28;
  v6 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  result = sub_267BAF0DC(v20);
  v21 = result;
  v22 = 0;
  while (v21 != v22)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D609870](v22, v20);
    }

    else
    {
      if (v22 >= *(v20 + 16))
      {
        goto LABEL_50;
      }
    }

    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_49;
    }

    if (sub_267EF5748())
    {
      sub_267EF6728();
    }

    sub_267EF5C28();
    sub_267EF5E08();

    ++v22;
    if (v26)
    {
      MEMORY[0x26D608F90](result);
      v24 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v24 >> 1)
      {
        OUTLINED_FUNCTION_8_2(v24);
        sub_267EF9328();
      }

      result = sub_267EF9368();
      v6 = v29;
      v22 = v23;
    }
  }

  return v6;
}

uint64_t sub_267EAD894(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267EAD8DC(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_267EF9BF8();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_267BA2E04(v3, v5);
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_267EF9BD8();
    sub_267EF9C08();
    sub_267EF9C18();
    sub_267EF9BE8();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_267EAD9E8(uint64_t a1)
{
  sub_267BAF0DC(a1);
  sub_267C725FC();
  if (sub_267BAF0DC(a1))
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x26D609870](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v2 = *(a1 + 32);
    }

    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_267BA9F38(0, &qword_28022ABD8, 0x277D82BB8);
      sub_267EF92E8();
    }

    else
    {
    }
  }
}

id sub_267EADB9C()
{
  v0 = sub_267EF9028();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x277CC34A8]);
  return sub_267EAEB30(0xD00000000000001CLL, 0x8000000267F1CDF0, v0, v2, 0xD00000000000001CLL, 0x8000000267F1CDF0);
}

id sub_267EADC1C()
{
  v0 = sub_267EF9028();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x277CC34A8]);
  return sub_267EAEB30(0xD000000000000013, 0x8000000267F10280, v0, v2, 0xD000000000000013, 0x8000000267F10280);
}

uint64_t sub_267EADC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = sub_267EF7318();
  v5[24] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v5[25] = v7;
  v5[26] = swift_task_alloc();
  v8 = sub_267EF7338();
  v5[27] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v5[28] = v9;
  v5[29] = swift_task_alloc();
  v10 = sub_267EF7368();
  v5[30] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v5[31] = v11;
  v5[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267EADE04, 0, 0);
}

uint64_t sub_267EADE04()
{
  v43 = v0;
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[24];
  sub_267EF7328();
  sub_267EF7358();
  (*(v6 + 8))(v4, v5);
  sub_267EF7348();
  (*(v2 + 8))(v1, v3);
  LODWORD(v1) = (*(v8 + 88))(v7, v9);
  LODWORD(v3) = *MEMORY[0x277D0E278];
  (*(v8 + 8))(v7, v9);
  if (v1 != v3)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v14 = sub_267EF8A08();
    __swift_project_value_buffer(v14, qword_280240FB0);
    v15 = sub_267EF89F8();
    v16 = sub_267EF95D8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_267B93000, v15, v16, "#MessageSummaryProvider Summarization is not available for this device or locale", v17, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_15();

    __asm { BRAA            X2, X16 }
  }

  v10 = 0xD000000000000013;
  v11 = 0x8000000267F10280;
  v12 = v0[21] == 0xD000000000000013 && 0x8000000267F10280 == v0[22];
  if (v12 || (sub_267EF9EA8() & 1) != 0)
  {
    v13 = sub_267EADC1C();
  }

  else
  {
    v11 = 0x8000000267F1CDF0;
    v13 = sub_267EADB9C();
    v10 = 0xD00000000000001CLL;
  }

  v41 = v13;
  v0[33] = v13;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v20 = sub_267EF8A08();
  v0[34] = __swift_project_value_buffer(v20, qword_280240FB0);

  v21 = sub_267EF89F8();
  v22 = sub_267EF95D8();

  if (os_log_type_enabled(v21, v22))
  {
    v24 = v0[19];
    v23 = v0[20];
    v25 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v25 = 136315394;
    *(v25 + 4) = sub_267BA33E8(v10, v11, &v42);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_267BA33E8(v24, v23, &v42);
    _os_log_impl(&dword_267B93000, v21, v22, "#MessageSummaryProvider Fetching summary from %s, for message: %s", v25, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v26 = v0[19];
  v27 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_267EFCC90;
  *(v28 + 32) = sub_267EF9028();
  *(v28 + 40) = v29;
  *(v28 + 48) = sub_267EF9028();
  *(v28 + 56) = v30;
  v31 = sub_267EF92D8();
  v0[35] = v31;

  v32 = *MEMORY[0x277CCA1A0];
  v0[36] = *MEMORY[0x277CCA1A0];
  v33 = v32;
  v34 = sub_267EF8FF8();
  v0[37] = v34;

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_267EFC020;
  *(v35 + 32) = v26;
  *(v35 + 40) = v27;

  v36 = sub_267EF92D8();
  v0[38] = v36;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_267EAE384;
  v37 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CFA0, &qword_267F0E5A8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_267EAEAC4;
  v0[13] = &block_descriptor_21;
  v0[14] = v37;
  [v41 slowFetchAttributes:v31 protectionClass:v33 bundleID:v34 identifiers:v36 options:32 completionHandler:?];
  OUTLINED_FUNCTION_15();

  return MEMORY[0x282200938](v38);
}

uint64_t sub_267EAE384()
{

  return MEMORY[0x2822009F8](sub_267EAE464, 0, 0);
}

void sub_267EAE464()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[35];
  v4 = v0[36];
  if (v0[18])
  {
    sub_267EAD9E8(v0[18]);
    v6 = v5;

    if (v6)
    {
      if (*(v6 + 16))
      {
        v7 = *(v6 + 32);
        if (sub_267BAF0DC(v7))
        {
          sub_267BBD0EC(0, (v7 & 0xC000000000000001) == 0, v7);
          if ((v7 & 0xC000000000000001) != 0)
          {

            v8 = MEMORY[0x26D609870](0, v7);
          }

          else
          {
            v8 = *(v7 + 32);
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            LODWORD(v24) = 0;
            BYTE4(v24) = 1;
            sub_267EFA058();
          }
        }
      }

      OUTLINED_FUNCTION_7_54();
      v9 = sub_267EF89F8();
      v10 = sub_267EF95D8();

      v18 = os_log_type_enabled(v9, v10);
      v12 = v0[33];
      if (!v18)
      {
LABEL_17:

        OUTLINED_FUNCTION_15();

        __asm { BRAA            X2, X16 }
      }

      OUTLINED_FUNCTION_6_57();
      v13 = OUTLINED_FUNCTION_5_4();
      *&v24 = v13;
      *(v1 + 4) = OUTLINED_FUNCTION_13_18(4.8149e-34, v13, v19, v20, v21);
      v17 = "#MessageSummaryProvider No summary status found for messageID: %s";
LABEL_16:
      _os_log_impl(&dword_267B93000, v9, v10, v17, v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
      goto LABEL_17;
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_54();
  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[33];
  if (!v11)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_6_57();
  v13 = OUTLINED_FUNCTION_5_4();
  *&v24 = v13;
  *(v1 + 4) = OUTLINED_FUNCTION_13_18(4.8149e-34, v13, v14, v15, v16);
  v17 = "#MessageSummaryProvider No summary results found for messageID: %s";
  goto LABEL_16;
}

uint64_t sub_267EAEAC4(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_267BA9F38(0, &qword_28022ABD8, 0x277D82BB8);
    v4 = sub_267EF92F8();
  }

  else
  {
    v4 = 0;
  }

  return sub_267EADB7C(v3, v4);
}

id sub_267EAEB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_267EF8FF8();

  if (a4)
  {
    v9 = sub_267EF8FF8();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_267EF8FF8();

  v11 = [v6 initWithName:v8 protectionClass:v9 bundleIdentifier:v10];

  return v11;
}

id sub_267EAEBF4(uint64_t a1)
{
  sub_267EF9028();
  sub_267C7A6BC();
  sub_267C7A710();
  v1 = sub_267EF8FA8();

  if ((v1 & 1) == 0)
  {
    return sub_267EF9028();
  }

  result = INPersonRelationshipValueAsString();
  if (result)
  {
    v3 = result;
    v4 = sub_267EF9028();
    v6 = v5;

    result = sub_267BB8F30(v4, v6);
    if (v7)
    {
      v8 = sub_267EF8F58();

      sub_267BB8FCC(1uLL, v4, v6);
      sub_267BB9090();

      sub_267EF9188();

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}