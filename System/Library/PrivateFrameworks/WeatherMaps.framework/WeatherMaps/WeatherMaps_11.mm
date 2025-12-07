void *sub_220F0BB88(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = a7(0);
  OUTLINED_FUNCTION_29(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v20) == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((result - v20) / v18);
LABEL_19:
  v23 = *(a7(0) - 8);
  if (v11)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_220F0AEFC(a4 + v24, v14, v21 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v21;
}

void *sub_220F0BD48(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9ECC8, &qword_220FD2D30);
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
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9ECD0, &qword_220FD2D38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_220F0BE7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9ECC0, &unk_220FD2D20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_220F0BF84(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9ECB8, &unk_220FD2D10);
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
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D2B0, &unk_220FCA530);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_220F0C0BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D070, &unk_220FC9CD0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_220F0C1C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9ECF0, &qword_220FD2D60);
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
    if (v10 != a4 || &v13[48 * v8] <= v12)
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

char *sub_220F0C2DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9ED00, &qword_220FD2D78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 32 * v8);
  }

  return v10;
}

char *sub_220F0C3DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3D8, &qword_220FCAA60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_220F0C4DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC88, &qword_220FD2CD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

char *sub_220F0C5DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E320, &qword_220FD2D50);
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

char *sub_220F0C6D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9ED10, &unk_220FD2D90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_220F0C7CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9ECF8, &unk_220FD2D68);
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
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

void *sub_220F0C8E0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D7C0, &qword_220FCAA40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3D0, &qword_220FCAA28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_220F0CA10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9ECE8, &qword_220FD2D58);
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
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_220F0CB0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9ECB0, &qword_220FD2D08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_220F0CC14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9ECA8, &qword_220FD2D00);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_220F0CD1C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC98, &qword_220FD2CE8);
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
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9ECA0, &unk_220FD2CF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_220F0CE60(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v27 = MEMORY[0x277D84F90];
    sub_220F0B448(0, v6, 0);
    v7 = v27;
    v12 = (a1 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v15 = *a6;
      v16 = *(*a6 + 16);
      sub_220EE8D08(v13, *v12);
      sub_220EE8D08(v13, v14);
      if (v16 && (v17 = sub_220F19704(v13, v14), (v18 & 1) != 0))
      {
        v19 = *(*(v15 + 56) + 8 * v17);
      }

      else
      {
        v19 = sub_220FC2600();
      }

      type metadata accessor for OverlayImmutableTileResourceProvider();
      swift_allocObject();
      v20 = sub_220FAD800(a3, a4, a5, v13, v14, v19, a2);
      sub_220E5E3BC(v13, v14);
      v22 = *(v27 + 16);
      v21 = *(v27 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_220F0B448((v21 > 1), v22 + 1, 1);
      }

      v12 += 2;
      *(v27 + 16) = v22 + 1;
      v23 = v27 + 16 * v22;
      *(v23 + 32) = v20;
      *(v23 + 40) = &off_2834886B0;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_220F0D01C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 40);
  v4 = v3 > 6;
  v5 = (1 << v3) & 0x4C;
  if (v4 || v5 == 0)
  {
    v8 = sub_220F0ED08(a2);
    if (v9)
    {
      return MEMORY[0x277D84F90];
    }

    else
    {
      v10 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3D8, &qword_220FCAA60);
      v2 = swift_allocObject();
      *(v2 + 1) = xmmword_220FC8E30;
      v2[4] = v10;
    }
  }

  else
  {
  }

  return v2;
}

uint64_t sub_220F0D0BC()
{
  memcpy(__dst, (v0 + 24), sizeof(__dst));
  sub_220E3FCD0(__dst);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 240));
  __swift_destroy_boxed_opaque_existential_0((v0 + 280));

  return v0;
}

uint64_t sub_220F0D124()
{
  sub_220F0D0BC();

  return MEMORY[0x2821FE8D8](v0, 344, 7);
}

uint64_t sub_220F0D17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v8 = v7;
  v64 = a3;
  v65 = a1;
  v66 = a2;
  v13 = *v8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90, &unk_220FC9CE0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v54 - v16;
  v18 = *a6;
  v63 = *(a6 + 8);
  v62 = *(a6 + 16);
  v19 = v8[33];
  v20 = v8[34];
  __swift_project_boxed_opaque_existential_1(v8 + 30, v19);
  (*(v20 + 8))(v68, v19, v20);
  memcpy(v70, v8 + 3, sizeof(v70));
  v21 = sub_220F7C110();
  sub_220F62984(*(v8 + 16), v21);
  OUTLINED_FUNCTION_21_6();

  if (v19)
  {
    v60 = v18;
    v61 = v13;
    v23 = *(v19 + 16);
    v24 = MEMORY[0x277D84F90];
    v59 = v19;
    if (v23)
    {
      v55 = a4;
      v56 = v8;
      v57 = a5;
      v58 = v17;
      *&v67[0] = MEMORY[0x277D84F90];
      sub_220F0B2B8(0, v23, 0);
      v24 = *&v67[0];
      v25 = (v19 + 40);
      v26 = v64;
      do
      {
        v28 = *(v25 - 1);
        v27 = *v25;
        sub_220EE8D08(v28, *v25);
        *&v67[0] = v24;
        v30 = *(v24 + 16);
        v29 = *(v24 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_220F0B2B8((v29 > 1), v30 + 1, 1);
          v26 = v64;
          v24 = *&v67[0];
        }

        v25 += 2;
        *(v24 + 16) = v30 + 1;
        v31 = v24 + 48 * v30;
        v32 = v66;
        *(v31 + 32) = v65;
        *(v31 + 40) = v32;
        *(v31 + 48) = v26;
        *(v31 + 56) = a7;
        *(v31 + 64) = v28;
        *(v31 + 72) = v27;
        --v23;
      }

      while (v23);
      a5 = v57;
      a4 = v55;
      v8 = v56;
    }

    sub_220FC2AE0();
    OUTLINED_FUNCTION_42();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    sub_220E1E30C(v68, v67);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    *(v37 + 32) = v24;
    *(v37 + 40) = a4;
    v38 = v65;
    v39 = v66;
    *(v37 + 48) = v8;
    *(v37 + 56) = v38;
    v40 = v64;
    *(v37 + 64) = v39;
    *(v37 + 72) = v40;
    *(v37 + 80) = a7;
    sub_220E1E72C(v67, v37 + 88);
    v41 = v59;
    v42 = v60;
    *(v37 + 128) = a5;
    *(v37 + 136) = v42;
    v43 = v63;
    *(v37 + 144) = v63;
    v44 = v62;
    *(v37 + 152) = v62;
    v45 = v61;
    *(v37 + 160) = v41;
    *(v37 + 168) = v45;

    sub_220E5AFB8(v42, v43, v44);
    OUTLINED_FUNCTION_22_8();
  }

  else
  {
    memcpy(v69, v8 + 3, sizeof(v69));
    v22 = sub_220F7C110();
    sub_220F62984(0, v22);
    OUTLINED_FUNCTION_21_6();

    sub_220FC2AE0();
    OUTLINED_FUNCTION_42();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    *(v53 + 24) = 0;
    OUTLINED_FUNCTION_22_8();
  }

  sub_220E85FBC();
  v47 = v46;
  __swift_destroy_boxed_opaque_existential_0(v68);
  return v47;
}

uint64_t sub_220F0D510()
{
  **(v0 + 16) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_8_8();
  return v1();
}

uint64_t sub_220F0D540(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 104) = v15;
  *(v9 + 112) = v16;
  *(v9 + 148) = v14;
  *(v9 + 96) = v13;
  *(v9 + 144) = a2;
  *(v9 + 64) = v11;
  *(v9 + 80) = v12;
  *(v9 + 48) = a8;
  *(v9 + 56) = a9;
  *(v9 + 32) = a6;
  *(v9 + 40) = a7;
  *(v9 + 16) = a1;
  *(v9 + 24) = a5;
  return MEMORY[0x2822009F8](sub_220F0D590, 0, 0);
}

uint64_t sub_220F0D590(__n128 a1)
{
  if (sub_220FC2B40())
  {
    sub_220FC2A60();
    OUTLINED_FUNCTION_0_54();
    sub_220F115BC(v2, v3, MEMORY[0x277D85680]);
    swift_allocError();
    sub_220FC2580();
    swift_willThrow();
    OUTLINED_FUNCTION_32_0();

    return v4();
  }

  else
  {
    v6 = *(v1 + 148);
    v8 = *(v1 + 88);
    v7 = *(v1 + 96);
    v9 = *(v1 + 144);
    v11 = *(v1 + 56);
    v10 = *(v1 + 64);
    v18 = *(v1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9ED20, &unk_220FCAA70);
    v12 = swift_task_alloc();
    *(v1 + 120) = v12;
    v13 = *(v1 + 72);
    v14 = *(v1 + 104);
    *(v12 + 16) = *(v1 + 24);
    *(v12 + 32) = v18;
    *(v12 + 48) = v11;
    *(v12 + 56) = v10;
    *(v12 + 64) = v9;
    *(v12 + 72) = v13;
    *(v12 + 88) = v8;
    *(v12 + 96) = v7;
    *(v12 + 104) = v6;
    *(v12 + 112) = v14;
    swift_task_alloc();
    OUTLINED_FUNCTION_18();
    *(v1 + 128) = v15;
    *v15 = v16;
    v15[1] = sub_220F0D784;
    v17 = *(v1 + 16);

    return MEMORY[0x282200740](v17);
  }
}

uint64_t sub_220F0D784()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  OUTLINED_FUNCTION_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_32_0();

    return v10();
  }
}

uint64_t sub_220F0D8A4()
{
  OUTLINED_FUNCTION_19();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t sub_220F0D900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9)
{
  *(v9 + 984) = v16;
  *(v9 + 976) = v15;
  *(v9 + 89) = v14;
  *(v9 + 944) = v12;
  *(v9 + 960) = v13;
  *(v9 + 92) = a9;
  *(v9 + 936) = a8;
  *(v9 + 928) = a7;
  *(v9 + 920) = a6;
  *(v9 + 912) = a5;
  *(v9 + 904) = a4;
  *(v9 + 896) = a3;
  *(v9 + 888) = a2;
  *(v9 + 880) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90, &unk_220FC9CE0);
  *(v9 + 992) = swift_task_alloc();
  *(v9 + 1000) = swift_task_alloc();
  *(v9 + 1008) = swift_task_alloc();
  *(v9 + 1016) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220F0DA00, 0, 0);
}

uint64_t sub_220F0DA00()
{
  v1 = *(v0 + 896);
  v50 = *(v1 + 16);
  if (v50)
  {
    v2 = 0;
    v52 = *(v0 + 944);
    v49 = v1 + 32;
    do
    {
      v3 = *(v0 + 904);
      v51 = v2;
      v4 = (v49 + 48 * v2);
      v6 = v4[1];
      v5 = v4[2];
      *(v0 + 168) = *v4;
      *(v0 + 184) = v6;
      *(v0 + 200) = v5;
      v7 = sub_220F0D01C(v0 + 168, v3);
      v8 = v7[2];
      if (v8)
      {
        v54 = *(v0 + 208);
        v55 = *(v0 + 200);
        v53 = **(v0 + 888);
        v9 = v7 + 4;
        sub_220F11048(v0 + 168, v0 + 216);
        do
        {
          v62 = v8;
          v10 = *(v0 + 1016);
          v60 = *(v0 + 968);
          v61 = *(v0 + 1008);
          v11 = *(v0 + 952);
          v12 = *(v0 + 92);
          v58 = *(v0 + 936);
          v59 = *(v0 + 960);
          v57 = *(v0 + 920);
          v13 = *(v0 + 912);
          v63 = *v9;
          v56 = *(v0 + 89);
          v14 = *__swift_project_boxed_opaque_existential_1(*(v0 + 944), *(v52 + 24));
          v15 = type metadata accessor for MainOverlayRenderContext();
          *(v0 + 528) = v15;
          *(v0 + 536) = &off_283481CA0;
          *(v0 + 504) = v14;
          v16 = __swift_project_boxed_opaque_existential_1((v0 + 504), v15);
          sub_220E1E30C(*v16 + 32, v0 + 544);
          sub_220F11048(v0 + 168, v0 + 264);

          sub_220F0ED4C(v55, v54, v11, (v0 + 584));
          v17 = sub_220FC2AE0();
          OUTLINED_FUNCTION_42();
          __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
          sub_220E1E30C(v0 + 584, v0 + 624);
          sub_220E1E30C(v0 + 544, v0 + 664);
          v21 = swift_allocObject();
          *(v21 + 16) = 0;
          *(v21 + 24) = 0;
          sub_220E1E72C((v0 + 624), v21 + 32);
          *(v21 + 72) = v57;
          *(v21 + 88) = v58;
          *(v21 + 96) = v12;
          *(v21 + 104) = v59;
          *(v21 + 112) = v60;
          *(v21 + 120) = v56;
          *(v21 + 128) = v63;
          *(v21 + 136) = v55;
          *(v21 + 144) = v54;
          *(v21 + 152) = v13;
          sub_220E1E72C((v0 + 664), v21 + 160);
          sub_220F11534(v10, v61, &unk_27CF9EB90, &unk_220FC9CE0);
          v22 = v17;
          LODWORD(v17) = __swift_getEnumTagSinglePayload(v61, 1, v17);
          sub_220E5AFB8(v59, v60, v56);

          v23 = *(v0 + 1008);
          if (v17 == 1)
          {
            sub_220EDDB38(*(v0 + 1008), &unk_27CF9EB90, &unk_220FC9CE0);
          }

          else
          {
            sub_220FC2AD0();
            OUTLINED_FUNCTION_12();
            (*(v24 + 8))(v23, v22);
          }

          v25 = *(v21 + 16);
          swift_unknownObjectRetain();

          if (v25)
          {
            swift_getObjectType();
            v26 = sub_220FC2A30();
            v28 = v27;
            swift_unknownObjectRelease();
          }

          else
          {
            v26 = 0;
            v28 = 0;
          }

          sub_220EDDB38(*(v0 + 1016), &unk_27CF9EB90, &unk_220FC9CE0);
          if (v28 | v26)
          {
            *(v0 + 784) = 0;
            *(v0 + 792) = 0;
            *(v0 + 800) = v26;
            *(v0 + 808) = v28;
          }

          v29 = *(v0 + 1000);
          v30 = *(v0 + 992);
          v31 = swift_task_create();
          __swift_destroy_boxed_opaque_existential_0((v0 + 584));
          __swift_destroy_boxed_opaque_existential_0((v0 + 544));
          __swift_destroy_boxed_opaque_existential_0((v0 + 504));
          sub_220E44404((v0 + 704));
          OUTLINED_FUNCTION_42();
          __swift_storeEnumTagSinglePayload(v32, v33, v34, v22);
          sub_220E1E30C(v0 + 704, v0 + 744);
          v35 = swift_allocObject();
          *(v35 + 16) = 0;
          *(v35 + 24) = 0;
          *(v35 + 32) = v31;
          sub_220E1E72C((v0 + 744), v35 + 40);
          v36 = *(v0 + 184);
          *(v35 + 80) = *(v0 + 168);
          *(v35 + 96) = v36;
          *(v35 + 112) = *(v0 + 200);
          *(v35 + 128) = v63;
          sub_220F11534(v29, v30, &unk_27CF9EB90, &unk_220FC9CE0);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v22);
          v38 = *(v0 + 992);
          if (EnumTagSinglePayload == 1)
          {
            sub_220F11048(v0 + 168, v0 + 312);

            sub_220EDDB38(v38, &unk_27CF9EB90, &unk_220FC9CE0);
          }

          else
          {
            sub_220F11048(v0 + 168, v0 + 360);

            sub_220FC2AD0();
            OUTLINED_FUNCTION_12();
            (*(v39 + 8))(v38, v22);
          }

          if (*(v35 + 16))
          {
            swift_getObjectType();
            swift_unknownObjectRetain();
            v40 = sub_220FC2A30();
            v42 = v41;
            swift_unknownObjectRelease();
          }

          else
          {
            v40 = 0;
            v42 = 0;
          }

          if (v42 | v40)
          {
            v43 = v0 + 816;
            *(v0 + 816) = 0;
            *(v0 + 824) = 0;
            *(v0 + 832) = v40;
            *(v0 + 840) = v42;
          }

          else
          {
            v43 = 0;
          }

          v44 = *(v0 + 1000);
          *(v0 + 848) = 1;
          *(v0 + 856) = v43;
          *(v0 + 864) = v53;
          swift_task_create();

          sub_220EDDB38(v44, &unk_27CF9EB90, &unk_220FC9CE0);
          __swift_destroy_boxed_opaque_existential_0((v0 + 704));
          ++v9;
          v8 = v62 - 1;
        }

        while (v62 != 1);
      }

      else
      {
        sub_220F11048(v0 + 168, v0 + 408);
      }

      v2 = v51 + 1;

      sub_220F11240(v0 + 168);
    }

    while (v51 + 1 != v50);
  }

  *(v0 + 872) = **(v0 + 888);
  v45 = swift_task_alloc();
  *(v0 + 1024) = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9ED30, &qword_220FD2EC8);
  v47 = sub_220E453D4(&qword_27CF9ED38, &qword_27CF9ED30, &qword_220FD2EC8, MEMORY[0x277D85840]);
  *v45 = v0;
  v45[1] = sub_220F0E104;

  return MEMORY[0x2821D2798](v46, v47);
}

uint64_t sub_220F0E104()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1032) = v4;
  *(v2 + 1040) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_220F0E20C()
{
  v49 = v0;
  v1 = *(v0 + 1032);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9ED40, &qword_220FD2ED0);
  sub_220E98C20();
  v2 = sub_220FC2600();
  v47 = v2;
  v3 = *(v1 + 16);
  if (!v3)
  {
LABEL_30:
    v34 = *(v0 + 976);
    v35 = *(v0 + 92);
    v36 = *(v0 + 936);
    v37 = *(v0 + 928);
    v38 = *(v0 + 920);
    v39 = *(v0 + 880);

    v40 = sub_220F0CE60(v34, v35, v38, v37, v36, &v47);

    *v39 = v40;

    OUTLINED_FUNCTION_8_8();

    v41();
    return;
  }

  v4 = 0;
  v43 = v1;
  v44 = (v0 + 456);
  v5 = *(v0 + 1032) + 32;
  v42 = *(v1 + 16);
  while (1)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    sub_220F11270(v5, v0 + 16);
    if (*(v0 + 88))
    {
      sub_220F112A8(v0 + 16);
      goto LABEL_28;
    }

    memcpy((v0 + 96), (v0 + 16), 0x48uLL);
    v6 = *(v0 + 144);
    v46 = *(v0 + 152);
    v45 = v6;
    if (*(v2 + 16) && (v7 = sub_220F19704(v6, *(v0 + 152)), (v8 & 1) != 0))
    {
      v9 = *(*(v2 + 56) + 8 * v7);
    }

    else
    {
      v9 = sub_220FC2600();
    }

    v10 = *(v0 + 160);
    sub_220EF5194(v0 + 96, v44);
    swift_isUniquelyReferenced_nonNull_native();
    v48 = v9;
    v11 = sub_220F1AE18(v10);
    if (__OFADD__(*(v9 + 16), (v12 & 1) == 0))
    {
      goto LABEL_37;
    }

    v13 = v11;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9ED50, &qword_220FD2ED8);
    v15 = v48;
    if (sub_220FC3710())
    {
      v16 = sub_220F1AE18(v10);
      if ((v14 & 1) != (v17 & 1))
      {
        break;
      }

      v13 = v16;
    }

    if (v14)
    {
      sub_220F11308(v44, *(v48 + 56) + 48 * v13);
    }

    else
    {
      OUTLINED_FUNCTION_18_9(v48 + 8 * (v13 >> 6));
      *(*(v48 + 48) + 8 * v13) = v10;
      v18 = (*(v15 + 56) + 48 * v13);
      v19 = *v44;
      v20 = *(v0 + 472);
      *(v18 + 25) = *(v0 + 481);
      *v18 = v19;
      v18[1] = v20;
      v21 = *(v15 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_39;
      }

      *(v15 + 16) = v23;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v48 = v2;
    v24 = sub_220F19704(v45, v46);
    if (__OFADD__(*(v2 + 16), (v25 & 1) == 0))
    {
      goto LABEL_38;
    }

    v26 = v24;
    v27 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9ED58, &qword_220FD2EE0);
    v2 = v48;
    if ((sub_220FC3710() & 1) == 0)
    {
      v28 = v46;
      goto LABEL_23;
    }

    v28 = v46;
    v29 = sub_220F19704(v45, v46);
    if ((v27 & 1) != (v30 & 1))
    {
      break;
    }

    v26 = v29;
LABEL_23:
    if (v27)
    {
      *(*(v48 + 56) + 8 * v26) = v15;
    }

    else
    {
      OUTLINED_FUNCTION_18_9(v48 + 8 * (v26 >> 6));
      *(*(v48 + 48) + 16 * v26) = v31;
      *(*(v2 + 56) + 8 * v26) = v15;
      v32 = *(v2 + 16);
      v22 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v22)
      {
        goto LABEL_40;
      }

      *(v2 + 16) = v33;
      sub_220EE8D08(v45, v28);
    }

    sub_220F112D8(v0 + 96);
    v3 = v42;
    v1 = v43;
LABEL_28:
    ++v4;
    v5 += 80;
    if (v3 == v4)
    {
      v47 = v2;
      goto LABEL_30;
    }
  }

  sub_220FC3990();
}

uint64_t sub_220F0E680()
{
  OUTLINED_FUNCTION_32();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t sub_220F0E708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_220F0E730, 0, 0);
}

uint64_t sub_220F0E730()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v9 = *(v0 + 32);
  *(v3 + 16) = v2;
  *(v3 + 24) = v9;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v9;
  swift_task_alloc();
  OUTLINED_FUNCTION_18();
  *(v0 + 72) = v5;
  *v5 = v6;
  v5[1] = sub_220F0E850;
  v7 = *(v0 + 16);

  return MEMORY[0x282200830](v7);
}

void sub_220F0E850()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  OUTLINED_FUNCTION_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = *(v5 + 8);

    v7();
  }
}

uint64_t sub_220F0E97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a1;
  v5[13] = a3;
  v6 = swift_task_alloc();
  v5[16] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0, &qword_220FCA4D0);
  *v6 = v5;
  v6[1] = sub_220F0EA4C;

  return MEMORY[0x282200430](v5 + 2);
}

uint64_t sub_220F0EA4C()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220F0EB48()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1(*(v0 + 104), *(*(v0 + 104) + 24));
  sub_220E43828(1.0);
  *(v0 + 64) = *(v2 + 32);
  *v9 = *(v0 + 41);
  v4 = *(v0 + 16);
  v5 = *(v2 + 32);
  v6 = *(v0 + 32);
  *(v3 + 32) = *&v9[7];
  *(v3 + 48) = v5;
  *v3 = v4;
  *(v3 + 16) = v6;
  *(v3 + 64) = v1;
  sub_220F11418(v0 + 64, v0 + 80);
  *(*(v0 + 96) + 72) = *(v0 + 136) != 0;
  OUTLINED_FUNCTION_8_8();

  return v7();
}

uint64_t sub_220F0EC14()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1(*(v0 + 104), *(*(v0 + 104) + 24));
  sub_220E43828(1.0);
  *v2 = v1;
  *(*(v0 + 96) + 72) = *(v0 + 136) != 0;
  OUTLINED_FUNCTION_8_8();

  return v3();
}

uint64_t sub_220F0ECA0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0, &qword_220FCA4D0);
  sub_220FC2B00();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  return sub_220E43C80();
}

unint64_t sub_220F0ED08(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (v7 < result)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_220F0ED4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_220FC1130();
  swift_beginAccess();
  sub_220F62D98(a1, a2, v4[41], &v10);
  if (v11)
  {
    sub_220E1E72C(&v10, a4);
  }

  else
  {
    sub_220EDDB38(&v10, &unk_27CF9ED60, &unk_220FD2F10);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1(v4 + 35, v4[38]);
    sub_220F52A54(a1, a2, a3, a4);
    sub_220E1E30C(a4, &v10);
    swift_beginAccess();
    sub_220EE8D08(a1, a2);
    sub_220EE67C8(&v10, a1, a2);
  }

  swift_endAccess();
  return sub_220FC1140();
}

uint64_t sub_220F0EE7C(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 160) = v16;
  *(v9 + 168) = v17;
  *(v9 + 144) = v14;
  *(v9 + 152) = v15;
  *(v9 + 81) = v13;
  *(v9 + 128) = a9;
  *(v9 + 136) = v12;
  *(v9 + 84) = a2;
  *(v9 + 112) = a7;
  *(v9 + 120) = a8;
  *(v9 + 96) = a5;
  *(v9 + 104) = a6;
  *(v9 + 88) = a1;
  *(v9 + 176) = type metadata accessor for OverlayTileData(0);
  *(v9 + 184) = swift_task_alloc();
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220F0EF5C, 0, 0);
}

uint64_t sub_220F0EF5C()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 81);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
  *(v0 + 64) = v3;
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_18();
  *(v0 + 208) = v4;
  *v4 = v5;
  v4[1] = sub_220F0F02C;

  return sub_220E5D978();
}

uint64_t sub_220F0F02C()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220F0F128(__n128 a1)
{
  v2 = sub_220FC2B40();
  v3 = *(v1 + 200);
  if (v2)
  {
    sub_220FC2A60();
    OUTLINED_FUNCTION_0_54();
    v6 = sub_220F115BC(v4, v5, MEMORY[0x277D85680]);
    OUTLINED_FUNCTION_24_8(v6);
    sub_220FC2580();
    swift_willThrow();
    goto LABEL_7;
  }

  if (sub_220EDAEA0(*v3, *(v3 + 8)))
  {
    v7 = *(v1 + 88);
    *(v7 + 32) = 0;
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 40) = 4;
LABEL_5:
    v8 = sub_220FC2B40();
    v3 = *(v1 + 200);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_25_10();

      OUTLINED_FUNCTION_8_8();
      goto LABEL_20;
    }

    v9 = *(v1 + 88);
    sub_220FC2A60();
    OUTLINED_FUNCTION_0_54();
    v12 = sub_220F115BC(v10, v11, MEMORY[0x277D85680]);
    OUTLINED_FUNCTION_24_8(v12);
    sub_220FC2580();
    swift_willThrow();
    sub_220E3FF0C(v9);
LABEL_7:
    sub_220F11474(v3);

    OUTLINED_FUNCTION_32_0();
LABEL_20:

    return v13();
  }

  if (*(v1 + 152) == 4 && MEMORY[0x223D99670](**(v1 + 200), *(v3 + 8)) == 1 && (sub_220EF55D0(**(v1 + 200), *(v3 + 8)) & 0x1FF) == 0xFF)
  {
    v14 = *(v1 + 88);
    *v14 = 1065353216;
    *(v14 + 40) = 0;
    goto LABEL_5;
  }

  switch(*(*(v1 + 200) + *(*(v1 + 176) + 24)))
  {
    case 1:
    case 2:
      if (qword_27CF9BFC0 != -1)
      {
        OUTLINED_FUNCTION_2_34(&qword_27CF9BFC0);
      }

      v36 = sub_220FC17A0();
      __swift_project_value_buffer(v36, qword_27CF9CB20);
      v37 = sub_220FC1780();
      v38 = sub_220FC2E10();
      if (os_log_type_enabled(v37, v38))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_17_9();
        _os_log_impl(v39, v40, v41, v42, v43, 2u);
        OUTLINED_FUNCTION_15();
      }

      v44 = *(v1 + 88);

      *(v44 + 32) = 0;
      *v44 = 0u;
      *(v44 + 16) = 0u;
      *(v44 + 40) = 4;
      goto LABEL_5;
    case 3:
    case 4:
    case 5:
      v15 = *(v1 + 216);
      v16 = OUTLINED_FUNCTION_9();
      sub_220E567FC(v16, v17);
      v18 = OUTLINED_FUNCTION_9();
      sub_220EE9F54(v18, v19, v20);
      *(v1 + 224) = v15;
      if (!v15)
      {
        v45 = *(v1 + 88);
        *(v45 + 24) = &type metadata for PNGTexture;
        *(v45 + 32) = &off_283482AF0;
        v46 = swift_allocObject();
        *v45 = v46;
        v47 = *(v1 + 48);
        v46[2] = *(v1 + 32);
        v46[3] = v47;
        v46[1] = *(v1 + 16);
        *(v45 + 40) = 3;
        goto LABEL_5;
      }

      v21 = v15;
      if (qword_27CF9BFC0 != -1)
      {
        OUTLINED_FUNCTION_2_34(&qword_27CF9BFC0);
      }

      v22 = *(v1 + 184);
      v23 = sub_220FC17A0();
      __swift_project_value_buffer(v23, qword_27CF9CB20);
      v24 = OUTLINED_FUNCTION_21_6();
      sub_220F114D0(v24, v22);
      v25 = v15;
      v26 = sub_220FC1780();
      LOBYTE(v22) = sub_220FC2E10();

      if (os_log_type_enabled(v26, v22))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412546;
        v29 = v21;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        result = OUTLINED_FUNCTION_14_10(v30);
        v34 = 0;
        switch(v35)
        {
          case 1:
            v81 = __OFSUB__(HIDWORD(v32), v32);
            v82 = HIDWORD(v32) - v32;
            if (!v81)
            {
              v34 = v82;
              goto LABEL_42;
            }

            __break(1u);
            goto LABEL_53;
          case 2:
            v85 = v32 + 16;
            v83 = *(v32 + 16);
            v84 = *(v85 + 8);
            v34 = v84 - v83;
            if (!__OFSUB__(v84, v83))
            {
              goto LABEL_42;
            }

LABEL_53:
            __break(1u);
            goto LABEL_54;
          case 3:
            goto LABEL_42;
          default:
            v34 = v33;
LABEL_42:
            sub_220F11474(*(v1 + 184));
            *(v27 + 14) = v34;
            OUTLINED_FUNCTION_17_9();
            _os_log_impl(v86, v87, v88, v89, v90, 0x16u);
            sub_220EDDB38(v28, &qword_27CF9EF80, &qword_220FC9AE0);
            OUTLINED_FUNCTION_15();
            OUTLINED_FUNCTION_15();
            goto LABEL_43;
        }
      }

      sub_220F11474(*(v1 + 184));
LABEL_43:

      swift_task_alloc();
      OUTLINED_FUNCTION_18();
      *(v1 + 256) = v48;
      *v48 = v91;
      v50 = sub_220F0FD2C;
      goto LABEL_49;
    case 6:
      v51 = *(v1 + 216);
      v52 = OUTLINED_FUNCTION_9();
      sub_220E567FC(v52, v53);
      v54 = OUTLINED_FUNCTION_9();
      v57 = sub_220EB20EC(v54, v55, v56);
      *(v1 + 232) = v51;
      if (!v51)
      {
        v75 = v57;
        v76 = v58;
        v77 = v59;
        v78 = v60;
        v79 = *(v1 + 88);
        *(v79 + 24) = &type metadata for KTXTexture;
        *(v79 + 32) = &off_283481348;
        v80 = swift_allocObject();
        *v79 = v80;
        v80[2] = v75;
        v80[3] = v76;
        v80[4] = v77;
        v80[5] = v78;
        *(v79 + 40) = 3;
        goto LABEL_5;
      }

      v61 = v51;
      if (qword_27CF9BFC0 != -1)
      {
        OUTLINED_FUNCTION_2_34(&qword_27CF9BFC0);
      }

      v62 = *(v1 + 192);
      v63 = sub_220FC17A0();
      __swift_project_value_buffer(v63, qword_27CF9CB20);
      v64 = OUTLINED_FUNCTION_21_6();
      sub_220F114D0(v64, v62);
      v65 = v51;
      v66 = sub_220FC1780();
      LOBYTE(v62) = sub_220FC2E10();

      if (os_log_type_enabled(v66, v62))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v67 = 138412546;
        v69 = v61;
        v70 = _swift_stdlib_bridgeErrorToNSError();
        result = OUTLINED_FUNCTION_14_10(v70);
        v73 = 0;
        switch(v74)
        {
          case 1:
            v81 = __OFSUB__(HIDWORD(v71), v71);
            v92 = HIDWORD(v71) - v71;
            if (!v81)
            {
              v73 = v92;
              goto LABEL_47;
            }

LABEL_54:
            __break(1u);
            goto LABEL_55;
          case 2:
            v95 = v71 + 16;
            v93 = *(v71 + 16);
            v94 = *(v95 + 8);
            v73 = v94 - v93;
            if (!__OFSUB__(v94, v93))
            {
              goto LABEL_47;
            }

LABEL_55:
            __break(1u);
            return result;
          case 3:
            goto LABEL_47;
          default:
            v73 = v72;
LABEL_47:
            sub_220F11474(*(v1 + 192));
            *(v67 + 14) = v73;
            OUTLINED_FUNCTION_17_9();
            _os_log_impl(v96, v97, v98, v99, v100, 0x16u);
            sub_220EDDB38(v68, &qword_27CF9EF80, &qword_220FC9AE0);
            OUTLINED_FUNCTION_15();
            OUTLINED_FUNCTION_15();
            goto LABEL_48;
        }
      }

      sub_220F11474(*(v1 + 192));
LABEL_48:

      swift_task_alloc();
      OUTLINED_FUNCTION_18();
      *(v1 + 248) = v48;
      *v48 = v101;
      v50 = sub_220F0FB30;
LABEL_49:
      v48[1] = v50;
      v102 = *(v1 + 200);
      v103 = *(v1 + 168);
      v104 = *(v1 + 88);

      result = sub_220F0FF28(v104, v102, v103);
      break;
    default:
      swift_task_alloc();
      OUTLINED_FUNCTION_18();
      *(v1 + 240) = v48;
      *v48 = v49;
      v50 = sub_220F0F93C;
      goto LABEL_49;
  }

  return result;
}

uint64_t sub_220F0F8C4()
{
  OUTLINED_FUNCTION_32();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t sub_220F0F93C()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_220F0FA24()
{
  OUTLINED_FUNCTION_25();
  v1 = sub_220FC2B40();
  v2 = *(v0 + 200);
  if (v1)
  {
    v3 = *(v0 + 88);
    sub_220FC2A60();
    OUTLINED_FUNCTION_0_54();
    v6 = sub_220F115BC(v4, v5, MEMORY[0x277D85680]);
    OUTLINED_FUNCTION_13_12(v6);
    sub_220FC2580();
    swift_willThrow();
    sub_220E3FF0C(v3);
    sub_220F11474(v2);

    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    OUTLINED_FUNCTION_25_10();

    OUTLINED_FUNCTION_8_8();
  }

  return v7();
}

uint64_t sub_220F0FB30()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_220F0FC18()
{
  OUTLINED_FUNCTION_25();

  v1 = sub_220FC2B40();
  v2 = *(v0 + 200);
  if (v1)
  {
    v3 = *(v0 + 88);
    sub_220FC2A60();
    OUTLINED_FUNCTION_0_54();
    v6 = sub_220F115BC(v4, v5, MEMORY[0x277D85680]);
    OUTLINED_FUNCTION_13_12(v6);
    sub_220FC2580();
    swift_willThrow();
    sub_220E3FF0C(v3);
    sub_220F11474(v2);

    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    OUTLINED_FUNCTION_25_10();

    OUTLINED_FUNCTION_8_8();
  }

  return v7();
}

uint64_t sub_220F0FD2C()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_220F0FE14()
{
  OUTLINED_FUNCTION_25();

  v1 = sub_220FC2B40();
  v2 = *(v0 + 200);
  if (v1)
  {
    v3 = *(v0 + 88);
    sub_220FC2A60();
    OUTLINED_FUNCTION_0_54();
    v6 = sub_220F115BC(v4, v5, MEMORY[0x277D85680]);
    OUTLINED_FUNCTION_13_12(v6);
    sub_220FC2580();
    swift_willThrow();
    sub_220E3FF0C(v3);
    sub_220F11474(v2);

    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    OUTLINED_FUNCTION_25_10();

    OUTLINED_FUNCTION_8_8();
  }

  return v7();
}

uint64_t sub_220F0FF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70, &qword_220FCBAB0);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220F0FFCC, 0, 0);
}

uint64_t sub_220F0FFCC()
{
  OUTLINED_FUNCTION_32();
  if (qword_27CF9C000 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = __swift_project_value_buffer(v0[6], qword_27CF9CBE0);
  sub_220F11534(v2, v1, &qword_27CF9CF70, &qword_220FCBAB0);
  v3 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v1, 1, v3) == 1)
  {
    sub_220EDDB38(v0[7], &qword_27CF9CF70, &qword_220FCBAB0);
  }

  else
  {
    v4 = sub_220FC1780();
    v5 = sub_220FC2E10();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_220E15000, v4, v5, "Slow texture load path invoked -- this should be optimized!", v6, 2u);
      OUTLINED_FUNCTION_15();
    }

    v7 = v0[7];

    OUTLINED_FUNCTION_12();
    (*(v8 + 8))(v7, v3);
  }

  v9 = v0[3];
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_220F101A4;
  v13 = v0[4];

  return sub_220F103A0(v11, v10, v13);
}

uint64_t sub_220F101A4()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_27_0();
  v5 = v4;
  OUTLINED_FUNCTION_17();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_220F102B4()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 16);
  *v1 = *(v0 + 80);
  *(v1 + 40) = 1;

  OUTLINED_FUNCTION_32_0();

  return v2();
}

uint64_t sub_220F10320()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 16);

  *(v1 + 24) = 0u;
  *(v1 + 8) = 0u;
  v2 = *(v0 + 16);
  *v2 = 0;
  *(v2 + 40) = 4;

  OUTLINED_FUNCTION_32_0();

  return v3();
}

uint64_t sub_220F103A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x2822009F8](sub_220F103C4, 0, 0);
}

uint64_t sub_220F103C4()
{
  OUTLINED_FUNCTION_25();
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_220F10480;
  v5 = swift_continuation_init();
  sub_220F105B8(v5, v1, v2, v4, v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_220F10480()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_17();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  if (*(v4 + 48))
  {
    swift_willThrow();
    v5 = *(v3 + 8);

    return v5();
  }

  else
  {
    v7 = *(v1 + 80);
    v8 = *(v3 + 8);

    return v8(v7);
  }
}

double sub_220F105B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_220FC2340();
  v21 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_220FC2390();
  v13 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220E1E30C(a3, v24);
  v17 = swift_allocObject();
  sub_220E1E72C(v24, (v17 + 2));
  v17[7] = a4;
  v17[8] = a5;
  v17[9] = a1;
  aBlock[4] = sub_220F11594;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220F6DA78;
  aBlock[3] = &block_descriptor_15;
  v18 = _Block_copy(aBlock);
  sub_220E567FC(a4, a5);
  sub_220FC2350();
  v22 = MEMORY[0x277D84F90];
  sub_220F115BC(&qword_2812C5E08, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0, &unk_220FC9850);
  sub_220E453D4(&qword_2812C5D88, &unk_27CF9DBC0, &unk_220FC9850, MEMORY[0x277D83970]);
  sub_220FC3430();
  MEMORY[0x223D9C530](0, v16, v12, v18);
  _Block_release(v18);
  (*(v21 + 8))(v12, v9);
  (*(v13 + 8))(v16, v20);

  return result;
}

uint64_t sub_220F108BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  **(*(a4 + 64) + 40) = sub_220F82CBC();

  return MEMORY[0x282200950](a4);
}

BOOL sub_220F109A0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v3 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a2 + 40);
  switch(v7)
  {
    case 2:
      return v8 == 2;
    case 3:
      return v8 == 3;
    case 4:
      return v8 == 4;
    case 5:
      return v8 == 5;
    case 6:
      return v8 == 6;
    default:
      if ((v8 - 2) < 5)
      {
        return 0;
      }

      if (v7 != 1)
      {
        if (v8 == 1)
        {
          sub_220EA10E4(*(a2 + 32), 1);
        }

        else
        {
          sub_220EA10E4(*(a2 + 32), *(a2 + 40));
          v9 = sub_220FC0C10();
          sub_220F11240(a2);
          if (v9)
          {
            return 1;
          }
        }

        return 0;
      }

      if (v8 != 1)
      {
        return 0;
      }

      v5 = 1;
      sub_220EA10E4(*(a2 + 32), 1);
      break;
  }

  return v5;
}

uint64_t sub_220F10B00(uint64_t a1)
{
  sub_220EEBB30(*(v1 + 24), a1, *v1, *(v1 + 8), *(v1 + 16));
  v2 = *(v1 + 40);
  switch(v2)
  {
    case 2:
      v3 = 1;
      goto LABEL_7;
    case 3:
      v3 = 2;
      goto LABEL_7;
    case 4:
      v3 = 3;
      goto LABEL_7;
    case 5:
      v3 = 4;
      goto LABEL_7;
    case 6:
      v3 = 5;
LABEL_7:
      result = MEMORY[0x223D9CFA0](v3);
      break;
    default:
      MEMORY[0x223D9CFA0](0);
      if (v2 == 1)
      {
        result = sub_220FC3A60();
      }

      else
      {
        sub_220FC3A60();

        result = sub_220FC0C20();
      }

      break;
  }

  return result;
}

uint64_t sub_220F10BF4()
{
  sub_220FC3A40();
  sub_220F10B00(v1);
  return sub_220FC3A90();
}

BOOL sub_220F10C34(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return sub_220F109A0(a1, v4);
}

uint64_t sub_220F10C74(uint64_t a1)
{
  sub_220FC3A40();
  sub_220F10B00(v2);
  return sub_220FC3A90();
}

uint64_t sub_220F10CB0()
{
  sub_220FC35C0();

  v1 = sub_220EA0CA4(*(v0 + 32), *(v0 + 40));
  MEMORY[0x223D9BD60](v1);

  MEMORY[0x223D9BD60](2113568, 0xE300000000000000);
  v2 = sub_220EEBA60();
  MEMORY[0x223D9BD60](v2);

  MEMORY[0x223D9BD60](41, 0xE100000000000000);
  return 0x74726F7077656956;
}

uint64_t sub_220F10D8C()
{
  OUTLINED_FUNCTION_32();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  v1[1] = sub_220E5B490;
  v3 = OUTLINED_FUNCTION_16_8();

  return sub_220F0D4F0(v3);
}

uint64_t sub_220F10E24(uint64_t a1)
{
  v13 = *(v1 + 24);
  v14 = *(v1 + 16);
  v11 = *(v1 + 40);
  v12 = *(v1 + 32);
  v3 = *(v1 + 56);
  v10 = *(v1 + 48);
  v4 = *(v1 + 64);
  v5 = *(v1 + 80);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_43(v6);
  *v7 = v8;
  v7[1] = sub_220E5B490;

  return sub_220F0D540(a1, v5, v14, v13, v12, v11, v10, v3, v4);
}

uint64_t sub_220F10F48(uint64_t a1, uint64_t a2)
{
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43(v2);
  *v3 = v4;
  v3[1] = sub_220E5B490;
  OUTLINED_FUNCTION_26_9();

  return sub_220F0D900(v5, v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_220F11080(uint64_t a1)
{
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43(v1);
  *v2 = v3;
  v2[1] = sub_220E5B490;
  OUTLINED_FUNCTION_26_9();

  return sub_220F0EE7C(v4, v12, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_220F11188()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[16];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_43(v4);
  *v5 = v6;
  v5[1] = sub_220E5B490;
  v7 = OUTLINED_FUNCTION_16_8();

  return sub_220F0E708(v7, v8, v1, v2, v9, v10, v3);
}

uint64_t sub_220F11364()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_43(v4);
  *v5 = v6;
  v5[1] = sub_220E5B0F0;
  v7 = OUTLINED_FUNCTION_16_8();

  return sub_220F0E97C(v7, v8, v1, v3, v2);
}

uint64_t sub_220F11474(uint64_t a1)
{
  v2 = type metadata accessor for OverlayTileData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220F114D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlayTileData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F11534(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_9();
  v6(v5);
  return a2;
}

double block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_220F115BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220F11604(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFF9 && *(a1 + 72))
    {
      v2 = *a1 + 2147483640;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 <= 5)
      {
        v5 = 5;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 6;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220F1166C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF8)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_220F116FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220F11738(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_220F11788(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t sub_220F117C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFF9 && *(a1 + 48))
    {
      v2 = *a1 + 2147483640;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 <= 5)
      {
        v5 = 5;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 6;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220F1182C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF8)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 6;
    }
  }

  return result;
}

unint64_t sub_220F118A8()
{
  result = qword_27CF9ED70;
  if (!qword_27CF9ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9ED70);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_24_8(uint64_t a1)
{

  return swift_allocError();
}

uint64_t type metadata accessor for WeatherMapPreviewLocationState(uint64_t a1)
{
  result = qword_27CF9ED80;
  if (!qword_27CF9ED80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220F11A48(uint64_t a1)
{
  sub_220E81B68();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_220F11AA0()
{
  OUTLINED_FUNCTION_0_55();
  sub_220F134CC(v0 + v1, v2);

  sub_220E5B1D0(v0 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_rendererContext);
  sub_220F134CC(v0 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_framesMetadata, type metadata accessor for WeatherMapOverlayFramesMetadata);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_220E22990(v0 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_pixelReaderDelegate);
  sub_220E83E94(*(v0 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer____lazy_storage___dynamicTileOverlayRenderer));
  return v0;
}

char *sub_220F11B64()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer____lazy_storage___dynamicTileOverlayRenderer;
  v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer____lazy_storage___dynamicTileOverlayRenderer);
  v4 = v3;
  if (v3 == 1)
  {
    v4 = *(v1 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay);
    if (v4)
    {
      type metadata accessor for MapKitDynamicTileOverlay(0);
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = v5;
        if (*(v1 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_requiresPixelData))
        {
          v7 = 1;
        }

        else
        {
          v7 = 3;
        }

        objc_allocWithZone(type metadata accessor for MapKitDynamicTileOverlayRenderer(0));
        swift_unknownObjectRetain();

        v4 = sub_220EB373C(v6, v7, v1, &off_283483E00);
        v8 = *(v1 + v2);
        goto LABEL_10;
      }

      v4 = 0;
    }

    v8 = 1;
LABEL_10:
    *(v1 + v2) = v4;
    v9 = v4;
    sub_220E83E94(v8);
  }

  sub_220E83EA4(v3);
  return v4;
}

_OWORD *sub_220F11C64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EDC0, &qword_220FD3528);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay);
  v1[1] = xmmword_220FC8E10;
  v1[2] = v2;
  v1[3] = *(v0 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_effectTileOverlay);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_220F11CE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapOverlay(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v32 - v10;
  v12 = *(v2 + 16);
  swift_getObjectType();
  if (v12 != (*(a2 + 48))())
  {
    goto LABEL_4;
  }

  v13 = *(v2 + 24);
  v14 = OUTLINED_FUNCTION_35_0();
  if (v13 != v15(v14))
  {
    goto LABEL_4;
  }

  v16 = *(v2 + 32);
  v17 = OUTLINED_FUNCTION_35_0();
  if (v16 != (v18(v17) & 1))
  {
    goto LABEL_4;
  }

  v32 = v2 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_overlay;
  v21 = *(v2 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_overlay + 200);
  v22 = OUTLINED_FUNCTION_35_0();
  v33 = v23;
  v23(v22);
  v24 = v11[200];
  OUTLINED_FUNCTION_0_55();
  sub_220F134CC(v11, v25);
  switch(v21)
  {
    case 5:
      if (v24 != 5)
      {
        goto LABEL_4;
      }

      break;
    case 4:
      if (v24 != 4)
      {
        goto LABEL_4;
      }

      break;
    case 3:
      if (v24 != 3)
      {
        goto LABEL_4;
      }

      break;
    default:
      if ((v24 - 6) > 0xFFFFFFFC || v21 != v24)
      {
        goto LABEL_4;
      }

      break;
  }

  memcpy(v35, (v32 + 16), sizeof(v35));
  v27 = OUTLINED_FUNCTION_35_0();
  v33(v27);
  memcpy(v36, v7 + 16, 0xB8uLL);
  sub_220E56868(v36, &v34);
  OUTLINED_FUNCTION_0_55();
  sub_220F134CC(v7, v28);
  v29 = sub_220F17000(v35);
  sub_220E56918(v36);
  if (v29)
  {
    v30 = OUTLINED_FUNCTION_35_0();
    v31(v30);
    v19 = sub_220E85060();
    return v19 & 1;
  }

LABEL_4:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_220F11F54()
{
  memcpy(__dst, (v0 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_overlay + 16), sizeof(__dst));
  memcpy(v9, (v0 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_overlay + 16), sizeof(v9));
  switch(sub_220E435CC(v9))
  {
    case 1u:
      v2 = sub_220E22B0C(v9);
      memcpy(v7, __dst, sizeof(v7));
      v3 = sub_220E22B0C(v7);
      v4 = &qword_27CF9E3A0;
      v5 = &unk_220FD0070;
      goto LABEL_5;
    case 2u:
      result = *(sub_220E22B0C(v9) + 16);
      break;
    case 4u:
      v2 = sub_220E22B0C(v9);
      memcpy(v7, __dst, sizeof(v7));
      v3 = sub_220E22B0C(v7);
      v4 = &qword_27CF9E398;
      v5 = &qword_220FD6EA0;
LABEL_5:
      sub_220ED6038(v3, &v6, v4, v5);

      sub_220EC03FC(v2);
      result = *(v2 + 16);
      break;
    default:
      sub_220E22B0C(v9);
      result = 0;
      break;
  }

  return result;
}

void sub_220F1208C(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if (*(v10 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_pixelReader))
  {
    *&v15 = a10 / a9 * a10;

    sub_220EB63A8(a1, a2, a3, a4, a5, a6, a7, a8, v19, v20, v21, v22, v23, v24, v25, v26, v15);
  }
}

void sub_220F12174(double a1, double a2)
{
  if (*(v2 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_pixelReader))
  {

    sub_220EB658C(a1, a2);
  }
}

double sub_220F121E8()
{
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_pixelReader))
  {

    sub_220EB6800();
  }

  return result;
}

void sub_220F12240()
{
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay))
  {
    type metadata accessor for MapKitDynamicTileOverlay(0);
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      *(v1 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_shouldRunImplicationTimer) = 1;
    }
  }
}

double sub_220F12298(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_pixelReader))
  {

    sub_220EB6214(a1, a2);
  }

  return result;
}

double sub_220F1230C()
{
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay))
  {
    type metadata accessor for MapKitDynamicTileOverlay(0);
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      v3 = v1;
      v4 = type metadata accessor for PixelReader();
      v5 = *(v3 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_overlayRenderer + 8);
      ObjectType = swift_getObjectType();
      v7 = v0 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_pixelReaderDelegate;
      Strong = swift_unknownObjectWeakLoadStrong();
      v9 = *(v7 + 8);
      v10 = *(v5 + 8);
      v11 = swift_unknownObjectRetain();
      *(v0 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_pixelReader) = sub_220EB6ED8(v11, Strong, v9, v4, ObjectType, v10);
    }
  }

  return result;
}

uint64_t sub_220F12434(__n128 a1)
{
  v9 = v1;
  v2 = *(v1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (*(v2 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay))
  {
    swift_getObjectType();
    v3 = swift_unknownObjectRetain();
    sub_220F133B8(v3, &v8);
    v2 = *(v1 + 16);
  }

  if (*(v2 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_effectTileOverlay))
  {
    swift_getObjectType();
    v4 = swift_unknownObjectRetain();
    sub_220F133B8(v4, &v8);
    v2 = *(v1 + 16);
  }

  if (*(v2 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_requiresPixelData) == 1)
  {
    a1.n128_f64[0] = sub_220F1230C();
  }

  v5 = v8;
  v6 = *(v1 + 8);

  return v6(v5, a1);
}

double sub_220F12524(void (*a1)(uint64_t))
{
  if (*(v1 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_effectTileOverlay))
  {
    v3 = swift_unknownObjectRetain();
    a1(v3);
    swift_unknownObjectRelease();
  }

  if (*(v1 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay))
  {
    v5 = swift_unknownObjectRetain();
    a1(v5);

    swift_unknownObjectRelease();
  }

  return result;
}

char *sub_220F125C0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay);
  if (v2)
  {
    v3 = v2 == a1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return sub_220F11B64();
  }

  else
  {
    return 0;
  }
}

void sub_220F125E4(char a1)
{
  v2 = sub_220F11B64();
  if (v2)
  {
    v2[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_isPlaying] = a1 & 1;
    v3 = v2;
    sub_220EB34BC();
  }
}

void sub_220F12658()
{
  v0 = sub_220F11B64();
  if (v0)
  {
    v0[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_isPlaying] = 1;
    v1 = v0;
    sub_220EB34BC();
  }
}

void sub_220F126C8(uint64_t a1, double a2)
{
  v4 = v2 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_animationPosition;
  if (*(v2 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_animationPosition) != a1 || *(v2 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_animationPosition + 8) != a2)
  {
    *v4 = a1;
    *(v4 + 8) = a2;
    v7 = sub_220F11B64();
    if (v7)
    {
      v8 = &v7[OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_animationPosition];
      *v8 = a1;
      *(v8 + 1) = a2;
      v9 = v7;
      sub_220EB4A40();
    }
  }
}

uint64_t sub_220F12778()
{
  sub_220F11AA0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for WeatherMapOverlayContainer(uint64_t a1)
{
  result = qword_27CF9ED98;
  if (!qword_27CF9ED98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220F12824(uint64_t a1)
{
  result = type metadata accessor for WeatherMapOverlay(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WeatherMapOverlayFramesMetadata(319);
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_220F129AC()
{
  v1 = sub_220F12FFC();
  v8 = MEMORY[0x277D84F90];
  v2 = sub_220F43CDC();
  v3 = 0;
  while (1)
  {
    if (v2 == v3)
    {

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x223D9CB30](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v4 = *(v1 + 8 * v3 + 32);
      swift_unknownObjectRetain();
    }

    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v6 = (*(*v0 + 336))(v4);
    v7 = swift_unknownObjectRelease();
    ++v3;
    if (v6)
    {
      MEMORY[0x223D9BEA0](v7);
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_220FC29C0();
      }

      sub_220FC29F0();
      v3 = v5;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_220F12B1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_renderSettings);

  return v1;
}

uint64_t sub_220F12C00()
{
  v4 = (*(*v0 + 352) + **(*v0 + 352));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_220F12D18;

  return v4();
}

uint64_t sub_220F12D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *v8;

  v10 = *(v12 + 8);

  return v10(a1);
}

uint64_t sub_220F12FFC()
{
  v4 = MEMORY[0x277D84F90];
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay))
  {
    swift_getObjectType();
    v1 = swift_unknownObjectRetain();
    sub_220F133B8(v1, &v4);
  }

  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_effectTileOverlay))
  {
    swift_getObjectType();
    v2 = swift_unknownObjectRetain();
    sub_220F133B8(v2, &v4);
  }

  return v4;
}

uint64_t sub_220F13098@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90, &qword_220FC8F20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8F90;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x8000000220FDEFF0;
  v4 = *(v1 + 16);
  type metadata accessor for UIUserInterfaceStyle(0);
  *(inited + 48) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000019;
  *(inited + 88) = 0x8000000220FE27F0;
  *(inited + 96) = *(v1 + 24);
  *(inited + 120) = v5;
  strcpy((inited + 128), "framesMetadata");
  *(inited + 143) = -18;
  *(inited + 168) = type metadata accessor for WeatherMapOverlayFramesMetadata(0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 144));
  sub_220F13408(v1 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_framesMetadata, boxed_opaque_existential_1, type metadata accessor for WeatherMapOverlayFramesMetadata);
  strcpy((inited + 176), "labelPositions");
  *(inited + 191) = -18;
  *(inited + 192) = *(v1 + 32);
  *(inited + 216) = &unk_28347FE58;
  *(inited + 224) = 0x79616C7265766FLL;
  *(inited + 232) = 0xE700000000000000;
  *(inited + 240) = *(v1 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_overlay + 200);
  *(inited + 264) = &type metadata for WeatherMapOverlayKind;
  *(inited + 272) = 0xD000000000000015;
  *(inited + 280) = 0x8000000220FE2900;
  v7 = *(v1 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay) != 0;
  *(inited + 312) = MEMORY[0x277D839B0];
  *(inited + 288) = v7;
  sub_220FC2600();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EDB0, &qword_220FD3520);
  a1[4] = sub_220F13468();
  __swift_allocate_boxed_opaque_existential_1(a1);
  type metadata accessor for WeatherMapOverlayContainer(0);
  return sub_220FC12A0();
}

uint64_t sub_220F13308(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_220FC1290();
}

unint64_t sub_220F13360()
{
  result = qword_27CF9EDA8;
  if (!qword_27CF9EDA8)
  {
    type metadata accessor for WeatherMapOverlayContainer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EDA8);
  }

  return result;
}

uint64_t sub_220F133B8(uint64_t a1, void *a2)
{
  MEMORY[0x223D9BEA0]();
  sub_220F09670();
  return sub_220FC29F0();
}

uint64_t sub_220F13408(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_220F13468()
{
  result = qword_27CF9EDB8;
  if (!qword_27CF9EDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9EDB0, &qword_220FD3520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EDB8);
  }

  return result;
}

uint64_t sub_220F134CC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220F1352C(uint64_t a1, uint64_t a2)
{
  v3 = sub_220FBFDC0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = *(a1 + 32);
  sub_220FBFD90();

  v9(v8);

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_220F13618()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 physicalMemory];

  if (v1 >= 0xB2D05E00)
  {
    return 10;
  }

  else
  {
    return 4;
  }
}

BOOL sub_220F13684(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (sub_220FC3940() & 1) == 0)
  {
    return 0;
  }

  if (v2 == 5)
  {
    if (v4 == 5)
    {
      return v3 == v5;
    }
  }

  else
  {
    if (v2 != 4)
    {
      if (v2 == 3)
      {
        if (v4 != 3)
        {
          return 0;
        }
      }

      else if ((v4 - 6) > 0xFFFFFFFC || v2 != v4)
      {
        return 0;
      }

      return v3 == v5;
    }

    if (v4 == 4)
    {
      return v3 == v5;
    }
  }

  return 0;
}

uint64_t sub_220F1373C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_220FC27D0();
  if ((v2 - 3) >= 3u)
  {
    MEMORY[0x223D9CFA0](1);
  }

  else
  {
    v2 = qword_220FD3720[(v2 - 3)];
  }

  MEMORY[0x223D9CFA0](v2);
  return MEMORY[0x223D9CFA0](v3);
}

uint64_t sub_220F137B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_220FC3A40();
  sub_220FC27D0();
  if ((v1 - 3) >= 3u)
  {
    MEMORY[0x223D9CFA0](1);
  }

  else
  {
    v1 = qword_220FD3720[(v1 - 3)];
  }

  MEMORY[0x223D9CFA0](v1);
  MEMORY[0x223D9CFA0](v2);
  return sub_220FC3A90();
}

uint64_t sub_220F13868(uint64_t a1)
{
  v2 = v1[1];
  v3 = *(v1 + 16);
  v4 = v1[3];
  v7 = *v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_220FC3A40();
  sub_220F1373C(v6);
  return sub_220FC3A90();
}

void *sub_220F138C4()
{
  v1 = sub_220FC1160();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  MEMORY[0x28223BE20](v2, v3);
  OUTLINED_FUNCTION_3();
  sub_220FC1150();
  sub_220FC1180();
  swift_allocObject();
  v0[2] = sub_220FC1170();
  sub_220F13618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EDC8, &qword_220FD3708);
  swift_allocObject();
  v0[3] = sub_220FC15A0();
  v0[4] = 0;
  type metadata accessor for SnapshotManager.Options(0);
  sub_220E98BCC();
  v0[5] = sub_220FC2600();
  sub_220F139FC();
  return v0;
}

double sub_220F139FC()
{
  if (!*(v0 + 32))
  {
    v1 = [objc_opt_self() defaultCenter];
    v2 = *MEMORY[0x277D76670];
    v3 = swift_allocObject();
    swift_weakInit();
    v7[4] = sub_220F14C90;
    v7[5] = v3;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_220F1352C;
    v7[3] = &block_descriptor_16;
    v4 = _Block_copy(v7);

    v5 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v4];
    _Block_release(v4);

    *(v0 + 32) = v5;
    swift_unknownObjectRelease();
  }

  return result;
}

void *sub_220F13B34()
{
  sub_220F13B70();

  swift_unknownObjectRelease();

  return v0;
}

double sub_220F13B70()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];

    swift_unknownObjectRelease();
    *(v0 + 32) = 0;

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220F13C14()
{
  sub_220F13B34();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_220F13C84(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 74))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220F13CE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 74) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 74) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_220F13D5C()
{
  result = qword_2812C9ED0;
  if (!qword_2812C9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9ED0);
  }

  return result;
}

void sub_220F13DB0()
{
  OUTLINED_FUNCTION_13_8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v42 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D080, &unk_220FCB0B0);
  OUTLINED_FUNCTION_8_0(v8);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v9, v10);
  v12 = v41 - v11;
  v13 = type metadata accessor for SnapshotManager.Options(0);
  v14 = (v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  OUTLINED_FUNCTION_3();
  v18 = (v17 - v16);
  v19 = type metadata accessor for SnapshotManager.Snapshot(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_3();
  v41[0] = v23 - v22;
  v41[1] = *(v0 + 16);
  sub_220FC1130();
  sub_220E3C780(v6, v18);

  v24 = v2;
  sub_220EA10E4(v4, v2);
  sub_220FC0FE0();
  v26 = v25;
  v28 = v27;
  LOBYTE(v6) = v18[v14[8]];
  v29 = *&v18[v14[9]];
  v30 = &v18[v14[11]];
  v31 = *v30;
  v32 = v30[1];
  v33 = *&v18[v14[12]];
  LOBYTE(v14) = v18[v14[14]];
  LOBYTE(v2) = *v18;
  OUTLINED_FUNCTION_1_50();
  sub_220F14D38(v18, v34);
  v43[0] = v4;
  v43[1] = v24;
  v43[2] = v26;
  v43[3] = v28;
  LOBYTE(v43[4]) = v6;
  v43[5] = v29;
  v43[6] = v31;
  v43[7] = v32;
  v43[8] = v33;
  LOBYTE(v43[9]) = v14;
  BYTE1(v43[9]) = v2;
  sub_220FC15B0();

  memcpy(v44, v43, 0x4AuLL);
  sub_220F14D08(v44);
  if (__swift_getEnumTagSinglePayload(v12, 1, v19) == 1)
  {
    sub_220E3B2DC(v12, &qword_27CF9D080, &unk_220FCB0B0);
LABEL_6:
    v40 = 1;
    v38 = v42;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_56();
  v35 = v41[0];
  sub_220F14D90(v12, v41[0], v36);
  sub_220EBE27C();
  if ((v37 & 1) == 0)
  {
    sub_220F14D38(v35, type metadata accessor for SnapshotManager.Snapshot);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_0_56();
  v38 = v42;
  sub_220F14D90(v35, v42, v39);
  v40 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v38, v40, 1, v19);
  sub_220FC1140();
  OUTLINED_FUNCTION_14();
}

void sub_220F14068()
{
  OUTLINED_FUNCTION_13_8();
  v36 = v1;
  v35 = v2;
  v4 = v3;
  v38 = v5;
  v6 = type metadata accessor for SnapshotManager.Options(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_3();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D040, &unk_220FD19F0);
  OUTLINED_FUNCTION_8_0(v12);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v34 - v15;
  v37 = *(v0 + 16);
  sub_220FC1130();
  v17 = sub_220FC1020();
  v19 = v18;
  v20 = *(v4 + v6[10]);
  v21 = *(v4 + v6[6]);
  sub_220E3C780(v4, v16);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v6);
  swift_beginAccess();
  sub_220EE6498(v16, v17, v19, v21, v20);
  swift_endAccess();
  sub_220E3C780(v4, v11);
  v22 = v35;
  v23 = v36;
  sub_220EA10E4(v35, v36);
  sub_220FC0FE0();
  v25 = v24;
  v27 = v26;
  LOBYTE(v17) = v11[v6[6]];
  v28 = *&v11[v6[7]];
  v29 = &v11[v6[9]];
  v30 = *v29;
  v31 = v29[1];
  v32 = *&v11[v6[10]];
  LOBYTE(v19) = v11[v6[12]];
  LOBYTE(v20) = *v11;
  OUTLINED_FUNCTION_1_50();
  sub_220F14D38(v11, v33);
  v40[0] = v22;
  v40[1] = v23;
  v40[2] = v25;
  v40[3] = v27;
  LOBYTE(v40[4]) = v17;
  v40[5] = v28;
  v40[6] = v30;
  v40[7] = v31;
  v40[8] = v32;
  LOBYTE(v40[9]) = v19;
  BYTE1(v40[9]) = v20;
  memcpy(v39, v40, sizeof(v39));

  sub_220FC1580();

  sub_220F14D08(v40);
  sub_220FC1140();
  OUTLINED_FUNCTION_14();
}

uint64_t sub_220F142A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38[0] = a4;
  v38[1] = a5;
  v39 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D080, &unk_220FCB0B0);
  OUTLINED_FUNCTION_8_0(v12);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v13, v14);
  v16 = v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D040, &unk_220FD19F0);
  OUTLINED_FUNCTION_8_0(v17);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v18, v19);
  v21 = v38 - v20;
  v22 = type metadata accessor for SnapshotManager.Options(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v23, v24);
  OUTLINED_FUNCTION_3();
  v27 = v26 - v25;
  v28 = *a3;
  swift_beginAccess();
  v29 = *(v7 + 40);

  sub_220F62BF0(a1, a2, v28, a6, v29, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_220E3B2DC(v21, &qword_27CF9D040, &unk_220FD19F0);
    swift_endAccess();

    v30 = type metadata accessor for SnapshotManager.Snapshot(0);
    v31 = v39;
    v32 = 1;
  }

  else
  {
    v33 = v39;
    sub_220F14D90(v21, v27, type metadata accessor for SnapshotManager.Options);
    swift_endAccess();

    sub_220F13DB0();
    OUTLINED_FUNCTION_1_50();
    sub_220F14D38(v27, v34);
    v35 = type metadata accessor for SnapshotManager.Snapshot(0);
    if (__swift_getEnumTagSinglePayload(v16, 1, v35) == 1)
    {
      sub_220E3B2DC(v16, &qword_27CF9D080, &unk_220FCB0B0);
      v31 = v33;
      v32 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_0_56();
      sub_220F14D90(v16, v33, v36);
      v31 = v33;
      v32 = 0;
    }

    v30 = v35;
  }

  return __swift_storeEnumTagSinglePayload(v31, v32, 1, v30);
}

uint64_t sub_220F1451C(uint64_t a1)
{
  sub_220FC1130();

  sub_220FC1590();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EDD0, &unk_220FD3710);
  sub_220FC2610();
  swift_endAccess();
  return sub_220FC1140();
}

double sub_220F145BC(uint64_t a1, uint64_t a2)
{
  if (qword_2812C5EF8 != -1)
  {
    swift_once();
  }

  v2 = sub_220FC17A0();
  __swift_project_value_buffer(v2, qword_2812C5F00);
  v3 = sub_220FC1780();
  v4 = sub_220FC2E30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_220E15000, v3, v4, "Did receive memory warning - clear map snapshot cache", v5, 2u);
    MEMORY[0x223D9DDF0](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_220F1451C(Strong);
  }

  return result;
}

uint64_t sub_220F146D0(uint64_t a1)
{
  v2 = sub_220FC0ED0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 32);
  v9 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  v12 = *(v1 + 72);
  if (*(v1 + 8) == 1)
  {
    sub_220FC3A60();
  }

  else
  {
    v16 = *(v1 + 72);
    sub_220FC3A60();
    v12 = v16;
    sub_220FC0C20();
  }

  sub_220FC0EE0();
  sub_220F14CB0();
  sub_220FC2650();
  (*(v3 + 8))(v6, v2);
  if ((v7 - 3) >= 3u)
  {
    MEMORY[0x223D9CFA0](1);
  }

  else
  {
    v7 = qword_220FD3720[(v7 - 3)];
  }

  MEMORY[0x223D9CFA0](v7);
  v13 = 0.0;
  if (v9 != 0.0)
  {
    v13 = v9;
  }

  MEMORY[0x223D9CFD0](*&v13);
  sub_220F21618(v8, v10);
  MEMORY[0x223D9CFA0](v11);
  result = sub_220FC3A60();
  if (v12 != 6)
  {
    return MEMORY[0x223D9CFA0](v12);
  }

  return result;
}

uint64_t sub_220F148DC()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_220FC3A40();
  sub_220F146D0(v2);
  return sub_220FC3A90();
}

uint64_t sub_220F14938(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_220FC3A40();
  sub_220F146D0(v3);
  return sub_220FC3A90();
}

unint64_t sub_220F14994()
{
  result = qword_2812C9BF8;
  if (!qword_2812C9BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9BF8);
  }

  return result;
}

uint64_t sub_220F149E8(double *a1, uint64_t a2)
{
  v4 = sub_220FC0ED0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v36 - v11;
  v13 = *a1;
  v14 = *(a1 + 1);
  v15 = *(a1 + 32);
  v17 = a1[5];
  v16 = a1[6];
  v18 = a1[7];
  v44 = *(a1 + 8);
  v40 = *(a1 + 72);
  v43 = *(a1 + 73);
  v37 = *a2;
  v38 = v13;
  v41 = *(a2 + 8);
  v42 = v14;
  v19 = *(a2 + 32);
  v21 = *(a2 + 40);
  v20 = *(a2 + 48);
  v22 = *(a2 + 56);
  v23 = *(a2 + 64);
  v39 = *(a2 + 72);
  v24 = *(a2 + 73);
  sub_220FC0EE0();
  sub_220FC0EE0();
  LOBYTE(a2) = sub_220FC0EC0();
  v25 = *(v5 + 8);
  v25(v8, v4);
  v25(v12, v4);
  if ((a2 & 1) == 0)
  {
    goto LABEL_20;
  }

  switch(v15)
  {
    case 5:
      v26 = v19 == 5;
      goto LABEL_10;
    case 4:
      v26 = v19 == 4;
      goto LABEL_10;
    case 3:
      v26 = v19 == 3;
      goto LABEL_10;
  }

  if ((v19 - 3) < 3)
  {
LABEL_20:
    v30 = 0;
    return v30 & 1;
  }

  v26 = v15 == v19;
LABEL_10:
  if (!v26 || v17 != v21 || v16 != v20 || v18 != v22)
  {
    goto LABEL_20;
  }

  v30 = 0;
  if (v44 == v23 && ((v43 ^ v24) & 1) == 0)
  {
    if (v40 == 6)
    {
      v32 = v39 == 6;
    }

    else
    {
      v32 = v39 != 6 && v40 == v39;
    }

    v33 = v41;
    if (!v32)
    {
      goto LABEL_20;
    }

    v30 = v41 == 1 && v42 == 1;
    if (v42 != 1 && v41 != 1)
    {

      v35 = v37;
      v30 = sub_220FC0C10();
      sub_220E5E3D0(v35, v33);
    }
  }

  return v30 & 1;
}

double block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_220F14CB0()
{
  result = qword_2812CA098;
  if (!qword_2812CA098)
  {
    sub_220FC0ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CA098);
  }

  return result;
}

uint64_t sub_220F14D38(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220F14D90(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220F14DF8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_220F14E38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220F14EA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 160) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void sub_220F14EF0(char *a1, int a2, int a3)
{
  if (a2 < 0)
  {
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
      a1[184] = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      a1[184] = 0;
    }

    if (a2)
    {
      v4 = 2 * -a2;
      bzero(a1, 0xA0uLL);
      *(a1 + 21) = 0;
      *(a1 + 22) = 0;
      *(a1 + 20) = v4;
    }
  }
}

uint64_t sub_220F14FA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 161))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
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

uint64_t sub_220F14FE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_220F1505C(uint64_t a1@<X8>)
{
  sub_220FC0EA0();
  OUTLINED_FUNCTION_6();
  v173 = v6;
  v174 = v5;
  MEMORY[0x28223BE20](v5, v7);
  OUTLINED_FUNCTION_4();
  v165 = (v8 - v9);
  MEMORY[0x28223BE20](v10, v11);
  v164 = v150 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v16 = v150 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = v150 - v19;
  MEMORY[0x28223BE20](v21, v22);
  v24 = v150 - v23;
  v25 = sub_220FC2450();
  OUTLINED_FUNCTION_6();
  v27 = v26;
  MEMORY[0x28223BE20](v28, v29);
  OUTLINED_FUNCTION_3();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E5D0, &qword_220FD08D0);
  MEMORY[0x28223BE20](v33 - 8, v34);
  v159 = v150 - v35;
  sub_220FC2F60();
  OUTLINED_FUNCTION_6();
  v162 = v37;
  v163 = v36;
  MEMORY[0x28223BE20](v36, v38);
  OUTLINED_FUNCTION_3();
  v172 = v40 - v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D050, &unk_220FD08E0);
  OUTLINED_FUNCTION_6();
  v160 = v42;
  v161 = v41;
  MEMORY[0x28223BE20](v41, v43);
  v171 = v150 - v44;
  sub_220FC03C0();
  OUTLINED_FUNCTION_6();
  v168 = v46;
  v169 = v45;
  MEMORY[0x28223BE20](v45, v47);
  OUTLINED_FUNCTION_3();
  v167 = v49 - v48;
  v170 = sub_220FC03E0();
  OUTLINED_FUNCTION_6();
  v166 = v50;
  MEMORY[0x28223BE20](v51, v52);
  OUTLINED_FUNCTION_3();
  v55 = v54 - v53;
  memcpy(v191, v1, 0xB8uLL);
  switch(sub_220E435CC(v191))
  {
    case 1u:
      OUTLINED_FUNCTION_18_10(v191);
      memcpy(v175, v99, sizeof(v175));
      goto LABEL_39;
    case 2u:
      v81 = sub_220E22B0C(v191);
      v82 = *(v81 + 56);
      v173 = *(v81 + 64);
      v174 = v82;
      v83 = *(v81 + 80);
      v172 = *(v81 + 72);
      v84 = *(v81 + 88);
      v85 = *(v81 + 89);
      v86 = *(v81 + 104);
      v87 = a1;
      v88 = *(v81 + 112);
      v63 = *(v81 + 120);
      v89 = *(v81 + 128);
      v2 = *(v81 + 136);
      v3 = *(v81 + 144);
      OUTLINED_FUNCTION_29_7();
      v90 = sub_220E22B0C(v175);
      sub_220E21C98(v90, v177);
      v66 = v85;
      v67 = v88;
      a1 = v87;
      v69 = v173;
      v68 = v174;
      v64 = v89;
      v70 = v84;
      v32 = v172;
      goto LABEL_40;
    case 3u:
      v174 = v55;
      v153 = v25;
      OUTLINED_FUNCTION_18_10(v191);
      memcpy(v175, v91, 0x88uLL);
      v92 = v175[16];
      v150[2] = sub_220FC0C80();
      sub_220FC0C60();
      v93 = sub_220FC0C40();

      v94 = objc_opt_self();
      v95 = v93;
      v96 = [v94 celsius];
      v60 = sub_220E1966C(0, &unk_2812C5CB0, 0x277CCAE48);
      v97 = sub_220FC3250();

      v151 = v32;
      v152 = v27;
      v156 = v95;
      v150[1] = v60;
      if (v97)
      {
        if (!*(v92 + 16))
        {
          goto LABEL_22;
        }

        v98 = 1;
LABEL_20:
        v97 = v92;
        v108 = sub_220F191E0(v98);
        if (v109)
        {
          memcpy(v177, (*(v92 + 56) + 96 * v108), 0x60uLL);
          OUTLINED_FUNCTION_4_32();
LABEL_23:
          v110 = v174;
          goto LABEL_24;
        }

LABEL_22:
        OUTLINED_FUNCTION_6_19();
        goto LABEL_23;
      }

      v96 = v95;
      v95 = [v94 fahrenheit];
      v97 = sub_220FC3250();

      if (v97)
      {
        if (!*(v92 + 16))
        {
          goto LABEL_22;
        }

        v98 = 2;
        goto LABEL_20;
      }

      v96 = v96;
      v94 = [v94 kelvin];
      LODWORD(v95) = sub_220FC3250();

      v97 = v92;
      v131 = *(v92 + 16);
      if (v95)
      {
        v110 = v174;
        if (!v131)
        {
          goto LABEL_48;
        }

        v132 = 3;
      }

      else
      {
        v110 = v174;
        if (!v131)
        {
          goto LABEL_48;
        }

        v132 = 0;
      }

      v145 = sub_220F191E0(v132);
      if (v146)
      {
        OUTLINED_FUNCTION_2_35(v145);
        OUTLINED_FUNCTION_4_32();
        goto LABEL_24;
      }

LABEL_48:
      OUTLINED_FUNCTION_6_19();
LABEL_24:
      v173 = v97;
      v174 = v96;
      v176[0] = v96;
      v176[1] = v97;
      v176[2] = v32;
      v176[3] = v27;
      v154 = v94;
      v155 = v95;
      LOBYTE(v176[4]) = v94;
      BYTE1(v176[4]) = v95;
      v111 = v157;
      v176[5] = v157;
      v176[6] = v60;
      v63 = v164;
      v176[7] = v158;
      v176[8] = v164;
      v64 = v165;
      LOBYTE(v176[9]) = v165;
      v176[10] = v2;
      v176[11] = v3;
      memcpy(v177, v176, 0x60uLL);
      if (v60)
      {
        v150[0] = v27;

        sub_220FC0390();
        v112 = v167;
        sub_220FC03D0();
        v113 = v110;
        v114 = v170;
        (*(v166 + 8))(v113, v170);
        v115 = sub_220FC03A0();
        (*(v168 + 8))(v112, v169);
        if (v115)
        {
          v178 = v111;
          v179 = v60;
          MEMORY[0x223D9BD60](10272, 0xE200000000000000);
          sub_220FC0C60();
          sub_220FC0C40();

          sub_220FBFC70();
          sub_220FC2C80();
          v116 = v159;
          __swift_storeEnumTagSinglePayload(v159, 1, 1, v114);
          sub_220FC2440();

          sub_220F19D1C(v116);
          v118 = v151;
          v117 = v152;
          v119 = v153;
          (*(v152 + 104))(v151, *MEMORY[0x277D7B408], v153);
          sub_220FC0C60();
          sub_220F1AD68(&qword_27CF9D078, MEMORY[0x277D7B508]);
          v120 = v161;
          v121 = v163;
          v174 = sub_220FBFCB0();
          v123 = v122;

          (*(v117 + 8))(v118, v119);
          (*(v162 + 8))(v172, v121);
          (*(v160 + 8))(v171, v120);
          MEMORY[0x223D9BD60](v174, v123);

          MEMORY[0x223D9BD60](41, 0xE100000000000000);

          sub_220FBB2B4(v178, v179, &v178);

          sub_220E31784(v176);
          v2 = v189;
          v3 = v190;
          v64 = v188;
          v63 = v187;
          v67 = v186;
          v1 = v184;
          v60 = v185;
          v66 = v183;
          v70 = v182;
          v32 = v180;
          v27 = v181;
          v68 = v178;
          v69 = v179;
          goto LABEL_41;
        }

        v67 = v158;
        v1 = v111;
        v70 = v154;
        v66 = v155;
        v27 = v150[0];
      }

      else
      {

        v67 = v158;
        v1 = v111;
        v70 = v154;
        v66 = v155;
      }

      v69 = v173;
      v68 = v174;
      goto LABEL_41;
    case 4u:
      OUTLINED_FUNCTION_18_10(v191);
      memcpy(v175, v71, 0xB0uLL);
      v172 = v175[21];
      sub_220FC0C80();
      sub_220FC0C60();
      v72 = sub_220FC0C70();

      v73 = objc_opt_self();
      v74 = v72;
      v75 = [v73 kilometersPerHour];
      sub_220E1966C(0, &qword_2812C5D00, 0x277CCAE40);
      v76 = sub_220FC3250();

      if (v76)
      {
        v77 = v173;
        v78 = v174;
        (*(v173 + 104))(v24, *MEMORY[0x277D7AAB8], v174);
        if (*(v172 + 16))
        {
          v79 = sub_220F1914C();
          if (v80)
          {
            OUTLINED_FUNCTION_2_35(v79);
            OUTLINED_FUNCTION_20_10();

            (*(v77 + 8))(v24, v78);
LABEL_16:
            v2 = v177[10];
            v3 = v177[11];
            v64 = v177[9];
            v63 = v177[8];
            v67 = v177[7];
            v1 = v177[5];
            v60 = v177[6];
            v66 = BYTE1(v177[4]);
            v70 = v177[4];
            v32 = v177[2];
            v27 = v177[3];
            v68 = v177[0];
            v69 = v177[1];
            goto LABEL_41;
          }
        }

        (*(v77 + 8))(v24, v78);
      }

      else
      {
        v100 = v172;
        v101 = v74;
        v102 = [v73 milesPerHour];
        v103 = sub_220FC3250();

        if (v103)
        {
          v104 = v173;
          v105 = v174;
          (*(v173 + 104))(v20, *MEMORY[0x277D7AA98], v174);
          if (*(v100 + 16))
          {
            v106 = sub_220F1914C();
            if (v107)
            {
              OUTLINED_FUNCTION_2_35(v106);
              OUTLINED_FUNCTION_20_10();

              (*(v104 + 8))(v20, v105);
              goto LABEL_16;
            }
          }

          (*(v104 + 8))(v20, v105);
        }

        else
        {
          v124 = v101;
          v125 = [v73 knots];
          v126 = sub_220FC3250();

          if (v126)
          {
            v127 = v173;
            v128 = v174;
            (*(v173 + 104))(v16, *MEMORY[0x277D7AAC0], v174);
            if (*(v100 + 16))
            {
              v129 = sub_220F1914C();
              if (v130)
              {
                OUTLINED_FUNCTION_2_35(v129);
                OUTLINED_FUNCTION_20_10();

                (*(v127 + 8))(v16, v128);
                goto LABEL_16;
              }
            }

            (*(v127 + 8))(v16, v128);
          }

          else
          {
            v139 = v124;
            v140 = sub_220FC2D80();
            v141 = sub_220FC3250();

            v142 = v173;
            if (v141)
            {
              v143 = *MEMORY[0x277D7AAC8];
              v144 = v164;
            }

            else
            {
              v143 = *MEMORY[0x277D7AAB0];
              v144 = v165;
            }

            v147 = v174;
            (*(v173 + 104))(v144, v143, v174);
            if (*(v100 + 16))
            {
              v148 = sub_220F1914C();
              if (v149)
              {
                OUTLINED_FUNCTION_2_35(v148);
                OUTLINED_FUNCTION_20_10();

                (*(v142 + 8))(v144, v147);
                goto LABEL_16;
              }
            }

            (*(v142 + 8))(v144, v147);
          }
        }
      }

LABEL_39:
      v2 = v175[17];
      v3 = v175[18];
      LODWORD(v165) = LOBYTE(v175[16]);
      v164 = v175[15];
      v174 = a1;
      v86 = v175[13];
      v133 = v175[14];
      v1 = v175[12];
      v134 = BYTE1(v175[11]);
      v135 = v175[11];
      v136 = v175[9];
      v83 = v175[10];
      v137 = v175[7];
      v138 = v175[8];
      sub_220E21C98(v175, v177);
      v66 = v134;
      v67 = v133;
      a1 = v174;
      v69 = v138;
      v63 = v164;
      v68 = v137;
      v64 = v165;
      v70 = v135;
      v32 = v136;
LABEL_40:
      v60 = v86;
      v27 = v83;
LABEL_41:
      *a1 = v68;
      *(a1 + 8) = v69;
      *(a1 + 16) = v32;
      *(a1 + 24) = v27;
      *(a1 + 32) = v70;
      *(a1 + 33) = v66;
      *(a1 + 40) = v1;
      *(a1 + 48) = v60;
      *(a1 + 56) = v67;
      *(a1 + 64) = v63;
      *(a1 + 72) = v64;
      *(a1 + 80) = v2;
      *(a1 + 88) = v3;
      return;
    default:
      v56 = sub_220E22B0C(v191);
      v57 = *(v56 + 32);
      v173 = *(v56 + 40);
      v174 = v57;
      v27 = *(v56 + 56);
      v172 = *(v56 + 48);
      v58 = *(v56 + 64);
      v59 = *(v56 + 65);
      v60 = *(v56 + 80);
      v61 = a1;
      v62 = *(v56 + 88);
      v63 = *(v56 + 96);
      v64 = *(v56 + 104);
      v2 = *(v56 + 112);
      v3 = *(v56 + 120);
      OUTLINED_FUNCTION_29_7();
      v65 = sub_220E22B0C(v175);
      sub_220E21C60(v65, v177);
      v66 = v59;
      v67 = v62;
      a1 = v61;
      v69 = v173;
      v68 = v174;
      v70 = v58;
      v32 = v172;
      goto LABEL_41;
  }
}

void *sub_220F15E3C@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  switch(sub_220E435CC(__dst))
  {
    case 1u:
      OUTLINED_FUNCTION_18_10(__dst);
      v5 = 184;
      goto LABEL_8;
    case 2u:
      v6 = sub_220E22B0C(__dst);
      memcpy(v14, (v6 + 24), sizeof(v14));
      memcpy(v11, v1, sizeof(v11));
      v7 = sub_220E22B0C(v11);
      sub_220E21C98(v7, __src);
      goto LABEL_9;
    case 3u:
      OUTLINED_FUNCTION_18_10(__dst);
      memcpy(__src, v8, 0x80uLL);
      goto LABEL_6;
    case 4u:
      OUTLINED_FUNCTION_18_10(__dst);
      v5 = 176;
LABEL_8:
      memcpy(v11, v4, v5);
      sub_220E21C98(v11, __src);
      memcpy(v14, &v11[24], sizeof(v14));
LABEL_9:
      memcpy(__src, v14, 0x80uLL);
      nullsub_1();
      v9 = __src;
      break;
    default:
      OUTLINED_FUNCTION_18_10(__dst);
      memmove(__src, v3, 0x80uLL);
LABEL_6:
      memcpy(v14, __src, sizeof(v14));
      nullsub_1();
      sub_220E21C60(__src, v11);
      v9 = v14;
      break;
  }

  memcpy(v11, v9, 0x80uLL);
  return memcpy(a1, v11, 0x80uLL);
}

double sub_220F15FF0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_5_22();
  }

  else
  {
    OUTLINED_FUNCTION_0_57();
  }

  sub_220FC27D0();

  return result;
}

double sub_220F16048(uint64_t a1, char a2)
{
  sub_220FC27D0();

  return result;
}

double sub_220F160FC(uint64_t a1, char a2)
{
  sub_220FC27D0();

  return result;
}

double sub_220F16158(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_3_30();
  }

  else
  {
    OUTLINED_FUNCTION_0_57();
  }

  sub_220FC27D0();

  return result;
}

double sub_220F161B0(uint64_t a1, char a2)
{
  sub_220FC27D0();

  return result;
}

double sub_220F16214(uint64_t a1, char a2)
{
  sub_220FC27D0();

  return result;
}

double sub_220F16254(uint64_t a1, char a2)
{
  sub_220FC27D0();

  return result;
}

double sub_220F162C4()
{
  OUTLINED_FUNCTION_25_0();
  sub_220FC27D0();

  return result;
}

double sub_220F16338(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_15_7();
  }

  sub_220FC27D0();

  return result;
}

double sub_220F163B4(uint64_t a1, char a2)
{
  sub_220FC27D0();

  return result;
}

double sub_220F16460(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_19_9();
  }

  sub_220FC27D0();

  return result;
}

double sub_220F164E4(uint64_t a1, char a2)
{
  sub_220FC27D0();

  return result;
}

double sub_220F16568(uint64_t a1, char a2)
{
  sub_220FC27D0();

  return result;
}

double sub_220F165F8()
{
  OUTLINED_FUNCTION_25_0();
  sub_220FC27D0();

  return result;
}

double sub_220F16664(uint64_t a1, char a2)
{
  sub_220FC27D0();

  return result;
}

double sub_220F1672C()
{
  OUTLINED_FUNCTION_25_0();
  sub_220FC27D0();

  return result;
}

uint64_t sub_220F16790(uint64_t a1)
{
  OUTLINED_FUNCTION_11_13(a1);
  OUTLINED_FUNCTION_25_0();
  if (v1)
  {
    v4 = 0xD000000000000018;
  }

  else
  {
    v4 = 1701869940;
  }

  OUTLINED_FUNCTION_13_13(v2, v4, v3);

  return sub_220FC3A90();
}

uint64_t sub_220F16810(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_11_13(a1);
  if (v1)
  {
    v4 = 0x7261646E6F636573;
  }

  else
  {
    v4 = 0x7972616D697270;
  }

  OUTLINED_FUNCTION_13_13(v2, v4, v3);

  return sub_220FC3A90();
}

uint64_t sub_220F16884(uint64_t a1)
{
  OUTLINED_FUNCTION_11_13(a1);
  OUTLINED_FUNCTION_25_0();
  if (v1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x6C6172656E6567;
  }

  OUTLINED_FUNCTION_13_13(v2, v4, v3);

  return sub_220FC3A90();
}

uint64_t sub_220F168F4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_11_13(a1);
  if (v1)
  {
    v4 = 0x4554455243534944;
  }

  else
  {
    v4 = 0x4F554E49544E4F43;
  }

  OUTLINED_FUNCTION_13_13(v2, v4, v3);

  return sub_220FC3A90();
}

uint64_t sub_220F16968(uint64_t a1)
{
  sub_220FC3A40();
  sub_220FC27D0();
  return sub_220FC3A90();
}

uint64_t sub_220F169BC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_11_13(a1);
  if (v1)
  {
    v4 = 0x6E6F67796C6F50;
  }

  else
  {
    v4 = 0x6C6F5069746C754DLL;
  }

  OUTLINED_FUNCTION_13_13(v2, v4, v3);

  return sub_220FC3A90();
}

uint64_t sub_220F16A4C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_11_13(a1);
  if (v1)
  {
    v4 = 0x616E6964726F6F63;
  }

  else
  {
    v4 = 1701869940;
  }

  OUTLINED_FUNCTION_13_13(v2, v4, v3);

  return sub_220FC3A90();
}

uint64_t sub_220F16ABC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_11_13(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x6574656C706D6F63;
    }

    else
    {
      v4 = 0x656C6C65636E6163;
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_9();
  }

  OUTLINED_FUNCTION_13_13(v2, v4, v3);

  return sub_220FC3A90();
}

uint64_t sub_220F16B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220FC3A40();
  sub_220FC27D0();
  return sub_220FC3A90();
}

uint64_t sub_220F16BC8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_11_13(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x6574657263736964;
    }

    else
    {
      v4 = 0x6576697463616E69;
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_7();
  }

  OUTLINED_FUNCTION_13_13(v2, v4, v3);

  return sub_220FC3A90();
}

uint64_t sub_220F16C48(uint64_t a1)
{
  OUTLINED_FUNCTION_11_13(a1);
  OUTLINED_FUNCTION_25_0();
  if (v1)
  {
    v4 = 0x694D7261656E696CLL;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  OUTLINED_FUNCTION_13_13(v2, v4, v3);

  return sub_220FC3A90();
}

uint64_t sub_220F16CC0(uint64_t a1)
{
  OUTLINED_FUNCTION_11_13(a1);
  sub_220FC27D0();

  return sub_220FC3A90();
}

uint64_t sub_220F16D14(uint64_t a1, unsigned __int8 a2)
{
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](a2);
  return sub_220FC3A90();
}

uint64_t sub_220F16D58(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_11_13(a1);
  if (v1)
  {
    v4 = 0x64656E696F6ALL;
  }

  else
  {
    v4 = 0x746E696F70;
  }

  OUTLINED_FUNCTION_13_13(v2, v4, v3);

  return sub_220FC3A90();
}

uint64_t sub_220F16DC0(uint64_t a1)
{
  OUTLINED_FUNCTION_11_13(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_3_30();
  }

  else
  {
    OUTLINED_FUNCTION_0_57();
  }

  OUTLINED_FUNCTION_13_13(v2, v3, v4);

  return sub_220FC3A90();
}

uint64_t sub_220F16E1C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_11_13(a1);
  if (v1)
  {
    v4 = 1953722224;
  }

  else
  {
    v4 = 6648432;
  }

  OUTLINED_FUNCTION_13_13(v2, v4, v3);

  return sub_220FC3A90();
}

uint64_t sub_220F16E7C(uint64_t a1, char a2)
{
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](a2 & 1);
  return sub_220FC3A90();
}

uint64_t sub_220F16ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t))
{
  sub_220FC3A40();
  a3(v6, a2);
  return sub_220FC3A90();
}

uint64_t sub_220F16F24(uint64_t a1)
{
  OUTLINED_FUNCTION_11_13(a1);
  if (v1)
  {
    OUTLINED_FUNCTION_5_22();
  }

  else
  {
    OUTLINED_FUNCTION_0_57();
  }

  OUTLINED_FUNCTION_13_13(v2, v3, v4);

  return sub_220FC3A90();
}

uint64_t sub_220F16F80(uint64_t a1)
{
  OUTLINED_FUNCTION_11_13(a1);
  sub_220FC3A70();
  return sub_220FC3A90();
}

uint64_t sub_220F16FBC(uint64_t a1, uint64_t a2)
{
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](a2);
  return sub_220FC3A90();
}

uint64_t sub_220F17000(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  switch(sub_220E435CC(__dst))
  {
    case 1u:
      v116 = sub_220E22B0C(__dst);
      v117 = *v116;
      v118 = *(v116 + 8);
      v120 = *(v116 + 16);
      v119 = *(v116 + 24);
      v121 = *(v116 + 32);
      v122 = *(v116 + 40);
      v123 = *(v116 + 48);
      v124 = memcpy(v193, (v116 + 49), 0x67uLL);
      v166 = *(v116 + 152);
      v125 = *(v116 + 160);
      v127 = *(v116 + 168);
      v126 = *(v116 + 176);
      OUTLINED_FUNCTION_9_16(v124, v128, v129, v130, v131, v132, v133, v134, v166);
      if (sub_220E435CC(&v169) != 1)
      {
        goto LABEL_113;
      }

      v135 = v127;
      v136 = sub_220E22B0C(&v169);
      v148 = OUTLINED_FUNCTION_27_9(v136);
      v150 = v117 == v149 && v118 == v148;
      v151 = v150 && v120 == v145;
      v152 = v151 && v119 == v146;
      if (!v152 || v121 != v147)
      {
        goto LABEL_113;
      }

      v154 = v137;
      v155 = *(v137 + 152);
      v156 = *(v137 + 160);
      v158 = *(v137 + 168);
      v157 = *(v137 + 176);
      if (v123)
      {
        if ((*(v137 + 48) & 1) == 0)
        {
          goto LABEL_113;
        }
      }

      else if ((*(v137 + 48) & 1) != 0 || v122 != *(v137 + 40))
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_7_17(v137, v138, v139, v140, v141, v142, v143, v144, v167, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], v193[0]);
      memcpy(v195, (v154 + 56), 0x60uLL);
      if ((OUTLINED_FUNCTION_31_5() & 1) == 0)
      {
        goto LABEL_113;
      }

      if (v125)
      {
        if ((v156 & 1) == 0)
        {
          goto LABEL_113;
        }
      }

      else if ((v156 & 1) != 0 || v168 != v155)
      {
        goto LABEL_113;
      }

      if (v135 == v158 && v126 == v157)
      {
        goto LABEL_112;
      }

      OUTLINED_FUNCTION_63_0();
      if (sub_220FC3940())
      {
        goto LABEL_112;
      }

      goto LABEL_113;
    case 2u:
      v66 = sub_220E22B0C(__dst);
      v67 = *v66;
      v68 = *(v66 + 8);
      v70 = *(v66 + 16);
      v69 = *(v66 + 24);
      v72 = *(v66 + 32);
      v71 = *(v66 + 40);
      v73 = *(v66 + 48);
      v74 = memcpy(v194, (v66 + 49), sizeof(v194));
      v75 = *(v66 + 152);
      v76 = *(v66 + 160);
      OUTLINED_FUNCTION_9_16(v74, v77, v78, v79, v80, v81, v82, v83, v162);
      if (sub_220E435CC(&v169) != 2)
      {
        goto LABEL_113;
      }

      v84 = sub_220E22B0C(&v169);
      v85 = v67 == *v84 && v68 == *(v84 + 8);
      if (!v85 || v70 != *(v84 + 16))
      {
        goto LABEL_113;
      }

      v87 = v84;
      if (v69 != *(v84 + 24) || v72 != *(v84 + 32))
      {
        goto LABEL_113;
      }

      v89 = *(v84 + 152);
      v90 = *(v84 + 160);
      if (v73)
      {
        if ((*(v84 + 48) & 1) == 0)
        {
          goto LABEL_113;
        }
      }

      else if ((*(v84 + 48) & 1) != 0 || v71 != *(v84 + 40))
      {
        goto LABEL_113;
      }

      memcpy(v195, &v194[7], 0x60uLL);
      memcpy(v193, (v87 + 56), sizeof(v193));
      if ((sub_220FBB128(v195, v193) & 1) == 0)
      {
        goto LABEL_113;
      }

      if (v76)
      {
        if (v90)
        {
          goto LABEL_112;
        }

        goto LABEL_113;
      }

      if ((v90 & 1) != 0 || v75 != v89)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    case 3u:
      v91 = sub_220E22B0C(__dst);
      v92 = *v91;
      v93 = *(v91 + 8);
      v94 = *(v91 + 16);
      v95 = *(v91 + 24);
      v96 = memcpy(v193, (v91 + 25), 0x67uLL);
      v97 = *(v91 + 128);
      OUTLINED_FUNCTION_9_16(v96, v98, v99, v100, v101, v102, v103, v104, v162);
      if (sub_220E435CC(&v169) != 3)
      {
        goto LABEL_113;
      }

      v105 = sub_220E22B0C(&v169);
      if (v92 != *v105 || v93 != *(v105 + 8))
      {
        goto LABEL_113;
      }

      v114 = v105;
      v115 = *(v105 + 128);
      if (v95)
      {
        if ((*(v105 + 24) & 1) == 0)
        {
          goto LABEL_113;
        }
      }

      else if ((*(v105 + 24) & 1) != 0 || v94 != *(v105 + 16))
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_7_17(v105, v106, v107, v108, v109, v110, v111, v112, v165, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], v193[0]);
      memcpy(v195, (v114 + 32), 0x60uLL);
      if ((OUTLINED_FUNCTION_31_5() & 1) == 0)
      {
        goto LABEL_113;
      }

      v159 = sub_220F17D3C(v97, v115);
      return v159 & 1;
    case 4u:
      v24 = sub_220E22B0C(__dst);
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      v28 = *(v24 + 24);
      v29 = *(v24 + 32);
      v30 = *(v24 + 40);
      v31 = *(v24 + 48);
      v32 = memcpy(v193, (v24 + 49), 0x67uLL);
      v33 = *(v24 + 152);
      v34 = *(v24 + 160);
      v35 = *(v24 + 168);
      OUTLINED_FUNCTION_9_16(v32, v36, v37, v38, v39, v40, v41, v42, v162);
      if (sub_220E435CC(&v169) != 4)
      {
        goto LABEL_113;
      }

      v43 = v33;
      v44 = sub_220E22B0C(&v169);
      v56 = OUTLINED_FUNCTION_27_9(v44);
      v58 = v25 == v57 && v26 == v56;
      v59 = v58 && v27 == v53;
      v60 = v59 && v28 == v54;
      if (!v60 || v29 != v55)
      {
        goto LABEL_113;
      }

      v62 = v45;
      v63 = *(v45 + 152);
      v64 = *(v45 + 160);
      v65 = *(v45 + 168);
      if (v31)
      {
        if ((*(v45 + 48) & 1) == 0)
        {
          goto LABEL_113;
        }
      }

      else if ((*(v45 + 48) & 1) != 0 || v30 != *(v45 + 40))
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_7_17(v45, v46, v47, v48, v49, v50, v51, v52, v164, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], v193[0]);
      memcpy(v195, (v62 + 56), 0x60uLL);
      if ((OUTLINED_FUNCTION_31_5() & 1) == 0)
      {
        goto LABEL_113;
      }

      if (v34)
      {
        if ((v64 & 1) == 0)
        {
          goto LABEL_113;
        }

        goto LABEL_101;
      }

      if ((v64 & 1) == 0 && v43 == v63)
      {
LABEL_101:
        sub_220F17F08(v35, v65);
        return v159 & 1;
      }

LABEL_113:
      v159 = 0;
      return v159 & 1;
    default:
      v1 = sub_220E22B0C(__dst);
      v2 = *v1;
      v3 = *(v1 + 8);
      v4 = *(v1 + 16);
      v5 = *(v1 + 24);
      v6 = memcpy(v193, (v1 + 25), 0x67uLL);
      OUTLINED_FUNCTION_9_16(v6, v7, v8, v9, v10, v11, v12, v13, v162);
      if (sub_220E435CC(&v169))
      {
        goto LABEL_113;
      }

      v14 = sub_220E22B0C(&v169);
      if (v2 != *v14 || v3 != *(v14 + 8))
      {
        goto LABEL_113;
      }

      v23 = v14;
      if (v5)
      {
        if ((*(v14 + 24) & 1) == 0)
        {
          goto LABEL_113;
        }
      }

      else if ((*(v14 + 24) & 1) != 0 || v4 != *(v14 + 16))
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_7_17(v14, v15, v16, v17, v18, v19, v20, v21, v163, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], v193[0]);
      memcpy(v195, (v23 + 32), 0x60uLL);
      if ((OUTLINED_FUNCTION_31_5() & 1) == 0)
      {
        goto LABEL_113;
      }

LABEL_112:
      v159 = 1;
      return v159 & 1;
  }
}

uint64_t sub_220F174CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_220F9DA88(a3);

  sub_220F9DA88(a7);
  if (a1 == a5 && a2 == a6)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_220FC3940();
  }

  return v12 & 1;
}

uint64_t sub_220F175A8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    v6 = 0;
    return v6 & 1;
  }

  __dst[14] = v2;
  __dst[15] = v3;
  if (*(a1 + 8) == *(a2 + 8))
  {
    v5 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (!*(a2 + 24))
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (*(a1 + 16) != *(a2 + 16))
      {
        v5 = 1;
      }

      if (v5)
      {
        goto LABEL_5;
      }
    }

    memcpy(__dst, (a1 + 32), 0x60uLL);
    memcpy(v8, (a2 + 32), sizeof(v8));
    v6 = sub_220FBB128(__dst, v8);
    return v6 & 1;
  }

LABEL_5:
  v6 = 0;
  return v6 & 1;
}

uint64_t sub_220F1765C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  __dst[14] = v2;
  __dst[15] = v3;
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  if (*(a1 + 48))
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_16;
  }

  result = 0;
  if ((*(a2 + 48) & 1) == 0 && *(a1 + 40) == *(a2 + 40))
  {
LABEL_16:
    memcpy(__dst, (a1 + 56), 0x60uLL);
    memcpy(v9, (a2 + 56), sizeof(v9));
    if (sub_220FBB128(__dst, v9))
    {
      v8 = *(a2 + 160);
      if (*(a1 + 160))
      {
        if (*(a2 + 160))
        {
          return 1;
        }
      }

      else
      {
        if (*(a1 + 152) != *(a2 + 152))
        {
          v8 = 1;
        }

        if ((v8 & 1) == 0)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_220F17768(uint64_t a1, uint64_t a2)
{
  v4 = sub_220FC0760();
  OUTLINED_FUNCTION_6();
  v63 = v5;
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_4();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11, v12);
  v62 = &v52 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE30, &qword_220FD3D20);
  MEMORY[0x28223BE20](v14 - 8, v15);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16, v17);
  v58 = a2;
  if (a1 != a2 && *(a1 + 16) == *(v58 + 16))
  {
    v56 = (&v52 - v18);
    v57 = v19;
    v55 = v10;
    v20 = 0;
    v53 = a1;
    v52 = a1 + 64;
    OUTLINED_FUNCTION_14_11();
    v23 = v22 >> 6;
    v59 = v63 + 16;
    v60 = (v63 + 32);
    v54 = (v63 + 8);
    while (1)
    {
      v24 = v57;
      if (!v21)
      {
        break;
      }

      OUTLINED_FUNCTION_25_11();
      v61 = v25;
      v27 = v26 | (v20 << 6);
LABEL_10:
      v30 = (*(v53 + 48) + 16 * v27);
      v31 = *v30;
      v32 = v30[1];
      v34 = v62;
      v33 = v63;
      (*(v63 + 16))(v62, *(v53 + 56) + *(v63 + 72) * v27, v4);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE38, &qword_220FD3D28);
      v36 = *(v35 + 48);
      *v24 = v31;
      *(v24 + 1) = v32;
      (*(v33 + 32))(&v24[v36], v34, v4);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v35);

LABEL_11:
      v37 = v56;
      sub_220F1AD00(v24, v56, &qword_27CF9EE30, &qword_220FD3D20);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE38, &qword_220FD3D28);
      if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
      {
        return;
      }

      v39 = *(v38 + 48);
      v41 = *v37;
      v40 = v37[1];
      v42 = v58;
      v43 = v55;
      (*v60)(v55, v37 + v39, v4);
      v44 = sub_220F19730(v41, v40, MEMORY[0x277D83758], sub_220F1989C);
      v46 = v45;

      if ((v46 & 1) == 0)
      {
        (*v54)(v43, v4);
        return;
      }

      v48 = v62;
      v47 = v63;
      (*(v63 + 16))(v62, *(v42 + 56) + *(v63 + 72) * v44, v4);
      sub_220F1AD68(&qword_2812CA268, MEMORY[0x277CE3360]);
      v49 = sub_220FC26B0();
      v50 = *(v47 + 8);
      v50(v48, v4);
      v50(v43, v4);
      v21 = v61;
      if ((v49 & 1) == 0)
      {
        return;
      }
    }

    while (1)
    {
      v28 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v28 >= v23)
      {
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE38, &qword_220FD3D28);
        __swift_storeEnumTagSinglePayload(v24, 1, 1, v51);
        v61 = 0;
        goto LABEL_11;
      }

      v29 = *(v52 + 8 * v28);
      ++v20;
      if (v29)
      {
        v61 = (v29 - 1) & v29;
        v27 = __clz(__rbit64(v29)) | (v28 << 6);
        v20 = v28;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_220F17BE4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = a1 + 64;
    OUTLINED_FUNCTION_14_11();
    v8 = v7 >> 6;
    v23 = v5;
    while (v6)
    {
      OUTLINED_FUNCTION_25_11();
      v24 = v10;
LABEL_11:
      v13 = v9 | (v3 << 6);
      v14 = (*(v5 + 48) + 32 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      v19 = *(*(v5 + 56) + 8 * v13);

      if ((v17 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
      {
        return;
      }

      v20 = sub_220F1908C(v15, v16, v17, v18);
      if ((v21 & 1) == 0)
      {

        return;
      }

      v22 = sub_220F35358(*(*(a2 + 56) + 8 * v20), v19);

      v5 = v23;
      v6 = v24;
      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v11 = v3;
    while (1)
    {
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v3 >= v8)
      {
        return;
      }

      v12 = *(v4 + 8 * v3);
      ++v11;
      if (v12)
      {
        v9 = __clz(__rbit64(v12));
        v24 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_220F17D3C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    memcpy(__dst, (*(v3 + 56) + 96 * v12), sizeof(__dst));
    v22 = __dst[1];
    v23 = __dst[0];
    v20 = __dst[5];
    v21 = __dst[3];
    v18 = __dst[4];
    v19 = __dst[2];
    sub_220E31B58(__dst, v24);
    v14 = *(&v23 + 1) == 0;
    if (!*(&v23 + 1))
    {
      return v14;
    }

    v27[0] = v23;
    v27[1] = v22;
    v27[2] = v19;
    v27[3] = v21;
    v27[4] = v18;
    v27[5] = v20;
    v15 = sub_220F191E0(v13);
    if ((v16 & 1) == 0)
    {
      sub_220E31784(v27);
      return 0;
    }

    memcpy(v26, (*(a2 + 56) + 96 * v15), sizeof(v26));
    sub_220E31B58(v26, __dst);
    v17 = sub_220FBB128(v26, v27);
    sub_220E31784(v26);
    result = sub_220E31784(v27);
    if ((v17 & 1) == 0)
    {
      return v14;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_220F17F08(uint64_t a1, uint64_t a2)
{
  v55 = sub_220FC0EA0();
  v51 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v4);
  v52 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v50 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EDF8, &qword_220FD3CE0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v15 = MEMORY[0x28223BE20](v11, v12);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v49 = &v43 - v13;
    v16 = 0;
    v47 = a1;
    v19 = *(a1 + 64);
    v18 = a1 + 64;
    v17 = v19;
    v20 = 1 << *(v18 - 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v17;
    v43 = (v20 + 63) >> 6;
    v44 = v18;
    v45 = a2;
    v46 = v51 + 16;
    v53 = v14;
    v54 = (v51 + 32);
    v48 = (v51 + 8);
    while (v22)
    {
      v23 = (v22 - 1) & v22;
      v24 = __clz(__rbit64(v22)) | (v16 << 6);
LABEL_13:
      v28 = v47;
      v29 = v51;
      (*(v51 + 16))(v50, *(v47 + 48) + *(v51 + 72) * v24, v55, v15);
      memcpy(v57, (*(v28 + 56) + 96 * v24), sizeof(v57));
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE00, &qword_220FD4840);
      v31 = *(v30 + 48);
      v25 = v53;
      (*(v29 + 32))();
      memcpy((v25 + v31), v57, 0x60uLL);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v30);
      sub_220E31B58(v57, &v56);
      v22 = v23;
      a2 = v45;
LABEL_14:
      v32 = v25;
      v33 = v49;
      sub_220F1AD00(v32, v49, &qword_27CF9EDF8, &qword_220FD3CE0);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE00, &qword_220FD4840);
      if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
      {
        return;
      }

      v35 = *(v34 + 48);
      v36 = v55;
      v37 = v33;
      v38 = v52;
      (*v54)(v52, v37, v55);
      memcpy(__dst, (v37 + v35), 0x60uLL);
      v39 = sub_220F1914C();
      LOBYTE(v35) = v40;
      (*v48)(v38, v36);
      if ((v35 & 1) == 0)
      {
        sub_220E31784(__dst);
        return;
      }

      memcpy(v58, (*(a2 + 56) + 96 * v39), sizeof(v58));
      sub_220E31B58(v58, v57);
      v41 = sub_220FBB128(v58, __dst);
      sub_220E31784(v58);
      sub_220E31784(__dst);
      if ((v41 & 1) == 0)
      {
        return;
      }
    }

    v25 = v53;
    while (1)
    {
      v26 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v26 >= v43)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE00, &qword_220FD4840);
        __swift_storeEnumTagSinglePayload(v25, 1, 1, v42);
        v22 = 0;
        goto LABEL_14;
      }

      v27 = *(v44 + 8 * v26);
      ++v16;
      if (v27)
      {
        v23 = (v27 - 1) & v27;
        v24 = __clz(__rbit64(v27)) | (v26 << 6);
        v16 = v26;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_220F1835C(uint64_t a1)
{
  memcpy(v36, v1, sizeof(v36));
  switch(sub_220E435CC(v36))
  {
    case 1u:
      OUTLINED_FUNCTION_18_10(v36);
      memcpy(__dst, v33, sizeof(__dst));
      MEMORY[0x223D9CFA0](1);
      sub_220F185AC();
      OUTLINED_FUNCTION_63_0();
      sub_220FC27D0();
      break;
    case 2u:
      OUTLINED_FUNCTION_18_10(v36);
      memcpy(__dst, v19, sizeof(__dst));
      MEMORY[0x223D9CFA0](2);
      sub_220F185AC();
      break;
    case 3u:
      v20 = sub_220E22B0C(v36);
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      v24 = *(v20 + 24);
      memcpy(__dst, (v20 + 25), 0x67uLL);
      MEMORY[0x223D9CFA0](3);
      MEMORY[0x223D9CFA0](v21);
      MEMORY[0x223D9CFA0](v22);
      if (v24)
      {
        v25 = OUTLINED_FUNCTION_21_7();
      }

      else
      {
        OUTLINED_FUNCTION_22_9();
        v25 = MEMORY[0x223D9CFA0](v23);
      }

      OUTLINED_FUNCTION_28_7(v25, v26, v27, v28, v29, v30, v31, v32, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10], v36[11], v36[12], v36[13], v36[14], v36[15], v36[16], v36[17], v36[18], v36[19], v36[20], v36[21], v36[22]);
      sub_220FBC42C(a1);
      v34 = OUTLINED_FUNCTION_63_0();
      sub_220F1AA54(v34, v35);
      break;
    case 4u:
      OUTLINED_FUNCTION_18_10(v36);
      memcpy(__dst, v16, sizeof(__dst));
      MEMORY[0x223D9CFA0](4);
      sub_220F185AC();
      v17 = OUTLINED_FUNCTION_63_0();
      sub_220F1A630(v17, v18);
      break;
    default:
      v3 = sub_220E22B0C(v36);
      v4 = *v3;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
      memcpy(__dst, (v3 + 25), 0x67uLL);
      MEMORY[0x223D9CFA0](0);
      MEMORY[0x223D9CFA0](v4);
      MEMORY[0x223D9CFA0](v5);
      if (v7)
      {
        v8 = OUTLINED_FUNCTION_21_7();
      }

      else
      {
        OUTLINED_FUNCTION_22_9();
        v8 = MEMORY[0x223D9CFA0](v6);
      }

      OUTLINED_FUNCTION_28_7(v8, v9, v10, v11, v12, v13, v14, v15, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10], v36[11], v36[12], v36[13], v36[14], v36[15], v36[16], v36[17], v36[18], v36[19], v36[20], v36[21], v36[22]);
      sub_220FBC42C(a1);
      break;
  }
}

uint64_t sub_220F1856C()
{
  sub_220FC3A40();
  sub_220F1835C(v1);
  return sub_220FC3A90();
}

uint64_t sub_220F185AC()
{
  OUTLINED_FUNCTION_30_4();
  v2 = *(v1 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x223D9CFD0](*&v2);
  MEMORY[0x223D9CFA0](*(v1 + 16));
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  MEMORY[0x223D9CFA0](*(v1 + 24));
  MEMORY[0x223D9CFA0](v3);
  if (v5)
  {
    OUTLINED_FUNCTION_21_7();
  }

  else
  {
    OUTLINED_FUNCTION_22_9();
    MEMORY[0x223D9CFA0](v4);
  }

  memcpy(v8, (v1 + 56), sizeof(v8));
  sub_220FBC42C(v0);
  if (*(v1 + 160) == 1)
  {
    return OUTLINED_FUNCTION_21_7();
  }

  v7 = *(v1 + 152);
  OUTLINED_FUNCTION_22_9();
  return MEMORY[0x223D9CFA0](v7);
}

uint64_t sub_220F18674()
{
  sub_220FC3A40();
  sub_220F185AC();
  return sub_220FC3A90();
}

uint64_t sub_220F186B4()
{
  OUTLINED_FUNCTION_30_4();
  MEMORY[0x223D9CFA0](*(v1 + 8));
  if (*(v1 + 24) == 1)
  {
    OUTLINED_FUNCTION_21_7();
  }

  else
  {
    v2 = *(v1 + 16);
    OUTLINED_FUNCTION_22_9();
    MEMORY[0x223D9CFA0](v2);
  }

  memcpy(v4, (v1 + 32), sizeof(v4));
  return sub_220FBC42C(v0);
}

uint64_t sub_220F1872C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](v1);
  MEMORY[0x223D9CFA0](v2);
  sub_220FC3A60();
  if (v4 != 1)
  {
    MEMORY[0x223D9CFA0](v3);
  }

  memcpy(__dst, v0 + 4, sizeof(__dst));
  sub_220FBC42C(v6);
  return sub_220FC3A90();
}

uint64_t sub_220F187F0(uint64_t a1)
{
  sub_220FC3A40();
  sub_220F1835C(v2);
  return sub_220FC3A90();
}

uint64_t sub_220F18834(uint64_t a1)
{
  sub_220FC3A40();
  sub_220F185AC();
  return sub_220FC3A90();
}

uint64_t sub_220F18878(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 24);
  memcpy(__dst, v1 + 4, sizeof(__dst));
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](v2);
  MEMORY[0x223D9CFA0](v3);
  sub_220FC3A60();
  if (v5 != 1)
  {
    MEMORY[0x223D9CFA0](v4);
  }

  sub_220FBC42C(v7);
  return sub_220FC3A90();
}

uint64_t sub_220F18930@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = sub_220E435CC(__dst);
  sub_220E22B0C(__dst);
  v4 = 0xEA00000000007974;
  v5 = 0x696C617551726961;
  switch(v3)
  {
    case 1:
      v4 = 0x8000000220FDD3D0;
      v5 = 0xD000000000000012;
      break;
    case 2:
      v4 = 0x8000000220FDD460;
      v5 = 0xD000000000000015;
      break;
    case 3:
      v4 = 0xEB00000000657275;
      v5 = 0x74617265706D6574;
      break;
    case 4:
      v4 = 0xE400000000000000;
      v5 = 1684957559;
      break;
    default:
      break;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90, &qword_220FC8F20);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_220FC8E30;
  *(v6 + 32) = 1701869940;
  *(v6 + 40) = 0xE400000000000000;
  *(v6 + 72) = MEMORY[0x277D837D0];
  *(v6 + 48) = v5;
  *(v6 + 56) = v4;
  sub_220FC2600();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE08, &qword_220FD3CE8);
  a1[4] = sub_220E5D7E8(&qword_2812C5F90, &qword_27CF9EE08, &qword_220FD3CE8);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_220FC12A0();
}

uint64_t sub_220F18B0C(uint64_t a1)
{
  sub_220F1AC58();

  return sub_220FC1290();
}

uint64_t sub_220F18B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90, &qword_220FC8F20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E10;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v13 = a2;

  sub_220F9DA88(v9);
  v10 = MEMORY[0x277D837D0];
  *(inited + 48) = a1;
  *(inited + 56) = v13;
  OUTLINED_FUNCTION_25_0();
  *(inited + 72) = v10;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = v11;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE10, &qword_220FD3D10);
  *(inited + 96) = a3;
  sub_220FC2600();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE18, &qword_220FD3D18);
  a4[4] = sub_220E5D7E8(&qword_27CF9EE20, &qword_27CF9EE18, &qword_220FD3D18);
  __swift_allocate_boxed_opaque_existential_1(a4);
  return sub_220FC12A0();
}

uint64_t sub_220F18CDC(uint64_t a1)
{
  sub_220F1ACAC();

  return sub_220FC1290();
}

void sub_220F18D18(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  sub_220F3C91C(a2, a3, a4, a5, a6, a7, a8, a9, v11, __src[0], SWORD2(__src[0]), SBYTE6(__src[0]), SHIBYTE(__src[0]));
  if (!v9)
  {
    memcpy(a1, __src, 0xB8uLL);
  }
}

void sub_220F18DB8(void *a1@<X8>)
{
  sub_220F3CFC4();
  if (!v1)
  {
    memcpy(a1, v3, 0x80uLL);
  }
}

void sub_220F18E58(void *a1@<X8>)
{
  sub_220F3D1AC();
  if (!v1)
  {
    memcpy(a1, __src, 0xA1uLL);
  }
}

unint64_t sub_220F18F2C()
{
  result = qword_27CF9EDD8;
  if (!qword_27CF9EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EDD8);
  }

  return result;
}

unint64_t sub_220F18F88()
{
  result = qword_27CF9EDE0;
  if (!qword_27CF9EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EDE0);
  }

  return result;
}

unint64_t sub_220F18FE0()
{
  result = qword_27CF9EDE8;
  if (!qword_27CF9EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EDE8);
  }

  return result;
}

unint64_t sub_220F19038()
{
  result = qword_27CF9EDF0;
  if (!qword_27CF9EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EDF0);
  }

  return result;
}

unint64_t sub_220F1908C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  sub_220FC3A40();
  WeatherMapDisplayMode.hash(into:)(v10);
  v8 = sub_220FC3A90();

  return sub_220F197BC(a1, a2, a3, a4, v8);
}

unint64_t sub_220F1914C()
{
  sub_220FC0EA0();
  sub_220F1AD68(&qword_2812CA0A8, MEMORY[0x277D7AAD0]);
  sub_220FC2640();
  v0 = OUTLINED_FUNCTION_24_9();

  return sub_220F19950(v0, v1);
}

unint64_t sub_220F191E0(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_16_9();
  sub_220F163B4(v4, v1);
  v2 = sub_220FC3A90();

  return sub_220F19B0C(v1, v2);
}

unint64_t sub_220F19244(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  OUTLINED_FUNCTION_16_9();
  sub_220EEBB30(a4, v10, a1, a2, a3);
  v8 = sub_220FC3A90();

  return sub_220F19C8C(a1, a2, a3, v8, a4);
}

unint64_t sub_220F192DC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  sub_220FC3A40();
  sub_220EEBB30(v4, v9, v1, v2, v3);
  MEMORY[0x223D9CFA0](v5);
  sub_220FC3A90();
  v6 = OUTLINED_FUNCTION_23_8();

  return sub_220F19D84(v6, v7);
}

unint64_t sub_220F1937C()
{
  OUTLINED_FUNCTION_12_14();
  MEMORY[0x223D9CFA0](v0);
  sub_220FC3A90();
  v1 = OUTLINED_FUNCTION_23_8();

  return sub_220F19E28(v1, v2);
}

unint64_t sub_220F193D4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_9();
  sub_220EA1580(v6, a1, a2 & 0xFFFFFFFFFFLL);
  v4 = sub_220FC3A90();

  return sub_220F19E88(a1, a2 & 0xFFFFFFFFFFLL, v4);
}

unint64_t sub_220F19444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  OUTLINED_FUNCTION_16_9();
  sub_220FC27D0();
  if ((v5 - 3) >= 3u)
  {
    MEMORY[0x223D9CFA0](1);
    v8 = v5;
  }

  else
  {
    v8 = qword_220FD3D78[(v5 - 3)];
  }

  MEMORY[0x223D9CFA0](v8);
  MEMORY[0x223D9CFA0](a4);
  v9 = sub_220FC3A90();

  return sub_220F19F3C(a1, a2, v5, a4, v9);
}

unint64_t sub_220F19514()
{
  sub_220FC3520();
  v0 = OUTLINED_FUNCTION_24_9();

  return sub_220F1A068(v0, v1);
}

unint64_t sub_220F19554(char a1)
{
  OUTLINED_FUNCTION_16_9();
  MEMORY[0x223D9CFA0](a1 & 1);
  v2 = sub_220FC3A90();
  return sub_220F1A12C(a1 & 1, v2);
}

unint64_t sub_220F195B4(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_16_9();
  MEMORY[0x223D9CFA0](v1);
  v2 = sub_220FC3A90();
  return sub_220F1A190(v1, v2);
}

unint64_t sub_220F19614()
{
  OUTLINED_FUNCTION_12_14();
  sub_220EBDBFC();
  sub_220FC3A90();
  v0 = OUTLINED_FUNCTION_23_8();

  return sub_220F1A1F0(v0, v1);
}

unint64_t sub_220F1966C()
{
  OUTLINED_FUNCTION_12_14();
  sub_220EB33C0(v4, v0);
  sub_220FC3A90();
  v1 = OUTLINED_FUNCTION_23_8();

  return sub_220F1A324(v1, v2);
}

unint64_t sub_220F196C4()
{
  sub_220FC3240();
  v0 = OUTLINED_FUNCTION_24_9();

  return sub_220F1A3D8(v0, v1);
}

uint64_t sub_220F19730(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_16_9();
  a3(v10, a1, a2);
  v7 = sub_220FC3A90();

  return a4(a1, a2, v7);
}

unint64_t sub_220F197BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = -1 << *(v5 + 32);
  result = a5 & ~v7;
  if ((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v9 = ~v7;
    v10 = *&a1;
    do
    {
      v11 = *(v5 + 48) + 32 * result;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      if (v14 < 0)
      {
        if (a3 < 0)
        {
          if (LOBYTE(v13))
          {
            if (a2)
            {
              return result;
            }
          }

          else if (!(a2 & 1 | (v12 != v10)))
          {
            return result;
          }
        }
      }

      else if ((a3 & 0x8000000000000000) == 0)
      {
        v15 = *(v11 + 24);
        if (v14)
        {
          if ((a3 & (v15 == *&a4)) != 0)
          {
            return result;
          }
        }

        else if ((a3 & 1) == 0)
        {
          v16 = v12 == v10 && v13 == *&a2;
          if (v16 && v15 == *&a4)
          {
            return result;
          }
        }
      }

      result = (result + 1) & v9;
    }

    while (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_220F1989C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_220FC3940() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_220F19950(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v4 = sub_220FC0EA0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2 + 64;
  v14 = ~(-1 << *(v2 + 32));
  for (i = a2 & v14; ((1 << i) & *(v16 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v14)
  {
    (*(v5 + 16))(v9, *(v2 + 48) + *(v5 + 72) * i, v4, v7);
    sub_220F1AD68(&qword_2812CA0A0, MEMORY[0x277D7AAD0]);
    v11 = sub_220FC26B0();
    (*(v5 + 8))(v9, v4);
    if (v11)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_220F19B0C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE300000000000000;
      v8 = 5000257;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE100000000000000;
          v8 = 67;
          break;
        case 2:
          v7 = 0xE100000000000000;
          v8 = 70;
          break;
        case 3:
          v7 = 0xE100000000000000;
          v8 = 75;
          break;
        default:
          break;
      }

      v9 = 0xE300000000000000;
      v10 = 5000257;
      switch(a1)
      {
        case 1:
          v9 = 0xE100000000000000;
          v10 = 67;
          break;
        case 2:
          v9 = 0xE100000000000000;
          v10 = 70;
          break;
        case 3:
          v9 = 0xE100000000000000;
          v10 = 75;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_220FC3940();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_220F19C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v7 = -1 << *(v5 + 32);
  result = a4 & ~v7;
  if ((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v9 = ~v7;
    do
    {
      v10 = *(v5 + 48) + 32 * result;
      v11 = *(v10 + 24);
      v14 = *v10 == a1 && *(v10 + 8) == a2 && *(v10 + 16) == a3;
      if (v11 != a5)
      {
        v14 = 0;
      }

      if (v14)
      {
        break;
      }

      result = (result + 1) & v9;
    }

    while (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_220F19D1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E5D0, &qword_220FD08D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_220F19D84(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 40 * result;
      v10 = *v7 == *a1 && *(v7 + 8) == *(a1 + 8) && *(v7 + 16) == *(a1 + 16) && *(v7 + 24) == *(a1 + 24);
      if (v10 && *(v7 + 32) == *(a1 + 32))
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_220F19E28(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_220F19E88(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v10 = *v9;
      v11 = *(v9 + 12);
      v12 = *(v9 + 8);
      v13 = v12 | (v11 << 32);
      if (v13 < 0)
      {
        if ((a2 & 0x8000000000) == 0 || v10 != v8)
        {
          goto LABEL_14;
        }

        if ((v13 & 0x100000000) != 0)
        {
LABEL_13:
          if ((a2 & 0x100000000) != 0)
          {
            return result;
          }

          goto LABEL_14;
        }
      }

      else
      {
        if ((a2 & 0x8000000000) != 0 || v10 != v8)
        {
          goto LABEL_14;
        }

        if ((v13 & 0x100000000) != 0)
        {
          goto LABEL_13;
        }
      }

      if ((a2 & 0x100000000) == 0 && v12 == a2)
      {
        return result;
      }

LABEL_14:
      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_220F19F3C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v12 = a3;
    v13 = ~v7;
    v14 = *(v5 + 48);
    v22 = a3 - 3;
    do
    {
      v15 = v14 + 32 * v8;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      v18 = *v15 == a1 && *(v15 + 8) == a2;
      if (v18 || (sub_220FC3940() & 1) != 0)
      {
        switch(v16)
        {
          case 5:
            v19 = v12 == 5;
            break;
          case 4:
            v19 = v12 == 4;
            break;
          case 3:
            v19 = v12 == 3;
            break;
          default:
            v19 = v22 >= 3 && v16 == v12;
            break;
        }

        if (v19 && v17 == a4)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_220F1A068(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_220F1ADAC(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x223D9CA80](v8, a1);
    sub_220E81E90(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_220F1A12C(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

unint64_t sub_220F1A190(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_220F1A1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnapshotManager.Options.Key(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = ~(-1 << *(v2 + 32));
  for (i = a2 & v9; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    sub_220E98A04(*(v2 + 48) + *(v5 + 72) * i, v8);
    sub_220EBDE54();
    v12 = v11;
    sub_220E98A68(v8);
    if (v12)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_220F1A324(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 48 * result;
      v10 = *v7 == *a1 && *(v7 + 8) == *(a1 + 8) && *(v7 + 16) == *(a1 + 16) && *(v7 + 24) == *(a1 + 24);
      if (v10 && *(v7 + 32) == *(a1 + 32) && *(v7 + 40) == *(a1 + 40))
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_220F1A3D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    type metadata accessor for WeatherMapAnnotationView(0);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_220FC3250();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_220F1A498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    v9 = a2 - 2;
    while (2)
    {
      v10 = (*(v3 + 48) + 16 * v5);
      v11 = v10[1];
      switch(v11)
      {
        case 2:
          if (a2 != 2)
          {
            goto LABEL_21;
          }

          break;
        case 3:
          if (a2 != 3)
          {
            goto LABEL_21;
          }

          break;
        case 4:
          if (a2 != 4)
          {
            goto LABEL_21;
          }

          break;
        case 5:
          if (a2 != 5)
          {
            goto LABEL_21;
          }

          break;
        case 6:
          if (a2 != 6)
          {
            goto LABEL_21;
          }

          break;
        default:
          if (v9 >= 5)
          {
            if (v11 == 1)
            {
              if (a2 == 1)
              {
                return v5;
              }
            }

            else if (a2 == 1)
            {
              sub_220EA10E4(a1, 1);
            }

            else
            {
              v12 = *v10;
              sub_220EE8D08(*v10, v10[1]);
              sub_220EE8D08(a1, a2);
              v13 = sub_220FC0C10();
              sub_220E5E3BC(v12, v11);
              sub_220E5E3BC(a1, a2);
              if (v13)
              {
                return v5;
              }
            }
          }

LABEL_21:
          v5 = (v5 + 1) & v8;
          if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
          {
            continue;
          }

          break;
      }

      break;
    }
  }

  return v5;
}

void sub_220F1A630(const void *a1, uint64_t a2)
{
  v38 = a1;
  v42 = sub_220FC0EA0();
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v4);
  v40 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EDF8, &qword_220FD3CE0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v32 - v12;
  v14 = *(a2 + 64);
  v39 = a2 + 64;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v32[0] = (v15 + 63) >> 6;
  v32[1] = v3 + 16;
  v41 = (v3 + 32);
  v35 = v3;
  v36 = a2;
  v37 = (v3 + 8);

  v18 = 0;
  v19 = 0;
  v33 = v13;
  v34 = v9;
  while (1)
  {
    v43 = v18;
    if (!v17)
    {
      break;
    }

    v20 = v19;
LABEL_10:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = v21 | (v20 << 6);
    v23 = v35;
    v24 = v36;
    (*(v35 + 16))(v40, *(v36 + 48) + *(v35 + 72) * v22, v42);
    memcpy(v45, (*(v24 + 56) + 96 * v22), sizeof(v45));
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE00, &qword_220FD4840);
    v26 = *(v25 + 48);
    v9 = v34;
    (*(v23 + 32))();
    memcpy(&v9[v26], v45, 0x60uLL);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v25);
    sub_220E31B58(v45, &v44);
    v13 = v33;
LABEL_11:
    sub_220F1AD00(v9, v13, &qword_27CF9EDF8, &qword_220FD3CE0);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE00, &qword_220FD4840);
    if (__swift_getEnumTagSinglePayload(v13, 1, v27) == 1)
    {

      MEMORY[0x223D9CFA0](v43);
      return;
    }

    v28 = *(v27 + 48);
    v29 = v40;
    v30 = v42;
    (*v41)(v40, v13, v42);
    memcpy(__dst, &v13[v28], 0x60uLL);
    memcpy(v45, v38, 0x48uLL);
    sub_220F1AD68(&qword_2812CA0A8, MEMORY[0x277D7AAD0]);
    sub_220FC2650();
    (*v37)(v29, v30);
    sub_220FBC42C(v45);
    sub_220E31784(__dst);
    v18 = sub_220FC3A90() ^ v43;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v32[0])
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE00, &qword_220FD4840);
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v31);
      v17 = 0;
      goto LABEL_11;
    }

    v17 = *(v39 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_220F1AA54(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v7)
  {
LABEL_8:
    while (1)
    {
      memcpy(__dst, (*(a2 + 56) + 96 * (__clz(__rbit64(v7)) | (v10 << 6))), sizeof(__dst));
      v16 = __dst[1];
      v17 = __dst[0];
      v14 = __dst[5];
      v15 = __dst[3];
      v12 = __dst[4];
      v13 = __dst[2];
      sub_220E31B58(__dst, v18);
      if (!*(&v17 + 1))
      {
        break;
      }

      v7 &= v7 - 1;
      v20[0] = v17;
      v20[1] = v16;
      v20[2] = v13;
      v20[3] = v15;
      v20[4] = v12;
      v20[5] = v14;
      memcpy(__dst, a1, 0x48uLL);
      sub_220FC27D0();

      sub_220FBC42C(__dst);
      sub_220E31784(v20);
      v9 ^= sub_220FC3A90();
      if (!v7)
      {
        goto LABEL_4;
      }
    }

LABEL_11:

    MEMORY[0x223D9CFA0](v9);
  }

  else
  {
LABEL_4:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

unint64_t sub_220F1AC58()
{
  result = qword_2812C96E0;
  if (!qword_2812C96E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C96E0);
  }

  return result;
}

unint64_t sub_220F1ACAC()
{
  result = qword_27CF9EE28;
  if (!qword_27CF9EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EE28);
  }

  return result;
}

uint64_t sub_220F1AD00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_220F1AD68(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_24_9();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_19()
{
  *(v0 + 128) = *(v0 + 312);
  v2 = *(v0 + 296);
  *(v0 + 120) = *(v0 + 304);
  *(v0 + 64) = *(v0 + 280);
  *(v0 + 72) = v2;

  return sub_220E21C60(v0 + 208, v0 + 488);
}

uint64_t OUTLINED_FUNCTION_11_13(uint64_t a1)
{

  return sub_220FC3A40();
}

uint64_t OUTLINED_FUNCTION_16_9()
{

  return sub_220FC3A40();
}

uint64_t OUTLINED_FUNCTION_20_10()
{

  return sub_220E31B58(v0 + 488, v0 + 656);
}

uint64_t OUTLINED_FUNCTION_21_7()
{

  return sub_220FC3A60();
}

uint64_t OUTLINED_FUNCTION_22_9()
{

  return sub_220FC3A60();
}

void *OUTLINED_FUNCTION_28_7(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);

  return memcpy(va, ((v31 - 232) | 7), 0x60uLL);
}

void *OUTLINED_FUNCTION_29_7()
{

  return memcpy((v0 + 208), v1, 0xB8uLL);
}

uint64_t OUTLINED_FUNCTION_31_5()
{

  return sub_220FBB128(&STACK[0x248], v0 - 200);
}

void sub_220F1AFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_58();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = objc_allocWithZone(MEMORY[0x277D75D40]);

  v10 = sub_220F0915C(sub_220E451F0, v8, 0.25, 0.25, 0.0, 0.75, 1.0);
  OUTLINED_FUNCTION_0_58();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v13[4] = sub_220F1B1C0;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_220F1B13C;
  v13[3] = &block_descriptor_17;
  v12 = _Block_copy(v13);
  sub_220E1AADC(a3, a4);

  [v10 addCompletion_];
  _Block_release(v12);
  [v10 startAnimation];
}

double sub_220F1B13C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_220F1B1C0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

double block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_220F1B208()
{
  sub_220E31740();
  result = sub_220EA7EBC(0x6E69547373616C47, 0xE900000000000074);
  qword_27CF9EE40 = result;
  return result;
}

double sub_220F1B254(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC11WeatherMaps12ScrubberView_barView) + OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_220F1B2D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11WeatherMaps12ScrubberView_barView);
  v4 = OBJC_IVAR____TtC11WeatherMaps24MapScrubberOverlayUIView_model;
  swift_beginAccess();
  return sub_220F1C1C8(v3 + v4, a1);
}

uint64_t sub_220F1B338(uint64_t a1)
{
  v2 = type metadata accessor for MapScrubberOverlayViewModel(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  sub_220F1C1C8(a1, v5 - v4);
  sub_220E353B4(v6);
  return sub_220F1C16C(a1);
}

uint64_t sub_220F1B3C8(uint64_t a1)
{
  sub_220FC02B0();
  OUTLINED_FUNCTION_1_51();
  v4 = v3;
  MEMORY[0x28223BE20](v5, v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  (*(v4 + 16))(v8 - v7, a1, v1);
  sub_220E33F28(v9);
  return (*(v4 + 8))(a1, v1);
}

char *sub_220F1B4A8(uint64_t a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_220FC1920();
  MEMORY[0x28223BE20](v5 - 8, v6);
  OUTLINED_FUNCTION_3();
  sub_220FC1950();
  OUTLINED_FUNCTION_1_51();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v37 - v15;
  v17 = sub_220FC2300();
  v18 = 40.0;
  if ((v17 & 1) == 0)
  {
    v18 = 16.0;
  }

  v19 = OBJC_IVAR____TtC11WeatherMaps12ScrubberView_cornerRadius;
  *&v1[OBJC_IVAR____TtC11WeatherMaps12ScrubberView_cornerRadius] = v18;
  v39 = a1;
  if (a1)
  {

    v20 = sub_220FC2300();
    if (v20)
    {
      v21 = *&v1[v19];
    }

    else
    {
      v21 = 0;
    }

    v25 = sub_220E3D488(v21, (v20 & 1) == 0);
  }

  else
  {
    if (sub_220FC2300())
    {
      v22 = 4;
    }

    else
    {
      v22 = 1;
    }

    v23 = sub_220FC2300();
    if (v23)
    {
      v24 = *&v3[v19];
    }

    else
    {
      v24 = 0;
    }

    v26 = objc_allocWithZone(type metadata accessor for BackgroundEffectView());
    v25 = sub_220FADE6C(v22, 0, 0, v24, (v23 & 1) == 0);
  }

  *&v3[OBJC_IVAR____TtC11WeatherMaps12ScrubberView_backgroundEffectView] = v25;
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  v27 = *&v3[OBJC_IVAR____TtC11WeatherMaps12ScrubberView_backgroundEffectView];
  *&v27[OBJC_IVAR____TtC11WeatherMaps20BackgroundEffectView_cornerRadius] = *&v3[v19];
  v28 = v27;
  sub_220FADAEC();

  v29 = [objc_allocWithZone(type metadata accessor for MapScrubberOverlayUIView(0)) init];
  *&v3[OBJC_IVAR____TtC11WeatherMaps12ScrubberView_barView] = v29;
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  v41.receiver = v3;
  v41.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v41, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_220FC1910();
  sub_220FC1960();
  if (qword_27CF9C0D8 != -1)
  {
    swift_once();
  }

  sub_220FC1930();
  v31 = *(v8 + 8);
  v31(v12, v2);
  v40[3] = v2;
  v40[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v40);
  sub_220FC1940();
  v31(v16, v2);
  sub_220FC31B0();

  if (!DeviceSupportsMapsControlEffects())
  {
    v35 = [objc_opt_self() tertiarySystemBackgroundColor];
    [v30 setBackgroundColor_];
    goto LABEL_21;
  }

  if ((sub_220FC2300() & 1) == 0)
  {
    [v30 addSubview_];
    v32 = [v30 layer];
    v33 = [objc_opt_self() whiteColor];
    v34 = [v33 colorWithAlphaComponent_];

    v35 = [v34 CGColor];
    [v32 setBackgroundColor_];

LABEL_21:
  }

  [v30 addSubview_];
  sub_220F1B924();

  return v30;
}

void sub_220F1B924()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE60, &qword_220FD3DB8);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE68, &qword_220FD8700);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v27 - v7;
  if (sub_220FC2300())
  {
    sub_220FC18B0();
    v9 = sub_220FC18C0();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v9);
    sub_220FC18D0();
    sub_220F1C22C(v4);
    v10 = sub_220FC18E0();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
    sub_220FC31E0();
  }

  else
  {
    v11 = [v0 layer];
    [v11 setBorderWidth_];

    v12 = [v0 layer];
    v13 = objc_opt_self();
    v14 = [v13 blackColor];
    v15 = [v14 colorWithAlphaComponent_];

    v16 = [v15 CGColor];
    [v12 setBorderColor_];

    v17 = [v0 layer];
    [v17 setCornerRadius_];

    v18 = [v0 layer];
    [v18 setCornerCurve_];

    v19 = [v0 layer];
    v20 = [v13 blackColor];
    v21 = [v20 colorWithAlphaComponent_];

    v22 = [v21 CGColor];
    [v19 setShadowColor_];

    v23 = [v0 layer];
    [v23 setShadowOffset_];

    v24 = [v0 layer];
    LODWORD(v25) = 1.0;
    [v24 setShadowOpacity_];

    v28 = [v0 layer];
    [v28 setShadowRadius_];
    v26 = v28;
  }
}

void sub_220F1BCE4(uint64_t a1)
{
  v2 = sub_220FC2300();
  v3 = 40.0;
  if ((v2 & 1) == 0)
  {
    v3 = 16.0;
  }

  *(v1 + OBJC_IVAR____TtC11WeatherMaps12ScrubberView_cornerRadius) = v3;
  sub_220FC3740();
  __break(1u);
}

void sub_220F1BD80()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  [v0 bounds];
  sub_220F1BEB8(v1, v2);
  if ((sub_220FC2300() & 1) == 0)
  {
    v3 = [v0 layer];
    [v0 bounds];
    v8 = [objc_opt_self() bezierPathWithRoundedRect:v4 cornerRadius:{v5, v6, v7, *&v0[OBJC_IVAR____TtC11WeatherMaps12ScrubberView_cornerRadius]}];
    v9 = [v8 CGPath];

    [v3 setShadowPath_];
  }
}

id sub_220F1BEB8(double a1, double a2)
{
  [*(v2 + OBJC_IVAR____TtC11WeatherMaps12ScrubberView_backgroundEffectView) setFrame_];
  v5 = *(v2 + OBJC_IVAR____TtC11WeatherMaps12ScrubberView_barView);

  return [v5 setFrame_];
}

void sub_220F1BF84()
{
  v0 = type metadata accessor for MapScrubberOverlayViewModel(0);
  MEMORY[0x28223BE20](v0, v1);
  OUTLINED_FUNCTION_3();
  v4 = v3 - v2;
  sub_220F1B2D0(v3 - v2);
  swift_getEnumCaseMultiPayload();
  sub_220F1C16C(v4);
  sub_220E378A4();
}

uint64_t sub_220F1C16C(uint64_t a1)
{
  v2 = type metadata accessor for MapScrubberOverlayViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220F1C1C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapScrubberOverlayViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F1C22C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EE60, &qword_220FD3DB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220F1C2AC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 128);
  if (v3 == 2)
  {
    if (qword_2812CA198 != -1)
    {
      swift_once();
    }

    sub_220F1F444(qword_2812C61C8, a2, type metadata accessor for MapLocationAccessibilityModelManager, &protocol conformance descriptor for MapLocationAccessibilityModelManager);
    sub_220FC0A00();
    LOBYTE(v3) = v5;
    *(v2 + 128) = v5;
  }

  return v3 & 1;
}

uint64_t sub_220F1C3B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = a1[3];
  v12 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15);
  v19 = a5(v17, a2, a3, a4, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v19;
}

double sub_220F1C4BC()
{
  v23 = sub_220FC0E70();
  OUTLINED_FUNCTION_1_4();
  v2 = v1;
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = sub_220FC0CA0();
  OUTLINED_FUNCTION_1_4();
  v10 = v9;
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  if (qword_2812C7508 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));

  sub_220FC0F40();
  sub_220FC0C90();
  (*(v10 + 8))(v15, v8);
  sub_220FC0E50();
  v16 = (*(v2 + 8))(v7, v23);
  sub_220F1C2AC(v16, v17);
  sub_220EDDC58();
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v18 = sub_220FC17A0();
  __swift_project_value_buffer(v18, qword_2812C5ED0);

  v19 = sub_220FC1780();
  v20 = sub_220FC2E30();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = sub_220EDDBD8() & 1;

    _os_log_impl(&dword_220E15000, v19, v20, "Enable map location accessibility models: %{BOOL}d", v21, 8u);
    MEMORY[0x223D9DDF0](v21, -1, -1);
  }

  else
  {
  }

  return result;
}

uint64_t MapLocationAccessibilityModelManager.accessibilityModel(for:overlayDescriptionKey:qos:)(void *a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  type metadata accessor for MapLocationAccessibilityModel(0);
  v6 = a1;
  v7 = sub_220FC1550();

  return v7;
}

uint64_t sub_220F1C878(uint64_t a1, uint64_t a2, char a3)
{
  sub_220FC2D50();
  v3 = sub_220FC1260();

  return v3;
}

uint64_t sub_220F1C948(uint64_t a1, char *a2)
{
  if (qword_2812C7508 != -1)
  {
    swift_once();
  }

  v2 = sub_220EDDBD8();

  if (v2)
  {
    swift_allocObject();
    v3 = swift_weakInit();
    MEMORY[0x28223BE20](v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EEA0, &unk_220FD3EF0);
    swift_allocObject();
    v5 = sub_220FC1530();

    return v5;
  }

  else
  {
    sub_220F1F054();
    swift_allocError();
    *v7 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EEA0, &unk_220FD3EF0);
    swift_allocObject();
    return sub_220FC14D0();
  }
}

void sub_220F1CAD8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, char a6, void *a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90, &unk_220FC9CE0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v27 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = *(Strong + 120);

    v21 = v20;
    sub_220FC30A0();

    v22 = sub_220FC2AE0();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v22);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = a6;
    *(v23 + 40) = v19;
    *(v23 + 48) = a7;
    *(v23 + 56) = sub_220F1F0B8;
    *(v23 + 64) = v17;
    *(v23 + 72) = a3;
    *(v23 + 80) = a4;

    v24 = a7;

    sub_220F9BB1C(0, 0, v16, &unk_220FD3F08, v23);
  }

  else
  {

    sub_220F1F054();
    v25 = swift_allocError();
    *v26 = 1;
    a3();
  }
}

uint64_t sub_220F1CCD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v19;
  *(v8 + 112) = v20;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 480) = a4;
  v9 = sub_220FC2340();
  *(v8 + 120) = v9;
  *(v8 + 128) = *(v9 - 8);
  *(v8 + 136) = swift_task_alloc();
  v10 = sub_220FC2390();
  *(v8 + 144) = v10;
  *(v8 + 152) = *(v10 - 8);
  *(v8 + 160) = swift_task_alloc();
  v11 = type metadata accessor for MapLocationAccessibilityModelManager.WeatherRequestRepsonse(0);
  *(v8 + 168) = v11;
  v12 = *(v11 - 8);
  *(v8 + 176) = v12;
  *(v8 + 184) = *(v12 + 64);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EEA8, &qword_220FD3F10);
  *(v8 + 208) = v13;
  *(v8 + 216) = *(v13 - 8);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  v14 = sub_220FC02B0();
  *(v8 + 240) = v14;
  *(v8 + 248) = *(v14 - 8);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EEB0, &qword_220FD3F18);
  *(v8 + 280) = v15;
  *(v8 + 288) = *(v15 - 8);
  *(v8 + 296) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EEB8, &unk_220FD3F20);
  *(v8 + 304) = v16;
  *(v8 + 312) = *(v16 - 8);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D058, &unk_220FC9CB0);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EA58, &unk_220FD3F30);
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EA50, &qword_220FD23A8);
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220F1D10C, 0, 0);
}

uint64_t sub_220F1D10C(uint64_t a1)
{
  switch(*(v1 + 480))
  {
    case 1:
      v14 = *(v1 + 264);
      v13 = *(v1 + 272);
      v16 = *(v1 + 248);
      v15 = *(v1 + 256);
      v17 = *(v1 + 240);
      sub_220FC0670();
      sub_220FC0670();
      sub_220FC01C0();
      v18 = *(v16 + 8);
      v18(v15, v17);
      sub_220FC06A0();
      v18(v14, v17);
      v18(v13, v17);
      v19 = swift_task_alloc();
      *(v1 + 408) = v19;
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E630, &unk_220FD0A20);
      *(v1 + 416) = v5;
      *v19 = v1;
      v19[1] = sub_220F1D524;
      v4 = *(v1 + 352);
      v6 = *(v1 + 296);
      v7 = *(v1 + 80);
      break;
    case 2:
      v8 = sub_220FC05E0();
      *(v1 + 432) = v8;
      sub_220FC0690();
      swift_task_alloc();
      OUTLINED_FUNCTION_18();
      *(v1 + 440) = v9;
      *v9 = v10;
      v9[1] = sub_220F1D674;
      v4 = *(v1 + 376);
      v6 = *(v1 + 232);
      goto LABEL_5;
    case 3:
      v8 = sub_220FC05E0();
      *(v1 + 456) = v8;
      sub_220FC0690();
      swift_task_alloc();
      OUTLINED_FUNCTION_18();
      *(v1 + 464) = v11;
      *v11 = v12;
      v11[1] = sub_220F1D7C4;
      v4 = *(v1 + 368);
      v6 = *(v1 + 224);
LABEL_5:
      v7 = *(v1 + 80);
      v5 = v8;
      break;
    default:
      sub_220FC0680();
      swift_task_alloc();
      OUTLINED_FUNCTION_18();
      *(v1 + 392) = v2;
      *v2 = v3;
      v2[1] = sub_220F1D3D4;
      v5 = *(v1 + 328);
      v4 = *(v1 + 336);
      v6 = *(v1 + 320);
      v7 = *(v1 + 80);
      break;
  }

  return MEMORY[0x282135630](v4, v7, v6, v5);
}

uint64_t sub_220F1D3D4()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 400) = v0;

  v7 = OUTLINED_FUNCTION_16_10();
  v8(v7);
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_220F1D524()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 424) = v0;

  v7 = OUTLINED_FUNCTION_16_10();
  v8(v7);
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_220F1D674()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 448) = v0;

  v7 = OUTLINED_FUNCTION_16_10();
  v8(v7);
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_220F1D7C4()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 472) = v0;

  v7 = OUTLINED_FUNCTION_16_10();
  v8(v7);
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_220F1E930(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void))
{
  v9 = a1[13];
  v10 = a1[14];
  __swift_project_boxed_opaque_existential_1(a1 + 10, v9);
  v12 = a4;
  v11 = (*(v10 + 8))(a2, a3, &v12, v9, v10);
  a5();
}

uint64_t MapLocationAccessibilityModelManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 80));

  return v0;
}

uint64_t MapLocationAccessibilityModelManager.__deallocating_deinit()
{
  MapLocationAccessibilityModelManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 129, 7);
}

uint64_t sub_220F1EA88(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  (*(v13 + 16))(v15, a1, a6);
  v17 = sub_220F1EBC0(v15, a2, a3, a4, v16, a6, a7);
  (*(v13 + 8))(a1, a6);
  return v17;
}

uint64_t sub_220F1EBC0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_220FC12D0();
  MEMORY[0x28223BE20](v14, v15);
  v20[3] = a6;
  v20[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  sub_220F1F444(&qword_2812C5F40, 255, MEMORY[0x277D6CD10], MEMORY[0x277D6CD18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D520, &unk_220FCAE60);
  sub_220E1A244(&qword_2812C5D90, &qword_27CF9D520, &unk_220FCAE60);
  sub_220FC3430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D528, &qword_220FD3F40);
  swift_allocObject();
  *(a5 + 56) = sub_220FC1250();
  *(a5 + 120) = dispatch_semaphore_create(5);
  *(a5 + 128) = 2;
  sub_220E1E2A8(v20, a5 + 80);
  *(a5 + 72) = a2;
  sub_220E1E2A8(a3, a5 + 16);
  if (a4)
  {

    v17 = a4;
  }

  else
  {
    sub_220E1AAEC();

    v17 = sub_220FC2F70();
  }

  *(a5 + 64) = v17;
  v18 = a4;
  sub_220F1C4BC();

  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(v20);
  return a5;
}

uint64_t type metadata accessor for MapLocationAccessibilityModelManager.WeatherRequestRepsonse(uint64_t a1)
{
  result = qword_27CF9EE70;
  if (!qword_27CF9EE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220F1EED0(uint64_t a1)
{
  sub_220F1EFF4(319, &qword_27CF9EE80, MEMORY[0x277CE3378]);
  if (v1 <= 0x3F)
  {
    sub_220F1EF90(319);
    if (v2 <= 0x3F)
    {
      sub_220F1EFF4(319, &qword_27CF9EE90, MEMORY[0x277CE31E0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_220F1EF90(uint64_t a1)
{
  if (!qword_27CF9EE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9E630, &unk_220FD0A20);
    v1 = sub_220FC33A0();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF9EE88);
    }
  }
}

void sub_220F1EFF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_220FC33A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_220F1F054()
{
  result = qword_27CF9EE98;
  if (!qword_27CF9EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9EE98);
  }

  return result;
}

uint64_t sub_220F1F0B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_220F1F0F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 48);
  v13 = *(v1 + 40);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_18();
  *(v2 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_220F1F1E0;

  return sub_220F1CCD8(a1, v4, v5, v9, v13, v6, v7, v8);
}

uint64_t sub_220F1F1E0()
{
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_32_0();

  return v3();
}

uint64_t sub_220F1F2C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapLocationAccessibilityModelManager.WeatherRequestRepsonse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_220F1F328()
{
  v1 = *(type metadata accessor for MapLocationAccessibilityModelManager.WeatherRequestRepsonse(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v5 + 8);

  sub_220F1E930(v4, v0 + v2, v6, v8, v7);
}

double block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_220F1F3E8(uint64_t a1)
{
  v2 = type metadata accessor for MapLocationAccessibilityModelManager.WeatherRequestRepsonse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220F1F444(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t get_enum_tag_for_layout_string_11WeatherMaps36MapLocationAccessibilityModelManagerC6ErrorsO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_220F1F4A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220F1F4F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_220F1F554(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_220FC3430();
}

uint64_t OUTLINED_FUNCTION_20_11(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_21_8()
{

  return sub_220EF6B7C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_22_10(uint64_t a1)
{

  return sub_220FC30B0();
}

id OUTLINED_FUNCTION_23_9(uint64_t a1, void *a2)
{
  *a2 = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_32_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_43_3(__n128 a1)
{

  return sub_220FC2350();
}

uint64_t OUTLINED_FUNCTION_44_4()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_45_5(unint64_t *a1)
{

  return sub_220E1A244(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_46_5()
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_48_4()
{

  return result;
}

uint64_t sub_220F1F7F4(uint64_t a1)
{
  sub_220F1F9B4(319, qword_2812C6C78, type metadata accessor for SonifierDataState.OverlayFrames);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_220F1F8B0(uint64_t a1)
{
  sub_220F1F9B4(319, &qword_2812CA010, type metadata accessor for WeatherMapOverlay);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_220F1F9B4(319, &qword_2812C5B00, type metadata accessor for MKMapRect);
      if (v3 <= 0x3F)
      {
        sub_220F1FA08();
        if (v4 <= 0x3F)
        {
          sub_220F1FA58(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_220F1F9B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_220FC33A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_220F1FA08()
{
  if (!qword_2812C5FB8)
  {
    v0 = sub_220FC33A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2812C5FB8);
    }
  }
}

void sub_220F1FA58(uint64_t a1)
{
  if (!qword_2812C5DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9EEC0, &unk_220FD4020);
    v1 = sub_220FC33A0();
    if (!v2)
    {
      atomic_store(v1, &qword_2812C5DB8);
    }
  }
}

uint64_t sub_220F1FAC8()
{
  v0 = type metadata accessor for SonifierDataState(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OUTLINED_FUNCTION_0_30();
  sub_220F1FF38(v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090, &qword_220FC9D10);
  switch(__swift_getEnumTagSinglePayload(v3, 3, v6))
  {
    case 1u:
      OUTLINED_FUNCTION_1_53();
      if (!v7)
      {
        OUTLINED_FUNCTION_1_0(&qword_2812C5B30);
      }

      goto LABEL_13;
    case 2u:
      OUTLINED_FUNCTION_1_53();
      if (!v7)
      {
        OUTLINED_FUNCTION_1_0(&qword_2812C5B30);
      }

      goto LABEL_13;
    case 3u:
      OUTLINED_FUNCTION_1_53();
      if (!v7)
      {
        OUTLINED_FUNCTION_1_0(&qword_2812C5B30);
      }

LABEL_13:
      v10 = OUTLINED_FUNCTION_3_32(qword_2812CE4B0);
      v9 = sub_220FBFF80();

      break;
    default:
      OUTLINED_FUNCTION_1_53();
      if (!v7)
      {
        OUTLINED_FUNCTION_1_0(&qword_2812C5B30);
      }

      v8 = OUTLINED_FUNCTION_3_32(qword_2812CE4B0);
      v9 = sub_220FBFF80();

      sub_220F1FF9C(v3);
      break;
  }

  return v9;
}

uint64_t sub_220F1FD44(uint64_t a1, double a2, double a3)
{
  result = type metadata accessor for SonifierDataState.OverlayFrames(0);
  v8 = *(v3 + *(result + 36));
  if (!v8)
  {
    v9 = 0;
    v10 = 1;
    return v9 | (v10 << 8);
  }

  v9 = 0;
  v10 = 1;
  if (a1 < 0 || *(v8 + 16) <= a1)
  {
    return v9 | (v10 << 8);
  }

  v11 = v8 + 16 * a1;
  v12 = *(v11 + 40);
  if (v12 >> 60 == 15)
  {
    v9 = 0;
    return v9 | (v10 << 8);
  }

  v13 = *(v3 + *(result + 20));
  if (v13 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_31;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v14 = a3 * v13;
  if ((a3 * v13) >> 64 != v14 >> 63)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v15 = v14 + a2;
  if (__OFADD__(v14, a2))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v16 = *(v11 + 32);
  v17 = OUTLINED_FUNCTION_0_30();
  sub_220E567FC(v17, v18);
  v19 = OUTLINED_FUNCTION_0_30();
  v20 = MEMORY[0x223D99670](v19);
  v10 = v15 >= v20;
  if (v15 >= v20)
  {
    v9 = 0;
LABEL_25:
    v22 = OUTLINED_FUNCTION_0_30();
    sub_220E56854(v22, v23);
    return v9 | (v10 << 8);
  }

  v21 = 0;
  switch(v12 >> 62)
  {
    case 1uLL:
      v21 = v16;
      break;
    case 2uLL:
      v21 = *(v16 + 16);
      break;
    default:
      break;
  }

  result = v21 + v15;
  if (!__OFADD__(v21, v15))
  {
    v9 = sub_220FC00F0();
    goto LABEL_25;
  }

LABEL_36:
  __break(1u);
  return result;
}