void *sub_21B249EC0(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E448, &qword_21B351D48);
  v10 = *(sub_21B34A834() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_21B34A834() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_21B24A098(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E438, &qword_21B351D38);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_21B24A18C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E198, &qword_21B351AC8);
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

char *sub_21B24A290(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E400, &qword_21B351D00);
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

char *sub_21B24A394(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E418, &qword_21B351D18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_21B24A490(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E328, &qword_21B351C40);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E330, &qword_21B351C48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B24A5FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E340, &qword_21B351C58);
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
  v15 = 16 * v8;
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

void *sub_21B24A6FC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E350, &qword_21B352030);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21B24A830(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E460, &qword_21B352890);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E468, &qword_21B351D60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B24A9C0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_21B24AAF0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *sub_21B24AC38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E388, &qword_21B351C98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B24AD58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E390, &qword_21B351CA0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21B24AE9C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

void *sub_21B24AFF4(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2C8, &qword_21B351BE0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2D0, &qword_21B351BE8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2D0, &qword_21B351BE8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_21B24B274(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
      v18 = v17 - 1;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 5);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[4 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 32 * v14);
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

void *sub_21B24B3F0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

unint64_t sub_21B24B560(uint64_t a1)
{
  v2 = sub_21B34B594();

  return sub_21B24FE9C(a1, v2);
}

uint64_t sub_21B24B5D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_21B34BBC4();
  a3(v10, a1, a2);
  v7 = sub_21B34BC24();

  return a4(a1, a2, v7);
}

unint64_t sub_21B24B664(uint64_t a1)
{
  sub_21B34A834();
  sub_21B260D68(&qword_27CD7E1E0, MEMORY[0x277CC9588]);
  v2 = sub_21B34AAA4();

  return sub_21B2507C8(a1, v2);
}

unint64_t sub_21B24B6E8(uint64_t a1)
{
  v1 = a1;
  sub_21B34BBC4();
  sub_21B34BBE4();
  v2 = sub_21B34BC24();

  return sub_21B250974(v1, v2);
}

unint64_t sub_21B24B754(double a1)
{
  v2 = sub_21B34BBB4();

  return sub_21B2509E4(v2, a1);
}

unint64_t sub_21B24B7A0(float a1)
{
  v3 = a1 == 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = a1;
  }

  v5 = MEMORY[0x21CEEE380](*(v1 + 40), LODWORD(v4), 4);

  return sub_21B250A4C(v5, a1);
}

unint64_t sub_21B24B7F0(float a1)
{
  __asm { FCMP            H0, #0 }

  v8 = 0;
  if (!_ZF)
  {
    *&v8 = *&a1;
  }

  v9 = MEMORY[0x21CEEE380](*(v1 + 40), v8, 2);
  v10.n128_f32[0] = a1;

  return sub_21B250AB4(v9, v10);
}

unint64_t sub_21B24B840(uint64_t a1)
{
  v2 = sub_21B34BBB4();

  return sub_21B250B1C(a1, v2);
}

unint64_t sub_21B24B884(uint64_t a1)
{
  sub_21B34BBC4();
  sub_21B2F1184(v4, a1);
  v2 = sub_21B34BC24();

  return sub_21B250B88(a1, v2);
}

unint64_t sub_21B24B8F0(uint64_t a1)
{
  v2 = sub_21B34A834();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_21B34BBC4();
  sub_21B2615FC(a1, v8, &qword_27CD7E100, &unk_21B352A30);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_21B34BBE4();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_21B34BBE4();
    sub_21B260D68(&qword_27CD7E1E0, MEMORY[0x277CC9588]);
    sub_21B34AAB4();
    (*(v3 + 8))(v5, v2);
  }

  v9 = sub_21B34BC24();
  return sub_21B250DB0(a1, v9);
}

uint64_t sub_21B24BAEC(uint64_t a1, unint64_t a2)
{
  sub_21B34BBC4();
  sub_21B34BBE4();
  if (a2 >> 60 != 15)
  {
    sub_21B34A744();
  }

  v4 = sub_21B34BC24();

  return sub_21B251218(a1, a2, v4);
}

unint64_t sub_21B24BB88(uint64_t a1)
{
  v1 = a1;
  v2 = a1;
  sub_21B34BBC4();
  if (v2 != 2)
  {
    sub_21B34BBE4();
  }

  sub_21B34BBE4();
  v3 = sub_21B34BC24();

  return sub_21B251D2C(v1, v3);
}

unint64_t sub_21B24BC14(uint64_t a1, char a2)
{
  sub_21B34BBC4();
  if (a2)
  {
    sub_21B34BBE4();
  }

  else
  {
    sub_21B34BBE4();
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x21CEEE3F0](v4);
  }

  v5 = sub_21B34BC24();

  return sub_21B251DBC(a1, a2 & 1, v5);
}

unint64_t sub_21B24BCA8(unint64_t a1)
{
  sub_21B34BBC4();
  sub_21B34BBE4();
  if ((a1 & 0x100000000) == 0)
  {
    sub_21B34BC04();
  }

  v2 = sub_21B34BC24();

  return sub_21B251E44(a1 | ((HIDWORD(a1) & 1) << 32), v2);
}

unint64_t sub_21B24BD44(uint64_t a1, uint64_t a2)
{
  sub_21B34BBC4();
  sub_21B34BBE4();
  if (a2)
  {
    sub_21B34AD94();
  }

  v4 = sub_21B34BC24();

  return sub_21B251ECC(a1, a2, v4);
}

unint64_t sub_21B24BDD8(uint64_t a1, char a2)
{
  sub_21B34BBC4();
  sub_21B34BBE4();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x21CEEE3B0](a1);
  }

  v4 = sub_21B34BC24();

  return sub_21B251F98(a1, a2 & 1, v4);
}

uint64_t sub_21B24BE68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0E8, &qword_21B351978);
  v34 = v4;
  result = sub_21B34B884();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_21B34BBC4();
      sub_21B34AD94();
      result = sub_21B34BC24();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21B24C108(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E470, &qword_21B351D68);
  result = sub_21B34B884();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
      }

      else
      {
        sub_21B260E68(v23, &v36);
      }

      v26 = *(*(v5 + 56) + 8 * v22);
      result = sub_21B34B594();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21B24C3A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E450, &qword_21B351D50);
  result = sub_21B34B884();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v30 = *(*(v5 + 48) + 16 * v20);
      if ((v4 & 1) == 0)
      {
        sub_21B260DC0(v30, *(*(v5 + 48) + 16 * v20 + 8));
      }

      sub_21B34BBC4();
      sub_21B34A744();
      result = sub_21B34BC24();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        v16 = v30;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      v16 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v16;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21B24C644(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_21B34A834();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E440, &qword_21B351D40);
  v40 = v4;
  result = sub_21B34B884();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_21B260D68(&qword_27CD7E1E0, MEMORY[0x277CC9588]);
      result = sub_21B34AAA4();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_21B24C9F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E430, &qword_21B351D30);
  result = sub_21B34B884();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_21B34BBC4();
      sub_21B34BBE4();
      result = sub_21B34BC24();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_21B24CC70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E428, &qword_21B351D28);
  result = sub_21B34B884();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_21B34BBB4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21B24CEE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E420, &qword_21B351D20);
  result = sub_21B34B884();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 48);
      v21 = *(v20 + 4 * v19);
      v22 = *(*(v5 + 56) + 8 * v19);
      if (v21 == 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = *(v20 + 4 * v19);
      }

      result = MEMORY[0x21CEEE380](*(v7 + 40), LODWORD(v23), 4);
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21B24D154(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E410, &qword_21B351D10);
  result = sub_21B34B884();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v5 + 56) + 8 * (v17 | (v9 << 6)));
      __asm { FCMP            H9, #0 }

      if (_ZF)
      {
        *&v7 = COERCE_SHORT_FLOAT(0);
      }

      else
      {
        *&v7 = _H9;
      }

      result = MEMORY[0x21CEEE380](*(v8 + 40), v7, 2);
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 2 * v16) = _H9;
      *(*(v8 + 56) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_21B24D3C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E408, &qword_21B351D08);
  result = sub_21B34B884();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_21B34BBB4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21B24D62C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E348, &qword_21B351C60);
  result = sub_21B34B884();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = *(v5 + 48) + 40 * v24;
      if (v4)
      {
        v26 = *v25;
        v27 = *(v25 + 16);
        v43 = *(v25 + 32);
        v41 = v26;
        v42 = v27;
        v28 = (*(v5 + 56) + 32 * v24);
        v29 = v28[1];
        v39 = *v28;
        v40 = v29;
      }

      else
      {
        sub_21B260E68(v25, &v41);
        sub_21B2615FC(*(v5 + 56) + 32 * v24, &v39, &qword_27CD7E0F8, &unk_21B3557C0);
      }

      result = sub_21B34B594();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v41;
      v18 = v42;
      *(v16 + 32) = v43;
      *v16 = v17;
      *(v16 + 16) = v18;
      v19 = (*(v7 + 56) + 32 * v15);
      v20 = v40;
      *v19 = v39;
      v19[1] = v20;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v37 = 1 << *(v5 + 32);
      if (v37 >= 64)
      {
        bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v37;
      }

      *(v5 + 16) = 0;
    }

    v3 = v38;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21B24D8F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E220, &qword_21B351B38);
  result = sub_21B34B884();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        sub_21B260E68(v23, &v36);
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      result = sub_21B34B594();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_21B24DBA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E368, &qword_21B351C78);
  v38 = v4;
  result = sub_21B34B884();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      if ((v38 & 1) == 0)
      {

        sub_21B260DC0(v25, v26);
      }

      sub_21B34BBC4();
      sub_21B34AD94();
      result = sub_21B34BC24();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v25;
      v17[1] = v26;
      v17[2] = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21B24DE88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E398, &qword_21B351CA8);
  v37 = v4;
  result = sub_21B34B884();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_21B34BBC4();
      sub_21B34AD94();
      result = sub_21B34BC24();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21B24E148(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2F8, &qword_21B351C10);
  v36 = v4;
  result = sub_21B34B884();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 32 * v22);
      if (v36)
      {
        v27 = v26[1];
        v37 = *v26;
        v38 = v27;
      }

      else
      {
        sub_21B2615FC(v26, &v37, &qword_27CD7E0F8, &unk_21B3557C0);
      }

      sub_21B34BBC4();
      sub_21B34AD94();
      result = sub_21B34BC24();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = (*(v7 + 56) + 32 * v15);
      v18 = v38;
      *v17 = v37;
      v17[1] = v18;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_21B24E410(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2F0, &qword_21B351C08);
  v34 = v4;
  result = sub_21B34B884();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v33 = result;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + 8 * v22);
      v35 = *(*(v5 + 56) + 8 * v22);
      if ((v34 & 1) == 0)
      {
      }

      sub_21B34BBC4();
      MEMORY[0x21CEEE3B0](*(v23 + 16));
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = v23 + 32;
        do
        {
          sub_21B2615FC(v25, &v39, &qword_27CD7E200, &unk_21B352050);
          if (*(&v40 + 1))
          {
            v37[0] = v39;
            v37[1] = v40;
            v38 = v41;
            sub_21B34BBE4();
            sub_21B34B5C4();
            sub_21B260E14(v37);
          }

          else
          {
            sub_21B34BBE4();
          }

          v25 += 40;
          --v24;
        }

        while (v24);
      }

      result = sub_21B34BC24();
      v7 = v33;
      v15 = -1 << *(v33 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v15) >> 6;
        while (++v17 != v27 || (v26 & 1) == 0)
        {
          v28 = v17 == v27;
          if (v17 == v27)
          {
            v17 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v17);
          if (v29 != -1)
          {
            v18 = __clz(__rbit64(~v29)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v33 + 48) + 8 * v18) = v23;
      v12 = v36;
      *(*(v33 + 56) + 8 * v18) = v35;
      ++*(v33 + 16);
      v5 = v32;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v36 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_39;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero(v9, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_39:
  *v3 = v7;
  return result;
}

uint64_t sub_21B24E748(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_21B34A834();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v51 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v50 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - v11;
  v13 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2C0, &qword_21B351BD8);
  v52 = v4;
  result = sub_21B34B884();
  v15 = result;
  v56 = v13;
  if (*(v13 + 16))
  {
    v49 = v5;
    v44 = v2;
    v16 = 0;
    v17 = (v56 + 64);
    v18 = 1 << *(v56 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v56 + 64);
    v21 = (v18 + 63) >> 6;
    v48 = (v6 + 48);
    v45 = (v6 + 8);
    v46 = (v6 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v25 = (v20 - 1) & v20;
LABEL_15:
      v28 = v24 | (v16 << 6);
      v29 = *(v56 + 48);
      v54 = *(v51 + 72);
      v55 = v25;
      v30 = v29 + v54 * v28;
      if (v52)
      {
        sub_21B260BE8(v30, v12);
      }

      else
      {
        sub_21B2615FC(v30, v12, &qword_27CD7E100, &unk_21B352A30);
      }

      v53 = *(*(v56 + 56) + 8 * v28);
      sub_21B34BBC4();
      v31 = v12;
      v32 = v50;
      sub_21B2615FC(v12, v50, &qword_27CD7E100, &unk_21B352A30);
      v33 = v49;
      if ((*v48)(v32, 1, v49) == 1)
      {
        sub_21B34BBE4();
      }

      else
      {
        v34 = v47;
        (*v46)(v47, v32, v33);
        sub_21B34BBE4();
        sub_21B260D68(&qword_27CD7E1E0, MEMORY[0x277CC9588]);
        sub_21B34AAB4();
        (*v45)(v34, v33);
      }

      result = sub_21B34BC24();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      v12 = v31;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v23 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_21B260BE8(v31, *(v15 + 48) + v54 * v23);
      *(*(v15 + 56) + 8 * v23) = v53;
      ++*(v15 + 16);
      v20 = v55;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_38;
    }

    v42 = 1 << *(v56 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v56 + 16) = 0;
  }

LABEL_38:
  *v3 = v15;
  return result;
}

uint64_t sub_21B24EC58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2A8, &qword_21B351BC0);
  v30 = v4;
  result = sub_21B34B884();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v31 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v30 & 1) == 0)
      {
        sub_21B260DAC(v31, v21);
      }

      sub_21B34BBC4();
      sub_21B34BBE4();
      if (v21 >> 60 != 15)
      {
        sub_21B34A744();
      }

      result = sub_21B34BC24();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v31;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_21B24EF28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E290, &qword_21B351BA8);
  result = sub_21B34B884();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_21B34BBC4();
      if (v20 != 2)
      {
        sub_21B34BBE4();
      }

      sub_21B34BBE4();
      result = sub_21B34BC24();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21B24F1C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E278, &qword_21B351B90);
  result = sub_21B34B884();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 16 * v20;
      v22 = *(v21 + 8);
      v23 = *v21;
      v34 = *(*(v5 + 56) + 8 * v20);
      sub_21B34BBC4();
      if (v22 == 1)
      {
        sub_21B34BBE4();
      }

      else
      {
        sub_21B34BBE4();
        if ((v23 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        MEMORY[0x21CEEE3F0](v24);
      }

      result = sub_21B34BC24();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v22;
      *(*(v7 + 56) + 8 * v15) = v34;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v33)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21B24F478(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E260, &qword_21B351B78);
  result = sub_21B34B884();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 8 * (v18 | (v8 << 6));
      v22 = *(v5 + 48) + v21;
      v23 = *(v22 + 4);
      v24 = *v22;
      v34 = *(*(v5 + 56) + v21);
      sub_21B34BBC4();
      sub_21B34BBE4();
      if (v23 != 1)
      {
        sub_21B34BC04();
      }

      result = sub_21B34BC24();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 8 * v15;
      v17 = *(v7 + 48) + v16;
      *v17 = v24;
      *(v17 + 4) = v23;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v33)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21B24F738(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E248, &qword_21B351B60);
  v30 = v4;
  result = sub_21B34B884();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v31 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v30 & 1) == 0)
      {
      }

      sub_21B34BBC4();
      sub_21B34BBE4();
      if (v21)
      {
        sub_21B34AD94();
      }

      result = sub_21B34BC24();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v31;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_21B24F9F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E230, &qword_21B351B48);
  result = sub_21B34B884();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 16 * v20;
      v22 = *(v21 + 8);
      v23 = *v21;
      v33 = *(*(v5 + 56) + 8 * v20);
      sub_21B34BBC4();
      sub_21B34BBE4();
      if (v22 != 1)
      {
        MEMORY[0x21CEEE3B0](v23);
      }

      result = sub_21B34BC24();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v22;
      *(*(v7 + 56) + 8 * v15) = v33;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_21B24FCB0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_21B24FCF8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_21B24FD50(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_21B24FDA0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_21B24FDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21B34B9F4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21B24FE9C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_21B260E68(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x21CEEDD80](v9, a1);
      sub_21B260E14(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_21B24FF64(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v7 = v3;
  v10 = ~v5;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v74 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v71 = v14;
  __n = BYTE6(a2);
  v69 = a1;
  v70 = HIDWORD(a1) - a1;
  v65 = (a1 >> 32) - a1;
  v66 = a1 >> 32;
  v72 = v10;
  v73 = v3 + 64;
  while (1)
  {
    v15 = (*(v7 + 48) + 16 * v6);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v11 < 3;
      if (((v21 | v74) & 1) == 0)
      {
        return v6;
      }

LABEL_36:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_36;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_142;
      }

      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_141;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_33:
        v26 = __n;
        if (v11)
        {
          v26 = v70;
          if (v71)
          {
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
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v11 != 2)
    {
      if (!v22)
      {
        return v6;
      }

      goto LABEL_13;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_140;
    }

LABEL_39:
    if (v22 != v26)
    {
      goto LABEL_13;
    }

    if (v22 < 1)
    {
      return v6;
    }

    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_143;
      }

      sub_21B260DC0(v17, v16);
      v35 = sub_21B34A574();
      if (v35)
      {
        v40 = sub_21B34A594();
        if (__OFSUB__(v17, v40))
        {
          goto LABEL_145;
        }

        v35 += v17 - v40;
      }

      sub_21B34A584();
      if (v11 == 2)
      {
        v59 = *(a1 + 16);
        v64 = *(a1 + 24);
        v37 = sub_21B34A574();
        if (v37)
        {
          v60 = sub_21B34A594();
          if (__OFSUB__(v59, v60))
          {
            goto LABEL_160;
          }

          v37 += v59 - v60;
        }

        v25 = __OFSUB__(v64, v59);
        v61 = v64 - v59;
        if (v25)
        {
          goto LABEL_155;
        }

        result = sub_21B34A584();
        if (result >= v61)
        {
          v39 = v61;
        }

        else
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_175;
        }

        if (!v37)
        {
          goto LABEL_174;
        }

        goto LABEL_130;
      }

      if (v11 == 1)
      {
        if (v66 < v69)
        {
          goto LABEL_154;
        }

        v37 = sub_21B34A574();
        if (v37)
        {
          v41 = sub_21B34A594();
          if (__OFSUB__(v69, v41))
          {
            goto LABEL_161;
          }

          v37 += v69 - v41;
        }

        result = sub_21B34A584();
        v39 = v65;
        if (result < v65)
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_177;
        }

        if (!v37)
        {
          goto LABEL_176;
        }

        goto LABEL_130;
      }

      LOWORD(__s1[0]) = a1;
      BYTE2(__s1[0]) = BYTE2(a1);
      BYTE3(__s1[0]) = BYTE3(a1);
      BYTE4(__s1[0]) = v67;
      BYTE5(__s1[0]) = BYTE5(a1);
      BYTE6(__s1[0]) = BYTE6(a1);
      HIBYTE(__s1[0]) = HIBYTE(a1);
      LOWORD(__s1[1]) = a2;
      BYTE2(__s1[1]) = BYTE2(a2);
      BYTE3(__s1[1]) = BYTE3(a2);
      BYTE4(__s1[1]) = BYTE4(a2);
      BYTE5(__s1[1]) = BYTE5(a2);
      if (!v35)
      {
        goto LABEL_166;
      }

      goto LABEL_133;
    }

    __s1[0] = v17;
    LOWORD(__s1[1]) = v16;
    BYTE2(__s1[1]) = BYTE2(v16);
    BYTE3(__s1[1]) = BYTE3(v16);
    BYTE4(__s1[1]) = BYTE4(v16);
    BYTE5(__s1[1]) = BYTE5(v16);
    if (!v11)
    {
      goto LABEL_91;
    }

    if (v11 != 1)
    {
      v48 = *(a1 + 16);
      v47 = *(a1 + 24);
      sub_21B260DC0(v17, v16);
      v32 = sub_21B34A574();
      if (v32)
      {
        v49 = sub_21B34A594();
        if (__OFSUB__(v48, v49))
        {
          goto LABEL_157;
        }

        v32 += v48 - v49;
      }

      v25 = __OFSUB__(v47, v48);
      v45 = v47 - v48;
      if (v25)
      {
        goto LABEL_149;
      }

      v46 = sub_21B34A584();
      v7 = v68;
      if (!v32)
      {
        goto LABEL_164;
      }

      goto LABEL_98;
    }

    if (v66 < v69)
    {
      goto LABEL_146;
    }

    sub_21B260DC0(v17, v16);
    v29 = sub_21B34A574();
    if (!v29)
    {
      goto LABEL_167;
    }

    v30 = v29;
    v31 = sub_21B34A594();
    if (__OFSUB__(v69, v31))
    {
      goto LABEL_152;
    }

    v32 = v69 - v31 + v30;
    result = sub_21B34A584();
    if (!v32)
    {
      goto LABEL_168;
    }

LABEL_105:
    if (result >= v65)
    {
      v50 = v65;
    }

    else
    {
      v50 = result;
    }

LABEL_108:
    v54 = __s1;
    v55 = v32;
LABEL_134:
    v62 = memcmp(v54, v55, v50);
    sub_21B234324(v17, v16);
LABEL_135:
    v10 = v72;
    v4 = v73;
    if (!v62)
    {
      return v6;
    }

LABEL_13:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return v6;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_21B260DC0(v17, v16);
    v35 = sub_21B34A574();
    if (v35)
    {
      v36 = sub_21B34A594();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_144;
      }

      v35 += v34 - v36;
    }

    result = sub_21B34A584();
    if (v11 == 2)
    {
      v56 = *(a1 + 16);
      v63 = *(a1 + 24);
      v37 = sub_21B34A574();
      if (v37)
      {
        v57 = sub_21B34A594();
        if (__OFSUB__(v56, v57))
        {
          goto LABEL_158;
        }

        v37 += v56 - v57;
      }

      v25 = __OFSUB__(v63, v56);
      v58 = v63 - v56;
      if (v25)
      {
        goto LABEL_153;
      }

      result = sub_21B34A584();
      if (result >= v58)
      {
        v39 = v58;
      }

      else
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_173;
      }

      if (!v37)
      {
        goto LABEL_172;
      }

      goto LABEL_130;
    }

    if (v11 == 1)
    {
      if (v66 < v69)
      {
        goto LABEL_148;
      }

      v37 = sub_21B34A574();
      if (v37)
      {
        v38 = sub_21B34A594();
        if (__OFSUB__(v69, v38))
        {
          goto LABEL_159;
        }

        v37 += v69 - v38;
      }

      result = sub_21B34A584();
      v39 = v65;
      if (result < v65)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_171;
      }

      if (!v37)
      {
        goto LABEL_170;
      }

LABEL_130:
      if (v35 == v37)
      {
        sub_21B234324(v17, v16);
        return v6;
      }

      v62 = memcmp(v35, v37, v39);
      sub_21B234324(v17, v16);
      v7 = v68;
      goto LABEL_135;
    }

    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v67;
    BYTE5(__s1[0]) = BYTE5(a1);
    BYTE6(__s1[0]) = BYTE6(a1);
    HIBYTE(__s1[0]) = HIBYTE(a1);
    LOWORD(__s1[1]) = a2;
    BYTE2(__s1[1]) = BYTE2(a2);
    BYTE3(__s1[1]) = BYTE3(a2);
    BYTE4(__s1[1]) = BYTE4(a2);
    BYTE5(__s1[1]) = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_169;
    }

LABEL_133:
    v55 = __s1;
    v54 = v35;
    v50 = __n;
    goto LABEL_134;
  }

  memset(__s1, 0, 14);
  if (!v11)
  {
LABEL_91:
    __s2 = a1;
    v77 = BYTE2(a1);
    v78 = BYTE3(a1);
    v79 = v67;
    v80 = BYTE5(a1);
    v81 = BYTE6(a1);
    v82 = HIBYTE(a1);
    v83 = a2;
    v84 = BYTE2(a2);
    v85 = BYTE3(a2);
    v86 = BYTE4(a2);
    v87 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, __n))
    {
      return v6;
    }

    goto LABEL_13;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    sub_21B260DC0(v17, v16);
    v32 = sub_21B34A574();
    if (v32)
    {
      v44 = sub_21B34A594();
      if (__OFSUB__(v43, v44))
      {
        goto LABEL_156;
      }

      v32 += v43 - v44;
    }

    v25 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (v25)
    {
      goto LABEL_150;
    }

    v46 = sub_21B34A584();
    v7 = v68;
    if (!v32)
    {
      goto LABEL_165;
    }

LABEL_98:
    if (v46 >= v45)
    {
      v50 = v45;
    }

    else
    {
      v50 = v46;
    }

    goto LABEL_108;
  }

  if (v66 < v69)
  {
    goto LABEL_147;
  }

  sub_21B260DC0(v17, v16);
  v51 = sub_21B34A574();
  if (v51)
  {
    v52 = v51;
    v53 = sub_21B34A594();
    if (__OFSUB__(v69, v53))
    {
      goto LABEL_151;
    }

    v32 = v69 - v53 + v52;
    result = sub_21B34A584();
    if (!v32)
    {
      goto LABEL_163;
    }

    goto LABEL_105;
  }

  sub_21B34A584();
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  result = sub_21B34A584();
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
  return result;
}

unint64_t sub_21B2507C8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_21B34A834();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_21B260D68(&qword_27CD7E1E8, MEMORY[0x277CC9598]);
      v15 = sub_21B34AC54();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_21B250974(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21B2509E4(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21B250A4C(uint64_t a1, float a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21B250AB4(uint64_t a1, __n128 a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == *a2.n128_u16)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21B250B1C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21B250B88(uint64_t a1, uint64_t a2)
{
  v4 = v2 + 64;
  v5 = -1 << *(v2 + 32);
  result = a2 & ~v5;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    v15 = a1;
    v16 = a1 + 32;
    v8 = *(a1 + 16);
    v14 = ~v5;
    while (1)
    {
      v9 = *(*(v2 + 48) + 8 * result);
      if (*(v9 + 16) == v8)
      {
        break;
      }

LABEL_6:
      result = (result + 1) & v7;
      if (((*(v4 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v8 && v9 != a1)
    {
      v17 = result;
      v10 = v9 + 32;

      v11 = 0;
      v12 = v16;
      while (v11 < v8 && v11 < *(v9 + 16))
      {
        sub_21B2615FC(v10, v21, &qword_27CD7E200, &unk_21B352050);
        sub_21B2615FC(v12, &v23, &qword_27CD7E200, &unk_21B352050);
        if (v22)
        {
          sub_21B2615FC(v21, v20, &qword_27CD7E200, &unk_21B352050);
          if (!*(&v24 + 1))
          {
            sub_21B260E14(v20);
LABEL_4:
            sub_21B261664(v21, &qword_27CD7E208, &qword_21B351B20);
LABEL_5:

            result = v17;
            v4 = v2 + 64;
            a1 = v15;
            v7 = v14;
            goto LABEL_6;
          }

          v18[0] = v23;
          v18[1] = v24;
          v19 = v25;
          v13 = MEMORY[0x21CEEDD80](v20, v18);
          sub_21B260E14(v18);
          sub_21B260E14(v20);
          result = sub_21B261664(v21, &qword_27CD7E200, &unk_21B352050);
          if ((v13 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        else
        {
          if (*(&v24 + 1))
          {
            goto LABEL_4;
          }

          result = sub_21B261664(v21, &qword_27CD7E200, &unk_21B352050);
        }

        ++v11;
        v10 += 40;
        v12 += 40;
        if (v8 == v11)
        {

          return v17;
        }
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_21B250DB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v5 = sub_21B34A834();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1D8, &qword_21B351B08);
  MEMORY[0x28223BE20](v37);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30) - 8;
  v11 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v39 = v3;
  v16 = -1 << *(v3 + 32);
  v17 = a2 & ~v16;
  v36 = v3 + 64;
  if ((*(v3 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = (v6 + 48);
    v20 = *(v12 + 72);
    v34 = v13;
    v35 = v20;
    v28 = (v6 + 48);
    v29 = (v6 + 32);
    v32 = (v6 + 8);
    v33 = ~v16;
    while (1)
    {
      sub_21B2615FC(*(v39 + 48) + v35 * v17, v15, &qword_27CD7E100, &unk_21B352A30);
      v21 = *(v37 + 48);
      sub_21B2615FC(v15, v9, &qword_27CD7E100, &unk_21B352A30);
      sub_21B2615FC(v38, &v9[v21], &qword_27CD7E100, &unk_21B352A30);
      v22 = *v19;
      if ((*v19)(v9, 1, v5) == 1)
      {
        break;
      }

      v23 = v34;
      sub_21B2615FC(v9, v34, &qword_27CD7E100, &unk_21B352A30);
      if (v22(&v9[v21], 1, v5) == 1)
      {
        sub_21B261664(v15, &qword_27CD7E100, &unk_21B352A30);
        (*v32)(v23, v5);
        v18 = v33;
LABEL_4:
        sub_21B261664(v9, &qword_27CD7E1D8, &qword_21B351B08);
        goto LABEL_5;
      }

      v24 = &v9[v21];
      v25 = v30;
      (*v29)(v30, v24, v5);
      sub_21B260D68(&qword_27CD7E1E8, MEMORY[0x277CC9598]);
      v31 = sub_21B34AC54();
      v26 = *v32;
      (*v32)(v25, v5);
      sub_21B261664(v15, &qword_27CD7E100, &unk_21B352A30);
      v26(v23, v5);
      v19 = v28;
      sub_21B261664(v9, &qword_27CD7E100, &unk_21B352A30);
      v18 = v33;
      if (v31)
      {
        return v17;
      }

LABEL_5:
      v17 = (v17 + 1) & v18;
      if (((*(v36 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return v17;
      }
    }

    sub_21B261664(v15, &qword_27CD7E100, &unk_21B352A30);
    if (v22(&v9[v21], 1, v5) == 1)
    {
      sub_21B261664(v9, &qword_27CD7E100, &unk_21B352A30);
      return v17;
    }

    goto LABEL_4;
  }

  return v17;
}

uint64_t sub_21B251218(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v7 = v3;
  v10 = a2 >> 62;
  if (a1)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2 == 0xC000000000000000;
  }

  v12 = !v11;
  v86 = v12;
  v81 = HIDWORD(a1);
  v84 = HIDWORD(a1) - a1;
  v85 = a2 >> 62;
  v88 = ~v5;
  v13 = __OFSUB__(HIDWORD(a1), a1);
  v83 = v13;
  __n = BYTE6(a2);
  v82 = a1;
  v79 = (a1 >> 32) - a1;
  v80 = a1 >> 32;
  v89 = a2 >> 60;
  while (1)
  {
    v14 = (*(v7 + 48) + 16 * v6);
    v16 = *v14;
    v15 = v14[1];
    if (v15 >> 60 == 15)
    {
      if (v89 > 0xE)
      {
        sub_21B260DAC(v16, v15);
        sub_21B260DAC(a1, a2);
LABEL_149:
        sub_21B260C58(v16, v15);
        return v6;
      }

LABEL_16:
      sub_21B260DAC(v16, v15);
      sub_21B260DAC(a1, a2);
      sub_21B260C58(v16, v15);
      v17 = a1;
      v18 = a2;
      goto LABEL_17;
    }

    if (v89 > 0xE)
    {
      goto LABEL_16;
    }

    v19 = v15 >> 62;
    if (v15 >> 62 == 3)
    {
      if (v16)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15 == 0xC000000000000000;
      }

      v22 = !v20 || v10 < 3;
      if (((v22 | v86) & 1) == 0)
      {
        sub_21B260DAC(0, 0xC000000000000000);
        sub_21B260DAC(0, 0xC000000000000000);
        sub_21B260C58(0, 0xC000000000000000);
        v16 = 0;
        goto LABEL_149;
      }

LABEL_42:
      v23 = 0;
      if (v10 <= 1)
      {
        goto LABEL_39;
      }

      goto LABEL_43;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_42;
      }

      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_153;
      }

      if (v10 <= 1)
      {
        goto LABEL_39;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v16) - v16;
      if (__OFSUB__(HIDWORD(v16), v16))
      {
        goto LABEL_154;
      }

      v23 = v23;
      if (v10 <= 1)
      {
LABEL_39:
        v27 = __n;
        if (v10)
        {
          v27 = v84;
          if (v83)
          {
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
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
          }
        }

        goto LABEL_45;
      }
    }

    else
    {
      v23 = BYTE6(v15);
      if (v10 <= 1)
      {
        goto LABEL_39;
      }
    }

LABEL_43:
    if (v10 != 2)
    {
      if (!v23)
      {
LABEL_148:
        sub_21B260DAC(v16, v15);
        sub_21B260DAC(a1, a2);
        sub_21B260C58(a1, a2);
        goto LABEL_149;
      }

LABEL_57:
      sub_21B260DAC(v16, v15);
      sub_21B260DAC(a1, a2);
      sub_21B260C58(a1, a2);
      v17 = v16;
      v18 = v15;
LABEL_17:
      sub_21B260C58(v17, v18);
      goto LABEL_18;
    }

    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_152;
    }

LABEL_45:
    if (v23 != v27)
    {
      goto LABEL_57;
    }

    if (v23 < 1)
    {
      goto LABEL_148;
    }

    if (v19 > 1)
    {
      break;
    }

    if (!v19)
    {
      __s1[0] = v16;
      LOWORD(__s1[1]) = v15;
      BYTE2(__s1[1]) = BYTE2(v15);
      BYTE3(__s1[1]) = BYTE3(v15);
      BYTE4(__s1[1]) = BYTE4(v15);
      BYTE5(__s1[1]) = BYTE5(v15);
      if (v10)
      {
        if (v10 == 1)
        {
          if (v80 < v82)
          {
            goto LABEL_159;
          }

          sub_21B260DAC(v16, v15);
          sub_21B260DAC(v16, v15);
          sub_21B260DAC(a1, a2);
          v30 = sub_21B34A574();
          if (!v30)
          {
            goto LABEL_185;
          }

          v31 = v30;
          v32 = sub_21B34A594();
          if (__OFSUB__(v82, v32))
          {
            goto LABEL_163;
          }

          v33 = (v82 - v32 + v31);
          result = sub_21B34A584();
          if (!v33)
          {
            goto LABEL_186;
          }

LABEL_114:
          if (result >= v79)
          {
            v58 = v79;
          }

          else
          {
            v58 = result;
          }

          goto LABEL_117;
        }

        v56 = *(a1 + 16);
        v78 = *(a1 + 24);
        sub_21B260DAC(v16, v15);
        sub_21B260DAC(v16, v15);
        sub_21B260DAC(a1, a2);
        v33 = sub_21B34A574();
        if (v33)
        {
          v57 = sub_21B34A594();
          if (__OFSUB__(v56, v57))
          {
            goto LABEL_169;
          }

          v33 += v56 - v57;
        }

        v26 = __OFSUB__(v78, v56);
        v44 = &v78[-v56];
        if (v26)
        {
          goto LABEL_162;
        }

        v45 = sub_21B34A584();
        if (!v33)
        {
          goto LABEL_182;
        }

        goto LABEL_107;
      }

      goto LABEL_77;
    }

    if (v16 > v16 >> 32)
    {
      goto LABEL_155;
    }

    sub_21B260DAC(v16, v15);
    sub_21B260DAC(v16, v15);
    sub_21B260DAC(a1, a2);
    v39 = sub_21B34A574();
    if (v39)
    {
      v40 = v39;
      v41 = sub_21B34A594();
      if (__OFSUB__(v16, v41))
      {
        goto LABEL_157;
      }

      v76 = (v16 - v41 + v40);
    }

    else
    {
      v76 = 0;
    }

    sub_21B34A584();
    v10 = v85;
    if (v85 == 2)
    {
      v68 = *(a1 + 16);
      v74 = *(a1 + 24);
      v49 = sub_21B34A574();
      if (v49)
      {
        v69 = sub_21B34A594();
        if (__OFSUB__(v68, v69))
        {
          goto LABEL_171;
        }

        v49 += v68 - v69;
      }

      v26 = __OFSUB__(v74, v68);
      v70 = v74 - v68;
      if (v26)
      {
        goto LABEL_167;
      }

      v71 = sub_21B34A584();
      if (v71 >= v70)
      {
        v52 = v70;
      }

      else
      {
        v52 = v71;
      }

      v53 = v76;
      if (!v76)
      {
        goto LABEL_178;
      }

      v10 = v85;
      if (!v49)
      {
        goto LABEL_177;
      }
    }

    else
    {
      if (v85 != 1)
      {
        v67 = v76;
        LOWORD(__s1[0]) = a1;
        BYTE2(__s1[0]) = BYTE2(a1);
        BYTE3(__s1[0]) = BYTE3(a1);
        BYTE4(__s1[0]) = v81;
        BYTE5(__s1[0]) = BYTE5(a1);
        BYTE6(__s1[0]) = BYTE6(a1);
        HIBYTE(__s1[0]) = HIBYTE(a1);
        LOWORD(__s1[1]) = a2;
        BYTE2(__s1[1]) = BYTE2(a2);
        BYTE3(__s1[1]) = BYTE3(a2);
        BYTE4(__s1[1]) = BYTE4(a2);
        BYTE5(__s1[1]) = BYTE5(a2);
        if (!v76)
        {
          goto LABEL_181;
        }

LABEL_144:
        v46 = memcmp(v67, __s1, __n);
        sub_21B260C58(a1, a2);
        v47 = v16;
        v48 = v15;
LABEL_145:
        sub_21B260C58(v47, v48);
        sub_21B260C58(v16, v15);
        if (!v46)
        {
          return v6;
        }

        goto LABEL_18;
      }

      if (v80 < v82)
      {
        goto LABEL_166;
      }

      v49 = sub_21B34A574();
      if (v49)
      {
        v54 = sub_21B34A594();
        if (__OFSUB__(v82, v54))
        {
          goto LABEL_173;
        }

        v49 += v82 - v54;
      }

      v55 = sub_21B34A584();
      v52 = v79;
      if (v55 < v79)
      {
        v52 = v55;
      }

      v53 = v76;
      if (!v76)
      {
        goto LABEL_184;
      }

      if (!v49)
      {
        goto LABEL_183;
      }
    }

LABEL_140:
    if (v53 == v49)
    {
      sub_21B260C58(a1, a2);
      sub_21B260C58(v16, v15);
      goto LABEL_149;
    }

    v72 = memcmp(v53, v49, v52);
    sub_21B260C58(a1, a2);
    sub_21B260C58(v16, v15);
    sub_21B260C58(v16, v15);
    if (!v72)
    {
      return v6;
    }

LABEL_18:
    v6 = (v6 + 1) & v88;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return v6;
    }
  }

  if (v19 == 2)
  {
    v35 = *(v16 + 16);
    sub_21B260DAC(v16, v15);
    sub_21B260DAC(v16, v15);
    sub_21B260DAC(a1, a2);
    v36 = sub_21B34A574();
    if (v36)
    {
      v37 = v36;
      v38 = sub_21B34A594();
      if (__OFSUB__(v35, v38))
      {
        goto LABEL_156;
      }

      v75 = (v35 - v38 + v37);
    }

    else
    {
      v75 = 0;
    }

    sub_21B34A584();
    v10 = v85;
    if (v85 == 2)
    {
      v63 = *(a1 + 16);
      v73 = *(a1 + 24);
      v49 = sub_21B34A574();
      if (v49)
      {
        v64 = sub_21B34A594();
        if (__OFSUB__(v63, v64))
        {
          goto LABEL_170;
        }

        v49 += v63 - v64;
      }

      v26 = __OFSUB__(v73, v63);
      v65 = v73 - v63;
      if (v26)
      {
        goto LABEL_165;
      }

      v66 = sub_21B34A584();
      if (v66 >= v65)
      {
        v52 = v65;
      }

      else
      {
        v52 = v66;
      }

      v53 = v75;
      if (!v75)
      {
        goto LABEL_180;
      }

      v10 = v85;
      if (!v49)
      {
        goto LABEL_179;
      }
    }

    else
    {
      if (v85 != 1)
      {
        v67 = v75;
        LOWORD(__s1[0]) = a1;
        BYTE2(__s1[0]) = BYTE2(a1);
        BYTE3(__s1[0]) = BYTE3(a1);
        BYTE4(__s1[0]) = v81;
        BYTE5(__s1[0]) = BYTE5(a1);
        BYTE6(__s1[0]) = BYTE6(a1);
        HIBYTE(__s1[0]) = HIBYTE(a1);
        LOWORD(__s1[1]) = a2;
        BYTE2(__s1[1]) = BYTE2(a2);
        BYTE3(__s1[1]) = BYTE3(a2);
        BYTE4(__s1[1]) = BYTE4(a2);
        BYTE5(__s1[1]) = BYTE5(a2);
        if (!v75)
        {
          goto LABEL_174;
        }

        goto LABEL_144;
      }

      if (v80 < v82)
      {
        goto LABEL_161;
      }

      v49 = sub_21B34A574();
      if (v49)
      {
        v50 = sub_21B34A594();
        if (__OFSUB__(v82, v50))
        {
          goto LABEL_172;
        }

        v49 += v82 - v50;
      }

      v51 = sub_21B34A584();
      v52 = v79;
      if (v51 < v79)
      {
        v52 = v51;
      }

      v53 = v75;
      if (!v75)
      {
        goto LABEL_176;
      }

      if (!v49)
      {
        goto LABEL_175;
      }
    }

    goto LABEL_140;
  }

  memset(__s1, 0, 14);
  if (!v10)
  {
LABEL_77:
    __s2 = a1;
    v91 = BYTE2(a1);
    v92 = BYTE3(a1);
    v93 = v81;
    v94 = BYTE5(a1);
    v95 = BYTE6(a1);
    v96 = HIBYTE(a1);
    v97 = a2;
    v98 = BYTE2(a2);
    v99 = BYTE3(a2);
    v100 = BYTE4(a2);
    v101 = BYTE5(a2);
    sub_21B260DAC(v16, v15);
    sub_21B260DAC(a1, a2);
    v46 = memcmp(__s1, &__s2, __n);
    v47 = a1;
    v48 = a2;
    goto LABEL_145;
  }

  if (v10 != 2)
  {
    if (v80 < v82)
    {
      goto LABEL_158;
    }

    sub_21B260DAC(v16, v15);
    sub_21B260DAC(v16, v15);
    sub_21B260DAC(a1, a2);
    v59 = sub_21B34A574();
    if (!v59)
    {
      goto LABEL_187;
    }

    v60 = v59;
    v61 = sub_21B34A594();
    if (__OFSUB__(v82, v61))
    {
      goto LABEL_164;
    }

    v33 = (v82 - v61 + v60);
    result = sub_21B34A584();
    if (!v33)
    {
      goto LABEL_188;
    }

    goto LABEL_114;
  }

  v42 = *(a1 + 16);
  v77 = *(a1 + 24);
  sub_21B260DAC(v16, v15);
  sub_21B260DAC(v16, v15);
  sub_21B260DAC(a1, a2);
  v33 = sub_21B34A574();
  if (v33)
  {
    v43 = sub_21B34A594();
    if (__OFSUB__(v42, v43))
    {
      goto LABEL_168;
    }

    v33 += v42 - v43;
  }

  v26 = __OFSUB__(v77, v42);
  v44 = &v77[-v42];
  if (v26)
  {
    goto LABEL_160;
  }

  v45 = sub_21B34A584();
  if (v33)
  {
LABEL_107:
    if (v45 >= v44)
    {
      v58 = v44;
    }

    else
    {
      v58 = v45;
    }

LABEL_117:
    v62 = memcmp(__s1, v33, v58);
    sub_21B260C58(v16, v15);
    sub_21B260C58(a1, a2);
    sub_21B260C58(v16, v15);
    v10 = v85;
    if (!v62)
    {
      return v6;
    }

    goto LABEL_18;
  }

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
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  sub_21B34A584();
LABEL_186:
  __break(1u);
LABEL_187:
  result = sub_21B34A584();
LABEL_188:
  __break(1u);
  return result;
}

unint64_t sub_21B251D2C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      if (v7 == 2)
      {
        if (a1 == 2)
        {
          return result;
        }
      }

      else if (a1 != 2 && ((v7 ^ a1) & 1) == 0)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21B251DBC(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    v8 = *&a1;
    do
    {
      v9 = *(v3 + 48) + 16 * result;
      if (*(v9 + 8))
      {
        if (a2)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && *v9 == v8)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21B251E44(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 8 * result;
      if (*(v7 + 4))
      {
        if ((a1 & 0x100000000) != 0)
        {
          return result;
        }
      }

      else if ((a1 & 0x100000000) == 0 && *v7 == *&a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21B251ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_21B34B9F4() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_21B251F98(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      if (*(v8 + 8))
      {
        if (a2)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && *v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_21B25201C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0E8, &qword_21B351978);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21B252184()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E470, &qword_21B351D68);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        result = sub_21B260E68(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21B252314()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E450, &qword_21B351D50);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_21B260DC0(v19, *(&v19 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_21B25247C()
{
  v1 = v0;
  v31 = sub_21B34A834();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E440, &qword_21B351D40);
  v3 = *v0;
  v4 = sub_21B34B874();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_21B2526EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E430, &qword_21B351D30);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21B252838()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E428, &qword_21B351D28);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21B252984()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E420, &qword_21B351D20);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21B252AD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E410, &qword_21B351D10);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21B252C1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E408, &qword_21B351D08);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21B252D68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E348, &qword_21B351C60);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_21B260E68(*(v2 + 48) + 40 * v17, v25);
        v17 *= 32;
        result = sub_21B2615FC(*(v2 + 56) + v17, v24, &qword_27CD7E0F8, &unk_21B3557C0);
        v19 = *(v4 + 48) + v18;
        v20 = v25[0];
        v21 = v25[1];
        *(v19 + 32) = v26;
        *v19 = v20;
        *(v19 + 16) = v21;
        v22 = (*(v4 + 56) + v17);
        v23 = v24[1];
        *v22 = v24[0];
        v22[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21B252F24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E220, &qword_21B351B38);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        sub_21B260E68(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21B2530B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E368, &qword_21B351C78);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v21 = v20[1];
        v17 *= 24;
        v22 = *(v19 + v17);
        v23 = *(v19 + v17 + 8);
        v24 = *(v19 + v17 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = *v20;
        v25[1] = v21;
        v26 = (*(v4 + 56) + v17);
        *v26 = v22;
        v26[1] = v23;
        v26[2] = v24;

        sub_21B260DC0(v22, v23);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21B253254()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E398, &qword_21B351CA8);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21B2533CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2F8, &qword_21B351C10);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    v26 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 32 * v17;
        sub_21B2615FC(*(v2 + 56) + 32 * v17, v27, &qword_27CD7E0F8, &unk_21B3557C0);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        v25 = v27[1];
        *v24 = v27[0];
        v24[1] = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v26;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_21B253580()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2F0, &qword_21B351C08);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21B2536DC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2C0, &qword_21B351BD8);
  v5 = *v0;
  v6 = sub_21B34B874();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    v14 = *(v5 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_21B2615FC(*(v5 + 48) + v21, v4, &qword_27CD7E100, &unk_21B352A30);
        v22 = *(*(v5 + 56) + 8 * v20);
        result = sub_21B260BE8(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_21B253904()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2A8, &qword_21B351BC0);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_21B260DAC(v19, *(&v19 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21B253A6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E290, &qword_21B351BA8);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21B253BCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E260, &qword_21B351B78);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v17) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 8 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 4);
      v20 = *(*(v2 + 56) + v17);
      v21 = *(v4 + 48) + v17;
      *v21 = v19;
      *(v21 + 4) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21B253D2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E248, &qword_21B351B60);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21B253EA4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21B34B874();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v21)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(v4 + 48) + 16 * v16;
      v20 = *v19;
      LOBYTE(v19) = *(v19 + 8);
      v21 = *(*(v4 + 56) + 8 * v16);
      v22 = *(v6 + 48) + 16 * v16;
      *v22 = v20;
      *(v22 + 8) = v19;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_21B253FF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33B7E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254014(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33B928(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254034(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33B944(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254054(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33BA48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_21B254074(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return v3;
}

char *sub_21B254088(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33BB7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B2540A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33BCB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B2540C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33BCDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B2540E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33BD00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254108(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33BDF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254128(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33BF4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254148(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33C04C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254168(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33C060(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254188(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33C16C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B2541A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33C190(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B2541C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33C2B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B2541E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33C2D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254208(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33C2F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254228(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33C444(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254248(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33C554(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254268(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33C660(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254288(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33C838(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B2542A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33C92C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B2542C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33CA30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B2542E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33CB34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254308(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33CC30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254328(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33CC54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254348(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33CD74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254368(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33CD90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254388(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33CDB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B2543A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33CED4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B2543C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33CEF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B2543E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33D104(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254408(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33D128(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254428(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33D14C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254448(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33D170(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254468(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33D194(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254488(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33D1B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B2544A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33D1DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B2544C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33D34C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B2544E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33D4A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254508(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33D4C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254528(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33D4EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254548(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33D644(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254568(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B33D7AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_21B254588(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_21B34BBB4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_21B25A878(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_21B254668(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_21B34BBC4();
  sub_21B2615FC(a2, &v24, &qword_27CD7E200, &unk_21B352050);
  if (*(&v25 + 1))
  {
    v22[0] = v24;
    v22[1] = v25;
    v23 = v26;
    sub_21B34BBE4();
    sub_21B34B5C4();
    sub_21B260E14(v22);
  }

  else
  {
    sub_21B34BBE4();
  }

  v5 = sub_21B34BC24();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21B2615FC(a2, v17, &qword_27CD7E200, &unk_21B352050);
    *&v24 = *v13;
    sub_21B25A998(v17, v7, isUniquelyReferenced_nonNull_native);
    *v13 = v24;
    v11 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v11;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }

  v8 = ~v6;
  while (1)
  {
    sub_21B2615FC(*(v4 + 48) + 40 * v7, &v24, &qword_27CD7E200, &unk_21B352050);
    sub_21B2615FC(&v24, v17, &qword_27CD7E200, &unk_21B352050);
    sub_21B2615FC(a2, &v19, &qword_27CD7E200, &unk_21B352050);
    if (!v18)
    {
      break;
    }

    sub_21B2615FC(v17, v22, &qword_27CD7E200, &unk_21B352050);
    if (!*(&v20 + 1))
    {
      sub_21B261664(&v24, &qword_27CD7E200, &unk_21B352050);
      sub_21B260E14(v22);
      goto LABEL_7;
    }

    v15[0] = v19;
    v15[1] = v20;
    v16 = v21;
    v9 = MEMORY[0x21CEEDD80](v22, v15);
    sub_21B260E14(v15);
    sub_21B261664(&v24, &qword_27CD7E200, &unk_21B352050);
    sub_21B260E14(v22);
    sub_21B261664(v17, &qword_27CD7E200, &unk_21B352050);
    if (v9)
    {
      goto LABEL_16;
    }

LABEL_8:
    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_21B261664(&v24, &qword_27CD7E200, &unk_21B352050);
  if (*(&v20 + 1))
  {
LABEL_7:
    sub_21B261664(v17, &qword_27CD7E208, &qword_21B351B20);
    goto LABEL_8;
  }

  sub_21B261664(v17, &qword_27CD7E200, &unk_21B352050);
LABEL_16:
  sub_21B261664(a2, &qword_27CD7E200, &unk_21B352050);
  sub_21B2615FC(*(v4 + 48) + 40 * v7, a1, &qword_27CD7E200, &unk_21B352050);
  return 0;
}

uint64_t sub_21B254968(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v104 = *MEMORY[0x277D85DE8];
  v7 = *v3;
  sub_21B34BBC4();
  v8 = a3 >> 60;
  sub_21B34BBE4();
  if (a3 >> 60 != 15)
  {
    sub_21B34A744();
  }

  v9 = sub_21B34BC24();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_153:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__s1 = *v93;
    sub_21B260DAC(a2, a3);
    sub_21B25AC9C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v93 = *__s1;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v96 = ~v10;
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 == 0xC000000000000000;
  }

  v13 = !v12;
  v94 = v13;
  v14 = __OFSUB__(HIDWORD(a2), a2);
  v91 = v14;
  v95 = a3 >> 62;
  v89 = (a2 >> 32) - a2;
  v90 = a2 >> 32;
  v92 = a1;
  while (1)
  {
    v15 = (*(v7 + 48) + 16 * v11);
    v17 = *v15;
    v16 = v15[1];
    if (v16 >> 60 == 15)
    {
      if (v8 > 0xE)
      {
        sub_21B260DAC(v17, v16);
        v78 = v17;
        v79 = v16;
LABEL_157:
        sub_21B260C58(v78, v79);
        v80 = *(*(v7 + 48) + 16 * v11);
        *a1 = v80;
        sub_21B260DAC(v80, *(&v80 + 1));
        return 0;
      }

LABEL_18:
      sub_21B260DAC(a2, a3);
      sub_21B260DAC(v17, v16);
      sub_21B260C58(v17, v16);
      v18 = a2;
      v19 = a3;
LABEL_19:
      sub_21B260C58(v18, v19);
      goto LABEL_20;
    }

    if (v8 > 0xE)
    {
      goto LABEL_18;
    }

    v20 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v21 = 0;
      }

      else
      {
        v21 = v16 == 0xC000000000000000;
      }

      v23 = !v21 || a3 >> 62 != 3;
      if (((v23 | v94) & 1) == 0)
      {
        sub_21B260DAC(0, 0xC000000000000000);
        sub_21B260DAC(0, 0xC000000000000000);
        sub_21B260C58(0, 0xC000000000000000);
        v17 = 0;
        goto LABEL_155;
      }

LABEL_41:
      v24 = 0;
      goto LABEL_42;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_41;
      }

      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_160;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_161;
      }

      v24 = v24;
    }

    else
    {
      v24 = BYTE6(v16);
    }

LABEL_42:
    if (v95 > 1)
    {
      if (v95 != 2)
      {
        if (v24)
        {
LABEL_60:
          sub_21B260DAC(a2, a3);
          sub_21B260DAC(v17, v16);
          sub_21B260C58(a2, a3);
          v18 = v17;
          v19 = v16;
          goto LABEL_19;
        }

LABEL_154:
        sub_21B260DAC(a2, a3);
        sub_21B260DAC(v17, v16);
        sub_21B260C58(a2, a3);
        goto LABEL_155;
      }

      v30 = *(a2 + 16);
      v29 = *(a2 + 24);
      v27 = __OFSUB__(v29, v30);
      v28 = v29 - v30;
      if (v27)
      {
        goto LABEL_159;
      }
    }

    else
    {
      v28 = BYTE6(a3);
      if (v95)
      {
        v28 = HIDWORD(a2) - a2;
        if (v91)
        {
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
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
        }
      }
    }

    if (v24 != v28)
    {
      goto LABEL_60;
    }

    if (v24 < 1)
    {
      goto LABEL_154;
    }

    if (v20 > 1)
    {
      break;
    }

    if (v20)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_162;
      }

      sub_21B260DAC(v17, v16);
      sub_21B260DAC(a2, a3);
      sub_21B260DAC(v17, v16);
      v40 = sub_21B34A574();
      if (v40)
      {
        v41 = v40;
        v42 = sub_21B34A594();
        if (__OFSUB__(v17, v42))
        {
          goto LABEL_164;
        }

        v86 = (v17 - v42 + v41);
      }

      else
      {
        v86 = 0;
      }

      a1 = v92;
      sub_21B34A584();
      v8 = a3 >> 60;
      if (v95 == 2)
      {
        v70 = *(a2 + 16);
        v84 = *(a2 + 24);
        v49 = sub_21B34A574();
        if (v49)
        {
          v71 = sub_21B34A594();
          if (__OFSUB__(v70, v71))
          {
            goto LABEL_178;
          }

          v49 += v70 - v71;
        }

        v27 = __OFSUB__(v84, v70);
        v72 = v84 - v70;
        if (v27)
        {
          goto LABEL_174;
        }

        v73 = sub_21B34A584();
        if (v73 >= v72)
        {
          v52 = v72;
        }

        else
        {
          v52 = v73;
        }

        v53 = v86;
        if (!v86)
        {
          goto LABEL_185;
        }

        a1 = v92;
        if (!v49)
        {
          goto LABEL_184;
        }
      }

      else
      {
        if (v95 != 1)
        {
          v69 = v86;
          *__s1 = a2;
          *&__s1[8] = a3;
          __s1[10] = BYTE2(a3);
          __s1[11] = BYTE3(a3);
          __s1[12] = BYTE4(a3);
          __s1[13] = BYTE5(a3);
          if (!v86)
          {
            goto LABEL_188;
          }

          goto LABEL_137;
        }

        if (v90 < a2)
        {
          goto LABEL_173;
        }

        v49 = sub_21B34A574();
        if (v49)
        {
          v54 = sub_21B34A594();
          if (__OFSUB__(a2, v54))
          {
            goto LABEL_180;
          }

          v49 += a2 - v54;
        }

        v55 = sub_21B34A584();
        v52 = (a2 >> 32) - a2;
        if (v55 < v89)
        {
          v52 = v55;
        }

        v53 = v86;
        if (!v86)
        {
          goto LABEL_191;
        }

        if (!v49)
        {
          goto LABEL_190;
        }
      }

      goto LABEL_133;
    }

    *__s1 = v17;
    *&__s1[8] = v16;
    __s1[10] = BYTE2(v16);
    __s1[11] = BYTE3(v16);
    __s1[12] = BYTE4(v16);
    __s1[13] = BYTE5(v16);
    if (!v95)
    {
      goto LABEL_76;
    }

    if (v95 == 1)
    {
      if (v90 < a2)
      {
        goto LABEL_166;
      }

      sub_21B260DAC(v17, v16);
      sub_21B260DAC(a2, a3);
      sub_21B260DAC(v17, v16);
      v31 = sub_21B34A574();
      if (!v31)
      {
        goto LABEL_193;
      }

      v32 = v31;
      v33 = sub_21B34A594();
      if (__OFSUB__(a2, v33))
      {
        goto LABEL_170;
      }

      v34 = (a2 - v33 + v32);
      result = sub_21B34A584();
      if (!v34)
      {
        goto LABEL_192;
      }

      goto LABEL_108;
    }

    v82 = *(a2 + 24);
    v88 = *(a2 + 16);
    sub_21B260DAC(v17, v16);
    sub_21B260DAC(a2, a3);
    sub_21B260DAC(v17, v16);
    v43 = sub_21B34A574();
    if (v43)
    {
      v56 = sub_21B34A594();
      v57 = v88;
      if (__OFSUB__(v88, v56))
      {
        goto LABEL_176;
      }

      v43 = &v88[v43 - v56];
    }

    else
    {
      v57 = v88;
    }

    v74 = v82 - v57;
    if (__OFSUB__(v82, v57))
    {
      goto LABEL_169;
    }

    v75 = sub_21B34A584();
    if (!v43)
    {
      goto LABEL_189;
    }

LABEL_147:
    if (v75 >= v74)
    {
      v76 = v74;
    }

    else
    {
      v76 = v75;
    }

    v62 = memcmp(__s1, v43, v76);
    sub_21B260C58(v17, v16);
    sub_21B260C58(a2, a3);
    sub_21B260C58(v17, v16);
    a1 = v92;
LABEL_151:
    v8 = a3 >> 60;
    if (!v62)
    {
      goto LABEL_156;
    }

LABEL_20:
    v11 = (v11 + 1) & v96;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_153;
    }
  }

  if (v20 == 2)
  {
    v36 = *(v17 + 16);
    sub_21B260DAC(v17, v16);
    sub_21B260DAC(a2, a3);
    sub_21B260DAC(v17, v16);
    v37 = sub_21B34A574();
    if (v37)
    {
      v38 = v37;
      v39 = sub_21B34A594();
      if (__OFSUB__(v36, v39))
      {
        goto LABEL_163;
      }

      v85 = (v36 - v39 + v38);
    }

    else
    {
      v85 = 0;
    }

    a1 = v92;
    sub_21B34A584();
    v8 = a3 >> 60;
    if (v95 != 2)
    {
      if (v95 == 1)
      {
        if (v90 < a2)
        {
          goto LABEL_168;
        }

        v49 = sub_21B34A574();
        if (v49)
        {
          v50 = sub_21B34A594();
          if (__OFSUB__(a2, v50))
          {
            goto LABEL_179;
          }

          v49 += a2 - v50;
        }

        v51 = sub_21B34A584();
        v52 = (a2 >> 32) - a2;
        if (v51 < v89)
        {
          v52 = v51;
        }

        v53 = v85;
        if (!v85)
        {
          goto LABEL_183;
        }

        if (!v49)
        {
          goto LABEL_182;
        }

        goto LABEL_133;
      }

      v69 = v85;
      *__s1 = a2;
      *&__s1[8] = a3;
      __s1[10] = BYTE2(a3);
      __s1[11] = BYTE3(a3);
      __s1[12] = BYTE4(a3);
      __s1[13] = BYTE5(a3);
      if (!v85)
      {
        goto LABEL_181;
      }

LABEL_137:
      v46 = memcmp(v69, __s1, BYTE6(a3));
      sub_21B260C58(a2, a3);
      v47 = v17;
      v48 = v16;
LABEL_138:
      sub_21B260C58(v47, v48);
      sub_21B260C58(v17, v16);
      if (!v46)
      {
        goto LABEL_156;
      }

      goto LABEL_20;
    }

    v65 = *(a2 + 16);
    v83 = *(a2 + 24);
    v49 = sub_21B34A574();
    if (v49)
    {
      v66 = sub_21B34A594();
      if (__OFSUB__(v65, v66))
      {
        goto LABEL_177;
      }

      v49 += v65 - v66;
    }

    v27 = __OFSUB__(v83, v65);
    v67 = v83 - v65;
    if (v27)
    {
      goto LABEL_172;
    }

    v68 = sub_21B34A584();
    if (v68 >= v67)
    {
      v52 = v67;
    }

    else
    {
      v52 = v68;
    }

    v53 = v85;
    if (!v85)
    {
      goto LABEL_187;
    }

    a1 = v92;
    if (!v49)
    {
      goto LABEL_186;
    }

LABEL_133:
    if (v53 != v49)
    {
      v62 = memcmp(v53, v49, v52);
      sub_21B260C58(a2, a3);
      v63 = v17;
      v64 = v16;
      goto LABEL_135;
    }

    sub_21B260C58(a2, a3);
    sub_21B260C58(v17, v16);
LABEL_155:
    sub_21B260C58(v17, v16);
LABEL_156:
    v78 = a2;
    v79 = a3;
    goto LABEL_157;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v95)
  {
LABEL_76:
    __s2 = a2;
    v98 = a3;
    v99 = BYTE2(a3);
    v100 = BYTE3(a3);
    v101 = BYTE4(a3);
    v102 = BYTE5(a3);
    sub_21B260DAC(a2, a3);
    sub_21B260DAC(v17, v16);
    v46 = memcmp(__s1, &__s2, BYTE6(a3));
    v47 = a2;
    v48 = a3;
    goto LABEL_138;
  }

  if (v95 != 2)
  {
    if (v90 < a2)
    {
      goto LABEL_165;
    }

    sub_21B260DAC(v17, v16);
    sub_21B260DAC(a2, a3);
    sub_21B260DAC(v17, v16);
    v58 = sub_21B34A574();
    if (!v58)
    {
      goto LABEL_194;
    }

    v59 = v58;
    v60 = sub_21B34A594();
    if (__OFSUB__(a2, v60))
    {
      goto LABEL_171;
    }

    v34 = (a2 - v60 + v59);
    result = sub_21B34A584();
    if (!v34)
    {
      goto LABEL_195;
    }

LABEL_108:
    if (result >= v89)
    {
      v61 = (a2 >> 32) - a2;
    }

    else
    {
      v61 = result;
    }

    v62 = memcmp(__s1, v34, v61);
    sub_21B260C58(v17, v16);
    v63 = a2;
    v64 = a3;
LABEL_135:
    sub_21B260C58(v63, v64);
    sub_21B260C58(v17, v16);
    goto LABEL_151;
  }

  v81 = *(a2 + 24);
  v87 = *(a2 + 16);
  sub_21B260DAC(v17, v16);
  sub_21B260DAC(a2, a3);
  sub_21B260DAC(v17, v16);
  v43 = sub_21B34A574();
  if (v43)
  {
    v44 = sub_21B34A594();
    v45 = v87;
    if (__OFSUB__(v87, v44))
    {
      goto LABEL_175;
    }

    v43 = &v87[v43 - v44];
  }

  else
  {
    v45 = v87;
  }

  v74 = v81 - v45;
  if (__OFSUB__(v81, v45))
  {
    goto LABEL_167;
  }

  v75 = sub_21B34A584();
  if (v43)
  {
    goto LABEL_147;
  }

  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  sub_21B34A584();
  __break(1u);
LABEL_194:
  result = sub_21B34A584();
LABEL_195:
  __break(1u);
  return result;
}

uint64_t sub_21B255530(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1D8, &qword_21B351B08);
  MEMORY[0x28223BE20](v53);
  v5 = &v38 - v4;
  v6 = sub_21B34A834();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v48 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v52 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v46 = &v38 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v39 = &v38 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - v17;
  v40 = v2;
  v55 = *v2;
  sub_21B34BBC4();
  v54 = a2;
  sub_21B2615FC(a2, v18, &qword_27CD7E100, &unk_21B352A30);
  v19 = *(v7 + 48);
  if (v19(v18, 1, v6) == 1)
  {
    sub_21B34BBE4();
  }

  else
  {
    (*(v7 + 32))(v9, v18, v6);
    sub_21B34BBE4();
    sub_21B260D68(&qword_27CD7E1E0, MEMORY[0x277CC9588]);
    sub_21B34AAB4();
    (*(v7 + 8))(v9, v6);
  }

  v20 = sub_21B34BC24();
  v21 = -1 << *(v55 + 32);
  v22 = v20 & ~v21;
  v51 = v55 + 56;
  if (((*(v55 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
LABEL_14:
    v33 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v54;
    v36 = v39;
    sub_21B2615FC(v54, v39, &qword_27CD7E100, &unk_21B352A30);
    v56 = *v33;
    sub_21B25B884(v36, v22, isUniquelyReferenced_nonNull_native);
    *v33 = v56;
    sub_21B260BE8(v35, v41);
    return 1;
  }

  v49 = v19;
  v50 = v7 + 48;
  v43 = v9;
  v47 = ~v21;
  v42 = (v7 + 32);
  v48 = *(v48 + 72);
  v45 = (v7 + 8);
  v23 = v46;
  while (1)
  {
    v24 = v48 * v22;
    sub_21B2615FC(*(v55 + 48) + v48 * v22, v23, &qword_27CD7E100, &unk_21B352A30);
    v25 = *(v53 + 48);
    sub_21B2615FC(v23, v5, &qword_27CD7E100, &unk_21B352A30);
    sub_21B2615FC(v54, &v5[v25], &qword_27CD7E100, &unk_21B352A30);
    v26 = v49;
    if (v49(v5, 1, v6) == 1)
    {
      break;
    }

    sub_21B2615FC(v5, v52, &qword_27CD7E100, &unk_21B352A30);
    if (v26(&v5[v25], 1, v6) == 1)
    {
      v23 = v46;
      sub_21B261664(v46, &qword_27CD7E100, &unk_21B352A30);
      (*v45)(v52, v6);
      goto LABEL_7;
    }

    v27 = v6;
    v28 = v52;
    v29 = v43;
    (*v42)(v43, &v5[v25], v27);
    sub_21B260D68(&qword_27CD7E1E8, MEMORY[0x277CC9598]);
    v44 = sub_21B34AC54();
    v30 = *v45;
    v31 = v29;
    v32 = v28;
    v6 = v27;
    (*v45)(v31, v27);
    v23 = v46;
    sub_21B261664(v46, &qword_27CD7E100, &unk_21B352A30);
    v30(v32, v6);
    sub_21B261664(v5, &qword_27CD7E100, &unk_21B352A30);
    if (v44)
    {
      goto LABEL_16;
    }

LABEL_8:
    v22 = (v22 + 1) & v47;
    if (((*(v51 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_21B261664(v23, &qword_27CD7E100, &unk_21B352A30);
  if (v26(&v5[v25], 1, v6) != 1)
  {
LABEL_7:
    sub_21B261664(v5, &qword_27CD7E1D8, &qword_21B351B08);
    goto LABEL_8;
  }

  sub_21B261664(v5, &qword_27CD7E100, &unk_21B352A30);
LABEL_16:
  sub_21B261664(v54, &qword_27CD7E100, &unk_21B352A30);
  sub_21B2615FC(*(v55 + 48) + v24, v41, &qword_27CD7E100, &unk_21B352A30);
  return 0;
}