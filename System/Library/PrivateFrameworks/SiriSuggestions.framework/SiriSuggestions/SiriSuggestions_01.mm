uint64_t sub_2311E61DC(char *a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 8;
  v10 = (a3 - a2) / 8;
  if (v9 < v10)
  {
    sub_2311DDD00(a1, (a2 - a1) / 8, a4);
    v11 = &v5[8 * v9];
    for (i = v11; ; v11 = i)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_28;
      }

      v13 = *v7;
      v14 = *v5;
      v15 = *(a5 + 48);

      v16 = v15(v13);
      v17 = v15(v14);

      if (v17 >= v16)
      {
        break;
      }

      v18 = v7;
      v19 = v8 == v7;
      v7 += 8;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 += 8;
    }

    v18 = v5;
    v19 = v8 == v5;
    v5 += 8;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v18;
    goto LABEL_13;
  }

  sub_2311DDD00(a2, (a3 - a2) / 8, a4);
  v11 = &v5[8 * v10];
  v33 = v8;
  v34 = v5;
LABEL_15:
  v20 = v7 - 8;
  v6 -= 8;
  v36 = v7;
  while (v11 > v5 && v7 > v8)
  {
    v22 = v11;
    v23 = *(v11 - 1);
    v11 -= 8;
    v24 = v20;
    v25 = *v20;
    v26 = *(a5 + 48);

    v27 = v26(v23);
    v28 = v26(v25);

    v29 = v6 + 8;
    if (v28 < v27)
    {
      v7 = v24;
      v8 = v33;
      v11 = v22;
      v5 = v34;
      if (v29 != v36)
      {
        *v6 = *v24;
        v7 = v24;
      }

      goto LABEL_15;
    }

    if (v22 != v29)
    {
      *v6 = *v11;
    }

    v6 -= 8;
    v8 = v33;
    v5 = v34;
    v7 = v36;
    v20 = v24;
  }

LABEL_28:
  v30 = (v11 - v5) / 8;
  if (v7 != v5 || v7 >= &v5[8 * v30])
  {
    memmove(v7, v5, 8 * v30);
  }

  return 1;
}

char *sub_2311E6448(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_2311E6474(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F90, &qword_231370D60);
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

uint64_t sub_2311E66F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_11();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t objectdestroy_71Tm()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  OUTLINED_FUNCTION_73();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
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

void sub_2311E6874(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_2311E6908(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2311E69E0(uint64_t a1)
{
  sub_231369FD0();
  v1 = sub_231369FA0();

  return v1;
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1)
{
  *(v1 + 456) = a1;
  v3 = *(v1 + 32);
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 48);
  sub_2311D38A8((v1 + 56), a1 + 56);

  return sub_2311D38A8((v1 + 96), a1 + 96);
}

uint64_t OUTLINED_FUNCTION_17_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18_3()
{
}

unint64_t OUTLINED_FUNCTION_63_0()
{

  return sub_2311CFD58(v0, v1, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_65_0()
{
}

uint64_t OUTLINED_FUNCTION_68_0()
{
}

uint64_t OUTLINED_FUNCTION_69()
{
}

uint64_t OUTLINED_FUNCTION_71_0()
{

  return sub_2311CF324(v1, v0 + 56);
}

uint64_t OUTLINED_FUNCTION_80_0()
{
  v4 = *(v0 + 48) + 40 * v2;

  return sub_2311E5778(v4, v1 + 216);
}

uint64_t OUTLINED_FUNCTION_81()
{
}

uint64_t OUTLINED_FUNCTION_84()
{
}

uint64_t OUTLINED_FUNCTION_85(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
}

uint64_t sub_2311E6D3C()
{
  sub_23136A650();
  MEMORY[0x23192A730](0xD00000000000002DLL, 0x800000023137C160);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_23136A8D0();
  MEMORY[0x23192A730](0x7372656E776F202CLL, 0xEA0000000000203ALL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43200, &qword_23136BC90);
  sub_23136A6F0();
  return 0;
}

void *sub_2311E6E20(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t *a6, uint64_t *a7, __int128 *a8)
{
  v14 = *a6;
  v15 = *a7;
  sub_2311D38A8(a1, (v8 + 2));
  sub_2311D38A8(a2, (v8 + 7));
  sub_2311D38A8(a3, (v8 + 12));
  v8[17] = a4;
  sub_2311D38A8(a5, (v8 + 18));
  v8[23] = v14;
  v8[24] = v15;
  sub_2311D38A8(a8, (v8 + 25));
  return v8;
}

uint64_t sub_2311E6EB4()
{
  OUTLINED_FUNCTION_8();
  v1[40] = v0;
  v2 = sub_2313698C0();
  v1[41] = v2;
  v1[42] = *(v2 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2311E6F74(uint64_t a1)
{
  v20 = v1;
  sub_231369100();

  v2 = sub_2313698A0();
  v3 = sub_23136A390();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 320);
    OUTLINED_FUNCTION_17();
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_29_0();
    v19 = v6;
    *v5 = 136315138;
    sub_2311CF388(v4 + 56, v1 + 256);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43200, &qword_23136BC90);
    v7 = sub_23136A010();
    v9 = sub_2311CFD58(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2311CB000, v2, v3, "Loading wrapped domain definitions %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v10 = OUTLINED_FUNCTION_28_0();
    v11(v10);
  }

  else
  {

    v12 = OUTLINED_FUNCTION_28_0();
    v13(v12);
  }

  __swift_project_boxed_opaque_existential_1((*(v1 + 320) + 56), *(*(v1 + 320) + 80));
  v17 = (OUTLINED_FUNCTION_38() + 8);
  v18 = (*v17 + **v17);
  v14 = swift_task_alloc();
  *(v1 + 360) = v14;
  *v14 = v1;
  OUTLINED_FUNCTION_34_0(v14);
  v15 = OUTLINED_FUNCTION_28_0();

  return v18(v15);
}

uint64_t sub_2311E71D8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 368) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2311E72C0()
{
  v1 = v0[46];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v16 = MEMORY[0x277D84F90];
    sub_2311F583C(0, v2, 0);
    v3 = v16;
    v4 = v1 + 32;
    do
    {
      sub_2311CF388(v4, (v0 + 12));
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      OUTLINED_FUNCTION_14_1();
      sub_231367AD0();
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      OUTLINED_FUNCTION_14_1();
      sub_231367DE0();
      v5 = v0[20];
      v6 = v0[21];
      __swift_project_boxed_opaque_existential_1(v0 + 17, v5);
      v0[10] = v5;
      v0[11] = *(v6 + 8);
      __swift_allocate_boxed_opaque_existential_1(v0 + 7);
      OUTLINED_FUNCTION_26_0();
      (*(v7 + 16))();
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
      v9 = *(v16 + 16);
      v8 = *(v16 + 24);
      if (v9 >= v8 >> 1)
      {
        v10 = OUTLINED_FUNCTION_37(v8);
        sub_2311F583C(v10, v9 + 1, 1);
      }

      *(v16 + 16) = v9 + 1;
      memcpy((v16 + 80 * v9 + 32), v0 + 2, 0x50uLL);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v0[47] = v3;
  v11 = v0[40];
  v12 = v11[17];
  v0[37] = v11[23];
  v0[38] = v11[24];
  sub_231369EE0();
  v13 = swift_task_alloc();
  v0[48] = v13;
  *v13 = v0;
  v13[1] = sub_2311E74E4;
  v14 = v0[46];

  return sub_2311E7AE8(v14, v12, v0 + 37, v0 + 38, (v11 + 25));
}

uint64_t sub_2311E74E4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_46();
  *v4 = v3;
  *(v6 + 392) = v5;

  v7 = OUTLINED_FUNCTION_32_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2311E760C()
{
  v1 = v0[49];
  v2 = v0[47];
  v3 = v0[40];
  type metadata accessor for SignalGeneratorFactory();
  v4 = sub_23132C538(v1);
  v0[50] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F0, &unk_23136BC80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23136B670;
  sub_2311CF388(v3 + 96, (v0 + 22));
  sub_2311CF388(v3 + 144, (v0 + 27));
  v6 = type metadata accessor for OwnerDispatcherGenerator();
  OUTLINED_FUNCTION_30_0(v6);

  v7 = sub_23135F080(v2, v0 + 22, v0 + 27, v4);
  *(v5 + 56) = v6;
  *(v5 + 64) = sub_2311EB350(qword_280F80810, 255, type metadata accessor for OwnerDispatcherGenerator, &unk_23137A198);
  *(v5 + 32) = v7;
  v0[39] = v5;
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v11 = (OUTLINED_FUNCTION_38() + 16);
  v12 = (*v11 + **v11);
  v8 = swift_task_alloc();
  v0[51] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_34_0(v8);
  v9 = OUTLINED_FUNCTION_28_0();

  return v12(v9);
}

uint64_t sub_2311E7828()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 416) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2311E7910()
{
  v18 = v0;
  sub_231267390(v0[52]);
  sub_231369100();
  v1 = v0[39];
  sub_231369EE0();
  v2 = sub_2313698A0();
  v3 = sub_23136A390();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[42];
  v5 = v0[43];
  v7 = v0[41];
  if (v4)
  {
    OUTLINED_FUNCTION_17();
    v8 = swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_29_0();
    v17 = v9;
    *v8 = 136315138;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
    v11 = MEMORY[0x23192A860](v1, v10);
    v16 = v7;
    v13 = sub_2311CFD58(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2311CB000, v2, v3, "Loaded wrapped generator definitions %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v6 + 8))(v5, v16);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  OUTLINED_FUNCTION_14();

  return v14(v1);
}

uint64_t sub_2311E7AE8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v5[115] = a5;
  v5[114] = a2;
  v5[113] = a1;
  v8 = sub_2313698C0();
  v5[116] = v8;
  v5[117] = *(v8 - 8);
  v5[118] = swift_task_alloc();
  v5[119] = swift_task_alloc();
  v5[120] = *a3;
  v5[121] = *a4;

  return MEMORY[0x2822009F8](sub_2311E7BDC, 0, 0);
}

uint64_t sub_2311E7BDC()
{
  v22 = v0;
  v1 = v0[113];
  v2 = *(v1 + 16);
  v0[122] = v2;
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x277D84F90];
    do
    {
      sub_2311CF388(v3, (v0 + 12));
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      OUTLINED_FUNCTION_25_1();
      sub_231367DE0();
      __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
      sub_231369510();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43208, &qword_23136BC98);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v0[21] = 0;
        *(v0 + 19) = 0u;
        *(v0 + 17) = 0u;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
      sub_2311EB398((v0 + 17), (v0 + 27), &qword_27DD43210, &qword_23136BCA0);
      if (v0[30])
      {
        sub_2311D38A8((v0 + 27), (v0 + 82));
        sub_2311CF388((v0 + 82), (v0 + 87));
        v5 = v0[15];
        v6 = v0[16];
        __swift_project_boxed_opaque_existential_1(v0 + 12, v5);
        v0[95] = v5;
        v0[96] = *(v6 + 8);
        __swift_allocate_boxed_opaque_existential_1(v0 + 92);
        OUTLINED_FUNCTION_26_0();
        (*(v7 + 16))();
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 82);
        sub_2311D38A8((v0 + 87), (v0 + 2));
        sub_2311D38A8(v0 + 46, (v0 + 7));
      }

      else
      {
        *(v0 + 4) = 0u;
        *(v0 + 5) = 0u;
        *(v0 + 2) = 0u;
        *(v0 + 3) = 0u;
        *(v0 + 1) = 0u;
      }

      OUTLINED_FUNCTION_28_3((v0 + 17));
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
      if (v0[5])
      {
        memcpy(__dst, v0 + 2, sizeof(__dst));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_27_1();
          sub_23126DE2C(v10, v11, v12, v13);
          v4 = v14;
        }

        v9 = *(v4 + 16);
        v8 = *(v4 + 24);
        if (v9 >= v8 >> 1)
        {
          v15 = OUTLINED_FUNCTION_37(v8);
          sub_23126DE2C(v15, v9 + 1, 1, v4);
          v4 = v16;
        }

        *(v4 + 16) = v9 + 1;
        memcpy((v4 + 80 * v9 + 32), __dst, 0x50uLL);
      }

      else
      {
        sub_2311EB450((v0 + 2), &qword_27DD43218, &qword_23136BCA8);
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v0[123] = v4;
  v17 = *(v0[114] + 16);
  OUTLINED_FUNCTION_33_2();

  v18 = swift_task_alloc();
  v0[124] = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_34_0(v18);

  return v20(v17);
}

uint64_t sub_2311E7EF4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1000) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2311E7FDC()
{
  OUTLINED_FUNCTION_39();
  if (!*(v0 + 976))
  {
LABEL_15:
    OUTLINED_FUNCTION_2_1();
    goto LABEL_16;
  }

  for (i = 0; ; i = *(v0 + 1008) + 1)
  {
    *(v0 + 1008) = i;
    sub_2311CF388(*(v0 + 904) + 40 * i + 32, v0 + 256);
    __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
    OUTLINED_FUNCTION_14_1();
    sub_231367DE0();
    __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
    OUTLINED_FUNCTION_13_1();
    sub_231369510();
    OUTLINED_FUNCTION_31_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43028, &qword_23136B920);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_4_0();
      v15 = *(v0 + 640);
      *(v0 + 1016) = v15;
      v16 = __swift_project_boxed_opaque_existential_1((v0 + 616), v15);
      OUTLINED_FUNCTION_1_7(v16);
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_8_1();
    sub_2311D1D6C(v0 + 808, v0 + 872);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43228, &qword_23136BCC8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 808));
      v8 = OUTLINED_FUNCTION_12_0();
      sub_2311EB450(v8, &qword_27DD43230, &qword_23136BCD0);
      goto LABEL_12;
    }

    sub_2311D38A8((v0 + 456), v0 + 416);
    OUTLINED_FUNCTION_10_1();
    v2 = sub_231368D40();
    v3 = OUTLINED_FUNCTION_24_4(v2);
    if (v4)
    {
      break;
    }

LABEL_11:

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 808));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 416));
LABEL_12:
    v9 = *(v0 + 976);
    v10 = *(v0 + 1008) + 1;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
    if (v10 == v9)
    {
      goto LABEL_15;
    }
  }

  v5 = 0;
  while (1)
  {
    OUTLINED_FUNCTION_42_0(v3, v5);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_41_0();
    if (*(v0 + 600))
    {
      break;
    }

    OUTLINED_FUNCTION_28_3(v0 + 576);
    v6 = *(v0 + 1048);
    v7 = *(v0 + 1056) + 1;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 496));
    if (v7 == v6)
    {
      goto LABEL_11;
    }

    v3 = OUTLINED_FUNCTION_23_0();
  }

  OUTLINED_FUNCTION_0_4();
LABEL_16:
  OUTLINED_FUNCTION_40();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2311E8230()
{
  OUTLINED_FUNCTION_8();
  sub_23120FF7C();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 616));
  v1 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2311E82AC()
{
  OUTLINED_FUNCTION_39();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
  while (1)
  {
    sub_2311D1D6C(v0 + 808, v0 + 872);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43228, &qword_23136BCC8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 808));
      v7 = OUTLINED_FUNCTION_12_0();
      sub_2311EB450(v7, &qword_27DD43230, &qword_23136BCD0);
      goto LABEL_10;
    }

    sub_2311D38A8((v0 + 456), v0 + 416);
    __swift_project_boxed_opaque_existential_1((v0 + 416), *(v0 + 440));
    OUTLINED_FUNCTION_25_1();
    v1 = sub_231368D40();
    v2 = OUTLINED_FUNCTION_24_4(v1);
    if (v3)
    {
      break;
    }

LABEL_9:

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 808));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 416));
LABEL_10:
    v8 = *(v0 + 976);
    v9 = *(v0 + 1008) + 1;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
    if (v9 == v8)
    {
      OUTLINED_FUNCTION_2_1();
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_35_2();
    sub_2311CF388(v11 + 40 * v10 + 72, v0 + 256);
    __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
    OUTLINED_FUNCTION_25_1();
    sub_231367DE0();
    __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
    OUTLINED_FUNCTION_13_1();
    sub_231369510();
    OUTLINED_FUNCTION_31_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43028, &qword_23136B920);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_4_0();
      v16 = *(v0 + 640);
      *(v0 + 1016) = v16;
      v17 = __swift_project_boxed_opaque_existential_1((v0 + 616), v16);
      OUTLINED_FUNCTION_1_7(v17);
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_8_1();
  }

  v4 = 0;
  while (1)
  {
    OUTLINED_FUNCTION_42_0(v2, v4);
    __swift_project_boxed_opaque_existential_1((v0 + 416), *(v0 + 440));
    sub_231368D50();
    if (*(v0 + 600))
    {
      break;
    }

    OUTLINED_FUNCTION_28_3(v0 + 576);
    v5 = *(v0 + 1048);
    v6 = *(v0 + 1056) + 1;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 496));
    if (v6 == v5)
    {
      goto LABEL_9;
    }

    v2 = OUTLINED_FUNCTION_23_0();
  }

  OUTLINED_FUNCTION_0_4();
LABEL_14:
  OUTLINED_FUNCTION_40();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2311E8514()
{
  OUTLINED_FUNCTION_8();
  sub_23120FF7C();

  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_2311E8588()
{
  OUTLINED_FUNCTION_39();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
  while (1)
  {
    v1 = *(v0 + 1048);
    v2 = *(v0 + 1056) + 1;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 496));
    if (v2 == v1)
    {
      while (2)
      {

        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 808));
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 416));
        while (1)
        {
          v3 = *(v0 + 976);
          v4 = *(v0 + 1008) + 1;
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
          if (v4 == v3)
          {
            OUTLINED_FUNCTION_2_1();
            goto LABEL_15;
          }

          OUTLINED_FUNCTION_35_2();
          sub_2311CF388(v6 + 40 * v5 + 72, v0 + 256);
          __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
          OUTLINED_FUNCTION_14_1();
          sub_231367DE0();
          __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
          OUTLINED_FUNCTION_13_1();
          sub_231369510();
          OUTLINED_FUNCTION_31_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43028, &qword_23136B920);
          if (swift_dynamicCast())
          {
            OUTLINED_FUNCTION_4_0();
            v12 = *(v0 + 640);
            *(v0 + 1016) = v12;
            v13 = __swift_project_boxed_opaque_existential_1((v0 + 616), v12);
            OUTLINED_FUNCTION_1_7(v13);
            goto LABEL_15;
          }

          OUTLINED_FUNCTION_8_1();
          sub_2311D1D6C(v0 + 808, v0 + 872);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43228, &qword_23136BCC8);
          if (swift_dynamicCast())
          {
            break;
          }

          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 808));
          v7 = OUTLINED_FUNCTION_12_0();
          sub_2311EB450(v7, &qword_27DD43230, &qword_23136BCD0);
        }

        sub_2311D38A8((v0 + 456), v0 + 416);
        OUTLINED_FUNCTION_10_1();
        v8 = sub_231368D40();
        v9 = OUTLINED_FUNCTION_24_4(v8);
        if (!v10)
        {
          continue;
        }

        break;
      }

      v11 = 0;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_23_0();
    }

    *(v0 + 1056) = v11;
    sub_2311CF388(v9 + 40 * v11 + 32, v0 + 496);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_41_0();
    if (*(v0 + 600))
    {
      break;
    }

    OUTLINED_FUNCTION_28_3(v0 + 576);
  }

  OUTLINED_FUNCTION_0_4();
LABEL_15:
  OUTLINED_FUNCTION_40();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2311E87DC()
{
  OUTLINED_FUNCTION_8();
  *(v0 + 1088) = sub_2311E9B44(v1, v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2311E883C()
{
  v40 = v0;
  v1 = v0[136];
  v2 = type metadata accessor for PipelineConfigurationSignalExtractorProvider();
  v3 = OUTLINED_FUNCTION_30_0(v2);
  v0[137] = v3;
  *(v3 + 16) = v1;
  sub_231369150();
  sub_231369EE0();
  v4 = sub_2313698A0();
  v5 = sub_23136A390();

  if (os_log_type_enabled(v4, v5))
  {
    v37 = v0[119];
    v6 = v0[117];
    v7 = v0[116];
    OUTLINED_FUNCTION_17();
    v8 = swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_29_0();
    v39 = v9;
    *v8 = 136315138;
    v10 = sub_231367BB0();
    v12 = sub_2311CFD58(v10, v11, &v39);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_43_0(&dword_2311CB000, v13, v14, "Loaded subscribers as:\n%s");
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v15 = *(v6 + 8);
    v15(v37, v7);
  }

  else
  {
    v16 = v0[119];
    v17 = v0[117];
    v18 = v0[116];

    v15 = *(v17 + 8);
    v15(v16, v18);
  }

  sub_231369150();

  v19 = sub_2313698A0();
  v20 = sub_23136A390();

  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[118];
  v23 = v0[116];
  if (v21)
  {
    OUTLINED_FUNCTION_17();
    v38 = v23;
    v24 = swift_slowAlloc();
    v25 = OUTLINED_FUNCTION_29_0();
    v39 = v25;
    *v24 = 136315138;
    v26 = sub_23132EE74();
    v28 = sub_2311CFD58(v26, v27, &v39);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_2311CB000, v19, v20, "Using Signal Extractors as %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v29 = v22;
    v30 = v38;
  }

  else
  {

    v29 = v22;
    v30 = v23;
  }

  v15(v29, v30);

  v31 = swift_task_alloc();
  v0[138] = v31;
  *v31 = v0;
  v31[1] = sub_2311E8B5C;
  v32 = v0[123];
  v33 = v0[121];
  v34 = v0[120];
  v35 = v0[115];

  return sub_2311EA290(v32, v3, v34, v33, v35);
}

uint64_t sub_2311E8B5C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  *(v6 + 1112) = v5;

  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2311E8C7C()
{
  OUTLINED_FUNCTION_26();

  OUTLINED_FUNCTION_14();
  v2 = *(v0 + 1112);

  return v1(v2);
}

uint64_t sub_2311E8D24()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 16);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  OUTLINED_FUNCTION_33_2();
  sub_231369EE0();
  sub_231369EE0();
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_34_0(v4);

  return v6(v3, v2);
}

uint64_t sub_2311E8DDC()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v4 = v3;
  v5 = *v0;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  *(v7 + 32) = v2;

  return MEMORY[0x2822009F8](sub_2311E8ECC, v2, 0);
}

uint64_t sub_2311E8ECC()
{
  OUTLINED_FUNCTION_8();

  OUTLINED_FUNCTION_14();
  v2 = *(v0 + 32);

  return v1(v2);
}

void *sub_2311E8F28()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 25);
  return v0;
}

uint64_t sub_2311E8F78()
{
  sub_2311E8F28();

  return swift_deallocClassInstance();
}

uint64_t sub_2311E8FD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311E9060;

  return sub_2311E6EB4();
}

uint64_t sub_2311E9060()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v3 = *v0;
  OUTLINED_FUNCTION_9();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5(v2);
}

uint64_t sub_2311E9170(uint64_t a1, uint64_t a2)
{
  result = sub_2311EB350(qword_280F7E860, a2, type metadata accessor for OwnerWrappedGeneratorProvider, &unk_23136BC20);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2311E91C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43270, &qword_23136BD18);
    v3 = sub_23136A790();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_2311E9D20(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_2311E9260(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_2311CF388(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432A0, &qword_23136BD48);
  if (swift_dynamicCast())
  {
    sub_2311D38A8(v12, v15);
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    OUTLINED_FUNCTION_21();
    v7 = MEMORY[0x28223BE20](v6);
    (*(v9 + 16))(v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    sub_23136A5F0();
    return __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_2311EB450(v12, &qword_27DD432A8, &unk_23136BD50);
    sub_2311CF388(a1, v15);
    v15[0] = sub_23136A010();
    v15[1] = v11;
    return sub_23136A5F0();
  }
}

void *sub_2311E940C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  v10[2] = a1;
  v10[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a9, a10);
  v10[4] = OUTLINED_FUNCTION_44_1(v15, v16);
  v10[5] = v17;
  v10[6] = a3;
  v10[7] = a4;
  v10[8] = a5;
  v10[9] = a6;
  return v10;
}

uint64_t sub_2311E9508(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2311E9528, 0, 0);
}

uint64_t sub_2311E9528()
{
  OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43290, &qword_23136BD40);
  swift_allocObject();
  v1 = sub_2311E98BC();
  *(v0 + 96) = v1;

  return MEMORY[0x2822009F8](sub_2311E95BC, v1, 0);
}

uint64_t sub_2311E95BC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  swift_beginAccess();
  *(v2 + 112) = v3;

  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = v0[11] + 32;
    do
    {
      sub_2311CF388(v5, (v0 + 2));
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      sub_23120E294();
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
      v5 += 40;
      --v4;
    }

    while (v4);
  }

  OUTLINED_FUNCTION_14();
  v7 = v0[12];

  return v6(v7);
}

void *sub_2311E96AC()
{
  swift_defaultActor_initialize();
  v0[18] = sub_2311EB4AC;
  v0[19] = 0;
  v0[20] = sub_2311E9490;
  v0[21] = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D0, &unk_23136BD90);
  sub_2311EB3FC(v1, v2, v3);
  v0[14] = sub_231369EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F88, &unk_23136B8B0);
  v0[15] = sub_231369EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43020, &qword_23136BD80);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432C8, &qword_23136BD88);
  v0[16] = OUTLINED_FUNCTION_44_1(v4, v5);
  v0[17] = v6;
  return v0;
}

void *sub_2311E97B4()
{
  swift_defaultActor_initialize();
  v0[18] = sub_2311EB4AC;
  v0[19] = 0;
  v0[20] = sub_2311E94B8;
  v0[21] = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432B8, &qword_23136BD70);
  sub_2311EB3FC(v1, v2, v3);
  v0[14] = sub_231369EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F88, &unk_23136B8B0);
  v0[15] = sub_231369EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F60, &qword_23136BD60);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432B0, &qword_23136BD68);
  v0[16] = OUTLINED_FUNCTION_44_1(v4, v5);
  v0[17] = v6;
  return v0;
}

void *sub_2311E98BC()
{
  swift_defaultActor_initialize();
  v0[18] = sub_2311EB4AC;
  v0[19] = 0;
  v0[20] = sub_2311E94E0;
  v0[21] = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43298, &qword_231377FE0);
  sub_2311EB3FC(v1, v2, v3);
  v0[14] = sub_231369EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F88, &unk_23136B8B0);
  v0[15] = sub_231369EC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43028, &qword_23136B920);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43288, &qword_23136BD30);
  v0[16] = OUTLINED_FUNCTION_44_1(v4, v5);
  v0[17] = v6;
  return v0;
}

void *sub_2311E99C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = OUTLINED_FUNCTION_18_4(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_11_1(v7, v8);
  sub_231369EE0();
  v9 = sub_231369EE0();
  sub_23122AB24(v9);
  OUTLINED_FUNCTION_22_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432C0, &qword_23136BD78);
  swift_allocObject();

  v10 = sub_2311D8D9C(v6, v5);
  return OUTLINED_FUNCTION_6_0(v10, v11, v12, v13, v14, v15, &qword_27DD43020, &qword_23136BD80, &qword_27DD432C8, &qword_23136BD88);
}

void *sub_2311E9A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = OUTLINED_FUNCTION_18_4(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_11_1(v7, v8);
  sub_231369EE0();
  v9 = sub_231369EE0();
  sub_23122AB24(v9);
  OUTLINED_FUNCTION_22_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43000, &qword_23136B8D8);
  swift_allocObject();

  v10 = sub_2311D8D9C(v6, v5);
  return OUTLINED_FUNCTION_6_0(v10, v11, v12, v13, v14, v15, &qword_27DD42F60, &qword_23136BD60, &qword_27DD432B0, &qword_23136BD68);
}

void *sub_2311E9B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = OUTLINED_FUNCTION_18_4(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_11_1(v7, v8);
  sub_231369EE0();
  v9 = sub_231369EE0();
  sub_23122AB24(v9);
  OUTLINED_FUNCTION_22_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43280, &qword_23136BD28);
  swift_allocObject();

  v10 = sub_2311D8D9C(v6, v5);
  return OUTLINED_FUNCTION_6_0(v10, v11, v12, v13, v14, v15, &qword_27DD43028, &qword_23136B920, &qword_27DD43288, &qword_23136BD30);
}

uint64_t sub_2311E9C64(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2311E9D20(uint64_t a1, char a2, void *a3)
{
  v6 = sub_231367E10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v53 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43248, &qword_23136BCF0);
  MEMORY[0x28223BE20](v9);
  v51 = &v42 - v12;
  v50 = *(a1 + 16);
  if (!v50)
  {
  }

  v13 = v7;
  v14 = 0;
  v15 = *(v10 + 48);
  v48 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v49 = v15;
  v52 = (v13 + 32);
  v44 = v13;
  v45 = v11;
  v43 = (v13 + 8);
  v46 = a3;
  v47 = a1;
  while (v14 < *(a1 + 16))
  {
    v16 = v51;
    sub_2311EB398(v48 + *(v11 + 72) * v14, v51, &qword_27DD43248, &qword_23136BCF0);
    v17 = *v52;
    v18 = v6;
    (*v52)(v53, v16, v6);
    v19 = *(v16 + v49);
    v20 = *a3;
    v22 = sub_231216104();
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_31;
    }

    v25 = v21;
    if (*(v20 + 24) >= v23 + v24)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43278, &qword_23136BD20);
        sub_23136A710();
      }
    }

    else
    {
      sub_2312B3EBC();
      v26 = sub_231216104();
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_37;
      }

      v22 = v26;
    }

    v28 = *a3;
    if (v25)
    {
      v29 = *(v28[7] + 8 * v22);
      v30 = *(v19 + 16);
      v31 = *(v29 + 16);
      v32 = v31 + v30;
      if (__OFADD__(v31, v30))
      {
        goto LABEL_33;
      }

      sub_231369EE0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v32 > *(v29 + 24) >> 1)
      {
        if (v31 <= v32)
        {
          v34 = v31 + v30;
        }

        else
        {
          v34 = v31;
        }

        sub_23126F4A0(isUniquelyReferenced_nonNull_native, v34, 1, v29);
        v29 = v35;
      }

      v6 = v18;
      if (*(v19 + 16))
      {
        if ((*(v29 + 24) >> 1) - *(v29 + 16) < v30)
        {
          goto LABEL_35;
        }

        swift_arrayInitWithCopy();

        if (v30)
        {
          v36 = *(v29 + 16);
          v37 = __OFADD__(v36, v30);
          v38 = v36 + v30;
          if (v37)
          {
            goto LABEL_36;
          }

          *(v29 + 16) = v38;
        }
      }

      else
      {

        if (v30)
        {
          goto LABEL_34;
        }
      }

      (*v43)(v53, v18);
      *(v28[7] + 8 * v22) = v29;
    }

    else
    {
      v28[(v22 >> 6) + 8] |= 1 << v22;
      v6 = v18;
      v17((v28[6] + *(v44 + 72) * v22), v53, v18);
      *(v28[7] + 8 * v22) = v19;
      v39 = v28[2];
      v37 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v37)
      {
        goto LABEL_32;
      }

      v28[2] = v40;
    }

    ++v14;
    a2 = 1;
    a3 = v46;
    a1 = v47;
    v11 = v45;
    if (v50 == v14)
    {
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_23136A970();
  __break(1u);
  return result;
}

uint64_t sub_2311EA154(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = type metadata accessor for LookupConfiguratorProvider();
  v10 = sub_2311EB350(qword_280F7FC50, 255, type metadata accessor for LookupConfiguratorProvider, &unk_231377E70);
  *&v8 = a2;
  v6 = *a3;
  *(v6 + 16) = a1 + 1;
  return sub_2311D38A8(&v8, v6 + 40 * a1 + 32);
}

uint64_t sub_2311EA1F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_2311D38A8(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_2311EA290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[70] = a5;
  v5[69] = a4;
  v5[68] = a3;
  v5[67] = a2;
  v5[66] = a1;
  v7 = sub_231367E10();
  v5[71] = v7;
  v5[72] = *(v7 - 8);
  v5[73] = swift_task_alloc();
  v8 = sub_2313698C0();
  v5[74] = v8;
  v5[75] = *(v8 - 8);
  v5[76] = swift_task_alloc();
  v5[77] = swift_task_alloc();
  v5[78] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43238, &qword_23136BCE0);
  v5[79] = swift_task_alloc();
  v9 = type metadata accessor for PipelineConfigurationSignalExtractorProvider();
  v5[80] = v9;
  v5[25] = v9;
  v10 = sub_2311EB350(&qword_280F7CE68, 255, type metadata accessor for PipelineConfigurationSignalExtractorProvider, &unk_231377FB0);
  v5[81] = v10;
  v5[26] = v10;
  v5[22] = a2;

  return MEMORY[0x2822009F8](sub_2311EA470, 0, 0);
}

uint64_t sub_2311EA470()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[79];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43240, &qword_23136BCE8);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[82] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43248, &qword_23136BCF0);
  *v3 = v0;
  v3[1] = sub_2311EA56C;
  v7 = v0[79];
  v8 = v0[66];

  return MEMORY[0x2821C6B08](v8, v7, &unk_231377EE8, 0, &type metadata for OwnedSignalSubscriber, v4, v5, v6);
}

void sub_2311EA56C()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9();
  *v8 = v7;
  v5[83] = v0;

  if (v0)
  {
  }

  else
  {
    v9 = v5[79];
    v5[84] = v3;
    sub_2311EB450(v9, &qword_27DD43238, &qword_23136BCE0);
    v10 = OUTLINED_FUNCTION_32_0();

    MEMORY[0x2822009F8](v10, v11, v12);
  }
}

void *sub_2311EA6A8()
{
  v120 = v0;
  v1 = *(v0 + 576);
  v2 = sub_2311E91C8(*(v0 + 672));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43250, &qword_23136BCF8);
  OUTLINED_FUNCTION_38();
  result = sub_23136A770();
  v4 = result;
  v5 = 0;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  v109 = result + 8;
  v107 = result;
  v108 = v9;
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v112 = (v8 - 1) & v8;
LABEL_10:
      v13 = v10 | (v5 << 6);
      v114 = *(v1 + 72) * v13;
      (*(v1 + 16))(*(v0 + 584), *(v2 + 48) + v114, *(v0 + 568));
      v116 = v13;
      v14 = *(*(v2 + 56) + 8 * v13);
      v15 = *(v14 + 16);
      if (v15)
      {
        v119[0] = MEMORY[0x277D84F90];
        sub_231369EE0();
        sub_2311F57DC(0, v15, 0);
        v16 = v119[0];
        v17 = v14 + 32;
        do
        {
          v18 = sub_2311EB19C(v17, v0 + 16);
          v119[0] = v16;
          v22 = *(v16 + 16);
          v21 = *(v16 + 24);
          if (v22 >= v21 >> 1)
          {
            v24 = OUTLINED_FUNCTION_37(v21);
            v18 = sub_2311F57DC(v24, v22 + 1, 1);
            v16 = v119[0];
          }

          *(v0 + 240) = &type metadata for OwnedCandidateSuggestionConfigurator;
          *(v0 + 248) = sub_2311EB1F8(v18, v19, v20);
          v23 = swift_allocObject();
          *(v0 + 216) = v23;
          sub_2311EB19C(v0 + 16, v23 + 16);
          *(v16 + 16) = v22 + 1;
          sub_2311D38A8((v0 + 216), v16 + 40 * v22 + 32);
          sub_2311EB24C(v0 + 16);
          v17 += 80;
          --v15;
        }

        while (v15);

        v4 = v107;
      }

      else
      {
        v16 = MEMORY[0x277D84F90];
      }

      v25 = *(v0 + 584);
      v26 = *(v0 + 568);
      v27 = type metadata accessor for StaticConfiguratorProvider();
      v28 = OUTLINED_FUNCTION_30_0(v27);
      *(v28 + 16) = v16;
      *(v109 + ((v116 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v116;
      result = (*(v1 + 32))(v4[6] + v114, v25, v26);
      *(v4[7] + 8 * v116) = v28;
      v29 = v4[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v4[2] = v31;
      v9 = v108;
      v8 = v112;
      if (!v112)
      {
        goto LABEL_5;
      }
    }

LABEL_45:
    __break(1u);
  }

  else
  {
LABEL_5:
    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v5 >= v9)
      {
        break;
      }

      v12 = *(v2 + 64 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v112 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    sub_231369100();

    v32 = sub_2313698A0();
    v33 = sub_23136A390();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 624);
    v36 = *(v0 + 600);
    v37 = *(v0 + 592);
    if (v34)
    {
      v117 = *(v0 + 624);
      OUTLINED_FUNCTION_17();
      v38 = swift_slowAlloc();
      v39 = OUTLINED_FUNCTION_29_0();
      v119[0] = v39;
      *v38 = 136315138;

      sub_23122AC54(v40);
      v41 = sub_231367BB0();
      v43 = v42;

      v44 = sub_2311CFD58(v41, v43, v119);

      *(v38 + 4) = v44;
      OUTLINED_FUNCTION_43_0(&dword_2311CB000, v45, v46, "Determined static signal subscriptions keys as:\n%s");
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v47 = *(v36 + 8);
      v48 = v117;
    }

    else
    {

      v47 = *(v36 + 8);
      v48 = v35;
    }

    v118 = v47;
    v47(v48, v37);
    v49 = *(v0 + 528);
    v50 = *(v49 + 16);
    if (v50)
    {
      v51 = v49 + 32;
      v52 = MEMORY[0x277D84F90];
      do
      {
        sub_2311EB2A0(v51, v0 + 96);
        __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
        sub_231367FA0();
        sub_2311EB2FC(v0 + 96);
        if (*(v0 + 320))
        {
          sub_2311D38A8((v0 + 296), v0 + 256);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v119[0] = v52;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v62 = OUTLINED_FUNCTION_27_1();
            sub_23126DDE4(v62);
            v52 = v63;
            v119[0] = v63;
          }

          v55 = *(v52 + 16);
          v54 = *(v52 + 24);
          if (v55 >= v54 >> 1)
          {
            v64 = OUTLINED_FUNCTION_37(v54);
            sub_23126DDE4(v64);
            v52 = v65;
            v119[0] = v65;
          }

          v56 = *(v0 + 280);
          v57 = *(v0 + 288);
          v58 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 256, v56);
          OUTLINED_FUNCTION_21();
          v60 = v59;
          v61 = swift_task_alloc();
          (*(v60 + 16))(v61, v58, v56);
          sub_2311EA1F8(v55, v61, v119, v56, v57);
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
        }

        else
        {
          sub_2311EB450(v0 + 296, &qword_27DD43258, &unk_23136BD00);
        }

        v51 += 80;
        --v50;
      }

      while (v50);
    }

    else
    {
      v52 = MEMORY[0x277D84F90];
    }

    *(v0 + 520) = v52;
    sub_231369100();
    v66 = sub_2313698A0();
    v67 = sub_23136A390();
    v68 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 616);
    v70 = *(v0 + 592);
    if (v68)
    {
      OUTLINED_FUNCTION_17();
      v71 = swift_slowAlloc();
      v72 = OUTLINED_FUNCTION_29_0();
      v119[0] = v72;
      *v71 = 136315138;
      sub_231369EE0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43268, &qword_23136BD10);
      v73 = sub_231367BB0();
      v115 = v69;
      v75 = v74;

      v76 = sub_2311CFD58(v73, v75, v119);

      *(v71 + 4) = v76;
      _os_log_impl(&dword_2311CB000, v66, v67, "Determined dynamic signal subscriptions as:\n%s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v77 = v115;
    }

    else
    {

      v77 = v69;
    }

    v118(v77, v70);
    sub_23134A360();
    v79 = v78;

    v80 = type metadata accessor for LookupConfiguratorProvider();
    v81 = OUTLINED_FUNCTION_30_0(v80);
    *(v81 + 16) = v79;
    swift_beginAccess();
    sub_2311E9C64(sub_23126DDE4);
    v82 = *(*(v0 + 520) + 16);
    sub_231259280(v82);
    sub_2311EA154(v82, v81, (v0 + 520));
    v83 = *(v0 + 520);
    swift_endAccess();
    v84 = type metadata accessor for UnionConfiguratorProvider();
    v85 = OUTLINED_FUNCTION_30_0(v84);
    *(v85 + 16) = v83;
    sub_231369EE0();
    sub_231369100();
    sub_2311CF388(v0 + 176, v0 + 336);
    v86 = sub_2313698A0();
    v87 = sub_23136A390();
    v88 = os_log_type_enabled(v86, v87);
    v89 = *(v0 + 608);
    v90 = *(v0 + 592);
    if (v88)
    {
      OUTLINED_FUNCTION_17();
      v91 = swift_slowAlloc();
      v113 = v85;
      v92 = OUTLINED_FUNCTION_29_0();
      v119[0] = v92;
      *v91 = 136315138;
      __swift_project_boxed_opaque_existential_1((v0 + 336), *(v0 + 360));
      v111 = v89;
      v93 = sub_23132EE74();
      v95 = v94;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
      sub_2311CFD58(v93, v95, v119);
      OUTLINED_FUNCTION_38();

      *(v91 + 4) = v93;
      _os_log_impl(&dword_2311CB000, v86, v87, "Using signalExtractorProvider: %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v92);
      v85 = v113;
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v118(v111, v90);
    }

    else
    {

      v118(v89, v90);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
    }

    v96 = *(v0 + 560);
    v97 = *(v0 + 552);
    v98 = *(v0 + 544);
    v99 = *(v0 + 536);
    *(v0 + 440) = v84;
    *(v0 + 448) = sub_2311EB350(qword_280F80000, 255, type metadata accessor for UnionConfiguratorProvider, &unk_231377E48);
    *(v0 + 416) = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
    v100 = sub_231367D80();
    OUTLINED_FUNCTION_21();
    v102 = v101;
    v103 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_23136B670;
    v110 = *(v0 + 640);
    (*(v102 + 104))(v104 + v103, *MEMORY[0x277D60B98], v100);
    sub_231368E90();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 416));
    sub_2311CF388(v96, v0 + 456);
    type metadata accessor for SignalKeyProvider();
    v105 = swift_allocObject();
    *(v105 + 80) = v110;
    *(v105 + 56) = v99;
    sub_2311D38A8((v0 + 376), v105 + 16);
    *(v105 + 96) = v98;
    *(v105 + 104) = v97;
    sub_2311D38A8((v0 + 456), v105 + 112);

    sub_231369EE0();

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));

    OUTLINED_FUNCTION_14();

    return v106(v105);
  }

  return result;
}

unint64_t sub_2311EB1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F7D1E8[0];
  if (!qword_280F7D1E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F7D1E8);
  }

  return result;
}

uint64_t sub_2311EB350(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2311EB398(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_26_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_2311EB3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F84D28[0];
  if (!qword_280F84D28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F84D28);
  }

  return result;
}

uint64_t sub_2311EB450(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_26_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_18_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_24_4(uint64_t result)
{
  *(v1 + 1040) = result;
  *(v1 + 1048) = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_3(uint64_t a1)
{

  return sub_2311EB450(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_44_1(uint64_t a1, uint64_t a2, ...)
{

  return sub_23136A010();
}

uint64_t sub_2311EB588()
{
  sub_231369B30();
  v2 = sub_231369B20();
  if (v1)
  {
    type metadata accessor for SuggestionsToolDatabaseManager();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v0 + 16) = v2;
  }

  return v0;
}

uint64_t sub_2311EB5F8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2311EB654()
{
  OUTLINED_FUNCTION_8();
  v1[22] = v2;
  v1[23] = v0;
  v1[21] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0);
  v1[24] = OUTLINED_FUNCTION_43();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  v1[25] = OUTLINED_FUNCTION_43();
  v4 = sub_2313694E0();
  v1[26] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[27] = v5;
  v1[28] = OUTLINED_FUNCTION_43();
  v6 = sub_231367490();
  v1[29] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[30] = v7;
  v1[31] = OUTLINED_FUNCTION_43();
  v8 = sub_2313698C0();
  v1[32] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[33] = v9;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E0, &unk_23136BEE0);
  v1[37] = OUTLINED_FUNCTION_43();
  v10 = sub_231367A00();
  v1[38] = v10;
  OUTLINED_FUNCTION_0(v10);
  v1[39] = v11;
  v1[40] = OUTLINED_FUNCTION_43();
  v12 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2311EB890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __swift_project_boxed_opaque_existential_1(*(v14 + 168), *(*(v14 + 168) + 24));
  v15 = sub_231367830();
  *(v14 + 328) = v15;
  if (!v15)
  {
    sub_2313690F0();
    v20 = sub_2313698A0();
    v21 = sub_23136A3A0();
    v28 = os_log_type_enabled(v20, v21);
    v25 = *(v14 + 264);
    v23 = *(v14 + 272);
    v24 = *(v14 + 256);
    if (v28)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "InAppMiniTipGenerator: No intent found from interaction, returning no candidate";
      goto LABEL_7;
    }

LABEL_8:

    (*(v25 + 8))(v23, v24);
    goto LABEL_9;
  }

  v16 = v15;
  v18 = *(v14 + 296);
  v17 = *(v14 + 304);
  sub_2311EC5B8(*(v14 + 168), v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v17) == 1)
  {
    v19 = *(v14 + 296);

    sub_2311D1F18(v19, &qword_27DD432E0, &unk_23136BEE0);
    sub_2313690F0();
    v20 = sub_2313698A0();
    v21 = sub_23136A3A0();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v14 + 280);
    v24 = *(v14 + 256);
    v25 = *(v14 + 264);
    if (v22)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "InAppMiniTipGenerator: No InAppDetails found. Returning no candidates";
LABEL_7:
      _os_log_impl(&dword_2311CB000, v20, v21, v27, v26, 2u);
      MEMORY[0x23192B930](v26, -1, -1);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  (*(*(v14 + 312) + 32))(*(v14 + 320), *(v14 + 296), *(v14 + 304));
  sub_2313690F0();
  v31 = sub_2313698A0();
  v32 = sub_23136A3A0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2311CB000, v31, v32, "InAppMiniTipGenerator: All necessary information received. Generating candidate", v33, 2u);
    MEMORY[0x23192B930](v33, -1, -1);
  }

  v34 = *(v14 + 288);
  v35 = *(v14 + 256);
  v36 = *(v14 + 264);

  (*(v36 + 8))(v34, v35);
  v37 = *(v16 + 16);
  *(v14 + 336) = v37;
  if (v37)
  {
    v39 = *(v14 + 240);
    v38 = *(v14 + 248);
    v40 = *(v39 + 16);
    v39 += 16;
    v41 = *(v39 + 64);
    *(v14 + 464) = v41;
    *(v14 + 344) = *(v39 + 56);
    *(v14 + 352) = v40;
    v42 = *MEMORY[0x277D61380];
    *(v14 + 468) = v42;
    v43 = *MEMORY[0x277D60B90];
    *(v14 + 472) = v43;
    v44 = MEMORY[0x277D84F90];
    *(v14 + 360) = 0;
    *(v14 + 368) = v44;
    v45 = *(v14 + 208);
    v46 = *(v14 + 200);
    v74 = *(v14 + 192);
    v40(v38, *(v14 + 328) + ((v41 + 32) & ~v41), *(v14 + 232));
    v47 = OUTLINED_FUNCTION_14_2();
    v48(v47, v42, v45);
    sub_2313679F0();
    v49 = sub_231367D80();
    OUTLINED_FUNCTION_11();
    (*(v50 + 104))(v46, v43, v49);
    v51 = OUTLINED_FUNCTION_16_0();
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v51);
    v52 = swift_task_alloc();
    *(v14 + 376) = v52;
    *v52 = v14;
    OUTLINED_FUNCTION_2_2(v52);
    OUTLINED_FUNCTION_7();

    return MEMORY[0x2821C73A0](v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v61 = MEMORY[0x277D84F90];
    *(v14 + 392) = MEMORY[0x277D84F90];

    v62 = *(v61 + 16);
    *(v14 + 400) = v62;
    if (!v62)
    {
      v71 = OUTLINED_FUNCTION_9_2();
      v72(v71);
LABEL_9:
      OUTLINED_FUNCTION_3_4();

      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_7();

      __asm { BRAA            X2, X16 }
    }

    OUTLINED_FUNCTION_15_1();
    *(v14 + 416) = OUTLINED_FUNCTION_1_5();
    *(v14 + 424) = v63;
    *(v14 + 432) = swift_getObjectType();
    v64 = OUTLINED_FUNCTION_1_5();
    v66 = OUTLINED_FUNCTION_8_2(v64, v65);
    OUTLINED_FUNCTION_11_2(v66);
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_7();

    return MEMORY[0x2822009F8](v67, v68, v69);
  }
}

uint64_t sub_2311EBD30(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 224);
  v6 = *(*v1 + 216);
  v7 = *(*v1 + 208);
  v8 = *(*v1 + 200);
  v9 = *(*v1 + 192);
  *(*v1 + 384) = a1;

  (*(v3 + 8))(v2, v4);
  sub_2311D1F18(v9, &qword_27DD432D8, &unk_23136BED0);
  sub_2311D1F18(v8, &qword_27DD42F18, &unk_23136B810);
  (*(v6 + 8))(v5, v7);
  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2311EBF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  isUniquelyReferenced_nonNull_native = *(v14 + 368);
  if (*(v14 + 384))
  {
    v16 = *(v14 + 384);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v17 = *(v16 + 16);
  v18 = *(isUniquelyReferenced_nonNull_native + 16);
  if (__OFADD__(v18, v17))
  {
    __break(1u);
    goto LABEL_26;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v14 + 368);
  if (!isUniquelyReferenced_nonNull_native || v18 + v17 > *(v19 + 24) >> 1)
  {
    sub_23126DF64(isUniquelyReferenced_nonNull_native);
    v19 = isUniquelyReferenced_nonNull_native;
  }

  if (*(v16 + 16))
  {
    if ((*(v19 + 24) >> 1) - *(v19 + 16) >= v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
      swift_arrayInitWithCopy();

      if (!v17)
      {
        goto LABEL_14;
      }

      v20 = *(v19 + 16);
      v21 = __OFADD__(v20, v17);
      v22 = v20 + v17;
      if (!v21)
      {
        *(v19 + 16) = v22;
        goto LABEL_14;
      }

LABEL_28:
      __break(1u);
      return MEMORY[0x2821C73A0](isUniquelyReferenced_nonNull_native, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_14:
  v23 = *(v14 + 360) + 1;
  if (v23 != *(v14 + 336))
  {
    *(v14 + 360) = v23;
    *(v14 + 368) = v19;
    v48 = *(v14 + 472);
    v33 = *(v14 + 468);
    v34 = *(v14 + 208);
    v36 = *(v14 + 192);
    v35 = *(v14 + 200);
    (*(v14 + 352))(*(v14 + 248), *(v14 + 328) + ((*(v14 + 464) + 32) & ~*(v14 + 464)) + *(v14 + 344) * v23, *(v14 + 232));
    v37 = OUTLINED_FUNCTION_14_2();
    v38(v37, v33, v34);
    sub_2313679F0();
    v39 = sub_231367D80();
    OUTLINED_FUNCTION_11();
    (*(v40 + 104))(v35, v48, v39);
    v41 = OUTLINED_FUNCTION_16_0();
    __swift_storeEnumTagSinglePayload(v36, 1, 1, v41);
    v42 = swift_task_alloc();
    *(v14 + 376) = v42;
    *v42 = v14;
    OUTLINED_FUNCTION_2_2(v42);
    OUTLINED_FUNCTION_7();

    return MEMORY[0x2821C73A0](isUniquelyReferenced_nonNull_native, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  }

  *(v14 + 392) = v19;

  v24 = *(v19 + 16);
  *(v14 + 400) = v24;
  if (!v24)
  {
    v43 = OUTLINED_FUNCTION_9_2();
    v44(v43);
    OUTLINED_FUNCTION_3_4();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_7();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_15_1();
  *(v14 + 416) = OUTLINED_FUNCTION_1_5();
  *(v14 + 424) = v25;
  *(v14 + 432) = swift_getObjectType();
  v26 = OUTLINED_FUNCTION_1_5();
  v28 = OUTLINED_FUNCTION_8_2(v26, v27);
  OUTLINED_FUNCTION_11_2(v28);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_2311EC268()
{
  OUTLINED_FUNCTION_8();
  sub_231369380();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_2311EC2D4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + 56), v1);
  *(v0 + 120) = v1;
  *(v0 + 128) = *(v2 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  (*(*(v1 - 8) + 16))(boxed_opaque_existential_1, v3, v1);
  *(v0 + 160) = MEMORY[0x277D839B0];
  *(v0 + 136) = 1;
  v6 = sub_23136A260();

  return MEMORY[0x2822009F8](sub_2311EC3D0, v6, v5);
}

uint64_t sub_2311EC3D0()
{
  OUTLINED_FUNCTION_8();
  sub_231369450();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2311EC470()
{
  v1 = v0[51] + 1;
  if (v1 == v0[50])
  {
    v2 = OUTLINED_FUNCTION_9_2();
    v3(v2);
    OUTLINED_FUNCTION_3_4();

    v4 = OUTLINED_FUNCTION_5();

    return v5(v4);
  }

  else
  {
    v0[51] = v1;
    sub_2311CF324(v0[49] + 40 * v1 + 32, (v0 + 2));
    v0[52] = OUTLINED_FUNCTION_1_5();
    v0[53] = v7;
    v0[54] = swift_getObjectType();
    v8 = OUTLINED_FUNCTION_1_5();
    v10 = OUTLINED_FUNCTION_8_2(v8, v9);
    OUTLINED_FUNCTION_11_2(v10);
    v11 = OUTLINED_FUNCTION_0_5();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_2311EC5B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432F0, &unk_23136BEF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15[-v5];
  v7 = sub_231368800();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2313677E0();
  sub_231210B54();

  if (!v16)
  {
    sub_2311D1F18(v15, &qword_27DD432F8, &qword_23136DEE0);
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43300, &qword_23136BF00);
  v11 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v6, v11 ^ 1u, 1, v7);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
LABEL_5:
    sub_2311D1F18(v6, &qword_27DD432F0, &unk_23136BEF0);
    v12 = 1;
    goto LABEL_6;
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_2313687F0();
  (*(v8 + 8))(v10, v7);
  v12 = 0;
LABEL_6:
  v13 = sub_231367A00();
  return __swift_storeEnumTagSinglePayload(a2, v12, 1, v13);
}

uint64_t sub_2311EC84C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311EC8F4;

  return sub_2311EB654();
}

uint64_t sub_2311EC8F4()
{
  OUTLINED_FUNCTION_8();

  v0 = OUTLINED_FUNCTION_5();

  return v1(v0);
}

unint64_t sub_2311EC9E8()
{
  result = qword_280F81E38;
  if (!qword_280F81E38)
  {
    type metadata accessor for InAppMiniTipGenerator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F81E38);
  }

  return result;
}

unint64_t TrialNamespaces.description.getter()
{
  result = 0xD00000000000001FLL;
  switch(*v0)
  {
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

SiriSuggestions::TrialNamespaces_optional __swiftcall TrialNamespaces.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23136A7B0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2311ECBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F84470;
  if (!qword_280F84470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F84470);
  }

  return result;
}

unint64_t sub_2311ECC54(uint64_t a1, uint64_t a2)
{
  v2 = sub_23136A7B0();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2311ECCA0(char a1)
{
  result = 0x6B6361626C6C6166;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

unint64_t sub_2311ECD64@<X0>(unint64_t *a1@<X8>)
{
  result = TrialNamespaces.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2311ECD90()
{
  result = qword_27DD43308;
  if (!qword_27DD43308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD43310, &qword_23136BFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43308);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrialFactors(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for TrialFactors(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for TrialNamespaces(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TrialNamespaces(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2311ED06C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2311ED0F4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2311ED1F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2311ECC54(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2311ED220@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2311ECCA0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2311ED250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD43318;
  if (!qword_27DD43318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43318);
  }

  return result;
}

unint64_t sub_2311ED2BC()
{
  v1 = v0 + OBJC_IVAR____TtC15SiriSuggestions11GaussianRNG_nextVal;
  if (*(v0 + OBJC_IVAR____TtC15SiriSuggestions11GaussianRNG_nextVal + 8))
  {
    do
    {
      swift_beginAccess();
      sub_231369500();
      sub_2311ED6A0();
      do
      {
        v2 = OUTLINED_FUNCTION_1_8();
      }

      while ((0x20000000000001 * v2) < 0x1FFFFFFFFFF801);
      v3 = (v2 * 0x20000000000001uLL) >> 64;
      do
      {
        v4 = OUTLINED_FUNCTION_1_8();
      }

      while ((0x20000000000001 * v4) < 0x1FFFFFFFFFF801);
      v5 = vcvtd_n_f64_u64(v3, 0x35uLL);
      v6 = v5 + 0.0 + v5 + 0.0 + -1.0;
      v7 = vcvtd_n_f64_u64((v4 * 0x20000000000001uLL) >> 64, 0x35uLL) + 0.0;
      swift_endAccess();
      v8 = v7 + v7 + -1.0;
      v9 = v6 * v6 + v8 * v8;
    }

    while (v9 >= 1.0 || v9 == 0.0);
    v10 = log(v6 * v6 + v8 * v8);
    v11 = sqrt(v10 * -2.0 / v9);
    *v1 = v8 * v11;
    *(v1 + 8) = 0;
    v12 = v6 * v11;
  }

  else
  {
    v12 = *v1;
    *v1 = 0;
    *(v1 + 8) = 1;
  }

  return sub_2311ED4C8(v12 * *(v0 + OBJC_IVAR____TtC15SiriSuggestions11GaussianRNG_stdDev) + *(v0 + OBJC_IVAR____TtC15SiriSuggestions11GaussianRNG_mean));
}

void sub_2311ED450(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_2311ED618(0x20000000000001uLL);
  }
}

unint64_t sub_2311ED4C8(double a1)
{
  v1 = a1 * 1.84467441e19;
  if (v1 < 0.0)
  {
    return 0;
  }

  if (v1 >= 1.84467441e19)
  {
    return -1;
  }

  if (v1 > -1.0)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t GaussianRNG.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions11GaussianRNG_uniformRNG;
  sub_231369500();
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t GaussianRNG.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions11GaussianRNG_uniformRNG;
  sub_231369500();
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

unint64_t sub_2311ED618(unint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_231369500();
    sub_2311ED6A0();
    v2 = OUTLINED_FUNCTION_1_8();
    v3 = v2 * v1;
    result = (v2 * v1) >> 64;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      if (v4 > v3)
      {
        do
        {
          v5 = OUTLINED_FUNCTION_1_8();
        }

        while (v4 > v5 * v1);
        return (v5 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2311ED6A0()
{
  result = qword_280F7C8B8;
  if (!qword_280F7C8B8)
  {
    sub_231369500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7C8B8);
  }

  return result;
}

uint64_t type metadata accessor for GaussianRNG(uint64_t a1)
{
  result = qword_27DD43340;
  if (!qword_27DD43340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2311ED74C(uint64_t a1)
{
  result = sub_231369500();
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

uint64_t sub_2311ED830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2311ED97C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2311ED97C()
{
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t sub_2311EDA74(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43398, &qword_23136C338);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v30 - v4);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v30 = v1;
  v38 = MEMORY[0x277D84F90];
  sub_2311F5888(0, v6, 0);
  v7 = v38;
  result = sub_2311F0400(a1);
  v10 = result;
  v12 = v11;
  v13 = 0;
  v37 = a1 + 56;
  v31 = a1 + 64;
  v32 = v6;
  v35 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v37 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_26;
      }

      v36 = v9;
      v15 = *(a1 + 48);
      v16 = sub_231369990();
      (*(*(v16 - 8) + 16))(v5 + *(v34 + 48), v15 + *(*(v16 - 8) + 72) * v10, v16);
      *v5 = sub_231369970();
      v5[1] = v17;
      v38 = v7;
      v19 = *(v7 + 16);
      v18 = *(v7 + 24);
      v20 = v7;
      if (v19 >= v18 >> 1)
      {
        sub_2311F5888((v18 > 1), v19 + 1, 1);
        v20 = v38;
      }

      *(v20 + 16) = v19 + 1;
      result = sub_2311F0440(v5, v20 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v19, &qword_27DD43398, &qword_23136C338);
      if (v12)
      {
        goto LABEL_30;
      }

      v7 = v20;
      a1 = v35;
      v21 = 1 << *(v35 + 32);
      if (v10 >= v21)
      {
        goto LABEL_27;
      }

      v22 = *(v37 + 8 * v14);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v35 + 36) != v36)
      {
        goto LABEL_29;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v21 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v7;
        v25 = v14 << 6;
        v26 = v14 + 1;
        v27 = (v31 + 8 * v14);
        while (v26 < (v21 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_2311F0490(v10, v36, 0);
            v21 = __clz(__rbit64(v28)) + v25;
            goto LABEL_19;
          }
        }

        result = sub_2311F0490(v10, v36, 0);
LABEL_19:
        v7 = v24;
        a1 = v35;
      }

      if (++v13 == v32)
      {
        return v7;
      }

      v12 = 0;
      v9 = *(a1 + 36);
      v10 = v21;
      if (v21 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_2311EDDB8()
{
  OUTLINED_FUNCTION_11_0();
  v88 = v0;
  v91 = v1;
  v3 = v2;
  v5 = v4;
  v86 = sub_231369990();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v11 = v10 - v9;
  v85 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_4();
  v90 = v16 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43350, &unk_23136C2E0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v17);
  v84 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v83 = v71 - v20;
  MEMORY[0x28223BE20](v21);
  v96 = v71 - v22;
  v23 = sub_231369DD0();
  OUTLINED_FUNCTION_0_0();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_4();
  v28 = OUTLINED_FUNCTION_7_4(v27);
  type metadata accessor for ResolvedParameter(v28);
  v98[2] = sub_231369E60();
  v87 = v5;
  v29 = sub_231369920();
  v31 = *(v29 + 16);
  if (v31)
  {
    v81 = v11;
    v33 = *(v25 + 16);
    v32 = v25 + 16;
    v95 = v33;
    v34 = (*(v32 + 64) + 32) & ~*(v32 + 64);
    v71[1] = v29;
    v35 = v29 + v34;
    v94 = *(v32 + 56);
    v78 = v91 + 8;
    v77 = (v7 + 16);
    v76 = v7 + 8;
    v75 = v13 + 8;
    v93 = (v32 - 8);
    *&v30 = 136315906;
    v72 = v30;
    v82 = v3;
    v36 = v89;
    v80 = v23;
    v79 = v32;
    do
    {
      v95(v36, v35, v23);
      v37 = sub_231369DA0();
      v39 = v38;
      v40 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v40 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (v40)
      {
        v97 = v37;
        v41 = v87;
        v42 = sub_231369970();
        v43 = v96;
        (*(v91 + 8))(v36, v42, v44, v3);

        sub_231369130();
        (*v77)(v81, v41, v86);
        v45 = v83;
        sub_2311F03B0(v43, v83, &qword_27DD43350, &unk_23136C2E0);
        sub_231369EE0();
        v46 = sub_2313698A0();
        v47 = sub_23136A3A0();

        v92 = v47;
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v98[0] = v74;
          *v48 = v72;
          v49 = sub_23136AA70();
          v51 = sub_2311CFD58(v49, v50, v98);

          *(v48 + 4) = v51;
          *(v48 + 12) = 2080;
          v52 = sub_231369970();
          v54 = v53;
          v55 = OUTLINED_FUNCTION_5_1();
          v56(v55);
          v57 = sub_2311CFD58(v52, v54, v98);

          *(v48 + 14) = v57;
          *(v48 + 22) = 2080;
          *(v48 + 24) = sub_2311CFD58(v97, v39, v98);
          *(v48 + 32) = 2080;
          v58 = v84;
          sub_2311F03B0(v45, v84, &qword_27DD43350, &unk_23136C2E0);
          v59 = sub_23136A010();
          v61 = v60;
          sub_2311D1F18(v45, &qword_27DD43350, &unk_23136C2E0);
          v62 = sub_2311CFD58(v59, v61, v98);

          *(v48 + 34) = v62;
          _os_log_impl(&dword_2311CB000, v46, v92, "%s: Resolved parameterKey: %s.%s to %s", v48, 0x2Au);
          swift_arrayDestroy();
          v63 = v97;
          OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_29();

          v64 = OUTLINED_FUNCTION_3_5();
          v65(v64);
        }

        else
        {

          sub_2311D1F18(v45, &qword_27DD43350, &unk_23136C2E0);
          v66 = OUTLINED_FUNCTION_5_1();
          v67(v66);
          v68 = OUTLINED_FUNCTION_3_5();
          v69(v68);
          v58 = v84;
          v63 = v97;
        }

        v70 = v96;
        sub_2311F03B0(v96, v58, &qword_27DD43350, &unk_23136C2E0);
        v98[0] = v63;
        v98[1] = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43368, &qword_23136C2F0);
        sub_231369F10();
        sub_2311D1F18(v70, &qword_27DD43350, &unk_23136C2E0);
        v36 = v89;
        v23 = v80;
        (*v93)(v89, v80);
        v3 = v82;
      }

      else
      {
        (*v93)(v36, v23);
      }

      v35 += v94;
      --v31;
    }

    while (v31);
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_2311EE480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v5[5] = a4;
  v5[6] = v6;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2311EE4CC, 0, 0);
}

uint64_t sub_2311EE4CC()
{
  v1 = sub_2311EDA74(v0[5]);
  v2 = sub_23127DF24(v1);
  v0[7] = v2;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_2311EE5BC;

  return sub_231312304();
}

void sub_2311EE5BC(uint64_t a1)
{
  OUTLINED_FUNCTION_12();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v5 + 80) = v1;

  if (v1)
  {
  }

  else
  {

    *(v5 + 88) = a1;

    MEMORY[0x2822009F8](sub_2311EE700, 0, 0);
  }
}

uint64_t sub_2311EE700()
{
  v1 = v0[3];
  v2 = sub_2311EF4C0(v0[11]);
  SetToolParametersResolver = type metadata accessor for QuerySetToolParametersResolver();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = type metadata accessor for RetrievedContextToolParametersResolver();
  sub_23123F090(v1);
  v7 = v0[2];
  if (v6)
  {
    v8 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43370, &unk_23136C310);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_23136C1C0;
    *(v9 + 56) = SetToolParametersResolver;
    *(v9 + 64) = &off_2845F2F60;
    *(v9 + 32) = v4;
    *(v9 + 96) = v5;
    *(v9 + 104) = &off_2845F4400;
    *(v9 + 72) = v8;
    sub_2311EE830(v9, v7);
  }

  else
  {
    v7[3] = SetToolParametersResolver;
    v7[4] = &off_2845F2F60;
    *v7 = v4;
  }

  OUTLINED_FUNCTION_56_0();

  return v10();
}

uint64_t sub_2311EE830@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CascadeToolParametersResolver();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  a2[3] = v4;
  a2[4] = &off_2845F2F70;
  *a2 = v5;

  return sub_231369EE0();
}

void sub_2311EE8BC()
{
  OUTLINED_FUNCTION_11_0();
  v22 = v2;
  v23 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43350, &unk_23136C2E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = 0;
  v11 = *(v0 + 16);
  v12 = *(v11 + 16);
  for (i = v11 + 32; ; i += 40)
  {
    if (v12 == v10)
    {
      v17 = type metadata accessor for ResolvedParameter(0);
      v18 = v22;
      v19 = 1;
LABEL_8:
      __swift_storeEnumTagSinglePayload(v18, v19, 1, v17);
      OUTLINED_FUNCTION_9_0();
      return;
    }

    if (v10 >= *(v11 + 16))
    {
      break;
    }

    sub_2311CF324(i, v24);
    v15 = v25;
    v14 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (*(v14 + 8))(v6, v4, v23, v15, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v16 = type metadata accessor for ResolvedParameter(0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v16) != 1)
    {
      v20 = v22;
      sub_2311EFDC4(v9, v22);
      v18 = v20;
      v19 = 0;
      v17 = v16;
      goto LABEL_8;
    }

    ++v10;
    sub_2311D1F18(v9, &qword_27DD43350, &unk_23136C2E0);
  }

  __break(1u);
}

uint64_t sub_2311EEA4C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2311EEACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43388, &qword_23136C328);
  v3[5] = swift_task_alloc();
  v4 = sub_231369990();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2311EEBC8, 0, 0);
}

uint64_t sub_2311EEBC8()
{
  v1 = sub_231367470();
  v0[9] = v1;
  v0[10] = v2;
  if (!v2)
  {
LABEL_4:
    v6 = v0[2];
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;

    OUTLINED_FUNCTION_56_0();

    return v7();
  }

  v4 = v0[5];
  v3 = v0[6];
  sub_231210BD0(v1, v2, v0[4]);
  if (__swift_getEnumTagSinglePayload(v4, 1, v3) == 1)
  {
    v5 = v0[5];

    sub_2311D1F18(v5, &qword_27DD43388, &qword_23136C328);
    goto LABEL_4;
  }

  (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_2311EED34;

  return sub_231356014();
}

uint64_t sub_2311EED34()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 96) = v0;

  return MEMORY[0x2822009F8](sub_2311EEE30, 0, 0);
}

uint64_t sub_2311EEE30()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[2];
  v7 = sub_2311EEF08(v0[12]);

  (*(v4 + 8))(v3, v5);
  *v6 = v2;
  v6[1] = v1;
  v6[2] = v7;

  OUTLINED_FUNCTION_56_0();

  return v8();
}

uint64_t sub_2311EEF08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v66 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v71 = &v54 - v3;
  v70 = sub_231369D00();
  v4 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v62 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v54 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43390, &qword_23136C330);
  MEMORY[0x28223BE20](v68);
  v67 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v65 = &v54 - v10;
  MEMORY[0x28223BE20](v11);
  v64 = &v54 - v12;
  v14 = a1 + 64;
  v13 = *(a1 + 64);
  v69 = MEMORY[0x277D84F98];
  v72 = MEMORY[0x277D84F98];
  v15 = 1 << *(a1 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v55 = v4;
  v19 = (v4 + 32);
  v20 = a1;
  v59 = v19;
  result = sub_231369EE0();
  v22 = 0;
  v63 = a1;
  v60 = v18;
  for (i = a1 + 64; v17; v18 = v60)
  {
LABEL_9:
    v24 = __clz(__rbit64(v17)) | (v22 << 6);
    v25 = (*(v20 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(v20 + 56) + *(v66 + 72) * v24;
    v29 = v68;
    v30 = v64;
    sub_2311F03B0(v28, &v64[*(v68 + 48)], &qword_27DD43358, &qword_23136FA90);
    *v30 = v26;
    v30[1] = v27;
    v31 = v65;
    sub_2311F0440(v30, v65, &qword_27DD43390, &qword_23136C330);
    v32 = v71;
    sub_2311F03B0(v31 + *(v29 + 48), v71, &qword_27DD43358, &qword_23136FA90);
    if (__swift_getEnumTagSinglePayload(v32, 1, v70) == 1)
    {
      sub_231369EE0();
      sub_2311D1F18(v31, &qword_27DD43390, &qword_23136C330);
      v33 = v71;
      v14 = i;
      v20 = v63;
    }

    else
    {
      v58 = v27;
      v34 = *v59;
      v35 = v31;
      v36 = v56;
      v37 = v70;
      (*v59)(v56, v71, v70);
      sub_2311F0440(v35, v67, &qword_27DD43390, &qword_23136C330);
      v57 = v34;
      v34(v62, v36, v37);
      v38 = v69[2];
      if (v69[3] <= v38)
      {
        sub_231369EE0();
        sub_2312B4368(v38 + 1, 1);
      }

      else
      {
        sub_231369EE0();
      }

      v39 = v72;
      v40 = *v67;
      v41 = v67[1];
      sub_23136A9D0();
      sub_23136A060();
      result = sub_23136AA00();
      v42 = v39 + 64;
      v69 = v39;
      v43 = -1 << *(v39 + 32);
      v44 = result & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v39 + 64 + 8 * (v44 >> 6))) == 0)
      {
        v47 = 0;
        v48 = (63 - v43) >> 6;
        while (++v45 != v48 || (v47 & 1) == 0)
        {
          v49 = v45 == v48;
          if (v45 == v48)
          {
            v45 = 0;
          }

          v47 |= v49;
          v50 = *(v42 + 8 * v45);
          if (v50 != -1)
          {
            v46 = __clz(__rbit64(~v50)) + (v45 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_28;
      }

      v46 = __clz(__rbit64((-1 << v44) & ~*(v39 + 64 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      v33 = v67 + *(v68 + 48);
      *(v42 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      v52 = v69;
      v51 = v70;
      v53 = (v69[6] + 16 * v46);
      *v53 = v40;
      v53[1] = v41;
      v57((v52[7] + *(v55 + 72) * v46), v62, v51);
      ++v52[2];
      v20 = v63;
      v14 = i;
    }

    v17 &= v17 - 1;
    result = sub_2311D1F18(v33, &qword_27DD43358, &qword_23136FA90);
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v18)
    {

      return v69;
    }

    v17 = *(v14 + 8 * v23);
    ++v22;
    if (v17)
    {
      v22 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2311EF4C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43378, &unk_231374980);
    v3 = sub_23136A790();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_2311EFFE0(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_2311EF558()
{
  OUTLINED_FUNCTION_11_0();
  v64 = v0;
  v65 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v55 = v9;
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_7_4(v10);
  sub_231369D50();
  OUTLINED_FUNCTION_0_0();
  v61 = v11;
  v62 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v15 = v14 - v13;
  sub_231369D30();
  OUTLINED_FUNCTION_0_0();
  v59 = v17;
  v60 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_4();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v51 - v22;
  v24 = sub_231369D00();
  OUTLINED_FUNCTION_0_0();
  v58 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_4();
  v63 = (v28 - v27);
  v29 = v7;
  v30 = sub_231369DA0();
  v32 = v31;
  v57 = v5;
  v64 = v3;
  v33 = sub_2312177D8();
  if (!v33)
  {

    __swift_storeEnumTagSinglePayload(v23, 1, 1, v24);
    goto LABEL_5;
  }

  sub_231210BB8(v30, v32, v33);

  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {

LABEL_5:
    sub_2311D1F18(v23, &qword_27DD43358, &qword_23136FA90);
LABEL_6:
    v34 = type metadata accessor for ResolvedParameter(0);
    __swift_storeEnumTagSinglePayload(v65, 1, 1, v34);
    goto LABEL_7;
  }

  v52 = v30;
  v35 = v58;
  v36 = v63;
  v53 = *(v58 + 32);
  v37 = v53(v63, v23, v24);
  MEMORY[0x23192A470](v37);
  sub_231369D10();
  (*(v59 + 8))(v20, v60);
  sub_231369CC0();
  sub_2311EFA8C();
  v39 = v38;

  (*(v62 + 8))(v15, v61);
  if ((v39 & 1) == 0)
  {
    (*(v35 + 8))(v36, v24);

    goto LABEL_6;
  }

  v40 = v54;
  sub_231369130();
  sub_231369EE0();
  v41 = sub_2313698A0();
  v42 = sub_23136A3A0();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v66 = v44;
    *v43 = 136315138;
    v45 = sub_2311CFD58(v52, v32, &v66);

    *(v43 + 4) = v45;
    v36 = v63;
    _os_log_impl(&dword_2311CB000, v41, v42, "Has assigned value for parameterKey: %s. Using this as resolvedValue", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  else
  {
  }

  (*(v55 + 8))(v40, v56);
  v46 = type metadata accessor for ResolvedParameter(0);
  v47 = *(v46 + 20);
  sub_231369DD0();
  OUTLINED_FUNCTION_11();
  v49 = v65;
  (*(v48 + 16))(&v65[v47], v29);
  v53(&v49[*(v46 + 24)], v36, v24);
  v50 = v64;
  *v49 = v57;
  *(v49 + 1) = v50;
  __swift_storeEnumTagSinglePayload(v49, 0, 1, v46);
  sub_231369EE0();
LABEL_7:
  OUTLINED_FUNCTION_9_0();
}

void sub_2311EFA8C()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v2 = sub_231369D50();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v8 = v7 - v6;
  if (*(v1 + 16))
  {
    sub_2311EFEEC(&qword_280F7C888, MEMORY[0x277D72D68]);
    v9 = sub_231369F30();
    v10 = v1 + 56;
    v14 = v1;
    v11 = ~(-1 << *(v1 + 32));
    do
    {
      v12 = v9 & v11;
      if (((1 << (v9 & v11)) & *(v10 + (((v9 & v11) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      (*(v4 + 16))(v8, *(v14 + 48) + *(v4 + 72) * v12, v2);
      sub_2311EFEEC(&qword_27DD43360, MEMORY[0x277D72D70]);
      v13 = sub_231369F60();
      (*(v4 + 8))(v8, v2);
      v9 = v12 + 1;
    }

    while ((v13 & 1) == 0);
  }

  OUTLINED_FUNCTION_9_0();
}

BOOL sub_2311EFC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_23136A9D0();
  sub_23136A060();
  v6 = sub_23136AA00();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_23136A900();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t type metadata accessor for ResolvedParameter(uint64_t a1)
{
  result = qword_27DD433A0;
  if (!qword_27DD433A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2311EFDC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedParameter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2311EFE28()
{
  MEMORY[0x23192A730](*v0, v0[1]);
  MEMORY[0x23192A730](58, 0xE100000000000000);
  type metadata accessor for ResolvedParameter(0);
  v1 = sub_231369DA0();
  MEMORY[0x23192A730](v1);

  MEMORY[0x23192A730](61, 0xE100000000000000);
  sub_231369D00();
  sub_23136A6F0();
  return 0;
}

uint64_t sub_2311EFEEC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_231369D50();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2311EFF30(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2311ED97C;

  return sub_2311EEACC(a1, a2, v6);
}

uint64_t sub_2311EFFE0(uint64_t a1, char a2, void *a3)
{
  v58 = a3;
  v51 = sub_2313698C0();
  v5 = MEMORY[0x28223BE20](v51);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v54 = *(a1 + 16);
  v55 = a1;
  v50 = (v9 + 8);
  v10 = (a1 + 48);
  v5.n128_u64[0] = 136315138;
  v48 = v5;
  while (1)
  {
    if (v54 == v8)
    {
    }

    if (v8 >= *(v55 + 16))
    {
      break;
    }

    v56 = v10;
    v57 = v8;
    v11 = v7;
    v12 = *(v10 - 2);
    v13 = *(v10 - 1);
    v14 = *v10;
    v15 = *v58;
    sub_231369EE0();
    sub_231369EE0();
    v23 = sub_231215F6C(v12, v13);
    v24 = v15[2];
    v25 = (v16 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_20;
    }

    v27 = v16;
    if (v15[3] >= v26)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43380, &qword_23136C320);
        sub_23136A710();
      }
    }

    else
    {
      sub_2312B432C(v26, a2 & 1, v17, v18, v19, v20, v21, v22, v47[0], v47[1], v48.n128_i64[0], v48.n128_i8[8], v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60[0], v60[1], v60[2], v60[3], v60[4], v60[5], v60[6], v60[7], v60[8]);
      v28 = sub_231215F6C(v12, v13);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_22;
      }

      v23 = v28;
    }

    v30 = *v58;
    if (v27)
    {
      v31 = *(v30[7] + 8 * v23);
      sub_231369EE0();
      v7 = v11;
      sub_231369130();
      sub_231369EE0();
      v32 = sub_2313698A0();
      v33 = sub_23136A3B0();

      HIDWORD(v52) = v33;
      v53 = v32;
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v60[0] = v49;
        *v34 = v48.n128_u32[0];
        sub_231369D00();
        v35 = sub_231369E90();
        v37 = sub_2311CFD58(v35, v36, v60);

        *(v34 + 4) = v37;
        v38 = v53;
        _os_log_impl(&dword_2311CB000, v53, BYTE4(v52), "Duplicate toolId key found. Picking first value: %s", v34, 0xCu);
        v39 = v49;
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        MEMORY[0x23192B930](v39, -1, -1);
        v40 = v34;
        v7 = v11;
        MEMORY[0x23192B930](v40, -1, -1);
      }

      else
      {
      }

      (*v50)(v11, v51);

      v45 = v57;
      *(v30[7] + 8 * v23) = v31;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v41 = (v30[6] + 16 * v23);
      *v41 = v12;
      v41[1] = v13;
      *(v30[7] + 8 * v23) = v14;
      v42 = v30[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_21;
      }

      v30[2] = v44;
      v7 = v11;
      v45 = v57;
    }

    v10 = v56 + 3;
    v8 = v45 + 1;
    a2 = 1;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_23136A970();
  __break(1u);
  return result;
}

uint64_t sub_2311F03B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_10(a1, a2, a3, a4);
  OUTLINED_FUNCTION_11();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_2311F0440(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_10(a1, a2, a3, a4);
  OUTLINED_FUNCTION_11();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_2311F0490(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2311F04C4(uint64_t a1)
{
  result = sub_231369DD0();
  if (v2 <= 0x3F)
  {
    result = sub_231369D00();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_2311F0588@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(__src);
  if (!v2)
  {
    memcpy(v12, __src, sizeof(v12));
    v5 = v12[45];
    v6 = v12[46];
    v7 = v12[47];
    v8 = v12[48];
    sub_231369EE0();
    v9 = sub_2311F07B0(v12);
    a1[3] = &type metadata for SiriSuggestionsRuntimeConfig.IntelligenceConfig;
    a1[4] = sub_2311F0804(v9, v10, v11);
    result = swift_allocObject();
    *a1 = result;
    result[2] = v5;
    result[3] = v6;
    result[4] = v7;
    result[5] = v8;
  }

  return result;
}

void *sub_2311F0640@<X0>(void *a1@<X8>)
{
  result = TrialRuntimeConfigProvider.getRuntimeConfig()(__src);
  if (!v1)
  {
    memcpy(v11, __src, sizeof(v11));
    v4 = v11[45];
    v5 = v11[46];
    v6 = v11[47];
    v7 = v11[48];
    sub_231369EE0();
    v8 = sub_2311F07B0(v11);
    a1[3] = &type metadata for SiriSuggestionsRuntimeConfig.IntelligenceConfig;
    a1[4] = sub_2311F0804(v8, v9, v10);
    result = swift_allocObject();
    *a1 = result;
    result[2] = v4;
    result[3] = v5;
    result[4] = v6;
    result[5] = v7;
  }

  return result;
}

void *SuggestionsRuntimeConfigProvider.getConfig()@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = (*(a1 + 16))(__src);
  if (!v2)
  {
    memcpy(v12, __src, sizeof(v12));
    v5 = v12[45];
    v6 = v12[46];
    v7 = v12[47];
    v8 = v12[48];
    sub_231369EE0();
    v9 = sub_2311F07B0(v12);
    a2[3] = &type metadata for SiriSuggestionsRuntimeConfig.IntelligenceConfig;
    a2[4] = sub_2311F0804(v9, v10, v11);
    result = swift_allocObject();
    *a2 = result;
    result[2] = v5;
    result[3] = v6;
    result[4] = v7;
    result[5] = v8;
  }

  return result;
}

unint64_t sub_2311F0804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F850D8[0];
  if (!qword_280F850D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F850D8);
  }

  return result;
}

uint64_t SiriSuggestionsRuntimeConfig.IntelligenceConfig.appUsageOrderBy.getter()
{
  v1 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v7 = v6 - v5;
  v8 = *(v0 + 8);
  v9 = *(v0 + 16);
  sub_231369EE0();
  result = sub_2313696E0();
  if (result == 3)
  {
    sub_2313690F0();
    sub_231369EE0();
    v11 = sub_2313698A0();
    v12 = sub_23136A3B0();

    if (os_log_type_enabled(v11, v12))
    {
      v38 = v12;
      v13 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_2311CFD58(v8, v9, &v40);
      *(v13 + 12) = 2080;
      v14 = sub_2313696D0();
      v15 = *(v14 + 16);
      if (v15)
      {
        v34 = v13;
        v35 = v11;
        v36 = v3;
        v37 = v1;
        v39 = MEMORY[0x277D84F90];
        sub_2311F4E34(0);
        v16 = 32;
        OUTLINED_FUNCTION_55_1();
        OUTLINED_FUNCTION_54_2();
        do
        {
          v22 = *(v14 + v16);
          if (v22 == 1)
          {
            v23 = v18;
          }

          else
          {
            v23 = v21;
          }

          if (v22 == 1)
          {
            v24 = v17;
          }

          else
          {
            v24 = v20;
          }

          if (*(v14 + v16))
          {
            v25 = v23;
          }

          else
          {
            v25 = v19;
          }

          if (*(v14 + v16))
          {
            v26 = v24;
          }

          else
          {
            v26 = 0x800000023137C3B0;
          }

          v28 = *(v39 + 16);
          v27 = *(v39 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_2311F4E34(v27 > 1);
            OUTLINED_FUNCTION_54_2();
            OUTLINED_FUNCTION_55_1();
          }

          *(v39 + 16) = v28 + 1;
          v29 = v39 + 16 * v28;
          *(v29 + 32) = v25;
          *(v29 + 40) = v26;
          ++v16;
          --v15;
        }

        while (v15);

        v3 = v36;
        v1 = v37;
        v11 = v35;
        v13 = v34;
      }

      else
      {
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
      sub_2311E5648();
      v30 = sub_231369F50();
      v32 = v31;

      v33 = sub_2311CFD58(v30, v32, &v40);

      *(v13 + 14) = v33;
      _os_log_impl(&dword_2311CB000, v11, v38, "Unable to map %s to a AppUsageOrderBy value. Needs to be one of [%s]", v13, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    (*(v3 + 8))(v7, v1);
    return 0;
  }

  return result;
}

uint64_t sub_2311F0C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[3] = &type metadata for SiriSuggestionsRuntimeConfig.IntelligenceConfig;
  a5[4] = sub_2311F0804(a1, a2, a3);
  v10 = swift_allocObject();
  *a5 = v10;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  return sub_231369EE0();
}

void sub_2311F0C84(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 rolloutId];
  v5 = sub_231369FD0();
  v7 = v6;

  v8 = [a1 deploymentId];
  v9 = [a1 factorPackId];
  v10 = sub_231369FD0();
  v12 = v11;

  v13 = [a1 rampId];
  if (v13)
  {
    v14 = v13;
    v15 = sub_231369FD0();
    v17 = v16;
  }

  else
  {

    v15 = 0;
    v17 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v15;
  *(a2 + 48) = v17;
}

SiriSuggestions::ConfigSource_optional __swiftcall ConfigSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23136A7B0();

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

uint64_t ConfigSource.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C61697274;
  }

  else
  {
    return 0x43746C7561666564;
  }
}

uint64_t sub_2311F0E5C@<X0>(uint64_t *a1@<X8>)
{
  result = ConfigSource.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2311F0E84()
{
  v0 = sub_231366690();
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v6 = v5 - v4;
  sub_231367320();
  static SiriSuggestions.loadRuntimeConfig(configUrl:)();
  return (*(v2 + 8))(v6, v0);
}

uint64_t DefaultRuntimeConfigProvider.__allocating_init(configDelegate:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DefaultRuntimeConfigProvider.init(configDelegate:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t DefaultRuntimeConfigProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TrialRuntimeConfigProvider.__allocating_init(trialUseCase:)(char *a1)
{
  v2 = swift_allocObject();
  TrialRuntimeConfigProvider.init(trialUseCase:)(a1);
  return v2;
}

uint64_t TrialRuntimeConfigProvider.init(trialUseCase:)(char *a1)
{
  v3 = *a1;
  v4 = type metadata accessor for DefaultTrialClientProvider();
  v5 = OUTLINED_FUNCTION_48_0(v4);
  *(v2 + 40) = v1;
  *(v2 + 48) = &off_2845F70C8;
  *(v2 + 16) = v5;
  v6 = type metadata accessor for DefaultRuntimeConfigProvider();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2311F0E84;
  *(v7 + 24) = 0;
  *(v2 + 80) = v6;
  *(v2 + 88) = &protocol witness table for DefaultRuntimeConfigProvider;
  *(v2 + 56) = v7;
  *(v2 + 96) = v3;
  return v2;
}

uint64_t TrialRuntimeConfigProvider.getRuntimeConfig()@<X0>(void *a1@<X8>)
{
  v3 = v1;
  v74 = a1;
  v4 = sub_231366690();
  OUTLINED_FUNCTION_0_0();
  v73 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v9 = v8 - v7;
  sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v77 = v10;
  v78 = v11;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22();
  v75 = v12 - v13;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_52_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v70 - v16;
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_231343BB8(v82);
  v18 = v83;
  v19 = v84;
  __swift_project_boxed_opaque_existential_1(v82, v83);
  v20 = (*(v19 + 48))(0x6D726F6674616C70, 0xEE006769666E6F43, 0xD000000000000019, 0x800000023137A580, v18, v19);
  v21 = v76;
  v22 = static TrialUtils.getDirectoryPath(triLevel:)(v20);
  v76 = v21;
  if (v21)
  {
    v24 = v77;
    v25 = v78;
    v26 = v76;
  }

  else
  {
    v27 = v23;
    v70 = v9;
    v71 = v4;
    v72 = v20;
    if (v23)
    {
      v28 = v22;
      v29 = v17;
      sub_231369100();
      sub_231369EE0();
      v30 = sub_2313698A0();
      v31 = sub_23136A390();

      v32 = os_log_type_enabled(v30, v31);
      v33 = v77;
      if (v32)
      {
        OUTLINED_FUNCTION_17();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v81[0] = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_2311CFD58(v28, v27, v81);
        _os_log_impl(&dword_2311CB000, v30, v31, "Using config path from trial %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
      }

      v25 = v78;
      (*(v78 + 8))(v29, v33);
      v36 = v74;
      v37 = v71;
      v24 = v33;
      v26 = v76;
      v81[0] = v28;
      v81[1] = v27;
      sub_231369EE0();
      MEMORY[0x23192A730](47, 0xE100000000000000);

      v38 = v70;
      OUTLINED_FUNCTION_56_1();
      sub_2313665C0();

      static SiriSuggestions.loadRuntimeConfig(configUrl:)();
      if (!v26)
      {
        (*(v73 + 8))(v38, v37);
        sub_231368C80();
        OUTLINED_FUNCTION_10_2();
        swift_allocObject();
        sub_231368C70();
        v67 = OUTLINED_FUNCTION_24_0();
        type metadata accessor for DefaultTrialCoreAnalyticsLogger(v67);
        OUTLINED_FUNCTION_10_2();
        swift_allocObject();
        OUTLINED_FUNCTION_13_2(MEMORY[0x277D61160]);
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_60_1();
        v68 = OUTLINED_FUNCTION_4_1();
        v69(v68);
        OUTLINED_FUNCTION_50_3();
        v85 = 0;
        sub_2313024A8(&v80, 1, &v85, 0, 0);

        memcpy(v36, v79, 0x1A8uLL);
        return __swift_destroy_boxed_opaque_existential_1Tm(v82);
      }

      (*(v73 + 8))(v38, v37);
    }

    else
    {
      sub_231369100();
      v39 = sub_2313698A0();
      v40 = sub_23136A3A0();
      v41 = OUTLINED_FUNCTION_17_2();
      v43 = os_log_type_enabled(v41, v42);
      v24 = v77;
      v25 = v78;
      if (v43)
      {
        OUTLINED_FUNCTION_16_1();
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_2311CB000, v39, v40, "User did not specify platform config in trial rollout/experiment, falling back to using default config", v44, 2u);
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
      }

      (*(v25 + 8))(v2, v24);
      v45 = v3[10];
      v46 = v3[11];
      __swift_project_boxed_opaque_existential_1(v3 + 7, v45);
      v47 = v76;
      (*(v46 + 16))(v45, v46);
      v26 = v47;
      if (!v47)
      {

        return __swift_destroy_boxed_opaque_existential_1Tm(v82);
      }
    }

    v20 = v72;
  }

  v48 = v75;
  sub_231369100();
  v49 = v26;
  v50 = sub_2313698A0();
  v51 = sub_23136A3B0();

  if (os_log_type_enabled(v50, v51))
  {
    OUTLINED_FUNCTION_17();
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v52 = 138412290;
    v54 = v26;
    v55 = _swift_stdlib_bridgeErrorToNSError();
    *(v52 + 4) = v55;
    *v53 = v55;
    OUTLINED_FUNCTION_28_2();
    _os_log_impl(v56, v57, v58, v59, v60, 0xCu);
    sub_2311F4E78(v53);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  (*(v25 + 8))(v48, v24);
  sub_231368C80();
  OUTLINED_FUNCTION_10_2();
  swift_allocObject();
  sub_231368C70();
  v61 = OUTLINED_FUNCTION_24_0();
  type metadata accessor for DefaultTrialCoreAnalyticsLogger(v61);
  OUTLINED_FUNCTION_10_2();
  swift_allocObject();
  OUTLINED_FUNCTION_13_2(MEMORY[0x277D61160]);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_60_1();
  v62 = OUTLINED_FUNCTION_4_1();
  v63(v62);
  OUTLINED_FUNCTION_50_3();
  v85 = 0;
  swift_getErrorValue();
  v64 = sub_23136A980();
  sub_2313024A8(&v80, 1, &v85, v64, v65);

  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1Tm(v82);
}

uint64_t TrialDenyListsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  TrialDenyListsProvider.init()();
  return v0;
}

void *TrialDenyListsProvider.init()()
{
  v2 = type metadata accessor for DefaultTrialClientProvider();
  v3 = OUTLINED_FUNCTION_48_0(v2);
  v1[5] = v0;
  v1[6] = &off_2845F70C8;
  v1[2] = v3;
  v4 = type metadata accessor for DefaultDenyListsProvider();
  v5 = OUTLINED_FUNCTION_48_0(v4);
  v1[10] = v0;
  v1[11] = &protocol witness table for DefaultDenyListsProvider;
  v1[7] = v5;
  return v1;
}

uint64_t TrialDenyListsProvider.getDenyLists()@<X0>(_OWORD *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v95 = a1;
  sub_231366690();
  OUTLINED_FUNCTION_0_0();
  v100 = v6;
  v101 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22();
  v97 = (v7 - v8);
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v9);
  v96 = &v89 - v10;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v11);
  v99 = &v89 - v12;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v13);
  v102 = &v89 - v14;
  *&v105 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v89 - v22;
  MEMORY[0x28223BE20](v24);
  v98 = &v89 - v25;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v26);
  v28 = &v89 - v27;
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_231343BB8(v113);
  sub_231369100();
  v29 = sub_2313698A0();
  v30 = sub_23136A3A0();
  v31 = OUTLINED_FUNCTION_17_2();
  if (os_log_type_enabled(v31, v32))
  {
    OUTLINED_FUNCTION_16_1();
    v33 = swift_slowAlloc();
    v104 = v4;
    *v33 = 0;
    _os_log_impl(&dword_2311CB000, v29, v30, "Looking for deny lists on Trial.", v33, 2u);
    v3 = v2;
    v4 = v104;
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  v103 = *(v16 + 8);
  v104 = (v16 + 8);
  v103(v28, v105);
  v34 = v114;
  v35 = v115;
  __swift_project_boxed_opaque_existential_1(v113, v114);
  v36 = (*(v35 + 48))(0x7473694C796E6564, 0xE900000000000073, 0xD00000000000001ALL, 0x800000023137A5A0, v34, v35);
  v37 = static TrialUtils.getDirectoryPath(triLevel:)(v36);
  if (v3)
  {

    v39 = v103;
    sub_231369100();
    v40 = v3;
    v41 = sub_2313698A0();
    v42 = sub_23136A3B0();

    if (os_log_type_enabled(v41, v42))
    {
      OUTLINED_FUNCTION_17();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      v45 = v3;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v46;
      *v44 = v46;
      OUTLINED_FUNCTION_28_2();
      _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
      sub_2311F4E78(v44);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    v39(v20, v105);
    sub_231368C80();
    OUTLINED_FUNCTION_10_2();
    swift_allocObject();
    sub_231368C70();
    v52 = OUTLINED_FUNCTION_24_0();
    type metadata accessor for DefaultTrialCoreAnalyticsLogger(v52);
    OUTLINED_FUNCTION_10_2();
    swift_allocObject();
    OUTLINED_FUNCTION_13_2(MEMORY[0x277D61160]);
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_60_1();
    v53 = OUTLINED_FUNCTION_4_1();
    v54(v53);
    OUTLINED_FUNCTION_50_3();
    LOBYTE(v106) = 0;
    swift_getErrorValue();
    v55 = sub_23136A980();
    sub_2313024A8(&v107, 2, &v106, v55, v56);

    swift_willThrow();
  }

  else
  {
    v92 = v36;
    if (v38)
    {
      *&v110 = v37;
      *(&v110 + 1) = v38;
      sub_231369EE0();
      MEMORY[0x23192A730](47, 0xE100000000000000);

      v58 = v99;
      OUTLINED_FUNCTION_56_1();
      sub_2313665C0();

      v59 = v102;
      sub_231366620();
      v61 = v100;
      v60 = v101;
      v93 = *(v100 + 8);
      v94 = v100 + 8;
      v93(v58, v101);
      v62 = v98;
      sub_231369100();
      v63 = v61 + 16;
      v64 = *(v61 + 16);
      v65 = v96;
      v90 = v64;
      v91 = v63;
      v64(v96, v59, v60);
      v66 = sub_2313698A0();
      v67 = sub_23136A3A0();
      if (os_log_type_enabled(v66, v67))
      {
        OUTLINED_FUNCTION_17();
        swift_slowAlloc();
        OUTLINED_FUNCTION_43_2();
        v89 = swift_slowAlloc();
        *&v110 = v89;
        *v60 = 136315138;
        sub_2311F4EE0(qword_280F85968, MEMORY[0x277CC9260]);
        v68 = sub_23136A8B0();
        v70 = v69;
        v93(v65, v101);
        v71 = sub_2311CFD58(v68, v70, &v110);

        *(v60 + 4) = v71;
        _os_log_impl(&dword_2311CB000, v66, v67, "Loading deny lists from Trial from: %s", v60, 0xCu);
        v62 = v89;
        __swift_destroy_boxed_opaque_existential_1Tm(v89);
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
        v60 = v101;
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
      }

      else
      {

        v93(v65, v60);
      }

      v103(v98, v105);
      v79 = v97;
      v80 = v90;
      v90(v97, v102, v60);
      type metadata accessor for JsonSerializer();
      OUTLINED_FUNCTION_42_1();
      v81 = swift_allocObject();
      v111 = v62;
      v112 = &protocol witness table for JsonSerializer;
      *&v110 = v81;
      v82 = v99;
      v80(v99, v79, v60);
      v83 = type metadata accessor for FileBasedConfigBackingStore(0);
      OUTLINED_FUNCTION_10_2();
      v84 = swift_allocObject();
      (*(v100 + 32))(v84 + OBJC_IVAR____TtC15SiriSuggestions27FileBasedConfigBackingStore_dataFileLocation, v82, v60);
      v108 = v83;
      v109 = sub_2311F4EE0(&qword_280F85B48, type metadata accessor for FileBasedConfigBackingStore);
      *&v107 = v84;
      v93(v79, v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433B8, &qword_23136C390);
      inited = swift_initStackObject();
      sub_2311D38A8(&v107, inited + 16);
      sub_2311D38A8(&v110, inited + 56);
      sub_23127E69C();
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1Tm((inited + 16));
      __swift_destroy_boxed_opaque_existential_1Tm((inited + 56));
      sub_231368C80();
      v105 = v106;
      OUTLINED_FUNCTION_10_2();
      swift_allocObject();
      sub_231368C70();
      v86 = OUTLINED_FUNCTION_24_0();
      type metadata accessor for DefaultTrialCoreAnalyticsLogger(v86);
      OUTLINED_FUNCTION_10_2();
      swift_allocObject();
      OUTLINED_FUNCTION_13_2(MEMORY[0x277D61160]);
      OUTLINED_FUNCTION_61_0();
      OUTLINED_FUNCTION_60_1();
      v87 = OUTLINED_FUNCTION_4_1();
      v88(v87);
      OUTLINED_FUNCTION_50_3();
      LOBYTE(v106) = 0;
      sub_2313024A8(&v107, 2, &v106, 0, 0);

      v93(v102, v60);
      *v95 = v105;
    }

    else
    {
      sub_231369100();
      v72 = sub_2313698A0();
      v73 = sub_23136A3A0();
      v74 = OUTLINED_FUNCTION_17_2();
      if (os_log_type_enabled(v74, v75))
      {
        OUTLINED_FUNCTION_16_1();
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_2311CB000, v72, v73, "No deny lists on trial. Falling back to using default deny lists.", v76, 2u);
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
      }

      v103(v23, v105);
      v77 = v4[10];
      v78 = v4[11];
      __swift_project_boxed_opaque_existential_1(v4 + 7, v77);
      (*(v78 + 8))(v77, v78);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v113);
}

uint64_t TrialDenyListsProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t sub_2311F2314(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_2311F2384()
{
  type metadata accessor for DefaultOwnerConfigProvider(0);
  OUTLINED_FUNCTION_10_2();
  swift_allocObject();
  sub_2311F248C();
  sub_2311F4EE0(qword_280F7FEB0, type metadata accessor for DefaultOwnerConfigProvider);
  return OUTLINED_FUNCTION_34_1();
}

uint64_t sub_2311F2408()
{
  type metadata accessor for TrialOwnerConfigProvider(0);
  OUTLINED_FUNCTION_10_2();
  swift_allocObject();
  sub_2311F2C70();
  sub_2311F4EE0(qword_280F806C0, type metadata accessor for TrialOwnerConfigProvider);
  return OUTLINED_FUNCTION_34_1();
}

uint64_t sub_2311F248C()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtC15SiriSuggestions26DefaultOwnerConfigProvider_status;
  v3 = *MEMORY[0x277D611A0];
  sub_231368D70();
  OUTLINED_FUNCTION_11();
  (*(v4 + 104))(v1 + v2, v3);
  sub_231367890();
  sub_231369EC0();
  OUTLINED_FUNCTION_24_0();
  sub_231367CF0();
  OUTLINED_FUNCTION_10_2();
  swift_allocObject();
  OUTLINED_FUNCTION_34_1();
  *(v1 + OBJC_IVAR____TtC15SiriSuggestions26DefaultOwnerConfigProvider_allOwnersConfigs) = sub_231367CD0();
  return v1;
}

uint64_t sub_2311F2558()
{
  OUTLINED_FUNCTION_8();
  v1[5] = v0;
  v2 = sub_2313698C0();
  v1[6] = v2;
  OUTLINED_FUNCTION_0(v2);
  v1[7] = v3;
  v1[8] = swift_task_alloc();
  v4 = sub_231368D70();
  v1[9] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[10] = v5;
  v1[11] = OUTLINED_FUNCTION_62_0();
  v1[12] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2311F265C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  OUTLINED_FUNCTION_58_0();
  v5 = OUTLINED_FUNCTION_47_1();
  v6(v5);
  v7 = OUTLINED_FUNCTION_53_2();
  v8(v7);
  v10 = sub_23131219C(v2, v1, v9);
  v11 = *(v4 + 8);
  v12 = OUTLINED_FUNCTION_28_0();
  v11(v12);
  (v11)(v2, v3);
  if (v10)
  {
    sub_231369100();
    v13 = sub_2313698A0();
    sub_23136A3B0();
    v14 = OUTLINED_FUNCTION_17_2();
    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_16_1();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_57(&dword_2311CB000, v16, v17, "attempting to access domain configs without them getting loaded. loadAllOwnerConfigs was not called");
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    v18 = OUTLINED_FUNCTION_28_0();
    v19(v18);
  }

  sub_231367890();
  sub_231369EC0();
  OUTLINED_FUNCTION_24_0();
  sub_231367CF0();
  OUTLINED_FUNCTION_10_2();
  swift_allocObject();
  OUTLINED_FUNCTION_34_1();
  v20 = sub_231367CD0();

  v21 = v0[1];

  return v21(v20);
}

uint64_t sub_2311F2828()
{
  OUTLINED_FUNCTION_8();
  v1[5] = v0;
  v2 = sub_231368D70();
  v1[6] = v2;
  OUTLINED_FUNCTION_0(v2);
  v1[7] = v3;
  v1[8] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2311F28D4()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  (*(v2 + 104))(v1, *MEMORY[0x277D61198], v3);
  v5 = OBJC_IVAR____TtC15SiriSuggestions26DefaultOwnerConfigProvider_status;
  OUTLINED_FUNCTION_59_0(v4 + OBJC_IVAR____TtC15SiriSuggestions26DefaultOwnerConfigProvider_status, (v0 + 2));
  (*(v2 + 40))(v4 + v5, v1, v3);
  swift_endAccess();

  v6 = v0[1];

  return v6();
}

uint64_t sub_2311F29B0()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions26DefaultOwnerConfigProvider_status;
  sub_231368D70();
  OUTLINED_FUNCTION_11();
  (*(v2 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2311F2A20()
{
  sub_2311F29B0();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2311F2A4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311F93E8;

  return sub_2311F2558();
}

uint64_t sub_2311F2AD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311F93DC;

  return sub_2311F2828();
}

uint64_t sub_2311F2B70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for DefaultOwnerConfigProvider(0);
  v7 = sub_2311F4EE0(qword_280F7FEB0, type metadata accessor for DefaultOwnerConfigProvider);
  *v5 = v2;
  v5[1] = sub_2311F93DC;

  return MEMORY[0x2821C6F78](a1, a2, v6, v7);
}

uint64_t sub_2311F2C70()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_status;
  v3 = *MEMORY[0x277D611A0];
  sub_231368D70();
  OUTLINED_FUNCTION_11();
  (*(v4 + 104))(v1 + v2, v3);
  v5 = OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_allOwnersConfigs;
  sub_231367890();
  sub_231369EC0();
  OUTLINED_FUNCTION_24_0();
  sub_231367CF0();
  OUTLINED_FUNCTION_10_2();
  swift_allocObject();
  OUTLINED_FUNCTION_34_1();
  v7 = v6;
  *(v1 + v5) = sub_231367CD0();
  type metadata accessor for DefaultTrialClientProvider();
  OUTLINED_FUNCTION_42_1();
  v8 = swift_allocObject();
  v9 = (v1 + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_trialClientProvider);
  v9[3] = v7;
  v9[4] = &off_2845F70C8;
  *v9 = v8;
  type metadata accessor for DefaultAllOwnerConfigsLoaderProvider();
  OUTLINED_FUNCTION_42_1();
  v10 = swift_allocObject();
  v11 = (v1 + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_allOwnerConfigsLoaderProvider);
  v11[3] = v7;
  v11[4] = &off_2845F3F98;
  *v11 = v10;
  return v1;
}

uint64_t sub_2311F2D94()
{
  v3 = v1;
  sub_231366690();
  OUTLINED_FUNCTION_0_0();
  v85 = v4;
  v86 = v5;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v8 = v7 - v6;
  v89 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22();
  v83 = v12 - v13;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_52_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v75 - v16;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_trialClientProvider), *(v0 + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_trialClientProvider + 24));
  sub_231343BB8(v93);
  sub_231369100();
  v18 = sub_2313698A0();
  sub_23136A3A0();
  v19 = OUTLINED_FUNCTION_17_2();
  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_16_1();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_28_2();
    _os_log_impl(v21, v22, v23, v24, v25, 2u);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  v87 = *(v10 + 8);
  v88 = v10 + 8;
  v26 = v87(v17, v89);
  v27 = 0;
  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  v84 = v86 + 32;
  v90 = &unk_23137A540;
  v26.n128_u64[0] = 136315138;
  v75 = v26;
  v80 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_A";
  v79 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_B";
  v78 = "SIRI_SUGGESTIONS_PLATFORM";
  v26.n128_u64[0] = 136315394;
  v76 = v26;
  v81 = v8;
  v77 = v2;
  while (1)
  {
    v96 = v29;
    v91 = v27;
    v30 = *(&unk_2845F1138 + v28 + 32);
    v31 = v94;
    v32 = v95;
    __swift_project_boxed_opaque_existential_1(v93, v94);
    v29 = v90;
    v33 = 0xD00000000000001FLL;
    switch(v30)
    {
      case 1:
        v29 = v80;
        break;
      case 2:
        OUTLINED_FUNCTION_38_3();
        v33 = v34 - 6;
        v29 = v79;
        break;
      case 3:
        OUTLINED_FUNCTION_38_3();
        v33 = v35 - 5;
        v29 = v78;
        break;
      default:
        break;
    }

    v36 = (*(v32 + 48))(0x6E6F4372656E776FLL, 0xEC00000073676966, v33, v29 | 0x8000000000000000, v31, v32);

    v37 = static TrialUtils.getDirectoryPath(triLevel:)(v36);
    if (v3)
    {
      break;
    }

    v39 = v38;
    if (v38)
    {
      v40 = v37;
      sub_231369100();
      sub_231369EE0();
      v41 = sub_2313698A0();
      v42 = v2;
      v43 = sub_23136A390();

      if (os_log_type_enabled(v41, v43))
      {
        v82 = 0;
        v44 = swift_slowAlloc();
        v92[0] = swift_slowAlloc();
        *v44 = v76.n128_u32[0];
        *(v44 + 4) = sub_2311CFD58(v40, v39, v92);
        *(v44 + 12) = 2080;
        v45 = v90;
        v46 = 0xD00000000000001FLL;
        switch(v30)
        {
          case 0:
            goto LABEL_20;
          case 1:
            v45 = v80;
            goto LABEL_20;
          case 2:
            OUTLINED_FUNCTION_38_3();
            v46 = v58 - 6;
            v45 = v79;
            goto LABEL_20;
          case 3:
            OUTLINED_FUNCTION_38_3();
            v46 = v59 - 5;
            v45 = v78;
LABEL_20:
            v60 = sub_2311CFD58(v46, v45 | 0x8000000000000000, v92);

            *(v44 + 14) = v60;
            _os_log_impl(&dword_2311CB000, v41, v43, "Including config path from trial %s for namespace - %s", v44, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_6_1();
            MEMORY[0x23192B930]();
            OUTLINED_FUNCTION_6_1();
            MEMORY[0x23192B930]();

            v2 = v77;
            OUTLINED_FUNCTION_51_1();
            v61();
            v8 = v81;
            v3 = v82;
            goto LABEL_21;
          default:
            goto LABEL_34;
        }
      }

      OUTLINED_FUNCTION_51_1();
      v56();
      v2 = v42;
LABEL_21:
      v92[0] = v40;
      v92[1] = v39;
      sub_231369EE0();
      MEMORY[0x23192A730](47, 0xE100000000000000);

      OUTLINED_FUNCTION_56_1();
      sub_2313665C0();

      v29 = v96;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23126E178(0, *(v29 + 16) + 1, 1, v29);
        v29 = v69;
      }

      v62 = *(v29 + 16);
      if (v62 >= *(v29 + 24) >> 1)
      {
        OUTLINED_FUNCTION_56_1();
        sub_23126E178(v70, v71, v72, v29);
        v29 = v73;
      }

      *(v29 + 16) = v62 + 1;
      OUTLINED_FUNCTION_35_0();
      (*(v64 + 32))(v29 + v63 + *(v64 + 72) * v62, v8);
    }

    else
    {
      sub_231369100();
      v47 = sub_2313698A0();
      v48 = sub_23136A390();
      v49 = OUTLINED_FUNCTION_17_2();
      if (os_log_type_enabled(v49, v50))
      {
        OUTLINED_FUNCTION_17();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v92[0] = v52;
        *v51 = v75.n128_u32[0];
        v53 = v90;
        v54 = v52;
        v55 = 0xD00000000000001FLL;
        switch(v30)
        {
          case 0:
            break;
          case 1:
            v53 = v80;
            break;
          case 2:
            OUTLINED_FUNCTION_38_3();
            v55 = v65 - 6;
            v53 = v79;
            break;
          case 3:
            OUTLINED_FUNCTION_38_3();
            v55 = v66 - 5;
            v53 = v78;
            break;
          default:
LABEL_34:
            JUMPOUT(0);
        }

        v67 = sub_2311CFD58(v55, v53 | 0x8000000000000000, v92);

        *(v51 + 4) = v67;
        _os_log_impl(&dword_2311CB000, v47, v48, "skipping trial owner config %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();
        OUTLINED_FUNCTION_6_1();
        MEMORY[0x23192B930]();

        OUTLINED_FUNCTION_51_1();
        v68();
        v8 = v81;
      }

      else
      {

        OUTLINED_FUNCTION_51_1();
        v57();
      }

      v29 = v96;
    }

    v27 = 1;
    v28 = 1u;
    if (v91)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      return v29;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v93);
  return v29;
}

uint64_t sub_2311F34DC()
{
  OUTLINED_FUNCTION_8();
  v1[5] = v0;
  v2 = sub_2313698C0();
  v1[6] = v2;
  OUTLINED_FUNCTION_0(v2);
  v1[7] = v3;
  v1[8] = swift_task_alloc();
  v4 = sub_231368D70();
  v1[9] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[10] = v5;
  v1[11] = OUTLINED_FUNCTION_62_0();
  v1[12] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2311F35E0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  OUTLINED_FUNCTION_58_0();
  v5 = OUTLINED_FUNCTION_47_1();
  v6(v5);
  v7 = OUTLINED_FUNCTION_53_2();
  v8(v7);
  v10 = sub_23131219C(v2, v1, v9);
  v11 = *(v4 + 8);
  v12 = OUTLINED_FUNCTION_28_0();
  v11(v12);
  (v11)(v2, v3);
  if (v10)
  {
    sub_231369100();
    v13 = sub_2313698A0();
    sub_23136A3B0();
    v14 = OUTLINED_FUNCTION_17_2();
    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_16_1();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_57(&dword_2311CB000, v16, v17, "attempting to access domain configs without them getting loaded. loadAllOwnerConfigs was not called. Returning empty allOwnersConfigs");
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
    }

    v18 = OUTLINED_FUNCTION_28_0();
    v19(v18);
  }

  v20 = *(v0[5] + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_allOwnersConfigs);

  v21 = v0[1];

  return v21(v20);
}

uint64_t sub_2311F377C()
{
  OUTLINED_FUNCTION_8();
  v1[53] = v0;
  v2 = sub_231368D70();
  v1[54] = v2;
  OUTLINED_FUNCTION_0(v2);
  v1[55] = v3;
  v1[56] = OUTLINED_FUNCTION_62_0();
  v1[57] = swift_task_alloc();
  v4 = sub_2313698C0();
  v1[58] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[59] = v5;
  v1[60] = OUTLINED_FUNCTION_62_0();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2311F38B4(uint64_t a1)
{
  v81 = v1;
  v2 = v1;
  sub_231369100();
  v3 = sub_2313698A0();
  v4 = sub_23136A3A0();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_16_1();
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2311CB000, v3, v4, "Loading domain configs", v5, 2u);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

  v6 = v1[65];
  v8 = v1[58];
  v7 = v1[59];
  v10 = v2[56];
  v9 = v2[57];
  v11 = v2[54];
  v12 = v2[55];
  v13 = v2[53];

  v77 = *(v7 + 8);
  v77(v6, v8);
  v14 = OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_status;
  swift_beginAccess();
  v15 = v12[2];
  v75 = v14;
  v76 = v13;
  v15(v9, v13 + v14, v11);
  v73 = v12[13];
  v73(v10, *MEMORY[0x277D611A0], v11);
  LOBYTE(v14) = sub_23131219C(v9, v10, v16);
  v17 = v12[1];
  v17(v10, v11);
  v17(v9, v11);
  if ((v14 & 1) == 0)
  {
    sub_231369100();

    v18 = sub_2313698A0();
    v19 = sub_23136A3A0();

    v20 = os_log_type_enabled(v18, v19);
    v74 = v2[61];
    v21 = v2[58];
    if (v20)
    {
      v72 = v2[58];
      v22 = v2[57];
      v69 = v2[54];
      OUTLINED_FUNCTION_17();
      swift_slowAlloc();
      OUTLINED_FUNCTION_43_2();
      v70 = swift_slowAlloc();
      *&v79 = v70;
      *v11 = 136315138;
      v15(v22, v76 + v75, v69);
      v23 = sub_231368D60();
      v25 = v24;
      v17(v22, v69);
      v26 = sub_2311CFD58(v23, v25, &v79);

      *(v11 + 4) = v26;
      _os_log_impl(&dword_2311CB000, v18, v19, "already attempted loading with status - %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();

      v28 = v72;
      v27 = v74;
    }

    else
    {

      v27 = v74;
      v28 = v21;
    }

    v77(v27, v28);
    goto LABEL_9;
  }

  v31 = sub_2311F2D94();
  sub_231369100();
  sub_231369EE0();
  v32 = sub_2313698A0();
  v33 = sub_23136A3A0();

  v34 = os_log_type_enabled(v32, v33);
  v35 = v2[64];
  v36 = v2[58];
  if (v34)
  {
    OUTLINED_FUNCTION_17();
    swift_slowAlloc();
    OUTLINED_FUNCTION_43_2();
    v37 = swift_slowAlloc();
    *&v79 = v37;
    *v11 = 136315138;
    v38 = sub_231366690();
    v39 = MEMORY[0x23192A860](v31, v38);
    v71 = v36;
    v41 = sub_2311CFD58(v39, v40, &v79);

    *(v11 + 4) = v41;
    _os_log_impl(&dword_2311CB000, v32, v33, "Loading domain configs using %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();

    v42 = v35;
    v43 = v71;
  }

  else
  {

    v42 = v35;
    v43 = v36;
  }

  v77(v42, v43);
  if (*(v31 + 16))
  {
    __swift_project_boxed_opaque_existential_1((v2[53] + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_allOwnerConfigsLoaderProvider), *(v2[53] + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_allOwnerConfigsLoaderProvider + 24));
    sub_231227F0C(v2 + 17);
    __swift_project_boxed_opaque_existential_1(v2 + 17, v2[20]);
    v49 = sub_231228710(v31);
    v50 = v2[57];
    v51 = v2[54];
    v52 = v2[55];
    v53 = v2[53];

    *(v53 + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_allOwnersConfigs) = v49;

    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 17);
    v73(v50, *MEMORY[0x277D61198], v51);
    OUTLINED_FUNCTION_59_0(v76 + v75, (v2 + 46));
    (*(v52 + 40))(v76 + v75, v50, v51);
    swift_endAccess();
    v54 = sub_231368C80();
    OUTLINED_FUNCTION_10_2();
    v55 = swift_allocObject();
    sub_231368C70();
    v56 = OUTLINED_FUNCTION_24_0();
    type metadata accessor for DefaultTrialCoreAnalyticsLogger(v56);
    OUTLINED_FUNCTION_10_2();
    swift_allocObject();
    v57 = MEMORY[0x277D61160];
    v2[25] = v54;
    v2[26] = v57;
    v2[22] = v55;
    sub_2311CF324((v2 + 22), (v2 + 27));
    sub_231368330();
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 22);
    __swift_project_boxed_opaque_existential_1((v53 + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_trialClientProvider), *(v53 + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_trialClientProvider + 24));
    sub_231343BB8(v2 + 32);
    v58 = v2[35];
    v59 = v2[36];
    __swift_project_boxed_opaque_existential_1(v2 + 32, v58);
    (*(v59 + 56))(&v78, v58, v59);
    v79 = v78;
    v80[0] = 0;
    sub_2313024A8(&v79, 0, v80, 0, 0);

    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 32);
    sub_231369100();
    v60 = sub_2313698A0();
    sub_23136A3A0();
    v61 = OUTLINED_FUNCTION_17_2();
    if (!os_log_type_enabled(v61, v62))
    {
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_16_1();
    *swift_slowAlloc() = 0;
    goto LABEL_21;
  }

  v44 = v2[57];
  v45 = v2[54];
  v46 = v2[55];

  v73(v44, *MEMORY[0x277D61198], v45);
  OUTLINED_FUNCTION_59_0(v76 + v75, (v2 + 49));
  (*(v46 + 40))(v76 + v75, v44, v45);
  swift_endAccess();
  sub_231369100();
  v60 = sub_2313698A0();
  sub_23136A3A0();
  v47 = OUTLINED_FUNCTION_17_2();
  if (os_log_type_enabled(v47, v48))
  {
    OUTLINED_FUNCTION_16_1();
    *swift_slowAlloc() = 0;
LABEL_21:
    OUTLINED_FUNCTION_28_2();
    _os_log_impl(v63, v64, v65, v66, v67, 2u);
    OUTLINED_FUNCTION_6_1();
    MEMORY[0x23192B930]();
  }

LABEL_22:

  v68 = OUTLINED_FUNCTION_28_0();
  (v77)(v68);
LABEL_9:

  v29 = v2[1];

  return v29();
}

uint64_t sub_2311F432C()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_status;
  sub_231368D70();
  OUTLINED_FUNCTION_11();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_trialClientProvider));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions24TrialOwnerConfigProvider_allOwnerConfigsLoaderProvider));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2311F43BC()
{
  sub_2311F432C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2311F43F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311F4480;

  return sub_2311F34DC();
}

uint64_t sub_2311F4480()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t sub_2311F4578()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311F4604;

  return sub_2311F377C();
}

uint64_t sub_2311F4604()
{
  OUTLINED_FUNCTION_8();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2311F4700@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  sub_231368D70();
  OUTLINED_FUNCTION_11();
  return (*(v5 + 16))(a2, v2 + v4);
}

uint64_t sub_2311F477C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for TrialOwnerConfigProvider(0);
  v7 = sub_2311F4EE0(qword_280F806C0, type metadata accessor for TrialOwnerConfigProvider);
  *v5 = v2;
  v5[1] = sub_2311F93DC;

  return MEMORY[0x2821C6F78](a1, a2, v6, v7);
}

uint64_t sub_2311F487C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2311F48C8(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_2311F4950(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2311CFD58(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2311F49AC(uint64_t a1, unint64_t a2)
{
  v3 = sub_2311F49F8(a1, a2);
  sub_2311F4B10(&unk_2845F0F20);
  return v3;
}

uint64_t sub_2311F49F8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_23136A090())
  {
    result = sub_2311F4BF4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_23136A640();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_23136A680();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2311F4B10(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2311F4C64(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2311F4BF4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43680, &qword_23136CBC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2311F4C64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43680, &qword_23136CBC8);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

_BYTE **sub_2311F4D58(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_2311F4D68(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_2311F4E78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433B0, &unk_23136EDC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2311F4EE0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_34_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2311F4F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2311D5204(a1, a2, a3);
  *(a1 + 16) = v4;
  result = sub_2311F4F54(v4, v5, v6);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_2311F4F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85A48;
  if (!qword_280F85A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85A48);
  }

  return result;
}

unint64_t sub_2311F4FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD433C0;
  if (!qword_27DD433C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD433C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfigSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConfigSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2311F52DC(uint64_t a1)
{
  result = sub_231368D70();
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

uint64_t sub_2311F53AC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2311F53E4(uint64_t a1)
{
  result = sub_231368D70();
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2311F54B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2311F54F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2311F5564(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2311F55A4(uint64_t result, int a2, int a3)
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

void sub_2311F571C()
{
  OUTLINED_FUNCTION_31_1();
  sub_2311F9244(v1, v2, v3, v4, v5, v6, v7, sub_23126F660);
  *v0 = v8;
}

uint64_t sub_2311F57DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F65D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2311F57FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F66E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F581C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F67F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2311F5888(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F6908(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F59B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F6BD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F59D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F6CF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2311F5AF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F6E08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F5B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F709C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2311F5B50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F71AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2311F5B70(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F7378(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2311F5BD4()
{
  OUTLINED_FUNCTION_30_1();
  sub_2311F9244(v1, v2, v3, v4, v5, v6, v7, sub_23126F76C);
  *v0 = v8;
}

uint64_t sub_2311F5C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F75C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F5CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F77B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F5CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F78D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2311F5D18(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F79E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2311F5D38(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F7D10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F5D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F7E28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2311F5DD0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F7F40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2311F5DF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F810C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F5E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F82D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F5E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F83F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2311F5E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F8508(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2311F5F14(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F86D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2311F5F8C()
{
  OUTLINED_FUNCTION_32_1();
  sub_2311F9244(v1, v2, v3, v4, v5, v6, v7, sub_23126F92C);
  *v0 = v8;
}

void *sub_2311F602C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F88E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2311F6098(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F8C2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2311F60B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F8E98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2311F6124(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2311F911C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2311F6144()
{
  OUTLINED_FUNCTION_20_1();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_0(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_3();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43520, &qword_23136CA60);
      v6 = OUTLINED_FUNCTION_63_1();
      v7 = _swift_stdlib_malloc_size(v6);
      OUTLINED_FUNCTION_18_5((v7 - 32) / 16);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_5();
        sub_23126F678(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2311F6210()
{
  OUTLINED_FUNCTION_20_1();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_0(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_3();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433E0, &qword_23136C900);
      v6 = OUTLINED_FUNCTION_63_1();
      v7 = _swift_stdlib_malloc_size(v6);
      OUTLINED_FUNCTION_18_5((v7 - 32) / 8);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_5();
        sub_2311DDD00(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2311F6318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_20_1();
  if (v7)
  {
    OUTLINED_FUNCTION_1_0();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_12_1();
      if (v8)
      {
LABEL_22:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_19_3();
  if (v8 ^ v9 | v17)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  if (!v11)
  {
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434B8, &unk_2313706C0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  OUTLINED_FUNCTION_0(v12);
  v14 = *(v13 + 72);
  v15 = OUTLINED_FUNCTION_5_2();
  _swift_stdlib_malloc_size(v15);
  if (!v14)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_27_2();
  v17 = v17 && v14 == -1;
  if (v17)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_18_5(v16 / v14);
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_35_0();
  if (v5)
  {
    v19 = OUTLINED_FUNCTION_25_2(v18);
    sub_23126F698(v19, v20, v21);
    *(v4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_2();
  }

  OUTLINED_FUNCTION_64_1();
}

void sub_2311F6474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_20_1();
  if (v7)
  {
    OUTLINED_FUNCTION_1_0();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_12_1();
      if (v8)
      {
LABEL_22:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_19_3();
  if (v8 ^ v9 | v17)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  if (!v11)
  {
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43618, &unk_231370750);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43620, &qword_23136CB60);
  OUTLINED_FUNCTION_0(v12);
  v14 = *(v13 + 72);
  v15 = OUTLINED_FUNCTION_5_2();
  _swift_stdlib_malloc_size(v15);
  if (!v14)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_27_2();
  v17 = v17 && v14 == -1;
  if (v17)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_18_5(v16 / v14);
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43620, &qword_23136CB60);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_35_0();
  if (v5)
  {
    v19 = OUTLINED_FUNCTION_25_2(v18);
    sub_23126F6C4(v19, v20, v21);
    *(v4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_2();
  }

  OUTLINED_FUNCTION_64_1();
}

uint64_t sub_2311F65D0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433F8, &qword_231373E80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_231270E00((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43400, &qword_23136C920);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2311F66E8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C8, &unk_231370DC0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_23126F678((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434D0, &qword_23136CA10);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2311F67F8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433E8, &qword_23136C908);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_231270DFC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433F0, &unk_23136C910);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2311F6908(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434A8, &unk_23136C9E0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43398, &qword_23136C338) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43398, &qword_23136C338) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23126F6D8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2311F6B10()
{
  OUTLINED_FUNCTION_20_1();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_0(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_3();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F10, &unk_23136C970);
      v7 = OUTLINED_FUNCTION_37_1(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_9_3(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_7_5();
        sub_231270E00(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
    OUTLINED_FUNCTION_14_3(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_2311F6BD8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435F8, &qword_231374530);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_231270E00((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2311F6CF0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43420, &qword_23136C938);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_231270E00((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43428, &unk_23136C940);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2311F6E08(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43568, &qword_23136CAA8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43570, &qword_23136CAB0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43570, &qword_23136CAB0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23126F79C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2311F6FD4()
{
  OUTLINED_FUNCTION_20_1();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_0(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_3();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43550, &unk_23136CA90);
      v7 = OUTLINED_FUNCTION_37_1(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_9_3(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_7_5();
        sub_23126F7B0(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43558, &qword_231374890);
    OUTLINED_FUNCTION_14_3(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_2311F709C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43578, &qword_23136CAB8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_231270DFC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43580, &qword_23136CAC0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2311F71AC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43670, &qword_23136CBB8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43678, &qword_23136CBC0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43678, &qword_23136CBC0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23126F7D8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2311F7378(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434E0, &unk_23136CA20);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_23126F7B0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434E8, &unk_23136E480);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2311F7490()
{
  OUTLINED_FUNCTION_20_1();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_0(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_3();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43538, &qword_231374A70);
      v7 = OUTLINED_FUNCTION_37_1(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_9_3(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_7_5();
        sub_23126F804(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43540, &qword_23136CA80);
    OUTLINED_FUNCTION_14_3(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_2311F75C4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43438, &unk_231370D40);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_231270E00((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43440, &qword_23136C960);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2311F76DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_0();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_49_0(a1, a2, a3, a4, a5, a6);
      v15 = OUTLINED_FUNCTION_63_1();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 8);
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v11)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_2311F77B8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43638, &qword_23136CB78);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_231270E00((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43640, &qword_23136CB80);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2311F78D0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43598, &qword_23136CAD8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_231270E00((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435A0, &qword_23136CAE0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2311F79E8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435B8, &qword_23136CAF8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435C0, &unk_23136CB00) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435C0, &unk_23136CB00) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23126F844(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2311F7BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_20_1();
  if (v7)
  {
    OUTLINED_FUNCTION_1_0();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_12_1();
      if (v8)
      {
LABEL_22:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_19_3();
  if (v8 ^ v9 | v17)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  if (!v11)
  {
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435C8, &qword_231370730);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435D0, &qword_23136CB10);
  OUTLINED_FUNCTION_0(v12);
  v14 = *(v13 + 72);
  v15 = OUTLINED_FUNCTION_5_2();
  _swift_stdlib_malloc_size(v15);
  if (!v14)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_27_2();
  v17 = v17 && v14 == -1;
  if (v17)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_18_5(v16 / v14);
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435D0, &qword_23136CB10);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_35_0();
  if (v5)
  {
    v19 = OUTLINED_FUNCTION_25_2(v18);
    sub_23126F858(v19, v20, v21);
    *(v4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_2();
  }

  OUTLINED_FUNCTION_64_1();
}

void *sub_2311F7D10(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43628, &qword_23136CB68);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 72);
      if (v5)
      {
LABEL_13:
        sub_23126F86C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43630, &qword_23136CB70);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2311F7E28(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43608, &qword_23136CB48);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_2311DAAAC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43610, &unk_23136CB50);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2311F7F40(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43500, &unk_23136CA40);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43508, &qword_231373010) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43508, &qword_231373010) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23126F8AC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2311F810C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435A8, &qword_23136CAE8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435B0, &qword_23136CAF0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435B0, &qword_23136CAF0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23126F8C0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_2311F82D8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434F0, &qword_23136CA30);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 80);
      if (v5)
      {
LABEL_13:
        sub_231270E04((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434F8, &qword_23136CA38);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2311F83F0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43468, &qword_23136C9A0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_231270E08((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43470, &qword_23136C9A8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2311F8508(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433C8, &qword_231370E50);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_231270E00((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433D0, &qword_23136C8F0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2311F8620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_21_3();
  if ((v9 & 1) == 0 || (OUTLINED_FUNCTION_1_0(), v10 == v11))
  {
LABEL_6:
    OUTLINED_FUNCTION_41_1();
    if (v8)
    {
      OUTLINED_FUNCTION_49_0(v12, v13, v14, v15, v16, v17);
      v18 = swift_allocObject();
      v19 = _swift_stdlib_malloc_size(v18);
      OUTLINED_FUNCTION_40_2(v19 - 32);
      if (v7)
      {
LABEL_8:
        v20 = OUTLINED_FUNCTION_44_2();
        v6(v20);
        *(v5 + 16) = 0;
LABEL_11:

        OUTLINED_FUNCTION_64_1();
        return;
      }
    }

    else if (v7)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_33_3();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v10)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_2311F86D8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435D8, &qword_23136CB18);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435E0, &qword_23136CB20) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435E0, &qword_23136CB20) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23126F900(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2311F88E0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43588, &qword_23136CAC8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43590, &qword_23136CAD0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43590, &qword_23136CAD0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23126F8D4(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2311F8AAC()
{
  OUTLINED_FUNCTION_21_3();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_1_0(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_41_1();
    if (v4)
    {
      OUTLINED_FUNCTION_49_0(v8, v9, v10, v11, v12, v13);
      v14 = OUTLINED_FUNCTION_63_1();
      v15 = _swift_stdlib_malloc_size(v14);
      v14[2] = v3;
      v14[3] = 2 * ((v15 - 32) / 32);
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_44_2();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_33_3();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2311F8B64()
{
  OUTLINED_FUNCTION_20_1();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_1_0(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_8_3();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43660, &qword_2313707B0);
      v7 = OUTLINED_FUNCTION_37_1(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_9_3(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_7_5();
        sub_231270E08(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43668, &qword_23136CBB0);
    OUTLINED_FUNCTION_14_3(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v4)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_2311F8C2C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_23126F734((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443C0, &unk_23136E000);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}