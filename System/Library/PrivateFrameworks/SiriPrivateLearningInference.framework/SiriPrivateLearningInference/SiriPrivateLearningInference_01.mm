char *sub_222B4D0C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025000, &qword_222C96DB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222B4D1FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
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

char *sub_222B4D308(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C78, &qword_222C96A50);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222B4D414(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DB8, &qword_222C96B98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_222B4D518(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 32 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

char *sub_222B4D610(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D28, &unk_222C96B00);
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

char *sub_222B4D72C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_222B4D828(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F78, &unk_222C96D30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F80, &qword_222C9A0D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_222B4D970(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
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

void *sub_222B4DAB8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CF8, &qword_222C96AD0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D00, &qword_222C96AD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_222B4DBFC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CE8, &qword_222C96AC0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CF0, &qword_222C96AC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_222B4DD44(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F60, &qword_222C96D18);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F68, &qword_222C96D20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222B4DE78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F40, &qword_222C96CF0);
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

char *sub_222B4DF84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F38, &qword_222C96CE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_222B4E0A4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024EF8, &qword_222C96CA8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F00, &qword_222C96CB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222B4E1EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CA0, &qword_222C96A78);
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

void *sub_222B4E2F8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *sub_222B4E42C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024EA8, &qword_222C96C58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222B4E54C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024EA0, &qword_222C96C50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222B4E66C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C18, &qword_222C969F0);
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

char *sub_222B4E77C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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
    *(v13 + 3) = 2 * ((v14 - 32) / 56);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[56 * v11])
    {
      memmove(v15, v16, 56 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_222B4E8A0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
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

void *sub_222B4E9D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_222B4EBB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DF8, &qword_222C96BC8);
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
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_222B4ECB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DA0, &qword_222C96B80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_222B4EDD4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

void *sub_222B4EFBC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C00, &qword_222C9A400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C08, &qword_222C969E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_222B4F0F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_222C94C6C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_222C94C6C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_222B504F0(&qword_27D024FB8, &qword_27D024FB0, &qword_222C96D68);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024FB0, &qword_222C96D68);
            v9 = sub_222B7E140(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_222C9378C();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_222B4F280(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_222C94C6C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_222C94C6C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_222B504F0(&qword_27D024E70, &qword_27D024E68, &qword_222C96C28);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E68, &qword_222C96C28);
            v9 = sub_222B7E2D0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_222C941FC();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_222B4F410(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_222C94C6C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_222C94C6C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_222B504F0(&qword_27D024E88, &qword_27D024E80, &unk_222C96C30);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E80, &unk_222C96C30);
            v9 = sub_222B7E248(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_222B505A8(0, &qword_27D024E78, 0x277D5A790);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_222B4F5B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_222C94C6C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_222C94C6C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_222B504F0(&qword_27D024DD0, &qword_27D024DC8, &qword_222C96BA0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024DC8, &qword_222C96BA0);
            v9 = sub_222B7E1C8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_222B505A8(0, &qword_27D024DC0, 0x277D59CC8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_222B4F750(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_222C94C6C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_222C94C6C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_222B504F0(&qword_27D024E10, &qword_27D024E08, &qword_222C96BD0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E08, &qword_222C96BD0);
            v9 = sub_222B7E1C8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_222B505A8(0, &qword_27D024E00, 0x277D59DF0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_222B4F8F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_222B405A0(&v12, v10 + 40 * a1 + 32);
}

void sub_222B4F988(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 mediaItems];
  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = v4;
  sub_222B505A8(0, &qword_27D025018, 0x277CD3DB8);
  v6 = sub_222C9471C();

  v7 = v6 >> 62;
  if (!(v6 >> 62))
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

  v8 = sub_222C94C6C();
  if (!v8)
  {
LABEL_28:

LABEL_29:
    v10 = [a1 mediaContainer];
    goto LABEL_30;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x223DC9B30](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v9 = *(v6 + 32);
  }

  v10 = v9;
  if (v7)
  {
    if (sub_222C94C6C() < 2)
    {
      goto LABEL_9;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
LABEL_9:

LABEL_30:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
LABEL_31:
    *a2 = v10;
    a2[1] = v14;
    a2[2] = v15;
    a2[3] = v16;
    a2[4] = v17;
    return;
  }

  if (v8 < 1)
  {
    goto LABEL_34;
  }

  if (!v7)
  {
    v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  if (sub_222C94C6C() >= 1)
  {
    v11 = sub_222C94C6C();
LABEL_17:
    if (v11 >= v8)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {

        if (v8 != 1)
        {
          v12 = 1;
          do
          {
            v13 = v12 + 1;
            sub_222C94D6C();
            v12 = v13;
          }

          while (v8 != v13);
        }
      }

      else
      {
      }

      if (v7)
      {
        v14 = sub_222C94F5C();
        v15 = v18;
        v16 = v19;
        v17 = v20;
      }

      else
      {
        v14 = v6 & 0xFFFFFFFFFFFFFF8;
        v15 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
        v16 = 1;
        v17 = (2 * v8) | 1;
      }

      goto LABEL_31;
    }

    goto LABEL_35;
  }

LABEL_36:
  __break(1u);
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

uint64_t sub_222B4FC6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_222B4FCD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_222B4FD34(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_222B4FDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

void sub_222B4FE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    sub_222B4FE78(a3, a4, a5, a6);
  }
}

void sub_222B4FE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

uint64_t dispatch thunk of INPlayMediaIntentFeatureExtractor.extract(from:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222B505F0;

  return v6(a1);
}

uint64_t dispatch thunk of INPlayMediaIntentFeatureExtractor.extractMediaItemFeatures(from:intent:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_222B5016C;

  return v8(a1, a2);
}

uint64_t sub_222B5016C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of INPlayMediaIntentFeatureExtractor.buildMediaItem(_:intent:isPrimaryItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 160) + **(*v4 + 160));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_222B503AC;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_222B503AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
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

uint64_t sub_222B504F0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_222B505A8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t OneShotSuccessfulGroundTruthGenerator.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  OneShotSuccessfulGroundTruthGenerator.init(_:)(a1, v3, v4, v5);
  return v2;
}

char *OneShotSuccessfulGroundTruthGenerator.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for OneShotSuccessfulGroundTruthGenerator(0, v6, *(*v4 + 88), a4);
  *(v4 + 2) = static InferenceLogUtils.loggerTag<A>(_:)(v7, v7);
  *(v4 + 3) = v8;
  (*(*(v6 - 8) + 32))(&v4[*(*v4 + 104)], a1, v6);
  return v4;
}

uint64_t sub_222B50798(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_222C94B5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  sub_222B509E8(a1, a2, v8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    return sub_222C9477C();
  }

  else
  {
    v14 = *(v9 + 32);
    v14(v12, v8, AssociatedTypeWitness);
    sub_222B51F4C(AssociatedTypeWitness, AssociatedTypeWitness);
    swift_allocObject();
    v15 = sub_222C9473C();
    v14(v16, v12, AssociatedTypeWitness);
    sub_222C947FC();
    return v15;
  }
}

uint64_t sub_222B509E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v131 = a2;
  v120 = a1;
  v130 = a3;
  v4 = *v3;
  v111 = sub_222C9367C();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v114 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v4[11];
  v7 = v4[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v108 = sub_222C94B5C();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v112 = &v104 - v9;
  v118 = AssociatedTypeWitness;
  v117 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v10);
  v113 = &v104 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v116 = sub_222C94B5C();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v109 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v119 = &v104 - v15;
  v123 = v12;
  v122 = *(v12 - 8);
  MEMORY[0x28223BE20](v16);
  v121 = &v104 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025020, &unk_222C98410);
  MEMORY[0x28223BE20](v18 - 8);
  v134 = &v104 - v19;
  v137 = type metadata accessor for TurnPairRestatementClassification(0);
  v133 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v136 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v104 - v22;
  v24 = type metadata accessor for EntityPromptClassification(0);
  v132 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v135 = (&v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = swift_getAssociatedTypeWitness();
  v125 = sub_222C94B5C();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v28 = &v104 - v27;
  v29 = *(v26 - 8);
  MEMORY[0x28223BE20](v30);
  v32 = &v104 - v31;
  *&v139 = v131;
  v33 = v4[13];
  v127 = v3;
  v126 = v33;
  v128 = v7;
  v129 = v6;
  sub_222B51D30(v3 + v33, v7, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025030, &qword_222C98420);
  sub_222B520D0();
  v34 = v29;
  v35 = sub_222C9466C();

  *&v139 = v35;
  sub_222C947FC();
  swift_getWitnessTable();
  sub_222C949CC();
  if ((*(v29 + 48))(v28, 1, v26) != 1)
  {
    v46 = *(v29 + 32);
    v125 = v32;
    v46(v32, v28, v26);

    v47 = *(v131 + 16);
    v106 = v26;
    v105 = v34;
    if (v47)
    {
      v48 = v131 + 32;
      v49 = (v132 + 56);
      v50 = (v132 + 48);
      v51 = MEMORY[0x277D84F90];
      v52 = v131 + 32;
      v53 = v47;
      do
      {
        sub_222B43E3C(v52, &v139);
        sub_222B405A0(&v139, v138);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
        v54 = swift_dynamicCast();
        (*v49)(v23, v54 ^ 1u, 1, v24);
        if ((*v50)(v23, 1, v24) == 1)
        {
          sub_222B4FCD4(v23, &qword_27D025028, &unk_222C96EC0);
        }

        else
        {
          sub_222B52134(v23, v135, type metadata accessor for EntityPromptClassification);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = sub_222B49F90(0, v51[2] + 1, 1, v51);
          }

          v56 = v51[2];
          v55 = v51[3];
          v57 = v51;
          if (v56 >= v55 >> 1)
          {
            v57 = sub_222B49F90((v55 > 1), v56 + 1, 1, v51);
          }

          v57[2] = v56 + 1;
          v51 = v57;
          sub_222B52134(v135, v57 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v56, type metadata accessor for EntityPromptClassification);
        }

        v52 += 40;
        --v53;
      }

      while (v53);
      v135 = v51;
      v58 = v134;
      v59 = (v133 + 56);
      v60 = (v133 + 48);
      v61 = MEMORY[0x277D84F90];
      v62 = v128;
      do
      {
        sub_222B43E3C(v48, &v139);
        sub_222B405A0(&v139, v138);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
        v63 = v137;
        v64 = swift_dynamicCast();
        (*v59)(v58, v64 ^ 1u, 1, v63);
        if ((*v60)(v58, 1, v63) == 1)
        {
          sub_222B4FCD4(v58, &qword_27D025020, &unk_222C98410);
        }

        else
        {
          sub_222B52134(v58, v136, type metadata accessor for TurnPairRestatementClassification);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = sub_222B4A2A0(0, v61[2] + 1, 1, v61);
          }

          v66 = v61[2];
          v65 = v61[3];
          if (v66 >= v65 >> 1)
          {
            v61 = sub_222B4A2A0((v65 > 1), v66 + 1, 1, v61);
          }

          v61[2] = v66 + 1;
          sub_222B52134(v136, v61 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v66, type metadata accessor for TurnPairRestatementClassification);
          v58 = v134;
        }

        v48 += 40;
        --v47;
      }

      while (v47);
      v67 = v130;
      v68 = v135;
    }

    else
    {
      v68 = MEMORY[0x277D84F90];
      v61 = MEMORY[0x277D84F90];
      v62 = v128;
      v67 = v130;
    }

    v69 = *(v68 + 16);

    v70 = v129;
    v71 = v127;
    v72 = v125;
    if (v69)
    {
    }

    else
    {
      v73 = v61[2];

      if (!v73)
      {
        v81 = v119;
        v82 = v120;
        (*(v70 + 80))(v120, v72, v62, v70);
        v83 = v122;
        v84 = v123;
        if ((*(v122 + 48))(v81, 1, v123) != 1)
        {
          (*(v83 + 32))(v121, v81, v84);
          v86 = v112;
          (*(v70 + 88))(v82, v62, v70);
          v87 = v117;
          v88 = v82;
          v89 = v118;
          if ((*(v117 + 48))(v86, 1, v118) != 1)
          {
            (*(v87 + 32))(v113, v86, v89);
            type metadata accessor for SuccessfulTaskMetadata();
            v97 = swift_allocObject();
            v98 = v131;
            *(v97 + 16) = v88;
            *(v97 + 24) = v98;

            sub_222C9366C();
            v99 = v109;
            v100 = v123;
            (*(v83 + 16))(v109, v121, v123);
            (*(v83 + 56))(v99, 0, 1, v100);
            v101 = v114;
            v102 = v113;
            v103 = v121;
            (*(v70 + 96))(v114, v113, v99, v121, v97, v62, v70);

            (*(v115 + 8))(v99, v116);
            (*(v110 + 8))(v101, v111);
            (*(v117 + 8))(v102, v118);
            (*(v83 + 8))(v103, v123);
            return (*(v105 + 8))(v72, v106);
          }

          v90 = v123;
          (*(v107 + 8))(v86, v108);
          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v91 = sub_222C9431C();
          __swift_project_value_buffer(v91, qword_280FE2340);

          v92 = sub_222C942FC();
          v93 = sub_222C94A3C();

          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            v95 = v90;
            v96 = swift_slowAlloc();
            *&v139 = v96;
            *v94 = 136315138;
            *(v94 + 4) = sub_222B437C0(v71[2], v71[3], &v139);
            _os_log_impl(&dword_222B39000, v92, v93, "%s Could not extract exactly one uso entity. Skipping positive ground truth generation.", v94, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v96);
            MEMORY[0x223DCA8C0](v96, -1, -1);
            MEMORY[0x223DCA8C0](v94, -1, -1);

            (*(v122 + 8))(v121, v95);
          }

          else
          {

            (*(v122 + 8))(v121, v90);
          }

LABEL_37:
          (*(v105 + 8))(v72, v106);
          v80 = swift_getAssociatedTypeWitness();
          return (*(*(v80 - 8) + 56))(v67, 1, 1, v80);
        }

        (*(v115 + 8))(v81, v116);
        if (qword_280FDFE78 != -1)
        {
          swift_once();
        }

        v85 = sub_222C9431C();
        __swift_project_value_buffer(v85, qword_280FE2340);

        v75 = sub_222C942FC();
        v76 = sub_222C94A3C();

        if (!os_log_type_enabled(v75, v76))
        {
LABEL_36:

          goto LABEL_37;
        }

        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *&v139 = v78;
        *v77 = 136315138;
        *(v77 + 4) = sub_222B437C0(v71[2], v71[3], &v139);
        v79 = "%s Could not extract exactly one entity reference. Skipping positive ground truth generation.";
LABEL_35:
        _os_log_impl(&dword_222B39000, v75, v76, v79, v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v78);
        MEMORY[0x223DCA8C0](v78, -1, -1);
        MEMORY[0x223DCA8C0](v77, -1, -1);
        goto LABEL_36;
      }
    }

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v74 = sub_222C9431C();
    __swift_project_value_buffer(v74, qword_280FE2340);

    v75 = sub_222C942FC();
    v76 = sub_222C94A3C();

    if (!os_log_type_enabled(v75, v76))
    {
      goto LABEL_36;
    }

    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *&v139 = v78;
    *v77 = 136315138;
    *(v77 + 4) = sub_222B437C0(v71[2], v71[3], &v139);
    v79 = "%s Prompt or restatement present in conversation. Skipping positive ground truth generation.";
    goto LABEL_35;
  }

  (*(v124 + 8))(v28, v125);

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v36 = sub_222C9431C();
  __swift_project_value_buffer(v36, qword_280FE2340);
  v37 = v127;

  v38 = sub_222C942FC();
  v39 = sub_222C94A3C();

  v40 = os_log_type_enabled(v38, v39);
  v41 = v130;
  if (v40)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v139 = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_222B437C0(v37[2], v37[3], &v139);
    _os_log_impl(&dword_222B39000, v38, v39, "%s No successful event associated with session. Skipping one shot successful event GT generation.", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    MEMORY[0x223DCA8C0](v43, -1, -1);
    MEMORY[0x223DCA8C0](v42, -1, -1);
  }

  v44 = swift_getAssociatedTypeWitness();
  return (*(*(v44 - 8) + 56))(v41, 1, 1, v44);
}

uint64_t (*sub_222B51D30(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_222B5219C;
}

char *OneShotSuccessfulGroundTruthGenerator.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  return v0;
}

uint64_t OneShotSuccessfulGroundTruthGenerator.__deallocating_deinit()
{
  OneShotSuccessfulGroundTruthGenerator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_222B51F4C(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  }

  else
  {

    return sub_222C9518C();
  }
}

uint64_t sub_222B51FE0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_222B520D0()
{
  result = qword_280FDB7E8;
  if (!qword_280FDB7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D025030, &qword_222C98420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDB7E8);
  }

  return result;
}

uint64_t sub_222B52134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s28SiriPrivateLearningInference16SuggestionDomainO9hashValueSivg_0()
{
  v1 = *v0;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v1);
  return sub_222C9534C();
}

uint64_t sub_222B52290(uint64_t a1)
{
  v2 = *v1;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v2);
  return sub_222C9534C();
}

uint64_t sub_222B522D4()
{
  if (*v0)
  {
    return 0x6B63616264656566;
  }

  else
  {
    return 0x6974636572726F63;
  }
}

uint64_t sub_222B52314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974636572726F63 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_222C951FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B63616264656566 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_222C951FC();

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

uint64_t sub_222B52404(uint64_t a1)
{
  v2 = sub_222B529BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B52440(uint64_t a1)
{
  v2 = sub_222B529BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222B52490(uint64_t a1)
{
  v2 = sub_222B52AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B524CC(uint64_t a1)
{
  v2 = sub_222B52AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222B52508()
{
  sub_222C952FC();
  MEMORY[0x223DCA0B0](0);
  return sub_222C9534C();
}

uint64_t sub_222B5254C(uint64_t a1)
{
  sub_222C952FC();
  MEMORY[0x223DCA0B0](0);
  return sub_222C9534C();
}

uint64_t sub_222B5258C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_222C951FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_222B5260C(uint64_t a1)
{
  v2 = sub_222B52A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B52648(uint64_t a1)
{
  v2 = sub_222B52A10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaGroundTruthSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025038, &qword_222C96ED0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025040, &qword_222C96ED8);
  v21 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025048, &qword_222C96EE0);
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v18 - v9;
  v11 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B529BC();
  sub_222C9536C();
  if (v11 < 0)
  {
    v14 = v11 & 0x7F;
    v26 = 1;
    sub_222B52A10();
    v15 = v18;
    v16 = v22;
    sub_222C950BC();
    v25 = v14;
    sub_222B52A64();
    v17 = v20;
    sub_222C9512C();
    (*(v19 + 8))(v15, v17);
    return (*(v8 + 8))(v10, v16);
  }

  else
  {
    v24 = 0;
    sub_222B52AB8();
    v12 = v22;
    sub_222C950BC();
    v23 = v11;
    sub_222B52B0C();
    sub_222C9512C();
    (*(v21 + 8))(v7, v5);
    return (*(v8 + 8))(v10, v12);
  }
}

unint64_t sub_222B529BC()
{
  result = qword_27D025050;
  if (!qword_27D025050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025050);
  }

  return result;
}

unint64_t sub_222B52A10()
{
  result = qword_27D025058;
  if (!qword_27D025058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025058);
  }

  return result;
}

unint64_t sub_222B52A64()
{
  result = qword_27D025060;
  if (!qword_27D025060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025060);
  }

  return result;
}

unint64_t sub_222B52AB8()
{
  result = qword_27D025068;
  if (!qword_27D025068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025068);
  }

  return result;
}

unint64_t sub_222B52B0C()
{
  result = qword_27D025070;
  if (!qword_27D025070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025070);
  }

  return result;
}

uint64_t MediaGroundTruthSource.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x223DCA0B0](v1 >> 7);
  return MEMORY[0x223DCA0B0](v1 & 0x7F);
}

uint64_t MediaGroundTruthSource.hashValue.getter()
{
  v1 = *v0;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v1 >> 7);
  MEMORY[0x223DCA0B0](v1 & 0x7F);
  return sub_222C9534C();
}

uint64_t MediaGroundTruthSource.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025078, &qword_222C96EE8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025080, &qword_222C96EF0);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025088, &qword_222C96EF8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - v11;
  v13 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_222B529BC();
  v14 = v30;
  sub_222C9535C();
  if (!v14)
  {
    v30 = v6;
    v15 = v10;
    v16 = v28;
    v17 = v29;
    v18 = sub_222C9508C();
    if (*(v18 + 16) == 1)
    {
      v25[1] = v18;
      if (*(v18 + 32))
      {
        v35 = 1;
        sub_222B52A10();
        sub_222C94FFC();
        sub_222B551D4();
        sub_222C9507C();
        (*(v27 + 8))(v5, v16);
        (*(v15 + 8))(v12, v9);
        swift_unknownObjectRelease();
        *v17 = v34 | 0x80;
      }

      else
      {
        v33 = 0;
        sub_222B52AB8();
        v22 = v8;
        sub_222C94FFC();
        sub_222B55228();
        v24 = v30;
        sub_222C9507C();
        (*(v26 + 8))(v22, v24);
        (*(v15 + 8))(v12, v9);
        swift_unknownObjectRelease();
        *v17 = v32;
      }
    }

    else
    {
      v19 = sub_222C94DBC();
      swift_allocError();
      v21 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00);
      *v21 = &type metadata for MediaGroundTruthSource;
      sub_222C9500C();
      sub_222C94DAC();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
      swift_willThrow();
      (*(v15 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v31);
}

uint64_t sub_222B530B4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222B530E8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222B5311C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222B53150()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222B531B4()
{
  v1 = *v0;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v1 >> 7);
  MEMORY[0x223DCA0B0](v1 & 0x7F);
  return sub_222C9534C();
}

uint64_t sub_222B53208()
{
  v1 = *v0;
  MEMORY[0x223DCA0B0](v1 >> 7);
  return MEMORY[0x223DCA0B0](v1 & 0x7F);
}

uint64_t sub_222B53248(uint64_t a1)
{
  v2 = *v1;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v2 >> 7);
  MEMORY[0x223DCA0B0](v2 & 0x7F);
  return sub_222C9534C();
}

unint64_t sub_222B53298()
{
  v1 = *v0;
  v2 = 0x6C6F467070416E69;
  if (v1 == 3)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000039;
  }

  v3 = 0xD000000000000021;
  if (*v0)
  {
    v3 = 0xD000000000000027;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_222B5334C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222B56EB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222B53380(uint64_t a1)
{
  v2 = sub_222B5527C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B533BC(uint64_t a1)
{
  v2 = sub_222B5527C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222B53404(uint64_t a1)
{
  v2 = sub_222B552D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B53440(uint64_t a1)
{
  v2 = sub_222B552D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222B5347C(uint64_t a1)
{
  v2 = sub_222B55324();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B534B8(uint64_t a1)
{
  v2 = sub_222B55324();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222B534F4(uint64_t a1)
{
  v2 = sub_222B55378();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B53530(uint64_t a1)
{
  v2 = sub_222B55378();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222B5356C(uint64_t a1)
{
  v2 = sub_222B55420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B535A8(uint64_t a1)
{
  v2 = sub_222B55420();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222B535E4(uint64_t a1)
{
  v2 = sub_222B553CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B53620(uint64_t a1)
{
  v2 = sub_222B553CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaCorrectionGroundTruthSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0250A8, &qword_222C96F08);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0250B0, &qword_222C96F10);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0250B8, &qword_222C96F18);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0250C0, &qword_222C96F20);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0250C8, &qword_222C96F28);
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0250D0, &qword_222C96F30);
  v15 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_222B5527C();
  sub_222C9536C();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_222B553CC();
      v31 = v45;
      sub_222C950BC();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_222B55420();
      v31 = v45;
      sub_222C950BC();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_222B55378();
      v22 = v33;
      v23 = v45;
      sub_222C950BC();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_222B55324();
      v22 = v36;
      v23 = v45;
      sub_222C950BC();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_222B552D0();
      v22 = v39;
      v23 = v45;
      sub_222C950BC();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

uint64_t MediaCorrectionGroundTruthSource.hashValue.getter()
{
  v1 = *v0;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v1);
  return sub_222C9534C();
}

uint64_t MediaCorrectionGroundTruthSource.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v43 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025108, &qword_222C96F38);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v45 = &v30[-v3];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025110, &qword_222C96F40);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v42 = &v30[-v4];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025118, &qword_222C96F48);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v44 = &v30[-v5];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025120, &qword_222C96F50);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v30[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025128, &qword_222C96F58);
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v30[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025130, &unk_222C96F60);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30[-v13];
  v15 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_222B5527C();
  v16 = v46;
  sub_222C9535C();
  if (!v16)
  {
    v32 = v8;
    v17 = v44;
    v18 = v45;
    v46 = v12;
    v19 = v14;
    v20 = sub_222C9508C();
    v21 = *(v20 + 16);
    if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 5) : (v23 = 1), v23))
    {
      v24 = sub_222C94DBC();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00);
      *v26 = &type metadata for MediaCorrectionGroundTruthSource;
      sub_222C9500C();
      sub_222C94DAC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v46 + 8))(v19, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = *(v20 + 32);
      if (v22 <= 1)
      {
        if (v22)
        {
          v49 = 1;
          sub_222B553CC();
          sub_222C94FFC();
          (*(v34 + 8))(v7, v36);
        }

        else
        {
          v48 = 0;
          sub_222B55420();
          sub_222C94FFC();
          (*(v33 + 8))(v10, v32);
        }

        (*(v46 + 8))(v14, v11);
      }

      else
      {
        v36 = v20;
        v28 = v46;
        if (v22 == 2)
        {
          v50 = 2;
          sub_222B55378();
          sub_222C94FFC();
          (*(v35 + 8))(v17, v37);
          (*(v28 + 8))(v19, v11);
        }

        else
        {
          if (v22 == 3)
          {
            v51 = 3;
            sub_222B55324();
            v29 = v42;
            sub_222C94FFC();
            (*(v38 + 8))(v29, v40);
          }

          else
          {
            v52 = 4;
            sub_222B552D0();
            sub_222C94FFC();
            (*(v39 + 8))(v18, v41);
          }

          (*(v28 + 8))(v19, v11);
        }
      }

      swift_unknownObjectRelease();
      *v43 = v31;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v47);
}

uint64_t MediaGroundTruth.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MediaGroundTruth.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MediaGroundTruth(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t MediaGroundTruth.usoEntity.getter()
{
  type metadata accessor for MediaGroundTruth(0);
}

uint64_t MediaGroundTruth.originalEntityReference.getter()
{
  type metadata accessor for MediaGroundTruth(0);
}

uint64_t MediaGroundTruth.correctedEntityReference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaGroundTruth(0) + 32));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 24);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_222B554C0(&v9, v8);
}

uint64_t MediaGroundTruth.originalRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaGroundTruth(0) + 36);

  return sub_222B5551C(v3, a1);
}

unint64_t sub_222B54570()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000018;
  if (v1 != 4)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000017;
  }

  v4 = 0x656372756F73;
  if (v1 != 1)
  {
    v4 = 0x7469746E456F7375;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_222B5462C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222B5706C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222B54660(uint64_t a1)
{
  v2 = sub_222B559D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B5469C(uint64_t a1)
{
  v2 = sub_222B559D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaGroundTruth.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025138, &unk_222C96F70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B559D8();
  sub_222C9536C();
  LOBYTE(v23[0]) = 0;
  sub_222C9367C();
  sub_222B57270(&qword_27D025148, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_222C9512C();
  if (!v2)
  {
    v9 = type metadata accessor for MediaGroundTruth(0);
    LOBYTE(v23[0]) = *(v3 + v9[5]);
    LOBYTE(v19) = 1;
    sub_222B52B0C();
    sub_222C9512C();
    *&v23[0] = *(v3 + v9[6]);
    LOBYTE(v19) = 2;
    sub_222C9386C();
    sub_222B57270(&qword_27D025150, MEMORY[0x277D5E9D8], MEMORY[0x277D5E450]);
    sub_222C9512C();
    v26[0] = *(v3 + v9[7]);
    v25 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025158, &qword_222CA61E0);
    sub_222B55AD4(&qword_27D025160, sub_222B55A2C, MEMORY[0x277D83948]);
    sub_222C9512C();
    v10 = (v3 + v9[8]);
    v11 = v10[1];
    v23[0] = *v10;
    v23[1] = v11;
    v13 = *v10;
    v12 = v10[1];
    v23[2] = v10[2];
    v24 = *(v10 + 24);
    v19 = v13;
    v20 = v12;
    v21 = v10[2];
    v22 = *(v10 + 24);
    v18 = 4;
    sub_222B554C0(v23, v16);
    sub_222B55A2C();
    sub_222C9512C();
    v16[0] = v19;
    v16[1] = v20;
    v16[2] = v21;
    v17 = v22;
    sub_222B55A80(v16);
    v15[15] = 5;
    sub_222C950DC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MediaGroundTruth.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_222C9367C();
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025170, &qword_222C96F80);
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for MediaGroundTruth(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_222B559D8();
  v30 = v11;
  v16 = v31;
  sub_222C9535C();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v32);
  }

  v31 = v5;
  v17 = v14;
  v18 = v27;
  LOBYTE(v33) = 0;
  v19 = sub_222B57270(&qword_27D025178, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_222C9507C();
  v25 = v19;
  (*(v18 + 32))(v14, v8, v6);
  v38 = 1;
  sub_222B55228();
  sub_222C9507C();
  v14[v12[5]] = v33;
  sub_222C9386C();
  v38 = 2;
  sub_222B57270(&qword_27D025180, MEMORY[0x277D5E9D8], MEMORY[0x277D5E458]);
  sub_222C9507C();
  v20 = v28;
  *&v14[v12[6]] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025158, &qword_222CA61E0);
  v38 = 3;
  sub_222B55AD4(&qword_27D025188, sub_222B55B4C, MEMORY[0x277D83978]);
  sub_222C9507C();
  *&v14[v12[7]] = v33;
  v38 = 4;
  sub_222B55B4C();
  sub_222C9507C();
  v21 = &v14[v12[8]];
  v22 = v34;
  *v21 = v33;
  *(v21 + 1) = v22;
  *(v21 + 2) = v35;
  *(v21 + 24) = v36;
  v37 = 5;
  v23 = v31;
  sub_222C9502C();
  (*(v20 + 8))(v30, v29);
  sub_222B55BA0(v23, v17 + v12[9]);
  sub_222B55C10(v17, v26);
  __swift_destroy_boxed_opaque_existential_0Tm(v32);
  return sub_222B55C74(v17);
}

uint64_t sub_222B55138@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_222B551D4()
{
  result = qword_27D025098;
  if (!qword_27D025098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025098);
  }

  return result;
}

unint64_t sub_222B55228()
{
  result = qword_27D0250A0;
  if (!qword_27D0250A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0250A0);
  }

  return result;
}

unint64_t sub_222B5527C()
{
  result = qword_27D0250D8;
  if (!qword_27D0250D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0250D8);
  }

  return result;
}

unint64_t sub_222B552D0()
{
  result = qword_27D0250E0;
  if (!qword_27D0250E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0250E0);
  }

  return result;
}

unint64_t sub_222B55324()
{
  result = qword_27D0250E8;
  if (!qword_27D0250E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0250E8);
  }

  return result;
}

unint64_t sub_222B55378()
{
  result = qword_27D0250F0;
  if (!qword_27D0250F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0250F0);
  }

  return result;
}

unint64_t sub_222B553CC()
{
  result = qword_27D0250F8;
  if (!qword_27D0250F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0250F8);
  }

  return result;
}

unint64_t sub_222B55420()
{
  result = qword_27D025100;
  if (!qword_27D025100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025100);
  }

  return result;
}

uint64_t type metadata accessor for MediaGroundTruth(uint64_t a1)
{
  result = qword_280FDFB40;
  if (!qword_280FDFB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222B5551C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL _s28SiriPrivateLearningInference16MediaGroundTruthV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025290, &unk_222C97C30);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  if ((sub_222C9362C() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for MediaGroundTruth(0);
  if (*(a1 + *(v14 + 20)) != *(a2 + *(v14 + 20)))
  {
    return 0;
  }

  v15 = v14;
  if ((_s12SiriOntology26UsoEntity_common_MediaItemC0A24PrivateLearningInferenceE2eeoiySbAC_ACtFZ_0(*(a1 + *(v14 + 24)), *(a2 + *(v14 + 24))) & 1) == 0)
  {
    return 0;
  }

  if ((sub_222BBDC04(*(a1 + v15[7]), *(a2 + v15[7])) & 1) == 0)
  {
    return 0;
  }

  v33 = v5;
  v16 = (a1 + v15[8]);
  v17 = v16[1];
  v44[0] = *v16;
  v44[1] = v17;
  v19 = *v16;
  v18 = v16[1];
  v44[2] = v16[2];
  v45 = *(v16 + 24);
  v20 = v16[2];
  v43 = *(v16 + 24);
  v40 = v19;
  v41 = v18;
  v42 = v20;
  v21 = (a2 + v15[8]);
  v22 = v21[2];
  v23 = *v21;
  v24 = *v21;
  v47 = v21[1];
  v48 = v22;
  v46 = v23;
  v49 = *(v21 + 24);
  v36 = v24;
  v37 = v47;
  v38 = v21[2];
  v39 = *(v21 + 24);
  sub_222B554C0(v44, v35);
  sub_222B554C0(&v46, v35);
  v34 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v40, &v36);
  v50[0] = v36;
  v50[1] = v37;
  v50[2] = v38;
  v51 = v39;
  sub_222B55A80(v50);
  v52[0] = v40;
  v52[1] = v41;
  v52[2] = v42;
  v53 = v43;
  sub_222B55A80(v52);
  if (!v34)
  {
    return 0;
  }

  v25 = v15[9];
  v26 = *(v11 + 48);
  sub_222B5551C(a1 + v25, v13);
  sub_222B5551C(a2 + v25, &v13[v26]);
  v27 = v33;
  v28 = *(v33 + 48);
  if (v28(v13, 1, v4) == 1)
  {
    if (v28(&v13[v26], 1, v4) == 1)
    {
      sub_222B4FCD4(v13, &unk_27D026290, &qword_222C96B40);
      return 1;
    }

    goto LABEL_11;
  }

  sub_222B5551C(v13, v10);
  if (v28(&v13[v26], 1, v4) == 1)
  {
    (*(v27 + 8))(v10, v4);
LABEL_11:
    sub_222B4FCD4(v13, &qword_27D025290, &unk_222C97C30);
    return 0;
  }

  (*(v27 + 32))(v7, &v13[v26], v4);
  sub_222B57270(&qword_280FE02A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v30 = sub_222C9447C();
  v31 = *(v27 + 8);
  v31(v7, v4);
  v31(v10, v4);
  sub_222B4FCD4(v13, &unk_27D026290, &qword_222C96B40);
  return (v30 & 1) != 0;
}

unint64_t sub_222B559D8()
{
  result = qword_27D025140;
  if (!qword_27D025140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025140);
  }

  return result;
}

unint64_t sub_222B55A2C()
{
  result = qword_27D025168;
  if (!qword_27D025168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025168);
  }

  return result;
}

uint64_t sub_222B55AD4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D025158, &qword_222CA61E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222B55B4C()
{
  result = qword_27D025190;
  if (!qword_27D025190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025190);
  }

  return result;
}

uint64_t sub_222B55BA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B55C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaGroundTruth(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B55C74(uint64_t a1)
{
  v2 = type metadata accessor for MediaGroundTruth(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222B55CD4()
{
  result = qword_27D025198;
  if (!qword_27D025198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025198);
  }

  return result;
}

unint64_t sub_222B55D2C()
{
  result = qword_27D0251A0;
  if (!qword_27D0251A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0251A0);
  }

  return result;
}

unint64_t sub_222B55D84()
{
  result = qword_27D0251A8;
  if (!qword_27D0251A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0251B0, &qword_222C970F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0251A8);
  }

  return result;
}

uint64_t sub_222B55DE8(uint64_t a1)
{
  *(a1 + 8) = sub_222B57270(&qword_27D0251B8, type metadata accessor for MediaGroundTruth, &protocol conformance descriptor for MediaGroundTruth);
  result = sub_222B57270(&qword_27D0251C0, type metadata accessor for MediaGroundTruth, &protocol conformance descriptor for MediaGroundTruth);
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MediaGroundTruthSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1F)
  {
    goto LABEL_17;
  }

  if (a2 + 225 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 225) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 225;
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

      return (*a1 | (v4 << 8)) - 225;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 225;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0x1E | (*a1 >> 7)) ^ 0x1F;
  if (v6 >= 0x1E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for MediaGroundTruthSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 225 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 225) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1F)
  {
    v4 = 0;
  }

  if (a2 > 0x1E)
  {
    v5 = ((a2 - 31) >> 8) + 1;
    *result = a2 - 31;
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
    *result = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_222B5604C(uint64_t a1)
{
  sub_222C9367C();
  if (v1 <= 0x3F)
  {
    sub_222C9386C();
    if (v2 <= 0x3F)
    {
      sub_222B56110();
      if (v3 <= 0x3F)
      {
        sub_222B56160(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_222B56110()
{
  if (!qword_280FDB7D8)
  {
    v0 = sub_222C947FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280FDB7D8);
    }
  }
}

void sub_222B56160(uint64_t a1)
{
  if (!qword_280FE0290)
  {
    sub_222C9367C();
    v1 = sub_222C94B5C();
    if (!v2)
    {
      atomic_store(v1, &qword_280FE0290);
    }
  }
}

uint64_t getEnumTagSinglePayload for MediaGroundTruth.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MediaGroundTruth.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ContactSuggestionTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactSuggestionTag(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaReferenceSourceApp(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaReferenceSourceApp(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_222B5661C()
{
  result = qword_27D0251C8;
  if (!qword_27D0251C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0251C8);
  }

  return result;
}

unint64_t sub_222B56674()
{
  result = qword_27D0251D0;
  if (!qword_27D0251D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0251D0);
  }

  return result;
}

unint64_t sub_222B566CC()
{
  result = qword_27D0251D8;
  if (!qword_27D0251D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0251D8);
  }

  return result;
}

unint64_t sub_222B56724()
{
  result = qword_27D0251E0;
  if (!qword_27D0251E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0251E0);
  }

  return result;
}

unint64_t sub_222B5677C()
{
  result = qword_27D0251E8;
  if (!qword_27D0251E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0251E8);
  }

  return result;
}

unint64_t sub_222B567D4()
{
  result = qword_27D0251F0;
  if (!qword_27D0251F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0251F0);
  }

  return result;
}

unint64_t sub_222B5682C()
{
  result = qword_27D0251F8;
  if (!qword_27D0251F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0251F8);
  }

  return result;
}

unint64_t sub_222B56884()
{
  result = qword_27D025200;
  if (!qword_27D025200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025200);
  }

  return result;
}

unint64_t sub_222B568DC()
{
  result = qword_27D025208;
  if (!qword_27D025208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025208);
  }

  return result;
}

unint64_t sub_222B56934()
{
  result = qword_27D025210;
  if (!qword_27D025210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025210);
  }

  return result;
}

unint64_t sub_222B5698C()
{
  result = qword_27D025218;
  if (!qword_27D025218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025218);
  }

  return result;
}

unint64_t sub_222B569E4()
{
  result = qword_27D025220;
  if (!qword_27D025220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025220);
  }

  return result;
}

unint64_t sub_222B56A3C()
{
  result = qword_27D025228;
  if (!qword_27D025228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025228);
  }

  return result;
}

unint64_t sub_222B56A94()
{
  result = qword_27D025230;
  if (!qword_27D025230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025230);
  }

  return result;
}

unint64_t sub_222B56AEC()
{
  result = qword_27D025238;
  if (!qword_27D025238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025238);
  }

  return result;
}

unint64_t sub_222B56B44()
{
  result = qword_27D025240;
  if (!qword_27D025240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025240);
  }

  return result;
}

unint64_t sub_222B56B9C()
{
  result = qword_27D025248;
  if (!qword_27D025248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025248);
  }

  return result;
}

unint64_t sub_222B56BF4()
{
  result = qword_27D025250;
  if (!qword_27D025250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025250);
  }

  return result;
}

unint64_t sub_222B56C4C()
{
  result = qword_27D025258;
  if (!qword_27D025258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025258);
  }

  return result;
}

unint64_t sub_222B56CA4()
{
  result = qword_27D025260;
  if (!qword_27D025260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025260);
  }

  return result;
}

unint64_t sub_222B56CFC()
{
  result = qword_27D025268;
  if (!qword_27D025268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025268);
  }

  return result;
}

unint64_t sub_222B56D54()
{
  result = qword_27D025270;
  if (!qword_27D025270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025270);
  }

  return result;
}

unint64_t sub_222B56DAC()
{
  result = qword_27D025278;
  if (!qword_27D025278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025278);
  }

  return result;
}

unint64_t sub_222B56E04()
{
  result = qword_27D025280;
  if (!qword_27D025280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025280);
  }

  return result;
}

unint64_t sub_222B56E5C()
{
  result = qword_27D025288;
  if (!qword_27D025288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025288);
  }

  return result;
}

uint64_t sub_222B56EB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000021 && 0x8000000222CA9830 == a2;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000027 && 0x8000000222CA9860 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000039 && 0x8000000222CA9890 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000222CA98D0 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6F467070416E69 && a2 == 0xED00007075776F6CLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_222B5706C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7469746E456F7375 && a2 == 0xE900000000000079 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000222CA98F0 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000222CA9910 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000222CA9930 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t sub_222B57270(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t InAppFollowupClassification.init(priorEvent:followupEventId:followupEventType:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_222B43E3C(a1, a6);
  a6[5] = a2;
  a6[6] = a3;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = *(v12 + 8);
  v14 = *(v13 + 16);

  a6[9] = v14(v11, v13);
  v16 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v17 = (*(*(v15 + 8) + 24))(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222C97C40;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  sub_222B48F64(inited);
  a6[10] = v17;
  a6[7] = a4;
  a6[8] = a5;
  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t InAppFollowupClassification.followupEventId.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t InAppFollowupClassification.followupEventType.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_222B574E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222B57528(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222B575A0()
{
  v1 = 0x736567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0x73746361746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6143656E6F6870;
  }
}

uint64_t sub_222B57600@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222B587E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222B57634(uint64_t a1)
{
  v2 = sub_222B57B80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B57670(uint64_t a1)
{
  v2 = sub_222B57B80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222B576AC(uint64_t a1)
{
  v2 = sub_222B57BD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B576E8(uint64_t a1)
{
  v2 = sub_222B57BD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222B57724(uint64_t a1)
{
  v2 = sub_222B57C28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B57760(uint64_t a1)
{
  v2 = sub_222B57C28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_222B5779C(uint64_t a1)
{
  v2 = sub_222B57C7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B577D8(uint64_t a1)
{
  v2 = sub_222B57C7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactSuggestionDomain.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025298, &qword_222C97D00);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0252A0, &qword_222C97D08);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0252A8, &qword_222C97D10);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0252B0, &qword_222C97D18);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B57B80();
  sub_222C9536C();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_222B57C28();
      v9 = v21;
      sub_222C950BC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_222B57BD4();
      v9 = v24;
      sub_222C950BC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_222B57C7C();
    sub_222C950BC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_222B57B80()
{
  result = qword_27D0252B8;
  if (!qword_27D0252B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0252B8);
  }

  return result;
}

unint64_t sub_222B57BD4()
{
  result = qword_27D0252C0;
  if (!qword_27D0252C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0252C0);
  }

  return result;
}

unint64_t sub_222B57C28()
{
  result = qword_27D0252C8;
  if (!qword_27D0252C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0252C8);
  }

  return result;
}

unint64_t sub_222B57C7C()
{
  result = qword_27D0252D0;
  if (!qword_27D0252D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0252D0);
  }

  return result;
}

uint64_t ContactSuggestionDomain.hashValue.getter()
{
  v1 = *v0;
  sub_222C952FC();
  MEMORY[0x223DCA0B0](v1);
  return sub_222C9534C();
}

uint64_t ContactSuggestionDomain.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0252D8, &qword_222C97D20);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0252E0, &qword_222C97D28);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0252E8, &qword_222C97D30);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0252F0, &unk_222C97D38);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_222B57B80();
  v15 = v36;
  sub_222C9535C();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_222C9508C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_222B572CC();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_222C94DBC();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025090, &qword_222C96F00);
      *v24 = &type metadata for ContactSuggestionDomain;
      sub_222C9500C();
      sub_222C94DAC();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_222B57C28();
          sub_222C94FFC();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_222B57BD4();
          v26 = v17;
          sub_222C94FFC();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_222B57C7C();
        sub_222C94FFC();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v37);
}

unint64_t sub_222B582E8()
{
  result = qword_27D0252F8;
  if (!qword_27D0252F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0252F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScoreChange.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScoreChange.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_222B584D0()
{
  result = qword_27D025300;
  if (!qword_27D025300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025300);
  }

  return result;
}

unint64_t sub_222B58528()
{
  result = qword_27D025308;
  if (!qword_27D025308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025308);
  }

  return result;
}

unint64_t sub_222B58580()
{
  result = qword_27D025310;
  if (!qword_27D025310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025310);
  }

  return result;
}

unint64_t sub_222B585D8()
{
  result = qword_27D025318;
  if (!qword_27D025318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025318);
  }

  return result;
}

unint64_t sub_222B58630()
{
  result = qword_27D025320;
  if (!qword_27D025320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025320);
  }

  return result;
}

unint64_t sub_222B58688()
{
  result = qword_27D025328;
  if (!qword_27D025328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025328);
  }

  return result;
}

unint64_t sub_222B586E0()
{
  result = qword_27D025330;
  if (!qword_27D025330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025330);
  }

  return result;
}

unint64_t sub_222B58738()
{
  result = qword_27D025338;
  if (!qword_27D025338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025338);
  }

  return result;
}

unint64_t sub_222B58790()
{
  result = qword_27D025340;
  if (!qword_27D025340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025340);
  }

  return result;
}

uint64_t sub_222B587E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6143656E6F6870 && a2 == 0xE90000000000006CLL;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746361746E6F63 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t sub_222B58968@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for INPlayMediaIntentEventAsyncStreamProcessor();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_222B627C0(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025380, &qword_222C98320);
  swift_allocObject();
  result = sub_222C9426C();
  *(v2 + 24) = result;
  *a1 = v2;
  return result;
}

uint64_t sub_222B589E8()
{
  type metadata accessor for INPlayMediaIntentEventAsyncStreamProcessor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025378, &qword_222C98318);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025348 = 91;
  unk_27D025350 = 0xE100000000000000;
  return result;
}

uint64_t sub_222B58A78(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v63 - v8;
  v10 = sub_222C935EC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v66 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v65 = a1[1];
  v15 = a1[2];
  v14 = a1[3];
  v67 = a1[4];
  v68 = v14;
  sub_222B41CB8(v15, v6);
  v16 = *(v11 + 48);
  if (v16(v6, 1, v10) == 1)
  {
    sub_222B41CE4(v15);
    if (v17)
    {
      v18 = 1;
    }

    else
    {
      sub_222C935AC();
      v18 = 0;
    }

    (*(v11 + 56))(v9, v18, 1, v10);
    if (v16(v6, 1, v10) != 1)
    {
      sub_222B4FCD4(v6, &qword_27D025360, &unk_222C98300);
    }
  }

  else
  {
    (*(v11 + 32))(v9, v6, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
  }

  if (v16(v9, 1, v10) == 1)
  {
    sub_222B4FCD4(v9, &qword_27D025360, &unk_222C98300);
  }

  else
  {
    v63 = v13;
    v64 = v15;
    v19 = v66;
    (*(v11 + 32))(v66, v9, v10);
    v20 = swift_beginAccess();
    v21 = *(v2 + 16);
    MEMORY[0x28223BE20](v20);
    *(&v63 - 2) = v19;

    v22 = sub_222B5A5C8(sub_222B5A7E0, (&v63 - 4), v21);

    v24 = 0;
    v25 = 1 << *(v22 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & v22[8];
    v28 = (v25 + 63) >> 6;
    v69 = v11;
    v70 = v10;
    while (v27)
    {
LABEL_20:
      v30 = __clz(__rbit64(v27)) | (v24 << 6);
      v31 = (v22[6] + 16 * v30);
      v32 = *v31;
      v33 = v31[1];
      v34 = *(v22[7] + 8 * v30);
      swift_beginAccess();

      v35 = sub_222B8C9DC(v32, v33);
      if (v36)
      {
        v37 = v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *(v2 + 16);
        v71 = v39;
        *(v2 + 16) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_222B92DDC();
          v39 = v71;
        }

        sub_222B92238(v37, v39);
        *(v2 + 16) = v39;
      }

      v27 &= v27 - 1;
      swift_endAccess();

      *(v34 + 56) = 0;
      *(v34 + 64) = 0;

      v11 = v69;
      v10 = v70;
    }

    while (1)
    {
      v29 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v29 >= v28)
      {
        break;
      }

      v27 = v22[v29 + 8];
      ++v24;
      if (v27)
      {
        v24 = v29;
        goto LABEL_20;
      }
    }

    (*(v11 + 8))(v66, v10);
    v13 = v63;
    v15 = v64;
  }

  v41 = v67;
  v40 = v68;
  if ((v68 != 0xD000000000000011 || 0x8000000222CA87C0 != v67) && (sub_222C951FC() & 1) == 0)
  {
    if (qword_280FDFE78 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_50;
  }

  v72[0] = v13;
  v72[1] = v65;
  v72[2] = v15;
  v72[3] = v40;
  v72[4] = v41;
  sub_222B59204(v72);
  while (1)
  {
    v23 = sub_222C9420C();
    if (v23 >> 62)
    {
LABEL_46:
      v61 = v23;
      v47 = sub_222C94C6C();
      v23 = v61;
      if (!v47)
      {
LABEL_47:

        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v47 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v47)
      {
        goto LABEL_47;
      }
    }

    v48 = v23;
    v72[0] = MEMORY[0x277D84F90];
    sub_222B4C374(0, v47 & ~(v47 >> 63), 0);
    if ((v47 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_50:
    swift_once();
LABEL_29:
    v42 = sub_222C9431C();
    __swift_project_value_buffer(v42, qword_280FE2340);
    v43 = sub_222C942FC();
    v44 = sub_222C94A4C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v72[0] = v46;
      *v45 = 136315138;
      if (qword_27D024660 != -1)
      {
        swift_once();
      }

      *(v45 + 4) = sub_222B437C0(qword_27D025348, unk_27D025350, v72);
      _os_log_impl(&dword_222B39000, v43, v44, "%s Unexpected event discarded", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x223DCA8C0](v46, -1, -1);
      MEMORY[0x223DCA8C0](v45, -1, -1);
    }
  }

  v49 = 0;
  v50 = v72[0];
  v51 = v48;
  v69 = v48 & 0xC000000000000001;
  v70 = v48;
  do
  {
    if (v69)
    {
      v52 = MEMORY[0x223DC9B30](v49, v51);
    }

    else
    {
      v52 = *(v51 + 8 * v49 + 32);
    }

    v54 = v52[2];
    v53 = v52[3];
    v56 = v52[4];
    v55 = v52[5];
    v57 = v52[6];

    v72[0] = v50;
    v59 = *(v50 + 16);
    v58 = *(v50 + 24);
    if (v59 >= v58 >> 1)
    {
      sub_222B4C374((v58 > 1), v59 + 1, 1);
      v50 = v72[0];
    }

    ++v49;
    *(v50 + 16) = v59 + 1;
    v60 = (v50 + 40 * v59);
    v60[4] = v54;
    v60[5] = v53;
    v60[6] = v56;
    v60[7] = v55;
    v60[8] = v57;
    v51 = v70;
  }

  while (v47 != v49);

  return v50;
}

void sub_222B59204(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  sub_222B4183C(v4, v65);
  v7 = *(&v65[0] + 1);
  if (!*(&v65[0] + 1))
  {
    goto LABEL_5;
  }

  v8 = *&v65[0];

  sub_222B4FCD4(v65, &qword_27D025370, &qword_222C98310);
  v9 = sub_222B41CFC(v4);
  if (v9 == 2 || (v10 = v9, v57 = v2, sub_222B41D14(v4, &v59), v11 = v59, v59 == 2))
  {

LABEL_5:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v12 = sub_222C9431C();
    __swift_project_value_buffer(v12, qword_280FE2340);
    v13 = sub_222C942FC();
    v14 = sub_222C94A4C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v59 = v16;
      *v15 = 136315138;
      if (qword_27D024660 != -1)
      {
        swift_once();
      }

      *(v15 + 4) = sub_222B437C0(qword_27D025348, unk_27D025350, &v59);
      _os_log_impl(&dword_222B39000, v13, v14, "%s INPlayMediaIntent features missing", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x223DCA8C0](v16, -1, -1);
      MEMORY[0x223DCA8C0](v15, -1, -1);
    }

    return;
  }

  v55 = v5;
  v56 = v3;
  v58 = v1;
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v17 = sub_222C9431C();
  __swift_project_value_buffer(v17, qword_280FE2340);
  v18 = sub_222C942FC();
  v19 = sub_222C94A3C();
  if (os_log_type_enabled(v18, v19))
  {
    v54 = v6;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v59 = v21;
    *v20 = 136315394;
    if (qword_27D024660 != -1)
    {
      swift_once();
    }

    *(v20 + 4) = sub_222B437C0(qword_27D025348, unk_27D025350, &v59);
    *(v20 + 12) = 1024;
    *(v20 + 14) = v10 & 1;
    _os_log_impl(&dword_222B39000, v18, v19, "%s Play media event isSiriDonated =  %{BOOL}d / event origin = eventOrigin.rawValue", v20, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x223DCA8C0](v21, -1, -1);
    MEMORY[0x223DCA8C0](v20, -1, -1);

    v6 = v54;
  }

  else
  {
  }

  swift_beginAccess();
  v22 = *(v1 + 16);
  if (*(v22 + 16) && (v23 = sub_222B8C9DC(v8, v7), (v24 & 1) != 0))
  {
    v25 = *(*(v22 + 56) + 8 * v23);
    swift_endAccess();
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;

    swift_beginAccess();
    sub_222B5A748(v8, v7);
    swift_endAccess();

    if (v10)
    {
      v59 = v57;
      v60 = v56;
      v61 = v4;
      v62 = v55;
      v63 = v6;
      sub_222B59D64(v8, v7, &v59);

LABEL_25:

      return;
    }

    if (v11)
    {

LABEL_42:
      v40 = sub_222C942FC();
      v41 = sub_222C94A3C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v59 = v43;
        *v42 = 136315138;
        if (qword_27D024660 != -1)
        {
          swift_once();
        }

        *(v42 + 4) = sub_222B437C0(qword_27D025348, unk_27D025350, &v59);
        _os_log_impl(&dword_222B39000, v40, v41, "%s This is not a siri related event - call queueUntrackedEvent", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        MEMORY[0x223DCA8C0](v43, -1, -1);
        MEMORY[0x223DCA8C0](v42, -1, -1);
      }

      else
      {
      }

      type metadata accessor for QueuedEvent();
      v44 = swift_allocObject();
      v44[2] = v57;
      v44[3] = v56;
      v44[4] = v4;
      v44[5] = v55;
      v44[7] = 0;
      v44[8] = 0;
      v44[6] = v6;
      v59 = v44;

      sub_222C9422C();

LABEL_50:

      return;
    }

    v39 = sub_222C951FC();

    if (v39)
    {
      goto LABEL_42;
    }

    v46 = sub_222C942FC();
    v47 = sub_222C94A3C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = v6;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v64 = v50;
      *v49 = 136315394;
      if (qword_27D024660 != -1)
      {
        swift_once();
      }

      *(v49 + 4) = sub_222B437C0(qword_27D025348, unk_27D025350, &v64);
      *(v49 + 12) = 2080;
      v59 = v57;
      v60 = v56;
      v61 = v4;
      v62 = v55;
      v63 = v48;

      v51 = sub_222C944EC();
      v53 = sub_222B437C0(v51, v52, &v64);

      *(v49 + 14) = v53;
      _os_log_impl(&dword_222B39000, v46, v47, "%s follow on INPlayMediaIntent suppressed %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v50, -1, -1);
      MEMORY[0x223DCA8C0](v49, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
    if (v10)
    {
      v59 = v57;
      v60 = v56;
      v61 = v4;
      v62 = v55;
      v63 = v6;
      sub_222B59D64(v8, v7, &v59);
      goto LABEL_25;
    }

    if (v11)
    {
      v26 = sub_222C951FC();

      if ((v26 & 1) == 0)
      {

        v27 = sub_222C942FC();
        v28 = sub_222C94A3C();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v59 = v30;
          *v29 = 136315138;
          if (qword_27D024660 != -1)
          {
            swift_once();
          }

          *(v29 + 4) = sub_222B437C0(qword_27D025348, unk_27D025350, &v59);
          _os_log_impl(&dword_222B39000, v27, v28, "%s This is not a siri related event - call queueUntrackedEvent", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v30);
          MEMORY[0x223DCA8C0](v30, -1, -1);
          MEMORY[0x223DCA8C0](v29, -1, -1);
        }

        else
        {
        }

        type metadata accessor for QueuedEvent();
        v45 = swift_allocObject();
        v45[2] = v57;
        v45[3] = v56;
        v45[4] = v4;
        v45[5] = v55;
        v45[7] = 0;
        v45[8] = 0;
        v45[6] = v6;
        v59 = v45;

        sub_222C9422C();
        goto LABEL_50;
      }
    }

    else
    {
    }

    v31 = v6;
    v32 = sub_222C942FC();
    v33 = sub_222C94A3C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v59 = v35;
      *v34 = 136315138;
      v36 = v58;
      if (qword_27D024660 != -1)
      {
        swift_once();
      }

      *(v34 + 4) = sub_222B437C0(qword_27D025348, unk_27D025350, &v59);
      _os_log_impl(&dword_222B39000, v32, v33, "%s This is a siri-triggered app donation - track this media id", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x223DCA8C0](v35, -1, -1);
      MEMORY[0x223DCA8C0](v34, -1, -1);
    }

    else
    {

      v36 = v58;
    }

    type metadata accessor for QueuedEvent();
    v37 = swift_allocObject();
    v37[2] = v57;
    v37[3] = v56;
    v37[4] = v4;
    v37[5] = v55;
    v37[6] = v31;
    v37[7] = v8;
    v37[8] = v7;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = *(v36 + 16);
    *(v36 + 16) = 0x8000000000000000;
    sub_222BAA2EC(v37, v8, v7, isUniquelyReferenced_nonNull_native);

    *(v36 + 16) = v64;
    swift_endAccess();
  }
}

uint64_t sub_222B59D64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v8 = *a3;
  v7 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v11 = a3[4];
  type metadata accessor for QueuedEvent();
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v7;
  v12[4] = v9;
  v12[5] = v10;
  v12[6] = v11;
  v12[7] = a1;
  v12[8] = a2;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_222BAA2EC(v12, a1, a2, isUniquelyReferenced_nonNull_native);
  *(v4 + 16) = v15;
  swift_endAccess();
  sub_222C9422C();
}

char *sub_222B59E7C()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x277D84F98];

  v1 = sub_222C9423C();
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v17 = v1;
  v2 = sub_222C94C6C();
  v1 = v17;
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v3 = v1;
  v20 = MEMORY[0x277D84F90];
  result = sub_222B4C374(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v20;
    v7 = v3;
    v18 = v3 & 0xC000000000000001;
    v19 = v3;
    do
    {
      if (v18)
      {
        v8 = MEMORY[0x223DC9B30](v5, v7);
      }

      else
      {
        v8 = *(v7 + 8 * v5 + 32);
      }

      v10 = v8[2];
      v9 = v8[3];
      v12 = v8[4];
      v11 = v8[5];
      v13 = v8[6];

      v15 = *(v20 + 16);
      v14 = *(v20 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_222B4C374((v14 > 1), v15 + 1, 1);
      }

      ++v5;
      *(v20 + 16) = v15 + 1;
      v16 = (v20 + 40 * v15);
      v16[4] = v10;
      v16[5] = v9;
      v16[6] = v12;
      v16[7] = v11;
      v16[8] = v13;
      v7 = v19;
    }

    while (v2 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_222B5A034()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222B5A098(uint64_t *a1)
{
  v2 = sub_222B58A78(a1);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_222B5A0FC()
{
  v1 = sub_222B59E7C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_222B5A160(uint64_t a1)
{
  v22[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = sub_222C935EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v22[0] = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v14 = *(v1 + 32);

  sub_222B41CB8(v14, v4);
  v15 = *(v9 + 48);
  if (v15(v4, 1, v8) == 1)
  {
    sub_222B41CE4(v14);
    if (v16)
    {
      v17 = 1;
    }

    else
    {
      sub_222C935AC();
      v17 = 0;
    }

    (*(v9 + 56))(v7, v17, 1, v8);
    if (v15(v4, 1, v8) != 1)
    {
      sub_222B4FCD4(v4, &qword_27D025360, &unk_222C98300);
    }
  }

  else
  {
    (*(v9 + 32))(v7, v4, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
  }

  if (v15(v7, 1, v8) == 1)
  {
    sub_222B4FCD4(v7, &qword_27D025360, &unk_222C98300);
    v18 = 0;
  }

  else
  {
    (*(v9 + 32))(v13, v7, v8);
    v19 = v22[0];
    sub_222C9358C();
    v18 = sub_222C9356C();
    v20 = *(v9 + 8);
    v20(v19, v8);
    v20(v13, v8);
  }

  return v18 & 1;
}

uint64_t sub_222B5A498()
{

  return swift_deallocClassInstance();
}

unint64_t sub_222B5A54C(uint64_t a1)
{
  result = sub_222B5A574();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_222B5A574()
{
  result = qword_27D025358;
  if (!qword_27D025358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025358);
  }

  return result;
}

unint64_t *sub_222B5A5C8(uint64_t (*a1)(void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_222B5AC78(v9, v7, a3, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v11 = swift_slowAlloc();
  v12 = sub_222B5AE10(v11, v7, a3, v5);
  result = MEMORY[0x223DCA8C0](v11, -1, -1);
  if (!v3)
  {
    return v12;
  }

  return result;
}

uint64_t sub_222B5A748(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_222B8C9DC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_222B92DDC();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_222B92238(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_222B5A814@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = sub_222B8CA54(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_222B93310();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_222C9367C();
    v12 = *(v11 - 8);
    v20 = v12;
    v13 = *(v12 + 72) * v7;
    (*(v12 + 8))(v10 + v13, v11);
    (*(v20 + 32))(a1, *(v9 + 56) + v13, v11);
    sub_222B923E8(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a1;
    v16 = 0;
    v17 = v11;
  }

  else
  {
    v18 = sub_222C9367C();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a1;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_222B5A9AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_222B8C9DC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_222B93740();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_222B92238(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_222B5AA44@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = v2;
  v5 = sub_222B8CA54(a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_222B93E70();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_222C9367C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata(0);
    v20 = *(v13 - 8);
    sub_222B5B33C(v12 + *(v20 + 72) * v7, a1);
    sub_222B92898(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a1;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a1;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_222B5ABCC@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  v4 = v3;
  v6 = sub_222B8CFCC(a2, a3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_222B9490C();
      v10 = v12;
    }

    sub_222B5B328(*(*(v10 + 48) + 16 * v8), *(*(v10 + 48) + 16 * v8 + 8));
    sub_222B405A0((*(v10 + 56) + 40 * v8), a1);
    sub_222B92BDC(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

unint64_t *sub_222B5AC78(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t *))
{
  v23 = 0;
  v22 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v26 = (v9 - 1) & v9;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 56);
    v16 = (*(a3 + 48) + 16 * v14);
    v17 = v16[1];
    v27[0] = *v16;
    v27[1] = v17;
    v18 = v14;
    v28 = *(v15 + 8 * v14);

    v19 = a4(v27, &v28);

    if (v4)
    {
      return result;
    }

    v9 = v26;
    if (v19)
    {
      *(v22 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_222B5AEA0(v22, a2, v23, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_222B5AEA0(v22, a2, v23, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v26 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_222B5AE10(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_222B5AC78(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_222B5AEA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025368, &qword_222C98640);
  result = sub_222C94F8C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_222C952FC();

    sub_222C9452C();
    result = sub_222C9534C();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_222B5B0E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025388, &qword_222C98328);
  result = sub_222C94F8C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_222C952FC();

    sub_222C9452C();
    result = sub_222C9534C();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_222B5B328(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_222B5B33C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlusClientEventFeatureExtractor.GenericSuggestionMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SuggestionStoreUpdate.source.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SuggestionStoreUpdate.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SuggestionStoreUpdate(0) + 20);
  v4 = sub_222C935EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SuggestionStoreUpdate(uint64_t a1)
{
  result = qword_27D025390;
  if (!qword_27D025390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SuggestionStoreUpdate.init(source:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for SuggestionStoreUpdate(0) + 20);
  v7 = sub_222C935EC();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_222B5B544(uint64_t a1)
{
  result = sub_222C935EC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222B5B634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v37 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for EntityPromptClassification(0);
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v39 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v4;
  v14 = *(a2 + 16);
  if (!v14)
  {
    v28 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v35 = a1;
  v36 = a3;
  v15 = a2 + 32;
  v16 = MEMORY[0x277D84F90];
  v17 = v15;
  v18 = v14;
  do
  {
    sub_222B43E3C(v17, &v52);
    sub_222B405A0(&v52, &v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v45 = 0;
      v44 = 0u;
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
      v40 = 0u;
LABEL_4:
      sub_222B4FCD4(&v40, &qword_27D0253A0, &unk_222C983C8);
      goto LABEL_5;
    }

    if (!*(&v41 + 1))
    {
      goto LABEL_4;
    }

    v48 = v42;
    v49 = v43;
    v50 = v44;
    v51 = v45;
    v46 = v40;
    v47 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_222B49FB8(0, *(v16 + 2) + 1, 1, v16);
    }

    v20 = *(v16 + 2);
    v19 = *(v16 + 3);
    if (v20 >= v19 >> 1)
    {
      v16 = sub_222B49FB8((v19 > 1), v20 + 1, 1, v16);
    }

    *(v16 + 2) = v20 + 1;
    v21 = &v16[88 * v20];
    v22 = v47;
    *(v21 + 2) = v46;
    *(v21 + 3) = v22;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    *(v21 + 14) = v51;
    *(v21 + 5) = v24;
    *(v21 + 6) = v25;
    *(v21 + 4) = v23;
LABEL_5:
    v17 += 40;
    --v18;
  }

  while (v18);
  v26 = (v38 + 56);
  v27 = (v38 + 48);
  v28 = MEMORY[0x277D84F90];
  do
  {
    sub_222B43E3C(v15, &v46);
    sub_222B405A0(&v46, &v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
    v29 = swift_dynamicCast();
    (*v26)(v10, v29 ^ 1u, 1, v11);
    if ((*v27)(v10, 1, v11) == 1)
    {
      v12 = sub_222B4FCD4(v10, &qword_27D025028, &unk_222C96EC0);
    }

    else
    {
      sub_222B5ECF4(v10, v39, type metadata accessor for EntityPromptClassification);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_222B49F90(0, v28[2] + 1, 1, v28);
      }

      v31 = v28[2];
      v30 = v28[3];
      if (v31 >= v30 >> 1)
      {
        v28 = sub_222B49F90((v30 > 1), v31 + 1, 1, v28);
      }

      v28[2] = v31 + 1;
      v12 = sub_222B5ECF4(v39, v28 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v31, type metadata accessor for EntityPromptClassification);
    }

    v15 += 40;
    --v14;
  }

  while (v14);
  a3 = v36;
  a1 = v35;
LABEL_24:
  v32 = MEMORY[0x28223BE20](v12);
  *(&v35 - 4) = &v53;
  *(&v35 - 3) = a1;
  *(&v35 - 2) = v28;
  v33 = (v37)(a3, v32);

  return v33;
}

uint64_t sub_222B5BB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v127 = a4;
  v125 = type metadata accessor for QuickHangupClassification(0);
  MEMORY[0x28223BE20](v125);
  v124 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222C9367C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v126 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v111 - v14;
  v16 = type metadata accessor for EntityPromptClassification(0);
  v128 = *(v16 - 8);
  MEMORY[0x28223BE20](v16 - 8);
  v132 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v111 - v19);
  v21 = *(a2 + 56);
  v22 = *(a2 + 64);
  v129 = a2;
  if (__PAIR128__(0x8000000222CA8780, 0xD000000000000011) == __PAIR128__(v22, v21) || (sub_222C951FC() & 1) != 0)
  {
    sub_222B43E3C(v129, &v138);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B40, qword_222C96770);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253A8, &qword_222C983D8);
    if (swift_dynamicCast())
    {
      v121 = v15;
      v122 = v23;
      v119 = v11;
      v120 = v10;
      v123 = v5;
      sub_222B405A0(v136, v141);
      v24 = v142;
      v25 = v143;
      __swift_project_boxed_opaque_existential_1(v141, v142);
      v26 = (*(v25 + 16))(v24, v25);
      if (v26)
      {
        v27 = v26;
        v28 = v129;
        sub_222B5DA50(&v138, *(v129 + 40), *(v129 + 48), a1);
        v118 = *(&v138 + 1);
        if (!*(&v138 + 1))
        {
          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v54 = sub_222C9431C();
          __swift_project_value_buffer(v54, qword_280FE2340);
          sub_222B45038(v129, &v138);
          v55 = v123;

          v56 = sub_222C942FC();
          v57 = sub_222C94A4C();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            *&v133 = v59;
            *v58 = 136315394;
            *&v136[0] = 91;
            *(&v136[0] + 1) = 0xE100000000000000;
            v135 = *v55;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B58, &qword_222C96818);
            v60 = sub_222C944EC();
            MEMORY[0x223DC9330](v60);

            MEMORY[0x223DC9330](8285, 0xE200000000000000);

            v61 = sub_222B437C0(*&v136[0], *(&v136[0] + 1), &v133);

            *(v58 + 4) = v61;
            *(v58 + 12) = 2080;
            sub_222B45038(&v138, v136);
            v62 = sub_222C944EC();
            v64 = v63;
            sub_222B45094(&v138);
            v65 = sub_222B437C0(v62, v64, &v133);

            *(v58 + 14) = v65;
            _os_log_impl(&dword_222B39000, v56, v57, "%s Failed to extract the contact reference from followup event in classification=%s", v58, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DCA8C0](v59, -1, -1);
            MEMORY[0x223DCA8C0](v58, -1, -1);
          }

          else
          {

            sub_222B45094(&v138);
          }

          v67 = v127;
          v68 = type metadata accessor for PhoneCallGroundTruth(0);
          (*(*(v68 - 8) + 56))(v67, 1, 1, v68);
          return __swift_destroy_boxed_opaque_existential_0Tm(v141);
        }

        v116 = v138;
        v117 = v139;
        sub_222B43E3C(v28, v136);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253B8, &qword_222C983F0);
        if (swift_dynamicCast())
        {
          v29 = *(&v139 + 1);
          v30 = v140;
          __swift_project_boxed_opaque_existential_1(&v138, *(&v139 + 1));
          v31 = (*(v30 + 16))(v29, v30);
          if (v32)
          {
            sub_222B5DA50(&v133, v31, v32, a1);

            v115 = *(&v133 + 1);
            v113 = v133;
            v34 = *(&v134 + 1);
            v33 = v134;
          }

          else
          {
            v34 = 0;
            v33 = 0;
            v115 = 0;
            v113 = 0;
            v133 = 0u;
            v134 = 0u;
          }

          v112 = v33;
          v66 = __swift_destroy_boxed_opaque_existential_0Tm(&v138);
        }

        else
        {
          v140 = 0;
          v138 = 0u;
          v139 = 0u;
          v66 = sub_222B4FCD4(&v138, &qword_27D0253C0, &qword_222C983F8);
          v112 = 0;
          v113 = 0;
          v115 = 0;
          v34 = 0;
        }

        v111 = v34;
        v114 = v27;
        MEMORY[0x28223BE20](v66);
        *(&v111 - 2) = v129;

        v69 = a3;
        v40 = 0;
        sub_222B65F60(sub_222B5EE94, (&v111 - 4), v69);
        v71 = v70;
        v131 = *(v70 + 16);
        if (v131)
        {
          v72 = 0;
          v130 = MEMORY[0x277D84F90];
          v73 = v128;
          while (v72 < *(v71 + 16))
          {
            v5 = ((*(v73 + 80) + 32) & ~*(v73 + 80));
            v74 = v71;
            v75 = *(v73 + 72);
            v76 = sub_222B5EC1C(v5 + v71 + v75 * v72, v20, type metadata accessor for EntityPromptClassification);
            v77 = v20[2];
            v78 = v20[3];
            v79 = v77 == 0x73746361746E6F63 && v78 == 0xE800000000000000;
            if (v79 || (v76 = sub_222C951FC(), (v76) || v77 == 0x6E65697069636572 && v78 == 0xE900000000000074 || (v76 = sub_222C951FC(), (v76)) && (v80 = v20[1], *&v138 = *v20, *(&v138 + 1) = v80, MEMORY[0x28223BE20](v76), *(&v111 - 2) = &v138, (sub_222B42F4C(sub_222B5EEB0, (&v111 - 4), &unk_283607100)))
            {
              sub_222B5ECF4(v20, v132, type metadata accessor for EntityPromptClassification);
              v81 = v130;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v136[0] = v81;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_222B4C330(0, *(v81 + 16) + 1, 1);
                v81 = *&v136[0];
              }

              v84 = *(v81 + 16);
              v83 = *(v81 + 24);
              if (v84 >= v83 >> 1)
              {
                sub_222B4C330((v83 > 1), v84 + 1, 1);
                v81 = *&v136[0];
              }

              *(v81 + 16) = v84 + 1;
              v130 = v81;
              sub_222B5ECF4(v132, v5 + v81 + v84 * v75, type metadata accessor for EntityPromptClassification);
              v73 = v128;
              v71 = v74;
            }

            else
            {
              v71 = v74;
              sub_222B5ED94(v20, type metadata accessor for EntityPromptClassification);
            }

            if (v131 == ++v72)
            {
              goto LABEL_48;
            }
          }

          __break(1u);
          goto LABEL_63;
        }

        v130 = MEMORY[0x277D84F90];
LABEL_48:

        sub_222C9366C();
        v85 = v129;
        sub_222B43E3C(v129, &v138);
        v86 = v124;
        if (swift_dynamicCast())
        {
          sub_222B5ED94(v86, type metadata accessor for QuickHangupClassification);
          v87 = 0;
          v88 = v127;
        }

        else
        {
          v89 = swift_dynamicCast();
          v88 = v127;
          if ((v89 & 1) == 0)
          {

            __swift_destroy_boxed_opaque_existential_0Tm(&v138);
            if (qword_280FDFE78 != -1)
            {
              swift_once();
            }

            v101 = sub_222C9431C();
            __swift_project_value_buffer(v101, qword_280FE2340);
            sub_222B45038(v85, &v138);
            v102 = sub_222C942FC();
            v103 = sub_222C94A4C();
            if (os_log_type_enabled(v102, v103))
            {
              v104 = swift_slowAlloc();
              v105 = swift_slowAlloc();
              *&v133 = v105;
              *v104 = 136315138;
              sub_222B45038(&v138, v136);
              v106 = sub_222C944EC();
              v108 = v107;
              sub_222B45094(&v138);
              v109 = sub_222B437C0(v106, v108, &v133);

              *(v104 + 4) = v109;
              _os_log_impl(&dword_222B39000, v102, v103, "Failed to derive ground truth type from followup event for classification=%s", v104, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v105);
              MEMORY[0x223DCA8C0](v105, -1, -1);
              MEMORY[0x223DCA8C0](v104, -1, -1);

              sub_222B450E8(v116, v118, v117, *(&v117 + 1));
              sub_222B450E8(v113, v115, v112, v111);
            }

            else
            {

              sub_222B450E8(v116, v118, v117, *(&v117 + 1));
              sub_222B450E8(v113, v115, v112, v111);
              sub_222B45094(&v138);
            }

            (*(v119 + 8))(v121, v120);
            v110 = type metadata accessor for PhoneCallGroundTruth(0);
            (*(*(v110 - 8) + 56))(v88, 1, 1, v110);
            return __swift_destroy_boxed_opaque_existential_0Tm(v141);
          }

          v87 = 1;
        }

        v90 = v120;
        __swift_destroy_boxed_opaque_existential_0Tm(&v138);
        sub_222B44BFC(v116, v118, v130, &v138);

        v92 = *(&v138 + 1);
        v91 = v138;
        v94 = *(&v139 + 1);
        v93 = v139;
        v95 = *(v119 + 32);
        v95(v126, v121, v90);
        if (v115)
        {
          sub_222B450E8(v91, v92, v93, v94);
          v93 = v112;
          v91 = v113;
          v92 = v115;
          v94 = v111;
        }

        v95(v88, v126, v90);
        v96 = type metadata accessor for PhoneCallGroundTruth(0);
        *(v88 + v96[5]) = v87;
        *(v88 + v96[6]) = v114;
        v97 = (v88 + v96[7]);
        *v97 = v91;
        v97[1] = v92;
        v97[2] = v93;
        v97[3] = v94;
        v98 = (v88 + v96[8]);
        v99 = v118;
        *v98 = v116;
        v98[1] = v99;
        v100 = *(&v117 + 1);
        v98[2] = v117;
        v98[3] = v100;
        (*(*(v96 - 1) + 56))(v88, 0, 1, v96);
        return __swift_destroy_boxed_opaque_existential_0Tm(v141);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v141);
      v5 = v123;
    }

    else
    {
      v137 = 0;
      memset(v136, 0, sizeof(v136));
      sub_222B4FCD4(v136, &qword_27D0253B0, &unk_222C983E0);
    }

    v40 = v129;
    if (qword_280FDFE78 == -1)
    {
LABEL_15:
      v41 = sub_222C9431C();
      __swift_project_value_buffer(v41, qword_280FE2340);
      sub_222B45038(v40, &v138);

      v42 = sub_222C942FC();
      v43 = sub_222C94A4C();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v141[0] = v45;
        *v44 = 136315394;
        *&v136[0] = 91;
        *(&v136[0] + 1) = 0xE100000000000000;
        *&v133 = *v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B58, &qword_222C96818);
        v46 = sub_222C944EC();
        MEMORY[0x223DC9330](v46);

        MEMORY[0x223DC9330](8285, 0xE200000000000000);
        v47 = sub_222B437C0(*&v136[0], *(&v136[0] + 1), v141);

        *(v44 + 4) = v47;
        *(v44 + 12) = 2080;
        sub_222B45038(&v138, v136);
        v48 = sub_222C944EC();
        v50 = v49;
        sub_222B45094(&v138);
        v51 = sub_222B437C0(v48, v50, v141);

        *(v44 + 14) = v51;
        _os_log_impl(&dword_222B39000, v42, v43, "%s Classification that supports followup is missing a USO person associated with the query=%s", v44, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v45, -1, -1);
        MEMORY[0x223DCA8C0](v44, -1, -1);
      }

      else
      {

        sub_222B45094(&v138);
      }

      v52 = v127;
      v53 = type metadata accessor for PhoneCallGroundTruth(0);
      return (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
    }

LABEL_63:
    swift_once();
    goto LABEL_15;
  }

  v35 = type metadata accessor for PhoneCallGroundTruth(0);
  v36 = *(*(v35 - 8) + 56);
  v37 = v35;
  v38 = v127;

  return v36(v38, 1, 1, v37);
}

uint64_t sub_222B5CB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_222C9367C();
  v117 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v116 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v118 = &v105 - v13;
  v14 = type metadata accessor for EntityPromptClassification(0);
  v119 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v123 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v105 - v17);
  v19 = *(a2 + 56);
  v20 = *(a2 + 64);
  v120 = a2;
  if (__PAIR128__(0x8000000222CA87A0, 0xD000000000000013) == __PAIR128__(v20, v19) || (sub_222C951FC() & 1) != 0)
  {
    sub_222B43E3C(v120, &v129);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B40, qword_222C96770);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253A8, &qword_222C983D8);
    v115 = v21;
    if (swift_dynamicCast())
    {
      v113 = v10;
      v114 = v5;
      sub_222B405A0(v127, v132);
      v22 = v133;
      v23 = v134;
      __swift_project_boxed_opaque_existential_1(v132, v133);
      v24 = (*(v23 + 16))(v22, v23);
      if (v24)
      {
        v25 = v24;
        v26 = v120;
        v27 = v114;
        sub_222B5DF14(*(v120 + 40), *(v120 + 48), a1, &v129);
        v28 = *(&v129 + 1);
        if (*(&v129 + 1))
        {
          v110 = v129;
          v111 = v130;
          sub_222B43E3C(v26, v127);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253B8, &qword_222C983F0);
          v29 = swift_dynamicCast();
          v108 = v25;
          v112 = v28;
          if (v29)
          {
            v30 = *(&v130 + 1);
            v31 = v131;
            __swift_project_boxed_opaque_existential_1(&v129, *(&v130 + 1));
            v32 = (*(v31 + 16))(v30, v31);
            if (v33)
            {
              sub_222B5DF14(v32, v33, a1, &v124);

              v107 = v124;
              v105 = *(&v125 + 1);
              v106 = v125;
            }

            else
            {
              v105 = 0;
              v106 = 0;
              v107 = 0uLL;
              v124 = 0u;
              v125 = 0u;
            }

            v62 = v119;
            v61 = __swift_destroy_boxed_opaque_existential_0Tm(&v129);
          }

          else
          {
            v131 = 0;
            v129 = 0u;
            v130 = 0u;
            v61 = sub_222B4FCD4(&v129, &qword_27D0253C0, &qword_222C983F8);
            v107 = 0uLL;
            v105 = 0;
            v106 = 0;
            v62 = v119;
          }

          v109 = a4;
          MEMORY[0x28223BE20](v61);
          *(&v105 - 2) = v120;

          v64 = a3;
          v37 = 0;
          sub_222B65F60(sub_222B5EB84, (&v105 - 4), v64);
          v66 = v65;
          v122 = *(v65 + 16);
          if (v122)
          {
            v5 = 0;
            a4 = MEMORY[0x277D84F90];
            v121 = v65;
            while (v5 < *(v66 + 16))
            {
              v67 = (*(v62 + 80) + 32) & ~*(v62 + 80);
              v68 = *(v62 + 72);
              v69 = sub_222B5EC1C(v66 + v67 + v68 * v5, v18, type metadata accessor for EntityPromptClassification);
              v70 = v18[2];
              v71 = v18[3];
              v72 = v70 == 0x73746361746E6F63 && v71 == 0xE800000000000000;
              if (v72 || (v69 = sub_222C951FC(), (v69) || v70 == 0x6E65697069636572 && v71 == 0xE900000000000074 || (v69 = sub_222C951FC(), (v69)) && (v73 = v18[1], *&v129 = *v18, *(&v129 + 1) = v73, MEMORY[0x28223BE20](v69), *(&v105 - 2) = &v129, (sub_222B42F4C(sub_222B5EBA4, (&v105 - 4), &unk_283607100)))
              {
                sub_222B5ECF4(v18, v123, type metadata accessor for EntityPromptClassification);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v127[0] = a4;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_222B4C330(0, *(a4 + 16) + 1, 1);
                  a4 = *&v127[0];
                }

                v76 = *(a4 + 16);
                v75 = *(a4 + 24);
                if (v76 >= v75 >> 1)
                {
                  sub_222B4C330((v75 > 1), v76 + 1, 1);
                  a4 = *&v127[0];
                }

                *(a4 + 16) = v76 + 1;
                sub_222B5ECF4(v123, a4 + v67 + v76 * v68, type metadata accessor for EntityPromptClassification);
                v62 = v119;
                v66 = v121;
              }

              else
              {
                v66 = v121;
                sub_222B5ED94(v18, type metadata accessor for EntityPromptClassification);
              }

              if (v122 == ++v5)
              {
                goto LABEL_48;
              }
            }

            __break(1u);
            goto LABEL_61;
          }

          a4 = MEMORY[0x277D84F90];
LABEL_48:

          v77 = v118;
          sub_222C9366C();
          v78 = v120;
          sub_222B43E3C(v120, &v129);
          if (swift_dynamicCast())
          {

            sub_222B44C10(v110, v112, a4, &v129);

            v79 = v129;
            v81 = *(&v130 + 1);
            v80 = v130;
            v82 = v116;
            v83 = *(v117 + 32);
            v83(v116, v77, v113);
            v84 = *(&v107 + 1);
            if (*(&v107 + 1))
            {
              sub_222B450E8(v79, *(&v79 + 1), v80, v81);
              v85 = v109;
              v80 = v106;
              v86 = v107;
              v81 = v105;
            }

            else
            {
              v84 = *(&v79 + 1);
              v86 = v79;
              v85 = v109;
            }

            v83(v85, v82, v113);
            v100 = type metadata accessor for MessagesGroundTruth(0);
            *(v85 + v100[5]) = 0;
            *(v85 + v100[6]) = v108;
            v101 = (v85 + v100[7]);
            *v101 = v86;
            v101[1] = v84;
            v101[2] = v80;
            v101[3] = v81;
            v102 = (v85 + v100[8]);
            v103 = v112;
            *v102 = v110;
            v102[1] = v103;
            v104 = *(&v111 + 1);
            v102[2] = v111;
            v102[3] = v104;
            (*(*(v100 - 1) + 56))(v85, 0, 1, v100);
          }

          else
          {

            if (qword_280FDFE78 != -1)
            {
              swift_once();
            }

            v87 = sub_222C9431C();
            __swift_project_value_buffer(v87, qword_280FE2340);
            sub_222B45038(v78, &v129);
            v88 = sub_222C942FC();
            v89 = sub_222C94A4C();
            v90 = os_log_type_enabled(v88, v89);
            v91 = v109;
            v92 = v107;
            if (v90)
            {
              v93 = swift_slowAlloc();
              v94 = swift_slowAlloc();
              *&v124 = v94;
              *v93 = 136315138;
              sub_222B45038(&v129, v127);
              v95 = sub_222C944EC();
              v97 = v96;
              sub_222B45094(&v129);
              v98 = sub_222B437C0(v95, v97, &v124);

              *(v93 + 4) = v98;
              _os_log_impl(&dword_222B39000, v88, v89, "Failed to derive ground truth type from followup event for classification=%s", v93, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v94);
              MEMORY[0x223DCA8C0](v94, -1, -1);
              MEMORY[0x223DCA8C0](v93, -1, -1);

              sub_222B450E8(v110, v112, v111, *(&v111 + 1));
              sub_222B450E8(v92, *(&v92 + 1), v106, v105);
            }

            else
            {

              sub_222B450E8(v110, v112, v111, *(&v111 + 1));
              sub_222B450E8(v92, *(&v92 + 1), v106, v105);

              sub_222B45094(&v129);
            }

            (*(v117 + 8))(v118, v113);
            v99 = type metadata accessor for MessagesGroundTruth(0);
            (*(*(v99 - 8) + 56))(v91, 1, 1, v99);
          }
        }

        else
        {
          if (qword_280FDFE78 != -1)
          {
            swift_once();
          }

          v50 = sub_222C9431C();
          __swift_project_value_buffer(v50, qword_280FE2340);
          sub_222B45038(v120, &v129);

          v51 = sub_222C942FC();
          v52 = sub_222C94A4C();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            *&v124 = v54;
            *v53 = 136315394;
            *&v127[0] = 91;
            *(&v127[0] + 1) = 0xE100000000000000;
            v126 = *v27;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B50, &qword_222C96810);
            v55 = sub_222C944EC();
            MEMORY[0x223DC9330](v55);

            MEMORY[0x223DC9330](8285, 0xE200000000000000);

            v56 = sub_222B437C0(*&v127[0], *(&v127[0] + 1), &v124);

            *(v53 + 4) = v56;
            *(v53 + 12) = 2080;
            sub_222B45038(&v129, v127);
            v57 = sub_222C944EC();
            v59 = v58;
            sub_222B45094(&v129);
            v60 = sub_222B437C0(v57, v59, &v124);

            *(v53 + 14) = v60;
            _os_log_impl(&dword_222B39000, v51, v52, "%s Failed to extract the contact reference from followup event in classification=%s", v53, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223DCA8C0](v54, -1, -1);
            MEMORY[0x223DCA8C0](v53, -1, -1);
          }

          else
          {

            sub_222B45094(&v129);
          }

          v63 = type metadata accessor for MessagesGroundTruth(0);
          (*(*(v63 - 8) + 56))(a4, 1, 1, v63);
        }

        return __swift_destroy_boxed_opaque_existential_0Tm(v132);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v132);
      v5 = v114;
    }

    else
    {
      v128 = 0;
      memset(v127, 0, sizeof(v127));
      sub_222B4FCD4(v127, &qword_27D0253B0, &unk_222C983E0);
    }

    v37 = v120;
    if (qword_280FDFE78 == -1)
    {
LABEL_15:
      v38 = sub_222C9431C();
      __swift_project_value_buffer(v38, qword_280FE2340);
      sub_222B45038(v37, &v129);

      v39 = sub_222C942FC();
      v40 = sub_222C94A4C();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v132[0] = v42;
        *v41 = 136315394;
        *&v127[0] = 91;
        *(&v127[0] + 1) = 0xE100000000000000;
        *&v124 = *v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B50, &qword_222C96810);
        v43 = sub_222C944EC();
        MEMORY[0x223DC9330](v43);

        MEMORY[0x223DC9330](8285, 0xE200000000000000);
        v44 = sub_222B437C0(*&v127[0], *(&v127[0] + 1), v132);

        *(v41 + 4) = v44;
        *(v41 + 12) = 2080;
        sub_222B45038(&v129, v127);
        v45 = sub_222C944EC();
        v47 = v46;
        sub_222B45094(&v129);
        v48 = sub_222B437C0(v45, v47, v132);

        *(v41 + 14) = v48;
        _os_log_impl(&dword_222B39000, v39, v40, "%s Classification that supports followup is missing a USO person associated with the query=%s", v41, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v42, -1, -1);
        MEMORY[0x223DCA8C0](v41, -1, -1);
      }

      else
      {

        sub_222B45094(&v129);
      }

      v49 = type metadata accessor for MessagesGroundTruth(0);
      return (*(*(v49 - 8) + 56))(a4, 1, 1, v49);
    }

LABEL_61:
    swift_once();
    goto LABEL_15;
  }

  v34 = type metadata accessor for MessagesGroundTruth(0);
  v35 = *(*(v34 - 8) + 56);

  return v35(a4, 1, 1, v34);
}

double sub_222B5DA50@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  Array<A>.findEvent(eventId:)(a2, a3, a4, &v32);
  v5 = v33;
  if (v33)
  {
    v6 = v32;
    v8 = v34;
    v7 = v35;
    v9 = v36;

    v11 = sub_222B41660(v10);

    if (v11)
    {
      v12 = *(v11 + 16);

      if (v12 == 1)
      {
        v32 = v6;
        v33 = v5;
        v34 = v8;
        v35 = v7;
        v36 = v9;
        extractContactReference(event:)(&v32, a1);
        sub_222B5EE44(v6, v5, v8, v7, v9);
        return result;
      }

      sub_222B5EE44(v6, v5, v8, v7, v9);
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v23 = sub_222C9431C();
      __swift_project_value_buffer(v23, qword_280FE2340);

      v24 = sub_222C942FC();
      v25 = sub_222C94A4C();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 136315394;
        v31 = v27;
        v32 = 91;
        v33 = 0xE100000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B58, &qword_222C96818);
        v28 = sub_222C944EC();
        MEMORY[0x223DC9330](v28);

        MEMORY[0x223DC9330](8285, 0xE200000000000000);
        v29 = sub_222B437C0(v32, v33, &v31);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2048;
        *(v26 + 14) = v12;
        _os_log_impl(&dword_222B39000, v24, v25, "%s Event does not have a single contact (has %ld)", v26, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        MEMORY[0x223DCA8C0](v27, -1, -1);
        MEMORY[0x223DCA8C0](v26, -1, -1);
      }
    }

    else
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v14 = sub_222C9431C();
      __swift_project_value_buffer(v14, qword_280FE2340);

      sub_222B5EDF4(v6, v5, v8, v7, v9);
      v15 = sub_222C942FC();
      v16 = sub_222C94A4C();

      sub_222B5EE44(v6, v5, v8, v7, v9);
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v17 = 136315394;
        v31 = v30;
        v32 = 91;
        v33 = 0xE100000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B58, &qword_222C96818);
        v18 = sub_222C944EC();
        MEMORY[0x223DC9330](v18);

        MEMORY[0x223DC9330](8285, 0xE200000000000000);
        v19 = sub_222B437C0(v32, v33, &v31);

        *(v17 + 4) = v19;
        *(v17 + 12) = 2080;
        v32 = v6;
        v33 = v5;
        v34 = v8;
        v35 = v7;
        v36 = v9;
        v20 = sub_222C944EC();
        v22 = sub_222B437C0(v20, v21, &v31);

        *(v17 + 14) = v22;
        _os_log_impl(&dword_222B39000, v15, v16, "%s Failed to get contact count from event=%s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v30, -1, -1);
        MEMORY[0x223DCA8C0](v17, -1, -1);
      }

      else
      {
        sub_222B5EE44(v6, v5, v8, v7, v9);
      }
    }
  }

  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_222B5DF14(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v50 = a4;
  v56 = type metadata accessor for FeaturisedTurn(0);
  v10 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v51 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v12 - 8);
  v55 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v54 = v49 - v15;
  v49[0] = v10;
  v52 = (v10 + 48);
  v53 = (v10 + 56);
  v58 = a3;

  v57 = 0;
  while (1)
  {
    v20 = v57;
    v22 = *(v58 + 16);
    if (v57 == v22)
    {
      v23 = 1;
      v19 = v55;
      v24 = v56;
      v18 = v54;
      goto LABEL_15;
    }

    v19 = v55;
    v24 = v56;
    v18 = v54;
    if (v57 >= v22)
    {
      break;
    }

    sub_222B5EC1C(v58 + ((*(v49[0] + 80) + 32) & ~*(v49[0] + 80)) + *(v49[0] + 72) * v57, v54, type metadata accessor for FeaturisedTurn);
    v23 = 0;
    ++v20;
LABEL_15:
    (*v53)(v18, v23, 1, v24);
    sub_222B5EC84(v18, v19);
    if ((*v52)(v19, 1, v24) == 1)
    {

LABEL_30:
      v47 = 0uLL;
      v48 = v50;
      goto LABEL_33;
    }

    v57 = v20;
    v25 = v19;
    v19 = v51;
    sub_222B5ECF4(v25, v51, type metadata accessor for FeaturisedTurn);
    v18 = *(v19 + *(v24 + 28));

    sub_222B5ED94(v19, type metadata accessor for FeaturisedTurn);

    v26 = v18;
    if (v18)
    {
      v6 = (v18 + 64);
      v16 = -1;
      while (1)
      {
        ++v16;
        v17 = *(v26 + 16);
        if (v16 == v17)
        {
          break;
        }

        if (v16 >= v17)
        {
          __break(1u);
          goto LABEL_36;
        }

        v5 = *(v6 - 4);
        v18 = *(v6 - 3);
        v20 = *(v6 - 2);
        v19 = *(v6 - 1);
        v4 = *v6;
        if (v5 == a1 && v18 == a2)
        {
          v5 = a1;
LABEL_19:

          v27 = sub_222B41660(v20);
          v6 = v49[1];
          if (v27)
          {
            v28 = *(v27 + 16);

            if (v28 == 1)
            {
              v59 = v5;
              v60 = v18;
              v61 = v20;
              v62 = v19;
              v63 = v4;
              extractContactReference(event:)(&v59, v50);

              return;
            }

            if (qword_280FDFE78 != -1)
            {
              swift_once();
            }

            v40 = sub_222C9431C();
            __swift_project_value_buffer(v40, qword_280FE2340);

            v41 = sub_222C942FC();
            v42 = sub_222C94A4C();

            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              v44 = swift_slowAlloc();
              *v43 = 136315394;
              v59 = 91;
              v60 = 0xE100000000000000;
              v64 = *v6;
              v65 = v44;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B50, &qword_222C96810);
              v45 = sub_222C944EC();
              MEMORY[0x223DC9330](v45);

              MEMORY[0x223DC9330](8285, 0xE200000000000000);
              v46 = sub_222B437C0(v59, v60, &v65);

              *(v43 + 4) = v46;
              *(v43 + 12) = 2048;
              *(v43 + 14) = v28;
              _os_log_impl(&dword_222B39000, v41, v42, "%s Event does not have a single contact (has %ld)", v43, 0x16u);
              __swift_destroy_boxed_opaque_existential_0Tm(v44);
              MEMORY[0x223DCA8C0](v44, -1, -1);
              MEMORY[0x223DCA8C0](v43, -1, -1);
            }

            goto LABEL_30;
          }

          if (qword_280FDFE78 != -1)
          {
            goto LABEL_37;
          }

          goto LABEL_23;
        }

        v6 += 5;
        if (sub_222C951FC())
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_36:
  __break(1u);
LABEL_37:
  swift_once();
LABEL_23:
  v29 = sub_222C9431C();
  __swift_project_value_buffer(v29, qword_280FE2340);

  v30 = sub_222C942FC();
  v31 = sub_222C94A4C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v58 = v33;
    *v32 = 136315394;
    v59 = 91;
    v60 = 0xE100000000000000;
    v64 = *v6;
    v65 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B50, &qword_222C96810);
    v34 = sub_222C944EC();
    MEMORY[0x223DC9330](v34);

    MEMORY[0x223DC9330](8285, 0xE200000000000000);
    v35 = sub_222B437C0(v59, v60, &v65);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2080;
    v59 = v5;
    v60 = v18;
    v61 = v20;
    v62 = v19;
    v63 = v4;
    v36 = sub_222C944EC();
    v38 = sub_222B437C0(v36, v37, &v65);

    *(v32 + 14) = v38;
    _os_log_impl(&dword_222B39000, v30, v31, "%s Failed to get contact count from event=%s", v32, 0x16u);
    v39 = v58;
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v39, -1, -1);
    MEMORY[0x223DCA8C0](v32, -1, -1);
  }

  else
  {
  }

  v48 = v50;
  v47 = 0uLL;
LABEL_33:
  *v48 = v47;
  v48[1] = v47;
}

uint64_t sub_222B5E698(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = sub_222C9367C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025290, &unk_222C97C30);
  MEMORY[0x28223BE20](v32);
  v34 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v7 - 8);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v15 = type metadata accessor for EntityPromptClassification(0);
  v16 = *(v4 + 16);
  v16(v14, a1 + *(v15 + 44), v3);
  v17 = *(v4 + 56);
  v18 = 1;
  v17(v14, 0, 1, v3);
  v19 = *(v33 + 72);
  if (*(v19 + 16))
  {
    v16(v11, v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);
    v18 = 0;
  }

  v17(v11, v18, 1, v3);
  v20 = *(v32 + 48);
  v21 = v34;
  sub_222B5551C(v14, v34);
  sub_222B5551C(v11, v21 + v20);
  v22 = *(v4 + 48);
  if (v22(v21, 1, v3) != 1)
  {
    v24 = v31;
    sub_222B5551C(v21, v31);
    if (v22(v21 + v20, 1, v3) != 1)
    {
      v25 = v21 + v20;
      v26 = v30;
      (*(v4 + 32))(v30, v25, v3);
      sub_222B5EBC4();
      v23 = sub_222C9447C();
      v27 = *(v4 + 8);
      v27(v26, v3);
      sub_222B4FCD4(v11, &unk_27D026290, &qword_222C96B40);
      sub_222B4FCD4(v14, &unk_27D026290, &qword_222C96B40);
      v27(v31, v3);
      sub_222B4FCD4(v21, &unk_27D026290, &qword_222C96B40);
      return v23 & 1;
    }

    sub_222B4FCD4(v11, &unk_27D026290, &qword_222C96B40);
    sub_222B4FCD4(v14, &unk_27D026290, &qword_222C96B40);
    (*(v4 + 8))(v24, v3);
    goto LABEL_8;
  }

  sub_222B4FCD4(v11, &unk_27D026290, &qword_222C96B40);
  v21 = v34;
  sub_222B4FCD4(v14, &unk_27D026290, &qword_222C96B40);
  if (v22(v21 + v20, 1, v3) != 1)
  {
LABEL_8:
    sub_222B4FCD4(v21, &qword_27D025290, &unk_222C97C30);
    v23 = 0;
    return v23 & 1;
  }

  sub_222B4FCD4(v21, &unk_27D026290, &qword_222C96B40);
  v23 = 1;
  return v23 & 1;
}

unint64_t sub_222B5EBC4()
{
  result = qword_280FE02A0;
  if (!qword_280FE02A0)
  {
    sub_222C9367C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE02A0);
  }

  return result;
}

uint64_t sub_222B5EC1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B5EC84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B5ECF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B5ED94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_222B5EDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

void sub_222B5EE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t PartialRepetitionGroundTruthGenerator.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PartialRepetitionGroundTruthGenerator.init(_:)(a1, v3, v4, v5);
  return v2;
}

char *PartialRepetitionGroundTruthGenerator.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for PartialRepetitionGroundTruthGenerator(0, v6, *(*v4 + 88), a4);
  *(v4 + 2) = static InferenceLogUtils.loggerTag<A>(_:)(v7, v7);
  *(v4 + 3) = v8;
  (*(*(v6 - 8) + 32))(&v4[*(*v4 + 104)], a1, v6);
  return v4;
}

uint64_t sub_222B5EFDC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v91) = a3;
  v92 = a2;
  v6 = *v3;
  v7 = v6[11];
  v8 = v6[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v81 = sub_222C94B5C();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v84 = &v75 - v10;
  v87 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v86 = &v75 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v83 = sub_222C94B5C();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v88 = &v75 - v14;
  v90 = v13;
  v89 = *(v13 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v75 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025020, &unk_222C98410);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v75 - v19;
  v21 = type metadata accessor for TurnPairRestatementClassification(0);
  v93 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v7 + 160);
  v94 = v6[13];
  v85 = a1;
  v26 = a1;
  v27 = v92;
  if ((v25(v26, v92, v91, v8, v7, v22) & 1) == 0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v37 = sub_222C9431C();
    __swift_project_value_buffer(v37, qword_280FE2340);

    v38 = sub_222C942FC();
    v39 = sub_222C94A3C();

    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_29;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v96[0] = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_222B437C0(v4[2], v4[3], v96);
    v42 = "%s Validation not passed. Skipping partial repetition ground truth generation";
LABEL_28:
    _os_log_impl(&dword_222B39000, v38, v39, v42, v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    MEMORY[0x223DCA8C0](v41, -1, -1);
    MEMORY[0x223DCA8C0](v40, -1, -1);
LABEL_29:

    swift_getAssociatedTypeWitness();
    return sub_222C9477C();
  }

  v76 = AssociatedTypeWitness;
  v77 = v17;
  v78 = v4;
  v79 = v7;
  v91 = v8;
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = v27 + 32;
    v30 = v94;
    v31 = (v93 + 56);
    v32 = (v93 + 48);
    v33 = MEMORY[0x277D84F90];
    do
    {
      sub_222B43E3C(v29, v96);
      sub_222B405A0(v96, v95);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v34 = swift_dynamicCast();
      (*v31)(v20, v34 ^ 1u, 1, v21);
      if ((*v32)(v20, 1, v21) == 1)
      {
        sub_222B4FCD4(v20, &qword_27D025020, &unk_222C98410);
      }

      else
      {
        sub_222B617D8(v20, v24, type metadata accessor for TurnPairRestatementClassification);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_222B4A2A0(0, v33[2] + 1, 1, v33);
        }

        v36 = v33[2];
        v35 = v33[3];
        if (v36 >= v35 >> 1)
        {
          v33 = sub_222B4A2A0((v35 > 1), v36 + 1, 1, v33);
        }

        v33[2] = v36 + 1;
        sub_222B617D8(v24, v33 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v36, type metadata accessor for TurnPairRestatementClassification);
        v30 = v94;
      }

      v29 += 40;
      --v28;
    }

    while (v28);
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
    v30 = v94;
  }

  if (!v33[2])
  {

    v54 = v78;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v55 = sub_222C9431C();
    __swift_project_value_buffer(v55, qword_280FE2340);

    v38 = sub_222C942FC();
    v39 = sub_222C94A3C();

    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_29;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v96[0] = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_222B437C0(v54[2], v54[3], v96);
    v42 = "%s No restatement classifications. Skipping partial repetition ground truth generation";
    goto LABEL_28;
  }

  v43 = v91;
  *&v96[0] = v92;
  v44 = v78;
  v45 = v79;
  sub_222B5FDA8(v30 + v78, v91, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025030, &qword_222C98420);
  sub_222B61940(&qword_280FDB7E8, &qword_27D025030, &qword_222C98420, MEMORY[0x277D83970]);
  v46 = v90;
  v47 = sub_222C9466C();
  v93 = 0;

  *&v96[0] = v47;
  sub_222C947FC();
  swift_getWitnessTable();
  v48 = v88;
  sub_222C949CC();
  v49 = v89;
  if ((*(v89 + 48))(v48, 1, v46) == 1)
  {

    (*(v82 + 8))(v48, v83);

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v50 = sub_222C9431C();
    __swift_project_value_buffer(v50, qword_280FE2340);

    v38 = sub_222C942FC();
    v51 = sub_222C94A3C();

    if (os_log_type_enabled(v38, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v96[0] = v53;
      *v52 = 136315138;
      *(v52 + 4) = sub_222B437C0(v44[2], v44[3], v96);
      _os_log_impl(&dword_222B39000, v38, v51, "%s No successful event associated with session. Skipping partial repetition ground truth generation", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      MEMORY[0x223DCA8C0](v53, -1, -1);
      MEMORY[0x223DCA8C0](v52, -1, -1);
    }

    goto LABEL_29;
  }

  v57 = v77;
  (*(v49 + 32))(v77, v48, v46);

  v58 = *(v45 + 128);
  v59 = v84;
  v60 = v45;
  v61 = v85;
  v58(v85, v57, v43, v60);
  v62 = v87;
  v63 = v76;
  if ((*(v87 + 48))(v59, 1, v76) == 1)
  {

    (*(v80 + 8))(v59, v81);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v64 = sub_222C9431C();
    __swift_project_value_buffer(v64, qword_280FE2340);

    v65 = sub_222C942FC();
    v66 = sub_222C94A3C();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v96[0] = v68;
      *v67 = 136315138;
      *(v67 + 4) = sub_222B437C0(v44[2], v44[3], v96);
      _os_log_impl(&dword_222B39000, v65, v66, "%s Failed to extract successClassification entity. Skipping partial repetition ground truth generation", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
      MEMORY[0x223DCA8C0](v68, -1, -1);
      MEMORY[0x223DCA8C0](v67, -1, -1);
    }

    swift_getAssociatedTypeWitness();
    v69 = sub_222C9477C();
    (*(v49 + 8))(v77, v46);
    return v69;
  }

  else
  {
    (*(v62 + 32))(v86, v59, v63);
    v70 = sub_222B61240(v61, v33);
    v92 = v70;

    v94 = &v75;
    *&v96[0] = v70;
    MEMORY[0x28223BE20](v71);
    *(&v75 - 4) = v44;
    *(&v75 - 3) = v61;
    v72 = v86;
    v73 = v77;
    *(&v75 - 2) = v86;
    *(&v75 - 1) = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253D0, &unk_222C98428);
    swift_getAssociatedTypeWitness();
    sub_222B61940(&qword_27D0253D8, &qword_27D0253D0, &unk_222C98428, MEMORY[0x277D83970]);
    v74 = sub_222C9466C();

    (*(v87 + 8))(v72, v76);
    (*(v49 + 8))(v73, v90);
    return v74;
  }
}

uint64_t (*sub_222B5FDA8(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_222B62284;
}

uint64_t sub_222B5FEC8@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v105 = a4;
  v108 = a3;
  v121 = a5;
  v9 = *v5;
  v10 = type metadata accessor for FeaturisedSession(0);
  MEMORY[0x28223BE20](v10 - 8);
  v103 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_222C9367C();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v104 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 88);
  v14 = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v114 = sub_222C94B5C();
  v102 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v92 - v15;
  v16 = swift_getAssociatedTypeWitness();
  *&v112 = sub_222C94B5C();
  *&v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  *&v117 = &v92 - v17;
  v119 = v16;
  v120 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v118 = &v92 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v92 - v24;
  v26 = type metadata accessor for FeaturisedTurn(0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v100 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v99 = &v92 - v30;
  MEMORY[0x28223BE20](v31);
  v115 = &v92 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v92 - v34;
  v101 = a1;
  v36 = *a1;
  v116 = a2;
  v122 = a2;
  v109 = v36;
  sub_222B41144(sub_222B617A8, v36, v25);
  v37 = *(v27 + 48);
  *&v110 = v26;
  if (v37(v25, 1, v26) == 1)
  {
    sub_222B4FCD4(v25, &qword_27D0253C8, &unk_222C98400);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v38 = sub_222C9431C();
    __swift_project_value_buffer(v38, qword_280FE2340);

    v39 = sub_222C942FC();
    v40 = sub_222C94A4C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v131 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_222B437C0(v6[2], v6[3], &v131);
      _os_log_impl(&dword_222B39000, v39, v40, "%s First turn missing. Partial repetion ground truth not generated", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x223DCA8C0](v42, -1, -1);
      MEMORY[0x223DCA8C0](v41, -1, -1);
    }

    goto LABEL_19;
  }

  v97 = v22;
  sub_222B617D8(v25, v35, type metadata accessor for FeaturisedTurn);
  v43 = *(*v6 + 104);
  if (((*(v13 + 104))(v35, v14, v13) & 1) == 0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v55 = sub_222C9431C();
    __swift_project_value_buffer(v55, qword_280FE2340);

    v56 = sub_222C942FC();
    v57 = sub_222C94A4C();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v131 = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_222B437C0(v6[2], v6[3], &v131);
      _os_log_impl(&dword_222B39000, v56, v57, "%s First turn failed isInitiatingSiriTurn test. Partial repetion ground truth not generated", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      MEMORY[0x223DCA8C0](v59, -1, -1);
      MEMORY[0x223DCA8C0](v58, -1, -1);
    }

    sub_222B62140(v35, type metadata accessor for FeaturisedTurn);
    goto LABEL_19;
  }

  v44 = *(v13 + 144);
  v94 = v6;
  v95 = v14;
  v96 = v13;
  v45 = v13;
  v46 = v117;
  v44(v35, v14, v45);
  v47 = v120;
  v48 = v119;
  if ((*(v120 + 48))(v46, 1, v119) == 1)
  {
    (*(v111 + 8))(v46, v112);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v49 = sub_222C9431C();
    __swift_project_value_buffer(v49, qword_280FE2340);
    v50 = v94;

    v51 = sub_222C942FC();
    v52 = sub_222C94A4C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v131 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_222B437C0(v50[2], v50[3], &v131);
      _os_log_impl(&dword_222B39000, v51, v52, "%s extractUsoEntity failed for first turn. Partial repetion ground truth not generated", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x223DCA8C0](v54, -1, -1);
      MEMORY[0x223DCA8C0](v53, -1, -1);
    }

LABEL_26:
    sub_222B62140(v35, type metadata accessor for FeaturisedTurn);
LABEL_19:
    v60 = swift_getAssociatedTypeWitness();
    return (*(*(v60 - 8) + 56))(v121, 1, 1, v60);
  }

  v93 = v43;
  v62 = (*(v47 + 32))(v118, v46, v48);
  MEMORY[0x28223BE20](v62);
  *(&v92 - 2) = v116;
  v63 = v97;
  sub_222B41144(sub_222B61840, v109, v97);
  v64 = v110;
  if (v37(v63, 1, v110) == 1)
  {
    sub_222B4FCD4(v63, &qword_27D0253C8, &unk_222C98400);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v65 = sub_222C9431C();
    __swift_project_value_buffer(v65, qword_280FE2340);
    v66 = v94;

    v67 = sub_222C942FC();
    v68 = sub_222C94A4C();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&v131 = v70;
      *v69 = 136315138;
      *(v69 + 4) = sub_222B437C0(v66[2], v66[3], &v131);
      _os_log_impl(&dword_222B39000, v67, v68, "%s Second turn missing. Partial repetion ground truth not generated", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      MEMORY[0x223DCA8C0](v70, -1, -1);
      MEMORY[0x223DCA8C0](v69, -1, -1);
    }

    (*(v120 + 8))(v118, v48);
    goto LABEL_26;
  }

  sub_222B617D8(v63, v115, type metadata accessor for FeaturisedTurn);
  v71 = *&v35[*(v64 + 28)];
  v72 = v93;
  v73 = v94;
  v74 = v95;
  v75 = v96;
  v76 = sub_222B61000(v94 + v93, v95, v96);
  *&v126 = v71;
  *(&v126 + 1) = v76;
  *&v127 = v77;
  sub_222B61120(v73 + v72, v74, v75);
  v78 = v35;
  v92 = v35;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253E0, &qword_222C984B8);
  sub_222B61940(&qword_27D0253E8, &qword_27D0253E0, &qword_222C984B8, MEMORY[0x277D84428]);
  sub_222C94FCC();

  v117 = v131;
  v112 = v132;
  v126 = v131;
  v127 = v132;
  v111 = v133;
  v110 = v134;
  v128 = v133;
  v129 = v134;
  v130 = v135;
  sub_222B61940(&qword_27D0253F0, &qword_27D0253E0, &qword_222C984B8, MEMORY[0x277D84418]);
  sub_222C94E7C();
  swift_getWitnessTable();
  sub_222C94F3C();
  swift_getWitnessTable();
  sub_222C94E7C();
  v125 = sub_222B61890();
  WitnessTable = swift_getWitnessTable();
  v123 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_222C949CC();

  v79 = v104;
  sub_222C9366C();
  *&v117 = type metadata accessor for PartialRepetitionMetadata(0);
  v80 = v103;
  sub_222B620D8(v101, v103, type metadata accessor for FeaturisedSession);
  v81 = *&v116[*(type metadata accessor for TurnPairRestatementClassification(0) + 24)];
  v82 = v99;
  sub_222B620D8(v78, v99, type metadata accessor for FeaturisedTurn);
  v83 = v100;
  sub_222B620D8(v115, v100, type metadata accessor for FeaturisedTurn);
  v84 = v96;
  v85 = v95;
  v86 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v88 = sub_222BD7DDC(v80, v105, v81, v82, v83, v117, v86, AssociatedConformanceWitness);
  v89 = *(v84 + 120);

  v90 = v118;
  v91 = v113;
  v89(v79, v118, v113, v108, v88, v85, v84);

  (*(v106 + 8))(v79, v107);
  (*(v102 + 8))(v91, v114);
  sub_222B62140(v115, type metadata accessor for FeaturisedTurn);
  (*(v120 + 8))(v90, v119);
  return sub_222B62140(v92, type metadata accessor for FeaturisedTurn);
}