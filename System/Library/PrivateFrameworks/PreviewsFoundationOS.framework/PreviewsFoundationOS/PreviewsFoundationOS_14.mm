void *sub_25F2EFC2C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58D48, &qword_25F3165A0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD58D50, qword_25F3165A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F2EFD74(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58D38, &qword_25F316590);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58D40, &qword_25F316598);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_25F2EFEBC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

char *sub_25F2EFED4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58C98, &qword_25F3164B0);
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

void *sub_25F2EFFD8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58CF8, &qword_25F316528);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58D00, &qword_25F316530);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F2F0120(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58D28, &qword_25F316578);
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

char *sub_25F2F0250(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58C70, &qword_25F316480);
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

char *sub_25F2F0384(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52DA0, &qword_25F316570);
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

char *sub_25F2F04A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54D58, &qword_25F30D4B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F2F05C4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58C90, &unk_25F3164A0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD576C8, &qword_25F312A70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F2F070C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58D18, &qword_25F316560);
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

char *sub_25F2F084C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E20, &unk_25F308470);
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

void *sub_25F2F09D0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58CB8, &unk_25F3164D0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F30, &qword_25F308580);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F2F0B18(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52DA8, &unk_25F3083F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F2F0C70(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52DC0, &qword_25F308410);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52DC8, &qword_25F308418);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F2F0DB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58CB0, &qword_25F3164C8);
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

void *sub_25F2F0F04(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
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

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
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
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58C68, &unk_25F316460);
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_25F2F1030(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D48, &unk_25F308200);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D50, &qword_25F3085B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F2F1164(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58CE8, &qword_25F316508);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58CF0, &unk_25F316510);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F2F12CC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *sub_25F2F1400(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58C88, &qword_25F316498);
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

char *sub_25F2F14F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58D20, &qword_25F316568);
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

void *sub_25F2F1624(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

void *sub_25F2F1794(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

unsigned __int8 *sub_25F2F1970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_25F3050BC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_25F2E14DC(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25F30605C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
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

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_25F2F1EFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL _s20PreviewsFoundationOS16CrashReportErrorV015ConditionInFileF0V4KindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      return a6 == 3 && !(a5 | a4);
    }

    if (a6 != 2)
    {
      return 0;
    }
  }

  else if (a3)
  {
    if (a6 != 1)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a2)
  {
    return a5 && (a1 == a4 && a2 == a5 || (sub_25F30659C() & 1) != 0);
  }

  return !a5;
}

uint64_t sub_25F2F2010(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

void sub_25F2F2050(uint64_t a1)
{
  sub_25F243F28(319, &qword_27FD53DF0, &type metadata for HumanReadableErrorOptions);
  if (v1 <= 0x3F)
  {
    sub_25F243F28(319, &qword_27FD58C58, MEMORY[0x277D83B88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CrashReport(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS16CrashReportErrorV015ConditionInFileF0V4KindO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_25F2F213C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F2F2184(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F2F21C8(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_25F2F21F0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_25F1BF118();
  if (sub_25F305D5C())
  {
    v2 = sub_25F305D5C();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t RepeatedInvocation.__allocating_init(scheduler:callback:cadences:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  RepeatedInvocation.init(scheduler:callback:cadences:)(a1, a2, a3, a4);
  return v8;
}

uint64_t *RepeatedInvocation.init(scheduler:callback:cadences:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = *v4;
  v15 = *a4;
  v9 = *(a4 + 2);
  v10 = *(a4 + 24);
  *(v4 + *(v8 + 128)) = 0;
  v11 = *(*v4 + 136);
  v12 = *(v8 + 80);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 56))(v4 + v11, 1, 1, TupleTypeMetadata2);
  (*(*(v12 - 8) + 32))(v4 + *(*v4 + 120), a1, v12);
  v4[6] = a2;
  v4[7] = a3;
  *(v4 + 1) = v15;
  v4[4] = v9;
  *(v4 + 40) = v10;
  return v4;
}

Swift::Void __swiftcall RepeatedInvocation.start()()
{
  v1 = *v0;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v3 = sub_25F305C1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  v7 = *(v1 + 136);
  swift_beginAccess();
  (*(v4 + 16))(v6, &v0[v7], v3);
  LODWORD(v7) = (*(*(TupleTypeMetadata2 - 8) + 48))(v6, 1, TupleTypeMetadata2);
  (*(v4 + 8))(v6, v3);
  if (v7 == 1)
  {
    RepeatedInvocation.restart()();
  }
}

Swift::Void __swiftcall RepeatedInvocation.restart()()
{
  v1 = *v0;
  RepeatedInvocation.cancel()();
  v2 = *(v0 + 40);
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = v2;
  type metadata accessor for RepeatedInvocation.Cadence(255, v1[10], v1[11], v1[12]);
  v3 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v6 = type metadata accessor for Inhabited(0, v3, WitnessTable, v5);
  Inhabited.first.getter(v6, v7, &v10);
  v8 = v10;
  v9 = v11;
  sub_25F2F2984(&v8, 0);
}

Swift::Void __swiftcall RepeatedInvocation.cancel()()
{
  v1 = v0;
  v2 = *v0;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = sub_25F305C1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *&v1[*(v2 + 128)];
  if (v8)
  {
    v9 = *(**(v8 + 16) + 112);

    v9(v10);
  }

  (*(*(TupleTypeMetadata2 - 8) + 56))(v7, 1, 1, TupleTypeMetadata2);
  v11 = *(*v1 + 136);
  swift_beginAccess();
  (*(v5 + 40))(&v1[v11], v7, v4);
  swift_endAccess();
}

uint64_t sub_25F2F2984(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v5 = *v2;
  v33 = *(*v2 + 88);
  v32 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = sub_25F305C1C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v29 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = *a1;
  v14 = *(v5 + 136);
  swift_beginAccess();
  (*(v8 + 16))(v12, v2 + v14, v7);
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = *(v15 + 48);
  LODWORD(a1) = v16(v12, 1, TupleTypeMetadata2);
  v30 = v8;
  v31 = v7;
  v17 = v12;
  v18 = v32;
  (*(v8 + 8))(v17, v7);
  v19 = a1 == 1;
  v20 = v33;
  if (v19 || v16((v3 + v14), 1, TupleTypeMetadata2) || *(v3 + v14) != v34)
  {
    v21 = v29;
    *v29 = v34;
    (*(v20 + 24))(v18, v20);
    (*(v15 + 56))(v21, 0, 1, TupleTypeMetadata2);
    swift_beginAccess();
    (*(v30 + 40))(v3 + v14, v21, v31);
    swift_endAccess();
  }

  type metadata accessor for DelayedInvocation();
  v22 = *(*v3 + 120);

  v23 = sub_25F22DC28(v3 + v22, sub_25F2F3AF4, v3, v18, v20);
  v24 = *(*v3 + 128);
  *(v3 + v24) = v23;

  v26 = *(v3 + v24);
  if (v26)
  {
    v27 = *(v26 + 16);
    v35[0] = v13;
    v28 = *(*v27 + 104);

    v28(v35);
  }

  return result;
}

uint64_t sub_25F2F2D38()
{
  v1 = v0;
  v2 = *v0;
  v3 = v2;
  v4 = v2[11];
  v5 = v2[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v47 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = &v46 - v9;
  v49 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_25F305C1C();
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v46 - v14;
  v16 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = (&v46 - v17);
  v19 = *(v1 + v2[16]);
  if (v19)
  {
    v20 = **(v19 + 16);
    v50 = v16;
    v51 = TupleTypeMetadata2;
    v21 = v4;
    v22 = *(v20 + 112);

    v22(v23);
    v4 = v21;
    v16 = v50;
    TupleTypeMetadata2 = v51;

    v2 = *v1;
  }

  v24 = v2[17];
  swift_beginAccess();
  v25 = v52;
  v26 = v1 + v24;
  v27 = v53;
  (*(v52 + 16))(v15, v26, v53);
  if ((*(v16 + 48))(v15, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v25 + 8))(v15, v27);
  }

  (*(v16 + 32))(v18, v15, TupleTypeMetadata2);
  v29 = *(v1 + 40);
  v59 = v1[2];
  v60 = *(v1 + 3);
  v61 = v29;
  v53 = v3[12];
  type metadata accessor for RepeatedInvocation.Cadence(255, v5, v4, v53);
  v30 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v33 = type metadata accessor for Inhabited(0, v30, WitnessTable, v32);
  v34 = swift_getWitnessTable();
  PredicatedWrapper.value.getter(v33, v34, &v58);
  v35 = *v18;
  v57 = v58;
  v54 = v35;
  swift_getWitnessTable();
  RandomAccessCollection.subscript.getter(v55);
  v36 = v56;
  if (v56 == 255)
  {
    (*(v16 + 8))(v18, TupleTypeMetadata2);
  }

  v37 = v55[1];
  v52 = v55[0];

  if (!v36)
  {
    sub_25F2F3344();
    return (*(v16 + 8))(v18, TupleTypeMetadata2);
  }

  if (v36 != 1)
  {
    v59 = v52;
    *&v60 = v37;
    BYTE8(v60) = 2;
    sub_25F2F2984(&v59, v35);
    return (*(v16 + 8))(v18, TupleTypeMetadata2);
  }

  v59 = v37;
  v38 = v49;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = *(AssociatedConformanceWitness + 8);
  v51 = v18;
  v41 = v46;
  v40(&v59, v38, AssociatedConformanceWitness);
  v42 = *(v4 + 24);
  v50 = v37;
  v43 = v47;
  v42(v5, v4);
  v44 = sub_25F304CEC();
  v45 = *(v48 + 8);
  v45(v43, v38);
  v45(v41, v38);
  if (v44)
  {
    sub_25F2F3344();
  }

  else
  {
    v59 = v52;
    *&v60 = v50;
    BYTE8(v60) = 1;
    sub_25F2F2984(&v59, v35);
  }

  return (*(v16 + 8))(v51, TupleTypeMetadata2);
}

uint64_t sub_25F2F3344()
{
  v25[0] = *v0;
  v1 = v25[0];
  v2 = *(v25[0] + 88);
  v3 = *(v25[0] + 80);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = sub_25F305C1C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v25 - v8;
  v10 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](v7);
  v12 = (v25 - v11);
  v13 = *(v1 + 136);
  swift_beginAccess();
  (*(v6 + 16))(v9, v0 + v13, v5);
  if ((*(v10 + 48))(v9, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v6 + 8))(v9, v5);
  }

  result = (*(v10 + 32))(v12, v9, TupleTypeMetadata2);
  v15 = *v12 + 1;
  if (__OFADD__(*v12, 1))
  {
    __break(1u);
  }

  else
  {
    v16 = *(v0 + 40);
    v30 = *(v0 + 16);
    v31 = *(v0 + 24);
    v32 = v16;
    type metadata accessor for RepeatedInvocation.Cadence(255, v3, v2, *(v25[0] + 96));
    v17 = sub_25F30539C();
    WitnessTable = swift_getWitnessTable();
    v20 = type metadata accessor for Inhabited(0, v17, WitnessTable, v19);
    v21 = swift_getWitnessTable();
    PredicatedWrapper.value.getter(v20, v21, &v29);
    v28 = v29;
    v25[1] = v15;
    swift_getWitnessTable();
    RandomAccessCollection.subscript.getter(v26);
    v22 = v27;
    if (v27 == 255)
    {
      (*(v10 + 8))(v12, TupleTypeMetadata2);
    }

    else
    {
      v24 = v26[0];
      v23 = v26[1];

      v30 = v24;
      *&v31 = v23;
      BYTE8(v31) = v22;
      sub_25F2F2984(&v30, v15);
      return (*(v10 + 8))(v12, TupleTypeMetadata2);
    }
  }

  return result;
}

char *RepeatedInvocation.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120), *(v1 + 80));

  v2 = *(*v0 + 136);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v3 = sub_25F305C1C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t RepeatedInvocation.__deallocating_deinit()
{
  RepeatedInvocation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25F2F38B4(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getTupleTypeMetadata2();
    v1 = sub_25F305C1C();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v1;
}

uint64_t sub_25F2F3A34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F2F3A70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F2F3AB8(uint64_t a1)
{
  result = *(a1 + 16);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t sub_25F2F3AD4(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_25F2F3AF4()
{
  (*(v0 + 48))();

  return sub_25F2F2D38();
}

uint64_t Predicated.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_25F305C1C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  (*(a3 + 24))(a1, a2, a3);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    v19 = swift_getAssociatedTypeWitness();
    (*(*(v19 - 8) + 8))(a1, v19);
    (*(v9 + 8))(v12, v8);
    v21 = 1;
    v22 = v27;
  }

  else
  {
    v23 = *(v13 + 32);
    v23(v18, v12, AssociatedTypeWitness);
    v23(v16, v18, AssociatedTypeWitness);
    v22 = v27;
    sub_25F2F40D8(a1, v16, a2, a3, v27);
    v21 = 0;
  }

  v24 = type metadata accessor for Predicated(0, a2, a3, v20);
  return (*(*(v24 - 8) + 56))(v22, v21, 1, v24);
}

uint64_t static Predicated.unverified(value:proof:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v19 - v12;
  v14 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v14);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, a1);
  (*(v11 + 16))(v13, a2, AssociatedTypeWitness);
  return sub_25F2F40D8(v16, v13, a3, a4, a5);
}

uint64_t Predicated.value.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t Predicated.proof.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t sub_25F2F40D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  v12 = *(type metadata accessor for Predicated(0, a3, a4, v11) + 36);
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(*(v13 - 8) + 32);

  return v14(a5 + v12, a2, v13);
}

uint64_t sub_25F2F41DC(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F2F429C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, AssociatedTypeWitness);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
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
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_25F2F455C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v8 + 56);

    v23(a1, a2, v9, AssociatedTypeWitness);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_25F2F4898(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for IOPowerSource.Observer(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_25F2F7440(a3 + v15 + v16 * v13, v12);
      v17 = a1(v12);
      if (v3)
      {
        sub_25F2F7048(v12);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_25F2F74AC(v12, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25F1BD228(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_25F1BD228((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_25F2F74AC(v24, v14 + v15 + v20 * v16);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_25F2F7048(v12);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

PreviewsFoundationOS::IOPowerSource::State::BatteryInfo __swiftcall IOPowerSource.State.BatteryInfo.init(lowPowerMode:status:level:)(Swift::Bool lowPowerMode, PreviewsFoundationOS::IOPowerSource::State::BatteryInfo::Status status, Swift::Double level)
{
  *v3 = lowPowerMode;
  *(v3 + 1) = status;
  *(v3 + 8) = level;
  result.level = level;
  result.lowPowerMode = lowPowerMode;
  return result;
}

uint64_t IOPowerSource.State.BatteryInfo.Status.hashValue.getter(unsigned __int8 a1)
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](a1);
  return sub_25F30676C();
}

CFRunLoopSourceRef sub_25F2F4C58()
{
  v0 = [objc_opt_self() mainRunLoop];
  type metadata accessor for IOPowerSource();
  v1 = swift_allocObject();
  result = IOPowerSource.init(observeOn:)(v0);
  qword_27FD58ED8 = v1;
  return result;
}

uint64_t IOPowerSource.__allocating_init(observeOn:)(void *a1)
{
  v2 = swift_allocObject();
  IOPowerSource.init(observeOn:)(a1);
  return v2;
}

uint64_t static IOPowerSource.shared.getter()
{
  if (qword_27FD529B0 != -1)
  {
    swift_once();
  }
}

uint64_t IOPowerSource.currentState.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 40));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);

  os_unfair_lock_unlock((v3 + 40));

  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t IOPowerSource.addObserver(_:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v23 = a3;
  v6 = sub_25F30467C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IOPowerSource.Observer(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s20PreviewsFoundationOS11CrashReportV2IDVAEycfC_0();
  v14 = &v13[*(v11 + 28)];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v9, v13, v6);
  v16 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  (*(v7 + 32))(v17 + v16, v9, v6);
  v25.n128_u64[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/IOPowerSource.swift";
  v25.n128_u64[1] = 125;
  v26 = 2;
  *v27 = v34[0];
  *&v27[3] = *(v34 + 3);
  v28 = xmmword_25F3166A0;
  v29 = "addObserver(_:)";
  v30 = 15;
  v31 = 2;
  CancellationToken.init(callsite:didCancel:)(&v25, sub_25F2F6FC8, v17, &v32);
  v18 = v33;
  v22 = v32;
  v19 = *(v3 + 24);
  v24 = v13;

  os_unfair_lock_lock((v19 + 40));
  sub_25F2F702C((v19 + 16), &v25);
  os_unfair_lock_unlock((v19 + 40));
  a1(&v25);
  v20 = v23;
  *v23 = v22;
  *(v20 + 2) = v18;
  return sub_25F2F7048(v13);
}

uint64_t sub_25F2F5040(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 24);
    MEMORY[0x28223BE20](result);
    os_unfair_lock_lock(v2 + 10);
    sub_25F2F7510(&v2[4]);
    os_unfair_lock_unlock(v2 + 10);
  }

  return result;
}

__n128 sub_25F2F50F4@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v6 = type metadata accessor for IOPowerSource.Observer(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F2F7440(a2, v9);
  v10 = a1[1].n128_u64[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_25F2F176C(0, v10[2] + 1, 1, v10);
  }

  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_25F2F176C((v11 > 1), v12 + 1, 1, v10);
  }

  v10[2] = v12 + 1;
  sub_25F2F74AC(v9, v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12);
  a1[1].n128_u64[0] = v10;
  result = *a1;
  *a3 = *a1;
  return result;
}

CFRunLoopSourceRef IOPowerSource.init(observeOn:)(void *a1)
{
  v2 = v1;
  v31 = a1;
  v30 = sub_25F305A4C();
  MEMORY[0x28223BE20](v30);
  v29[1] = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25F30494C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_25F30491C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F305A9C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58EE0, &unk_25F3166C0);
  v13 = swift_allocObject();
  *(v13 + 40) = 0;
  *(v13 + 16) = xmmword_25F3101A0;
  v14 = MEMORY[0x277D84F90];
  *(v13 + 32) = MEMORY[0x277D84F90];
  *(v2 + 24) = v13;
  sub_25F2A7CB0(0, &qword_27FD54668, 0x277D85C78);
  v29[0] = "rSource.swift";
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
  (*(v10 + 104))(v12, *MEMORY[0x277D85268], v9);
  (*(v6 + 104))(v8, *MEMORY[0x277D851C8], v5);
  sub_25F305ADC();
  (*(v6 + 8))(v8, v5);
  sub_25F30492C();
  aBlock = v14;
  sub_25F2F754C(&qword_27FD556F0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556F8, &qword_25F30E2F0);
  sub_25F278418(&qword_27FD55700, &qword_27FD556F8, &qword_25F30E2F0);
  sub_25F305E5C();
  *(v2 + 56) = sub_25F305ACC();
  v15 = v31;
  *(v2 + 16) = v31;
  v16 = v15;
  sub_25F2F5E94(&aBlock);
  if (aBlock == 4)
  {
    v17 = 2;
  }

  else
  {
    v17 = aBlock;
  }

  if (aBlock == 4)
  {
    v18 = 0;
  }

  else
  {
    v18 = v33;
  }

  v19 = *(v2 + 24);
  os_unfair_lock_lock((v19 + 40));
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  os_unfair_lock_unlock((v19 + 40));
  type metadata accessor for IOPowerSource.NotificationCallbackWrapper();
  v20 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  *(v2 + 48) = v20;

  result = IOPSNotificationCreateRunLoopSource(sub_25F2F5AA4, v20);
  if (result)
  {
    v22 = *(v2 + 32);
    *(v2 + 32) = result;

    v23 = [v16 getCFRunLoop];
    CFRunLoopAddSource(v23, *(v2 + 32), *MEMORY[0x277CBF058]);

    v24 = [objc_opt_self() defaultCenter];
    v25 = *MEMORY[0x277CCA5E8];
    v26 = swift_allocObject();
    swift_weakInit();

    v36 = sub_25F2F70C8;
    v37 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_25F2F5B5C;
    v35 = &block_descriptor_13;
    v27 = _Block_copy(&aBlock);

    v28 = [v24 addObserverForName:v25 object:0 queue:0 usingBlock:v27];

    _Block_release(v27);
    *(v2 + 40) = v28;
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F2F57D0()
{
  v1 = sub_25F30490C();
  v12 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F30494C();
  v4 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 56);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_25F2F7438;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F1D8C38;
  aBlock[3] = &block_descriptor_39_0;
  v8 = _Block_copy(aBlock);

  sub_25F30492C();
  v13 = MEMORY[0x277D84F90];
  sub_25F2F754C(&qword_27FD53A98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
  sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
  sub_25F305E5C();
  MEMORY[0x25F8D7C70](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_25F2F5AA4(uint64_t result)
{
  if (result)
  {

    if (swift_weakLoadStrong())
    {
      sub_25F2F57D0();
    }
  }

  return result;
}

uint64_t sub_25F2F5B04(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_25F2F57D0();
  }

  return result;
}

uint64_t sub_25F2F5B5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_25F30429C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_25F30428C();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

id *IOPowerSource.deinit()
{
  sub_25F2F5C94();

  swift_unknownObjectRelease();

  return v0;
}

void sub_25F2F5C94()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[6];
    v3 = v0[2];
    v4 = v1;
    v5 = [v3 getCFRunLoop];
    v6 = *MEMORY[0x277CBF058];
    v7 = v5;
    CFRunLoopRemoveSource(v7, v4, v6);
    if (!v6)
    {
      __break(1u);
      return;
    }

    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    v14[4] = sub_25F2F7428;
    v14[5] = v8;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_25F1D8C38;
    v14[3] = &block_descriptor_35;
    v9 = _Block_copy(v14);

    CFRunLoopPerformBlock(v7, v6, v9);

    _Block_release(v9);
    v10 = v0[4];
    v0[4] = 0;
  }

  v11 = v0[5];
  if (v11)
  {
    v12 = objc_opt_self();
    swift_unknownObjectRetain();
    v13 = [v12 defaultCenter];
    [v13 removeObserver_];

    swift_unknownObjectRelease();
    v0[5] = 0;
    swift_unknownObjectRelease();
  }
}

uint64_t IOPowerSource.__deallocating_deinit()
{
  sub_25F2F5C94();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

const void *sub_25F2F5E94@<X0>(double *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58F00, &qword_25F3168D8);
  MEMORY[0x28223BE20](v2);
  v4 = v35 - v3;
  result = IOPSCopyPowerSourcesInfo();
  if (!result)
  {
    goto LABEL_21;
  }

  v6 = result;
  v7 = IOPSCopyPowerSourcesList(result);
  if (!v7)
  {
    result = swift_unknownObjectRelease();
LABEL_21:
    *a1 = xmmword_25F3166B0;
    return result;
  }

  v8 = v7;
  v37 = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  swift_unknownObjectRetain_n();
  v10 = v8;

  v36 = v10;
  sub_25F305B3C();
  v11 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58F08, &qword_25F3168E0) + 44)];
  *v11 = sub_25F2F74A4;
  *(v11 + 1) = v9;
  v35[1] = v9;
  v12 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58F10, &qword_25F3168E8) + 36)];
  *v12 = sub_25F2F6EDC;
  *(v12 + 1) = 0;
  v13 = &v4[*(v2 + 44)];
  *v13 = sub_25F2F6EEC;
  *(v13 + 1) = 0;
  sub_25F30440C();
  sub_25F2F754C(&qword_27FD58F18, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_25F305CDC();
  v40 = v42;
  v41 = v43;
  if (!*(&v43 + 1))
  {
LABEL_19:
    swift_unknownObjectRelease();

    v19 = v36;

    sub_25F1AF698(v4, &qword_27FD58F00, &qword_25F3168D8);
    result = swift_unknownObjectRelease();
    *v37 = xmmword_25F3101B0;
    return result;
  }

  while (1)
  {
    sub_25F1B707C(&v40, &v38);
    __swift_project_boxed_opaque_existential_1(&v38, v39);
    v14 = sub_25F30657C();
    v15 = IOPSGetPowerSourceDescription(v6, v14);
    swift_unknownObjectRelease();
    if (!v15)
    {
      __swift_destroy_boxed_opaque_existential_1(&v38);
      goto LABEL_7;
    }

    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(&v38);
    *&v40 = 1701869908;
    *(&v40 + 1) = 0xE400000000000000;
    v17 = [(__CFDictionary *)v16 __swift_objectForKeyedSubscript:sub_25F30662C()];
    swift_unknownObjectRelease();
    if (v17)
    {
      sub_25F305DDC();
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
    }

    v42 = v40;
    v43 = v41;
    if (*(&v41 + 1))
    {
      break;
    }

    sub_25F1AF698(&v42, &qword_27FD53DF8, &unk_25F30A470);
LABEL_6:

LABEL_7:
    sub_25F305CDC();
    v40 = v42;
    v41 = v43;
    if (!*(&v43 + 1))
    {
      goto LABEL_19;
    }
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (v38 == __PAIR128__(0xEF79726574746142, 0x6C616E7265746E49))
  {

    v20 = v36;

    goto LABEL_22;
  }

  v18 = sub_25F30659C();

  if ((v18 & 1) == 0)
  {
    goto LABEL_6;
  }

  v20 = v36;

LABEL_22:
  swift_unknownObjectRelease();
  sub_25F1AF698(v4, &qword_27FD58F00, &qword_25F3168D8);
  v21 = sub_25F2F6C34(v16);
  *&v40 = 0xD000000000000010;
  *(&v40 + 1) = 0x800000025F31BFE0;
  v22 = [(__CFDictionary *)v16 __swift_objectForKeyedSubscript:sub_25F30662C()];
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42 = v40;
  v43 = v41;
  if (*(&v41 + 1))
  {
    sub_25F2A7CB0(0, qword_27FD577F8, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v23 = v38;
      [v38 doubleValue];
      v25 = v24;

      goto LABEL_30;
    }
  }

  else
  {
    sub_25F1AF698(&v42, &qword_27FD53DF8, &unk_25F30A470);
  }

  v25 = 1.0;
LABEL_30:
  strcpy(&v40, "Max Capacity");
  BYTE13(v40) = 0;
  HIWORD(v40) = -5120;
  v26 = [(__CFDictionary *)v16 __swift_objectForKeyedSubscript:sub_25F30662C()];
  swift_unknownObjectRelease();
  if (v26)
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42 = v40;
  v43 = v41;
  if (!*(&v41 + 1))
  {
    sub_25F1AF698(&v42, &qword_27FD53DF8, &unk_25F30A470);
LABEL_41:
    v31 = 1.0;
    if (v25 <= 1.0)
    {
      v31 = v25;
    }

    goto LABEL_43;
  }

  sub_25F2A7CB0(0, qword_27FD577F8, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_41;
  }

  v27 = v38;
  [v38 doubleValue];
  v29 = v28;

  v30 = 0.0;
  if (v29 == 0.0)
  {
    goto LABEL_46;
  }

  v31 = 1.0;
  if (v25 / v29 <= 1.0)
  {
    if (v25 / v29 > 0.0)
    {
      v30 = v25 / v29;
    }

    else
    {
      v30 = 0.0;
    }

    goto LABEL_46;
  }

LABEL_43:
  if (v31 > 0.0)
  {
    v30 = v31;
  }

  else
  {
    v30 = 0.0;
  }

LABEL_46:
  v32 = [objc_opt_self() processInfo];
  v33 = [v32 isLowPowerModeEnabled];

  result = swift_unknownObjectRelease();
  v34 = v37;
  *v37 = v33 & 0xFFFF00FF | (v21 << 8);
  v34[1] = v30;
  return result;
}

uint64_t sub_25F2F65A8(uint64_t a1)
{
  v1 = type metadata accessor for IOPowerSource.Observer(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(result + 24);
    os_unfair_lock_lock((v7 + 40));
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);

    os_unfair_lock_unlock((v7 + 40));

    sub_25F2F5E94(&v22);
    if (v22 == 4)
    {
      v10 = 2;
    }

    else
    {
      v10 = v22;
    }

    if (v22 == 4)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v23;
    }

    v12 = *(v6 + 24);
    os_unfair_lock_lock((v12 + 40));
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    os_unfair_lock_unlock((v12 + 40));
    v13 = *(v6 + 24);

    os_unfair_lock_lock((v13 + 40));
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    v16 = *(v13 + 32);

    os_unfair_lock_unlock((v13 + 40));

    if (v14 == 2)
    {
      if (v8 == 2)
      {
        goto LABEL_18;
      }
    }

    else if (v14 == 3)
    {
      if (v8 == 3)
      {
LABEL_18:
      }
    }

    else if ((v8 & 0xFE) != 2 && ((v14 ^ v8) & 0xFF00) == 0 && ((v14 ^ v8) & 1) == 0 && v9 == v15)
    {
      goto LABEL_18;
    }

    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = v16 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v19 = *(v2 + 72);
      do
      {
        sub_25F2F7440(v18, v4);
        v20 = *&v4[*(v1 + 20)];
        v22 = v14;
        v23 = v15;
        v20(&v22);
        sub_25F2F7048(v4);
        v18 += v19;
        --v17;
      }

      while (v17);
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t sub_25F2F67F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v6[2] = a2;

  v4 = sub_25F2F4898(sub_25F2F752C, v6, v3);

  *(a1 + 16) = v4;
  return result;
}

BOOL sub_25F2F6870(uint64_t a1, uint64_t a2)
{
  sub_25F30467C();
  sub_25F2F754C(qword_27FD58F20, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  return (sub_25F304DCC() & 1) == 0;
}

uint64_t sub_25F2F6904()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25F2F693C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F30467C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void IOPowerSource.State.description.getter()
{
  v1 = *v0;
  v2 = *v0;
  if (v2 == 2 || v2 == 3)
  {
    return;
  }

  v3 = v0[1] * 100.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v7 = sub_25F3064DC();
  v8 = v4;
  MEMORY[0x25F8D7130](37, 0xE100000000000000);
  sub_25F305FAC();
  MEMORY[0x25F8D7130](0xD00000000000001FLL, 0x800000025F31BE50);
  if (LOBYTE(v1))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (LOBYTE(v1))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x25F8D7130](v5, v6);

  MEMORY[0x25F8D7130](0x737574617473202CLL, 0xEA0000000000203ALL);
  sub_25F30619C();
  MEMORY[0x25F8D7130](0x3A6C6576656C202CLL, 0xE900000000000020);
  MEMORY[0x25F8D7130](v7, v8);

  MEMORY[0x25F8D7130](41, 0xE100000000000000);
}

CFDictionaryRef sub_25F2F6BCC@<X0>(void *a1@<X0>, const void *a2@<X1>, CFDictionaryRef *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_25F30657C();
  v6 = IOPSGetPowerSourceDescription(a2, v5);
  result = swift_unknownObjectRelease();
  if (v6)
  {
    result = v6;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_25F2F6C34(void *a1)
{
  *&v18 = 0x6772616843207349;
  *(&v18 + 1) = 0xEB00000000676E69;
  v2 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    sub_25F2A7CB0(0, qword_27FD577F8, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v3 = v15;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    sub_25F1AF698(&v18, &qword_27FD53DF8, &unk_25F30A470);
    v3 = 0;
  }

  *&v18 = 0x6772616843207349;
  *(&v18 + 1) = 0xEA00000000006465;
  v4 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    sub_25F2A7CB0(0, qword_27FD577F8, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v5 = v15;
      goto LABEL_17;
    }
  }

  else
  {
    sub_25F1AF698(&v18, &qword_27FD53DF8, &unk_25F30A470);
  }

  v5 = 0;
LABEL_17:
  sub_25F2A7CB0(0, qword_27FD577F8, 0x277CCABB0);
  v6 = sub_25F305B6C();
  v7 = v6;
  if (v5)
  {
    v8 = v5;
    v9 = sub_25F305B7C();

    if (v9)
    {

      return 2;
    }
  }

  else
  {
  }

  v11 = sub_25F305B6C();
  v12 = v11;
  if (v3)
  {
    v13 = v3;
    v14 = sub_25F305B7C();

    if (v14)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

id sub_25F2F6EEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL _s20PreviewsFoundationOS13IOPowerSourceC5StateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 == 2)
  {
    return *a2 == 2;
  }

  if (v2 == 3)
  {
    return *a2 == 3;
  }

  if ((*a2 & 0xFELL) == 2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8))
  {
    return (((*a2 ^ *a1) & 0xFF00) == 0) & ~(*a2 ^ *a1);
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata accessor for IOPowerSource.Observer(uint64_t a1)
{
  result = qword_27FD58EF0;
  if (!qword_27FD58EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F2F6FC8()
{
  sub_25F30467C();
  v1 = *(v0 + 16);

  return sub_25F2F5040(v1);
}

uint64_t sub_25F2F7048(uint64_t a1)
{
  v2 = type metadata accessor for IOPowerSource.Observer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F2F70EC()
{
  result = qword_27FD58EE8;
  if (!qword_27FD58EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58EE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IOPowerSource.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[16])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  if (*a1 >= 2u && (v4 = (v3 & 0xFE) + 2147483646, (v4 & 0x7FFFFFFE) != 0))
  {
    return (v4 & 0x7FFFFFFE | v3 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IOPowerSource.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_25F2F7230(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

void *sub_25F2F724C(void *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IOPowerSource.State.BatteryInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IOPowerSource.State.BatteryInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_25F2F735C(uint64_t a1)
{
  result = sub_25F30467C();
  if (v2 <= 0x3F)
  {
    result = sub_25F1D67AC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F2F7428()
{
  result = *(v0 + 16);
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F2F7440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IOPowerSource.Observer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F2F74AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IOPowerSource.Observer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F2F754C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Staleable.Discriminant.hashValue.getter()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  return sub_25F30676C();
}

uint64_t sub_25F2F763C(uint64_t a1)
{
  sub_25F30671C();
  Staleable.Discriminant.hash(into:)();
  return sub_25F30676C();
}

uint64_t Staleable.discriminant.getter@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  *a2 = swift_getEnumCaseMultiPayload() == 1;
  return (*(v4 + 8))(v6, a1);
}

uint64_t Staleable.currentValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  v10 = v9;
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(a1 + 16);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v10 + 56))(a2, 0, 1, v11);
  }

  else
  {
    (*(v9 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v6, a1);
  }
}

uint64_t Staleable.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  return (*(*(*(a1 + 16) - 8) + 32))(a2, v5);
}

BOOL Staleable.isCurrent.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = swift_getEnumCaseMultiPayload() == 1;
  (*(v2 + 8))(v4, a1);
  return v5;
}

uint64_t Staleable.map<A>(_:)(void (*a1)(char *), void x1_0, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = *(v6 + 32);
  v19 = (v6 + 8);
  if (EnumCaseMultiPayload == 1)
  {
    v18(v12, v14, v5);
    v20 = v27;
    a1(v12);
    result = (*v19)(v12, v5);
    if (v20)
    {
      return result;
    }
  }

  else
  {
    v18(v9, v14, v5);
    v24 = v27;
    a1(v9);
    result = (*v19)(v9, v5);
    if (v24)
    {
      return result;
    }
  }

  type metadata accessor for Staleable(0, v26, v22, v23);
  return swift_storeEnumTagMultiPayload();
}

uint64_t Staleable.flattenedMap<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v26 = a3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v11;
  v12 = sub_25F305C1C();
  v23 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v24 = v4;
  Staleable.value.getter(a2, v10);
  v15 = v27;
  a1(v10);
  result = (*(v8 + 8))(v10, v7);
  if (!v15)
  {
    MEMORY[0x28223BE20](result);
    v18 = v24;
    v17 = v25;
    *(&v23 - 4) = v7;
    *(&v23 - 3) = v17;
    *(&v23 - 2) = v18;
    v21 = type metadata accessor for Staleable(0, v17, v19, v20);
    sub_25F20977C(sub_25F2F7F58, (&v23 - 6), MEMORY[0x277D84A98], v21, v22, v26);
    return (*(v23 + 8))(v14, v12);
  }

  return result;
}

uint64_t sub_25F2F7F58(uint64_t x0_0, void x1_0, uint64_t a1, uint64_t a2)
{
  v5 = *(v4 + 24);
  v9 = *(v4 + 16);
  v10 = v5;
  v11 = x0_0;
  v6 = type metadata accessor for Staleable(0, v9, a1, a2);
  return Staleable.map<A>(_:)(sub_25F2F8320, &v8, v6, v5);
}

uint64_t sub_25F2F7FEC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F2F8050(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_25F2F815C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t Future.then<A>(dsoHandle:file:line:column:function:on:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *&v15 = a2;
  *(&v15 + 1) = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v14 = *a10;
  return sub_25F2F8678(&v15, &v14, a11, a12, a13);
}

uint64_t Future.flatMap<A>(dsoHandle:file:line:column:function:on:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = *a10;
  v13 = a10[1];
  *&v18 = a2;
  *(&v18 + 1) = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v17[0] = v14;
  v17[1] = v13;
  v16[0] = v14;
  v16[1] = v13;
  return sub_25F2F8434(&v18, v17, v16, a11, a12, a13);
}

uint64_t sub_25F2F8434(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  v10 = a1[1];
  v18[0] = *a1;
  v18[1] = v10;
  v19[0] = a1[2];
  *(v19 + 9) = *(a1 + 41);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *a3;
  v14 = *(a3 + 8);
  type metadata accessor for FlatMapFuture(0, *(v9 + 80), a6, a4);
  *&v17 = v11;
  *(&v17 + 1) = v12;
  *&v16 = v13;
  *(&v16 + 1) = v14;

  sub_25F2033CC(v11);
  sub_25F2033CC(v13);
  swift_allocObject();

  return sub_25F2F9AE4(v18, v6, &v17, &v16, a4, a5);
}

uint64_t Future.tryFlatMap<A>(dsoHandle:file:line:column:function:on:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = *v13;
  v16 = *a10;
  v15 = a10[1];
  *&v22 = a2;
  *(&v22 + 1) = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a9;
  v21[0] = v16;
  v21[1] = v15;
  v20[0] = v16;
  v20[1] = v15;
  v17 = swift_allocObject();
  v17[2] = *(v14 + 80);
  v17[3] = a13;
  v17[4] = a11;
  v17[5] = a12;

  v18 = sub_25F2F8434(&v22, v21, v20, sub_25F2F8760, v17, a13);

  return v18;
}

uint64_t sub_25F2F8678(_OWORD *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = a1[1];
  v16[0] = *a1;
  v16[1] = v10;
  v17[0] = a1[2];
  *(v17 + 9) = *(a1 + 41);
  v15 = *a2;
  v11 = swift_allocObject();
  v11[2] = *(v9 + 80);
  v11[3] = a5;
  v11[4] = a3;
  v11[5] = a4;
  v14[0] = 0;
  v14[1] = 0;

  v12 = sub_25F2F8434(v16, &v15, v14, sub_25F2FB654, v11, a5);

  sub_25F2033DC(v14[0]);
  return v12;
}

uint64_t Future.then<A>(dsoHandle:file:line:column:function:priority:transform:cleanupOnCancelation:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v36 = a7;
  v37 = a8;
  v35 = a6;
  v42 = a14;
  v43 = a13;
  v39 = a15;
  v40 = a11;
  v41 = a12;
  v38 = *v15;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v24 = &v35 - v23;
  *&v45 = a2;
  *(&v45 + 1) = a3;
  v46 = a4;
  v47 = a5;
  v48 = v35;
  v49 = v36;
  v50 = v37;
  v51 = a9;
  v44 = 0uLL;
  sub_25F1B4740(a10, &v35 - v23);
  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v26 = (v22 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v39;
  *(v27 + 16) = *(v38 + 80);
  *(v27 + 24) = v28;
  sub_25F2F8B98(v24, v27 + v25);
  v29 = (v27 + v26);
  v30 = v41;
  *v29 = v40;
  v29[1] = v30;
  v31 = (v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8));
  v32 = v42;
  *v31 = v43;
  v31[1] = v32;

  v33 = sub_25F2F8678(&v45, &v44, sub_25F2F8C08, v27, v28);

  sub_25F2033DC(v44);
  return v33;
}

uint64_t sub_25F2F8978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a3;
  v28 = a5;
  v14 = *(a7 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v26 - v17;
  v26[1] = type metadata accessor for Future(0, a8, v19, v20);
  sub_25F1B4740(a2, v18);
  (*(v14 + 16))(v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a7);
  v21 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a7;
  *(v22 + 3) = a8;
  *(v22 + 4) = v27;
  *(v22 + 5) = a4;
  (*(v14 + 32))(&v22[v21], v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a7);

  *(&v25 + 1) = v22;
  *&v25 = &unk_25F316B40;
  v23 = sub_25F2ECDC4("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift", 125, 2, 145, 22, "then(dsoHandle:file:line:column:function:priority:transform:cleanupOnCancelation:)", 82, 2, v18, v25, v28, a6);

  return v23;
}

uint64_t sub_25F2F8B98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F2F8C08(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v1 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);

  return sub_25F2F8978(a1, v1 + v6, v10, v11, v12, v13, v3, v4);
}

uint64_t sub_25F2F8CD8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_25F1AFDB0;

  return v9(a1, a4);
}

uint64_t Future.then<A>(dsoHandle:file:line:column:function:priority:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v31 = a7;
  v32 = a8;
  v30 = a6;
  v35 = a11;
  v36 = a12;
  v33 = *v13;
  v34 = a13;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - v21;
  *&v38 = a2;
  *(&v38 + 1) = a3;
  v39 = a4;
  v40 = a5;
  v41 = v30;
  v42 = v31;
  v43 = v32;
  v44 = a9;
  v37 = 0uLL;
  sub_25F1B4740(a10, &v30 - v21);
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = swift_allocObject();
  v25 = v34;
  *(v24 + 16) = *(v33 + 80);
  *(v24 + 24) = v25;
  sub_25F2F8B98(v22, v24 + v23);
  v26 = (v24 + ((v20 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  v27 = v36;
  *v26 = v35;
  v26[1] = v27;

  v28 = sub_25F2F8678(&v38, &v37, sub_25F2F91D8, v24, v25);

  sub_25F2033DC(v37);
  return v28;
}

uint64_t sub_25F2F8FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v26 - v16;
  v26[1] = type metadata accessor for Future(0, a6, v18, v19);
  sub_25F1B4740(a2, v17);
  (*(v12 + 16))(v14, a1, a5);
  v20 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a5;
  *(v21 + 3) = a6;
  *(v21 + 4) = a3;
  *(v21 + 5) = a4;
  (*(v12 + 32))(&v21[v20], v14, a5);
  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  *(v22 + 24) = a6;

  *&v25 = &unk_25F316B30;
  *(&v25 + 1) = v21;
  v23 = sub_25F2ECDC4("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift", 125, 2, 165, 22, "then(dsoHandle:file:line:column:function:priority:transform:)", 61, 2, v17, v25, nullsub_2, v22);

  return v23;
}

uint64_t sub_25F2F91D8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_25F2F8FA0(a1, v1 + v6, v8, v9, v3, v4);
}

uint64_t sub_25F2F9298(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_25F1B51E0;

  return v9(a1, a4);
}

uint64_t sub_25F2F93A0(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v12 = sub_25F30678C();
  MEMORY[0x28223BE20](v12);
  v14 = (&v21 - v13);
  (*(v15 + 16))(&v21 - v13, a1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v14;
    type metadata accessor for Future(0, a5, v16, v17);
    v19 = sub_25F1C15B0("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift", 125, 2, 181, 31, "then(callsite:on:transform:)", 28, 2, v18);
  }

  else
  {
    (*(v9 + 32))(v11, v14, a4);
    v19 = a2(v11);
    (*(v9 + 8))(v11, a4);
  }

  return v19;
}

uint64_t Future.flatMapFailure(dsoHandle:file:line:column:function:on:resultCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int128 *a10, uint64_t a11, uint64_t a12)
{
  v13 = *v12;
  *&v20 = a2;
  *(&v20 + 1) = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a9;
  v19 = *a10;
  v14 = swift_allocObject();
  v15 = *(v13 + 80);
  v14[2] = v15;
  v14[3] = a11;
  v14[4] = a12;
  v18[0] = 0;
  v18[1] = 0;

  v16 = sub_25F2F8434(&v20, v18, &v19, sub_25F2F98D0, v14, v15);

  sub_25F2033DC(v18[0]);
  return v16;
}

uint64_t sub_25F2F96B0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v10 = sub_25F30678C();
  MEMORY[0x28223BE20](v10);
  v12 = (&v19 - v11);
  (*(v13 + 16))(&v19 - v11, a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v12;
    v15 = a2(*v12);
  }

  else
  {
    (*(v7 + 32))(v9, v12, a4);
    type metadata accessor for Future(0, a4, v16, v17);
    v15 = sub_25F1C1420("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift", 125, 2, 203, 34, "flatMapFailure(dsoHandle:file:line:column:function:on:resultCallback:)", 70, 2, v9);
    (*(v7 + 8))(v9, a4);
  }

  return v15;
}

uint64_t Future.tryThen<A>(dsoHandle:file:line:column:function:on:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = *v13;
  *&v19 = a2;
  *(&v19 + 1) = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v18 = *a10;
  v15 = swift_allocObject();
  v15[2] = *(v14 + 80);
  v15[3] = a13;
  v15[4] = a11;
  v15[5] = a12;

  v16 = sub_25F2F8678(&v19, &v18, sub_25F2F9A54, v15, a13);

  return v16;
}

uint64_t sub_25F2F9AE4(_OWORD *a1, uint64_t a2, _OWORD *a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  v7 = *v6;
  v8 = a1[1];
  v16[0] = *a1;
  v16[1] = v8;
  v17[0] = a1[2];
  *(v17 + 9) = *(a1 + 41);
  v6[13] = a5;
  v6[14] = a6;
  *(v6 + 15) = *a3;
  *(v6 + 17) = *a4;
  v15 = a2;
  v9 = type metadata accessor for FlatMapFuture.Activity(0, *(v7 + 200), *(v7 + 208), a4);

  v6[19] = sub_25F203E0C(&v15, v9);
  v13 = sub_25F2E95EC(v16, v10, v11, v12);
  swift_retain_n();
  Future.observeCompletion(_:)(sub_25F2FB228, v13);

  Future.observeCancelation(_:)(sub_25F2FB1EC, v13);

  return v13;
}

uint64_t sub_25F2F9C18(uint64_t a1)
{
  v2 = v1;
  v78 = a1;
  v3 = *v1;
  v74 = sub_25F30490C();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v70 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_25F30494C();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v3 + 200);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v7 = sub_25F30678C();
  v81 = *(v7 - 8);
  v8 = v81[8];
  v9 = MEMORY[0x28223BE20](v7);
  v79 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v77 = v64 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v76 = v64 - v13;
  MEMORY[0x28223BE20](v12);
  v80 = v64 - v14;
  v15 = *(v3 + 208);
  type metadata accessor for Promise(255, v15, v16, v17);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = sub_25F305C1C();
  v82 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v64 - v23;
  v93 = v2[19];
  *&aBlock = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift";
  *(&aBlock + 1) = 125;
  LOBYTE(v88) = 2;
  v89 = xmmword_25F3169C0;
  v90 = "firstCompleted(_:)";
  v91 = 18;
  v92 = 2;
  v84 = v6;
  v85 = v15;
  v86 = v78;
  v78 = v6;
  v75 = v15;
  type metadata accessor for FlatMapFuture.Activity(255, v6, v15, v25);
  v26 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&aBlock, sub_25F2FB22C, v83, v26, v19, WitnessTable);
  v28 = v82;

  (*(v28 + 16))(v22, v24, v19);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v22, 1, TupleTypeMetadata2) == 1)
  {
    v29 = *(v28 + 8);
    v29(v24, v19);
    return (v29)(v22, v19);
  }

  else
  {
    v67 = v24;
    v68 = v19;
    v31 = *&v22[*(TupleTypeMetadata2 + 48)];
    v32 = v81;
    v66 = v81[4];
    v33 = v80;
    v66(v80, v22, v7);
    Result.analyze<A>(success:failure:)(sub_25F2FB24C, v2, sub_25F2FB258, v2, v7);
    v34 = *(&aBlock + 1);
    v65 = aBlock;
    v35 = v32 + 2;
    v36 = v32[2];
    v37 = v76;
    v36(v76, v33, v7);
    v38 = v77;
    v36(v77, v37, v7);
    v36(v79, v37, v7);
    v39 = (*(v35 + 64) + 40) & ~*(v35 + 64);
    v40 = (v8 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    v42 = v75;
    *(v41 + 2) = v78;
    *(v41 + 3) = v42;
    *(v41 + 4) = v2;
    v66(&v41[v39], v37, v7);
    v43 = v65;
    *&v41[v40] = v31;
    *&aBlock = v43;
    *(&aBlock + 1) = v34;
    v44 = v34;
    v45 = v31;
    swift_retain_n();
    swift_retain_n();
    v47 = v7;
    if (ExecutionLane.isCurrentLane.getter())
    {
      sub_25F2FAC38(v2, v38, v45, v46);
      sub_25F2033DC(v43);

      v48 = v81[1];
      v48(v79, v7);

      v48(v80, v7);
      (*(v82 + 8))(v67, v68);
      return (v48)(v38, v7);
    }

    else
    {
      if (v43)
      {
        v78 = v45;
        v64[1] = v44;
        if (v43 == 1)
        {
          sub_25F1F54F4();
          v76 = sub_25F305AAC();
          *(&v89 + 1) = sub_25F2FB264;
          v90 = v41;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v88 = sub_25F1D8C38;
          *&v89 = &block_descriptor_19;
          v75 = _Block_copy(&aBlock);

          v49 = v69;
          sub_25F30492C();
          *&aBlock = MEMORY[0x277D84F90];
          sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v50 = v70;
          v51 = v74;
          sub_25F305E5C();
          v52 = v75;
          v53 = v76;
          MEMORY[0x25F8D7C70](0, v49, v50, v75);
          _Block_release(v52);

          (*(v73 + 8))(v50, v51);
          (*(v71 + 8))(v49, v72);
        }

        else
        {
          *(&v89 + 1) = sub_25F2FB264;
          v90 = v41;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v88 = sub_25F1D8C38;
          *&v89 = &block_descriptor_14;
          v59 = _Block_copy(&aBlock);

          sub_25F2033CC(v43);
          v60 = v69;
          sub_25F30492C();
          v93 = MEMORY[0x277D84F90];
          sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v61 = v70;
          v62 = v74;
          sub_25F305E5C();
          MEMORY[0x25F8D7C70](0, v60, v61, v59);
          _Block_release(v59);
          sub_25F2033DC(v43);
          (*(v73 + 8))(v61, v62);
          (*(v71 + 8))(v60, v72);
        }

        v56 = v77;
        v58 = v80;
        v57 = v81;
        v55 = v79;
      }

      else
      {
        v54 = v79;
        sub_25F2FAC38(v2, v79, v45, v46);

        v55 = v54;
        v56 = v77;
        v58 = v80;
        v57 = v81;
      }

      v63 = v57[1];
      v63(v55, v47);

      v63(v58, v47);
      (*(v82 + 8))(v67, v68);
      sub_25F2033DC(v43);
      return (v63)(v56, v47);
    }
  }
}

uint64_t sub_25F2FA6F4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *v5;
  v8 = *(*v5 + 208);
  v9 = type metadata accessor for FutureTermination(0, v8, a3, a4);
  v33 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = (&v32 - v10);
  v12 = a1[1];
  v46 = *a1;
  v47 = v12;
  v48[0] = a1[2];
  *(v48 + 9) = *(a1 + 41);
  v43 = v5[19];
  *&v37 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift";
  *(&v37 + 1) = 125;
  v38 = 2;
  v39 = xmmword_25F3169D0;
  v40 = "cancel(callsite:)";
  v41 = 17;
  v42 = 2;
  v13 = *(v7 + 200);
  v35 = v13;
  v36 = v8;
  type metadata accessor for FlatMapFuture.Activity(255, v13, v8, v14);
  v15 = sub_25F30476C();
  v18 = type metadata accessor for Future(255, v13, v16, v17);
  v21 = type metadata accessor for Future(255, v8, v19, v20);
  v23 = type metadata accessor for Either(255, v18, v21, v22);
  v24 = sub_25F305C1C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v37, sub_25F2FB138, v34, v15, v24, WitnessTable);

  v27 = v45;
  if (v45 != 255)
  {
    v32 = &v32;
    v28 = v44;
    *&v37 = v44;
    BYTE8(v37) = v45 & 1;
    v29 = MEMORY[0x28223BE20](result);
    *(&v32 - 4) = v13;
    *(&v32 - 3) = v8;
    *(&v32 - 2) = &v46;
    MEMORY[0x28223BE20](v29);
    *(&v32 - 4) = v13;
    *(&v32 - 3) = v8;
    *(&v32 - 2) = &v46;
    Either.analyze<A>(left:right:)(sub_25F2FB668, v30, sub_25F2FB17C, (&v32 - 6), v23);
    v31 = v47;
    *v11 = v46;
    v11[1] = v31;
    v11[2] = v48[0];
    *(v11 + 41) = *(v48 + 9);
    swift_storeEnumTagMultiPayload();
    sub_25F2EA104(v11);
    sub_25F278658(v28, v27);
    return (*(v33 + 8))(v11, v9);
  }

  return result;
}

uint64_t sub_25F2FAA40@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  if (v8 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    sub_25F30678C();
    type metadata accessor for Promise(255, a4, v21, v22);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a5, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    sub_25F2CBE24(v8);
    type metadata accessor for Future(0, a4, v10, v11);
    v12 = sub_25F1D8EB4("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift", 125, 2, 337, 77, "firstCompleted(_:)", 18, 2);
    v14 = v13;
    *a1 = v12 | 0x4000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    v15 = sub_25F30678C();
    type metadata accessor for Promise(255, a4, v16, v17);
    v18 = swift_getTupleTypeMetadata2();
    v19 = *(v18 + 48);
    (*(*(v15 - 8) + 16))(a5, a2, v15);
    *(a5 + v19) = v14;
    return (*(*(v18 - 8) + 56))(a5, 0, 1, v18);
  }
}

unint64_t sub_25F2FAC38(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v18 = a1[19];
  *&v12 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift";
  *(&v12 + 1) = 125;
  v13 = 2;
  v14 = xmmword_25F3169E0;
  v15 = "firstCompleted(_:)";
  v16 = 18;
  v17 = 2;
  type metadata accessor for FlatMapFuture.Activity(255, *(v6 + 200), *(v6 + 208), a4);
  v7 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v12, v7, WitnessTable);
  result = sub_25F2CBE24(v11);
  if (v11 != 0x8000000000000008)
  {
    v10 = (a1[13])(a2);
    sub_25F229A9C(&v12);
    v11 = v12;
    Promise.track(future:on:)(v10, &v11);
    sub_25F2033DC(v11);

    Future.observeFinish(_:)(sub_25F2FB33C, a1);
  }

  return result;
}

uint64_t sub_25F2FADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v19 = v4[19];
  *&v13 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift";
  *(&v13 + 1) = 125;
  v14 = 2;
  v15 = xmmword_25F3169F0;
  v16 = "secondFinished(_:)";
  v17 = 18;
  v18 = 2;
  v11 = *(v6 + 200);
  v12 = *(v6 + 208);
  type metadata accessor for FlatMapFuture.Activity(255, v11, v12, a4);
  v7 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v13, sub_25F2FB340, &v10, v7, MEMORY[0x277D839B0], WitnessTable);

  if (v20 == 1)
  {
    return sub_25F2EA104(a1);
  }

  return result;
}

uint64_t sub_25F2FAF10()
{

  sub_25F2033DC(*(v0 + 120));
  sub_25F2033DC(*(v0 + 136));
}

uint64_t sub_25F2FAF50()
{
  v0 = Future.deinit();

  sub_25F2033DC(*(v0 + 120));
  sub_25F2033DC(*(v0 + 136));

  return v0;
}

uint64_t sub_25F2FAF98()
{
  v0 = sub_25F2FAF50();

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

uint64_t sub_25F2FAFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS13FlatMapFuture33_783C149A83A3080D4FCF99BF469D14F5LLC8ActivityOyxq__G(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_25F2FB038(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25F2FB094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_25F2FB0F4(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

unint64_t *sub_25F2FB138@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result >> 62;
  v4 = *result & 0x3FFFFFFFFFFFFFFFLL;
  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v4 = 0;
    v5 = -1;
  }

  if (v3)
  {
    v2 = v4;
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  *result = 0x8000000000000008;
  *a2 = v2;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_25F2FB180(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v3 = *a1;
  v4 = v2[1];
  v6[0] = *v2;
  v6[1] = v4;
  v7[0] = v2[2];
  *(v7 + 9) = *(v2 + 41);
  return (*(*v3 + 192))(v6);
}

uint64_t sub_25F2FB1EC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  return sub_25F2FA6F4(v6, a2, a3, a4);
}

id sub_25F2FB24C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  *a1 = v2;
  a1[1] = v3;
  return sub_25F2033CC(v2);
}

id sub_25F2FB258@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  *a1 = v2;
  a1[1] = v3;
  return sub_25F2033CC(v2);
}

unint64_t sub_25F2FB264()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v2 = *(sub_25F30678C() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_25F2FAC38(v4, v0 + v3, v5, v1);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F2FB340@<X0>(unint64_t *a1@<X0>, char *a2@<X8>)
{
  result = *a1;
  if (result >> 62 == 1)
  {
    result = sub_25F2CBE24(result);
    *a1 = 0x8000000000000000;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_25F2FB3A0(uint64_t a1)
{
  v4 = (*(*(v1[2] - 8) + 80) + 48) & ~*(*(v1[2] - 8) + 80);
  v5 = v1[4];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F1B51E0;

  return sub_25F2F9298(a1, v5, v6, v1 + v4);
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_25F2FB558(uint64_t a1)
{
  v4 = (*(*(v1[2] - 8) + 80) + 48) & ~*(*(v1[2] - 8) + 80);
  v5 = v1[4];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F1AFDB0;

  return sub_25F2F8CD8(a1, v5, v6, v1 + v4);
}

uint64_t sub_25F2FB66C(__int128 *a1)
{
  v2 = a1[1];
  v7 = *a1;
  v8 = v2;
  *v9 = a1[2];
  *&v9[9] = *(a1 + 41);
  v9[25] = 2;
  v3 = *(v1 + 104);

  os_unfair_lock_lock((v3 + 76));
  sub_25F2FE130((v3 + 16), &v6);
  os_unfair_lock_unlock((v3 + 76));
  v4 = v6;

  if (v4)
  {
    v10[0] = v7;
    v10[1] = v8;
    *v11 = *v9;
    *&v11[10] = *&v9[10];
    return sub_25F1C0E30(v10);
  }

  return result;
}

uint64_t sub_25F2FB788(__int128 *a1)
{
  v2 = a1[1];
  v7 = *a1;
  v8 = v2;
  *v9 = a1[2];
  *&v9[9] = *(a1 + 41);
  v9[25] = 2;
  v3 = *(v1 + 104);

  os_unfair_lock_lock((v3 + 76));
  sub_25F2FDF6C((v3 + 16), &v6);
  os_unfair_lock_unlock((v3 + 76));
  v4 = v6;

  if (v4)
  {
    v10[0] = v7;
    v10[1] = v8;
    *v11 = *v9;
    *&v11[10] = *&v9[10];
    return sub_25F1C0934(v10);
  }

  return result;
}

void sub_25F2FB8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  os_unfair_lock_lock(v3 + 8);
  sub_25F2FE2E4();
  os_unfair_lock_unlock(v3 + 8);
}

uint64_t sub_25F2FB8F8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v22 = sub_25F2784FC;
  v23 = v10;
  v11 = qword_27FD52798;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v13 = *(v12 + 2);
  *(v12 + 2) = v13 + 1;
  os_unfair_lock_unlock(v12 + 6);
  v15 = MEMORY[0x28223BE20](v14);
  v16 = *(a4 + 16);
  MEMORY[0x28223BE20](v15);
  os_unfair_lock_lock(v16 + 8);
  sub_25F2FE1FC();
  os_unfair_lock_unlock(v16 + 8);
  v17 = a1[1];
  v20[0] = *a1;
  v20[1] = v17;
  v21[0] = a1[2];
  *(v21 + 9) = *(a1 + 41);
  v18 = swift_allocObject();
  v18[2] = sub_25F2FE1A8;
  v18[3] = a4;
  v18[4] = v13;
  CancellationToken.init(callsite:didCancel:)(v20, sub_25F2FE224, v18, a5);
}

uint64_t SingleFireEvent.__allocating_init(description:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SingleFireEvent.init(description:)(a1, a2);
  return v4;
}

BOOL SingleFireEvent.hasFired.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_25F2C403C(v2, v3);
  os_unfair_lock_unlock((v1 + 32));
  sub_25F2C4080(v2, v3);
  return v2 == 0;
}

void sub_25F2FBB88(uint64_t a1@<X0>, void (**a2)(void)@<X1>, void *a3@<X8>)
{
  *(swift_allocObject() + 16) = a2;
  v6 = *(a1 + 16);
  _Block_copy(a2);
  os_unfair_lock_lock((v6 + 32));
  sub_25F2FE2CC((v6 + 16), v10);
  os_unfair_lock_unlock((v6 + 32));
  v7 = v10[0];
  if (v10[0])
  {
    v8 = v10[1];
    v9 = v10[2];

    _Block_release(a2);
    *a3 = v7;
    a3[1] = v8;
    a3[2] = v9;
  }

  else
  {
    if (v11)
    {
      a2[2](a2);
    }

    _Block_release(a2);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void SingleFireEvent.observe(_:)(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 32));
  sub_25F1DF0E4((v5 + 16), &v7);
  os_unfair_lock_unlock((v5 + 32));
  if (v7)
  {
    v6 = v8;
    *a2 = v7;
    *(a2 + 16) = v6;
  }

  else
  {
    if (v9)
    {
      a1();
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

void sub_25F2FBD3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  if (v2 > 1)
  {
    v3 = *(v1 + 24);
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    os_unfair_lock_unlock((v1 + 32));
    sub_25F2FDF88(v2);
    _s20PreviewsFoundationOS11EventStreamV4SinkC4sendyyytRszlF_0();
    sub_25F1D71EC(0, 0);
    v10 = *(v3 + 16);
    if (v10)
    {
      v5 = 0;
      v6 = (v3 + 48);
      while (v5 < *(v3 + 16))
      {
        v7 = *(v6 - 2);
        v8 = *v6;
        v12 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/SingleFireEvent.swift";
        v13 = 127;
        v14 = 2;
        v15 = xmmword_25F316B50;
        v16 = "fire(inside:)";
        v17 = 13;
        v18 = 2;
        v9 = *(v8 + 152);
        MEMORY[0x28223BE20](v4);

        os_unfair_lock_lock(v9 + 19);
        sub_25F1D3F70(&v9[4], &v11);
        os_unfair_lock_unlock(v9 + 19);
        if ((v11 & 1) == 0)
        {
          v7();
        }

        ++v5;

        v6 += 3;
        if (v10 == v5)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_11:

      sub_25F2FDFC8(v2, v3);
    }
  }

  else
  {

    os_unfair_lock_unlock((v1 + 32));
  }
}

void sub_25F2FBF68(uint64_t (*a1)(uint64_t (*)(), void *, __n128))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 16);
  if (v4 > 1)
  {
    v5 = *(v3 + 24);
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    os_unfair_lock_unlock((v3 + 32));
    MEMORY[0x28223BE20](v6);
    v16 = v4;
    v17 = v1;
    v18 = v4;

    v7 = (a1)(sub_25F2FE008, v15);
    v8 = v5;
    v20 = *(v5 + 16);
    if (v20)
    {
      v9 = 0;
      v10 = (v5 + 48);
      v19 = xmmword_25F316B50;
      while (v9 < *(v8 + 16))
      {
        v11 = *(v10 - 2);
        v12 = *v10;
        v22[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/SingleFireEvent.swift";
        v22[1] = 127;
        v23 = 2;
        v24 = v19;
        v25 = "fire(inside:)";
        v26 = 13;
        v27 = 2;
        v13 = *(v12 + 152);
        MEMORY[0x28223BE20](v7);
        v15[0] = v22;
        v15[1] = v12;
        v16 = sub_25F1D3340;
        v17 = 0;

        os_unfair_lock_lock(v13 + 19);
        sub_25F1D3F70(&v13[4], &v21);
        os_unfair_lock_unlock(v13 + 19);
        if ((v21 & 1) == 0)
        {
          v11();
        }

        ++v9;

        v10 += 3;
        if (v20 == v9)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_11:

      v14 = v18;

      sub_25F2FDFC8(v14, v8);
    }
  }

  else
  {

    os_unfair_lock_unlock((v3 + 32));
  }
}

void SingleFireEvent.observeUntilFiredOrCanceled(_:)(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 32));
  sub_25F2FE2CC((v3 + 16), v7);
  os_unfair_lock_unlock((v3 + 32));
  v4 = v7[0];
  if (v7[0])
  {
    v5 = v7[1];
    v6 = v7[2];
    sub_25F2FC288(v7);
    sub_25F1DF100(v4, v5, v6);
  }

  else if (v8)
  {
    a1();
  }
}

void sub_25F2FC288(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *(v1 + 16);
  os_unfair_lock_lock((v4 + 32));
  sub_25F2FE188((v4 + 16), v8);
  os_unfair_lock_unlock((v4 + 32));
  if ((v8[0] & 1) == 0)
  {
    v8[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/SingleFireEvent.swift";
    v8[1] = 127;
    v11 = "manage(_:)";
    v12 = 10;
    v9 = 2;
    v10 = xmmword_25F316B60;
    v13 = 2;
    v6 = *(v3 + 152);
    MEMORY[0x28223BE20](v5);
    os_unfair_lock_lock(v6 + 19);
    sub_25F1D3F70(&v6[4], v7);
    os_unfair_lock_unlock(v6 + 19);
    if ((v7[0] & 1) == 0)
    {
      v2();
    }
  }
}

uint64_t sub_25F2FC3C8(__int128 *a1, void *a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v28 = sub_25F30490C();
  v27 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25F30494C();
  v25 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v34 = *a1;
  v35 = v14;
  v36[0] = a1[2];
  v15 = v36[0];
  *(v36 + 10) = *(a1 + 42);
  v37 = v34;
  v38 = v14;
  v39[0] = v15;
  *(v39 + 10) = *(v36 + 10);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v17 = a1[1];
  *(v16 + 32) = *a1;
  *(v16 + 48) = v17;
  *(v16 + 64) = a1[2];
  *(v16 + 74) = *(a1 + 42);
  v32 = a2;
  v33 = a3;
  swift_retain_n();
  sub_25F1B7174(a1, &aBlock, &qword_27FD58228, &qword_25F314C90);
  sub_25F1B7174(&v34, &aBlock, &qword_27FD58228, &qword_25F314C90);
  sub_25F1B7174(&v37, &aBlock, &qword_27FD58228, &qword_25F314C90);
  if (ExecutionLane.isCurrentLane.getter())
  {
    aBlock = v34;
    v30 = v35;
    v31[0] = v36[0];
    *(v31 + 10) = *(v36 + 10);
    a4(&aBlock);

    sub_25F1AF698(&v37, &qword_27FD58228, &qword_25F314C90);
    v18 = &v34;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        sub_25F1F54F4();
        v19 = sub_25F305AAC();
        *&v31[0] = sub_25F2FE058;
        *(&v31[0] + 1) = v16;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v30 = sub_25F1D8C38;
        *(&v30 + 1) = &block_descriptor_17;
        v20 = _Block_copy(&aBlock);

        sub_25F30492C();
        *&aBlock = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v21 = v28;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v13, v11, v20);
        _Block_release(v20);

        (*(v27 + 8))(v11, v21);
        (*(v25 + 8))(v13, v26);
      }

      else
      {
        *&v31[0] = sub_25F2FE058;
        *(&v31[0] + 1) = v16;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v30 = sub_25F1D8C38;
        *(&v30 + 1) = &block_descriptor_15;
        v22 = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        sub_25F30492C();
        v32 = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v23 = v28;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v13, v11, v22);
        _Block_release(v22);
        sub_25F2033DC(a2);
        (*(v27 + 8))(v11, v23);
        (*(v25 + 8))(v13, v26);
      }
    }

    else
    {
      aBlock = v37;
      v30 = v38;
      v31[0] = v39[0];
      *(v31 + 10) = *(v39 + 10);
      a4(&aBlock);
    }

    sub_25F1AF698(&v34, &qword_27FD58228, &qword_25F314C90);

    v18 = &v37;
  }

  return sub_25F1AF698(v18, &qword_27FD58228, &qword_25F314C90);
}

uint64_t sub_25F2FC9EC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v46 = a3;
  v47 = a5;
  v8 = sub_25F30490C();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  v40 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F30494C();
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  sub_25F1B7174(a1, &v37 - v19, qword_27FD53BB8, &qword_25F311350);
  sub_25F1B7174(v20, v18, qword_27FD53BB8, &qword_25F311350);
  v45 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v46;
  v21 = v47;
  sub_25F1B7174(v20, v45, qword_27FD53BB8, &qword_25F311350);
  v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = v21;
  sub_25F2C4368(v20, v24 + v23);
  aBlock = a2;
  v50 = v22;
  swift_retain_n();
  if (ExecutionLane.isCurrentLane.getter())
  {
    a4(v18);

    v25 = v45;
  }

  else
  {
    v38 = v18;
    if (a2)
    {
      if (a2 == 1)
      {
        sub_25F1F54F4();
        v26 = sub_25F305AAC();
        v53 = sub_25F2FE0C0;
        v54 = v24;
        aBlock = MEMORY[0x277D85DD0];
        v50 = 1107296256;
        v51 = sub_25F1D8C38;
        v52 = &block_descriptor_26;
        v27 = _Block_copy(&aBlock);

        v28 = v39;
        sub_25F30492C();
        aBlock = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v29 = v40;
        v30 = v44;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v28, v29, v27);
        _Block_release(v27);

        (*(v43 + 8))(v29, v30);
        (*(v41 + 8))(v28, v42);
      }

      else
      {
        v53 = sub_25F2FE0C0;
        v54 = v24;
        aBlock = MEMORY[0x277D85DD0];
        v50 = 1107296256;
        v51 = sub_25F1D8C38;
        v52 = &block_descriptor_23;
        v32 = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        v33 = v39;
        sub_25F30492C();
        v48 = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v34 = v40;
        v35 = v44;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v33, v34, v32);
        _Block_release(v32);
        sub_25F2033DC(a2);
        (*(v43 + 8))(v34, v35);
        (*(v41 + 8))(v33, v42);
      }

      v25 = v45;
    }

    else
    {
      v31 = v45;
      a4(v45);

      v25 = v31;
    }

    v18 = v38;
  }

  sub_25F1AF698(v25, qword_27FD53BB8, &qword_25F311350);
  return sub_25F1AF698(v18, qword_27FD53BB8, &qword_25F311350);
}

void *SingleFireEvent.init(description:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD59128, &qword_25F316BD0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  v6 = sub_25F1B5DE0(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD59130, &qword_25F316BD8);
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v4 + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD59138, &qword_25F316BE0);
  v8 = swift_allocObject();
  *(v8 + 32) = 0;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  v3[2] = v8;
  *&v34 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/SingleFireEvent.swift";
  *(&v34 + 1) = 127;
  v35 = 2;
  v36 = xmmword_25F316B70;
  v37 = "init(description:)";
  v38 = 18;
  v39 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD59140, &qword_25F316BE8);
  v9 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD59148, &qword_25F316BF0);
  v10 = swift_allocObject();
  *(v10 + 76) = 0;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0;
  *(v10 + 72) = -256;
  *(v9 + 104) = v10;
  v11 = sub_25F1BFFDC(&v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD59150, &qword_25F316BF8);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v3[3] = v12;
  *&v28 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/SingleFireEvent.swift";
  *(&v28 + 1) = 127;
  v29 = 2;
  v30 = xmmword_25F316B80;
  v31 = "init(description:)";
  v32 = 18;
  v33 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD59158, &qword_25F316C00);
  swift_allocObject();

  v13 = sub_25F1BFFDC(&v28);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = sub_25F2FDE24;
  v14[5] = v13;
  v15 = *(v11 + 88);
  swift_retain_n();
  os_unfair_lock_lock(v15 + 25);
  sub_25F2FDEA4(&v15[4], &v23);
  os_unfair_lock_unlock(v15 + 25);
  *&v22[10] = *(v25 + 10);
  v21[0] = v23;
  v21[1] = v24;
  *v22 = v25[0];
  if (BYTE9(v25[1]) == 255)
  {
  }

  else
  {
    v26[0] = v23;
    v26[1] = v24;
    v27[0] = v25[0];
    *(v27 + 10) = *(v25 + 10);

    sub_25F1B7174(v21, v19, &qword_27FD59160, &qword_25F316C08);
    sub_25F1C0934(v26);

    sub_25F1AF698(v21, &qword_27FD59160, &qword_25F316C08);
  }

  v19[0] = v23;
  v19[1] = v24;
  v20[0] = v25[0];
  *(v20 + 10) = *(v25 + 10);
  sub_25F1AF698(v19, &qword_27FD59160, &qword_25F316C08);

  v3[4] = a1;
  v3[5] = a2;
  v3[6] = v13;
  return v3;
}

uint64_t SingleFireEvent.deinit()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_25F2C403C(v2, v3);
  os_unfair_lock_unlock((v1 + 32));

  if (v2 >= 2)
  {

    v5[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/SingleFireEvent.swift";
    v5[1] = 127;
    v6 = 2;
    v7 = xmmword_25F316B90;
    v8 = "deinit";
    v9 = 6;
    v10 = 2;
    sub_25F213F98(v5);
  }

  else
  {
    sub_25F2C4080(v2, v3);
  }

  return v0;
}

uint64_t SingleFireEvent.__deallocating_deinit()
{
  SingleFireEvent.deinit();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

Swift::Void __swiftcall SingleFireEvent.cancel()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 32));
  if (*(v1 + 16) <= 1uLL)
  {
    os_unfair_lock_unlock((v1 + 32));
LABEL_11:
    *&v10 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/SingleFireEvent.swift";
    *(&v10 + 1) = 127;
    v11 = 2;
    v12 = xmmword_25F316BB0;
    v13 = "cancel()";
    v14 = 8;
    v15 = 2;
    sub_25F2FB788(&v10);
    return;
  }

  v2 = *(v1 + 24);

  *(v1 + 16) = xmmword_25F3077E0;
  os_unfair_lock_unlock((v1 + 32));
  if (!v2)
  {
    goto LABEL_11;
  }

  v9 = *(v2 + 16);
  if (!v9)
  {
LABEL_10:

    goto LABEL_11;
  }

  v4 = 0;
  v5 = (v2 + 48);
  while (v4 < *(v2 + 16))
  {
    v6 = *(v5 - 2);
    v7 = *v5;
    v16 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/SingleFireEvent.swift";
    v17 = 127;
    v18 = 2;
    v19 = xmmword_25F316BA0;
    v20 = "cancel()";
    v21 = 8;
    v22 = 2;
    v8 = *(v7 + 152);
    MEMORY[0x28223BE20](v3);

    os_unfair_lock_lock(v8 + 19);
    sub_25F1D3DD4(&v8[4], &v10);
    os_unfair_lock_unlock(v8 + 19);
    if ((v10 & 1) == 0)
    {
      v6();
    }

    ++v4;

    v5 += 3;
    if (v9 == v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

double sub_25F2FD6B8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    if (v4 == 1)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 24) = 0;
      *(a4 + 16) = 0;
    }

    else
    {

      v8 = swift_allocObject();
      *(v8 + 16) = a2;
      *(v8 + 24) = a3;
      *&v13 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/SingleFireEvent.swift";
      *(&v13 + 1) = 127;
      v14 = 2;
      v15 = xmmword_25F316BC0;
      v16 = "observe(_:)";
      v17 = 11;
      v18 = 2;

      sub_25F2FB8F8(&v13, sub_25F20DAF8, v8, v4, &v11);

      v9 = v12;
      result = *&v11;
      *a4 = v11;
      *(a4 + 16) = v9;
      *(a4 + 24) = 0;
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 1;
  }

  return result;
}

void *sub_25F2FD7F0@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v6 = *result;
  if (*result >= 2uLL)
  {
    v10 = result;
    v11 = result[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_25F2F0250(0, *(v11 + 2) + 1, 1, v11);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_25F2F0250((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    v14 = &v11[24 * v13];
    *(v14 + 4) = a2;
    *(v14 + 5) = a3;
    *(v14 + 6) = a4;
    *v10 = v6;
    v10[1] = v11;
    *a5 = 1;
  }

  else
  {
    *a5 = 0;
  }

  return result;
}

void ObjcSingleFireEvent.addObserver(_:)(void (*a1)(void))
{
  v3 = *(*(v1 + OBJC_IVAR____TtC20PreviewsFoundationOS19ObjcSingleFireEvent_event) + 16);
  os_unfair_lock_lock((v3 + 32));
  sub_25F2FE2CC((v3 + 16), v7);
  os_unfair_lock_unlock((v3 + 32));
  v4 = v7[0];
  if (v7[0])
  {
    v5 = v7[1];
    v6 = v7[2];
    sub_25F2FC288(v7);
    sub_25F1DF100(v4, v5, v6);
  }

  else if (v8)
  {
    a1();
  }
}

BOOL ObjcSingleFireEvent.hasFired.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20PreviewsFoundationOS19ObjcSingleFireEvent_event) + 16);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_25F2C403C(v2, v3);
  os_unfair_lock_unlock((v1 + 32));
  sub_25F2C4080(v2, v3);
  return v2 == 0;
}

id ObjcSingleFireEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ObjcSingleFireEvent.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC20PreviewsFoundationOS19ObjcSingleFireEvent_event;
  type metadata accessor for SingleFireEvent();
  v4 = swift_allocObject();
  SingleFireEvent.init(description:)(0, 0);
  *&v1[v3] = v4;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id ObjcSingleFireEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_25F2FDDD0@<W0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  v8[0] = a2[2];
  *(v8 + 10) = *(a2 + 42);
  result = sub_25F2C1648(a1, v7);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_25F2FDE24(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v4[0] = a1[2];
  *(v4 + 10) = *(a1 + 42);
  return sub_25F1C0934(v3);
}

uint64_t sub_25F2FDE60(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  v9[0] = a1[2];
  *(v9 + 10) = *(a1 + 42);
  return sub_25F2FC3C8(v8, v2, v3, v4, v5);
}

uint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS15SingleFireEventC5State33_8D63C14D2B3A559738C4808384BD06F9LLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_25F2FDF88(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_25F2FDFC8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_25F2FE044(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9 == 1)
  {
  }
}

uint64_t sub_25F2FE058()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v4[0] = *(v0 + 32);
  v4[1] = v2;
  v5[0] = *(v0 + 64);
  *(v5 + 10) = *(v0 + 74);
  return v1(v4);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F2FE0C0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_25F2CCCC8(v2, v3, v4);
}

BOOL sub_25F2FE130@<W0>(_OWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[1];
  v8[0] = *v5;
  v8[1] = v6;
  v9[0] = v5[2];
  *(v9 + 10) = *(v5 + 42);
  result = sub_25F2C1648(a1, v8);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_25F2FE1B0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *v1;
  v4 = v1[1];

  return sub_25F1E4C08(v3, v4, v2);
}

uint64_t sub_25F2FE224()
{
  v1 = *(v0 + 16);
  v3[2] = *(v0 + 32);
  return v1(sub_25F2FE278, v3);
}

uint64_t sub_25F2FE278()
{
  v1 = sub_25F1E54CC(*(v0 + 16));

  return sub_25F1E7344(v1, v2);
}

void CancelationToken.cancel(dsoHandle:file:line:column:function:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  *&v10 = a2;
  *(&v10 + 1) = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v16 = a9;
  CancelationToken.cancel(callsite:)(&v10, a10);
}

__n128 CancelationToken<>.init(dsoHandle:file:line:column:function:on:_:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, __n128 *a8@<X8>, char a9, __n128 a10, unint64_t a11, unint64_t a12)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54EE8, &unk_25F30D6E0);
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54EF0, &qword_25F310F30);
  v20 = swift_allocObject();
  *(v20 + 76) = 0;
  *(v20 + 73) = 0;
  *(v19 + 152) = v20;
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;
  *(v19 + 64) = a7;
  *(v19 + 72) = a9;
  *(v19 + 80) = 0;
  *(v19 + 88) = 0;
  *(v19 + 96) = xmmword_25F3077E0;
  *(v19 + 112) = 2;
  *(v19 + 120) = 0xD000000000000011;
  *(v19 + 128) = 0x800000025F319920;
  *(v19 + 136) = 0x64656C65636E6163;
  *(v19 + 144) = 0xE800000000000000;
  result = a10;
  *a8 = a10;
  a8[1].n128_u64[0] = a11;
  a8[1].n128_u64[1] = a12;
  a8[2].n128_u64[0] = v19;
  return result;
}

double CancelationToken<>.init(dsoHandle:file:line:column:function:_:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, char a9, uint64_t a10, uint64_t a11)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54EE8, &unk_25F30D6E0);
  v18 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54EF0, &qword_25F310F30);
  v19 = swift_allocObject();
  *(v19 + 76) = 0;
  *(v19 + 73) = 0;
  *(v18 + 152) = v19;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  *(v18 + 56) = a6;
  *(v18 + 64) = a7;
  *(v18 + 72) = a9;
  *(v18 + 80) = 0;
  *(v18 + 88) = 0;
  *&result = 1;
  *(v18 + 96) = xmmword_25F3077E0;
  *(v18 + 112) = 2;
  *(v18 + 120) = 0xD000000000000011;
  *(v18 + 128) = 0x800000025F319920;
  *(v18 + 136) = 0x64656C65636E6163;
  *(v18 + 144) = 0xE800000000000000;
  *a8 = a10;
  a8[1] = a11;
  a8[2] = v18;
  return result;
}

void CancelationToken.cancel(callsite:)(__int128 *a1, uint64_t a2)
{
  v4 = a1[1];
  v7 = *a1;
  v8 = v4;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  v5 = *(*(v2 + *(a2 + 36)) + 152);
  os_unfair_lock_lock(v5 + 19);
  sub_25F1D3EBC(&v5[4], &v6);
  os_unfair_lock_unlock(v5 + 19);
  if ((v6 & 1) == 0)
  {
    (*(*(a2 + 24) + 8))(*(a2 + 16));
  }
}

Swift::Void __swiftcall IsolatedTokenCallback.invoke()()
{
  v1 = v0[2];
  if (*v0)
  {
    v2 = v0[1];
    ObjectType = swift_getObjectType();
    Actor.verifyIsolated(_:file:line:)(sub_25F2E8D04, 0, "PreviewsFoundationOS/CancelationToken.swift", 43, 2, 57, ObjectType, v2);
  }

  v1();
}

uint64_t sub_25F2FE72C()
{
  v1 = v0[2];
  if (*v0)
  {
    v2 = v0[1];
    ObjectType = swift_getObjectType();
    Actor.verifyIsolated(_:file:line:)(sub_25F2E8D04, 0, "PreviewsFoundationOS/CancelationToken.swift", 43, 2, 57, ObjectType, v2);
  }

  return v1();
}

uint64_t Actor.wrap(token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v9 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v9;
  v18 = *(a1 + 32);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = v4;
  v11 = *(a1 + 16);
  *(v10 + 40) = *a1;
  *(v10 + 56) = v11;
  *(v10 + 72) = *(a1 + 32);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = sub_25F2FED7C;
  *(v12 + 5) = v10;
  *(v12 + 6) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54EE8, &unk_25F30D6E0);
  v13 = swift_allocObject();
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54EF0, &qword_25F310F30);
  v14 = swift_allocObject();
  *(v14 + 76) = 0;
  *(v14 + 73) = v19;
  *(v13 + 152) = v14;
  *(v13 + 16) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CancelationToken.swift";
  *(v13 + 24) = 128;
  *(v13 + 32) = 2;
  *(v13 + 40) = xmmword_25F316D00;
  *(v13 + 56) = "wrap(token:)";
  *(v13 + 64) = 12;
  *(v13 + 72) = 2;
  *(v13 + 80) = 0;
  *(v13 + 88) = 0;
  *(v13 + 96) = xmmword_25F3077E0;
  *(v13 + 112) = 2;
  *(v13 + 120) = 0xD000000000000011;
  *(v13 + 128) = 0x800000025F319920;
  *(v13 + 136) = 0x64656C65636E6163;
  *(v13 + 144) = 0xE800000000000000;
  *a4 = sub_25F2FED8C;
  a4[1] = v12;
  a4[2] = v13;
  swift_unknownObjectRetain_n();
  return sub_25F2A02C8(v17, v16);
}

uint64_t sub_25F2FEA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  v13 = sub_25F30546C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a1;
  v14[7] = a2;
  v14[8] = a3;

  swift_unknownObjectRetain();
  sub_25F1B1524(0, 0, v12, &unk_25F316E48, v14);
}

uint64_t sub_25F2FEBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v10 = sub_25F3053EC();

  return MEMORY[0x2822009F8](sub_25F2FEC30, v10, v9);
}

uint64_t sub_25F2FEC30()
{
  (*(v0 + 16))(*(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t *Actor.wrap(token:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = result[2];
  if (v5)
  {
    v9 = result[3];
    v8 = result[4];
    v10 = *result;
    v11 = result[1];
    swift_unknownObjectRetain();

    v12[0] = v10;
    v12[1] = v11;
    v12[2] = v5;
    v12[3] = v9;
    v12[4] = v8;
    Actor.wrap(token:)(v12, a2, a3, a4);

    return swift_unknownObjectRelease();
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  return result;
}

void sub_25F2FEDB0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_25F2FF140(319, v1, v2, v3);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_25F2FEE38(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_25F2FEF74(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_25F2FF140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27FD591F0[0])
  {
    v4 = type metadata accessor for FulfillOnceState(0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78] + 8, a4);
    if (!v5)
    {
      atomic_store(v4, qword_27FD591F0);
    }
  }
}

uint64_t sub_25F2FF1B8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25F1AFDB0;

  return sub_25F2FEBB0(a1, v6, v7, v8, v9, v10, v4, v5);
}

uint64_t sub_25F2FF294(_OWORD *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a2;
  v7 = *a3;
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  v12[0] = a1[2];
  *(v12 + 9) = *(a1 + 41);
  type metadata accessor for ZipFuture(0, *(v6 + 80), *(v7 + 80), a4);
  swift_allocObject();

  return sub_25F3000C4(v11, a2, a3, v9);
}

uint64_t static Future<A>.zip<A, B>(dsoHandle:file:line:column:function:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t *a10, uint64_t *a11)
{
  *&v12 = a2;
  *(&v12 + 1) = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  return sub_25F2FF294(&v12, a10, a11, a4);
}

uint64_t static Future<A>.zip<A, B, C>(dsoHandle:file:line:column:function:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t *a10, uint64_t *a11, uint64_t *a12)
{
  v12 = *a10;
  v13 = *a11;
  v14 = *a12;
  *&v32 = a2;
  *(&v32 + 1) = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v38 = a9;
  *&v25 = a2;
  *(&v25 + 1) = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a9;
  v15 = sub_25F2FF294(&v25, a10, a11, a4);
  sub_25F2FF294(&v32, v15, a12, v16);

  v17 = swift_allocObject();
  v18 = *(v12 + 80);
  v17[2] = v18;
  v19 = *(v13 + 80);
  v17[3] = v19;
  v20 = *(v14 + 80);
  v17[4] = v20;
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v19;
  v21[4] = v20;
  v21[5] = sub_25F2FF824;
  v21[6] = v17;
  swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  sub_25F229A9C(&v32);
  v25 = v32;
  v23 = sub_25F286460("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ZipFuture.swift", 121, 2, 77, 25, "zip(dsoHandle:file:line:column:function:_:_:_:)", 47, 2, &v25, sub_25F2FF928, v21, TupleTypeMetadata3);

  sub_25F2033DC(v25);
  return v23;
}

uint64_t sub_25F2FF600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a3;
  v27 = a6;
  v24 = a1;
  v25 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v24 - v18;
  v20 = *(a7 - 8);
  (*(v20 + 16))(&v24 - v18, a4, a7);
  v21 = *(a8 - 8);
  (*(v21 + 16))(&v19[*(TupleTypeMetadata2 + 48)], a5, a8);
  (*(v14 + 32))(v17, v19, TupleTypeMetadata2);
  v22 = *(TupleTypeMetadata2 + 48);
  (*(v20 + 32))(v24, v17, a7);
  (*(v21 + 32))(v25, &v17[v22], a8);
  return (*(*(a9 - 8) + 16))(v26, v27, a9);
}

uint64_t sub_25F2FF850@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a6@<X8>)
{
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  return a2(a6, a6 + *(TupleTypeMetadata3 + 48), a6 + *(TupleTypeMetadata3 + 64), a1, a1 + v9, a1 + v10);
}

uint64_t static Future<A>.zip<A, B, C, D>(dsoHandle:file:line:column:function:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13)
{
  v17 = a4;
  v33 = *a10;
  v34 = *a11;
  v35 = *a12;
  v36 = *a13;
  *&v44 = a2;
  *(&v44 + 1) = a3;
  LOBYTE(v45) = a4;
  v46 = a5;
  v47 = a6;
  v48 = a7;
  v49 = a8;
  v50 = a9;
  *&v37 = a2;
  *(&v37 + 1) = a3;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v41 = a7;
  v42 = a8;
  v43 = a9;
  v20 = sub_25F2FF294(&v37, a10, a11, a4);
  *&v37 = a2;
  *(&v37 + 1) = a3;
  v38 = v17;
  v39 = a5;
  v40 = a6;
  v41 = a7;
  v42 = a8;
  v43 = a9;
  v22 = sub_25F2FF294(&v37, a12, a13, v21);
  sub_25F2FF294(&v44, v20, v22, v23);

  v24 = swift_allocObject();
  v25 = *(v33 + 80);
  v24[2] = v25;
  v26 = *(v34 + 80);
  v24[3] = v26;
  v27 = *(v35 + 80);
  v24[4] = v27;
  v28 = *(v36 + 80);
  v24[5] = v28;
  v29 = swift_allocObject();
  v29[2] = v25;
  v29[3] = v26;
  v29[4] = v27;
  v29[5] = v28;
  v29[6] = sub_25F301528;
  v29[7] = v24;
  swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  *&v44 = v25;
  *(&v44 + 1) = v26;
  v45 = v27;
  v46 = v28;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  sub_25F229A9C(&v44);
  v37 = v44;
  v31 = sub_25F286460("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ZipFuture.swift", 121, 2, 105, 25, "zip(dsoHandle:file:line:column:function:_:_:_:_:)", 49, 2, &v37, sub_25F301558, v29, TupleTypeMetadata);

  sub_25F2033DC(v37);
  return v31;
}

uint64_t sub_25F2FFBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v43 = a8;
  v41 = a6;
  v39 = a5;
  v47 = a3;
  v48 = a4;
  v45 = a1;
  v46 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v44 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v42 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  v17 = swift_getTupleTypeMetadata2();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v35 - v22;
  v38 = a9;
  v24 = *(a9 - 8);
  (*(v24 + 16))(&v35 - v22, v39, a9);
  v25 = *(v17 + 48);
  v36 = a10;
  v26 = *(a10 - 8);
  (*(v26 + 16))(&v23[v25], v41, a10);
  v37 = a11;
  v27 = *(a11 - 8);
  (*(v27 + 16))(v16, a7, a11);
  v28 = TupleTypeMetadata2;
  v29 = *(TupleTypeMetadata2 + 48);
  v35 = a12;
  v30 = *(a12 - 8);
  (*(v30 + 16))(&v16[v29], v43, a12);
  (*(v18 + 32))(v21, v23, v17);
  v31 = *(v17 + 48);
  (*(v24 + 32))(v45, v21, v38);
  (*(v26 + 32))(v46, &v21[v31], v36);
  v32 = v42;
  (*(v44 + 32))(v42, v16, v28);
  v33 = *(v28 + 48);
  (*(v27 + 32))(v47, v32, v37);
  return (*(v30 + 32))(v48, &v32[v33], v35);
}

uint64_t sub_25F2FFFA8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a7@<X8>)
{
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = a1 + *(swift_getTupleTypeMetadata2() + 48);
  v12 = *(TupleTypeMetadata2 + 48);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  return a2(a7, a7 + TupleTypeMetadata[12], a7 + TupleTypeMetadata[16], a7 + TupleTypeMetadata[20], a1, a1 + v9, v11, v11 + v12);
}

uint64_t sub_25F3000C4(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ZipFuture.Activity(0, *(*v4 + 200), *(*v4 + 208), a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  v12 = a1[1];
  v19[0] = *a1;
  v19[1] = v12;
  v20[0] = a1[2];
  *(v20 + 9) = *(a1 + 41);
  v4[14] = a2;
  v4[15] = a3;
  swift_storeEnumTagMultiPayload();

  v13 = sub_25F203E0C(v11, v8);
  (*(v9 + 8))(v11, v8);
  v4[13] = v13;
  v17 = sub_25F2E95EC(v19, v14, v15, v16);
  swift_retain_n();
  Future.observeSuccess(_:)(sub_25F3019D0, v17);

  Future.observeSuccess(_:)(sub_25F301974, v17);

  Future.observeFailure(_:)(sub_25F301970, v17);

  Future.observeFailure(_:)(sub_25F301A30, v17);

  Future.observeCancelation(_:)(sub_25F301934, v17);

  Future.observeCancelation(_:)(sub_25F301A2C, v17);

  return v17;
}

uint64_t sub_25F300358(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v38 = a1;
  v39 = a3;
  v37 = a2;
  v36 = a4;
  v5 = *(*v4 + 200);
  v6 = *(*v4 + 208);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = type metadata accessor for FutureTermination(0, TupleTypeMetadata2, v8, v9);
  v34 = *(v35 - 8);
  v10 = MEMORY[0x28223BE20](v35);
  v33 = &v30 - v11;
  v12 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](v10);
  v32 = &v30 - v13;
  v14 = sub_25F305C1C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  v31 = v4;
  v50 = v4[13];
  *&v44 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ZipFuture.swift";
  *(&v44 + 1) = 121;
  v45 = 2;
  v46 = v36;
  v47 = v37;
  v48 = 14;
  v49 = 2;
  v41 = v5;
  v42 = v6;
  v43 = v38;
  type metadata accessor for ZipFuture.Activity(255, v5, v6, v21);
  v22 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v44, v39, v40, v22, v14, WitnessTable);

  (*(v15 + 16))(v18, v20, v14);
  v24 = v12;
  if ((*(v12 + 48))(v18, 1, TupleTypeMetadata2) == 1)
  {
    v25 = *(v15 + 8);
    v25(v20, v14);
    return (v25)(v18, v14);
  }

  else
  {
    v27 = v32;
    (*(v24 + 32))(v32, v18, TupleTypeMetadata2);
    v28 = v33;
    (*(v24 + 16))(v33, v27, TupleTypeMetadata2);
    v29 = v35;
    swift_storeEnumTagMultiPayload();
    sub_25F2EA104(v28);
    (*(v34 + 8))(v28, v29);
    (*(v24 + 8))(v27, TupleTypeMetadata2);
    return (*(v15 + 8))(v20, v14);
  }
}

uint64_t sub_25F300784(void *a1)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = type metadata accessor for FutureTermination(0, TupleTypeMetadata2, v3, v4);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v15 - v8);
  result = sub_25F3011FC(v7, v10, v11, v12);
  if (result)
  {
    *v9 = a1;
    swift_storeEnumTagMultiPayload();
    v14 = a1;
    sub_25F2EA104(v9);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_25F3008B0(__int128 *a1)
{
  v2 = v1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = type metadata accessor for FutureTermination(0, TupleTypeMetadata2, v5, v6);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v21 - v10);
  result = sub_25F3011FC(v9, v12, v13, v14);
  if (result)
  {
    v16 = *(v1 + 112);
    v17 = a1[1];
    v21 = *a1;
    v22 = v17;
    v23[0] = a1[2];
    *(v23 + 9) = *(a1 + 41);
    (*(*v16 + 192))(&v21);
    v18 = *(v2 + 120);
    v19 = a1[1];
    v21 = *a1;
    v22 = v19;
    v23[0] = a1[2];
    *(v23 + 9) = *(a1 + 41);
    (*(*v18 + 192))(&v21);
    v20 = a1[1];
    *v11 = *a1;
    v11[1] = v20;
    v11[2] = a1[2];
    *(v11 + 41) = *(a1 + 41);
    swift_storeEnumTagMultiPayload();
    sub_25F2EA104(v11);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_25F300A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a2;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ZipFuture.Activity(0, v12, v13, v13);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  (*(v15 + 16))(&v25 - v16, a1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v15 + 8))(a1, v14);
      (*(*(a3 - 8) + 16))(a1, v26, a3);
      swift_storeEnumTagMultiPayload();
    }

    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a5, 1, 1, TupleTypeMetadata2);
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v15 + 8))(a1, v14);
    v22 = *(v9 + 32);
    v22(v11, v17, a4);
    swift_storeEnumTagMultiPayload();
    v23 = swift_getTupleTypeMetadata2();
    v24 = *(v23 + 48);
    (*(*(a3 - 8) + 16))(a5, v26, a3);
    v22((a5 + v24), v11, a4);
    return (*(*(v23 - 8) + 56))(a5, 0, 1, v23);
  }

  else
  {
    v27[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ZipFuture.swift";
    v27[1] = 121;
    v28 = 2;
    v29 = xmmword_25F316E50;
    v30 = "aSucceeded(_:)";
    v31 = 14;
    v32 = 2;
    sub_25F213F98(v27);
    v19 = swift_getTupleTypeMetadata2();
    (*(*(v19 - 8) + 56))(a5, 1, 1, v19);
    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_25F300E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v26 = a2;
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ZipFuture.Activity(0, v12, v13, v13);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  (*(v15 + 16))(&v25 - v16, a1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v15 + 8))(a1, v14);
      (*(*(a4 - 8) + 16))(a1, v26, a4);
      swift_storeEnumTagMultiPayload();
    }

    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a5, 1, 1, TupleTypeMetadata2);
  }

  else if (EnumCaseMultiPayload)
  {
    v27[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ZipFuture.swift";
    v27[1] = 121;
    v28 = 2;
    v29 = xmmword_25F316E60;
    v30 = "bSucceeded(_:)";
    v31 = 14;
    v32 = 2;
    sub_25F213F98(v27);
    v24 = swift_getTupleTypeMetadata2();
    (*(*(v24 - 8) + 56))(a5, 1, 1, v24);
    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    (*(v15 + 8))(a1, v14);
    v19 = *(v9 + 32);
    v19(v11, v17, a3);
    swift_storeEnumTagMultiPayload();
    v20 = swift_getTupleTypeMetadata2();
    v21 = *(v20 + 48);
    v19(a5, v11, a3);
    (*(*(a4 - 8) + 16))(&a5[v21], v26, a4);
    return (*(*(v20 - 8) + 56))(a5, 0, 1, v20);
  }
}

uint64_t sub_25F3011FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v18 = v4[13];
  *&v12 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ZipFuture.swift";
  *(&v12 + 1) = 121;
  v13 = 2;
  v14 = xmmword_25F316E70;
  v15 = "checkIfRunningAndMarkFinished()";
  v16 = 31;
  v17 = 2;
  v10 = *(v5 + 200);
  v11 = *(v5 + 208);
  type metadata accessor for ZipFuture.Activity(255, v10, v11, a4);
  v6 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v12, sub_25F301918, &v9, v6, MEMORY[0x277D839B0], WitnessTable);

  return v19;
}

uint64_t sub_25F301320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for ZipFuture.Activity(0, a2, a3, a5);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  (*(v8 + 16))(v14 - v9, a1, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      v13 = 0;
      goto LABEL_7;
    }

    (*(v8 + 8))(a1, v7);
  }

  else
  {
    v12 = *(v8 + 8);
    v12(a1, v7);
    v12(v10, v7);
  }

  result = swift_storeEnumTagMultiPayload();
  v13 = 1;
LABEL_7:
  *a4 = v13;
  return result;
}

uint64_t sub_25F301480()
{
}

uint64_t sub_25F3014B8()
{
  v0 = Future.deinit();

  return v0;
}

uint64_t sub_25F3014F8()
{
  v0 = sub_25F3014B8();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t sub_25F3015CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = (1u >> (8 * v3)) ^ 0xFD;
  if (v3 > 3)
  {
    v4 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v4 >= a2)
  {
    goto LABEL_27;
  }

  v5 = v3 + 1;
  v6 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v9 = ((~(-1 << v6) + a2 - v4) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 < 2)
    {
LABEL_27:
      v11 = *(a1 + v3);
      if (v4 <= (v11 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v11);
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_27;
  }

LABEL_16:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return v4 + (v5 | v10) + 1;
}

void sub_25F30171C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = (1u >> (8 * v5)) ^ 0xFD;
  if (v5 > 3)
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_37:
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_37;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_41:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v8)
  {
    a1[v7] = v14;
  }
}

uint64_t sub_25F301934(__int128 *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  return sub_25F3008B0(v3);
}

uint64_t BinaryInteger.numberOfSetBits.getter(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v43 = *(a2 + 24);
  v51 = *(v43 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v49 = &v39 - v6;
  v7 = *(a1 - 8);
  v8 = MEMORY[0x28223BE20](v5);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v41 = &v39 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v39 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  v46 = *(v7 + 16);
  v46(&v39 - v18, v2, a1);
  v20 = 0;
  v47 = v19;
  v48 = v7 + 16;
  v40 = (v7 + 32);
  v44 = (v7 + 8);
  v45 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  do
  {
    v46(v17, v19, a1);
    if (sub_25F305DBC())
    {
      v32 = sub_25F305DAC();
      v33 = v44;
      if (v32 >= 64)
      {
        goto LABEL_2;
      }

LABEL_13:
      v38 = sub_25F305D9C();
      v22 = *v33;
      (*v33)(v17, a1);
      v23 = v14;
      if (!v38)
      {
LABEL_16:
        v22(v47, a1);
        return v20;
      }

      goto LABEL_3;
    }

    v34 = sub_25F305DBC();
    v35 = sub_25F305DAC();
    v33 = v44;
    if ((v34 & 1) == 0)
    {
      if (v35 >= 64)
      {
LABEL_2:
        v52 = 0;
        sub_25F20FAB8();
        sub_25F305D7C();
        v21 = sub_25F304DCC();
        v22 = *v33;
        (*v33)(v14, a1);
        v22(v17, a1);
        v23 = v14;
        if (v21)
        {
          goto LABEL_16;
        }

        goto LABEL_3;
      }

      goto LABEL_13;
    }

    if (v35 > 64)
    {
      goto LABEL_2;
    }

    swift_getAssociatedConformanceWitness();
    sub_25F30661C();
    sub_25F30656C();
    v36 = sub_25F304CDC();
    v22 = *v33;
    v23 = v14;
    (*v33)(v14, a1);
    if (v36)
    {
      v37 = sub_25F305D9C();
      v22(v17, a1);
      if (!v37)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v22(v17, a1);
    }

LABEL_3:
    swift_getAssociatedConformanceWitness();
    sub_25F30661C();
    v24 = v3;
    v25 = v17;
    v26 = v42;
    sub_25F30656C();
    v27 = v41;
    v28 = v47;
    sub_25F3062AC();
    v29 = v26;
    v17 = v25;
    v3 = v24;
    v19 = v28;
    v22(v29, a1);
    sub_25F305D8C();
    v22(v27, a1);
    v22(v28, a1);
    result = (*v40)(v28, v23, a1);
    v31 = __OFADD__(v20++, 1);
    v14 = v23;
  }

  while (!v31);
  __break(1u);
  return result;
}

uint64_t static FutureTermination.completed(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v6 = sub_25F30678C();
  MEMORY[0x28223BE20](v6);
  v8 = (&v13 - v7);
  (*(v9 + 16))(&v13 - v7, a1, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a3 = *v8;
  }

  else
  {
    (*(*(a2 - 8) + 32))(a3, v8, a2);
  }

  type metadata accessor for FutureTermination(0, a2, v10, v11);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F3020F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *v5;
    type metadata accessor for FutureTermination(0, *(a1 + 16), v7, v8);
  }

  else
  {
    v9 = *(a1 + 16);
    (*(*(v9 - 8) + 32))(a2, v5, v9);
    type metadata accessor for FutureTermination(0, v9, v10, v11);
  }

  return swift_storeEnumTagMultiPayload();
}

BOOL FutureTermination.isCompleted.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    (*(v2 + 8))(v4, a1);
  }

  return EnumCaseMultiPayload < 2;
}

uint64_t FutureTermination.map<A>(_:)@<X0>(void (*a1)(void *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v34 = a2;
  v35 = a1;
  v36 = a5;
  v8 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v9 = sub_25F30678C();
  v32 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = (&v31 - v10);
  v31 = a4;
  v12 = sub_25F30678C();
  v33 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  v16 = *(v8 - 8);
  v17 = MEMORY[0x28223BE20](v13);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v5, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v16 + 32))(v19, v21, v8);
    (*(v16 + 16))(v11, v19, v8);
    swift_storeEnumTagMultiPayload();
    v35(v11);
    (*(v32 + 8))(v11, v9);
    (*(v16 + 8))(v19, v8);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v26 = *v21;
    *v11 = v26;
    swift_storeEnumTagMultiPayload();
    v27 = v26;
    v35(v11);

    (*(v32 + 8))(v11, v9);
LABEL_5:
    sub_25F3020F8(v12, v36);
    return (*(v33 + 8))(v15, v12);
  }

  v29 = *(v21 + 1);
  v30 = v36;
  *v36 = *v21;
  v30[1] = v29;
  v30[2] = *(v21 + 2);
  *(v30 + 41) = *(v21 + 41);
  type metadata accessor for FutureTermination(0, v31, v24, v25);
  return swift_storeEnumTagMultiPayload();
}

uint64_t FutureTermination.succeededValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v4 + 8))(v6, a1);
    }

    return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1);
  }

  else
  {
    v9 = *(a1 + 16);
    v10 = *(v9 - 8);
    (*(v10 + 32))(a2, v6, v9);
    return (*(v10 + 56))(a2, 0, 1, v9);
  }
}

uint64_t FutureTermination.failedError.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return *v4;
    }
  }

  else
  {
    (*(v2 + 8))(v4, a1);
  }

  return 0;
}

uint64_t FutureTermination.completedResult.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(*(*(a1 + 16) - 8) + 32))(a2, v5, *(a1 + 16));
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    v8 = sub_25F30678C();
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    *a2 = *v5;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    v8 = sub_25F30678C();
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v10 = sub_25F30678C();
  return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
}

uint64_t FutureTermination.description.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0x64656C65636E6163;
    }

    v6 = 0x64656C696166;
  }

  else
  {
    v9[0] = 0x6564656563637573;
    v9[1] = 0xEA00000000003C64;
    v7 = sub_25F30685C();
    MEMORY[0x25F8D7130](v7);

    MEMORY[0x25F8D7130](62, 0xE100000000000000);
    v6 = v9[0];
  }

  (*(v2 + 8))(v4, a1);
  return v6;
}

BOOL FutureTermination.isCanceled.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    (*(v2 + 8))(v4, a1);
  }

  return EnumCaseMultiPayload > 1;
}

uint64_t FutureTermination.mapSuccess<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *a4 = *v13;
    }

    else
    {
      v21 = *(v13 + 1);
      *a4 = *v13;
      *(a4 + 16) = v21;
      *(a4 + 32) = *(v13 + 2);
      *(a4 + 41) = *(v13 + 41);
    }

    type metadata accessor for FutureTermination(0, a3, v17, v18);
  }

  else
  {
    (*(v8 + 32))(v11, v13, v7);
    a1(v11);
    (*(v8 + 8))(v11, v7);
    type metadata accessor for FutureTermination(0, a3, v19, v20);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t FutureTermination.resultMappingCancelation(_:)@<X0>(uint64_t (*a1)(_OWORD *)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *a3 = *v7;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
      sub_25F30678C();
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      v12 = *(v7 + 1);
      v13[0] = *v7;
      v13[1] = v12;
      v14[0] = *(v7 + 2);
      *(v14 + 9) = *(v7 + 41);
      return a1(v13);
    }
  }

  else
  {
    (*(*(*(a2 + 16) - 8) + 32))(a3, v7, *(a2 + 16));
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    sub_25F30678C();
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_25F303274@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v9 = *a1;
  v10 = a1[1];
  *v11 = a1[2];
  *&v11[9] = *(a1 + 41);
  type metadata accessor for FutureTermination.FutureCanceled(0, a2, a4, a5);
  swift_getWitnessTable();
  v6 = swift_allocError();
  *(v7 + 41) = *&v11[9];
  v7[1] = v10;
  v7[2] = *v11;
  *v7 = v9;
  *a3 = v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_25F303368()
{
  sub_25F305FAC();

  v0 = Callsite.description.getter();
  MEMORY[0x25F8D7130](v0);

  return 0xD000000000000016;
}

uint64_t sub_25F30341C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return HumanReadableError.errorDescription.getter(a1, WitnessTable);
}

uint64_t sub_25F303470(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return HumanReadableError.description.getter(a1, WitnessTable);
}

uint64_t FutureTermination.isFailed.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  (*(v2 + 8))(v4, a1);
  return v6;
}

uint64_t FutureTermination.detailedDescription.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *v7;
      *&v15[0] = 0;
      *(&v15[0] + 1) = 0xE000000000000000;
      MEMORY[0x25F8D7130](0x203A64656C696166, 0xE800000000000000);
      v17 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
      sub_25F30619C();

      return *&v15[0];
    }

    else
    {
      v13 = *(v7 + 1);
      v15[0] = *v7;
      v15[1] = v13;
      v16[0] = *(v7 + 2);
      *(v16 + 9) = *(v7 + 41);
      v17 = 0x64656C65636E6163;
      v18 = 0xEA0000000000203ALL;
      v14 = Callsite.description.getter();
      MEMORY[0x25F8D7130](v14);

      return v17;
    }
  }

  else
  {
    (*(v2 + 32))(v5, v7, v1);
    *&v15[0] = 0;
    *(&v15[0] + 1) = 0xE000000000000000;
    MEMORY[0x25F8D7130](0x6564656563637573, 0xEB00000000203A64);
    sub_25F30653C();
    v12 = *&v15[0];
    (*(v2 + 8))(v5, v1);
    return v12;
  }
}

uint64_t Logger.logOutcome<A>(of:at:operation:)(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v17 = a3;
  HIDWORD(v16) = a2;
  v6 = *a1;
  v7 = sub_25F30479C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v4, v7);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = v11 + v9;
  v13 = swift_allocObject();
  *(v13 + 16) = *(v6 + 80);
  (*(v8 + 32))(v13 + v11, v10, v7);
  *(v13 + v12) = BYTE4(v16);
  v14 = v13 + (v12 & 0xFFFFFFFFFFFFFFF8);
  *(v14 + 8) = v17;
  *(v14 + 16) = a4;

  Future.observeFinish(_:)(sub_25F303C64, v13);
}

void sub_25F3039E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v8 = a3;
  v10 = type metadata accessor for FutureTermination(0, a6, a3, a4);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  if (FutureTermination.isFailed.getter(v12))
  {
    v8 = sub_25F305A0C();
  }

  (*(v11 + 16))(v14, a1, v10);
  v15 = sub_25F30477C();
  if (os_log_type_enabled(v15, v8))
  {
    v16 = swift_slowAlloc();
    v30 = a5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136315650;
    v19 = sub_25F30685C();
    v21 = sub_25F1C53AC(v19, v20, &v31);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v22 = FutureTermination.detailedDescription.getter(v10);
    v24 = v23;
    (*(v11 + 8))(v14, v10);
    v25 = sub_25F1C53AC(v22, v24, &v31);

    *(v17 + 14) = v25;
    *(v17 + 22) = 2082;
    v27 = a4(v26);
    v29 = sub_25F1C53AC(v27, v28, &v31);

    *(v17 + 24) = v29;
    _os_log_impl(&dword_25F1A2000, v15, v8, "Future<%s> %{public}s\nOperation: %{public}s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F8D9510](v18, -1, -1);
    MEMORY[0x25F8D9510](v17, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }
}

void sub_25F303C64(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(sub_25F30479C() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = v1 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v1 + v6);

  sub_25F3039E8(a1, v1 + v5, v10, v8, v9, v3);
}

uint64_t sub_25F303D14(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_25F304064();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F303D94(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 57;
  if (*(v3 + 64) > 0x39uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_25F303EAC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x39)
  {
    v5 = 57;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_25F304064()
{
  result = qword_27FD59378;
  if (!qword_27FD59378)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FD59378);
  }

  return result;
}

uint64_t sub_25F3040E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F304138(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}