uint64_t sub_261051028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2610510D4, 0, 0);
}

uint64_t sub_2610510D4()
{
  v1 = *(v0 + 88);
  if (v1 >> 62)
  {
    result = sub_2610BD0E4();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_17:
    v18 = **(v0 + 80);
    v19 = swift_task_alloc();
    *(v0 + 112) = v19;
    *v19 = v0;
    v19[1] = sub_261051480;

    return sub_261053AB0(v18);
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (result >= 1)
  {
    v3 = 0;
    v20 = *(v0 + 88) + 32;
    v22 = **(v0 + 80);
    v23 = v1 & 0xC000000000000001;
    v21 = result;
    while (1)
    {
      if (v23)
      {
        v5 = MEMORY[0x2666F78E0](v3, *(v0 + 88));
      }

      else
      {
        v5 = *(v20 + 8 * v3);
      }

      v6 = *(v0 + 96);
      v7 = *(v0 + 104);
      v8 = sub_2610BCC94();
      v9 = *(v8 - 8);
      (*(v9 + 56))(v7, 1, 1, v8);
      v10 = swift_allocObject();
      v10[2] = 0;
      v11 = v10 + 2;
      v10[3] = 0;
      v10[4] = v5;
      sub_260FA9918(v7, v6, &unk_27FE65800, &qword_2610BF910);
      LODWORD(v6) = (*(v9 + 48))(v6, 1, v8);

      v12 = *(v0 + 96);
      if (v6 == 1)
      {
        sub_260FA9980(*(v0 + 96), &unk_27FE65800, &qword_2610BF910);
        if (!*v11)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_2610BCC84();
        (*(v9 + 8))(v12, v8);
        if (!*v11)
        {
LABEL_13:
          v13 = 0;
          v15 = 0;
          goto LABEL_14;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_2610BCBF4();
      v15 = v14;
      swift_unknownObjectRelease();
LABEL_14:
      v16 = swift_allocObject();
      *(v16 + 16) = &unk_2610C9570;
      *(v16 + 24) = v10;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE658D0, &qword_2610C9540);
      v17 = v15 | v13;
      if (v15 | v13)
      {
        v17 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v13;
        *(v0 + 40) = v15;
      }

      ++v3;
      v4 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v17;
      *(v0 + 64) = v22;
      swift_task_create();

      sub_260FA9980(v4, &unk_27FE65800, &qword_2610BF910);
      if (v21 == v3)
      {
        goto LABEL_17;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261051480(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_261051580, 0, 0);
}

uint64_t sub_261051580()
{
  **(v0 + 72) = *(v0 + 120);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2610515F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_261051614, 0, 0);
}

uint64_t sub_261051614()
{
  v13 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[4] = __swift_project_value_buffer(v1, qword_27FE65900);

  v2 = sub_2610BC794();
  v3 = sub_2610BCD44();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
    v7 = sub_2610BC764();
    v9 = sub_260FA5970(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_260F97000, v2, v3, "PASExtensionLocator allLocatedExtensions fetching manifest for extension %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_2610517F4;

  return sub_261018F4C();
}

uint64_t sub_2610517F4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_26105198C;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_26105191C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26105191C()
{
  v1 = v0[7];
  v2 = v0[2];
  *v2 = v0[3];
  v2[1] = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_26105198C()
{
  v20 = v0;
  v1 = v0[6];

  v2 = v1;
  v3 = sub_2610BC794();
  v4 = sub_2610BCD64();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  if (v5)
  {
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136446466;
    __swift_project_boxed_opaque_existential_1((v7 + 16), *(v7 + 40));
    v11 = sub_2610BC764();
    v13 = sub_260FA5970(v11, v12, &v19);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_260F97000, v3, v4, "PASExtensionLocator allLocatedExtensions failed to fetch manifest for extension %{public}s: %{public}@", v8, 0x16u);
    sub_260FA9980(v9, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x2666F8720](v10, -1, -1);
    MEMORY[0x2666F8720](v8, -1, -1);
  }

  else
  {
  }

  v16 = v0[2];
  *v16 = 0;
  v16[1] = 0;
  v17 = v0[1];

  return v17();
}

uint64_t sub_261051B7C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_261051C0C;

  return sub_261050C38();
}

uint64_t sub_261051C0C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v4 + 56) = a1;

  return MEMORY[0x2822009F8](sub_261051D5C, 0, 0);
}

uint64_t sub_261051D5C()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE658D0, &qword_2610C9540);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65AE8, &qword_2610C9558);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_261051E7C;

  return MEMORY[0x282200600](v0 + 2, v3, v5, 0, 0, &unk_2610C9550, v4, v3);
}

uint64_t sub_261051E7C()
{

  return MEMORY[0x2822009F8](sub_261051FB0, 0, 0);
}

uint64_t sub_261051FB0()
{
  v49 = v1;
  v2 = 0;
  v3 = v1[2];
  v4 = *(v3 + 2);
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = 16 * v2 + 40;
  while (v4 != v2)
  {
    if (v2 >= *(v3 + 2))
    {
      __break(1u);
      goto LABEL_32;
    }

    v7 = v6 + 16;
    ++v2;
    v8 = *&v3[v6];
    v6 += 16;
    if (*(v8 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_isAccountPickerAvailable))
    {
      v0 = *&v3[v7 - 24];

      v9 = v8;
      v48[0] = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2610525F4(0, *(v5 + 2) + 1, 1);
        v5 = v48[0];
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        sub_2610525F4((v10 > 1), v11 + 1, 1);
        v5 = v48[0];
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v0;
      *(v12 + 5) = v9;
      goto LABEL_2;
    }
  }

  v13 = v1[6];

  v48[0] = v5;

  sub_261052974(v48);
  if (!v13)
  {

    v3 = v48[0];
    v15 = *(v48[0] + 2);
    v0 = MEMORY[0x277D84F90];
    if (v15)
    {
      v48[0] = MEMORY[0x277D84F90];
      sub_2610525D4(0, v15, 0);
      v0 = v48[0];
      v16 = (v3 + 40);
      do
      {
        v17 = *v16;
        __swift_project_boxed_opaque_existential_1(*(v16 - 1) + 2, *(*(v16 - 1) + 5));

        v18 = v17;
        v19 = sub_2610BC764();
        v21 = v20;

        v48[0] = v0;
        v23 = *(v0 + 2);
        v22 = *(v0 + 3);
        if (v23 >= v22 >> 1)
        {
          sub_2610525D4((v22 > 1), v23 + 1, 1);
          v0 = v48[0];
        }

        *(v0 + 2) = v23 + 1;
        v24 = &v0[16 * v23];
        *(v24 + 4) = v19;
        *(v24 + 5) = v21;
        v16 += 2;
        --v15;
      }

      while (v15);
    }

    if (qword_27FE63808 != -1)
    {
LABEL_32:
      swift_once();
    }

    v25 = sub_2610BC7B4();
    __swift_project_value_buffer(v25, qword_27FE65900);

    v26 = sub_2610BC794();
    v27 = sub_2610BCD44();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48[0] = v29;
      *v28 = 136446210;
      v30 = MEMORY[0x2666F7460](v0, MEMORY[0x277D837D0]);
      v32 = v31;

      v33 = sub_260FA5970(v30, v32, v48);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_260F97000, v26, v27, "PASExtensionLocator designatedExtension extensions with available account pickers: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x2666F8720](v29, -1, -1);
      MEMORY[0x2666F8720](v28, -1, -1);

      if (*(v3 + 2))
      {
LABEL_23:
        v34 = *(v3 + 4);
        v35 = *(v3 + 5);
        swift_retain_n();
        v36 = v35;

        v37 = v36;
        v38 = sub_2610BC794();
        v39 = sub_2610BCD44();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v48[0] = v41;
          *v40 = 136446210;
          __swift_project_boxed_opaque_existential_1((v34 + 16), *(v34 + 40));
          v42 = sub_2610BC764();
          v44 = sub_260FA5970(v42, v43, v48);

          *(v40 + 4) = v44;
          _os_log_impl(&dword_260F97000, v38, v39, "PASExtensionLocator designatedExtension picking user picker extension %{public}s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v41);
          MEMORY[0x2666F8720](v41, -1, -1);
          MEMORY[0x2666F8720](v40, -1, -1);
        }

        v45 = v1[3];
        *v45 = v34;
        v45[1] = v37;
        goto LABEL_28;
      }
    }

    else
    {

      if (*(v3 + 2))
      {
        goto LABEL_23;
      }
    }

    v46 = v1[3];

    *v46 = 0;
    v46[1] = 0;
LABEL_28:
    v47 = v1[1];

    return v47();
  }
}

uint64_t sub_2610524A4()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_261052500(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FBF860;

  return sub_261051028(a1, a2, v6);
}

void *sub_2610525B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261052614(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2610525D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26105275C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2610525F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261052868(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261052614(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65B00, &qword_2610C95A0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65B08, &qword_2610C95A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26105275C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE67030, &unk_2610C4160);
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

char *sub_261052868(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64678, &qword_2610C2280);
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

uint64_t sub_261052974(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2610538DC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2610529E0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2610529E0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2610BD2F4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2610BCB84();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_261052C54(v7, v8, a1, v4);
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
    return sub_261052AD8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_261052AD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v19 = *a4;
    v4 = *a4 + 16 * a3 - 16;
    v5 = result - a3;
LABEL_5:
    v17 = a3;
    v6 = *(v19 + 16 * a3);
    v15 = v5;
    v16 = v4;
    while (1)
    {
      v18 = *(&v6 + 1);
      v8 = *v4;
      v7 = *(v4 + 8);
      __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));

      v9 = v18;

      v10 = v7;
      sub_2610BC764();
      __swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
      sub_2610BC764();
      sub_2610538F0();
      v11 = sub_2610BCE84();

      if (v11 != -1)
      {
LABEL_4:
        a3 = v17 + 1;
        v4 = v16 + 16;
        v5 = v15 - 1;
        if (v17 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      v12 = *v4;
      v6 = *(v4 + 16);
      *v4 = v6;
      *(v4 + 16) = v12;
      v4 -= 16;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_261052C54(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v100 = result;
    while (1)
    {
      v104 = v9;
      if (v9 + 1 >= v8)
      {
        v8 = v9 + 1;
      }

      else
      {
        v101 = v10;
        v102 = v5;
        v11 = (*v6 + 16 * (v9 + 1));
        v12 = v11[1];
        v13 = v9;
        v108 = 16 * v9;
        v14 = (*v6 + 16 * v9);
        v16 = *v14;
        v15 = v14[1];
        __swift_project_boxed_opaque_existential_1((*v11 + 16), *(*v11 + 40));

        v17 = v12;

        v115 = v15;
        sub_2610BC764();
        __swift_project_boxed_opaque_existential_1((v16 + 16), *(v16 + 40));
        sub_2610BC764();
        sub_2610538F0();
        v113 = sub_2610BCE84();

        v18 = v13 + 2;
        v19 = (v14 + 3);
        v111 = v8;
        while (v8 != v18)
        {
          v20 = *v19;
          v22 = v19 + 2;
          v21 = v19[2];
          v23 = *(v19 - 1);
          __swift_project_boxed_opaque_existential_1(v19[1] + 2, *(v19[1] + 5));

          v24 = v21;

          v25 = v20;
          sub_2610BC764();
          __swift_project_boxed_opaque_existential_1((v23 + 16), *(v23 + 40));
          sub_2610BC764();
          v26 = sub_2610BCE84();

          ++v18;
          v19 = v22;
          v8 = v111;
          if ((v113 == -1) == (v26 != -1))
          {
            v8 = v18 - 1;
            break;
          }
        }

        v10 = v101;
        v5 = v102;
        v9 = v104;
        v6 = a3;
        v27 = v108;
        if (v113 == -1)
        {
          v7 = v100;
          if (v8 < v104)
          {
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
            return result;
          }

          if (v104 < v8)
          {
            v78 = 16 * v8 - 16;
            v79 = v8;
            v80 = v104;
            do
            {
              if (v80 != --v79)
              {
                v82 = *a3;
                if (!*a3)
                {
                  goto LABEL_126;
                }

                v81 = *(v82 + v27);
                *(v82 + v27) = *(v82 + v78);
                *(v82 + v78) = v81;
              }

              ++v80;
              v78 -= 16;
              v27 += 16;
            }

            while (v80 < v79);
          }
        }

        else
        {
          v7 = v100;
        }
      }

      v28 = v6[1];
      if (v8 >= v28)
      {
        goto LABEL_21;
      }

      if (__OFSUB__(v8, v9))
      {
        goto LABEL_118;
      }

      if (v8 - v9 >= a4)
      {
        goto LABEL_21;
      }

      if (__OFADD__(v9, a4))
      {
        goto LABEL_119;
      }

      if (v9 + a4 >= v28)
      {
        v29 = v6[1];
      }

      else
      {
        v29 = v9 + a4;
      }

      if (v29 < v9)
      {
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      if (v8 == v29)
      {
LABEL_21:
        v30 = v8;
        if (v8 < v9)
        {
          goto LABEL_117;
        }
      }

      else
      {
        v103 = v5;
        v114 = *v6;
        v83 = *v6 + 16 * v8 - 16;
        v84 = v9 - v8;
        v107 = v29;
        do
        {
          v110 = v83;
          v112 = v8;
          v85 = *(v114 + 16 * v8);
          v109 = v84;
          do
          {
            v116 = *(&v85 + 1);
            v87 = *v83;
            v86 = *(v83 + 8);
            __swift_project_boxed_opaque_existential_1((v85 + 16), *(v85 + 40));

            v88 = v116;

            v89 = v86;
            sub_2610BC764();
            __swift_project_boxed_opaque_existential_1((v87 + 16), *(v87 + 40));
            sub_2610BC764();
            sub_2610538F0();
            v90 = sub_2610BCE84();

            if (v90 != -1)
            {
              break;
            }

            if (!v114)
            {
              goto LABEL_123;
            }

            v91 = *v83;
            v85 = *(v83 + 16);
            *v83 = v85;
            *(v83 + 16) = v91;
            v83 -= 16;
          }

          while (!__CFADD__(v84++, 1));
          v8 = v112 + 1;
          v83 = v110 + 16;
          v30 = v107;
          v84 = v109 - 1;
        }

        while (v112 + 1 != v107);
        v5 = v103;
        v6 = a3;
        v7 = v100;
        if (v107 < v104)
        {
          goto LABEL_117;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_260FD1D3C(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v32 = *(v10 + 2);
      v31 = *(v10 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        result = sub_260FD1D3C((v31 > 1), v32 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v33;
      v34 = &v10[16 * v32];
      *(v34 + 4) = v104;
      *(v34 + 5) = v30;
      v35 = *v7;
      if (!*v7)
      {
        goto LABEL_127;
      }

      v106 = v30;
      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v37 = *(v10 + 4);
            v38 = *(v10 + 5);
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_41:
            if (v40)
            {
              goto LABEL_106;
            }

            v53 = &v10[16 * v33];
            v55 = *v53;
            v54 = *(v53 + 1);
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_109;
            }

            v59 = &v10[16 * v36 + 32];
            v61 = *v59;
            v60 = *(v59 + 1);
            v47 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v47)
            {
              goto LABEL_112;
            }

            if (__OFADD__(v57, v62))
            {
              goto LABEL_113;
            }

            if (v57 + v62 >= v39)
            {
              if (v39 < v62)
              {
                v36 = v33 - 2;
              }

              goto LABEL_62;
            }

            goto LABEL_55;
          }

          v63 = &v10[16 * v33];
          v65 = *v63;
          v64 = *(v63 + 1);
          v47 = __OFSUB__(v64, v65);
          v57 = v64 - v65;
          v58 = v47;
LABEL_55:
          if (v58)
          {
            goto LABEL_108;
          }

          v66 = &v10[16 * v36];
          v68 = *(v66 + 4);
          v67 = *(v66 + 5);
          v47 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v47)
          {
            goto LABEL_111;
          }

          if (v69 < v57)
          {
            goto LABEL_3;
          }

LABEL_62:
          v74 = v36 - 1;
          if (v36 - 1 >= v33)
          {
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
            goto LABEL_120;
          }

          if (!*v6)
          {
            goto LABEL_124;
          }

          v75 = *&v10[16 * v74 + 32];
          v76 = *&v10[16 * v36 + 40];
          sub_261053460((*v6 + 16 * v75), (*v6 + 16 * *&v10[16 * v36 + 32]), (*v6 + 16 * v76), v35);
          if (v5)
          {
          }

          if (v76 < v75)
          {
            goto LABEL_102;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_2610538B4(v10);
          }

          if (v74 >= *(v10 + 2))
          {
            goto LABEL_103;
          }

          v77 = &v10[16 * v74];
          *(v77 + 4) = v75;
          *(v77 + 5) = v76;
          result = sub_261053828(v36);
          v33 = *(v10 + 2);
          if (v33 <= 1)
          {
            goto LABEL_3;
          }
        }

        v41 = &v10[16 * v33 + 32];
        v42 = *(v41 - 64);
        v43 = *(v41 - 56);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_104;
        }

        v46 = *(v41 - 48);
        v45 = *(v41 - 40);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_105;
        }

        v48 = &v10[16 * v33];
        v50 = *v48;
        v49 = *(v48 + 1);
        v47 = __OFSUB__(v49, v50);
        v51 = v49 - v50;
        if (v47)
        {
          goto LABEL_107;
        }

        v47 = __OFADD__(v39, v51);
        v52 = v39 + v51;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v52 >= v44)
        {
          v70 = &v10[16 * v36 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v47 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v47)
          {
            goto LABEL_114;
          }

          if (v39 < v73)
          {
            v36 = v33 - 2;
          }

          goto LABEL_62;
        }

        goto LABEL_41;
      }

LABEL_3:
      v8 = v6[1];
      v9 = v106;
      if (v106 >= v8)
      {
        goto LABEL_90;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_90:
  v93 = v7;
  v7 = v10;
  v10 = *v93;
  if (!*v93)
  {
    goto LABEL_128;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_121:
    result = sub_2610538B4(v7);
    v7 = result;
  }

  v94 = *(v7 + 2);
  if (v94 >= 2)
  {
    while (1)
    {
      v95 = *v6;
      if (!*v6)
      {
        goto LABEL_125;
      }

      v6 = (v94 - 1);
      v96 = *&v7[16 * v94];
      v97 = *&v7[16 * v94 + 24];
      sub_261053460((v95 + 16 * v96), (v95 + 16 * *&v7[16 * v94 + 16]), (v95 + 16 * v97), v10);
      if (v5)
      {
      }

      if (v97 < v96)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2610538B4(v7);
      }

      if (v94 - 2 >= *(v7 + 2))
      {
        goto LABEL_116;
      }

      v98 = &v7[16 * v94];
      *v98 = v96;
      *(v98 + 1) = v97;
      result = sub_261053828(v94 - 1);
      v94 = *(v7 + 2);
      v6 = a3;
      if (v94 <= 1)
      {
      }
    }
  }
}

uint64_t sub_261053460(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v13] <= a4)
    {
      memmove(a4, __dst, 16 * v13);
    }

    v41 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      v36 = v4;
      v39 = v7;
LABEL_25:
      v35 = v6 - 16;
      v24 = v5 - 16;
      v25 = v41;
      v37 = v6;
      do
      {
        v40 = v24;
        v26 = v24 + 16;
        v28 = *(v25 - 2);
        v27 = *(v25 - 1);
        v25 -= 16;
        v30 = *(v6 - 2);
        v29 = *(v6 - 1);
        __swift_project_boxed_opaque_existential_1((v28 + 16), *(v28 + 40));

        v31 = v27;

        v32 = v29;
        sub_2610BC764();
        __swift_project_boxed_opaque_existential_1((v30 + 16), *(v30 + 40));
        sub_2610BC764();
        sub_2610538F0();
        v33 = sub_2610BCE84();

        if (v33 == -1)
        {
          v5 = v40;
          if (v26 != v37)
          {
            *v40 = *v35;
          }

          v4 = v36;
          if (v41 <= v36 || (v6 = v35, v35 <= v39))
          {
            v6 = v35;
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if (v26 != v41)
        {
          *v40 = *v25;
        }

        v24 = v40 - 16;
        v41 = v25;
        v4 = v36;
        v6 = v37;
      }

      while (v25 > v36);
      v41 = v25;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v41 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      while (1)
      {
        v38 = v7;
        v14 = *(v6 + 1);
        v16 = *v4;
        v15 = *(v4 + 1);
        __swift_project_boxed_opaque_existential_1((*v6 + 16), *(*v6 + 40));

        v17 = v14;

        v18 = v6;
        v19 = v15;
        sub_2610BC764();
        __swift_project_boxed_opaque_existential_1((v16 + 16), *(v16 + 40));
        sub_2610BC764();
        sub_2610538F0();
        v20 = sub_2610BCE84();

        if (v20 != -1)
        {
          break;
        }

        v21 = v18;
        v6 = v18 + 16;
        v22 = v38;
        if (v38 != v18)
        {
          goto LABEL_13;
        }

LABEL_14:
        v7 = v22 + 16;
        if (v4 >= v41 || v6 >= v5)
        {
          goto LABEL_35;
        }
      }

      v21 = v4;
      v22 = v38;
      v23 = v38 == v4;
      v4 += 16;
      v6 = v18;
      if (v23)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v22 = *v21;
      goto LABEL_14;
    }

LABEL_35:
    v6 = v7;
  }

LABEL_37:
  if (v6 != v4 || v6 >= &v4[(v41 - v4 + (v41 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v41 - v4) / 16));
  }

  return 1;
}

uint64_t sub_261053828(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2610538B4(v3);
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
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_2610538F0()
{
  result = qword_27FE65AF0;
  if (!qword_27FE65AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65AF0);
  }

  return result;
}

uint64_t sub_261053944(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FB6DB4;

  return sub_2610515F4(a1, v4, v5, v6);
}

uint64_t sub_2610539F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FB6DB4;

  return sub_26104D438(a1, v4);
}

uint64_t sub_261053AB0(uint64_t a1)
{
  v1[4] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65AF8, &unk_2610C9588);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261053B7C, 0, 0);
}

uint64_t sub_261053B7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE658D0, &qword_2610C9540);
  sub_2610BCC44();
  v0[8] = MEMORY[0x277D84F90];
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_261053C5C;
  v2 = v0[5];

  return MEMORY[0x2822002E8](v0 + 2, 0, 0, v2);
}

uint64_t sub_261053C5C()
{

  return MEMORY[0x2822009F8](sub_261053D58, 0, 0);
}

uint64_t sub_261053D58()
{
  v1 = v0[2];
  if (v1 == 1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v9 = v0[1];
    v10 = v0[8];

    return v9(v10);
  }

  else
  {
    if (v1)
    {
      v13 = *(v0 + 1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v3 = v0[8];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v3 = sub_260FD1E40(0, *(v3 + 2) + 1, 1, v3);
      }

      v5 = *(v3 + 2);
      v4 = *(v3 + 3);
      v6 = v13;
      if (v5 >= v4 >> 1)
      {
        v11 = sub_260FD1E40((v4 > 1), v5 + 1, 1, v3);
        v6 = v13;
        v3 = v11;
      }

      *(v3 + 2) = v5 + 1;
      *&v3[16 * v5 + 32] = v6;
      v0[8] = v3;
    }

    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_261053C5C;
    v8 = v0[5];

    return MEMORY[0x2822002E8](v0 + 2, 0, 0, v8);
  }
}

uint64_t sub_261053EF0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FBD298;

  return sub_261018E90(v0 + 16);
}

uint64_t sub_261053F84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63AB0, qword_2610C95B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PASExtensionManifest.description.getter()
{
  sub_2610BCF84();
  MEMORY[0x2666F7380](60, 0xE100000000000000);
  swift_getObjectType();
  v1 = sub_2610BD634();
  MEMORY[0x2666F7380](v1);

  MEMORY[0x2666F7380](8250, 0xE200000000000000);
  sub_2610BD0A4();
  MEMORY[0x2666F7380](0xD000000000000022, 0x80000002610D5040);
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_isAccountPickerAvailable))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_isAccountPickerAvailable))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x2666F7380](v2, v3);

  MEMORY[0x2666F7380](0xD000000000000024, 0x80000002610D5070);
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_wantsFullScreenPresentation))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_wantsFullScreenPresentation))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x2666F7380](v4, v5);

  MEMORY[0x2666F7380](4095264, 0xE300000000000000);
  return 0;
}

uint64_t PASExtensionManifest.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_260FAC380(a1, v8);
  if (v9)
  {
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_isAccountPickerAvailable) == v7[OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_isAccountPickerAvailable])
      {
        v5 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_wantsFullScreenPresentation);
        v6 = v7[OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_wantsFullScreenPresentation];

        v3 = v5 ^ v6 ^ 1;
        return v3 & 1;
      }
    }
  }

  else
  {
    sub_260FAC3F0(v8);
  }

  v3 = 0;
  return v3 & 1;
}

uint64_t static PASExtensionManifest.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FE65B10 = a1;
  return result;
}

Swift::Void __swiftcall PASExtensionManifest.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_isAccountPickerAvailable);
  v4 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_wantsFullScreenPresentation);
  v6 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];
}

id PASExtensionManifest.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_261054C08(a1);

  return v4;
}

id PASExtensionManifest.init(coder:)(void *a1)
{
  v2 = sub_261054C08(a1);

  return v2;
}

id PASExtensionManifest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_261054870()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup27PASExtensionManifestBuilder_isAccountPickerAvailable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2610548B4(char a1)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup27PASExtensionManifestBuilder_isAccountPickerAvailable;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_261054964()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup27PASExtensionManifestBuilder_wantsFullScreenPresentation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2610549A8(char a1)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup27PASExtensionManifestBuilder_wantsFullScreenPresentation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_261054A58()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup27PASExtensionManifestBuilder_isAccountPickerAvailable;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup27PASExtensionManifestBuilder_wantsFullScreenPresentation;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = type metadata accessor for PASExtensionManifest();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_isAccountPickerAvailable] = v2;
  v6[OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_wantsFullScreenPresentation] = v4;
  v8.receiver = v6;
  v8.super_class = v5;
  return objc_msgSendSuper2(&v8, sel_init);
}

id PASExtensionManifestBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PASExtensionManifestBuilder.init()()
{
  v0[OBJC_IVAR____TtC21ProximityAppleIDSetup27PASExtensionManifestBuilder_isAccountPickerAvailable] = 0;
  v0[OBJC_IVAR____TtC21ProximityAppleIDSetup27PASExtensionManifestBuilder_wantsFullScreenPresentation] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASExtensionManifestBuilder();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PASExtensionManifestBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASExtensionManifestBuilder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_261054C08(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_2610BC9D4();
  v5 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_isAccountPickerAvailable] = v5;
  v6 = sub_2610BC9D4();
  LOBYTE(a1) = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_wantsFullScreenPresentation] = a1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t PASFlowStepPasscodeBiometricsRequest.__allocating_init(delegate:selectedFamilyMember:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_2610571A8(a1, a2, a3);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_261054F54@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__accountProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63C70, &unk_2610C0780);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63C70, &unk_2610C0780);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9D258(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63C70, &unk_2610C0780);
  swift_endAccess();
}

uint64_t PASFlowStepPasscodeBiometricsRequest.familyMemberFirstName.getter()
{
  sub_260FDD49C(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_selectedFamilyMember, &v6);
  if (v8 == 1)
  {
    v1 = v6;
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    v2 = [*(v1 + 16) firstName];
    if (v2)
    {
      v3 = v2;
      v4 = sub_2610BCA04();

      return v4;
    }
  }

  else
  {
    sub_260FDD4F8(&v6);
  }

  return 0;
}

uint64_t sub_26105514C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__messageSessionProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63CB0, &unk_2610BFDB0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63CB0, &unk_2610BFDB0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E15C(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63CB0, &unk_2610BFDB0);
  swift_endAccess();
}

uint64_t sub_261055288@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__featureFlagsProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &unk_27FE63C00, &qword_2610BEDD0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &unk_27FE63C00, &qword_2610BEDD0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E668(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &unk_27FE63C00, &qword_2610BEDD0);
  swift_endAccess();
}

uint64_t PASFlowStepPasscodeBiometricsRequest.init(delegate:selectedFamilyMember:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2610571A8(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_261055418()
{
  sub_261054F54((v0 + 7));
  v1 = v0[10];
  v2 = v0[11];
  v0[18] = v1;
  v0[19] = v2;
  v0[20] = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v0[21] = *(v2 + 16);
  v0[22] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xC375000000000000;
  sub_2610BCC74();
  v0[23] = sub_2610BCC64();
  v4 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_2610554D8, v4, v3);
}

uint64_t sub_2610554D8()
{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];

  v1(v3, v2);

  return MEMORY[0x2822009F8](sub_261055568, 0, 0);
}

uint64_t sub_261055568()
{
  if (*(v0 + 120))
  {
    sub_260F98E14((v0 + 96), v0 + 16);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v3 = (*(v2 + 40))(v1, v2) ^ 1;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  else
  {
    sub_260FA9980(v0 + 96, &unk_27FE641F0, qword_2610C0210);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    LOBYTE(v3) = 0;
  }

  v4 = *(v0 + 8);

  return v4(v3 & 1);
}

uint64_t PASFlowStepPasscodeBiometricsRequest.prepareForPresentation()()
{
  v1[2] = v0;
  v1[3] = sub_2610BCC74();
  v1[4] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_2610556FC;

  return sub_26104582C();
}

uint64_t sub_2610556FC()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {
    v4 = sub_2610BCBF4();

    return MEMORY[0x2822009F8](sub_260FF5690, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 56) = v5;
    *v5 = v2;
    v5[1] = sub_261055880;

    return sub_2610553F8();
  }
}

uint64_t sub_261055880(char a1)
{
  *(*v1 + 64) = a1;

  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_2610559C4, v3, v2);
}

uint64_t sub_2610559C4()
{
  v1 = *(v0 + 64);

  if (v1 == 1)
  {
    v2 = swift_allocObject();
    swift_weakInit();
    sub_260FC3450();
    swift_allocError();
    *v3 = 0xD00000000000004ELL;
    *(v3 + 8) = 0x80000002610D51C0;
    *(v3 + 16) = &unk_2610C9658;
    *(v3 + 24) = v2;
    *(v3 + 32) = 0;
    swift_willThrow();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_261055ACC(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_2610BCC74();
  *(v1 + 48) = sub_2610BCC64();
  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261055B64, v3, v2);
}

uint64_t sub_261055B64()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result;
    v3 = *(Strong + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result);
    *v2 = 1;
    v4 = *(v2 + 8);
    *(v2 + 8) = 0;
    sub_260FEBBC8(v3, v4);
    sub_2610439BC();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_261055C38()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[14] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepPasscodeBiometricsRequest requestSetup", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  sub_26105514C((v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v9 = (*(v6 + 16) + **(v6 + 16));
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_261055E30;

  return v9(v0 + 7, v5, v6);
}

uint64_t sub_261055E30()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_261056284;
  }

  else
  {
    v2 = sub_261055F44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261055F44()
{
  v1 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v2 = sub_260FA8D08(MEMORY[0x277D84F90]);
  v0[17] = v2;
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_261056034;
  v4 = MEMORY[0x277D839B0];

  return sub_260FAECF0((v0 + 21), 0, 0, 0, 1, v2, v1, v4);
}

uint64_t sub_261056034()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_261056464;
  }

  else
  {

    v2 = sub_261056150;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261056150()
{
  v1 = *(v0 + 168);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v2 = *(v0 + 104) + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result;
  v3 = *v2;
  *v2 = v1;
  v4 = *(v2 + 8);
  *(v2 + 8) = 0;
  sub_260FEBBC8(v3, v4);
  sub_2610BCC74();
  *(v0 + 160) = sub_2610BCC64();
  v6 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26105621C, v6, v5);
}

uint64_t sub_26105621C()
{

  sub_2610439BC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261056284()
{
  v18 = v0;
  v1 = v0[16];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v2 = v1;
  v3 = sub_2610BC794();
  v4 = sub_2610BCD64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v0[12] = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v8 = sub_2610BCA34();
    v10 = sub_260FA5970(v8, v9, &v17);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_260F97000, v3, v4, "PASFlowStepPasscodeBiometricsRequest requestSetup failed:\n%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  v11 = v0[13] + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result;
  v12 = *v11;
  *v11 = v1;
  v13 = *(v11 + 8);
  *(v11 + 8) = 1;
  sub_260FEBBC8(v12, v13);
  sub_2610BCC74();
  v0[20] = sub_2610BCC64();
  v15 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26105621C, v15, v14);
}

uint64_t sub_261056464()
{
  v18 = v0;

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[19];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v2 = v1;
  v3 = sub_2610BC794();
  v4 = sub_2610BCD64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v0[12] = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v8 = sub_2610BCA34();
    v10 = sub_260FA5970(v8, v9, &v17);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_260F97000, v3, v4, "PASFlowStepPasscodeBiometricsRequest requestSetup failed:\n%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  v11 = v0[13] + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result;
  v12 = *v11;
  *v11 = v1;
  v13 = *(v11 + 8);
  *(v11 + 8) = 1;
  sub_260FEBBC8(v12, v13);
  sub_2610BCC74();
  v0[20] = sub_2610BCC64();
  v15 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26105621C, v15, v14);
}

uint64_t PASFlowStepPasscodeBiometricsRequest.nextStep()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result + 8);
  if (v1 == 255)
  {
    v5 = 0x80000002610D5210;
    sub_260FC3450();
    swift_allocError();
    *v11 = 0xD000000000000032;
    *(v11 + 8) = 0x80000002610D5210;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 1;
    swift_willThrow();
    return v5;
  }

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result);
  sub_260FDD49C(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_selectedFamilyMember, &v62);
  if (v1)
  {
    sub_260FEBC04(v2, 1);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v3 = sub_2610BC7B4();
    __swift_project_value_buffer(v3, qword_27FE65900);
    sub_260FEBC04(v2, 1);
    v4 = sub_2610BC794();
    v5 = sub_2610BCD64();
    sub_260FEBBC8(v2, v1);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v61[0] = v7;
      *v6 = 136446210;
      v58[0] = v2;
      sub_260FEBC04(v2, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
      v8 = sub_2610BCA34();
      v10 = sub_260FA5970(v8, v9, v61);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepPasscodeBiometricsRequest failed with error:\n%{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x2666F8720](v7, -1, -1);
      MEMORY[0x2666F8720](v6, -1, -1);
    }

    swift_willThrow();
    sub_260FDD4F8(&v62);
    return v5;
  }

  if (v64 <= 1u)
  {
    if (v64)
    {
      v40 = v62;
      sub_260F98E14((&v62 + 8), v61);
      sub_261055288(v58);
      v41 = v59;
      v42 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      LOBYTE(v55) = 1;
      LOBYTE(v41) = (*(v42 + 8))(&v55, v41, v42);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      v43 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
      if ((v41 & 1) == 0)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v54 = *(v43 + 8);
        type metadata accessor for PASFlowStepProxiedAuth(0);
        swift_allocObject();
        v5 = sub_261011064(Strong, v54, v40);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0Tm(v61);
        v33 = &unk_27FE65420;
        v34 = type metadata accessor for PASFlowStepProxiedAuth;
        goto LABEL_19;
      }

      swift_beginAccess();
      v44 = swift_unknownObjectWeakLoadStrong();
      v45 = *(v43 + 8);
      sub_260FA99E0(v61, v58);
      *(&v56 + 1) = type metadata accessor for PASFamilyMember();
      v57 = sub_261057620(&unk_27FE64210, type metadata accessor for PASFamilyMember, &protocol conformance descriptor for PASFamilyMember);
      *&v55 = v40;
      type metadata accessor for PASFlowStepSourceAuthentication(0);
      v46 = swift_allocObject();
      v47 = v59;
      v48 = v60;
      v49 = __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
      MEMORY[0x28223BE20](v49, v49);
      v51 = &v55 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v51);
      v5 = sub_26101F940(v44, v45, v51, &v55, v46, v47, v48);
      goto LABEL_17;
    }

    sub_260F98E14(&v62, v61);
    v21 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    v23 = *(v21 + 8);
    sub_260FA99E0(v61, v58);
    type metadata accessor for PASFlowStepSourceAuthentication(0);
    v55 = 0u;
    v56 = 0u;
    v57 = 0;
LABEL_16:
    v26 = swift_allocObject();
    v27 = v59;
    v28 = v60;
    v29 = __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
    MEMORY[0x28223BE20](v29, v29);
    v31 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 16))(v31);
    v5 = sub_26101F940(v22, v23, v31, &v55, v26, v27, v28);
LABEL_17:
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    goto LABEL_18;
  }

  if (v64 == 2)
  {
    v24 = v62;
    sub_260F98E14((&v62 + 8), v61);
    v25 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    v23 = *(v25 + 8);
    sub_260FA99E0(v61, v58);
    *(&v56 + 1) = type metadata accessor for PASAccountWithImage();
    v57 = sub_261057620(&unk_27FE65010, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
    *&v55 = v24;
    type metadata accessor for PASFlowStepSourceAuthentication(0);
    goto LABEL_16;
  }

  if (v64 == 3)
  {
    v12 = v62;
    v13 = v63;
    v14 = *(*(&v62 + 1) + 56);
    type metadata accessor for PASExtensionAuthController();
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    v16 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    v18 = *(v16 + 8);
    v61[3] = type metadata accessor for PASExtensionPickedAccount();
    v61[4] = sub_261057620(&qword_27FE65B68, type metadata accessor for PASExtensionPickedAccount, &protocol conformance descriptor for PASExtensionPickedAccount);
    v61[0] = v12;
    type metadata accessor for PASFlowStepSourceAuthentication(0);
    v19 = swift_allocObject();
    v20 = v12;

    v5 = sub_261057390(v17, v18, v15, v61, v19);

    swift_unknownObjectRelease();
LABEL_18:
    v33 = &unk_27FE65B70;
    v34 = type metadata accessor for PASFlowStepSourceAuthentication;
LABEL_19:
    sub_261057620(v33, v34, &protocol conformance descriptor for PASSourceFlowStepBase);
    return v5;
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v36 = sub_2610BC7B4();
  __swift_project_value_buffer(v36, qword_27FE65900);
  v37 = sub_2610BC794();
  v5 = sub_2610BCD64();
  if (os_log_type_enabled(v37, v5))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_260F97000, v37, v5, "PASFlowStepPasscodeBiometricsRequest failed with with no selection", v38, 2u);
    MEMORY[0x2666F8720](v38, -1, -1);
  }

  sub_261028960();
  swift_allocError();
  *v39 = 0;
  swift_willThrow();
  sub_260FEBBC8(v2, v1);
  return v5;
}

uint64_t sub_261056F98()
{

  sub_260FDD4F8(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_selectedFamilyMember);
  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result + 8));
}

uint64_t PASFlowStepPasscodeBiometricsRequest.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  sub_260FDD4F8(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_selectedFamilyMember);
  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result + 8));

  return v0;
}

uint64_t PASFlowStepPasscodeBiometricsRequest.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();

  sub_260FDD4F8(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_selectedFamilyMember);
  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result + 8));

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2610571A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v3 + v7) = v8;
  v9 = v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_result;
  *v9 = 0;
  *(v9 + 8) = -1;
  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v11 = swift_allocObject();
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0;
  *(v3 + v10) = v11;
  v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v3 + v12) = v13;
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest__featureFlagsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0;
  *(v3 + v14) = v15;
  sub_260FDD49C(a3, v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup36PASFlowStepPasscodeBiometricsRequest_selectedFamilyMember);
  v16 = sub_26104DC44(a1, a2);
  sub_260FDD4F8(a3);
  return v16;
}

uint64_t sub_261057300()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FB6DB4;

  return sub_261055ACC(v0);
}

uint64_t sub_261057390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[3] = type metadata accessor for PASExtensionAuthController();
  v26[4] = &off_287388CE0;
  v26[0] = a3;
  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(a5 + v10) = v11;
  v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__anisetteDataProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65440, &unk_2610C5640);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(a5 + v12) = v13;
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__accountStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0;
  *(a5 + v14) = v15;
  v16 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v17 = swift_allocObject();
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0;
  *(a5 + v16) = v17;
  v18 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__targetAccountOptionsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648E0, &qword_2610BEEC0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(a5 + v18) = v19;
  v20 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication__featureFlags;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v21 = swift_allocObject();
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *(a5 + v20) = v21;
  *(v21 + 48) = 0;
  v22 = a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_account;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  v23 = a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authControllerResult;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  *(v23 + 40) = 1;
  sub_260FA99E0(v26, a5 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepSourceAuthentication_authController);
  swift_beginAccess();
  sub_261020090(a4, v22);
  swift_endAccess();
  v24 = sub_26104DC44(a1, a2);
  sub_260FA9980(a4, &unk_27FE656B0, &unk_2610BFCE0);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  return v24;
}

uint64_t sub_2610575C8(uint64_t a1)
{
  result = sub_261057620(&unk_27FE65BA0, type metadata accessor for PASFlowStepPasscodeBiometricsRequest, &protocol conformance descriptor for PASSourceFlowStepBase);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_261057620(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PASFlowStepPasscodeBiometricsRequest(uint64_t a1)
{
  result = qword_27FE65BB0;
  if (!qword_27FE65BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261057758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26105777C, 0, 0);
}

uint64_t sub_26105777C()
{
  if (*(v0 + 32) < 1)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v6 = sub_2610BC7B4();
    __swift_project_value_buffer(v6, qword_27FE65900);
    v7 = sub_2610BC794();
    v8 = sub_2610BCD64();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_260F97000, v7, v8, "PASExtensionAuthenticator authenticate with contextProvider maximum authentication attempts reached", v9, 2u);
      MEMORY[0x2666F8720](v9, -1, -1);
    }

    sub_26105807C();
    swift_allocError();
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v1 = *(v0 + 40);
    v2 = (*(v0 + 16))();
    *(v0 + 48) = v2;
    [v2 setAuthenticationType_];
    v3 = *(v1 + 16);
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    v4[1] = sub_261057960;

    return sub_261019F7C(v3, v2);
  }
}

uint64_t sub_261057960(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_261057AF4;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_261057A88;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261057A88()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_261057AF4()
{
  v1 = *(v0 + 64);

  v2 = v1;
  v3 = sub_2610BC4E4();
  v4 = [v3 domain];
  v5 = sub_2610BCA04();
  v7 = v6;

  if (v5 == 0xD000000000000022 && 0x80000002610D25B0 == v7)
  {
  }

  else
  {
    v9 = sub_2610BD384();

    if ((v9 & 1) == 0)
    {

LABEL_16:
      swift_willThrow();
      v21 = *(v0 + 8);

      return v21();
    }
  }

  v10 = *(v0 + 64);
  v11 = [v3 code];

  if (v11 != 3200)
  {
    goto LABEL_16;
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v12 = sub_2610BC7B4();
  __swift_project_value_buffer(v12, qword_27FE65900);
  v13 = sub_2610BC794();
  v14 = sub_2610BCD44();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_260F97000, v13, v14, "PASExtensionAuthenticator authenticate with contextProvider extension asked for authentication re-try", v15, 2u);
    MEMORY[0x2666F8720](v15, -1, -1);
  }

  v16 = *(v0 + 32);

  v17 = swift_task_alloc();
  *(v0 + 80) = v17;
  *v17 = v0;
  v17[1] = sub_261057D78;
  v19 = *(v0 + 16);
  v18 = *(v0 + 24);

  return sub_261057758(v19, v18, v16 - 1);
}

uint64_t sub_261057D78(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_261057F08;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_261057EA0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261057EA0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_261057F08()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261057F6C()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_261057FD0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FB6F34;

  return sub_261057758(a1, a2, 10);
}

unint64_t sub_26105807C()
{
  result = qword_27FE65BC8;
  if (!qword_27FE65BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65BC8);
  }

  return result;
}

unint64_t sub_2610580D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000045;
  *(inited + 56) = 0x80000002610D5340;
  v2 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FD6C78(inited + 32);
  return v2;
}

uint64_t sub_2610581A8(uint64_t a1)
{
  v2 = sub_261058268();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610581E4(uint64_t a1)
{
  v2 = sub_261058268();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_261058230(void *a1)
{
  a1[1] = sub_261058268();
  a1[2] = sub_2610582BC();
  result = sub_261058310();
  a1[3] = result;
  return result;
}

unint64_t sub_261058268()
{
  result = qword_27FE65BD0;
  if (!qword_27FE65BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65BD0);
  }

  return result;
}

unint64_t sub_2610582BC()
{
  result = qword_27FE65BD8;
  if (!qword_27FE65BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65BD8);
  }

  return result;
}

unint64_t sub_261058310()
{
  result = qword_27FE65BE0;
  if (!qword_27FE65BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65BE0);
  }

  return result;
}

unint64_t sub_261058368()
{
  result = qword_27FE65BE8;
  if (!qword_27FE65BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65BE8);
  }

  return result;
}

uint64_t sub_2610583C0@<X0>(uint64_t a1@<X8>)
{
  v23[0] = a1;
  v1 = sub_2610BC664();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2610BC674();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BF0, &qword_2610C9928);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v23 - v13;
  v15 = sub_2610BC5D4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2610BC654();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9968], v1);
  sub_2610BC644();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
  v20 = sub_2610BC3E4();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    sub_2610586EC(v14);
    return (*(v16 + 16))(v23[0], v23[1], v15);
  }

  else
  {
    sub_2610BC3D4();
    (*(v21 + 8))(v14, v20);
    return (*(v16 + 32))(v23[0], v19, v15);
  }
}

uint64_t sub_2610586EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BF0, &qword_2610C9928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261058754(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v27 = result + 64;
  v28 = result;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v26 = (v4 + 63) >> 6;
  while (v6)
  {
    v7 = __clz(__rbit64(v6));
    v31 = (v6 - 1) & v6;
LABEL_13:
    v10 = v7 | (v3 << 6);
    v11 = *(*(v2 + 48) + 8 * v10);
    v12 = *(v2 + 56) + 48 * v10;
    v13 = *v12;
    v14 = *(v12 + 8);
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    v17 = *(v12 + 32);
    v18 = *(v12 + 40);
    v19 = *(v12 + 41);
    v20 = v11;
    v32 = v13;
    sub_260FF3588(v13, v14, v16, v15, v17, v18, v19);
    result = v20 == 0;
    if (!v20)
    {
      return result;
    }

    v30 = v19;
    v21 = sub_260FA5F28(v20);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      sub_260FF3648(v32, v14, v16, v15, v17, v18, v19);
      return 0;
    }

    v24 = *(a2 + 56) + 48 * v21;
    v29 = *v24;
    v34 = *(v24 + 8);
    v35 = *(v24 + 16);
    v36 = *(v24 + 24);
    v37 = *(v24 + 32);
    v38 = *(v24 + 40);
    v39 = *(v24 + 41);
    sub_260FF3588(*v24, v34, v35, v36, v37, v38, v39);
    sub_261060DC0();
    sub_261060D68();
    v25 = sub_2610BD5B4();
    sub_260FF3648(v32, v14, v16, v15, v17, v18, v30);
    sub_260FF3648(v29, v34, v35, v36, v37, v38, v39);
    v2 = v28;
    v6 = v31;
    result = 0;
    if ((v25 & 1) == 0)
    {
      return result;
    }
  }

  v8 = v3;
  while (1)
  {
    v3 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v3 >= v26)
    {
      return 1;
    }

    v9 = *(v27 + 8 * v3);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v31 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2610589F4(uint64_t a1)
{
  v2 = sub_26105F028();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261058A30(uint64_t a1)
{
  v2 = sub_26105F028();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261058A6C(uint64_t a1)
{
  v2 = sub_26105EFD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261058AA8(uint64_t a1)
{
  v2 = sub_26105EFD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261058AE4(uint64_t a1)
{
  v2 = sub_26105F124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261058B20(uint64_t a1)
{
  v2 = sub_26105F124();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261058B5C(uint64_t a1)
{
  v2 = sub_26105F0D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261058B98(uint64_t a1)
{
  v2 = sub_26105F0D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1Command.Request.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BF8, &qword_2610C9930);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v57 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C00, &qword_2610C9938);
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v54 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C08, &qword_2610C9940);
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C10, &qword_2610C9948);
  v60 = *(v15 - 8);
  v61 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v54 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26105EFD4();
  sub_2610BD5F4();
  v19 = v2[11];
  v75[10] = v2[10];
  v75[11] = v19;
  v75[12] = v2[12];
  v20 = v2[7];
  v75[6] = v2[6];
  v75[7] = v20;
  v21 = v2[9];
  v75[8] = v2[8];
  v75[9] = v21;
  v22 = v2[3];
  v75[2] = v2[2];
  v75[3] = v22;
  v23 = v2[5];
  v75[4] = v2[4];
  v75[5] = v23;
  v24 = v2[1];
  v75[0] = *v2;
  v75[1] = v24;
  enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 = get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(v75);
  v26 = sub_260F9C514(v75);
  v27 = v26;
  if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0)
  {
    if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 == 1)
    {
      LOBYTE(v62) = 1;
      sub_26105F0D0();
      v28 = v61;
      sub_2610BD234();
      v29 = *v27;
      v30 = *(v27 + 16);
      v31 = *(v27 + 48);
      v64 = *(v27 + 32);
      v65 = v31;
      v62 = v29;
      v63 = v30;
      v32 = *(v27 + 64);
      v33 = *(v27 + 80);
      v34 = *(v27 + 112);
      v68 = *(v27 + 96);
      v69 = v34;
      v66 = v32;
      v67 = v33;
      v35 = *(v27 + 128);
      v36 = *(v27 + 144);
      v37 = *(v27 + 160);
      *&v73 = *(v27 + 176);
      v71 = v36;
      v72 = v37;
      v70 = v35;
      sub_260FF2D78();
      v38 = v56;
      sub_2610BD2A4();
      (*(v55 + 8))(v10, v38);
    }

    else
    {
      LOBYTE(v62) = 2;
      sub_26105F028();
      v43 = v57;
      v28 = v61;
      sub_2610BD234();
      v62 = *v27;
      v44 = *(v27 + 16);
      v45 = *(v27 + 32);
      v46 = *(v27 + 64);
      v65 = *(v27 + 48);
      v66 = v46;
      v63 = v44;
      v64 = v45;
      v47 = *(v27 + 80);
      v48 = *(v27 + 96);
      v49 = *(v27 + 128);
      v69 = *(v27 + 112);
      v70 = v49;
      v67 = v47;
      v68 = v48;
      v50 = *(v27 + 144);
      v51 = *(v27 + 160);
      v52 = *(v27 + 192);
      v73 = *(v27 + 176);
      v74 = v52;
      v71 = v50;
      v72 = v51;
      sub_26105F07C();
      v53 = v59;
      sub_2610BD2A4();
      (*(v58 + 8))(v43, v53);
    }

    return (*(v60 + 8))(v18, v28);
  }

  else
  {
    v39 = *v26;
    v40 = *(v26 + 1);
    LOBYTE(v62) = 0;
    sub_26105F124();
    v41 = v61;
    sub_2610BD234();
    LOBYTE(v62) = v39;
    *(&v62 + 1) = v40;
    sub_260FEF448();
    sub_2610BD2A4();
    (*(v54 + 8))(v14, v11);
    return (*(v60 + 8))(v18, v41);
  }
}

uint64_t V1Command.Request.hash(into:)(__int128 *a1)
{
  v3 = v1[11];
  v13[10] = v1[10];
  v13[11] = v3;
  v13[12] = v1[12];
  v4 = v1[7];
  v13[6] = v1[6];
  v13[7] = v4;
  v5 = v1[9];
  v13[8] = v1[8];
  v13[9] = v5;
  v6 = v1[3];
  v13[2] = v1[2];
  v13[3] = v6;
  v7 = v1[5];
  v13[4] = v1[4];
  v13[5] = v7;
  v8 = v1[1];
  v13[0] = *v1;
  v13[1] = v8;
  enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 = get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(v13);
  v10 = sub_260F9C514(v13);
  if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0)
  {
    if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 == 1)
    {
      MEMORY[0x2666F7E40](1);
      IdMSAccount.hash(into:)(a1);
      return PASAuthResults.hash(into:)(a1);
    }

    MEMORY[0x2666F7E40](2);
    v12 = *(v10 + 184);
    IdMSAccount.hash(into:)(a1);
    if (v12)
    {
      sub_2610BD534();
      sub_2610BCA54();
      return sub_2610BCA54();
    }
  }

  else
  {
    MEMORY[0x2666F7E40](0);
    sub_2610BD534();
    sub_2610BD534();
  }

  return sub_2610BD534();
}

uint64_t V1Command.Request.hashValue.getter()
{
  sub_2610BD514();
  V1Command.Request.hash(into:)(v1);
  return sub_2610BD574();
}

uint64_t V1Command.Request.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v54 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C40, &qword_2610C9950);
  v53 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v3);
  v56 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C48, &qword_2610C9958);
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C50, &qword_2610C9960);
  v50 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C58, &unk_2610C9968);
  v55 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v47 - v15;
  v17 = a1[3];
  v102 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_26105EFD4();
  v18 = v58;
  sub_2610BD5D4();
  if (!v18)
  {
    v48 = v9;
    v49 = 0;
    v20 = v56;
    v19 = v57;
    v21 = v55;
    v58 = v16;
    v22 = sub_2610BD214();
    v23 = (2 * *(v22 + 16)) | 1;
    v98 = v22;
    v99 = v22 + 32;
    v100 = 0;
    v101 = v23;
    v24 = sub_260FD5DC0();
    v25 = v13;
    if (v24 == 3 || v100 != v101 >> 1)
    {
      v31 = sub_2610BCFF4();
      swift_allocError();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE643B8, &qword_2610C4650);
      *v33 = &type metadata for V1Command.Request;
      v34 = v25;
      v35 = v58;
      sub_2610BD174();
      sub_2610BCFE4();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v21 + 8))(v35, v34);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v102);
    }

    if (!v24)
    {
      LOBYTE(v72) = 0;
      sub_26105F124();
      v27 = v58;
      v37 = v49;
      sub_2610BD164();
      if (!v37)
      {
        sub_260FEF3F4();
        v38 = v48;
        sub_2610BD1E4();
        (*(v50 + 8))(v12, v38);
        (*(v21 + 8))(v27, v13);
        swift_unknownObjectRelease();
        LOBYTE(v72) = v59;
        *(&v72 + 1) = *(&v59 + 1);
        sub_260F99F8C(&v72);
        v95 = v82;
        v96 = v83;
        v97 = v84;
        v91 = v78;
        v92 = v79;
        v93 = v80;
        v94 = v81;
        v87 = v74;
        v88 = v75;
        v89 = v76;
        v90 = v77;
        v85 = v72;
        v86 = v73;
        v29 = v54;
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    if (v24 == 1)
    {
      LOBYTE(v72) = 1;
      sub_26105F0D0();
      v26 = v8;
      v27 = v58;
      v28 = v49;
      sub_2610BD164();
      v29 = v54;
      if (!v28)
      {
        sub_260FF2D24();
        v30 = v52;
        sub_2610BD1E4();
        (*(v51 + 8))(v26, v30);
        (*(v21 + 8))(v27, v13);
        swift_unknownObjectRelease();
        v80 = v67;
        v81 = v68;
        v82 = v69;
        *&v83 = v70;
        v76 = v63;
        v77 = v64;
        v78 = v65;
        v79 = v66;
        v72 = v59;
        v73 = v60;
        v74 = v61;
        v75 = v62;
        sub_260F99FD4(&v72);
        v95 = v82;
        v96 = v83;
        v97 = v84;
        v91 = v78;
        v92 = v79;
        v93 = v80;
        v94 = v81;
        v87 = v74;
        v88 = v75;
        v89 = v76;
        v90 = v77;
        v85 = v72;
        v86 = v73;
LABEL_17:
        v41 = v96;
        v29[10] = v95;
        v29[11] = v41;
        v29[12] = v97;
        v42 = v92;
        v29[6] = v91;
        v29[7] = v42;
        v43 = v94;
        v29[8] = v93;
        v29[9] = v43;
        v44 = v88;
        v29[2] = v87;
        v29[3] = v44;
        v45 = v90;
        v29[4] = v89;
        v29[5] = v45;
        v46 = v86;
        *v29 = v85;
        v29[1] = v46;
        return __swift_destroy_boxed_opaque_existential_0Tm(v102);
      }

LABEL_13:
      (*(v21 + 8))(v27, v13);
      goto LABEL_9;
    }

    LOBYTE(v72) = 2;
    sub_26105F028();
    v39 = v58;
    v40 = v49;
    sub_2610BD164();
    v29 = v54;
    if (!v40)
    {
      sub_26105F178();
      sub_2610BD1E4();
      (*(v53 + 8))(v20, v19);
      (*(v21 + 8))(v58, v13);
      swift_unknownObjectRelease();
      v69 = v82;
      v70 = v83;
      v71 = v84;
      v65 = v78;
      v66 = v79;
      v67 = v80;
      v68 = v81;
      v61 = v74;
      v62 = v75;
      v63 = v76;
      v64 = v77;
      v59 = v72;
      v60 = v73;
      sub_260F9B85C(&v59);
      v95 = v69;
      v96 = v70;
      v97 = v71;
      v91 = v65;
      v92 = v66;
      v93 = v67;
      v94 = v68;
      v87 = v61;
      v88 = v62;
      v89 = v63;
      v90 = v64;
      v85 = v59;
      v86 = v60;
      goto LABEL_17;
    }

    (*(v21 + 8))(v39, v13);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v102);
}

uint64_t sub_261059B84()
{
  sub_2610BD514();
  V1Command.Request.hash(into:)(v1);
  return sub_2610BD574();
}

uint64_t sub_261059BC8(uint64_t a1)
{
  sub_2610BD514();
  V1Command.Request.hash(into:)(v2);
  return sub_2610BD574();
}

uint64_t sub_261059C08(uint64_t a1)
{
  v2 = sub_26105F96C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261059C44(uint64_t a1)
{
  v2 = sub_26105F96C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261059C80(uint64_t a1)
{
  v2 = sub_26105F918();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261059CBC(uint64_t a1)
{
  v2 = sub_26105F918();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261059CF8(uint64_t a1)
{
  v2 = sub_26105FA68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261059D34(uint64_t a1)
{
  v2 = sub_26105FA68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261059D70(uint64_t a1)
{
  v2 = sub_26105FA14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261059DAC(uint64_t a1)
{
  v2 = sub_26105FA14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1Command.Response.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C68, &qword_2610C9978);
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v52 = &v49 - v6;
  *&v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C70, &qword_2610C9980);
  *&v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v7);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C78, &qword_2610C9988);
  v50 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65C80, &qword_2610C9990);
  v56 = *(v14 - 8);
  v57 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v49 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26105F918();
  sub_2610BD5F4();
  v18 = *(v2 + 144);
  v70[8] = *(v2 + 128);
  v70[9] = v18;
  v70[10] = *(v2 + 160);
  v71 = *(v2 + 176);
  v19 = *(v2 + 80);
  v70[4] = *(v2 + 64);
  v70[5] = v19;
  v20 = *(v2 + 112);
  v70[6] = *(v2 + 96);
  v70[7] = v20;
  v21 = *(v2 + 16);
  v70[0] = *v2;
  v70[1] = v21;
  v22 = *(v2 + 48);
  v70[2] = *(v2 + 32);
  v70[3] = v22;
  enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 = get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(v70);
  v24 = sub_260F9C514(v70);
  v25 = v24;
  if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0)
  {
    if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 == 1)
    {
      LOBYTE(v58) = 1;
      sub_26105FA14();
      v26 = v57;
      sub_2610BD234();
      v27 = *v25;
      v28 = *(v25 + 1);
      v29 = *(v25 + 3);
      v60 = *(v25 + 2);
      v61 = v29;
      v58 = v27;
      v59 = v28;
      v30 = *(v25 + 4);
      v31 = *(v25 + 5);
      v32 = *(v25 + 7);
      v64 = *(v25 + 6);
      v65 = v32;
      v62 = v30;
      v63 = v31;
      v33 = *(v25 + 8);
      v34 = *(v25 + 9);
      v35 = *(v25 + 10);
      v69 = *(v25 + 22);
      v67 = v34;
      v68 = v35;
      v66 = v33;
      sub_260FF3058();
      v36 = v53;
      sub_2610BD2A4();
      (*(v51 + 8))(v9, v36);
      return (*(v56 + 8))(v17, v26);
    }

    else
    {
      v42 = *(v24 + 4);
      v43 = v24[40];
      v44 = v24[41];
      LOBYTE(v58) = 2;
      sub_26105F96C();
      v45 = *(v25 + 1);
      v53 = *v25;
      v51 = v45;
      v46 = v52;
      v47 = v57;
      sub_2610BD234();
      v58 = v53;
      v59 = v51;
      *&v60 = v42;
      BYTE8(v60) = v43;
      BYTE9(v60) = v44;
      sub_26105F9C0();
      v48 = v55;
      sub_2610BD2A4();
      (*(v54 + 8))(v46, v48);
      return (*(v56 + 8))(v17, v47);
    }
  }

  else
  {
    LODWORD(v55) = *v24;
    v38 = v24[1];
    v39 = v24[2];
    v40 = v24[3];
    LOBYTE(v58) = 0;
    sub_26105FA68();
    v41 = v57;
    sub_2610BD234();
    LOBYTE(v58) = v55;
    BYTE1(v58) = v38;
    BYTE2(v58) = v39;
    BYTE3(v58) = v40;
    sub_260FEF728();
    sub_2610BD2A4();
    (*(v50 + 8))(v13, v10);
    return (*(v56 + 8))(v17, v41);
  }
}

uint64_t V1Command.Response.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 144);
  v14[8] = *(v1 + 128);
  v14[9] = v3;
  v14[10] = *(v1 + 160);
  v15 = *(v1 + 176);
  v4 = *(v1 + 80);
  v14[4] = *(v1 + 64);
  v14[5] = v4;
  v5 = *(v1 + 112);
  v14[6] = *(v1 + 96);
  v14[7] = v5;
  v6 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v6;
  v7 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v7;
  enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 = get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(v14);
  v9 = sub_260F9C514(v14);
  if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0)
  {
    if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 == 1)
    {
      v10 = v9;
      MEMORY[0x2666F7E40](1);
      v11 = *(v10 + 176);
      IdMSAccount.hash(into:)(a1);
      return sub_260FF1FCC(a1, v11);
    }

    else
    {
      MEMORY[0x2666F7E40](2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CB0, &qword_2610C9998);
      sub_26105FABC();
      sub_260FF35F4();
      return sub_2610BD5A4();
    }
  }

  else
  {
    v13 = *(v9 + 3);
    MEMORY[0x2666F7E40](0);
    sub_2610BD534();
    sub_2610BD534();
    if (v13 != 1)
    {
      sub_2610BD534();
    }

    return sub_2610BD534();
  }
}

uint64_t V1Command.Response.hashValue.getter()
{
  sub_2610BD514();
  V1Command.Response.hash(into:)(v1);
  return sub_2610BD574();
}

uint64_t V1Command.Response.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CC0, &qword_2610C99A0);
  v52 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v3);
  v55 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CC8, &qword_2610C99A8);
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CD0, &qword_2610C99B0);
  v49 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CD8, &qword_2610C99B8);
  v54 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v46 - v15;
  v17 = a1[3];
  v98 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_26105F918();
  v18 = v57;
  sub_2610BD5D4();
  if (!v18)
  {
    v47 = v9;
    v48 = 0;
    v20 = v55;
    v19 = v56;
    v21 = v54;
    v57 = v16;
    v22 = sub_2610BD214();
    v23 = (2 * *(v22 + 16)) | 1;
    v94 = v22;
    v95 = v22 + 32;
    v96 = 0;
    v97 = v23;
    v24 = sub_260FD5DC0();
    v25 = v13;
    if (v24 == 3 || v96 != v97 >> 1)
    {
      v31 = sub_2610BCFF4();
      swift_allocError();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE643B8, &qword_2610C4650);
      *v33 = &type metadata for V1Command.Response;
      v34 = v25;
      v35 = v57;
      sub_2610BD174();
      sub_2610BCFE4();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v21 + 8))(v35, v34);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v98);
    }

    if (!v24)
    {
      LOBYTE(v70) = 0;
      sub_26105FA68();
      v27 = v57;
      v37 = v48;
      sub_2610BD164();
      if (!v37)
      {
        sub_260FEF6D4();
        v38 = v47;
        sub_2610BD1E4();
        (*(v49 + 8))(v12, v38);
        (*(v21 + 8))(v27, v13);
        swift_unknownObjectRelease();
        LODWORD(v70) = v58;
        sub_260F99F8C(&v70);
        v90 = v78;
        v91 = v79;
        v92 = v80;
        v93 = v81;
        v86 = v74;
        v87 = v75;
        v88 = v76;
        v89 = v77;
        v82 = v70;
        v83 = v71;
        v84 = v72;
        v85 = v73;
        v29 = v53;
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    if (v24 == 1)
    {
      LOBYTE(v70) = 1;
      sub_26105FA14();
      v26 = v8;
      v27 = v57;
      v28 = v48;
      sub_2610BD164();
      v29 = v53;
      if (!v28)
      {
        sub_260FF3004();
        v30 = v51;
        sub_2610BD1E4();
        (*(v50 + 8))(v26, v30);
        (*(v21 + 8))(v27, v13);
        swift_unknownObjectRelease();
        v66 = v78;
        v67 = v79;
        v68 = v80;
        v69 = v81;
        v62 = v74;
        v63 = v75;
        v64 = v76;
        v65 = v77;
        v58 = v70;
        v59 = v71;
        v60 = v72;
        v61 = v73;
        sub_260F99FD4(&v58);
        v90 = v66;
        v91 = v67;
        v92 = v68;
        v93 = v69;
        v86 = v62;
        v87 = v63;
        v88 = v64;
        v89 = v65;
        v82 = v58;
        v83 = v59;
        v84 = v60;
        v85 = v61;
LABEL_17:
        v41 = v91;
        *(v29 + 128) = v90;
        *(v29 + 144) = v41;
        *(v29 + 160) = v92;
        *(v29 + 176) = v93;
        v42 = v87;
        *(v29 + 64) = v86;
        *(v29 + 80) = v42;
        v43 = v89;
        *(v29 + 96) = v88;
        *(v29 + 112) = v43;
        v44 = v83;
        *v29 = v82;
        *(v29 + 16) = v44;
        v45 = v85;
        *(v29 + 32) = v84;
        *(v29 + 48) = v45;
        return __swift_destroy_boxed_opaque_existential_0Tm(v98);
      }

LABEL_13:
      (*(v21 + 8))(v27, v13);
      goto LABEL_9;
    }

    LOBYTE(v70) = 2;
    sub_26105F96C();
    v39 = v57;
    v40 = v48;
    sub_2610BD164();
    v29 = v53;
    if (!v40)
    {
      sub_26105FB10();
      sub_2610BD1E4();
      (*(v52 + 8))(v20, v19);
      (*(v21 + 8))(v57, v13);
      swift_unknownObjectRelease();
      v70 = v58;
      v71 = v59;
      *&v72 = v60;
      WORD4(v72) = WORD4(v60);
      sub_260F9B85C(&v70);
      v90 = v78;
      v91 = v79;
      v92 = v80;
      v93 = v81;
      v86 = v74;
      v87 = v75;
      v88 = v76;
      v89 = v77;
      v82 = v70;
      v83 = v71;
      v84 = v72;
      v85 = v73;
      goto LABEL_17;
    }

    (*(v21 + 8))(v39, v13);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v98);
}

uint64_t sub_26105ADE0()
{
  sub_2610BD514();
  V1Command.Response.hash(into:)(v1);
  return sub_2610BD574();
}

uint64_t sub_26105AE24(uint64_t a1)
{
  sub_2610BD514();
  V1Command.Response.hash(into:)(v2);
  return sub_2610BD574();
}

uint64_t static V1CommandError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v58[0] = v4;
  v58[1] = v3;
  v58[2] = v6;
  v58[3] = v5;
  v58[4] = v7;
  v59 = v8;
  v60 = v9;
  v61 = v10;
  v62 = v11;
  v63 = v12;
  v64 = v13;
  v65 = v14;
  if (v8)
  {
    if (v8 == 1)
    {
      if (v14 == 1)
      {
        v48 = *(v4 + 80);
        v49 = *(v4 + 64);
        v15 = *(v4 + 96);
        v16 = *(v4 + 104);
        v17 = *(v4 + 56);
        v18 = *(v4 + 48);
        v19 = *(v9 + 48);
        v20 = *(v9 + 56);
        v46 = *(v9 + 80);
        v47 = *(v9 + 64);
        v21 = *(v9 + 96);
        v22 = *(v9 + 104);
        v23 = *(v4 + 32);
        v54 = *(v4 + 16);
        v55 = v23;
        v56 = v18;
        v57 = v17;
        v24 = *(v9 + 32);
        v50 = *(v9 + 16);
        v51 = v24;
        v52 = v19;
        v53 = v20;
        sub_260FF3594(v9, v10, v11, v12, v13, 1);
        sub_260FF3594(v4, v3, v6, v5, v7, 1);
        if (static V1CommandError.== infix(_:_:)(&v54, &v50))
        {
          v54 = v49;
          v55 = v48;
          v56 = v15;
          v57 = v16;
          v50 = v47;
          v51 = v46;
          v52 = v21;
          v53 = v22;
          v25 = static V1CommandError.== infix(_:_:)(&v54, &v50);
          sub_260FA9980(v58, &qword_27FE65CE8, &qword_2610C99C0);
          return v25 & 1;
        }

LABEL_35:
        sub_260FA9980(v58, &qword_27FE65CE8, &qword_2610C99C0);
        v25 = 0;
        return v25 & 1;
      }

      goto LABEL_33;
    }

    if (!(v6 | v3 | v4 | v5 | v7))
    {
      if (v14 != 2 || v11 | v10 | v9 | v12 | v13)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    v33 = v6 | v3 | v5 | v7;
    if (v4 != 1 || v33)
    {
      if (v4 != 2 || v33)
      {
        if (v14 != 2 || v9 != 3)
        {
          goto LABEL_33;
        }
      }

      else if (v14 != 2 || v9 != 2)
      {
        goto LABEL_33;
      }
    }

    else if (v14 != 2 || v9 != 1)
    {
      goto LABEL_33;
    }

    if (!(v11 | v10 | v12 | v13))
    {
LABEL_32:
      sub_260FA9980(v58, &qword_27FE65CE8, &qword_2610C99C0);
      v25 = 1;
      return v25 & 1;
    }

LABEL_33:
    sub_260FF3594(v9, v10, v11, v12, v13, v14);
    v34 = v4;
    v35 = v3;
    v36 = v6;
    v37 = v5;
    v38 = v7;
    v39 = v8;
    goto LABEL_34;
  }

  if (v14)
  {
    goto LABEL_33;
  }

  if ((v4 != v9 || v3 != v10) && (v26 = v9, v27 = v10, v28 = v11, v29 = v12, v30 = v13, v31 = sub_2610BD384(), v11 = v28, v10 = v27, v12 = v29, v13 = v30, v32 = v31, v9 = v26, (v32 & 1) == 0) || v6 != v11)
  {
    sub_260FF3594(v9, v10, v11, v12, v13, 0);
    v34 = v4;
    v35 = v3;
    v36 = v6;
    v37 = v5;
    v38 = v7;
    v39 = 0;
LABEL_34:
    sub_260FF3594(v34, v35, v36, v37, v38, v39);
    goto LABEL_35;
  }

  if (v5 == v12 && v7 == v13)
  {
    sub_260FF3594(v9, v10, v6, v5, v7, 0);
    sub_260FF3594(v4, v3, v6, v5, v7, 0);
    goto LABEL_32;
  }

  v41 = v9;
  v42 = v10;
  v43 = v12;
  v44 = v13;
  v45 = sub_2610BD384();
  sub_260FF3594(v41, v42, v6, v43, v44, 0);
  sub_260FF3594(v4, v3, v6, v5, v7, 0);
  sub_260FA9980(v58, &qword_27FE65CE8, &qword_2610C99C0);
  return v45 & 1;
}

uint64_t sub_26105B218()
{
  v1 = 0x65736E6F70736572;
  if (*v0 != 1)
  {
    v1 = 0x6572756C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74736575716572;
  }
}

uint64_t sub_26105B274@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_261062778(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26105B29C(uint64_t a1)
{
  v2 = sub_261060124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105B2D8(uint64_t a1)
{
  v2 = sub_261060124();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26105B314(uint64_t a1)
{
  v2 = sub_261060178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105B350(uint64_t a1)
{
  v2 = sub_261060178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26105B38C(uint64_t a1)
{
  v2 = sub_261060274();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105B3C8(uint64_t a1)
{
  v2 = sub_261060274();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26105B404(uint64_t a1)
{
  v2 = sub_2610601CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105B440(uint64_t a1)
{
  v2 = sub_2610601CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1Command.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CF0, &qword_2610C99C8);
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v55 - v6;
  *&v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65CF8, &qword_2610C99D0);
  *&v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v8);
  v10 = &v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D00, &qword_2610C99D8);
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D08, &qword_2610C99E0);
  v61 = *(v15 - 8);
  v62 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v55 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261060124();
  sub_2610BD5F4();
  v19 = v2[11];
  v76[10] = v2[10];
  v76[11] = v19;
  v76[12] = v2[12];
  v20 = v2[7];
  v76[6] = v2[6];
  v76[7] = v20;
  v21 = v2[9];
  v76[8] = v2[8];
  v76[9] = v21;
  v22 = v2[3];
  v76[2] = v2[2];
  v76[3] = v22;
  v23 = v2[5];
  v76[4] = v2[4];
  v76[5] = v23;
  v24 = v2[1];
  v76[0] = *v2;
  v76[1] = v24;
  v25 = sub_260FEE778(v76);
  v26 = sub_260F9C524(v76);
  v27 = v26;
  if (!v25)
  {
    LOBYTE(v63) = 0;
    sub_261060274();
    v28 = v62;
    sub_2610BD234();
    v63 = *v27;
    v39 = v27[1];
    v40 = v27[2];
    v41 = v27[4];
    v66 = v27[3];
    v67 = v41;
    v64 = v39;
    v65 = v40;
    v42 = v27[5];
    v43 = v27[6];
    v44 = v27[8];
    v70 = v27[7];
    v71 = v44;
    v68 = v42;
    v69 = v43;
    v45 = v27[9];
    v46 = v27[10];
    v47 = v27[12];
    v74 = v27[11];
    v75 = v47;
    v72 = v45;
    v73 = v46;
    sub_2610602C8();
    v48 = v56;
    sub_2610BD2A4();
    (*(v55 + 8))(v14, v48);
    return (*(v61 + 8))(v18, v28);
  }

  if (v25 == 1)
  {
    LOBYTE(v63) = 1;
    sub_2610601CC();
    v28 = v62;
    sub_2610BD234();
    v29 = *v27;
    v30 = v27[1];
    v31 = v27[3];
    v65 = v27[2];
    v66 = v31;
    v63 = v29;
    v64 = v30;
    v32 = v27[4];
    v33 = v27[5];
    v34 = v27[7];
    v69 = v27[6];
    v70 = v34;
    v67 = v32;
    v68 = v33;
    v35 = v27[8];
    v36 = v27[9];
    v37 = v27[10];
    *&v74 = *(v27 + 22);
    v72 = v36;
    v73 = v37;
    v71 = v35;
    sub_261060220();
    v38 = v58;
    sub_2610BD2A4();
    (*(v57 + 8))(v10, v38);
    return (*(v61 + 8))(v18, v28);
  }

  v50 = *(v26 + 32);
  v51 = *(v26 + 40);
  LOBYTE(v63) = 2;
  sub_261060178();
  v52 = *v27;
  v57 = v27[1];
  v58 = v52;
  v53 = v62;
  sub_2610BD234();
  v63 = v58;
  v64 = v57;
  *&v65 = v50;
  BYTE8(v65) = v51;
  sub_260FF28D0();
  v54 = v60;
  sub_2610BD2A4();
  (*(v59 + 8))(v7, v54);
  return (*(v61 + 8))(v18, v53);
}

uint64_t V1Command.hash(into:)(__int128 *a1)
{
  v3 = v1[11];
  v11[10] = v1[10];
  v11[11] = v3;
  v11[12] = v1[12];
  v4 = v1[7];
  v11[6] = v1[6];
  v11[7] = v4;
  v5 = v1[9];
  v11[8] = v1[8];
  v11[9] = v5;
  v6 = v1[3];
  v11[2] = v1[2];
  v11[3] = v6;
  v7 = v1[5];
  v11[4] = v1[4];
  v11[5] = v7;
  v8 = v1[1];
  v11[0] = *v1;
  v11[1] = v8;
  v9 = sub_260FEE778(v11);
  sub_260F9C524(v11);
  if (v9)
  {
    if (v9 == 1)
    {
      MEMORY[0x2666F7E40](1);
      return V1Command.Response.hash(into:)(a1);
    }

    else
    {
      MEMORY[0x2666F7E40](2);
      return V1CommandError.hash(into:)(a1);
    }
  }

  else
  {
    MEMORY[0x2666F7E40](0);
    return V1Command.Request.hash(into:)(a1);
  }
}

uint64_t V1Command.hashValue.getter()
{
  sub_2610BD514();
  v1 = v0[11];
  v10[10] = v0[10];
  v10[11] = v1;
  v10[12] = v0[12];
  v2 = v0[7];
  v10[6] = v0[6];
  v10[7] = v2;
  v3 = v0[9];
  v10[8] = v0[8];
  v10[9] = v3;
  v4 = v0[3];
  v10[2] = v0[2];
  v10[3] = v4;
  v5 = v0[5];
  v10[4] = v0[4];
  v10[5] = v5;
  v6 = v0[1];
  v10[0] = *v0;
  v10[1] = v6;
  v7 = sub_260FEE778(v10);
  sub_260F9C524(v10);
  if (v7)
  {
    if (v7 == 1)
    {
      MEMORY[0x2666F7E40](1);
      V1Command.Response.hash(into:)(v9);
    }

    else
    {
      MEMORY[0x2666F7E40](2);
      V1CommandError.hash(into:)(v9);
    }
  }

  else
  {
    MEMORY[0x2666F7E40](0);
    V1Command.Request.hash(into:)(v9);
  }

  return sub_2610BD574();
}

uint64_t V1Command.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v54 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D40, &qword_2610C99E8);
  v53 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v3);
  v56 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D48, &qword_2610C99F0);
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D50, &qword_2610C99F8);
  v50 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D58, &qword_2610C9A00);
  v55 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v47 - v15;
  v17 = a1[3];
  v102 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_261060124();
  v18 = v58;
  sub_2610BD5D4();
  if (!v18)
  {
    v48 = v9;
    v49 = 0;
    v20 = v56;
    v19 = v57;
    v21 = v55;
    v58 = v16;
    v22 = sub_2610BD214();
    v23 = (2 * *(v22 + 16)) | 1;
    v98 = v22;
    v99 = v22 + 32;
    v100 = 0;
    v101 = v23;
    v24 = sub_260FD5DC0();
    v25 = v13;
    if (v24 == 3 || v100 != v101 >> 1)
    {
      v31 = sub_2610BCFF4();
      swift_allocError();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE643B8, &qword_2610C4650);
      *v33 = &type metadata for V1Command;
      v34 = v25;
      v35 = v58;
      sub_2610BD174();
      sub_2610BCFE4();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v21 + 8))(v35, v34);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v102);
    }

    if (!v24)
    {
      LOBYTE(v72) = 0;
      sub_261060274();
      v27 = v58;
      v37 = v49;
      sub_2610BD164();
      if (!v37)
      {
        sub_261060390();
        v38 = v48;
        sub_2610BD1E4();
        (*(v50 + 8))(v12, v38);
        (*(v21 + 8))(v27, v13);
        swift_unknownObjectRelease();
        v69 = v82;
        v70 = v83;
        v71 = v84;
        v65 = v78;
        v66 = v79;
        v67 = v80;
        v68 = v81;
        v61 = v74;
        v62 = v75;
        v63 = v76;
        v64 = v77;
        v59 = v72;
        v60 = v73;
        sub_260FEDCB8(&v59);
        v95 = v69;
        v96 = v70;
        v97 = v71;
        v91 = v65;
        v92 = v66;
        v93 = v67;
        v94 = v68;
        v87 = v61;
        v88 = v62;
        v89 = v63;
        v90 = v64;
        v85 = v59;
        v86 = v60;
        v29 = v54;
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    if (v24 == 1)
    {
      LOBYTE(v72) = 1;
      sub_2610601CC();
      v26 = v8;
      v27 = v58;
      v28 = v49;
      sub_2610BD164();
      v29 = v54;
      if (!v28)
      {
        sub_26106033C();
        v30 = v52;
        sub_2610BD1E4();
        (*(v51 + 8))(v26, v30);
        (*(v21 + 8))(v27, v13);
        swift_unknownObjectRelease();
        v80 = v67;
        v81 = v68;
        v82 = v69;
        *&v83 = v70;
        v76 = v63;
        v77 = v64;
        v78 = v65;
        v79 = v66;
        v72 = v59;
        v73 = v60;
        v74 = v61;
        v75 = v62;
        sub_260FEE86C(&v72);
        v95 = v82;
        v96 = v83;
        v97 = v84;
        v91 = v78;
        v92 = v79;
        v93 = v80;
        v94 = v81;
        v87 = v74;
        v88 = v75;
        v89 = v76;
        v90 = v77;
        v85 = v72;
        v86 = v73;
LABEL_17:
        v41 = v96;
        v29[10] = v95;
        v29[11] = v41;
        v29[12] = v97;
        v42 = v92;
        v29[6] = v91;
        v29[7] = v42;
        v43 = v94;
        v29[8] = v93;
        v29[9] = v43;
        v44 = v88;
        v29[2] = v87;
        v29[3] = v44;
        v45 = v90;
        v29[4] = v89;
        v29[5] = v45;
        v46 = v86;
        *v29 = v85;
        v29[1] = v46;
        return __swift_destroy_boxed_opaque_existential_0Tm(v102);
      }

LABEL_13:
      (*(v21 + 8))(v27, v13);
      goto LABEL_9;
    }

    LOBYTE(v72) = 2;
    sub_261060178();
    v39 = v58;
    v40 = v49;
    sub_2610BD164();
    v29 = v54;
    if (!v40)
    {
      sub_260FF2A88();
      sub_2610BD1E4();
      (*(v53 + 8))(v20, v19);
      (*(v21 + 8))(v58, v13);
      swift_unknownObjectRelease();
      v72 = v59;
      v73 = v60;
      *&v74 = v61;
      BYTE8(v74) = BYTE8(v61);
      sub_26106031C(&v72);
      v95 = v82;
      v96 = v83;
      v97 = v84;
      v91 = v78;
      v92 = v79;
      v93 = v80;
      v94 = v81;
      v87 = v74;
      v88 = v75;
      v89 = v76;
      v90 = v77;
      v85 = v72;
      v86 = v73;
      goto LABEL_17;
    }

    (*(v21 + 8))(v39, v13);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v102);
}

uint64_t sub_26105C534(uint64_t a1)
{
  sub_2610BD514();
  v2 = v1[11];
  v11[10] = v1[10];
  v11[11] = v2;
  v11[12] = v1[12];
  v3 = v1[7];
  v11[6] = v1[6];
  v11[7] = v3;
  v4 = v1[9];
  v11[8] = v1[8];
  v11[9] = v4;
  v5 = v1[3];
  v11[2] = v1[2];
  v11[3] = v5;
  v6 = v1[5];
  v11[4] = v1[4];
  v11[5] = v6;
  v7 = v1[1];
  v11[0] = *v1;
  v11[1] = v7;
  v8 = sub_260FEE778(v11);
  sub_260F9C524(v11);
  if (v8)
  {
    if (v8 == 1)
    {
      MEMORY[0x2666F7E40](1);
      V1Command.Response.hash(into:)(v10);
    }

    else
    {
      MEMORY[0x2666F7E40](2);
      V1CommandError.hash(into:)(v10);
    }
  }

  else
  {
    MEMORY[0x2666F7E40](0);
    V1Command.Request.hash(into:)(v10);
  }

  return sub_2610BD574();
}

unint64_t V1CommandError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
      sub_2610BCF84();
      MEMORY[0x2666F7380](0xD000000000000020, 0x80000002610D53F0);
      v6 = V1CommandError.description.getter();
      MEMORY[0x2666F7380](v6);

      MEMORY[0x2666F7380](0xD000000000000010, 0x80000002610D5420);
      v7 = V1CommandError.description.getter();
      MEMORY[0x2666F7380](v7);

      return 0;
    }

    else
    {
      result = 0xD00000000000001ELL;
      if (v4 | v2 | v1 | v3 | v5)
      {
        v10 = v4 | v2 | v3 | v5;
        v11 = v1 == 1 && v10 == 0;
        if (!v11 && v1 == 2 && !v10)
        {
          return 0xD00000000000001FLL;
        }
      }

      else
      {
        return 0xD000000000000014;
      }
    }
  }

  else
  {
    sub_2610BCF84();
    MEMORY[0x2666F7380](0xD00000000000001CLL, 0x80000002610D5440);
    MEMORY[0x2666F7380](v1, v2);
    MEMORY[0x2666F7380](0x3A65646F63202CLL, 0xE700000000000000);
    v9 = sub_2610BD304();
    MEMORY[0x2666F7380](v9);

    MEMORY[0x2666F7380](0x697263736564202CLL, 0xEE003A6E6F697470);
    MEMORY[0x2666F7380](v3, v5);
    return 0;
  }

  return result;
}

unint64_t sub_26105C948()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000011;
  if (v1 == 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x636972656E6567;
  if (v1 != 1)
  {
    v5 = 0x64657473656ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26105CA04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_261062890(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26105CA38(uint64_t a1)
{
  v2 = sub_2610603E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105CA74(uint64_t a1)
{
  v2 = sub_2610603E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26105CAB0()
{
  v1 = 1701080931;
  if (*v0 != 1)
  {
    v1 = 0x7470697263736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_26105CB08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_261062A94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26105CB30(uint64_t a1)
{
  v2 = sub_261060588();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105CB6C(uint64_t a1)
{
  v2 = sub_261060588();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26105CBA8()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_26105CBC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_2610BD384() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2610BD384();

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

uint64_t sub_26105CC90(uint64_t a1)
{
  v2 = sub_261060534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105CCCC(uint64_t a1)
{
  v2 = sub_261060534();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26105CD08(uint64_t a1)
{
  v2 = sub_261060438();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105CD44(uint64_t a1)
{
  v2 = sub_261060438();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26105CD80(uint64_t a1)
{
  v2 = sub_2610604E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105CDBC(uint64_t a1)
{
  v2 = sub_2610604E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26105CDF8(uint64_t a1)
{
  v2 = sub_26106048C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105CE34(uint64_t a1)
{
  v2 = sub_26106048C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26105CE70(uint64_t a1)
{
  v2 = sub_2610605DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26105CEAC(uint64_t a1)
{
  v2 = sub_2610605DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t V1CommandError.encode(to:)(void *a1)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D70, &qword_2610C9A08);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v3);
  v54 = &v50 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D78, &qword_2610C9A10);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v5);
  v51 = &v50 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D80, &qword_2610C9A18);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v7);
  v57 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D88, &qword_2610C9A20);
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v65 = &v50 - v11;
  *&v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D90, &qword_2610C9A28);
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v12);
  v63 = &v50 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65D98, &qword_2610C9A30);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v14);
  v16 = &v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65DA0, &qword_2610C9A38);
  v18 = *(v17 - 8);
  v71 = v17;
  v72 = v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v50 - v20;
  v23 = *v1;
  v22 = v1[1];
  v24 = v1[3];
  *&v70 = v1[2];
  *&v68 = v24;
  *&v69 = v1[4];
  v25 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610603E4();
  v26 = v21;
  sub_2610BD5F4();
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = *(v23 + 48);
      v28 = *(v23 + 56);
      v29 = *(v23 + 64);
      v64 = *(v23 + 80);
      v68 = v29;
      v30 = *(v23 + 96);
      v31 = *(v23 + 104);
      LOBYTE(v74) = 2;
      sub_261060534();
      v32 = *(v23 + 16);
      v69 = *(v23 + 32);
      v70 = v32;
      v33 = v65;
      v34 = v71;
      v35 = v26;
      sub_2610BD234();
      v75 = v69;
      v74 = v70;
      v76 = v27;
      v77 = v28;
      v78 = 0;
      sub_260FF28D0();
      v36 = v67;
      v37 = v73;
      sub_2610BD2A4();
      if (!v37)
      {
        v75 = v64;
        v74 = v68;
        v76 = v30;
        v77 = v31;
        v78 = 1;
        sub_2610BD2A4();
      }

      (*(v66 + 8))(v33, v36);
      return (*(v72 + 8))(v35, v34);
    }

    else
    {
      v45 = v71;
      if (v70 | v22 | v23 | v68 | v69)
      {
        v46 = v70 | v22 | v68 | v69;
        if (v23 != 1 || v46)
        {
          if (v23 != 2 || v46)
          {
            LOBYTE(v74) = 5;
            sub_261060438();
            v49 = v54;
            sub_2610BD234();
            (*(v55 + 8))(v49, v56);
          }

          else
          {
            LOBYTE(v74) = 4;
            sub_26106048C();
            v48 = v51;
            sub_2610BD234();
            (*(v52 + 8))(v48, v53);
          }
        }

        else
        {
          LOBYTE(v74) = 3;
          sub_2610604E0();
          v47 = v57;
          sub_2610BD234();
          (*(v58 + 8))(v47, v59);
        }
      }

      else
      {
        LOBYTE(v74) = 0;
        sub_2610605DC();
        sub_2610BD234();
        (*(v60 + 8))(v16, v61);
      }

      return (*(v72 + 8))(v21, v45);
    }
  }

  else
  {
    v38 = v62;
    LOBYTE(v74) = 1;
    sub_261060588();
    v39 = v63;
    v40 = v71;
    v41 = v26;
    sub_2610BD234();
    LOBYTE(v74) = 0;
    v42 = v64;
    v43 = v73;
    sub_2610BD274();
    if (!v43)
    {
      LOBYTE(v74) = 1;
      sub_2610BD294();
      LOBYTE(v74) = 2;
      sub_2610BD274();
    }

    (*(v38 + 8))(v39, v42);
    return (*(v72 + 8))(v41, v40);
  }
}

uint64_t V1CommandError.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (*(v1 + 40))
  {
    if (*(v1 + 40) == 1)
    {
      MEMORY[0x2666F7E40](2);
      V1CommandError.hash(into:)(a1);
      return V1CommandError.hash(into:)(a1);
    }

    else
    {
      if (v6 | v4 | v3 | v5 | v7)
      {
        v9 = v6 | v4 | v5 | v7;
        if (v3 == 1 && v9 == 0)
        {
          v11 = 3;
        }

        else if (v3 != 2 || v9)
        {
          v11 = 5;
        }

        else
        {
          v11 = 4;
        }
      }

      else
      {
        v11 = 0;
      }

      return MEMORY[0x2666F7E40](v11);
    }
  }

  else
  {
    MEMORY[0x2666F7E40](1);
    sub_2610BCA54();
    MEMORY[0x2666F7E40](v6);

    return sub_2610BCA54();
  }
}

uint64_t V1CommandError.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_2610BD514();
  V1CommandError.hash(into:)(v5);
  return sub_2610BD574();
}

uint64_t V1CommandError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65DE0, &qword_2610C9A40);
  v72 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v3);
  v85 = &v68 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65DE8, &qword_2610C9A48);
  v76 = *(v5 - 8);
  v77 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v82 = &v68 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65DF0, &qword_2610C9A50);
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v84 = &v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65DF8, &qword_2610C9A58);
  v79 = *(v11 - 8);
  v80 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v81 = &v68 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65E00, &qword_2610C9A60);
  v75 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v14);
  v16 = &v68 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65E08, &qword_2610C9A68);
  v71 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v68 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65E10, &qword_2610C9A70);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v68 - v24;
  v26 = a1[3];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_2610603E4();
  v27 = v87;
  sub_2610BD5D4();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v88);
  }

  v28 = v20;
  v69 = v17;
  v29 = v84;
  v30 = v85;
  v70 = 0;
  v31 = v86;
  v87 = v22;
  v32 = sub_2610BD214();
  v33 = (2 * *(v32 + 16)) | 1;
  v89 = v32;
  v90 = v32 + 32;
  v91 = 0;
  v92 = v33;
  v34 = sub_260FCD0F8();
  v35 = v21;
  v36 = v25;
  if (v34 == 6 || v91 != v92 >> 1)
  {
    v40 = sub_2610BCFF4();
    swift_allocError();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE643B8, &qword_2610C4650);
    *v42 = &type metadata for V1CommandError;
    sub_2610BD174();
    sub_2610BCFE4();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
    swift_willThrow();
    (*(v87 + 8))(v25, v21);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v88);
  }

  if (v34 > 2u)
  {
    if (v34 == 3)
    {
      v93 = 3;
      sub_2610604E0();
      v53 = v70;
      sub_2610BD164();
      if (v53)
      {
        goto LABEL_8;
      }

      (*(v73 + 8))(v29, v74);
      (*(v87 + 8))(v25, v21);
      swift_unknownObjectRelease();
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v51 = 2;
      v50 = 1;
    }

    else if (v34 == 4)
    {
      v93 = 4;
      sub_26106048C();
      v44 = v82;
      v45 = v70;
      sub_2610BD164();
      if (v45)
      {
        goto LABEL_8;
      }

      (*(v76 + 8))(v44, v77);
      (*(v87 + 8))(v25, v21);
      swift_unknownObjectRelease();
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 2;
      v51 = 2;
    }

    else
    {
      v93 = 5;
      sub_261060438();
      v56 = v70;
      sub_2610BD164();
      if (v56)
      {
        goto LABEL_8;
      }

      (*(v72 + 8))(v30, v31);
      (*(v87 + 8))(v25, v21);
      swift_unknownObjectRelease();
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v51 = 2;
      v50 = 3;
    }

LABEL_26:
    v37 = v83;
    goto LABEL_27;
  }

  v37 = v83;
  if (v34)
  {
    if (v34 == 1)
    {
      v93 = 1;
      sub_261060588();
      v38 = v16;
      v39 = v70;
      sub_2610BD164();
      if (v39)
      {
LABEL_8:
        (*(v87 + 8))(v25, v35);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_0Tm(v88);
      }

      v57 = v25;
      v93 = 0;
      v58 = v78;
      v50 = sub_2610BD1B4();
      v46 = v61;
      v93 = 1;
      v62 = sub_2610BD1D4();
      v63 = v75;
      v85 = v62;
      v86 = v35;
      v93 = 2;
      v64 = sub_2610BD1B4();
      v65 = v58;
      v66 = (v87 + 8);
      v48 = v64;
      v49 = v67;
      (*(v63 + 8))(v38, v65);
      (*v66)(v57, v86);
      swift_unknownObjectRelease();
      v51 = 0;
      v47 = v85;
      goto LABEL_26;
    }

    v93 = 2;
    sub_261060534();
    v54 = v81;
    v55 = v70;
    sub_2610BD164();
    if (v55)
    {
      (*(v87 + 8))(v36, v35);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v88);
    }

    v50 = swift_allocObject();
    v93 = 0;
    sub_260FF2A88();
    v59 = v80;
    sub_2610BD1E4();
    v60 = v87;
    v93 = 1;
    sub_2610BD1E4();
    (*(v79 + 8))(v54, v59);
    (*(v60 + 8))(v36, v35);
    swift_unknownObjectRelease();
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v51 = 1;
  }

  else
  {
    v93 = 0;
    sub_2610605DC();
    v52 = v70;
    sub_2610BD164();
    if (v52)
    {
      goto LABEL_8;
    }

    (*(v71 + 8))(v28, v69);
    (*(v87 + 8))(v25, v35);
    swift_unknownObjectRelease();
    v50 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v51 = 2;
  }

LABEL_27:
  *v37 = v50;
  *(v37 + 8) = v46;
  *(v37 + 16) = v47;
  *(v37 + 24) = v48;
  *(v37 + 32) = v49;
  *(v37 + 40) = v51;
  return __swift_destroy_boxed_opaque_existential_0Tm(v88);
}

unint64_t sub_26105E554()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v1;
  v2 = V1CommandError.description.getter();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  v4 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v4;
}

uint64_t sub_26105E6AC()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_2610BD514();
  V1CommandError.hash(into:)(v5);
  return sub_2610BD574();
}

uint64_t sub_26105E70C(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 40);
  v4 = v1[1];
  v7 = *v1;
  v8 = v4;
  v9 = v2;
  v10 = v3;
  sub_2610BD514();
  V1CommandError.hash(into:)(v6);
  return sub_2610BD574();
}

uint64_t sub_26105E764(uint64_t a1)
{
  v2 = sub_261060BD8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26105E7A0(uint64_t a1)
{
  v2 = sub_261060BD8();

  return MEMORY[0x28211F4A8](a1, v2);
}

void Error.into()(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = sub_2610BD334();
  if (v7)
  {
    v8 = v7;
    (*(*(a1 - 8) + 8))(v4, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(*(a1 - 8) + 32))(v9, v4, a1);
  }

  v10 = sub_2610BC4E4();

  v11 = [v10 domain];
  v12 = sub_2610BCA04();
  v14 = v13;

  v15 = [v10 code];
  v16 = [v10 description];
  v17 = sub_2610BCA04();
  v19 = v18;

  *a3 = v12;
  *(a3 + 8) = v14;
  *(a3 + 16) = v15;
  *(a3 + 24) = v17;
  *(a3 + 32) = v19;
  *(a3 + 40) = 0;
}

uint64_t _s21ProximityAppleIDSetup9V1CommandO7RequestO2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[9];
  v3 = a1[11];
  v108 = a1[10];
  v109 = v3;
  v4 = a1[11];
  v110 = a1[12];
  v5 = a1[5];
  v6 = a1[7];
  v104 = a1[6];
  v105 = v6;
  v7 = a1[7];
  v8 = a1[9];
  v106 = a1[8];
  v107 = v8;
  v9 = a1[1];
  v10 = a1[3];
  v100 = a1[2];
  v101 = v10;
  v11 = a1[3];
  v12 = a1[5];
  v102 = a1[4];
  v103 = v12;
  v13 = a1[1];
  v98 = *a1;
  v99 = v13;
  v14 = a2[9];
  v15 = a2[11];
  v121 = a2[10];
  v122 = v15;
  v16 = a2[11];
  v123 = a2[12];
  v17 = a2[5];
  v18 = a2[7];
  v117 = a2[6];
  v118 = v18;
  v20 = a2[7];
  v19 = a2[8];
  v21 = v19;
  v120 = a2[9];
  v119 = v19;
  v22 = a2[1];
  v23 = a2[3];
  v113 = a2[2];
  v114 = v23;
  v25 = a2[3];
  v24 = a2[4];
  v26 = v24;
  v116 = a2[5];
  v115 = v24;
  v27 = *a2;
  v28 = *a2;
  v112 = a2[1];
  v111 = v27;
  v29 = a1[9];
  v30 = a1[11];
  v124[10] = a1[10];
  v124[11] = v30;
  v31 = a1[5];
  v32 = a1[7];
  v124[6] = a1[6];
  v124[7] = v32;
  v33 = a1[8];
  v124[9] = v29;
  v124[8] = v33;
  v34 = a1[1];
  v35 = a1[3];
  v124[2] = a1[2];
  v124[3] = v35;
  v36 = a1[4];
  v124[5] = v31;
  v124[4] = v36;
  v37 = *a1;
  v124[1] = v34;
  v124[0] = v37;
  v124[22] = v14;
  v124[23] = v121;
  v38 = a2[12];
  v124[24] = v16;
  v124[25] = v38;
  v124[18] = v17;
  v124[19] = v117;
  v124[20] = v20;
  v124[21] = v21;
  v124[14] = v22;
  v124[15] = v113;
  v124[16] = v25;
  v124[17] = v26;
  v124[12] = a1[12];
  v124[13] = v28;
  v125[10] = v108;
  v125[11] = v4;
  v125[12] = a1[12];
  v125[6] = v104;
  v125[7] = v7;
  v125[9] = v2;
  v125[8] = v106;
  v125[2] = v100;
  v125[3] = v11;
  v125[5] = v5;
  v125[4] = v102;
  v125[1] = v9;
  v125[0] = v98;
  enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 = get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(v125);
  if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0)
  {
    if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 == 1)
    {
      v40 = sub_260F9C514(v125);
      v95 = v121;
      v96 = v122;
      v97 = v123;
      v91 = v117;
      v92 = v118;
      v93 = v119;
      v94 = v120;
      v87 = v113;
      v88 = v114;
      v89 = v115;
      v90 = v116;
      v85 = v111;
      v86 = v112;
      if (get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v85) == 1)
      {
        v41 = sub_260F9C514(&v85);
        v67 = *(v40 + 128);
        v68 = *(v40 + 144);
        v69 = *(v40 + 160);
        *&v70 = *(v40 + 176);
        v63 = *(v40 + 64);
        v64 = *(v40 + 80);
        v65 = *(v40 + 96);
        v66 = *(v40 + 112);
        v59 = *v40;
        v60 = *(v40 + 16);
        v61 = *(v40 + 32);
        v62 = *(v40 + 48);
        v57[8] = *(v41 + 128);
        v57[9] = *(v41 + 144);
        v57[10] = *(v41 + 160);
        v58 = *(v41 + 176);
        v57[4] = *(v41 + 64);
        v57[5] = *(v41 + 80);
        v57[6] = *(v41 + 96);
        v57[7] = *(v41 + 112);
        v57[0] = *v41;
        v57[1] = *(v41 + 16);
        v57[2] = *(v41 + 32);
        v57[3] = *(v41 + 48);
        sub_261062CC0(&v111, &v72);
        sub_261062CC0(&v98, &v72);
        sub_261062CC0(&v111, &v72);
        sub_261062CC0(&v98, &v72);
        v42 = _s21ProximityAppleIDSetup13SignInCommandV7RequestV2eeoiySbAE_AEtFZ_0(&v59, v57);
LABEL_11:
        v51 = v42;
        sub_260FA9980(v124, &qword_27FE66060, &unk_2610CBE40);
        sub_261062CF8(&v111);
        sub_261062CF8(&v98);
        return v51 & 1;
      }

      v82 = v108;
      v83 = v109;
      v84 = v110;
      v78 = v104;
      v79 = v105;
      v80 = v106;
      v81 = v107;
      v74 = v100;
      v75 = v101;
      v76 = v102;
      v77 = v103;
      v72 = v98;
      v73 = v99;
      v54 = sub_260F9C514(&v72);
      sub_260FF2568(v54, &v59);
    }

    else
    {
      v52 = sub_260F9C514(v125);
      v95 = v121;
      v96 = v122;
      v97 = v123;
      v91 = v117;
      v92 = v118;
      v93 = v119;
      v94 = v120;
      v87 = v113;
      v88 = v114;
      v89 = v115;
      v90 = v116;
      v85 = v111;
      v86 = v112;
      if (get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v85) == 2)
      {
        v53 = sub_260F9C514(&v85);
        v81 = v52[9];
        v82 = v52[10];
        v83 = v52[11];
        v84 = v52[12];
        v77 = v52[5];
        v78 = v52[6];
        v79 = v52[7];
        v80 = v52[8];
        v73 = v52[1];
        v74 = v52[2];
        v75 = v52[3];
        v76 = v52[4];
        v72 = *v52;
        v68 = v53[9];
        v69 = v53[10];
        v70 = v53[11];
        v71 = v53[12];
        v64 = v53[5];
        v65 = v53[6];
        v66 = v53[7];
        v67 = v53[8];
        v60 = v53[1];
        v61 = v53[2];
        v62 = v53[3];
        v63 = v53[4];
        v59 = *v53;
        sub_261062CC0(&v111, v57);
        sub_261062CC0(&v98, v57);
        sub_261062CC0(&v111, v57);
        sub_261062CC0(&v98, v57);
        v42 = _s21ProximityAppleIDSetup19AuthenticateCommandV7RequestV2eeoiySbAE_AEtFZ_0(&v72, &v59);
        goto LABEL_11;
      }

      v82 = v108;
      v83 = v109;
      v84 = v110;
      v78 = v104;
      v79 = v105;
      v80 = v106;
      v81 = v107;
      v74 = v100;
      v75 = v101;
      v76 = v102;
      v77 = v103;
      v72 = v98;
      v73 = v99;
      v55 = sub_260F9C514(&v72);
      sub_261062C64(v55, &v59);
    }

LABEL_14:
    sub_261062CC0(&v111, &v85);
    sub_260FA9980(v124, &qword_27FE66060, &unk_2610CBE40);
    v51 = 0;
    return v51 & 1;
  }

  v43 = sub_260F9C514(v125);
  v44 = *v43;
  v45 = v43[1];
  v46 = v43[2];
  v87 = v113;
  v88 = v114;
  v85 = v111;
  v86 = v112;
  v91 = v117;
  v92 = v118;
  v89 = v115;
  v90 = v116;
  v96 = v122;
  v97 = v123;
  v93 = v119;
  v94 = v120;
  v95 = v121;
  if (get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v85))
  {
    goto LABEL_14;
  }

  v47 = sub_260F9C514(&v85);
  v48 = *v47;
  v49 = v47[1];
  v50 = v47[2];
  sub_260FA9980(v124, &qword_27FE66060, &unk_2610CBE40);
  if (v46 == v50)
  {
    v51 = (v45 == v49) & ~(v44 ^ v48);
  }

  else
  {
    v51 = 0;
  }

  return v51 & 1;
}

unint64_t sub_26105EFD4()
{
  result = qword_27FE65C18;
  if (!qword_27FE65C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65C18);
  }

  return result;
}

unint64_t sub_26105F028()
{
  result = qword_27FE65C20;
  if (!qword_27FE65C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65C20);
  }

  return result;
}

unint64_t sub_26105F07C()
{
  result = qword_27FE65C28;
  if (!qword_27FE65C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65C28);
  }

  return result;
}

unint64_t sub_26105F0D0()
{
  result = qword_27FE65C30;
  if (!qword_27FE65C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65C30);
  }

  return result;
}

unint64_t sub_26105F124()
{
  result = qword_27FE65C38;
  if (!qword_27FE65C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65C38);
  }

  return result;
}

unint64_t sub_26105F178()
{
  result = qword_27FE65C60;
  if (!qword_27FE65C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65C60);
  }

  return result;
}

uint64_t _s21ProximityAppleIDSetup9V1CommandO8ResponseO2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[9];
  v3 = a1[7];
  v144 = a1[8];
  v145 = v2;
  v4 = a1[9];
  v146 = a1[10];
  v5 = a1[5];
  v6 = a1[3];
  v140 = a1[4];
  v141 = v5;
  v7 = a1[5];
  v8 = a1[7];
  v142 = a1[6];
  v143 = v8;
  v9 = a1[1];
  v136 = *a1;
  v137 = v9;
  v10 = a1[3];
  v11 = *a1;
  v12 = a1[1];
  v138 = a1[2];
  v139 = v10;
  v13 = a2[9];
  v14 = a2[7];
  v156 = a2[8];
  v157 = v13;
  v15 = a2[9];
  v158 = a2[10];
  v16 = a2[5];
  v17 = a2[3];
  v152 = a2[4];
  v153 = v16;
  v18 = a2[5];
  v19 = a2[7];
  v154 = a2[6];
  v155 = v19;
  v20 = a2[1];
  v148 = *a2;
  v149 = v20;
  v21 = a2[3];
  v23 = *a2;
  v22 = a2[1];
  v150 = a2[2];
  v151 = v21;
  v24 = a1[9];
  v160[8] = a1[8];
  v160[9] = v24;
  v160[10] = a1[10];
  v25 = a1[5];
  v160[4] = a1[4];
  v160[5] = v25;
  v26 = a1[7];
  v160[6] = a1[6];
  v160[7] = v26;
  v27 = a1[1];
  v160[0] = *a1;
  v160[1] = v27;
  v28 = a1[3];
  v160[2] = a1[2];
  v160[3] = v28;
  v29 = a2[10];
  v171 = v15;
  v172 = v29;
  v167 = v18;
  v168 = v154;
  v169 = v14;
  v170 = v156;
  v166 = v152;
  v162 = v23;
  v163 = v22;
  v164 = v150;
  v165 = v17;
  v174[8] = v144;
  v174[9] = v4;
  v174[10] = a1[10];
  v174[4] = v140;
  v174[5] = v7;
  v174[6] = v142;
  v174[7] = v3;
  v174[0] = v11;
  v174[1] = v12;
  v147 = *(a1 + 22);
  v159 = *(a2 + 22);
  v30 = *(a2 + 22);
  v161 = *(a1 + 22);
  v173 = v30;
  v175 = *(a1 + 22);
  v174[2] = v138;
  v174[3] = v6;
  enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 = get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(v174);
  if (!enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0)
  {
    v46 = sub_260F9C514(v174);
    v47 = *v46;
    v48 = v46[1];
    v49 = v46[2];
    v50 = v46[3];
    v132 = v156;
    v133 = v157;
    v134 = v158;
    v135 = v159;
    v128 = v152;
    v129 = v153;
    v130 = v154;
    v131 = v155;
    v124 = v148;
    v125 = v149;
    v126 = v150;
    v127 = v151;
    if (!get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v124))
    {
      v51 = sub_260F9C514(&v124);
      v52 = *v51;
      v53 = v51[1];
      v54 = v51[2];
      v55 = v51[3];
      sub_260FA9980(v160, &qword_27FE66058, &qword_2610CBE38);
      if (v47 == v52 && ((v48 ^ v53) & 1) == 0)
      {
        if (v50)
        {
          if (v55)
          {
LABEL_25:
            v66 = 1;
            return v66 & 1;
          }
        }

        else
        {
          if (v49 == v54)
          {
            v70 = v55;
          }

          else
          {
            v70 = 1;
          }

          if ((v70 & 1) == 0)
          {
            goto LABEL_25;
          }
        }
      }

      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 == 1)
  {
    v32 = sub_260F9C514(v174);
    v132 = v156;
    v133 = v157;
    v134 = v158;
    v135 = v159;
    v128 = v152;
    v129 = v153;
    v130 = v154;
    v131 = v155;
    v124 = v148;
    v125 = v149;
    v126 = v150;
    v127 = v151;
    if (get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v124) == 1)
    {
      v33 = sub_260F9C514(&v124);
      v34 = *(v32 + 144);
      v91 = *(v32 + 128);
      v92[0] = v34;
      *(v92 + 9) = *(v32 + 153);
      v35 = *(v32 + 80);
      v87 = *(v32 + 64);
      v88 = v35;
      v36 = *(v32 + 112);
      v89 = *(v32 + 96);
      v90 = v36;
      v37 = *(v32 + 16);
      v83 = *v32;
      v84 = v37;
      v38 = *(v32 + 48);
      v85 = *(v32 + 32);
      v86 = v38;
      v39 = *(v33 + 144);
      v81 = *(v33 + 128);
      v82[0] = v39;
      *(v82 + 9) = *(v33 + 153);
      v40 = *(v33 + 80);
      v77 = *(v33 + 64);
      v78 = v40;
      v41 = *(v33 + 112);
      v79 = *(v33 + 96);
      v80 = v41;
      v42 = *(v33 + 16);
      v73 = *v33;
      v74 = v42;
      v43 = *(v33 + 48);
      v75 = *(v33 + 32);
      v76 = v43;
      sub_261062BF0(&v148, &v112);
      sub_261062BF0(&v136, &v112);
      sub_261062BF0(&v148, &v112);
      sub_261062BF0(&v136, &v112);
      sub_260FD2DF8(v32, &v112);
      sub_260FD2DF8(v33, &v112);
      v44 = _s21ProximityAppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(&v83, &v73);
      v101 = v81;
      v102[0] = v82[0];
      *(v102 + 9) = *(v82 + 9);
      v97 = v77;
      v98 = v78;
      v99 = v79;
      v100 = v80;
      v93 = v73;
      v94 = v74;
      v95 = v75;
      v96 = v76;
      sub_260FD2E30(&v93);
      v110 = v91;
      v111[0] = v92[0];
      *(v111 + 9) = *(v92 + 9);
      v106 = v87;
      v107 = v88;
      v108 = v89;
      v109 = v90;
      v103[0] = v83;
      v103[1] = v84;
      v104 = v85;
      v105 = v86;
      sub_260FD2E30(v103);
      if (v44)
      {
        v45 = sub_261058754(*(v32 + 176), *(v33 + 176));
        sub_260FA9980(v160, &qword_27FE66058, &qword_2610CBE38);
        sub_261062C34(&v148);
        sub_261062C34(&v136);
        if (v45)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_260FA9980(v160, &qword_27FE66058, &qword_2610CBE38);
        sub_261062C34(&v148);
        sub_261062C34(&v136);
      }

      goto LABEL_18;
    }

    v120 = v144;
    v121 = v145;
    v122 = v146;
    v123 = v147;
    v116 = v140;
    v117 = v141;
    v118 = v142;
    v119 = v143;
    v112 = v136;
    v113 = v137;
    v114 = v138;
    v115 = v139;
    v67 = sub_260F9C514(&v112);
    sub_260FF2ADC(v67, v103);
LABEL_17:
    sub_261062BF0(&v148, &v124);
    sub_260FA9980(v160, &qword_27FE66058, &qword_2610CBE38);
LABEL_18:
    v66 = 0;
    return v66 & 1;
  }

  v56 = sub_260F9C514(v174);
  v71 = *(v56 + 16);
  v72 = *v56;
  v57 = *(v56 + 32);
  v58 = *(v56 + 40);
  v59 = *(v56 + 41);
  v126 = v150;
  v127 = v151;
  v124 = v148;
  v125 = v149;
  v131 = v155;
  v130 = v154;
  v128 = v152;
  v129 = v153;
  v135 = v159;
  v134 = v158;
  v133 = v157;
  v132 = v156;
  if (get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v124) != 2)
  {
    v120 = v144;
    v121 = v145;
    v122 = v146;
    v123 = v147;
    v116 = v140;
    v117 = v141;
    v118 = v142;
    v119 = v143;
    v112 = v136;
    v113 = v137;
    v114 = v138;
    v115 = v139;
    v68 = sub_260F9C514(&v112);
    sub_261062BE4(*v68, *(v68 + 8), *(v68 + 16), *(v68 + 24), *(v68 + 32), *(v68 + 40), *(v68 + 41));
    goto LABEL_17;
  }

  v60 = sub_260F9C514(&v124);
  v61 = *(v60 + 32);
  v62 = *(v60 + 40);
  v63 = *(v60 + 41);
  v64 = *v60;
  v65 = *(v60 + 16);
  *&v104 = v57;
  v93 = v64;
  v94 = v65;
  *&v95 = v61;
  BYTE8(v95) = v62;
  BYTE9(v95) = v63;
  sub_261062BF0(&v148, &v112);
  sub_261062BF0(&v136, &v112);
  sub_261062BF0(&v148, &v112);
  sub_261062BF0(&v136, &v112);
  sub_260FE514C();
  sub_261060DC0();
  sub_261060D68();
  v66 = sub_2610BD5B4();
  sub_260FA9980(v160, &qword_27FE66058, &qword_2610CBE38);
  sub_261062C28(v93, *(&v93 + 1), v94, *(&v94 + 1), v95, SBYTE8(v95), SBYTE9(v95));
  sub_261062C28(v72, *(&v72 + 1), v71, *(&v71 + 1), v104, v58, v59);
  return v66 & 1;
}

unint64_t sub_26105F918()
{
  result = qword_27FE65C88;
  if (!qword_27FE65C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65C88);
  }

  return result;
}

unint64_t sub_26105F96C()
{
  result = qword_27FE65C90;
  if (!qword_27FE65C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65C90);
  }

  return result;
}

unint64_t sub_26105F9C0()
{
  result = qword_27FE65C98;
  if (!qword_27FE65C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65C98);
  }

  return result;
}

unint64_t sub_26105FA14()
{
  result = qword_27FE65CA0;
  if (!qword_27FE65CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65CA0);
  }

  return result;
}

unint64_t sub_26105FA68()
{
  result = qword_27FE65CA8;
  if (!qword_27FE65CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65CA8);
  }

  return result;
}

unint64_t sub_26105FABC()
{
  result = qword_27FE65CB8;
  if (!qword_27FE65CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65CB8);
  }

  return result;
}

unint64_t sub_26105FB10()
{
  result = qword_27FE65CE0;
  if (!qword_27FE65CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65CE0);
  }

  return result;
}

uint64_t _s21ProximityAppleIDSetup9V1CommandO2eeoiySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[9];
  v3 = a1[11];
  v115 = a1[10];
  v116 = v3;
  v4 = a1[11];
  v117 = a1[12];
  v5 = a1[5];
  v6 = a1[7];
  v111 = a1[6];
  v112 = v6;
  v7 = a1[7];
  v8 = a1[9];
  v113 = a1[8];
  v114 = v8;
  v9 = a1[1];
  v10 = a1[3];
  v107 = a1[2];
  v108 = v10;
  v11 = a1[3];
  v12 = a1[5];
  v109 = a1[4];
  v110 = v12;
  v13 = a1[1];
  v106[0] = *a1;
  v106[1] = v13;
  v14 = a2[9];
  v15 = a2[11];
  v128 = a2[10];
  v129 = v15;
  v16 = a2[11];
  v130 = a2[12];
  v17 = a2[5];
  v18 = a2[7];
  v124 = a2[6];
  v125 = v18;
  v20 = a2[7];
  v19 = a2[8];
  v21 = v19;
  v127 = a2[9];
  v126 = v19;
  v22 = a2[1];
  v23 = a2[3];
  v120 = a2[2];
  v121 = v23;
  v25 = a2[3];
  v24 = a2[4];
  v26 = v24;
  v123 = a2[5];
  v122 = v24;
  v27 = *a2;
  v28 = *a2;
  v119 = a2[1];
  v118 = v27;
  v29 = a1[9];
  v30 = a1[11];
  v131[10] = a1[10];
  v131[11] = v30;
  v31 = a1[5];
  v32 = a1[7];
  v131[6] = a1[6];
  v131[7] = v32;
  v33 = a1[8];
  v131[9] = v29;
  v131[8] = v33;
  v34 = a1[1];
  v35 = a1[3];
  v131[2] = a1[2];
  v131[3] = v35;
  v36 = a1[4];
  v131[5] = v31;
  v131[4] = v36;
  v37 = *a1;
  v131[1] = v34;
  v131[0] = v37;
  v131[22] = v14;
  v131[23] = v128;
  v38 = a2[12];
  v131[24] = v16;
  v131[25] = v38;
  v131[18] = v17;
  v131[19] = v124;
  v131[20] = v20;
  v131[21] = v21;
  v131[14] = v22;
  v131[15] = v120;
  v131[16] = v25;
  v131[17] = v26;
  v131[12] = a1[12];
  v131[13] = v28;
  v132[10] = v115;
  v132[11] = v4;
  v132[12] = a1[12];
  v132[6] = v111;
  v132[7] = v7;
  v132[9] = v2;
  v132[8] = v113;
  v132[2] = v107;
  v132[3] = v11;
  v132[5] = v5;
  v132[4] = v109;
  v132[1] = v9;
  v132[0] = v106[0];
  v39 = sub_260FEE778(v132);
  if (!v39)
  {
    v48 = sub_260F9C524(v132);
    v103 = v128;
    v104 = v129;
    v105 = v130;
    v99 = v124;
    v100 = v125;
    v101 = v126;
    v102 = v127;
    v95 = v120;
    v96 = v121;
    v97 = v122;
    v98 = v123;
    v93 = v118;
    v94 = v119;
    if (!sub_260FEE778(&v93))
    {
      v49 = sub_260F9C524(&v93);
      v92[9] = v48[9];
      v92[10] = v48[10];
      v92[11] = v48[11];
      v92[12] = v48[12];
      v92[5] = v48[5];
      v92[6] = v48[6];
      v92[7] = v48[7];
      v92[8] = v48[8];
      v92[1] = v48[1];
      v92[2] = v48[2];
      v92[3] = v48[3];
      v92[4] = v48[4];
      v92[0] = *v48;
      v50 = v49[11];
      v89 = v49[10];
      v90 = v50;
      v91 = v49[12];
      v51 = v49[7];
      v85 = v49[6];
      v86 = v51;
      v52 = v49[9];
      v87 = v49[8];
      v88 = v52;
      v53 = v49[3];
      v81 = v49[2];
      v82 = v53;
      v54 = v49[5];
      v83 = v49[4];
      v84 = v54;
      v55 = v49[1];
      v79 = *v49;
      v80 = v55;
      sub_261062BAC(&v118, &v67);
      sub_261062BAC(v106, &v67);
      sub_261062BAC(v106, &v67);
      sub_261062BAC(&v118, &v67);
      v47 = _s21ProximityAppleIDSetup9V1CommandO7RequestO2eeoiySbAE_AEtFZ_0(v92, &v79);
      goto LABEL_9;
    }

LABEL_10:
    sub_261062BAC(v106, &v93);
    sub_261062BAC(&v118, &v93);
    sub_260FA9980(v131, &qword_27FE66050, &qword_2610CBE30);
    v63 = 0;
    return v63 & 1;
  }

  if (v39 != 1)
  {
    v56 = sub_260F9C524(v132);
    v65 = *(v56 + 16);
    v66 = *v56;
    v57 = *(v56 + 32);
    v58 = *(v56 + 40);
    v95 = v120;
    v96 = v121;
    v93 = v118;
    v94 = v119;
    v99 = v124;
    v100 = v125;
    v97 = v122;
    v98 = v123;
    v104 = v129;
    v105 = v130;
    v101 = v126;
    v102 = v127;
    v103 = v128;
    if (sub_260FEE778(&v93) == 2)
    {
      v59 = sub_260F9C524(&v93);
      v60 = *(v59 + 32);
      v61 = *(v59 + 40);
      v79 = v66;
      v80 = v65;
      *&v81 = v57;
      BYTE8(v81) = v58;
      v62 = *(v59 + 16);
      v67 = *v59;
      v68 = v62;
      *&v69 = v60;
      BYTE8(v69) = v61;
      sub_261062BAC(&v118, v92);
      sub_261062BAC(v106, v92);
      sub_261062BAC(v106, v92);
      sub_261062BAC(&v118, v92);
      v47 = static V1CommandError.== infix(_:_:)(&v79, &v67);
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v40 = sub_260F9C524(v132);
  v103 = v128;
  v104 = v129;
  v105 = v130;
  v99 = v124;
  v100 = v125;
  v101 = v126;
  v102 = v127;
  v95 = v120;
  v96 = v121;
  v97 = v122;
  v98 = v123;
  v93 = v118;
  v94 = v119;
  if (sub_260FEE778(&v93) != 1)
  {
    goto LABEL_10;
  }

  v41 = sub_260F9C524(&v93);
  v42 = *(v40 + 144);
  v87 = *(v40 + 128);
  v88 = v42;
  v89 = *(v40 + 160);
  *&v90 = *(v40 + 176);
  v43 = *(v40 + 80);
  v83 = *(v40 + 64);
  v84 = v43;
  v44 = *(v40 + 112);
  v85 = *(v40 + 96);
  v86 = v44;
  v45 = *(v40 + 16);
  v79 = *v40;
  v80 = v45;
  v46 = *(v40 + 48);
  v81 = *(v40 + 32);
  v82 = v46;
  v75 = *(v41 + 128);
  v76 = *(v41 + 144);
  v77 = *(v41 + 160);
  v78 = *(v41 + 176);
  v71 = *(v41 + 64);
  v72 = *(v41 + 80);
  v73 = *(v41 + 96);
  v74 = *(v41 + 112);
  v67 = *v41;
  v68 = *(v41 + 16);
  v69 = *(v41 + 32);
  v70 = *(v41 + 48);
  sub_261062BAC(&v118, v92);
  sub_261062BAC(v106, v92);
  sub_261062BAC(v106, v92);
  sub_261062BAC(&v118, v92);
  v47 = _s21ProximityAppleIDSetup9V1CommandO8ResponseO2eeoiySbAE_AEtFZ_0(&v79, &v67);
LABEL_9:
  v63 = v47;
  sub_260FA9980(v131, &qword_27FE66050, &qword_2610CBE30);
  sub_260FEDBAC(&v118);
  sub_260FEDBAC(v106);
  return v63 & 1;
}

unint64_t sub_261060124()
{
  result = qword_27FE65D10;
  if (!qword_27FE65D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65D10);
  }

  return result;
}

unint64_t sub_261060178()
{
  result = qword_27FE65D18;
  if (!qword_27FE65D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65D18);
  }

  return result;
}

unint64_t sub_2610601CC()
{
  result = qword_27FE65D20;
  if (!qword_27FE65D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65D20);
  }

  return result;
}

unint64_t sub_261060220()
{
  result = qword_27FE65D28;
  if (!qword_27FE65D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65D28);
  }

  return result;
}

unint64_t sub_261060274()
{
  result = qword_27FE65D30;
  if (!qword_27FE65D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65D30);
  }

  return result;
}

unint64_t sub_2610602C8()
{
  result = qword_27FE65D38;
  if (!qword_27FE65D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65D38);
  }

  return result;
}

uint64_t sub_26106031C(uint64_t result)
{
  v1 = *(result + 168) & 0xC000000000000003 | 0x2000000000000000;
  *(result + 80) &= 3uLL;
  *(result + 168) = v1;
  return result;
}

unint64_t sub_26106033C()
{
  result = qword_27FE65D60;
  if (!qword_27FE65D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65D60);
  }

  return result;
}

unint64_t sub_261060390()
{
  result = qword_27FE65D68;
  if (!qword_27FE65D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65D68);
  }

  return result;
}

unint64_t sub_2610603E4()
{
  result = qword_27FE65DA8;
  if (!qword_27FE65DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65DA8);
  }

  return result;
}

unint64_t sub_261060438()
{
  result = qword_27FE65DB0;
  if (!qword_27FE65DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65DB0);
  }

  return result;
}

unint64_t sub_26106048C()
{
  result = qword_27FE65DB8;
  if (!qword_27FE65DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65DB8);
  }

  return result;
}

unint64_t sub_2610604E0()
{
  result = qword_27FE65DC0;
  if (!qword_27FE65DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65DC0);
  }

  return result;
}

unint64_t sub_261060534()
{
  result = qword_27FE65DC8;
  if (!qword_27FE65DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65DC8);
  }

  return result;
}

unint64_t sub_261060588()
{
  result = qword_27FE65DD0;
  if (!qword_27FE65DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65DD0);
  }

  return result;
}

unint64_t sub_2610605DC()
{
  result = qword_27FE65DD8;
  if (!qword_27FE65DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65DD8);
  }

  return result;
}

unint64_t sub_261060630()
{
  result = qword_27FE65E18;
  if (!qword_27FE65E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E18);
  }

  return result;
}

unint64_t sub_261060684(uint64_t a1)
{
  result = sub_2610606AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2610606AC()
{
  result = qword_27FE65E20;
  if (!qword_27FE65E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E20);
  }

  return result;
}

unint64_t sub_261060740()
{
  result = qword_27FE65E28;
  if (!qword_27FE65E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E28);
  }

  return result;
}

unint64_t sub_261060798()
{
  result = qword_27FE65E30;
  if (!qword_27FE65E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E30);
  }

  return result;
}

unint64_t sub_2610607EC(uint64_t a1)
{
  result = sub_261060814();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261060814()
{
  result = qword_27FE65E38;
  if (!qword_27FE65E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E38);
  }

  return result;
}

unint64_t sub_2610608A8()
{
  result = qword_27FE65E40;
  if (!qword_27FE65E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E40);
  }

  return result;
}

unint64_t sub_261060900()
{
  result = qword_27FE65E48;
  if (!qword_27FE65E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E48);
  }

  return result;
}

unint64_t sub_261060958()
{
  result = qword_27FE65E50;
  if (!qword_27FE65E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E50);
  }

  return result;
}

unint64_t sub_2610609B0()
{
  result = qword_27FE65E58;
  if (!qword_27FE65E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E58);
  }

  return result;
}

unint64_t sub_261060A44()
{
  result = qword_27FE65E60;
  if (!qword_27FE65E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E60);
  }

  return result;
}

unint64_t sub_261060A98()
{
  result = qword_27FE65E68;
  if (!qword_27FE65E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E68);
  }

  return result;
}

unint64_t sub_261060AEC()
{
  result = qword_27FE65E70;
  if (!qword_27FE65E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E70);
  }

  return result;
}

unint64_t sub_261060B44()
{
  result = qword_27FE65E78;
  if (!qword_27FE65E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E78);
  }

  return result;
}

unint64_t sub_261060BD8()
{
  result = qword_27FE65E80;
  if (!qword_27FE65E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E80);
  }

  return result;
}

unint64_t sub_261060C2C()
{
  result = qword_27FE65E88;
  if (!qword_27FE65E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E88);
  }

  return result;
}

unint64_t sub_261060C80()
{
  result = qword_27FE65E90;
  if (!qword_27FE65E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E90);
  }

  return result;
}

uint64_t sub_261060D14(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_261060D68()
{
  result = qword_27FE65E98;
  if (!qword_27FE65E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E98);
  }

  return result;
}

unint64_t sub_261060DC0()
{
  result = qword_27FE65EA0;
  if (!qword_27FE65EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65EA0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21ProximityAppleIDSetup11IdMSAccountV10DeviceInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_21ProximityAppleIDSetup14V1CommandErrorO(uint64_t a1)
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

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_261060E9C(uint64_t result, char a2)
{
  v2 = *(result + 168) & 0xC000000000000003 | ((a2 & 3) << 60);
  *(result + 80) &= 3uLL;
  *(result + 168) = v2;
  return result;
}

uint64_t sub_261060ED0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_261060F20(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 200) = 0;
    result = 0.0;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 208) = 1;
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
      result = 0.0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 80) = 4 * -a2;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0u;
      *(a1 + 184) = 0u;
      *(a1 + 200) = 0;
      return result;
    }

    *(a1 + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261060FD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_261061028(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 184) = 1;
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
      result = 0.0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 80) = 4 * -a2;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0u;
      return result;
    }

    *(a1 + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2610610E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26106112C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_26106117C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for V1CommandError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for V1CommandError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_261061424()
{
  result = qword_27FE65EA8;
  if (!qword_27FE65EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65EA8);
  }

  return result;
}

unint64_t sub_26106147C()
{
  result = qword_27FE65EB0;
  if (!qword_27FE65EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65EB0);
  }

  return result;
}

unint64_t sub_2610614D4()
{
  result = qword_27FE65EB8;
  if (!qword_27FE65EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65EB8);
  }

  return result;
}

unint64_t sub_26106152C()
{
  result = qword_27FE65EC0;
  if (!qword_27FE65EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65EC0);
  }

  return result;
}

unint64_t sub_261061584()
{
  result = qword_27FE65EC8;
  if (!qword_27FE65EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65EC8);
  }

  return result;
}

unint64_t sub_2610615DC()
{
  result = qword_27FE65ED0;
  if (!qword_27FE65ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65ED0);
  }

  return result;
}

unint64_t sub_261061634()
{
  result = qword_27FE65ED8;
  if (!qword_27FE65ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65ED8);
  }

  return result;
}

unint64_t sub_26106168C()
{
  result = qword_27FE65EE0;
  if (!qword_27FE65EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65EE0);
  }

  return result;
}

unint64_t sub_2610616E4()
{
  result = qword_27FE65EE8;
  if (!qword_27FE65EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65EE8);
  }

  return result;
}

unint64_t sub_26106173C()
{
  result = qword_27FE65EF0;
  if (!qword_27FE65EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65EF0);
  }

  return result;
}

unint64_t sub_261061794()
{
  result = qword_27FE65EF8;
  if (!qword_27FE65EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65EF8);
  }

  return result;
}

unint64_t sub_2610617EC()
{
  result = qword_27FE65F00;
  if (!qword_27FE65F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F00);
  }

  return result;
}

unint64_t sub_261061844()
{
  result = qword_27FE65F08;
  if (!qword_27FE65F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F08);
  }

  return result;
}

unint64_t sub_26106189C()
{
  result = qword_27FE65F10;
  if (!qword_27FE65F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F10);
  }

  return result;
}

unint64_t sub_2610618F4()
{
  result = qword_27FE65F18;
  if (!qword_27FE65F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F18);
  }

  return result;
}

unint64_t sub_26106194C()
{
  result = qword_27FE65F20;
  if (!qword_27FE65F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F20);
  }

  return result;
}

unint64_t sub_2610619A4()
{
  result = qword_27FE65F28;
  if (!qword_27FE65F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F28);
  }

  return result;
}

unint64_t sub_2610619FC()
{
  result = qword_27FE65F30;
  if (!qword_27FE65F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F30);
  }

  return result;
}

unint64_t sub_261061A54()
{
  result = qword_27FE65F38;
  if (!qword_27FE65F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F38);
  }

  return result;
}

unint64_t sub_261061AAC()
{
  result = qword_27FE65F40;
  if (!qword_27FE65F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F40);
  }

  return result;
}

unint64_t sub_261061B04()
{
  result = qword_27FE65F48;
  if (!qword_27FE65F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F48);
  }

  return result;
}

unint64_t sub_261061B5C()
{
  result = qword_27FE65F50;
  if (!qword_27FE65F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F50);
  }

  return result;
}

unint64_t sub_261061BB4()
{
  result = qword_27FE65F58;
  if (!qword_27FE65F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F58);
  }

  return result;
}

unint64_t sub_261061C0C()
{
  result = qword_27FE65F60;
  if (!qword_27FE65F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F60);
  }

  return result;
}

unint64_t sub_261061C64()
{
  result = qword_27FE65F68;
  if (!qword_27FE65F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F68);
  }

  return result;
}

unint64_t sub_261061CBC()
{
  result = qword_27FE65F70;
  if (!qword_27FE65F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F70);
  }

  return result;
}

unint64_t sub_261061D14()
{
  result = qword_27FE65F78;
  if (!qword_27FE65F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F78);
  }

  return result;
}

unint64_t sub_261061D6C()
{
  result = qword_27FE65F80;
  if (!qword_27FE65F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F80);
  }

  return result;
}

unint64_t sub_261061DC4()
{
  result = qword_27FE65F88;
  if (!qword_27FE65F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F88);
  }

  return result;
}

unint64_t sub_261061E1C()
{
  result = qword_27FE65F90;
  if (!qword_27FE65F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F90);
  }

  return result;
}

unint64_t sub_261061E74()
{
  result = qword_27FE65F98;
  if (!qword_27FE65F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F98);
  }

  return result;
}

unint64_t sub_261061ECC()
{
  result = qword_27FE65FA0;
  if (!qword_27FE65FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FA0);
  }

  return result;
}

unint64_t sub_261061F24()
{
  result = qword_27FE65FA8;
  if (!qword_27FE65FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FA8);
  }

  return result;
}

unint64_t sub_261061F7C()
{
  result = qword_27FE65FB0;
  if (!qword_27FE65FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FB0);
  }

  return result;
}

unint64_t sub_261061FD4()
{
  result = qword_27FE65FB8;
  if (!qword_27FE65FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FB8);
  }

  return result;
}

unint64_t sub_26106202C()
{
  result = qword_27FE65FC0;
  if (!qword_27FE65FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FC0);
  }

  return result;
}

unint64_t sub_261062084()
{
  result = qword_27FE65FC8;
  if (!qword_27FE65FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FC8);
  }

  return result;
}

unint64_t sub_2610620DC()
{
  result = qword_27FE65FD0;
  if (!qword_27FE65FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FD0);
  }

  return result;
}

unint64_t sub_261062134()
{
  result = qword_27FE65FD8;
  if (!qword_27FE65FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FD8);
  }

  return result;
}

unint64_t sub_26106218C()
{
  result = qword_27FE65FE0;
  if (!qword_27FE65FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FE0);
  }

  return result;
}

unint64_t sub_2610621E4()
{
  result = qword_27FE65FE8;
  if (!qword_27FE65FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FE8);
  }

  return result;
}

unint64_t sub_26106223C()
{
  result = qword_27FE65FF0;
  if (!qword_27FE65FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FF0);
  }

  return result;
}

unint64_t sub_261062294()
{
  result = qword_27FE65FF8;
  if (!qword_27FE65FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FF8);
  }

  return result;
}

unint64_t sub_2610622EC()
{
  result = qword_27FE66000;
  if (!qword_27FE66000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66000);
  }

  return result;
}

unint64_t sub_261062344()
{
  result = qword_27FE66008;
  if (!qword_27FE66008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66008);
  }

  return result;
}

unint64_t sub_26106239C()
{
  result = qword_27FE66010;
  if (!qword_27FE66010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66010);
  }

  return result;
}

unint64_t sub_2610623F4()
{
  result = qword_27FE66018;
  if (!qword_27FE66018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66018);
  }

  return result;
}

unint64_t sub_26106244C()
{
  result = qword_27FE66020;
  if (!qword_27FE66020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66020);
  }

  return result;
}

unint64_t sub_2610624A4()
{
  result = qword_27FE66028;
  if (!qword_27FE66028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66028);
  }

  return result;
}

unint64_t sub_2610624FC()
{
  result = qword_27FE66030;
  if (!qword_27FE66030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66030);
  }

  return result;
}

unint64_t sub_261062554()
{
  result = qword_27FE66038;
  if (!qword_27FE66038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66038);
  }

  return result;
}

unint64_t sub_2610625AC()
{
  result = qword_27FE66040;
  if (!qword_27FE66040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66040);
  }

  return result;
}

unint64_t sub_261062604()
{
  result = qword_27FE66048;
  if (!qword_27FE66048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66048);
  }

  return result;
}

uint64_t sub_261062658(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B616873646E6168 && a2 == 0xE900000000000065;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E496E676973 && a2 == 0xE600000000000000 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6568747561 && a2 == 0xEC00000065746163)
  {

    return 2;
  }

  else
  {
    v6 = sub_2610BD384();

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

uint64_t sub_261062778(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2610BD384();

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

uint64_t sub_261062890(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657473656ELL && a2 == 0xE600000000000000 || (sub_2610BD384() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002610D5480 == a2 || (sub_2610BD384() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002610D54A0 == a2 || (sub_2610BD384() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002610D54C0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_2610BD384();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_261062A94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 2;
  }

  else
  {
    v6 = sub_2610BD384();

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

uint64_t sub_261062BE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7)
  {
    return sub_260FF3594(result, a2, a3, a4, a5, a6);
  }

  else
  {
  }
}

uint64_t sub_261062C28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7)
  {
    return sub_260FF3654(result, a2, a3, a4, a5, a6);
  }

  else
  {
  }
}

uint64_t PASFlowStepFamilyPickerError.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_2610BD154();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_261062DD0()
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_261062E54(uint64_t a1)
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_261062EB0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_2610BD154();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_261062F2C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v2;
  v6 = sub_2610BD634();
  v7 = v3;
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0x6E65736572506F6ELL, 0xEE0073656C626174);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v4 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v4;
}

uint64_t sub_261063030(uint64_t a1)
{
  v2 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0x6E65736572506F6ELL, 0xEE0073656C626174);
  return v2;
}

uint64_t sub_26106309C(uint64_t a1)
{
  v2 = sub_261069468();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610630D8(uint64_t a1)
{
  v2 = sub_261069468();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASFlowStepFamilyPicker.selectedMember.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return v1;
}

uint64_t sub_261063188@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  *a2 = v4;
  return result;
}

uint64_t sub_261063208(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

uint64_t PASFlowStepFamilyPicker.selectedMember.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

void (*PASFlowStepFamilyPicker.selectedMember.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2610BC834();
  return sub_260FD74E0;
}

uint64_t sub_2610633B4(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C0, &qword_2610C24E0);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646B8, &qword_2610C24D8);
  sub_2610BC824();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t PASFlowStepFamilyPicker.$selectedMember.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C0, &qword_2610C24E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646B8, &qword_2610C24D8);
  sub_2610BC824();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*PASFlowStepFamilyPicker.$selectedMember.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C0, &qword_2610C24E0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__selectedMember;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646B8, &qword_2610C24D8);
  sub_2610BC814();
  swift_endAccess();
  return sub_260FD7A84;
}

uint64_t PASFlowStepFamilyPicker.canAddMembers.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return v1;
}

uint64_t sub_261063854@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  *a2 = v4;
  return result;
}

uint64_t sub_2610638D4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

uint64_t sub_261063964(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64790, &qword_2610C7710);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC824();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t PASFlowStepFamilyPicker.familyMembers.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return v1;
}

uint64_t sub_261063B5C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  *a2 = v4;
  return result;
}

uint64_t sub_261063BDC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

uint64_t sub_261063C74(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE66118, &unk_2610CC210);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66080, &qword_2610CBF30);
  sub_2610BC824();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t sub_261063DF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__deviceProvider);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v3 = qword_27FE637E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v2 = sub_260F9D764();
    *(v1 + 16) = v2;
    *(v1 + 24) = v4;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_261063ED0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__lockProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &unk_27FE63B90, &unk_2610BED50);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &unk_27FE63B90, &unk_2610BED50);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9FF64(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &unk_27FE63B90, &unk_2610BED50);
  swift_endAccess();
}

uint64_t sub_26106400C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___fetchLock;
  swift_beginAccess();
  sub_260FA9918(v1 + v3, &v7, &qword_27FE64740, &qword_2610C2530);
  if (v8)
  {
    return sub_260F98E14(&v7, a1);
  }

  sub_260FA9980(&v7, &qword_27FE64740, &qword_2610C2530);
  sub_261063ED0(&v7);
  v5 = v8;
  v6 = v9;
  __swift_project_boxed_opaque_existential_1(&v7, v8);
  (*(v6 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  sub_260FA99E0(a1, &v7);
  swift_beginAccess();
  sub_260FC3844(&v7, v1 + v3, &qword_27FE64740, &qword_2610C2530);
  return swift_endAccess();
}

uint64_t PASFlowStepFamilyPicker.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_261068D50(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_261064174@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__analyticsProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9EB74(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63AD0, qword_2610C7BC0);
  swift_endAccess();
}

uint64_t sub_2610642B0()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___analytics;
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___analytics))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___analytics);
  }

  else
  {
    sub_261064174(v6);
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v2 = (*(v4 + 8))(&type metadata for PickerAnalyticsEvent, &off_28738B258, v3, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t PASFlowStepFamilyPicker.__allocating_init(delegate:dataSource:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = sub_2610692CC(a1, a2, v9, v3, v7, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v10;
}

uint64_t PASFlowStepFamilyPicker.init(delegate:dataSource:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  MEMORY[0x28223BE20](v9, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_261068E98(a1, a2, v11, v3, v7, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v13;
}

uint64_t PASFlowStepFamilyPicker.prepareForPresentation()()
{
  v1[5] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C8, &qword_2610C24F0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646D0, &qword_2610C24F8);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = sub_2610BCC74();
  v1[13] = sub_2610BCC64();
  v4 = swift_task_alloc();
  v1[14] = v4;
  *v4 = v1;
  v4[1] = sub_261064684;

  return sub_26104582C();
}

uint64_t sub_261064684()
{
  *(*v1 + 120) = v0;

  v3 = sub_2610BCBF4();
  if (v0)
  {
    v4 = sub_260FD895C;
  }

  else
  {
    v4 = sub_2610647E0;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_2610647E0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];

  sub_261063DF8();
  v8 = v7;
  ObjectType = swift_getObjectType();
  (*(v8 + 48))(ObjectType, v8);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646D8, &qword_2610C2500);
  sub_260FDD378(&qword_27FE646E0, &qword_27FE646C8, &qword_2610C24F0, MEMORY[0x277CBCEC8]);
  sub_2610BC874();
  (*(v6 + 8))(v3, v5);
  sub_260FDD378(&qword_27FE646E8, &qword_27FE646D0, &qword_2610C24F8, MEMORY[0x277CBCB10]);

  sub_2610BC8A4();

  (*(v2 + 8))(v1, v4);
  swift_beginAccess();
  sub_2610BC7D4();
  swift_endAccess();

  v10 = v0[1];

  return v10();
}

uint64_t sub_261064A0C(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v7[0] = 0xD000000000000015;
  v7[1] = 0x80000002610D1820;
  v5 = (*(v4 + 24))(v7, v3, v4);

  if (v5)
  {
    *(a2 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_supportedAuthModes) = &unk_2873836C8;
  }

  return result;
}

uint64_t PASFlowStepFamilyPicker.fetchFamilyMembers(using:)(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_2610BCC34();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  sub_2610BCC74();
  v2[14] = sub_2610BCC64();
  v5 = sub_2610BCBF4();
  v2[15] = v5;
  v2[16] = v4;

  return MEMORY[0x2822009F8](sub_261064BC8, v5, v4);
}

uint64_t sub_261064BC8()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[17] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepFamilyPicker fetchFamilyMembers", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_261064D1C;
  v6 = v0[9];

  return sub_261065434(v6);
}

uint64_t sub_261064D1C()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_2610651C0;
  }

  else
  {
    v5 = sub_261064E58;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261064E58()
{
  sub_2610660F4();
  v0[20] = sub_2610642B0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  v1 = v0[8];
  if (v1 >> 62)
  {
    v2 = sub_2610BD0E4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[21] = v2;

  return MEMORY[0x2822009F8](sub_261064F54, 0, 0);
}

uint64_t sub_261064F54()
{
  v1 = *(v0 + 168);
  *(v0 + 40) = &type metadata for PickerAnalyticsEvent;
  *(v0 + 48) = &off_28738B258;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_261065018;

  return sub_261047C34(v0 + 16, 0, 0);
}

void sub_261065018()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 2);
    v3 = v2[15];
    v4 = v2[16];

    MEMORY[0x2822009F8](sub_261065158, v3, v4);
  }
}

uint64_t sub_261065158()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2610651C0()
{
  v1 = *(v0 + 152);

  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 152);
  if (v3)
  {

    v5 = sub_2610BC794();
    v6 = sub_2610BCD84();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_260F97000, v5, v6, "PASFlowStepFamilyPicker fetchFamilyMembers task was cancelled", v7, 2u);
      MEMORY[0x2666F8720](v7, -1, -1);
    }

    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = *(v0 + 88);

    (*(v9 + 8))(v8, v10);
    v11 = *(v0 + 56);
  }

  else
  {

    v12 = v4;
    v13 = sub_2610BC794();
    v14 = sub_2610BCD64();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 152);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      v18 = v15;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_260F97000, v13, v14, "PASFlowStepFamilyPicker fetchFamilyMembers failed with error %{public}@", v16, 0xCu);
      sub_260FA9980(v17, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v17, -1, -1);
      MEMORY[0x2666F8720](v16, -1, -1);
    }

    v20 = *(v0 + 152);
    v21 = *(v0 + 80);

    v22 = *(v21 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_error);
    *(v21 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_error) = v20;

    v23 = v20;
    sub_2610439BC();
    v11 = v20;
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_261065434(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_2610BCC74();
  v2[20] = sub_2610BCC64();
  v4 = sub_2610BCBF4();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_2610654CC, v4, v3);
}

uint64_t sub_2610654CC()
{
  sub_26106400C((v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v5 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_2610655FC;

  return v5(v1, v2);
}

uint64_t sub_2610655FC(char a1)
{
  v2 = *v1;
  *(*v1 + 240) = a1;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);

  return MEMORY[0x2822009F8](sub_261065724, v4, v3);
}

uint64_t sub_261065724()
{
  v1 = *(v0 + 240);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  if (v1 == 1)
  {
    sub_26106400C(v0 + 56);
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v2);
    v11 = (*(v3 + 16) + **(v3 + 16));
    v4 = swift_task_alloc();
    *(v0 + 192) = v4;
    *v4 = v0;
    v4[1] = sub_26106595C;

    return v11(v2, v3);
  }

  else
  {

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v6 = sub_2610BC7B4();
    __swift_project_value_buffer(v6, qword_27FE65900);
    v7 = sub_2610BC794();
    v8 = sub_2610BCD64();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_260F97000, v7, v8, "PASFlowStepFamilyPicker setFamilyMembers called again!", v9, 2u);
      MEMORY[0x2666F8720](v9, -1, -1);
    }

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_26106595C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_261066024;
  }

  else
  {
    v5 = sub_261065A98;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261065A98()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepFamilyPicker setFamilyMembers called", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_261065BF0;
  v6 = v0[18];

  return sub_2610664C0(v6);
}

uint64_t sub_261065BF0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = v4[21];
    v6 = v4[22];
    v7 = sub_261066090;
  }

  else
  {
    v4[28] = a1;
    v5 = v4[21];
    v6 = v4[22];
    v7 = sub_261065D18;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_261065D18()
{
  v1 = v0[28];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[17] = v1;

  sub_2610BC854();
  sub_26106400C((v0 + 12));
  v2 = v0[15];
  v3 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_261065E98;

  return v6(v2, v3);
}

uint64_t sub_261065E98()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_261065FB8, v3, v2);
}

uint64_t sub_261065FB8()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261066024()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261066090()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2610660F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  v0 = v15;
  if (v15 >> 62)
  {
LABEL_20:
    v1 = sub_2610BD0E4();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v1 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
LABEL_3:
      v2 = 0;
      v14 = v1;
      do
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x2666F78E0](v2, v0);
          v4 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:

            swift_getKeyPath();
            swift_getKeyPath();
            *&v15 = v3;

            sub_2610BC854();
            return;
          }
        }

        else
        {
          if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v3 = *(v0 + 8 * v2 + 32);

          v4 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_17;
          }
        }

        v5 = *(v3 + 16);
        if (v5 >> 62)
        {
          if (v5 >> 62 != 1)
          {
            v17 = 0;
            v15 = 0u;
            v16 = 0u;

            sub_260FA9980(&v15, &unk_27FE656B0, &unk_2610BFCE0);
            goto LABEL_5;
          }

          v6 = type metadata accessor for PASAccountWithImage();
          *(&v16 + 1) = v6;
          v7 = sub_261069814(&unk_27FE65010, type metadata accessor for PASAccountWithImage, &protocol conformance descriptor for PASAccountWithImage);
          v17 = v7;
          v5 &= 0x3FFFFFFFFFFFFFFFuLL;
        }

        else
        {
          v6 = type metadata accessor for PASFamilyMember();
          *(&v16 + 1) = v6;
          v7 = sub_261069814(&unk_27FE64210, type metadata accessor for PASFamilyMember, &protocol conformance descriptor for PASFamilyMember);
          v17 = v7;
        }

        *&v15 = v5;
        __swift_project_boxed_opaque_existential_1(&v15, v6);
        v8 = *(v7 + 72);

        v9 = v8(v6, v7);
        __swift_destroy_boxed_opaque_existential_0Tm(&v15);
        if (v9)
        {
          goto LABEL_18;
        }

        v1 = v14;
LABEL_5:
        ++v2;
      }

      while (v4 != v1);
    }
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v10 = sub_2610BC7B4();
  __swift_project_value_buffer(v10, qword_27FE65900);
  v11 = sub_2610BC794();
  v12 = sub_2610BCD64();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_260F97000, v11, v12, "Failed to select current user because the current family member was not in the list", v13, 2u);
    MEMORY[0x2666F8720](v13, -1, -1);
  }
}

void PASFlowStepFamilyPicker.setError(error:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_error);
  *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_error) = a1;

  v4 = a1;

  sub_2610439BC();
}

uint64_t sub_2610664C0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2610664E0, 0, 0);
}

uint64_t sub_2610664E0()
{
  v1 = (v0[4] + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_dataSource);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_261066618;
  v5 = v0[3];

  return v7(v5, v2, v3);
}

uint64_t sub_261066618(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_2610669F0;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_261066740;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261066740()
{
  v1 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE664E0, &unk_2610CC230);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2610C23D0;
  type metadata accessor for PASPickerPresentable();
  v3 = swift_allocObject();
  *(v3 + 16) = v1 | 0x4000000000000000;
  *(v2 + 32) = v3;
  v0[8] = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_261066828;

  return sub_261066BF4();
}

uint64_t sub_261066828(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v4 + 80) = a1;

  return MEMORY[0x2822009F8](sub_26106697C, 0, 0);
}

uint64_t sub_26106697C()
{
  v3 = v0[8];
  sub_26106859C(v0[10]);
  v1 = v0[1];

  return v1(v3);
}

uint64_t sub_2610669F0()
{
  v16 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    *(v0 + 16) = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v10 = sub_2610BCA34();
    v12 = sub_260FA5970(v10, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepFamilyPicker fetchMemberPresentables failed to fetch local account: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  *(v0 + 64) = MEMORY[0x277D84F90];
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *v13 = v0;
  v13[1] = sub_261066828;

  return sub_261066BF4();
}