char *sub_257C65338(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59B8, &unk_257EE9AA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_257C65454(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A60, &unk_257EDB290);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257C65590(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 96);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[96 * v11])
    {
      memmove(v15, v16, 96 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_257C656D0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_257C65918(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_257C65A40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59C0, &qword_257EDB1E8);
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

char *sub_257C65B68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6948, &qword_257EDD3D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_257C65C6C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6980, &unk_257EDD400);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FA6A0, &qword_257EDB150);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_257C65DA0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6920, &unk_257EDD3B0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FBBC0, &unk_257EDB120);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_257C65F68(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_257C660C4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_257C662BC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_257C663C8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_257ED05F0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_257ECF850();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_257C66590(v7, v8, a1, v4);
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
    sub_257C664C0(0, v2, 1, a1);
  }
}

uint64_t sub_257C664C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_257ED0640(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_257C66590(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_257C66E20(v8);
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_257C66B6C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_257ED0640();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (v14[1] == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ sub_257ED0640()))
          {
            goto LABEL_23;
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_257BFCB00(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_257BFCB00((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_257C66B6C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_257C66E20(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_257C66D94(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (sub_257ED0640() & 1) == 0)
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_257C66B6C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_257ED0640() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_257ED0640() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_257C66D94(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_257C66E20(v3);
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

char *sub_257C66E34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F68F0, &unk_257EDD390);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_257C67308(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 96 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v26[0] = *v18;
      v26[1] = v19;
      v21 = v18[3];
      v20 = v18[4];
      v22 = v18[2];
      *&v27[12] = *(v18 + 76);
      v26[3] = v21;
      *v27 = v20;
      v26[2] = v22;
      memmove(v11, v18, 0x5CuLL);
      if (v14 == v10)
      {
        sub_257C58DDC(v26, v25);
        goto LABEL_24;
      }

      v11 += 96;
      sub_257C58DDC(v26, v25);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_257C6749C(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v9 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v30 = result;
    v31 = a3;
    result = 0;
    v9 = 0;
    v29 = -1 << *(a4 + 32);
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v14 = a4;
      v15 = *(a4 + 56) + 56 * (__clz(__rbit64(v7)) | (v9 << 6));
      v16 = *(v15 + 8);
      v7 &= v7 - 1;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      v19 = *(v15 + 32);
      v20 = *(v15 + 40);
      *v8 = *v15;
      *(v8 + 8) = v16;
      *(v8 + 16) = v18;
      *(v8 + 24) = v17;
      *(v8 + 32) = v19;
      *(v8 + 40) = v20;
      if (v11 == v31)
      {
        v26 = v17;

        v27 = v16;
        v28 = v18;
        a4 = v14;
        v5 = v29;
        result = v30;
        a3 = v31;
        goto LABEL_24;
      }

      v8 += 56;
      v21 = v17;

      v22 = v16;
      v23 = v18;
      result = v11;
      v24 = __OFADD__(v11++, 1);
      a4 = v14;
      if (v24)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
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
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v25 = v9 + 1;
    }

    else
    {
      v25 = v10;
    }

    v9 = v25 - 1;
    a3 = result;
    v5 = v29;
    result = v30;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_257C6764C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 48) + v17);
      v19 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = v18;
      *(v11 + 8) = v19;
      if (v14 == v10)
      {
        v23 = v19;
        goto LABEL_24;
      }

      v11 += 16;
      v20 = v19;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_257C677A4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v48 = sub_257ECCCF0();
  v50 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v8, v9, v10, v11);
  v49 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  v47 = &v41 - v19;
  v20 = a4 + 56;
  v21 = -1 << *(a4 + 32);
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v39 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v20;
    *(a1 + 16) = ~v21;
    *(a1 + 24) = v39;
    *(a1 + 32) = v23;
    return;
  }

  if (!a3)
  {
    v39 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v41 = -1 << *(a4 + 32);
    v42 = a1;
    v24 = 0;
    v25 = (63 - v21) >> 6;
    v43 = v50 + 32;
    v44 = v50 + 16;
    a1 = 1;
    v45 = a4 + 56;
    v46 = a3;
    v26 = v47;
    while (v23)
    {
      v52 = a2;
LABEL_15:
      v29 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v51 = v24;
      v30 = a4;
      v31 = *(a4 + 48);
      v32 = v49;
      v33 = v50;
      v34 = *(v50 + 72);
      v35 = v48;
      (*(v50 + 16))(v49, v31 + v34 * (v29 | (v24 << 6)), v48, v18);
      v36 = *(v33 + 32);
      v36(v26, v32, v35);
      v37 = v52;
      v36(v52, v26, v35);
      if (a1 == v46)
      {
        v21 = v41;
        a1 = v42;
        a4 = v30;
        v39 = v51;
        v20 = v45;
        goto LABEL_25;
      }

      a2 = &v37[v34];
      v38 = __OFADD__(a1++, 1);
      a4 = v30;
      v24 = v51;
      v20 = v45;
      if (v38)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v27 = v24;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v28 >= v25)
      {
        break;
      }

      v23 = *(v20 + 8 * v28);
      ++v27;
      if (v23)
      {
        v52 = a2;
        v24 = v28;
        goto LABEL_15;
      }
    }

    v23 = 0;
    if (v25 <= v24 + 1)
    {
      v40 = v24 + 1;
    }

    else
    {
      v40 = v25;
    }

    v39 = v40 - 1;
    v21 = v41;
    a1 = v42;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_257C67A48(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_257C67BA0(void *result, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v21 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 296 * (v17 | (v12 << 6)));
      memcpy(__dst, v18, 0x128uLL);
      memmove(v11, v18, 0x128uLL);
      if (v14 == v10)
      {
        sub_257C09C58(__dst, v22);
        goto LABEL_23;
      }

      v11 += 296;
      sub_257C09C58(__dst, v22);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = v13;
    }

    v12 = v20 - 1;
    v10 = result;
LABEL_23:
    v7 = v21;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_257C67D68(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8, v12, v13, v14, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  v24 = &v39 - v23;
  v44 = a4;
  v27 = *(a4 + 64);
  v26 = a4 + 64;
  v25 = v27;
  v28 = -1 << *(v26 - 32);
  if (-v28 < 64)
  {
    v29 = ~(-1 << -v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & v25;
  if (!a2)
  {
LABEL_18:
    v31 = 0;
LABEL_25:
    *a1 = v44;
    a1[1] = v26;
    a1[2] = ~v28;
    a1[3] = v31;
    a1[4] = v30;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v41 = a1;
    v42 = a3;
    v31 = 0;
    v40 = v28;
    v32 = (63 - v28) >> 6;
    v33 = 1;
    while (v30)
    {
LABEL_14:
      v36 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      a1 = *(v43 + 72);
      sub_257C67FEC(*(v44 + 48) + a1 * (v36 | (v31 << 6)), v17, a6);
      sub_257C31FD8(v17, v24, a6);
      sub_257C31FD8(v24, a2, a6);
      if (v33 == v42)
      {
        a1 = v41;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v34 = v31;
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v35 >= v32)
      {
        break;
      }

      v30 = *(v26 + 8 * v35);
      ++v34;
      if (v30)
      {
        v31 = v35;
        goto LABEL_14;
      }
    }

    v30 = 0;
    if (v32 <= v31 + 1)
    {
      v38 = v31 + 1;
    }

    else
    {
      v38 = v32;
    }

    v31 = v38 - 1;
    a1 = v41;
LABEL_23:
    v28 = v40;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_257C67F9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_257D132B4(*a1, a1[1], a1[2]);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_257C67FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_257C68054()
{
  v2 = v0;
  v3 = objc_allocWithZone(MEMORY[0x277D75B48]);
  v4 = sub_257ECF4C0();
  v5 = [v3 initWithStyle:1 reuseIdentifier:v4];

  v6 = sub_257ECCEA0();
  if (v6 != 1)
  {
    if (!v6)
    {
      v7 = [v5 textLabel];
      if (v7)
      {
        v8 = v7;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v10 = [objc_opt_self() bundleForClass_];
        v11 = sub_257ECF4C0();
        v12 = sub_257ECF4C0();
        v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

        if (!v13)
        {
          sub_257ECF500();
          v13 = sub_257ECF4C0();
        }

        [v8 setText_];
      }

      v14 = [v5 textLabel];
      if (v14)
      {
        v15 = v14;
        [v14 setNumberOfLines_];
      }

      v16 = [v5 textLabel];
      if (v16)
      {
        v17 = v16;
        [v16 setLineBreakMode_];
      }

      v18 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v19 = qword_2815447E0;

      if (v19 != -1)
      {
        v20 = swift_once();
      }

      MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20, &unk_257EDD490);
      sub_257ECFD50();

      v25 = sub_257C592D0(0, v55);

      [v18 setOn_];
      [v18 addTarget:v2 action:sel_didToggleActivitySwitch_ forControlEvents:4096];
      [v5 setAccessoryView_];
      [v5 setAccessoryType_];
    }

    return v5;
  }

  v26 = sub_257ECCE60();
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v27 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activities);
    if (v26 < *(v27 + 16))
    {
      v28 = v27 + 16 * v26;
      v1 = *(v28 + 32);
      v2 = *(v28 + 40);

      v29 = [v5 textLabel];
      if (v29)
      {
        v30 = v29;
        type metadata accessor for MAGUtilities();
        v31 = swift_getObjCClassFromMetadata();
        v32 = [objc_opt_self() bundleForClass_];
        v33 = sub_257ECF4C0();
        v34 = sub_257ECF4C0();
        v35 = [v32 localizedStringForKey:v33 value:0 table:v34];

        if (!v35)
        {
          sub_257ECF500();
          v35 = sub_257ECF4C0();
        }

        [v30 setText_];
      }

      if (qword_281544FE0 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_37:
  swift_once();
LABEL_23:
  swift_beginAccess();
  v36 = qword_2815447E0;

  if (v36 != -1)
  {
    v37 = swift_once();
  }

  MEMORY[0x28223BE20](v37, v38, v39, v40, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  if (*(v55 + 16))
  {
    v42 = sub_257C03F6C(v1, v2);
    v44 = v43;

    if (v44)
    {
      v45 = *(*(v55 + 56) + 296 * v42);

      v46 = [v5 detailTextLabel];
      if (v46)
      {
        v47 = v46;
        if (v45)
        {
          type metadata accessor for MAGUtilities();
          v48 = swift_getObjCClassFromMetadata();
          v49 = [objc_opt_self() bundleForClass_];
          v50 = sub_257ECF4C0();
          v51 = sub_257ECF4C0();
          v52 = [v49 localizedStringForKey:v50 value:0 table:v51];

          sub_257ECF500();
        }

        v53 = sub_257ECF4C0();

        [v47 setText_];
      }

      [v5 setAccessoryType_];
    }

    else
    {
    }
  }

  else
  {
  }

  return v5;
}

uint64_t sub_257C68830(uint64_t a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

double sub_257C68938(uint64_t a1)
{
  if (qword_281544FE0 != -1)
  {
LABEL_38:
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2815447E0;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  MEMORY[0x28223BE20](v3, v4, v5, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A20, &unk_257EDD490);
  sub_257ECFD50();

  v8 = v32;
  if ([a1 isOn])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_6;
  }

  v11 = *(v32 + 16);
  if (v11)
  {
    a1 = 0;
    do
    {
      if (!*(v32 + a1 + 32))
      {
        v12 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          goto LABEL_44;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_16;
      }

      ++a1;
    }

    while (v11 != a1);
  }

  a1 = *(v32 + 16);
LABEL_20:
  v12 = a1;
  if (!__OFADD__(v11, a1 - v11))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || a1 > *(v8 + 3) >> 1)
    {
      if (v11 <= a1)
      {
        v14 = a1;
      }

      else
      {
        v14 = v11;
      }

      v8 = sub_257BFD908(isUniquelyReferenced_nonNull_native, v14, 1, v8);
    }

    sub_257E541E0();
    goto LABEL_28;
  }

  __break(1u);
LABEL_42:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v8 = sub_257C7DF14(v8);
LABEL_16:
    v11 = *(v8 + 2);
    if (v12 != v11)
    {
      break;
    }

    v11 = v12;
LABEL_18:
    if (v11 < a1)
    {
      goto LABEL_42;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_20;
    }
  }

  v27 = v8 + 32;
  v28 = &v8[a1 + 33];
  while (1)
  {
    if (v12 >= v11)
    {
      __break(1u);
      goto LABEL_38;
    }

    if (*v28)
    {
      break;
    }

LABEL_31:
    ++v12;
    ++v28;
    if (v12 == v11)
    {
      goto LABEL_18;
    }
  }

  if (v12 == a1)
  {
LABEL_30:
    ++a1;
    goto LABEL_31;
  }

  if (a1 < v11)
  {
    v29 = v27[a1];
    v27[a1] = *v28;
    *v28 = v29;
    v11 = *(v8 + 2);
    goto LABEL_30;
  }

  __break(1u);
LABEL_40:
  v8 = sub_257BFD908(0, *(v8 + 2) + 1, 1, v8);
LABEL_6:
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_257BFD908((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v8[v10 + 32] = 0;
LABEL_28:
  v15 = swift_beginAccess();
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0, &qword_257EDFFC0);
  sub_257ECFD50();

  v20 = swift_beginAccess();
  MEMORY[0x28223BE20](v20, v21, v22, v23, v24);

  sub_257ECFD50();

  v25 = sub_257D53928();
  sub_257D53B38(v8, v30, v31, v25);

  return result;
}

id sub_257C68E18(uint64_t a1)
{
  v86 = a1;
  v1 = sub_257ECCEB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4, v5, v6, v7);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v78 = objc_opt_self();
  v81 = ObjCClassFromMetadata;
  v9 = [v78 bundleForClass_];
  v10 = sub_257ECF4C0();
  v11 = sub_257ECF4C0();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  sub_257ECF500();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = *(v2 + 16);
  v79 = v2 + 16;
  v77 = v14;
  v14(&v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v86, v1);
  v15 = *(v2 + 80);
  v16 = (v15 + 24) & ~v15;
  v82 = v3;
  v76 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  v18 = *(v2 + 32);
  v80 = v16;
  v83 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v1;
  v75 = v18;
  v18(v17 + v16, v83, v1);
  sub_257ECC3F0();
  v19 = sub_257ECF4C0();

  v92 = sub_257C69744;
  v93 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v89 = 1107296256;
  v90 = sub_257C63898;
  v91 = &block_descriptor_12;
  v20 = _Block_copy(&aBlock);
  v74 = objc_opt_self();
  v21 = [v74 contextualActionWithStyle:0 title:v19 handler:v20];

  v22 = v85;
  _Block_release(v20);

  v73 = objc_opt_self();
  v23 = [v73 systemBlueColor];
  [v21 setBackgroundColor_];

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_257ED9BF0;
  *(v24 + 32) = v21;
  v25 = sub_257BD2C2C(0, &unk_27F8F6A00, 0x277D753C0);
  v26 = v21;
  v72 = v25;
  v27 = sub_257ECF7F0();

  v28 = objc_opt_self();
  v29 = [v28 configurationWithActions_];

  [v29 setPerformsFirstActionWithFullSwipe_];
  v30 = OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activities;
  v31 = *(*(v22 + OBJC_IVAR____TtC16MagnifierSupport37ActivitiesCustomizationViewController_activities) + 16);
  if (sub_257ECCE60() >= v31)
  {
    goto LABEL_14;
  }

  v32 = sub_257ECCE60();
  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v33 = *(v22 + v30);
    if (v32 < *(v33 + 16))
    {
      v70 = v26;
      v26 = v29;
      v34 = v33 + 16 * v32;
      v13 = *(v34 + 32);
      v16 = *(v34 + 40);
      v35 = qword_281544FE0;

      if (v35 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  swift_once();
LABEL_5:
  v69 = v28;
  v36 = qword_281548348;
  swift_beginAccess();
  v37 = v36[12];
  v38 = v36[13];
  aBlock = v36[11];
  v89 = v37;
  v90 = v38;
  v39 = qword_2815447E0;

  if (v39 != -1)
  {
    v40 = swift_once();
  }

  MEMORY[0x28223BE20](v40, v41, v42, v43, v44);
  *(&v69 - 2) = &aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  v45 = v87;
  if (!*(v87 + 16))
  {

    v29 = v26;
LABEL_13:
    v26 = v70;
    goto LABEL_14;
  }

  v46 = sub_257C03F6C(v13, v16);
  v48 = v47;

  v29 = v26;
  if ((v48 & 1) == 0)
  {

    goto LABEL_13;
  }

  v49 = *(*(v45 + 56) + 296 * v46 + 1);

  v26 = v70;
  if (v49)
  {
    v50 = [v78 bundleForClass_];
    v51 = sub_257ECF4C0();
    v52 = sub_257ECF4C0();
    v53 = v29;
    v54 = [v50 localizedStringForKey:v51 value:0 table:v52];

    sub_257ECF500();
    v55 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v56 = v83;
    v57 = v84;
    v77(v83, v86, v84);
    v58 = v80;
    v59 = swift_allocObject();
    *(v59 + 16) = v55;
    v75(v59 + v58, v56, v57);
    sub_257ECC3F0();
    v60 = sub_257ECF4C0();

    v92 = sub_257C69838;
    v93 = v59;
    aBlock = MEMORY[0x277D85DD0];
    v89 = 1107296256;
    v90 = sub_257C63898;
    v91 = &block_descriptor_12;
    v61 = _Block_copy(&aBlock);
    v62 = [v74 contextualActionWithStyle:1 title:v60 handler:v61];

    _Block_release(v61);

    v63 = [v73 systemRedColor];
    [v62 setBackgroundColor_];

    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_257ED9BE0;
    *(v64 + 32) = v62;
    *(v64 + 40) = v26;
    v65 = v26;
    v66 = v62;
    v67 = sub_257ECF7F0();

    v29 = [v69 configurationWithActions_];

    [v29 setPerformsFirstActionWithFullSwipe_];
  }

LABEL_14:

  return v29;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t objectdestroy_3Tm()
{
  v1 = sub_257ECCEB0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_257C69850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(sub_257ECCEB0() - 8);
  v11 = *(v5 + 16);
  v12 = v5 + ((*(v10 + 80) + 24) & ~*(v10 + 80));

  return a5(a1, a2, a3, a4, v11, v12);
}

void sub_257C69900(uint64_t a1)
{
  v3 = *(sub_257ECCEB0() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_257C63474(a1, v4, v5, v6, v7);
}

uint64_t sub_257C699C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257D132B4(**(v1 + 16), *(*(v1 + 16) + 8), *(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_257C69A6C(char a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();

  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

uint64_t sub_257C69B84(unsigned __int8 a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();

  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

uint64_t sub_257C69DB4(char a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();

  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

uint64_t sub_257C69F7C(unsigned __int8 a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();

  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

uint64_t sub_257C6A188(char a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();

  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

uint64_t sub_257C6A45C()
{
  sub_257ED07B0();
  MEMORY[0x259C732E0](0);
  return sub_257ED0800();
}

uint64_t sub_257C6A4C8(uint64_t a1)
{
  sub_257ED07B0();
  MEMORY[0x259C732E0](0);
  return sub_257ED0800();
}

uint64_t sub_257C6A5DC()
{
  sub_257BE4084(v0 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_url, &qword_27F8F5F30, &qword_257EDA9E0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DetectionRecordedFile(uint64_t a1)
{
  result = qword_2815447A8;
  if (!qword_2815447A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257C6A6B8(uint64_t a1)
{
  sub_257C6A75C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_257C6A75C(uint64_t a1)
{
  if (!qword_281545C48)
  {
    sub_257ECCB70();
    v1 = sub_257ED00C0();
    if (!v2)
    {
      atomic_store(v1, &qword_281545C48);
    }
  }
}

unint64_t sub_257C6A848()
{
  result = qword_27F8F6AC0;
  if (!qword_27F8F6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6AC0);
  }

  return result;
}

unint64_t sub_257C6A89C()
{
  result = qword_27F8F6AC8;
  if (!qword_27F8F6AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6AC8);
  }

  return result;
}

unint64_t sub_257C6A954()
{
  result = qword_27F8F6AF0;
  if (!qword_27F8F6AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6AF0);
  }

  return result;
}

unint64_t sub_257C6A9A8()
{
  result = qword_27F8F6AF8;
  if (!qword_27F8F6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6AF8);
  }

  return result;
}

unint64_t sub_257C6AA60()
{
  result = qword_27F8F6B20;
  if (!qword_27F8F6B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6B20);
  }

  return result;
}

unint64_t sub_257C6AAB4()
{
  result = qword_27F8F6B28;
  if (!qword_27F8F6B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6B28);
  }

  return result;
}

uint64_t sub_257C6AB38(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_257C6AB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_257ECCB70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6B40, &unk_257EDDE40);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v19 - 8, v20, v21, v22, v23);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
  v32 = &v44 - v31;
  v33 = OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_url;
  swift_beginAccess();
  v46 = a1;
  sub_257C1C614(a1 + v33, v32);
  v34 = OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_url;
  swift_beginAccess();
  v35 = *(v12 + 56);
  sub_257C1C614(v32, v18);
  v47 = a2;
  sub_257C1C614(a2 + v34, &v18[v35]);
  v36 = *(v5 + 48);
  if (v36(v18, 1, v4) != 1)
  {
    sub_257C1C614(v18, v25);
    if (v36(&v18[v35], 1, v4) != 1)
    {
      v38 = v45;
      (*(v5 + 32))(v45, &v18[v35], v4);
      sub_257C6AF60();
      v39 = sub_257ECF450();
      v40 = *(v5 + 8);
      v40(v38, v4);
      sub_257BE4084(v32, &qword_27F8F5F30, &qword_257EDA9E0);
      v40(v25, v4);
      sub_257BE4084(v18, &qword_27F8F5F30, &qword_257EDA9E0);
      if (v39)
      {
        goto LABEL_9;
      }

LABEL_7:
      v37 = 0;
      return v37 & 1;
    }

    sub_257BE4084(v32, &qword_27F8F5F30, &qword_257EDA9E0);
    (*(v5 + 8))(v25, v4);
LABEL_6:
    sub_257BE4084(v18, &qword_27F8F6B40, &unk_257EDDE40);
    goto LABEL_7;
  }

  sub_257BE4084(v32, &qword_27F8F5F30, &qword_257EDA9E0);
  if (v36(&v18[v35], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_257BE4084(v18, &qword_27F8F5F30, &qword_257EDA9E0);
LABEL_9:
  v41 = *(v46 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
  v42 = *(v47 + OBJC_IVAR____TtC16MagnifierSupport21DetectionRecordedFile_isLive);
  v37 = v42 == 2 && v41 == 2;
  if (v41 != 2 && v42 != 2)
  {
    v37 = v42 ^ v41 ^ 1;
  }

  return v37 & 1;
}

unint64_t sub_257C6AF60()
{
  result = qword_27F8F6B48;
  if (!qword_27F8F6B48)
  {
    sub_257ECCB70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6B48);
  }

  return result;
}

unint64_t sub_257C6AFB8()
{
  result = qword_27F8F6B50;
  if (!qword_27F8F6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6B50);
  }

  return result;
}

unint64_t sub_257C6B00C()
{
  result = qword_27F8F6B58;
  if (!qword_27F8F6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6B58);
  }

  return result;
}

unint64_t sub_257C6B060()
{
  result = qword_27F8F6B60;
  if (!qword_27F8F6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6B60);
  }

  return result;
}

unint64_t sub_257C6B0B4()
{
  result = qword_27F8F6B68;
  if (!qword_27F8F6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6B68);
  }

  return result;
}

unint64_t sub_257C6B108()
{
  result = qword_281544828;
  if (!qword_281544828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544828);
  }

  return result;
}

unint64_t sub_257C6B15C()
{
  result = qword_2815458F0;
  if (!qword_2815458F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815458F0);
  }

  return result;
}

char *sub_257C6B1E4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AssistiveAccessViewController();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC16MagnifierSupport29AssistiveAccessViewController_cameraVideoPreviewView;
  v5 = *&v3[OBJC_IVAR____TtC16MagnifierSupport29AssistiveAccessViewController_cameraVideoPreviewView];
  v6 = [v5 layer];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    swift_unknownObjectWeakAssign();
    v7 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession);
    v8 = *&v3[v4];
    v9 = v7;
    v10 = [v8 layer];
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      [v11 setSession_];

      return v3;
    }
  }

  else
  {
  }

  result = sub_257ED0410();
  __break(1u);
  return result;
}

void sub_257C6B378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession);
  v4 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport29AssistiveAccessViewController_cameraVideoPreviewView);
  v5 = v3;
  v7 = [v4 layer];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    [v6 setSession_];
  }

  else
  {

    sub_257ED0410();
    __break(1u);
  }
}

uint64_t sub_257C6B4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257C6C35C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_257C6B53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_257C6C35C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_257C6B5A0(uint64_t a1)
{
  sub_257C6C35C();
  sub_257ECE8D0();
  __break(1u);
}

id sub_257C6B6AC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport29AssistiveAccessViewController_cameraVideoPreviewView;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport29AssistiveAccessViewController_cameraVideoPreviewView] setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  [result addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430, &unk_257EDD480);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257EDBE40;
  v5 = [*&v0[v1] widthAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  v7 = [result widthAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  [result frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v43.origin.x = v10;
  v43.origin.y = v12;
  v43.size.width = v14;
  v43.size.height = v16;
  v17 = [v5 constraintEqualToAnchor:v7 constant:CGRectGetWidth(v43) * 0.5];

  *(v4 + 32) = v17;
  v18 = [*&v0[v1] heightAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = result;
  v20 = [result heightAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = result;
  [result frame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v44.origin.x = v23;
  v44.origin.y = v25;
  v44.size.width = v27;
  v44.size.height = v29;
  v30 = [v18 constraintEqualToAnchor:v20 constant:CGRectGetHeight(v44) * 0.5];

  *(v4 + 40) = v30;
  v31 = [*&v0[v1] centerXAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v32 = result;
  v33 = [result centerXAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v4 + 48) = v34;
  v35 = [*&v0[v1] centerYAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v36 = result;
  v37 = objc_opt_self();
  v38 = [v36 centerYAnchor];

  v39 = [v35 constraintEqualToAnchor_];
  *(v4 + 56) = v39;
  sub_257BD2C2C(0, &qword_281543EF0, 0x277CCAAD0);
  v40 = sub_257ECF7F0();

  [v37 activateConstraints_];

  [*&v0[v1] setAccessibilityIgnoresInvertColors_];
  [*&v0[v1] setAccessibilityTraits_];
  v41 = *&v0[v1];

  return [v41 setIsAccessibilityElement_];
}

uint64_t sub_257C6BBA8()
{
  v1 = sub_257ECDA30();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo22UIInterfaceOrientationV16MagnifierSupportE6windowABvgZ_0();
  v10 = v9;
  v11 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport29AssistiveAccessViewController_cameraVideoPreviewView);
  v12 = [v11 layer];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;

    v15 = [v14 connection];
    if (v15)
    {
      [v15 setVideoRotationAngle_];
    }

    sub_257ECD470();
    v16 = sub_257ECDA20();
    v17 = sub_257ECFC00();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v10;
      v26 = v19;
      *v18 = 136315138;
      type metadata accessor for UIInterfaceOrientation(0);
      v20 = sub_257ECF570();
      v22 = sub_257BF1FC8(v20, v21, &v26);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_257BAC000, v16, v17, "Updating AVCaptureVideoPreviewLayer orientation to %s", v18, 0xCu);
      v23 = __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x259C74820](v19, -1, -1, v23);
      MEMORY[0x259C74820](v18, -1, -1);
    }

    return (*(v2 + 8))(v8, v1);
  }

  else
  {

    result = sub_257ED0410();
    __break(1u);
  }

  return result;
}

id sub_257C6BFF0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AssistiveAccessViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_257C6C1F8()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

unint64_t sub_257C6C308()
{
  result = qword_27F8F6B80;
  if (!qword_27F8F6B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6B80);
  }

  return result;
}

unint64_t sub_257C6C35C()
{
  result = qword_27F8F6B88;
  if (!qword_27F8F6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6B88);
  }

  return result;
}

void sub_257C6C3B0(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AsyncController.VisibilityAssertion();
  v3 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  sub_257C6C43C();
  a1[3] = v2;
  *a1 = v3;
}

void sub_257C6C43C()
{
  v1 = v0;
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECF190();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13, v14, v15);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v18 = *(v0 + 40);
  os_unfair_lock_lock(*(v18 + 16));
  v19 = *(v1 + 48);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_10;
  }

  *(v1 + 48) = v21;
  if (v21 != 1)
  {
    if (v21 > 1)
    {
      os_unfair_lock_unlock(*(v18 + 16));
      swift_endAccess();
      return;
    }

LABEL_10:
    sub_257ED0410();
    __break(1u);
    return;
  }

  v25[0] = v3;
  os_unfair_lock_unlock(*(v18 + 16));
  swift_endAccess();
  sub_257BD2C2C(0, &qword_281543DA0, 0x277D82BB8);
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v22 = sub_257ECFD30();
  v23 = sub_257ECFF50();

  if ((v23 & 1) == 0 || ([objc_opt_self() isMainThread] & 1) == 0)
  {
    aBlock[4] = CGSizeMake;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_30;
    v24 = _Block_copy(aBlock);
    sub_257ECC3F0();
    sub_257ECF150();
    v25[1] = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD56C0();
    sub_257ED0180();
    MEMORY[0x259C72880](0, v17, v9, v24);
    _Block_release(v24);
    (*(v25[0] + 8))(v9, v2);
    (*(v11 + 8))(v17, v10);
  }
}

void sub_257C6C7CC()
{
  v1 = sub_257ECF120();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_257ECF190();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v17 = v0[5];
  os_unfair_lock_lock(*(v17 + 16));
  v18 = v0[6];
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
LABEL_10:
    sub_257ED0410();
    __break(1u);
    return;
  }

  v0[6] = v20;
  if (v20)
  {
    if (v20 > 0)
    {
      os_unfair_lock_unlock(*(v17 + 16));
      swift_endAccess();
      return;
    }

    goto LABEL_10;
  }

  v27 = v2;
  os_unfair_lock_unlock(*(v17 + 16));
  swift_endAccess();
  sub_257BD2C2C(0, &qword_281543DA0, 0x277D82BB8);
  v21 = v0;
  v22 = v0[3];
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v23 = sub_257ECFD30();
  v28 = v22;
  v24 = sub_257ECFF50();

  if ((v24 & 1) == 0 || ([objc_opt_self() isMainThread] & 1) == 0)
  {
    aBlock[4] = CGSizeMake;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_13;
    v25 = _Block_copy(aBlock);
    sub_257ECC3F0();
    sub_257ECF150();
    v29 = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD56C0();
    sub_257ED0180();
    MEMORY[0x259C72880](0, v16, v8, v25);
    _Block_release(v25);
    (*(v27 + 8))(v8, v1);
    (*(v10 + 8))(v16, v9);
  }
}

uint64_t AsyncController.deinit()
{

  return v0;
}

uint64_t AsyncController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_257C6CBF4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AsyncController();
  result = sub_257ECDCF0();
  *a1 = result;
  return result;
}

uint64_t sub_257C6CCD8()
{
  MEMORY[0x259C74820](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t sub_257C6CD60()
{
  if (swift_weakLoadStrong())
  {
    sub_257C6C7CC();
  }

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_257C6CDC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_257C6CE08(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

unint64_t sub_257C6CF5C()
{
  result = qword_27F8F6B90;
  if (!qword_27F8F6B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F6B90);
  }

  return result;
}

unint64_t sub_257C6CFAC()
{
  result = qword_27F8F6B98;
  if (!qword_27F8F6B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6B98);
  }

  return result;
}

unint64_t sub_257C6D004()
{
  result = qword_27F8F6BA0;
  if (!qword_27F8F6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6BA0);
  }

  return result;
}

unint64_t sub_257C6D0C4()
{
  result = qword_27F8F6BA8;
  if (!qword_27F8F6BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6BA8);
  }

  return result;
}

uint64_t sub_257C6D118()
{
  v0 = sub_257ECCA30();
  __swift_allocate_value_buffer(v0, qword_27F912F08);
  __swift_project_value_buffer(v0, qword_27F912F08);
  return sub_257ECCA00();
}

uint64_t sub_257C6D17C()
{
  v1 = sub_257ECDA30();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  sub_257ECF900();
  v0[8] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();
  v0[9] = v3;
  v0[10] = v2;

  return MEMORY[0x2822009F8](sub_257C6D26C, v3, v2);
}

uint64_t sub_257C6D26C()
{
  if (qword_27F8F4770 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = xmmword_257EDA120;
  *(v0 + 32) = 7;
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_257C6D350;

  return MAGActionHandler.send(_:)(v0 + 16);
}

uint64_t sub_257C6D350()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  sub_257C6DA74(*(v2 + 16), *(v2 + 24), *(v2 + 32));
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_257C6D4F8;
  }

  else
  {
    v5 = sub_257C6D490;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257C6D490()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257C6D4F8()
{
  v1 = v0[12];

  sub_257ECD3A0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not complete DetectTextIntent: %@", v7, 0xCu);
    sub_257C11B14(v8);
    MEMORY[0x259C74820](v8, -1, -1);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_257C6D674@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F45C8 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECCA30();
  v3 = __swift_project_value_buffer(v2, qword_27F912F08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_257C6D730(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70, &unk_257ED9DB0);
  v1[3] = swift_task_alloc();
  v1[4] = sub_257ECF900();
  v1[5] = sub_257ECF8F0();
  v3 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257C6D804, v3, v2);
}

uint64_t sub_257C6D804()
{
  v1 = *(v0 + 24);

  v2 = sub_257ECF930();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = sub_257ECF8F0();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D85700];
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  sub_257C3FBD4(0, 0, v1, &unk_257EDE200, v4);

  sub_257ECC350();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_257C6D918(uint64_t a1)
{
  v2 = sub_257C6D0C4();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_257C6D964()
{
  result = qword_27F8F6BB0;
  if (!qword_27F8F6BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6BB8, &unk_257EE7BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6BB0);
  }

  return result;
}

uint64_t sub_257C6D9C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_257BE3DE0;

  return sub_257C6D17C();
}

double sub_257C6DA74(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t MAGAdvancedEventHandler.send(_:)(uint64_t a1)
{
  *(v2 + 96) = v1;
  v4 = sub_257ECDA30();
  *(v2 + 104) = v4;
  *(v2 + 112) = *(v4 - 8);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = *a1;
  *(v2 + 81) = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_257C6DB5C, 0, 0);
}

uint64_t sub_257C6DB5C()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 144) = v2;
  v3 = *(v2 + 32);
  *(v0 + 82) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 152) = v6;
    *(v0 + 160) = v8;
    v10 = *(v0 + 81);
    v11 = (v8 << 10) | (16 * __clz(__rbit64(v6)));
    v12 = (*(v7 + 48) + v11);
    *(v0 + 168) = *v12;
    *(v0 + 176) = v12[1];
    v13 = (*(v7 + 56) + v11);
    v14 = *v13;
    *(v0 + 184) = v13[1];
    *(v0 + 64) = *(v0 + 128);
    *(v0 + 80) = v10;

    sub_257ECC3F0();
    v18 = (v14 + *v14);
    v15 = swift_task_alloc();
    *(v0 + 192) = v15;
    *v15 = v0;
    v15[1] = sub_257C6DD80;

    return v18();
  }

  else
  {
    v9 = 0;
    while (((63 - v5) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_257C6DD80()
{
  *(*v1 + 200) = v0;

  if (v0)
  {

    v2 = sub_257C6E09C;
  }

  else
  {

    v2 = sub_257C6DEAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_257C6DEAC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 160);
  v4 = (*(v2 + 152) - 1) & *(v2 + 152);
  if (v4)
  {
    v5 = *(v2 + 144);
LABEL_7:
    *(v2 + 152) = v4;
    *(v2 + 160) = v3;
    v7 = *(v2 + 81);
    v8 = (v3 << 10) | (16 * __clz(__rbit64(v4)));
    v9 = (*(v5 + 48) + v8);
    *(v2 + 168) = *v9;
    *(v2 + 176) = v9[1];
    v10 = (*(v5 + 56) + v8);
    v11 = *v10;
    *(v2 + 184) = v10[1];
    *(v2 + 64) = *(v2 + 128);
    *(v2 + 80) = v7;

    sub_257ECC3F0();
    v14 = (v11 + *v11);
    v12 = swift_task_alloc();
    *(v2 + 192) = v12;
    *v12 = v2;
    v12[1] = sub_257C6DD80;

    v14();
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return;
      }

      v5 = *(v2 + 144);
      if (v6 >= (((1 << *(v2 + 82)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 64);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v13 = *(v2 + 8);

    v13();
  }
}

uint64_t sub_257C6E09C()
{
  v32 = v0;
  v1 = *(v0 + 200);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 81);
  sub_257ECD4F0();

  sub_257BE66F0(v3, v2, v4);
  v5 = v1;
  v6 = sub_257ECDA20();
  v7 = sub_257ECFBE0();

  sub_257C5D470(v3, v2, v4);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v26 = *(v0 + 81);
    v10 = *(v0 + 128);
    v11 = *(v0 + 136);
    v27 = *(v0 + 112);
    v28 = *(v0 + 104);
    v29 = *(v0 + 120);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30[0] = v13;
    *v12 = 136315650;
    v14 = sub_257BF1FC8(v9, v8, v30);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    v30[1] = v10;
    v30[2] = v11;
    v31 = v26;
    v15 = MAGAdvancedEvent.description.getter();
    v17 = sub_257BF1FC8(v15, v16, v30);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2080;
    swift_getErrorValue();
    v18 = sub_257ED0720();
    v20 = sub_257BF1FC8(v18, v19, v30);

    *(v12 + 24) = v20;
    _os_log_impl(&dword_257BAC000, v6, v7, "Handler=%s error handling event=%s. Error=%s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C74820](v13, -1, -1);
    MEMORY[0x259C74820](v12, -1, -1);

    (*(v27 + 8))(v29, v28);
  }

  else
  {
    v22 = *(v0 + 112);
    v21 = *(v0 + 120);
    v23 = *(v0 + 104);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t MAGAdvancedEventHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_257BE96E8(MEMORY[0x277D84F90]);
  return v0;
}

double MAGAdvancedEventHandler.register(_:asActionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  swift_beginAccess();

  sub_257ECC3F0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + 16);
  *(v5 + 16) = 0x8000000000000000;
  sub_257EC7964(&unk_257EDE220, v10, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v5 + 16) = v13;
  swift_endAccess();
  return result;
}

Swift::Void __swiftcall MAGAdvancedEventHandler.unregister(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();

  sub_257C03F6C(countAndFlagsBits, object);
  v6 = v5;

  if (v6)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v2 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_257C08F88();
    }

    sub_257C09E7C();
    *(v2 + 16) = v8;
  }

  swift_endAccess();
}

uint64_t MAGAdvancedEventHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_257C6E5C4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_257BE3DE0;

  return sub_257C0334C(a1, a2, v6);
}

unint64_t sub_257C6E7C0()
{
  result = qword_27F8F6BD0;
  if (!qword_27F8F6BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6BD0);
  }

  return result;
}

uint64_t sub_257C6E814(uint64_t a1, uint64_t a2)
{
  *(v2 + 656) = a2;
  v4 = sub_257ECDA30();
  *(v2 + 664) = v4;
  *(v2 + 672) = *(v4 - 8);
  *(v2 + 680) = swift_task_alloc();
  *(v2 + 688) = swift_task_alloc();
  *(v2 + 696) = swift_task_alloc();
  v5 = sub_257ECCC80();
  *(v2 + 704) = v5;
  *(v2 + 712) = *(v5 - 8);
  *(v2 + 720) = swift_task_alloc();
  *(v2 + 728) = swift_task_alloc();
  v6 = sub_257ECF120();
  *(v2 + 736) = v6;
  *(v2 + 744) = *(v6 - 8);
  *(v2 + 752) = swift_task_alloc();
  v7 = sub_257ECF190();
  *(v2 + 760) = v7;
  *(v2 + 768) = *(v7 - 8);
  *(v2 + 776) = swift_task_alloc();
  *(v2 + 784) = *a1;
  *(v2 + 997) = *(a1 + 16);
  sub_257ECF900();
  *(v2 + 800) = sub_257ECF8F0();
  v9 = sub_257ECF8B0();
  *(v2 + 808) = v9;
  *(v2 + 816) = v8;

  return MEMORY[0x2822009F8](sub_257C6EA58, v9, v8);
}

uint64_t sub_257C6EA58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 824) = Strong;
  if (!Strong)
  {

    goto LABEL_41;
  }

  v2 = Strong;
  v3 = *(v0 + 997);
  if (v3 > 2)
  {
    if (v3 == 3 || v3 == 4)
    {
LABEL_13:

      goto LABEL_40;
    }

    v13 = *(v0 + 784);
    v14 = *(v0 + 792);
    if (v13 <= 1)
    {
      if (v13 | v14)
      {

        v64 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView];
        if (v64)
        {
          v65 = *(v0 + 776);
          v66 = *(v0 + 768);
          v154 = *(v0 + 760);
          v67 = *(v0 + 752);
          v68 = *(v0 + 744);
          v69 = *(v0 + 736);
          *(v0 + 144) = sub_257C72000;
          *(v0 + 152) = 0;
          *(v0 + 112) = MEMORY[0x277D85DD0];
          *(v0 + 120) = 1107296256;
          *(v0 + 128) = sub_257D231C0;
          *(v0 + 136) = &block_descriptor_68;
          v70 = _Block_copy((v0 + 112));
          v148 = v64;
          sub_257ECF150();
          *(v0 + 624) = MEMORY[0x277D84F90];
          sub_257BD5668();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
          sub_257BD56C0();
          sub_257ED0180();
          MEMORY[0x259C72880](0, v65, v67, v70);
          _Block_release(v70);
          (*(v68 + 8))(v67, v69);
          (*(v66 + 8))(v65, v154);
          v71 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v72 = swift_allocObject();
          *(v72 + 16) = v71;
          *(v72 + 24) = v148;
          v73 = v148;
          sub_257ECC3F0();
          sub_257E10374(0, sub_257C73184, v72);

          goto LABEL_41;
        }

        goto LABEL_40;
      }

      v26 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView];
      if (!v26)
      {
        v76 = sub_257DFF3FC();
        v77 = sub_257D83290();

        [v77 setUserInteractionEnabled_];
        goto LABEL_40;
      }

      v27 = *(v0 + 776);
      v145 = *(v0 + 768);
      v151 = *(v0 + 760);
      v28 = *(v0 + 752);
      v140 = *(v0 + 744);
      v29 = *(v0 + 736);
      *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_speechDepthArray] = MEMORY[0x277D84F90];
      v30 = v26;

      v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooDarkToDetect] = 0;
      v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooFastToDetect] = 0;
      sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
      v31 = sub_257ECFD30();
      v32 = swift_allocObject();
      *(v32 + 16) = v2;
      *(v32 + 24) = v30;
      *(v0 + 96) = sub_257C7318C;
      *(v0 + 104) = v32;
      *(v0 + 64) = MEMORY[0x277D85DD0];
      *(v0 + 72) = 1107296256;
      *(v0 + 80) = sub_257D231C0;
      *(v0 + 88) = &block_descriptor_78;
      v33 = _Block_copy((v0 + 64));
      v34 = v30;
      v35 = v2;
      sub_257ECF150();
      *(v0 + 600) = MEMORY[0x277D84F90];
      sub_257BD5668();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
      sub_257BD56C0();
      sub_257ED0180();
      MEMORY[0x259C72880](0, v27, v28, v33);
      _Block_release(v33);

      (*(v140 + 8))(v28, v29);
      (*(v145 + 8))(v27, v151);
    }

    else
    {
      if (!(v13 ^ 2 | v14))
      {
        v54 = *(v0 + 776);
        v147 = *(v0 + 768);
        v153 = *(v0 + 760);
        v55 = *(v0 + 752);
        v56 = *(v0 + 744);
        v57 = *(v0 + 736);

        sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
        v142 = sub_257ECFD30();
        v58 = swift_allocObject();
        swift_unknownObjectWeakInit();
        *(v0 + 192) = sub_257C72F68;
        *(v0 + 200) = v58;
        *(v0 + 160) = MEMORY[0x277D85DD0];
        *(v0 + 168) = 1107296256;
        *(v0 + 176) = sub_257D231C0;
        *(v0 + 184) = &block_descriptor_6_2;
        v59 = _Block_copy((v0 + 160));
        sub_257ECC3F0();
        sub_257ECF150();
        *(v0 + 640) = MEMORY[0x277D84F90];
        sub_257BD5668();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
        sub_257BD56C0();
        sub_257ED0180();
        MEMORY[0x259C72880](0, v54, v55, v59);
        _Block_release(v59);

        (*(v56 + 8))(v55, v57);
        (*(v147 + 8))(v54, v153);

        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (*(v0 + 566) != 1)
        {
          goto LABEL_40;
        }

        v60 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingService];
        sub_257C41F04();
        goto LABEL_95;
      }

      if (v13 ^ 3 | v14)
      {

        v61 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView];
        if (v61)
        {
          v62 = *(v61 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton);
          if (v62)
          {
            v63 = v62;
            [v63 setHidden_];

            goto LABEL_41;
          }
        }

        goto LABEL_40;
      }

      v15 = *(v0 + 776);
      v144 = *(v0 + 768);
      v150 = *(v0 + 760);
      v16 = *(v0 + 752);
      v17 = *(v0 + 744);
      v18 = *(v0 + 736);

      sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
      v139 = sub_257ECFD30();
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *(v0 + 48) = sub_257C72F48;
      *(v0 + 56) = v19;
      *(v0 + 16) = MEMORY[0x277D85DD0];
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_257D231C0;
      *(v0 + 40) = &block_descriptor_14;
      v20 = _Block_copy((v0 + 16));
      sub_257ECC3F0();
      sub_257ECF150();
      *(v0 + 616) = MEMORY[0x277D84F90];
      sub_257BD5668();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
      sub_257BD56C0();
      sub_257ED0180();
      MEMORY[0x259C72880](0, v15, v16, v20);
      _Block_release(v20);

      (*(v17 + 8))(v16, v18);
      (*(v144 + 8))(v15, v150);

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (*(v0 + 993) != 1 || (v21 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView]) == 0)
      {
LABEL_40:

        goto LABEL_41;
      }

      v22 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingService];
      v23 = v21;
      v24 = v22;
      v25 = [v23 scene];
      sub_257C416F0(v25);
    }

LABEL_41:

    v52 = *(v0 + 8);

    return v52();
  }

  if (*(v0 + 997))
  {
    if (v3 == 1)
    {
      v4 = *(v0 + 792);
      v5 = *(v0 + 784);

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (*(v0 + 564) == 1)
      {
        sub_257C1651C(v4);
      }

      goto LABEL_40;
    }

    goto LABEL_13;
  }

  v6 = *(v0 + 792);
  v7 = *(v0 + 784);
  v8 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastARFrame;
  v9 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastARFrame);
  if (v9)
  {
    sub_257BD2C2C(0, &qword_27F8F6BD8, 0x277CE5290);
    v10 = v6;
    sub_257C73068(v7, v6, 0);
    v11 = v9;
    v12 = sub_257ECFF50();

    if (v12)
    {

LABEL_39:
      goto LABEL_40;
    }
  }

  else
  {
    v36 = v6;
    sub_257C73068(v7, v6, 0);
  }

  v37 = *&v2[v8];
  *&v2[v8] = *(v0 + 792);

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v0 + 563) == 1)
  {
    v38 = *(v0 + 776);
    v141 = *(v0 + 768);
    v146 = *(v0 + 760);
    v39 = v7;
    v40 = *(v0 + 752);
    v41 = *(v0 + 744);
    v152 = v6;
    v42 = *(v0 + 736);
    sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
    v138 = sub_257ECFD30();
    v43 = swift_allocObject();
    *(v43 + 16) = v39;
    *(v0 + 240) = sub_257C7317C;
    *(v0 + 248) = v43;
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_257D231C0;
    *(v0 + 232) = &block_descriptor_65;
    v44 = _Block_copy((v0 + 208));
    v45 = v39;
    sub_257ECF150();
    *(v0 + 632) = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD56C0();
    sub_257ED0180();
    MEMORY[0x259C72880](0, v38, v40, v44);
    _Block_release(v44);

    v46 = v40;
    v7 = v39;
    v47 = v42;
    v6 = v152;
    (*(v41 + 8))(v46, v47);
    (*(v141 + 8))(v38, v146);
  }

  v48 = [v7 currentFrame];
  if (v48)
  {
    v49 = v48;
    v50 = [v48 capturedImage];
  }

  else
  {
    v50 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 648) = v50;
  sub_257ECC3F0();
  sub_257ECDD70();
  v51 = qword_281548348;
  *(v0 + 832) = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((*(v0 + 561) & 1) == 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , *(v0 + 327) == 1) || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (*(v0 + 325) & 1) == 0) && (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (*(v0 + 324) & 1) == 0) && (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (*(v0 + 323) & 1) == 0) && (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (*(v0 + 322) & 1) == 0) && (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (*(v0 + 326) & 1) == 0))
  {

    goto LABEL_39;
  }

  *(v0 + 994) = 0;
  *(v0 + 584) = 0;
  *(v0 + 592) = 0;
  *(v0 + 568) = 0;
  *(v0 + 576) = 0;
  v74 = v6;
  if ((sub_257BD7140(v74, (v0 + 994), (v0 + 568), (v0 + 584)) & 1) == 0)
  {

    sub_257ECC3F0();
    sub_257CC0214();

    sub_257DFE168();
    sub_257BD87F0(*(v0 + 568), *(v0 + 576), *(v0 + 584), *(v0 + 592), *(v0 + 994));

    *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_speechDepthArray] = MEMORY[0x277D84F90];

    sub_257C1D94C();

    goto LABEL_41;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v0 + 321))
  {
    goto LABEL_60;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v0 + 995) == 1)
  {
    v78 = v51 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
    swift_beginAccess();
    v79 = *(v78 + 8);
    v80 = *(v78 + 16);
    *(v0 + 544) = *v78;
    *(v0 + 552) = v79;
    *(v0 + 560) = v80;
    v81 = qword_2815447E0;

    if (v81 != -1)
    {
      swift_once();
    }

    *(swift_task_alloc() + 16) = v0 + 544;
    sub_257ECFD50();

    if (*(v0 + 565) == 1)
    {
LABEL_60:
      v75 = v74;
      sub_257DD5308(v75);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v0 + 996) == 1)
  {
    v155 = v74;
    v82 = *(v0 + 720);
    v83 = *(v0 + 712);
    v84 = *(v0 + 704);
    sub_257ECCC70();
    v149 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionService;
    v85 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionService];
    v86 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_lastDoorCheckTime;
    swift_beginAccess();
    v87 = v85 + v86;
    v88 = v83;
    v89 = *(v83 + 16);
    v89(v82, v87, v84);
    sub_257ECCBC0();
    v91 = v90;
    v92 = *(v88 + 8);
    v92(v82, v84);
    if (v91 <= 0.05)
    {
      v92(*(v0 + 728), *(v0 + 704));

      v74 = v155;
    }

    else
    {
      v143 = v92;
      v93 = *(v0 + 720);
      v94 = *(v0 + 712);
      v95 = *(v0 + 704);
      v96 = *&v2[v149];
      v89(v93, *(v0 + 728), v95);
      v97 = OBJC_IVAR____TtC16MagnifierSupport23MAGDoorDetectionService_lastDoorCheckTime;
      swift_beginAccess();
      (*(v94 + 40))(v96 + v97, v93, v95);
      swift_endAccess();
      v98 = [v2 view];
      if (!v98)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v98, v99, v100);
      }

      v101 = v98;
      v102 = *(v0 + 728);
      v103 = *(v0 + 704);

      [v101 bounds];
      v105 = v104;
      v107 = v106;

      v74 = v155;
      v108 = v155;
      sub_257C22580(v108, v105, v107);

      v143(v102, v103);
    }
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v0 + 992) == 1)
  {
    sub_257C15F84(v74);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v0 + 567) != 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v113 = *(v0 + 824);
    if (*(v0 + 562) == 1)
    {
      v114 = *(v0 + 720);
      v115 = *(v0 + 712);
      v116 = *(v0 + 704);
      v117 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService;
      *(v0 + 856) = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService;
      v118 = *&v113[v117];
      v119 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastPointSpeakAnnouncementTime;
      swift_beginAccess();
      v120 = *(v115 + 16);
      *(v0 + 864) = v120;
      *(v0 + 872) = (v115 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v120(v114, v118 + v119, v116);
      sub_257ECCC10();
      v122 = v121;
      v123 = *(v115 + 8);
      *(v0 + 880) = v123;
      *(v0 + 888) = (v115 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v123(v114, v116);
      if (v122 < -5.0)
      {
        v124 = [*(v0 + 792) capturedImage];
        type metadata accessor for MAGCVPixelBufferWrapper();
        inited = swift_initStackObject();
        *(v0 + 896) = inited;
        *(inited + 16) = v124;
        v111 = swift_task_alloc();
        *(v0 + 904) = v111;
        *v111 = v0;
        v112 = sub_257C705AC;
        goto LABEL_77;
      }

      if (qword_27F8F4618 != -1)
      {
        swift_once();
      }

      v125 = *(v0 + 880);
      v126 = *(v0 + 864);
      v127 = *(v0 + 824);
      v128 = *(v0 + 720);
      v129 = *(v0 + 704);
      v130 = byte_27F8F78A0;
      *(v0 + 998) = byte_27F8F78A0;
      v131 = v130 ? 0.01 : 0.25;
      v132 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastHandPoseTime;
      *(v0 + 920) = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastHandPoseTime;
      swift_beginAccess();
      v126(v128, v127 + v132, v129);
      sub_257ECCC10();
      v134 = v133;
      v125(v128, v129);
      v113 = *(v0 + 824);
      if (v131 < -v134)
      {
        v135 = *(*&v113[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService] + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator);
        if (v135)
        {
          v136 = *(v0 + 856);
          [v135 videoRotationAngleForHorizonLevelPreview];
          *(*&v113[v136] + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_videoRotationAngle) = v137;
        }

        v98 = sub_257C70920;
        v99 = 0;
        v100 = 0;

        return MEMORY[0x2822009F8](v98, v99, v100);
      }
    }

    v60 = *(v0 + 792);
    v2 = *(v0 + 784);

LABEL_95:
    goto LABEL_40;
  }

  v109 = [v74 capturedImage];
  type metadata accessor for MAGCVPixelBufferWrapper();
  inited = swift_initStackObject();
  *(v0 + 840) = inited;
  *(inited + 16) = v109;
  v111 = swift_task_alloc();
  *(v0 + 848) = v111;
  *v111 = v0;
  v112 = sub_257C70450;
LABEL_77:
  v111[1] = v112;

  return sub_257C2F68C(inited);
}

uint64_t sub_257C70450()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 840);
  if (v0)
  {

    swift_setDeallocating();
    v5 = *(v3 + 816);
    v6 = *(v3 + 808);
    v7 = sub_257C71178;
  }

  else
  {
    swift_setDeallocating();

    v5 = *(v3 + 816);
    v6 = *(v3 + 808);
    v7 = sub_257C731E0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_257C705AC()
{
  v2 = *v1;
  *(*v1 + 912) = v0;

  if (v0)
  {
    v3 = v2[102];
    v4 = v2[101];
    v5 = sub_257C71588;
  }

  else
  {
    v6 = v2[112];
    swift_setDeallocating();

    v3 = v2[102];
    v4 = v2[101];
    v5 = sub_257C706DC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_257C706DC()
{
  if (qword_27F8F4618 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 880);
  v2 = *(v0 + 864);
  v3 = *(v0 + 824);
  v4 = *(v0 + 720);
  v5 = *(v0 + 704);
  v6 = byte_27F8F78A0;
  *(v0 + 998) = byte_27F8F78A0;
  if (v6)
  {
    v7 = 0.01;
  }

  else
  {
    v7 = 0.25;
  }

  v8 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastHandPoseTime;
  *(v0 + 920) = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastHandPoseTime;
  swift_beginAccess();
  v2(v4, v3 + v8, v5);
  sub_257ECCC10();
  v10 = v9;
  v1(v4, v5);
  if (v7 >= -v10)
  {
    v15 = *(v0 + 824);
    v16 = *(v0 + 792);
    v17 = *(v0 + 784);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v11 = *(v0 + 824);
    v12 = *(*(v11 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService) + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator);
    if (v12)
    {
      v13 = *(v0 + 856);
      [v12 videoRotationAngleForHorizonLevelPreview];
      *(*(v11 + v13) + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_videoRotationAngle) = v14;
    }

    return MEMORY[0x2822009F8](sub_257C70920, 0, 0);
  }
}

uint64_t sub_257C70920()
{
  if (qword_27F8F4620 != -1)
  {
    swift_once();
  }

  if (byte_27F8F78A1 == 1 && *(v0 + 998) != 0)
  {
    *(v0 + 280) = &type metadata for MFFeatureFlags;
    *(v0 + 288) = sub_257C73100();
    *(v0 + 256) = 2;
    sub_257ECCF60();
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  }

  v2 = *(v0 + 816);
  v3 = *(v0 + 808);

  return MEMORY[0x2822009F8](sub_257C709F4, v3, v2);
}

uint64_t sub_257C709F4()
{
  v1 = v0[99];
  v0[116] = *(v0[103] + v0[107]);
  v2 = [v1 capturedImage];

  type metadata accessor for MAGCVPixelBufferWrapper();
  v3 = swift_allocObject();
  v0[117] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](sub_257C70AA4, 0, 0);
}

uint64_t sub_257C70AA4()
{
  v1 = swift_task_alloc();
  *(v0 + 944) = v1;
  *(v1 + 16) = *(v0 + 928);
  v2 = swift_task_alloc();
  *(v0 + 952) = v2;
  *v2 = v0;
  v2[1] = sub_257C70B90;
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0xD000000000000028, 0x8000000257EFA0E0, sub_257C253C4, v1, v3);
}

uint64_t sub_257C70B90()
{

  if (v0)
  {

    v1 = sub_257C70E74;
  }

  else
  {

    v1 = sub_257C70CD8;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_257C70CD8()
{

  v1 = *(v0 + 816);
  v2 = *(v0 + 808);

  return MEMORY[0x2822009F8](sub_257C70D40, v2, v1);
}

uint64_t sub_257C70D40()
{
  v1 = v0[115];
  v2 = v0[103];
  v3 = v0[99];
  v4 = v0[98];
  v5 = v0[90];
  v6 = v0[89];
  v7 = v0[88];

  sub_257ECCC70();

  swift_beginAccess();
  (*(v6 + 40))(&v2[v1], v5, v7);
  swift_endAccess();

  v8 = v0[1];

  return v8();
}

uint64_t sub_257C70E74()
{

  v1 = *(v0 + 816);
  v2 = *(v0 + 808);

  return MEMORY[0x2822009F8](sub_257C731E4, v2, v1);
}

uint64_t sub_257C70EDC()
{
  v1 = swift_task_alloc();
  *(v0 + 976) = v1;
  *(v1 + 16) = *(v0 + 960);
  v2 = swift_task_alloc();
  *(v0 + 984) = v2;
  *v2 = v0;
  v2[1] = sub_257C70FC8;
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0xD000000000000028, 0x8000000257EFA0E0, sub_257C73200, v1, v3);
}

uint64_t sub_257C70FC8()
{

  if (v0)
  {
  }

  return MEMORY[0x2822009F8](sub_257C71110, 0, 0);
}

uint64_t sub_257C71110()
{

  v1 = *(v0 + 816);
  v2 = *(v0 + 808);

  return MEMORY[0x2822009F8](sub_257C731E4, v2, v1);
}

uint64_t sub_257C71178()
{
  v1 = *(v0 + 792);
  sub_257E98020(v1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(v0 + 562) == 1)
  {
    v2 = *(v0 + 824);
    v3 = *(v0 + 720);
    v4 = *(v0 + 712);
    v5 = *(v0 + 704);
    v6 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService;
    *(v0 + 856) = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService;
    v7 = *(v2 + v6);
    v8 = OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_lastPointSpeakAnnouncementTime;
    swift_beginAccess();
    v9 = *(v4 + 16);
    *(v0 + 864) = v9;
    *(v0 + 872) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v3, v7 + v8, v5);
    sub_257ECCC10();
    v11 = v10;
    v12 = *(v4 + 8);
    *(v0 + 880) = v12;
    *(v0 + 888) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v3, v5);
    if (v11 < -5.0)
    {
      v13 = [*(v0 + 792) capturedImage];
      type metadata accessor for MAGCVPixelBufferWrapper();
      inited = swift_initStackObject();
      *(v0 + 896) = inited;
      *(inited + 16) = v13;
      v15 = swift_task_alloc();
      *(v0 + 904) = v15;
      *v15 = v0;
      v15[1] = sub_257C705AC;

      return sub_257C2F68C(inited);
    }

    if (qword_27F8F4618 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 880);
    v22 = *(v0 + 864);
    v23 = *(v0 + 824);
    v24 = *(v0 + 720);
    v25 = *(v0 + 704);
    v26 = byte_27F8F78A0;
    *(v0 + 998) = byte_27F8F78A0;
    if (v26)
    {
      v27 = 0.01;
    }

    else
    {
      v27 = 0.25;
    }

    v28 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastHandPoseTime;
    *(v0 + 920) = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastHandPoseTime;
    swift_beginAccess();
    v22(v24, v23 + v28, v25);
    sub_257ECCC10();
    v30 = v29;
    v21(v24, v25);
    v17 = *(v0 + 824);
    if (v27 < -v30)
    {
      v31 = *(*&v17[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService] + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator);
      if (v31)
      {
        v32 = *(v0 + 856);
        [v31 videoRotationAngleForHorizonLevelPreview];
        *(*&v17[v32] + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_videoRotationAngle) = v33;
      }

      return MEMORY[0x2822009F8](sub_257C70920, 0, 0);
    }
  }

  else
  {
    v17 = *(v0 + 824);
  }

  v18 = *(v0 + 792);
  v19 = *(v0 + 784);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_257C71588()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 896);
  swift_setDeallocating();

  *(v0 + 608) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65B0, &unk_257ED9DF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v19 = *(v0 + 912);

    sub_257ECD3B0();
    v20 = v19;
    v21 = sub_257ECDA20();
    v22 = sub_257ECFBD0();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 912);
    if (v23)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v24;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_257BAC000, v21, v22, "Blur Error %@", v25, 0xCu);
      sub_257C11B14(v26);
      MEMORY[0x259C74820](v26, -1, -1);
      MEMORY[0x259C74820](v25, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 672) + 8))(*(v0 + 680), *(v0 + 664));
    goto LABEL_16;
  }

  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  v6 = *(v0 + 312);
  v7 = *(v0 + 320);
  if (v7 != 4)
  {
    goto LABEL_11;
  }

  v8 = v6 | v5;
  if (v4 == 9 && !v8)
  {
    sub_257ECD3B0();
    v9 = sub_257ECDA20();
    v10 = sub_257ECFBD0();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 912);
    if (v11)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_257BAC000, v9, v10, "No Blur Value Generated", v13, 2u);
      MEMORY[0x259C74820](v13, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 672) + 8))(*(v0 + 696), *(v0 + 664));

LABEL_16:
    v29 = 0;
    goto LABEL_17;
  }

  if (v4 != 10 || v8)
  {
LABEL_11:
    sub_257C73154(v4, v5, v6, v7);
    goto LABEL_12;
  }

  sub_257ECD3B0();
  v14 = sub_257ECDA20();
  v15 = sub_257ECFBD0();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 912);
  if (v16)
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_257BAC000, v14, v15, "Blur Detected", v18, 2u);
    MEMORY[0x259C74820](v18, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 672) + 8))(*(v0 + 688), *(v0 + 664));

  v29 = 1;
LABEL_17:
  if (qword_27F8F4618 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 880);
  v31 = *(v0 + 864);
  v32 = *(v0 + 824);
  v33 = *(v0 + 720);
  v34 = *(v0 + 704);
  v35 = byte_27F8F78A0;
  *(v0 + 998) = byte_27F8F78A0;
  if (v35)
  {
    v36 = 0.01;
  }

  else
  {
    v36 = 0.25;
  }

  v37 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastHandPoseTime;
  *(v0 + 920) = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastHandPoseTime;
  swift_beginAccess();
  v31(v33, v32 + v37, v34);
  sub_257ECCC10();
  v39 = v38;
  v30(v33, v34);
  if (v36 >= -v39)
  {
    v48 = *(v0 + 824);
    v49 = *(v0 + 792);
    v50 = *(v0 + 784);

    v51 = *(v0 + 8);

    return v51();
  }

  else
  {
    v40 = *(v0 + 824);
    v41 = *(*(v40 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService) + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator);
    if (v41)
    {
      v42 = *(v0 + 856);
      [v41 videoRotationAngleForHorizonLevelPreview];
      *(*(v40 + v42) + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_videoRotationAngle) = v43;
    }

    if (v29)
    {
      v44 = *(v0 + 792);
      *(v0 + 960) = *(*(v0 + 824) + *(v0 + 856));
      v45 = [v44 capturedImage];

      type metadata accessor for MAGCVPixelBufferWrapper();
      v46 = swift_allocObject();
      *(v0 + 968) = v46;
      *(v46 + 16) = v45;
      v47 = sub_257C70EDC;
    }

    else
    {
      v47 = sub_257C70920;
    }

    return MEMORY[0x2822009F8](v47, 0, 0);
  }
}

void sub_257C71B5C(void *a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  sub_257ECDD70();
  v5 = sub_257DFF59C();
  v6 = [v5 layer];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    [v7 setAutomaticallyDimsOverCaptureRegion_];

    [v8 setSession_];
    type metadata accessor for RotationRateManager();
    v9 = swift_allocObject();
    *(v9 + 16) = [objc_allocWithZone(MEMORY[0x277CC1CD8]) init];
    *(v9 + 24) = 0;
    *&v4[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_rotationRateManager] = v9;
    sub_257ECC3F0();

    if ((*(v9 + 24) & 1) == 0)
    {
      [*(v9 + 16) startDeviceMotionUpdates];
      *(v9 + 24) = 1;
    }

    v10 = *(*&v4[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService] + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_rotationRateManager);
    if ((*(v10 + 24) & 1) == 0)
    {
      v11 = *(v10 + 16);
      sub_257ECC3F0();
      [v11 startDeviceMotionUpdates];
      *(v10 + 24) = 1;
    }

    v12 = [objc_allocWithZone(ARFrameLuminanceManager) init];
    v13 = *&v4[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_luminanceManager];
    *&v4[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_luminanceManager] = v12;

    [a2 setAlpha_];
    [a2 setHidden_];
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = v4;
    v15 = v4;
    v16 = a2;
    sub_257E10748(0, sub_257C73194, v14, 0.1);
  }

  else
  {

    sub_257ED0410();
    __break(1u);
  }
}

void sub_257C71E20(void *a1, uint64_t a2)
{
  [a1 setAlpha_];
  v3 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  v4 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView);
  *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView) = v3;
  v5 = v3;

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_2815447E0;

  if (v6 != -1)
  {
    v7 = swift_once();
  }

  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  sub_257ECFD50();

  if (v12 > 0.0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
  }

  sub_257D362F0();
}

id sub_257C72000()
{
  v22[1] = *MEMORY[0x277D85DE8];
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedInstance];
  v22[0] = 0;
  v9 = [v8 setActive:0 withOptions:1 error:v22];

  v10 = v22[0];
  if (v9)
  {

    return v10;
  }

  else
  {
    v21 = v22[0];
    v12 = v22[0];
    v13 = sub_257ECC9F0();

    swift_willThrow();
    sub_257ECD3B0();
    v14 = v13;
    v15 = sub_257ECDA20();
    v16 = sub_257ECFBD0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v13;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_257BAC000, v15, v16, "Cannot configure audio session: %@", v17, 0xCu);
      sub_257C11B14(v18);
      MEMORY[0x259C74820](v18, -1, -1);
      MEMORY[0x259C74820](v17, -1, -1);
    }

    else
    {
    }

    return (*(v1 + 8))(v7, v0);
  }
}

double sub_257C72294(uint64_t a1, void *a2)
{
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v14 = HIBYTE(v23);
    swift_getKeyPath();
    swift_getKeyPath();
    HIBYTE(v23) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
    sub_257ECD460();
    v15 = sub_257ECDA20();
    v16 = sub_257ECFBD0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_257BAC000, v15, v16, "Restarting capture session...", v17, 2u);
      MEMORY[0x259C74820](v17, -1, -1);
    }

    (*(v4 + 8))(v10, v3);
    v18 = *&v13[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService];
    v19 = swift_allocObject();
    *(v19 + 16) = v13;
    *(v19 + 24) = a2;
    *(v19 + 32) = v14;
    v20 = v18;
    v21 = v13;
    v22 = a2;
    sub_257DB05D0(sub_257C7319C, v19);
  }

  return result;
}

uint64_t sub_257C72538(char a1, void *a2, void *a3, int a4)
{
  v31 = a4;
  v7 = sub_257ECF120();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9, v10, v11, v12);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_257ECF190();
  v15 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v16, v17, v18, v19);
  v21 = &v30[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_257BD2C2C(0, &qword_281543F10, 0x277D85C78);
  v22 = sub_257ECFD30();
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  if (a1)
  {
    *(v23 + 24) = a3;
    v24 = a3;
    *(v23 + 32) = v31 & 1;
    v37 = sub_257C731B0;
    v38 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_257D231C0;
    v36 = &block_descriptor_114;
    v25 = _Block_copy(&aBlock);
    v26 = a2;
    v27 = v24;
  }

  else
  {
    v37 = sub_257C731A8;
    v38 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_257D231C0;
    v36 = &block_descriptor_108;
    v25 = _Block_copy(&aBlock);
    v28 = a2;
  }

  sub_257ECF150();
  aBlock = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD56C0();
  sub_257ED0180();
  MEMORY[0x259C72880](0, v21, v14, v25);
  _Block_release(v25);

  (*(v8 + 8))(v14, v7);
  return (*(v15 + 8))(v21, v32);
}

void sub_257C72878(uint64_t a1)
{
  v1 = sub_257DFF3FC();
  v2 = sub_257D83290();

  [v2 setUserInteractionEnabled_];
}

double sub_257C728DC(char *a1, void *a2, char a3)
{
  v6 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_rotationRateManager;
  v7 = *&a1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_rotationRateManager];
  if (v7 && *(v7 + 24) == 1)
  {
    v8 = *(v7 + 16);
    sub_257ECC3F0();
    [v8 stopDeviceMotionUpdates];
    *(v7 + 24) = 0;
  }

  v9 = *(*&a1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointAndSpeakService] + OBJC_IVAR____TtC16MagnifierSupport23MAGPointAndSpeakService_rotationRateManager);
  if (*(v9 + 24) == 1)
  {
    v10 = *(v9 + 16);
    sub_257ECC3F0();
    [v10 stopDeviceMotionUpdates];
    *(v9 + 24) = 0;
  }

  *&a1[v6] = 0;

  v11 = *&a1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_luminanceManager];
  *&a1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_luminanceManager] = 0;

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3 & 1;
  v13 = a1;
  v14 = a2;
  sub_257E10748(0, sub_257C731BC, v12, 1.0);

  return result;
}

void sub_257C72A3C(uint64_t a1, void *a2, char a3)
{
  v5 = sub_257DFF59C();
  v6 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView);
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView) = v5;

  [a2 setHidden_];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  v7 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView;
  v8 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  if (v8)
  {
    [v8 removeFromSuperview];
    v9 = *(a1 + v7);
  }

  else
  {
    v9 = 0;
  }

  *(a1 + v7) = 0;

  v10 = sub_257DFF3FC();
  v11 = sub_257D83290();

  [v11 setUserInteractionEnabled_];
}

void sub_257C72B88(void *a1)
{
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 currentFrame];
  if (v15 && (v16 = v15, v17 = [v15 capturedImage], v16, v17))
  {
    v21 = sub_257E9C938(v17);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v23 = v21;
    sub_257ECC3F0();
    v22 = v21;
    sub_257ECDD70();
  }

  else
  {
    sub_257ECD410();
    v18 = sub_257ECDA20();
    v19 = sub_257ECFBD0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = 103;
      _os_log_impl(&dword_257BAC000, v18, v19, "%ld No pixel buffer for current frame available", v20, 0xCu);
      MEMORY[0x259C74820](v20, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
  }
}

void sub_257C72E7C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_257E10374(0, 0, 0);
  }
}

void sub_257C72EDC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_257E10748(1, 0, 0, 0.15);
  }
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void sub_257C72F70(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a2 = v3;
}

uint64_t sub_257C72FF0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_257ECC3F0();
  return sub_257ECDD70();
}

id sub_257C73068(id result, void *a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2 && a3 != 3 && a3 != 4)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }

LABEL_5:
    v3 = result;
  }

  v4 = result;

  return a2;
}

unint64_t sub_257C73100()
{
  result = qword_27F8F8170;
  if (!qword_27F8F8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F8170);
  }

  return result;
}

double sub_257C73154(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4 || a4 == 3 || a4 == 2)
  {
  }

  return result;
}

void sub_257C73204()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F57D0, qword_257EDAB70);
  MEMORY[0x28223BE20](v1 - 8, v2, v3, v4, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = &v44 - v13;
  v57 = sub_257ECCB70();
  v15 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v16, v17, v18, v19);
  v45 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22, v23, v24, v25);
  v56 = &v44 - v26;
  v27 = v0[6];
  v28 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v27);
  v29 = (*(v28 + 32))(v27, v28);
  v53 = *(v29 + 16);
  if (v53)
  {
    v30 = 0;
    v50 = v15 + 16;
    v49 = *MEMORY[0x277CBE838];
    v44 = (v15 + 32);
    v47 = (v15 + 8);
    v46 = MEMORY[0x277D84F90];
    v48 = xmmword_257ED6D30;
    v51 = v29;
    v52 = v15;
    while (1)
    {
      if (v30 >= *(v29 + 16))
      {
        __break(1u);

        __break(1u);
        return;
      }

      v55 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v54 = *(v15 + 72);
      (*(v15 + 16))(v56, v29 + v55 + v54 * v30, v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5788, &unk_257EDE750);
      inited = swift_initStackObject();
      *(inited + 16) = v48;
      v32 = v49;
      *(inited + 32) = v49;
      v33 = v32;
      sub_257BF2B04(inited);
      swift_setDeallocating();
      sub_257BF32AC(inited + 32);
      sub_257ECCAA0();

      v34 = sub_257ECC930();
      v35 = *(v34 - 8);
      (*(v35 + 56))(v14, 0, 1, v34);
      sub_257BE401C(v14, v7, &unk_27F8F57D0, qword_257EDAB70);
      if ((*(v35 + 48))(v7, 1, v34) == 1)
      {
        sub_257BE4084(v14, &unk_27F8F57D0, qword_257EDAB70);
        sub_257BE4084(v7, &unk_27F8F57D0, qword_257EDAB70);
      }

      else
      {
        v36 = sub_257ECC920();
        v38 = v37;
        sub_257BE4084(v14, &unk_27F8F57D0, qword_257EDAB70);
        (*(v35 + 8))(v7, v34);
        if ((v38 & 1) == 0 && vcvtd_n_f64_s64(v36, 0x14uLL) > 0.0)
        {
          v39 = *v44;
          (*v44)(v45, v56, v57);
          v40 = v46;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v58 = v40;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_257BF26C4(0, *(v40 + 16) + 1, 1);
            v40 = v58;
          }

          v43 = *(v40 + 16);
          v42 = *(v40 + 24);
          if (v43 >= v42 >> 1)
          {
            sub_257BF26C4((v42 > 1), v43 + 1, 1);
            v40 = v58;
          }

          *(v40 + 16) = v43 + 1;
          v46 = v40;
          v39((v40 + v55 + v43 * v54), v45, v57);
          v15 = v52;
          goto LABEL_5;
        }
      }

      (*v47)(v56, v57);
      v15 = v52;
LABEL_5:
      ++v30;
      v29 = v51;
      if (v53 == v30)
      {
        goto LABEL_16;
      }
    }
  }

  v46 = MEMORY[0x277D84F90];
LABEL_16:

  v58 = v46;
  sub_257ECC3F0();
  sub_257C74A50(&v58);
}

id sub_257C73738(uint64_t a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v12 - 8, v13, v14, v15, v16);
  v18 = &v38 - v17;
  sub_257BE401C(a1, &v38 - v17, &qword_27F8F5F30, &qword_257EDA9E0);
  v19 = sub_257ECCB70();
  v20 = *(v19 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    v22 = sub_257ECCAE0();
    (*(v20 + 8))(v18, v19);
    v21 = [*(v2 + 64) objectForKey_];
    sub_257ECD360();
    v23 = v21;
    v24 = v22;
    v25 = sub_257ECDA20();
    v26 = sub_257ECFBD0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39 = v5;
      v29 = v28;
      v30 = swift_slowAlloc();
      v38 = v4;
      v31 = v30;
      v41 = v30;
      *v27 = 136315650;
      *(v27 + 4) = sub_257BF1FC8(0x7069726373627573, 0xED0000293A5F2874, &v41);
      *(v27 + 12) = 2080;
      v40 = v21;
      v32 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9BB0, &qword_257EE59E0);
      v33 = sub_257ECF570();
      v35 = sub_257BF1FC8(v33, v34, &v41);

      *(v27 + 14) = v35;
      *(v27 + 22) = 2112;
      *(v27 + 24) = v24;
      *v29 = v24;
      v36 = v24;
      _os_log_impl(&dword_257BAC000, v25, v26, "%s: get %s from %@", v27, 0x20u);
      sub_257BE4084(v29, &unk_27F8F5490, &unk_257EDC470);
      MEMORY[0x259C74820](v29, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x259C74820](v31, -1, -1);
      MEMORY[0x259C74820](v27, -1, -1);

      (*(v39 + 8))(v11, v38);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }
  }

  return v21;
}

void sub_257C73AEC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_257ECDA30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9, v10, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v14 - 8, v15, v16, v17, v18);
  v20 = &v43 - v19;
  sub_257BE401C(a2, &v43 - v19, &qword_27F8F5F30, &qword_257EDA9E0);
  v21 = sub_257ECCB70();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_257BE4084(a2, &qword_27F8F5F30, &qword_257EDA9E0);

    return;
  }

  v23 = sub_257ECCAE0();
  (*(v22 + 8))(v20, v21);
  if (!a1)
  {
    sub_257BE4084(a2, &qword_27F8F5F30, &qword_257EDA9E0);

    return;
  }

  v24 = a1;
  [v24 size];
  v27 = v25 * v26 * 0.25;
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v47 = v27;
  v48 = v7;
  sub_257ECD360();
  v28 = v24;
  v29 = v23;
  v30 = sub_257ECDA20();
  v31 = sub_257ECFBD0();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v46 = v3;
    v33 = v32;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v50 = v45;
    *v33 = 136315906;
    *(v33 + 4) = sub_257BF1FC8(0x7069726373627573, 0xED0000293A5F2874, &v50);
    *(v33 + 12) = 2080;
    v49 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9BB0, &qword_257EE59E0);
    v34 = sub_257ECF570();
    v36 = sub_257BF1FC8(v34, v35, &v50);

    *(v33 + 14) = v36;
    *(v33 + 22) = 2112;
    *(v33 + 24) = v29;
    v37 = v44;
    *v44 = v29;
    *(v33 + 32) = 2048;
    v38 = v47;
    *(v33 + 34) = v47;
    v39 = v29;
    _os_log_impl(&dword_257BAC000, v30, v31, "%s: set %s to %@, cost: %ld", v33, 0x2Au);
    sub_257BE4084(v37, &unk_27F8F5490, &unk_257EDC470);
    MEMORY[0x259C74820](v37, -1, -1);
    v40 = v45;
    swift_arrayDestroy();
    MEMORY[0x259C74820](v40, -1, -1);
    v41 = v33;
    v3 = v46;
    MEMORY[0x259C74820](v41, -1, -1);

    (*(v48 + 8))(v13, v6);
    v42 = v38;
  }

  else
  {

    (*(v48 + 8))(v13, v6);
    v42 = v47;
  }

  [*(v3 + 64) setObject:v28 forKey:v29 cost:v42];

  sub_257BE4084(a2, &qword_27F8F5F30, &qword_257EDA9E0);
}

unsigned __int8 *sub_257C73F84()
{
  v0 = sub_257ECCB70();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCAF0();
  v8 = sub_257ECCAD0();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v7, v0);
  sub_257ECCAF0();
  v12 = sub_257ECCAD0();
  v14 = v13;
  result = (v11)(v7, v0);
  v16 = HIBYTE(v10) & 0xF;
  v17 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v18 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    goto LABEL_64;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {
    v44 = 0;
    sub_257C762CC(v8, v10, 10);
    v20 = v41;
    v38 = v42;
    goto LABEL_63;
  }

  if ((v10 & 0x2000000000000000) != 0)
  {
    v43[0] = v8;
    v43[1] = v10 & 0xFFFFFFFFFFFFFFLL;
    if (v8 == 43)
    {
      if (v16)
      {
        if (--v16)
        {
          v20 = 0;
          v30 = v43 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              break;
            }

            v20 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v16)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_74:
      __break(1u);
      return result;
    }

    if (v8 != 45)
    {
      if (v16)
      {
        v20 = 0;
        v35 = v43;
        while (1)
        {
          v36 = *v35 - 48;
          if (v36 > 9)
          {
            break;
          }

          v37 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            break;
          }

          ++v35;
          if (!--v16)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v16)
    {
      if (--v16)
      {
        v20 = 0;
        v24 = v43 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v16)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_72;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    result = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_257ED0320();
  }

  v19 = *result;
  if (v19 == 43)
  {
    if (v17 < 1)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v16 = v17 - 1;
    if (v17 != 1)
    {
      v20 = 0;
      if (result)
      {
        v27 = result + 1;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            goto LABEL_61;
          }

          v29 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            goto LABEL_61;
          }

          v20 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            goto LABEL_61;
          }

          ++v27;
          if (!--v16)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_53;
    }

LABEL_61:
    v20 = 0;
    LOBYTE(v16) = 1;
    goto LABEL_62;
  }

  if (v19 != 45)
  {
    if (v17)
    {
      v20 = 0;
      if (result)
      {
        while (1)
        {
          v33 = *result - 48;
          if (v33 > 9)
          {
            goto LABEL_61;
          }

          v34 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            goto LABEL_61;
          }

          v20 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            goto LABEL_61;
          }

          ++result;
          if (!--v17)
          {
            goto LABEL_53;
          }
        }
      }

      goto LABEL_53;
    }

    goto LABEL_61;
  }

  if (v17 < 1)
  {
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v16 = v17 - 1;
  if (v17 == 1)
  {
    goto LABEL_61;
  }

  v20 = 0;
  if (result)
  {
    v21 = result + 1;
    while (1)
    {
      v22 = *v21 - 48;
      if (v22 > 9)
      {
        goto LABEL_61;
      }

      v23 = 10 * v20;
      if ((v20 * 10) >> 64 != (10 * v20) >> 63)
      {
        goto LABEL_61;
      }

      v20 = v23 - v22;
      if (__OFSUB__(v23, v22))
      {
        goto LABEL_61;
      }

      ++v21;
      if (!--v16)
      {
        goto LABEL_62;
      }
    }
  }

LABEL_53:
  LOBYTE(v16) = 0;
LABEL_62:
  v44 = v16;
  v38 = v16;
LABEL_63:

  if (v38)
  {
LABEL_64:

    return 0;
  }

  v39 = v20 < sub_257C743A0(v12, v14);
  if (v40)
  {
    return 0;
  }

  else
  {
    return v39;
  }
}

unint64_t sub_257C743A0(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v28 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v28;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v28 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_257ED0320();
        v3 = v27;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_257C762CC(result, a2, 10);
  v6 = v25;
  v24 = v26;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_257C746A0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v4 - 8, v5, v6, v7, v8);
  v10 = &v23 - v9;
  v11 = sub_257ECCB70();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BE401C(a1, v10, &qword_27F8F5F30, &qword_257EDA9E0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_257BE4084(v10, &qword_27F8F5F30, &qword_257EDA9E0);
  }

  else
  {
    sub_257ECCA60();
    v19 = *(v12 + 8);
    v19(v10, v11);
    v20 = sub_257ECCAE0();
    v19(v18, v11);
    v21 = [*(v2 + 64) objectForKey_];

    if (v21)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t sub_257C7487C@<X0>(uint64_t a1@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v6 = 16;
  v7 = 0;
  if (sysctlbyname("kern.boottime", &v7, &v6, 0, 0))
  {
    v2 = 0;
  }

  else
  {
    v2 = v6 == 16;
  }

  if (v2)
  {
    sub_257ECCC20();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_257ECCC80();
  return (*(*(v4 - 8) + 56))(a1, v3, 1, v4);
}

uint64_t sub_257C74984()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_257C749FC()
{
  result = qword_27F8F6BE0;
  if (!qword_27F8F6BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6BE0);
  }

  return result;
}

void sub_257C74A50(void *a1)
{
  v2 = *(sub_257ECCB70() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_257C67010(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_257C74B6C(v5);
  *a1 = v3;
}

void *sub_257C74AF8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F57C8, &qword_257EDAB68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_257C74B6C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_257ED05F0();
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
        sub_257ECCB70();
        v6 = sub_257ECF850();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_257ECCB70() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_257C74F78(v8, v9, a1, v4);
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
    sub_257C74C98(0, v2, 1, a1);
  }
}

void sub_257C74C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v54 = sub_257ECCB70();
  v9 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v10, v11, v12, v13);
  v59 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v21 = &v47 - v20;
  v28 = MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
  v49 = a2;
  if (a3 != a2)
  {
    v62 = &v47 - v27;
    v29 = *a4;
    v31 = *(v9 + 16);
    v30 = v9 + 16;
    v32 = *(v30 + 56);
    v60 = v31;
    v61 = (v30 - 8);
    v33 = (v29 + v32 * (a3 - 1));
    v55 = -v32;
    v56 = (v30 + 16);
    v34 = a1 - a3;
    v57 = v29;
    v58 = v30;
    v48 = v32;
    v35 = v29 + v32 * a3;
    v36 = v4;
    while (2)
    {
      v52 = v33;
      v53 = a3;
      v50 = v35;
      v51 = v34;
      v37 = v54;
      while (1)
      {
        v38 = v62;
        v39 = v60;
        (v60)(v62, v35, v37, v28);
        v39(v21, v33, v37);
        v40 = sub_257C73F84();
        v63 = v36;
        if (v36)
        {
          v46 = *v61;
          (*v61)(v21, v37);
          v46(v38, v37);
          return;
        }

        v41 = v40;
        v42 = *v61;
        (*v61)(v21, v37);
        v42(v38, v37);
        if ((v41 & 1) == 0)
        {
          break;
        }

        if (!v57)
        {
          __break(1u);
          return;
        }

        v43 = *v56;
        v44 = v59;
        (*v56)(v59, v35, v37);
        swift_arrayInitWithTakeFrontToBack();
        v43(v33, v44, v37);
        v33 += v55;
        v35 += v55;
        v45 = __CFADD__(v34++, 1);
        v36 = v63;
        if (v45)
        {
          goto LABEL_11;
        }
      }

      v36 = v63;
LABEL_11:
      a3 = v53 + 1;
      v33 = &v52[v48];
      v34 = v51 - 1;
      v35 = v50 + v48;
      if (v53 + 1 != v49)
      {
        continue;
      }

      break;
    }
  }
}

void sub_257C74F78(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v176 = a1;
  v9 = sub_257ECCB70();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v179 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17, v18, v19, v20);
  v180 = &v165 - v21;
  MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
  v182 = &v165 - v27;
  MEMORY[0x28223BE20](v28, v29, v30, v31, v32);
  v181 = &v165 - v33;
  MEMORY[0x28223BE20](v34, v35, v36, v37, v38);
  MEMORY[0x28223BE20](v39, v40, v41, v42, v43);
  v175 = &v165 - v44;
  MEMORY[0x28223BE20](v45, v46, v47, v48, v49);
  v51 = &v165 - v50;
  v59 = MEMORY[0x28223BE20](v52, v53, v54, v55, v56);
  v60 = a3[1];
  if (v60 < 1)
  {
    v62 = MEMORY[0x277D84F90];
LABEL_104:
    v5 = *v176;
    if (*v176)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_106;
    }

    goto LABEL_146;
  }

  v172 = &v165 - v57;
  v170 = a4;
  v61 = 0;
  v190 = (v10 + 8);
  v191 = v10 + 16;
  v187 = (v10 + 32);
  v62 = MEMORY[0x277D84F90];
  v192 = v9;
  v184 = v58;
  v173 = v51;
  v177 = a3;
  v169 = v10;
  while (1)
  {
    v63 = v61;
    if ((v61 + 1) >= v60)
    {
      v86 = v61 + 1;
    }

    else
    {
      v188 = v60;
      v193 = v6;
      v64 = *a3;
      v65 = *(v10 + 72);
      v5 = *a3 + v65 * (v61 + 1);
      v66 = *(v10 + 16);
      v67 = v172;
      v68 = v61;
      v66(v172, v5, v9, v59);
      v171 = v64;
      v189 = v65;
      v69 = &v64[v65 * v68];
      v70 = v173;
      v185 = v66;
      (v66)(v173, v69, v9);
      v71 = v70;
      v72 = v193;
      LODWORD(v186) = sub_257C73F84();
      v193 = v72;
      if (v72)
      {
        v164 = *v190;
        (*v190)(v70, v9);
        v164(v67, v9);
        goto LABEL_117;
      }

      v73 = *v190;
      (*v190)(v71, v9);
      v183 = v73;
      (v73)(v67, v9);
      v174 = v68;
      v74 = v68 + 2;
      v75 = v189;
      v76 = &v171[v189 * (v68 + 2)];
      v77 = v175;
      while (v188 != v74)
      {
        v78 = v62;
        v79 = v192;
        v80 = v185;
        (v185)(v77, v76, v192);
        v81 = v184;
        v80(v184, v5, v79);
        v82 = v193;
        v83 = sub_257C73F84();
        v193 = v82;
        if (v82)
        {
          v162 = v183;
          (v183)(v81, v79);
          (v162)(v77, v79);
LABEL_117:

          return;
        }

        v84 = v83;
        v85 = v183;
        (v183)(v81, v79);
        (v85)(v77, v79);
        ++v74;
        v75 = v189;
        v76 += v189;
        v5 += v189;
        v62 = v78;
        if ((v186 ^ v84))
        {
          v86 = (v74 - 1);
          goto LABEL_12;
        }
      }

      v86 = v188;
LABEL_12:
      v10 = v169;
      v9 = v192;
      v6 = v193;
      v63 = v174;
      if ((v186 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v86 < v174)
      {
        goto LABEL_140;
      }

      if (v174 < v86)
      {
        v87 = v86;
        v88 = v75 * (v86 - 1);
        v89 = v87 * v75;
        v188 = v87;
        v90 = v174;
        v91 = v174 * v75;
        do
        {
          if (v90 != --v87)
          {
            v193 = v6;
            v93 = *v177;
            if (!*v177)
            {
              goto LABEL_144;
            }

            v5 = v93 + v91;
            v186 = *v187;
            v186(v179, v93 + v91, v192);
            if (v91 < v88 || v5 >= v93 + v89)
            {
              v92 = v192;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v92 = v192;
              if (v91 != v88)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v186((v93 + v88), v179, v92);
            v6 = v193;
            v75 = v189;
          }

          ++v90;
          v88 -= v75;
          v89 -= v75;
          v91 += v75;
        }

        while (v90 < v87);
        a3 = v177;
        v10 = v169;
        v9 = v192;
        v63 = v174;
        v86 = v188;
      }

      else
      {
LABEL_25:
        a3 = v177;
      }
    }

    v94 = a3[1];
    if (v86 >= v94)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v86, v63))
    {
      goto LABEL_136;
    }

    if (v86 - v63 >= v170)
    {
      goto LABEL_37;
    }

    if (__OFADD__(v63, v170))
    {
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v188 = v86;
    if (&v63[v170] >= v94)
    {
      v95 = v94;
    }

    else
    {
      v95 = &v63[v170];
    }

    if (v95 < v63)
    {
      goto LABEL_139;
    }

    if (v188 == v95)
    {
      v86 = v188;
LABEL_37:
      if (v86 < v63)
      {
        goto LABEL_135;
      }

      goto LABEL_38;
    }

    v142 = *a3;
    v143 = *(v10 + 72);
    v189 = *(v10 + 16);
    v144 = v142 + v143 * (v188 - 1);
    v185 = -v143;
    v186 = v142;
    v174 = v63;
    v145 = &v63[-v188];
    v166 = v143;
    v5 = v142 + v188 * v143;
    v147 = v181;
    v146 = v182;
    v183 = v95;
    v178 = v62;
    do
    {
      v167 = v5;
      v168 = v145;
      v171 = v144;
      v148 = v144;
      while (1)
      {
        v149 = v6;
        v150 = v189;
        (v189)(v147, v5, v9, v59);
        v150(v146, v148, v9);
        v151 = sub_257C73F84();
        v152 = v146;
        v193 = v149;
        if (v149)
        {
          v163 = *v190;
          (*v190)(v146, v9);
          v163(v147, v9);
          goto LABEL_117;
        }

        v153 = v151;
        v154 = *v190;
        (*v190)(v152, v9);
        v154(v147, v9);
        if ((v153 & 1) == 0)
        {
          break;
        }

        v62 = v178;
        if (!v186)
        {
          goto LABEL_142;
        }

        v155 = *v187;
        v156 = v180;
        v9 = v192;
        (*v187)(v180, v5, v192);
        swift_arrayInitWithTakeFrontToBack();
        v155(v148, v156, v9);
        v148 += v185;
        v5 += v185;
        v157 = __CFADD__(v145++, 1);
        v6 = v193;
        v147 = v181;
        v146 = v182;
        if (v157)
        {
          goto LABEL_100;
        }
      }

      v9 = v192;
      v6 = v193;
      v147 = v181;
      v146 = v182;
      v62 = v178;
LABEL_100:
      v144 = &v171[v166];
      v145 = v168 - 1;
      v5 = v167 + v166;
      v86 = v183;
      ++v188;
    }

    while (v188 != v183);
    a3 = v177;
    v10 = v169;
    v63 = v174;
    if (v183 < v174)
    {
      goto LABEL_135;
    }

LABEL_38:
    v5 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_257BFCB00(0, *(v62 + 2) + 1, 1, v62);
    }

    v97 = *(v62 + 2);
    v96 = *(v62 + 3);
    v98 = v97 + 1;
    if (v97 >= v96 >> 1)
    {
      v62 = sub_257BFCB00((v96 > 1), v97 + 1, 1, v62);
    }

    *(v62 + 2) = v98;
    v99 = &v62[16 * v97];
    *(v99 + 4) = v63;
    *(v99 + 5) = v86;
    v183 = v86;
    v100 = *v176;
    if (!*v176)
    {
      goto LABEL_145;
    }

    if (v97)
    {
      break;
    }

    v6 = v5;
LABEL_89:
    v60 = a3[1];
    v61 = v183;
    v9 = v192;
    if (v183 >= v60)
    {
      goto LABEL_104;
    }
  }

  v6 = v5;
  while (1)
  {
    v5 = v98 - 1;
    if (v98 >= 4)
    {
      v105 = &v62[16 * v98 + 32];
      v106 = *(v105 - 64);
      v107 = *(v105 - 56);
      v111 = __OFSUB__(v107, v106);
      v108 = v107 - v106;
      if (v111)
      {
        goto LABEL_122;
      }

      v110 = *(v105 - 48);
      v109 = *(v105 - 40);
      v111 = __OFSUB__(v109, v110);
      v103 = v109 - v110;
      v104 = v111;
      if (v111)
      {
        goto LABEL_123;
      }

      v112 = &v62[16 * v98];
      v114 = *v112;
      v113 = *(v112 + 1);
      v111 = __OFSUB__(v113, v114);
      v115 = v113 - v114;
      if (v111)
      {
        goto LABEL_125;
      }

      v111 = __OFADD__(v103, v115);
      v116 = v103 + v115;
      if (v111)
      {
        goto LABEL_128;
      }

      if (v116 >= v108)
      {
        v134 = &v62[16 * v5 + 32];
        v136 = *v134;
        v135 = *(v134 + 1);
        v111 = __OFSUB__(v135, v136);
        v137 = v135 - v136;
        if (v111)
        {
          goto LABEL_134;
        }

        if (v103 < v137)
        {
          v5 = v98 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

    if (v98 == 3)
    {
      v101 = *(v62 + 4);
      v102 = *(v62 + 5);
      v111 = __OFSUB__(v102, v101);
      v103 = v102 - v101;
      v104 = v111;
LABEL_58:
      if (v104)
      {
        goto LABEL_124;
      }

      v117 = &v62[16 * v98];
      v119 = *v117;
      v118 = *(v117 + 1);
      v120 = __OFSUB__(v118, v119);
      v121 = v118 - v119;
      v122 = v120;
      if (v120)
      {
        goto LABEL_127;
      }

      v123 = &v62[16 * v5 + 32];
      v125 = *v123;
      v124 = *(v123 + 1);
      v111 = __OFSUB__(v124, v125);
      v126 = v124 - v125;
      if (v111)
      {
        goto LABEL_130;
      }

      if (__OFADD__(v121, v126))
      {
        goto LABEL_131;
      }

      if (v121 + v126 >= v103)
      {
        if (v103 < v126)
        {
          v5 = v98 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_72;
    }

    v127 = &v62[16 * v98];
    v129 = *v127;
    v128 = *(v127 + 1);
    v111 = __OFSUB__(v128, v129);
    v121 = v128 - v129;
    v122 = v111;
LABEL_72:
    if (v122)
    {
      goto LABEL_126;
    }

    v130 = &v62[16 * v5];
    v132 = *(v130 + 4);
    v131 = *(v130 + 5);
    v111 = __OFSUB__(v131, v132);
    v133 = v131 - v132;
    if (v111)
    {
      goto LABEL_129;
    }

    if (v133 < v121)
    {
      goto LABEL_89;
    }

LABEL_79:
    v138 = v5 - 1;
    if (v5 - 1 >= v98)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_141;
    }

    v139 = *&v62[16 * v138 + 32];
    v140 = *&v62[16 * v5 + 40];
    sub_257C75B04(*a3 + *(v10 + 72) * v139, *a3 + *(v10 + 72) * *&v62[16 * v5 + 32], *a3 + *(v10 + 72) * v140, v100);
    if (v6)
    {
      goto LABEL_117;
    }

    if (v140 < v139)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_257C66E20(v62);
    }

    if (v138 >= *(v62 + 2))
    {
      goto LABEL_121;
    }

    v141 = &v62[16 * v138];
    *(v141 + 4) = v139;
    *(v141 + 5) = v140;
    v194 = v62;
    sub_257C66D94(v5);
    v62 = v194;
    v98 = *(v194 + 2);
    if (v98 <= 1)
    {
      goto LABEL_89;
    }
  }

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
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  v62 = sub_257C66E20(v62);
LABEL_106:
  v194 = v62;
  v158 = *(v62 + 2);
  if (v158 < 2)
  {
    goto LABEL_117;
  }

  while (*a3)
  {
    v159 = *&v62[16 * v158];
    v160 = *&v62[16 * v158 + 24];
    sub_257C75B04(*a3 + *(v10 + 72) * v159, *a3 + *(v10 + 72) * *&v62[16 * v158 + 16], *a3 + *(v10 + 72) * v160, v5);
    if (v6)
    {
      goto LABEL_117;
    }

    if (v160 < v159)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_257C66E20(v62);
    }

    if (v158 - 2 >= *(v62 + 2))
    {
      goto LABEL_133;
    }

    v161 = &v62[16 * v158];
    *v161 = v159;
    *(v161 + 1) = v160;
    v194 = v62;
    sub_257C66D94(v158 - 1);
    v62 = v194;
    v158 = *(v194 + 2);
    if (v158 <= 1)
    {
      goto LABEL_117;
    }
  }

LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

void sub_257C75B04(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v92 = a3;
  v9 = sub_257ECCB70();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v21 = &v77 - v20;
  MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
  MEMORY[0x28223BE20](&v77 - v27, v28, v29, v30, v31);
  v35 = &v77 - v34;
  v88 = *(v36 + 72);
  if (!v88)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v88 == -1)
  {
    goto LABEL_66;
  }

  v37 = v92 - a2;
  if (v92 - a2 == 0x8000000000000000 && v88 == -1)
  {
    goto LABEL_67;
  }

  v38 = (a2 - a1) / v88;
  v95 = a1;
  v94 = a4;
  v90 = v9;
  if (v38 >= v37 / v88)
  {
    v86 = v33;
    v87 = v21;
    v40 = v37 / v88 * v88;
    if (a4 < a2 || a2 + v40 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = a4 + v40;
    if (v40 >= 1)
    {
      v53 = v87;
      v54 = -v88;
      v83 = (v10 + 16);
      v84 = (v10 + 8);
      v55 = v52;
      v89 = a4;
      v80 = a1;
      v81 = -v88;
      do
      {
        v91 = v5;
        v78 = v52;
        v56 = a2;
        v57 = a2 + v54;
        v82 = v57;
        v85 = v56;
        while (1)
        {
          v60 = v92;
          if (v56 <= a1)
          {
            v95 = v56;
            v75 = v78;
LABEL_62:
            v93 = v75;
            goto LABEL_64;
          }

          v79 = v52;
          v88 = v55;
          v61 = v55 + v54;
          v62 = *v83;
          v63 = v90;
          (*v83)(v53, v55 + v54, v90);
          v64 = v57;
          v65 = v54;
          v66 = v86;
          v62(v86, v64, v63);
          v67 = v91;
          v68 = sub_257C73F84();
          v91 = v67;
          if (v67)
          {
            v76 = *v84;
            (*v84)(v66, v63);
            v76(v53, v63);
            v95 = v85;
            v75 = v79;
            goto LABEL_62;
          }

          v69 = v68;
          v92 = v60 + v65;
          v70 = *v84;
          (*v84)(v66, v63);
          v70(v53, v63);
          if (v69)
          {
            break;
          }

          v52 = v61;
          v71 = v80;
          if (v60 < v88 || v92 >= v88)
          {
            swift_arrayInitWithTakeFrontToBack();
            v54 = v81;
            v57 = v82;
            v58 = v89;
          }

          else
          {
            v54 = v81;
            v57 = v82;
            v58 = v89;
            if (v60 != v88)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v55 = v61;
          v59 = v61 > v58;
          v53 = v87;
          a1 = v71;
          v56 = v85;
          if (!v59)
          {
            a2 = v85;
            goto LABEL_63;
          }
        }

        a1 = v80;
        if (v60 < v85 || v92 >= v85)
        {
          a2 = v82;
          swift_arrayInitWithTakeFrontToBack();
          v73 = v89;
          v5 = v91;
          v52 = v79;
          v54 = v81;
        }

        else
        {
          v72 = v60 == v85;
          v54 = v81;
          a2 = v82;
          v73 = v89;
          v5 = v91;
          v52 = v79;
          if (!v72)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v53 = v87;
        v55 = v88;
      }

      while (v88 > v73);
    }

LABEL_63:
    v95 = a2;
    v93 = v52;
  }

  else
  {
    v39 = v38 * v88;
    v87 = v32;
    if (a4 < a1 || a1 + v39 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v86 = a4 + v39;
    v93 = a4 + v39;
    if (v39 >= 1 && a2 < v92)
    {
      v42 = *(v10 + 16);
      v85 = v10 + 16;
      v83 = v42;
      v84 = (v10 + 8);
      while (1)
      {
        v43 = a2;
        v44 = a4;
        v45 = v83;
        (v83)(v35, a2, v9);
        v46 = v35;
        v47 = v87;
        v89 = v44;
        (v45)(v87, v44, v9);
        v48 = sub_257C73F84();
        if (v5)
        {
          break;
        }

        v49 = v48;
        v91 = 0;
        v50 = *v84;
        (*v84)(v47, v9);
        v50(v46, v9);
        v35 = v46;
        if (v49)
        {
          v51 = v88;
          a2 = v43 + v88;
          if (a1 < v43 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v89;
        }

        else
        {
          v51 = v88;
          a4 = v89 + v88;
          a2 = v43;
          if (a1 < v89 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v89)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v94 = a4;
        }

        a1 += v51;
        v95 = a1;
        v5 = v91;
        if (a4 < v86)
        {
          v9 = v90;
          if (a2 < v92)
          {
            continue;
          }
        }

        goto LABEL_64;
      }

      v74 = *v84;
      (*v84)(v47, v9);
      v74(v46, v9);
    }
  }

LABEL_64:
  sub_257C761E4(&v95, &v94, &v93, MEMORY[0x277CC9260]);
}

uint64_t sub_257C761E4(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_257C762CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_257ECF710();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_257C76858(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_257ED0320();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_257C76858(uint64_t a1, unint64_t a2)
{
  v2 = sub_257ECF720();
  v6 = sub_257C768D8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_257C768D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_257ED00D0();
    if (!v9 || (v10 = v9, v11 = sub_257C74AF8(v9, 0), v12 = sub_257C76A30(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_257ECF5C0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_257ECF5C0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_257ED0320();
LABEL_4:

  return sub_257ECF5C0();
}

unint64_t sub_257C76A30(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_257C76C50(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_257ECF6B0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_257ED0320();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_257C76C50(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_257ECF680();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_257C76C50(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_257ECF6D0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x259C721B0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

_BYTE *sub_257C76CCC(char *a1)
{
  v2 = sub_257ECDA30();
  v145 = *(v2 - 8);
  v146 = v2;
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v138 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v140 = &v132 - v13;
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v143 = &v132 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v20 - 8, v21, v22, v23, v24);
  v142 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
  v144 = &v132 - v31;
  MEMORY[0x28223BE20](v32, v33, v34, v35, v36);
  v38 = &v132 - v37;
  v39 = sub_257ECCB70();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v41, v42, v43, v44);
  v141 = &v132 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v47, v48, v49, v50);
  v139 = &v132 - v51;
  MEMORY[0x28223BE20](v52, v53, v54, v55, v56);
  v58 = &v132 - v57;
  MEMORY[0x28223BE20](v59, v60, v61, v62, v63);
  v65 = &v132 - v64;
  v147 = a1;
  sub_257ECCA60();
  v66 = *(v40 + 16);
  v66(v38, v65, v39);
  v67 = (v40 + 56);
  v68 = *(v40 + 56);
  (v68)(v38, 0, 1, v39);
  v69 = sub_257C73738(v38);
  sub_257BE4084(v38, &qword_27F8F5F30, &qword_257EDA9E0);
  if (v69)
  {
    (*(v40 + 8))(v65, v39);
    return v69;
  }

  v134 = v58;
  v135 = v40;
  v136 = v66;
  v137 = v65;
  v71 = v143;
  v72 = v144;
  sub_257ECCA60();
  (v68)(v72, 0, 1, v39);
  v73 = sub_257C73738(v72);
  sub_257BE4084(v72, &qword_27F8F5F30, &qword_257EDA9E0);
  if (!v73)
  {
    v143 = v67;
    v144 = v68;
    v88 = v140;
    sub_257ECD360();
    v89 = v139;
    v136(v139, v137, v39);
    v90 = sub_257ECDA20();
    v91 = sub_257ECFBD0();
    v92 = os_log_type_enabled(v90, v91);
    v133 = v39;
    if (v92)
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v149 = v94;
      *v93 = 136315138;
      sub_257C775BC();
      v95 = sub_257ED0600();
      v96 = v39;
      v98 = v97;
      v99 = *(v135 + 8);
      v99(v89, v96);
      v100 = sub_257BF1FC8(v95, v98, &v149);

      *(v93 + 4) = v100;
      _os_log_impl(&dword_257BAC000, v90, v91, "CACHE MISS (%s)", v93, 0xCu);
      v101 = __swift_destroy_boxed_opaque_existential_0(v94);
      v102 = v94;
      v103 = v99;
      MEMORY[0x259C74820](v102, -1, -1, v101);
      MEMORY[0x259C74820](v93, -1, -1);
    }

    else
    {

      v103 = *(v135 + 8);
      v103(v89, v39);
    }

    v105 = v146;
    v106 = *(v145 + 1);
    v106(v88, v146);
    v108 = v141;
    v107 = v142;
    v109 = v136;
    if (v148[16])
    {
      v145 = v106;
      v110 = v147;
      v111 = sub_257E86E70(v147);
      if (!v111)
      {
        v141 = v103;
        v112 = v138;
        sub_257ECD360();
        v113 = v133;
        v109(v108, v110, v133);
        v114 = sub_257ECDA20();
        v115 = v108;
        v116 = sub_257ECFBD0();
        if (os_log_type_enabled(v114, v116))
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v149 = v118;
          *v117 = 136315138;
          v119 = sub_257ECCB50();
          v121 = v120;
          v122 = v113;
          v123 = v141;
          (v141)(v115, v122);
          v124 = sub_257BF1FC8(v119, v121, &v149);
          v103 = v123;

          *(v117 + 4) = v124;
          _os_log_impl(&dword_257BAC000, v114, v116, "Read nil thumbnail from: %s", v117, 0xCu);
          v125 = __swift_destroy_boxed_opaque_existential_0(v118);
          MEMORY[0x259C74820](v118, -1, -1, v125);
          MEMORY[0x259C74820](v117, -1, -1);

          v126 = v138;
          v127 = v146;
        }

        else
        {

          v131 = v141;
          (v141)(v115, v113);
          v126 = v112;
          v103 = v131;
          v127 = v105;
        }

        v145(v126, v127);
        v128 = 0;
        v107 = v142;
        goto LABEL_18;
      }
    }

    else
    {
      v111 = sub_257E867E0(v147);
    }

    v128 = v111;
    v129 = v111;
LABEL_18:
    sub_257ECCA60();
    v130 = v133;
    (v144)(v107, 0, 1, v133);
    sub_257C73AEC(v128, v107);
    v103(v137, v130);
    return v128;
  }

  v148 = v73;
  v74 = v71;
  sub_257ECD360();
  v75 = v134;
  v76 = v137;
  v136(v134, v137, v39);
  v77 = sub_257ECDA20();
  v78 = sub_257ECFBD0();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = v75;
    v147 = swift_slowAlloc();
    v149 = v147;
    *v79 = 136315138;
    sub_257C775BC();
    v81 = sub_257ED0600();
    v83 = v82;
    v84 = *(v135 + 8);
    v84(v80, v39);
    v85 = sub_257BF1FC8(v81, v83, &v149);

    *(v79 + 4) = v85;
    _os_log_impl(&dword_257BAC000, v77, v78, "CACHE HIT (%s)", v79, 0xCu);
    v86 = v147;
    v87 = __swift_destroy_boxed_opaque_existential_0(v147);
    MEMORY[0x259C74820](v86, -1, -1, v87);
    MEMORY[0x259C74820](v79, -1, -1);

    (*(v145 + 1))(v74, v146);
    v84(v137, v39);
  }

  else
  {

    v104 = *(v135 + 8);
    v104(v75, v39);
    (*(v145 + 1))(v74, v146);
    v104(v76, v39);
  }

  return v148;
}

unint64_t sub_257C775BC()
{
  result = qword_27F8FAC90;
  if (!qword_27F8FAC90)
  {
    sub_257ECCB70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FAC90);
  }

  return result;
}

double sub_257C77614()
{
  v0 = sub_257ECCB70();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = v40 - v13;
  v15 = sub_257ECDA30();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17, v18, v19, v20);
  v22 = v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD360();
  v23 = sub_257ECDA20();
  v24 = sub_257ECFBD0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_257BAC000, v23, v24, "Permanently deleting assets and emptying caches...", v25, 2u);
    MEMORY[0x259C74820](v25, -1, -1);
  }

  (*(v16 + 8))(v22, v15);
  if (qword_27F8F46D8 != -1)
  {
    swift_once();
  }

  [*(qword_27F9132E8 + 64) removeAllObjects];
  if (qword_27F8F46E0 != -1)
  {
    swift_once();
  }

  v26 = qword_27F9132F0;
  [*(qword_27F9132F0 + 64) removeAllObjects];
  sub_257C73204();
  v28 = *(v27 + 16);
  if (v28)
  {
    v40[0] = v26;
    v40[1] = v27;
    v29 = *(v1 + 16);
    v30 = v27 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v31 = *(v1 + 72);
    do
    {
      v29(v14, v30, v0);
      sub_257E875E8(v14);
      (*(v1 + 8))(v14, v0);
      v30 += v31;
      --v28;
    }

    while (v28);
  }

  sub_257C73204();
  v33 = *(v32 + 16);
  if (v33)
  {
    v36 = *(v1 + 16);
    v35 = v1 + 16;
    v34 = v36;
    v37 = v32 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v38 = *(v35 + 56);
    do
    {
      v34(v7, v37, v0);
      sub_257E875E8(v7);
      (*(v35 - 8))(v7, v0);
      v37 += v38;
      --v33;
    }

    while (v33);
  }

  return result;
}

void sub_257C77984()
{
  v0 = sub_257ECCB70();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v113 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v124 = &v112 - v12;
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  v122 = &v112 - v18;
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v129 = &v112 - v24;
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v123 = (&v112 - v30);
  MEMORY[0x28223BE20](v31, v32, v33, v34, v35);
  v121 = &v112 - v36;
  MEMORY[0x28223BE20](v37, v38, v39, v40, v41);
  v43 = &v112 - v42;
  sub_257ECCC30();
  v45 = round(v44 * 1000.0);
  if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_113;
  }

  if (v45 <= -9.22337204e18)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  if (v45 >= 9.22337204e18)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (qword_27F8F46D8 != -1)
  {
LABEL_116:
    swift_once();
  }

  v128 = v45;
  v117 = qword_27F9132E8;
  sub_257C73204();
  v120 = *(v46 + 16);
  if (v120)
  {
    v47 = 0;
    v116 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v119 = v46 + v116;
    v126 = (v1 + 16);
    v127 = (v1 + 8);
    v114 = v130 + 1;
    v115 = (v1 + 32);
    v48 = MEMORY[0x277D84F90];
    v118 = v46;
    while (1)
    {
      if (v47 >= *(v46 + 16))
      {
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
        goto LABEL_114;
      }

      v125 = *(v1 + 72);
      v49 = *(v1 + 16);
      v49(v43, v119 + v125 * v47, v0);
      v50 = v121;
      sub_257ECCAF0();
      v51 = sub_257ECCAD0();
      v53 = v52;
      v54 = *(v1 + 8);
      v54(v50, v0);
      v55 = HIBYTE(v53) & 0xF;
      v56 = v51 & 0xFFFFFFFFFFFFLL;
      if ((v53 & 0x2000000000000000) != 0)
      {
        v57 = HIBYTE(v53) & 0xF;
      }

      else
      {
        v57 = v51 & 0xFFFFFFFFFFFFLL;
      }

      if (!v57)
      {

LABEL_73:
        if (v128 >= 1)
        {
          goto LABEL_76;
        }

        goto LABEL_7;
      }

      if ((v53 & 0x1000000000000000) == 0)
      {
        break;
      }

      v131 = 0;
      sub_257C762CC(v51, v53, 10);
      v60 = v83;
      v78 = v84;
LABEL_72:

      if (v78)
      {
        goto LABEL_73;
      }

      if (v60 < v128)
      {
LABEL_76:
        v79 = *(v117 + 64);
        v80 = sub_257ECCAE0();
        [v79 removeObjectForKey_];

        v49(v123, v43, v0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_257BFDA50(0, *(v48 + 2) + 1, 1, v48);
        }

        v82 = *(v48 + 2);
        v81 = *(v48 + 3);
        if (v82 >= v81 >> 1)
        {
          v48 = sub_257BFDA50((v81 > 1), v82 + 1, 1, v48);
        }

        v54(v43, v0);
        *(v48 + 2) = v82 + 1;
        (*v115)(&v48[v116 + v82 * v125], v123, v0);
        goto LABEL_8;
      }

LABEL_7:
      v54(v43, v0);
LABEL_8:
      v46 = v118;
      if (++v47 == v120)
      {

        goto LABEL_86;
      }
    }

    if ((v53 & 0x2000000000000000) != 0)
    {
      v130[0] = v51;
      v130[1] = v53 & 0xFFFFFFFFFFFFFFLL;
      if (v51 == 43)
      {
        if (!v55)
        {
          goto LABEL_109;
        }

        if (--v55)
        {
          v60 = 0;
          v70 = v114;
          while (1)
          {
            v71 = *v70 - 48;
            if (v71 > 9)
            {
              break;
            }

            v72 = 10 * v60;
            if ((v60 * 10) >> 64 != (10 * v60) >> 63)
            {
              break;
            }

            v60 = v72 + v71;
            if (__OFADD__(v72, v71))
            {
              break;
            }

            ++v70;
            if (!--v55)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else if (v51 == 45)
      {
        if (!v55)
        {
          goto LABEL_111;
        }

        if (--v55)
        {
          v60 = 0;
          v64 = v114;
          while (1)
          {
            v65 = *v64 - 48;
            if (v65 > 9)
            {
              break;
            }

            v66 = 10 * v60;
            if ((v60 * 10) >> 64 != (10 * v60) >> 63)
            {
              break;
            }

            v60 = v66 - v65;
            if (__OFSUB__(v66, v65))
            {
              break;
            }

            ++v64;
            if (!--v55)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else if (v55)
      {
        v60 = 0;
        v75 = v130;
        while (1)
        {
          v76 = *v75 - 48;
          if (v76 > 9)
          {
            break;
          }

          v77 = 10 * v60;
          if ((v60 * 10) >> 64 != (10 * v60) >> 63)
          {
            break;
          }

          v60 = v77 + v76;
          if (__OFADD__(v77, v76))
          {
            break;
          }

          ++v75;
          if (!--v55)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    if ((v51 & 0x1000000000000000) != 0)
    {
      v58 = ((v53 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v58 = sub_257ED0320();
    }

    v59 = *v58;
    if (v59 == 43)
    {
      if (v56 < 1)
      {
        goto LABEL_112;
      }

      v55 = v56 - 1;
      if (v56 == 1)
      {
        goto LABEL_70;
      }

      v60 = 0;
      if (v58)
      {
        v67 = v58 + 1;
        while (1)
        {
          v68 = *v67 - 48;
          if (v68 > 9)
          {
            goto LABEL_70;
          }

          v69 = 10 * v60;
          if ((v60 * 10) >> 64 != (10 * v60) >> 63)
          {
            goto LABEL_70;
          }

          v60 = v69 + v68;
          if (__OFADD__(v69, v68))
          {
            goto LABEL_70;
          }

          ++v67;
          if (!--v55)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else if (v59 == 45)
    {
      if (v56 < 1)
      {
        goto LABEL_110;
      }

      v55 = v56 - 1;
      if (v56 == 1)
      {
        goto LABEL_70;
      }

      v60 = 0;
      if (v58)
      {
        v61 = v58 + 1;
        while (1)
        {
          v62 = *v61 - 48;
          if (v62 > 9)
          {
            goto LABEL_70;
          }

          v63 = 10 * v60;
          if ((v60 * 10) >> 64 != (10 * v60) >> 63)
          {
            goto LABEL_70;
          }

          v60 = v63 - v62;
          if (__OFSUB__(v63, v62))
          {
            goto LABEL_70;
          }

          ++v61;
          if (!--v55)
          {
            goto LABEL_71;
          }
        }
      }
    }

    else
    {
      if (!v56)
      {
LABEL_70:
        v60 = 0;
        LOBYTE(v55) = 1;
        goto LABEL_71;
      }

      v60 = 0;
      if (v58)
      {
        do
        {
          v73 = *v58 - 48;
          if (v73 > 9)
          {
            goto LABEL_70;
          }

          v74 = 10 * v60;
          if ((v60 * 10) >> 64 != (10 * v60) >> 63)
          {
            goto LABEL_70;
          }

          v60 = v74 + v73;
          if (__OFADD__(v74, v73))
          {
            goto LABEL_70;
          }

          ++v58;
        }

        while (--v56);
      }
    }

    LOBYTE(v55) = 0;
LABEL_71:
    v131 = v55;
    v78 = v55;
    goto LABEL_72;
  }

  v48 = MEMORY[0x277D84F90];
LABEL_86:
  v85 = v113;
  if (qword_27F8F46E0 != -1)
  {
    swift_once();
  }

  v123 = qword_27F9132F0;
  sub_257C73204();
  v87 = *(v86 + 16);
  if (!v87)
  {

    v106 = *(v48 + 2);
    if (v106)
    {
      goto LABEL_103;
    }

    goto LABEL_107;
  }

  v118 = v1;
  v119 = v86;
  v89 = *(v1 + 16);
  v88 = v1 + 16;
  v126 = v89;
  v127 = v48;
  v121 = ((*(v88 + 64) + 32) & ~*(v88 + 64));
  v90 = &v121[v86];
  v91 = *(v88 + 56);
  v92 = (v88 - 8);
  v125 = v88;
  v120 = (v88 + 16);
  v89(v129, &v121[v86], v0);
  while (1)
  {
    v93 = v122;
    sub_257ECCAF0();
    v94 = sub_257ECCAD0();
    v96 = v95;
    v97 = *v92;
    (*v92)(v93, v0);
    v98 = sub_257C743A0(v94, v96);
    if (v99)
    {
      if (v128 <= 0)
      {
        goto LABEL_90;
      }
    }

    else if (v98 >= v128)
    {
LABEL_90:
      v97(v129, v0);
      goto LABEL_91;
    }

    v100 = v123[8];
    v101 = v129;
    v102 = sub_257ECCAE0();
    [v100 removeObjectForKey_];

    v126(v124, v101, v0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v127 = sub_257BFDA50(0, v127[2] + 1, 1, v127);
    }

    v104 = v127[2];
    v103 = v127[3];
    if (v104 >= v103 >> 1)
    {
      v127 = sub_257BFDA50((v103 > 1), v104 + 1, 1, v127);
    }

    v97(v129, v0);
    v105 = v127;
    v127[2] = v104 + 1;
    (*v120)(&v121[v105 + v104 * v91], v124, v0);
LABEL_91:
    v90 += v91;
    if (!--v87)
    {
      break;
    }

    v126(v129, v90, v0);
  }

  v1 = v118;
  v85 = v113;
  v48 = v127;
  v106 = v127[2];
  if (v106)
  {
LABEL_103:
    v109 = *(v1 + 16);
    v108 = v1 + 16;
    v107 = v109;
    v110 = &v48[(*(v108 + 64) + 32) & ~*(v108 + 64)];
    v111 = *(v108 + 56);
    do
    {
      v107(v85, v110, v0);
      sub_257E875E8(v85);
      (*(v108 - 8))(v85, v0);
      v110 += v111;
      --v106;
    }

    while (v106);
  }

LABEL_107:
}