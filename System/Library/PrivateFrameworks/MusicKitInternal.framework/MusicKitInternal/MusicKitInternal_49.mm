uint64_t sub_1D52F5AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1D52F5B00, v3, 0);
}

uint64_t sub_1D52F5C58()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v0;

  OUTLINED_FUNCTION_153_4();
  OUTLINED_FUNCTION_204();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D52F5D88()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 112);
  sub_1D552EF80();
  v2 = OUTLINED_FUNCTION_83_19();
  *v1 = v3;
  *(v1 + 8) = v2;
  *(v1 + 24) = v4;
  *(v1 + 40) = v5;

  OUTLINED_FUNCTION_55();

  return v6();
}

uint64_t sub_1D52F5E10()
{
  OUTLINED_FUNCTION_60();
  sub_1D552EF80();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D52F5E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[12] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1D52F5EC4, v3, 0);
}

uint64_t sub_1D52F5EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75_0();
  if (qword_1EDD58C20 != -1)
  {
    OUTLINED_FUNCTION_3_135(&qword_1EDD58C20);
  }

  v28 = *(v12 + 72);
  sub_1D552E500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAD18, &qword_1D561DB00);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_87_15(inited, xmmword_1D561C050);
  *(v12 + 104) = v29;
  *(v12 + 56) = v29;
  v14 = swift_task_alloc();
  *(v12 + 112) = v14;
  *(v14 + 16) = v28;
  OUTLINED_FUNCTION_0_177();
  sub_1D52F84F4(v15, v16, &unk_1D5671394);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v12 + 120) = v17;
  *v17 = v18;
  v17[1] = sub_1D52F6060;
  OUTLINED_FUNCTION_2_130();

  return MEMORY[0x1EEE6DE98](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1D52F6060()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  v7 = *(v3 + 88);
  if (v0)
  {
    v8 = sub_1D52F61FC;
  }

  else
  {
    v8 = sub_1D52F61A0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1D52F61A0()
{
  OUTLINED_FUNCTION_60();
  sub_1D552EF80();
  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D52F61FC()
{
  OUTLINED_FUNCTION_60();
  sub_1D552EF80();
  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D52F6258(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D52F62A4, v2, 0);
}

uint64_t sub_1D52F62A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_78_21();
  OUTLINED_FUNCTION_75_0();
  if (qword_1EDD58C20 != -1)
  {
    OUTLINED_FUNCTION_3_135(&qword_1EDD58C20);
  }

  v32 = *(v12 + 80);
  sub_1D552E500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAD18, &qword_1D561DB00);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_38_36(inited, v14, v15, xmmword_1D561C050);
  *(v12 + 112) = a11;
  *(v12 + 72) = a11;
  v16 = swift_task_alloc();
  *(v12 + 120) = v16;
  *(v16 + 16) = v32;
  OUTLINED_FUNCTION_0_177();
  sub_1D52F84F4(v17, v18, &unk_1D5671394);
  v19 = swift_task_alloc();
  *(v12 + 128) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3CE8, &unk_1D56611E0);
  OUTLINED_FUNCTION_68_22();
  *v19 = v20;
  OUTLINED_FUNCTION_36_43(v21);
  OUTLINED_FUNCTION_2_130();
  OUTLINED_FUNCTION_60_22();

  return MEMORY[0x1EEE6DE98](v22, v23, v24, v25, v26, v27, v28, v29, v32, *(&v32 + 1), a11, a12);
}

uint64_t sub_1D52F642C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 136) = v0;

  v7 = *(v3 + 96);
  if (v0)
  {
    v8 = sub_1D52F65D4;
  }

  else
  {
    v8 = sub_1D52F656C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1D52F656C()
{
  OUTLINED_FUNCTION_60();
  sub_1D552EF80();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1D52F65D4()
{
  OUTLINED_FUNCTION_60();
  sub_1D552EF80();
  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D52F6630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1D52F667C, v3, 0);
}

uint64_t sub_1D52F667C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_75_0();
  if (qword_1EDD58C20 != -1)
  {
    v13 = OUTLINED_FUNCTION_3_135(&qword_1EDD58C20);
  }

  OUTLINED_FUNCTION_79_18(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAD18, &qword_1D561DB00);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_87_15(inited, xmmword_1D561C050);
  v12[19] = v39;
  v12[13] = v39;
  v16 = swift_task_alloc();
  OUTLINED_FUNCTION_21_59(v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  OUTLINED_FUNCTION_0_177();
  sub_1D52F84F4(v26, v27, &unk_1D5671394);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v12[21] = v28;
  *v28 = v29;
  v28[1] = sub_1D52F67FC;
  OUTLINED_FUNCTION_71_19();
  OUTLINED_FUNCTION_2_130();

  return MEMORY[0x1EEE6DE98](v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_1D52F67FC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 176) = v0;

  v7 = *(v3 + 136);
  if (v0)
  {
    v8 = sub_1D52F69B0;
  }

  else
  {
    v8 = sub_1D52F693C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1D52F693C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 112);
  sub_1D552EF80();
  v2 = OUTLINED_FUNCTION_83_19();
  *v1 = v3;
  *(v1 + 8) = v2;
  *(v1 + 24) = v4;
  *(v1 + 40) = v5;
  OUTLINED_FUNCTION_55();

  return v6();
}

uint64_t sub_1D52F69B0()
{
  OUTLINED_FUNCTION_60();
  sub_1D552EF80();
  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D52F6A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1D52F6A58, v3, 0);
}

uint64_t sub_1D52F6BB0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v0;

  OUTLINED_FUNCTION_153_4();
  OUTLINED_FUNCTION_204();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D52F6CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1D52F6D2C, v3, 0);
}

uint64_t sub_1D52F6E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1D52F6ED0, v3, 0);
}

uint64_t sub_1D52F7028()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_22_58();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_102(v1);

  return sub_1D552E5CC(v3, v4, v5);
}

uint64_t sub_1D52F70BC(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_1D52F71B0;

  return v5(v2 + 16);
}

uint64_t sub_1D52F71B0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D52F72A8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v3;
  *(v1 + 24) = v4;
  *(v1 + 40) = v2;
  return OUTLINED_FUNCTION_1_18();
}

uint64_t sub_1D52F72D0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D4E6ED20;

  return v6(a1);
}

uint64_t sub_1D52F73C8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_8(v1);

  return sub_1D52F72D0(v3, v4);
}

uint64_t sub_1D52F7458(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_1D52F7548;

  return v4(v1 + 16);
}

uint64_t sub_1D52F7548()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D52F7684(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_1D52F7778;

  return v5(v2 + 16);
}

uint64_t sub_1D52F7778()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D52F7894(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_1D52F7988;

  return v5(v2 + 16);
}

uint64_t sub_1D52F7988()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D52F7A80(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_1D52F8A8C;

  return sub_1D52F70BC(v2 + 16, a2);
}

uint64_t sub_1D52F7B28()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t sub_1D52F7BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D52F7C58;

  return sub_1D52F4B70(a2, a3);
}

uint64_t sub_1D52F7C58()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_59_1();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;

  if (!v0)
  {
    v11 = *(v7 + 16);
    *v11 = v5;
    *(v11 + 8) = v3 & 1;
  }

  OUTLINED_FUNCTION_153_1();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1D52F7D5C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t sub_1D52F7DEC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1D52F8A7C;

  return sub_1D52F7458(a2);
}

uint64_t sub_1D52F7E8C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t sub_1D52F7F1C(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_1D52F7FC4;

  return sub_1D52F7684(v2 + 16, a2);
}

uint64_t sub_1D52F7FC4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (!v0)
  {
    v7 = *(v3 + 64);
    v8 = *(v3 + 16);
    v9 = *(v3 + 32);
    *(v7 + 25) = *(v3 + 41);
    *v7 = v8;
    v7[1] = v9;
  }

  OUTLINED_FUNCTION_71_0();

  return v10();
}

uint64_t sub_1D52F80BC(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_1D52F8A8C;

  return sub_1D52F7894(v2 + 16, a2);
}

uint64_t sub_1D52F8164(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_1D52F8A8C;

  return sub_1D52F7894(v2 + 16, a2);
}

uint64_t sub_1D52F820C(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_1D52F8A8C;

  return sub_1D52F7894(v2 + 16, a2);
}

uint64_t sub_1D52F82B4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t sub_1D52F8344()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t sub_1D52F83D4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t sub_1D52F8464()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t sub_1D52F84F4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D52F853C()
{
  result = qword_1EC7F3D08;
  if (!qword_1EC7F3D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D08);
  }

  return result;
}

unint64_t sub_1D52F85B4()
{
  result = qword_1EC7F3D10;
  if (!qword_1EC7F3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D10);
  }

  return result;
}

unint64_t sub_1D52F8608()
{
  result = qword_1EC7F3D30;
  if (!qword_1EC7F3D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D30);
  }

  return result;
}

unint64_t sub_1D52F865C()
{
  result = qword_1EC7F3D38;
  if (!qword_1EC7F3D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D38);
  }

  return result;
}

unint64_t sub_1D52F86B0()
{
  result = qword_1EC7F3D40;
  if (!qword_1EC7F3D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D40);
  }

  return result;
}

_BYTE *sub_1D52F8704(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D52F8804()
{
  result = qword_1EC7F3D60;
  if (!qword_1EC7F3D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D60);
  }

  return result;
}

unint64_t sub_1D52F885C()
{
  result = qword_1EC7F3D68;
  if (!qword_1EC7F3D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D68);
  }

  return result;
}

unint64_t sub_1D52F88B4()
{
  result = qword_1EC7F3D70;
  if (!qword_1EC7F3D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D70);
  }

  return result;
}

unint64_t sub_1D52F890C()
{
  result = qword_1EC7F3D78;
  if (!qword_1EC7F3D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D78);
  }

  return result;
}

unint64_t sub_1D52F8964()
{
  result = qword_1EC7F3D80;
  if (!qword_1EC7F3D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D80);
  }

  return result;
}

unint64_t sub_1D52F89BC()
{
  result = qword_1EC7F3D88;
  if (!qword_1EC7F3D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D88);
  }

  return result;
}

unint64_t sub_1D52F8A14()
{
  result = qword_1EC7F3D90;
  if (!qword_1EC7F3D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3D90);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_34_47(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 152) = a11;
  *(v11 + 104) = a11;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_37_35(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v1;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_51_30()
{

  JUMPOUT(0x1DA6EAC70);
}

uint64_t OUTLINED_FUNCTION_76_16(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F18();
}

uint64_t OUTLINED_FUNCTION_80_13()
{
}

void OUTLINED_FUNCTION_87_15(uint64_t a1, __n128 a2)
{
  *(a1 + 16) = a2;
  *(a1 + 32) = v2;

  sub_1D4EF3348(a1);
}

unint64_t sub_1D52F8C28(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  if (*v1 < 0)
  {
    v21 = v1[2];
    v22 = v5;
    v23 = v8;
    v24 = v7;
    v25 = v9;
    v26 = v1[7];
    sub_1D5615B68();

    v19 = 0x22206E6D756C6F43;
    v20 = 0xE800000000000000;
    MEMORY[0x1DA6EAC70](*((v4 & 0x7FFFFFFFFFFFFFFFLL) + 0x10), *((v4 & 0x7FFFFFFFFFFFFFFFLL) + 0x18));
    MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D568A720);
    if (v3)
    {
      sub_1D5615B68();

      strcpy(v18, " Actual type: ");
      HIBYTE(v18[1]) = -18;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7F3D98, &qword_1D56511A0);
      v15 = sub_1D5614DB8();
      MEMORY[0x1DA6EAC70](v15);

      MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
      MEMORY[0x1DA6EAC70](v18[0], v18[1]);
    }

    v18[0] = 32;
    v18[1] = 0xE100000000000000;
    _s10QueryErrorO7ContextVMa(0, *(a1 + 16), v13, v14);
    v16 = sub_1D52F8EA8();
    MEMORY[0x1DA6EAC70](v16);
  }

  else
  {
    v21 = v1[1];
    v22 = v6;
    v23 = v5;
    v24 = v8;
    v25 = v7;
    v26 = v9;
    sub_1D5615B68();

    v19 = 0xD000000000000011;
    v20 = 0x80000001D568A740;
    MEMORY[0x1DA6EAC70](*(v4 + 16), *(v4 + 24));
    MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D568A760);
    v18[0] = 32;
    v18[1] = 0xE100000000000000;
    _s10QueryErrorO7ContextVMa(0, *(a1 + 16), v10, v11);
    v12 = sub_1D52F8EA8();
    MEMORY[0x1DA6EAC70](v12);

    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  }

  MEMORY[0x1DA6EAC70](v18[0], v18[1]);

  return v19;
}

uint64_t sub_1D52F8EA8()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = v1;
    sub_1D5615B68();

    v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v4 = sub_1D5614DB8();
    MEMORY[0x1DA6EAC70](v4);

    sub_1D4EFF8E4();
    v6 = v5;
    v7 = *(v5 + 16);
    if (v7 >= *(v5 + 24) >> 1)
    {
      sub_1D4EFF8E4();
      v6 = v19;
    }

    *(v6 + 16) = v7 + 1;
    v8 = v6 + 16 * v7;
    *(v8 + 32) = 0xD000000000000011;
    *(v8 + 40) = 0x80000001D568A7A0;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v0 + 32);
  if (v9 == 255)
  {
    if (!*(v6 + 16))
    {

      MEMORY[0x1DA6EAC70](1701736302, 0xE400000000000000);
      goto LABEL_14;
    }
  }

  else
  {
    v22 = *v0;
    v23 = *(v0 + 8);
    v24 = *(v0 + 16);
    v25 = *(v0 + 24);
    sub_1D51D2A80(*v0, v23, v24, v25, v9 & 1);
    sub_1D5615B68();

    v10 = sub_1D54F1774();
    v12 = v11;
    sub_1D52F927C(v22, v23, v24, v25, v9);
    MEMORY[0x1DA6EAC70](v10, v12);

    MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D4EFF8E4();
      v6 = v20;
    }

    v13 = *(v6 + 16);
    if (v13 >= *(v6 + 24) >> 1)
    {
      sub_1D4EFF8E4();
      v6 = v21;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = 0xD000000000000012;
    *(v14 + 40) = 0x80000001D568A780;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D50A9E08();
  v15 = sub_1D5614CF8();
  v17 = v16;

  MEMORY[0x1DA6EAC70](v15, v17);

LABEL_14:
  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0x28747865746E6F43;
}

unint64_t sub_1D52F91CC()
{
  v0 = sub_1D52F8EA8();
  MEMORY[0x1DA6EAC70](v0);

  return 0xD000000000000034;
}

uint64_t sub_1D52F927C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1D51D29D8(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_1D52F9294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_16MusicKitInternal3SQLOSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D52F92FC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 64))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D52F9350(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
      *(result + 40) = 0u;
      *(result + 56) = 0;
    }
  }

  return result;
}

uint64_t sub_1D52F9404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D52F9440(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D52F9494(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t _s8LocationVMa(uint64_t a1)
{
  result = qword_1EDD5A078;
  if (!qword_1EDD5A078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D52F9568(uint64_t a1)
{
  result = type metadata accessor for SQLDatabase.Location(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D52F95D8()
{
  result = qword_1EC7F3EA0[0];
  if (!qword_1EC7F3EA0[0])
  {
    _s8LocationVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7F3EA0);
  }

  return result;
}

uint64_t sub_1D52F9630@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SQLDatabase.Location(0);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_1D52FA270(v2, v6 - v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1D560C0A8();
    (*(*(v8 - 8) + 32))(a1, v7, v8);
    v9 = OUTLINED_FUNCTION_60_0();
    v12 = v8;
  }

  else
  {
    sub_1D52FA2D4(v7);
    v12 = sub_1D560C0A8();
    v9 = a1;
    v10 = 1;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_1D52F9734@<X0>(uint64_t *a2@<X8>)
{
  v73[3] = *MEMORY[0x1E69E9840];
  sub_1D560BDE8();
  OUTLINED_FUNCTION_4();
  v70 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v5 = sub_1D560BEE8();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v71 = v13;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v66[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v66[-v18];
  sub_1D4E4D51C();
  if (sub_1D4E4D5FC())
  {
    if (qword_1EDD5D8B0 != -1)
    {
      OUTLINED_FUNCTION_0_20(&qword_1EDD5D8B0);
    }

    v19 = sub_1D560C758();
    __swift_project_value_buffer(v19, qword_1EDD76DE0);
    v20 = sub_1D560C738();
    v21 = sub_1D56156E8();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_14;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Testing environment detected while initializing the database from the MusicLibrary. To avoid corrupting existing data, overriding database configuration to run in-memory.";
LABEL_13:
    _os_log_impl(&dword_1D4E3F000, v20, v21, v23, v22, 2u);
    OUTLINED_FUNCTION_122();
LABEL_14:

    sub_1D4EF1814(0xD000000000000040, 0x80000001D567E560, 0xFuLL);
    *a2 = v31;
    a2[1] = v32;
    type metadata accessor for SQLDatabase.Location(0);
    swift_storeEnumTagMultiPayload();
    _s8LocationVMa(0);
    v33 = OUTLINED_FUNCTION_60_0();

    return __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  }

  v69 = v12;
  v24 = [objc_opt_self() mainBundle];
  v25 = sub_1D5615818();

  if ((v25 & 1) == 0)
  {
    if (qword_1EDD5D8B0 != -1)
    {
      OUTLINED_FUNCTION_0_20(&qword_1EDD5D8B0);
    }

    v30 = sub_1D560C758();
    __swift_project_value_buffer(v30, qword_1EDD76DE0);
    v20 = sub_1D560C738();
    v21 = sub_1D56156C8();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_14;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Trying to use the database in not-Music.app. Defaulting to in-memory database (DATA IS DELETED ON PROCESS QUIT).";
    goto LABEL_13;
  }

  sub_1D52FA020();
  v26 = [objc_opt_self() defaultManager];
  v27 = sub_1D560BF68();
  v73[0] = 0;
  v28 = [v26 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:v73];

  if (v28)
  {
    v29 = v73[0];
  }

  else
  {
    v38 = v73[0];
    v39 = sub_1D560BE98();

    swift_willThrow();
    if (qword_1EDD5D8B0 != -1)
    {
      OUTLINED_FUNCTION_0_20(&qword_1EDD5D8B0);
    }

    v40 = sub_1D560C758();
    __swift_project_value_buffer(v40, qword_1EDD76DE0);
    v41 = v39;
    v42 = sub_1D560C738();
    v43 = sub_1D56156C8();

    v68 = v42;
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v67 = v43;
      v46 = v45;
      *v44 = 138543362;
      v47 = v39;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 4) = v48;
      *v46 = v48;
      _os_log_impl(&dword_1D4E3F000, v68, v67, "Unable to createDirectory, are you in a read-only environment? %{public}@", v44, 0xCu);
      sub_1D5103588(v46);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    else
    {
    }
  }

  v73[0] = 0xD000000000000013;
  v73[1] = 0x80000001D5689F60;
  (*(v7 + 104))(v11, *MEMORY[0x1E6968F70], v5);
  sub_1D4F53278();
  sub_1D560C088();
  (*(v7 + 8))(v11, v5);
  sub_1D560BDD8();
  sub_1D560BDC8();
  sub_1D560BF58();
  v49 = OUTLINED_FUNCTION_5_103();
  v50(v49);
  v51 = v71;
  if (qword_1EDD5D8B0 != -1)
  {
    OUTLINED_FUNCTION_0_20(&qword_1EDD5D8B0);
  }

  v52 = sub_1D560C758();
  __swift_project_value_buffer(v52, qword_1EDD76DE0);
  v53 = sub_1D560C738();
  v54 = sub_1D56156E8();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v73[0] = v56;
    *v55 = 136446210;
    swift_beginAccess();
    v57 = sub_1D560BF08();
    v59 = sub_1D4E6835C(v57, v58, v73);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_1D4E3F000, v53, v54, "Storing database on disk at %{public}s.", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  v60 = *(v51 + 8);
  v61 = v69;
  v60(v72, v69);
  swift_beginAccess();
  (*(v51 + 16))(a2, v17, v61);
  type metadata accessor for SQLDatabase.Location(0);
  swift_storeEnumTagMultiPayload();
  _s8LocationVMa(0);
  v62 = OUTLINED_FUNCTION_60_0();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  return (v60)(v17, v61);
}

uint64_t sub_1D52FA020()
{
  v0 = sub_1D560BEE8();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  (*(v2 + 104))(v5 - v4, *MEMORY[0x1E6968F58], v0);
  sub_1D4F53278();
  sub_1D560C088();
  return (*(v2 + 8))(v6, v0);
}

uint64_t sub_1D52FA144()
{
  sub_1D56162D8();
  sub_1D54E73DC(v1);
  return sub_1D5616328();
}

uint64_t sub_1D52FA190(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D54E73DC(v2);
  return sub_1D5616328();
}

uint64_t sub_1D52FA1CC()
{
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000047, 0x80000001D568A800);
  type metadata accessor for SQLDatabase.Location(0);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D52FA270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLDatabase.Location(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D52FA2D4(uint64_t a1)
{
  v2 = type metadata accessor for SQLDatabase.Location(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D52FA374(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D5616168();
  }
}

uint64_t sub_1D52FA488()
{
  sub_1D52FA3A4();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1D52FA4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a3;
  v4[25] = a4;
  v4[22] = a1;
  v4[23] = a2;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D52FA510()
{
  v3 = *(v2 + 184);
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v4 = *(v2 + 176) & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_1D4F0029C();
    OUTLINED_FUNCTION_144_3();
    if (v5)
    {
      OUTLINED_FUNCTION_4_101();
      v1 = v114;
    }

    OUTLINED_FUNCTION_64_16();
    *(v6 + 32) = 0x205443454C4553;
    *(v6 + 40) = 0xE700000000000000;
    *(v6 + 104) = 0;
    if (qword_1EDD5A218 != -1)
    {
      OUTLINED_FUNCTION_5_104(&qword_1EDD5A218);
      v0 = *(v1 + 16);
    }

    v8 = *aValue_19;
    v7 = unk_1EC7E98B0;
    v9 = *(v1 + 24);

    if (v0 >= v9 >> 1)
    {
      OUTLINED_FUNCTION_8_98();
      v1 = v115;
    }

    OUTLINED_FUNCTION_61_3();
    *(v10 + 32) = v8;
    *(v10 + 40) = v7;
    v19 = OUTLINED_FUNCTION_17_68(v11, v12, v13, v14, v15, v16, v17, v18, v121, v128, v135);
    OUTLINED_FUNCTION_21(v20, v19, v21, v22);
    if ((v0 + 2) > *(v1 + 24) >> 1)
    {
      OUTLINED_FUNCTION_4_101();
      v1 = v116;
    }

    OUTLINED_FUNCTION_64_16();
    *(v23 + 32) = 0x204D4F524620;
    *(v23 + 40) = 0xE600000000000000;
    v32 = OUTLINED_FUNCTION_17_68(v24, v25, v26, v27, v28, v29, v30, v31, v122, v129, *&v136);
    OUTLINED_FUNCTION_21(v33, v32, v34, v35);
    v36 = OUTLINED_FUNCTION_30_49("properties");
    v38 = v37;
    v39 = *(v1 + 16);
    v40 = *(v1 + 24);

    if (v39 >= v40 >> 1)
    {
      OUTLINED_FUNCTION_8_98();
      v1 = v117;
    }

    *(v1 + 16) = v39 + 1;
    v42 = v1 + 80 * v39;
    *(v42 + 32) = v36;
    *(v42 + 40) = v38;
    v50 = OUTLINED_FUNCTION_17_68(v41, v43, v44, v45, v46, v47, v48, v49, v123, v130, *&v137);
    OUTLINED_FUNCTION_21(v51, v50, v52, v53);
    if ((v39 + 2) > *(v1 + 24) >> 1)
    {
      OUTLINED_FUNCTION_4_101();
      v1 = v118;
    }

    OUTLINED_FUNCTION_64_16();
    OUTLINED_FUNCTION_18_72(v54);
    v63 = OUTLINED_FUNCTION_17_68(v55, v56, v57, v58, v59, v60, v61, v62, v124, v131, *&v138);
    OUTLINED_FUNCTION_21(v64, v63, v65, v66);
    v68 = qword_1EC7E98D0;
    v67 = unk_1EC7E98D8;
    v69 = *(v1 + 24);

    if ((v39 + 3) > (v69 >> 1))
    {
      OUTLINED_FUNCTION_8_98();
      v1 = v119;
    }

    OUTLINED_FUNCTION_61_3();
    *(v70 + 32) = v68;
    *(v70 + 40) = v67;
    v79 = OUTLINED_FUNCTION_17_68(v71, v72, v73, v74, v75, v76, v77, v78, v125, v132, *&v139);
    OUTLINED_FUNCTION_21(v80, v79, v81, v82);
    if ((v39 + 4) > *(v1 + 24) >> 1)
    {
      OUTLINED_FUNCTION_4_101();
      v1 = v120;
    }

    OUTLINED_FUNCTION_288();
    OUTLINED_FUNCTION_27_54();
    v91 = OUTLINED_FUNCTION_17_68(v83, v84, v85, v86, v87, v88, v89, v90, v126, v133, *&v140);
    OUTLINED_FUNCTION_52_20(v91, v92, v93);
    OUTLINED_FUNCTION_29_49(v94);
    *(v2 + 88) = 1;
    v95 = *(v1 + 24);

    if ((v39 + 5) > (v95 >> 1))
    {
      OUTLINED_FUNCTION_8_98();
    }

    OUTLINED_FUNCTION_61_3();
    OUTLINED_FUNCTION_140_7(v96);
    __swift_destroy_boxed_opaque_existential_1((v2 + 96));
    OUTLINED_FUNCTION_97_2();
    if (v5)
    {
      OUTLINED_FUNCTION_4_101();
    }

    OUTLINED_FUNCTION_64_16();
    *(v97 + 32) = 0;
    *(v97 + 40) = 0xE000000000000000;
    v106 = OUTLINED_FUNCTION_17_68(v98, v99, v100, v101, v102, v103, v104, v105, v127, v134, *&v141);
    OUTLINED_FUNCTION_21(v107, v106, v108, v109);
    OUTLINED_FUNCTION_21_60(MEMORY[0x1E69E7CC0], v2 + 136);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v2 + 208) = v110;
    *v110 = v111;
    OUTLINED_FUNCTION_24_54(v110);

    return sub_1D52ABE9C();
  }

  else
  {
    v113 = *(v2 + 8);

    return v113(0, 0);
  }
}

uint64_t sub_1D52FA8B8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_59_1();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;

  sub_1D51D2984(v7 + 136);
  if (v2)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v7 + 216) = a2;
    *(v7 + 224) = a1;
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1D52FAA04()
{
  if (*(v0 + 216))
  {
    v1 = *(v0 + 224);
  }

  else
  {
    v1 = 0;
  }

  return (*(v0 + 8))(v1);
}

uint64_t sub_1D52FAA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[41] = a5;
  v6[42] = a6;
  v6[39] = a3;
  v6[40] = a4;
  v6[37] = a1;
  v6[38] = a2;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D52FAA44()
{
  sub_1D4F0029C();
  v4 = v3;
  OUTLINED_FUNCTION_22_59();
  if (v5)
  {
    OUTLINED_FUNCTION_4_101();
    v4 = v44;
  }

  OUTLINED_FUNCTION_123_0();
  v7 = v4 + v2 * v6;
  *(v7 + 32) = 0xD000000000000017;
  *(v7 + 40) = v0;
  *(v7 + 104) = 0;
  v8 = OUTLINED_FUNCTION_30_49("properties");
  v10 = v9;
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);

  if (v11 >= v12 >> 1)
  {
    OUTLINED_FUNCTION_7_104();
    v4 = v45;
  }

  OUTLINED_FUNCTION_123_0();
  v14 = v4 + v11 * v13;
  *(v14 + 32) = v8;
  *(v14 + 40) = v10;
  OUTLINED_FUNCTION_3_99(v14, v53, v59, v65, v71);
  if ((v11 + 2) > *(v4 + 24) >> 1)
  {
    OUTLINED_FUNCTION_8_98();
    v4 = v46;
  }

  OUTLINED_FUNCTION_61_3();
  *(v15 + 32) = 0x202020200A28;
  *(v15 + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_3_99(v15, v54, v60, v66, v72);
  if (qword_1EDD5A218 != -1)
  {
    OUTLINED_FUNCTION_5_104(&qword_1EDD5A218);
  }

  v17 = qword_1EC7E98D0;
  v16 = unk_1EC7E98D8;
  v18 = *(v4 + 16);
  v19 = *(v4 + 24);

  if (v18 >= v19 >> 1)
  {
    OUTLINED_FUNCTION_8_98();
    v4 = v47;
  }

  *(v4 + 16) = v18 + 1;
  v20 = v4 + 80 * v18;
  *(v20 + 32) = v17;
  *(v20 + 40) = v16;
  OUTLINED_FUNCTION_3_99(v20, v55, v61, v67, v73);
  if ((v18 + 2) > *(v4 + 24) >> 1)
  {
    OUTLINED_FUNCTION_4_101();
    v4 = v48;
  }

  OUTLINED_FUNCTION_64_16();
  *(v21 + 32) = 0x202020200A2CLL;
  *(v21 + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_3_99(v21, v56, v62, v68, v74);
  v23 = *aValue_19;
  v22 = unk_1EC7E98B0;
  v24 = *(v4 + 24);

  if ((v18 + 3) > (v24 >> 1))
  {
    OUTLINED_FUNCTION_8_98();
    v4 = v49;
  }

  OUTLINED_FUNCTION_61_3();
  *(v25 + 32) = v23;
  *(v25 + 40) = v22;
  OUTLINED_FUNCTION_1_135(v25, v57, v63, v69, v75);
  *(v26 + 104) = 0;
  if ((v18 + 4) > *(v4 + 24) >> 1)
  {
    OUTLINED_FUNCTION_4_101();
    v4 = v50;
  }

  v27 = *(v1 + 320);
  OUTLINED_FUNCTION_288();
  *(v28 + 32) = 0xD000000000000010;
  *(v28 + 40) = 0x80000001D5687730;
  OUTLINED_FUNCTION_52_20(v58, v64, v70);
  v29 = MEMORY[0x1E69E6158];
  *(v1 + 200) = MEMORY[0x1E69E6158];
  *(v1 + 208) = &off_1F50C0538;
  *(v1 + 176) = v30;
  *(v1 + 184) = v27;
  sub_1D4E628D4(v1 + 176, v1 + 16);
  *(v1 + 88) = 1;
  v31 = *(v4 + 24);

  if ((v18 + 5) > (v31 >> 1))
  {
    OUTLINED_FUNCTION_8_98();
    v4 = v51;
  }

  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_140_7(v32);
  __swift_destroy_boxed_opaque_existential_1((v1 + 176));
  OUTLINED_FUNCTION_97_2();
  if (v5)
  {
    OUTLINED_FUNCTION_4_101();
    v4 = v52;
  }

  v33 = *(v1 + 304);
  OUTLINED_FUNCTION_288();
  *(v34 + 32) = 0x202020200A2CLL;
  *(v34 + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_52_20(v58, v64, v70);
  *(v1 + 240) = v29;
  *(v1 + 248) = &off_1F50C0538;
  *(v1 + 216) = v35;
  *(v1 + 224) = v33;
  sub_1D4E628D4(v1 + 216, v1 + 96);
  *(v1 + 168) = 1;
  v36 = *(v4 + 24);

  if ((v18 + 7) > (v36 >> 1))
  {
    OUTLINED_FUNCTION_8_98();
  }

  OUTLINED_FUNCTION_61_3();
  memcpy((v37 + 32), (v1 + 96), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v1 + 216));
  OUTLINED_FUNCTION_97_2();
  if (v5)
  {
    OUTLINED_FUNCTION_4_101();
  }

  OUTLINED_FUNCTION_64_16();
  *(v38 + 32) = 10506;
  *(v38 + 40) = 0xE200000000000000;
  OUTLINED_FUNCTION_3_99(v38, v58, v64, v70, v76);
  OUTLINED_FUNCTION_21_60(MEMORY[0x1E69E7CC0], v1 + 256);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 344) = v39;
  *v39 = v40;
  v39[1] = sub_1D52FAE30;
  v41 = *(v1 + 328);
  v42 = *(v1 + 336);

  return sub_1D52EF24C(v1 + 256, v41, v42);
}

uint64_t sub_1D52FAE30()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 352) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1D51D2984(v3 + 256);
    OUTLINED_FUNCTION_55();

    return v10();
  }
}

uint64_t sub_1D52FAF4C()
{
  OUTLINED_FUNCTION_60();
  sub_1D51D2984(v0 + 256);
  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D52FAFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a3;
  v4[25] = a4;
  v4[22] = a1;
  v4[23] = a2;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D52FAFC0()
{
  sub_1D4F0029C();
  OUTLINED_FUNCTION_144_3();
  if (v2)
  {
    OUTLINED_FUNCTION_4_101();
    v0 = v86;
  }

  OUTLINED_FUNCTION_64_16();
  strcpy((v3 + 32), "DELETE FROM ");
  *(v3 + 45) = 0;
  *(v3 + 46) = -5120;
  *(v3 + 104) = 0;
  v4 = OUTLINED_FUNCTION_30_49("properties");
  v6 = v5;
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  if (v7 >= v8 >> 1)
  {
    OUTLINED_FUNCTION_7_104();
    v0 = v87;
  }

  OUTLINED_FUNCTION_123_0();
  v10 = v0 + v7 * v9;
  *(v10 + 32) = v4;
  *(v10 + 40) = v6;
  v19 = OUTLINED_FUNCTION_11_90(v11, v12, v13, v14, v15, v16, v17, v18, v90, v95);
  OUTLINED_FUNCTION_21(v20, v19, v21, v22);
  if ((v7 + 2) > *(v0 + 24) >> 1)
  {
    OUTLINED_FUNCTION_8_98();
    v0 = v88;
  }

  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_18_72(v23);
  v32 = OUTLINED_FUNCTION_11_90(v24, v25, v26, v27, v28, v29, v30, v31, v91, *&v96);
  OUTLINED_FUNCTION_21(v33, v32, v34, v35);
  if (qword_1EDD5A218 != -1)
  {
    OUTLINED_FUNCTION_5_104(&qword_1EDD5A218);
  }

  v37 = qword_1EC7E98D0;
  v36 = unk_1EC7E98D8;
  v38 = *(v0 + 16);
  v39 = *(v0 + 24);

  if (v38 >= v39 >> 1)
  {
    OUTLINED_FUNCTION_8_98();
    v0 = v40;
  }

  *(v0 + 16) = v38 + 1;
  v48 = v0 + 80 * v38;
  *(v48 + 32) = v37;
  *(v48 + 40) = v36;
  v49 = OUTLINED_FUNCTION_11_90(v40, v41, v42, v43, v44, v45, v46, v47, v92, *&v97);
  OUTLINED_FUNCTION_21(v50, v49, v51, v52);
  if ((v38 + 2) > *(v0 + 24) >> 1)
  {
    OUTLINED_FUNCTION_4_101();
    v0 = v89;
  }

  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_27_54();
  v61 = OUTLINED_FUNCTION_11_90(v53, v54, v55, v56, v57, v58, v59, v60, v93, *&v98);
  OUTLINED_FUNCTION_52_20(v61, v62, v63);
  OUTLINED_FUNCTION_29_49(v64);
  *(v1 + 88) = 1;
  v65 = *(v0 + 24);

  if ((v38 + 3) > (v65 >> 1))
  {
    OUTLINED_FUNCTION_8_98();
  }

  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_140_7(v66);
  __swift_destroy_boxed_opaque_existential_1((v1 + 96));
  OUTLINED_FUNCTION_97_2();
  if (v2)
  {
    OUTLINED_FUNCTION_4_101();
  }

  OUTLINED_FUNCTION_64_16();
  *(v67 + 32) = 0;
  *(v67 + 40) = 0xE000000000000000;
  v76 = OUTLINED_FUNCTION_11_90(v68, v69, v70, v71, v72, v73, v74, v75, v94, *&v99);
  OUTLINED_FUNCTION_21(v77, v76, v78, v79);
  OUTLINED_FUNCTION_21_60(MEMORY[0x1E69E7CC0], v1 + 136);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 208) = v80;
  *v80 = v81;
  v82 = OUTLINED_FUNCTION_24_54(v80);

  return sub_1D52EF24C(v82, v83, v84);
}

uint64_t sub_1D52FB278()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1D51D2984(v3 + 136);
    OUTLINED_FUNCTION_55();

    return v10();
  }
}

uint64_t sub_1D52FB394()
{
  OUTLINED_FUNCTION_60();
  sub_1D51D2984(v0 + 136);
  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D52FB3F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D52FB404()
{
  sub_1D4F0029C();
  v4 = v3;
  OUTLINED_FUNCTION_22_59();
  if (v5)
  {
    OUTLINED_FUNCTION_4_101();
    v4 = v34;
  }

  OUTLINED_FUNCTION_123_0();
  v7 = v4 + v2 * v6;
  *(v7 + 32) = 0xD00000000000001BLL;
  *(v7 + 40) = v0;
  *(v7 + 104) = 0;
  v8 = OUTLINED_FUNCTION_30_49("properties");
  v10 = v9;
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);

  if (v11 >= v12 >> 1)
  {
    OUTLINED_FUNCTION_7_104();
    v4 = v35;
  }

  OUTLINED_FUNCTION_123_0();
  v14 = v4 + v11 * v13;
  *(v14 + 32) = v8;
  *(v14 + 40) = v10;
  OUTLINED_FUNCTION_3_99(v14, v40, v46, v52, v58);
  if ((v11 + 2) > *(v4 + 24) >> 1)
  {
    OUTLINED_FUNCTION_8_98();
    v4 = v36;
  }

  OUTLINED_FUNCTION_61_3();
  *(v15 + 32) = 0x202020200A28;
  *(v15 + 40) = 0xE600000000000000;
  OUTLINED_FUNCTION_3_99(v15, v41, v47, v53, v59);
  if (qword_1EDD5A218 != -1)
  {
    OUTLINED_FUNCTION_5_104(&qword_1EDD5A218);
  }

  v17 = qword_1EC7E98D0;
  v16 = unk_1EC7E98D8;
  v18 = *(v4 + 16);
  v19 = *(v4 + 24);

  if (v18 >= v19 >> 1)
  {
    OUTLINED_FUNCTION_7_104();
    v4 = v37;
  }

  OUTLINED_FUNCTION_123_0();
  v21 = v4 + v18 * v20;
  *(v21 + 32) = v17;
  *(v21 + 40) = v16;
  OUTLINED_FUNCTION_1_135(v21, v42, v48, v54, v60);
  *(v22 + 104) = 0;
  if ((v18 + 2) > *(v4 + 24) >> 1)
  {
    OUTLINED_FUNCTION_8_98();
    v4 = v38;
  }

  OUTLINED_FUNCTION_61_3();
  *(v23 + 32) = 0xD000000000000027;
  *(v23 + 40) = 0x80000001D568A880;
  OUTLINED_FUNCTION_3_99(v23, v43, v49, v55, v61);
  v25 = *aValue_19;
  v24 = unk_1EC7E98B0;
  v26 = *(v4 + 24);

  if ((v18 + 3) > (v26 >> 1))
  {
    OUTLINED_FUNCTION_7_104();
    v4 = v39;
  }

  OUTLINED_FUNCTION_64_16();
  *(v27 + 32) = v25;
  *(v27 + 40) = v24;
  OUTLINED_FUNCTION_3_99(v27, v44, v50, v56, v62);
  if ((v18 + 4) > *(v4 + 24) >> 1)
  {
    OUTLINED_FUNCTION_8_98();
  }

  OUTLINED_FUNCTION_61_3();
  strcpy((v28 + 32), "    STRING\n)");
  *(v28 + 45) = 0;
  *(v28 + 46) = -5120;
  OUTLINED_FUNCTION_3_99(v28, v45, v51, v57, v63);
  OUTLINED_FUNCTION_21_60(MEMORY[0x1E69E7CC0], (v1 + 2));
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v1[9] = v29;
  *v29 = v30;
  v29[1] = sub_1D51BC2B4;
  v31 = v1[7];
  v32 = v1[8];

  return sub_1D52EF24C((v1 + 2), v31, v32);
}

uint64_t sub_1D52FB6CC()
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3FA8, &qword_1D56516D0);
  qword_1EDD5A220 = result;
  return result;
}

uint64_t sub_1D52FB70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  v12 = type metadata accessor for MusicLibraryMapping.MappedItem(0, a3, a4, v11);
  v13 = *(*(a3 - 8) + 32);
  v14 = a5 + *(v12 + 36);

  return v13(v14, a2, a3);
}

uint64_t MusicLibraryMapping.MappedItem.item.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t MusicLibraryMapping.MappedItem.identifierSet.getter(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return sub_1D560EC98();
}

uint64_t static MusicLibraryMapping.MappedItem<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  if ((sub_1D5614D18() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MusicLibraryMapping.MappedItem(0, a3, a4, v6);
  return sub_1D5614D18() & 1;
}

uint64_t MusicLibraryMapping.MappedItem<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  sub_1D5614CB8();
  return sub_1D5614CB8();
}

uint64_t MusicLibraryMapping.MappedItem<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D56162D8();
  MusicLibraryMapping.MappedItem<>.hash(into:)(v7, a1, a2, a3);
  return sub_1D5616328();
}

uint64_t sub_1D52FBB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  sub_1D56162D8();
  MusicLibraryMapping.MappedItem<>.hash(into:)(v7, a2, v4, v5);
  return sub_1D5616328();
}

uint64_t sub_1D52FBC18(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D52FBCB8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 84);
  v8 = *(v5 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (!a2)
  {
    return 0;
  }

  v12 = AssociatedTypeWitness;
  v13 = *(*(AssociatedTypeWitness - 8) + 64) + v11;
  if (a2 <= v10)
  {
LABEL_25:
    if (v7 >= v9)
    {
      v21 = a1;
    }

    else
    {
      v21 = ((a1 + v13) & ~v11);
      v7 = *(v8 + 84);
      v12 = v5;
    }

    return __swift_getEnumTagSinglePayload(v21, v7, v12);
  }

  v14 = (v13 & ~v11) + *(*(v5 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v10 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v10)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(*(v5 - 8) + 64);
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v18) + 1;
}

void sub_1D52FBEE0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 84);
  v10 = *(v7 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(AssociatedTypeWitness - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v7 - 8) + 64);
  v16 = 8 * v15;
  if (a3 <= v12)
  {
    v17 = 0;
  }

  else if (v15 <= 3)
  {
    v20 = ((a3 - v12 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v12 >= a2)
  {
    switch(v17)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 >= v11)
          {
            v23 = a1;
            v24 = a2;
          }

          else
          {
            v23 = (&a1[v14] & ~v13);
            v24 = a2;
            v9 = v11;
            AssociatedTypeWitness = v7;
          }

          __swift_storeEnumTagSinglePayload(v23, v24, v9, AssociatedTypeWitness);
        }

        break;
    }
  }

  else
  {
    v18 = ~v12 + a2;
    if (v15 < 4)
    {
      v19 = (v18 >> v16) + 1;
      if (v15)
      {
        v22 = v18 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else if (v15 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v18;
      v19 = 1;
    }

    switch(v17)
    {
      case 1:
        a1[v15] = v19;
        break;
      case 2:
        *&a1[v15] = v19;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v15] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1D52FC190()
{
  v0 = sub_1D560F8F8();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v27 - v12;
  v14 = sub_1D560F928();
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = type metadata accessor for UploadedVideoPropertyProvider(0);
  sub_1D4F43D5C(v27[1] + *(v21 + 28), v13, &qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_57(v13, 1, v14);
  if (v22)
  {
    sub_1D4E7661C(v13, &qword_1EC7EDB98, L"X\b\a");
  }

  else
  {
    (*(v16 + 32))(v20, v13, v14);
    sub_1D560F908();
    (*(v2 + 104))(v6, *MEMORY[0x1E6975910], v0);
    OUTLINED_FUNCTION_61();
    v23 = sub_1D560F8E8();
    v24 = *(v2 + 8);
    v24(v6, v0);
    v24(v9, v0);
    if (v23)
    {
      v25 = sub_1D560F918();
      (*(v16 + 8))(v20, v14);
      if (v25)
      {
        return 1;
      }
    }

    else
    {
      (*(v16 + 8))(v20, v14);
    }
  }

  return 0;
}

uint64_t sub_1D52FC43C()
{
  type metadata accessor for UploadedVideoPropertyProvider(0);
  sub_1D560D768();
  if (!v0)
  {
    sub_1D560D628();
    if (!v1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D52FC49C()
{
  v1 = sub_1D56106B8();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v27 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE730, &unk_1D562C598) - 8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC478, &unk_1D56299D0);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_59_0();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  v19 = *(type metadata accessor for UploadedVideoPropertyProvider(0) + 32);
  (*(v3 + 104))(v18, *MEMORY[0x1E6975D58], v1);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v1);
  v20 = *(v7 + 56);
  sub_1D4F43D5C(v0 + v19, v10, &qword_1EC7EC478, &unk_1D56299D0);
  sub_1D4F43D5C(v18, &v10[v20], &qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_57(v10, 1, v1);
  if (!v22)
  {
    sub_1D4F43D5C(v10, v15, &qword_1EC7EC478, &unk_1D56299D0);
    OUTLINED_FUNCTION_57(&v10[v20], 1, v1);
    if (!v22)
    {
      v23 = v27;
      (*(v3 + 32))(v27, &v10[v20], v1);
      sub_1D52FCF44();
      OUTLINED_FUNCTION_61();
      v21 = sub_1D5614D18();
      v24 = *(v3 + 8);
      v24(v23, v1);
      sub_1D4E7661C(v18, &qword_1EC7EC478, &unk_1D56299D0);
      v24(v15, v1);
      sub_1D4E7661C(v10, &qword_1EC7EC478, &unk_1D56299D0);
      return v21 & 1;
    }

    sub_1D4E7661C(v18, &qword_1EC7EC478, &unk_1D56299D0);
    (*(v3 + 8))(v15, v1);
LABEL_9:
    sub_1D4E7661C(v10, &qword_1EC7EE730, &unk_1D562C598);
    v21 = 0;
    return v21 & 1;
  }

  sub_1D4E7661C(v18, &qword_1EC7EC478, &unk_1D56299D0);
  OUTLINED_FUNCTION_57(&v10[v20], 1, v1);
  if (!v22)
  {
    goto LABEL_9;
  }

  sub_1D4E7661C(v10, &qword_1EC7EC478, &unk_1D56299D0);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1D52FC7F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_2_131();
  OUTLINED_FUNCTION_9_92(*(v3 + 80));
  v4 = sub_1D5614A78();
  OUTLINED_FUNCTION_57(v0, 1, v4);
  if (v5)
  {
    sub_1D4E7661C(v0, &qword_1EC7EF5D8, &unk_1D5632160);
    v6 = 0;
  }

  else
  {
    v6 = sub_1D5614A58();
    OUTLINED_FUNCTION_24_0();
    (*(v7 + 8))(v0, v4);
  }

  return v6 & 1;
}

BOOL sub_1D52FC8E4()
{
  v1 = v0;
  sub_1D5614A48();
  OUTLINED_FUNCTION_4();
  v34 = v3;
  v35 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_59_0();
  v33 = v4 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1D5614A78();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_59_0();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  v22 = *(type metadata accessor for UploadedVideoPropertyProvider(0) + 80);
  sub_1D4F43D5C(v1 + v22, v21, &qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_57(v21, 1, v7);
  if (v23)
  {
    goto LABEL_3;
  }

  v24 = sub_1D5614A58();
  v32 = *(v9 + 8);
  v32(v21, v7);
  if ((v24 & 1) == 0)
  {
    return 0;
  }

  sub_1D4F43D5C(v1 + v22, v18, &qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_57(v18, 1, v7);
  if (v23)
  {
    v21 = v18;
LABEL_3:
    sub_1D4E7661C(v21, &qword_1EC7EF5D8, &unk_1D5632160);
    return 0;
  }

  (*(v9 + 32))(v13, v18, v7);
  sub_1D5614A68();
  v26 = v33;
  v25 = v34;
  v27 = v35;
  (*(v34 + 104))(v33, *MEMORY[0x1E6977490], v35);
  v28 = sub_1D5614A38();
  v29 = *(v25 + 8);
  v29(v26, v27);
  v30 = OUTLINED_FUNCTION_61();
  (v29)(v30);
  v32(v13, v7);
  return (v28 & 1) != 0;
}

uint64_t sub_1D52FCBEC(uint64_t (*a1)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_2_131();
  sub_1D4F43D5C(v1 + *(v6 + 28), v2, &qword_1EC7EDB98, L"X\b\a");
  v7 = sub_1D560F928();
  v8 = OUTLINED_FUNCTION_57(v2, 1, v7);
  if (v9)
  {
    sub_1D4E7661C(v2, &qword_1EC7EDB98, L"X\b\a");
    v10 = 0;
  }

  else
  {
    v10 = a1(v8);
    OUTLINED_FUNCTION_24_0();
    v11 = OUTLINED_FUNCTION_61();
    v12(v11);
  }

  return v10 & 1;
}

uint64_t sub_1D52FCCF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_2_131();
  OUTLINED_FUNCTION_9_92(*(v3 + 64));
  v4 = sub_1D5610CB8();
  OUTLINED_FUNCTION_57(v0, 1, v4);
  if (v5)
  {
    sub_1D4E7661C(v0, &qword_1EC7EF5D0, &unk_1D5632140);
    v6 = 0;
  }

  else
  {
    v6 = sub_1D5610CA8();
    OUTLINED_FUNCTION_24_0();
    (*(v7 + 8))(v0, v4);
  }

  return v6 & 1;
}

uint64_t sub_1D52FCDE8@<X0>(unsigned int *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  a2(0);
  OUTLINED_FUNCTION_24_0();
  v7 = *(v6 + 104);

  return v7(a3, v4, v5);
}

unint64_t sub_1D52FCF44()
{
  result = qword_1EC7EE738;
  if (!qword_1EC7EE738)
  {
    sub_1D56106B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE738);
  }

  return result;
}

unint64_t sub_1D52FCF9C@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 3)
  {
    result = sub_1D5615E08();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t MusicLibrary.TasteStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D52FD0A0()
{
  result = qword_1EC7F3FB0;
  if (!qword_1EC7F3FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3FB0);
  }

  return result;
}

_BYTE *_s11TasteStatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D52FD1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v40[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D560F0C8();
  if (result)
  {
    *a3 = 9;
    return result;
  }

  (*(v6 + 16))(v8, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    result = sub_1D4E6C9CC(&v44, &qword_1EC7EC548, &qword_1D5621090);
LABEL_14:
    *a3 = 0;
    return result;
  }

  sub_1D4F69344(&v44, v47);
  __swift_project_boxed_opaque_existential_1(v47, v47[3]);
  sub_1D560DB68();
  if (!v40[3])
  {
    sub_1D4E6C9CC(v40, &qword_1EC7EEC40, &unk_1D561C070);
    v41 = 0u;
    v42 = 0u;
    v43 = 0;
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    goto LABEL_13;
  }

  if (!*(&v42 + 1))
  {
LABEL_13:
    sub_1D4E6C9CC(&v41, &qword_1EC7EC548, &qword_1D5621090);
    result = __swift_destroy_boxed_opaque_existential_1(v47);
    goto LABEL_14;
  }

  sub_1D4F69344(&v41, &v44);
  __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
  OUTLINED_FUNCTION_0_178();
  sub_1D4F67E14(v10, v11, v12);
  if ((v41 & 0xC0) == 0x40)
  {
    if ((v41 & 0x3F) == 2)
    {
      v13 = 11;
      goto LABEL_21;
    }

LABEL_20:
    v13 = 1;
    goto LABEL_21;
  }

  if (v41 != 128)
  {
    goto LABEL_20;
  }

  if (MusicLibrary.isDownloadActionAvailable.getter())
  {
    __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
    OUTLINED_FUNCTION_0_178();
    sub_1D4F67EE4(v14, v15, v16);
    if (BYTE8(v41))
    {
      if (BYTE8(v41) == 1)
      {
        v13 = 5;
      }

      else
      {
        v13 = 3;
        switch(v41)
        {
          case 1:
            v17 = [objc_opt_self() mainBundle];
            v18 = [v17 bundleIdentifier];

            if (v18)
            {
              v19 = sub_1D5614D68();
              v21 = v20;

              v22 = v19 == 0x6C7070612E6D6F63 && v21 == 0xEF636973754D2E65;
              if (v22 || (sub_1D5616168() & 1) != 0)
              {

                v23 = [objc_opt_self() standardUserDefaults];
                goto LABEL_44;
              }
            }

            else
            {
              v19 = 0;
              v21 = 0;
            }

            v24 = objc_allocWithZone(MEMORY[0x1E695E000]);
            v25 = sub_1D533F4D0(0x6C7070612E6D6F63, 0xEF636973754D2E65);
            if (v25)
            {
              v26 = v25;

              goto LABEL_45;
            }

            if (qword_1EDD54468 != -1)
            {
              swift_once();
            }

            v27 = sub_1D560C758();
            __swift_project_value_buffer(v27, qword_1EDD76A78);

            v28 = sub_1D560C738();
            v29 = sub_1D56156C8();

            if (os_log_type_enabled(v28, v29))
            {
              v30 = swift_slowAlloc();
              v31 = swift_slowAlloc();
              v40[0] = v31;
              *v30 = 136446466;
              *(v30 + 4) = sub_1D4E6835C(0x6C7070612E6D6F63, 0xEF636973754D2E65, v40);
              *(v30 + 12) = 2082;
              *&v41 = v19;
              *(&v41 + 1) = v21;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC3B0, &qword_1D5630D90);
              v32 = sub_1D5614DB8();
              v34 = sub_1D4E6835C(v32, v33, v40);

              *(v30 + 14) = v34;
              _os_log_impl(&dword_1D4E3F000, v28, v29, "Failed to load UserDefaults for %{public}s from process with bundle ID: %{public}s. Falling back to UserDefaults.standard.", v30, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1DA6ED200](v31, -1, -1);
              MEMORY[0x1DA6ED200](v30, -1, -1);
            }

            else
            {
            }

            v23 = [objc_opt_self() standardUserDefaults];
LABEL_44:
            v26 = v23;
LABEL_45:
            v35 = v26;
            v36 = sub_1D5614D38();
            v37 = [v35 BOOLForKey_];

            if (v37)
            {
            }

            else
            {
              v38 = [objc_opt_self() sharedMonitor];
              [v38 networkType];

              LOBYTE(v38) = ICEnvironmentNetworkTypeIsCellular();
              if (v38)
              {
                v13 = 10;
                break;
              }
            }

            v13 = 12;
            break;
          case 2:
            v13 = 4;
            break;
          case 3:
            v13 = 8;
            break;
          case 4:
            v13 = 6;
            break;
          default:
            break;
        }
      }
    }

    else
    {
      v13 = 7;
    }
  }

  else
  {
    v13 = 2;
  }

LABEL_21:
  *a3 = v13;
  __swift_destroy_boxed_opaque_existential_1(&v44);
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t MusicLibrary.DownloadAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D52FD8B8(uint64_t a1)
{
  sub_1D56162D8();
  MusicLibrary.DownloadAction.UnsupportedReason.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D52FD908()
{
  result = qword_1EC7F3FB8;
  if (!qword_1EC7F3FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3FB8);
  }

  return result;
}

_BYTE *_s14DownloadActionVwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s14DownloadActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t MusicSuggestedPivotSeed.init(track:container:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a1;
  v64 = a3;
  v4 = sub_1D5613D28();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF790, &qword_1D5632E90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v58 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v58 - v10;
  v12 = type metadata accessor for GenericMusicItem(0);
  OUTLINED_FUNCTION_14();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v58 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v58 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD0, &qword_1D56331E0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v58 - v25;
  v27 = type metadata accessor for MusicSuggestedPivotContainer(0);
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v27);
  v60 = a2;
  sub_1D4E69910(a2, v11, &qword_1EC7EA608, &qword_1D561C510);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1D4E50004(v11, &qword_1EC7EA608, &qword_1D561C510);
  }

  else
  {
    sub_1D52FE1E8(v11, v20, type metadata accessor for GenericMusicItem);
    sub_1D4F26680(v20, v18);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 15)
    {
      sub_1D52FE248(v20);
      sub_1D4E50004(v26, &qword_1EC7EADD0, &qword_1D56331E0);
      v29 = sub_1D5614408();
    }

    else if (EnumCaseMultiPayload == 9)
    {
      sub_1D52FE248(v20);
      sub_1D4E50004(v26, &qword_1EC7EADD0, &qword_1D56331E0);
      v29 = sub_1D5614898();
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (qword_1EC7E90C0 != -1)
        {
          swift_once();
        }

        v40 = sub_1D560C758();
        __swift_project_value_buffer(v40, qword_1EC87C2E8);
        v41 = v58;
        sub_1D4F26680(v20, v58);
        v42 = sub_1D560C738();
        v43 = sub_1D56156C8();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v65[0] = v45;
          *v44 = 136446210;
          GenericMusicItem.description.getter(v45, v46, v47, v48, v49, v50, v51, v52, v58, v59, v60, v61, v62, v63, v64, v65[0], v65[1], v65[2], v65[3], v65[4]);
          v54 = v53;
          v56 = v55;
          sub_1D52FE248(v41);
          v57 = sub_1D4E6835C(v54, v56, v65);

          *(v44 + 4) = v57;
          _os_log_impl(&dword_1D4E3F000, v42, v43, "MusicSuggestedPivotSeed: Attempting to create a seed with an unsupported container kind=%{public}s).", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v45);
          MEMORY[0x1DA6ED200](v45, -1, -1);
          MEMORY[0x1DA6ED200](v44, -1, -1);

          sub_1D4E50004(v60, &qword_1EC7EA608, &qword_1D561C510);
          (*(v61 + 8))(v63, v62);
        }

        else
        {

          sub_1D4E50004(v60, &qword_1EC7EA608, &qword_1D561C510);
          (*(v61 + 8))(v63, v62);
          sub_1D52FE248(v41);
        }

        sub_1D52FE248(v20);
        sub_1D4E50004(v26, &qword_1EC7EADD0, &qword_1D56331E0);
        sub_1D52FE248(v18);
        goto LABEL_12;
      }

      sub_1D52FE248(v20);
      sub_1D4E50004(v26, &qword_1EC7EADD0, &qword_1D56331E0);
      v29 = sub_1D5613AF8();
    }

    (*(*(v29 - 8) + 32))(v26, v18);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v27);
  }

  v31 = v61;
  v30 = v62;
  v32 = v63;
  (*(v61 + 16))(v59, v63, v62);
  sub_1D4E69910(v26, v24, &qword_1EC7EADD0, &qword_1D56331E0);
  MusicSuggestedPivotSeed.init(track:container:)();
  sub_1D4E50004(v60, &qword_1EC7EA608, &qword_1D561C510);
  (*(v31 + 8))(v32, v30);
  sub_1D4E50004(v26, &qword_1EC7EADD0, &qword_1D56331E0);
  v33 = type metadata accessor for MusicSuggestedPivotSeed(0);
  if (!__swift_getEnumTagSinglePayload(v8, 1, v33))
  {
    v37 = v8;
    v38 = v64;
    sub_1D52FE1E8(v37, v64, type metadata accessor for MusicSuggestedPivotSeed);
    v35 = v38;
    v36 = 0;
    v34 = v33;
    return __swift_storeEnumTagSinglePayload(v35, v36, 1, v34);
  }

  sub_1D4E50004(v8, &qword_1EC7EF790, &qword_1D5632E90);
LABEL_12:
  v34 = type metadata accessor for MusicSuggestedPivotSeed(0);
  v35 = v64;
  v36 = 1;
  return __swift_storeEnumTagSinglePayload(v35, v36, 1, v34);
}

uint64_t sub_1D52FE1E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D52FE248(uint64_t a1)
{
  v2 = type metadata accessor for GenericMusicItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D52FE2A4()
{
  if (qword_1EDD526C0 != -1)
  {
    OUTLINED_FUNCTION_1_136(&qword_1EDD526C0);
  }

  if (qword_1EDD526C8)
  {
    v0 = qword_1EDD526C8;
    v1 = sub_1D5614D38();
    v2 = [v0 BOOLForKey_];
  }

  else
  {
    if (qword_1EC7E8DF8 != -1)
    {
      OUTLINED_FUNCTION_0_179(&qword_1EC7E8DF8);
    }

    v3 = sub_1D560C758();
    __swift_project_value_buffer(v3, qword_1EC87C158);
    v1 = sub_1D560C738();
    v4 = sub_1D56156C8();
    if (os_log_type_enabled(v1, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      OUTLINED_FUNCTION_168(&dword_1D4E3F000, v6, v7, "Unable to access the MusicKit user defaults.");
      MEMORY[0x1DA6ED200](v5, -1, -1);
    }

    v2 = 0;
  }

  return v2;
}

id sub_1D52FE3D8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  result = sub_1D533F4D0(0xD000000000000012, 0x80000001D5681640);
  qword_1EDD526C8 = result;
  return result;
}

id sub_1D52FE428()
{
  if (qword_1EDD526C0 != -1)
  {
    OUTLINED_FUNCTION_1_136(&qword_1EDD526C0);
  }

  if (qword_1EDD526C8)
  {
    v0 = qword_1EDD526C8;
    v1 = sub_1D5614D38();
    v2 = [v0 BOOLForKey_];
  }

  else
  {
    if (qword_1EC7E8DF8 != -1)
    {
      OUTLINED_FUNCTION_0_179(&qword_1EC7E8DF8);
    }

    v3 = sub_1D560C758();
    __swift_project_value_buffer(v3, qword_1EC87C158);
    v1 = sub_1D560C738();
    v4 = sub_1D56156C8();
    if (os_log_type_enabled(v1, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      OUTLINED_FUNCTION_168(&dword_1D4E3F000, v6, v7, "Unable to access the MusicKit user defaults.");
      MEMORY[0x1DA6ED200](v5, -1, -1);
    }

    v2 = 0;
  }

  return v2;
}

uint64_t type metadata accessor for StorePlatformUploadedVideo(uint64_t a1)
{
  result = qword_1EDD55020;
  if (!qword_1EDD55020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D52FE5DC(uint64_t a1)
{
  sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD53248, &qword_1EC7EF388, &unk_1D5631100);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD52910, &qword_1EC7EC9B8, &unk_1D56222D0);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
    if (v8 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
    if (v9 > 0x3F)
    {
      return v4;
    }

    sub_1D500A1D4(319);
    if (v11 > 0x3F)
    {
      return v10;
    }

    sub_1D4E518A0(319, &qword_1EDD5F550, MEMORY[0x1E69E6370]);
    if (v12 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1D52FE818@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v74 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v74 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v74 - v17;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3FC8, &qword_1D5651B78);
  OUTLINED_FUNCTION_4();
  v20 = v19;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v74 - v22;
  v82 = type metadata accessor for StorePlatformUploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  v80 = a1;
  v81 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D530136C();
  v77 = v23;
  v26 = v83;
  sub_1D5616398();
  if (v26)
  {
    v83 = v26;
    v28 = 0;
    v20 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    LODWORD(v32) = 0;
    LODWORD(v76) = 0;
    LODWORD(v77) = 0;
    LODWORD(v79) = 0;
  }

  else
  {
    v83 = v14;
    v78 = v10;
    v75 = v7;
    LOBYTE(v84) = 0;
    v27 = sub_1D5615F38();
    v37 = v81;
    *v81 = v27;
    v37[1] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    LOBYTE(v84) = 1;
    sub_1D4F886BC();
    sub_1D5615F78();
    v29 = v20;
    v39 = v82;
    sub_1D4F39A1C(v18, v37 + v82[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
    LOBYTE(v84) = 2;
    sub_1D50C41B8();
    v40 = v83;
    sub_1D5615F78();
    sub_1D4F39A1C(v40, v37 + v39[6], &qword_1EC7EF380, &unk_1D5677480);
    LOBYTE(v84) = 3;
    v41 = sub_1D5615F38();
    v42 = (v37 + v39[7]);
    *v42 = v41;
    v42[1] = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v86 = 4;
    sub_1D4F887A4();
    OUTLINED_FUNCTION_10_89();
    *(v37 + v39[8]) = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v86 = 5;
    sub_1D50C44B0(&qword_1EDD528F8);
    OUTLINED_FUNCTION_10_89();
    *(v37 + v39[9]) = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v86 = 6;
    sub_1D50C42A0(&qword_1EDD52908);
    OUTLINED_FUNCTION_10_89();
    *(v37 + v39[10]) = v84;
    v86 = 7;
    sub_1D4F89C9C();
    sub_1D5615FD8();
    v44 = v85;
    v45 = (v37 + v39[11]);
    *v45 = v84;
    v45[1] = v44;
    v30 = sub_1D560C0A8();
    LOBYTE(v84) = 8;
    OUTLINED_FUNCTION_0_180();
    v31 = sub_1D53015C8(v46);
    v32 = v78;
    sub_1D5615F78();
    v83 = 0;
    sub_1D4F39A1C(v32, v37 + v39[12], &unk_1EC7E9CA8, &unk_1D561D1D0);
    LOBYTE(v84) = 9;
    v47 = v83;
    v48 = sub_1D5615F48();
    v83 = v47;
    if (!v47)
    {
      *(v81 + v82[13]) = v48;
      OUTLINED_FUNCTION_6_103(10);
      v49 = sub_1D5615F38();
      v83 = 0;
      v53 = (v81 + v82[14]);
      *v53 = v49;
      v53[1] = v54;
      OUTLINED_FUNCTION_6_103(11);
      v55 = sub_1D5615F38();
      v83 = 0;
      v57 = (v81 + v82[15]);
      *v57 = v55;
      v57[1] = v56;
      LOBYTE(v84) = 12;
      v58 = v83;
      sub_1D5615F78();
      LODWORD(v78) = v58 == 0;
      v83 = v58;
      if (!v58)
      {
        sub_1D4F39A1C(v75, v81 + v82[16], &unk_1EC7E9CA8, &unk_1D561D1D0);
        OUTLINED_FUNCTION_6_103(13);
        v59 = sub_1D5615F48();
        v83 = 0;
        *(v81 + v82[17]) = v59;
        OUTLINED_FUNCTION_6_103(14);
        v60 = sub_1D5615F38();
        v83 = 0;
        v64 = (v81 + v82[18]);
        *v64 = v60;
        v64[1] = v65;
        OUTLINED_FUNCTION_6_103(15);
        v66 = sub_1D5615F38();
        v83 = 0;
        v67 = v66;
        v69 = v68;
        v70 = OUTLINED_FUNCTION_14_71();
        v71(v70);
        v72 = v81;
        v73 = (v81 + v82[19]);
        *v73 = v67;
        v73[1] = v69;
        sub_1D53013C0(v72, v76);
        __swift_destroy_boxed_opaque_existential_1(v80);
        return sub_1D5301424(v72);
      }

      v61 = OUTLINED_FUNCTION_14_71();
      v62(v61);
      LODWORD(v75) = 0;
      __swift_destroy_boxed_opaque_existential_1(v80);
      OUTLINED_FUNCTION_1_137();
      OUTLINED_FUNCTION_22_60();
      LODWORD(v77) = v63;
      LODWORD(v79) = v63;
      v36 = 1;
      v33 = v81;
      v34 = v82;
LABEL_6:

      if (v20)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

    v50 = OUTLINED_FUNCTION_14_71();
    v51(v50);
    LODWORD(v79) = 0;
    v28 = 1;
    OUTLINED_FUNCTION_1_137();
    OUTLINED_FUNCTION_22_60();
    LODWORD(v77) = v52;
  }

  v33 = v81;
  v34 = v82;
  result = __swift_destroy_boxed_opaque_existential_1(v80);
  if (v28)
  {
    v36 = 0;
    LODWORD(v78) = 0;
    LODWORD(v75) = 0;
    goto LABEL_6;
  }

  LODWORD(v75) = 0;
  LODWORD(v78) = 0;
  v36 = 0;
  if (v20)
  {
LABEL_7:
    result = sub_1D4E50004(v33 + v34[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    if ((v29 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_21:
    result = sub_1D4E50004(v33 + v34[6], &qword_1EC7EF380, &unk_1D5677480);
    if (v30)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_20:
  if (v29)
  {
    goto LABEL_21;
  }

LABEL_8:
  if (v30)
  {
LABEL_9:
    result = OUTLINED_FUNCTION_46_4();
  }

LABEL_10:
  if (v31)
  {

    if ((v32 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (!v32)
  {
LABEL_12:
    if (v76)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  if (v76)
  {
LABEL_13:
    result = OUTLINED_FUNCTION_46_4();
    if ((v77 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  if (!v77)
  {
LABEL_14:
    if (v79)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = sub_1D4E50004(v33 + v34[12], &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (v79)
  {
LABEL_15:
    result = OUTLINED_FUNCTION_46_4();
    if ((v36 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  if (!v36)
  {
LABEL_16:
    if (v78)
    {
      goto LABEL_17;
    }

LABEL_29:
    if (!v75)
    {
      return result;
    }

    return OUTLINED_FUNCTION_46_4();
  }

LABEL_28:
  result = OUTLINED_FUNCTION_46_4();
  if ((v78 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  result = sub_1D4E50004(v33 + v34[16], &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v75 & 1) == 0)
  {
    return result;
  }

  return OUTLINED_FUNCTION_46_4();
}

uint64_t sub_1D52FF2D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3FD8, &unk_1D5651B80);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D530136C();
  sub_1D56163D8();
  LOBYTE(v20[0]) = 0;
  OUTLINED_FUNCTION_29_0();
  sub_1D5616028();
  if (!v2)
  {
    v11 = type metadata accessor for StorePlatformUploadedVideo(0);
    LOBYTE(v20[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F7CD24();
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    LOBYTE(v20[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
    sub_1D50C43C8();
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_35_5(v11[7]);
    OUTLINED_FUNCTION_9_93(3);
    v20[0] = *(v3 + v11[8]);
    v21 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v12 = sub_1D4F7CE0C();
    OUTLINED_FUNCTION_8_2(v12);
    v20[0] = *(v3 + v11[9]);
    v21 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v13 = sub_1D50C44B0(&qword_1EC7EC9D8);
    OUTLINED_FUNCTION_8_2(v13);
    v20[0] = *(v3 + v11[10]);
    v21 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v14 = sub_1D50C42A0(&qword_1EC7EC9F0);
    OUTLINED_FUNCTION_8_2(v14);
    v15 = (v3 + v11[11]);
    v17 = *v15;
    v16 = v15[1];
    v20[0] = v17;
    v20[1] = v16;
    v21 = 7;
    sub_1D4F89BA0();
    OUTLINED_FUNCTION_29_0();
    sub_1D56160C8();
    LOBYTE(v20[0]) = 8;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_180();
    sub_1D53015C8(v18);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    LOBYTE(v20[0]) = 9;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    OUTLINED_FUNCTION_35_5(v11[14]);
    OUTLINED_FUNCTION_9_93(10);
    OUTLINED_FUNCTION_35_5(v11[15]);
    OUTLINED_FUNCTION_9_93(11);
    LOBYTE(v20[0]) = 12;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    LOBYTE(v20[0]) = 13;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    OUTLINED_FUNCTION_35_5(v11[18]);
    OUTLINED_FUNCTION_9_93(14);
    OUTLINED_FUNCTION_35_5(v11[19]);
    OUTLINED_FUNCTION_9_93(15);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1D52FF750(void *a1, void *a2)
{
  v4 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v183 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v181 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_59_0();
  v179 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v182 = &v176 - v13;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_59_0();
  v180 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v184 = &v176 - v18;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  OUTLINED_FUNCTION_4();
  v188 = v19;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v186 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  v187 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF8B0, &unk_1D5633390);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_3();
  v189 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v30 = v29;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v176 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v34);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v176 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v176 - v40;
  v42 = a1[1];
  v43 = a2[1];
  if (v42)
  {
    if (!v43)
    {
      return 0;
    }

    v44 = *a1 == *a2 && v42 == v43;
    if (!v44 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v43)
  {
    return 0;
  }

  v176 = v4;
  v45 = type metadata accessor for StorePlatformUploadedVideo(0);
  v191 = a2;
  v46 = *(v45 + 20);
  v47 = *(v38 + 48);
  v177 = v45;
  v178 = a1;
  sub_1D4F39AB0(a1 + v46, v41, &qword_1EC7EB5B8, &unk_1D56206A0);
  v48 = v191 + v46;
  v49 = v191;
  sub_1D4F39AB0(v48, &v41[v47], &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v41, 1, v28);
  if (v44)
  {
    OUTLINED_FUNCTION_57(&v41[v47], 1, v28);
    if (v44)
    {
      sub_1D4E50004(v41, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_20;
    }

LABEL_18:
    v53 = &qword_1EC7EC330;
    v54 = &qword_1D56222C0;
    v55 = v41;
LABEL_29:
    sub_1D4E50004(v55, v53, v54);
    return 0;
  }

  sub_1D4F39AB0(v41, v37, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(&v41[v47], 1, v28);
  if (v50)
  {
    v51 = OUTLINED_FUNCTION_71();
    v52(v51);
    goto LABEL_18;
  }

  (*(v30 + 32))(v33, &v41[v47], v28);
  sub_1D5301480(&qword_1EC7EBEB8);
  v56 = sub_1D5614D18();
  v57 = *(v30 + 8);
  v57(v33, v28);
  v58 = OUTLINED_FUNCTION_71();
  (v57)(v58);
  sub_1D4E50004(v41, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v56 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v60 = v177;
  v59 = v178;
  v61 = *(v25 + 48);
  v62 = v189;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v63, v64, v65, v66);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v67, v68, v69, v70);
  v71 = v190;
  OUTLINED_FUNCTION_4_18(v62, 1);
  if (v44)
  {
    OUTLINED_FUNCTION_4_18(v62 + v61, 1);
    if (v44)
    {
      sub_1D4E50004(v62, &qword_1EC7EF380, &unk_1D5677480);
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  sub_1D4F39AB0(v62, v187, &qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_4_18(v62 + v61, 1);
  if (v72)
  {
    v73 = OUTLINED_FUNCTION_164_0();
    v74(v73);
LABEL_28:
    v53 = &qword_1EC7EF8B0;
    v54 = &unk_1D5633390;
    v55 = v62;
    goto LABEL_29;
  }

  v76 = v188;
  v77 = v62 + v61;
  v78 = v186;
  (*(v188 + 32))(v186, v77, v71);
  sub_1D5301500(&qword_1EC7EF8B8);
  v79 = sub_1D5614D18();
  v80 = *(v76 + 8);
  v80(v78, v71);
  v81 = OUTLINED_FUNCTION_164_0();
  (v80)(v81);
  sub_1D4E50004(v62, &qword_1EC7EF380, &unk_1D5677480);
  if ((v79 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  OUTLINED_FUNCTION_25_15();
  if (v84)
  {
    if (!v82)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v83);
    v87 = v44 && v85 == v86;
    if (!v87 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v82)
  {
    return 0;
  }

  v88 = v60[8];
  v89 = *(v49 + v88);
  if (*(v59 + v88))
  {
    if (!v89)
    {
      return 0;
    }

    sub_1D4F2C07C();
    v91 = v90;

    if ((v91 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v89)
  {
    return 0;
  }

  v92 = v60[9];
  v93 = *(v49 + v92);
  if (*(v59 + v92))
  {
    if (!v93)
    {
      return 0;
    }

    sub_1D4F28F1C();
    v95 = v94;

    if ((v95 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v93)
  {
    return 0;
  }

  v96 = v60[10];
  v97 = *(v49 + v96);
  if (*(v59 + v96))
  {
    if (!v97)
    {
      return 0;
    }

    sub_1D4F29174();
    v99 = v98;

    if ((v99 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v97)
  {
    return 0;
  }

  v100 = v60[11];
  v101 = *(v59 + v100);
  v102 = *(v59 + v100 + 8);
  v103 = (v49 + v100);
  v104 = v101 == *v103 && v102 == v103[1];
  if (!v104 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v105 = v60[12];
  v106 = v184;
  v107 = *(v185 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v108, v109, v110, v111);
  v112 = v106;
  sub_1D4F39AB0(v49 + v105, v106 + v107, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v113 = v176;
  OUTLINED_FUNCTION_4_18(v106, 1);
  if (v44)
  {
    OUTLINED_FUNCTION_4_18(v106 + v107, 1);
    if (v44)
    {
      sub_1D4E50004(v106, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_72;
    }

    goto LABEL_70;
  }

  sub_1D4F39AB0(v106, v182, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_4_18(v106 + v107, 1);
  if (v114)
  {
    v115 = OUTLINED_FUNCTION_164_0();
    v116(v115);
LABEL_70:
    v53 = &qword_1EC7E9FB0;
    v54 = &qword_1D562C590;
    v55 = v106;
    goto LABEL_29;
  }

  v117 = v183;
  v118 = v181;
  (*(v183 + 32))(v181, v112 + v107, v113);
  OUTLINED_FUNCTION_0_180();
  sub_1D53015C8(v119);
  LODWORD(v190) = sub_1D5614D18();
  v120 = *(v117 + 8);
  v120(v118, v113);
  v121 = OUTLINED_FUNCTION_164_0();
  (v120)(v121);
  sub_1D4E50004(v112, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v190 & 1) == 0)
  {
    return 0;
  }

LABEL_72:
  v122 = v60[13];
  v123 = *(v59 + v122);
  v124 = *(v49 + v122);
  if (v123 == 2)
  {
    if (v124 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v124 == 2 || ((v124 ^ v123) & 1) != 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_25_15();
  if (v127)
  {
    if (!v125)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v126);
    v130 = v44 && v128 == v129;
    if (!v130 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v125)
  {
    return 0;
  }

  OUTLINED_FUNCTION_38_1();
  if (v133)
  {
    if (!v131)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v132);
    v136 = v44 && v134 == v135;
    if (!v136 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v131)
  {
    return 0;
  }

  v137 = *(v185 + 48);
  v138 = v180;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v139, v140, v141, v142);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v143, v144, v145, v146);
  OUTLINED_FUNCTION_57(v138, 1, v176);
  if (!v44)
  {
    v147 = v180;
    sub_1D4F39AB0(v180, v179, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_57(v147 + v137, 1, v176);
    if (!v148)
    {
      v149 = v183;
      v151 = v180;
      v150 = v181;
      v152 = v180 + v137;
      v153 = v176;
      (*(v183 + 32))(v181, v152, v176);
      OUTLINED_FUNCTION_0_180();
      sub_1D53015C8(v154);
      v155 = v179;
      v156 = sub_1D5614D18();
      v157 = *(v149 + 8);
      v157(v150, v153);
      v157(v155, v153);
      sub_1D4E50004(v151, &unk_1EC7E9CA8, &unk_1D561D1D0);
      if ((v156 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_105;
    }

    (*(v183 + 8))(v179, v176);
    goto LABEL_103;
  }

  OUTLINED_FUNCTION_57(v180 + v137, 1, v176);
  if (!v44)
  {
LABEL_103:
    v53 = &qword_1EC7E9FB0;
    v54 = &qword_1D562C590;
    v55 = v180;
    goto LABEL_29;
  }

  sub_1D4E50004(v180, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_105:
  v158 = v177[17];
  v159 = *(v178 + v158);
  v160 = *(v191 + v158);
  if (v159 == 2)
  {
    v161 = v191;
    v162 = v177;
    v163 = v178;
    if (v160 != 2)
    {
      return 0;
    }

    goto LABEL_110;
  }

  result = 0;
  if (v160 != 2)
  {
    v164 = v160 ^ v159;
    v161 = v191;
    v162 = v177;
    v163 = v178;
    if ((v164 & 1) == 0)
    {
LABEL_110:
      v165 = v162[18];
      v166 = *(v161 + v165 + 8);
      if (*(v163 + v165 + 8))
      {
        if (!v166)
        {
          return 0;
        }

        OUTLINED_FUNCTION_31_0(v163 + v165);
        v169 = v44 && v167 == v168;
        if (!v169 && (sub_1D5616168() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v166)
      {
        return 0;
      }

      OUTLINED_FUNCTION_38_1();
      if (v172)
      {
        if (v170)
        {
          OUTLINED_FUNCTION_31_0(v171);
          v175 = v44 && v173 == v174;
          if (v175 || (sub_1D5616168() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v170)
      {
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1D530042C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B6F547465737361 && a2 == 0xEB00000000736E65;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65707954637561 && a2 == 0xE700000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x80000001D5680650 == a2;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 25705 && a2 == 0xE200000000000000;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x76697372656D6D69 && a2 == 0xEC0000006C725565;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x616C696176417369 && a2 == 0xEB00000000656C62;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 1684957547 && a2 == 0xE400000000000000;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 1701667182 && a2 == 0xE400000000000000;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6C725574736F70 && a2 == 0xE700000000000000;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000016 && 0x80000001D5681620 == a2;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x614464616F6C7075 && a2 == 0xEA00000000006574;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0xD000000000000013 && 0x80000001D5683C10 == a2)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1D5616168();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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

unint64_t sub_1D5300904(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 0x6B6F547465737361;
      break;
    case 3:
      result = 0x65707954637561;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6169726F74696465;
      break;
    case 7:
      result = 25705;
      break;
    case 8:
      result = 0x76697372656D6D69;
      break;
    case 9:
      result = 0x616C696176417369;
      break;
    case 10:
      result = 1684957547;
      break;
    case 11:
      result = 1701667182;
      break;
    case 12:
      result = 0x6C725574736F70;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0x614464616F6C7075;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5300AC4(uint64_t a1)
{
  v2 = v1;
  sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v58 = v4;
  v59 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v57 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_59_0();
  v56 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v52 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  OUTLINED_FUNCTION_4();
  v53 = v13;
  v54 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v52 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v22 = v21;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v52 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v52 - v28;
  if (*(v1 + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v30 = type metadata accessor for StorePlatformUploadedVideo(0);
  sub_1D4F39AB0(v1 + v30[5], v29, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v29, 1, v20);
  if (v31)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v22 + 32))(v25, v29, v20);
    OUTLINED_FUNCTION_27();
    sub_1D5301480(&qword_1EC7EBE78);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v22 + 8))(v25, v20);
  }

  sub_1D4F39AB0(v1 + v30[6], v19, &qword_1EC7EF380, &unk_1D5677480);
  v32 = v54;
  OUTLINED_FUNCTION_4_18(v19, 1);
  if (v31)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v34 = v52;
    v33 = v53;
    (*(v53 + 32))(v52, v19, v32);
    OUTLINED_FUNCTION_27();
    sub_1D5301500(&qword_1EC7EF8C8);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v35 = *(v33 + 8);
    v20 = v33 + 8;
    v35(v34, v32);
  }

  v36 = v59;
  OUTLINED_FUNCTION_33_5();
  if (v32)
  {
    v20 = *v37;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v30[8]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F35348();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v30[9]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v38 = *(v1 + v30[10]);
  if (v38)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D5614E28();
  v39 = v55;
  sub_1D4F39AB0(v2 + v30[12], v55, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v39, 1, v36);
  if (v31)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v40 = OUTLINED_FUNCTION_26_59();
    v41(v40);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_180();
    sub_1D53015C8(v42);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v38 + 8))(v20, v36);
  }

  v43 = *(v2 + v30[13]);
  if (v43 != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_33_5();
  if (v43)
  {
    v20 = *v44;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_33_5();
  if (v43)
  {
    v20 = *v45;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v46 = v56;
  sub_1D4F39AB0(v2 + v30[16], v56, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v46, 1, v36);
  if (v31)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v47 = OUTLINED_FUNCTION_26_59();
    v48(v47);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_180();
    sub_1D53015C8(v49);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v43 + 8))(v20, v36);
  }

  v50 = *(v2 + v30[17]);
  if (v50 != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_33_5();
  if (v50)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (!*(v2 + v30[19] + 8))
  {
    return OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_24();
  return sub_1D5614E28();
}

uint64_t sub_1D53011B8()
{
  sub_1D56162D8();
  sub_1D5300AC4(v1);
  return sub_1D5616328();
}

uint64_t sub_1D5301200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D530042C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5301228(uint64_t a1)
{
  v2 = sub_1D530136C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5301264(uint64_t a1)
{
  v2 = sub_1D530136C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D53012DC(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5300AC4(v2);
  return sub_1D5616328();
}

unint64_t sub_1D530136C()
{
  result = qword_1EC7F3FD0;
  if (!qword_1EC7F3FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3FD0);
  }

  return result;
}

uint64_t sub_1D53013C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformUploadedVideo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5301424(uint64_t a1)
{
  v2 = type metadata accessor for StorePlatformUploadedVideo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5301480(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D53015C8(v2);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D5301500(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF388, &unk_1D5631100);
    sub_1D53015C8(v2);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D5301580()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EC87C508);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  return sub_1D560FF38();
}

unint64_t sub_1D53015C8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StorePlatformUploadedVideo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D53016EC()
{
  result = qword_1EC7F3FE0;
  if (!qword_1EC7F3FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3FE0);
  }

  return result;
}

unint64_t sub_1D5301744()
{
  result = qword_1EC7F3FE8;
  if (!qword_1EC7F3FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3FE8);
  }

  return result;
}

unint64_t sub_1D530179C()
{
  result = qword_1EC7F3FF0;
  if (!qword_1EC7F3FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3FF0);
  }

  return result;
}

uint64_t sub_1D53017F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_23_58();
  v10 = v3;
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v4 = OUTLINED_FUNCTION_10_88();
  v5 = OUTLINED_FUNCTION_32(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_2(v5);

  return v8(v7);
}

uint64_t sub_1D530187C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5304058, 0, 0);
}

uint64_t sub_1D530189C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D53018BC, 0, 0);
}

uint64_t sub_1D53018BC()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[2];
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  v4 = v0[1];

  v2 = v0[3];

  return v4(v2);
}

void sub_1D5301960(uint64_t a1)
{
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD00000000000002CLL, 0x80000001D568AA00);
  v1 = OUTLINED_FUNCTION_98();
  MEMORY[0x1DA6EAC70](v1);
  MEMORY[0x1DA6EAC70](8250, 0xE200000000000000);
  sub_1D560CDE8();
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  OUTLINED_FUNCTION_22_61("Fatal error", v2, v3, 0, 0xE000000000000000, "MusicKitInternal/LegacyModelLibraryRequestable+Internal.swift");
  __break(1u);
}

uint64_t static LegacyModelExtendedLibraryRequestable.standaloneExtendedLibraryRequestConfigurationParameters(for:sortDescriptors:filteringOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!dynamic_cast_existential_1_conditional(v5, v5, &protocol descriptor for LegacyModelLibraryRequestable))
  {
    return 0;
  }

  OUTLINED_FUNCTION_21_61();
  v11 = sub_1D535159C(v6, v7, v8, v9, v10);
  if (dynamic_cast_existential_1_conditional(v5, v5, &protocol descriptor for LegacyModelLibraryInternalRequestable))
  {
    v12 = sub_1D5613218();

    return v12;
  }

  return v11;
}

uint64_t static LegacyModelExtendedLibraryRequestable.extendedLibraryRequestConfigurationParameters(for:predicates:sortDescriptors:filteringOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = dynamic_cast_existential_1_conditional(v6, v6, &protocol descriptor for LegacyModelLibraryInternalRequestable);
  if (v10)
  {
    return sub_1D5302A24(a1, a2, a3, v10, v11);
  }

  sub_1D5615B68();
  v13 = sub_1D5616458();
  MEMORY[0x1DA6EAC70](v13);

  MEMORY[0x1DA6EAC70](0xD00000000000003BLL, 0x80000001D568A9C0);
  result = OUTLINED_FUNCTION_22_61("Fatal error", v14, v15, 0, 0xE000000000000000, "MusicKitInternal/LegacyModelLibraryRequestable+Internal.swift");
  __break(1u);
  return result;
}

uint64_t LegacyModelExtendedLibraryRequestable.extendedAugmentedItem<A>(for:propertyProviderBasedInitializableType:attributeProperties:relationshipProperties:metadataProperties:options:library:)()
{
  OUTLINED_FUNCTION_60();
  v1[28] = v19;
  v1[29] = v0;
  v1[26] = v17;
  v1[27] = v18;
  v1[24] = v2;
  v1[25] = v16;
  v1[22] = v3;
  v1[23] = v4;
  v1[20] = v5;
  v1[21] = v6;
  v1[18] = v7;
  v1[19] = v8;
  v1[17] = v9;
  OUTLINED_FUNCTION_1_0();
  v1[30] = v10;
  v1[31] = swift_task_alloc();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D5301CD8()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 208);
  v5 = *(v0 + 136);
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  (*(v1 + 16))(v2, v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3FF8, &qword_1D5651CB8);
  if (swift_dynamicCast())
  {
    sub_1D4E48324((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 256) = v6;
    *v6 = v7;
    v6[1] = sub_1D5301E78;

    return sub_1D5351C78();
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_1D4E7661C(v0 + 56, &qword_1EC7F4000, &qword_1D5651CC0);

    OUTLINED_FUNCTION_22_1();

    return v9();
  }
}

uint64_t sub_1D5301E78()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;
  *(v4 + 264) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5301F78()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 136);
  sub_1D4E7661C(v1, &qword_1EC7F4008, &qword_1D5651CC8);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  *v1 = *(v0 + 96);
  *(v1 + 16) = v3;
  *(v1 + 32) = v2;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_22_1();

  return v4();
}

uint64_t sub_1D5302004()
{
  OUTLINED_FUNCTION_60();
  sub_1D4E7661C(*(v0 + 136), &qword_1EC7F4008, &qword_1D5651CC8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t LegacyModelExtendedLibraryRequestable.extendedAugmentedItemWithInternalRelationships<A>(for:propertyProviderBasedInitializableType:relationshipProperties:library:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[35] = v13;
  v8[36] = v14;
  v8[33] = a7;
  v8[34] = a8;
  v8[31] = a5;
  v8[32] = a6;
  v8[29] = a3;
  v8[30] = a4;
  v8[27] = a1;
  v8[28] = a2;
  OUTLINED_FUNCTION_57_1();
  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D53020C8()
{
  v1 = *(v0 + 224);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1D5612B18();
  sub_1D4E62938(v1, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4010, &qword_1D5651CD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4018, &qword_1D5651CE0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 248);
    v2 = *(v0 + 256);
    v12 = *(v0 + 280);
    v13 = *(v0 + 264);
    sub_1D4E48324((v0 + 136), v0 + 56);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4028, &qword_1D5651CF0);
    v5 = swift_task_alloc();
    *(v0 + 296) = v5;
    *(v5 + 16) = v13;
    *(v5 + 32) = v12;
    *(v5 + 48) = v3;
    *(v5 + 56) = v0 + 56;
    *(v5 + 64) = v2;
    *(v5 + 72) = v0 + 16;
    v6 = swift_task_alloc();
    *(v0 + 304) = v6;
    *v6 = v0;
    v6[1] = sub_1D5302300;
    v7 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DD58](v6, v4, v7, 0, 0, &unk_1D5651D00, v5, v4);
  }

  else
  {
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0;
    sub_1D4E7661C(v0 + 136, &qword_1EC7F4020, &qword_1D5651CE8);
    sub_1D4E62938(v8, v9);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    OUTLINED_FUNCTION_22_1();

    return v10();
  }
}

uint64_t sub_1D5302300()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v3 + 312) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D5302408()
{
  OUTLINED_FUNCTION_91();
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v0[25] = v4;
  v0[26] = *(v5 + 8);
  __swift_allocate_boxed_opaque_existential_0(v0 + 22);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_21_61();
  v6();
  v3[3] = v2;
  v3[4] = v1;
  __swift_allocate_boxed_opaque_existential_0(v3);
  sub_1D56131E8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_22_1();

  return v7();
}

uint64_t sub_1D53024F0()
{
  OUTLINED_FUNCTION_60();

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t LegacyModelExtendedLibraryRequestable.extendedUnderlyingRelationshipConfiguration(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4030, &qword_1D5651D08);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_1D5613158();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  v18 = dynamic_cast_existential_1_conditional(a2, a2, &protocol descriptor for LegacyModelLibraryInternalRequestable);
  if (v18)
  {
    v20 = v18;
    v21 = v19;
    (*(v19 + 80))(a1, v18, v19);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1D4E7661C(v8, &qword_1EC7F4030, &qword_1D5651D08);
      v22 = sub_1D5613528();
      v23 = a3;
      v24 = 1;
    }

    else
    {
      (*(v11 + 32))(v17, v8, v9);
      v27 = *(v21 + 88);

      v27(v28, v20, v21);
      (*(v11 + 16))(v15, v17, v9);
      sub_1D5613508();
      (*(v11 + 8))(v17, v9);
      v22 = sub_1D5613528();
      v23 = a3;
      v24 = 0;
    }

    return __swift_storeEnumTagSinglePayload(v23, v24, 1, v22);
  }

  else
  {
    v25 = sub_1D5613528();

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v25);
  }
}

uint64_t sub_1D530280C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_23_58();
  v10 = v3;
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v4 = OUTLINED_FUNCTION_10_88();
  v5 = OUTLINED_FUNCTION_32(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_2(v5);

  return v8(v7);
}

uint64_t sub_1D53028C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_23_58();
  v10 = v3;
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v4 = OUTLINED_FUNCTION_10_88();
  v5 = OUTLINED_FUNCTION_32(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_2(v5);

  return v8(v7);
}

uint64_t sub_1D5302970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_23_58();
  v10 = v3;
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v4 = OUTLINED_FUNCTION_10_88();
  v5 = OUTLINED_FUNCTION_32(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_2(v5);

  return v8(v7);
}

uint64_t sub_1D5302A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a2;
  v60 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_0();
  v57 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v56 = v50 - v11;
  v12 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_0();
  v55 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v53 = v50 - v15;
  v16 = sub_1D560E4F8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = swift_getAssociatedConformanceWitness();
  v64 = v12;
  v65 = AssociatedTypeWitness;
  v66 = AssociatedConformanceWitness;
  v67 = v58;
  type metadata accessor for LibraryRequestConfigurationParameters(0, &v64);
  sub_1D5613358();
  v20 = swift_allocObject();
  v61 = a4;
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = v62;
  v21 = sub_1D50B8CD8(v18, sub_1D5303FD0, v20);
  v64 = sub_1D56133A8();
  v54 = AssociatedConformanceWitness;
  v22 = v53;
  sub_1D5616418();
  v23 = *(*v21 + qword_1EDD76EF0 + 32);
  swift_beginAccess();
  v24 = *(v55 + 40);
  v55 = v12;
  v24(&v21[v23], v22, v12);
  swift_endAccess();
  v64 = sub_1D5613318();
  v25 = v56;
  sub_1D5616418();
  v26 = *(*v21 + qword_1EDD76EF0 + 40);
  swift_beginAccess();
  v27 = *(v57 + 40);
  v57 = AssociatedTypeWitness;
  v27(&v21[v26], v25, AssociatedTypeWitness);
  swift_endAccess();

  sub_1D5613388();
  sub_1D5613398();
  sub_1D5613438();
  sub_1D5613448();
  sub_1D56133B8();
  sub_1D56133C8();
  sub_1D56133E8();
  sub_1D56133F8();
  v50[1] = a1;
  sub_1D5613328();
  v56 = v21;
  sub_1D5613338();
  result = sub_1D4E62628(v59);
  if (result)
  {
    if (result < 1)
    {
      goto LABEL_23;
    }

    v29 = 0;
    v30 = *(a5 + 48);
    v51 = v59 & 0xC000000000000001;
    v52 = v30;
    v53 = result;
    do
    {
      if (v51)
      {
        v31 = MEMORY[0x1DA6EB9B0](v29, v59);
      }

      else
      {
        v31 = *(v59 + 8 * v29 + 32);
      }

      ++v29;
      v32 = v61;
      v70 = v52(v61, a5);
      MEMORY[0x1EEE9AC00](v70);
      OUTLINED_FUNCTION_20_67();
      v33 = v55;
      v34 = v56;
      *(v35 - 16) = v31;
      *(v35 - 8) = v34;
      v36 = *(*(a5 + 8) + 8);
      v64 = v32;
      v65 = v33;
      v66 = v57;
      v67 = v36;
      v68 = v54;
      v69 = v58;
      type metadata accessor for PartialLibraryInternalPredicateResolver(255, &v64);
      sub_1D56152D8();
      OUTLINED_FUNCTION_7_105();
      sub_1D5615098();
    }

    while (v53 != v29);
  }

  v37 = sub_1D5613408();
  v64 = v37;
  v38 = v60;
  v39 = sub_1D4E62628(v60);
  v40 = 0;
  v58 = v38 & 0xC000000000000001;
  v59 = v39;
  v57 = a5 + 56;
  while (1)
  {
    if (v59 == v40)
    {
      v49 = v56;
      sub_1D5613418();

      return v49;
    }

    v41 = v58;
    sub_1D4F0B2FC();
    if (v41)
    {
      result = MEMORY[0x1DA6EB9B0](v40, v38);
      v42 = result;
    }

    else
    {
      v42 = *(v38 + 8 * v40 + 32);
    }

    if (__OFADD__(v40, 1))
    {
      break;
    }

    v70 = MEMORY[0x1E69E7CC0];
    v43 = v61;
    v63 = (*(a5 + 56))(v61, a5);
    MEMORY[0x1EEE9AC00](v63);
    OUTLINED_FUNCTION_20_67();
    *(v44 - 16) = v42;
    *(v44 - 8) = &v70;
    type metadata accessor for LibraryInternalSortDescriptorResolver(255, v43, *(a5 + 8), v45);
    sub_1D56152D8();
    OUTLINED_FUNCTION_7_105();
    sub_1D5615098();

    v46 = v70;
    if (sub_1D4E62628(v70))
    {
      result = sub_1D4E62638(v37);
      if (result < v40)
      {
        goto LABEL_21;
      }

      v47 = sub_1D4F0B2D8(v46);
      result = sub_1D4F0B2D8(v37);
      v48 = result + v47;
      if (__OFADD__(result, v47))
      {
        goto LABEL_22;
      }

      sub_1D4F05F24(v48, 1);
      sub_1D54FB264();
      v37 = v64;
    }

    ++v40;
    v38 = v60;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1D530313C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[42] = v12;
  v8[43] = v13;
  v8[40] = a7;
  v8[41] = a8;
  v8[38] = a5;
  v8[39] = a6;
  v8[36] = a3;
  v8[37] = a4;
  v8[35] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4038, &qword_1D5651DD8);
  v8[46] = v9;
  v8[47] = *(v9 - 8);
  v8[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5303264, 0, 0);
}

uint64_t sub_1D5303264()
{
  sub_1D560D0C8();
  OUTLINED_FUNCTION_98();
  v1 = sub_1D5615178();
  v25 = v1;
  OUTLINED_FUNCTION_98();
  if (v1 != sub_1D5615208())
  {
    v22 = *(v0 + 288) + 32;
    v23 = **(v0 + 280);
    do
    {
      OUTLINED_FUNCTION_98();
      v5 = sub_1D56151E8();
      sub_1D56151A8();
      if (v5)
      {
        v6 = *(v22 + 8 * v1);
      }

      else
      {
        v6 = sub_1D5615BB8();
      }

      v8 = *(v0 + 352);
      v7 = *(v0 + 360);
      v9 = *(v0 + 320);
      v11 = *(v0 + 296);
      v10 = *(v0 + 304);
      v24 = *(v0 + 336);
      sub_1D56152C8();
      v12 = sub_1D5615458();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v12);
      sub_1D4E62938(v11, v0 + 64);
      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 32) = v9;
      *(v13 + 40) = v24;
      sub_1D4E48324((v0 + 64), v13 + 56);
      *(v13 + 96) = v6;
      *(v13 + 104) = v10;
      sub_1D5155C5C(v7, v8);
      LODWORD(v7) = __swift_getEnumTagSinglePayload(v8, 1, v12);

      v14 = *(v0 + 352);
      if (v7 == 1)
      {
        sub_1D4E7661C(*(v0 + 352), &qword_1EC7EB710, &qword_1D561F440);
      }

      else
      {
        sub_1D5615448();
        OUTLINED_FUNCTION_24_0();
        (*(v15 + 8))(v14, v12);
      }

      if (*(v13 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v16 = sub_1D5615338();
        v18 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4028, &qword_1D5651CF0);
      v19 = v18 | v16;
      if (v18 | v16)
      {
        v19 = v0 + 184;
        *(v0 + 184) = 0;
        *(v0 + 192) = 0;
        *(v0 + 200) = v16;
        *(v0 + 208) = v18;
      }

      v20 = *(v0 + 360);
      *(v0 + 248) = 1;
      *(v0 + 256) = v19;
      *(v0 + 264) = v23;
      swift_task_create();

      sub_1D4E7661C(v20, &qword_1EC7EB710, &qword_1D561F440);
      v1 = v25;
    }

    while (v25 != sub_1D5615208());
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4028, &qword_1D5651CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  sub_1D5615508();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 392) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_5_105(v2);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DAD8](v4);
}

uint64_t sub_1D5303624()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D5303720()
{
  OUTLINED_FUNCTION_91();
  if (*(v0 + 16))
  {
    *(v0 + 176) = *(v0 + 56);
    v1 = *(v0 + 40);
    *(v0 + 144) = *(v0 + 24);
    *(v0 + 160) = v1;
    if (*(v0 + 168))
    {
      v2 = *(v0 + 312);
      sub_1D4E48324((v0 + 144), v0 + 104);
      v3 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 104), v3);
      *(v0 + 240) = v3;
      __swift_allocate_boxed_opaque_existential_0((v0 + 216));
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_21_61();
      v4();
      __swift_mutable_project_boxed_opaque_existential_1(v2, *(v2 + 24));
      sub_1D5612228();
      __swift_destroy_boxed_opaque_existential_1((v0 + 104));
    }

    else
    {

      sub_1D4E7661C(v0 + 144, &qword_1EC7F0900, &qword_1D563A1B0);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 392) = v7;
    *v7 = v8;
    OUTLINED_FUNCTION_5_105(v7);
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DAD8](v9);
  }

  else
  {
    (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));

    OUTLINED_FUNCTION_22_1();

    return v5();
  }
}

uint64_t sub_1D53038F4()
{
  OUTLINED_FUNCTION_80();
  (*(v0[47] + 8))(v0[48], v0[46]);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5303988(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v14 = v2[2];
  v6 = v2[6];
  v7 = v2[7];
  v9 = v2[8];
  v8 = v2[9];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_32(v10);
  *v11 = v12;
  v11[1] = sub_1D4E73560;

  return sub_1D530313C(a1, a2, v6, v7, v9, v8, v14, v5);
}

uint64_t sub_1D5303A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5303A9C, 0, 0);
}

uint64_t sub_1D5303A9C()
{
  OUTLINED_FUNCTION_23_58();
  v13 = v1;
  OUTLINED_FUNCTION_91();
  v3 = v0[2];
  v2 = v0[3];
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  OUTLINED_FUNCTION_17_69(v5);
  v12 = (v6 + *v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[6] = v7;
  *v7 = v8;
  v7[1] = sub_1D5303BBC;
  v9 = v0[4];
  v10 = v0[5];

  return v12(v3 + 8, v9, v10, v4, v5);
}

uint64_t sub_1D5303BBC()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;

  if (v0)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v5 + 56) = v3;
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1D5303CF4()
{
  **(v0 + 16) = *(v0 + 56);
  OUTLINED_FUNCTION_22_1();
  return v1();
}

uint64_t sub_1D5303D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_23_58();
  v10 = v3;
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v4 = OUTLINED_FUNCTION_10_88();
  v5 = OUTLINED_FUNCTION_32(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_2(v5);

  return v8(v7);
}

uint64_t sub_1D5303DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_23_58();
  v10 = v3;
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v4 = OUTLINED_FUNCTION_10_88();
  v5 = OUTLINED_FUNCTION_32(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_2(v5);

  return v8(v7);
}

uint64_t sub_1D5303E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_23_58();
  v10 = v3;
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_2_133();
  v4 = OUTLINED_FUNCTION_10_88();
  v5 = OUTLINED_FUNCTION_32(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0_2(v5);

  return v8(v7);
}

uint64_t sub_1D5303EEC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[12];
  v6 = v1[13];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_32(v7);
  *v8 = v9;
  v8[1] = sub_1D4E6ED20;

  return sub_1D5303A74(a1, v3, v4, (v1 + 7), v5, v6);
}

uint64_t sub_1D53040AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x776F4C79726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7827308 && a2 == 0xE300000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D756964656DLL && a2 == 0xE600000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1751607656 && a2 == 0xE400000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6867694879726576 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1D5616168();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1D5304248(char a1)
{
  result = 0x776F4C79726576;
  switch(a1)
  {
    case 1:
      result = 7827308;
      break;
    case 2:
      result = 0x6D756964656DLL;
      break;
    case 3:
      result = 1751607656;
      break;
    case 4:
      result = 0x6867694879726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D53042F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D53040AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5304318(uint64_t a1)
{
  v2 = sub_1D5304A58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5304354(uint64_t a1)
{
  v2 = sub_1D5304A58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5304390(uint64_t a1)
{
  v2 = sub_1D5304B00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D53043CC(uint64_t a1)
{
  v2 = sub_1D5304B00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5304408(uint64_t a1)
{
  v2 = sub_1D5304BA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5304444(uint64_t a1)
{
  v2 = sub_1D5304BA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5304480(uint64_t a1)
{
  v2 = sub_1D5304B54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D53044BC(uint64_t a1)
{
  v2 = sub_1D5304B54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D53044F8(uint64_t a1)
{
  v2 = sub_1D5304AAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5304534(uint64_t a1)
{
  v2 = sub_1D5304AAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5304570(uint64_t a1)
{
  v2 = sub_1D5304BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D53045AC(uint64_t a1)
{
  v2 = sub_1D5304BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VocalActivity.VocalStrength.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_25_1();
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4040, &qword_1D5651DF0);
  OUTLINED_FUNCTION_4();
  v74 = v30;
  v75 = v29;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  v73 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4048, &qword_1D5651DF8);
  OUTLINED_FUNCTION_4();
  v71 = v34;
  v72 = v33;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v70 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4050, &qword_1D5651E00);
  OUTLINED_FUNCTION_4();
  v68 = v38;
  v69 = v37;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  v67 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4058, &qword_1D5651E08);
  OUTLINED_FUNCTION_4();
  v65 = v42;
  v66 = v41;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  v64 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4060, &qword_1D5651E10);
  OUTLINED_FUNCTION_4();
  v62 = v46;
  v63 = v45;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v61 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4068, &qword_1D5651E18);
  OUTLINED_FUNCTION_4();
  v52 = v51;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v61 - v54;
  v56 = *v26;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1D5304A58();
  sub_1D56163D8();
  v57 = (v52 + 8);
  switch(v56)
  {
    case 1:
      sub_1D5304BA8();
      v58 = v64;
      OUTLINED_FUNCTION_7_11();
      sub_1D5616018();
      v60 = v65;
      v59 = v66;
      goto LABEL_7;
    case 2:
      sub_1D5304B54();
      v58 = v67;
      OUTLINED_FUNCTION_7_11();
      sub_1D5616018();
      v60 = v68;
      v59 = v69;
      goto LABEL_7;
    case 3:
      sub_1D5304B00();
      v58 = v70;
      OUTLINED_FUNCTION_7_11();
      sub_1D5616018();
      v60 = v71;
      v59 = v72;
      goto LABEL_7;
    case 4:
      sub_1D5304AAC();
      v58 = v73;
      OUTLINED_FUNCTION_7_11();
      sub_1D5616018();
      v60 = v74;
      v59 = v75;
LABEL_7:
      (*(v60 + 8))(v58, v59);
      break;
    default:
      sub_1D5304BFC();
      sub_1D5616018();
      (*(v62 + 8))(v49, v63);
      break;
  }

  (*v57)(v55, v50);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D5304A58()
{
  result = qword_1EC7F4070;
  if (!qword_1EC7F4070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4070);
  }

  return result;
}

unint64_t sub_1D5304AAC()
{
  result = qword_1EC7F4078;
  if (!qword_1EC7F4078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4078);
  }

  return result;
}

unint64_t sub_1D5304B00()
{
  result = qword_1EC7F4080;
  if (!qword_1EC7F4080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4080);
  }

  return result;
}

unint64_t sub_1D5304B54()
{
  result = qword_1EC7F4088;
  if (!qword_1EC7F4088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4088);
  }

  return result;
}

unint64_t sub_1D5304BA8()
{
  result = qword_1EC7F4090;
  if (!qword_1EC7F4090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4090);
  }

  return result;
}

unint64_t sub_1D5304BFC()
{
  result = qword_1EC7F4098;
  if (!qword_1EC7F4098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4098);
  }

  return result;
}

void VocalActivity.VocalStrength.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_25_1();
  a25 = v28;
  a26 = v29;
  v99 = v26;
  v31 = v30;
  v95 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F40A0, &qword_1D5651E20);
  OUTLINED_FUNCTION_4();
  v92 = v33;
  v93 = v34;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v98 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F40A8, &qword_1D5651E28);
  OUTLINED_FUNCTION_4();
  v90 = v37;
  v91 = v38;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  v97 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F40B0, &qword_1D5651E30);
  OUTLINED_FUNCTION_4();
  v88 = v42;
  v89 = v41;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  v94 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F40B8, &qword_1D5651E38);
  OUTLINED_FUNCTION_4();
  v86 = v46;
  v87 = v45;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v80 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F40C0, &qword_1D5651E40);
  OUTLINED_FUNCTION_4();
  v85 = v51;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_31();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F40C8, &unk_1D5651E48);
  OUTLINED_FUNCTION_4();
  v96 = v54;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v80 - v56;
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_1D5304A58();
  v58 = v99;
  sub_1D5616398();
  if (v58)
  {
    goto LABEL_10;
  }

  v83 = v50;
  v84 = v27;
  v99 = v49;
  v59 = v97;
  v60 = v98;
  v61 = v57;
  sub_1D5615FE8();
  sub_1D4FE35F0();
  if (v63 == v64 >> 1)
  {
    v65 = v96;
LABEL_9:
    v74 = sub_1D5615C18();
    swift_allocError();
    v76 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
    *v76 = &type metadata for VocalActivity.VocalStrength;
    v77 = sub_1D5615F28();
    OUTLINED_FUNCTION_48_2(v77);
    (*(*(v74 - 8) + 104))(v76, *MEMORY[0x1E69E6AF8], v74);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v65 + 8))(v61, v53);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v31);
LABEL_11:
    OUTLINED_FUNCTION_26();
    return;
  }

  if (v63 < (v64 >> 1))
  {
    v81 = *(v62 + v63);
    v66 = sub_1D4FE35EC();
    v68 = v67;
    v70 = v69;
    swift_unknownObjectRelease();
    v82 = v66;
    if (v68 == v70 >> 1)
    {
      v71 = v95;
      v72 = v96;
      switch(v81)
      {
        case 1:
          a13 = 1;
          sub_1D5304BA8();
          v59 = v99;
          OUTLINED_FUNCTION_3_137(&type metadata for VocalActivity.VocalStrength.LowCodingKeys, &a13);
          swift_unknownObjectRelease();
          v79 = v86;
          v78 = v87;
          goto LABEL_16;
        case 2:
          a14 = 2;
          sub_1D5304B54();
          v59 = v94;
          OUTLINED_FUNCTION_3_137(&type metadata for VocalActivity.VocalStrength.MediumCodingKeys, &a14);
          swift_unknownObjectRelease();
          v79 = v88;
          v78 = v89;
          goto LABEL_16;
        case 3:
          a15 = 3;
          sub_1D5304B00();
          OUTLINED_FUNCTION_3_137(&type metadata for VocalActivity.VocalStrength.HighCodingKeys, &a15);
          swift_unknownObjectRelease();
          v78 = v90;
          v79 = v91;
LABEL_16:
          (*(v79 + 8))(v59, v78);
          break;
        case 4:
          a16 = 4;
          sub_1D5304AAC();
          v66 = v57;
          sub_1D5615F18();
          swift_unknownObjectRelease();
          (*(v93 + 8))(v60, v92);
          break;
        default:
          a12 = 0;
          sub_1D5304BFC();
          v73 = v84;
          OUTLINED_FUNCTION_3_137(&type metadata for VocalActivity.VocalStrength.VeryLowCodingKeys, &a12);
          swift_unknownObjectRelease();
          (*(v85 + 8))(v73, v83);
          break;
      }

      (*(v72 + 8))(v66, v53);
      *v71 = v81;
      __swift_destroy_boxed_opaque_existential_1(v31);
      goto LABEL_11;
    }

    v65 = v96;
    v61 = v57;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1D5305300(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69676E6973 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x686365657073 && a2 == 0xE600000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x676E6970706172 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1D5616168();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1D530540C(char a1)
{
  if (!a1)
  {
    return 0x676E69676E6973;
  }

  if (a1 == 1)
  {
    return 0x686365657073;
  }

  return 0x676E6970706172;
}

uint64_t sub_1D5305468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5305300(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5305490(uint64_t a1)
{
  v2 = sub_1D5306824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D53054CC(uint64_t a1)
{
  v2 = sub_1D5306824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5305508(uint64_t a1)
{
  v2 = sub_1D5306878();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5305544(uint64_t a1)
{
  v2 = sub_1D5306878();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5305580(uint64_t a1)
{
  v2 = sub_1D5306920();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D53055BC(uint64_t a1)
{
  v2 = sub_1D5306920();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D53055F8(uint64_t a1)
{
  v2 = sub_1D53068CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5305634(uint64_t a1)
{
  v2 = sub_1D53068CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VocalActivity.VocalKind.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F40D0, &qword_1D5651E58);
  OUTLINED_FUNCTION_4();
  v31 = v5;
  v32 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v30 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F40D8, &qword_1D5651E60);
  OUTLINED_FUNCTION_4();
  v28 = v9;
  v29 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v27 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F40E0, &qword_1D5651E68);
  OUTLINED_FUNCTION_4();
  v25 = v13;
  v26 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F40E8, &qword_1D5651E70);
  OUTLINED_FUNCTION_4();
  v17 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - v19;
  v21 = *v0;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D5306824();
  sub_1D56163D8();
  if (v21)
  {
    if (v21 == 1)
    {
      OUTLINED_FUNCTION_7_3();
      sub_1D53068CC();
      v1 = v27;
      OUTLINED_FUNCTION_7_11();
      sub_1D5616018();
      v23 = v28;
      v22 = v29;
    }

    else
    {
      sub_1D5306878();
      v1 = v30;
      OUTLINED_FUNCTION_7_11();
      sub_1D5616018();
      v23 = v31;
      v22 = v32;
    }
  }

  else
  {
    sub_1D5306920();
    OUTLINED_FUNCTION_7_11();
    sub_1D5616018();
    v23 = v25;
    v22 = v26;
  }

  (*(v23 + 8))(v1, v22);
  (*(v17 + 8))(v20, v15);
  OUTLINED_FUNCTION_26();
}

void VocalActivity.VocalKind.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_25_1();
  a23 = v25;
  a24 = v26;
  v87 = v24;
  v28 = v27;
  v82 = v29;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4110, &qword_1D5651E78);
  OUTLINED_FUNCTION_4();
  v83 = v30;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  v85 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4118, &qword_1D5651E80);
  OUTLINED_FUNCTION_4();
  v80 = v34;
  v81 = v33;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v74 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4120, &qword_1D5651E88);
  OUTLINED_FUNCTION_4();
  v79 = v39;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v74 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4128, &qword_1D5651E90);
  OUTLINED_FUNCTION_4();
  v84 = v44;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v74 - v46;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1D5306824();
  v48 = v87;
  sub_1D5616398();
  if (v48)
  {
    goto LABEL_10;
  }

  v76 = v38;
  v77 = v42;
  v78 = v37;
  v50 = v85;
  v49 = v86;
  v87 = v28;
  sub_1D5615FE8();
  sub_1D4FE35F0();
  if (v52 == v53 >> 1)
  {
    goto LABEL_9;
  }

  v75 = 0;
  if (v52 < (v53 >> 1))
  {
    LODWORD(v54) = *(v51 + v52);
    sub_1D4FE35EC();
    v56 = v55;
    v58 = v57;
    swift_unknownObjectRelease();
    v59 = v56 == v58 >> 1;
    v60 = v83;
    if (v59)
    {
      if (v54)
      {
        if (v54 == 1)
        {
          OUTLINED_FUNCTION_7_3();
          sub_1D53068CC();
          v61 = v78;
          OUTLINED_FUNCTION_4_4(&type metadata for VocalActivity.VocalKind.SpeechCodingKeys, &a13);
          v62 = v82;
          v63 = v43;
          v64 = v84;
          swift_unknownObjectRelease();
          (*(v80 + 8))(v61, v81);
          (*(v64 + 8))(v47, v63);
        }

        else
        {
          LODWORD(v81) = v54;
          a14 = 2;
          sub_1D5306878();
          v70 = v75;
          sub_1D5615F18();
          v62 = v82;
          v54 = v43;
          v71 = v84;
          if (v70)
          {
            (*(v84 + 8))(v47, v54);
            swift_unknownObjectRelease();
            v28 = v87;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          (*(v60 + 8))(v50, v49);
          (*(v71 + 8))(v47, v54);
          LOBYTE(v54) = v81;
        }
      }

      else
      {
        a12 = 0;
        sub_1D5306920();
        v69 = v77;
        OUTLINED_FUNCTION_4_4(&type metadata for VocalActivity.VocalKind.SingingCodingKeys, &a12);
        swift_unknownObjectRelease();
        (*(v79 + 8))(v69, v76);
        v72 = OUTLINED_FUNCTION_3_59();
        v73(v72);
        v62 = v82;
      }

      *v62 = v54;
      __swift_destroy_boxed_opaque_existential_1(v87);
      goto LABEL_11;
    }

LABEL_9:
    v65 = sub_1D5615C18();
    swift_allocError();
    v67 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
    *v67 = &type metadata for VocalActivity.VocalKind;
    v68 = sub_1D5615F28();
    OUTLINED_FUNCTION_48_2(v68);
    (*(*(v65 - 8) + 104))(v67, *MEMORY[0x1E69E6AF8], v65);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v84 + 8))(v47, v43);
    v28 = v87;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_11:
    OUTLINED_FUNCTION_26();
    return;
  }

  __break(1u);
}

uint64_t sub_1D5305FA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6581861 && a2 == 0xE300000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6874676E65727473 && a2 == 0xE800000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1684957547 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1D53060F8(char a1)
{
  result = 0x7472617473;
  switch(a1)
  {
    case 1:
      result = 6581861;
      break;
    case 2:
      result = 0x6874676E65727473;
      break;
    case 3:
      result = 1684957547;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5306168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D53061BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5305FA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D53061E4(uint64_t a1)
{
  v2 = sub_1D5306974();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5306220(uint64_t a1)
{
  v2 = sub_1D5306974();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VocalActivity.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4130, &qword_1D5651E98);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5306974();
  sub_1D56163D8();
  OUTLINED_FUNCTION_22_14();
  sub_1D56160A8();
  if (!v1)
  {
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160A8();
    sub_1D53069C8();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
    sub_1D5306A1C();
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t VocalActivity.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1DA6EC100](*&v5);
  MEMORY[0x1DA6EC0D0](v3);
  return MEMORY[0x1DA6EC0D0](v4);
}

uint64_t VocalActivity.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_1D56162D8();
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v1;
  }

  MEMORY[0x1DA6EC100](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x1DA6EC100](*&v6);
  MEMORY[0x1DA6EC0D0](v3);
  MEMORY[0x1DA6EC0D0](v4);
  return sub_1D5616328();
}

uint64_t VocalActivity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4150, &qword_1D5651EA0);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5306974();
  sub_1D5616398();
  if (!v2)
  {
    v23 = 0;
    OUTLINED_FUNCTION_10_90();
    sub_1D5615FB8();
    v12 = v11;
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_10_90();
    sub_1D5615FB8();
    v14 = v13;
    v21 = 2;
    sub_1D5306A70();
    OUTLINED_FUNCTION_10_90();
    sub_1D5615FD8();
    v16 = v22;
    v19 = 3;
    sub_1D5306AC4();
    OUTLINED_FUNCTION_10_90();
    sub_1D5615FD8();
    (*(v7 + 8))(v10, v5);
    v17 = v20;
    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16;
    *(a2 + 17) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5306788(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  sub_1D56162D8();
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x1DA6EC100](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x1DA6EC100](*&v7);
  MEMORY[0x1DA6EC0D0](v4);
  MEMORY[0x1DA6EC0D0](v5);
  return sub_1D5616328();
}

unint64_t sub_1D5306824()
{
  result = qword_1EC7F40F0;
  if (!qword_1EC7F40F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F40F0);
  }

  return result;
}

unint64_t sub_1D5306878()
{
  result = qword_1EC7F40F8;
  if (!qword_1EC7F40F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F40F8);
  }

  return result;
}

unint64_t sub_1D53068CC()
{
  result = qword_1EC7F4100;
  if (!qword_1EC7F4100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4100);
  }

  return result;
}

unint64_t sub_1D5306920()
{
  result = qword_1EC7F4108;
  if (!qword_1EC7F4108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4108);
  }

  return result;
}

unint64_t sub_1D5306974()
{
  result = qword_1EC7F4138;
  if (!qword_1EC7F4138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4138);
  }

  return result;
}

unint64_t sub_1D53069C8()
{
  result = qword_1EC7F4140;
  if (!qword_1EC7F4140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4140);
  }

  return result;
}

unint64_t sub_1D5306A1C()
{
  result = qword_1EC7F4148;
  if (!qword_1EC7F4148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4148);
  }

  return result;
}

unint64_t sub_1D5306A70()
{
  result = qword_1EC7F4158;
  if (!qword_1EC7F4158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4158);
  }

  return result;
}

unint64_t sub_1D5306AC4()
{
  result = qword_1EC7F4160;
  if (!qword_1EC7F4160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4160);
  }

  return result;
}

unint64_t sub_1D5306B4C()
{
  result = qword_1EC7F4178;
  if (!qword_1EC7F4178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4178);
  }

  return result;
}

unint64_t sub_1D5306BD4()
{
  result = qword_1EC7F4190;
  if (!qword_1EC7F4190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4190);
  }

  return result;
}

unint64_t sub_1D5306C2C()
{
  result = qword_1EC7F4198;
  if (!qword_1EC7F4198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4198);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VocalActivity(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 18))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 17);
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for VocalActivity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VocalActivity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D5306E00(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D5306F0C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D530703C()
{
  result = qword_1EC7F41A0;
  if (!qword_1EC7F41A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41A0);
  }

  return result;
}

unint64_t sub_1D5307094()
{
  result = qword_1EC7F41A8;
  if (!qword_1EC7F41A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41A8);
  }

  return result;
}

unint64_t sub_1D53070EC()
{
  result = qword_1EC7F41B0;
  if (!qword_1EC7F41B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41B0);
  }

  return result;
}

unint64_t sub_1D5307144()
{
  result = qword_1EC7F41B8;
  if (!qword_1EC7F41B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41B8);
  }

  return result;
}

unint64_t sub_1D530719C()
{
  result = qword_1EC7F41C0;
  if (!qword_1EC7F41C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41C0);
  }

  return result;
}

unint64_t sub_1D53071F4()
{
  result = qword_1EC7F41C8;
  if (!qword_1EC7F41C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41C8);
  }

  return result;
}

unint64_t sub_1D530724C()
{
  result = qword_1EC7F41D0;
  if (!qword_1EC7F41D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41D0);
  }

  return result;
}

unint64_t sub_1D53072A4()
{
  result = qword_1EC7F41D8;
  if (!qword_1EC7F41D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41D8);
  }

  return result;
}

unint64_t sub_1D53072FC()
{
  result = qword_1EC7F41E0;
  if (!qword_1EC7F41E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41E0);
  }

  return result;
}

unint64_t sub_1D5307354()
{
  result = qword_1EC7F41E8;
  if (!qword_1EC7F41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41E8);
  }

  return result;
}

unint64_t sub_1D53073AC()
{
  result = qword_1EC7F41F0;
  if (!qword_1EC7F41F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41F0);
  }

  return result;
}

unint64_t sub_1D5307404()
{
  result = qword_1EC7F41F8;
  if (!qword_1EC7F41F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F41F8);
  }

  return result;
}

unint64_t sub_1D530745C()
{
  result = qword_1EC7F4200;
  if (!qword_1EC7F4200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4200);
  }

  return result;
}

unint64_t sub_1D53074B4()
{
  result = qword_1EC7F4208;
  if (!qword_1EC7F4208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4208);
  }

  return result;
}

unint64_t sub_1D530750C()
{
  result = qword_1EC7F4210;
  if (!qword_1EC7F4210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4210);
  }

  return result;
}

unint64_t sub_1D5307564()
{
  result = qword_1EC7F4218;
  if (!qword_1EC7F4218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4218);
  }

  return result;
}

unint64_t sub_1D53075BC()
{
  result = qword_1EC7F4220;
  if (!qword_1EC7F4220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4220);
  }

  return result;
}

unint64_t sub_1D5307614()
{
  result = qword_1EC7F4228;
  if (!qword_1EC7F4228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4228);
  }

  return result;
}

unint64_t sub_1D530766C()
{
  result = qword_1EC7F4230;
  if (!qword_1EC7F4230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4230);
  }

  return result;
}

unint64_t sub_1D53076C4()
{
  result = qword_1EC7F4238;
  if (!qword_1EC7F4238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4238);
  }

  return result;
}

unint64_t sub_1D530771C()
{
  result = qword_1EC7F4240;
  if (!qword_1EC7F4240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4240);
  }

  return result;
}

unint64_t sub_1D5307774()
{
  result = qword_1EC7F4248;
  if (!qword_1EC7F4248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4248);
  }

  return result;
}

unint64_t sub_1D53077CC()
{
  result = qword_1EC7F4250;
  if (!qword_1EC7F4250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4250);
  }

  return result;
}

unint64_t sub_1D5307824()
{
  result = qword_1EC7F4258;
  if (!qword_1EC7F4258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4258);
  }

  return result;
}

unint64_t sub_1D530787C()
{
  result = qword_1EC7F4260;
  if (!qword_1EC7F4260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4260);
  }

  return result;
}

uint64_t sub_1D53078F4(uint64_t a1)
{
  v2 = sub_1D560E348();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v7 = 0;
  v8 = *(a1 + 16);
  v9 = *MEMORY[0x1E6975218];
  v21 = *MEMORY[0x1E69751E0];
  v20 = *MEMORY[0x1E6975220];
  v19 = *MEMORY[0x1E69751E8];
  v18 = *MEMORY[0x1E6975200];
  v17 = *MEMORY[0x1E69751F0];
  v16 = *MEMORY[0x1E69751F8];
  v15 = *MEMORY[0x1E6975208];
  v14 = *MEMORY[0x1E6975210];
  v13 = *MEMORY[0x1E6975228];
  while (v8 != v7)
  {
    (*(v3 + 16))(v5, a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v7, v2);
    v10 = (*(v3 + 88))(v5, v2);
    if (v10 == v9)
    {
      goto LABEL_4;
    }

    if (v10 == v21)
    {
      v6 |= 2uLL;
    }

    else if (v10 == v20)
    {
      v6 |= 4uLL;
    }

    else if (v10 == v19)
    {
      v6 |= 8uLL;
    }

    else if (v10 == v18)
    {
      v6 |= 0x10uLL;
    }

    else if (v10 == v17)
    {
      v6 |= 0x20uLL;
    }

    else if (v10 == v16)
    {
      v6 |= 0x40uLL;
    }

    else
    {
      if (v10 == v15)
      {
LABEL_4:
        v6 |= 1uLL;
        goto LABEL_17;
      }

      if (v10 == v14)
      {
        v6 |= 0x80uLL;
      }

      else if (v10 != v13)
      {
        sub_1D5615E08();
        __break(1u);
        return v6;
      }
    }

LABEL_17:
    ++v7;
  }

  return v6;
}

uint64_t sub_1D5307BC4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v6 + 28);
  v10 = qword_1EDD574A0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_1D560D9A8();
  v12 = __swift_project_value_buffer(v11, qword_1EDD574A8);
  v13 = (*(*(v11 - 8) + 16))(&v8[v9], v12, v11);
  *v8 = a1;
  *(v8 + 1) = a2;
  MEMORY[0x1EEE9AC00](v13);
  *&v15[-16] = v2;
  *&v15[-8] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA968, &unk_1D561D1F0);
  sub_1D560F608();

  return sub_1D50F3940(v8);
}

uint64_t sub_1D5307D64(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v6 + 28);
  v10 = qword_1EC7E8F10;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_1D560D9A8();
  v12 = __swift_project_value_buffer(v11, qword_1EC7F0888);
  v13 = (*(*(v11 - 8) + 16))(&v8[v9], v12, v11);
  *v8 = a1;
  *(v8 + 1) = a2;
  MEMORY[0x1EEE9AC00](v13);
  *&v15[-16] = v2;
  *&v15[-8] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA970, &unk_1D5652B00);
  sub_1D560F608();

  return sub_1D50F3940(v8);
}

uint64_t sub_1D5307F04(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v6 + 28);
  v10 = qword_1EC7E95E0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_1D560D9A8();
  v12 = __swift_project_value_buffer(v11, qword_1EC7F5D80);
  v13 = (*(*(v11 - 8) + 16))(&v8[v9], v12, v11);
  *v8 = a1;
  *(v8 + 1) = a2;
  MEMORY[0x1EEE9AC00](v13);
  *&v15[-16] = v2;
  *&v15[-8] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B0, &unk_1D561C1F0);
  sub_1D560F608();

  return sub_1D50F3940(v8);
}

uint64_t sub_1D53080A4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v6 + 28);
  v10 = qword_1EDD546B0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_1D560D9A8();
  v12 = __swift_project_value_buffer(v11, qword_1EDD546B8);
  v13 = (*(*(v11 - 8) + 16))(&v8[v9], v12, v11);
  *v8 = a1;
  *(v8 + 1) = a2;
  MEMORY[0x1EEE9AC00](v13);
  *&v15[-16] = v2;
  *&v15[-8] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  sub_1D560F608();

  return sub_1D50F3940(v8);
}

uint64_t sub_1D5308244(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v6 + 28);
  v10 = qword_1EDD54510;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_1D560D9A8();
  v12 = __swift_project_value_buffer(v11, qword_1EDD54518);
  v13 = (*(*(v11 - 8) + 16))(&v8[v9], v12, v11);
  *v8 = a1;
  *(v8 + 1) = a2;
  MEMORY[0x1EEE9AC00](v13);
  *&v15[-16] = v2;
  *&v15[-8] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  sub_1D560F608();

  return sub_1D50F3940(v8);
}

uint64_t sub_1D53083E4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5613D28();

  sub_1D560E358();
  *v7 = a1;
  v7[1] = a2;
  v10 = v2;
  v11 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  sub_1D560F608();

  return sub_1D50F3940(v7);
}

uint64_t sub_1D5308500(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5614408();

  sub_1D560E358();
  *v7 = a1;
  v7[1] = a2;
  v10 = v2;
  v11 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65A0, &unk_1D561D200);
  sub_1D560F608();

  return sub_1D50F3940(v7);
}

uint64_t sub_1D530861C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5613838();

  sub_1D560E358();
  *v7 = a1;
  v7[1] = a2;
  v10 = v2;
  v11 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  sub_1D560F608();

  return sub_1D50F3940(v7);
}

uint64_t sub_1D5308738(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v6 + 28);
  v10 = qword_1EDD57520;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_1D560D9A8();
  v12 = __swift_project_value_buffer(v11, qword_1EDD57528);
  v13 = (*(*(v11 - 8) + 16))(&v8[v9], v12, v11);
  *v8 = a1;
  *(v8 + 1) = a2;
  MEMORY[0x1EEE9AC00](v13);
  *&v15[-16] = v2;
  *&v15[-8] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  sub_1D560F608();

  return sub_1D50F3940(v8);
}

uint64_t sub_1D53088D8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D560F8B8();

  sub_1D560E358();
  *v7 = a1;
  v7[1] = a2;
  v10 = v2;
  v11 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA980, &unk_1D561D210);
  sub_1D560F608();

  return sub_1D50F3940(v7);
}

uint64_t sub_1D53089F4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5614B68();

  sub_1D560E358();
  *v7 = a1;
  v7[1] = a2;
  v10 = v2;
  v11 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA988, &qword_1D56397B0);
  sub_1D560F608();

  return sub_1D50F3940(v7);
}

uint64_t sub_1D5308B10(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v6 + 28);
  v10 = qword_1EDD52BA8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_1D560D9A8();
  v12 = __swift_project_value_buffer(v11, qword_1EDD52BB0);
  v13 = (*(*(v11 - 8) + 16))(&v8[v9], v12, v11);
  *v8 = a1;
  *(v8 + 1) = a2;
  MEMORY[0x1EEE9AC00](v13);
  *&v15[-16] = v2;
  *&v15[-8] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1980, &qword_1D5642040);
  sub_1D560F608();

  return sub_1D50F3940(v8);
}

uint64_t sub_1D5308CB0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5614898();

  sub_1D560E358();
  *v7 = a1;
  v7[1] = a2;
  v10 = v2;
  v11 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  sub_1D560F608();

  return sub_1D50F3940(v7);
}

uint64_t sub_1D5308DCC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D560EEA8();

  sub_1D560E358();
  *v7 = a1;
  v7[1] = a2;
  v10 = v2;
  v11 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  sub_1D560F608();

  return sub_1D50F3940(v7);
}

uint64_t sub_1D5308EE8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v6 + 28);
  v10 = qword_1EDD59320;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_1D560D9A8();
  v12 = __swift_project_value_buffer(v11, qword_1EDD59328);
  v13 = (*(*(v11 - 8) + 16))(&v8[v9], v12, v11);
  *v8 = a1;
  *(v8 + 1) = a2;
  MEMORY[0x1EEE9AC00](v13);
  *&v15[-16] = v2;
  *&v15[-8] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  sub_1D560F608();

  return sub_1D50F3940(v8);
}

uint64_t sub_1D5309088(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5613C48();

  sub_1D560E358();
  *v7 = a1;
  v7[1] = a2;
  v10 = v2;
  v11 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA898, &unk_1D561CF00);
  sub_1D560F608();

  return sub_1D50F3940(v7);
}

uint64_t sub_1D53091A4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v6 + 28);
  v10 = qword_1EDD57668;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_1D560D9A8();
  v12 = __swift_project_value_buffer(v11, qword_1EDD57670);
  v13 = (*(*(v11 - 8) + 16))(&v8[v9], v12, v11);
  *v8 = a1;
  *(v8 + 1) = a2;
  MEMORY[0x1EEE9AC00](v13);
  *&v15[-16] = v2;
  *&v15[-8] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA998, &qword_1D561D228);
  sub_1D560F608();

  return sub_1D50F3940(v8);
}

uint64_t sub_1D5309344(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D56141F8();

  sub_1D560E358();
  *v7 = a1;
  v7[1] = a2;
  v10 = v2;
  v11 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9A0, &qword_1D561D230);
  sub_1D560F608();

  return sub_1D50F3940(v7);
}

uint64_t sub_1D5309460(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v6 + 28);
  v10 = qword_1EC7E9088;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_1D560D9A8();
  v12 = __swift_project_value_buffer(v11, qword_1EC7F1B08);
  v13 = (*(*(v11 - 8) + 16))(&v8[v9], v12, v11);
  *v8 = a1;
  *(v8 + 1) = a2;
  MEMORY[0x1EEE9AC00](v13);
  *&v15[-16] = v2;
  *&v15[-8] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4268, &qword_1D5652B18);
  sub_1D560F608();

  return sub_1D50F3940(v8);
}

uint64_t sub_1D5309600(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v6 + 28);
  v10 = qword_1EDD54828;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_1D560D9A8();
  v12 = __swift_project_value_buffer(v11, qword_1EDD54830);
  v13 = (*(*(v11 - 8) + 16))(&v8[v9], v12, v11);
  *v8 = a1;
  *(v8 + 1) = a2;
  MEMORY[0x1EEE9AC00](v13);
  *&v15[-16] = v2;
  *&v15[-8] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A0, &qword_1D5652B20);
  sub_1D560F608();

  return sub_1D50F3940(v8);
}

uint64_t sub_1D53097A0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5613EF8();

  sub_1D560E358();
  *v7 = a1;
  v7[1] = a2;
  v10 = v2;
  v11 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A8, &qword_1D561CF10);
  sub_1D560F608();

  return sub_1D50F3940(v7);
}

uint64_t sub_1D53098BC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5613AF8();

  sub_1D560E358();
  *v7 = a1;
  v7[1] = a2;
  v10 = v2;
  v11 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  sub_1D560F608();

  return sub_1D50F3940(v7);
}

uint64_t sub_1D53099D8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MusicItemCache.Key(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v6 + 28);
  v10 = qword_1EDD5C610;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_1D560D9A8();
  v12 = __swift_project_value_buffer(v11, qword_1EDD5C618);
  v13 = (*(*(v11 - 8) + 16))(&v8[v9], v12, v11);
  *v8 = a1;
  *(v8 + 1) = a2;
  MEMORY[0x1EEE9AC00](v13);
  *&v15[-16] = v2;
  *&v15[-8] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  sub_1D560F608();

  return sub_1D50F3940(v8);
}

uint64_t sub_1D5309B78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t (*a4)(void)@<X4>, void (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  OUTLINED_FUNCTION_59(a1 + 24, v26);

  sub_1D4ED05AC();

  if (v25)
  {
    sub_1D4ED16E4(v24, v23);
    sub_1D4E7661C(v24, &qword_1EC7EA3F0, &qword_1D5634C00);
    sub_1D4E48324(v23, v27);
  }

  else
  {
    sub_1D4E7661C(v24, &qword_1EC7EA3F0, &qword_1D5634C00);
    memset(v27, 0, sizeof(v27));
    v28 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC40, &unk_1D561C070);
  v16 = a4(0);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
    sub_1D531A2EC(v15, a6, a5);
    v20 = 0;
  }

  else
  {
    v20 = 1;
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    sub_1D4E7661C(v15, a2, a3);
  }

  return __swift_storeEnumTagSinglePayload(a6, v20, 1, v16);
}

uint64_t sub_1D5309D54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  OUTLINED_FUNCTION_59(a1 + 24, v25);

  sub_1D4ED05AC();

  if (v24)
  {
    sub_1D4ED16E4(v23, v22);
    sub_1D4E7661C(v23, &qword_1EC7EA3F0, &qword_1D5634C00);
    sub_1D4E48324(v22, v26);
  }

  else
  {
    sub_1D4E7661C(v23, &qword_1EC7EA3F0, &qword_1D5634C00);
    memset(v26, 0, sizeof(v26));
    v27 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC40, &unk_1D561C070);
  v14 = a4(0);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    OUTLINED_FUNCTION_24_0();
    (*(v18 + 32))(a5, v13, v14);
    v19 = 0;
  }

  else
  {
    v19 = 1;
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    sub_1D4E7661C(v13, a2, a3);
  }

  return __swift_storeEnumTagSinglePayload(a5, v19, 1, v14);
}

uint64_t sub_1D5309F44(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UploadedVideo(0);
  sub_1D4E74DDC(&qword_1EC7EC710, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);

  sub_1D560F608();
}

uint64_t sub_1D530A010(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UploadedAudio(0);
  sub_1D4E74DDC(&qword_1EC7F1E18, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

  sub_1D560F608();
}

uint64_t sub_1D530A0DC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TVShow(0);
  sub_1D4E74DDC(&qword_1EC7EA398, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);

  sub_1D560F608();
}

uint64_t sub_1D530A1A8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TVSeason(0);
  sub_1D4E74DDC(&qword_1EC7F42A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);

  sub_1D560F608();
}

uint64_t sub_1D530A274(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TVEpisode(0);
  sub_1D4E74DDC(&qword_1EC7F4298, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);

  sub_1D560F608();
}

uint64_t sub_1D530A340(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SocialProfile(0);
  sub_1D4E74DDC(&qword_1EC7F4288, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);

  sub_1D560F608();
}

uint64_t sub_1D530A40C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Playlist.Folder(0);
  sub_1D4E74DDC(&qword_1EC7F0D78, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);

  sub_1D560F608();
}

uint64_t sub_1D530A4D8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MusicMovie(0);
  sub_1D4E74DDC(&qword_1EC7F1EC0, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

  sub_1D560F608();
}

uint64_t sub_1D530A5A4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EditorialItem(0);
  sub_1D4E74DDC(&qword_1EC7F4280, type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);

  sub_1D560F608();
}

uint64_t sub_1D530A670(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CreditArtist(0);
  sub_1D4E74DDC(&qword_1EC7F4278, type metadata accessor for CreditArtist, &protocol conformance descriptor for CreditArtist);

  sub_1D560F608();
}

uint64_t sub_1D530A73C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Composer(0);
  sub_1D4E74DDC(&qword_1EC7F4270, type metadata accessor for Composer, &protocol conformance descriptor for Composer);

  sub_1D560F608();
}

uint64_t sub_1D530A808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  a3(0);

  sub_1D560F608();
}

uint64_t sub_1D530A898(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GenericMusicItem(0);
  sub_1D4E74DDC(&qword_1EC7F42A8, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);

  sub_1D560F608();
}

uint64_t sub_1D530A964(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v40 = a4;
  v42 = a3;
  v7 = type metadata accessor for MusicItemCache.Key(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v38 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v33 - v12);
  v43 = sub_1D560C368();
  v44 = *(v43 - 8);
  v14 = MEMORY[0x1EEE9AC00](v43);
  v37 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  v18 = a2[3];
  v19 = a2[4];
  v35 = __swift_project_boxed_opaque_existential_1(a2, v18);
  v20 = *(v19 + 8);
  v20(v18, v19);
  v34 = a1;
  swift_beginAccess();
  v21 = *(a1 + 16);

  v22 = sub_1D4ED0594(v17, v21);

  v23 = *(v44 + 8);
  v44 += 8;
  v36 = v23;
  v23(v17, v43);
  v24 = MEMORY[0x1E69E7CD0];
  if (v22)
  {
    v24 = v22;
  }

  v51 = v24;
  v26 = *v42;
  v25 = v42[1];

  sub_1D560E358();
  *v13 = v26;
  v27 = v13;
  v28 = v38;
  *(v27 + 8) = v25;
  sub_1D531A3A8(v27, v39, type metadata accessor for MusicItemCache.Key);
  sub_1D52C7BE0();
  sub_1D50F3940(v28);
  v29 = v37;
  v20(v18, v19);
  v30 = v34;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  *&v45 = *(v30 + 16);
  sub_1D4F13514();
  *(v30 + 16) = v45;
  v36(v29, v43);
  swift_endAccess();
  swift_beginAccess();

  sub_1D4ED05AC();

  if (*(&v46 + 1))
  {
    v48 = v45;
    v49 = v46;
    v50 = v47;
    if (__OFADD__(*(&v47 + 1), 1))
    {
      __break(1u);
    }

    else
    {
      *(&v50 + 1) = *(&v47 + 1) + 1;
      sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
      sub_1D4ED16E4(&v48, &v45);
      swift_beginAccess();
      sub_1D4EC82C0(&v45, v28);
      swift_endAccess();
      sub_1D50F3A34(&v48);
      return sub_1D50F3940(v27);
    }
  }

  else
  {
    sub_1D4E7661C(&v45, &qword_1EC7EA3F0, &qword_1D5634C00);
    *(&v49 + 1) = type metadata accessor for UploadedVideo(0);
    *&v50 = sub_1D4E74DDC(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v48);
    sub_1D531A3A8(v42, boxed_opaque_existential_0, type metadata accessor for UploadedVideo);
    *(&v50 + 1) = 1;
    sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
    sub_1D4ED16E4(&v48, &v45);
    swift_beginAccess();
    sub_1D4EC82C0(&v45, v28);
    swift_endAccess();
    sub_1D50F3940(v27);
    return sub_1D50F3A34(&v48);
  }

  return result;
}

uint64_t sub_1D530AED4(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v40 = a4;
  v42 = a3;
  v7 = type metadata accessor for MusicItemCache.Key(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v38 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v33 - v12);
  v43 = sub_1D560C368();
  v44 = *(v43 - 8);
  v14 = MEMORY[0x1EEE9AC00](v43);
  v37 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  v18 = a2[3];
  v19 = a2[4];
  v35 = __swift_project_boxed_opaque_existential_1(a2, v18);
  v20 = *(v19 + 8);
  v20(v18, v19);
  v34 = a1;
  swift_beginAccess();
  v21 = *(a1 + 16);

  v22 = sub_1D4ED0594(v17, v21);

  v23 = *(v44 + 8);
  v44 += 8;
  v36 = v23;
  v23(v17, v43);
  v24 = MEMORY[0x1E69E7CD0];
  if (v22)
  {
    v24 = v22;
  }

  v51 = v24;
  v26 = *v42;
  v25 = v42[1];

  sub_1D560E358();
  *v13 = v26;
  v27 = v13;
  v28 = v38;
  *(v27 + 8) = v25;
  sub_1D531A3A8(v27, v39, type metadata accessor for MusicItemCache.Key);
  sub_1D52C7BE0();
  sub_1D50F3940(v28);
  v29 = v37;
  v20(v18, v19);
  v30 = v34;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  *&v45 = *(v30 + 16);
  sub_1D4F13514();
  *(v30 + 16) = v45;
  v36(v29, v43);
  swift_endAccess();
  swift_beginAccess();

  sub_1D4ED05AC();

  if (*(&v46 + 1))
  {
    v48 = v45;
    v49 = v46;
    v50 = v47;
    if (__OFADD__(*(&v47 + 1), 1))
    {
      __break(1u);
    }

    else
    {
      *(&v50 + 1) = *(&v47 + 1) + 1;
      sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
      sub_1D4ED16E4(&v48, &v45);
      swift_beginAccess();
      sub_1D4EC82C0(&v45, v28);
      swift_endAccess();
      sub_1D50F3A34(&v48);
      return sub_1D50F3940(v27);
    }
  }

  else
  {
    sub_1D4E7661C(&v45, &qword_1EC7EA3F0, &qword_1D5634C00);
    *(&v49 + 1) = type metadata accessor for UploadedAudio(0);
    *&v50 = sub_1D4E74DDC(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v48);
    sub_1D531A3A8(v42, boxed_opaque_existential_0, type metadata accessor for UploadedAudio);
    *(&v50 + 1) = 1;
    sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
    sub_1D4ED16E4(&v48, &v45);
    swift_beginAccess();
    sub_1D4EC82C0(&v45, v28);
    swift_endAccess();
    sub_1D50F3940(v27);
    return sub_1D50F3A34(&v48);
  }

  return result;
}

uint64_t sub_1D530B444(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v40 = a4;
  v42 = a3;
  v7 = type metadata accessor for MusicItemCache.Key(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v38 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v33 - v12);
  v43 = sub_1D560C368();
  v44 = *(v43 - 8);
  v14 = MEMORY[0x1EEE9AC00](v43);
  v37 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  v18 = a2[3];
  v19 = a2[4];
  v35 = __swift_project_boxed_opaque_existential_1(a2, v18);
  v20 = *(v19 + 8);
  v20(v18, v19);
  v34 = a1;
  swift_beginAccess();
  v21 = *(a1 + 16);

  v22 = sub_1D4ED0594(v17, v21);

  v23 = *(v44 + 8);
  v44 += 8;
  v36 = v23;
  v23(v17, v43);
  v24 = MEMORY[0x1E69E7CD0];
  if (v22)
  {
    v24 = v22;
  }

  v51 = v24;
  v26 = *v42;
  v25 = v42[1];

  sub_1D560E358();
  *v13 = v26;
  v27 = v13;
  v28 = v38;
  *(v27 + 8) = v25;
  sub_1D531A3A8(v27, v39, type metadata accessor for MusicItemCache.Key);
  sub_1D52C7BE0();
  sub_1D50F3940(v28);
  v29 = v37;
  v20(v18, v19);
  v30 = v34;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  *&v45 = *(v30 + 16);
  sub_1D4F13514();
  *(v30 + 16) = v45;
  v36(v29, v43);
  swift_endAccess();
  swift_beginAccess();

  sub_1D4ED05AC();

  if (*(&v46 + 1))
  {
    v48 = v45;
    v49 = v46;
    v50 = v47;
    if (__OFADD__(*(&v47 + 1), 1))
    {
      __break(1u);
    }

    else
    {
      *(&v50 + 1) = *(&v47 + 1) + 1;
      sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
      sub_1D4ED16E4(&v48, &v45);
      swift_beginAccess();
      sub_1D4EC82C0(&v45, v28);
      swift_endAccess();
      sub_1D50F3A34(&v48);
      return sub_1D50F3940(v27);
    }
  }

  else
  {
    sub_1D4E7661C(&v45, &qword_1EC7EA3F0, &qword_1D5634C00);
    *(&v49 + 1) = type metadata accessor for TVShow(0);
    *&v50 = sub_1D4E74DDC(&qword_1EC7EA688, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v48);
    sub_1D531A3A8(v42, boxed_opaque_existential_0, type metadata accessor for TVShow);
    *(&v50 + 1) = 1;
    sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
    sub_1D4ED16E4(&v48, &v45);
    swift_beginAccess();
    sub_1D4EC82C0(&v45, v28);
    swift_endAccess();
    sub_1D50F3940(v27);
    return sub_1D50F3A34(&v48);
  }

  return result;
}

uint64_t sub_1D530B9B4(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v40 = a4;
  v42 = a3;
  v7 = type metadata accessor for MusicItemCache.Key(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v38 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v33 - v12);
  v43 = sub_1D560C368();
  v44 = *(v43 - 8);
  v14 = MEMORY[0x1EEE9AC00](v43);
  v37 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  v18 = a2[3];
  v19 = a2[4];
  v35 = __swift_project_boxed_opaque_existential_1(a2, v18);
  v20 = *(v19 + 8);
  v20(v18, v19);
  v34 = a1;
  swift_beginAccess();
  v21 = *(a1 + 16);

  v22 = sub_1D4ED0594(v17, v21);

  v23 = *(v44 + 8);
  v44 += 8;
  v36 = v23;
  v23(v17, v43);
  v24 = MEMORY[0x1E69E7CD0];
  if (v22)
  {
    v24 = v22;
  }

  v51 = v24;
  v26 = *v42;
  v25 = v42[1];

  sub_1D560E358();
  *v13 = v26;
  v27 = v13;
  v28 = v38;
  *(v27 + 8) = v25;
  sub_1D531A3A8(v27, v39, type metadata accessor for MusicItemCache.Key);
  sub_1D52C7BE0();
  sub_1D50F3940(v28);
  v29 = v37;
  v20(v18, v19);
  v30 = v34;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  *&v45 = *(v30 + 16);
  sub_1D4F13514();
  *(v30 + 16) = v45;
  v36(v29, v43);
  swift_endAccess();
  swift_beginAccess();

  sub_1D4ED05AC();

  if (*(&v46 + 1))
  {
    v48 = v45;
    v49 = v46;
    v50 = v47;
    if (__OFADD__(*(&v47 + 1), 1))
    {
      __break(1u);
    }

    else
    {
      *(&v50 + 1) = *(&v47 + 1) + 1;
      sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
      sub_1D4ED16E4(&v48, &v45);
      swift_beginAccess();
      sub_1D4EC82C0(&v45, v28);
      swift_endAccess();
      sub_1D50F3A34(&v48);
      return sub_1D50F3940(v27);
    }
  }

  else
  {
    sub_1D4E7661C(&v45, &qword_1EC7EA3F0, &qword_1D5634C00);
    *(&v49 + 1) = type metadata accessor for TVSeason(0);
    *&v50 = sub_1D4E74DDC(&unk_1EDD546A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v48);
    sub_1D531A3A8(v42, boxed_opaque_existential_0, type metadata accessor for TVSeason);
    *(&v50 + 1) = 1;
    sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
    sub_1D4ED16E4(&v48, &v45);
    swift_beginAccess();
    sub_1D4EC82C0(&v45, v28);
    swift_endAccess();
    sub_1D50F3940(v27);
    return sub_1D50F3A34(&v48);
  }

  return result;
}

uint64_t sub_1D530BF24(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v40 = a4;
  v42 = a3;
  v7 = type metadata accessor for MusicItemCache.Key(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v38 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v33 - v12);
  v43 = sub_1D560C368();
  v44 = *(v43 - 8);
  v14 = MEMORY[0x1EEE9AC00](v43);
  v37 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  v18 = a2[3];
  v19 = a2[4];
  v35 = __swift_project_boxed_opaque_existential_1(a2, v18);
  v20 = *(v19 + 8);
  v20(v18, v19);
  v34 = a1;
  swift_beginAccess();
  v21 = *(a1 + 16);

  v22 = sub_1D4ED0594(v17, v21);

  v23 = *(v44 + 8);
  v44 += 8;
  v36 = v23;
  v23(v17, v43);
  v24 = MEMORY[0x1E69E7CD0];
  if (v22)
  {
    v24 = v22;
  }

  v51 = v24;
  v26 = *v42;
  v25 = v42[1];

  sub_1D560E358();
  *v13 = v26;
  v27 = v13;
  v28 = v38;
  *(v27 + 8) = v25;
  sub_1D531A3A8(v27, v39, type metadata accessor for MusicItemCache.Key);
  sub_1D52C7BE0();
  sub_1D50F3940(v28);
  v29 = v37;
  v20(v18, v19);
  v30 = v34;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  *&v45 = *(v30 + 16);
  sub_1D4F13514();
  *(v30 + 16) = v45;
  v36(v29, v43);
  swift_endAccess();
  swift_beginAccess();

  sub_1D4ED05AC();

  if (*(&v46 + 1))
  {
    v48 = v45;
    v49 = v46;
    v50 = v47;
    if (__OFADD__(*(&v47 + 1), 1))
    {
      __break(1u);
    }

    else
    {
      *(&v50 + 1) = *(&v47 + 1) + 1;
      sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
      sub_1D4ED16E4(&v48, &v45);
      swift_beginAccess();
      sub_1D4EC82C0(&v45, v28);
      swift_endAccess();
      sub_1D50F3A34(&v48);
      return sub_1D50F3940(v27);
    }
  }

  else
  {
    sub_1D4E7661C(&v45, &qword_1EC7EA3F0, &qword_1D5634C00);
    *(&v49 + 1) = type metadata accessor for TVEpisode(0);
    *&v50 = sub_1D4E74DDC(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v48);
    sub_1D531A3A8(v42, boxed_opaque_existential_0, type metadata accessor for TVEpisode);
    *(&v50 + 1) = 1;
    sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
    sub_1D4ED16E4(&v48, &v45);
    swift_beginAccess();
    sub_1D4EC82C0(&v45, v28);
    swift_endAccess();
    sub_1D50F3940(v27);
    return sub_1D50F3A34(&v48);
  }

  return result;
}

uint64_t sub_1D530C494(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v51 = a7;
  v47 = a6;
  v50 = a5;
  v49 = a4;
  v52 = a3;
  v9 = type metadata accessor for MusicItemCache.Key(0);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39[-v12];
  v53 = sub_1D560C368();
  OUTLINED_FUNCTION_1_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39[-v18];
  v20 = a2[3];
  v21 = a2[4];
  v41 = __swift_project_boxed_opaque_existential_1(a2, v20);
  v42 = *(v21 + 8);
  v42(v20, v21);
  v40 = a1;
  OUTLINED_FUNCTION_59(a1 + 16, v61);
  v22 = *(a1 + 16);

  v23 = sub_1D4ED0594(v19, v22);

  v24 = *(v15 + 8);
  v43 = v15 + 8;
  v44 = v24;
  v24(v19, v53);
  v25 = MEMORY[0x1E69E7CD0];
  if (v23)
  {
    v25 = v23;
  }

  v62 = v25;
  v47 = v47(0);
  v26 = sub_1D560EC18();
  v28 = v27;
  v29 = v45;
  sub_1D560E358();
  *v13 = v26;
  v13[1] = v28;
  v30 = OUTLINED_FUNCTION_8_99();
  sub_1D531A3A8(v30, v48, v31);
  sub_1D52C7BE0();
  sub_1D50F3940(v29);
  v32 = v46;
  v42(v20, v21);
  v33 = v40;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  *&v54 = *(v33 + 16);
  sub_1D4F13514();
  *(v33 + 16) = v54;
  v44(v32, v53);
  swift_endAccess();
  OUTLINED_FUNCTION_59(v33 + 24, v57);

  sub_1D4ED05AC();

  if (*(&v55 + 1))
  {
    v58 = v54;
    v59 = v55;
    v60 = v56;
    v34 = *(&v56 + 1) + 1;
    if (!__OFADD__(*(&v56 + 1), 1))
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  sub_1D4E7661C(&v54, &qword_1EC7EA3F0, &qword_1D5634C00);
  *(&v59 + 1) = v47;
  *&v60 = v51;
  __swift_allocate_boxed_opaque_existential_0(&v58);
  OUTLINED_FUNCTION_15_1();
  (*(v35 + 16))();
  v34 = 1;
LABEL_8:
  *(&v60 + 1) = v34;
  v36 = OUTLINED_FUNCTION_8_99();
  sub_1D531A3A8(v36, v29, v37);
  sub_1D4ED16E4(&v58, &v54);
  swift_beginAccess();
  sub_1D4EC82C0(&v54, v29);
  swift_endAccess();
  sub_1D50F3A34(&v58);
  return sub_1D50F3940(v13);
}