uint64_t sub_265D46028@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a2 + qword_265D5E5C0[a1]);
  v4 = *(a2 + qword_265D5E5E8[a1]);
  *a3 = *(a2 + qword_265D5E598[a1]);
  a3[1] = v3;
  a3[2] = v4;
  return swift_unknownObjectRetain();
}

double sub_265D4607C(unsigned __int8 a1)
{
  v3 = sub_265D59DE0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = v1;
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA88, &unk_265D5E588);
  sub_265D58CA0();
  if ((v24 & 1) == 0)
  {
    return v23;
  }

  sub_265D595F0();
  v7 = sub_265D59DD0();
  v8 = sub_265D5A070();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = *&v10;
    v11 = 0xEB00000000656369;
    v12 = 0x7665446C61636F6CLL;
    *v9 = 136446210;
    v13 = 0x8000000265D5FC00;
    v14 = 0x8000000265D5FC20;
    v15 = 0xD000000000000018;
    if (a1 != 3)
    {
      v15 = 0xD000000000000010;
      v14 = 0x8000000265D5FC40;
    }

    if (a1 == 2)
    {
      v15 = 0xD000000000000014;
    }

    else
    {
      v13 = v14;
    }

    if (a1)
    {
      v12 = 0xD000000000000016;
      v11 = 0x8000000265D5FBE0;
    }

    if (a1 <= 1u)
    {
      v16 = v12;
    }

    else
    {
      v16 = v15;
    }

    if (a1 <= 1u)
    {
      v17 = v11;
    }

    else
    {
      v17 = v13;
    }

    v18 = sub_265CF4FFC(v16, v17, &v23);

    *(v9 + 4) = v18;
    _os_log_impl(&dword_265C01000, v7, v8, "No offset set for update source: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  return 0.0;
}

uint64_t sub_265D46328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 176);
  if (*(v6 + 16) && (v7 = sub_265CE2900(a2), (v8 & 1) != 0))
  {
    v9 = 0;
    v10 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  *a3 = v10;
  *(a3 + 8) = v9;
  return swift_endAccess();
}

uint64_t sub_265D46630()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E810, &qword_265D5D278);
  sub_265D58CA0();
  return v1;
}

uint64_t sub_265D466AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E810, &qword_265D5D278);
  sub_265D58CA0();
  return v1;
}

uint64_t sub_265D46720()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA70, &unk_265D5E560);
  sub_265D58CA0();
  return v1;
}

void *sub_265D467C0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3B0, &qword_265D5B8E0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E3B8, &qword_265D5DDA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_265D468F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E818, &qword_265D5D280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_265D46A00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DDE0, &unk_265D5AF90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_265D46B34(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_265D46D10(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA78, &unk_265D5E570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E800, &qword_265D5B5A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_265D46E58@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  *a1 = *(v1 + 144);
  *(a1 + 16) = v2;
  return swift_unknownObjectRetain();
}

uint64_t sub_265D46E84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA70, &unk_265D5E560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265D46FA4(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_265D58AC0();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D470C0, 0, 0);
}

uint64_t sub_265D470C0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_265D59450();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for MindfulMinutesAccumulator(0);
    v4 = sub_265D4B940(&qword_28003EAB0, type metadata accessor for MindfulMinutesAccumulator, &unk_265D5E7A0);
    *v2 = v0;
    v2[1] = sub_265D47230;
    v5 = v0[16];

    return MEMORY[0x2821AE8D8](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_265D47230()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265D47418, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_265D47418(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 152);
  sub_265D595F0();
  v3 = v2;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 152);
    v7 = *(v1 + 96);
    v19 = *(v1 + 104);
    v8 = *(v1 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x2667704D0](*(v1 + 48), *(v1 + 56));
    v13 = sub_265CF4FFC(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_265C01000, v4, v5, "MindfulMinutesAccumulator - Failed to start session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 96);
    v14 = *(v1 + 104);
    v16 = *(v1 + 88);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_265D47600(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_265D58AC0();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D4771C, 0, 0);
}

uint64_t sub_265D4771C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_265D59020();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for MindfulMinutesAccumulator(0);
    v4 = sub_265D4B940(&qword_28003EAB0, type metadata accessor for MindfulMinutesAccumulator, &unk_265D5E7A0);
    *v2 = v0;
    v2[1] = sub_265D4788C;
    v5 = v0[16];

    return MEMORY[0x2821AE8C8](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_265D4788C()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265D47A74, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_265D47A74(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 152);
  sub_265D595F0();
  v3 = v2;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 152);
    v7 = *(v1 + 96);
    v19 = *(v1 + 104);
    v8 = *(v1 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x2667704D0](*(v1 + 48), *(v1 + 56));
    v13 = sub_265CF4FFC(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_265C01000, v4, v5, "MindfulMinutesAccumulator - Failed to end session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 96);
    v14 = *(v1 + 104);
    v16 = *(v1 + 88);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_265D47C5C(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_265D58130();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D47D78, 0, 0);
}

uint64_t sub_265D47D78()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_265D58E60();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for MindfulMinutesAccumulator(0);
    v4 = sub_265D4B940(&qword_28003EAB0, type metadata accessor for MindfulMinutesAccumulator, &unk_265D5E7A0);
    *v2 = v0;
    v2[1] = sub_265D47EE8;
    v5 = v0[16];

    return MEMORY[0x2821AE8D0](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_265D47EE8()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265D480D0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_265D480D0(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 152);
  sub_265D595F0();
  v3 = v2;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 152);
    v7 = *(v1 + 96);
    v19 = *(v1 + 104);
    v8 = *(v1 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x2667704D0](*(v1 + 48), *(v1 + 56));
    v13 = sub_265CF4FFC(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_265C01000, v4, v5, "MindfulMinutesAccumulator - Failed to update session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 96);
    v14 = *(v1 + 104);
    v16 = *(v1 + 88);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_265D482B8(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF20, &qword_265D5B140);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_265D57E30();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v2[14] = swift_task_alloc();
  v5 = sub_265D596E0();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v6 = sub_265D58AC0();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v7 = sub_265D59DE0();
  v2[21] = v7;
  v2[22] = *(v7 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D4852C, v1, 0);
}

uint64_t sub_265D4852C(uint64_t a1)
{
  v47 = v1;
  v3 = *(v1 + 152);
  v2 = *(v1 + 160);
  v4 = *(v1 + 144);
  v5 = *(v1 + 48);
  sub_265D595F0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_265D59DD0();
  v7 = sub_265D5A080();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v1 + 176);
  v9 = *(v1 + 184);
  v11 = *(v1 + 160);
  v12 = *(v1 + 168);
  v14 = *(v1 + 144);
  v13 = *(v1 + 152);
  if (v8)
  {
    v45 = *(v1 + 168);
    v15 = swift_slowAlloc();
    v43 = v7;
    v16 = swift_slowAlloc();
    v46 = v16;
    *v15 = 136315138;
    sub_265D4B940(&qword_28003E7E8, MEMORY[0x277D53AE0], MEMORY[0x277D53AF0]);
    v17 = sub_265D5A3B0();
    v44 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_265CF4FFC(v17, v19, &v46);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_265C01000, v6, v43, "MindfulMinutesAccumulator - starting %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266770CF0](v16, -1, -1);
    MEMORY[0x266770CF0](v15, -1, -1);

    (*(v10 + 8))(v44, v45);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v21 = *(v1 + 128);
  v22 = *(v1 + 136);
  v23 = *(v1 + 112);
  v24 = *(v1 + 120);
  sub_265D59390();
  swift_allocObject();
  v25 = sub_265D59380();
  (*(v21 + 104))(v22, *MEMORY[0x277D4F9B8], v24);
  sub_265D59710();
  swift_allocObject();
  v26 = sub_265D59700();
  sub_265D58AB0();
  v27 = sub_265D58BB0();
  v28 = *(v27 - 8);
  v29 = (*(v28 + 48))(v23, 1, v27);
  v30 = *(v1 + 112);
  if (v29 == 1)
  {
    sub_265CA4AE8(*(v1 + 112), &qword_28003E568, &unk_265D5C010);
  }

  else
  {
    v31 = sub_265D58BA0();
    (*(v28 + 8))(v30, v27);
    *(v1 + 196) = BYTE4(v31) & 1;
    *(v1 + 192) = v31;
    *(v1 + 200) = 0;
    *(v1 + 204) = 1;
    sub_265CEB2F0();
    sub_265CEB344();
    if (sub_265D57F90())
    {
      v32 = *(v1 + 96);
      v33 = *(v1 + 104);
      v34 = *(v1 + 88);
      *(v1 + 40) = v25;
      sub_265D57E20();
      sub_265D59440();
      (*(v32 + 8))(v33, v34);
      sub_265D596F0();
    }
  }

  v35 = v26;
  v37 = *(v1 + 72);
  v36 = *(v1 + 80);
  v39 = *(v1 + 56);
  v38 = *(v1 + 64);
  *v36 = sub_265D589C0();
  v36[1] = v25;
  v36[2] = v35;
  (*(v37 + 104))(v36, *MEMORY[0x277D4F250], v38);
  v40 = OBJC_IVAR____TtC22SeymourSessionServices25MindfulMinutesAccumulator_state;
  swift_beginAccess();
  (*(v37 + 40))(v39 + v40, v36, v38);
  swift_endAccess();

  v41 = *(v1 + 8);

  return v41();
}

uint64_t sub_265D489DC(char *a1, uint64_t a2, double a3)
{
  v66 = a2;
  v68 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v72 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v61 - v9;
  v71 = v11;
  MEMORY[0x28223BE20](v8);
  v13 = &v61 - v12;
  v14 = sub_265D59DE0();
  v74 = *(v14 - 8);
  v75 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v69 = &v61 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E980, &unk_265D5E880);
  MEMORY[0x28223BE20](v19 - 8);
  v20 = sub_265D581A0();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_265D588E0();
  v73 = *(v76 - 8);
  v24 = MEMORY[0x28223BE20](v76);
  v67 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v61 - v26;
  sub_265D58F50();
  if (v28 <= a3)
  {
    v62 = v7;
    v63 = v10;
    v64 = v13;
    v65 = v4;
    v66 = sub_265D59370();
    sub_265D589D0();
    v61 = v33;
    sub_265D58A10();
    sub_265D58160();
    (*(v21 + 8))(v23, v20);
    sub_265D58A20();
    sub_265D588D0();
    v34 = v69;
    sub_265D595F0();
    v35 = v67;
    (*(v73 + 16))(v67, v27, v76);
    v36 = sub_265D59DD0();
    v37 = sub_265D5A080();
    v38 = v27;
    if (os_log_type_enabled(v36, v37))
    {
      v39 = swift_slowAlloc();
      v68 = v27;
      v40 = v39;
      v41 = swift_slowAlloc();
      v77 = v41;
      *v40 = 141558274;
      *(v40 + 4) = 1752392040;
      *(v40 + 12) = 2080;
      sub_265D4B940(&qword_28003EAA8, MEMORY[0x277D538B8], MEMORY[0x277D538D0]);
      v42 = v35;
      v43 = v76;
      v44 = sub_265D5A3B0();
      v46 = v45;
      v73 = *(v73 + 8);
      (v73)(v42, v43);
      v47 = sub_265CF4FFC(v44, v46, &v77);

      *(v40 + 14) = v47;
      _os_log_impl(&dword_265C01000, v36, v37, "MindfulMinutesAccumulator - Adding mindful session - Adding mindful session job: %{mask.hash}s", v40, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x266770CF0](v41, -1, -1);
      v38 = v68;
      MEMORY[0x266770CF0](v40, -1, -1);
    }

    else
    {

      v73 = *(v73 + 8);
      (v73)(v35, v76);
    }

    (*(v74 + 8))(v34, v75);
    __swift_project_boxed_opaque_existential_1((v70 + 112), *(v70 + 136));
    v48 = v63;
    sub_265D58C00();
    v49 = swift_allocObject();
    *(v49 + 16) = sub_265D491C4;
    *(v49 + 24) = 0;
    v50 = v72;
    v51 = v62;
    v52 = v65;
    (*(v72 + 16))(v62, v48, v65);
    v53 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v54 = (v71 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    (*(v50 + 32))(v55 + v53, v51, v52);
    v56 = (v55 + v54);
    *v56 = sub_265D0F264;
    v56[1] = v49;
    v57 = v64;
    sub_265D58930();
    v58 = *(v50 + 8);
    v58(v48, v52);
    v59 = sub_265D58960();
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    v59(sub_265CA442C, v60);

    v58(v57, v52);
    return (v73)(v38, v76);
  }

  else
  {
    sub_265D595F0();
    v29 = sub_265D59DD0();
    v30 = sub_265D5A080();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      *(v31 + 4) = a3;
      _os_log_impl(&dword_265C01000, v29, v30, "MindfulMinutesAccumulator - not inserting mindful minutes because duration is too short (%f", v31, 0xCu);
      MEMORY[0x266770CF0](v31, -1, -1);
    }

    return (*(v74 + 8))(v17, v75);
  }
}

uint64_t sub_265D491C4(void *a1)
{
  v3 = sub_265D59DE0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595B0();
  v7 = a1;
  v8 = sub_265D59DD0();
  v9 = sub_265D5A070();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17[1] = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = MEMORY[0x2667704D0](v17[3], v17[4]);
    v15 = sub_265CF4FFC(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_265C01000, v8, v9, "MindfulMinutesAccumulator - Error adding standalone mindful session job: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266770CF0](v12, -1, -1);
    MEMORY[0x266770CF0](v11, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_265D493A0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC22SeymourSessionServices25MindfulMinutesAccumulator_lock;
  v2 = sub_265D59930();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22SeymourSessionServices25MindfulMinutesAccumulator_state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF20, &qword_265D5B140);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for MindfulMinutesAccumulator(uint64_t a1)
{
  result = qword_2813B7568;
  if (!qword_2813B7568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_265D494D0(uint64_t a1)
{
  sub_265D59930();
  if (v1 <= 0x3F)
  {
    sub_265D495D0();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_265D495D0()
{
  if (!qword_2813B8FD0)
  {
    v0 = sub_265D590F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813B8FD0);
    }
  }
}

uint64_t sub_265D49678@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices25MindfulMinutesAccumulator_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF20, &qword_265D5B140);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265D4970C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices25MindfulMinutesAccumulator_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF20, &qword_265D5B140);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_265D4980C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265C978E0;

  return sub_265D482B8(a1);
}

uint64_t sub_265D498A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for MindfulMinutesAccumulator(0);
  *v8 = v4;
  v8[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E0](a1, a2, v9, a4);
}

uint64_t sub_265D49968(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C96620;

  return sub_265D4B294(a1, v4, v5);
}

uint64_t sub_265D49A28(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C978E0;

  return sub_265D4AE64(a1, v4, v5);
}

uint64_t sub_265D49AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for MindfulMinutesAccumulator(0);
  *v8 = v4;
  v8[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_265D49BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for MindfulMinutesAccumulator(0);
  *v8 = v4;
  v8[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_265D49C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for MindfulMinutesAccumulator(0);
  *v6 = v3;
  v6[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D8](a1, v7, a3);
}

uint64_t sub_265D49D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for MindfulMinutesAccumulator(0);
  *v6 = v3;
  v6[1] = sub_265C978E0;

  return MEMORY[0x2821AE8C8](a1, v7, a3);
}

uint64_t sub_265D49DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for MindfulMinutesAccumulator(0);
  *v6 = v3;
  v6[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D0](a1, v7, a3);
}

uint64_t sub_265D49EA0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices25MindfulMinutesAccumulator_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265D49F28(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices25MindfulMinutesAccumulator_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

unint64_t sub_265D4A064()
{
  result = qword_28003EAA0;
  if (!qword_28003EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003EAA0);
  }

  return result;
}

uint64_t sub_265D4A0B8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = a1;
  sub_265D583A0();

  return sub_265D58930();
}

uint64_t sub_265D4A15C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = a1;

  return sub_265D58930();
}

uint64_t sub_265D4A200(void (*a1)(_BYTE *), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E218, &qword_265D5B598);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v18[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v18[-v15];
  a3(a5);
  swift_storeEnumTagMultiPayload();
  sub_265D4B8D0(v11, v14);
  sub_265D4B8D0(v14, v16);
  a1(v16);
  return sub_265CA4AE8(v16, &qword_28003E218, &qword_265D5B598);
}

void sub_265D4A374(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_265CA4470(v6, 0);
}

uint64_t sub_265D4A4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v13 = sub_265D58960();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a4;
  v14[5] = a5;

  v13(a9, v14);
}

uint64_t sub_265D4A560(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void))
{
  v23 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E210, &qword_265D5B590);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E218, &qword_265D5B598);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (&v22 - v15);
  sub_265D4B814(a1, &v22 - v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    a4(*v16);
    v18 = sub_265D58960();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = a3;

    v18(sub_265CA4008, v19);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v21 = sub_265D583A0();
    (*(*(v21 - 8) + 32))(v14, v16, v21);
    swift_storeEnumTagMultiPayload();
    v23(v14);
    return sub_265CA4AE8(v14, &qword_28003E218, &qword_265D5B598);
  }
}

uint64_t sub_265D4A7EC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  if (a2)
  {
    a5(a1);
    v14 = sub_265D58960();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;

    v14(sub_265CA4BF4, v15);

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v17 = a1;
    v18 = 0;
    return a3(&v17);
  }
}

uint64_t sub_265D4A978(uint64_t a1)
{
  v2 = sub_265D59DE0();
  v47 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265D581A0();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v46 = a1;
  sub_265D58A70();
  v13 = sub_265D58600();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v13) == 1)
  {
    sub_265CA4AE8(v12, &qword_28003E2F8, &qword_265D5B680);
    v16 = 0;
    goto LABEL_8;
  }

  v41 = v4;
  v42 = v2;
  v17 = sub_265D585E0();
  v19 = v18;
  v21 = v20;
  v40 = *(v14 + 8);
  v40(v12, v13);
  v50 = v17;
  v51 = v19;
  v52 = v21 & 1;
  v48 = xmmword_265D5B470;
  v49 = 1;
  sub_265CA48E8();
  sub_265CA493C();
  v22 = sub_265D57F90();
  sub_265C037E8(v50, v51, v52);
  if (v22)
  {
    sub_265D58A70();
    if (v15(v10, 1, v13) != 1)
    {
      v29 = sub_265D585F0();
      v31 = v30;
      v40(v10, v13);
      v50 = v29;
      LOBYTE(v51) = v31 & 1;
      *&v48 = 0;
      BYTE8(v48) = 1;
      sub_265CEB398();
      sub_265CEB3EC();
      v32 = sub_265D57F90();
      v2 = v42;
      if (v32)
      {
        v33 = v43;
        sub_265D58A10();
        v34 = sub_265D58190();
        v36 = v35;
        v38 = v37;
        (*(v44 + 8))(v33, v45);
        v50 = v34;
        v51 = v36;
        v39 = v38 & 1;
        v52 = v38 & 1;
        v48 = xmmword_265D5BC50;
        v49 = 1;
        sub_265CD4AAC();
        sub_265CD4B00();
        v16 = sub_265D57F90();
        sub_265C037E8(v34, v36, v39);
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_7;
    }

    sub_265CA4AE8(v10, &qword_28003E2F8, &qword_265D5B680);
  }

  v16 = 0;
  v2 = v42;
LABEL_7:
  v4 = v41;
LABEL_8:
  sub_265D595F0();
  v23 = sub_265D59DD0();
  v24 = sub_265D5A080();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v4;
    v26 = swift_slowAlloc();
    *v26 = 67109120;
    *(v26 + 4) = v16 & 1;
    _os_log_impl(&dword_265C01000, v23, v24, "MindfulMinutesAccumulator - shouldStartSession - %{BOOL}d", v26, 8u);
    v27 = v26;
    v4 = v25;
    MEMORY[0x266770CF0](v27, -1, -1);
  }

  (*(v47 + 8))(v4, v2);
  return v16 & 1;
}

uint64_t sub_265D4AE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a2;
  v4[6] = a3;
  v4[4] = a1;
  v5 = sub_265D57E30();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_265D59DE0();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D4AF90, v3, 0);
}

uint64_t sub_265D4AF90()
{
  v30 = v0;
  v1 = sub_265D58BA0();
  if ((v1 & 0x100000000) != 0)
  {
    v9 = v1;
    sub_265D595F0();
    v10 = sub_265D59DD0();
    v11 = sub_265D5A080();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[13];
    v15 = v0[10];
    v14 = v0[11];
    if (v12)
    {
      v28 = v0[13];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136315138;
      v18 = sub_265D58B90();
      v20 = sub_265CF4FFC(v18, v19, &v29);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_265C01000, v10, v11, "MindfulMinutesAccumulator - Updating workout state to: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x266770CF0](v17, -1, -1);
      MEMORY[0x266770CF0](v16, -1, -1);

      (*(v14 + 8))(v28, v15);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    v21 = (v9 - 1);
    v22 = v0[7];
    v23 = (v0[8] + 8);
    v24 = v0[9];
    v25 = v0[5];
    if (v21 > 2)
    {
      sub_265D596F0();
      v0[2] = v25;

      sub_265D57E20();
      sub_265D59390();
      sub_265D59440();
    }

    else
    {
      sub_265D596C0();
      v0[3] = v25;

      sub_265D57E20();
      sub_265D59390();
      sub_265D59430();
    }

    (*v23)(v24, v22);
  }

  else
  {
    sub_265D595F0();
    v2 = sub_265D59DD0();
    v3 = sub_265D5A070();
    v4 = os_log_type_enabled(v2, v3);
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[10];
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_265C01000, v2, v3, "Unknown Playback State.", v8, 2u);
      MEMORY[0x266770CF0](v8, -1, -1);
    }

    (*(v6 + 8))(v5, v7);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_265D4B294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF20, &qword_265D5B140);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_265D58AC0();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_265D59DE0();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D4B41C, v3, 0);
}

uint64_t sub_265D4B41C(uint64_t a1)
{
  v35 = v1;
  v3 = v1[13];
  v2 = v1[14];
  v4 = v1[12];
  v5 = v1[5];
  sub_265D595F0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_265D59DD0();
  v7 = sub_265D5A080();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[16];
  v9 = v1[17];
  v11 = v1[14];
  v12 = v1[15];
  v14 = v1[12];
  v13 = v1[13];
  if (v8)
  {
    v33 = v1[15];
    v15 = swift_slowAlloc();
    v31 = v7;
    v16 = swift_slowAlloc();
    v34 = v16;
    *v15 = 136315138;
    sub_265D4B940(&qword_28003E7E8, MEMORY[0x277D53AE0], MEMORY[0x277D53AF0]);
    v17 = sub_265D5A3B0();
    v32 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_265CF4FFC(v17, v19, &v34);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_265C01000, v6, v31, "MindfulMinutesAccumulator - Ending %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266770CF0](v16, -1, -1);
    MEMORY[0x266770CF0](v15, -1, -1);

    (*(v10 + 8))(v32, v33);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v22 = v1[10];
  v21 = v1[11];
  v23 = v1[8];
  v24 = v1[9];
  v25 = v1[6];
  v26 = v1[5];
  (*(v22 + 104))(v21, *MEMORY[0x277D4F258], v24);
  v27 = OBJC_IVAR____TtC22SeymourSessionServices25MindfulMinutesAccumulator_state;
  swift_beginAccess();
  (*(v22 + 40))(v23 + v27, v21, v24);
  swift_endAccess();
  sub_265D596D0();
  sub_265D489DC(v26, v25, v28);

  v29 = v1[1];

  return v29();
}

uint64_t sub_265D4B6F8(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_265D4A4A0(a1, a2, v2 + v6, *v7, v7[1], &unk_28003E1F0, &qword_265D5B8B0, &unk_287780318, sub_265D4B7E4);
}

uint64_t sub_265D4B814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E218, &qword_265D5B598);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_43Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265D4B8D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E218, &qword_265D5B598);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D4B940(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_265D4B9A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_265D4BE60(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_265D4B9D4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656369;
  v4 = 0x7665446C61636F6CLL;
  v5 = 0x8000000265D5FC00;
  v6 = 0x8000000265D5FC20;
  v7 = 0xD000000000000018;
  if (v2 != 3)
  {
    v7 = 0xD000000000000010;
    v6 = 0x8000000265D5FC40;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x8000000265D5FBE0;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_265D4BA8C()
{
  result = qword_2813B8948;
  if (!qword_2813B8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B8948);
  }

  return result;
}

unint64_t sub_265D4BAE0()
{
  v1 = *v0;
  v2 = 0x7665446C61636F6CLL;
  v3 = 0xD000000000000018;
  if (v1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0xD000000000000016;
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

uint64_t sub_265D4BB90()
{
  sub_265D5A460();
  sub_265D59EF0();

  return sub_265D5A4A0();
}

uint64_t sub_265D4BC88(uint64_t a1)
{
  sub_265D59EF0();
}

uint64_t sub_265D4BD6C(uint64_t a1)
{
  sub_265D5A460();
  sub_265D59EF0();

  return sub_265D5A4A0();
}

unint64_t sub_265D4BE60(uint64_t a1, uint64_t a2)
{
  v2 = sub_265D5A2F0();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_265D4BEAC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_265D4BEF0(uint64_t a1)
{
  v21 = a1;
  v22 = sub_265D59DE0();
  v1 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EAB8, &qword_265D5E990);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = [objc_allocWithZone(MEMORY[0x277CEF820]) init];
  v27 = sub_265D4C39C;
  v28 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_265D4BEAC;
  v26 = &block_descriptor_3;
  v9 = _Block_copy(&aBlock);
  [v8 setInvalidationHandler_];
  _Block_release(v9);
  v27 = sub_265D4C3C0;
  v28 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_265D4BEAC;
  v26 = &block_descriptor_3;
  v10 = _Block_copy(&aBlock);
  [v8 setInterruptionHandler_];
  _Block_release(v10);
  (*(v5 + 16))(v7, v21, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v7, v4);
  v27 = sub_265D4C81C;
  v28 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_265D4C8A8;
  v26 = &block_descriptor_6;
  v13 = _Block_copy(&aBlock);

  [v8 setAaDeviceRouteChangedHandler_];
  _Block_release(v13);
  *(swift_allocObject() + 16) = v8;
  v14 = v8;
  sub_265D59FB0();
  sub_265D595C0();
  v15 = sub_265D59DD0();
  v16 = sub_265D5A080();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_265C01000, v15, v16, "Activating AASystemStateMonitor...", v17, 2u);
    MEMORY[0x266770CF0](v17, -1, -1);
  }

  (*(v1 + 8))(v3, v22);
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  v27 = sub_265D4CDE0;
  v28 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_265C93674;
  v26 = &block_descriptor_15;
  v19 = _Block_copy(&aBlock);
  v20 = v14;

  [v20 activateWithCompletion_];
  _Block_release(v19);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265D4C3CC(const char *a1)
{
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595C0();
  v6 = sub_265D59DD0();
  v7 = sub_265D5A080();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_265C01000, v6, v7, a1, v8, 2u);
    MEMORY[0x266770CF0](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_265D4C508(int a1, void *a2, uint64_t a3)
{
  v25 = a3;
  v26 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EAC0, &qword_265D5E998);
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v23 - v5;
  v7 = sub_265D59DE0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  sub_265D595C0();
  v14 = sub_265D59DD0();
  v15 = sub_265D5A080();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = v26 & 1;
    _os_log_impl(&dword_265C01000, v14, v15, "AADevice routed -- %{BOOL}d", v16, 8u);
    MEMORY[0x266770CF0](v16, -1, -1);
  }

  v17 = *(v8 + 8);
  v17(v13, v7);
  if (a2)
  {
    v18 = [a2 heartRateMonitorCapability] == 2;
  }

  else
  {
    v18 = 0;
  }

  sub_265D595C0();
  v19 = sub_265D59DD0();
  v20 = sub_265D5A080();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = v18;
    _os_log_impl(&dword_265C01000, v19, v20, "AADevice is HRM capable? -- %{BOOL}d", v21, 8u);
    MEMORY[0x266770CF0](v21, -1, -1);
  }

  v17(v11, v7);
  v27 = v26 & v18 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EAB8, &qword_265D5E990);
  sub_265D59FC0();
  return (*(v4 + 8))(v6, v24);
}

uint64_t sub_265D4C81C(int a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EAB8, &qword_265D5E990) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_265D4C508(a1, a2, v6);
}

void sub_265D4C8A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_265D4C920(uint64_t a1, void *a2)
{
  v3 = sub_265D59DE0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595C0();
  v7 = sub_265D59DD0();
  v8 = sub_265D5A080();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_265C01000, v7, v8, "Heart rate device routed stream cancelled...", v9, 2u);
    MEMORY[0x266770CF0](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  return [a2 invalidate];
}

void sub_265D4CA78(void *a1, void *a2)
{
  v4 = sub_265D59DE0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v34 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  if (a1)
  {
    v14 = a1;
    sub_265D595C0();
    v15 = a1;
    v16 = sub_265D59DD0();
    v17 = sub_265D5A080();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v36 = v5;
      v19 = v18;
      v20 = swift_slowAlloc();
      v35 = a2;
      v21 = v20;
      v39 = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v22 = MEMORY[0x2667704D0](v37, v38);
      v24 = sub_265CF4FFC(v22, v23, &v39);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_265C01000, v16, v17, "Failed to activate AASystemStateMonitor: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      v25 = v21;
      a2 = v35;
      MEMORY[0x266770CF0](v25, -1, -1);
      v26 = v19;
      v5 = v36;
      MEMORY[0x266770CF0](v26, -1, -1);
    }

    v27 = *(v5 + 8);
    v27(v11, v4);
    sub_265D595C0();
    v28 = sub_265D59DD0();
    v29 = sub_265D5A080();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_265C01000, v28, v29, "Invalidating AASystemStateMonitor...", v30, 2u);
      MEMORY[0x266770CF0](v30, -1, -1);
    }

    v27(v8, v4);
    [a2 invalidate];
  }

  else
  {
    sub_265D595C0();
    v31 = sub_265D59DD0();
    v32 = sub_265D5A080();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_265C01000, v31, v32, "AASystemStateMonitor activated.", v33, 2u);
      MEMORY[0x266770CF0](v33, -1, -1);
    }

    (*(v5 + 8))(v13, v4);
  }
}

uint64_t Platform.appRequirementNotificationName(for:)(unsigned __int8 a1, char a2)
{
  if (a2 != 2)
  {
    return 0;
  }

  sub_265D59420();
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return sub_265D593E0();
    }

    else
    {
      return sub_265D593F0();
    }
  }

  else if (a1)
  {
    return sub_265D59410();
  }

  else
  {
    return sub_265D59400();
  }
}

uint64_t sub_265D4CE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_265C97870(a3, v25 - v10, &qword_28003E530, &qword_265D5BF68);
  v12 = sub_265D59FA0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_265CA4AE8(v11, &qword_28003E530, &qword_265D5BF68);
  }

  else
  {
    sub_265D59F90();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_265D59F50();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_265D59EE0() + 32;
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

      sub_265CA4AE8(a3, &qword_28003E530, &qword_265D5BF68);

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

  sub_265CA4AE8(a3, &qword_28003E530, &qword_265D5BF68);
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

uint64_t sub_265D4D17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_265C97870(a3, v25 - v10, &qword_28003E530, &qword_265D5BF68);
  v12 = sub_265D59FA0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_265CA4AE8(v11, &qword_28003E530, &qword_265D5BF68);
  }

  else
  {
    sub_265D59F90();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_265D59F50();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_265D59EE0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EAE8, &qword_265D5EC28);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_265CA4AE8(a3, &qword_28003E530, &qword_265D5BF68);

      return v22;
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

  sub_265CA4AE8(a3, &qword_28003E530, &qword_265D5BF68);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EAE8, &qword_265D5EC28);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_265D4D49C(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_265D58AC0();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D4D5B8, 0, 0);
}

uint64_t sub_265D4D5B8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_265D58F20();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for SessionAppTerminationMonitor(0);
    v4 = sub_265D51BBC(&qword_28003EAF0, type metadata accessor for SessionAppTerminationMonitor, &unk_265D5EB08);
    *v2 = v0;
    v2[1] = sub_265D4D728;
    v5 = v0[16];

    return MEMORY[0x2821AE8D8](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_265D4D728()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265D4D910, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_265D4D910(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 152);
  sub_265D595F0();
  v3 = v2;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 152);
    v7 = *(v1 + 96);
    v19 = *(v1 + 104);
    v8 = *(v1 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x2667704D0](*(v1 + 48), *(v1 + 56));
    v13 = sub_265CF4FFC(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_265C01000, v4, v5, "SessionAppTerminationMonitor - Failed to start session: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 96);
    v14 = *(v1 + 104);
    v16 = *(v1 + 88);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_265D4DAF8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_265D58AC0();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D4DC14, 0, 0);
}

uint64_t sub_265D4DC14()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_265D59020();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for SessionAppTerminationMonitor(0);
    v4 = sub_265D51BBC(&qword_28003EAF0, type metadata accessor for SessionAppTerminationMonitor, &unk_265D5EB08);
    *v2 = v0;
    v2[1] = sub_265D4DD84;
    v5 = v0[16];

    return MEMORY[0x2821AE8C8](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_265D4DD84()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265D4DF6C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_265D4DF6C(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 152);
  sub_265D595F0();
  v3 = v2;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 152);
    v7 = *(v1 + 96);
    v19 = *(v1 + 104);
    v8 = *(v1 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x2667704D0](*(v1 + 48), *(v1 + 56));
    v13 = sub_265CF4FFC(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_265C01000, v4, v5, "SessionAppTerminationMonitor - Failed to end session: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 96);
    v14 = *(v1 + 104);
    v16 = *(v1 + 88);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_265D4E154(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_265D58130();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D4E270, 0, 0);
}

uint64_t sub_265D4E270()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_265D58E60();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for SessionAppTerminationMonitor(0);
    v4 = sub_265D51BBC(&qword_28003EAF0, type metadata accessor for SessionAppTerminationMonitor, &unk_265D5EB08);
    *v2 = v0;
    v2[1] = sub_265D4E3E0;
    v5 = v0[16];

    return MEMORY[0x2821AE8D0](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_265D4E3E0()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265D4E5C8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_265D4E5C8(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 152);
  sub_265D595F0();
  v3 = v2;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 152);
    v7 = *(v1 + 96);
    v19 = *(v1 + 104);
    v8 = *(v1 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x2667704D0](*(v1 + 48), *(v1 + 56));
    v13 = sub_265CF4FFC(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_265C01000, v4, v5, "SessionAppTerminationMonitor - Failed to update session: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 96);
    v14 = *(v1 + 104);
    v16 = *(v1 + 88);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_265D4E7B0()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC22SeymourSessionServices28SessionAppTerminationMonitor_lock;
  v2 = sub_265D59930();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22SeymourSessionServices28SessionAppTerminationMonitor_state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF70, &qword_265D5B190);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_265D4E8AC(uint64_t a1)
{
  sub_265D59930();
  if (v1 <= 0x3F)
  {
    sub_265D4EB40(319, &qword_2813B8FD8, type metadata accessor for SessionAppTerminationMonitor.State, MEMORY[0x277D4F260]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_265D4EA18(uint64_t a1)
{
  sub_265D4EAF4();
  if (v1 <= 0x3F)
  {
    sub_265D4EB40(319, &qword_2813B9008, MEMORY[0x277D529D8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_265D58D00();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_265D4EAF4()
{
  result = qword_2813B6CF0;
  if (!qword_2813B6CF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B6CF0);
  }

  return result;
}

void sub_265D4EB40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_265D4EBEC(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_265D58AC0();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v2[15] = *(v4 + 64);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v5 = sub_265D59DE0();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF70, &qword_265D5B190);
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v7 = sub_265D581A0();
  v2[26] = v7;
  v2[27] = *(v7 - 8);
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D4EDF8, v1, 0);
}

uint64_t sub_265D4EDF8(uint64_t a1)
{
  v82 = v1;
  v3 = v1[27];
  v2 = v1[28];
  v4 = v1[26];
  sub_265D58A10();
  v5 = sub_265D58190();
  v7 = v6;
  v9 = v8;
  (*(v3 + 8))(v2, v4);
  if (v9)
  {
    v10 = sub_265D58B50();
    v12 = v11;
    v13 = sub_265D59E90();
    v14 = [objc_opt_self() predicateMatchingBundleIdentifier_];

    sub_265D4EAF4();
    v15 = v14;
    v16 = sub_265D51F78(v15);

    if (v16)
    {
      v80 = v15;
      v33 = v1[24];
      v34 = v1[25];
      v74 = v1[17];
      v35 = v1[14];
      v72 = v1[13];
      v36 = v1[11];
      v67 = v1[23];
      v69 = v1[12];
      v77 = sub_265D589D0();
      v75 = v37;
      v38 = type metadata accessor for SessionAppTerminationMonitor.State(0);

      v39 = v16;
      sub_265D58A70();
      v40 = sub_265D589C0();
      *v34 = v77;
      v34[1] = v75;
      v78 = v10;
      v34[2] = v10;
      v34[3] = v12;
      v76 = v39;
      v34[4] = v39;
      *(v34 + *(v38 + 32)) = v40;
      (*(v33 + 104))(v34, *MEMORY[0x277D4F250], v67);
      v41 = OBJC_IVAR____TtC22SeymourSessionServices28SessionAppTerminationMonitor_state;
      swift_beginAccess();
      (*(v33 + 40))(v69 + v41, v34, v67);
      swift_endAccess();
      sub_265D595E0();
      v42 = *(v35 + 16);
      v42(v74, v36, v72);

      v43 = sub_265D59DD0();
      LOBYTE(v36) = sub_265D5A080();

      v73 = v36;
      v44 = os_log_type_enabled(v43, v36);
      v45 = v1[22];
      v47 = v1[18];
      v46 = v1[19];
      v48 = v1[17];
      v50 = v1[13];
      v49 = v1[14];
      if (v44)
      {
        v71 = v42;
        v51 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v81[0] = v70;
        *v51 = 141558530;
        *(v51 + 4) = 1752392040;
        *(v51 + 12) = 2080;
        *(v51 + 14) = sub_265CF4FFC(v78, v12, v81);
        *(v51 + 22) = 2082;
        v66 = v47;
        v68 = v45;
        v52 = sub_265D589D0();
        v54 = v53;
        (*(v49 + 8))(v48, v50);
        v55 = sub_265CF4FFC(v52, v54, v81);

        *(v51 + 24) = v55;
        _os_log_impl(&dword_265C01000, v43, v73, "SessionAppTerminationMonitor: monitoring %{mask.hash}s for session %{public}s!", v51, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266770CF0](v70, -1, -1);
        v56 = v51;
        v42 = v71;
        MEMORY[0x266770CF0](v56, -1, -1);

        (*(v46 + 8))(v68, v66);
      }

      else
      {

        (*(v49 + 8))(v48, v50);
        (*(v46 + 8))(v45, v47);
      }

      v57 = v1[16];
      v58 = v1[13];
      v59 = v1[14];
      v60 = v1[12];
      v42(v57, v1[11], v58);
      v61 = (*(v59 + 80) + 40) & ~*(v59 + 80);
      v62 = swift_allocObject();
      *(v62 + 2) = v78;
      *(v62 + 3) = v12;
      *(v62 + 4) = v60;
      (*(v59 + 32))(&v62[v61], v57, v58);
      v1[6] = sub_265D5203C;
      v1[7] = v62;
      v1[2] = MEMORY[0x277D85DD0];
      v1[3] = 1107296256;
      v1[4] = sub_265D50B98;
      v1[5] = &block_descriptor_4;
      v63 = _Block_copy(v1 + 2);

      [v76 monitorForDeath_];
      _Block_release(v63);
    }

    else
    {
      sub_265D595E0();

      v17 = sub_265D59DD0();
      v18 = sub_265D5A070();

      v19 = os_log_type_enabled(v17, v18);
      v20 = v1[21];
      v22 = v1[18];
      v21 = v1[19];
      if (v19)
      {
        v23 = swift_slowAlloc();
        v79 = v15;
        v81[0] = swift_slowAlloc();
        v24 = v81[0];
        *v23 = 141558274;
        *(v23 + 4) = 1752392040;
        *(v23 + 12) = 2080;
        v25 = sub_265CF4FFC(v10, v12, v81);

        *(v23 + 14) = v25;
        _os_log_impl(&dword_265C01000, v17, v18, "SessionAppTerminationMonitor: RBSProcessHandle failed to initialize for %{mask.hash}s", v23, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x266770CF0](v24, -1, -1);
        MEMORY[0x266770CF0](v23, -1, -1);
      }

      else
      {
      }

      (*(v21 + 8))(v20, v22);
    }
  }

  else
  {
    sub_265C037E8(v5, v7, 0);
    sub_265D595F0();
    v26 = sub_265D59DD0();
    v27 = sub_265D5A070();
    v28 = os_log_type_enabled(v26, v27);
    v30 = v1[19];
    v29 = v1[20];
    v31 = v1[18];
    if (v28)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_265C01000, v26, v27, "SessionAppTerminationMonitor: Unknown media type", v32, 2u);
      MEMORY[0x266770CF0](v32, -1, -1);
    }

    (*(v30 + 8))(v29, v31);
  }

  v64 = v1[1];

  return v64();
}

uint64_t sub_265D4F534(void *a1, void *a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v64 = a6;
  v62 = a5;
  v60 = a3;
  v9 = sub_265D58AC0();
  v65 = *(v9 - 8);
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v9);
  v63 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = &v56 - v12;
  v13 = sub_265D59DE0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v56 - v18;
  v20 = [a1 bundle];
  if (v20 && (v21 = v20, v22 = [v20 identifier], v21, v22))
  {
    v23 = sub_265D59EA0();
    v25 = v24;

    v26 = [a2 status];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 error];
    }

    else
    {
      v28 = 0;
    }

    sub_265D595E0();

    v34 = v28;
    v35 = v28;
    v36 = sub_265D59DD0();
    v37 = sub_265D5A080();

    v60 = v35;

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v59 = v23;
      v39 = v38;
      v58 = swift_slowAlloc();
      v67 = v58;
      *v39 = 141558530;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_265CF4FFC(v59, v25, &v67);
      *(v39 + 22) = 2082;
      v66 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EAE0, &qword_265D5EC10);
      v40 = sub_265D5A0E0();
      v42 = sub_265CF4FFC(v40, v41, &v67);
      v57 = v13;
      v43 = v9;
      v44 = v42;

      *(v39 + 24) = v44;
      v9 = v43;
      v45 = v37;
      v46 = v25;
      _os_log_impl(&dword_265C01000, v36, v45, "SessionAppTerminationMonitor: %{mask.hash}s was terminated -> %{public}s", v39, 0x20u);
      v47 = v58;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v47, -1, -1);
      v48 = v39;
      v23 = v59;
      MEMORY[0x266770CF0](v48, -1, -1);

      (*(v14 + 8))(v19, v57);
    }

    else
    {

      (*(v14 + 8))(v19, v13);
      v46 = v25;
    }

    v49 = sub_265D59FA0();
    v50 = v61;
    (*(*(v49 - 8) + 56))(v61, 1, 1, v49);
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = v65;
    v53 = v63;
    (*(v65 + 16))(v63, v64, v9);
    v54 = (*(v52 + 80) + 56) & ~*(v52 + 80);
    v55 = swift_allocObject();
    *(v55 + 2) = 0;
    *(v55 + 3) = 0;
    *(v55 + 4) = v51;
    *(v55 + 5) = v23;
    *(v55 + 6) = v46;
    (*(v52 + 32))(&v55[v54], v53, v9);
    sub_265D4D17C(0, 0, v50, &unk_265D5EC08, v55);
  }

  else
  {
    sub_265D595E0();

    v29 = sub_265D59DD0();
    v30 = sub_265D5A070();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v67 = v32;
      *v31 = 141558274;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_265CF4FFC(v60, a4, &v67);
      _os_log_impl(&dword_265C01000, v29, v30, "SessionAppTerminationMonitor: This appears to be a testing handle for %{mask.hash}s", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x266770CF0](v32, -1, -1);
      MEMORY[0x266770CF0](v31, -1, -1);
    }

    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_265D4FB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return MEMORY[0x2822009F8](sub_265D4FB7C, 0, 0);
}

uint64_t sub_265D4FB7C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = Strong;
    *(v0 + 88) = sub_265D589D0();
    *(v0 + 96) = v3;

    return MEMORY[0x2822009F8](sub_265D4FC50, v2, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_265D4FC50()
{
  sub_265D4FCFC(*(v0 + 56), *(v0 + 64), *(v0 + 88), *(v0 + 96));

  return MEMORY[0x2822009F8](sub_265D4FCD4, 0, 0);
}

uint64_t sub_265D4FCFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v134 = a3;
  v135 = a4;
  v136 = a1;
  v137 = a2;
  v5 = sub_265D57ED0();
  MEMORY[0x28223BE20](v5 - 8);
  v124 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_265D58FD0();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v123 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265D59650();
  v131 = *(v8 - 8);
  v132 = v8;
  MEMORY[0x28223BE20](v8);
  v130 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265D59DE0();
  v11 = *(v10 - 8);
  v138 = v10;
  v139 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v121 = &v118 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v127 = &v118 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v128 = &v118 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v129 = &v118 - v22;
  MEMORY[0x28223BE20](v21);
  v118 = &v118 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v119 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v118 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF70, &qword_265D5B190);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v118 - v31;
  v33 = type metadata accessor for SessionAppTerminationMonitor.State(0);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34);
  v120 = (&v118 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v122 = (&v118 - v40);
  MEMORY[0x28223BE20](v39);
  v42 = (&v118 - v41);
  v43 = OBJC_IVAR____TtC22SeymourSessionServices28SessionAppTerminationMonitor_state;
  swift_beginAccess();
  v44 = *(v30 + 16);
  v133 = v4;
  v44(v32, v4 + v43, v29);
  if ((*(v30 + 88))(v32, v29) == *MEMORY[0x277D4F250])
  {
    (*(v30 + 96))(v32, v29);
    sub_265D51D0C(v32, v42);
    v46 = v136;
    v45 = v137;
    if (v42[2] == v136 && v42[3] == v137 || (sub_265D5A3C0() & 1) != 0)
    {
      v47 = v134;
      v48 = v135;
      v49 = v139;
      if (*v42 == v134 && v42[1] == v135 || (sub_265D5A3C0() & 1) != 0)
      {
        v50 = *(v33 + 28);
        v135 = v42;
        sub_265C97870(v42 + v50, v28, &qword_28003E2F8, &qword_265D5B680);
        v51 = sub_265D58600();
        v52 = *(v51 - 8);
        v53 = *(v52 + 48);
        if (v53(v28, 1, v51) != 1)
        {
          v58 = sub_265D585F0();
          v60 = v59;
          v61 = v28;
          v62 = *(v52 + 8);
          v62(v61, v51);
          v142 = v58;
          LOBYTE(v143) = v60 & 1;
          *&v140 = 0;
          BYTE8(v140) = 1;
          sub_265CEB398();
          sub_265CEB3EC();
          if ((sub_265D57F90() & 1) == 0)
          {
LABEL_28:
            v96 = v129;
            sub_265D595E0();
            sub_265D59DC0();
            v99 = *(v49 + 8);
            v98 = v49 + 8;
            v97 = v99;
            v100 = v138;
            v99(v96, v138);
            v101 = sub_265D58B30();
            v103 = v130;
            v102 = v131;
            v104 = v132;
            (*(v131 + 104))(v130, *MEMORY[0x277D4F928], v132);
            LOBYTE(v96) = sub_265CA7344(v103, v101);

            (*(v102 + 8))(v103, v104);
            v42 = v135;
            if (v96)
            {
              v139 = v98;
              v105 = v128;
              sub_265D595E0();
              v106 = v122;
              sub_265D51C4C(v42, v122);
              v107 = v137;

              v108 = sub_265D59DD0();
              v109 = sub_265D5A080();

              if (os_log_type_enabled(v108, v109))
              {
                v110 = swift_slowAlloc();
                v111 = swift_slowAlloc();
                v142 = v111;
                *v110 = 141558530;
                *(v110 + 4) = 1752392040;
                *(v110 + 12) = 2080;
                *(v110 + 14) = sub_265CF4FFC(v136, v107, &v142);
                *(v110 + 22) = 2082;
                v112 = *v106;
                v113 = v106[1];

                sub_265D51CB0(v106);
                v114 = sub_265CF4FFC(v112, v113, &v142);

                *(v110 + 24) = v114;
                _os_log_impl(&dword_265C01000, v108, v109, "SessionAppTerminationMonitor Handling app termination for %{mask.hash}s on session %{public}s", v110, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x266770CF0](v111, -1, -1);
                MEMORY[0x266770CF0](v110, -1, -1);

                v115 = v128;
              }

              else
              {

                sub_265D51CB0(v106);
                v115 = v105;
              }

              v97(v115, v100);
              swift_getObjectType();
              sub_265D5A030();
              LOBYTE(v142) = 1;
              sub_265D57EB0();
              v116 = v123;
              sub_265D58FC0();
              v117 = v126;
              sub_265D58ED0();
              (*(v125 + 8))(v116, v117);
            }

            goto LABEL_33;
          }

          v63 = v119;
          sub_265C97870(v135 + v50, v119, &qword_28003E2F8, &qword_265D5B680);
          if (v53(v63, 1, v51) != 1)
          {
            v83 = v63;
            v84 = sub_265D585E0();
            v86 = v85;
            v88 = v87;
            v62(v83, v51);
            v142 = v84;
            v143 = v86;
            v144 = v88 & 1;
            v140 = xmmword_265D5B470;
            v141 = 1;
            sub_265CA48E8();
            sub_265CA493C();
            v89 = sub_265D57F90();
            sub_265C037E8(v142, v143, v144);
            if (v89)
            {
              v90 = sub_265D58B60();
              if (v90 == sub_265D58B60())
              {
                v91 = v118;
                sub_265D595E0();
                v92 = sub_265D59DD0();
                v93 = sub_265D5A080();
                if (os_log_type_enabled(v92, v93))
                {
                  v94 = swift_slowAlloc();
                  *v94 = 0;
                  _os_log_impl(&dword_265C01000, v92, v93, "Ignoring App Termination for a TV <-> Phone Workout on Phone.", v94, 2u);
                  MEMORY[0x266770CF0](v94, -1, -1);
                }

                (*(v49 + 8))(v91, v138);
                v95 = v135;
                return sub_265D51CB0(v95);
              }
            }

            goto LABEL_28;
          }

          v28 = v63;
        }

        sub_265CA4AE8(v28, &qword_28003E2F8, &qword_265D5B680);
        goto LABEL_28;
      }

      v70 = v127;
      sub_265D595E0();
      v74 = v120;
      sub_265D51C4C(v42, v120);

      v75 = sub_265D59DD0();
      v76 = sub_265D5A080();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v142 = v137;
        *v77 = 136315394;
        v78 = *v74;
        v79 = v74[1];

        sub_265D51CB0(v74);
        v80 = v47;
        v81 = sub_265CF4FFC(v78, v79, &v142);

        *(v77 + 4) = v81;
        *(v77 + 12) = 2080;
        *(v77 + 14) = sub_265CF4FFC(v80, v48, &v142);
        _os_log_impl(&dword_265C01000, v75, v76, "SessionAppTerminationMonitor: App termination for session (%s doesn't match current session %s", v77, 0x16u);
        v82 = v137;
        swift_arrayDestroy();
        MEMORY[0x266770CF0](v82, -1, -1);
        MEMORY[0x266770CF0](v77, -1, -1);

        (*(v49 + 8))(v127, v138);
LABEL_33:
        v95 = v42;
        return sub_265D51CB0(v95);
      }

      sub_265D51CB0(v74);
    }

    else
    {
      v64 = v121;
      sub_265D595E0();
      sub_265D51C4C(v42, v36);

      v65 = sub_265D59DD0();
      v66 = sub_265D5A080();

      v67 = os_log_type_enabled(v65, v66);
      v49 = v139;
      if (!v67)
      {

        sub_265D51CB0(v36);
        (*(v49 + 8))(v64, v138);
        goto LABEL_33;
      }

      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v142 = v69;
      *v68 = 141558786;
      *(v68 + 4) = 1752392040;
      *(v68 + 12) = 2080;
      *(v68 + 14) = sub_265CF4FFC(v46, v45, &v142);
      *(v68 + 22) = 2160;
      *(v68 + 24) = 1752392040;
      *(v68 + 32) = 2080;
      v70 = v64;
      v71 = *(v36 + 2);
      v72 = *(v36 + 3);

      sub_265D51CB0(v36);
      v73 = sub_265CF4FFC(v71, v72, &v142);

      *(v68 + 34) = v73;
      _os_log_impl(&dword_265C01000, v65, v66, "SessionAppTerminationMonitor: Terminated Bundle identifier (%{mask.hash}s does not match monitored bundle identifier (%{mask.hash}s)", v68, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v69, -1, -1);
      MEMORY[0x266770CF0](v68, -1, -1);
    }

    (*(v49 + 8))(v70, v138);
    goto LABEL_33;
  }

  (*(v30 + 8))(v32, v29);
  sub_265D595E0();
  v54 = sub_265D59DD0();
  v55 = sub_265D5A080();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_265C01000, v54, v55, "SessionAppTerminationMonitor: App terminated when SessionAppTerminationMonitor inactive. Ignoring", v56, 2u);
    MEMORY[0x266770CF0](v56, -1, -1);
  }

  return (*(v139 + 8))(v14, v138);
}

void sub_265D50B98(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t sub_265D50C1C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = sub_265D59DE0();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF70, &qword_265D5B190);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  type metadata accessor for SessionAppTerminationMonitor.State(0);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D50D7C, v2, 0);
}

uint64_t sub_265D50D7C()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[9];
  v5 = OBJC_IVAR____TtC22SeymourSessionServices28SessionAppTerminationMonitor_state;
  swift_beginAccess();
  (*(v3 + 16))(v1, v4 + v5, v2);
  if ((*(v3 + 88))(v1, v2) == *MEMORY[0x277D4F250])
  {
    v6 = v0[16];
    v7 = v0[17];
    v8 = v0[8];
    (*(v0[14] + 96))(v6, v0[13]);
    sub_265D51D0C(v6, v7);
    if (*v7 == *v8 && v7[1] == v8[1] || (sub_265D5A3C0() & 1) != 0)
    {
      sub_265D595F0();
      v9 = sub_265D59DD0();
      v10 = sub_265D5A080();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_265C01000, v9, v10, "SessionAppTerminationMonitor - ended session so ending monitoring", v11, 2u);
        MEMORY[0x266770CF0](v11, -1, -1);
      }

      v21 = v0[17];
      v13 = v0[14];
      v12 = v0[15];
      v15 = v0[12];
      v14 = v0[13];
      v17 = v0[10];
      v16 = v0[11];

      (*(v16 + 8))(v15, v17);
      (*(v13 + 104))(v12, *MEMORY[0x277D4F258], v14);
      swift_beginAccess();
      (*(v13 + 40))(v4 + v5, v12, v14);
      swift_endAccess();
      v18 = v21;
    }

    else
    {
      v18 = v0[17];
    }

    sub_265D51CB0(v18);
  }

  else
  {
    (*(v0[14] + 8))(v0[16], v0[13]);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_265D51014@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices28SessionAppTerminationMonitor_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF70, &qword_265D5B190);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265D510A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices28SessionAppTerminationMonitor_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF70, &qword_265D5B190);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_265D511A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265C978E0;

  return sub_265D4EBEC(a1);
}

uint64_t sub_265D51238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SessionAppTerminationMonitor(0);
  *v8 = v4;
  v8[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E0](a1, a2, v9, a4);
}

uint64_t sub_265D51300(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265C96620;

  return sub_265D50C1C(v4, a2);
}

uint64_t sub_265D51394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SessionAppTerminationMonitor(0);
  *v8 = v4;
  v8[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_265D5145C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SessionAppTerminationMonitor(0);
  *v8 = v4;
  v8[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_265D51524(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF70, &qword_265D5B190);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = type metadata accessor for SessionAppTerminationMonitor.State(0);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D51624, v2, 0);
}

uint64_t sub_265D51624()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  sub_265D51C4C(v0[6], v1);
  v8 = *(v2 + 28);
  sub_265CA4AE8(v1 + v8, &qword_28003E2F8, &qword_265D5B680);
  v9 = sub_265D58600();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v1 + v8, v7, v9);
  (*(v10 + 56))(v1 + v8, 0, 1, v9);
  sub_265D51C4C(v1, v3);
  (*(v4 + 104))(v3, *MEMORY[0x277D4F250], v5);
  v11 = OBJC_IVAR____TtC22SeymourSessionServices28SessionAppTerminationMonitor_state;
  swift_beginAccess();
  (*(v4 + 40))(v6 + v11, v3, v5);
  swift_endAccess();
  sub_265D51CB0(v1);

  v12 = v0[1];

  return v12();
}

uint64_t sub_265D517D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for SessionAppTerminationMonitor(0);
  *v6 = v3;
  v6[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D8](a1, v7, a3);
}

uint64_t sub_265D5188C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for SessionAppTerminationMonitor(0);
  *v6 = v3;
  v6[1] = sub_265C978E0;

  return MEMORY[0x2821AE8C8](a1, v7, a3);
}

uint64_t sub_265D51944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for SessionAppTerminationMonitor(0);
  *v6 = v3;
  v6[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D0](a1, v7, a3);
}

uint64_t sub_265D519FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices28SessionAppTerminationMonitor_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265D51A84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices28SessionAppTerminationMonitor_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_265D51BBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265D51C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionAppTerminationMonitor.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D51CB0(uint64_t a1)
{
  v2 = type metadata accessor for SessionAppTerminationMonitor.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265D51D0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionAppTerminationMonitor.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D51D70(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_265D51E64;

  return v5(v2 + 32);
}

uint64_t sub_265D51E64()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

id sub_265D51F78(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_265D57D60();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_265D5203C(void *a1, void *a2)
{
  v5 = *(sub_265D58AC0() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_265D4F534(a1, a2, v6, v7, v8, v9);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265D520DC(uint64_t a1)
{
  v4 = *(sub_265D58AC0() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_265C96620;

  return sub_265D4FB54(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_265D521E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265C978E0;

  return sub_265D51D70(a1, v4);
}

uint64_t sub_265D522A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265C96620;

  return sub_265D51D70(a1, v4);
}

uint64_t sub_265D52358(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265C978E0;

  return sub_265D1CD70(a1, v4);
}

unint64_t sub_265D52410(uint64_t a1, double a2, uint64_t a3, unsigned __int8 a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E820, &qword_265D5D288);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265D5EC70;
  *(inited + 32) = 0x79636E6574616CLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_265D5A020();
  *(inited + 56) = 0xD00000000000001CLL;
  *(inited + 64) = 0x8000000265D62480;
  *(inited + 72) = sub_265D59E90();
  *(inited + 80) = 0x656372756F73;
  *(inited + 88) = 0xE600000000000000;
  v5 = sub_265D59E90();

  *(inited + 96) = v5;
  v6 = sub_265C96DB0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E828, &qword_265D5D290);
  swift_arrayDestroy();
  return v6;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_265D52630(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_265D52678(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_265D526CC@<X0>(uint64_t a1@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, unsigned int a5@<W6>, uint64_t a6@<X8>)
{
  v32 = a5;
  v30 = a3;
  v31 = a4;
  v26 = a6;
  v27 = a1;
  v6 = sub_265D59DE0();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C0, &qword_265D5C9C8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_265D58B40();
  v33 = sub_265D58760();
  sub_265D1DEE0();
  sub_265D57FC0();
  v25 = v34;
  v22[3] = v35;
  sub_265D59990();
  v24 = v12;
  v23 = sub_265D59C80();
  sub_265D59C90();

  sub_265D57F10();
  v13 = sub_265D57F40();
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  sub_265D583B0();
  sub_265D59ED0();
  sub_265D5A030();
  v14 = v26;
  sub_265D58850();
  sub_265D5A030();
  v16 = v15;
  sub_265D595E0();
  sub_265D59DC0();
  (*(v28 + 8))(v8, v29);
  v18 = v30;
  v17 = v31;
  *(v30 + 56) = v16;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  __swift_project_boxed_opaque_existential_1((v17 + 72), *(v17 + 96));
  v19 = off_28777D8B0[0];
  v20 = type metadata accessor for RemoteParticipantHandshakeRegistry();
  return v19(v14, v32, v20, &off_28777D8A8);
}

uint64_t sub_265D529B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_265D58F70();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v4 + 104))(v6, *MEMORY[0x277D4E860], v3);
  sub_265D58870();
  sub_265D588C0();
  sub_265D58C40();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_265D52B20(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v77 = a4;
  v76 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C8, &unk_265D5C9D0);
  MEMORY[0x28223BE20](v6 - 8);
  v75 = &v62 - v7;
  v8 = sub_265D58870();
  v70 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v62 - v12;
  v14 = sub_265D588C0();
  v72 = *(v14 - 8);
  v73 = v14;
  MEMORY[0x28223BE20](v14);
  v71 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_265D59DE0();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v74 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v62 - v20;
  sub_265D58890();
  v23 = v22;
  sub_265D588A0();
  v25 = v24;
  sub_265D595E0();
  sub_265D59DC0();
  v26 = *(v17 + 8);
  v26(v21, v16);
  if (*(a2 + 72))
  {
    sub_265D57690();
    v27 = swift_allocError();
    *v28 = 1;
    v78 = v27;
    return swift_willThrow();
  }

  else
  {
    v67 = v26;
    v68 = v16;
    v64 = v11;
    v65 = v13;
    v69 = v8;
    v30 = *(a2 + 56);
    sub_265D5A030();
    *(a2 + 56) = sub_265D2C19C(v30, v23, v25, v31);
    *(a2 + 64) = v32;
    *(a2 + 72) = 1;
    v33 = v74;
    sub_265D595F0();
    v35 = v71;
    v34 = v72;
    v36 = v73;
    (*(v72 + 16))(v71, a1, v73);
    v37 = sub_265D59DD0();
    v38 = sub_265D5A080();
    v39 = os_log_type_enabled(v37, v38);
    v66 = a1;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v62 = v40;
      v63 = swift_slowAlloc();
      v79 = v63;
      *v40 = 136446210;
      sub_265D576E4(&qword_28003EB08, MEMORY[0x277D53818], MEMORY[0x277D53820]);
      v41 = sub_265D5A3B0();
      v43 = v42;
      (*(v34 + 8))(v35, v36);
      v44 = sub_265CF4FFC(v41, v43, &v79);

      v45 = v62;
      *(v62 + 1) = v44;
      v46 = v38;
      v47 = v45;
      _os_log_impl(&dword_265C01000, v37, v46, "Participant handshake succeeded with response: %{public}s", v45, 0xCu);
      v48 = v63;
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x266770CF0](v48, -1, -1);
      MEMORY[0x266770CF0](v47, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v35, v36);
    }

    v67(v33, v68);
    v49 = v76;
    __swift_project_boxed_opaque_existential_1((v76 + 72), *(v76 + 96));
    v50 = off_28777D8C8[0];
    v51 = type metadata accessor for RemoteParticipantHandshakeRegistry();
    v52 = v75;
    v53 = v77;
    v50(v77, v51, &off_28777D8A8);
    v54 = v52;
    v55 = sub_265D59BA0();
    v56 = *(v55 - 8);
    v57 = (*(v56 + 48))(v52, 1, v55);
    v58 = v69;
    if (v57 == 1)
    {
      return sub_265CA4AE8(v54, &qword_28003E6C8, &unk_265D5C9D0);
    }

    else
    {
      v59 = v64;
      sub_265D59B70();
      (*(v56 + 8))(v54, v55);
      v60 = v70;
      v61 = v65;
      (*(v70 + 32))(v65, v59, v58);
      __swift_project_boxed_opaque_existential_1((v49 + 72), *(v49 + 96));
      (off_28777D8B0[0])(v61, v53, v51, &off_28777D8A8);
      __swift_project_boxed_opaque_existential_1((v49 + 72), *(v49 + 96));
      off_28777D8B8[0]();
      return (*(v60 + 8))(v61, v58);
    }
  }
}

uint64_t sub_265D531A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_265C97624(a3, v5);
  swift_beginAccess();
  sub_265CE15C4(v5, a2);
  return swift_endAccess();
}

uint64_t sub_265D5321C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = sub_265CE2890(a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + 208);
    *(a1 + 208) = 0x8000000000000000;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_265CE66D8();
    }

    sub_265C033C4((*(v10 + 56) + 40 * v8), a3);
    sub_265CE5120(v8, v10);
    *(a1 + 208) = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return swift_endAccess();
}

uint64_t sub_265D532F4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);

  return swift_deallocClassInstance();
}

uint64_t sub_265D53380()
{
  v0 = sub_265D59DE0();
  v35 = *(v0 - 8);
  v36 = v0;
  v1 = MEMORY[0x28223BE20](v0);
  v34 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v33 = &v33 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  sub_265D58A70();
  v10 = sub_265D58600();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v9, 1, v10) == 1)
  {
    sub_265CA4AE8(v9, &qword_28003E2F8, &qword_265D5B680);
    v13 = 0;
  }

  else
  {
    v14 = sub_265D585E0();
    v16 = v15;
    v18 = v17;
    (*(v11 + 8))(v9, v10);
    v39 = v14;
    v40 = v16;
    v41 = v18 & 1;
    v37 = 0uLL;
    v38 = 1;
    sub_265CA48E8();
    sub_265CA493C();
    v13 = sub_265D57F90();
    sub_265CA4B90(v39, v40, v41);
  }

  sub_265D580F0();
  if (v12(v7, 1, v10) == 1)
  {
    return sub_265CA4AE8(v7, &qword_28003E2F8, &qword_265D5B680);
  }

  v20 = sub_265D585E0();
  v22 = v21;
  v24 = v23;
  (*(v11 + 8))(v7, v10);
  v39 = v20;
  v40 = v22;
  v41 = v24 & 1;
  v37 = xmmword_265D5BC40;
  v38 = 1;
  sub_265CA48E8();
  sub_265CA493C();
  LODWORD(v20) = sub_265D57F90();
  result = sub_265CA4B90(v39, v40, v41);
  if (v13 & v20)
  {
    v25 = v33;
    sub_265D595F0();
    v26 = sub_265D59DD0();
    v27 = sub_265D5A080();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_265C01000, v26, v27, "Canceling handshake because session has moved to standalone state.", v28, 2u);
      MEMORY[0x266770CF0](v28, -1, -1);
    }

    v29 = *(v35 + 8);
    v30 = v25;
    v31 = v36;
    v29(v30, v36);
    v32 = v34;
    sub_265D595F0();
    sub_265D59DC0();
    v29(v32, v31);
    return sub_265D58CA0();
  }

  return result;
}

uint64_t sub_265D537E0@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a1;
  v50 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E208, &qword_265D5D7D0);
  v44 = *(v45 - 8);
  v43 = *(v44 + 64);
  v4 = MEMORY[0x28223BE20](v45);
  v41 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v40 = &v38[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E260, &unk_265D5EDA0);
  v48 = *(v7 - 8);
  v49 = v7;
  v47 = *(v48 + 64);
  v8 = MEMORY[0x28223BE20](v7);
  v46 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v42 = &v38[-v10];
  v11 = sub_265D59DE0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265D595F0();
  sub_265D59DC0();
  v15 = *(v12 + 8);
  v15(v14, v11);
  sub_265C97624(v2 + 160, v55);
  __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
  v54[3] = &type metadata for MachTimestampOffsetCalculator;
  v54[4] = &off_28777FD18;
  type metadata accessor for MachTimestampOffsetExchange();
  v16 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v54, &type metadata for MachTimestampOffsetCalculator);
  *(v16 + 40) = &type metadata for MachTimestampOffsetCalculator;
  *(v16 + 48) = &off_28777FD18;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0;
  *(v16 + 72) = 2;
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_265D59D20();
  sub_265D595F0();
  sub_265D59DC0();
  v15(v14, v11);
  v51 = v2;
  LOBYTE(v15) = v39;
  v52 = v39;
  v53 = v55;
  sub_265D58CA0();
  __swift_project_boxed_opaque_existential_1(v55, v56);
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = v15;
  *(v17 + 32) = v16;

  v18 = v40;
  LOBYTE(v12) = v15;
  sub_265D59CE0();

  v19 = v44;
  v20 = v41;
  v21 = v45;
  (*(v44 + 16))(v41, v18, v45);
  v22 = v19;
  v23 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v24 = (v43 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v22 + 32))(v25 + v23, v20, v21);
  v26 = (v25 + v24);
  *v26 = sub_265D5773C;
  v26[1] = v16;

  v27 = v42;
  sub_265D58930();
  (*(v22 + 8))(v18, v21);
  v28 = swift_allocObject();
  *(v28 + 16) = v3;
  *(v28 + 24) = v12;
  v29 = v48;
  v30 = v49;
  v31 = v46;
  (*(v48 + 16))(v46, v27, v49);
  v32 = v29;
  v33 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v34 = (v47 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  (*(v32 + 32))(v35 + v33, v31, v30);
  v36 = (v35 + v34);
  *v36 = sub_265D57744;
  v36[1] = v28;

  sub_265D58930();

  (*(v32 + 8))(v27, v30);
  return __swift_destroy_boxed_opaque_existential_1Tm(v55);
}

uint64_t sub_265D53E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v78 = a7;
  v91 = a6;
  v88 = a3;
  v89 = a4;
  v87 = a2;
  v71 = a1;
  v90 = a8;
  v70 = sub_265D583D0();
  v9 = *(v70 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v70);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E298, &qword_265D5B620);
  v72 = *(v76 - 8);
  v74 = *(v72 + 64);
  v11 = MEMORY[0x28223BE20](v76);
  v73 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v68 = &v67 - v13;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E288, &qword_265D5B610);
  v77 = *(v82 - 8);
  v80 = *(v77 + 64);
  v14 = MEMORY[0x28223BE20](v82);
  v79 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v75 = &v67 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E278, &qword_265D5B600);
  v85 = *(v17 - 8);
  v86 = v17;
  v84 = *(v85 + 64);
  v18 = MEMORY[0x28223BE20](v17);
  v83 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v81 = &v67 - v20;
  v21 = sub_265D59DE0();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v22 + 8))(v24, v21);
  v25 = sub_265D58B20();
  v27 = v26;
  __swift_project_boxed_opaque_existential_1((a5 + 112), *(a5 + 136));
  sub_265D59A60();
  v28 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v70;
  (*(v9 + 16))(v28, v71, v70);
  v30 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v31 = (v10 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = v25;
  *(v32 + 24) = v27;
  (*(v9 + 32))(v32 + v30, v28, v29);
  v33 = v78;
  *(v32 + v31) = v78;
  v34 = v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v34 = a5;
  v69 = a5;
  *(v34 + 8) = v91;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_265D57B5C;
  *(v35 + 24) = v32;
  v36 = v72;
  v37 = v73;
  v38 = v68;
  v39 = v76;
  (*(v72 + 16))(v73, v68, v76);
  v40 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v41 = (v74 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v36 + 32))(v42 + v40, v37, v39);
  v43 = (v42 + v41);
  *v43 = sub_265D57B54;
  v43[1] = v35;
  sub_265D58870();

  v44 = v75;
  sub_265D58930();
  (*(v36 + 8))(v38, v39);
  v45 = swift_allocObject();
  v46 = v88;
  *(v45 + 2) = v87;
  *(v45 + 3) = v46;
  *(v45 + 4) = v89;
  v47 = v77;
  v48 = v79;
  v49 = v44;
  v50 = v82;
  (*(v77 + 16))(v79, v44, v82);
  v51 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v52 = (v80 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  (*(v47 + 32))(v53 + v51, v48, v50);
  v54 = (v53 + v52);
  *v54 = sub_265D57B8C;
  v54[1] = v45;
  sub_265D588C0();
  swift_unknownObjectRetain();
  v55 = v81;
  sub_265D58930();
  (*(v47 + 8))(v49, v50);
  v56 = swift_allocObject();
  v57 = v69;
  *(v56 + 16) = v33;
  *(v56 + 24) = v57;
  *(v56 + 32) = v91;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_265D57B90;
  *(v58 + 24) = v56;
  v60 = v85;
  v59 = v86;
  v61 = v83;
  (*(v85 + 16))(v83, v55, v86);
  v62 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v63 = (v84 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v60 + 32))(v64 + v62, v61, v59);
  v65 = (v64 + v63);
  *v65 = sub_265D57B58;
  v65[1] = v58;

  sub_265D58930();
  return (*(v60 + 8))(v55, v59);
}

uint64_t sub_265D54670(__int128 *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E270, &qword_265D5B5F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = *(a1 + 2);

  sub_265D58940();
  v11 = swift_allocObject();
  v16 = *a1;
  *(v11 + 16) = v16;
  *(v11 + 32) = v10;
  (*(v4 + 16))(v7, v9, v3);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  (*(v4 + 32))(v13 + v12, v7, v3);
  v14 = (v13 + ((v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = sub_265D57794;
  v14[1] = v11;
  swift_unknownObjectRetain();
  sub_265D58930();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_265D54894@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (*(result + 72) == 1)
  {
    *a2 = *(result + 56);
  }

  else
  {
    sub_265D57690();
    swift_allocError();
    *v2 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_265D54900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_265D583D0();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v8;
  MEMORY[0x28223BE20](v7);
  v62 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E208, &qword_265D5D7D0);
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v63 = v13;
  v64 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = &v59 - v14;
  v15 = sub_265D59DE0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v59 - v20;
  sub_265D595F0();
  v59 = "ordinator";
  sub_265D59DC0();
  v24 = *(v16 + 8);
  v23 = v16 + 8;
  v22 = v24;
  v24(v21, v15);
  v68 = a1;
  v25 = sub_265D583C0();
  if (v26)
  {
    v27 = v25;
    sub_265C97624(v2 + 160, &v72);
    __swift_mutable_project_boxed_opaque_existential_1(&v72, v74);
    v71[3] = &type metadata for MachTimestampOffsetCalculator;
    v71[4] = &off_28777FD18;
    type metadata accessor for MachTimestampOffsetExchange();
    v28 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v71, &type metadata for MachTimestampOffsetCalculator);
    *(v28 + 40) = &type metadata for MachTimestampOffsetCalculator;
    *(v28 + 48) = &off_28777FD18;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    *(v28 + 72) = 2;
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    __swift_destroy_boxed_opaque_existential_1Tm(&v72);
    v61 = a2;
    __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
    sub_265D59D20();
    sub_265D595F0();
    sub_265D59DC0();
    v29 = v22(v21, v15);
    MEMORY[0x28223BE20](v29);
    *(&v59 - 4) = v2;
    *(&v59 - 24) = v27;
    *(&v59 - 2) = &v72;
    sub_265D58CA0();
    __swift_project_boxed_opaque_existential_1(&v72, v74);
    v59 = v27;
    v30 = v65;
    v31 = v68;
    sub_265D59CF0();
    v33 = v69;
    v32 = v70;
    v34 = v62;
    (*(v69 + 16))(v62, v31, v70);
    v35 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v36 = v35 + v60;
    v37 = (v35 + v60) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    *(v38 + 16) = v3;
    (*(v33 + 32))(v38 + v35, v34, v32);
    *(v38 + v36) = v59;
    *(v38 + v37 + 8) = v28;
    v40 = v66;
    v39 = v67;
    v41 = v64;
    (*(v66 + 16))(v64, v30, v67);
    v42 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v43 = (v63 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    (*(v40 + 32))(v44 + v42, v41, v39);
    v45 = (v44 + v43);
    *v45 = sub_265D572A0;
    v45[1] = v38;

    sub_265D58930();
    (*(v40 + 8))(v30, v39);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v72);
  }

  else
  {
    v66 = v23;
    v67 = v22;
    v47 = v15;
    sub_265D595F0();
    v48 = v69;
    v49 = v70;
    (*(v69 + 16))(v9, v68, v70);
    v50 = sub_265D59DD0();
    v51 = sub_265D5A070();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v61 = a2;
      v53 = v52;
      *v52 = 134349056;
      v72 = sub_265D583C0();
      v73 = v54 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EAF8, &qword_265D5ED98);
      sub_265D57F60();
      v55 = v71[0];
      (*(v48 + 8))(v9, v49);
      *(v53 + 1) = v55;
      _os_log_impl(&dword_265C01000, v50, v51, "Cannot handshake with unknown participant role: %{public}ld", v53, 0xCu);
      MEMORY[0x266770CF0](v53, -1, -1);
    }

    else
    {
      (*(v48 + 8))(v9, v49);
    }

    v67(v19, v47);
    v56 = sub_265D58580();
    sub_265D576E4(&qword_28003E220, MEMORY[0x277D52688], MEMORY[0x277D52690]);
    v57 = swift_allocError();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277D525E8], v56);
    *(swift_allocObject() + 16) = v57;
    return sub_265D58940();
  }
}

uint64_t sub_265D550C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v172 = a5;
  v173 = a4;
  v134 = a3;
  v164 = a6;
  v167 = sub_265D583D0();
  v9 = *(v167 - 1);
  v136 = *(v9 + 64);
  MEMORY[0x28223BE20](v167);
  v11 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E298, &qword_265D5B620);
  v137 = *(v141 - 8);
  v139 = *(v137 + 64);
  v12 = MEMORY[0x28223BE20](v141);
  v138 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v128 = &v128 - v14;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E288, &qword_265D5B610);
  v145 = *(v146 - 8);
  v143 = *(v145 + 64);
  v15 = MEMORY[0x28223BE20](v146);
  v142 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v140 = &v128 - v17;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E278, &qword_265D5B600);
  v149 = *(v150 - 8);
  v148 = *(v149 + 64);
  v18 = MEMORY[0x28223BE20](v150);
  v147 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v144 = &v128 - v20;
  v21 = sub_265D59DE0();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v174 = *(v153 - 8);
  v151 = *(v174 + 64);
  v25 = MEMORY[0x28223BE20](v153);
  v152 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v168 = &v128 - v28;
  MEMORY[0x28223BE20](v27);
  v169 = &v128 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E270, &qword_265D5B5F8);
  v158 = *(v30 - 8);
  v159 = v30;
  v157 = *(v158 + 64);
  v31 = MEMORY[0x28223BE20](v30);
  v155 = &v128 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v154 = &v128 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E260, &unk_265D5EDA0);
  v162 = *(v34 - 8);
  v163 = v34;
  v161 = *(v162 + 64);
  v35 = MEMORY[0x28223BE20](v34);
  v160 = &v128 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v156 = &v128 - v37;
  v38 = a1[1];
  v166 = *a1;
  v170 = a1[2];
  v171 = v38;
  sub_265D595F0();
  sub_265D59DC0();
  (*(v22 + 8))(v24, v21);
  v39 = sub_265D58B20();
  v41 = v40;
  v165 = a2;
  __swift_project_boxed_opaque_existential_1((a2 + 112), *(a2 + 136));
  sub_265D59A60();
  v42 = *(v9 + 16);
  v133 = v9 + 16;
  v135 = v42;
  v129 = v11;
  v43 = v167;
  v42(v11, a3, v167);
  v44 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v130 = *(v9 + 80);
  v136 += 7;
  v45 = (v136 + v44) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = v39;
  *(v46 + 24) = v41;
  v47 = *(v9 + 32);
  v131 = v9 + 32;
  v132 = v47;
  v47(v46 + v44, v11, v43);
  *(v46 + v45) = v172;
  v48 = v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8);
  v49 = v165;
  *v48 = v165;
  *(v48 + 8) = v173;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_265D5737C;
  *(v50 + 24) = v46;
  v51 = v137;
  v52 = v138;
  v53 = v128;
  v54 = v141;
  (*(v137 + 16))(v138, v128, v141);
  v55 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v56 = (v139 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  (*(v51 + 32))(v57 + v55, v52, v54);
  v58 = (v57 + v56);
  *v58 = sub_265D1DD8C;
  v58[1] = v50;
  sub_265D58870();

  v59 = v140;
  sub_265D58930();
  (*(v51 + 8))(v53, v54);
  v60 = swift_allocObject();
  v61 = v170;
  v62 = v171;
  *(v60 + 2) = v166;
  *(v60 + 3) = v62;
  *(v60 + 4) = v61;
  v63 = v145;
  v64 = v142;
  v65 = v146;
  (*(v145 + 16))(v142, v59, v146);
  v66 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v67 = (v143 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  (*(v63 + 32))(v68 + v66, v64, v65);
  v69 = (v68 + v67);
  *v69 = sub_265D573BC;
  v69[1] = v60;
  sub_265D588C0();
  swift_unknownObjectRetain();
  v70 = v144;
  sub_265D58930();
  (*(v63 + 8))(v59, v65);
  v71 = swift_allocObject();
  *(v71 + 16) = v172;
  *(v71 + 24) = v49;
  *(v71 + 32) = v173;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_265D573F0;
  *(v72 + 24) = v71;
  v73 = v149;
  v74 = v147;
  v75 = v150;
  (*(v149 + 16))(v147, v70, v150);
  v76 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v77 = (v148 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  (*(v73 + 32))(v78 + v76, v74, v75);
  v79 = (v78 + v77);
  *v79 = sub_265D57410;
  v79[1] = v72;

  v80 = v168;
  sub_265D58930();
  (*(v73 + 8))(v70, v75);
  v81 = v129;
  v82 = v167;
  v135(v129, v134, v167);
  v83 = (v130 + 16) & ~v130;
  v84 = (v136 + v83) & 0xFFFFFFFFFFFFFFF8;
  v85 = swift_allocObject();
  v132(v85 + v83, v81, v82);
  *(v85 + v84) = v49;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_265D57440;
  *(v86 + 24) = v85;
  v87 = v174;
  v88 = *(v174 + 16);
  v150 = v174 + 16;
  v167 = v88;
  v89 = v152;
  v90 = v80;
  v91 = v153;
  (v88)(v152, v90, v153);
  v92 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v149 = v92;
  v93 = (v151 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v94 = swift_allocObject();
  v151 = *(v87 + 32);
  v151(v94 + v92, v89, v91);
  v95 = (v94 + v93);
  *v95 = sub_265D0F264;
  v95[1] = v86;

  v96 = v169;
  sub_265D58930();
  v97 = v87 + 8;
  v98 = *(v87 + 8);
  v174 = v97;
  v99 = v168;
  v98(v168, v91);
  v100 = swift_allocObject();
  v101 = v172;
  *(v100 + 16) = sub_265D57510;
  *(v100 + 24) = v101;
  v102 = swift_allocObject();
  *(v102 + 16) = sub_265D5752C;
  *(v102 + 24) = v100;
  (v167)(v99, v96, v91);
  v103 = swift_allocObject();
  v151(v103 + v149, v99, v91);
  v104 = (v103 + v93);
  *v104 = sub_265D57560;
  v104[1] = v102;

  v105 = v154;
  sub_265D58930();
  v98(v169, v91);
  v106 = swift_allocObject();
  v107 = v170;
  v108 = v171;
  *(v106 + 2) = v166;
  *(v106 + 3) = v108;
  *(v106 + 4) = v107;
  v109 = v158;
  v110 = v159;
  v111 = v155;
  (*(v158 + 16))(v155, v105, v159);
  v112 = v109;
  v113 = (*(v109 + 80) + 16) & ~*(v109 + 80);
  v114 = (v157 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
  v115 = swift_allocObject();
  (*(v112 + 32))(v115 + v113, v111, v110);
  v116 = (v115 + v114);
  *v116 = sub_265D57590;
  v116[1] = v106;
  swift_unknownObjectRetain();
  v117 = v156;
  sub_265D58930();
  (*(v112 + 8))(v105, v110);
  v118 = swift_allocObject();
  *(v118 + 16) = v165;
  *(v118 + 24) = v173;
  v119 = v162;
  v120 = v163;
  v121 = v160;
  (*(v162 + 16))(v160, v117, v163);
  v122 = v119;
  v123 = (*(v119 + 80) + 16) & ~*(v119 + 80);
  v124 = (v161 + v123 + 7) & 0xFFFFFFFFFFFFFFF8;
  v125 = swift_allocObject();
  (*(v122 + 32))(v125 + v123, v121, v120);
  v126 = (v125 + v124);
  *v126 = sub_265D575F4;
  v126[1] = v118;

  sub_265D58930();
  return (*(v122 + 8))(v117, v120);
}

id sub_265D56100(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = a3;
  v24 = sub_265D595A0();
  v23 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v22 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265D583D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265D58900();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = a1;
  if (MEMORY[0x26676E9D0](a1) != 4)
  {
    (*(v6 + 16))(v8, v20, v5);
    sub_265D588F0();
    v21 = *(v21 + 64);
    swift_getObjectType();
    (*(v10 + 16))(v13, v15, v9);
    v17 = v22;
    sub_265D59590();
    v18 = v24;
    sub_265D58ED0();
    (*(v23 + 8))(v17, v18);
    (*(v10 + 8))(v15, v9);
  }

  swift_willThrow();
  return a1;
}

uint64_t sub_265D563DC(uint64_t result)
{
  if (*(result + 72) != 1)
  {
    sub_265D57690();
    swift_allocError();
    *v1 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_265D56444@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22[0] = a7;
  v22[1] = a6;
  v11 = sub_265D59DE0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  sub_265D595F0();
  v17 = sub_265D59DD0();
  v18 = sub_265D5A080();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134349312;
    *(v19 + 4) = v15;
    *(v19 + 12) = 2050;
    *(v19 + 14) = v16;
    _os_log_impl(&dword_265C01000, v17, v18, "Calculated offset: %{public}f with uncertainty: %{public}f", v19, 0x16u);
    MEMORY[0x266770CF0](v19, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = v15;
  v20[6] = v16;
  swift_unknownObjectRetain();
  return sub_265D58940();
}

uint64_t sub_265D56604(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = sub_265D59DE0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265D595F0();
  sub_265D59DC0();
  (*(v7 + 8))(v9, v6);
  v12 = a2;
  v13 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6E8, &unk_265D5CB70);
  sub_265D58CA0();
  return sub_265CA4AE8(v14, &qword_28003E6E8, &unk_265D5CB70);
}

uint64_t sub_265D56764(uint64_t a1)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v23 - v3;
  swift_beginAccess();
  v24 = a1;
  v5 = *(a1 + 208);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v26 = (v2 + 8);
  v25 = v5;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_12:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = v16 | (v13 << 6);
      v18 = *(*(v25 + 48) + v17);
      sub_265C97624(*(v25 + 56) + 40 * v17, v27);
      LOBYTE(v28) = v18;
      sub_265C033C4(v27, &v28 + 8);
      v15 = v13;
LABEL_13:
      v31[1] = v29;
      v31[2] = v30;
      v31[0] = v28;
      if (!v30)
      {
        break;
      }

      sub_265C033C4((v31 + 8), &v28);
      __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
      sub_265D59CD0();
      v19 = v32;
      v20 = sub_265D58960();
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      v20(sub_265D57234, v21);

      (*v26)(v4, v19);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v28);
      v12 = v15;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v22 = sub_265C9581C(MEMORY[0x277D84F90]);
    *(v24 + 208) = v22;
  }

  else
  {
LABEL_5:
    if (v10 <= v12 + 1)
    {
      v14 = v12 + 1;
    }

    else
    {
      v14 = v10;
    }

    v15 = v14 - 1;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        v9 = 0;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        goto LABEL_13;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_265D56A50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[3] = a1;
  v19[4] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - v6;
  v8 = sub_265D59DE0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v9 + 8))(v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EB10, &qword_265D5EDB0);
  sub_265D58CA0();
  v12 = v20[0];
  v13 = *(v20[0] + 16);
  if (v13)
  {
    v19[2] = a3;
    v21 = MEMORY[0x277D84F90];
    sub_265CF570C(0, v13, 0);
    v14 = v21;
    v19[1] = v12;
    v15 = v12 + 32;
    do
    {
      sub_265C97624(v15, v20);
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      sub_265D59CB0();
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      v21 = v14;
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_265CF570C((v16 > 1), v17 + 1, 1);
        v14 = v21;
      }

      *(v14 + 16) = v17 + 1;
      (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v7, v4);
      v15 += 40;
      --v13;
    }

    while (v13);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v20[0] = v14;
  sub_265CD77F0();
  v18 = sub_265D5A090();
  sub_265D58F10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EB18, &qword_265D5EDB8);
  sub_265D57AD8();
  sub_265D58920();
}

uint64_t sub_265D56DAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v3 = *(a1 + 208);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = MEMORY[0x277D84F90]; v6; result = sub_265C033C4(v17, i + 40 * v15 + 32))
  {
LABEL_10:
    while (1)
    {
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_265C97624(*(v3 + 56) + 40 * (v12 | (v9 << 6)), v17);
      sub_265C033C4(v17, &v18);
      __swift_project_boxed_opaque_existential_1(&v18, v19);
      if (sub_265D59CC0())
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_1Tm(&v18);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    sub_265C033C4(&v18, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = i;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_265CF576C(0, *(i + 16) + 1, 1);
      i = v20;
    }

    v15 = *(i + 16);
    v14 = *(i + 24);
    if (v15 >= v14 >> 1)
    {
      sub_265CF576C((v14 > 1), v15 + 1, 1);
      i = v20;
    }

    *(i + 16) = v15 + 1;
  }

LABEL_6:
  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      *a2 = i;
      return result;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_265D56F7C()
{
  v0 = sub_265D59DE0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v1 + 8))(v3, v0);
  return sub_265D58CA0();
}

uint64_t *sub_265D570CC(uint64_t *result, uint64_t (*a2)(uint64_t *))
{
  v2 = *(result + 8);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

uint64_t sub_265D57114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  return sub_265D58930();
}

void sub_265D5719C(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr))
{
  a3(v6);
  v4 = v6[0];
  v5 = v6[1];
  v7 = 0;
  a1(v6);

  sub_265CA45E8(v4, v5, 0);
}

uint64_t *sub_265D57234(uint64_t *result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 8);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

uint64_t sub_265D572A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_265D583D0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v2 + 16);
  v9 = *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);
  v10 = *(v2 + v7);

  return sub_265D550C8(a1, v8, v2 + v6, v10, v9, a2);
}

id sub_265D57440(void *a1)
{
  v3 = *(sub_265D583D0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_265D56100(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_265D5752C@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = v5;
    a1[1] = v6;
  }

  return result;
}

unint64_t sub_265D57690()
{
  result = qword_28003EB00;
  if (!qword_28003EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003EB00);
  }

  return result;
}

uint64_t sub_265D576E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_265D577D0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  *(a1 + 24) = *(v1 + 40);
  return swift_unknownObjectRetain();
}

uint64_t objectdestroy_17Tm()
{
  v1 = sub_265D583D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 9, v3 | 7);
}

uint64_t sub_265D578F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_265D583D0() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_265D526CC(*(v1 + 16), *(v1 + v4), *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), a1);
}

uint64_t objectdestroy_32Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_265D579F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_265D57AD8()
{
  result = qword_28003EB20;
  if (!qword_28003EB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003EB18, &qword_265D5EDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003EB20);
  }

  return result;
}

uint64_t sub_265D57BF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_265D57C38(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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