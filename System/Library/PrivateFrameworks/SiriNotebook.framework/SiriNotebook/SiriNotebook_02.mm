uint64_t sub_26812A998(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_2683CF258();
  if (v1)
  {
    v4 = 0xD000000000000015;
  }

  else
  {
    v4 = 0xD000000000000013;
  }

  if (v1)
  {
    v5 = "reminderListType";
  }

  else
  {
    v5 = "reateNote";
  }

  if (v3)
  {
    if (v2 == v4 && v3 == (v5 | 0x8000000000000000))
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_2683D0598();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t type metadata accessor for CreateNoteCATsSimple(uint64_t a1)
{
  result = qword_28024D248;
  if (!qword_28024D248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26812AAD0()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26812AB60()
{
  OUTLINED_FUNCTION_25();
  v15 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[4];
  v3 = v0[2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v5 = OUTLINED_FUNCTION_20(v4);
  v0[5] = v5;
  *(v5 + 16) = xmmword_2683D1EC0;
  *(v5 + 32) = 0x746E65746E6F63;
  *(v5 + 40) = 0xE700000000000000;
  sub_26812C2A8(v3, v2, &unk_28024E7C0, &unk_2683D6CA0);
  v6 = sub_2683CF168();
  OUTLINED_FUNCTION_13(v6);
  if (v7)
  {
    sub_26812C310(v2, &unk_28024E7C0, &unk_2683D6CA0);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v3;
    __swift_allocate_boxed_opaque_existential_0((v5 + 48));
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_21();
    v8();
  }

  v9 = OUTLINED_FUNCTION_6();
  v10 = OUTLINED_FUNCTION_22(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_8(v10);
  v12 = OUTLINED_FUNCTION_18(32);

  return v13(v12);
}

uint64_t sub_26812ACC8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_10();

    return v9(v8);
  }
}

uint64_t sub_26812ADF8()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26812AE88()
{
  OUTLINED_FUNCTION_25();
  v15 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[4];
  v3 = v0[2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v5 = OUTLINED_FUNCTION_20(v4);
  v0[5] = v5;
  *(v5 + 16) = xmmword_2683D1EC0;
  *(v5 + 32) = 0x6D614E70756F7267;
  *(v5 + 40) = 0xE900000000000065;
  sub_26812C2A8(v3, v2, &unk_28024E7C0, &unk_2683D6CA0);
  v6 = sub_2683CF168();
  OUTLINED_FUNCTION_13(v6);
  if (v7)
  {
    sub_26812C310(v2, &unk_28024E7C0, &unk_2683D6CA0);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v3;
    __swift_allocate_boxed_opaque_existential_0((v5 + 48));
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_21();
    v8();
  }

  v9 = OUTLINED_FUNCTION_6();
  v10 = OUTLINED_FUNCTION_22(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_8(v10);
  v12 = OUTLINED_FUNCTION_18(34);

  return v13(v12);
}

uint64_t sub_26812AFF4()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v1[4] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26812B084()
{
  OUTLINED_FUNCTION_25();
  v15 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[4];
  v3 = v0[2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v5 = OUTLINED_FUNCTION_20(v4);
  v0[5] = v5;
  *(v5 + 16) = xmmword_2683D1EC0;
  *(v5 + 32) = 0x656C746974;
  *(v5 + 40) = 0xE500000000000000;
  sub_26812C2A8(v3, v2, &unk_28024E7C0, &unk_2683D6CA0);
  v6 = sub_2683CF168();
  OUTLINED_FUNCTION_13(v6);
  if (v7)
  {
    sub_26812C310(v2, &unk_28024E7C0, &unk_2683D6CA0);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v3;
    __swift_allocate_boxed_opaque_existential_0((v5 + 48));
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_21();
    v8();
  }

  v9 = OUTLINED_FUNCTION_6();
  v10 = OUTLINED_FUNCTION_22(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_8(v10);
  v12 = OUTLINED_FUNCTION_18(30);

  return v13(v12);
}

uint64_t sub_26812B1E8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_10();

    return v9(v8);
  }
}

uint64_t sub_26812B318()
{
  OUTLINED_FUNCTION_14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26812B380(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26812B394()
{
  OUTLINED_FUNCTION_25();
  v9 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20(v3);
  v0[4] = v4;
  OUTLINED_FUNCTION_4(v4, xmmword_2683D1EC0);
  v4[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v4[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12();
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_9(v5);
  v6 = OUTLINED_FUNCTION_17(37);

  return v7(v6);
}

uint64_t sub_26812B488()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_5();

    return v9(v8);
  }
}

uint64_t sub_26812B5B0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26812B5C4()
{
  OUTLINED_FUNCTION_25();
  v9 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20(v3);
  v0[4] = v4;
  OUTLINED_FUNCTION_4(v4, xmmword_2683D1EC0);
  v4[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v4[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12();
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_9(v5);
  v6 = OUTLINED_FUNCTION_17(39);

  return v7(v6);
}

uint64_t sub_26812B6B8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26812B6CC()
{
  OUTLINED_FUNCTION_25();
  v9 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v4 = OUTLINED_FUNCTION_20(v3);
  v0[4] = v4;
  OUTLINED_FUNCTION_4(v4, xmmword_2683D1EC0);
  v4[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v4[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12();
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_9(v5);
  v6 = OUTLINED_FUNCTION_17(35);

  return v7(v6);
}

uint64_t sub_26812B7C0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_5();

    return v9(v8);
  }
}

uint64_t sub_26812B8E8()
{
  OUTLINED_FUNCTION_14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26812B948(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26812B964()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_2683D1ED0;
  *(v2 + 32) = 7368801;
  *(v2 + 40) = 0xE300000000000000;
  if (v1)
  {
    v3 = sub_2683CF138();
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 64);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0xD000000000000014;
  *(v2 + 88) = 0x80000002683FD0D0;
  v7 = MEMORY[0x277D839B0];
  *(v2 + 96) = v6;
  *(v2 + 120) = v7;
  *(v2 + 128) = 1702129518;
  *(v2 + 136) = 0xE400000000000000;
  v8 = 0;
  if (v5)
  {
    v8 = type metadata accessor for NotebookNoteConcept(0);
  }

  else
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  *(v2 + 144) = v5;
  *(v2 + 168) = v8;
  v13 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_22(v9);
  *v10 = v11;
  v10[1] = sub_26812BB1C;

  return v13(0xD000000000000027, 0x80000002683FD0F0, v2);
}

uint64_t sub_26812BB1C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_5();

    return v9(v8);
  }
}

uint64_t sub_26812BC44()
{
  OUTLINED_FUNCTION_14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26812BCA4()
{
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26812C3D8;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD000000000000022, 0x80000002683FD0A0, v2);
}

uint64_t sub_26812BD54()
{
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26812C3D8;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD000000000000024, 0x80000002683FD070, v2);
}

uint64_t sub_26812BE04()
{
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_6();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26812BEB4;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD000000000000020, 0x80000002683FD040, v2);
}

uint64_t sub_26812BEB4()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_26812BFA8(uint64_t a1)
{
  swift_allocObject();
  OUTLINED_FUNCTION_21();
  return sub_26812BFF8(v1, v2, v3);
}

uint64_t sub_26812BFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2683CF238();
  OUTLINED_FUNCTION_19();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v12 = OUTLINED_FUNCTION_23(v11);
  MEMORY[0x28223BE20](v12);
  sub_26812C2A8(a1, &v16 - v13, &qword_28024D258, &unk_2683D1F60);
  (*(v7 + 16))(v10, a2, v3);
  v14 = sub_2683CF178();
  (*(v7 + 8))(a2, v3);
  sub_26812C310(a1, &qword_28024D258, &unk_2683D1F60);
  return v14;
}

uint64_t sub_26812C170(uint64_t a1, uint64_t a2)
{
  sub_2683CF238();
  OUTLINED_FUNCTION_19();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_2683CF188();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_26812C270()
{
  v0 = sub_2683CF1A8();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_26812C2A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26812C310(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

__n128 *OUTLINED_FUNCTION_4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x736D657469;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_6()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_12()
{
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook12CommonErrorsO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26812C600(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 33))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26812C640(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_26812C688(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_26812C6B8()
{
  result = qword_28024D270;
  if (!qword_28024D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D270);
  }

  return result;
}

uint64_t sub_26812C70C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F220, &qword_2683D20F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683D1EC0;
  *(inited + 32) = sub_2683CFA78();
  *(inited + 40) = v2;
  v3 = *(v0 + 16);
  v8 = *v0;
  v9 = v3;
  v10 = *(v0 + 32);
  sub_26812CA1C(v0, v7);
  v4 = sub_2683CFAD8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  return sub_2683CF9D8();
}

uint64_t sub_26812C7CC(uint64_t *a1, int8x16_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  switch(*(a1 + 32))
  {
    case 1:
      if (a2[2].i8[0] == 1)
      {
        goto LABEL_17;
      }

      return 0;
    case 2:
      if (a2[2].i8[0] == 2)
      {
        goto LABEL_17;
      }

      return 0;
    case 3:
      if (a2[2].i8[0] != 3)
      {
        return 0;
      }

LABEL_17:
      if (v4 != a2->i64[0] || v5 != a2->i64[1])
      {
        goto LABEL_21;
      }

      return 1;
    case 4:
      if (a2[2].i8[0] == 4)
      {
        v14 = vorrq_s8(*a2, a2[1]);
        if (!*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)))
        {
          return 1;
        }
      }

      return 0;
    default:
      if (a2[2].i8[0])
      {
        return 0;
      }

      v8 = a2[1].i64[0];
      v9 = a2[1].i64[1];
      v10 = v4 == a2->i64[0] && v5 == a2->i64[1];
      if (v10 || (v11 = sub_2683D0598(), result = 0, (v11 & 1) != 0))
      {
        if (v6 == v8 && v7 == v9)
        {
          return 1;
        }

        else
        {
LABEL_21:

          return sub_2683D0598();
        }
      }

      return result;
  }
}

uint64_t sub_26812C908(uint64_t a1)
{
  v2 = sub_26812C9C8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26812C944(uint64_t a1)
{
  v2 = sub_26812C9C8();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_26812C9C8()
{
  result = qword_28024D278;
  if (!qword_28024D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D278);
  }

  return result;
}

uint64_t sub_26812CA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v213 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D280, &qword_2683D20F8);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v224 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D288, &qword_2683D2100);
  OUTLINED_FUNCTION_23(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  v223 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D290, &qword_2683D2108);
  OUTLINED_FUNCTION_23(v10);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  v222 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D298, &qword_2683D2110);
  OUTLINED_FUNCTION_23(v13);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2A0, &qword_2683D2118);
  OUTLINED_FUNCTION_23(v16);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2A8, &qword_2683D2120);
  OUTLINED_FUNCTION_23(v19);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_0();
  v235 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2B0, &qword_2683D2128);
  OUTLINED_FUNCTION_23(v22);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_0();
  v234 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2B8, &qword_2683D2130);
  OUTLINED_FUNCTION_23(v25);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5_0();
  v233 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2C0, &qword_2683D2138);
  OUTLINED_FUNCTION_23(v28);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_0();
  v232 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2C8, &qword_2683D2140);
  OUTLINED_FUNCTION_23(v31);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_5_0();
  v231 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2D0, &qword_2683D2148);
  OUTLINED_FUNCTION_23(v34);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_5_0();
  v230 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2D8, &qword_2683D2150);
  OUTLINED_FUNCTION_23(v37);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5_0();
  v229 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2E0, &qword_2683D2158);
  OUTLINED_FUNCTION_23(v40);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2E8, &qword_2683D9190);
  OUTLINED_FUNCTION_23(v43);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2F0, &qword_2683D2160);
  OUTLINED_FUNCTION_23(v46);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2F8, &qword_2683D2168);
  OUTLINED_FUNCTION_23(v49);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D300, &qword_2683D2170);
  OUTLINED_FUNCTION_23(v52);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D308, &qword_2683D2178);
  OUTLINED_FUNCTION_23(v55);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D310, &qword_2683D2180);
  OUTLINED_FUNCTION_23(v58);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D318, &qword_2683D2188);
  OUTLINED_FUNCTION_23(v61);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v63);
  v241 = sub_2683CD1F8();
  v64 = *(v241 - 8);
  MEMORY[0x28223BE20](v241);
  OUTLINED_FUNCTION_2_1();
  v217 = v65;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v66);
  v68 = v207 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D320, &qword_2683D2190);
  OUTLINED_FUNCTION_23(v69);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D328, &qword_2683D2198);
  v72 = OUTLINED_FUNCTION_23(v71);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_2_1();
  v225 = v73;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v74);
  v76 = v207 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D330, &qword_2683D21A0);
  v78 = OUTLINED_FUNCTION_23(v77);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_2_1();
  v227 = v79;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v80);
  v219 = v207 - v81;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v82);
  v84 = v207 - v83;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D338, &qword_2683D21A8);
  v86 = OUTLINED_FUNCTION_23(v85);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_2_1();
  v226 = v87;
  OUTLINED_FUNCTION_8_0();
  v89 = MEMORY[0x28223BE20](v88);
  v91 = v207 - v90;
  MEMORY[0x28223BE20](v89);
  v93 = v207 - v92;
  v94 = sub_2683CE658();
  v238 = v93;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v94);
  sub_2683CEA48();
  v228 = v84;
  OUTLINED_FUNCTION_4_0();
  v218 = v98;
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v98);
  sub_2683CE528();
  v237 = v76;
  OUTLINED_FUNCTION_4_0();
  v209 = v102;
  __swift_storeEnumTagSinglePayload(v103, v104, v105, v102);
  v236 = v2;
  if (sub_2683CD6C8())
  {
    sub_2683CDC08();
    v107 = v106;

    if (v107)
    {
      sub_2683CE648();
      OUTLINED_FUNCTION_4_0();
      __swift_storeEnumTagSinglePayload(v108, v109, v110, v111);
      sub_2683CE638();
      v112 = v238;
      sub_26812D9E0(v238, &qword_28024D338, &qword_2683D21A8);
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v113, v114, v115, v94);
      sub_26812DA84(v91, v112, &qword_28024D338, &qword_2683D21A8);
    }
  }

  if (!sub_2683CD6C8())
  {
    goto LABEL_29;
  }

  v116 = sub_2683CD508();

  if (!v116)
  {
    goto LABEL_29;
  }

  v207[1] = a2;
  v118 = 0;
  v119 = *(v116 + 16);
  v239 = v64 + 16;
  v240 = v119;
  v215 = (v64 + 32);
  v216 = MEMORY[0x277D84F90];
  v120 = (v64 + 8);
  v121 = v241;
  while (v240 != v118)
  {
    if (v118 >= *(v116 + 16))
    {
      __break(1u);
      return result;
    }

    v122 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v123 = *(v64 + 72);
    (*(v64 + 16))(v68, v116 + v122 + v123 * v118, v121);
    v125 = sub_2683CD1E8();
    v126 = v124;
    if (qword_28024C950 == -1)
    {
      if (!v124)
      {
        goto LABEL_16;
      }

LABEL_11:
      if (v125 == qword_28027CAA8 && v126 == unk_28027CAB0)
      {
      }

      else
      {
        v128 = sub_2683D0598();

        if ((v128 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v121 = v241;
      v208 = *v215;
      v208(v217, v68, v241);
      v129 = v216;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v131 = v129;
      v242 = v129;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2683905A8(0, *(v129 + 16) + 1, 1);
        v121 = v241;
        v131 = v242;
      }

      v133 = *(v131 + 16);
      v132 = *(v131 + 24);
      if (v133 >= v132 >> 1)
      {
        sub_2683905A8(v132 > 1, v133 + 1, 1);
        v121 = v241;
        v131 = v242;
      }

      ++v118;
      *(v131 + 16) = v133 + 1;
      v216 = v131;
      result = (v208)(v131 + v122 + v133 * v123, v217, v121);
    }

    else
    {
      swift_once();
      if (v126)
      {
        goto LABEL_11;
      }

LABEL_16:
      v121 = v241;
      result = (*v120)(v68, v241);
      ++v118;
    }
  }

  if (v216)
  {
    v134 = v214;
    sub_2682B2AA8(v216);

    v135 = v241;
    if (__swift_getEnumTagSinglePayload(v134, 1, v241) == 1)
    {
      sub_26812D9E0(v134, &qword_28024D318, &qword_2683D2188);
    }

    else
    {
      sub_2683CD1D8();
      (*v120)(v134, v135);
      v136 = sub_2683CE798();
      OUTLINED_FUNCTION_0_2(v210, v137, v138, v136);
      sub_2683CE788();
      OUTLINED_FUNCTION_4_0();
      __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
      OUTLINED_FUNCTION_9_0();
      sub_2683CE778();
      sub_2683CE7A8();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v143, v144, v145, v146);
      sub_2683CE518();
      OUTLINED_FUNCTION_4_0();
      __swift_storeEnumTagSinglePayload(v147, v148, v149, v150);
      v151 = v212;
      sub_26812DA38(v213, v212, &qword_28024D2E8, &qword_2683D9190);
      sub_2682D9D88(v151, v211);
      v152 = v225;
      sub_2683CE508();
      v153 = v237;
      sub_26812D9E0(v237, &qword_28024D328, &qword_2683D2198);
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v154, v155, v156, v209);
      sub_26812DA84(v152, v153, &qword_28024D328, &qword_2683D2198);
    }
  }

LABEL_29:
  sub_2683CE8D8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v157, v158, v159, v160);
  sub_26812DA38(v237, v225, &qword_28024D328, &qword_2683D2198);
  v161 = v219;
  sub_2683CEA38();
  v162 = v228;
  v163 = OUTLINED_FUNCTION_9_0();
  sub_26812D9E0(v163, v164, &qword_2683D21A0);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v165, v166, v167, v218);
  sub_26812DA84(v161, v162, &qword_28024D330, &qword_2683D21A0);
  v168 = sub_2683CEA78();
  OUTLINED_FUNCTION_0_2(v229, v169, v170, v168);
  v171 = sub_2683CEA88();
  OUTLINED_FUNCTION_0_2(v230, v172, v173, v171);
  v174 = sub_2683CEAB8();
  OUTLINED_FUNCTION_0_2(v231, v175, v176, v174);
  v177 = sub_2683CEA58();
  OUTLINED_FUNCTION_0_2(v232, v178, v179, v177);
  v180 = sub_2683CEA28();
  OUTLINED_FUNCTION_0_2(v233, v181, v182, v180);
  sub_2683CEAC8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v183, v184, v185, v186);
  sub_26812DA38(v162, v227, &qword_28024D330, &qword_2683D21A0);
  v187 = sub_2683CEC08();
  OUTLINED_FUNCTION_0_2(v235, v188, v189, v187);
  v190 = sub_2683CEB88();
  OUTLINED_FUNCTION_0_2(v220, v191, v192, v190);
  v193 = sub_2683CE708();
  OUTLINED_FUNCTION_0_2(v221, v194, v195, v193);
  v196 = sub_2683CE6D8();
  OUTLINED_FUNCTION_0_2(v222, v197, v198, v196);
  sub_2683CE7C8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v199, v200, v201, v202);
  sub_26812DA38(v238, v226, &qword_28024D338, &qword_2683D21A8);
  if (sub_2683CD6C8())
  {
    sub_2683CDC08();
  }

  sub_2683CEA68();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v203, v204, v205, v206);
  sub_2683CEBC8();
  sub_26812D9E0(v237, &qword_28024D328, &qword_2683D2198);
  sub_26812D9E0(v228, &qword_28024D330, &qword_2683D21A0);
  return sub_26812D9E0(v238, &qword_28024D338, &qword_2683D21A8);
}

uint64_t sub_26812D9E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26812DA38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_11_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1();
  v5 = OUTLINED_FUNCTION_9_0();
  v6(v5);
  return v4;
}

uint64_t sub_26812DA84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_11_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1();
  v5 = OUTLINED_FUNCTION_9_0();
  v6(v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_26812DB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D358, &qword_2683D21B0);
  OUTLINED_FUNCTION_0_3();
  v46 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D360, &qword_2683E65A0);
  OUTLINED_FUNCTION_0_3();
  v45 = v13;
  MEMORY[0x28223BE20](v14);
  v50 = &v43 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D368, &unk_2683E3DC0);
  OUTLINED_FUNCTION_0_3();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  v22 = MEMORY[0x277D84F90];
  if (a1)
  {
    v44 = a2;
    KeyPath = swift_getKeyPath();
    v24 = *(a1 + 16);
    if (v24)
    {
      v43 = v12;
      v47 = a3;
      v48 = v11;
      v49 = v7;
      v54 = v22;
      v53 = KeyPath;
      sub_2683D0228();
      v26 = *(v18 + 16);
      v25 = v18 + 16;
      v52 = v26;
      v27 = a1 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
      v28 = *(v25 + 56);
      do
      {
        v52(v21, v27, v16);
        swift_getAtKeyPath();
        (*(v25 - 8))(v21, v16);
        sub_2683D01F8();
        sub_2683D0238();
        sub_2683D0248();
        sub_2683D0208();
        v27 += v28;
        --v24;
      }

      while (v24);

      v29 = v54;
      v11 = v48;
      v7 = v49;
      a3 = v47;
      v22 = MEMORY[0x277D84F90];
      v12 = v43;
    }

    else
    {

      v29 = MEMORY[0x277D84F90];
    }

    a2 = v44;
  }

  else
  {
    v29 = 0;
  }

  v30 = v50;
  if (!a2)
  {
    v36 = 0;
    if (a3)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v31 = swift_getKeyPath();
  v32 = *(a2 + 16);
  if (!v32)
  {

    v36 = MEMORY[0x277D84F90];
    if (a3)
    {
      goto LABEL_16;
    }

LABEL_21:
    v41 = 0;
    goto LABEL_23;
  }

  v49 = v7;
  v50 = v29;
  v47 = a3;
  v48 = v11;
  v54 = v22;
  v53 = v31;
  sub_2683D0228();
  v52 = *(v45 + 16);
  v33 = a2 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
  v34 = *(v45 + 72);
  v35 = (v45 + 8);
  do
  {
    v52(v30, v33, v12);
    swift_getAtKeyPath();
    (*v35)(v30, v12);
    sub_2683D01F8();
    sub_2683D0238();
    sub_2683D0248();
    sub_2683D0208();
    v33 += v34;
    --v32;
  }

  while (v32);

  v36 = v54;
  v11 = v48;
  v7 = v49;
  a3 = v47;
  v29 = v50;
  v22 = MEMORY[0x277D84F90];
  if (!v47)
  {
    goto LABEL_21;
  }

LABEL_16:
  swift_getKeyPath();
  v37 = *(a3 + 16);
  if (v37)
  {
    v49 = v36;
    v50 = v29;
    v54 = v22;
    sub_2683D0228();
    v38 = *(v46 + 16);
    v39 = a3 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v52 = *(v46 + 72);
    v53 = v38;
    v40 = (v46 + 8);
    do
    {
      v53(v11, v39, v7);
      swift_getAtKeyPath();
      (*v40)(v11, v7);
      sub_2683D01F8();
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
      v39 += v52;
      --v37;
    }

    while (v37);

    v41 = v54;
    v36 = v49;
    v29 = v50;
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
  }

LABEL_23:
  sub_26812E0F0(v29, v36, v41);
}

void *sub_26812E0A8@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  result = sub_2683CC238();
  *a3 = v5;
  return result;
}

uint64_t sub_26812E0F0(void *a1, void *a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v6 = sub_2683CC818();
  v7 = [v6 code];

  v8 = sub_2683CC818();
  v9 = [v8 userActivity];

  v10 = [objc_allocWithZone(MEMORY[0x277CD4060]) initWithCode:v7 userActivity:v9];
  if (a1)
  {
    sub_268129504(0, &qword_28024D350, 0x277CD3E00);
    a1 = sub_2683CFC98();
  }

  [v10 setNotes_];

  if (a2)
  {
    sub_268129504(0, &qword_280253310, 0x277CD4220);
    a2 = sub_2683CFC98();
  }

  [v10 setTasks_];

  if (a3)
  {
    sub_268129504(0, &qword_280253320, 0x277CD4228);
    a3 = sub_2683CFC98();
  }

  [v10 setTaskLists_];

  sub_2683CC828();
  sub_2683CC848();
  sub_268129504(0, &qword_28024D340, 0x277CD4058);
  sub_268129504(0, &qword_28024D348, 0x277CD4060);

  return sub_2683CC838();
}

uint64_t sub_26812E314(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v56 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v56 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v61 = &v56 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v56 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v56 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v56 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v56 - v23;
  MEMORY[0x28223BE20](v22);
  v27 = &v56 - v26;
  if (!a1)
  {
    return 0;
  }

  v59 = v25;
  v60 = v1;
  sub_2683CEF58();
  swift_allocObject();
  v28 = a1;
  sub_2683CEF48();
  sub_2683ABC94(v28);
  v58 = v7;
  if (v29)
  {
    sub_2683CFB38();

    v30 = sub_2683CF168();
    v31 = 0;
  }

  else
  {
    v30 = sub_2683CF168();
    v31 = 1;
  }

  v33 = 1;
  __swift_storeEnumTagSinglePayload(v27, v31, 1, v30);
  sub_2683CEF38();

  sub_26812E924(v27);
  sub_2683ABCA0(v28);
  v57 = v10;
  if (v34)
  {
    sub_2683CFB38();

    v33 = 0;
  }

  sub_2683CF168();
  v35 = 1;
  OUTLINED_FUNCTION_0_4(v24, v33);
  sub_2683CEEE8();

  sub_26812E924(v24);
  sub_2683ABCAC(v28);
  if (v36)
  {
    sub_2683CFB38();

    v35 = 0;
  }

  v37 = v58;
  v38 = 1;
  OUTLINED_FUNCTION_0_4(v21, v35);
  sub_2683CEEF8();

  sub_26812E924(v21);
  sub_26812E98C(v28, &selRef_fullThoroughfare);
  if (v39)
  {
    sub_2683CFB38();

    v38 = 0;
  }

  v40 = v57;
  v41 = 1;
  OUTLINED_FUNCTION_0_4(v18, v38);
  sub_2683CEF08();

  sub_26812E924(v18);
  sub_2683ABCB8(v28);
  if (v42)
  {
    sub_2683CFB38();

    v41 = 0;
  }

  v43 = 1;
  OUTLINED_FUNCTION_0_4(v15, v41);
  sub_2683CEEC8();

  sub_26812E924(v15);
  sub_26812E98C(v28, &selRef_subAdministrativeArea);
  v45 = v61;
  if (v44)
  {
    sub_2683CFB38();

    v43 = 0;
  }

  v46 = 1;
  OUTLINED_FUNCTION_0_4(v45, v43);
  sub_2683CEF28();

  sub_26812E924(v45);
  sub_26812E98C(v28, &selRef_administrativeArea);
  if (v47)
  {
    sub_2683CFB38();

    v46 = 0;
  }

  v48 = 1;
  OUTLINED_FUNCTION_0_4(v40, v46);
  sub_2683CEF18();

  sub_26812E924(v40);
  sub_2683ABCC4(v28);
  if (v49)
  {
    sub_2683CFB38();

    v48 = 0;
  }

  v50 = v59;
  v51 = 1;
  OUTLINED_FUNCTION_0_4(v37, v48);
  sub_2683CEED8();

  sub_26812E924(v37);
  sub_26812E98C(v28, &selRef_country);
  if (v52)
  {
    sub_2683CFB38();

    v51 = 0;
  }

  OUTLINED_FUNCTION_0_4(v50, v51);
  sub_2683CEEB8();

  sub_26812E924(v50);
  sub_2683CF068();
  swift_allocObject();
  sub_2683CF058();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_2683D2250;
  sub_2683CEEA8();
  swift_allocObject();
  sub_2683CEE98();

  sub_2683CEE78();

  v54 = sub_2683CEE88();

  *(v53 + 32) = v54;
  sub_2683CF048();

  v32 = sub_2683CF078();

  return v32;
}

uint64_t sub_26812E924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26812E98C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2683CFA78();

  return v4;
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper(uint64_t a1)
{
  result = qword_28024D370;
  if (!qword_28024D370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26812EA78(uint64_t a1)
{
  result = type metadata accessor for NotebookNLv3Intent(319);
  if (v2 <= 0x3F)
  {
    result = sub_26812EB34(319, &qword_28024D380, &protocol descriptor for NotebookDateTimeResolving);
    if (v3 <= 0x3F)
    {
      result = sub_26812EB34(319, &qword_28024D388, &protocol descriptor for NotebookLocationResolving);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26812EB34(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_26812EB88(uint64_t a1)
{
  result = 0x6E776F6E6B6E752ELL;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x614465754479622ELL;
      break;
    case 2:
      result = 0x6669646F4D79622ELL;
      break;
    case 3:
      result = 0x746165724379622ELL;
      break;
    default:
      sub_2683D0178();

      v3 = sub_2683D0568();
      MEMORY[0x26D616690](v3);

      MEMORY[0x26D616690](41, 0xE100000000000000);
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_26812ECD4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 2)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v15 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v15, qword_28027C958);
    v16 = sub_2683CF7C8();
    v17 = sub_2683CFE98();
    if (!OUTLINED_FUNCTION_45(v17))
    {
      goto LABEL_19;
    }

    v18 = OUTLINED_FUNCTION_49();
    v19 = OUTLINED_FUNCTION_53();
    v36 = v19;
    *v18 = 136315138;
    v20 = sub_26812EB88(a1);
    v22 = sub_2681610A0(v20, v21, &v36);

    *(v18 + 4) = v22;
    goto LABEL_18;
  }

  if (a1 - 2 < 2)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v4 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v4, qword_28027C958);
    v5 = sub_2683CF7C8();
    v6 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v6))
    {
      v7 = OUTLINED_FUNCTION_49();
      v8 = OUTLINED_FUNCTION_53();
      v36 = v8;
      *v7 = 136315138;
      v9 = sub_26812EB88(a1);
      v11 = sub_2681610A0(v9, v10, &v36);

      *(v7 + 4) = v11;
      __swift_destroy_boxed_opaque_existential_0(v8);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    if (qword_28024C968 != -1)
    {
      swift_once();
    }

    v14 = qword_28027CAE0;
    goto LABEL_22;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v26 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v26, qword_28027C958);
  v16 = sub_2683CF7C8();
  v27 = sub_2683CFE78();
  if (OUTLINED_FUNCTION_45(v27))
  {
    v28 = OUTLINED_FUNCTION_49();
    v19 = OUTLINED_FUNCTION_53();
    v36 = v19;
    *v28 = 136315138;
    v29 = sub_26812EB88(a1);
    v31 = sub_2681610A0(v29, v30, &v36);

    *(v28 + 4) = v31;
LABEL_18:
    OUTLINED_FUNCTION_65(&dword_2680EB000, v23, v24, v25);
    __swift_destroy_boxed_opaque_existential_0(v19);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

LABEL_19:

  if (qword_28024C970 != -1)
  {
    swift_once();
  }

  v14 = qword_28027CAF8;
LABEL_22:
  v32 = sub_2683CE918();
  __swift_project_value_buffer(v32, v14);
  OUTLINED_FUNCTION_23_0();
  v34 = *(v33 + 16);

  return v34(a2);
}

uint64_t sub_26812F010()
{
  v0 = type metadata accessor for AppIntentNode(0);
  OUTLINED_FUNCTION_1();
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - v5;
  v7 = OUTLINED_FUNCTION_44();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v10 = OUTLINED_FUNCTION_23(v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  sub_268356630();
  sub_2681340E8(v15, v13, &qword_28024CE28, &qword_2683D1870);
  if (__swift_getEnumTagSinglePayload(v13, 1, v0) == 1)
  {
    sub_26812D9E0(v15, &qword_28024CE28, &qword_2683D1870);
    return 0;
  }

  else
  {
    sub_268134148(v13, v6, type metadata accessor for AppIntentNode);
    sub_2681341A8(v6, v4, type metadata accessor for AppIntentNode);
    sub_2683533F0();
    v16 = v17;
    sub_2683CD078();
    sub_2683CD058();
    sub_268134208(&qword_28024CE30, type metadata accessor for AppIntentNode, &unk_2683F3FA8);
    sub_2683CD5C8();

    sub_268134250(v4, type metadata accessor for AppIntentNode);
    sub_268134250(v6, type metadata accessor for AppIntentNode);
    sub_26812D9E0(v15, &qword_28024CE28, &qword_2683D1870);
  }

  return v16;
}

uint64_t sub_26812F288()
{
  if (qword_28024CB68 != -1)
  {
    swift_once();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_2_2();
  sub_268134208(v0, v1, &unk_2683F3D78);
  sub_2683CD5C8();
  if (v6 == 12)
  {
    v2 = 0;
  }

  else if (sub_2683551E8(v6) == 1684104562 && v3 == 0xE400000000000000)
  {

    v2 = 1;
  }

  else
  {
    v2 = sub_2683D0598();
  }

  return v2 & 1;
}

BOOL sub_26812F39C()
{
  if (qword_28024CC18 != -1)
  {
    OUTLINED_FUNCTION_35(&qword_28024CC18);
  }

  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_2_2();
  sub_268134208(v0, v1, &unk_2683F3D78);
  OUTLINED_FUNCTION_61();
  sub_2683CD5C8();
  v2 = v6;
  if (v6 == 7)
  {
    if (qword_28024CB78 != -1)
    {
      OUTLINED_FUNCTION_34(&qword_28024CB78);
    }

    OUTLINED_FUNCTION_61();
    sub_2683CD5C8();
    v2 = v5;
    if (v5 == 7)
    {
      if (qword_28024CB70 != -1)
      {
        OUTLINED_FUNCTION_33(&qword_28024CB70);
      }

      OUTLINED_FUNCTION_61();
      sub_2683CD5C8();
      v2 = v4;
    }
  }

  return sub_268320A10(v2) == 1;
}

uint64_t sub_26812F4C8()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 1512) = v0;
  *(v1 + 1879) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D390, &qword_2683D22E8);
  OUTLINED_FUNCTION_23(v3);
  *(v1 + 1560) = swift_task_alloc();
  v4 = type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper(0);
  OUTLINED_FUNCTION_3_1(v4);
  *(v1 + 1608) = v5;
  *(v1 + 1656) = *(v6 + 64);
  *(v1 + 1664) = OUTLINED_FUNCTION_55();
  *(v1 + 1672) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  OUTLINED_FUNCTION_3_1(v7);
  *(v1 + 1680) = v8;
  *(v1 + 1688) = *(v9 + 64);
  *(v1 + 1696) = OUTLINED_FUNCTION_55();
  *(v1 + 1704) = swift_task_alloc();
  *(v1 + 1712) = swift_task_alloc();
  v10 = type metadata accessor for NotebookNLv3Intent(0);
  *(v1 + 1720) = v10;
  OUTLINED_FUNCTION_3_1(v10);
  *(v1 + 1728) = v11;
  *(v1 + 1736) = *(v12 + 64);
  *(v1 + 1744) = OUTLINED_FUNCTION_55();
  *(v1 + 1752) = swift_task_alloc();
  *(v1 + 1760) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v13);
}

uint64_t sub_26812F694()
{
  if (*(v0 + 1879) == 1)
  {
    sub_2683B3C5C(*(v0 + 1760));
  }

  else
  {
    sub_2681341A8(*(v0 + 1512), *(v0 + 1760), type metadata accessor for NotebookNLv3Intent);
  }

  if (qword_28024CBE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_2();
  *(v0 + 1768) = sub_268134208(v1, v2, &unk_2683F3D78);
  sub_2683CD5C8();
  if (*(v0 + 1344))
  {
    v44 = *(v0 + 1344);
    v3 = *(v0 + 1336);
  }

  else
  {
    if (qword_28024CC20 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_30();
    sub_2683CD5C8();
    if (!*(v0 + 1360))
    {
      if (qword_28024CBD0 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_30();
      sub_2683CD5C8();
      v43 = *(v0 + 1368);
      v44 = *(v0 + 1376);
      goto LABEL_13;
    }

    v44 = *(v0 + 1360);
    v3 = *(v0 + 1352);
  }

  v43 = v3;
LABEL_13:
  if (qword_28024CC18 != -1)
  {
    OUTLINED_FUNCTION_35(&qword_28024CC18);
  }

  OUTLINED_FUNCTION_30();
  sub_2683CD5C8();
  v4 = *(v0 + 1876);
  if (v4 == 7)
  {
    if (qword_28024CB78 != -1)
    {
      OUTLINED_FUNCTION_34(&qword_28024CB78);
    }

    OUTLINED_FUNCTION_30();
    sub_2683CD5C8();
    v4 = *(v0 + 1877);
    if (v4 == 7)
    {
      if (qword_28024CB70 != -1)
      {
        OUTLINED_FUNCTION_33(&qword_28024CB70);
      }

      OUTLINED_FUNCTION_30();
      sub_2683CD5C8();
      LOBYTE(v4) = *(v0 + 1878);
    }
  }

  if (qword_28024CBF0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_30();
  sub_2683CD5C8();
  v5 = *(v0 + 1392);
  v42 = v4;
  if (v5)
  {
    v6 = *(v0 + 1384);
  }

  else
  {
    if (qword_28024CBC0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_30();
    sub_2683CD5C8();
    v6 = *(v0 + 1400);
    v5 = *(v0 + 1408);
  }

  *(v0 + 1784) = v5;
  *(v0 + 1776) = v6;
  v7 = *(v0 + 1704);
  sub_268352A2C();
  v8 = sub_2683CD358();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    if (qword_28024CBA8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_30();
    v9 = *(v0 + 1704);
    sub_2683CD5C8();
    if (__swift_getEnumTagSinglePayload(v9, 1, v8) != 1)
    {
      sub_26812D9E0(*(v0 + 1704), &qword_28024D398, &qword_2683D22F0);
    }
  }

  else
  {
    v10 = *(v0 + 1712);
    OUTLINED_FUNCTION_23_0();
    (*(v11 + 32))(v10);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v8);
  }

  v12 = *(v0 + 1752);
  v40 = *(v0 + 1744);
  v41 = *(v0 + 1728);
  v13 = *(v0 + 1712);
  v14 = *(v0 + 1696);
  v36 = *(v0 + 1688);
  v15 = *(v0 + 1680);
  v16 = *(v0 + 1672);
  v38 = *(v0 + 1760);
  v39 = *(v0 + 1664);
  v17 = *(v0 + 1656);
  v18 = *(v0 + 1608);
  v19 = *(v0 + 1512);
  v37 = v19;
  sub_2681341A8(v38, v12, type metadata accessor for NotebookNLv3Intent);
  v20 = sub_26831E6D4(v12);
  *(v0 + 1792) = v20;
  sub_2681341A8(v19, v16, type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper);
  sub_2681340E8(v13, v14, &qword_28024D398, &qword_2683D22F0);
  v21 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v22 = (v21 + v17 + *(v15 + 80)) & ~*(v15 + 80);
  v23 = swift_allocObject();
  *(v0 + 1800) = v23;
  sub_268134148(v16, v23 + v21, type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper);
  sub_268133BC0(v14, v23 + v22);
  *(v23 + ((v36 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3A0, &unk_2683D8F70);
  swift_asyncLet_begin();
  sub_2681341A8(v37, v39, type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper);
  sub_2681341A8(v38, v40, type metadata accessor for NotebookNLv3Intent);
  v24 = (v21 + v17 + *(v41 + 80)) & ~*(v41 + 80);
  v25 = swift_allocObject();
  *(v0 + 1808) = v25;
  sub_268134148(v39, v25 + v21, type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper);
  sub_268134148(v40, v25 + v24, type metadata accessor for NotebookNLv3Intent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3A8, &qword_2683D2320);
  swift_asyncLet_begin();
  sub_268133FA8();
  *(v0 + 1816) = sub_2681BABB8(v43, v44);
  *(v0 + 1824) = sub_268320A10(v42);
  if (qword_28024CBF8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_30();
  *(v0 + 1832) = qword_28027CD38;
  v26 = sub_2683CD5D8();
  v27 = *(v26 + 16);
  v28 = (v26 + 32);
  v29 = 2;
  v30 = (v26 + 32);
  while (v27)
  {
    switch(*v30)
    {
      case 1:
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_7_0();
        break;
      case 2:
        OUTLINED_FUNCTION_4_1();
        break;
      case 3:
        OUTLINED_FUNCTION_10_1();
        break;
      case 4:
        v29 = 2;
        goto LABEL_93;
      case 6:
        OUTLINED_FUNCTION_58();
        break;
      case 7:
        OUTLINED_FUNCTION_9_1();
        break;
      case 8:
        OUTLINED_FUNCTION_11_1();
        break;
      case 9:
        OUTLINED_FUNCTION_14_0();
        break;
      case 0xA:
        OUTLINED_FUNCTION_57();
        break;
      case 0xB:
        OUTLINED_FUNCTION_17_0();
        break;
      case 0xC:
        OUTLINED_FUNCTION_6_1();
        break;
      case 0xD:
        OUTLINED_FUNCTION_22_0();
        break;
      case 0xE:
        OUTLINED_FUNCTION_5_1();
        break;
      case 0xF:
        OUTLINED_FUNCTION_20_0();
        break;
      case 0x10:
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_13_0();
        break;
      case 0x11:
        OUTLINED_FUNCTION_8_1();
        break;
      case 0x12:
        OUTLINED_FUNCTION_56();
        break;
      case 0x13:
        OUTLINED_FUNCTION_18_0();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_61();
    v31 = sub_2683D0598();

    ++v30;
    --v27;
    if (v31)
    {
      goto LABEL_85;
    }
  }

  v32 = *(v26 + 16);
  v29 = 1;
  while (2)
  {
    if (v32)
    {
      switch(*v28)
      {
        case 1:
          OUTLINED_FUNCTION_59();
          OUTLINED_FUNCTION_7_0();
          goto LABEL_82;
        case 2:
          OUTLINED_FUNCTION_4_1();
          goto LABEL_82;
        case 3:
          OUTLINED_FUNCTION_10_1();
          goto LABEL_82;
        case 5:
          v29 = 1;
LABEL_93:

          goto LABEL_85;
        case 6:
          OUTLINED_FUNCTION_58();
          goto LABEL_82;
        case 7:
          OUTLINED_FUNCTION_9_1();
          goto LABEL_82;
        case 8:
          OUTLINED_FUNCTION_11_1();
          goto LABEL_82;
        case 9:
          OUTLINED_FUNCTION_14_0();
          goto LABEL_82;
        case 0xA:
          OUTLINED_FUNCTION_57();
          goto LABEL_82;
        case 0xB:
          OUTLINED_FUNCTION_17_0();
          goto LABEL_82;
        case 0xC:
          OUTLINED_FUNCTION_6_1();
          goto LABEL_82;
        case 0xD:
          OUTLINED_FUNCTION_22_0();
          goto LABEL_82;
        case 0xE:
          OUTLINED_FUNCTION_5_1();
          goto LABEL_82;
        case 0xF:
          OUTLINED_FUNCTION_20_0();
          goto LABEL_82;
        case 0x10:
          OUTLINED_FUNCTION_59();
          OUTLINED_FUNCTION_13_0();
          goto LABEL_82;
        case 0x11:
          OUTLINED_FUNCTION_8_1();
          goto LABEL_82;
        case 0x12:
          OUTLINED_FUNCTION_56();
          goto LABEL_82;
        case 0x13:
          OUTLINED_FUNCTION_18_0();
          goto LABEL_82;
        default:
LABEL_82:
          v33 = sub_2683D0598();

          ++v28;
          --v32;
          if (v33)
          {
            goto LABEL_85;
          }

          continue;
      }
    }

    break;
  }

  v29 = 0;
LABEL_85:
  *(v0 + 1840) = v29;

  v34 = OUTLINED_FUNCTION_47();

  return MEMORY[0x282200930](v34);
}

uint64_t sub_2681300B8()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 1848) = v0;
  if (v0)
  {
    v2 = *(v1 + 1816);

    v3 = OUTLINED_FUNCTION_47();

    return MEMORY[0x282200920](v3);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_268130160);
  }
}

uint64_t sub_268130160()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 1560);
  v2 = *(v0 + 1464);
  *(v0 + 1856) = v2;
  v3 = v2;
  sub_268352FE8();
  v4 = type metadata accessor for NotebookLocationIntentNode(0);
  *(v0 + 1872) = __swift_getEnumTagSinglePayload(v1, 1, v4);
  sub_26812D9E0(v1, &qword_28024D390, &qword_2683D22E8);

  return MEMORY[0x282200928](v0 + 16, v0 + 1416, sub_268130210, v0 + 1520);
}

uint64_t sub_268130224()
{
  v45 = v0;
  v40 = *(v0 + 1416);
  v1 = v40;
  v2 = sub_2683CD5D8();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v42 = 6;
  v5 = (v2 + 32);
  while (v3)
  {
    switch(*v5)
    {
      case 1:
        OUTLINED_FUNCTION_7_0();
        break;
      case 2:
        OUTLINED_FUNCTION_4_1();
        break;
      case 3:
        OUTLINED_FUNCTION_10_1();
        break;
      case 4:
        OUTLINED_FUNCTION_15_0();
        break;
      case 5:
        OUTLINED_FUNCTION_21_0();
        break;
      case 6:
        OUTLINED_FUNCTION_16_0();
        break;
      case 7:
        OUTLINED_FUNCTION_9_1();
        break;
      case 8:
        OUTLINED_FUNCTION_11_1();
        break;
      case 9:
        OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_14_0();
        break;
      case 0xB:
        OUTLINED_FUNCTION_17_0();
        break;
      case 0xC:
        OUTLINED_FUNCTION_6_1();
        break;
      case 0xD:
        OUTLINED_FUNCTION_22_0();
        break;
      case 0xE:
        OUTLINED_FUNCTION_5_1();
        break;
      case 0xF:
        OUTLINED_FUNCTION_20_0();
        break;
      case 0x10:
        OUTLINED_FUNCTION_13_0();
        break;
      case 0x11:
        OUTLINED_FUNCTION_8_1();
        break;
      case 0x12:
        v37 = 6;
        goto LABEL_104;
      case 0x13:
        OUTLINED_FUNCTION_18_0();
        break;
      default:
        break;
    }

    v6 = sub_2683D0598();

    ++v5;
    --v3;
    if (v6)
    {
      goto LABEL_45;
    }
  }

  v7 = *(v2 + 16);
  while (v7)
  {
    switch(*v4)
    {
      case 1:
        OUTLINED_FUNCTION_7_0();
        break;
      case 2:
        OUTLINED_FUNCTION_4_1();
        break;
      case 3:
        OUTLINED_FUNCTION_10_1();
        break;
      case 4:
        OUTLINED_FUNCTION_15_0();
        break;
      case 6:
        OUTLINED_FUNCTION_16_0();
        break;
      case 7:
        OUTLINED_FUNCTION_9_1();
        break;
      case 8:
        OUTLINED_FUNCTION_11_1();
        break;
      case 9:
        OUTLINED_FUNCTION_14_0();
        goto LABEL_34;
      case 0xB:
        OUTLINED_FUNCTION_17_0();
        break;
      case 0xC:
        OUTLINED_FUNCTION_6_1();
        break;
      case 0xD:
        OUTLINED_FUNCTION_22_0();
        break;
      case 0xE:
        OUTLINED_FUNCTION_5_1();
        break;
      case 0xF:
        OUTLINED_FUNCTION_20_0();
        break;
      case 0x10:
        v37 = 4;
LABEL_104:
        v42 = v37;

        goto LABEL_45;
      case 0x11:
        OUTLINED_FUNCTION_8_1();
        break;
      case 0x12:
LABEL_34:
        OUTLINED_FUNCTION_52();
        break;
      case 0x13:
        OUTLINED_FUNCTION_18_0();
        break;
      default:
        break;
    }

    v8 = sub_2683D0598();

    ++v4;
    --v7;
    if (v8)
    {
      v42 = 4;
      goto LABEL_45;
    }
  }

  v42 = 0;
LABEL_45:

  v9 = sub_2683CD5D8();
  v10 = *(v9 + 16);
  v11 = (v9 + 32);
  v41 = 2;
  v12 = (v9 + 32);
  while (v10)
  {
    switch(*v12)
    {
      case 1:
        OUTLINED_FUNCTION_7_0();
        break;
      case 2:
        OUTLINED_FUNCTION_4_1();
        break;
      case 3:
        OUTLINED_FUNCTION_10_1();
        break;
      case 4:
        OUTLINED_FUNCTION_15_0();
        break;
      case 5:
        OUTLINED_FUNCTION_21_0();
        break;
      case 6:
        OUTLINED_FUNCTION_16_0();
        break;
      case 7:
        OUTLINED_FUNCTION_9_1();
        break;
      case 8:
        OUTLINED_FUNCTION_11_1();
        break;
      case 9:
        OUTLINED_FUNCTION_52();
        OUTLINED_FUNCTION_14_0();
        break;
      case 0xA:
        v38 = 2;
        goto LABEL_102;
      case 0xB:
        OUTLINED_FUNCTION_17_0();
        break;
      case 0xC:
        OUTLINED_FUNCTION_6_1();
        break;
      case 0xD:
        OUTLINED_FUNCTION_22_0();
        break;
      case 0xE:
        OUTLINED_FUNCTION_5_1();
        break;
      case 0xF:
        OUTLINED_FUNCTION_20_0();
        break;
      case 0x10:
        OUTLINED_FUNCTION_13_0();
        break;
      case 0x11:
        OUTLINED_FUNCTION_8_1();
        break;
      case 0x12:
        OUTLINED_FUNCTION_52();
        break;
      case 0x13:
        OUTLINED_FUNCTION_18_0();
        break;
      default:
        break;
    }

    v13 = sub_2683D0598();

    ++v12;
    --v10;
    if (v13)
    {
      goto LABEL_91;
    }
  }

  v14 = *(v9 + 16);
  while (2)
  {
    if (v14)
    {
      switch(*v11)
      {
        case 1:
          OUTLINED_FUNCTION_7_0();
          goto LABEL_88;
        case 2:
          OUTLINED_FUNCTION_4_1();
          goto LABEL_88;
        case 3:
          OUTLINED_FUNCTION_10_1();
          goto LABEL_88;
        case 4:
          OUTLINED_FUNCTION_15_0();
          goto LABEL_88;
        case 5:
          OUTLINED_FUNCTION_21_0();
          goto LABEL_88;
        case 6:
          OUTLINED_FUNCTION_16_0();
          goto LABEL_88;
        case 7:
          OUTLINED_FUNCTION_9_1();
          goto LABEL_88;
        case 8:
          OUTLINED_FUNCTION_11_1();
          goto LABEL_88;
        case 9:
          v38 = 1;
LABEL_102:
          v41 = v38;

          break;
        case 0xB:
          OUTLINED_FUNCTION_17_0();
          goto LABEL_88;
        case 0xC:
          OUTLINED_FUNCTION_6_1();
          goto LABEL_88;
        case 0xD:
          OUTLINED_FUNCTION_22_0();
          goto LABEL_88;
        case 0xE:
          OUTLINED_FUNCTION_5_1();
          goto LABEL_88;
        case 0xF:
          OUTLINED_FUNCTION_20_0();
          goto LABEL_88;
        case 0x10:
          OUTLINED_FUNCTION_13_0();
          goto LABEL_88;
        case 0x11:
          OUTLINED_FUNCTION_8_1();
          goto LABEL_88;
        case 0x12:
          OUTLINED_FUNCTION_52();
          goto LABEL_88;
        case 0x13:
          OUTLINED_FUNCTION_18_0();
          goto LABEL_88;
        default:
LABEL_88:
          v15 = sub_2683D0598();

          ++v11;
          --v14;
          if ((v15 & 1) == 0)
          {
            continue;
          }

          v41 = 1;
          break;
      }
    }

    else
    {
      v41 = 0;
    }

    break;
  }

LABEL_91:
  v16 = *(v0 + 1872);
  v17 = *(v0 + 1856);
  v18 = *(v0 + 1840);
  v19 = *(v0 + 1824);
  v20 = *(v0 + 1792);
  v21 = *(v0 + 1784);

  objc_allocWithZone(MEMORY[0x277CD4058]);

  v22 = OUTLINED_FUNCTION_44();
  v24 = sub_268133AC0(v22, v23, v21, v19, v18, v17, v16 != 1, v40, v20, v42, v41, 0, 0);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v25 = sub_2683CF7E8();
  __swift_project_value_buffer(v25, qword_28027C958);
  v26 = v24;
  v27 = sub_2683CF7C8();
  v28 = sub_2683CFE98();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_49();
    v43 = OUTLINED_FUNCTION_53();
    v44 = v43;
    *v29 = 136315138;
    v30 = v26;
    v31 = [v30 description];
    v32 = sub_2683CFA78();
    v34 = v33;

    v35 = sub_2681610A0(v32, v34, &v44);

    *(v29 + 4) = v35;

    _os_log_impl(&dword_2680EB000, v27, v28, "⚙️ [SearchForNotebookItemsNLv3IntentWrapper] made intent: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  *(v0 + 1864) = sub_26821AD1C();
  v36 = OUTLINED_FUNCTION_47();

  return MEMORY[0x282200920](v36);
}

uint64_t sub_268130AA0()
{
  OUTLINED_FUNCTION_24_0();
  sub_26812D9E0(v1, &qword_28024D398, &qword_2683D22F0);
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_37();
  v3 = *(v0 + 1864);

  return v2(v3);
}

uint64_t sub_268130BDC()
{
  OUTLINED_FUNCTION_24_0();
  sub_26812D9E0(v0, &qword_28024D398, &qword_2683D22F0);
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_268130CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_2683CE918();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268130DC8);
}

uint64_t sub_268130DC8()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper(0);
  sub_268134034(v2 + *(v4 + 20), (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_2681340E8(v3, v1, &qword_28024D398, &qword_2683D22F0);
  v5 = sub_2683CD358();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v5);
  v7 = v0[14];
  if (EnumTagSinglePayload == 1)
  {
    sub_26812D9E0(v0[14], &qword_28024D398, &qword_2683D22F0);
    v8 = 0;
  }

  else
  {
    v8 = sub_2683CD2E8();
    OUTLINED_FUNCTION_23_0();
    (*(v9 + 8))(v7, v5);
  }

  v0[15] = v8;
  sub_26812ECD4(v0[10], v0[13]);
  v10 = OUTLINED_FUNCTION_6();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_268130F4C;
  v11 = v0[13];

  return v13(v8, v11, 0);
}

uint64_t sub_268130F4C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v2 = v1;
  v4 = v3[13];
  v5 = v3[12];
  v6 = v3[11];
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v10 + 136) = v9;

  (*(v5 + 8))(v4, v6);
  v11 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_2681310AC()
{
  OUTLINED_FUNCTION_14();
  **(v0 + 56) = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_268131128()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  *(v1 + 88) = v6;
  *(v1 + 32) = v4;
  *(v1 + 40) = v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3D8, &qword_2683D2358);
  *(v1 + 48) = v7;
  OUTLINED_FUNCTION_3_1(v7);
  *(v1 + 56) = v8;
  v9 = swift_task_alloc();
  *(v1 + 64) = v9;
  if (v5)
  {

    v10 = swift_task_alloc();
    *(v1 + 72) = v10;
    *v10 = v1;
    v10[1] = sub_268131294;

    return sub_2681F58CC(v9, v5, v3);
  }

  else
  {

    OUTLINED_FUNCTION_37();

    return v12(0);
  }
}

uint64_t sub_268131294()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {
    v7 = sub_268131510;
  }

  else
  {
    v7 = sub_268131394;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268131394()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 88);
  v2 = sub_268133084(*(v0 + 64), *(v0 + 32));
  if (v1 == 1)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v3 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v3, qword_28027C958);
    v4 = sub_2683CF7C8();
    v5 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_45(v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2680EB000, v4, v5, "[NotebookDateTimeResolving] Using manually-adjusted date components for witching hour", v6, 2u);
      OUTLINED_FUNCTION_25_0();
    }

    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);

    sub_268360AF0();
    v11 = v10;

    (*(v8 + 8))(v7, v9);
    v2 = v11;
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  }

  OUTLINED_FUNCTION_37();

  return v12(v2);
}

uint64_t sub_268131510()
{
  v21 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v1 = v0[10];
  v2 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v2, qword_28027C958);

  v3 = v1;
  v4 = sub_2683CF7C8();
  v5 = sub_2683CFE78();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136315394;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
    v10 = sub_2683CFAD8();
    v12 = sub_2681610A0(v10, v11, &v20);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v0[3] = v7;
    sub_2683CEB78();
    sub_268134208(&qword_28024D3E8, MEMORY[0x277D56498], MEMORY[0x277D564C0]);
    v13 = sub_2683D0568();
    v15 = sub_2681610A0(v13, v14, &v20);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_2680EB000, v4, v5, "[NotebookDateTimeResolving] makeRecommendation threw error: %s, returning %s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_25_0();
  }

  v16 = v0[10];
  v17 = sub_2683CEB48();

  OUTLINED_FUNCTION_37();

  return v18(v17);
}

uint64_t sub_268131768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D390, &qword_2683D22E8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3B0, &qword_2683D2328);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3B8, &qword_2683D2330);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268131878);
}

uint64_t sub_268131878()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[10];
  v2 = v0[8];
  v3 = type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper(0);
  sub_268134034(v2 + *(v3 + 24), (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_268352FE8();
  v4 = type metadata accessor for NotebookLocationIntentNode(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    v5 = v0[10];
    v6 = &qword_28024D390;
    v7 = &qword_2683D22E8;
LABEL_5:
    sub_26812D9E0(v5, v6, v7);
    v11 = v0[12];
    v12 = sub_2683CEBD8();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
    goto LABEL_7;
  }

  v8 = v0[10];
  v9 = v0[11];
  sub_2683531D0();
  sub_268134250(v8, type metadata accessor for NotebookLocationIntentNode);
  v10 = sub_2683CD4A8();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    v5 = v0[11];
    v6 = &qword_28024D3B0;
    v7 = &qword_2683D2328;
    goto LABEL_5;
  }

  v13 = v0[11];
  sub_2683CD488();
  OUTLINED_FUNCTION_23_0();
  (*(v14 + 8))(v13, v10);
LABEL_7:
  v15 = OUTLINED_FUNCTION_6();
  v0[13] = v15;
  *v15 = v0;
  v15[1] = sub_268131A48;
  v16 = v0[12];

  return v18(v16);
}

uint64_t sub_268131A48()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v9 + 112) = v8;
  *(v9 + 120) = v0;

  sub_26812D9E0(v5, &qword_28024D3B8, &qword_2683D2330);
  if (v0)
  {
    v10 = sub_268131C68;
  }

  else
  {
    v10 = sub_268131B78;
  }

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_268131B78()
{
  OUTLINED_FUNCTION_7();
  if (sub_2683ABE58())
  {
    v1 = *(v0 + 112) & 0xC000000000000001;
    sub_2683ABE60();
    if (v1)
    {
      v2 = MEMORY[0x26D616C90](0, *(v0 + 112));
    }

    else
    {
      v2 = *(*(v0 + 112) + 32);
    }
  }

  else
  {

    v2 = 0;
  }

  **(v0 + 56) = v2;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_268131C68()
{
  OUTLINED_FUNCTION_7();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_268131CEC()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3C0, &qword_2683D2340);
  v1[4] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_55();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3B8, &qword_2683D2330);
  OUTLINED_FUNCTION_23(v5);
  v1[9] = swift_task_alloc();
  v6 = sub_2683CEBD8();
  v1[10] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[11] = v7;
  v1[12] = OUTLINED_FUNCTION_55();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_268131EA0()
{
  v1 = v0[9];
  v2 = v0[10];
  sub_2681340E8(v0[2], v1, &qword_28024D3B8, &qword_2683D2330);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_26812D9E0(v0[9], &qword_28024D3B8, &qword_2683D2330);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v3 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v3, qword_28027C958);
    v4 = sub_2683CF7C8();
    v5 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_43(v5))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_29();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_36();
    }

    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_64();

    __asm { BRAA            X2, X16 }
  }

  v13 = v0[21];
  v14 = v0[10];
  v15 = v0[11];
  v16 = v0[9];
  v17 = *(v15 + 32);
  v0[22] = v17;
  v0[23] = (v15 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v17(v13, v16, v14);
  v18 = swift_task_alloc();
  v0[24] = v18;
  *v18 = v0;
  v18[1] = sub_268132114;
  OUTLINED_FUNCTION_64();

  return sub_26835FF4C(v19, v20);
}

uint64_t sub_268132114()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  if (v0)
  {
    v7 = sub_268132DD8;
  }

  else
  {
    v7 = sub_268132214;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268132214()
{
  v189 = v0;
  v1 = v0;
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(v4 + 16);
  v5(v2, v0[8], v3);
  v7 = *(v4 + 88);
  v6 = v4 + 88;
  v8 = v7(v2, v3);
  v187 = v0;
  if (v8 == *MEMORY[0x277D56080])
  {
    v9 = v0[22];
    v10 = v0[20];
    v11 = OUTLINED_FUNCTION_51();
    v12(v11);
    v9(v10, v6, v3);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v13 = v0[11];
    v14 = sub_2683CF7E8();
    __swift_project_value_buffer(v14, qword_28027C958);
    v15 = *(v13 + 16);
    v16 = OUTLINED_FUNCTION_32();
    v15(v16);
    v17 = sub_2683CF7C8();
    v18 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_43(v18))
    {
      v19 = OUTLINED_FUNCTION_39();
      v20 = OUTLINED_FUNCTION_53();
      v188 = v20;
      v21 = OUTLINED_FUNCTION_31(4.8149e-34);
      v15(v21);
      OUTLINED_FUNCTION_44();
      sub_2683CFAD8();
      v22 = OUTLINED_FUNCTION_41();
      v24 = v23(v22);
      v32 = OUTLINED_FUNCTION_54(v24, v25, v26, v27, v28, v29, v30, v31, v172, v174, v176, v178, v179, v181, v183, v1);

      *(v19 + 4) = v32;
      OUTLINED_FUNCTION_29();
      _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_36();
    }

    else
    {

      v67 = OUTLINED_FUNCTION_46();
      v68(v67);
    }

    v69 = v1[22];
    v70 = v1[20];
LABEL_20:
    v79 = v1[10];
    v80 = v1[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3C8, &qword_2683D2348);
    v81 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_2683D1EC0;
    v69(v72 + v81, v70, v79);
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277D56068])
  {
    v38 = v0[22];
    v39 = v0[18];
    v40 = OUTLINED_FUNCTION_51();
    v41(v40);
    v38(v39, v6, v3);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v42 = v0[11];
    v43 = sub_2683CF7E8();
    __swift_project_value_buffer(v43, qword_28027C958);
    v44 = *(v42 + 16);
    v45 = OUTLINED_FUNCTION_32();
    v44(v45);
    v46 = sub_2683CF7C8();
    v47 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_43(v47))
    {
      v48 = OUTLINED_FUNCTION_39();
      v49 = OUTLINED_FUNCTION_53();
      v188 = v49;
      v50 = OUTLINED_FUNCTION_31(4.8149e-34);
      v44(v50);
      OUTLINED_FUNCTION_44();
      sub_2683CFAD8();
      v51 = OUTLINED_FUNCTION_41();
      v53 = v52(v51);
      v61 = OUTLINED_FUNCTION_54(v53, v54, v55, v56, v57, v58, v59, v60, v172, v174, v176, v178, v179, v181, v183, v1);

      *(v48 + 4) = v61;
      OUTLINED_FUNCTION_29();
      _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_36();
    }

    else
    {

      v77 = OUTLINED_FUNCTION_46();
      v78(v77);
    }

    v69 = v1[22];
    v70 = v1[18];
    goto LABEL_20;
  }

  if (v8 == *MEMORY[0x277D56070])
  {
    v71 = v0[7];
    (*(v0[5] + 96))(v71, v0[4]);
    v72 = *v71;
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v73 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v73, qword_28027C958);

    v74 = sub_2683CF7C8();
    v75 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_45(v75))
    {
      v76 = OUTLINED_FUNCTION_49();
      *v76 = 134217984;
      *(v76 + 4) = *(v72 + 16);

      _os_log_impl(&dword_2680EB000, v74, v75, "[NotebookLocationResolving] found %ld recommendations", v76, 0xCu);
      OUTLINED_FUNCTION_25_0();
    }

    else
    {
    }
  }

  else if (v8 == *MEMORY[0x277D56078])
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v104 = v0[11];
    v105 = sub_2683CF7E8();
    __swift_project_value_buffer(v105, qword_28027C958);
    v106 = *(v104 + 16);
    v107 = OUTLINED_FUNCTION_32();
    v106(v107);
    v108 = sub_2683CF7C8();
    v109 = sub_2683CFE78();
    v110 = OUTLINED_FUNCTION_43(v109);
    v111 = v0[16];
    v112 = v0[11];
    if (v110)
    {
      v113 = OUTLINED_FUNCTION_39();
      v114 = OUTLINED_FUNCTION_53();
      v188 = v114;
      v115 = OUTLINED_FUNCTION_31(4.8149e-34);
      v106(v115);
      OUTLINED_FUNCTION_44();
      sub_2683CFAD8();
      v116 = (*(v112 + 8))(v111, v1);
      v124 = OUTLINED_FUNCTION_54(v116, v117, v118, v119, v120, v121, v122, v123, v172, v174, v176, v178, v179, v181, v106, v1);
      v106 = v185;

      *(v113 + 4) = v124;
      OUTLINED_FUNCTION_29();
      _os_log_impl(v125, v126, v127, v128, v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v114);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_36();
    }

    else
    {

      v155 = OUTLINED_FUNCTION_46();
      v156(v155);
    }

    v157 = v1[21];
    v158 = v1[10];
    v159 = v1[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3C8, &qword_2683D2348);
    v160 = (*(v159 + 80) + 32) & ~*(v159 + 80);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_2683D1EC0;
    (v106)(v72 + v160, v157, v158);
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v130 = v0[11];
    v131 = v0[8];
    v132 = v0[6];
    v133 = v0[4];
    v134 = sub_2683CF7E8();
    __swift_project_value_buffer(v134, qword_28027C958);
    v5(v132, v131, v133);
    v135 = *(v130 + 16);
    v136 = OUTLINED_FUNCTION_32();
    v135(v136);
    v137 = sub_2683CF7C8();
    v138 = sub_2683CFE78();
    v139 = os_log_type_enabled(v137, v138);
    v140 = v0[15];
    if (v139)
    {
      v177 = v0[11];
      v173 = v0[14];
      v175 = v0[10];
      v180 = v138;
      v141 = v0[6];
      v142 = v0[5];
      v143 = v0[4];
      v144 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      *v144 = 136315394;
      sub_268134094(&qword_28024D3D0, &qword_28024D3C0, &qword_2683D2340);
      v145 = v135;
      v146 = sub_2683D0568();
      v148 = v147;
      v186 = *(v142 + 8);
      v186(v141, v143);
      v1 = v0;
      v149 = v146;
      v135 = v145;
      v150 = sub_2681610A0(v149, v148, &v188);

      *(v144 + 4) = v150;
      *(v144 + 12) = 2080;
      (v145)(v173, v140, v175);
      v151 = sub_2683CFAD8();
      v153 = v152;
      (*(v177 + 8))(v140, v175);
      v154 = sub_2681610A0(v151, v153, &v188);

      *(v144 + 14) = v154;
      _os_log_impl(&dword_2680EB000, v137, v180, "[NotebookDateTimeResolving] unhandled recommendation of %s, returning NotebookLocationIntentNode as is %s", v144, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_25_0();
    }

    else
    {
      v161 = v0[10];
      v162 = v0[11];
      v164 = v187[5];
      v163 = v187[6];
      v165 = v187[4];

      (*(v162 + 8))(v140, v161);
      v186 = *(v164 + 8);
      v186(v163, v165);
    }

    v166 = v1[21];
    v168 = v1[10];
    v167 = v1[11];
    v169 = v1[7];
    v170 = v1[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3C8, &qword_2683D2348);
    v171 = (*(v167 + 80) + 32) & ~*(v167 + 80);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_2683D1EC0;
    (v135)(v72 + v171, v166, v168);
    v186(v169, v170);
  }

LABEL_21:
  v188 = MEMORY[0x277D84F90];
  v82 = *(v72 + 16);
  if (v82)
  {
    v83 = v1[11];
    v84 = *(v83 + 16);
    v83 += 16;
    v85 = v72 + ((*(v83 + 64) + 32) & ~*(v83 + 64));
    v182 = *(v83 + 56);
    v184 = v84;
    v86 = (v83 - 8);
    v87 = MEMORY[0x277D84F90];
    do
    {
      v88 = v87;
      v90 = v1[12];
      v89 = v1[13];
      v91 = v1[10];
      v184(v89, v85, v91);
      v184(v90, v89, v91);
      sub_2683CEBA8();
      if (v92)
      {
        sub_2683CEB98();
      }

      v93 = v1[12];
      v94 = v1[10];
      v95 = sub_2683CEBB8();
      v96 = *v86;
      (*v86)(v93, v94);
      v97 = OUTLINED_FUNCTION_44();
      v98 = v96(v97);
      v87 = v88;
      if (v95)
      {
        MEMORY[0x26D616770](v98);
        if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2683CFCD8();
        }

        sub_2683CFD08();
        v87 = v188;
      }

      v85 += v182;
      --v82;
      v1 = v187;
    }

    while (v82);
  }

  else
  {

    v87 = MEMORY[0x277D84F90];
  }

  v99 = v1[21];
  v100 = v1[10];
  v101 = v1[11];
  (*(v1[5] + 8))(v1[8], v1[4]);
  (*(v101 + 8))(v99, v100);

  OUTLINED_FUNCTION_37();

  return v102(v87);
}

void sub_268132DD8()
{
  (*(v0[11] + 8))(v0[21], v0[10]);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_64();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_268132EFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268132F90;

  return sub_26812F4C8();
}

uint64_t sub_268132F90()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  OUTLINED_FUNCTION_37();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_268133084(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3D8, &qword_2683D2358);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v62[-v9];
  v11 = *(v5 + 16);
  v11(&v62[-v9], a1, v4);
  v12 = (*(v5 + 88))(v10, v4);
  if (v12 == *MEMORY[0x277D56080])
  {
    (*(v5 + 96))(v10, v4);
    v13 = *v10;
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v14 = sub_2683CF7E8();
    __swift_project_value_buffer(v14, qword_28027C958);

    v15 = sub_2683CF7C8();
    v16 = sub_2683CFE98();

    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_12;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v66 = v13;
    v67 = v18;
    *v17 = 136315138;
    sub_2683CEB78();
    sub_268134208(&qword_28024D3E8, MEMORY[0x277D56498], MEMORY[0x277D564C0]);
    v19 = sub_2683D0568();
    v21 = sub_2681610A0(v19, v20, &v67);

    *(v17 + 4) = v21;
    v22 = "[NotebookDateTimeResolving] confidently resolved to %s";
LABEL_11:
    _os_log_impl(&dword_2680EB000, v15, v16, v22, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x26D617A40](v18, -1, -1);
    MEMORY[0x26D617A40](v17, -1, -1);
LABEL_12:

LABEL_13:
    v28 = sub_2683CEB48();

    return v28;
  }

  if (v12 == *MEMORY[0x277D56068])
  {
    (*(v5 + 96))(v10, v4);
    v23 = *v10;
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v24 = sub_2683CF7E8();
    __swift_project_value_buffer(v24, qword_28027C958);

    v15 = sub_2683CF7C8();
    v16 = sub_2683CFE98();

    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_12;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v66 = v23;
    v67 = v18;
    *v17 = 136315138;
    sub_2683CEB78();
    sub_268134208(&qword_28024D3E8, MEMORY[0x277D56498], MEMORY[0x277D564C0]);
    v25 = sub_2683D0568();
    v27 = sub_2681610A0(v25, v26, &v67);

    *(v17 + 4) = v27;
    v22 = "[NotebookDateTimeResolving] unconfidently resolved to %s";
    goto LABEL_11;
  }

  if (v12 == *MEMORY[0x277D56070])
  {
    (*(v5 + 96))(v10, v4);
    v30 = *v10;
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v31 = sub_2683CF7E8();
    __swift_project_value_buffer(v31, qword_28027C958);

    v32 = sub_2683CF7C8();
    v33 = sub_2683CFE78();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v67 = v35;
      *v34 = 134218242;
      *(v34 + 4) = sub_2683ABE58();

      *(v34 + 12) = 2080;
      v36 = sub_2683ABE58();
      if (v36)
      {
        sub_2683ABE60();
        if ((v30 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x26D616C90](0, v30);
        }

        else
        {
        }
      }

      v66 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3F8, &qword_2683D2368);
      v37 = sub_2683CFAD8();
      v39 = sub_2681610A0(v37, v38, &v67);

      *(v34 + 14) = v39;
      _os_log_impl(&dword_2680EB000, v32, v33, "[NotebookDateTimeResolving] found %ld recommendations, picking the first one of %s", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x26D617A40](v35, -1, -1);
      MEMORY[0x26D617A40](v34, -1, -1);
    }

    else
    {
    }

    if (sub_2683ABE58())
    {
      sub_2683ABE60();
      if ((v30 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D616C90](0, v30);
      }

      else
      {
      }

      goto LABEL_13;
    }

    return sub_2683CEB48();
  }

  if (v12 == *MEMORY[0x277D56078])
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v40 = sub_2683CF7E8();
    __swift_project_value_buffer(v40, qword_28027C958);

    v41 = sub_2683CF7C8();
    v42 = sub_2683CFE78();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v66 = a2;
      v67 = v44;
      *v43 = 136315138;
      sub_2683CEB78();
      sub_268134208(&qword_28024D3E8, MEMORY[0x277D56498], MEMORY[0x277D564C0]);
      v45 = sub_2683D0568();
      v47 = sub_2681610A0(v45, v46, &v67);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_2680EB000, v41, v42, "[NotebookDateTimeResolving] made no recommendation, returning DateTimeValue as is %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x26D617A40](v44, -1, -1);
      MEMORY[0x26D617A40](v43, -1, -1);
    }

    return sub_2683CEB48();
  }

  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v48 = sub_2683CF7E8();
  __swift_project_value_buffer(v48, qword_28027C958);
  v11(v8, a1, v4);

  v49 = sub_2683CF7C8();
  v50 = sub_2683CFE78();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v67 = v65;
    *v51 = 136315394;
    sub_268134094(&qword_28024D3F0, &qword_28024D3D8, &qword_2683D2358);
    v64 = v49;
    v52 = sub_2683D0568();
    v54 = v53;
    v55 = *(v5 + 8);
    v63 = v50;
    v55(v8, v4);
    v56 = sub_2681610A0(v52, v54, &v67);

    *(v51 + 4) = v56;
    *(v51 + 12) = 2080;
    v66 = a2;
    sub_2683CEB78();
    sub_268134208(&qword_28024D3E8, MEMORY[0x277D56498], MEMORY[0x277D564C0]);
    v57 = sub_2683D0568();
    v59 = sub_2681610A0(v57, v58, &v67);

    *(v51 + 14) = v59;
    v60 = v64;
    _os_log_impl(&dword_2680EB000, v64, v63, "[NotebookDateTimeResolving] unhandled recommendation of %s, returning DateTimeValue as is %s", v51, 0x16u);
    v61 = v65;
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v61, -1, -1);
    MEMORY[0x26D617A40](v51, -1, -1);
  }

  else
  {

    v55 = *(v5 + 8);
    v55(v8, v4);
  }

  v28 = sub_2683CEB48();
  v55(v10, v4);
  return v28;
}

id sub_268133AC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a3)
  {
    v17 = sub_2683CFA68();
  }

  else
  {
    v17 = 0;
  }

  if (a13)
  {
    v18 = sub_2683CFA68();
  }

  else
  {
    v18 = 0;
  }

  v19 = [v21 initWithTitle:a1 content:v17 itemType:a4 status:a5 location:a6 locationSearchType:a7 dateTime:a8 dateSearchType:a9 temporalEventTriggerTypes:a10 taskPriority:a11 notebookItemIdentifier:v18];

  return v19;
}

uint64_t sub_268133BC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268133C30()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper(0);
  OUTLINED_FUNCTION_3_1(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = v7 + *(v8 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  OUTLINED_FUNCTION_3_1(v10);
  v12 = (v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = *(v0 + ((*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_2681342AC;

  return sub_268130CCC(v4, v0 + v7, v0 + v12, v14);
}

uint64_t sub_268133D9C()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for SearchForNotebookItemsNLv3IntentWrapper(0);
  OUTLINED_FUNCTION_3_1(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_23(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_268133EC8;

  return sub_268131768(v4, v0 + v7, v0 + v12);
}

uint64_t sub_268133EC8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_40();

  return v3();
}

unint64_t sub_268133FA8()
{
  result = qword_28024CDB8;
  if (!qword_28024CDB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024CDB8);
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

uint64_t sub_268134034(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_23_0();
  (*v3)(a2);
  return a2;
}

uint64_t sub_268134094(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2681340E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_1();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_268134148(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2681341A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_268134208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_268134250(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_25_0()
{

  JUMPOUT(0x26D617A40);
}

uint64_t OUTLINED_FUNCTION_28()
{

  return sub_268134250(v0, type metadata accessor for NotebookNLv3Intent);
}

uint64_t OUTLINED_FUNCTION_33(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_35(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_36()
{

  JUMPOUT(0x26D617A40);
}

void OUTLINED_FUNCTION_38()
{

  JUMPOUT(0x26D617A40);
}

uint64_t OUTLINED_FUNCTION_39()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_43(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_45(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_49()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_53()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_2681610A0(v16, v17, va);
}

uint64_t OUTLINED_FUNCTION_55()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_65(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_2681347D4(int *a1)
{
  v3 = sub_2683CF2D8();
  v1[5] = v3;
  v1[6] = *(v3 - 8);
  v1[7] = swift_task_alloc();
  v4 = sub_2683CE478();
  v1[8] = v4;
  v1[9] = *(v4 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v7 = (a1 + *a1);
  v5 = swift_task_alloc();
  v1[14] = v5;
  *v5 = v1;
  v5[1] = sub_2681349A4;

  return v7();
}

uint64_t sub_2681349A4(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_26();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_26();
  *v7 = v6;
  *(v4 + 120) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268134B20);
  }

  else
  {

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_268134B20()
{
  v52 = v0;
  v1 = *(v0 + 120);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 96);
    v4 = *(v0 + 104);
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);

    (*(v6 + 32))(v3, v4, v5);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    v9 = *(v0 + 64);
    v10 = *(v0 + 72);
    v11 = sub_2683CF7E8();
    __swift_project_value_buffer(v11, qword_28027C958);
    v12 = *(v10 + 16);
    v12(v7, v8, v9);
    v13 = sub_2683CF7C8();
    v14 = sub_2683CFE78();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 88);
    if (v15)
    {
      v50 = v14;
      v17 = *(v0 + 72);
      v18 = *(v0 + 80);
      v19 = *(v0 + 64);
      v20 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v51[0] = v49;
      *v20 = 136446210;
      v12(v18, v16, v19);
      v21 = sub_2683CFAD8();
      v23 = v22;
      v24 = *(v17 + 8);
      v24(v16, v19);
      v25 = sub_2681610A0(v21, v23, v51);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_2680EB000, v13, v50, "got LocationInferenceError: %{public}s, pushing flow generated by LocationResolutionErrorFlowProvider", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
      v40 = *(v0 + 64);
      v41 = *(v0 + 72);

      v24 = *(v41 + 8);
      v24(v16, v40);
    }

    v42 = *(v0 + 96);
    v44 = *(v0 + 56);
    v43 = *(v0 + 64);
    v45 = *(v0 + 40);
    v46 = *(v0 + 48);
    sub_2683CCC48();
    sub_2683CF2C8();
    v39 = sub_2683CF2B8();
    (*(v46 + 8))(v44, v45);
    v24(v42, v43);
  }

  else
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v26 = *(v0 + 120);
    v27 = sub_2683CF7E8();
    __swift_project_value_buffer(v27, qword_28027C958);
    v28 = v26;
    v29 = sub_2683CF7C8();
    v30 = sub_2683CFE78();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 120);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v51[0] = v33;
      *v32 = 136446210;
      *(v0 + 32) = v31;
      v34 = v31;
      v35 = sub_2683CFAD8();
      v37 = sub_2681610A0(v35, v36, v51);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_2680EB000, v29, v30, "got error: %{public}s, pushing SimpleOutputFlow with generic error", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v38 = *(v0 + 120);
    sub_2683CC868();
    sub_2683CB948();
    swift_allocObject();
    *(v0 + 24) = sub_2683CB938();
    v39 = sub_2683CBF28();
  }

  v47 = *(v0 + 8);

  return v47(v39);
}

uint64_t sub_268134FD8(uint64_t a1)
{
  v1[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v1[13] = swift_task_alloc();
  v2 = sub_2683CC598();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[16] = v3;
  v4 = swift_task_alloc();
  v1[17] = v4;
  *v4 = v1;
  v4[1] = sub_26813510C;

  return MEMORY[0x2821BAED8](v3);
}

uint64_t sub_26813510C()
{
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_26();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    v7 = sub_2681353A8;
  }

  else
  {
    v7 = sub_268135218;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268135218(uint64_t a1)
{
  v3 = *(v1 + 120);
  v2 = *(v1 + 128);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  v6 = *(v1 + 96);
  sub_2683CCC48();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_2683CC0A8();
  v7 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
  v8 = sub_2683CCC98();
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0;
  *(v1 + 56) = 0u;
  v9 = MEMORY[0x277D5C1D8];
  v6[3] = v8;
  v6[4] = v9;
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_2683CC358();
  sub_26812C310(v1 + 56, &qword_28024D408, &qword_2683D2470);
  sub_26812C310(v4, &qword_28024D400, &qword_2683D2460);
  (*(v3 + 8))(v2, v5);
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_2681353A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_268135418()
{
  OUTLINED_FUNCTION_14();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v1[10] = OUTLINED_FUNCTION_15_1();
  v4 = sub_2683CC598();
  v1[11] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[12] = v5;
  v1[13] = OUTLINED_FUNCTION_15_1();
  v6 = sub_2683CC748();
  v1[14] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[15] = v7;
  v1[16] = OUTLINED_FUNCTION_15_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D410, &qword_2683D2390);
  v1[17] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[18] = v9;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2681355AC()
{
  v34 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[8];
  v6 = sub_2683CF7E8();
  __swift_project_value_buffer(v6, qword_28027C958);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);
  v7(v1, v5, v3);
  v8 = sub_2683CF7C8();
  v9 = sub_2683CFE98();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[19];
  v12 = v0[20];
  v14 = v0[17];
  v13 = v0[18];
  if (v10)
  {
    log = v8;
    v15 = v0[15];
    v16 = v0[16];
    v29 = v0[14];
    v17 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v17 = 136315394;
    v30 = v9;
    sub_2683CC9E8();
    v18 = sub_2683CC738();
    v20 = v19;
    (*(v15 + 8))(v16, v29);
    v21 = *(v13 + 8);
    v21(v12, v14);
    v22 = sub_2681610A0(v18, v20, &v33);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2048;
    v23 = sub_2683CC9D8();
    v24 = [v23 unsupportedReason];

    v21(v11, v14);
    *(v17 + 14) = v24;
    _os_log_impl(&dword_2680EB000, log, v30, "[SetTaskAttribute UnsupportedValue] Making unsupported dialog for %s with reason: %ld", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
    v25 = *(v13 + 8);
    v25(v0[19], v0[17]);

    v25(v12, v14);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[21] = v26;
  *v26 = v27;
  v26[1] = sub_26813587C;

  return sub_268135BB0();
}

uint64_t sub_26813587C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268135978()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1(*(v0 + 72), *(*(v0 + 72) + 24));
  sub_2683CC0A8();
  v6 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
  v7 = sub_2683CCC98();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v8 = MEMORY[0x277D5C1D8];
  v5[3] = v7;
  v5[4] = v8;
  __swift_allocate_boxed_opaque_existential_0(v5);
  sub_2683CC328();
  sub_26812C310(v0 + 16, &qword_28024D408, &qword_2683D2470);
  sub_26812C310(v3, &qword_28024D400, &qword_2683D2460);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_40();

  return v9();
}

uint64_t sub_268135B20()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_268135BB0()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_2683CB668();
  v1[5] = OUTLINED_FUNCTION_15_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v1[6] = OUTLINED_FUNCTION_15_1();
  v4 = sub_2683CC748();
  v1[7] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[8] = v5;
  v1[9] = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_268135CB0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D410, &qword_2683D2390);
  sub_2683CC9E8();
  v4 = sub_2683CC738();
  v6 = v5;
  (*(v2 + 8))(v1, v3);

  if (sub_268381174(v4) == 7)
  {
    sub_26812C6B8();
    v7 = swift_allocError();
    *v8 = v4;
    v8[1] = v6;
    OUTLINED_FUNCTION_16_1(v7, v8);

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_12_0();

    __asm { BRAA            X1, X16 }
  }

  v11 = swift_allocObject();
  v0[10] = v11;
  *(v11 + 16) = 1;
  v12 = sub_2683CC9C8();
  v13 = [v12 taskTitle];

  if (v13)
  {
    sub_2683CFEA8();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = v0[6];
  v16 = sub_2683CF168();
  __swift_storeEnumTagSinglePayload(v15, v14, 1, v16);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[14] = v17;
  *v17 = v18;
  v17[1] = sub_268136560;
  OUTLINED_FUNCTION_12_0();

  return sub_268184EF4();
}

uint64_t sub_268136460()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268136560()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 120) = v0;

  sub_26812C310(v5, &unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_268136688()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 144) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268136788()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268136888()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268136988()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_268136A00()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 208) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268136B00()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268136C00()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 248) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268136D00()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268136DFC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268136EF8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 304) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268136FF4()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_268137078()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681370F8()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_268137170()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681371F4()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_268137278()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681372FC()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_268137380()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_268137404()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_268137488()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_268137500()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_268137578()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_14_1();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681375FC()
{
  OUTLINED_FUNCTION_14();
  v0[2] = v1;
  v2 = sub_2683CC748();
  v0[3] = v2;
  OUTLINED_FUNCTION_3_1(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2681376A4()
{
  v31 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D410, &qword_2683D2390);
  sub_2683CC9E8();
  v4 = sub_2683CC738();
  v6 = v5;
  (*(v2 + 8))(v1, v3);

  v7 = sub_268381174(v4);
  if (v7 == 7)
  {
    sub_26812C6B8();
    v8 = swift_allocError();
    *v9 = v4;
    v9[1] = v6;
    OUTLINED_FUNCTION_16_1(v8, v9);

    OUTLINED_FUNCTION_40();

    return v10();
  }

  else
  {
    v12 = v7;

    v13 = sub_2683CC9C8();
    v14 = sub_2681DF3CC(v12);

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v15 = sub_2683CF7E8();
    __swift_project_value_buffer(v15, qword_28027C958);
    v16 = v14;
    v17 = sub_2683CF7C8();
    v18 = sub_2683CFE98();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v30[0] = swift_slowAlloc();
      *v19 = 136315394;
      v20 = sub_268382138(v12);
      v22 = sub_2681610A0(v20, v21, v30);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      v23 = v16;
      v24 = [v23 description];
      v25 = sub_2683CFA78();
      v27 = v26;

      v28 = sub_2681610A0(v25, v27, v30);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_2680EB000, v17, v18, "[SetTaskAttribute UnsupportedValue] Unsupported Parameter: %s. New Intent: %s", v19, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v29 = v0[1];

    return v29(v16);
  }
}

uint64_t sub_2681379A8()
{
  v0 = sub_2683CC748();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D410, &qword_2683D2390);
  sub_2683CC9E8();
  v4 = sub_2683CC738();
  (*(v1 + 8))(v3, v0);
  v5 = sub_268381174(v4);
  v6 = v5;
  if (v5 == 6)
  {
    return 0;
  }

  v8 = v5;
  v13[0] = "SiriNotebook";
  v13[1] = 12;
  v14 = 2;
  v15 = "NLv4";
  v16 = 4;
  v17 = 2;
  v9 = sub_268344DA4(v13);
  if (v6 == 7 || (v9 & 1) == 0)
  {
    return 1;
  }

  if (sub_268382138(v8) == 0x6154746567726174 && v10 == 0xEA00000000006B73)
  {
  }

  else
  {
    v12 = sub_2683D0598();

    if ((v12 & 1) == 0)
    {
      return 1;
    }
  }

  return 2;
}

uint64_t sub_268137B6C(uint64_t a1)
{
  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  v3 = v1;
  if (v1 == 1)
  {
    sub_2683CF138();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D410, &qword_2683D2390);
    v4 = sub_2683CC9B8();
    v3 = sub_26818F730(v4);
    swift_beginAccess();
    v5 = *v2;
    *v2 = v3;

    sub_268137FB0(v5);
  }

  sub_268137FC0(v1);
  return v3;
}

uint64_t sub_268137C24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_268135418();
}

uint64_t sub_268137CCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268137D60;

  return sub_2681375FC();
}

uint64_t sub_268137D60()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_268137E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681342AC;

  return MEMORY[0x2821B9E00](a1, a2, a3, a4);
}

uint64_t sub_268137F14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268137F54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_268137FB0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_268137FC0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_1()
{

  return sub_268137B6C(v0);
}

uint64_t OUTLINED_FUNCTION_14_1()
{
}

uint64_t OUTLINED_FUNCTION_15_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_16_1(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;

  return swift_willThrow();
}

uint64_t Snippet.NoteDetail.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Snippet.NoteDetail.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Snippet.NoteDetail.init(identifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_268138108(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2683D0598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_268138190()
{
  sub_2683D0698();
  MEMORY[0x26D617190](0);
  return sub_2683D06D8();
}

uint64_t sub_268138204(uint64_t a1)
{
  sub_2683D0698();
  MEMORY[0x26D617190](0);
  return sub_2683D06D8();
}

uint64_t sub_268138248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268138108(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_268138290@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_7_1();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2681382BC(uint64_t a1)
{
  v2 = sub_268138460();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681382F8(uint64_t a1)
{
  v2 = sub_268138460();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.NoteDetail.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D418, &qword_2683D2478);
  OUTLINED_FUNCTION_0_7();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268138460();
  sub_2683D0718();
  sub_2683D0518();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_268138460()
{
  result = qword_28024D420;
  if (!qword_28024D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D420);
  }

  return result;
}

uint64_t Snippet.NoteDetail.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D428, &qword_2683D2480);
  OUTLINED_FUNCTION_0_7();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268138460();
  sub_2683D06F8();
  if (!v2)
  {
    v11 = sub_2683D0478();
    v13 = v12;
    (*(v7 + 8))(v10, v3);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t static Snippet.noteDetail1p(noteId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for Snippet(0);
  swift_storeEnumTagMultiPayload();
}

unint64_t sub_2681386A0()
{
  result = qword_28024D430;
  if (!qword_28024D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D430);
  }

  return result;
}

unint64_t sub_2681386F8()
{
  result = qword_28024D438;
  if (!qword_28024D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D438);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_268138758(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268138798(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s14descr2878F8F29V10NoteDetailV10CodingKeysOwet(unsigned int *a1, int a2)
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

_BYTE *_s14descr2878F8F29V10NoteDetailV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_2681388E8()
{
  result = qword_28024D440;
  if (!qword_28024D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D440);
  }

  return result;
}

unint64_t sub_268138940()
{
  result = qword_28024D448;
  if (!qword_28024D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D448);
  }

  return result;
}

unint64_t sub_268138998()
{
  result = qword_28024D450;
  if (!qword_28024D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D450);
  }

  return result;
}

void sub_268138A04(uint64_t a1)
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_20_1();
  sub_26812C2A8(v2, v257, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_19_0();
  if (v36)
  {
LABEL_3:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v5 = sub_2683CF7E8();
    v6 = OUTLINED_FUNCTION_12_1(v5, qword_28027C958);
    OUTLINED_FUNCTION_34_0(v6, v7, &qword_28024D458, &unk_2683D2C60);
    v8 = sub_2683CF7C8();
    v9 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_8_2(v9))
    {
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_24_1();
      *v1 = 136315138;
      OUTLINED_FUNCTION_11_2(v10, v11, v12, v13, v14, v15, v16, v17, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
      v18 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_32_0(v18, v19, v20, v21, v22, v23, v24, v25, v156, v169, v180, v191, v202, v213, v224, v235, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64], v254[0]);
      v26 = OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_14_2(v26, v27, v28, v29, v30, v31, v32, v33, v157, v170, v181, v192, v203, v214, v225, v236, v245, v246, v247, v248, v249, v250, v251, v252);
      OUTLINED_FUNCTION_18_1();
      *(v1 + 4) = &qword_28024D458;
      OUTLINED_FUNCTION_5_2(&dword_2680EB000, v34, v35, "[StrategyHelpers confirmationActionForInput] Returning .ignore() for task %s");
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_36();
    }

    else
    {

      sub_26812C310(v255, &qword_28024D458, &unk_2683D2C60);
    }

    sub_2683CC2B8();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_35_0(v3, v4, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_27();
  if (!v36)
  {
    v88 = OUTLINED_FUNCTION_1_2(v37, v38, v39, v40, v41, v42, v43, v44, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64], v254[0], v254[1], v254[2], v254[3], v254[4], v254[5], v254[6], v254[7], v254[8], v255[0], v255[1], v255[2], v255[3], v255[4], v255[5], v256);
    OUTLINED_FUNCTION_33_0(v89, v90, &qword_28024D460, &qword_2683D5050, v91, v92, v93, v94, v162, v175, v186, v197, v208, v219, v230, v241, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64], v88);
    OUTLINED_FUNCTION_26_0();
    if (v95 || (v104 = OUTLINED_FUNCTION_2_3(v96, v97, v98, v99, v100, v101, v102, v103, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[16], *&v253[32]), OUTLINED_FUNCTION_31_0(v104, v105, v106, v107, v108, v109, v110, v111, v163), sub_26813A1A0(v253), v1 == 1))
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v112 = sub_2683CF7E8();
      v113 = OUTLINED_FUNCTION_12_1(v112, qword_28027C958);
      OUTLINED_FUNCTION_22_1(v113, v114, &qword_28024D458, &unk_2683D2C60, v115, v116, v117, v118, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
      v119 = sub_2683CF7C8();
      v120 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_8_2(v120))
      {
        OUTLINED_FUNCTION_49();
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_25_1();
        *v1 = 136315138;
        OUTLINED_FUNCTION_6_2(v121, v122, v123, v124, v125, v126, v127, v128, v164, v176, v187, v198, v209, v220, v231, v242, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
        v129 = OUTLINED_FUNCTION_16_2();
        v137 = OUTLINED_FUNCTION_21_1(v129, v130, v131, v132, v133, v134, v135, v136, v165, v177, v188, v199, v210, v221, v232, v243, v245);
        v145 = OUTLINED_FUNCTION_4_2(v137, v138, v139, v140, v141, v142, v143, v144, v166, v178, v189, v200, v211, v222, v233, v244, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
        OUTLINED_FUNCTION_15_2(v145, v146, v147, v148, v149, v150, v151, v152, v167);
        OUTLINED_FUNCTION_18_1();
        *(v1 + 4) = &qword_28024D458;
        OUTLINED_FUNCTION_5_2(&dword_2680EB000, v153, v154, "[StrategyHelpers confirmationActionForInput] Returning .handle() for task: %s");
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_36();
      }

      else
      {

        sub_26812C310(v254, &qword_28024D458, &unk_2683D2C60);
      }

      sub_2683CC2A8();
      sub_26812C310(&v245, &qword_28024D460, &qword_2683D5050);
      goto LABEL_25;
    }

    sub_26812C310(&v245, &qword_28024D460, &qword_2683D5050);
    goto LABEL_3;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v45 = sub_2683CF7E8();
  v46 = OUTLINED_FUNCTION_12_1(v45, qword_28027C958);
  OUTLINED_FUNCTION_22_1(v46, v47, &qword_28024D458, &unk_2683D2C60, v48, v49, v50, v51, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
  v52 = sub_2683CF7C8();
  v53 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_8_2(v53))
  {
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_23_1();
    *v1 = 136315138;
    OUTLINED_FUNCTION_6_2(v54, v55, v56, v57, v58, v59, v60, v61, v158, v171, v182, v193, v204, v215, v226, v237, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
    v62 = OUTLINED_FUNCTION_16_2();
    v70 = OUTLINED_FUNCTION_21_1(v62, v63, v64, v65, v66, v67, v68, v69, v159, v172, v183, v194, v205, v216, v227, v238, v245);
    v78 = OUTLINED_FUNCTION_4_2(v70, v71, v72, v73, v74, v75, v76, v77, v160, v173, v184, v195, v206, v217, v228, v239, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
    OUTLINED_FUNCTION_13_2(v78, v79, v80, v81, v82, v83, v84, v85, v161, v174, v185, v196, v207, v218, v229, v240);
    OUTLINED_FUNCTION_18_1();
    *(v1 + 4) = &qword_28024D458;
    OUTLINED_FUNCTION_5_2(&dword_2680EB000, v86, v87, "[StrategyHelpers confirmationActionForInput] Returning .cancel() for task: %s");
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_36();
  }

  else
  {

    sub_26812C310(v254, &qword_28024D458, &unk_2683D2C60);
  }

  sub_2683CC298();
LABEL_25:
  sub_26812C310(v257, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_29_0();
}

void sub_268138DC8(uint64_t a1)
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_20_1();
  sub_26812C2A8(v2, v257, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_19_0();
  if (v36)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_35_0(v3, v4, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_27();
  if (v36)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v45 = sub_2683CF7E8();
    v46 = OUTLINED_FUNCTION_12_1(v45, qword_28027C958);
    OUTLINED_FUNCTION_22_1(v46, v47, &qword_28024D458, &unk_2683D2C60, v48, v49, v50, v51, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
    v52 = sub_2683CF7C8();
    v53 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_8_2(v53))
    {
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_23_1();
      *v1 = 136315138;
      OUTLINED_FUNCTION_6_2(v54, v55, v56, v57, v58, v59, v60, v61, v158, v171, v182, v193, v204, v215, v226, v237, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
      v62 = OUTLINED_FUNCTION_16_2();
      v70 = OUTLINED_FUNCTION_21_1(v62, v63, v64, v65, v66, v67, v68, v69, v159, v172, v183, v194, v205, v216, v227, v238, v245);
      v78 = OUTLINED_FUNCTION_4_2(v70, v71, v72, v73, v74, v75, v76, v77, v160, v173, v184, v195, v206, v217, v228, v239, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
      OUTLINED_FUNCTION_13_2(v78, v79, v80, v81, v82, v83, v84, v85, v161, v174, v185, v196, v207, v218, v229, v240);
      OUTLINED_FUNCTION_18_1();
      *(v1 + 4) = &qword_28024D458;
      OUTLINED_FUNCTION_5_2(&dword_2680EB000, v86, v87, "[StrategyHelpers confirmationActionForInput] Returning .cancel() for task: %s");
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_36();
    }

    else
    {

      sub_26812C310(v254, &qword_28024D458, &unk_2683D2C60);
    }

    sub_2683CC298();
  }

  else
  {
    v88 = OUTLINED_FUNCTION_1_2(v37, v38, v39, v40, v41, v42, v43, v44, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64], v254[0], v254[1], v254[2], v254[3], v254[4], v254[5], v254[6], v254[7], v254[8], v255[0], v255[1], v255[2], v255[3], v255[4], v255[5], v256);
    OUTLINED_FUNCTION_33_0(v89, v90, &qword_28024D460, &qword_2683D5050, v91, v92, v93, v94, v162, v175, v186, v197, v208, v219, v230, v241, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64], v88);
    OUTLINED_FUNCTION_26_0();
    if (!v95)
    {
      v104 = OUTLINED_FUNCTION_2_3(v96, v97, v98, v99, v100, v101, v102, v103, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[16], *&v253[32]);
      OUTLINED_FUNCTION_31_0(v104, v105, v106, v107, v108, v109, v110, v111, v163);
      sub_26813A1A0(v253);
      if (v1)
      {
        sub_26812C310(&v245, &qword_28024D460, &qword_2683D5050);
LABEL_3:
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
        }

        v5 = sub_2683CF7E8();
        v6 = OUTLINED_FUNCTION_12_1(v5, qword_28027C958);
        OUTLINED_FUNCTION_34_0(v6, v7, &qword_28024D458, &unk_2683D2C60);
        v8 = sub_2683CF7C8();
        v9 = sub_2683CFE98();
        if (OUTLINED_FUNCTION_8_2(v9))
        {
          OUTLINED_FUNCTION_49();
          OUTLINED_FUNCTION_9_2();
          OUTLINED_FUNCTION_24_1();
          *v1 = 136315138;
          OUTLINED_FUNCTION_11_2(v10, v11, v12, v13, v14, v15, v16, v17, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
          v18 = OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_32_0(v18, v19, v20, v21, v22, v23, v24, v25, v156, v169, v180, v191, v202, v213, v224, v235, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64], v254[0]);
          v26 = OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_14_2(v26, v27, v28, v29, v30, v31, v32, v33, v157, v170, v181, v192, v203, v214, v225, v236, v245, v246, v247, v248, v249, v250, v251, v252);
          OUTLINED_FUNCTION_18_1();
          *(v1 + 4) = &qword_28024D458;
          OUTLINED_FUNCTION_5_2(&dword_2680EB000, v34, v35, "[StrategyHelpers confirmationActionForInput] Returning .ignore() for task %s");
          OUTLINED_FUNCTION_3_2();
          OUTLINED_FUNCTION_36();
        }

        else
        {

          sub_26812C310(v255, &qword_28024D458, &unk_2683D2C60);
        }

        sub_2683CC2B8();
        goto LABEL_26;
      }
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v112 = sub_2683CF7E8();
    v113 = OUTLINED_FUNCTION_12_1(v112, qword_28027C958);
    OUTLINED_FUNCTION_22_1(v113, v114, &qword_28024D458, &unk_2683D2C60, v115, v116, v117, v118, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
    v119 = sub_2683CF7C8();
    v120 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_8_2(v120))
    {
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_25_1();
      *v1 = 136315138;
      OUTLINED_FUNCTION_6_2(v121, v122, v123, v124, v125, v126, v127, v128, v164, v176, v187, v198, v209, v220, v231, v242, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
      v129 = OUTLINED_FUNCTION_16_2();
      v137 = OUTLINED_FUNCTION_21_1(v129, v130, v131, v132, v133, v134, v135, v136, v165, v177, v188, v199, v210, v221, v232, v243, v245);
      v145 = OUTLINED_FUNCTION_4_2(v137, v138, v139, v140, v141, v142, v143, v144, v166, v178, v189, v200, v211, v222, v233, v244, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
      OUTLINED_FUNCTION_15_2(v145, v146, v147, v148, v149, v150, v151, v152, v167);
      OUTLINED_FUNCTION_18_1();
      *(v1 + 4) = &qword_28024D458;
      OUTLINED_FUNCTION_5_2(&dword_2680EB000, v153, v154, "[StrategyHelpers confirmationActionForInput] Returning .handle() for task: %s");
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_36();
    }

    else
    {

      sub_26812C310(v254, &qword_28024D458, &unk_2683D2C60);
    }

    sub_2683CC2A8();
    sub_26812C310(&v245, &qword_28024D460, &qword_2683D5050);
  }

LABEL_26:
  sub_26812C310(v257, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_29_0();
}

void sub_268139188(uint64_t a1)
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_20_1();
  sub_26812C2A8(v2, v257, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_19_0();
  if (v36)
  {
LABEL_3:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v5 = sub_2683CF7E8();
    v6 = OUTLINED_FUNCTION_12_1(v5, qword_28027C958);
    OUTLINED_FUNCTION_34_0(v6, v7, &qword_28024D458, &unk_2683D2C60);
    v8 = sub_2683CF7C8();
    v9 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_8_2(v9))
    {
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_24_1();
      *v1 = 136315138;
      OUTLINED_FUNCTION_11_2(v10, v11, v12, v13, v14, v15, v16, v17, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
      v18 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_32_0(v18, v19, v20, v21, v22, v23, v24, v25, v156, v169, v180, v191, v202, v213, v224, v235, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64], v254[0]);
      v26 = OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_14_2(v26, v27, v28, v29, v30, v31, v32, v33, v157, v170, v181, v192, v203, v214, v225, v236, v245, v246, v247, v248, v249, v250, v251, v252);
      OUTLINED_FUNCTION_18_1();
      *(v1 + 4) = &qword_28024D458;
      OUTLINED_FUNCTION_5_2(&dword_2680EB000, v34, v35, "[StrategyHelpers confirmationActionForInput] Returning .ignore() for task %s");
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_36();
    }

    else
    {

      sub_26812C310(v255, &qword_28024D458, &unk_2683D2C60);
    }

    sub_2683CC2B8();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_35_0(v3, v4, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_27();
  if (!v36)
  {
    v88 = OUTLINED_FUNCTION_1_2(v37, v38, v39, v40, v41, v42, v43, v44, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64], v254[0], v254[1], v254[2], v254[3], v254[4], v254[5], v254[6], v254[7], v254[8], v255[0], v255[1], v255[2], v255[3], v255[4], v255[5], v256);
    OUTLINED_FUNCTION_33_0(v89, v90, &qword_28024D460, &qword_2683D5050, v91, v92, v93, v94, v162, v175, v186, v197, v208, v219, v230, v241, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64], v88);
    OUTLINED_FUNCTION_26_0();
    if (v95 || (v104 = OUTLINED_FUNCTION_2_3(v96, v97, v98, v99, v100, v101, v102, v103, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[16], *&v253[32]), OUTLINED_FUNCTION_31_0(v104, v105, v106, v107, v108, v109, v110, v111, v163), sub_26813A1A0(v253), v1 == 4))
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v112 = sub_2683CF7E8();
      v113 = OUTLINED_FUNCTION_12_1(v112, qword_28027C958);
      OUTLINED_FUNCTION_22_1(v113, v114, &qword_28024D458, &unk_2683D2C60, v115, v116, v117, v118, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
      v119 = sub_2683CF7C8();
      v120 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_8_2(v120))
      {
        OUTLINED_FUNCTION_49();
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_25_1();
        *v1 = 136315138;
        OUTLINED_FUNCTION_6_2(v121, v122, v123, v124, v125, v126, v127, v128, v164, v176, v187, v198, v209, v220, v231, v242, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
        v129 = OUTLINED_FUNCTION_16_2();
        v137 = OUTLINED_FUNCTION_21_1(v129, v130, v131, v132, v133, v134, v135, v136, v165, v177, v188, v199, v210, v221, v232, v243, v245);
        v145 = OUTLINED_FUNCTION_4_2(v137, v138, v139, v140, v141, v142, v143, v144, v166, v178, v189, v200, v211, v222, v233, v244, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
        OUTLINED_FUNCTION_15_2(v145, v146, v147, v148, v149, v150, v151, v152, v167);
        OUTLINED_FUNCTION_18_1();
        *(v1 + 4) = &qword_28024D458;
        OUTLINED_FUNCTION_5_2(&dword_2680EB000, v153, v154, "[StrategyHelpers confirmationActionForInput] Returning .handle() for task: %s");
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_36();
      }

      else
      {

        sub_26812C310(v254, &qword_28024D458, &unk_2683D2C60);
      }

      sub_2683CC2A8();
      sub_26812C310(&v245, &qword_28024D460, &qword_2683D5050);
      goto LABEL_25;
    }

    sub_26812C310(&v245, &qword_28024D460, &qword_2683D5050);
    goto LABEL_3;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v45 = sub_2683CF7E8();
  v46 = OUTLINED_FUNCTION_12_1(v45, qword_28027C958);
  OUTLINED_FUNCTION_22_1(v46, v47, &qword_28024D458, &unk_2683D2C60, v48, v49, v50, v51, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
  v52 = sub_2683CF7C8();
  v53 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_8_2(v53))
  {
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_23_1();
    *v1 = 136315138;
    OUTLINED_FUNCTION_6_2(v54, v55, v56, v57, v58, v59, v60, v61, v158, v171, v182, v193, v204, v215, v226, v237, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
    v62 = OUTLINED_FUNCTION_16_2();
    v70 = OUTLINED_FUNCTION_21_1(v62, v63, v64, v65, v66, v67, v68, v69, v159, v172, v183, v194, v205, v216, v227, v238, v245);
    v78 = OUTLINED_FUNCTION_4_2(v70, v71, v72, v73, v74, v75, v76, v77, v160, v173, v184, v195, v206, v217, v228, v239, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
    OUTLINED_FUNCTION_13_2(v78, v79, v80, v81, v82, v83, v84, v85, v161, v174, v185, v196, v207, v218, v229, v240);
    OUTLINED_FUNCTION_18_1();
    *(v1 + 4) = &qword_28024D458;
    OUTLINED_FUNCTION_5_2(&dword_2680EB000, v86, v87, "[StrategyHelpers confirmationActionForInput] Returning .cancel() for task: %s");
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_36();
  }

  else
  {

    sub_26812C310(v254, &qword_28024D458, &unk_2683D2C60);
  }

  sub_2683CC298();
LABEL_25:
  sub_26812C310(v257, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_29_0();
}

void sub_26813954C(uint64_t a1)
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_20_1();
  sub_26812C2A8(v2, v257, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_19_0();
  if (v36)
  {
LABEL_3:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v5 = sub_2683CF7E8();
    v6 = OUTLINED_FUNCTION_12_1(v5, qword_28027C958);
    OUTLINED_FUNCTION_34_0(v6, v7, &qword_28024D458, &unk_2683D2C60);
    v8 = sub_2683CF7C8();
    v9 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_8_2(v9))
    {
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_24_1();
      *v1 = 136315138;
      OUTLINED_FUNCTION_11_2(v10, v11, v12, v13, v14, v15, v16, v17, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
      v18 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_32_0(v18, v19, v20, v21, v22, v23, v24, v25, v156, v169, v180, v191, v202, v213, v224, v235, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64], v254[0]);
      v26 = OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_14_2(v26, v27, v28, v29, v30, v31, v32, v33, v157, v170, v181, v192, v203, v214, v225, v236, v245, v246, v247, v248, v249, v250, v251, v252);
      OUTLINED_FUNCTION_18_1();
      *(v1 + 4) = &qword_28024D458;
      OUTLINED_FUNCTION_5_2(&dword_2680EB000, v34, v35, "[StrategyHelpers confirmationActionForInput] Returning .ignore() for task %s");
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_36();
    }

    else
    {

      sub_26812C310(v255, &qword_28024D458, &unk_2683D2C60);
    }

    sub_2683CC2B8();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_35_0(v3, v4, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_27();
  if (!v36)
  {
    v88 = OUTLINED_FUNCTION_1_2(v37, v38, v39, v40, v41, v42, v43, v44, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64], v254[0], v254[1], v254[2], v254[3], v254[4], v254[5], v254[6], v254[7], v254[8], v255[0], v255[1], v255[2], v255[3], v255[4], v255[5], v256);
    OUTLINED_FUNCTION_33_0(v89, v90, &qword_28024D460, &qword_2683D5050, v91, v92, v93, v94, v162, v175, v186, v197, v208, v219, v230, v241, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64], v88);
    OUTLINED_FUNCTION_26_0();
    if (v95 || (v104 = OUTLINED_FUNCTION_2_3(v96, v97, v98, v99, v100, v101, v102, v103, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[16], *&v253[32]), OUTLINED_FUNCTION_31_0(v104, v105, v106, v107, v108, v109, v110, v111, v163), sub_26813A1A0(v253), v1 == 2))
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v112 = sub_2683CF7E8();
      v113 = OUTLINED_FUNCTION_12_1(v112, qword_28027C958);
      OUTLINED_FUNCTION_22_1(v113, v114, &qword_28024D458, &unk_2683D2C60, v115, v116, v117, v118, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
      v119 = sub_2683CF7C8();
      v120 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_8_2(v120))
      {
        OUTLINED_FUNCTION_49();
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_25_1();
        *v1 = 136315138;
        OUTLINED_FUNCTION_6_2(v121, v122, v123, v124, v125, v126, v127, v128, v164, v176, v187, v198, v209, v220, v231, v242, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
        v129 = OUTLINED_FUNCTION_16_2();
        v137 = OUTLINED_FUNCTION_21_1(v129, v130, v131, v132, v133, v134, v135, v136, v165, v177, v188, v199, v210, v221, v232, v243, v245);
        v145 = OUTLINED_FUNCTION_4_2(v137, v138, v139, v140, v141, v142, v143, v144, v166, v178, v189, v200, v211, v222, v233, v244, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
        OUTLINED_FUNCTION_15_2(v145, v146, v147, v148, v149, v150, v151, v152, v167);
        OUTLINED_FUNCTION_18_1();
        *(v1 + 4) = &qword_28024D458;
        OUTLINED_FUNCTION_5_2(&dword_2680EB000, v153, v154, "[StrategyHelpers confirmationActionForInput] Returning .handle() for task: %s");
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_36();
      }

      else
      {

        sub_26812C310(v254, &qword_28024D458, &unk_2683D2C60);
      }

      sub_2683CC2A8();
      sub_26812C310(&v245, &qword_28024D460, &qword_2683D5050);
      goto LABEL_25;
    }

    sub_26812C310(&v245, &qword_28024D460, &qword_2683D5050);
    goto LABEL_3;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v45 = sub_2683CF7E8();
  v46 = OUTLINED_FUNCTION_12_1(v45, qword_28027C958);
  OUTLINED_FUNCTION_22_1(v46, v47, &qword_28024D458, &unk_2683D2C60, v48, v49, v50, v51, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
  v52 = sub_2683CF7C8();
  v53 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_8_2(v53))
  {
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_23_1();
    *v1 = 136315138;
    OUTLINED_FUNCTION_6_2(v54, v55, v56, v57, v58, v59, v60, v61, v158, v171, v182, v193, v204, v215, v226, v237, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
    v62 = OUTLINED_FUNCTION_16_2();
    v70 = OUTLINED_FUNCTION_21_1(v62, v63, v64, v65, v66, v67, v68, v69, v159, v172, v183, v194, v205, v216, v227, v238, v245);
    v78 = OUTLINED_FUNCTION_4_2(v70, v71, v72, v73, v74, v75, v76, v77, v160, v173, v184, v195, v206, v217, v228, v239, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
    OUTLINED_FUNCTION_13_2(v78, v79, v80, v81, v82, v83, v84, v85, v161, v174, v185, v196, v207, v218, v229, v240);
    OUTLINED_FUNCTION_18_1();
    *(v1 + 4) = &qword_28024D458;
    OUTLINED_FUNCTION_5_2(&dword_2680EB000, v86, v87, "[StrategyHelpers confirmationActionForInput] Returning .cancel() for task: %s");
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_36();
  }

  else
  {

    sub_26812C310(v254, &qword_28024D458, &unk_2683D2C60);
  }

  sub_2683CC298();
LABEL_25:
  sub_26812C310(v257, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268139910(uint64_t a1)
{
  OUTLINED_FUNCTION_20_1();
  sub_26812C2A8(v5, v79, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_19_0();
  if (v6)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v7 = sub_2683CF7E8();
    OUTLINED_FUNCTION_12_1(v7, qword_28027C958);
    sub_26812C2A8(v1, v75, &qword_28024D458, &unk_2683D2C60);
    v8 = sub_2683CF7C8();
    v9 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_8_2(v9))
    {
      OUTLINED_FUNCTION_49();
      v65 = OUTLINED_FUNCTION_9_2();
      *v2 = 136315138;
      sub_26812C2A8(v75, v74, &qword_28024D458, &unk_2683D2C60);
      OUTLINED_FUNCTION_16_2();
      v10 = sub_2683CFAD8();
      v12 = v11;
      sub_26812C310(v75, &qword_28024D458, &unk_2683D2C60);
      sub_2681610A0(v10, v12, &v65);
      OUTLINED_FUNCTION_18_1();
      *(v2 + 4) = &qword_28024D458;
      OUTLINED_FUNCTION_5_2(&dword_2680EB000, v13, v14, "[StrategyHelpers confirmationActionForInput] Returning .ignore() for task %s");
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_36();
    }

    else
    {

      sub_26812C310(v75, &qword_28024D458, &unk_2683D2C60);
    }

    sub_2683CC2B8();
  }

  else
  {
    sub_26812C2A8(v79, v75, &qword_28024D458, &unk_2683D2C60);
    if (v75[0] == 2)
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v15 = sub_2683CF7E8();
      OUTLINED_FUNCTION_12_1(v15, qword_28027C958);
      sub_26812C2A8(v1, v74, &qword_28024D458, &unk_2683D2C60);
      v16 = sub_2683CF7C8();
      v17 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_8_2(v17))
      {
        OUTLINED_FUNCTION_49();
        v18 = OUTLINED_FUNCTION_9_2();
        *&v62 = v18;
        *v2 = 136315138;
        OUTLINED_FUNCTION_36_0(v18, v19, v20, v21, v22, v23, v24, v25, v58, v61, v62, *(&v62 + 1), v63, *(&v63 + 1), *&v64[0], *(&v64[0] + 1), *&v64[1], *(&v64[1] + 1), v65, v66, v67, v68, v69, v70, v71, v72, v73);
        OUTLINED_FUNCTION_16_2();
        v26 = sub_2683CFAD8();
        OUTLINED_FUNCTION_28_0(v26, v27, v28, v29, v30, v31, v32, v33, v59, v61, v62, *(&v62 + 1), v63, *(&v63 + 1), *&v64[0], *(&v64[0] + 1), *&v64[1], *(&v64[1] + 1), v65, v66, v67, v68, v69, v70, v71, v72, v73);
        sub_2681610A0(v3, v4, &v62);
        OUTLINED_FUNCTION_18_1();
        *(v2 + 4) = &qword_28024D458;
        OUTLINED_FUNCTION_5_2(&dword_2680EB000, v34, v35, "[StrategyHelpers confirmationActionForInput] Returning .cancel() for task: %s");
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_36();
      }

      else
      {

        sub_26812C310(v74, &qword_28024D458, &unk_2683D2C60);
      }

      sub_2683CC298();
    }

    else
    {
      v62 = v76;
      v63 = v77;
      v64[0] = v78[0];
      *(v64 + 9) = *(v78 + 9);
      sub_26812C2A8(&v62, v74, &qword_28024D460, &qword_2683D5050);
      if (v74[56] != 255)
      {
        sub_26812C310(v74, &qword_28024D460, &qword_2683D5050);
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v36 = sub_2683CF7E8();
      OUTLINED_FUNCTION_12_1(v36, qword_28027C958);
      sub_26812C2A8(v1, v74, &qword_28024D458, &unk_2683D2C60);
      v37 = sub_2683CF7C8();
      v38 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_8_2(v38))
      {
        OUTLINED_FUNCTION_49();
        v39 = OUTLINED_FUNCTION_9_2();
        v61 = v39;
        *v2 = 136315138;
        OUTLINED_FUNCTION_36_0(v39, v40, v41, v42, v43, v44, v45, v46, v58, v61, v62, *(&v62 + 1), v63, *(&v63 + 1), *&v64[0], *(&v64[0] + 1), *&v64[1], *(&v64[1] + 1), v65, v66, v67, v68, v69, v70, v71, v72, v73);
        OUTLINED_FUNCTION_16_2();
        v47 = sub_2683CFAD8();
        OUTLINED_FUNCTION_28_0(v47, v48, v49, v50, v51, v52, v53, v54, v60, v61, v62, *(&v62 + 1), v63, *(&v63 + 1), *&v64[0], *(&v64[0] + 1), *&v64[1], *(&v64[1] + 1), v65, v66, v67, v68, v69, v70, v71, v72, v73);
        sub_2681610A0(v3, v4, &v61);
        OUTLINED_FUNCTION_18_1();
        *(v2 + 4) = &qword_28024D458;
        OUTLINED_FUNCTION_5_2(&dword_2680EB000, v55, v56, "[StrategyHelpers confirmationActionForInput] Returning .handle() for task: %s");
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_36();
      }

      else
      {

        sub_26812C310(v74, &qword_28024D458, &unk_2683D2C60);
      }

      sub_2683CC2A8();
      sub_26812C310(&v62, &qword_28024D460, &qword_2683D5050);
    }
  }

  return sub_26812C310(v79, &qword_28024D458, &unk_2683D2C60);
}

void sub_268139D80(uint64_t a1)
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_20_1();
  sub_26812C2A8(v2, v257, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_19_0();
  if (v36)
  {
LABEL_3:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v5 = sub_2683CF7E8();
    v6 = OUTLINED_FUNCTION_12_1(v5, qword_28027C958);
    OUTLINED_FUNCTION_34_0(v6, v7, &qword_28024D458, &unk_2683D2C60);
    v8 = sub_2683CF7C8();
    v9 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_8_2(v9))
    {
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_24_1();
      *v1 = 136315138;
      OUTLINED_FUNCTION_11_2(v10, v11, v12, v13, v14, v15, v16, v17, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
      v18 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_32_0(v18, v19, v20, v21, v22, v23, v24, v25, v156, v169, v180, v191, v202, v213, v224, v235, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64], v254[0]);
      v26 = OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_14_2(v26, v27, v28, v29, v30, v31, v32, v33, v157, v170, v181, v192, v203, v214, v225, v236, v245, v246, v247, v248, v249, v250, v251, v252);
      OUTLINED_FUNCTION_18_1();
      *(v1 + 4) = &qword_28024D458;
      OUTLINED_FUNCTION_5_2(&dword_2680EB000, v34, v35, "[StrategyHelpers confirmationActionForInput] Returning .ignore() for task %s");
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_36();
    }

    else
    {

      sub_26812C310(v255, &qword_28024D458, &unk_2683D2C60);
    }

    sub_2683CC2B8();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_35_0(v3, v4, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_27();
  if (!v36)
  {
    v88 = OUTLINED_FUNCTION_1_2(v37, v38, v39, v40, v41, v42, v43, v44, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64], v254[0], v254[1], v254[2], v254[3], v254[4], v254[5], v254[6], v254[7], v254[8], v255[0], v255[1], v255[2], v255[3], v255[4], v255[5], v256);
    OUTLINED_FUNCTION_33_0(v89, v90, &qword_28024D460, &qword_2683D5050, v91, v92, v93, v94, v162, v175, v186, v197, v208, v219, v230, v241, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64], v88);
    OUTLINED_FUNCTION_26_0();
    if (v95 || (v104 = OUTLINED_FUNCTION_2_3(v96, v97, v98, v99, v100, v101, v102, v103, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[16], *&v253[32]), OUTLINED_FUNCTION_31_0(v104, v105, v106, v107, v108, v109, v110, v111, v163), sub_26813A1A0(v253), v1 == 3))
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v112 = sub_2683CF7E8();
      v113 = OUTLINED_FUNCTION_12_1(v112, qword_28027C958);
      OUTLINED_FUNCTION_22_1(v113, v114, &qword_28024D458, &unk_2683D2C60, v115, v116, v117, v118, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
      v119 = sub_2683CF7C8();
      v120 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_8_2(v120))
      {
        OUTLINED_FUNCTION_49();
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_25_1();
        *v1 = 136315138;
        OUTLINED_FUNCTION_6_2(v121, v122, v123, v124, v125, v126, v127, v128, v164, v176, v187, v198, v209, v220, v231, v242, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
        v129 = OUTLINED_FUNCTION_16_2();
        v137 = OUTLINED_FUNCTION_21_1(v129, v130, v131, v132, v133, v134, v135, v136, v165, v177, v188, v199, v210, v221, v232, v243, v245);
        v145 = OUTLINED_FUNCTION_4_2(v137, v138, v139, v140, v141, v142, v143, v144, v166, v178, v189, v200, v211, v222, v233, v244, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
        OUTLINED_FUNCTION_15_2(v145, v146, v147, v148, v149, v150, v151, v152, v167);
        OUTLINED_FUNCTION_18_1();
        *(v1 + 4) = &qword_28024D458;
        OUTLINED_FUNCTION_5_2(&dword_2680EB000, v153, v154, "[StrategyHelpers confirmationActionForInput] Returning .handle() for task: %s");
        OUTLINED_FUNCTION_3_2();
        OUTLINED_FUNCTION_36();
      }

      else
      {

        sub_26812C310(v254, &qword_28024D458, &unk_2683D2C60);
      }

      sub_2683CC2A8();
      sub_26812C310(&v245, &qword_28024D460, &qword_2683D5050);
      goto LABEL_25;
    }

    sub_26812C310(&v245, &qword_28024D460, &qword_2683D5050);
    goto LABEL_3;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v45 = sub_2683CF7E8();
  v46 = OUTLINED_FUNCTION_12_1(v45, qword_28027C958);
  OUTLINED_FUNCTION_22_1(v46, v47, &qword_28024D458, &unk_2683D2C60, v48, v49, v50, v51, v155, v168, v179, v190, v201, v212, v223, v234, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
  v52 = sub_2683CF7C8();
  v53 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_8_2(v53))
  {
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_23_1();
    *v1 = 136315138;
    OUTLINED_FUNCTION_6_2(v54, v55, v56, v57, v58, v59, v60, v61, v158, v171, v182, v193, v204, v215, v226, v237, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
    v62 = OUTLINED_FUNCTION_16_2();
    v70 = OUTLINED_FUNCTION_21_1(v62, v63, v64, v65, v66, v67, v68, v69, v159, v172, v183, v194, v205, v216, v227, v238, v245);
    v78 = OUTLINED_FUNCTION_4_2(v70, v71, v72, v73, v74, v75, v76, v77, v160, v173, v184, v195, v206, v217, v228, v239, v245, v246, v247, v248, v249, v250, v251, v252, *v253, *&v253[8], *&v253[16], *&v253[24], *&v253[32], *&v253[40], *&v253[48], *&v253[56], *&v253[64]);
    OUTLINED_FUNCTION_13_2(v78, v79, v80, v81, v82, v83, v84, v85, v161, v174, v185, v196, v207, v218, v229, v240);
    OUTLINED_FUNCTION_18_1();
    *(v1 + 4) = &qword_28024D458;
    OUTLINED_FUNCTION_5_2(&dword_2680EB000, v86, v87, "[StrategyHelpers confirmationActionForInput] Returning .cancel() for task: %s");
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_36();
  }

  else
  {

    sub_26812C310(v254, &qword_28024D458, &unk_2683D2C60);
  }

  sub_2683CC298();
LABEL_25:
  sub_26812C310(v257, &qword_28024D458, &unk_2683D2C60);
  OUTLINED_FUNCTION_29_0();
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, __int128 a26, __int128 a27)
{
  v29 = *(v27 + 88);
  a25 = *(v27 + 72);
  a26 = v29;
  a27 = *(v27 + 104);
  *(v27 + 41) = *(v27 + 113);

  return sub_26813A144(&a25, &a9);
}

void OUTLINED_FUNCTION_3_2()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D617A40);
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);

  return sub_26812C310(va, v33, v34);
}

void OUTLINED_FUNCTION_5_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);

  return sub_26812C2A8(va, &a25, v33, v34);
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return sub_26812C310(v2 - 224, v0, v1);
}

BOOL OUTLINED_FUNCTION_8_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_11_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);

  return sub_26812C2A8(v35 - 224, va, v33, v34);
}

unint64_t OUTLINED_FUNCTION_13_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_2681610A0(v16, v17, va);
}

unint64_t OUTLINED_FUNCTION_14_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  return sub_2681610A0(v24, v25, va);
}

unint64_t OUTLINED_FUNCTION_15_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2681610A0(v9, v10, &a9);
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_18_1()
{
}

uint64_t OUTLINED_FUNCTION_21_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{

  return sub_2683CFAD8();
}

uint64_t OUTLINED_FUNCTION_22_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);

  return sub_26812C2A8(v33, va, a3, a4);
}

uint64_t OUTLINED_FUNCTION_28_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);

  return sub_26812C310(va, v27, v28);
}

uint64_t OUTLINED_FUNCTION_31_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_26813A1A0(&a9);
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{

  return sub_2683CFAD8();
}

uint64_t OUTLINED_FUNCTION_33_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);

  return sub_26812C2A8(&a17, va, a3, a4);
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_26812C2A8(v4, v5 - 224, a3, a4);
}

uint64_t OUTLINED_FUNCTION_35_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_26812C2A8(v4 - 152, v4 - 224, a3, a4);
}

uint64_t OUTLINED_FUNCTION_36_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);

  return sub_26812C2A8(va, &a19, v27, v28);
}

BOOL sub_26813A56C(uint64_t a1)
{
  sub_26813A144(a1, v3);
  v1 = v3[56] == 2;
  sub_26813A1A0(v3);
  return v1;
}

id sub_26813A5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D470, &qword_2683DEA10);
  v6 = sub_2683CC9C8();
  LOBYTE(v4) = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(type metadata accessor for SimpleDisambiguationItem(0, AssociatedTypeWitness, v8, v9) + 28);
  v14[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1 + v10, AssociatedTypeWitness);
  v12 = sub_2682EFEFC(v4, v14);

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v12;
}

uint64_t sub_26813A6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_26813A6EC);
}

void sub_26813A6EC()
{
  v1 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D470, &qword_2683DEA10);
  sub_2683CC9B8();
  sub_2683CF258();
  v3 = v2;

  v0[10] = v3;
  v5 = *(*(v1 + 24) + 24) + **(*(v1 + 24) + 24);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_26813A870;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_26813A870()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v3 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26813A998);
  }

  else
  {

    OUTLINED_FUNCTION_40();

    return v6();
  }
}

uint64_t sub_26813A998()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_26813A9F4()
{
  OUTLINED_FUNCTION_13_3();
  v6 = (*(*(v0 + 24) + 16) + **(*(v0 + 24) + 16));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_1_3(v1);
  *v2 = v3;
  v2[1] = sub_268133EC8;
  v4 = OUTLINED_FUNCTION_0_8();

  return v6(v4);
}

uint64_t sub_26813AB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2681342AC;

  return sub_26813A6C0(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_26813AC20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_26813A9F4();
}

void sub_26813ACEC()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v55 = v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D468, &unk_2683D2650);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  v53 = (&v52 - v6);
  v7 = sub_2683CC748();
  OUTLINED_FUNCTION_0_3();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D470, &qword_2683DEA10);
  v56 = v3;
  sub_2683CC9E8();
  v16 = sub_2683CC738();
  v18 = v17;
  v19 = *(v9 + 8);
  v19(v15, v7);
  switch(sub_2683B48FC(v16))
  {
    case 1u:
      sub_26813B108();
      OUTLINED_FUNCTION_19_1();
      sub_26813C7E0(v1 + 56, v18 + 224);
      sub_26813CA00(v1 + 144, v18 + 272);
      v42 = OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_11_3(v42);
      LOBYTE(v79) = 1;
      __swift_project_boxed_opaque_existential_1((v1 + 184), *(v1 + 208));
      OUTLINED_FUNCTION_24_2();
      sub_268188FD0(&v79, v43, v44, v45, v46, v47, v48, v49, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
      v50 = OUTLINED_FUNCTION_15_3();
      v51(v50);

      sub_26812D9E0(v106, &qword_28024D498, &qword_2683D2678);
      v31 = &qword_28024D4A0;
      v32 = &unk_2683D2680;
      goto LABEL_7;
    case 2u:
      sub_26813B5FC();
      OUTLINED_FUNCTION_19_1();
      sub_26813C7E0(v1 + 56, v18 + 224);
      sub_26813CA00(v1 + 144, v18 + 272);
      v21 = OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_11_3(v21);
      LOBYTE(v79) = 2;
      goto LABEL_4;
    case 3u:
      sub_2683CC9E8();
      v33 = sub_2683CC738();
      v35 = v34;
      v19(v13, v7);
      sub_26812C6B8();
      v36 = swift_allocError();
      *v37 = v33;
      *(v37 + 8) = v35;
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      *(v37 + 32) = 1;
      v38 = v53;
      *v53 = v36;
      *(v38 + 8) = 0;
      v39 = *MEMORY[0x277D5BC30];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D478, &unk_2683D2660);
      OUTLINED_FUNCTION_1();
      (*(v40 + 104))(v38, v39);
      v41 = v36;
      sub_26813C77C();
      sub_2683CBF38();
      sub_26812D9E0(v38, &qword_28024D468, &unk_2683D2650);

      goto LABEL_8;
    default:
      sub_26813B400();
      OUTLINED_FUNCTION_19_1();
      sub_26813C7E0(v1 + 56, v18 + 224);
      sub_26813CA00(v1 + 144, v18 + 272);
      v20 = OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_11_3(v20);
      LOBYTE(v79) = 0;
LABEL_4:
      __swift_project_boxed_opaque_existential_1((v1 + 184), *(v1 + 208));
      OUTLINED_FUNCTION_24_2();
      sub_268188F38(&v79, v22, v23, v24, v25, v26, v27, v28, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
      v29 = OUTLINED_FUNCTION_15_3();
      v30(v29);

      sub_26812D9E0(v106, &qword_28024D488, &qword_2683D6100);
      v31 = &qword_28024D490;
      v32 = &qword_2683D2670;
LABEL_7:
      sub_26812D9E0(&v79, v31, v32);
LABEL_8:
      OUTLINED_FUNCTION_29_0();
      return;
  }
}

void sub_26813B108()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  v21 = v5;
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBC0 != -1)
  {
    swift_once();
  }

  *(v9 + 32) = sub_2683CD158();
  *(v9 + 40) = v10;
  sub_26813C83C(v0, v24);
  v11 = swift_allocObject();
  memcpy((v11 + 16), v24, 0xE0uLL);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_26813C874;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_2683D2698;
  *(v13 + 24) = v12;
  v14 = *__swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v24[3] = type metadata accessor for CreateNoteCATPatternsExecutor(0);
  v24[4] = &off_28790B0A0;
  v24[0] = v14;
  sub_26813CA00(v24, v23);
  OUTLINED_FUNCTION_20_2();
  v15 = swift_allocObject();
  sub_268128148(v23, v15 + 16);

  __swift_destroy_boxed_opaque_existential_0(v24);
  v17 = *v1;
  v16 = v1[1];

  sub_2683CB588();
  v18 = sub_2683CB548();
  v20 = v19;
  (*(v21 + 8))(v8, v22);
  *v3 = v9;
  *(v3 + 8) = &unk_2683D26A8;
  *(v3 + 16) = v13;
  *(v3 + 24) = &unk_2683D26B8;
  *(v3 + 32) = v15;
  *(v3 + 40) = &unk_2683D26C8;
  *(v3 + 48) = v17;
  *(v3 + 56) = sub_26813BCDC;
  *(v3 + 64) = 0;
  *(v3 + 72) = sub_26813BCF4;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *(v3 + 120) = &unk_2683D26D8;
  *(v3 + 128) = v16;
  *(v3 + 136) = 1;
  *(v3 + 137) = v24[0];
  *(v3 + 140) = *(v24 + 3);
  *(v3 + 144) = sub_2683779C8;
  *(v3 + 152) = 0;
  *(v3 + 160) = v18;
  *(v3 + 168) = v20;
  OUTLINED_FUNCTION_29_0();
}

void sub_26813B400()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBD0 != -1)
  {
    swift_once();
  }

  v5 = sub_2683CD158();
  v7 = OUTLINED_FUNCTION_26_1(v5, v6);
  OUTLINED_FUNCTION_23_2(v7, &off_28790B0A0);
  OUTLINED_FUNCTION_20_2();
  v8 = swift_allocObject();
  sub_268128148(&v12, v8 + 16);

  __swift_destroy_boxed_opaque_existential_0(&v13);
  v9 = *v0;

  sub_2683CB588();
  sub_2683CB548();
  v10 = OUTLINED_FUNCTION_16_3();
  v11(v10);
  *v2 = v4;
  *(v2 + 8) = &unk_2683D26F0;
  *(v2 + 16) = 0;
  *(v2 + 24) = &unk_2683D2700;
  *(v2 + 32) = v8;
  *(v2 + 40) = &unk_2683D2710;
  *(v2 + 48) = v9;
  *(v2 + 56) = sub_26813C03C;
  *(v2 + 64) = 0;
  *(v2 + 72) = sub_26813C0E8;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_0();
}

void sub_26813B5FC()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBE8 != -1)
  {
    swift_once();
  }

  v5 = sub_2683CD158();
  v7 = OUTLINED_FUNCTION_26_1(v5, v6);
  OUTLINED_FUNCTION_23_2(v7, &off_28790B0A0);
  OUTLINED_FUNCTION_20_2();
  v8 = swift_allocObject();
  sub_268128148(&v12, v8 + 16);

  __swift_destroy_boxed_opaque_existential_0(&v13);
  v9 = *v0;

  sub_2683CB588();
  sub_2683CB548();
  v10 = OUTLINED_FUNCTION_16_3();
  v11(v10);
  *v2 = v4;
  *(v2 + 8) = &unk_2683D2728;
  *(v2 + 16) = 0;
  *(v2 + 24) = &unk_2683D2738;
  *(v2 + 32) = v8;
  *(v2 + 40) = &unk_2683D2748;
  *(v2 + 48) = v9;
  *(v2 + 56) = sub_26813C4EC;
  *(v2 + 64) = 0;
  *(v2 + 72) = sub_26813C5BC;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_29_0();
}

void sub_26813B7F8(void *a1)
{
  v5[3] = sub_268129504(0, &qword_28024D4C0, 0x277CD3E08);
  v5[0] = a1;
  sub_26813CC6C(v5, v4);
  sub_268129504(0, &qword_28024CDC0, 0x277CD4250);
  v2 = a1;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v5);
    sub_26813CCC8(v3);
    sub_2683CFB38();
  }

  else
  {
    sub_26813B8FC();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v5);
  }
}

uint64_t sub_26813B8FC()
{
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v0 = sub_2683CF7E8();
  __swift_project_value_buffer(v0, qword_28027C958);
  v1 = sub_2683CF7C8();
  v2 = sub_2683CFE78();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2680EB000, v1, v2, "[CreateNote DisambiguationStrategy] Disambiguation items contains an INImageContent and can not be disambiguated", v3, 2u);
    MEMORY[0x26D617A40](v3, -1, -1);
  }

  sub_26813CD2C();

  return swift_allocError();
}

uint64_t sub_26813B9FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_26813BA84(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2681342AC;

  return v8(a1, v5);
}

uint64_t sub_26813BB88(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26813BBA8);
}

uint64_t sub_26813BBA8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_3(v1);

  return sub_26834FBF8(v2);
}

uint64_t sub_26813BC30(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_2683B6C0C(a1, a2);
}

id sub_26813BCF4(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = *a1;
  sub_268129504(0, &qword_28024D350, 0x277CD3E00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2683D2250;
  *(v9 + 32) = v8;
  v10 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v10);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
  v11 = v8;
  v12 = sub_2683B9B90(0, v9, 0, v7, v5);
  sub_26813CC04();
  return v12;
}

uint64_t sub_26813BE50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26813D6E8;

  return sub_26812B380(a1);
}

uint64_t sub_26813BEE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26813BF08);
}

uint64_t sub_26813BF08()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_3(v1);

  return sub_26834FD08(v2);
}

uint64_t sub_26813BF90(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_2683B6E54(a1, a2);
}

uint64_t sub_26813C054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, unint64_t))
{
  sub_2683CDE38();
  swift_allocObject();
  v6 = sub_2683CDE28();
  sub_2683CD9C8();
  swift_allocObject();
  sub_2683CD9B8();
  a5(0, 0xE000000000000000);
  sub_2683CDBF8();

  return v6;
}

id sub_26813C0E8(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = *a1;
  sub_268129504(0, &qword_28024D350, 0x277CD3E00);
  v9 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  v10 = v8;
  v11 = sub_2683B9B90(v8, 0, 0, v7, v5);
  sub_26813CC04();
  return v11;
}

uint64_t sub_26813C210(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26813D6E8;

  return sub_26812B6B8(a1);
}

uint64_t sub_26813C2A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26813C2C8);
}

uint64_t sub_26813C2C8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_2();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_3(v1);

  return sub_26834FE18(v2);
}

uint64_t sub_26813C350()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_26813C440(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_2683B6D30(a1, a2);
}

uint64_t sub_26813C4EC()
{
  sub_2683CDE38();
  swift_allocObject();
  v0 = sub_2683CDE28();
  sub_2683CD9C8();
  swift_allocObject();
  sub_2683CD9B8();
  sub_2683CDEC8();
  swift_allocObject();
  sub_2683CDEB8();
  sub_2683CDEA8();

  sub_2683CD9A8();

  sub_2683CDBF8();

  return v0;
}

id sub_26813C5BC(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = *a1;
  sub_268129504(0, &qword_28024D350, 0x277CD3E00);
  v9 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  v10 = v8;
  v11 = sub_2683B9B90(0, 0, v8, v7, v5);
  sub_26813CC04();
  return v11;
}

uint64_t sub_26813C6E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268137D60;

  return sub_26812B5B0(a1);
}

unint64_t sub_26813C77C()
{
  result = qword_28024D480;
  if (!qword_28024D480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D468, &unk_2683D2650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D480);
  }

  return result;
}

uint64_t sub_26813C898()
{
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return v4(v3);
}

uint64_t sub_26813C94C()
{
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return v4(v3);
}

uint64_t sub_26813CA00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26813CA64()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_26813BB88(v3, v4);
}

uint64_t sub_26813CAE8()
{
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_26813BC30(v3, v4);
}

uint64_t sub_26813CB80()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_3(v1);

  return sub_26813BE50(v3);
}

unint64_t sub_26813CC04()
{
  result = qword_28024D4B8;
  if (!qword_28024D4B8)
  {
    sub_268129504(255, &qword_28024D350, 0x277CD3E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D4B8);
  }

  return result;
}

uint64_t sub_26813CC6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26813CCC8(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2683CFA78();

  return v3;
}

unint64_t sub_26813CD2C()
{
  result = qword_28024D4C8[0];
  if (!qword_28024D4C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28024D4C8);
  }

  return result;
}

uint64_t sub_26813CD80()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_26813BEE8(v3, v4);
}

uint64_t sub_26813CE04()
{
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_26813BF90(v3, v4);
}

uint64_t sub_26813CE9C()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_3(v1);

  return sub_26813C210(v3);
}

uint64_t sub_26813CF20()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_3(v1);

  return sub_26813C2A8(v3, v4);
}

uint64_t sub_26813CFA4()
{
  OUTLINED_FUNCTION_13_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_268133EC8;
  v3 = OUTLINED_FUNCTION_0_8();

  return sub_26813C440(v3, v4);
}

uint64_t sub_26813D03C()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_3(v1);

  return sub_26813C6E4(v3);
}

uint64_t sub_26813D0C0()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_42();
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_26813D1B4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26813D23C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 >= a2)
  {
LABEL_26:
    v18 = (result + v7 + 1) & ~v7;
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *(((v9 + v18) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(v18, v6, v4);
    }
  }

  else
  {
    v10 = ((v9 + ((v7 + 1) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 136;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v8 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26813D394(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 136;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFF78)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v19 = &a1[v10 + 1] & ~v10;
          if (v8 < 0x7FFFFFFF)
          {
            v20 = (v11 + v19) & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v20 + 104) = 0u;
              *(v20 + 88) = 0u;
              *(v20 + 72) = 0u;
              *(v20 + 56) = 0u;
              *(v20 + 40) = 0u;
              *(v20 + 24) = 0u;
              *(v20 + 8) = 0u;
              *(v20 + 120) = 0u;
              *v20 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v20 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFF78)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) != 0xFFFFFF78)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 136);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        break;
      case 2:
        *&a1[v12] = v17;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v12] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook29ResponseFrameworkFeatureStateO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_26813D5E4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 224))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26813D624(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_4_3()
{
  *(v1 + 112) = 0;
  *(v1 + 120) = v0;
  *(v1 + 128) = v3;
  *(v1 + 136) = 1;
  *(v1 + 137) = *(v5 - 120);
  *(v1 + 140) = *(v5 - 117);
  *(v1 + 144) = sub_2683779DC;
  *(v1 + 152) = 0;
  *(v1 + 160) = v2;
  *(v1 + 168) = v4;
}

void *OUTLINED_FUNCTION_11_3(uint64_t a1)
{
  *(v1 + 528) = a1;

  return memcpy((v2 + 8), (v1 + 536), 0xB0uLL);
}

uint64_t OUTLINED_FUNCTION_18_2()
{

  return sub_2683CC9B8();
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return sub_26813CA00(v1 + 104, v0 + 400);
}

uint64_t OUTLINED_FUNCTION_23_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 96) = a1;
  *(v3 - 88) = a2;
  *(v3 - 120) = v2;

  return sub_26813CA00(v3 - 120, v3 - 160);
}

uint64_t OUTLINED_FUNCTION_24_2()
{

  return sub_2681340E8(v0 + 536, v0 + 40, v1, v2);
}

uint64_t OUTLINED_FUNCTION_26_1(uint64_t a1, uint64_t a2)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));

  return type metadata accessor for CreateNoteCATPatternsExecutor(0);
}

uint64_t sub_26813D8DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  sub_26813CA00((v4 + 1), v16);
  sub_26813CA00((v4 + 6), v15);
  v10 = v4[11];
  type metadata accessor for AnnounceReminderFlow();
  v11 = swift_allocObject();
  sub_26813D9D8(v9, v16, v15, v10, a1, a2, a3, a4);
  *&v16[0] = v11;
  sub_26813F218();

  v12 = a1;
  v13 = sub_2683CBF38();

  return v13;
}

uint64_t sub_26813D9D8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = 0;
  *(v8 + 16) = a1;
  sub_268128148(a2, v8 + 24);
  sub_268128148(a3, v8 + 64);
  *(v8 + 104) = a4;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  return v8;
}

uint64_t sub_26813DA58()
{
  OUTLINED_FUNCTION_14();
  v1[20] = v2;
  v1[21] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v1[22] = OUTLINED_FUNCTION_15_1();
  v3 = sub_2683CCC98();
  v1[23] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v1[24] = v4;
  v1[25] = OUTLINED_FUNCTION_15_1();
  v5 = sub_2683CC528();
  v1[26] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[27] = v6;
  v1[28] = OUTLINED_FUNCTION_15_1();
  v7 = sub_2683CC598();
  v1[29] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[30] = v8;
  v1[31] = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_26813DBC8()
{
  v23 = v0;
  v1 = *(v0[21] + 112);
  v0[32] = v1;
  v2 = [v1 title];
  v3 = [v2 spokenPhrase];

  v4 = sub_2683CFA78();
  v6 = v5;

  v7 = [v1 identifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2683CFA78();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v12 = sub_2683CF7E8();
  v0[33] = __swift_project_value_buffer(v12, qword_28027C958);

  v13 = sub_2683CF7C8();
  v14 = sub_2683CFE98();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = sub_2681610A0(v4, v6, &v22);

    *(v15 + 4) = v16;
    *(v15 + 12) = 2080;
    if (v11)
    {
      v17 = v9;
    }

    else
    {
      v17 = 7104878;
    }

    if (v11)
    {
      v18 = v11;
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = sub_2681610A0(v17, v18, &v22);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_2680EB000, v13, v14, "[AnnounceReminderFlow] Announcing reminder: '%s' with id: '%s'", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  v20 = swift_task_alloc();
  v0[34] = v20;
  *v20 = v0;
  v20[1] = sub_26813DE94;

  return sub_26813E8B0();
}

uint64_t sub_26813DE94()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *(v4 + 280) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_26813DF94()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = sub_26813EBE4(v1);
  v0[36] = v4;
  (*(v2 + 8))(v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D568, &qword_2683D2A18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683D2890;
  *(inited + 32) = sub_26813E750();
  *(inited + 40) = v4;
  v28 = MEMORY[0x277D84F90];
  v6 = v4;
  for (i = 0; i != 2; ++i)
  {
    v8 = *(inited + 8 * i + 32);
    if (v8)
    {
      v9 = v8;
      MEMORY[0x26D616770]();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      sub_2683CFD08();
    }
  }

  v10 = v0[32];
  v11 = v0[27];
  v12 = v0[28];
  v13 = v0[26];
  v27 = v0[24];
  v25 = v0[25];
  v26 = v0[23];
  v14 = v0[21];
  v15 = v0[22];
  swift_setDeallocating();
  sub_2681F5558();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D570, &qword_2683D2A20);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_2683D1EC0;
  v17 = sub_26813F368();
  *(v16 + 32) = v10;
  *(v16 + 40) = v17;
  v18 = v10;
  sub_268168378();
  swift_setDeallocating();
  sub_2681F556C();
  (*(v11 + 16))(v15, v12, v13);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v13);
  sub_2683CCC78();
  v19 = v14[6];
  v20 = v14[7];
  __swift_project_boxed_opaque_existential_1(v14 + 3, v19);
  v21 = MEMORY[0x277D5C1D8];
  v0[17] = v26;
  v0[18] = v21;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  (*(v27 + 16))(boxed_opaque_existential_0, v25, v26);
  v23 = swift_task_alloc();
  v0[37] = v23;
  *v23 = v0;
  v23[1] = sub_26813E268;

  return MEMORY[0x2821BB5D0](v0 + 14, v19, v20);
}

uint64_t sub_26813E268()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v3 + 304) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 112));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26813E370()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_11_4();
  v4 = *(v1 + 168);

  (*(v3 + 8))(v0, v2);
  v6 = OUTLINED_FUNCTION_5_3();
  v7(v6);
  *(v4 + 144) = 1;
  OUTLINED_FUNCTION_1_4();

  OUTLINED_FUNCTION_40();

  return v8();
}

uint64_t sub_26813E438()
{
  OUTLINED_FUNCTION_12_2();
  v14 = v0;
  v1 = *(v0 + 280);
  OUTLINED_FUNCTION_8_4();
  v2 = sub_2683CF7C8();
  v3 = sub_2683CFE78();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    OUTLINED_FUNCTION_14_4(4.8751e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
    v6 = sub_2683CFAD8();
    v8 = sub_2681610A0(v6, v7, &v13);

    *(v4 + 4) = v8;
    OUTLINED_FUNCTION_13_4(&dword_2680EB000, v9, v10, "[AnnounceReminderFlow] Failed announcing reminder with error: %{public}s");
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_4();

  OUTLINED_FUNCTION_40();

  return v11();
}

uint64_t sub_26813E5A8()
{
  OUTLINED_FUNCTION_12_2();
  v20 = v1;
  OUTLINED_FUNCTION_11_4();

  (*(v3 + 8))(v0, v2);
  v5 = OUTLINED_FUNCTION_5_3();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_0((v1 + 112));
  v7 = *(v1 + 304);
  OUTLINED_FUNCTION_8_4();
  v8 = sub_2683CF7C8();
  v9 = sub_2683CFE78();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    OUTLINED_FUNCTION_14_4(4.8751e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
    v12 = sub_2683CFAD8();
    v14 = sub_2681610A0(v12, v13, &v19);

    *(v10 + 4) = v14;
    OUTLINED_FUNCTION_13_4(&dword_2680EB000, v15, v16, "[AnnounceReminderFlow] Failed announcing reminder with error: %{public}s");
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_4();

  OUTLINED_FUNCTION_40();

  return v17();
}

id sub_26813E750()
{
  if (*(v0 + 136))
  {
    return 0;
  }

  else
  {
    return sub_26813E778();
  }
}

id sub_26813E778()
{
  v0 = sub_2683CB528();
  MEMORY[0x28223BE20](v0);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2681D9A00();
  if (v3)
  {
    v4 = v3;
    sub_2683CB518();
    sub_2681D9B5C(128, v2, v4);

    v5 = OUTLINED_FUNCTION_5_3();
    v6(v5);
  }

  v7 = [objc_allocWithZone(MEMORY[0x277D47AE8]) init];
  v8 = sub_2683CFA78();
  sub_26813F2FC(v8, v9, v7, &selRef_setNotificationType_);
  return v7;
}

uint64_t sub_26813E8B0()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  sub_2683CB668();
  v1[4] = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26813E930()
{
  OUTLINED_FUNCTION_12_2();
  v2 = v0[3];
  v1 = v0[4];
  type metadata accessor for NotebookReminderConcept(0);
  v3 = v2[14];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v2[11]);
  v4 = v3;
  sub_2683CC088();
  v5 = sub_268346118(v4, v1);
  v0[5] = v5;
  v6 = v2[17];
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_26813EA50;
  v8 = v0[2];

  return sub_2682B2288(v8, v5, *&v6, 0);
}

uint64_t sub_26813EA50()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v6);
  }

  else
  {

    OUTLINED_FUNCTION_40();

    return v7();
  }
}

uint64_t sub_26813EB80()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

id sub_26813EBE4(uint64_t a1)
{
  v1 = sub_2683CC1A8();
  v2 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
  if (v1 >> 62)
  {
    sub_268129504(0, &qword_28024D560, 0x277D47140);

    v3 = sub_2683D0398();
  }

  else
  {

    sub_2683D05C8();
    sub_268129504(0, &qword_28024D560, 0x277D47140);
    v3 = v1;
  }

  sub_26813F26C(v3, v2);
  v4 = sub_2683CFA78();
  sub_26813F2FC(v4, v5, v2, &selRef_setDialogPhase_);
  return v2;
}

uint64_t sub_26813ECF0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnnounceReminderFlow();
  sub_26813F218();
  return sub_2683CBF48();
}

uint64_t sub_26813ED4C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return v0;
}

uint64_t sub_26813ED94()
{
  sub_26813ED4C();

  return MEMORY[0x2821FE8D8](v0, 145, 7);
}

uint64_t getEnumTagSinglePayload for CreateNote.Parameter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AnnounceReminderFlow.ExitValue(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26813EF54()
{
  result = qword_28024D550;
  if (!qword_28024D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D550);
  }

  return result;
}

uint64_t sub_26813EFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26813F058;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_26813F058()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_42();
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_26813F168()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_26813DA58();
}

unint64_t sub_26813F218()
{
  result = qword_28024D558;
  if (!qword_28024D558)
  {
    type metadata accessor for AnnounceReminderFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D558);
  }

  return result;
}

void sub_26813F26C(uint64_t a1, void *a2)
{
  sub_268129504(0, &qword_28024D560, 0x277D47140);
  v3 = sub_2683CFC98();

  [a2 setViews_];
}

void sub_26813F2FC(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_2683CFA68();

  [a3 *a4];
}

unint64_t sub_26813F368()
{
  result = qword_28024D578;
  if (!qword_28024D578)
  {
    sub_268129504(255, &qword_280253310, 0x277CD4220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D578);
  }

  return result;
}

uint64_t sub_26813F3D8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26813F418(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_4()
{

  return sub_2683CC3F8();
}

id OUTLINED_FUNCTION_8_4()
{
  *(*(v1 + 168) + 144) = 2;

  return v0;
}

void OUTLINED_FUNCTION_13_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_14_4(float a1)
{
  *v3 = a1;
  *(v2 + 152) = v1;

  return v1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26813F544(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26813F584(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_26813F5D4@<X0>(void (*a1)(void *__return_ptr, char *, uint64_t, uint64_t)@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v19 = a2;
  v20 = a1;
  v21 = a3;
  v3 = sub_2683CCC18();
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2683CC748();
  OUTLINED_FUNCTION_0_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  sub_2683CC9E8();
  v15 = sub_2683CC738();
  v17 = v16;
  (*(v11 + 8))(v14, v9);
  sub_2683CCB88();
  v20(v22, v8, v15, v17);

  (*(v5 + 8))(v8, v3);
  sub_268138A04(v22);
  return sub_2681433DC(v22, &qword_28024D458, &unk_2683D2C60);
}

uint64_t sub_26813F7B0()
{
  OUTLINED_FUNCTION_14();
  v0[48] = v1;
  v0[49] = v2;
  v0[46] = v3;
  v0[47] = v4;
  v0[45] = v5;
  v6 = sub_2683CCBA8();
  v0[50] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v0[51] = v7;
  v0[52] = OUTLINED_FUNCTION_15_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5B0, &qword_2683D97C0);
  OUTLINED_FUNCTION_23(v8);
  v0[53] = OUTLINED_FUNCTION_15_1();
  v9 = sub_2683CCC18();
  v0[54] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v0[55] = v10;
  v0[56] = OUTLINED_FUNCTION_15_1();
  v11 = sub_2683CC748();
  v0[57] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v0[58] = v12;
  v0[59] = OUTLINED_FUNCTION_55();
  v0[60] = swift_task_alloc();
  v0[61] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v13);
}

uint64_t sub_26813F938()
{
  v79 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 456);
  v3 = *(v0 + 464);
  v5 = *(v0 + 440);
  v4 = *(v0 + 448);
  v76 = *(v0 + 432);
  v74 = *(v0 + 384);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  sub_2683CC9E8();
  v6 = sub_2683CC738();
  v8 = v7;
  v9 = *(v3 + 8);
  v9(v1, v2);
  v10 = v9;
  sub_2683CCB88();
  v74(v4, v6, v8);

  (*(v5 + 8))(v4, v76);
  sub_2681340E8(v0 + 16, v0 + 88, &qword_28024D458, &unk_2683D2C60);
  v11 = *(v0 + 88);
  *(v0 + 496) = v11;
  if (v11 == 2)
  {
    sub_268143388(v0 + 88);
    goto LABEL_5;
  }

  if (v11 == 3)
  {
    sub_2681433DC(v0 + 88, &qword_28024D458, &unk_2683D2C60);
LABEL_5:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v12 = sub_2683CF7E8();
    __swift_project_value_buffer(v12, qword_28027C958);
    v13 = OUTLINED_FUNCTION_32_1();
    v14(v13);
    v15 = sub_2683CF7C8();
    v16 = sub_2683CFE78();
    if (os_log_type_enabled(v15, v16))
    {
      v18 = *(v0 + 408);
      v17 = *(v0 + 416);
      v19 = *(v0 + 400);
      swift_slowAlloc();
      v20 = OUTLINED_FUNCTION_34_1();
      v78[0] = v20;
      *v2 = 136315138;
      sub_2683CCB88();
      OUTLINED_FUNCTION_44();
      sub_2683CFAD8();
      (*(v18 + 8))(v17, v19);
      v21 = OUTLINED_FUNCTION_44();
      v24 = sub_2681610A0(v21, v22, v23);

      *(v2 + 4) = v24;
      _os_log_impl(&dword_2680EB000, v15, v16, "[SnoozeTasks NeedsConfirmation] Did not get ConfirmationTask from parse: %s", v2, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
      v26 = *(v0 + 408);
      v25 = *(v0 + 416);
      v27 = *(v0 + 400);

      (*(v26 + 8))(v25, v27);
    }

    sub_26812C6B8();
    swift_allocError();
    *v28 = 0u;
    *(v28 + 16) = 0u;
    *(v28 + 32) = 4;
    swift_willThrow();
    goto LABEL_16;
  }

  v29 = *(v0 + 480);
  v30 = *(v0 + 456);
  v31 = *(v0 + 112);
  *(v0 + 160) = *(v0 + 96);
  *(v0 + 176) = v31;
  *(v0 + 192) = *(v0 + 128);
  *(v0 + 201) = *(v0 + 137);
  sub_2683CC9E8();
  v32 = sub_2683CC738();
  v34 = v33;
  v9(v29, v30);

  v35 = sub_268201068(v32, v34);
  if (v35 == 2)
  {
    sub_26812C6B8();
    v36 = swift_allocError();
    *v37 = v32;
    v37[1] = v34;
    OUTLINED_FUNCTION_16_1(v36, v37);
    sub_2681433DC(v0 + 160, &qword_28024D460, &qword_2683D5050);
LABEL_16:
    sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);

    OUTLINED_FUNCTION_40();
LABEL_17:

    return v46();
  }

  v38 = v35;

  v39 = sub_2683CC9C8();
  if (v11)
  {
    v40 = sub_2682DD8C4(v38 & 1, 0, 1);
  }

  else
  {
    v41 = *(v0 + 472);
    v77 = *(v0 + 456);
    v42 = sub_2683CC9D8();
    v43 = [v42 itemToConfirm];

    sub_2683D0038();
    swift_unknownObjectRelease();
    sub_2683CC9E8();
    v44 = sub_2683CC728();
    LOBYTE(v42) = v45;
    v10(v41, v77);
    v40 = sub_2682DD960(v38 & 1, (v0 + 328), v44, v42 & 1);
    __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  }

  *(v0 + 504) = v40;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v48 = sub_2683CF7E8();
  *(v0 + 512) = __swift_project_value_buffer(v48, qword_28027C958);
  v49 = sub_2683CF7C8();
  v50 = sub_2683CFE98();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v51 = 136315394;
    *(v0 + 81) = v11 & 1;
    v52 = sub_2683CFAD8();
    v54 = sub_2681610A0(v52, v53, v78);

    *(v51 + 4) = v54;
    *(v51 + 12) = 2080;
    v55 = v40;
    v56 = [v55 description];
    v57 = sub_2683CFA78();
    v59 = v58;

    v60 = sub_2681610A0(v57, v59, v78);

    *(v51 + 14) = v60;
    _os_log_impl(&dword_2680EB000, v49, v50, "[SnoozeTasks NeedsConfirmation] Parsed response as %s. Updated intent: %s", v51, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  sub_2681340E8(v0 + 160, v0 + 224, &qword_28024D460, &qword_2683D5050);
  v61 = *(v0 + 280);
  if (v61 != 1)
  {
    if (v61 == 255)
    {
      sub_2681433DC(v0 + 224, &qword_28024D460, &qword_2683D5050);
    }

    else
    {
      sub_26813A1A0(v0 + 224);
    }

    OUTLINED_FUNCTION_29_1();
    v67 = sub_2683CC758();
    OUTLINED_FUNCTION_1();
    v68 = OUTLINED_FUNCTION_28_1();
    v69(v68);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v67);
    sub_268143430();
    v73 = v40;
    OUTLINED_FUNCTION_0_0();
    sub_2683CC8D8();
    sub_2681433DC(v0 + 160, &qword_28024D460, &qword_2683D5050);
    sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);

    OUTLINED_FUNCTION_7_4();
    goto LABEL_17;
  }

  sub_268128148((v0 + 224), v0 + 288);
  v62 = *(v0 + 312);
  v63 = *(v0 + 320);
  __swift_project_boxed_opaque_existential_1((v0 + 288), v62);
  v64 = *(v63 + 16);
  v65 = v40;
  v75 = (v64 + *v64);
  v66 = swift_task_alloc();
  *(v0 + 520) = v66;
  *v66 = v0;
  v66[1] = sub_268140234;

  return v75(1, v62, v63);
}

uint64_t sub_268140234()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 528) = v3;

  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_268140320()
{
  v25 = v0;
  v1 = v0[66];
  v2 = v0[63];
  v3 = sub_2682DDA40(v1);

  v4 = v3;
  v5 = v4;
  v6 = sub_2683CF7C8();
  v7 = sub_2683CFE98();

  if (os_log_type_enabled(v6, v7))
  {
    swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_34_1();
    v24 = v8;
    *v3 = 136315138;
    v9 = v5;
    v10 = [v9 description];
    v11 = sub_2683CFA78();
    v13 = v12;

    v14 = sub_2681610A0(v11, v13, &v24);

    *(v3 + 1) = v14;
    _os_log_impl(&dword_2680EB000, v6, v7, "[SnoozeTasks NeedsConfirmation] Merged intent from secondary task: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 36);
  OUTLINED_FUNCTION_29_1();
  v15 = sub_2683CC758();
  OUTLINED_FUNCTION_1();
  v16 = OUTLINED_FUNCTION_28_1();
  v17(v16);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v15);
  sub_268143430();
  v21 = v5;
  OUTLINED_FUNCTION_0_0();
  sub_2683CC8D8();
  sub_2681433DC((v0 + 20), &qword_28024D460, &qword_2683D5050);
  sub_2681433DC((v0 + 2), &qword_28024D458, &unk_2683D2C60);

  OUTLINED_FUNCTION_7_4();

  return v22();
}

uint64_t sub_2681405A0()
{
  OUTLINED_FUNCTION_14();
  v0[32] = v1;
  v0[33] = v2;
  v0[30] = v3;
  v0[31] = v4;
  v0[28] = v5;
  v0[29] = v6;
  v0[27] = v7;
  v8 = type metadata accessor for Snippet(0);
  v0[34] = v8;
  OUTLINED_FUNCTION_23(v8);
  v0[35] = OUTLINED_FUNCTION_55();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v9 = sub_2683CC9A8();
  v0[39] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v0[40] = v10;
  v0[41] = OUTLINED_FUNCTION_15_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v11);
  v0[42] = OUTLINED_FUNCTION_15_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v12);
  v0[43] = OUTLINED_FUNCTION_15_1();
  v13 = sub_2683CC138();
  v0[44] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v0[45] = v14;
  v0[46] = OUTLINED_FUNCTION_55();
  v0[47] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v15);
  v0[48] = OUTLINED_FUNCTION_15_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v16);
  v0[49] = v17;
  v0[50] = *(v18 + 64);
  v0[51] = OUTLINED_FUNCTION_55();
  v0[52] = swift_task_alloc();
  v0[53] = swift_task_alloc();
  v0[54] = swift_task_alloc();
  v0[55] = swift_task_alloc();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  v19 = sub_2683CC528();
  v0[59] = v19;
  OUTLINED_FUNCTION_3_1(v19);
  v0[60] = v20;
  v0[61] = OUTLINED_FUNCTION_15_1();
  v21 = sub_2683CC748();
  v0[62] = v21;
  OUTLINED_FUNCTION_3_1(v21);
  v0[63] = v22;
  v0[64] = OUTLINED_FUNCTION_55();
  v0[65] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  v0[66] = v23;
  OUTLINED_FUNCTION_3_1(v23);
  v0[67] = v24;
  v0[68] = OUTLINED_FUNCTION_15_1();
  v25 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v25);
}

uint64_t sub_268140920()
{
  v39 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C958);
  v3 = OUTLINED_FUNCTION_32_1();
  v4(v3);
  v5 = sub_2683CF7C8();
  v6 = sub_2683CFE98();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[65];
    v8 = v0[63];
    v34 = v0[62];
    swift_slowAlloc();
    v36 = OUTLINED_FUNCTION_34_1();
    v38 = v36;
    *v1 = 136315138;
    v35 = v6;
    sub_2683CC9E8();
    v9 = sub_2683CC738();
    v11 = v10;
    (*(v8 + 8))(v7, v34);
    v12 = OUTLINED_FUNCTION_44();
    v13(v12);
    v14 = sub_2681610A0(v9, v11, &v38);

    *(v1 + 4) = v14;
    _os_log_impl(&dword_2680EB000, v5, v35, "[SnoozeTasks NeedsConfirmation] making prompt for confirming %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v15 = OUTLINED_FUNCTION_44();
    v16(v15);
  }

  sub_2683CC9E8();
  v17 = sub_2683CC738();
  v19 = v18;
  v20 = OUTLINED_FUNCTION_19_2();
  v21(v20);

  v22 = OUTLINED_FUNCTION_0_0();
  v24 = sub_268201068(v22, v23);
  if (v24 == 2)
  {
    sub_26812C6B8();
    v37 = swift_allocError();
    *v25 = v17;
    v25[1] = v19;
    OUTLINED_FUNCTION_16_1(v37, v25);
    OUTLINED_FUNCTION_13_5();

    OUTLINED_FUNCTION_40();

    return v26();
  }

  else
  {
    v28 = v24;

    v0[5] = &type metadata for SnoozeTasks.Parameter;
    v0[6] = &off_2879048D8;
    *(v0 + 16) = v28 & 1;
    sub_2681686A4(v0 + 2);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v29 = sub_2683CC9D8();
    v30 = [v29 confirmationReason];

    v31 = swift_task_alloc();
    v0[69] = v31;
    *v31 = v0;
    v31[1] = sub_268140D60;
    v32 = v0[30];
    v33 = v0[28];

    return sub_268142190(v33, v28 & 1, v30, v32);
  }
}

uint64_t sub_268140D60()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 560) = v4;
  *(v2 + 568) = v0;

  if (v0)
  {
    v5 = sub_26814203C;
  }

  else
  {
    v5 = sub_268140E6C;
  }

  return MEMORY[0x2822009F8](v5);
}

void sub_268140E6C()
{
  v1 = v0[70];
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[59];
  v5 = v0[57];
  v6 = v0[48];
  v7 = v0[43];
  v86 = v0[42];
  v8 = v0[34];
  __swift_storeEnumTagSinglePayload(v0[58], 1, 1, v8);
  *v5 = 1541;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  (*(v3 + 16))(v6, v2, v4);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
  sub_2683CC118();
  v15 = sub_2683CED08();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v15);
  v16 = sub_2683CC1D8();
  __swift_storeEnumTagSinglePayload(v86, 1, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v17 = swift_allocObject();
  v0[72] = v17;
  *(v17 + 16) = xmmword_2683D2250;
  *(v17 + 32) = v1;
  v18 = v1;
  if (sub_2683ABE58())
  {
    sub_2683ABE60();
    if ((v17 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x26D616C90](0, v17);
    }

    else
    {
      v19 = *(v17 + 32);
    }

    v20 = v19;
    v21 = [v19 catId];

    v82 = sub_2683CFA78();
    v85 = v22;
  }

  else
  {
    v82 = 0;
    v85 = 0;
  }

  v23 = v0[58];
  v81 = v23;
  v25 = v0[55];
  v24 = v0[56];
  v27 = v0[49];
  v26 = v0[50];
  v77 = v0[47];
  v78 = v0[48];
  v28 = v0[45];
  v75 = v0[46];
  v76 = v0[44];
  v79 = v0[43];
  v80 = v0[42];
  v83 = v0[34];
  v84 = v0[54];
  v29 = v0[31];
  sub_2681340E8(v0[57], v24, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v23, v25, &qword_28024E770, &qword_2683D80D0);
  v30 = *(v27 + 80);
  v31 = (v30 + 24) & ~v30;
  v32 = (v26 + v30 + v31) & ~v30;
  v33 = swift_allocObject();
  v0[73] = v33;
  *(v33 + 16) = v29;
  sub_2681430AC(v24, v33 + v31);
  sub_2681430AC(v25, v33 + v32);
  (*(v28 + 16))(v75, v77, v76);
  v34 = swift_task_alloc();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = 0;
  *(v34 + 40) = v82;
  *(v34 + 48) = v85;
  *(v34 + 56) = v78;
  *(v34 + 64) = 257;
  *(v34 + 72) = sub_26814311C;
  *(v34 + 80) = v33;
  *(v34 + 88) = 0;
  *(v34 + 96) = v79;
  *(v34 + 104) = 2;
  *(v34 + 112) = v80;

  sub_2683CC8E8();

  sub_2681340E8(v81, v84, &qword_28024E770, &qword_2683D80D0);
  if (__swift_getEnumTagSinglePayload(v84, 1, v83) == 1)
  {
    v35 = v0 + 54;
  }

  else
  {
    v36 = v0[57];
    v37 = v0[53];
    v38 = v0[34];
    sub_26814320C(v0[54], v0[38]);
    sub_2681340E8(v36, v37, &qword_28024E770, &qword_2683D80D0);
    if (__swift_getEnumTagSinglePayload(v37, 1, v38) != 1)
    {
      v58 = v0[37];
      v59 = v0[38];
      v60 = v0[34];
      sub_26814320C(v0[53], v58);
      v0[20] = v60;
      v61 = sub_268143270();
      v0[21] = v61;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
      sub_2681432C8(v59, boxed_opaque_existential_0);
      v0[25] = v60;
      v0[26] = v61;
      v63 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
      sub_2681432C8(v58, v63);
      OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_10_2();
      v0[74] = v64;
      *v64 = v65;
      v64[1] = sub_26814154C;
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X5 }
    }

    v35 = v0 + 53;
    sub_26814332C(v0[38]);
  }

  v39 = *v35;
  v40 = v0[58];
  v41 = v0[52];
  v42 = v0[34];
  sub_2681433DC(v39, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v40, v41, &qword_28024E770, &qword_2683D80D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v42);
  v44 = v0[52];
  v45 = v0[34];
  if (EnumTagSinglePayload == 1)
  {
    v46 = v0[57];
    v47 = v0[51];
    sub_2681433DC(v44, &qword_28024E770, &qword_2683D80D0);
    sub_2681340E8(v46, v47, &qword_28024E770, &qword_2683D80D0);
    v48 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v48, v49, v45) == 1)
    {
      sub_2681433DC(v0[51], &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_10_2();
      v0[77] = v50;
      *v50 = v51;
      v50[1] = sub_268141D90;
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X3 }
    }

    v68 = v0[34];
    v69 = v0[35];
    sub_26814320C(v0[51], v69);
    v0[10] = v68;
    v0[11] = sub_268143270();
    v70 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    sub_2681432C8(v69, v70);
    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_10_2();
    v0[76] = v71;
    *v71 = v72;
    OUTLINED_FUNCTION_40_0(v71);
  }

  else
  {
    v54 = v0[36];
    sub_26814320C(v44, v54);
    v0[15] = v45;
    v0[16] = sub_268143270();
    v55 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
    sub_2681432C8(v54, v55);
    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_10_2();
    v0[75] = v56;
    *v56 = v57;
    OUTLINED_FUNCTION_40_0(v56);
  }

  OUTLINED_FUNCTION_24_3();

  __asm { BR              X4 }
}