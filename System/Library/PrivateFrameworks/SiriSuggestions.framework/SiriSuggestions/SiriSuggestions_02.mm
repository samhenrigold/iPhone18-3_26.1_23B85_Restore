void sub_2311F8D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43528, &qword_23136CA68);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_35_0();
  if (v5)
  {
    v19 = OUTLINED_FUNCTION_25_2(v18);
    sub_23126F95C(v19, v20, v21);
    *(v4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_2();
  }

  OUTLINED_FUNCTION_64_1();
}

void *sub_2311F8E98(void *result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43408, &qword_23136C928);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43248, &qword_23136BCF0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43248, &qword_23136BCF0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23126F970(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2311F9064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void *sub_2311F911C(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434D8, &qword_23136CA18);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * v11 - 64;
      if (v5)
      {
LABEL_13:
        sub_23126FA4C(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
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

    memcpy((v10 + 32), a4 + 32, v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2311F9244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, char *))
{
  v11 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_1_0();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_12_1();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_49_0(a1, a2, a3, a4, a5, a6);
  v17 = a7(0);
  OUTLINED_FUNCTION_0(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_40_2(v23 - v21);
LABEL_18:
  a7(0);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_35_0();
  if (v11)
  {
    a8(a4 + v25, v15, v22 + v25);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_2@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 152) = v2;
  *(v3 - 144) = a1;
  *(v3 - 176) = v1;

  return sub_2311CF324(v3 - 176, v3 - 224);
}

__n128 OUTLINED_FUNCTION_50_3()
{
  result = *(v0 - 176);
  *(v0 - 224) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_59_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_61_0()
{

  return sub_231368330();
}

uint64_t OUTLINED_FUNCTION_63_1()
{

  return swift_allocObject();
}

uint64_t sub_2311F9580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2311F96A8;

  return v9(a1, a2, a3);
}

uint64_t sub_2311F96A8()
{
  OUTLINED_FUNCTION_8();
  v1 = v0;

  OUTLINED_FUNCTION_14();

  return v2(v1);
}

uint64_t sub_2311F97B4()
{
  v1 = [objc_opt_self() sharedCategories];
  v0[20] = v1;
  v2 = sub_23136A190();
  v0[21] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2311F991C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43688, &qword_23136CC80);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2311F9CA0;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v1 categoriesForBundleIDs:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2311F991C()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_2311F9C28;
  }

  else
  {
    v2 = sub_2311F9A28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2311F9A28()
{
  v1 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43690, &qword_23136CC88);
  v2 = sub_23136A770();
  v3 = v2;
  v4 = 0;
  v6 = v1 + 64;
  v5 = *(v1 + 64);
  v32 = v2;
  v33 = v1;
  v7 = 1 << *(v1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;
  v31 = v2 + 64;
  if ((v8 & v5) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v4 << 6);
      v15 = (*(v33 + 48) + 16 * v14);
      v16 = v15[1];
      v34 = *v15;
      v17 = *(*(v33 + 56) + 8 * v14);
      sub_231369EE0();
      v18 = v17;
      v19 = [v18 identifier];
      v20 = sub_231369FD0();
      v22 = v21;

      v3 = v32;
      *(v31 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v23 = (v32[6] + 16 * v14);
      *v23 = v34;
      v23[1] = v16;
      v24 = (v32[7] + 16 * v14);
      *v24 = v20;
      v24[1] = v22;
      v25 = v32[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v32[2] = v27;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v12 = v4;
    while (1)
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v4 >= v10)
      {
        break;
      }

      v13 = *(v6 + 8 * v4);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    v28 = *(v30 + 168);

    OUTLINED_FUNCTION_14();

    v29(v3);
  }
}

uint64_t sub_2311F9C28(uint64_t a1)
{
  v2 = v1[21];
  v3 = v1[20];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_2311F9CA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_2311F9D24(v4, a3);
  }

  sub_2311FA0A4();
  v6 = sub_231369E80();
  return sub_2311F9D90(v4, v6);
}

uint64_t sub_2311F9D24(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_2311F9DD4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311FA17C;

  return sub_2311F979C(a1);
}

uint64_t sub_2311F9E7C()
{
  OUTLINED_FUNCTION_8();
  sub_231369EC0();
  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_2311F9F18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311F9FA4;

  return sub_2311F9E68();
}

uint64_t sub_2311F9FA4()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;

  OUTLINED_FUNCTION_14();
  if (!v0)
  {
    v3 = v2;
  }

  return v4(v3);
}

unint64_t sub_2311FA0A4()
{
  result = qword_27DD43698;
  if (!qword_27DD43698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD43698);
  }

  return result;
}

uint64_t sub_2311FA0E8(uint64_t a1, int a2)
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

uint64_t sub_2311FA128(uint64_t result, int a2, int a3)
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

uint64_t sub_2311FA180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2311FA2C0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_2311FA2C0()
{

  OUTLINED_FUNCTION_56_0();

  return v0();
}

uint64_t sub_2311FA3B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2311FA3F0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2311FA448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2313698C0();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2311FA524, 0, 0);
}

uint64_t sub_2311FA524()
{
  v37 = v0;
  __swift_project_boxed_opaque_existential_1(*(v0 + 40), *(*(v0 + 40) + 24));
  OUTLINED_FUNCTION_28_0();
  if ((sub_231368400() & 1) == 0)
  {
    sub_2313690D0();
    v21 = sub_2313698A0();
    v22 = sub_23136A3A0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2311CB000, v21, v22, "InApp FeatureFlag is not enabled. Not donating to Tips.Event", v23, 2u);
      OUTLINED_FUNCTION_29();
    }

    v24 = OUTLINED_FUNCTION_28_0();
    v25(v24);
LABEL_9:

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_8_4();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  v35 = sub_231367310();
  v36 = v7;
  sub_231369EE0();
  MEMORY[0x23192A730](v6, v4);

  v8 = v36;
  *(v0 + 88) = v35;
  *(v0 + 96) = v8;
  v9 = *(v5 + 16);
  *(v0 + 104) = v9;
  if (!v9)
  {

    goto LABEL_9;
  }

  v10 = *(v0 + 32);
  *(v0 + 112) = sub_231366B90();
  *(v0 + 120) = 0;
  *(v0 + 128) = *(v10 + 32);
  *(v0 + 136) = *(v10 + 40);
  sub_231369EE0();
  sub_2313690D0();
  sub_231369EE0();
  sub_231369EE0();
  v11 = sub_2313698A0();
  v12 = sub_23136A3A0();

  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_6_2();
    v33 = v13;
    v34 = v14;
    OUTLINED_FUNCTION_45();
    v35 = OUTLINED_FUNCTION_10_3();
    *v1 = 136315394;
    v15 = sub_2311CFD58(v3, v2, &v35);
    OUTLINED_FUNCTION_7_1(v15);
    v16 = OUTLINED_FUNCTION_28_0();
    *(v1 + 14) = sub_2311CFD58(v16, v17, v18);
    OUTLINED_FUNCTION_2_4(&dword_2311CB000, v19, v20, "Donating tip event %s to %s");
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_24();

    v11 = *(v5 + 8);
    (v11)(v34, v33);
  }

  else
  {

    v28 = OUTLINED_FUNCTION_5_3();
    (v11)(v28);
  }

  *(v0 + 144) = v11;
  v29 = swift_task_alloc();
  *(v0 + 152) = v29;
  *v29 = v0;
  OUTLINED_FUNCTION_0_7(v29);
  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x2821D93C0](v30);
}

uint64_t sub_2311FA81C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_2311FAB30;
  }

  else
  {

    v2 = sub_2311FA938;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2311FA938()
{
  v26 = v0;
  OUTLINED_FUNCTION_13_3();
  if (v6)
  {

    OUTLINED_FUNCTION_56_0();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_1_9(v5);
    sub_2313690D0();
    sub_231369EE0();
    sub_231369EE0();
    v9 = sub_2313698A0();
    v10 = sub_23136A3A0();

    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_6_2();
      v23 = v12;
      v24 = v13;
      OUTLINED_FUNCTION_45();
      v25 = OUTLINED_FUNCTION_10_3();
      *v2 = 136315394;
      v14 = sub_2311CFD58(v4, v3, &v25);
      OUTLINED_FUNCTION_7_1(v14);
      v15 = OUTLINED_FUNCTION_28_0();
      *(v2 + 14) = sub_2311CFD58(v15, v16, v17);
      OUTLINED_FUNCTION_2_4(&dword_2311CB000, v18, v19, "Donating tip event %s to %s");
      OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();

      v9 = *(v1 + 8);
      (v9)(v24, v23);
    }

    else
    {

      v20 = OUTLINED_FUNCTION_5_3();
      (v9)(v20);
    }

    *(v0 + 144) = v9;
    v21 = swift_task_alloc();
    *(v0 + 152) = v21;
    *v21 = v0;
    v22 = OUTLINED_FUNCTION_0_7(v21);

    return MEMORY[0x2821D93C0](v22);
  }
}

uint64_t sub_2311FAB30(uint64_t a1)
{
  v45 = v1;
  v3 = v1[20];
  sub_2313690D0();
  sub_231369EE0();
  v4 = v3;
  v5 = sub_2313698A0();
  v6 = sub_23136A3A0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[20];
  v10 = v1[17];
  v9 = v1[18];
  if (v7)
  {
    v11 = v1[16];
    v42 = v1[8];
    v40 = v1[6];
    v12 = OUTLINED_FUNCTION_45();
    v2 = swift_slowAlloc();
    v39 = v9;
    v9 = swift_slowAlloc();
    v44 = v9;
    *v12 = 136315394;
    v13 = sub_2311CFD58(v11, v10, &v44);

    *(v12 + 4) = v13;
    *(v12 + 12) = 2112;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v15;
    *v2 = v15;
    _os_log_impl(&dword_2311CB000, v5, v6, "Could not donate tip event to %s. Error: %@", v12, 0x16u);
    sub_2311F4E78(v2);
    OUTLINED_FUNCTION_29();
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_29();

    v39(v42, v40);
  }

  else
  {
    v17 = v1[7];
    v16 = v1[8];
    v18 = v1[6];

    v6 = v17 + 8;

    (v9)(v16, v18);
  }

  OUTLINED_FUNCTION_13_3();
  if (v20)
  {

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_8_4();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_1_9(v19);
  sub_2313690D0();
  sub_231369EE0();
  sub_231369EE0();
  v23 = sub_2313698A0();
  v24 = sub_23136A3A0();

  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_6_2();
    v41 = v26;
    v43 = v27;
    OUTLINED_FUNCTION_45();
    v44 = OUTLINED_FUNCTION_10_3();
    *v9 = 136315394;
    v28 = sub_2311CFD58(v10, v2, &v44);
    OUTLINED_FUNCTION_7_1(v28);
    v29 = OUTLINED_FUNCTION_28_0();
    *(v9 + 14) = sub_2311CFD58(v29, v30, v31);
    OUTLINED_FUNCTION_2_4(&dword_2311CB000, v32, v33, "Donating tip event %s to %s");
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_24();

    v23 = *(v6 + 8);
    (v23)(v43, v41);
  }

  else
  {

    v34 = OUTLINED_FUNCTION_5_3();
    (v23)(v34);
  }

  v1[18] = v23;
  v35 = swift_task_alloc();
  v1[19] = v35;
  *v35 = v1;
  OUTLINED_FUNCTION_0_7(v35);
  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x2821D93C0](v36);
}

uint64_t dispatch thunk of OwnerDefinitionProvider.ownerDefinitionsAvailable()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2311DDECC;

  return v7(a1, a2);
}

uint64_t sub_2311FAFF8()
{
  v1 = *(v0 + 16);
  if (*(v1 + 112) == 1)
  {
    v2 = *(v1 + 152);
    v3 = *(v1 + 160);
    __swift_project_boxed_opaque_existential_1((v1 + 128), v2);
    OUTLINED_FUNCTION_1_6();
    v9 = (v4 + *v4);
    v5 = swift_task_alloc();
    *(v0 + 24) = v5;
    *v5 = v0;
    v5[1] = sub_2311FB158;

    return v9(v2, v3);
  }

  else
  {
    OUTLINED_FUNCTION_14();
    v10 = v7;
    v8 = sub_231369EE0();

    return v10(v8);
  }
}

uint64_t sub_2311FB158()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 32) = v5;

  return MEMORY[0x2822009F8](sub_2311FB260, v2, 0);
}

uint64_t sub_2311FB260()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 16);
  *(v1 + 120) = *(v0 + 32);

  *(v1 + 112) = 0;
  OUTLINED_FUNCTION_14();
  v5 = v2;
  v3 = sub_231369EE0();

  return v5(v3);
}

uint64_t sub_2311FB2DC()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2311FB30C()
{
  sub_2311FB2DC();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2311FB35C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311E6A24;

  return sub_2311FAFDC();
}

void sub_2311FB40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  v15 = v14[2];
  v16 = v15[2];
  v17 = MEMORY[0x277D84F90];
  v14[4] = 0;
  v14[5] = v17;
  v14[3] = v16;
  if (v16)
  {
    __swift_project_boxed_opaque_existential_1(v15 + 4, v15[7]);
    OUTLINED_FUNCTION_1_6();
    a11 = v18 + *v18;
    v19 = swift_task_alloc();
    v14[6] = v19;
    *v19 = v14;
    OUTLINED_FUNCTION_2_5(v19);
    OUTLINED_FUNCTION_7();
  }

  else
  {
    v28 = 0;
    v29 = *(v17 + 16);
    v30 = v17;
    while (v29 != v28)
    {
      if (v28 >= *(v17 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      v31 = *(v17 + 8 * v28 + 32);
      v32 = *(v31 + 16);
      v33 = *(v30 + 16);
      if (__OFADD__(v33, v32))
      {
        goto LABEL_23;
      }

      sub_231369EE0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v33 + v32 > *(v30 + 24) >> 1)
      {
        sub_23126DD88(isUniquelyReferenced_nonNull_native);
        v30 = v35;
      }

      if (*(v31 + 16))
      {
        if ((*(v30 + 24) >> 1) - *(v30 + 16) < v32)
        {
          goto LABEL_25;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435A0, &qword_23136CAE0);
        swift_arrayInitWithCopy();

        if (v32)
        {
          v36 = *(v30 + 16);
          v37 = __OFADD__(v36, v32);
          v38 = v36 + v32;
          if (v37)
          {
            goto LABEL_26;
          }

          *(v30 + 16) = v38;
        }
      }

      else
      {

        if (v32)
        {
          goto LABEL_24;
        }
      }

      ++v28;
    }

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_7();
  }

  v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2311FB658()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  *(v1 + 56) = v0;

  v2 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2311FB748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v14[5];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_30:
    sub_23126DDAC(0);
    v16 = v44;
  }

  v18 = *(v16 + 16);
  v17 = *(v16 + 24);
  if (v18 >= v17 >> 1)
  {
    sub_23126DDAC(v17 > 1);
    v16 = v45;
  }

  v19 = v14[7];
  *(v16 + 16) = v18 + 1;
  *(v16 + 8 * v18 + 32) = v19;
  v20 = v14[3];
  v21 = v14[4] + 1;
  v14[4] = v21;
  v14[5] = v16;
  if (v21 == v20)
  {
    v22 = 0;
    v23 = MEMORY[0x277D84F90];
    v24 = *(v16 + 16);
    while (v24 != v22)
    {
      if (v22 >= *(v16 + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v25 = *(v16 + 8 * v22 + 32);
      v26 = *(v25 + 16);
      v27 = *(v23 + 16);
      if (__OFADD__(v27, v26))
      {
        goto LABEL_26;
      }

      sub_231369EE0();
      v28 = swift_isUniquelyReferenced_nonNull_native();
      if (!v28 || v27 + v26 > *(v23 + 24) >> 1)
      {
        sub_23126DD88(v28);
        v23 = v29;
      }

      if (*(v25 + 16))
      {
        if ((*(v23 + 24) >> 1) - *(v23 + 16) < v26)
        {
          goto LABEL_28;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435A0, &qword_23136CAE0);
        swift_arrayInitWithCopy();

        if (v26)
        {
          v30 = *(v23 + 16);
          v31 = __OFADD__(v30, v26);
          v32 = v30 + v26;
          if (v31)
          {
            goto LABEL_29;
          }

          *(v23 + 16) = v32;
        }
      }

      else
      {

        if (v26)
        {
          goto LABEL_27;
        }
      }

      ++v22;
    }

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_7();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v14[2] + 40 * v21 + 32), *(v14[2] + 40 * v21 + 56));
    OUTLINED_FUNCTION_1_6();
    a11 = v33 + *v33;
    v34 = swift_task_alloc();
    v14[6] = v34;
    *v34 = v14;
    OUTLINED_FUNCTION_2_5(v34);
    OUTLINED_FUNCTION_7();
  }

  return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2311FBA08()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311E6A24;

  return sub_2311FB3EC(v2);
}

uint64_t sub_2311FBA9C(void *a1)
{
  sub_2311CF324(a1, v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231367AD0();
  sub_2311D38A8(&v4, v1 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_2311FBB14@<X0>(uint64_t *a1@<X8>)
{
  sub_2311CF324(v1 + 56, v6);
  locked = type metadata accessor for OwnerLockedSourceGenerator();
  OUTLINED_FUNCTION_20();
  v4 = swift_allocObject();
  sub_2311FC70C(v6, MEMORY[0x277D60C68], sub_2311E6A28);
  a1[3] = locked;
  result = sub_2311FD9D4(&qword_280F7FB00, type metadata accessor for OwnerLockedSourceGenerator, &unk_23136D0B0);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_2311FBBD4@<X0>(uint64_t *a1@<X8>)
{
  sub_2311CF324(v1 + 56, v6);
  locked = type metadata accessor for OwnerLockedTargetDefinition();
  OUTLINED_FUNCTION_20();
  v4 = swift_allocObject();
  sub_2311FC70C(v6, MEMORY[0x277D60C60], sub_2311E6A28);
  a1[3] = locked;
  result = sub_2311FD9D4(&qword_280F7F368, type metadata accessor for OwnerLockedTargetDefinition, &unk_23136CFE8);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_2311FBCB4()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_38();
  return sub_231369510();
}

uint64_t sub_2311FBCFC()
{
  sub_23136A650();
  MEMORY[0x23192A730](0x203A72656E774FLL, 0xE700000000000000);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_23136A8D0();
  MEMORY[0x23192A730](0x696E69666564202CLL, 0xEE00203A6E6F6974);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435A0, &qword_23136CAE0);
  sub_23136A6F0();
  return 0;
}

uint64_t sub_2311FBEC0()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_23136A8D0();
  MEMORY[0x23192A730](35, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A8, &qword_23136D1D8);
  sub_23136A6F0();
  return 0;
}

uint64_t sub_2311FBF8C()
{
  OUTLINED_FUNCTION_8();
  v1[29] = v2;
  v1[30] = v0;
  v1[27] = v3;
  v1[28] = v4;
  v5 = sub_2313698C0();
  v1[31] = v5;
  v1[32] = *(v5 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2311FC050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_1();
  a21 = v24;
  a22 = v25;
  a20 = v22;
  v26 = v22[30];
  __swift_project_boxed_opaque_existential_1(v22[27], *(v22[27] + 24));
  sub_231367AD0();
  OUTLINED_FUNCTION_12_2();
  v27 = OUTLINED_FUNCTION_15_3(v26 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(v22 + 2);
  v28 = v22[27];
  if (v27)
  {
    sub_231369170();
    sub_2311CF324(v28, (v22 + 17));

    v29 = sub_2313698A0();
    v30 = sub_23136A3A0();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v22[34];
    v34 = v22[31];
    v33 = v22[32];
    if (v31)
    {
      OUTLINED_FUNCTION_25_3();
      a11 = OUTLINED_FUNCTION_16_2();
      *v23 = 136315394;
      a9 = v32;
      __swift_project_boxed_opaque_existential_1(v22 + 17, v22[20]);
      OUTLINED_FUNCTION_5_4();
      sub_231367AD0();
      __swift_project_boxed_opaque_existential_1(v22 + 22, v22[25]);
      OUTLINED_FUNCTION_5_4();
      sub_23136A8B0();
      OUTLINED_FUNCTION_21_4();
      __swift_destroy_boxed_opaque_existential_1Tm(v22 + 22);
      v35 = __swift_destroy_boxed_opaque_existential_1Tm(v22 + 17);
      OUTLINED_FUNCTION_27_3(v35, v36, &a11);
      OUTLINED_FUNCTION_5_4();

      OUTLINED_FUNCTION_11_4();
      __swift_project_boxed_opaque_existential_1((v26 + 56), *(v34 + 80));
      OUTLINED_FUNCTION_5_4();
      v37 = sub_23136A8B0();
      v39 = sub_2311CFD58(v37, v38, &a11);

      *(v23 + 14) = v39;
      OUTLINED_FUNCTION_18_6(&dword_2311CB000, v40, v30, "owner OK. %s == %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v33 + 8))(v32, a10);
    }

    else
    {

      (*(v33 + 8))(v32, v34);
      __swift_destroy_boxed_opaque_existential_1Tm(v22 + 17);
    }

    OUTLINED_FUNCTION_3_2((v22[30] + 16));
    v53 = swift_task_alloc();
    v22[35] = v53;
    *v53 = v22;
    v53[1] = sub_2311FC4C4;
    OUTLINED_FUNCTION_7();

    return MEMORY[0x2821C6CE8](v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_231369170();
    sub_2311CF324(v28, (v22 + 7));

    v41 = sub_2313698A0();
    v42 = sub_23136A3A0();

    v43 = os_log_type_enabled(v41, v42);
    v45 = v22[32];
    v44 = v22[33];
    v46 = v22[31];
    if (v43)
    {
      OUTLINED_FUNCTION_25_3();
      a11 = OUTLINED_FUNCTION_16_2();
      *v23 = 136315394;
      a9 = v44;
      __swift_project_boxed_opaque_existential_1(v22 + 7, v22[10]);
      OUTLINED_FUNCTION_5_4();
      sub_231367AD0();
      __swift_project_boxed_opaque_existential_1(v22 + 12, v22[15]);
      OUTLINED_FUNCTION_5_4();
      sub_23136A8B0();
      OUTLINED_FUNCTION_21_4();
      __swift_destroy_boxed_opaque_existential_1Tm(v22 + 12);
      v47 = __swift_destroy_boxed_opaque_existential_1Tm(v22 + 7);
      OUTLINED_FUNCTION_27_3(v47, v48, &a11);
      OUTLINED_FUNCTION_5_4();

      OUTLINED_FUNCTION_11_4();
      __swift_project_boxed_opaque_existential_1((v26 + 56), *(v46 + 80));
      OUTLINED_FUNCTION_5_4();
      v49 = sub_23136A8B0();
      v51 = sub_2311CFD58(v49, v50, &a11);

      *(v23 + 14) = v51;
      OUTLINED_FUNCTION_18_6(&dword_2311CB000, v52, v42, "owner Not OK. %s != %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v45 + 8))(v44, a10);
    }

    else
    {

      (*(v45 + 8))(v44, v46);
      __swift_destroy_boxed_opaque_existential_1Tm(v22 + 7);
    }

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_7();

    return v64(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_2311FC4C4()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_23_1();

  return v4(v3);
}

uint64_t sub_2311FC630()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311E6A24;

  return sub_2311FBF8C();
}

uint64_t sub_2311FC70C(void *a1, void (*a2)(__int128 *__return_ptr, uint64_t, uint64_t), void (*a3)(__int128 *, uint64_t))
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  a2(v10, v7, v8);
  a3(v10, v3 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231367AD0();
  sub_2311D38A8(v10, v3 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_2311FC7C8()
{
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_38();
  return sub_231368710();
}

uint64_t sub_2311FC804()
{
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_38();
  v1 = sub_231368730();
  v2 = *(v1 + 16);
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];
    sub_2311F59D0(0, v2, 0);
    v3 = v15;
    v4 = v1 + 32;
    do
    {
      sub_2311CF324(v4, &v12);
      sub_2311CF324(&v12, v11);
      sub_2311CF324(v0 + 56, v10);
      locked = type metadata accessor for OwnerLockedResolver();
      v6 = swift_allocObject();
      sub_2311FCC54(v11, v10);
      __swift_destroy_boxed_opaque_existential_1Tm(&v12);
      v15 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2311F59D0(v7 > 1, v8 + 1, 1);
        v3 = v15;
      }

      v13 = locked;
      v14 = sub_2311FD9D4(&qword_280F82AF0, type metadata accessor for OwnerLockedResolver, &unk_23136CF98);
      *&v12 = v6;
      *(v3 + 16) = v8 + 1;
      sub_2311D38A8(&v12, v3 + 40 * v8 + 32);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_2311FC9A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  OUTLINED_FUNCTION_26_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436B0, &qword_23137A4E0);
  locked = sub_231368620();
  if (swift_dynamicCast())
  {

    v5 = sub_231368610();
    result = MEMORY[0x277D60FE8];
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
    OUTLINED_FUNCTION_26_4();
    sub_2311CF324(v2 + 56, v7);
    locked = type metadata accessor for OwnerLockedFilter();
    OUTLINED_FUNCTION_20();
    v5 = swift_allocObject();
    sub_2311D38A8(&v8, v5 + 16);
    sub_2311D38A8(v7, v5 + 56);
    result = sub_2311FD9D4(qword_280F83850, type metadata accessor for OwnerLockedFilter, &unk_23136CEE0);
  }

  a1[3] = locked;
  a1[4] = result;
  *a1 = v5;
  return result;
}

unint64_t sub_2311FCBB0()
{
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  sub_23136A650();

  v4 = 0xD000000000000015;
  v5 = 0x800000023137C8A0;
  sub_2311CF324(v0 + 16, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43428, &unk_23136C940);
  v1 = sub_23136A010();
  MEMORY[0x23192A730](v1);

  return v4;
}

uint64_t sub_2311FCC54(void *a1, void *a2)
{
  v3 = v2;
  sub_2311CF324(a1, v2 + 16);
  sub_2311CF324(a2, v2 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_231367F20();
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(v3 + 96) = v6;
  *(v3 + 104) = v8;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_2311FCCE0()
{
  OUTLINED_FUNCTION_8();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[17] = v5;
  v6 = sub_2313698C0();
  v1[22] = v6;
  v1[23] = *(v6 - 8);
  v1[24] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2311FCD9C()
{
  v36 = v0;
  v1 = v0[21];
  OUTLINED_FUNCTION_3_2(v0[18]);
  sub_2313682A0();
  sub_2313676D0();

  OUTLINED_FUNCTION_12_2();
  v2 = OUTLINED_FUNCTION_15_3(v1 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (v2)
  {
    v3 = v0[21];
    v4 = v3[5];
    v5 = v3[6];
    OUTLINED_FUNCTION_3_2(v3 + 2);
    v6 = *(v5 + 8);
    v7 = swift_task_alloc();
    v0[25] = v7;
    *v7 = v0;
    v7[1] = sub_2311FD1AC;
    v8 = v0[19];
    v9 = v0[20];
    v11 = v0[17];
    v10 = v0[18];

    return MEMORY[0x2821C6C38](v11, v10, v8, v9, v4, v6);
  }

  else
  {
    v12 = v0[18];
    sub_231369160();
    sub_2311CF324(v12, (v0 + 7));

    v13 = sub_2313698A0();
    v14 = sub_23136A3A0();

    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[23];
    v16 = v0[24];
    v18 = v0[22];
    if (v15)
    {
      v32 = v0[21];
      swift_slowAlloc();
      v35 = OUTLINED_FUNCTION_16_2();
      *v14 = 136315394;
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v34 = v16;
      OUTLINED_FUNCTION_5_4();
      sub_2313682A0();
      sub_2313676D0();

      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      OUTLINED_FUNCTION_13_4();
      v33 = v18;
      v20 = v19;
      swift_task_alloc();
      (*(v20 + 16))();
      sub_23136A020();
      OUTLINED_FUNCTION_21_4();

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
      v21 = __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
      OUTLINED_FUNCTION_27_3(v21, v22, &v35);
      OUTLINED_FUNCTION_5_4();

      OUTLINED_FUNCTION_11_4();
      v23 = *(v32 + 80);
      __swift_project_boxed_opaque_existential_1((v1 + 56), v23);
      OUTLINED_FUNCTION_13_4();
      v25 = v24;
      swift_task_alloc();
      (*(v25 + 16))();
      sub_23136A020();
      OUTLINED_FUNCTION_21_4();

      OUTLINED_FUNCTION_27_3(v26, v27, &v35);
      OUTLINED_FUNCTION_5_4();

      *(v14 + 14) = v23;
      OUTLINED_FUNCTION_18_6(&dword_2311CB000, v28, v14, "Not resolving as parameter as they are of different owners. %s != %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v17 + 8))(v34, v33);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    }

    OUTLINED_FUNCTION_14();
    v30 = MEMORY[0x277D84F90];

    return v29(v30);
  }
}

uint64_t sub_2311FD1AC()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_23_1();

  return v4(v3);
}

uint64_t sub_2311FD2B8()
{
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_38();
  return sub_231369510();
}

void *sub_2311FD2F8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return v0;
}

uint64_t sub_2311FD328()
{
  sub_2311FD2F8();

  return swift_deallocClassInstance();
}

uint64_t sub_2311FD3A4()
{
  v1 = *(*v0 + 96);
  sub_231369EE0();
  return v1;
}

uint64_t sub_2311FD3D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311DDECC;

  return sub_2311FCCE0();
}

uint64_t sub_2311FD498(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_8_5(sub_2311FD4B8, 0);
}

uint64_t sub_2311FD4B8()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_3_2(*(v0 + 56));
  sub_2313682A0();
  sub_2313676D0();

  OUTLINED_FUNCTION_12_2();
  v2 = OUTLINED_FUNCTION_15_3(v1 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (v2)
  {
    v3 = *(v0 + 72);
    v4 = v3[5];
    v5 = v3[6];
    OUTLINED_FUNCTION_3_2(v3 + 2);
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    v6[1] = sub_2311FD5EC;
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);

    return MEMORY[0x2821C6CA0](v8, v7, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_14();

    return v9(1);
  }
}

uint64_t sub_2311FD5EC()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5(v2);
}

uint64_t sub_2311FD6D4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  OUTLINED_FUNCTION_20();

  return swift_deallocClassInstance();
}

uint64_t sub_2311FD734(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2311DDECC;

  return sub_2311FD498(a1, a2);
}

uint64_t sub_2311FD9D4(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2311FDA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  swift_defaultActor_initialize();
  *(a2 + 112) = 1;
  *(a2 + 120) = MEMORY[0x277D84F90];
  sub_2311D38A8(&v9, a2 + 128);
  return a2;
}

void OUTLINED_FUNCTION_18_6(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_26_4()
{

  return sub_231368720();
}

uint64_t sub_2311FDB48()
{
  sub_23136A650();
  MEMORY[0x23192A730](0xD000000000000014, 0x800000023137C9B0);
  v28 = v0[2];
  type metadata accessor for GenerationService();

  OUTLINED_FUNCTION_49_1(v1, v2, v3, v4, v5, v6, v7, v8, v25, v28);
  sub_231367E30();

  OUTLINED_FUNCTION_61_1();

  MEMORY[0x23192A730](0xD000000000000015, 0x800000023137C9D0);
  v29 = v0[3];
  type metadata accessor for ResolutionService();

  OUTLINED_FUNCTION_49_1(v9, v10, v11, v12, v13, v14, v15, v16, v26, v29);
  sub_231367E30();

  OUTLINED_FUNCTION_61_1();

  MEMORY[0x23192A730](0x7A696C616E69660ALL, 0xEE000A203A737265);
  v30 = v0[4];
  sub_231369EE0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436B8, &qword_23136D350);
  OUTLINED_FUNCTION_49_1(v17, v18, v19, v17, v20, v21, v22, v23, v27, v30);
  sub_231367E30();

  OUTLINED_FUNCTION_61_1();

  return 0;
}

uint64_t sub_2311FDCE0()
{
  OUTLINED_FUNCTION_26();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_2311FDD88;
  v3 = OUTLINED_FUNCTION_64();

  return sub_2311FDE78(v3, v4);
}

uint64_t sub_2311FDD88()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2311FDE78(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_2313698C0();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v5 = sub_231367C70();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v6 = sub_2313667A0();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v7 = sub_231366EA0();
  v3[30] = v7;
  v3[31] = *(v7 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2311FE0C8, 0, 0);
}

uint64_t sub_2311FE0C8()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 104);
  v21 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v4 + 240), *(v4 + 264));
  v5 = *MEMORY[0x277D60610];
  v6 = *(v3 + 104);
  *(v0 + 288) = v6;
  *(v0 + 296) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v1, v5, v2);
  __swift_project_boxed_opaque_existential_1(v21, *(v21 + 24));
  OUTLINED_FUNCTION_53_3();
  sub_2313677C0();
  v7 = OUTLINED_FUNCTION_54_0();
  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_2313677D0();
  v9 = swift_task_alloc();
  *(v0 + 304) = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v21;
  v10 = swift_task_alloc();
  *(v0 + 312) = v10;
  *(v0 + 320) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436C0, &qword_23136D378);
  *v10 = v0;
  v10[1] = sub_2311FE280;
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_7();

  return MEMORY[0x2821C6088](v11, v12, v13, v14, v15, v16, v17, v18);
}

void sub_2311FE280()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_40();
  }

  else
  {
    v23 = v3[35];
    v9 = v3[30];
    v10 = v3[31];
    v11 = v3[24];
    v12 = v3[22];
    v14 = v3[17];
    v13 = v3[18];

    v15 = *(v13 + 8);
    v3[41] = v15;
    v3[42] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v12, v14);
    v3[43] = *(v11 + 8);
    v3[44] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16 = OUTLINED_FUNCTION_54_0();
    v17(v16);
    v18 = *(v10 + 8);
    v3[45] = v18;
    v3[46] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18(v23, v9);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_40();

    MEMORY[0x2822009F8](v19, v20, v21);
  }
}

uint64_t sub_2311FE424(uint64_t a1)
{
  v25 = *(v1 + 288);
  v2 = *(v1 + 272);
  v3 = *(v1 + 240);
  v4 = *(v1 + 120);
  v5 = *(v1 + 104);
  v6 = *(v1 + 56);
  v26 = *(v1 + 88);
  v7 = *(v1 + 88);
  *(v1 + 376) = v6;
  sub_2313690F0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
  *(v1 + 384) = v8;
  OUTLINED_FUNCTION_74_1(48, 0x800000023137C9F0, MEMORY[0x277D84F90], v9, v10, sub_2311FF7D8, v11, v8);
  *(v1 + 392) = *(v4 + 8);
  *(v1 + 400) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12 = OUTLINED_FUNCTION_67_0();
  v13(v12);
  v14 = *(v5 + 264);
  __swift_project_boxed_opaque_existential_1((v5 + 240), v14);
  v25(v2, *MEMORY[0x277D60618], v3);
  v15 = OUTLINED_FUNCTION_53_3();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  sub_2313677C0();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_2313677D0();
  v17 = swift_task_alloc();
  *(v1 + 408) = v17;
  *(v17 + 16) = v5;
  *(v17 + 24) = v6;
  *(v17 + 32) = v26;
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 416) = v18;
  *v18 = v19;
  v18[1] = sub_2311FE65C;
  v20 = *(v1 + 320);
  v21 = *(v1 + 272);
  v22 = *(v1 + 224);
  v23 = *(v1 + 168);

  return MEMORY[0x2821C6088](v1 + 64, v21, v22, v23, &unk_23136D390, v17, v20, v14);
}

void sub_2311FE65C()
{
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_8_4();
  }

  else
  {
    v19 = v3[45];
    v9 = v3[41];
    v10 = v3[21];
    v11 = v3[17];

    v9(v10, v11);
    v12 = OUTLINED_FUNCTION_48_1();
    v13(v12);
    v14 = OUTLINED_FUNCTION_26_1();
    v19(v14);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8_4();

    MEMORY[0x2822009F8](v15, v16, v17);
  }
}

uint64_t sub_2311FE7D0(uint64_t a1)
{
  v2 = *(v1 + 392);
  v24 = *(v1 + 288);
  v22 = *(v1 + 264);
  v23 = *(v1 + 240);
  v3 = *(v1 + 128);
  v5 = *(v1 + 104);
  v4 = *(v1 + 112);
  v6 = *(v1 + 64);
  v25 = *(v1 + 88);
  v7 = *(v1 + 88);
  *(v1 + 424) = v6;
  sub_2313690F0();
  sub_231369850();
  v2(v3, v4);
  __swift_project_boxed_opaque_existential_1((v5 + 240), *(v5 + 264));
  v24(v22, *MEMORY[0x277D60630], v23);
  v8 = OUTLINED_FUNCTION_53_3();
  __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_2313677C0();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_2313677D0();
  v10 = swift_task_alloc();
  *(v1 + 432) = v10;
  v10[1].i64[0] = v5;
  v10[1].i64[1] = v6;
  v10[2] = vextq_s8(v25, v25, 8uLL);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 440) = v11;
  *v11 = v12;
  v11[1] = sub_2311FE9E8;
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2821C6088](v13, v14, v15, v16, v17, v18, v19, v20);
}

void sub_2311FE9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t))
{
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_12();
  v16 = v15;
  OUTLINED_FUNCTION_9();
  *v17 = v16;
  v18 = *v13;
  OUTLINED_FUNCTION_2();
  *v19 = v18;

  if (v12)
  {
    OUTLINED_FUNCTION_8_4();
  }

  else
  {
    OUTLINED_FUNCTION_52_2();
    v22 = *(v16 + 160);
    v23 = *(v16 + 136);

    v14(v22, v23);
    v24 = OUTLINED_FUNCTION_48_1();
    v25(v24);
    v26 = OUTLINED_FUNCTION_26_1();
    a12(v26);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8_4();

    MEMORY[0x2822009F8](v27, v28, v29);
  }
}

uint64_t sub_2311FEB48()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[11];
  v2 = v0[9];
  v0[56] = v2;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_26_1();
  sub_2313677C0();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[57] = v3;
  *v3 = v4;
  v3[1] = sub_2311FEC14;
  v5 = v0[26];
  v6 = v0[12];

  return sub_231201F60((v0 + 2), v2, v5, v6);
}

uint64_t sub_2311FEC14()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 344);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_27();
  v2(v5);
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2311FED58()
{
  OUTLINED_FUNCTION_31_2();
  v22 = *(v0 + 448);
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 104);
  v21 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v4 + 240), *(v4 + 264));
  v1(v2, *MEMORY[0x277D60628], v3);
  v5 = OUTLINED_FUNCTION_66_1();
  __swift_project_boxed_opaque_existential_1(v5, v6);
  sub_2313677C0();
  v7 = OUTLINED_FUNCTION_66_1();
  __swift_project_boxed_opaque_existential_1(v7, v8);
  OUTLINED_FUNCTION_54_0();
  sub_2313677D0();
  v9 = swift_task_alloc();
  *(v0 + 464) = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v22;
  *(v9 + 32) = v21;
  *(v9 + 48) = v0 + 16;
  v10 = swift_task_alloc();
  *(v0 + 472) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436C8, &qword_23136D3C0);
  *v10 = v0;
  v10[1] = sub_2311FEF08;
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x2821C6088](v11, v12, v13, v14, v15, v16, v17, v18);
}

void sub_2311FEF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t))
{
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_12();
  v16 = v15;
  OUTLINED_FUNCTION_9();
  *v17 = v16;
  v18 = *v13;
  OUTLINED_FUNCTION_2();
  *v19 = v18;

  if (v12)
  {
    OUTLINED_FUNCTION_8_4();
  }

  else
  {
    OUTLINED_FUNCTION_52_2();
    v22 = *(v16 + 152);
    v23 = *(v16 + 136);

    v14(v22, v23);
    v24 = OUTLINED_FUNCTION_48_1();
    v25(v24);
    v26 = OUTLINED_FUNCTION_26_1();
    a12(v26);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8_4();

    MEMORY[0x2822009F8](v27, v28, v29);
  }
}

uint64_t sub_2311FF06C()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[49];
  v2 = v0[10];
  v0[60] = v2;
  sub_2313690F0();
  v3 = type metadata accessor for RankedCandidateSuggestion(0);
  v0[61] = v3;
  OUTLINED_FUNCTION_74_1(19, 0x800000023137CA60, &unk_2845F12B0, v4, v5, sub_231202868, v6, v3);
  v7 = OUTLINED_FUNCTION_28();
  v1(v7);
  v8 = swift_task_alloc();
  v0[62] = v8;
  *v8 = v0;
  v8[1] = sub_2311FF17C;
  v9 = v0[12];
  v10 = v0[11];

  return sub_231202914(v2, v10, v9, (v0 + 2));
}

uint64_t sub_2311FF17C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 504) = v5;

  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2311FF27C()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[49];
  sub_2313690F0();
  sub_231369850();
  v2 = OUTLINED_FUNCTION_26_1();
  v1(v2);
  v3 = swift_task_alloc();
  v0[64] = v3;
  *v3 = v0;
  v3[1] = sub_2311FF38C;
  v4 = OUTLINED_FUNCTION_38_4(v0[63]);

  return sub_23120304C(v4, v5);
}

uint64_t sub_2311FF38C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 520) = v5;

  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2311FF48C(uint64_t a1)
{
  v2 = v1[49];
  v3 = v1[16];
  v4 = v1[14];
  sub_2313690F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70);
  sub_231369850();
  v2(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);

  OUTLINED_FUNCTION_14();
  v6 = v1[65];

  return v5(v6);
}

uint64_t sub_2311FF62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2311FF650, 0, 0);
}

uint64_t sub_2311FF650()
{
  OUTLINED_FUNCTION_8();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_2311FF6E8;
  OUTLINED_FUNCTION_38_4(*(v0 + 32));

  return GenerationService.generateCandidates(for:with:)();
}

uint64_t sub_2311FF6E8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 56) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2311FF7D8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23136B670;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_231368320();
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  return v2;
}

uint64_t sub_2311FF868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2311FF890, 0, 0);
}

uint64_t sub_2311FF890()
{
  OUTLINED_FUNCTION_8();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_2311FF92C;
  OUTLINED_FUNCTION_38_4(*(v0 + 32));

  return ResolutionService.resolveParameters(_:interaction:environment:)();
}

uint64_t sub_2311FF92C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 64) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2311FFA1C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23136C1C0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_231368320();
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_2313682F0();
  *(v2 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43580, &qword_23136CAC0);
  *(v2 + 64) = v5;
  return v2;
}

uint64_t sub_2311FFAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v8 = sub_231367C70();
  v5[5] = v8;
  v5[6] = *(v8 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[9] = v9;
  *v9 = v5;
  v9[1] = sub_2311FFC10;

  return sub_23120014C(a3, a4);
}

uint64_t sub_2311FFC10()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 80) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2311FFCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_60_0();
  v12 = *(v10 + 56);
  v11 = *(v10 + 64);
  v13 = *(v10 + 40);
  v14 = *(v10 + 48);
  __swift_project_boxed_opaque_existential_1(*(v10 + 32), *(*(v10 + 32) + 24));
  sub_2313677D0();
  (*(v14 + 104))(v12, *MEMORY[0x277D60AC8], v13);
  sub_231204CF4();
  OUTLINED_FUNCTION_28_0();
  v15 = sub_231369F60();
  v16 = *(v14 + 8);
  v17 = OUTLINED_FUNCTION_26_1();
  v16(v17);
  (v16)(v11, v13);
  if (v15)
  {
    *(v10 + 96) = *(v10 + 80);
    v18 = swift_task_alloc();
    *(v10 + 104) = v18;
    *v18 = v10;
    OUTLINED_FUNCTION_20_2(v18);
    OUTLINED_FUNCTION_55();

    return sub_231201B04(v19);
  }

  else
  {
    v22 = swift_task_alloc();
    *(v10 + 88) = v22;
    *v22 = v10;
    v22[1] = sub_2311FFE8C;
    OUTLINED_FUNCTION_38_4(*(v10 + 80));
    OUTLINED_FUNCTION_55();

    return sub_231201380(v23);
  }
}

uint64_t sub_2311FFE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_16();
  v12 = v11;
  v13 = *v10;
  OUTLINED_FUNCTION_2();
  *v14 = v13;
  v15 = *v10;
  *v14 = *v10;

  *(v13 + 96) = v12;
  v16 = swift_task_alloc();
  *(v13 + 104) = v16;
  *v16 = v15;
  OUTLINED_FUNCTION_20_2(v16);

  return sub_231201B04(v12);
}

uint64_t sub_2311FFFD8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 112) = v5;

  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312000D8()
{
  OUTLINED_FUNCTION_8();
  **(v0 + 16) = *(v0 + 112);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23120014C(uint64_t a1, uint64_t a2)
{
  v3[49] = a2;
  v3[50] = v2;
  v3[48] = a1;
  v4 = sub_231369050();
  v3[51] = v4;
  v3[52] = *(v4 - 8);
  v3[53] = swift_task_alloc();
  v5 = sub_2313698C0();
  v3[54] = v5;
  v3[55] = *(v5 - 8);
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v6 = sub_231369840();
  v3[58] = v6;
  v3[59] = *(v6 - 8);
  v3[60] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312002D4, 0, 0);
}

uint64_t sub_2312002D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t), uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_29_1();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_31_2();
  a22 = v24;
  v28 = sub_231369190();
  sub_231369140();

  sub_231367600();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_5_5();
  sub_2313691A0();

  sub_2313690F0();
  v29 = sub_2313698A0();
  v30 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v30))
  {
    v31 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v31);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v32, v33, "Finalizing aka filtering candidates...");
    OUTLINED_FUNCTION_29();
  }

  v34 = *(v24 + 440);
  v35 = *(v24 + 384);

  *(v24 + 488) = *(v34 + 8);
  v36 = OUTLINED_FUNCTION_28_0();
  v37(v36);
  v38 = *(v35 + 16);
  *(v24 + 496) = v38;
  if (v38)
  {
    v39 = 0;
    v40 = *(*(v24 + 400) + 32);
    *(v24 + 504) = v40;
    *(v24 + 512) = *(v40 + 16);
    v41 = MEMORY[0x277D84F90];
    v42 = MEMORY[0x277D84F90];
    while (1)
    {
      *(v24 + 544) = v42;
      *(v24 + 536) = v42;
      *(v24 + 528) = v41;
      *(v24 + 520) = v39;
      v43 = OUTLINED_FUNCTION_44_3(v39);
      sub_2311CF324(v43, v24 + 16);
      v44 = OUTLINED_FUNCTION_76_0();
      *(v24 + 552) = 0;
      if (*(v24 + 512))
      {
        v52 = *(v24 + 504);
        if (!*(v52 + 16))
        {
          __break(1u);
          return MEMORY[0x2821C6CE0](v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16);
        }

        sub_2311CF324(v52 + 32, v24 + 96);
        v53 = OUTLINED_FUNCTION_47_2();
        sub_231204D4C(v53, v54, v55, &qword_23136D440);
        if (*(v24 + 200))
        {
          sub_2311D38A8((v24 + 176), v24 + 136);
          OUTLINED_FUNCTION_3_2((v24 + 96));
          swift_task_alloc();
          OUTLINED_FUNCTION_14_0();
          *(v24 + 560) = v104;
          *v104 = v105;
          OUTLINED_FUNCTION_2_6(v104);
          OUTLINED_FUNCTION_8_4();

          return MEMORY[0x2821C6CE0](v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16);
        }

        sub_2311D1F18(v24 + 176, &qword_27DD42F50, &qword_23136D440);
        __swift_destroy_boxed_opaque_existential_1Tm((v24 + 96));
      }

      v56 = OUTLINED_FUNCTION_46_3();
      sub_231204D4C(v56, v57, v58, &qword_23136D440);
      if (!*(v24 + 280))
      {
        sub_2311D1F18(v24 + 256, &qword_27DD42F50, &qword_23136D440);
        OUTLINED_FUNCTION_9_4();
        swift_task_alloc();
        OUTLINED_FUNCTION_14_0();
        *(v24 + 568) = v82;
        *v82 = v83;
        OUTLINED_FUNCTION_3_6(v82);
        OUTLINED_FUNCTION_8_4();

        return MEMORY[0x2821C6E60](v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
      }

      v59 = *(v24 + 544);
      OUTLINED_FUNCTION_43_3();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 376) = v59;
      v42 = *(v24 + 544);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v66 = OUTLINED_FUNCTION_23();
        sub_23126DF64(v66);
        OUTLINED_FUNCTION_69_0(v67);
      }

      v61 = *(v42 + 24);
      if (*(v42 + 16) >= v61 >> 1)
      {
        OUTLINED_FUNCTION_62_1(v61);
        OUTLINED_FUNCTION_69_0(v68);
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v24 + 216));
      v62 = OUTLINED_FUNCTION_50_4();
      sub_2311D1F18(v62, v63, &qword_23136D440);
      OUTLINED_FUNCTION_58_1();
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_22_3();
      v64();
      OUTLINED_FUNCTION_56_2();
      __swift_destroy_boxed_opaque_existential_1Tm((v24 + 296));

      v41 = *(v24 + 528);
      v65 = *(v24 + 496);
      v25 = (*(v24 + 520) + 1);
      __swift_destroy_boxed_opaque_existential_1Tm((v24 + 16));
      if (v25 == v65)
      {
        goto LABEL_17;
      }

      v39 = *(v24 + 520) + 1;
    }
  }

  v41 = MEMORY[0x277D84F90];
LABEL_17:
  if (*(v41 + 16))
  {
    sub_2313690F0();
    sub_231369EE0();
    v69 = sub_2313698A0();
    v25 = sub_23136A3A0();

    v70 = os_log_type_enabled(v69, v25);
    v71 = *(v24 + 488);
    v72 = *(v24 + 448);
    v73 = *(v24 + 432);
    if (v70)
    {
      OUTLINED_FUNCTION_60();
      a12 = v72;
      a11 = v73;
      v74 = OUTLINED_FUNCTION_57_0();
      a13 = v74;
      *v72 = 136315138;
      v75 = sub_231367920();
      a10 = v71;
      v77 = v76;

      v78 = sub_2311CFD58(v75, v77, &a13);

      *(v72 + 4) = v78;
      OUTLINED_FUNCTION_37_2(&dword_2311CB000, v79, v80, "Suggestions removed during finalization: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();

      v81 = a10(v72, a11);
    }

    else
    {

      v92 = OUTLINED_FUNCTION_53_3();
      v81 = (v71)(v92);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_59_1(v81);
  v93 = sub_231369190();
  OUTLINED_FUNCTION_42_2(v93);

  v94 = OUTLINED_FUNCTION_28();
  v95(v94);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_8_4();

  return v98(v96, v97, v98, v99, v100, v101, v102, v103, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2312007E4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312008C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t), uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_29_1();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_31_2();
  a22 = v24;
  __swift_destroy_boxed_opaque_existential_1Tm((v24 + 136));
  v27 = OUTLINED_FUNCTION_50_4();
  sub_2311D1F18(v27, v28, &qword_23136D440);
  v29 = *(v24 + 352);
  *(v24 + 56) = *(v24 + 336);
  *(v24 + 72) = v29;
  *(v24 + 88) = *(v24 + 368);
  v30 = __swift_destroy_boxed_opaque_existential_1Tm((v24 + 96));
  for (i = *(v24 + 552) + 1; ; i = 0)
  {
    *(v24 + 552) = i;
    if (i == *(v24 + 512))
    {
      goto LABEL_6;
    }

    if (i >= *(*(v24 + 504) + 16))
    {
      __break(1u);
      return MEMORY[0x2821C6CE0](v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    v39 = OUTLINED_FUNCTION_44_3(i);
    sub_2311CF324(v39, v24 + 96);
    v40 = OUTLINED_FUNCTION_47_2();
    sub_231204D4C(v40, v41, v42, &qword_23136D440);
    if (*(v24 + 200))
    {
      sub_2311D38A8((v24 + 176), v24 + 136);
      OUTLINED_FUNCTION_3_2((v24 + 96));
      swift_task_alloc();
      OUTLINED_FUNCTION_14_0();
      *(v24 + 560) = v83;
      *v83 = v84;
      OUTLINED_FUNCTION_2_6(v83);
      OUTLINED_FUNCTION_8_4();

      return MEMORY[0x2821C6CE0](v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    sub_2311D1F18(v24 + 176, &qword_27DD42F50, &qword_23136D440);
    __swift_destroy_boxed_opaque_existential_1Tm((v24 + 96));
LABEL_6:
    v43 = OUTLINED_FUNCTION_46_3();
    sub_231204D4C(v43, v44, v45, &qword_23136D440);
    if (!*(v24 + 280))
    {
      break;
    }

    v46 = *(v24 + 544);
    OUTLINED_FUNCTION_43_3();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v24 + 376) = v46;
    v48 = *(v24 + 544);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = OUTLINED_FUNCTION_23();
      sub_23126DF64(v57);
      OUTLINED_FUNCTION_69_0(v58);
    }

    v49 = *(v48 + 24);
    if (*(v48 + 16) >= v49 >> 1)
    {
      OUTLINED_FUNCTION_62_1(v49);
      OUTLINED_FUNCTION_69_0(v59);
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v24 + 216));
    v50 = OUTLINED_FUNCTION_50_4();
    sub_2311D1F18(v50, v51, &qword_23136D440);
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_22_3();
    v52();
    OUTLINED_FUNCTION_56_2();
    __swift_destroy_boxed_opaque_existential_1Tm((v24 + 296));

    v53 = *(v24 + 528);
    v54 = *(v24 + 496);
    v55 = (*(v24 + 520) + 1);
    __swift_destroy_boxed_opaque_existential_1Tm((v24 + 16));
    if (v55 == v54)
    {
      if (*(v53 + 16))
      {
        sub_2313690F0();
        sub_231369EE0();
        v70 = sub_2313698A0();
        v55 = sub_23136A3A0();

        v71 = os_log_type_enabled(v70, v55);
        v72 = *(v24 + 488);
        v73 = *(v24 + 448);
        v74 = *(v24 + 432);
        if (v71)
        {
          OUTLINED_FUNCTION_60();
          a12 = v73;
          a11 = v74;
          v75 = OUTLINED_FUNCTION_57_0();
          a13 = v75;
          *v73 = 136315138;
          v76 = sub_231367920();
          a10 = v72;
          v78 = v77;

          v79 = sub_2311CFD58(v76, v78, &a13);

          *(v73 + 4) = v79;
          OUTLINED_FUNCTION_37_2(&dword_2311CB000, v80, v81, "Suggestions removed during finalization: %s");
          __swift_destroy_boxed_opaque_existential_1Tm(v75);
          OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_24();

          v82 = a10(v73, a11);
        }

        else
        {

          v85 = OUTLINED_FUNCTION_53_3();
          v82 = (v72)(v85);
        }
      }

      else
      {
      }

      OUTLINED_FUNCTION_59_1(v82);
      v86 = sub_231369190();
      OUTLINED_FUNCTION_42_2(v86);

      v87 = OUTLINED_FUNCTION_28();
      v88(v87);

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_8_4();

      return v91(v89, v90, v91, v92, v93, v94, v95, v96, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    v56 = *(v24 + 520);
    *(v24 + 544) = v48;
    *(v24 + 536) = v48;
    *(v24 + 528) = v53;
    *(v24 + 520) = v56 + 1;
    OUTLINED_FUNCTION_35_3(v56);
    v30 = OUTLINED_FUNCTION_76_0();
  }

  sub_2311D1F18(v24 + 256, &qword_27DD42F50, &qword_23136D440);
  OUTLINED_FUNCTION_9_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v24 + 568) = v60;
  *v60 = v61;
  OUTLINED_FUNCTION_3_6(v60);
  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x2821C6E60](v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_231200D3C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231200E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_29_1();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_31_2();
  a22 = v24;
  v28 = sub_231369040();
  v30 = v29;
  v31 = OUTLINED_FUNCTION_28();
  v32(v31);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v24 + 528);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_31:
    OUTLINED_FUNCTION_23();
    sub_23126DC90();
    v34 = v103;
  }

  v35 = *(v34 + 16);
  if (v35 >= *(v34 + 24) >> 1)
  {
    sub_23126DC90();
    v34 = v104;
  }

  v36 = OUTLINED_FUNCTION_50_4();
  sub_2311D1F18(v36, v37, &qword_23136D440);
  *(v34 + 16) = v35 + 1;
  v38 = v34 + 16 * v35;
  *(v38 + 32) = v28;
  *(v38 + 40) = v30;
  v106 = (v24 + 536);
  for (i = *(v24 + 536); ; i = vdupq_n_s64(v50))
  {
    v109 = i;
    v28 = *(v24 + 496);
    v30 = *(v24 + 520) + 1;
    __swift_destroy_boxed_opaque_existential_1Tm((v24 + 16));
    if (v30 == v28)
    {
      break;
    }

    v40 = *(v24 + 520);
    *v106 = v109;
    *(v24 + 528) = v34;
    *(v24 + 520) = v40 + 1;
    OUTLINED_FUNCTION_35_3(v40);
    OUTLINED_FUNCTION_76_0();
    *(v24 + 552) = 0;
    if (*(v24 + 512))
    {
      v41 = *(v24 + 504);
      if (!*(v41 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      sub_2311CF324(v41 + 32, v24 + 96);
      v42 = OUTLINED_FUNCTION_47_2();
      sub_231204D4C(v42, v43, v44, &qword_23136D440);
      if (*(v24 + 200))
      {
        sub_2311D38A8((v24 + 176), v24 + 136);
        OUTLINED_FUNCTION_3_2((v24 + 96));
        swift_task_alloc();
        OUTLINED_FUNCTION_14_0();
        *(v24 + 560) = v81;
        *v81 = v82;
        OUTLINED_FUNCTION_2_6(v81);
        OUTLINED_FUNCTION_8_4();

        return MEMORY[0x2821C6CE0](v83, v84, v85, v86, v87, v88, v89, v90, a9, v106, v109.i64[0], v109.i64[1], a13, a14, a15, a16);
      }

      sub_2311D1F18(v24 + 176, &qword_27DD42F50, &qword_23136D440);
      __swift_destroy_boxed_opaque_existential_1Tm((v24 + 96));
    }

    v45 = OUTLINED_FUNCTION_46_3();
    sub_231204D4C(v45, v46, v47, &qword_23136D440);
    if (!*(v24 + 280))
    {
      sub_2311D1F18(v24 + 256, &qword_27DD42F50, &qword_23136D440);
      OUTLINED_FUNCTION_9_4();
      swift_task_alloc();
      OUTLINED_FUNCTION_14_0();
      *(v24 + 568) = v71;
      *v71 = v72;
      OUTLINED_FUNCTION_3_6(v71);
      OUTLINED_FUNCTION_8_4();

      return MEMORY[0x2821C6E60](v73, v74, v75, v76, v77, v78, v79, v80, a9, v106, v109.i64[0], v109.i64[1], a13, a14, a15, a16, a17, a18);
    }

    v48 = *(v24 + 544);
    OUTLINED_FUNCTION_43_3();
    v49 = swift_isUniquelyReferenced_nonNull_native();
    *(v24 + 376) = v48;
    v50 = *(v24 + 544);
    if ((v49 & 1) == 0)
    {
      v56 = OUTLINED_FUNCTION_23();
      sub_23126DF64(v56);
      v50 = v57;
      *(v24 + 376) = v57;
    }

    v52 = *(v50 + 16);
    v51 = *(v50 + 24);
    if (v52 >= v51 >> 1)
    {
      sub_23126DF64(v51 > 1);
      v50 = v58;
      *(v24 + 376) = v58;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v24 + 216));
    v53 = OUTLINED_FUNCTION_50_4();
    sub_2311D1F18(v53, v54, &qword_23136D440);
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_22_3();
    v55();
    sub_2312E6494(v52, v25, (v24 + 376), v30, v35 + 1);
    __swift_destroy_boxed_opaque_existential_1Tm((v24 + 296));

    v34 = *(v24 + 528);
  }

  if (*(v34 + 16))
  {
    sub_2313690F0();
    sub_231369EE0();
    v59 = sub_2313698A0();
    v60 = sub_23136A3A0();

    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v24 + 488);
    v63 = *(v24 + 448);
    v64 = *(v24 + 432);
    if (v61)
    {
      v107 = *(v24 + 488);
      v65 = OUTLINED_FUNCTION_60();
      a9 = v63;
      v66 = swift_slowAlloc();
      a13 = v66;
      *v65 = 136315138;
      v67 = sub_231367920();
      v69 = v68;

      v70 = sub_2311CFD58(v67, v69, &a13);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_2311CB000, v59, v60, "Suggestions removed during finalization: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_29();

      v107(a9, v64);
    }

    else
    {

      v91 = OUTLINED_FUNCTION_66_1();
      v62(v91);
    }
  }

  else
  {
  }

  v108 = *(v24 + 424);
  sub_231367600();
  v92 = sub_231369190();
  sub_231369180();

  v93 = OUTLINED_FUNCTION_27();
  v94(v93);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_8_4();

  return v97(v95, v96, v97, v98, v99, v100, v101, v102, a9, v108, v109.i64[0], v109.i64[1], a13, a14, a15, a16);
}

uint64_t sub_231201380(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_231369050();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = sub_2313698C0();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312014A8, 0, 0);
}

uint64_t sub_2312014A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16();
  sub_2313690F0();
  v19 = sub_2313698A0();
  v20 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v20))
  {
    v21 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v21);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v22, v23, "Deduplicating candidates by logging id...");
    OUTLINED_FUNCTION_29();
  }

  v24 = v18[23];
  v25 = v18[18];

  v18[26] = *(v24 + 8);
  v26 = OUTLINED_FUNCTION_28_0();
  v27(v26);
  v28 = *(v25 + 16);
  v18[27] = v28;
  if (v28)
  {
    v29 = v18[18];
    v30 = MEMORY[0x277D84F98];
    v18[29] = 0;
    v18[30] = v30;
    v18[28] = v30;
    sub_2311CF324(v29 + 32, (v18 + 2));
    OUTLINED_FUNCTION_9_4();
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v18[31] = v31;
    *v31 = v32;
    v33 = OUTLINED_FUNCTION_15_4(v31);

    return MEMORY[0x2821C6E60](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v41 = sub_23122ACF4(MEMORY[0x277D84F98]);

    OUTLINED_FUNCTION_14();

    return v42(v41);
  }
}

uint64_t sub_23120162C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231201710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(v18 + 240);
  v20 = sub_231369040();
  v22 = v21;
  v23 = OUTLINED_FUNCTION_67_0();
  v24(v23);
  if (*(v19 + 16))
  {
    v25 = OUTLINED_FUNCTION_65();
    v27 = sub_231215F6C(v25, v26);
    if (v28)
    {
      sub_2311CF324(*(*(v18 + 240) + 56) + 40 * v27, v18 + 56);
      sub_2311D1F18(v18 + 56, &qword_27DD42F50, &qword_23136D440);
      sub_2313690F0();
      sub_231369EE0();
      v29 = sub_2313698A0();
      v30 = sub_23136A3A0();

      v31 = os_log_type_enabled(v29, v30);
      v32 = *(v18 + 208);
      v33 = *(v18 + 184);
      if (v31)
      {
        OUTLINED_FUNCTION_60();
        v74 = OUTLINED_FUNCTION_57_0();
        *v33 = 136315138;
        v34 = OUTLINED_FUNCTION_65();
        v37 = sub_2311CFD58(v34, v35, v36);

        *(v33 + 4) = v37;
        OUTLINED_FUNCTION_37_2(&dword_2311CB000, v38, v39, "Removed duplicate suggestion: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_24();
      }

      else
      {
      }

      v40 = OUTLINED_FUNCTION_54_0();
      v32(v40);
      v66 = *(v18 + 240);
      v60 = *(v18 + 224);
      goto LABEL_19;
    }
  }

  v41 = *(v18 + 224);
  *(v18 + 56) = 0u;
  *(v18 + 72) = 0u;
  *(v18 + 88) = 0;
  sub_2311D1F18(v18 + 56, &qword_27DD42F50, &qword_23136D440);
  sub_2311CF324(v18 + 16, v18 + 96);
  swift_isUniquelyReferenced_nonNull_native();
  *(v18 + 136) = v41;
  v42 = OUTLINED_FUNCTION_65();
  v44 = sub_231215F6C(v42, v43);
  if (__OFADD__(*(v41 + 16), (v45 & 1) == 0))
  {
    __break(1u);
    goto LABEL_27;
  }

  v52 = v44;
  v53 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436E8, &qword_23136D448);
  if ((sub_23136A700() & 1) == 0)
  {
LABEL_12:
    if (v53)
    {

      v60 = *(v18 + 136);
      v61 = (v60[7] + 40 * v52);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      sub_2311D38A8((v18 + 96), v61);
LABEL_16:
      v66 = v60;
LABEL_19:
      v67 = *(v18 + 216);
      v68 = *(v18 + 232) + 1;
      __swift_destroy_boxed_opaque_existential_1Tm((v18 + 16));
      if (v68 == v67)
      {
        sub_23122ACF4(v66);

        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_7();

        __asm { BRAA            X2, X16 }
      }

      v71 = *(v18 + 232);
      *(v18 + 232) = v71 + 1;
      *(v18 + 240) = v66;
      *(v18 + 224) = v60;
      OUTLINED_FUNCTION_35_3(v71);
      OUTLINED_FUNCTION_9_4();
      swift_task_alloc();
      OUTLINED_FUNCTION_14_0();
      *(v18 + 248) = v72;
      *v72 = v73;
      OUTLINED_FUNCTION_15_4(v72);
      OUTLINED_FUNCTION_7();

      return MEMORY[0x2821C6E60](v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    }

    v60 = *(v18 + 136);
    v60[(v52 >> 6) + 8] |= 1 << v52;
    v62 = (v60[6] + 16 * v52);
    *v62 = v20;
    v62[1] = v22;
    v44 = sub_2311D38A8((v18 + 96), v60[7] + 40 * v52);
    v63 = v60[2];
    v64 = __OFADD__(v63, 1);
    v65 = v63 + 1;
    if (!v64)
    {
      v60[2] = v65;
      goto LABEL_16;
    }

LABEL_27:
    __break(1u);
    return MEMORY[0x2821C6E60](v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v54 = OUTLINED_FUNCTION_65();
  v56 = sub_231215F6C(v54, v55);
  if ((v53 & 1) == (v57 & 1))
  {
    v52 = v56;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7();

  return sub_23136A970();
}

uint64_t sub_231201B04(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_231201B24, 0, 0);
}

uint64_t sub_231201B24()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[13];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  v0[15] = v2;
  v0[16] = v3;
  if (v2)
  {
    v0[17] = 1;
    sub_2311CF324(v1 + 32, (v0 + 2));
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[18] = v4;
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_17_3(v4);

    return sub_231203D70(v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_14();
    v10 = MEMORY[0x277D84F90];

    return v9(v10);
  }
}

uint64_t sub_231201BF0()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (v0)
  {

    v9 = sub_231201F24;
  }

  else
  {
    *(v5 + 152) = v3 & 1;
    v9 = sub_231201D18;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_231201D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_60_0();
  if (*(v10 + 152))
  {
    v11 = *(v10 + 128);
    OUTLINED_FUNCTION_76_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v10 + 96) = v11;
    v13 = *(v10 + 128);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v38 = OUTLINED_FUNCTION_23();
      sub_23126DF64(v38);
      v13 = v39;
      *(v10 + 96) = v39;
    }

    v15 = *(v13 + 16);
    v14 = *(v13 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_23126DF64(v14 > 1);
      v13 = v40;
      *(v10 + 96) = v40;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v10 + 16));
    v16 = *(v10 + 80);
    v17 = *(v10 + 88);
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v10 + 56, v16);
    v19 = *(v16 - 8);
    v20 = OUTLINED_FUNCTION_43();
    (*(v19 + 16))(v20, v18, v16);
    sub_2312E6494(v15, v20, (v10 + 96), v16, v17);
    __swift_destroy_boxed_opaque_existential_1Tm((v10 + 56));

    v22 = *(v10 + 136);
    *(v10 + 128) = v13;
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm((v10 + 16));
    v22 = *(v10 + 136);
  }

  v23 = *(v10 + 120);
  if (v22 == v23)
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_55();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }

  if (v22 >= v23)
  {
    __break(1u);
    goto LABEL_18;
  }

  *(v10 + 136) = v22 + 1;
  if (__OFADD__(v22, 1))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v32 = OUTLINED_FUNCTION_44_3(v22);
  sub_2311CF324(v32, v10 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v10 + 144) = v33;
  *v33 = v34;
  OUTLINED_FUNCTION_17_3(v33);
  OUTLINED_FUNCTION_55();

  return sub_231203D70(v35, v36);
}

uint64_t sub_231201F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_231369840();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231202028, 0, 0);
}

uint64_t sub_231202028()
{
  OUTLINED_FUNCTION_60_0();
  v1 = v0[6];
  v2 = sub_231369190();
  sub_231369140();

  sub_2313675C0();
  v3 = sub_231369190();
  v4 = OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_72_0(v4, v5);

  v6 = v1[28];
  v7 = v1[29];
  OUTLINED_FUNCTION_3_2(v1 + 25);
  OUTLINED_FUNCTION_51_2();
  v16 = (v8 + *v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[10] = v9;
  *v9 = v10;
  v9[1] = sub_231202188;
  v11 = v0[4];
  v12 = v0[5];
  v13 = v0[2];
  v14 = v0[3];

  return v16(v13, v14, v11, v12, v6, v7);
}

uint64_t sub_231202188()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23120226C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_60_0();
  sub_2313675C0();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_5_5();
  sub_231369180();

  v11 = OUTLINED_FUNCTION_27();
  v12(v11);

  OUTLINED_FUNCTION_55();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_231202300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = sub_2312023C8;

  return sub_2312024B0(a3, a4, a5, a6);
}

uint64_t sub_2312023C8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312024B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_231369840();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231202578, 0, 0);
}

uint64_t sub_231202578()
{
  OUTLINED_FUNCTION_16();
  v1 = sub_231369190();
  sub_231369140();

  sub_2313675E0();
  v2 = sub_231369190();
  v3 = OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_72_0(v3, v4);

  if (qword_280F7C8A0 != -1)
  {
    swift_once();
  }

  v5 = sub_2313698C0();
  __swift_project_value_buffer(v5, qword_280F8E510);
  v6 = sub_2313698A0();
  v7 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v7))
  {
    v8 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v8);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v9, v10, "Ranking...");
    OUTLINED_FUNCTION_29();
  }

  v11 = v0[6];

  __swift_project_boxed_opaque_existential_1((v11 + 80), *(v11 + 104));
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_2312026EC;
  OUTLINED_FUNCTION_38_4(v0[2]);

  return sub_2312B7620();
}

uint64_t sub_2312026EC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312027D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_60_0();
  sub_2313675E0();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_5_5();
  sub_231369180();

  v11 = OUTLINED_FUNCTION_27();
  v12(v11);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_55();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_231202868()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23136D280;
  type metadata accessor for RankedCandidateSuggestion(0);
  v1 = sub_231369040();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_2313672C0();
  *(v0 + 88) = MEMORY[0x277D83B88];
  *(v0 + 64) = v3;
  sub_2313672E0();
  *(v0 + 120) = MEMORY[0x277D839F8];
  *(v0 + 96) = v4;
  return v0;
}

uint64_t sub_231202914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_2313698C0();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_231369840();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231202A38, 0, 0);
}

uint64_t sub_231202A38()
{
  OUTLINED_FUNCTION_60_0();
  v2 = sub_231369190();
  sub_231369140();

  sub_231367610();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_5_5();
  sub_2313691A0();

  sub_2313690F0();
  v3 = sub_2313698A0();
  v4 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v4))
  {
    v5 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v5);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v6, v7, "Applying policies...");
    OUTLINED_FUNCTION_29();
  }

  v8 = v0[6];

  v9 = OUTLINED_FUNCTION_28_0();
  v10(v9);
  OUTLINED_FUNCTION_3_2((v8 + 120));
  OUTLINED_FUNCTION_51_2();
  v15 = (v11 + *v11);
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_231202BEC;
  v13 = OUTLINED_FUNCTION_38_4(v0[2]);

  return v15(v13);
}

uint64_t sub_231202BEC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 112) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231202CD4()
{
  OUTLINED_FUNCTION_60_0();
  sub_231367610();
  v1 = sub_231369190();
  OUTLINED_FUNCTION_67_0();
  sub_231369180();

  v2 = OUTLINED_FUNCTION_27();
  v3(v2);

  OUTLINED_FUNCTION_14();
  v5 = *(v0 + 112);

  return v4(v5);
}

uint64_t sub_231202DA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for RankedCandidateSuggestion(0) + 24);
  sub_231204D4C(a1 + v8, v7, &qword_27DD42F20, &qword_23136D410);
  v9 = sub_231366E80();
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    sub_2311D1F18(v7, &qword_27DD42F20, &qword_23136D410);
  }

  else
  {
    sub_231366E40();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  v10 = MEMORY[0x277D837D0];
  v11 = sub_231367920();
  v13 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23136D290;
  v15 = sub_231369040();
  *(v14 + 56) = v10;
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  *(v14 + 88) = sub_231367290();
  __swift_allocate_boxed_opaque_existential_1((v14 + 64));
  sub_2313672D0();
  v17 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v17 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    v13 = 0xE100000000000000;
    v11 = 45;
  }

  *(v14 + 120) = v10;
  *(v14 + 96) = v11;
  *(v14 + 104) = v13;
  sub_231204D4C(a1 + v8, v4, &qword_27DD42F20, &qword_23136D410);
  if (__swift_getEnumTagSinglePayload(v4, 1, v9) == 1)
  {
    sub_2311D1F18(v4, &qword_27DD42F20, &qword_23136D410);
    *(v14 + 128) = 0u;
    *(v14 + 144) = 0u;
  }

  else
  {
    *(v14 + 152) = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v14 + 128));
    (*(*(v9 - 8) + 32))(boxed_opaque_existential_1, v4, v9);
  }

  return v14;
}

uint64_t sub_23120304C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436D8, &qword_23136D3E8);
  v3[10] = swift_task_alloc();
  v4 = sub_231369840();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = sub_2313698C0();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312031A4, 0, 0);
}

uint64_t sub_2312031A4()
{
  OUTLINED_FUNCTION_60_0();
  sub_2313690F0();
  v1 = sub_2313698A0();
  v2 = sub_23136A3A0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_63();
    *v3 = 0;
    _os_log_impl(&dword_2311CB000, v1, v2, "Rendering views...", v3, 2u);
    OUTLINED_FUNCTION_29();
  }

  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 112);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 64);

  (*(v5 + 8))(v4, v6);
  v10 = sub_231369190();
  sub_231369140();

  sub_2313675A0();
  v11 = sub_231369190();
  OUTLINED_FUNCTION_66_1();
  sub_2313691A0();

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436E0, &qword_23136D3F0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v12);
  sub_2311CF324(v9, v0 + 16);
  v13 = swift_allocObject();
  *(v0 + 136) = v13;
  *(v13 + 16) = v7;
  sub_2311D38A8((v0 + 16), v13 + 24);

  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  v15 = type metadata accessor for RankedCandidateSuggestion(0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70);
  *v14 = v0;
  v14[1] = sub_2312033D8;
  v19 = *(v0 + 80);
  v20 = *(v0 + 56);

  return MEMORY[0x2821C6B08](v20, v19, &unk_23136D400, v13, v15, v16, v17, v18);
}

void sub_2312033D8()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = *(v5 + 80);
    *(v5 + 152) = v3;
    sub_2311D1F18(v9, &qword_27DD436D8, &qword_23136D3E8);

    MEMORY[0x2822009F8](sub_231203524, 0, 0);
  }
}

uint64_t sub_231203524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39();
  sub_2313675A0();
  v12 = sub_231369190();
  sub_231369180();

  v13 = OUTLINED_FUNCTION_28_0();
  v14(v13);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_40();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_2312035F4(uint64_t a1)
{
  v2 = sub_231369090();
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x28223BE20](v2);
  v54 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436D0, &qword_23136D3E0);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v50 - v5;
  v53 = type metadata accessor for ViewDetails(0);
  MEMORY[0x28223BE20](v53);
  v57 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231369050();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RankedCandidateSuggestion(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70);
  MEMORY[0x28223BE20](v13 - 8);
  v58 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_23136D290;
  v60 = a1;
  sub_231204D4C(a1, v23, &qword_27DD43530, &unk_23136CA70);
  v25 = type metadata accessor for SuggestionViewDetails(0);
  if (__swift_getEnumTagSinglePayload(v23, 1, v25) == 1)
  {
    sub_2311D1F18(v23, &qword_27DD43530, &unk_23136CA70);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    *(v24 + 48) = 0;
  }

  else
  {
    sub_231204A80(&v23[*(v25 + 20)], v12, type metadata accessor for RankedCandidateSuggestion);
    sub_231204ADC(v23, type metadata accessor for SuggestionViewDetails);
    v30 = v51;
    v29 = v52;
    (*(v51 + 16))(v9, &v12[*(v10 + 28)], v52);
    sub_231204ADC(v12, type metadata accessor for RankedCandidateSuggestion);
    v26 = sub_231369040();
    v27 = v31;
    (*(v30 + 8))(v9, v29);
    v28 = MEMORY[0x277D837D0];
  }

  *(v24 + 32) = v26;
  *(v24 + 40) = v27;
  *(v24 + 56) = v28;
  v32 = v60;
  sub_231204D4C(v60, v20, &qword_27DD43530, &unk_23136CA70);
  if (__swift_getEnumTagSinglePayload(v20, 1, v25) == 1)
  {
    sub_2311D1F18(v20, &qword_27DD43530, &unk_23136CA70);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    *(v24 + 80) = 0;
  }

  else
  {
    v36 = v57;
    sub_231204A80(v20, v57, type metadata accessor for ViewDetails);
    sub_231204ADC(v20, type metadata accessor for SuggestionViewDetails);
    v33 = *(v36 + 16);
    v34 = *(v36 + 24);
    sub_231369EE0();
    sub_231204ADC(v36, type metadata accessor for ViewDetails);
    v35 = MEMORY[0x277D837D0];
  }

  *(v24 + 64) = v33;
  *(v24 + 72) = v34;
  *(v24 + 88) = v35;
  sub_231204D4C(v32, v17, &qword_27DD43530, &unk_23136CA70);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v25);
  v38 = v59;
  if (EnumTagSinglePayload == 1)
  {
    sub_2311D1F18(v17, &qword_27DD43530, &unk_23136CA70);
    v39 = sub_231368F50();
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
LABEL_10:
    sub_2311D1F18(v38, &qword_27DD436D0, &qword_23136D3E0);
    *(v24 + 96) = 0u;
    *(v24 + 112) = 0u;
    goto LABEL_12;
  }

  v40 = v57;
  sub_231204A80(v17, v57, type metadata accessor for ViewDetails);
  sub_231204ADC(v17, type metadata accessor for SuggestionViewDetails);
  v41 = v54;
  v43 = v55;
  v42 = v56;
  (*(v55 + 16))(v54, v40 + *(v53 + 28), v56);
  sub_231204ADC(v40, type metadata accessor for ViewDetails);
  sub_231369070();
  (*(v43 + 8))(v41, v42);
  v44 = sub_231368F50();
  if (__swift_getEnumTagSinglePayload(v38, 1, v44) == 1)
  {
    goto LABEL_10;
  }

  *(v24 + 120) = v44;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v24 + 96));
  (*(*(v44 - 8) + 32))(boxed_opaque_existential_1, v38, v44);
LABEL_12:
  v46 = v58;
  sub_231204D4C(v32, v58, &qword_27DD43530, &unk_23136CA70);
  if (__swift_getEnumTagSinglePayload(v46, 1, v25) == 1)
  {
    sub_2311D1F18(v46, &qword_27DD43530, &unk_23136CA70);
    v47 = 0;
    v48 = 0;
    *(v24 + 136) = 0;
    *(v24 + 144) = 0;
  }

  else
  {
    sub_2311CF324(v46 + *(v25 + 24), v61);
    sub_231204ADC(v46, type metadata accessor for SuggestionViewDetails);
    __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    v47 = sub_231367F00();
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43580, &qword_23136CAC0);
  }

  *(v24 + 128) = v47;
  *(v24 + 152) = v48;
  return v24;
}

uint64_t sub_231203D70(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_231369050();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_2313698C0();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231203E98, 0, 0);
}

uint64_t sub_231203E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  v23 = v20[7];
  v24 = *(v20[8] + 280);
  v25 = OUTLINED_FUNCTION_64();
  __swift_project_boxed_opaque_existential_1(v25, v26);
  OUTLINED_FUNCTION_67_0();
  v27 = sub_231368320();
  LOBYTE(v24) = sub_2311EFC44(v27, v28, v24);

  if (v24)
  {
    v29 = v20[7];
    sub_2313690F0();
    sub_2311CF324(v29, (v20 + 2));
    v30 = sub_2313698A0();
    v31 = sub_23136A3A0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_60();
      v33 = swift_slowAlloc();
      a9 = v33;
      *v32 = 136315138;
      __swift_project_boxed_opaque_existential_1(v20 + 2, v20[5]);
      v34 = sub_231368320();
      v36 = v35;
      __swift_destroy_boxed_opaque_existential_1Tm(v20 + 2);
      v37 = sub_2311CFD58(v34, v36, &a9);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_2311CB000, v30, v31, "Filtered out suggestion id '%s' based on deny list.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_29();

      v38 = OUTLINED_FUNCTION_26_1();
      v39(v38);
    }

    else
    {

      v50 = OUTLINED_FUNCTION_26_1();
      v51(v50);
      __swift_destroy_boxed_opaque_existential_1Tm(v20 + 2);
    }

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_40();

    return v54(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v20[7], *(v23 + 24));
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v20[16] = v40;
    *v40 = v41;
    v40[1] = sub_231204118;
    OUTLINED_FUNCTION_40();

    return MEMORY[0x2821C6E60](v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_231204118()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_2312041FC(uint64_t a1)
{
  v2 = v1[8];
  v3 = sub_231369040();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_27();
  v7(v6);
  if (sub_2311EFC44(v3, v5, *(v2 + 288)))
  {
    sub_2313690F0();
    sub_231369EE0();
    v8 = sub_2313698A0();
    v9 = sub_23136A3A0();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v1[13];
    v12 = v1[14];
    v13 = v1[12];
    if (v10)
    {
      v19 = v1[14];
      v14 = OUTLINED_FUNCTION_60();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      v16 = sub_2311CFD58(v3, v5, &v20);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_2311CB000, v8, v9, "Filtered out logging id '%s' based on deny list.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v11 + 8))(v19, v13);
    }

    else
    {

      (*(v11 + 8))(v12, v13);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2312043D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2312043FC, 0, 0);
}

uint64_t sub_2312043FC()
{
  OUTLINED_FUNCTION_60_0();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43528, &qword_23136CA68);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  v0[5] = v4;
  *(v4 + 16) = xmmword_23136B670;
  v5 = v1[23];
  v6 = v1[24];
  __swift_project_boxed_opaque_existential_1(v1 + 20, v5);
  v12 = (*(v6 + 8) + **(v6 + 8));
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[6] = v7;
  *v7 = v8;
  v7[1] = sub_2312045D4;
  v9 = v0[4];
  v10 = v0[2];

  return v12(v4 + v3, v10, v9, v5, v6);
}

uint64_t sub_2312045D4()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  v4 = *(v2 + 8);
  v5 = *(v1 + 40);

  return v4(v5);
}

void *sub_2312046D8()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 25);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 30);

  return v0;
}

uint64_t sub_231204750()
{
  sub_2312046D8();

  return swift_deallocClassInstance();
}

uint64_t sub_2312047F4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_70_0();
  v2 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_7_2(v3);

  return sub_2311FF62C(v5, v6, v7, v2);
}

uint64_t sub_23120488C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_70_0();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_7_2(v4);

  return sub_2311FF868(v6, v7, v8, v3, v2);
}

uint64_t sub_231204930()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_70_0();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_7_2(v4);

  return sub_2311FFAF4(v6, v7, v8, v3, v2);
}

uint64_t sub_2312049D4()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_70_0();
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_7_2(v5);

  return sub_231202300(v7, v8, v9, v2, v3, v4);
}

uint64_t sub_231204A80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_11();
  v4 = OUTLINED_FUNCTION_64();
  v5(v4);
  return a2;
}

uint64_t sub_231204ADC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_11();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_231204B34()
{
  OUTLINED_FUNCTION_26();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231204BD4;
  v2 = OUTLINED_FUNCTION_28_0();

  return sub_2312043D8(v2, v3, v4);
}

uint64_t sub_231204BD4()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5(v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_231204CF4()
{
  result = qword_280F7CA78;
  if (!qword_280F7CA78)
  {
    sub_231367C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CA78);
  }

  return result;
}

uint64_t sub_231204D4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_11();
  v5 = OUTLINED_FUNCTION_64();
  v6(v5);
  return a2;
}

uint64_t sub_231204DB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_231204DF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_43_3()
{
  sub_2311D38A8((v0 + 256), v0 + 216);

  return sub_2311CF324(v0 + 216, v0 + 296);
}

uint64_t OUTLINED_FUNCTION_56_2()
{

  return sub_2312E6494(v1, v4, (v0 + 376), v2, v3);
}

uint64_t OUTLINED_FUNCTION_58_1()
{
  v2 = *(v0 + 320);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 296, v2);
}

uint64_t OUTLINED_FUNCTION_59_1(uint64_t a1)
{

  return sub_231367600();
}

void OUTLINED_FUNCTION_61_1()
{

  JUMPOUT(0x23192A730);
}

uint64_t OUTLINED_FUNCTION_74_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_231369850();
}

uint64_t OUTLINED_FUNCTION_76_0()
{

  return sub_2311CF324(v0 + 16, v0 + 56);
}

uint64_t sub_23120504C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_2313698C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436F0, &unk_23136D510);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23[-v8];
  v10 = type metadata accessor for IntentDetails(0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v11);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_231210C60();
  if (v24)
  {
    v14 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v9, v14 ^ 1u, 1, v10);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      sub_2312053C8(v9, v13, v15);
      v16 = *(v10 + 24);
      sub_231369050();
      OUTLINED_FUNCTION_11();
      v18.n128_f64[0] = (*(v17 + 16))(a2, &v13[v16]);
      return sub_23120542C(v13, v18);
    }
  }

  else
  {
    sub_2311D1F18(v23, &qword_27DD443C0, &unk_23136E000);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  }

  sub_2311D1F18(v9, &qword_27DD436F0, &unk_23136D510);
  sub_231369130();
  v20 = sub_2313698A0();
  v21 = sub_23136A3B0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2311CB000, v20, v21, "Unable to find IntentDetails in resolvedParams. This should have been filtered out. Check that ResolvableParameter.required is set to true", v22, 2u);
    MEMORY[0x23192B930](v22, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  sub_231368130();
  sub_231369EC0();
  return sub_231369030();
}

uint64_t sub_2312053C8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for IntentDetails(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23120542C(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for IntentDetails(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_231205488(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 40) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2312054B0, 0, 0);
}

uint64_t sub_2312054B0()
{
  v27 = v0;
  sub_2312BBA1C();
  v25 = v1;
  v26 = MEMORY[0x277D84F90];
  result = sub_23125D7A0();
  if (result)
  {
    v3 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v4 = 0;
    v5 = *(v0 + 24);
    v23 = v5 + 32;
    v24 = v5 & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    do
    {
      if (v24)
      {
        v7 = MEMORY[0x23192AD10](v4, *(v0 + 24));
      }

      else
      {
        v7 = *(v23 + 8 * v4);
      }

      v8 = v7;
      v9 = sub_2312056AC(v7, v25, *(v0 + 32), *(v0 + 40));
      if (v10)
      {
        v12 = v9;
        v13 = v10;
        v14 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23126E728();
          v6 = v17;
        }

        v15 = v6[2];
        if (v15 >= v6[3] >> 1)
        {
          sub_23126E728();
          v6 = v18;
        }

        v6[2] = v15 + 1;
        v16 = &v6[3 * v15];
        v16[4] = v12;
        v16[5] = v13;
        v16[6] = v14;
        v26 = v6;
      }

      else
      {
      }

      ++v4;
    }

    while (v3 != v4);
  }

  sub_231205E60(&v26);
  if (v26[2])
  {
    v19 = v26[4];
    v20 = v26[5];
    v21 = v26[6];
    sub_231369EE0();
    sub_231369EE0();
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  v22 = *(v0 + 8);

  return v22(v19, v20, v21);
}

uint64_t sub_2312056AC(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v100 = a4;
  v7 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v93 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v89 - v14;
  v104 = MEMORY[0x277D84F98];
  v16 = [a1 phraseMetadata];
  v17 = [v16 parametersMetadata];

  sub_231207BDC(0, &qword_27DD436F8, 0x277D23770);
  v18 = sub_23136A1A0();

  v19 = sub_23125D7A0();
  v91 = a3;
  v92 = v11;
  v97 = v19;
  v90 = v7;
  if (v19)
  {
    v89 = a1;
    v20 = 0;
    v99 = v18 & 0xC000000000000001;
    v21 = MEMORY[0x277D84F98];
    v94 = v18 & 0xFFFFFFFFFFFFFF8;
    v95 = a2;
    v98 = v18;
    v96 = v15;
    while (1)
    {
      if (v99)
      {
        v22 = MEMORY[0x23192AD10](v20, v18);
      }

      else
      {
        if (v20 >= *(v94 + 16))
        {
          goto LABEL_48;
        }

        v22 = *(v18 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v25 = [v22 parameterName];
      v102 = sub_231369FD0();
      v27 = v26;

      if (v100)
      {
        v28 = v27;
        v29 = [v23 hasToBeOnScreenParameter];
        sub_231207BDC(0, &qword_27DD43708, 0x277CCABB0);
        v30 = sub_23136A460();
        v31 = v30;
        if (v29)
        {
          v32 = sub_23136A480();

          v27 = v28;
          if (v32)
          {

            return OUTLINED_FUNCTION_13_5();
          }
        }

        else
        {

          v27 = v28;
        }
      }

      v33 = sub_231207AF0(v23);
      if (v34)
      {
        v35 = v34;
        if (!*(a2 + 16) || (v36 = v33, v37 = sub_231215F6C(v102, v27), (v38 & 1) == 0))
        {
LABEL_42:

          return OUTLINED_FUNCTION_13_5();
        }

        v39 = (*(a2 + 56) + 16 * v37);
        v40 = *v39;
        v41 = v39[1];
        v42 = *v39 == v36 && v35 == v41;
        if (v42)
        {
          sub_231369EE0();
        }

        else
        {
          v43 = sub_23136A900();
          sub_231369EE0();

          if ((v43 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        v101 = v41;
        swift_isUniquelyReferenced_nonNull_native();
        v103 = v21;
        v44 = sub_231215F6C(v102, v27);
        if (__OFADD__(v21[2], (v45 & 1) == 0))
        {
          goto LABEL_47;
        }

        v46 = v44;
        v47 = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43700, &qword_23136D528);
        if (sub_23136A700())
        {
          v48 = sub_231215F6C(v102, v27);
          if ((v47 & 1) != (v49 & 1))
          {
            goto LABEL_50;
          }

          v46 = v48;
        }

        v24 = v20 + 1;
        v21 = v103;
        if (v47)
        {
          v50 = (v103[7] + 16 * v46);
          v51 = v101;
          *v50 = v40;
          v50[1] = v51;
        }

        else
        {
          OUTLINED_FUNCTION_16_4(&v103[v46 >> 6]);
          v52 = (v21[6] + 16 * v46);
          v53 = v101;
          *v52 = v102;
          v52[1] = v27;
          v54 = (v21[7] + 16 * v46);
          *v54 = v40;
          v54[1] = v53;
          v55 = v21[2];
          v56 = __OFADD__(v55, 1);
          v57 = v55 + 1;
          if (v56)
          {
            goto LABEL_49;
          }

          v21[2] = v57;
        }

        a2 = v95;
      }

      else
      {
      }

      v15 = v96;
      ++v20;
      v42 = v24 == v97;
      v18 = v98;
      if (v42)
      {
        v104 = v21;
        v7 = v90;
        a1 = v89;
        goto LABEL_36;
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
    result = sub_23136A970();
    __break(1u);
  }

  else
  {
LABEL_36:

    v58 = [a1 phrase];
    sub_2313667C0();
    v59 = sub_231369FA0();

    v60 = [v58 localizedStringForLocaleIdentifier_];

    v61 = sub_231369FD0();
    v63 = v62;

    sub_231369130();
    sub_231369EE0();
    v64 = sub_2313698A0();
    v65 = sub_23136A3A0();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = a2;
      v68 = swift_slowAlloc();
      v103 = v68;
      *v66 = 136315138;
      *(v66 + 4) = sub_2311CFD58(v61, v63, &v103);
      _os_log_impl(&dword_2311CB000, v64, v65, "AppIntentPhraseConstructor: phrase template is eligible: %s. Localizing and hydrating phrase", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      a2 = v67;
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    v69 = *(v93 + 8);
    v69(v15, v7);
    v70 = sub_231205ED0(v61, v63, a2, &v104);
    v72 = v71;

    v73 = v92;
    sub_231369130();
    v74 = OUTLINED_FUNCTION_13_5();
    sub_231207B54(v74, v75, v76);
    v77 = sub_2313698A0();
    v78 = sub_23136A3A0();
    v79 = OUTLINED_FUNCTION_13_5();
    sub_231207B98(v79, v80, v81);
    if (os_log_type_enabled(v77, v78))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v103 = v83;
      *v82 = 136315138;
      v84 = v69;
      if (v72)
      {
        sub_231369EE0();
        v85 = v70;
        v86 = v72;
      }

      else
      {
        v86 = 0xE300000000000000;
        v85 = 7104878;
      }

      v87 = sub_2311CFD58(v85, v86, &v103);

      *(v82 + 4) = v87;
      _os_log_impl(&dword_2311CB000, v77, v78, "AppIntentPhraseConstructor: Hydrated phrase - %s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v84(v92, v90);
    }

    else
    {

      v69(v73, v7);
    }

    return OUTLINED_FUNCTION_13_5();
  }

  return result;
}

uint64_t sub_231205E60(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_23128D894();
    v2 = v5;
  }

  v3 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v3;
  result = sub_231207214(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_231205ED0(uint64_t a1, int64_t a2, uint64_t a3, uint64_t *a4)
{
  v212 = a4;
  v217 = a3;
  v218 = a2;
  v210 = a1;
  v183[8] = sub_2313663A0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_4_3(v6 - v5);
  v201 = sub_231366420();
  OUTLINED_FUNCTION_0_0();
  v220 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_4_3(v10);
  v196 = sub_231366430();
  OUTLINED_FUNCTION_0_0();
  v216 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_4_3(v14 - v13);
  v194 = sub_2313664F0();
  OUTLINED_FUNCTION_0_0();
  v211 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_6_3(v18 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43710, &qword_23136D530);
  OUTLINED_FUNCTION_40_0(v19);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_6_3(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43718, &qword_23136D538);
  OUTLINED_FUNCTION_40_0(v22);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_4_3(v24);
  v208 = sub_2313664D0();
  OUTLINED_FUNCTION_0_0();
  v209 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_6_3(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43720, &qword_23136D540);
  v30 = OUTLINED_FUNCTION_40_0(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_6_3(v32);
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43728, &qword_23136D548);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18_2();
  v215 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43730, &qword_23136D550);
  OUTLINED_FUNCTION_40_0(v35);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18_2();
  v213 = v37;
  v38 = sub_231369F80();
  v39 = OUTLINED_FUNCTION_40_0(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_4_3(v41 - v40);
  v200 = sub_231366460();
  OUTLINED_FUNCTION_0_0();
  v204 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v45);
  v219 = v183 - v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_4_3(v48);
  v49 = sub_2313663F0();
  OUTLINED_FUNCTION_0_0();
  v188 = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v52);
  v54 = v183 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43738, qword_23136D558);
  OUTLINED_FUNCTION_40_0(v55);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v56);
  v58 = v183 - v57;
  v59 = sub_231366840();
  OUTLINED_FUNCTION_0_0();
  v61 = v60;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_1_4();
  v65 = v64 - v63;
  v66 = sub_2313667E0();
  OUTLINED_FUNCTION_0_0();
  v68 = v67;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_1_4();
  v72 = v71 - v70;
  sub_231366850();
  sub_231366830();
  (*(v61 + 8))(v65, v59);
  if (__swift_getEnumTagSinglePayload(v58, 1, v66) == 1)
  {
    v73 = &qword_27DD43738;
    v74 = qword_23136D558;
    v75 = v58;
LABEL_34:
    sub_2311D1F18(v75, v73, v74);
    return 0;
  }

  else
  {
    v183[2] = v68;
    v76 = *(v68 + 32);
    v183[3] = v66;
    v76(v72, v58, v66);
    sub_2313663E0();
    sub_2313663C0();
    sub_2313663D0();
    sub_231369EE0();
    sub_231369F90();
    v77 = *(v188 + 16);
    v183[4] = v54;
    v205 = v49;
    v77(v198, v54, v49);
    sub_231366860();
    v78 = v213;
    OUTLINED_FUNCTION_12_3();
    *(v80 - 256) = v79;
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v79);
    OUTLINED_FUNCTION_14_4();
    sub_231366450();
    v223 = sub_2313667D0();
    v224 = v84;
    sub_231366480();
    v85 = v204 + 16;
    v86 = v200;
    (*(v204 + 16))(v219, v49, v200);
    sub_2312071D8(v217, &v223);
    v87 = v224;
    v204 = v223;
    v218 = v226;
    v183[1] = v225;
    v88 = (v225 + 64) >> 6;
    v186 = v211 + 8;
    v185 = (v220 + 8);
    v187 = v216 + 8;
    v89 = v227;
    v220 = v228;
    v183[5] = v209 + 32;
    v183[11] = v209 + 16;
    v190 = (v85 - 8);
    v183[10] = v209 + 8;
    sub_231369EE0();
    v90 = v78;
    v203 = v72;
    v202 = v87;
    v184 = v88;
    while (v89)
    {
LABEL_10:
      v93 = __OFADD__(v220++, 1);
      if (v93)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        result = sub_23136A970();
        __break(1u);
        return result;
      }

      v94 = __clz(__rbit64(v89));
      v89 &= v89 - 1;
      v95 = (v218 << 10) | (16 * v94);
      v96 = (*(v204 + 48) + v95);
      v97 = v86;
      v98 = *v96;
      v99 = v96[1];
      v100 = (*(v204 + 56) + v95);
      v101 = v100[1];
      v217 = *v100;
      v221 = 31524;
      v222 = 0xE200000000000000;
      sub_231369EE0();
      sub_231369EE0();
      v102 = v90;
      v216 = v98;
      MEMORY[0x23192A730](v98, v99);
      MEMORY[0x23192A730](125, 0xE100000000000000);
      OUTLINED_FUNCTION_12_3();
      __swift_storeEnumTagSinglePayload(v104, v105, v106, *(v103 - 256));
      OUTLINED_FUNCTION_5_6();
      v108 = sub_231207D44(&qword_27DD43740, v107, MEMORY[0x277CC8C38]);
      sub_231207C1C(v108, v109, v110);
      OUTLINED_FUNCTION_14_4();
      v211 = v108;
      sub_231366580();
      sub_2311D1F18(v102, &qword_27DD43730, &qword_23136D550);

      OUTLINED_FUNCTION_20_3(v98);
      if (v111)
      {

        sub_2311D1F18(v98, &qword_27DD43720, &qword_23136D540);
        v90 = v213;
        v87 = v202;
        v86 = v97;
      }

      else
      {
        v209 = v101;
        v210 = v99;
        v112 = v98;
        v113 = v215;
        sub_231207C70(v112, v215);
        v114 = sub_231207CE0();
        v115 = v193;
        v198 = v114;
        sub_231366490();
        v116 = v195;
        sub_2313664E0();
        OUTLINED_FUNCTION_8_6();
        v117(v115, v194);
        sub_231207D44(&qword_27DD43750, MEMORY[0x277CC8C08], MEMORY[0x277CC8C18]);
        OUTLINED_FUNCTION_14_4();
        v118 = v196;
        sub_23136A360();
        v119 = v197;
        sub_23136A370();
        sub_231207D44(&qword_27DD43758, MEMORY[0x277CC8BF8], MEMORY[0x277CC8C00]);
        v120 = v201;
        v121 = sub_231369F60();
        v122 = *v185;
        (*v185)(v119, v120);
        if (v121)
        {
          v122(v113, v120);
          OUTLINED_FUNCTION_8_6();
          v123(v116, v118);
          v124 = sub_231366410();
          v125 = v192;
          v126 = v192;
          v127 = 1;
        }

        else
        {
          v128 = sub_23136A380();
          v130 = v129;
          v124 = sub_231366410();
          OUTLINED_FUNCTION_11();
          v125 = v192;
          (*(v131 + 16))(v192, v130, v124);
          v128(&v221, 0);
          v122(v113, v201);
          OUTLINED_FUNCTION_8_6();
          v132(v116, v118);
          v126 = v125;
          v127 = 0;
        }

        __swift_storeEnumTagSinglePayload(v126, v127, 1, v124);
        sub_231366410();
        OUTLINED_FUNCTION_20_3(v125);
        v86 = v200;
        v88 = v184;
        if (v111)
        {
          sub_2311D1F18(v125, &qword_27DD43710, &qword_23136D530);
          v133 = v199;
          OUTLINED_FUNCTION_19_5(v199, 1);
          v135 = v207;
          sub_2313664C0();
          if (__swift_getEnumTagSinglePayload(v133, 1, v125) != 1)
          {
            sub_2311D1F18(v199, &qword_27DD43718, &qword_23136D538);
          }
        }

        else
        {
          v134 = v199;
          sub_231366400();
          (*(*(v124 - 8) + 8))(v125, v124);
          OUTLINED_FUNCTION_19_5(v134, 0);
          OUTLINED_FUNCTION_8_6();
          v135 = v207;
          v136(v207, v134, v125);
        }

        OUTLINED_FUNCTION_8_6();
        v137(v191, v135, v125);
        sub_231369EE0();
        OUTLINED_FUNCTION_14_4();
        sub_231366470();
        v221 = v220;
        LOBYTE(v222) = 0;
        sub_231366480();
        sub_2313663B0();
        v138 = v212;
        swift_isUniquelyReferenced_nonNull_native();
        v139 = *v138;
        v221 = v139;
        v140 = v210;
        v141 = sub_231215F6C(v216, v210);
        if (__OFADD__(*(v139 + 16), (v142 & 1) == 0))
        {
          goto LABEL_38;
        }

        v143 = v141;
        v144 = v142;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43700, &qword_23136D528);
        if (sub_23136A700())
        {
          v145 = sub_231215F6C(v216, v140);
          v87 = v202;
          if ((v144 & 1) != (v146 & 1))
          {
            goto LABEL_40;
          }

          v143 = v145;
        }

        else
        {
          v87 = v202;
        }

        v147 = v209;
        v148 = v221;
        if (v144)
        {
          v149 = (*(v221 + 56) + 16 * v143);
          *v149 = v217;
          v149[1] = v147;
        }

        else
        {
          OUTLINED_FUNCTION_16_4(v221 + 8 * (v143 >> 6));
          v150 = (v148[6] + 16 * v143);
          v151 = v210;
          *v150 = v216;
          v150[1] = v151;
          v152 = (v148[7] + 16 * v143);
          *v152 = v217;
          v152[1] = v153;
          v154 = v148[2];
          v93 = __OFADD__(v154, 1);
          v155 = v154 + 1;
          if (v93)
          {
            goto LABEL_39;
          }

          v148[2] = v155;
        }

        OUTLINED_FUNCTION_8_6();
        v156(v206, v86);
        OUTLINED_FUNCTION_8_6();
        v157(v207, v208);
        sub_2311D1F18(v215, &qword_27DD43728, &qword_23136D548);
        v90 = v213;
        *v212 = v148;
      }
    }

    v91 = v218;
    while (1)
    {
      v92 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v92 >= v88)
      {
        break;
      }

      v89 = *(v87 + 8 * v92);
      ++v91;
      if (v89)
      {
        v218 = v92;
        goto LABEL_10;
      }
    }

    v158 = v189;
    sub_2311D3BBC(v204);
    v221 = 0x5C3F2A2E7B5C245CLL;
    v222 = 0xE90000000000007DLL;
    OUTLINED_FUNCTION_12_3();
    __swift_storeEnumTagSinglePayload(v160, v161, v162, *(v159 - 256));
    OUTLINED_FUNCTION_5_6();
    v165 = sub_231207D44(v163, v164, MEMORY[0x277CC8C38]);
    sub_231207C1C(v165, v166, v167);
    v168 = v183[9];
    v169 = v219;
    sub_231366580();
    sub_2311D1F18(v90, &qword_27DD43730, &qword_23136D550);
    OUTLINED_FUNCTION_20_3(v168);
    if (!v111)
    {
      v177 = *v190;
      (*v190)(v169, v86);
      v177(v158, v86);
      v178 = OUTLINED_FUNCTION_10_4();
      v179(v178);
      v180 = OUTLINED_FUNCTION_11_5();
      v181(v180);
      v73 = &qword_27DD43720;
      v74 = &qword_23136D540;
      v75 = v168;
      goto LABEL_34;
    }

    sub_2311D1F18(v168, &qword_27DD43720, &qword_23136D540);
    v170 = v183[6];
    sub_231366440();
    OUTLINED_FUNCTION_14_4();
    sub_231366390();
    v171 = *v190;
    (*v190)(v170, v86);
    sub_231207D44(&qword_27DD43760, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
    v172 = sub_23136A0D0();
    v171(v169, v86);
    v171(v158, v86);
    v173 = OUTLINED_FUNCTION_10_4();
    v174(v173);
    v175 = OUTLINED_FUNCTION_11_5();
    v176(v175);
    sub_231369EE0();
  }

  return v172;
}

uint64_t sub_2312071D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  *a2 = a1;
  v6 = *(a1 + 64);
  result = a1 + 64;
  v5 = v6;
  v7 = -v2;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  a2[1] = result;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v8 & v5;
  a2[5] = 0;
  return result;
}

uint64_t sub_231207214(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23136A8A0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_23120738C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_231207308(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_231207308(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = result - a3;
    v6 = *a4 + 24 * a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(*(v8 - 1) + 16) >= *(v7 + 16))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v8;
        v11 = v8[1];
        *v8 = *(v8 - 3);
        v8[2] = *(v8 - 1);
        *(v8 - 2) = v11;
        *(v8 - 1) = v7;
        *(v8 - 3) = v10;
        v8 -= 3;
      }

      while (!__CFADD__(v9++, 1));
      ++a3;
      --v5;
      v6 += 24;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_23120738C(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v91 = *result;
    if (!*result)
    {
      goto LABEL_129;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_90:
      v81 = (v8 + 16);
      for (i = *(v8 + 2); i >= 2; *v81 = i)
      {
        if (!*a3)
        {
          goto LABEL_126;
        }

        v83 = &v8[16 * i];
        v84 = *v83;
        v85 = &v81[2 * i];
        v86 = v85[1];
        sub_231207938((*a3 + 24 * *v83), (*a3 + 24 * *v85), *a3 + 24 * v86, v91);
        if (v5)
        {
          break;
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (i - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        *(v83 + 1) = v86;
        v87 = *v81 - i;
        if (*v81 < i)
        {
          goto LABEL_116;
        }

        i = *v81 - 1;
        memmove(v85, v85 + 2, 16 * v87);
      }

LABEL_98:

      return;
    }

LABEL_123:
    v8 = sub_2311E6430(v8, a2, a3, a4);
    goto LABEL_90;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v88 = a4;
  while (1)
  {
    v9 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v10 = *a3 + 24 * v7;
      v11 = 24 * v7;
      v12 = *(*(*a3 + 24 * v9 + 16) + 16);
      v13 = *(*(v10 + 16) + 16);
      v14 = (v10 + 64);
      v15 = v7 + 2;
      v16 = v12;
      while (1)
      {
        v17 = v15;
        if (++v9 >= v6)
        {
          break;
        }

        v18 = *v14;
        v14 += 3;
        v19 = (v13 < v12) ^ (v16 >= *(v18 + 16));
        ++v15;
        v16 = *(v18 + 16);
        if ((v19 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v9 = v6;
LABEL_9:
      if (v13 < v12)
      {
        if (v9 < v7)
        {
          goto LABEL_120;
        }

        if (v7 < v9)
        {
          if (v6 >= v17)
          {
            v6 = v17;
          }

          v20 = 24 * v6;
          v21 = v9;
          v22 = v7;
          do
          {
            if (v22 != --v21)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v24 = (v23 + v11);
              v25 = v23 + v20;
              v26 = *v24;
              v27 = *(v24 + 1);
              v28 = *(v25 - 24);
              v24[2] = *(v25 - 8);
              *v24 = v28;
              *(v25 - 24) = v26;
              *(v25 - 16) = v27;
            }

            ++v22;
            v20 -= 24;
            v11 += 24;
          }

          while (v22 < v21);
          v6 = a3[1];
        }
      }
    }

    if (v9 < v6)
    {
      if (__OFSUB__(v9, v7))
      {
        goto LABEL_119;
      }

      if (v9 - v7 < a4)
      {
        break;
      }
    }

LABEL_36:
    if (v9 < v7)
    {
      goto LABEL_118;
    }

    v90 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23126DB78();
      v8 = v79;
    }

    v38 = *(v8 + 2);
    v39 = v38 + 1;
    if (v38 >= *(v8 + 3) >> 1)
    {
      sub_23126DB78();
      v8 = v80;
    }

    *(v8 + 2) = v39;
    v40 = v8 + 32;
    v41 = &v8[16 * v38 + 32];
    *v41 = v7;
    *(v41 + 1) = v90;
    v91 = *result;
    if (!*result)
    {
      goto LABEL_128;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        v43 = &v40[16 * v39 - 16];
        v44 = &v8[16 * v39];
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_56:
          if (v48)
          {
            goto LABEL_105;
          }

          v60 = *v44;
          v59 = *(v44 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_108;
          }

          v64 = *(v43 + 1);
          v65 = v64 - *v43;
          if (__OFSUB__(v64, *v43))
          {
            goto LABEL_111;
          }

          if (__OFADD__(v62, v65))
          {
            goto LABEL_113;
          }

          if (v62 + v65 >= v47)
          {
            if (v47 < v65)
            {
              v42 = v39 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        if (v39 < 2)
        {
          goto LABEL_107;
        }

        v67 = *v44;
        v66 = *(v44 + 1);
        v55 = __OFSUB__(v66, v67);
        v62 = v66 - v67;
        v63 = v55;
LABEL_71:
        if (v63)
        {
          goto LABEL_110;
        }

        v69 = *v43;
        v68 = *(v43 + 1);
        v55 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v55)
        {
          goto LABEL_112;
        }

        if (v70 < v62)
        {
          goto LABEL_85;
        }

LABEL_78:
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v74 = &v40[16 * v42 - 16];
        v75 = *v74;
        v76 = &v40[16 * v42];
        v77 = *(v76 + 1);
        sub_231207938((*a3 + 24 * *v74), (*a3 + 24 * *v76), *a3 + 24 * v77, v91);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v77 < v75)
        {
          goto LABEL_100;
        }

        v5 = v8;
        v8 = *(v8 + 2);
        if (v42 > v8)
        {
          goto LABEL_101;
        }

        *v74 = v75;
        *(v74 + 1) = v77;
        if (v42 >= v8)
        {
          goto LABEL_102;
        }

        v39 = (v8 - 1);
        sub_2311E6448(v76 + 16, &v8[-v42 - 1], &v40[16 * v42]);
        *(v5 + 2) = v8 - 1;
        v78 = v8 > 2;
        v8 = v5;
        v5 = 0;
        if (!v78)
        {
          goto LABEL_85;
        }
      }

      v49 = &v40[16 * v39];
      v50 = *(v49 - 8);
      v51 = *(v49 - 7);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_103;
      }

      v54 = *(v49 - 6);
      v53 = *(v49 - 5);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_104;
      }

      v56 = *(v44 + 1);
      v57 = v56 - *v44;
      if (__OFSUB__(v56, *v44))
      {
        goto LABEL_106;
      }

      v55 = __OFADD__(v47, v57);
      v58 = v47 + v57;
      if (v55)
      {
        goto LABEL_109;
      }

      if (v58 >= v52)
      {
        v72 = *v43;
        v71 = *(v43 + 1);
        v55 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v55)
        {
          goto LABEL_117;
        }

        if (v47 < v73)
        {
          v42 = v39 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_56;
    }

LABEL_85:
    v6 = a3[1];
    v7 = v90;
    a4 = v88;
    if (v90 >= v6)
    {
      goto LABEL_88;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_121;
  }

  if (v7 + a4 < v6)
  {
    v6 = v7 + a4;
  }

  if (v6 < v7)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v9 == v6)
  {
    goto LABEL_36;
  }

  v29 = *a3;
  v30 = v7 - v9;
  v31 = *a3 + 24 * v9;
LABEL_29:
  v32 = *(v29 + 24 * v9 + 16);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (*(*(v33 - 1) + 16) >= *(v32 + 16))
    {
LABEL_34:
      ++v9;
      --v30;
      v31 += 24;
      if (v9 == v6)
      {
        v9 = v6;
        goto LABEL_36;
      }

      goto LABEL_29;
    }

    if (!v29)
    {
      break;
    }

    v35 = *v33;
    v36 = v33[1];
    *v33 = *(v33 - 3);
    v33[2] = *(v33 - 1);
    *(v33 - 2) = v36;
    *(v33 - 1) = v32;
    *(v33 - 3) = v35;
    v33 -= 3;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
}

uint64_t sub_231207938(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_231270E08(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(*(v4 + 2) + 16) >= *(*(v6 + 2) + 16))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_231270E08(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(*(v6 - 1) + 16) < *(*(v10 - 1) + 16))
    {
      v17 = v6 - 24;
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 24;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

uint64_t sub_231207AF0(void *a1)
{
  v1 = [a1 parameterValueToSet];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231369FD0();

  return v3;
}

void sub_231207B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_231369EE0();

    sub_231369EE0();
  }
}

void sub_231207B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

uint64_t sub_231207BDC(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_231207C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F7C880;
  if (!qword_280F7C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7C880);
  }

  return result;
}

uint64_t sub_231207C70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43728, &qword_23136D548);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_231207CE0()
{
  result = qword_27DD43748;
  if (!qword_27DD43748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD43728, &qword_23136D548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43748);
  }

  return result;
}

uint64_t sub_231207D44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_231207DB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_231207DF0(uint64_t result, int a2, int a3)
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

void *TrialTriggerLoggerProvider.getTriggerLogger()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TrialTriggerLogger();
  v3 = swift_allocObject();
  result = TrialTriggerLogger.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for TrialTriggerLogger;
  *a1 = v3;
  return result;
}

uint64_t TrialTriggerLogger.__allocating_init()()
{
  OUTLINED_FUNCTION_9_5();
  v0 = swift_allocObject();
  TrialTriggerLogger.init()();
  return v0;
}

uint64_t NoOpTriggerLogger.cacheTrialExperimentIdentifiers()()
{
  OUTLINED_FUNCTION_8();
  v0[2] = sub_2313698C0();
  OUTLINED_FUNCTION_3_3();
  v0[3] = v1;
  v0[4] = OUTLINED_FUNCTION_43();
  v2 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_231207FD4(uint64_t a1)
{
  sub_231369100();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_57(&dword_2311CB000, v4, v5, "This is a no-op cacheTrialExperimentIdentifiers");
    OUTLINED_FUNCTION_29();
  }

  v7 = v1[3];
  v6 = v1[4];
  v8 = v1[2];

  (*(v7 + 8))(v6, v8);

  OUTLINED_FUNCTION_56_0();

  return v9();
}

uint64_t NoOpTriggerLogger.emitTriggerFromCache(requestID:)()
{
  OUTLINED_FUNCTION_8();
  v0[2] = sub_2313698C0();
  OUTLINED_FUNCTION_3_3();
  v0[3] = v1;
  v0[4] = OUTLINED_FUNCTION_43();
  v2 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_23120815C(uint64_t a1)
{
  sub_231369100();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_57(&dword_2311CB000, v4, v5, "This is a no-op emitTriggerFromCache");
    OUTLINED_FUNCTION_29();
  }

  v7 = v1[3];
  v6 = v1[4];
  v8 = v1[2];

  (*(v7 + 8))(v6, v8);

  OUTLINED_FUNCTION_56_0();

  return v9();
}

uint64_t sub_231208258()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return NoOpTriggerLogger.cacheTrialExperimentIdentifiers()();
}

uint64_t sub_2312082E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311D05C8;

  return NoOpTriggerLogger.emitTriggerFromCache(requestID:)();
}

uint64_t sub_231208370(uint64_t a1, uint64_t a2)
{
  v7 = (*MEMORY[0x277CE4830] + MEMORY[0x277CE4830]);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2311D05C8;

  return v7(a1, a2);
}

uint64_t sub_23120842C(uint64_t a1, uint64_t a2)
{
  v7 = (*MEMORY[0x277CE4838] + MEMORY[0x277CE4838]);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231209AAC;

  return v7(a1, a2);
}

uint64_t sub_2312084E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43768, &qword_23136D5F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_2313667A0();
  __swift_allocate_value_buffer(v3, qword_280F8E660);
  v4 = __swift_project_value_buffer(v3, qword_280F8E660);
  sub_231366760();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

void *TrialTriggerLogger.init()()
{
  v1 = sub_231369830();
  v2 = [objc_allocWithZone(v1) init];
  v0[5] = v1;
  v0[6] = &protocol witness table for ExperimentationAnalyticsManager;
  v0[2] = v2;
  return v0;
}

uint64_t TrialTriggerLogger.__allocating_init(manager:)(__int128 *a1)
{
  OUTLINED_FUNCTION_9_5();
  v2 = swift_allocObject();
  sub_2311D38A8(a1, v2 + 16);
  return v2;
}

uint64_t TrialTriggerLogger.cacheTrialExperimentIdentifiers()()
{
  OUTLINED_FUNCTION_8();
  v1[11] = v0;
  v1[12] = sub_2313698C0();
  OUTLINED_FUNCTION_3_3();
  v1[13] = v2;
  v1[14] = OUTLINED_FUNCTION_43();
  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231208748()
{
  sub_2311CF324(v0[11] + 16, (v0 + 2));
  v21 = v0[6];
  v22 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v22);
  if (qword_280F82FD0 != -1)
  {
    OUTLINED_FUNCTION_4_4(&qword_280F82FD0);
  }

  v1 = sub_2313667A0();
  __swift_project_value_buffer(v1, qword_280F8E660);
  v20 = sub_231366780();
  v0[15] = v20;
  v23 = MEMORY[0x277D84F90];
  sub_2311F4E34(0);
  v2 = 0;
  v3 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_A";
  v4 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_B";
  v5 = 0xD000000000000019;
  v6 = "SIRI_SUGGESTIONS_PLATFORM";
  do
  {
    v7 = &unk_23137A540;
    v8 = 0xD00000000000001FLL;
    switch(*(&unk_2845F1028 + v2 + 32))
    {
      case 1:
        v7 = v3;
        break;
      case 2:
        v8 = v5;
        v7 = v4;
        break;
      case 3:
        v8 = 0xD00000000000001ALL;
        v7 = v6;
        break;
      default:
        break;
    }

    v10 = *(v23 + 16);
    v9 = *(v23 + 24);
    if (v10 >= v9 >> 1)
    {
      v17 = v4;
      v18 = v3;
      v15 = v6;
      v16 = v5;
      sub_2311F4E34(v9 > 1);
      v6 = v15;
      v5 = v16;
      v4 = v17;
      v3 = v18;
    }

    v0[16] = v23;
    ++v2;
    *(v23 + 16) = v10 + 1;
    v11 = v23 + 16 * v10;
    *(v11 + 32) = v8;
    *(v11 + 40) = v7 | 0x8000000000000000;
  }

  while (v2 != 4);
  OUTLINED_FUNCTION_3_3();
  v19 = (v12 + *v12);
  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_34_0(v13);

  return v19(v20, v23, v22, v21);
}

uint64_t sub_231208A04()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v3 + 144) = v0;

  if (v0)
  {
    v6 = sub_231208B74;
  }

  else
  {
    v7 = *(v3 + 120);

    v6 = sub_231208B14;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_231208B14()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_56_0();

  return v1();
}

uint64_t sub_231208B74()
{
  v23 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_231369100();
  v3 = v1;
  v4 = sub_2313698A0();
  v5 = sub_23136A3B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    v7 = *(v0 + 104);
    v21 = *(v0 + 112);
    v8 = *(v0 + 96);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    OUTLINED_FUNCTION_16_5(4.8149e-34);
    v11 = sub_23136A980();
    v13 = sub_2311CFD58(v11, v12, &v22);

    *(v9 + 4) = v13;
    OUTLINED_FUNCTION_14_5(&dword_2311CB000, v14, v15, "Error caching trial experiment identifiers: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v7 + 8))(v21, v8);
  }

  else
  {
    v17 = *(v0 + 104);
    v16 = *(v0 + 112);
    v18 = *(v0 + 96);

    (*(v17 + 8))(v16, v18);
  }

  OUTLINED_FUNCTION_56_0();

  return v19();
}

uint64_t TrialTriggerLogger.emitTriggerFromCache(requestID:)()
{
  OUTLINED_FUNCTION_8();
  v1[11] = v2;
  v1[12] = v0;
  v1[13] = sub_2313698C0();
  OUTLINED_FUNCTION_3_3();
  v1[14] = v3;
  v1[15] = OUTLINED_FUNCTION_43();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43768, &qword_23136D5F0);
  v1[16] = OUTLINED_FUNCTION_43();
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231208E04()
{
  sub_2311CF324(v0[12] + 16, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  if (qword_280F82FD0 != -1)
  {
    OUTLINED_FUNCTION_4_4(&qword_280F82FD0);
  }

  v3 = v0[16];
  v4 = v0[11];
  v5 = sub_2313667A0();
  __swift_project_value_buffer(v5, qword_280F8E660);
  v6 = sub_231366780();
  v0[17] = v6;
  sub_2312094E4(v4, v3);
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) != 1)
  {
    v8 = v0[16];
    v7 = sub_231366780();
    (*(*(v5 - 8) + 8))(v8, v5);
  }

  v0[18] = v7;
  OUTLINED_FUNCTION_3_3();
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_34_0(v10);

  return v12(v6, v7, v1, v2);
}

uint64_t sub_231209010()
{
  OUTLINED_FUNCTION_12();
  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v7 + 160) = v0;

  if (v0)
  {
    v8 = sub_2312091B8;
  }

  else
  {
    v8 = sub_231209150;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_231209150()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_56_0();

  return v1();
}

uint64_t sub_2312091B8()
{
  v22 = v0;
  v1 = *(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_231369100();
  v2 = v1;
  v3 = sub_2313698A0();
  v4 = sub_23136A3B0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 160);
    v6 = *(v0 + 112);
    v20 = *(v0 + 120);
    v7 = *(v0 + 104);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    OUTLINED_FUNCTION_16_5(4.8149e-34);
    v10 = sub_23136A980();
    v12 = sub_2311CFD58(v10, v11, &v21);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_14_5(&dword_2311CB000, v13, v14, "Error emitting trigger event from cache: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v6 + 8))(v20, v7);
  }

  else
  {
    v16 = *(v0 + 112);
    v15 = *(v0 + 120);
    v17 = *(v0 + 104);

    (*(v16 + 8))(v15, v17);
  }

  OUTLINED_FUNCTION_56_0();

  return v18();
}

uint64_t TrialTriggerLogger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_9_5();

  return swift_deallocClassInstance();
}

uint64_t sub_2312093BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return TrialTriggerLogger.cacheTrialExperimentIdentifiers()();
}

uint64_t sub_23120944C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return TrialTriggerLogger.emitTriggerFromCache(requestID:)();
}

uint64_t sub_2312094E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43768, &qword_23136D5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of TriggerLogger.cacheTrialExperimentIdentifiers()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_3();
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_30(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_34_0(v6);

  return v9(a1, a2);
}

uint64_t dispatch thunk of TriggerLogger.emitTriggerFromCache(requestID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_3();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_30(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_34_0(v8);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ExperimentationAnalyticsProtocol.emitTriggerFromCache(for:requestID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_10_5(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3_3();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_30(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6_4(v5);

  return v8(v7);
}

uint64_t dispatch thunk of ExperimentationAnalyticsProtocol.cacheTrialExperimentIdentifiers(for:namespaces:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_10_5(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3_3();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_30(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6_4(v5);

  return v8(v7);
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

uint64_t sub_231209AF0(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231209C08;

  return v7(a1, a2);
}

uint64_t sub_231209C08()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_231209CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_231209EB0;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_231209E30()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_231209E58()
{
  sub_231209E30();

  return swift_deallocClassInstance();
}

uint64_t sub_231209EC8()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_231209F1C(uint64_t a1)
{
  result = sub_231209F44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_231209F44()
{
  result = qword_280F82120;
  if (!qword_280F82120)
  {
    type metadata accessor for DisabledMotionManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F82120);
  }

  return result;
}

uint64_t sub_231209FB4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43778, &unk_23136D960);
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  v4 = sub_231369EE0();
  sub_23120A02C(v4, v2);
  return v3;
}

uint64_t sub_23120A02C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369100();
  sub_231369EE0();
  v12 = sub_2313698A0();
  v13 = sub_23136A390();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = v8;
    v15 = v14;
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315138;
    v17 = sub_231366690();
    v18 = MEMORY[0x23192A860](a1, v17);
    v20 = sub_2311CFD58(v18, v19, &v28);
    v26 = v6;
    v21 = v3;
    v22 = a2;
    v23 = v20;

    *(v15 + 4) = v23;
    a2 = v22;
    v3 = v21;
    _os_log_impl(&dword_2311CB000, v12, v13, "Creating generator bundle scanner from %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v27 + 8))(v11, v26);
  }

  else
  {

    (*(v8 + 8))(v11, v6);
  }

  *(v3 + 16) = a2;
  *(v3 + 24) = a1;
  return v3;
}

uint64_t sub_23120A218()
{
  v1 = v0;
  v2 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2312980F8();
  sub_231369100();

  sub_231369EE0();
  v9 = sub_2313698A0();
  v10 = sub_23136A390();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = *(v1 + 24);
    v13 = sub_231366690();
    v14 = MEMORY[0x23192A860](v12, v13);
    v16 = sub_2311CFD58(v14, v15, &v24);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43770, &unk_231373CE0);
    v18 = MEMORY[0x23192A860](v8, v17);
    v20 = sub_2311CFD58(v18, v19, &v24);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_2311CB000, v9, v10, "Loading generators from bundle at: %s with classes: %s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  (*(v4 + 8))(v7, v2);
  type metadata accessor for DefaultGeneratorProvider();
  inited = swift_initStackObject();
  inited[3] = 0xD000000000000018;
  inited[4] = 0x800000023137CCA0;
  inited[2] = v8;
  v22 = DefaultGeneratorProvider.generatorsAvailable()();
  swift_setDeallocating();
  DefaultGeneratorProvider.deinit();
  swift_deallocClassInstance();
  return v22;
}

uint64_t sub_23120A48C()
{

  return v0;
}

uint64_t sub_23120A4B4()
{
  sub_23120A48C();

  return swift_deallocClassInstance();
}

uint64_t sub_23120A50C()
{
  v1 = sub_23120A218();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_23120A58C(uint64_t a1)
{
  result = sub_23120A5B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23120A5B4()
{
  result = qword_280F81350;
  if (!qword_280F81350)
  {
    type metadata accessor for BundleGeneratorProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F81350);
  }

  return result;
}

void sub_23120A608(uint64_t *a1)
{
  v2 = *(type metadata accessor for RankedCandidateSuggestion(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E65A4(v3, v4, v5, v6);
    v3 = v7;
  }

  v8 = *(v3 + 16);
  v9[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9[1] = v8;
  sub_23120B4F4(v9);
  *a1 = v3;
}

uint64_t sub_23120A6B0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_231367C70();
  v3[5] = v4;
  OUTLINED_FUNCTION_0(v4);
  v3[6] = v5;
  v3[7] = OUTLINED_FUNCTION_43();
  v6 = sub_231367290();
  v3[8] = v6;
  OUTLINED_FUNCTION_0(v6);
  v3[9] = v7;
  v3[10] = OUTLINED_FUNCTION_43();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43780, &qword_231377300);
  v3[11] = OUTLINED_FUNCTION_43();
  v8 = sub_231367300();
  v3[12] = v8;
  OUTLINED_FUNCTION_0(v8);
  v3[13] = v9;
  v3[14] = OUTLINED_FUNCTION_43();
  v10 = type metadata accessor for RankedCandidateSuggestion(0);
  v3[15] = v10;
  OUTLINED_FUNCTION_0(v10);
  v3[16] = v11;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23120A8E8, 0, 0);
}

uint64_t sub_23120A8E8()
{
  v100 = v0;
  v2 = 0;
  OUTLINED_FUNCTION_1_10();
  v3 = *(v0 + 128);
  v98 = *(v0 + 120);
  v4 = *(*(v0 + 16) + 16);
  while (1)
  {
    if (v4 == v2)
    {
      v15 = 0;
      v79 = 1;
      v16 = MEMORY[0x277D84F90];
      goto LABEL_20;
    }

    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v6 = *(v3 + 72);
    v7 = *(v0 + 16) + v5 + v6 * v2;
    __swift_project_boxed_opaque_existential_1((v7 + *(v98 + 20)), *(v7 + *(v98 + 20) + 24));
    sub_231368320();
    OUTLINED_FUNCTION_3_7();
    v9 = v9 && v8 == v1;
    if (v9)
    {
    }

    else
    {
      v10 = sub_23136A900();

      if ((v10 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v11 = *(v0 + 176);
    sub_23120B41C(v7 + *(v98 + 24), v11);
    v12 = sub_231366E80();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
    v14 = *(v0 + 176);
    if (EnumTagSinglePayload == 1)
    {
      break;
    }

    v1 = sub_231366E60();
    (*(*(v12 - 8) + 8))(v14, v12);
    if (v1)
    {
      goto LABEL_15;
    }

LABEL_12:
    ++v2;
    OUTLINED_FUNCTION_1_10();
  }

  sub_23120B48C(*(v0 + 176));
LABEL_15:
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v17 = sub_2313677F0();
  if (v17 != 2 && (v17 & 1) != 0)
  {
    v18 = *(v0 + 152);
    v19 = *(v0 + 112);
    v93 = *(v0 + 160);
    v95 = *(v0 + 120);
    v20 = *(v0 + 104);
    v89 = *(v0 + 96);
    v21 = *(v0 + 88);
    v22 = *(v0 + 72);
    v91 = *(v0 + 64);
    sub_2311E1984(v7, v18);
    (*(v20 + 16))(v19, v7, v89);
    v23 = *(v22 + 104);
    v1 = v22 + 104;
    v23(v21, *MEMORY[0x277D60720], v91);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v91);
    sub_2313672A0();
    sub_2311CF324(v18 + *(v98 + 20), v93 + *(v98 + 20));
    sub_23120B41C(v18 + *(v98 + 24), v93 + *(v98 + 24));
    v24 = *(v95 + 28);
    sub_231369050();
    OUTLINED_FUNCTION_11();
    (*(v25 + 16))(v93 + v24, v18 + v24);
    sub_2311E1928(v18);
    sub_23126DA48(0, 1, 1, MEMORY[0x277D84F90]);
    v16 = v26;
    v28 = *(v26 + 16);
    v27 = *(v26 + 24);
    v29 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      goto LABEL_55;
    }

    goto LABEL_18;
  }

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  v79 = 1;
  OUTLINED_FUNCTION_1_10();
LABEL_20:
  v99[0] = *(v0 + 16);
  sub_231369EE0();
  sub_23120A608(v99);
  v6 = *(v99[0] + 16);
  if (v6)
  {
    v90 = *(v0 + 120);
    v31 = *(v0 + 72);
    v32 = *(v0 + 48);
    v78 = *(v0 + 32);
    v88 = *(v0 + 24);
    v87 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v33 = v99[0] + v87;
    v28 = *(v3 + 72);
    v85 = (v32 + 88);
    v84 = *MEMORY[0x277D60AC0];
    v75 = (v32 + 96);
    v76 = (v32 + 8);
    v74 = *MEMORY[0x277D60DB8];
    v73 = *MEMORY[0x277D60720];
    v83 = (v31 + 104);
    v81 = (v31 + 16);
    v82 = (*(v0 + 104) + 16);
    v80 = (v31 + 8);
    v77 = *MEMORY[0x277D60728];
    v86 = v28;
    while (1)
    {
      v34 = *(v0 + 144);
      sub_2311E1984(v33, v34);
      __swift_project_boxed_opaque_existential_1((v34 + *(v98 + 20)), *(v34 + *(v98 + 20) + 24));
      sub_231368320();
      OUTLINED_FUNCTION_3_7();
      if (v9 && v35 == v1)
      {
      }

      else
      {
        v37 = sub_23136A900();

        if ((v37 & 1) == 0)
        {
          v38 = *(v0 + 168);
          sub_23120B41C(*(v0 + 144) + *(v98 + 24), v38);
          v5 = sub_231366E80();
          v39 = __swift_getEnumTagSinglePayload(v38, 1, v5);
          v29 = *(v0 + 168);
          v92 = v6;
          if (v39 == 1)
          {
            sub_23120B48C(v29);
LABEL_31:
            if (__OFADD__(v15++, 1))
            {
              __break(1u);
LABEL_55:
              OUTLINED_FUNCTION_4_5(v27);
              v16 = v72;
LABEL_18:
              OUTLINED_FUNCTION_1_10();
              v30 = *(v0 + 160);
              *(v16 + 16) = v29;
              sub_2311E18C4(v30, v16 + v5 + v28 * v6);
              v79 = 0;
              v15 = 1;
              goto LABEL_20;
            }
          }

          else
          {
            v1 = sub_231366E60();
            (*(*(v5 - 8) + 8))(v29, v5);
            if (v1)
            {
              goto LABEL_31;
            }
          }

          v41 = *(v0 + 56);
          v42 = *(v0 + 40);
          __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(v88 + 24));
          sub_2313677D0();
          v43 = (*v85)(v41, v42);
          v44 = *(v0 + 56);
          v45 = *(v0 + 40);
          v94 = v15;
          v96 = v16;
          if (v43 != v84)
          {
            (*v76)(v44, v45);
            v52 = *v83;
            goto LABEL_39;
          }

          (*v75)(v44, v45);
          v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
          v47 = sub_2313681A0();
          v48 = *(v47 - 8);
          v49 = (*(v48 + 88))(v44, v47);
          sub_231368210();
          OUTLINED_FUNCTION_11();
          (*(v50 + 8))(v44 + v46);
          (*(v48 + 8))(v44, v47);
          if (v49 == v74)
          {
            v51 = v79;
          }

          else
          {
            v51 = 1;
          }

          v52 = *v83;
          if (v51)
          {
            v15 = v94;
LABEL_39:
            v53 = *(v0 + 80);
            v54 = *(v0 + 64);
            if (*(v78 + 32) >= v15)
            {
              v55 = v73;
LABEL_43:
              v52(v53, v55, v54);
              v57 = *(v0 + 144);
              v56 = *(v0 + 152);
              v58 = *(v0 + 136);
              v1 = *(v0 + 112);
              v59 = *(v0 + 88);
              v60 = *(v0 + 96);
              v61 = *(v0 + 80);
              v62 = *(v0 + 64);
              sub_2311E1984(v57, v56);
              (*v82)(v1, v57, v60);
              (*v81)(v59, v61, v62);
              __swift_storeEnumTagSinglePayload(v59, 0, 1, v62);
              sub_2313672A0();
              sub_2311CF324(v56 + *(v98 + 20), v58 + *(v98 + 20));
              sub_23120B41C(v56 + *(v98 + 24), v58 + *(v98 + 24));
              v63 = *(v90 + 28);
              sub_231369050();
              OUTLINED_FUNCTION_11();
              (*(v64 + 16))(v58 + v63, v56 + v63);
              sub_2311E1928(v56);
              v16 = v96;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_23126DA48(0, *(v96 + 16) + 1, 1, v96);
                v16 = v68;
              }

              OUTLINED_FUNCTION_1_10();
              v6 = v92;
              v15 = v94;
              v66 = *(v16 + 16);
              v65 = *(v16 + 24);
              if (v66 >= v65 >> 1)
              {
                OUTLINED_FUNCTION_4_5(v65);
                v16 = v69;
              }

              v3 = *(v0 + 136);
              (*v80)(*(v0 + 80), *(v0 + 64));
              *(v16 + 16) = v66 + 1;
              v67 = v16 + v87 + v66 * v86;
              v28 = v86;
              sub_2311E18C4(v3, v67);
              goto LABEL_48;
            }
          }

          else
          {
            v53 = *(v0 + 80);
            v54 = *(v0 + 64);
          }

          v55 = v77;
          goto LABEL_43;
        }
      }

LABEL_48:
      sub_2311E1928(*(v0 + 144));
      v33 += v28;
      if (!--v6)
      {
        v97 = v16;
        goto LABEL_51;
      }
    }
  }

  v97 = v16;
LABEL_51:

  v70 = *(v0 + 8);

  return v70(v97);
}

uint64_t sub_23120B278(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23120B320;

  return sub_23120A6B0(a1, a2);
}

uint64_t sub_23120B320(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_23120B41C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23120B48C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23120B4F4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23136A8A0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for RankedCandidateSuggestion(0);
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for RankedCandidateSuggestion(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23120B82C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_23120B624(0, v2, 1, a1);
  }
}

void sub_23120B624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for RankedCandidateSuggestion(0);
  MEMORY[0x28223BE20](v35);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *(v14 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v34 = *a4;
    v28 = v17;
    v21 = v34 + v17 * a3;
    while (2)
    {
      v32 = v18;
      v33 = a3;
      v30 = v21;
      v31 = v20;
      v22 = v20;
      v23 = v18;
      do
      {
        sub_2311E1984(v21, v16);
        sub_2311E1984(v23, v12);
        v24 = sub_2313672C0();
        v25 = sub_2313672C0();
        sub_2311E1928(v12);
        sub_2311E1928(v16);
        if (v24 >= v25)
        {
          break;
        }

        if (!v34)
        {
          __break(1u);
          return;
        }

        sub_2311E18C4(v21, v9);
        swift_arrayInitWithTakeFrontToBack();
        sub_2311E18C4(v9, v23);
        v23 += v19;
        v21 += v19;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v33 + 1;
      v18 = v32 + v28;
      v20 = v31 - 1;
      v21 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }
}

void sub_23120B82C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v103 = a1;
  v117 = type metadata accessor for RankedCandidateSuggestion(0);
  v110 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v107 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v116 = &v101 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v101 - v11;
  MEMORY[0x28223BE20](v13);
  v18 = &v101 - v17;
  v112 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_101:
    v4 = *v103;
    if (!*v103)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v113;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_103:
      v114 = v21;
      v95 = (v21 + 16);
      for (i = *(v21 + 2); ; *v95 = i)
      {
        v21 = (i - 2);
        if (i < 2)
        {
          break;
        }

        if (!*v112)
        {
          goto LABEL_138;
        }

        v97 = &v114[16 * i];
        v98 = *v97;
        v99 = &v95[2 * i];
        v100 = *(v99 + 1);
        sub_23120C044(*v112 + *(v110 + 72) * *v97, *v112 + *(v110 + 72) * *v99, *v112 + *(v110 + 72) * v100, v4);
        if (v18)
        {
          break;
        }

        if (v100 < v98)
        {
          goto LABEL_126;
        }

        if (v21 >= *v95)
        {
          goto LABEL_127;
        }

        *v97 = v98;
        *(v97 + 1) = v100;
        v14 = *v95 - i;
        if (*v95 < i)
        {
          goto LABEL_128;
        }

        i = *v95 - 1;
        sub_2311E6448(v99 + 16, v14, v99);
      }

LABEL_99:

      return;
    }

LABEL_135:
    v21 = sub_2311E6430(v21, v14, v15, v16);
    goto LABEL_103;
  }

  v102 = a4;
  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v104 = v20;
    if (v20 + 1 < v19)
    {
      v114 = v21;
      v24 = *v112;
      v25 = *(v110 + 72);
      v4 = v20;
      v26 = *v112 + v25 * v23;
      sub_2311E1984(v26, v18);
      sub_2311E1984(v24 + v25 * v4, v12);
      v109 = sub_2313672C0();
      v108 = sub_2313672C0();
      sub_2311E1928(v12);
      sub_2311E1928(v18);
      v27 = (v4 + 2);
      v111 = v25;
      v28 = v24 + v25 * (v4 + 2);
      while (1)
      {
        v21 = v27;
        v29 = v23 + 1;
        if (v29 >= v19)
        {
          break;
        }

        v115 = v29;
        v30 = v19;
        v31 = v109 < v108;
        sub_2311E1984(v28, v18);
        sub_2311E1984(v26, v12);
        v4 = sub_2313672C0();
        v32 = sub_2313672C0();
        sub_2311E1928(v12);
        sub_2311E1928(v18);
        v33 = v31 ^ (v4 >= v32);
        v19 = v30;
        v23 = v115;
        v28 += v111;
        v26 += v111;
        v27 = v21 + 1;
        if ((v33 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v23 = v19;
LABEL_9:
      if (v109 < v108)
      {
        v22 = v104;
        if (v23 < v104)
        {
          goto LABEL_132;
        }

        if (v104 >= v23)
        {
          v21 = v114;
          goto LABEL_30;
        }

        if (v19 >= v21)
        {
          v34 = v21;
        }

        else
        {
          v34 = v19;
        }

        v35 = v111 * (v34 - 1);
        v4 = v111 * v34;
        v36 = v104;
        v37 = v104 * v111;
        v38 = v23;
        v115 = v23;
        do
        {
          if (v36 != --v38)
          {
            v39 = *v112;
            if (!*v112)
            {
              goto LABEL_139;
            }

            sub_2311E18C4(v39 + v37, v107);
            v40 = v37 < v35 || v39 + v37 >= (v39 + v4);
            if (v40)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v37 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_2311E18C4(v107, v39 + v35);
            v23 = v115;
          }

          ++v36;
          v35 -= v111;
          v4 -= v111;
          v37 += v111;
        }

        while (v36 < v38);
      }

      v21 = v114;
      v22 = v104;
    }

LABEL_30:
    v41 = v112[1];
    if (v23 < v41)
    {
      if (__OFSUB__(v23, v22))
      {
        goto LABEL_131;
      }

      if (v23 - v22 < v102)
      {
        break;
      }
    }

LABEL_47:
    if (v23 < v22)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23126DB78();
      v21 = v92;
    }

    v52 = *(v21 + 2);
    v53 = v52 + 1;
    if (v52 >= *(v21 + 3) >> 1)
    {
      sub_23126DB78();
      v21 = v93;
    }

    *(v21 + 2) = v53;
    v4 = (v21 + 32);
    v54 = &v21[16 * v52 + 32];
    *v54 = v104;
    *(v54 + 1) = v23;
    v111 = *v103;
    if (!v111)
    {
      goto LABEL_140;
    }

    v115 = v23;
    if (v52)
    {
      v114 = v21;
      while (1)
      {
        v55 = v53 - 1;
        v56 = (v4 + 16 * (v53 - 1));
        v57 = &v21[16 * v53];
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v58 = *(v21 + 4);
          v59 = *(v21 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_68:
          if (v61)
          {
            goto LABEL_117;
          }

          v73 = *v57;
          v72 = *(v57 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_120;
          }

          v77 = v56[1];
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_125;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v53 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v53 < 2)
        {
          goto LABEL_119;
        }

        v80 = *v57;
        v79 = *(v57 + 1);
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_83:
        if (v76)
        {
          goto LABEL_122;
        }

        v82 = *v56;
        v81 = v56[1];
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_124;
        }

        if (v83 < v75)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v55 - 1 >= v53)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v112)
        {
          goto LABEL_137;
        }

        v87 = v4 + 16 * (v55 - 1);
        v21 = *v87;
        v88 = v4 + 16 * v55;
        v89 = *(v88 + 8);
        v90 = v113;
        sub_23120C044(*v112 + *(v110 + 72) * *v87, *v112 + *(v110 + 72) * *v88, *v112 + *(v110 + 72) * v89, v111);
        v113 = v90;
        if (v90)
        {
          goto LABEL_99;
        }

        if (v89 < v21)
        {
          goto LABEL_112;
        }

        v91 = *(v114 + 2);
        if (v55 > v91)
        {
          goto LABEL_113;
        }

        *v87 = v21;
        *(v87 + 8) = v89;
        if (v55 >= v91)
        {
          goto LABEL_114;
        }

        v53 = v91 - 1;
        sub_2311E6448((v88 + 16), v91 - 1 - v55, (v4 + 16 * v55));
        v21 = v114;
        *(v114 + 2) = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_97;
        }
      }

      v62 = v4 + 16 * v53;
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_115;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_116;
      }

      v69 = *(v57 + 1);
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_118;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_121;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = v56[1];
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_129;
        }

        if (v60 < v86)
        {
          v55 = v53 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v19 = v112[1];
    v20 = v115;
    if (v115 >= v19)
    {
      goto LABEL_101;
    }
  }

  if (__OFADD__(v22, v102))
  {
    goto LABEL_133;
  }

  if (v22 + v102 >= v41)
  {
    v42 = v112[1];
  }

  else
  {
    v42 = v22 + v102;
  }

  if (v42 < v22)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v23 == v42)
  {
    goto LABEL_47;
  }

  v114 = v21;
  v43 = v23;
  v44 = *v112;
  v45 = *(v110 + 72);
  v46 = *v112 + v45 * (v43 - 1);
  v47 = -v45;
  v48 = v22 - v43;
  v115 = v43;
  v105 = v45;
  v106 = v42;
  v4 = v44 + v43 * v45;
LABEL_40:
  v108 = v4;
  v109 = v48;
  v111 = v46;
  while (1)
  {
    sub_2311E1984(v4, v18);
    sub_2311E1984(v46, v12);
    v49 = sub_2313672C0();
    v50 = sub_2313672C0();
    sub_2311E1928(v12);
    sub_2311E1928(v18);
    if (v49 >= v50)
    {
LABEL_45:
      v46 = v111 + v105;
      v48 = v109 - 1;
      v4 = v108 + v105;
      if (++v115 == v106)
      {
        v23 = v106;
        v21 = v114;
        v22 = v104;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v44)
    {
      break;
    }

    v51 = v116;
    sub_2311E18C4(v4, v116);
    swift_arrayInitWithTakeFrontToBack();
    sub_2311E18C4(v51, v46);
    v46 += v47;
    v4 += v47;
    v40 = __CFADD__(v48++, 1);
    if (v40)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_23120C044(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = type metadata accessor for RankedCandidateSuggestion(0);
  MEMORY[0x28223BE20](v53);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v18 = v14 / v13;
  v57 = a1;
  v56 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    v51 = a1;
    sub_23126F660(a2, v16 / v13, a4);
    v27 = a4 + v19 * v13;
    v28 = -v13;
    v29 = v27;
    v49 = -v13;
LABEL_36:
    v52 = a2;
    v30 = a2 + v28;
    v47 = v29;
    v31 = v29;
    v50 = a2 + v28;
    while (1)
    {
      if (v27 <= a4)
      {
        v57 = v52;
        v55 = v31;
        goto LABEL_58;
      }

      if (v52 <= v51)
      {
        break;
      }

      v48 = v31;
      v32 = a4;
      v33 = a3 + v28;
      v34 = v27 + v28;
      v35 = v27;
      sub_2311E1984(v27 + v28, v11);
      v36 = v11;
      v37 = v54;
      sub_2311E1984(v30, v54);
      v38 = sub_2313672C0();
      v39 = sub_2313672C0();
      v40 = v37;
      v11 = v36;
      sub_2311E1928(v40);
      sub_2311E1928(v36);
      if (v38 < v39)
      {
        v42 = a3 < v52 || v33 >= v52;
        a4 = v32;
        if (v42)
        {
          v43 = v50;
          swift_arrayInitWithTakeFrontToBack();
          a3 = v33;
          a2 = v43;
          v29 = v48;
          v28 = v49;
          v27 = v35;
        }

        else
        {
          v28 = v49;
          v29 = v48;
          v15 = a3 == v52;
          v44 = v50;
          a3 = v33;
          a2 = v50;
          v27 = v35;
          if (!v15)
          {
            v45 = v48;
            swift_arrayInitWithTakeBackToFront();
            v27 = v35;
            a2 = v44;
            v29 = v45;
          }
        }

        goto LABEL_36;
      }

      v41 = a3 < v35 || v33 >= v35;
      a4 = v32;
      if (v41)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v33;
        v27 = v34;
        v31 = v34;
        v28 = v49;
        v30 = v50;
      }

      else
      {
        v31 = v34;
        v15 = v35 == a3;
        a3 = v33;
        v27 = v34;
        v28 = v49;
        v30 = v50;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v33;
          v27 = v34;
          v31 = v34;
        }
      }
    }

    v57 = v52;
    v55 = v47;
  }

  else
  {
    sub_23126F660(a1, v14 / v13, a4);
    v52 = a4 + v18 * v13;
    v55 = v52;
    while (a4 < v52 && a2 < a3)
    {
      sub_2311E1984(a2, v11);
      v21 = a2;
      v22 = v54;
      sub_2311E1984(a4, v54);
      v23 = sub_2313672C0();
      v24 = sub_2313672C0();
      sub_2311E1928(v22);
      sub_2311E1928(v11);
      if (v23 >= v24)
      {
        if (a1 < a4 || a1 >= a4 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v21;
        }

        else
        {
          a2 = v21;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v56 = a4 + v13;
        a4 += v13;
      }

      else
      {
        a2 = v21 + v13;
        if (a1 < v21 || a1 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      a1 += v13;
      v57 = a1;
    }
  }

LABEL_58:
  sub_23120C514(&v57, &v56, &v55, type metadata accessor for RankedCandidateSuggestion);
}

void sub_23120C514(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  OUTLINED_FUNCTION_11();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_6_5();
  v11 = !v11 || v4 >= v10;
  if (v11)
  {
    OUTLINED_FUNCTION_27();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    OUTLINED_FUNCTION_27();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_23120C5F0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_11();
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_6_5();
  v12 = !v12 || v5 >= v11;
  if (v12)
  {
    OUTLINED_FUNCTION_27();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {
    OUTLINED_FUNCTION_27();

    swift_arrayInitWithTakeBackToFront();
  }
}

BOOL sub_23120C6CC(uint64_t a1)
{
  v2 = sub_231366E80();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = *(a1 + 16);
  do
  {
    v9 = v7;
    if (v8 == v7)
    {
      break;
    }

    (*(v3 + 16))(v6, a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v7++, v2, v4);
    v10 = sub_231366E60();
    (*(v3 + 8))(v6, v2);
  }

  while ((v10 & 1) != 0);
  return v8 == v9;
}

void *sub_23120C804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t sub_23120C818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  sub_23132BA7C(sub_23120C9F8, v6, v4);
  (*(v3 + 24))();
  sub_231369EE0();
  return sub_231366E50();
}

uint64_t sub_23120C8C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  return (*(v8 + 8))(a2, a3, a4, v7, v8);
}

void *sub_23120C950()
{

  return v0;
}

uint64_t sub_23120C980()
{
  sub_23120C950();

  return swift_deallocClassInstance();
}

uint64_t sub_23120CA1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437A0, &qword_23136DB10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23136B670;
  v1 = sub_231367D20();
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_23120DCA0(&qword_280F7CA60, 255, MEMORY[0x277D60B68], MEMORY[0x277D60B60]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 32));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60B58], v1);
  return v0;
}

uint64_t sub_23120CAF8()
{
  v1[3] = v0;
  v2 = sub_2313698C0();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23120CBDC, 0, 0);
}

uint64_t sub_23120CBDC(uint64_t a1)
{
  sub_231369150();
  v2 = sub_2313698A0();
  v3 = sub_23136A390();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2311CB000, v2, v3, "AppViewEntitySignalExtractor:: Fetching view entities...", v4, 2u);
    OUTLINED_FUNCTION_29();
  }

  v5 = v1[9];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[3];

  v9 = *(v7 + 8);
  v1[10] = v9;
  v9(v5, v6);
  __swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
  v10 = swift_task_alloc();
  v1[11] = v10;
  *v10 = v1;
  v10[1] = sub_23120CD2C;

  return sub_231242440();
}

uint64_t sub_23120CD2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_23120D388;
  }

  else
  {
    v4 = sub_23120CE40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_23120CE40()
{
  v60 = v0;
  v1 = sub_23125D7A0();
  if (v1)
  {
    v2 = v1;
    v59 = MEMORY[0x277D84F90];
    sub_23136A6C0();
    if (v2 < 0)
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v3 = 0;
    v4 = v0[12];
    v5 = v4 & 0xC000000000000001;
    v6 = v4 + 32;
    do
    {
      if (v5)
      {
        v7 = MEMORY[0x23192AD10](v3, v0[12]);
      }

      else
      {
        v7 = *(v6 + 8 * v3);
      }

      v8 = v7;
      ++v3;
      v9 = [v7 identifier];

      sub_23136A6A0();
      sub_23136A6D0();
      sub_23136A6E0();
      sub_23136A6B0();
    }

    while (v2 != v3);

    v10 = v59;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  sub_231369150();
  sub_231369EE0();
  v11 = sub_2313698A0();
  v12 = sub_23136A3A0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v58 = v14;
    *v13 = 136315138;
    v15 = sub_23125D7A0();
    v16 = MEMORY[0x277D84F90];
    log = v11;
    v56 = v12;
    v54 = v14;
    buf = v13;
    if (v15)
    {
      v17 = v15;
      v59 = MEMORY[0x277D84F90];
      sub_2311F4E34(0);
      if (v17 < 0)
      {
LABEL_42:
        __break(1u);
        return;
      }

      v18 = 0;
      v16 = v59;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x23192AD10](v18, v10);
        }

        else
        {
          v19 = *(v10 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = [v19 description];
        v22 = sub_231369FD0();
        v24 = v23;

        v59 = v16;
        v26 = *(v16 + 16);
        v25 = *(v16 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_2311F4E34(v25 > 1);
          v16 = v59;
        }

        ++v18;
        *(v16 + 16) = v26 + 1;
        v27 = v16 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
      }

      while (v17 != v18);
    }

    v28 = v0[10];
    v33 = v0[7];
    v34 = v0[4];
    v35 = MEMORY[0x23192A860](v16, MEMORY[0x277D837D0]);
    v37 = v36;

    v38 = sub_2311CFD58(v35, v37, &v58);

    *(buf + 4) = v38;
    _os_log_impl(&dword_2311CB000, log, v56, "AppViewEntitySignalExtractor:: Fetched view entities: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v31 = v33;
    v32 = v34;
  }

  else
  {
    v28 = v0[10];
    v29 = v0[7];
    v30 = v0[4];

    v31 = v29;
    v32 = v30;
  }

  v28(v31, v32);
  v39 = (*(v0[3] + 56))(v10);
  if (v39)
  {
    v40 = v39;
    v41 = sub_23125D7A0();
    if (v41)
    {
      v42 = v41;
      v59 = MEMORY[0x277D84F90];
      sub_23136A6C0();
      if ((v42 & 0x8000000000000000) == 0)
      {
        v43 = 0;
        do
        {
          if ((v40 & 0xC000000000000001) != 0)
          {
            v44 = MEMORY[0x23192AD10](v43, v40);
          }

          else
          {
            v44 = *(v40 + 8 * v43 + 32);
          }

          ++v43;
          sub_23120D58C(v44, v10);

          sub_23136A6A0();
          sub_23136A6D0();
          sub_23136A6E0();
          sub_23136A6B0();
        }

        while (v42 != v43);

        v45 = v59;
        goto LABEL_37;
      }

      goto LABEL_41;
    }
  }

  else
  {

    sub_231369150();
    v46 = sub_2313698A0();
    v47 = sub_23136A3A0();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v0[10];
    v50 = v0[6];
    v51 = v0[4];
    if (v48)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2311CB000, v46, v47, "AppViewEntitySignalExtractor:: No app view signal.", v52, 2u);
      OUTLINED_FUNCTION_29();
    }

    v49(v50, v51);
  }

  v45 = MEMORY[0x277D84F90];
LABEL_37:

  v53 = v0[1];

  v53(v45);
}

uint64_t sub_23120D388(uint64_t a1)
{
  v23 = v1;
  v2 = v1[13];
  sub_231369150();
  v3 = v2;
  v4 = sub_2313698A0();
  v5 = sub_23136A3B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[13];
    v20 = v1[8];
    v21 = v1[10];
    v7 = v1[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v1[2] = v6;
    v10 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
    v11 = sub_23136A010();
    v13 = sub_2311CFD58(v11, v12, &v22);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2311CB000, v4, v5, "Unable to fetch app view signals. %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v21(v20, v7);
  }

  else
  {
    v6 = v1[13];
    v14 = v1[10];
    v15 = v1[8];
    v16 = v1[4];

    v14(v15, v16);
  }

  v17 = v1[1];
  v18 = MEMORY[0x277D84F90];

  return v17(v18);
}

void sub_23120D58C(uint64_t a1, uint64_t a2)
{
  v40 = sub_231367B50();
  v4 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_231367B80();
  MEMORY[0x28223BE20](v6 - 8);
  v35[2] = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2313698C0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369150();
  swift_bridgeObjectRetain_n();

  v12 = sub_2313698A0();
  v13 = sub_23136A3A0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v42 = v37;
    *v14 = 136315650;
    LODWORD(v36) = v13;
    sub_231369240();
    v38 = v8;
    __swift_project_boxed_opaque_existential_1(v41, v41[3]);
    v15 = sub_2313676C0();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    v18 = sub_2311CFD58(v15, v17, &v42);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = sub_231369250();
    v21 = sub_2311CFD58(v19, v20, &v42);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2048;
    v22 = sub_23125D7A0();

    *(v14 + 24) = v22;

    _os_log_impl(&dword_2311CB000, v12, v36, "Creating %s signal with value %s and %ld view entities", v14, 0x20u);
    v23 = v37;
    swift_arrayDestroy();
    MEMORY[0x23192B930](v23, -1, -1);
    MEMORY[0x23192B930](v14, -1, -1);

    (*(v9 + 8))(v11, v38);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v9 + 8))(v11, v8);
  }

  v24 = sub_23125D7A0();
  if (!v24)
  {
LABEL_13:
    sub_231367B60();
    sub_2313692F0();
    swift_allocObject();

    sub_2313692B0();
    return;
  }

  v25 = v24;
  v41[0] = MEMORY[0x277D84F90];
  sub_2311F5C1C(0, v24 & ~(v24 >> 63), 0);
  if ((v25 & 0x8000000000000000) == 0)
  {
    v35[1] = a1;
    v26 = 0;
    v27 = v41[0];
    v36 = v4 + 32;
    v37 = a2 & 0xC000000000000001;
    v38 = a2;
    do
    {
      if (v37)
      {
        v28 = MEMORY[0x23192AD10](v26, a2);
      }

      else
      {
        v28 = *(a2 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = [v28 typeIdentifier];
      sub_231369FD0();

      v31 = [v29 instanceIdentifier];
      sub_231369FD0();

      v32 = v39;
      sub_231367B40();

      v41[0] = v27;
      v34 = *(v27 + 16);
      v33 = *(v27 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_2311F5C1C(v33 > 1, v34 + 1, 1);
        v27 = v41[0];
      }

      ++v26;
      *(v27 + 16) = v34 + 1;
      (*(v4 + 32))(v27 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v34, v32, v40);
      a2 = v38;
    }

    while (v25 != v26);
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_23120DA98()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_23120DB14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23120B320;

  return sub_23120CAF8();
}

void sub_23120DBA4(uint64_t a1, uint64_t a2)
{
  sub_23120DCA0(&qword_27DD43798, a2, type metadata accessor for AppViewEntitySignalExtractor, &unk_23136DAB0);

  JUMPOUT(0x2319284B0);
}

uint64_t sub_23120DCA0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_23120DCE8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t (*sub_23120DD0C(uint64_t a1, unint64_t a2, uint64_t a3))(void *)
{
  OUTLINED_FUNCTION_1_11(a1, a2, a3);
  if (v6)
  {
  }

  else
  {
    v7 = MEMORY[0x23192AD10](v5, v4);
  }

  *v3 = v7;
  return j__OUTLINED_FUNCTION_0_8;
}

void (*sub_23120DD78(uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  OUTLINED_FUNCTION_1_11(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x23192AD10](v5, v4);
  }

  *v3 = v7;
  return sub_23120DDE0;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_0_8(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_23120DEA4()
{
  sub_23136A650();
  MEMORY[0x23192A730](0xD00000000000001FLL, 0x800000023137CE80);
  v0 = sub_23136A250();
  sub_2311EB3FC(v0, v1, v2);
  sub_231369EF0();
  swift_getWitnessTable();
  sub_23136A8D0();
  OUTLINED_FUNCTION_10_6();
  return 0;
}

uint64_t sub_23120DF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_23120DFBC, 0, 0);
}

uint64_t sub_23120DFBC()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v9 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_23120E0EC;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];

  return v9(v7, v5, v6, v2, v3);
}

uint64_t sub_23120E0EC(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_23120E1EC, 0, 0);
}

uint64_t sub_23120E1EC()
{
  v1 = *(v0 + 56);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433E0, &qword_23136C900);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_23136B670;
    *(v2 + 32) = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

void sub_23120E294()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v7 = *(v5 + 16);
  OUTLINED_FUNCTION_12_4();
  v7();
  type metadata accessor for JointProviderKeyExtractor();
  if (swift_dynamicCast())
  {
    v8 = v11[0];
    v11[0] = v3;
    swift_getMetatypeMetadata();
    sub_23136A010();
    MEMORY[0x23192A730](95, 0xE100000000000000);
    sub_2312108A0(v8 + 16, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43018, &qword_23136B8F0);
    v9 = sub_23136A010();
    MEMORY[0x23192A730](v9);

    MEMORY[0x23192A730](95, 0xE100000000000000);
    sub_2312108A0(v8 + 56, v11);
    v10 = sub_23136A010();
    MEMORY[0x23192A730](v10);

    v12 = v3;
    v13 = v1;
    __swift_allocate_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_12_4();
    v7();
    OUTLINED_FUNCTION_15_5();
    sub_2312C4F70();
    swift_endAccess();
  }

  else
  {
    v11[0] = v3;
    swift_getMetatypeMetadata();
    sub_23136A010();
    v12 = v3;
    v13 = v1;
    __swift_allocate_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_12_4();
    v7();
    OUTLINED_FUNCTION_15_5();
    sub_2312C4F70();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_9_0();
}

void sub_23120E4BC()
{
  OUTLINED_FUNCTION_11_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v10 = v9 - v8;
  switch(v1 >> 61)
  {
    case 1uLL:
      v11 = type metadata accessor for PerSuggestionProviderKeyExtractor();
      inited = swift_initStaticObject();
      v13 = &off_2845F7C38;
      goto LABEL_9;
    case 2uLL:
      v11 = type metadata accessor for PerLoggingIdProviderKeyExtractor();
      inited = swift_initStaticObject();
      v13 = &off_2845F5A38;
      goto LABEL_9;
    case 3uLL:
      v11 = type metadata accessor for ChannelProviderKeyExtractor();
      inited = swift_initStaticObject();
      v13 = &off_2845F6290;
      goto LABEL_9;
    case 4uLL:
      v11 = type metadata accessor for DeliveryVehicleProviderKeyExtractor();
      inited = swift_initStaticObject();
      v13 = &off_2845F5860;
      goto LABEL_9;
    case 5uLL:
      v11 = type metadata accessor for SourceOwnedProviderKeyExtractor();
      inited = swift_initStaticObject();
      v13 = &off_2845F6350;
      goto LABEL_9;
    case 6uLL:
      sub_2313690F0();

      v14 = sub_2313698A0();
      v15 = sub_23136A3B0();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v21 = v17;
        *v16 = 136315138;
        sub_23120EB78();
        v20 = sub_2311CFD58(v18, v19, &v21);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_2311CB000, v14, v15, "Unable to add key extractor of type %s as it has no extractor registered", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_29();
      }

      (*(v6 + 8))(v10, v4);
      *(v3 + 32) = 0;
      *v3 = 0u;
      *(v3 + 16) = 0u;
      goto LABEL_10;
    case 7uLL:
      v11 = type metadata accessor for GlobalKeyExtractor();
      inited = swift_initStaticObject();
      v13 = &off_2845F5A28;
      goto LABEL_9;
    default:
      v11 = type metadata accessor for InvocationTypeProviderKeyExtractor();
      inited = swift_initStaticObject();
      v13 = &off_2845F6E50;
LABEL_9:
      *(v3 + 24) = v11;
      *(v3 + 32) = v13;
      *v3 = inited;
LABEL_10:
      OUTLINED_FUNCTION_9_0();
      return;
  }
}

void *sub_23120E774()
{

  sub_2311D8D2C(*(v0 + 160), *(v0 + 168));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_23120E7BC()
{
  sub_23120E774();

  return MEMORY[0x282200960](v0);
}

void *sub_23120E7E8()
{

  sub_2311D8D2C(*(v0 + 64), *(v0 + 72));
  return v0;
}

uint64_t sub_23120E828()
{
  sub_23120E7E8();

  return swift_deallocClassInstance();
}

uint64_t sub_23120E900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23120B320;

  return v13(a1, a2, a3, a4, a5);
}