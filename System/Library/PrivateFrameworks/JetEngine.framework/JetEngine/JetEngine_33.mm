char *sub_1AB2B03EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439C80, &qword_1AB4E4DD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1AB2B053C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    v12 = MEMORY[0x1E69E7CC0];
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

char *sub_1AB2B0638(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43A0A0, &qword_1AB4E5010);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1AB2B0778(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439FA8, &qword_1AB4E4F80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 400);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[50 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 400 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439FB0, &qword_1AB4D8F68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AB2B0914(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43A090, &qword_1AB4E5008);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1AB2B0B30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A018, &qword_1AB4E4FC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AB2B0D78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439F70, &qword_1AB4E4F50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AB2B0EE8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439F50, &qword_1AB4D67A0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AB2B1080(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A110, &qword_1AB4E5048);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1AB2B13D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439DE0, &qword_1AB4E4E78);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1AB2B1578(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439CA0, &qword_1AB4E4DE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1AB2B1704(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439C58, &qword_1AB4E4DB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AB2B1850(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439C28, &qword_1AB4E4D98);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439C30, &qword_1AB4E0838);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AB2B19F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AD8, &qword_1AB4E4C80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1AB2B1B10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439B80, qword_1AB4E4CF0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1AB2B1C40(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AB8, &qword_1AB4E4C68);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AC0, &qword_1AB4E75C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1AB2B1D98(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AB461354();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v15 = *a2;
  v14 = a2[1];
  v23[3] = type metadata accessor for PreferenceKey(0, a4, v16, v17);
  v23[4] = &protocol witness table for PreferenceKey<A>;
  v23[0] = v15;
  v23[1] = v14;
  (*(v11 + 16))(v13, a1, v10);
  v18 = *(a4 - 8);
  if ((*(v18 + 48))(v13, 1, a4) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v21 = 0u;
    v22 = 0u;
  }

  else
  {
    *(&v22 + 1) = a4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v21);
    (*(v18 + 32))(boxed_opaque_existential_0, v13, a4);
  }

  return (*(a5 + 16))(&v21, v23, a3, a5);
}

double static AutomationSemantics.page(_:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3 && *(v3 + 16) && (v4 = sub_1AB014DB4(0x6570795465676170, 0xE800000000000000), (v5 & 1) != 0) && (sub_1AB0165C4(*(v3 + 56) + 32 * v4, v20), (swift_dynamicCast() & 1) != 0))
  {
    v6 = *(&v18 + 1);
    v7 = v18;
  }

  else
  {
    v6 = 0xE400000000000000;
    v7 = 1701273968;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90, &qword_1AB4D6A80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AB4D4720;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A0B0, &unk_1AB4D61F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  if (v3 && *(v3 + 16) && (v10 = sub_1AB014DB4(0x644965676170, 0xE600000000000000), (v11 & 1) != 0))
  {
    sub_1AB0165C4(*(v3 + 56) + 32 * v10, v20);
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  sub_1AB01522C(v20, &v18);
  if (v19)
  {
    sub_1AB014B78(&v18, v17);
    sub_1AB0165C4(v17, v16);
    v12 = _sSS9JetEngineE11_unwrappingSSyp_tcfC_0(v16);
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    sub_1AB0167A8(v20);
  }

  else
  {
    sub_1AB0167A8(v20);
    v12 = 0;
    v14 = 0;
  }

  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  *&v20[0] = v8;
  *(&v20[0] + 1) = MEMORY[0x1E69E7CC0];
  sub_1AB05ED60(inited);
  result = *v20;
  *a2 = v20[0];
  return result;
}

double static AutomationSemantics.page<A>(_:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v23[-2] - v9;
  (*(*(a2 + 8) + 8))(&v25, a1, v8);
  v11 = *(&v25 + 1);

  if (!v11)
  {
    goto LABEL_8;
  }

  if (!*(v11 + 16) || (v12 = sub_1AB014DB4(0x6570795465676170, 0xE800000000000000), (v13 & 1) == 0))
  {

LABEL_8:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_9;
  }

  sub_1AB0165C4(*(v11 + 56) + 32 * v12, &v27);

  if (!*(&v28 + 1))
  {
LABEL_9:
    sub_1AB0167A8(&v27);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v14 = *(&v25 + 1);
    v15 = v25;
    goto LABEL_11;
  }

LABEL_10:
  v14 = 0xE400000000000000;
  v15 = 1701273968;
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90, &qword_1AB4D6A80);
  v16 = swift_allocObject();
  v22 = xmmword_1AB4D4720;
  *(v16 + 16) = xmmword_1AB4D4720;
  *(v16 + 32) = v15;
  *(v16 + 40) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A0B0, &unk_1AB4D61F0);
  inited = swift_initStackObject();
  *(inited + 16) = v22;
  *&v27 = 0;
  *(&v27 + 1) = 0xE000000000000000;
  sub_1AB4615F4();
  sub_1AB461D64();
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  *(&v28 + 1) = MEMORY[0x1E69E6158];
  sub_1AB01522C(&v27, &v25);
  if (v26)
  {
    sub_1AB014B78(&v25, v24);
    sub_1AB0165C4(v24, v23);
    v18 = _sSS9JetEngineE11_unwrappingSSyp_tcfC_0(v23);
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    sub_1AB0167A8(&v27);
  }

  else
  {
    sub_1AB0167A8(&v27);
    v18 = 0;
    v20 = 0;
  }

  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v18;
  *(inited + 56) = v20;
  *&v27 = v16;
  *(&v27 + 1) = MEMORY[0x1E69E7CC0];
  sub_1AB05ED60(inited);
  result = *&v27;
  *a3 = v27;
  return result;
}

double static AutomationSemantics.pillButton(id:parentId:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A0B0, &unk_1AB4D61F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D47F0;
  sub_1AB01522C(a1, v18);
  sub_1AB01522C(v18, &v16);
  if (v17)
  {
    sub_1AB014B78(&v16, v15);
    sub_1AB0165C4(v15, v14);
    v7 = _sSS9JetEngineE11_unwrappingSSyp_tcfC_0(v14);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    sub_1AB0167A8(v18);
  }

  else
  {
    sub_1AB0167A8(v18);
    v7 = 0;
    v9 = 0;
  }

  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  sub_1AB01522C(a2, v18);
  sub_1AB01522C(v18, &v16);
  if (v17)
  {
    sub_1AB014B78(&v16, v15);
    sub_1AB0165C4(v15, v14);
    v10 = _sSS9JetEngineE11_unwrappingSSyp_tcfC_0(v14);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    sub_1AB0167A8(v18);
  }

  else
  {
    sub_1AB0167A8(v18);
    v10 = 0;
    v12 = 0;
  }

  *(inited + 64) = 0x6449746E65726170;
  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = v10;
  *(inited + 88) = v12;
  *&v18[0] = &unk_1F1FF3CD0;
  *(&v18[0] + 1) = MEMORY[0x1E69E7CC0];
  sub_1AB05ED60(inited);
  result = *v18;
  *a3 = v18[0];
  return result;
}

uint64_t sub_1AB2B2A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AB0B9254(a1, v9);
  v10 = a2;
  v7 = *(a4 + 8);

  return v7(v9, &v10, a3, a4);
}

uint64_t sub_1AB2B2AD4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1AB0B9254(a1, v8);
  v7 = v4;
  v5 = *(v3 + 16);

  return v5(v8, &v7, v2, v3);
}

uint64_t sub_1AB2B2B5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = Array<A>.init(tryDeserializing:using:)(a1, a2, *(a3 + 16), *(a4 - 8));
  *a5 = result;
  return result;
}

unint64_t AutomationSemantics.NowPlayingElement.rawValue.getter()
{
  result = 0x427373696D736964;
  switch(*v0)
  {
    case 1:
      return 0xD000000000000010;
    case 2:
      return 0x56746E65746E6F63;
    case 3:
      return 0x4D747865746E6F63;
    case 4:
      return 0x6B726F77747261;
    case 5:
      return 0x6F65646976;
    case 6:
      return 0x536B726F77747261;
    case 7:
      return 0x4D6B726F77747261;
    case 8:
      return 0x776F7262657965;
    case 9:
      return 0x656C746974;
    case 0xA:
      return 0x747369747261;
    case 0xB:
      return 0x72656469766F7270;
    case 0xC:
      return 0x656C746974627573;
    case 0xD:
      v3 = 1701998445;
      return v3 | 0x7474754200000000;
    case 0xE:
      return 0x6567646162;
    case 0xF:
      return 0x7375615079616C70;
    case 0x10:
      v3 = 1954047342;
      return v3 | 0x7474754200000000;
    case 0x11:
      return 0x73756F6976657270;
    case 0x12:
    case 0x37:
      return 0xD000000000000011;
    case 0x13:
      v4 = 0x646E69776572;
      return v4 & 0xFFFFFFFFFFFFLL | 0x7542000000000000;
    case 0x14:
    case 0x16:
      return 0xD000000000000018;
    case 0x15:
    case 0x18:
      return 0xD000000000000017;
    case 0x17:
      return 0xD000000000000016;
    case 0x19:
      return 0x6574756F72;
    case 0x1A:
    case 0x2B:
      return 0xD000000000000012;
    case 0x1B:
      return 0x6C53656D756C6F76;
    case 0x1C:
      return 0x6B63616279616C70;
    case 0x1D:
      v4 = 0x73636972796CLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x7542000000000000;
    case 0x1E:
      v4 = 0x7478654E7075;
      return v4 & 0xFFFFFFFFFFFFLL | 0x7542000000000000;
    case 0x1F:
      v2 = 9;
      goto LABEL_28;
    case 0x20:
      return 0xD000000000000013;
    case 0x21:
      v4 = 0x657A6F6F6E73;
      return v4 & 0xFFFFFFFFFFFFLL | 0x7542000000000000;
    case 0x22:
      return 0x6575517261656C63;
    case 0x23:
      return 0x517373696D736964;
    case 0x24:
      return 0x6575657571;
    case 0x25:
      return 0x6574496575657571;
    case 0x26:
      return 0xD000000000000010;
    case 0x27:
      return 0x42656C6666756873;
    case 0x28:
      v4 = 0x746165706572;
      return v4 & 0xFFFFFFFFFFFFLL | 0x7542000000000000;
    case 0x29:
      return 0x79616C506F747561;
    case 0x2A:
      return 0x7475427365746F6ELL;
    case 0x2C:
      return 0x73636972796CLL;
    case 0x2D:
      return 0x794C6465636E7973;
    case 0x2E:
      return 0x62614C6F69647561;
    case 0x2F:
      v3 = 1868983913;
      return v3 | 0x7474754200000000;
    case 0x30:
    case 0x34:
      return 0x776569566F666E69;
    case 0x31:
      v2 = 10;
      goto LABEL_28;
    case 0x32:
      v2 = 13;
LABEL_28:
      result = v2 | 0xD000000000000010;
      break;
    case 0x33:
      result = 0xD000000000000014;
      break;
    case 0x35:
      result = 0xD000000000000010;
      break;
    case 0x36:
      result = 0xD000000000000010;
      break;
    case 0x38:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static AutomationSemantics.nowPlaying(_:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[7];
  v8 = MEMORY[0x1E69E6158];
  if (*(v7 + 16) && (v9 = sub_1AB014DB4(0x6973736572706D69, 0xEE00657079546E6FLL), (v10 & 1) != 0) && (sub_1AB0165C4(*(v7 + 56) + 32 * v9, &v18), (swift_dynamicCast() & 1) != 0))
  {
    v11 = *(&v17[0] + 1);
    v12 = *&v17[0];
  }

  else
  {
    v11 = 0xE700000000000000;
    v12 = 0x636972656E6567;
  }

  v21 = v8;
  v18 = v6;
  v19 = v5;

  static AutomationSemantics.nowPlaying(name:id:)(v12, v11, &v18, &v22);

  sub_1AB0167A8(&v18);
  v13 = v22;
  if (v3)
  {
    v14 = MEMORY[0x1E69E6158];
  }

  else
  {
    v4 = 0;
    v14 = 0;
    v20 = 0;
  }

  v18 = v4;
  v19 = v3;
  v21 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A0B0, &unk_1AB4D61F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  sub_1AB01522C(&v18, v17);

  AutomationAttribute.init(key:value:)(0x6449746E65726170, 0xE800000000000000, v17, (inited + 32));
  v17[0] = v13;

  sub_1AB05ED60(inited);

  *a2 = v17[0];
  return sub_1AB0167A8(&v18);
}

double sub_1AB2B336C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0, &qword_1AB4D6B60);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AB4D4720;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *&v14 = a4;
  *(&v14 + 1) = MEMORY[0x1E69E7CC0];

  sub_1AB06F948(v10, sub_1AB06E6CC, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A0B0, &unk_1AB4D61F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  sub_1AB01522C(a3, v13);
  AutomationAttribute.init(key:value:)(25705, 0xE200000000000000, v13, (inited + 32));
  v13[0] = v14;
  sub_1AB05ED60(inited);
  result = *v13;
  *a5 = v13[0];
  return result;
}

uint64_t sub_1AB2B34C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v5 = a3();
  a4(v5);
}

unint64_t AutomationSemantics.MiniPlayerElement.rawValue.getter()
{
  result = 0x56746E65746E6F63;
  switch(*v0)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 0x6F65646976;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x656C746974627573;
      break;
    case 5:
      result = 0x7375615079616C70;
      break;
    case 6:
      result = 0x747475427478656ELL;
      break;
    case 7:
      result = 0x77726F4674736166;
      break;
    case 8:
    case 0xA:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 0xB:
      result = 0xD000000000000016;
      break;
    case 0xC:
      result = 0xD000000000000017;
      break;
    case 0xD:
      result = 0x6574756F72;
      break;
    case 0xE:
      result = 0x6C53656D756C6F76;
      break;
    case 0xF:
      result = 0x6B63616279616C70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AutomationSemantics.NowPlayingElement.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1AB461F64();

  v6 = 0;
  v7 = 39;
  switch(v4)
  {
    case 0:
      goto LABEL_53;
    case 1:
      v6 = 1;
      goto LABEL_53;
    case 2:
      v6 = 2;
      goto LABEL_53;
    case 3:
      v6 = 3;
      goto LABEL_53;
    case 4:
      v6 = 4;
      goto LABEL_53;
    case 5:
      v6 = 5;
      goto LABEL_53;
    case 6:
      v6 = 6;
      goto LABEL_53;
    case 7:
      v6 = 7;
      goto LABEL_53;
    case 8:
      v6 = 8;
      goto LABEL_53;
    case 9:
      v6 = 9;
      goto LABEL_53;
    case 10:
      v6 = 10;
      goto LABEL_53;
    case 11:
      v6 = 11;
      goto LABEL_53;
    case 12:
      v6 = 12;
      goto LABEL_53;
    case 13:
      v6 = 13;
      goto LABEL_53;
    case 14:
      v6 = 14;
      goto LABEL_53;
    case 15:
      v6 = 15;
      goto LABEL_53;
    case 16:
      v6 = 16;
      goto LABEL_53;
    case 17:
      v6 = 17;
      goto LABEL_53;
    case 18:
      v6 = 18;
      goto LABEL_53;
    case 19:
      v6 = 19;
      goto LABEL_53;
    case 20:
      v6 = 20;
      goto LABEL_53;
    case 21:
      v6 = 21;
      goto LABEL_53;
    case 22:
      v6 = 22;
      goto LABEL_53;
    case 23:
      v6 = 23;
      goto LABEL_53;
    case 24:
      v6 = 24;
      goto LABEL_53;
    case 25:
      v6 = 25;
      goto LABEL_53;
    case 26:
      v6 = 26;
      goto LABEL_53;
    case 27:
      v6 = 27;
      goto LABEL_53;
    case 28:
      v6 = 28;
      goto LABEL_53;
    case 29:
      v6 = 29;
      goto LABEL_53;
    case 30:
      v6 = 30;
      goto LABEL_53;
    case 31:
      v6 = 31;
      goto LABEL_53;
    case 32:
      v6 = 32;
      goto LABEL_53;
    case 33:
      v6 = 33;
      goto LABEL_53;
    case 34:
      v6 = 34;
      goto LABEL_53;
    case 35:
      v6 = 35;
      goto LABEL_53;
    case 36:
      v6 = 36;
      goto LABEL_53;
    case 37:
      v6 = 37;
      goto LABEL_53;
    case 38:
      v6 = 38;
LABEL_53:
      v7 = v6;
      break;
    case 39:
      break;
    case 40:
      v7 = 40;
      break;
    case 41:
      v7 = 41;
      break;
    case 42:
      v7 = 42;
      break;
    case 43:
      v7 = 43;
      break;
    case 44:
      v7 = 44;
      break;
    case 45:
      v7 = 45;
      break;
    case 46:
      v7 = 46;
      break;
    case 47:
      v7 = 47;
      break;
    case 48:
      v7 = 48;
      break;
    case 49:
      v7 = 49;
      break;
    case 50:
      v7 = 50;
      break;
    case 51:
      v7 = 51;
      break;
    case 52:
      v7 = 52;
      break;
    case 53:
      v7 = 53;
      break;
    case 54:
      v7 = 54;
      break;
    case 55:
      v7 = 55;
      break;
    case 56:
      v7 = 56;
      break;
    default:
      v7 = 57;
      break;
  }

  *a3 = v7;
  return result;
}

unint64_t sub_1AB2B39B4@<X0>(unint64_t *a1@<X8>)
{
  result = AutomationSemantics.NowPlayingElement.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AutomationSemantics.MiniPlayerElement.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1AB4619B4();

  v6 = 16;
  if (v4 < 0x10)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1AB2B3A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AB461DA4();
  }

  return v11 & 1;
}

uint64_t sub_1AB2B3B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4 = sub_1AB4620A4();
  a3(v4);
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB2B3B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  a4();
  sub_1AB460684();
}

uint64_t sub_1AB2B3C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5 = sub_1AB4620A4();
  a4(v5);
  sub_1AB460684();

  return sub_1AB462104();
}

unint64_t sub_1AB2B3C90@<X0>(unint64_t *a1@<X8>)
{
  result = AutomationSemantics.MiniPlayerElement.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1AB2B3CBC()
{
  result = qword_1EB43A150;
  if (!qword_1EB43A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A150);
  }

  return result;
}

unint64_t sub_1AB2B3D14()
{
  result = qword_1EB43A158;
  if (!qword_1EB43A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A158);
  }

  return result;
}

uint64_t _s17NowPlayingElementOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC8)
  {
    goto LABEL_17;
  }

  if (a2 + 56 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 56) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 56;
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

      return (*a1 | (v4 << 8)) - 56;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 56;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x39;
  v8 = v6 - 57;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s17NowPlayingElementOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 56 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 56) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC8)
  {
    v4 = 0;
  }

  if (a2 > 0xC7)
  {
    v5 = ((a2 - 200) >> 8) + 1;
    *result = a2 + 56;
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
    *result = a2 + 56;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s17MiniPlayerElementOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s17MiniPlayerElementOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *SandboxExtensionToken.consume()()
{
  v1 = sub_1AB4605C4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v5 = v0[1];
  v7 = v0[2];
  v6 = v0[3];
  v34[0] = *v0;
  v34[1] = v5;

  sub_1AB460594();
  sub_1AB0273A8();
  v8 = MEMORY[0x1E69E6158];
  sub_1AB461464();
  (*(v2 + 8))(v4, v1);

  v9 = sandbox_extension_consume();

  if (v9 < 0)
  {
    if (qword_1EB433A50 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v22 = v35;
    v23 = v36;
    __swift_project_boxed_opaque_existential_1Tm(v34, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v24 = swift_allocObject();
    v27 = xmmword_1AB4D4720;
    *(v24 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
    v25 = swift_allocObject();
    *(v25 + 16) = v27;
    *(&v30 + 1) = v8;
    *&v29 = 0xD000000000000030;
    *(&v29 + 1) = 0x80000001AB506F50;
    *(v25 + 48) = 0u;
    *(v25 + 32) = 0u;
    sub_1AB0169C4(&v29, v25 + 32);
    *(v25 + 64) = 0;
    *(v24 + 32) = v25;
    Logger.error(_:)(v24, v22, v23);

    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    return 0;
  }

  else
  {
    if (qword_1EB433A50 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v10 = v35;
    v11 = v36;
    __swift_project_boxed_opaque_existential_1Tm(v34, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AB4D4720;
    v33 = sub_1AB0168A8(0, 43, 0, MEMORY[0x1E69E7CC0]);
    v13._object = 0x80000001AB506F20;
    v13._countAndFlagsBits = 0xD00000000000002ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v32[3] = MEMORY[0x1E69E7360];
    v32[0] = v9;
    sub_1AB01522C(v32, v28);
    v29 = 0u;
    v30 = 0u;
    sub_1AB0169C4(v28, &v29);
    v31 = 0;
    v14 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1AB0168A8(0, *(v14 + 2) + 1, 1, v14);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1AB0168A8((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[40 * v16];
    v18 = v29;
    v19 = v30;
    v17[64] = v31;
    *(v17 + 2) = v18;
    *(v17 + 3) = v19;
    v33 = v14;
    sub_1AB0167A8(v32);
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    *(v12 + 32) = v33;
    Logger.info(_:)(v12, v10, v11);

    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    type metadata accessor for SandboxExtensionToken.Handle();
    v21 = swift_allocObject();
    v21[2] = v7;
    v21[3] = v6;
    v21[4] = v9;
  }

  return v21;
}

void static SandboxExtensionToken.issue(writable:path:auditToken:)(char a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v30 = HIDWORD(a4);
  v31 = HIDWORD(a5);
  v32 = HIDWORD(a6);
  v33 = a7;
  v34 = HIDWORD(a7);
  v15 = sub_1AB4605C4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1E69E9BA8];
  if (a1)
  {
    v19 = MEMORY[0x1E69E9BB0];
  }

  v20 = *v19;
  v28 = a2;
  v29 = v20;
  v35 = a2;
  v36 = a3;
  v21 = a3;
  sub_1AB460594();
  sub_1AB0273A8();
  sub_1AB461464();
  (*(v16 + 8))(v18, v15);
  v35 = __PAIR64__(v30, v10);
  v36 = __PAIR64__(v31, v9);
  v37 = v8;
  v38 = v32;
  v39 = v33;
  v40 = v34;
  v22 = sandbox_extension_issue_file_to_process();

  if (v22)
  {
    v23 = sub_1AB460704();
    v25 = v24;

    free(v22);
    v26 = v28;
  }

  else
  {
    v23 = 0;
    v25 = 0;
    v26 = 0;
    v21 = 0;
  }

  *a8 = v23;
  a8[1] = v25;
  a8[2] = v26;
  a8[3] = v21;
}

uint64_t SandboxExtensionToken.Handle.path.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

Swift::Void __swiftcall SandboxExtensionToken.Handle.release()()
{
  if (qword_1EB433A50 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v1 = v20;
  v2 = v21;
  __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  v18 = sub_1AB0168A8(0, 35, 0, MEMORY[0x1E69E7CC0]);
  v4._object = 0x80000001AB506F90;
  v4._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  v5 = *(v0 + 32);
  v17[3] = MEMORY[0x1E69E7360];
  v17[0] = v5;
  sub_1AB01522C(v17, v13);
  v14 = 0u;
  v15 = 0u;
  sub_1AB0169C4(v13, &v14);
  v16 = 0;
  v6 = v18;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1AB0168A8(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1AB0168A8((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[40 * v8];
  v10 = v14;
  v11 = v15;
  v9[64] = v16;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  v18 = v6;
  sub_1AB0167A8(v17);
  v12._countAndFlagsBits = 0x657361656C657220;
  v12._object = 0xE900000000000064;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v3 + 32) = v18;
  Logger.info(_:)(v3, v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  sandbox_extension_release();
}

uint64_t SandboxExtensionToken.Handle.deinit()
{
  SandboxExtensionToken.Handle.release()();

  return v0;
}

uint64_t SandboxExtensionToken.Handle.__deallocating_deinit()
{
  SandboxExtensionToken.Handle.release()();

  return swift_deallocClassInstance();
}

uint64_t SandboxExtensionToken.token.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SandboxExtensionToken.path.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1AB2B4934()
{
  if (*v0)
  {
    return 1752457584;
  }

  else
  {
    return 0x6E656B6F74;
  }
}

uint64_t sub_1AB2B4964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_1AB461DA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AB461DA4();

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

uint64_t sub_1AB2B4A3C(uint64_t a1)
{
  v2 = sub_1AB2B4E9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB2B4A78(uint64_t a1)
{
  v2 = sub_1AB2B4E9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SandboxExtensionToken.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A160, &qword_1AB4E5348);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB2B4E9C();
  sub_1AB462274();
  v12 = 0;
  v8 = v10[3];
  sub_1AB461BB4();
  if (!v8)
  {
    v11 = 1;
    sub_1AB461BB4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SandboxExtensionToken.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A168, &qword_1AB4E5350);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB2B4E9C();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = 0;
  v9 = sub_1AB461A84();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1AB461A84();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1AB2B4E9C()
{
  result = qword_1EB433C50;
  if (!qword_1EB433C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433C50);
  }

  return result;
}

unint64_t sub_1AB2B4F2C()
{
  result = qword_1EB43A170;
  if (!qword_1EB43A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A170);
  }

  return result;
}

unint64_t sub_1AB2B4F84()
{
  result = qword_1EB433C40;
  if (!qword_1EB433C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433C40);
  }

  return result;
}

unint64_t sub_1AB2B4FDC()
{
  result = qword_1EB433C48;
  if (!qword_1EB433C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433C48);
  }

  return result;
}

uint64_t ImpressionsTracking.DynamicKind.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t *ImpressionsTracking.DynamicChange.deinit()
{
  sub_1AB2B5104(v0[3], v0[4], v0[5], v0[6]);

  return v0;
}

uint64_t sub_1AB2B5104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t ImpressionsTracking.DynamicChange.__deallocating_deinit()
{
  sub_1AB2B5104(v0[3], v0[4], v0[5], v0[6]);

  return swift_deallocClassInstance();
}

unint64_t sub_1AB2B51EC()
{
  result = qword_1EB43A178;
  if (!qword_1EB43A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A178);
  }

  return result;
}

id MescalBagContract.__allocating_init(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MescalBagContract.init(_:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing] = *a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MescalBagContract.mescalCertificateURL.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 URLForKey_];

  return v3;
}

id sub_1AB2B54FC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *&a1[OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing];
  v7 = a1;
  v8 = sub_1AB460514();
  v9 = [v6 *a5];

  return v9;
}

id sub_1AB2B55BC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing);
  v6 = sub_1AB460514();
  v7 = [v5 *a3];

  return v7;
}

id MescalBagContract.mescalSignSapRequests.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 dictionaryForKey_];

  return v3;
}

id MescalBagContract.mescalSignSapResponses.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 dictionaryForKey_];

  return v3;
}

id MescalBagContract.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MescalBagContract.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *Preferences.subscript.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  type metadata accessor for NestedPreferences();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v3;
  v7[5] = a3;

  swift_unknownObjectRetain();
  return v7;
}

uint64_t sub_1AB2B59C4(char a1, void (*a2)(uint64_t *))
{
  v5 = v2[5];
  ObjectType = swift_getObjectType();
  v7 = v2[3];
  v12 = v2[2];
  v13 = v7;

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70, &unk_1AB4D6790);
  Preferences.subscript.getter(&v12, ObjectType, v8, v5, &v14);

  v10 = v14;
  if (!v14)
  {
    if ((a1 & 1) == 0)
    {
      return result;
    }

    v10 = MEMORY[0x1E69E7CC8];
  }

  v15 = v10;
  a2(&v15);
  v11 = v2[2];
  v13 = v2[3];
  v14 = v15;
  v12 = v11;

  return Preferences.subscript.setter(&v14, &v12, ObjectType, v8, v5);
}

uint64_t sub_1AB2B5AC8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v8 = v7;
  sub_1AB01522C(a3, v10);
  return sub_1AB01AD48(v10, v6, v8);
}

uint64_t sub_1AB2B5B5C(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  sub_1AB09AE18(v4, v5, v7);

  return sub_1AB0167A8(v7);
}

uint64_t sub_1AB2B5BDC()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1AB2B5C1C(uint64_t a1, void *a2)
{
  sub_1AB2B59C4(1, sub_1AB2B5ECC);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return sub_1AB0167A8(a1);
}

void (*sub_1AB2B5C84(uint64_t *a1, void *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x98uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 144) = v2;
  sub_1AB01494C(a2, v5);
  sub_1AB0754C0(a2, (v6 + 80));
  return sub_1AB2B5D10;
}

void sub_1AB2B5D10(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 80;
  if (a2)
  {
    sub_1AB01522C(*a1 + 80, v2 + 112);
    v4 = sub_1AB0149B0(v2, v2 + 40);
    MEMORY[0x1EEE9AC00](v4);
    sub_1AB2B59C4(1, sub_1AB2B5EC4);
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 40));
    sub_1AB0167A8(v2 + 112);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1AB2B59C4(1, sub_1AB2B5ECC);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  sub_1AB0167A8(v3);
  free(v2);
}

uint64_t sub_1AB2B5E70()
{
  v1 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  return (*(v1 + 40))(ObjectType, v1);
}

id sub_1AB2B5ED0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 == 1)
  {
    v6 = *(a1 + 32);
    *a3 = v6;
    *(a3 + 8) = 1;

    return v6;
  }

  else
  {
    if (v4)
    {
      sub_1AB1BA4A4();
      v9 = swift_allocError();
      *v10 = a1;
      *a3 = v9;
      *(a3 + 8) = 1;
    }

    else
    {
      *a3 = *a2;
      *(a3 + 8) = 0;
    }
  }
}

void sub_1AB2B5F7C(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  BasicImpressionsTracker.snapshotOnScreenImpressions(in:on:)(&v6, a2);
  v4 = MEMORY[0x1E69E7CC0];
  *a3 = v5;
  a3[1] = v4;
}

uint64_t ImpressionsTracker.snapshotOnScreenImpressionsAndDynamicEvents(in:on:)@<X0>(char *a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  result = (*(a2 + 48))(&v6);
  v5 = MEMORY[0x1E69E7CC0];
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t ImpressionsTracker.consumeImpressionsAndDynamicEvents(in:on:)@<X0>(char *a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  result = (*(a2 + 56))(&v6);
  v5 = MEMORY[0x1E69E7CC0];
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t ImpressionsTrackerFormat.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t ImpressionsTracker.elementDidEnterView(_:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  BYTE8(v6) = 1;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  *&v5 = 0;
  *(&v5 + 1) = 0xE000000000000000;
  *&v6 = 0;
  (*(a4 + 24))(a1, a2, &v5, a3);
  v10[2] = v7;
  v10[3] = v8;
  v10[4] = v9;
  v10[0] = v5;
  v10[1] = v6;
  return sub_1AB079CF0(v10);
}

uint64_t ImpressionsTracker.elementDidEnterView(_:on:at:with:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v11 = a5[3];
  v27 = a5[2];
  v28 = v11;
  v29 = a5[4];
  v12 = a5[1];
  v25 = *a5;
  v26 = v12;
  if (BYTE8(v12))
  {
    if ((a4 & 1) == 0)
    {
LABEL_7:
      v15 = a5[3];
      v22 = a5[2];
      v23 = v15;
      v24 = a5[4];
      v16 = a5[1];
      v20 = *a5;
      *(&v21 + 1) = *(&v16 + 1);
      *&v21 = a3;
      BYTE8(v21) = a4 & 1;
      goto LABEL_8;
    }
  }

  else if ((a4 & 1) != 0 || v26 != a3)
  {
    goto LABEL_7;
  }

  v13 = a5[3];
  v22 = a5[2];
  v23 = v13;
  v24 = a5[4];
  v14 = a5[1];
  v20 = *a5;
  v21 = v14;
LABEL_8:
  v17 = *(a7 + 24);
  sub_1AB0786FC(&v25, v19);
  v17(a1, a2, &v20, a6, a7);
  v19[2] = v22;
  v19[3] = v23;
  v19[4] = v24;
  v19[0] = v20;
  v19[1] = v21;
  return sub_1AB079CF0(v19);
}

uint64_t ImpressionsTracker.elementDidLeaveView(_:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  BYTE8(v6) = 1;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  *&v5 = 0;
  *(&v5 + 1) = 0xE000000000000000;
  *&v6 = 0;
  (*(a4 + 40))(a1, a2, &v5, a3);
  v10[2] = v7;
  v10[3] = v8;
  v10[4] = v9;
  v10[0] = v5;
  v10[1] = v6;
  return sub_1AB079CF0(v10);
}

unint64_t sub_1AB2B636C()
{
  result = qword_1EB43A188[0];
  if (!qword_1EB43A188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB43A188);
  }

  return result;
}

uint64_t MetricsFieldsBuilder.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a6 + 24))(a4, a6, a3);
  if (*(v8 + 16) && (v9 = sub_1AB014DB4(a1, a2), (v10 & 1) != 0))
  {
    sub_1AB0165C4(*(v8 + 56) + 32 * v9, v13);

    sub_1AB460A64();
    if (swift_dynamicCast())
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t MetricsFieldsBuilder.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  MetricsFieldsBuilder.subscript.getter(a1, a2, a3, a4);
  if (v6)
  {
    sub_1AB45F714();
  }

  else
  {
    v8 = sub_1AB45F764();
    v9 = *(*(v8 - 8) + 56);

    return v9(a5, 1, 1, v8);
  }
}

{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_1AB45F764();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricsFieldsBuilder.subscript.getter(a1, a2, a3, a4, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1AB014AC0(v12, &unk_1EB4395B0, &qword_1AB4D6720);
    v17 = sub_1AB45F3E4();
    return (*(*(v17 - 8) + 56))(a5, 1, 1, v17);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_1AB45F324();
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t MetricsFieldsBuilder.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = MetricsFieldsBuilder.subscript.getter(a1, a2, a3, a4);
  if (v7)
  {
    sub_1AB0273A8();
    v8 = sub_1AB461404();
  }

  else
  {
    v8 = 0;
  }

  *a5 = v8;
  a5[1] = 0;
  return result;
}

uint64_t StandardMetricsFieldsBuilder.addValue(_:forField:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AB0165C4(a1, v6);

  return sub_1AB01AD48(v6, a2, a3);
}

Swift::Void __swiftcall StandardMetricsFieldsBuilder.removeValue(forField:)(Swift::String forField)
{
  v2 = v1;
  v3 = sub_1AB014DB4(forField._countAndFlagsBits, forField._object);
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    v8 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AB0676CC();
      v7 = v8;
    }

    sub_1AB014B78((*(v7 + 56) + 32 * v5), v9);
    sub_1AB18F158(v5, v7);
    *v2 = v7;
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  sub_1AB014AC0(v9, &unk_1EB437E60, &qword_1AB4D4730);
}

uint64_t StandardMetricsFieldsBuilder.merge(_:uniquingKeysWith:)(uint64_t a1, void (*a2)(_OWORD *__return_ptr, id *, _OWORD *), uint64_t a3)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  *v3 = 0x8000000000000000;
  sub_1AB178C30(a1, sub_1AB06BA1C, 0, isUniquelyReferenced_nonNull_native, a2, a3);

  *v3 = v9;
  return result;
}

uint64_t sub_1AB2B6C7C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + 16);
    v7 = swift_task_alloc();
    v8 = *(v0 + 48);
    *(v7 + 16) = v5;
    *(v7 + 24) = v8;
    v9 = swift_task_alloc();
    *(v9 + 16) = sub_1AB2B747C;
    *(v9 + 24) = v7;

    os_unfair_lock_lock(v6 + 4);
    sub_1AB2B74C4();
    os_unfair_lock_unlock(v6 + 4);
  }

  if (*(v0 + 112))
  {
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v12 = *(v0 + 144);
    (*(v11 + 104))(v10, *MEMORY[0x1E6977AC0], v12);
    sub_1AB460174();
    (*(v11 + 8))(v10, v12);
  }

  v13 = *(v0 + 216);
  Promise.reject(_:)(v13, v2, v3, v4);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1AB2B6E44()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1AB2B6EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1AB033004();
  sub_1AB030B7C(&v11);
  sub_1AB05FF60();
  Promise.then(perform:orCatchError:on:)(a1, a2, a3, a4, a5);

  return result;
}

uint64_t sub_1AB2B7010()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB2B7074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for Result(255, v6, a3, a4);
  v8 = sub_1AB461354();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  if (os_unfair_lock_trylock((*(v4 + 16) + 16)))
  {
    if (*(v4 + 40) == 1)
    {
      v16 = *(v4 + 24);
      v29 = *(v4 + 32);

      sub_1AB03DB10(v17, v18, v19, v20);
      v21 = *(v7 - 8);
      if ((*(v21 + 48))(v11, 1, v7) == 1)
      {
        v7 = v8;
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          (*(v12 + 32))(v15, v11, v6);
          v30 = 0;
          v31 = 0xE000000000000000;
          sub_1AB461D64();
          v27 = sub_1AB057304(v16, v29, 1);
          v23 = v30;
          (*(v12 + 8))(v15, v6, v27);
          goto LABEL_10;
        }

        v9 = v21;
      }

      v24 = sub_1AB057304(v16, v29, 1);
      (*(v9 + 8))(v11, v7, v24);
    }

    v30 = 60;
    v31 = 0xE100000000000000;
    v25 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v25);

    MEMORY[0x1AC59BA20](62, 0xE100000000000000);
    v23 = v30;
LABEL_10:
    os_unfair_lock_unlock((*(v5 + 16) + 16));
    return v23;
  }

  v30 = 60;
  v31 = 0xE100000000000000;
  v22 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v22);

  MEMORY[0x1AC59BA20](62, 0xE100000000000000);
  return v30;
}

uint64_t sub_1AB2B7388()
{

  sub_1AB057304(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1AB2B73CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double sub_1AB2B747C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = 0;
  sub_1AB057304(v4, v5, v6);

  return result;
}

uint64_t JetPackageReaderError.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

unint64_t JetPackageReaderError.errorDescription.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000023;
  v3 = 0xD000000000000041;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000018;
  if (v1 == 1)
  {
    v4 = 0xD000000000000020;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000021;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t JetPackageReader.init(keyURLs:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = result;
  return result;
}

uint64_t JetPackageReader.init(keyURLs:verifySignature:)@<X0>(uint64_t result@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    v3 = sub_1AB2B792C;
  }

  else
  {
    v3 = 0;
  }

  *a3 = result;
  a3[1] = v3;
  a3[2] = 0;
  return result;
}

uint64_t JetPackageReader.init(keyURL:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_1AB45F764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  sub_1AB03BC60(a1, &v18 - v9);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    result = sub_1AB014AC0(a1, &unk_1EB4395B0, &qword_1AB4D6720);
    v12 = 0;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A210, &qword_1AB4E59B8);
    v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438100, &qword_1AB4E59C0) - 8);
    v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1AB4D4720;
    v16 = (v15 + v14);
    v17 = v13[14];
    *v16 = 0;
    (*(v5 + 16))(&v16[v17], v7, v4);
    v12 = sub_1AB1DAE04(v15);
    swift_setDeallocating();
    sub_1AB014AC0(v16, &qword_1EB438100, &qword_1AB4E59C0);
    swift_deallocClassInstance();
    sub_1AB014AC0(a1, &unk_1EB4395B0, &qword_1AB4D6720);
    result = (*(v5 + 8))(v7, v4);
  }

  a2[1] = 0;
  a2[2] = 0;
  *a2 = v12;
  return result;
}

uint64_t sub_1AB2B792C(char *a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (qword_1EB4345C0 != -1)
  {
    v9 = *(a1 + 8);
    swift_once();
    v4 = v9;
  }

  v5 = qword_1EB435010;
  v6 = *algn_1EB435018;
  v10[0] = v3;
  v11 = v4;
  sub_1AB017200(qword_1EB435010, *algn_1EB435018);
  v7 = sub_1AB4295F0(v10, a2, 0x20000, v5, v6);
  sub_1AB017254(v5, v6);
  return v7 & 1;
}

uint64_t JetPackageReader.init(keyURL:verifySignature:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t *a3@<X8>)
{
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  sub_1AB03BC60(a1, &v21 - v11);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    result = sub_1AB014AC0(a1, &unk_1EB4395B0, &qword_1AB4D6720);
    v14 = 0;
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A210, &qword_1AB4E59B8);
    v15 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438100, &qword_1AB4E59C0) - 8);
    v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1AB4D4720;
    v18 = (v17 + v16);
    v19 = v15[14];
    *v18 = 0;
    (*(v7 + 16))(&v18[v19], v9, v6);
    v14 = sub_1AB1DAE04(v17);
    swift_setDeallocating();
    sub_1AB014AC0(v18, &qword_1EB438100, &qword_1AB4E59C0);
    swift_deallocClassInstance();
    sub_1AB014AC0(a1, &unk_1EB4395B0, &qword_1AB4D6720);
    result = (*(v7 + 8))(v9, v6);
  }

  if (a2)
  {
    v20 = sub_1AB2B792C;
  }

  else
  {
    v20 = 0;
  }

  *a3 = v14;
  a3[1] = v20;
  a3[2] = 0;
  return result;
}

uint64_t sub_1AB2B7CD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB439968, &unk_1AB4E47D8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CD0];
  qword_1EB432CD0 = result;
  return result;
}

uint64_t *JetPackageReader.metadata(forPackageAt:)@<X0>(uint64_t x8_0@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = sub_1AB45F6F4();
  v10 = v9;
  v11 = type metadata accessor for FileInputStream();
  swift_allocObject();
  result = sub_1AB251E1C(v8, v10);
  if (!v3)
  {
    v13[5] = v5;
    v13[6] = v6;
    v13[7] = v7;
    v13[3] = v11;
    v13[4] = &off_1F2001F90;
    v13[0] = result;
    sub_1AB2B7DEC(v13, x8_0);
    return __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  return result;
}

void sub_1AB2B7DEC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  sub_1AB01494C(a1, v35);
  type metadata accessor for JetPackageFormatParser();
  inited = swift_initStackObject();
  sub_1AB0149B0(v35, inited + 16);
  *(inited + 56) = 0;
  v9 = sub_1AB29E71C();
  if (!v3)
  {
    if (v9)
    {
      sub_1AB2BAF88();
      swift_allocError();
      *v10 = 2;
      swift_willThrow();
    }

    else
    {
      sub_1AB29E9BC(v32);
      v28 = v32[0];
      v29 = v32[1];
      v30 = v33;
      v11 = v34;
      v31 = v34;
      v25 = v5;
      v26 = v6;
      v27 = v7;
      v12 = v33;
      v23 = v33;
      v24 = v34;
      v13 = *(inited + 56);
      sub_1AB16DFC0(v33, *(&v33 + 1), v34);
      if (v13 == 2)
      {
        v14 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
        sub_1AB2B8324(&v23, inited + 16, v14);

        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_1Tm((inited + 16));
        sub_1AB23C170(v12, *(&v12 + 1), v11);
        v16 = v28;
        LOBYTE(v14) = BYTE1(v28);
        v17 = BYTE2(v28);
        v20 = BYTE4(v28);
        v21 = BYTE3(v28);
        v18 = v29;
        v22 = *(&v28 + 1);
        sub_1AB16DFC0(v12, *(&v12 + 1), v11);

        sub_1AB2BB180(&v28);
        v19 = WORD4(v29);
        *a2 = 0;
        *(a2 + 8) = v16;
        *(a2 + 9) = v14;
        *(a2 + 10) = v17;
        *(a2 + 11) = v21;
        *(a2 + 12) = v20;
        *(a2 + 16) = v12;
        *(a2 + 32) = v11;
        *(a2 + 40) = v22;
        *(a2 + 48) = v18;
        *(a2 + 56) = v19;
        return;
      }

      sub_1AB23C170(v12, *(&v12 + 1), v11);
      sub_1AB29F1B8();
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD00000000000002FLL, 0x80000001AB5074F0);
      swift_getErrorValue();
      sub_1AB461D64();
      sub_1AB31D6E0(0, 0xE000000000000000);

      swift_willThrow();
      sub_1AB2BB180(&v28);
    }
  }
}

uint64_t *JetPackageReader.unpack(packageURL:to:artifactStoreURL:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = sub_1AB45F6F4();
  v11 = v10;
  v12 = type metadata accessor for FileInputStream();
  swift_allocObject();
  result = sub_1AB251E1C(v9, v11);
  if (!v4)
  {
    v14[5] = v6;
    v14[6] = v7;
    v14[7] = v8;
    v14[3] = v12;
    v14[4] = &off_1F2001F90;
    v14[0] = result;
    sub_1AB2B81A0(v14, a2);
    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  return result;
}

void sub_1AB2B81A0(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  (*(v4 + 16))(v3, v4);
  LOBYTE(v4) = v5;
  sub_1AB4615D4();

  if (v4)
  {
    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E75;
  }

  else
  {
    v7 = sub_1AB461C44();
    v6 = v8;
  }

  MEMORY[0x1AC59BA20](v7, v6);

  sub_1AB31D8B0(0xD000000000000018, 0x80000001AB507410);

  MEMORY[0x1EEE9AC00](v9);
  sub_1AB2BAA5C(a2, sub_1AB2BB0C4);
}

void sub_1AB2B8324(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v49 = a2;
  v50 = a3;
  v5 = sub_1AB45FF84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  v51 = *a1;
  v10 = a1[2];
  v12 = *(v3 + 8);
  v11 = *(v3 + 16);
  sub_1AB019310();
  v52 = v11;
  sub_1AB04B604(v12, v11);
  v13 = sub_1AB461334();
  sub_1AB461234();
  sub_1AB45FF74();
  sub_1AB45FF34();
  v14 = *(v6 + 8);
  v54 = v5;
  v15 = v5;
  v16 = v12;
  v58 = v14;
  v14(v8, v15);
  if (!v12)
  {
    goto LABEL_9;
  }

  if (v10 >> 60 == 15)
  {
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_1AB4615D4();

    v55 = 0xD000000000000024;
    v56 = 0x80000001AB5076B0;
    v17 = sub_1AB460304();
    MEMORY[0x1AC59BA20](v17);

    sub_1AB31D6E0(v55, v56);

    sub_1AB2BAF88();
    swift_allocError();
    *v18 = 6;
    swift_willThrow();
LABEL_4:
    v19 = v16;
    v20 = v52;
LABEL_5:
    sub_1AB0177B8(v19, v20);
LABEL_9:
    sub_1AB461224();
    sub_1AB45FF74();
    sub_1AB45FF34();

    v58(v8, v54);
    return;
  }

  v21 = v10;
  v22 = v51;
  LOBYTE(v55) = v51;
  v23 = v9;
  v56 = v9;
  v57 = v21;
  sub_1AB017200(v9, v21);
  v24 = v52;
  v25 = v53;
  v26 = v16(&v55, v49);
  if (v25)
  {
    sub_1AB0177B8(v16, v24);
    sub_1AB23C170(v22, v9, v21);
    goto LABEL_9;
  }

  if (v26)
  {
    sub_1AB03BD58(v27, v28);
    sub_1AB23C170(v22, v9, v21);
    v19 = v16;
    v20 = v24;
    goto LABEL_5;
  }

  v48 = v27;
  v49 = v28;
  v53 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
  inited = swift_initStackObject();
  v30 = v49;
  v31 = inited;
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = 0x747365676964;
  v47 = inited + 32;
  *(inited + 40) = 0xE600000000000000;
  if (v30 >> 60 == 15)
  {
    v32 = (inited + 48);
    *(inited + 72) = MEMORY[0x1E69E6158];
  }

  else
  {
    v33 = v48;
    sub_1AB1B9C40(v48, v30);
    v46 = sub_1AB45F844();
    v35 = v34;
    sub_1AB03BD58(v33, v49);
    v32 = (v31 + 48);
    *(v31 + 72) = MEMORY[0x1E69E6158];
    if (v35)
    {
      *v32 = v46;
      goto LABEL_17;
    }
  }

  *v32 = 0x6E776F6E6B6E75;
  v35 = 0xE700000000000000;
LABEL_17:
  *(v31 + 56) = v35;
  v36 = sub_1AB01B220(v31);
  swift_setDeallocating();
  sub_1AB014AC0(v47, &qword_1EB439AA0, &qword_1AB4DA4B0);
  v37 = v50;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = v37;
  v39 = v53;
  sub_1AB2BB284(v36, sub_1AB06BA1C, 0, isUniquelyReferenced_nonNull_native, &v55);
  if (!v39)
  {

    v40 = v55;
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000032, 0x80000001AB5076E0);
    v41 = sub_1AB460304();
    MEMORY[0x1AC59BA20](v41);

    sub_1AB31D6E0(v55, v56);

    v42 = [objc_opt_self() defaultCenter];
    if (qword_1EB432D20 != -1)
    {
      swift_once();
    }

    v53 = qword_1EB432D28;
    sub_1AB15811C(v40);

    v43 = sub_1AB4602D4();

    [v42 postNotificationName:v53 object:0 userInfo:v43];

    sub_1AB2BAF88();
    swift_allocError();
    *v44 = 6;
    swift_willThrow();
    sub_1AB03BD58(v48, v49);
    sub_1AB23C170(v51, v23, v21);
    goto LABEL_4;
  }

  __break(1u);
}

uint64_t sub_1AB2B8980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8)
{
  v232 = a3;
  LODWORD(v222) = a8;
  v223 = a7;
  v224 = a4;
  v220 = a5;
  v221 = a6;
  v236 = a2;
  v261 = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v217 = &v202 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v219 = &v202 - v11;
  v12 = type metadata accessor for FileArtifact(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v216 = &v202 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v213 = &v202 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v231 = &v202 - v17;
  v237 = sub_1AB45FF84();
  v235 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v234 = &v202 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1AB45F9E4();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v202 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = sub_1AB45F764();
  v23 = *(v238 - 8);
  MEMORY[0x1EEE9AC00](v238);
  v214 = &v202 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v212 = &v202 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v215 = &v202 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v225 = &v202 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v227 = &v202 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v202 - v34;
  sub_1AB45F9D4();
  sub_1AB45F9C4();
  v36 = *(v20 + 8);
  v228 = v22;
  v229 = v20 + 8;
  v230 = v19;
  v226 = v36;
  v36(v22, v19);
  sub_1AB45F664();

  v37 = objc_opt_self();
  v38 = [v37 defaultManager];
  v39 = sub_1AB45F654();
  *&v245 = 0;
  v40 = [v38 createDirectoryAtURL:v39 withIntermediateDirectories:0 attributes:0 error:&v245];

  if (!v40)
  {
    v63 = v245;
    sub_1AB45F594();

    swift_willThrow();
    return (*(v23 + 8))(v35, v238);
  }

  v218 = v23;
  v239 = 0;
  v41 = v245;
  v211 = v37;
  v42 = [v37 defaultManager];
  sub_1AB45F6F4();
  v43 = sub_1AB460514();

  v44 = [v42 fileExistsAtPath:v43 isDirectory:&v239];

  v45 = v237;
  if (v44)
  {
    v46 = [v211 defaultManager];
    sub_1AB45F6F4();
    v47 = sub_1AB460514();

    *&v245 = 0;
    v48 = [v46 contentsOfDirectoryAtPath:v47 error:&v245];

    v49 = v245;
    if (v48)
    {
      v50 = sub_1AB460954();
      v51 = v49;

      v52 = *(v50 + 16);

      if (v239 == 1 && !v52)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v67 = v245;
      v68 = sub_1AB45F594();

      swift_willThrow();
    }

    sub_1AB2BAF88();
    swift_allocError();
    *v69 = 4;
    swift_willThrow();
    sub_1AB2BA874();
    v61 = *(v218 + 8);
    v62 = v35;
    goto LABEL_13;
  }

LABEL_6:
  v210 = v35;
  sub_1AB019310();
  v53 = sub_1AB461334();
  sub_1AB461234();
  v54 = v234;
  sub_1AB45FF74();
  sub_1AB45FF34();
  v56 = v235 + 8;
  v55 = *(v235 + 8);
  v55(v54, v45);
  sub_1AB01494C(v232, v260);
  type metadata accessor for JetPackageFormatParser();
  v57 = swift_allocObject();
  sub_1AB0149B0(v260, v57 + 16);
  *(v57 + 56) = 0;
  v58 = v233;
  v59 = sub_1AB29E71C();
  if (v58)
  {

    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1Tm((v57 + 16));
    swift_deallocClassInstance();
    v60 = v210;
    sub_1AB2BA874();
    v61 = *(v218 + 8);
    v62 = v60;
LABEL_13:
    v71 = v238;
    return v61(v62, v71);
  }

  v235 = v56;
  v65 = v238;
  if (v59)
  {
    sub_1AB2BAF88();
    swift_allocError();
    *v66 = 2;
    swift_willThrow();

    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1Tm((v57 + 16));
    swift_deallocClassInstance();
    v70 = v210;
    sub_1AB2BA874();
    v61 = *(v218 + 8);
    v62 = v70;
    v71 = v65;
    return v61(v62, v71);
  }

  sub_1AB29E9BC(v258);
  v205 = v44;
  v232 = 0;
  v254 = v258[0];
  v255 = v258[1];
  v256 = v258[2];
  v257 = v259;
  sub_1AB461224();
  v72 = v234;
  sub_1AB45FF74();
  sub_1AB45FF34();
  v208 = v55;
  v55(v72, v237);
  v233 = v53;
  v73 = 0xE000000000000000;
  *&v245 = 0;
  *(&v245 + 1) = 0xE000000000000000;
  sub_1AB4615D4();

  *&v245 = 0xD00000000000001CLL;
  *(&v245 + 1) = 0x80000001AB507490;
  if (v255)
  {
    v74 = *(&v254 + 1);
  }

  else
  {
    v74 = 0;
  }

  if (v255)
  {
    v73 = v255;
  }

  MEMORY[0x1AC59BA20](v74, v73);

  MEMORY[0x1AC59BA20](34, 0xE100000000000000);
  sub_1AB31D8B0(v245, *(&v245 + 1));

  v75 = v218;
  v76 = (v218 + 16);
  v77 = v227;
  v209 = *(v218 + 16);
  v209(v227, v210, v65);
  v78 = v228;
  sub_1AB45F9D4();
  sub_1AB45F9C4();
  v79 = v78;
  v80 = v75;
  v226(v79, v230);
  v81 = v231;
  sub_1AB45F664();

  v82 = v80 + 8;
  v83 = *(v80 + 8);
  v83(v77, v65);
  if (*(v57 + 56) != 2)
  {
    sub_1AB29F1B8();
    swift_allocError();
    *v93 = 0;
    swift_willThrow();

    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1Tm((v57 + 16));
    swift_deallocClassInstance();
    sub_1AB2BB180(&v254);
    sub_1AB2BB1D4(v81, v94);
    v95 = v210;
    sub_1AB2BA874();
    return (v83)(v95, v65);
  }

  v206 = v83;
  v207 = v82;
  sub_1AB01494C(v57 + 16, v253);
  sub_1AB01494C(v253, &v245);
  v84 = v65;
  v86 = v246;
  v85 = v247;
  v204 = __swift_project_boxed_opaque_existential_1Tm(&v245, v246);
  v87 = v225;
  v209(v225, v81, v84);
  v88 = type metadata accessor for FileOutputStream(0);
  swift_allocObject();
  v89 = v232;
  v90 = sub_1AB2516A4(v87);
  if (v89)
  {

    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1Tm((v57 + 16));
    swift_deallocClassInstance();
    sub_1AB2BB180(&v254);
    __swift_destroy_boxed_opaque_existential_1Tm(v253);
    sub_1AB2BB1D4(v231, v91);
    __swift_destroy_boxed_opaque_existential_1Tm(&v245);
    v92 = v210;
    sub_1AB2BA874();
    return v206(v92, v84);
  }

  v225 = v76;
  v252 = &off_1F2001F78;
  v251 = v88;
  *&v249 = v90;
  v96 = sub_1AB19BA48(&v249, 0x20000, v86, v85);
  v204 = v88;
  __swift_destroy_boxed_opaque_existential_1Tm(&v249);
  __swift_destroy_boxed_opaque_existential_1Tm(&v245);
  *&v245 = 0;
  *(&v245 + 1) = 0xE000000000000000;
  sub_1AB4615D4();

  *&v245 = 0xD000000000000017;
  *(&v245 + 1) = 0x80000001AB5074B0;
  *&v249 = v96;
  v97 = sub_1AB461C44();
  MEMORY[0x1AC59BA20](v97);

  sub_1AB31D8B0(v245, *(&v245 + 1));

  v98 = sub_1AB45F6F4();
  v100 = v99;
  v101 = type metadata accessor for FileInputStream();
  swift_allocObject();
  v102 = sub_1AB251E1C(v98, v100);
  v246 = v101;
  v247 = &off_1F2001F90;
  v203 = v101;
  *&v245 = v102;
  __swift_destroy_boxed_opaque_existential_1Tm(v253);
  sub_1AB0149B0(&v245, v253);
  *&v249 = v224;
  *(&v249 + 1) = v220;
  v250 = v221;
  v103 = v256;
  v104 = v257;
  v241 = v256;
  v242 = v257;
  sub_1AB01494C(v253, &v245);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
  v105 = swift_allocObject();
  v106 = v105;
  *(v105 + 16) = xmmword_1AB4D47F0;
  *(v105 + 32) = 0x4C6567616B636170;
  v107 = v223;
  if (v222)
  {
    v107 = -1;
  }

  *(v105 + 40) = 0xED00006874676E65;
  *(v105 + 48) = v107;
  v108 = MEMORY[0x1E69E6530];
  *(v105 + 72) = MEMORY[0x1E69E6530];
  *(v105 + 80) = 0xD000000000000011;
  *(v105 + 120) = v108;
  *(v105 + 88) = 0x80000001AB5074D0;
  *(v105 + 96) = v96;
  v222 = v103;
  v223 = v104;
  v232 = *(&v103 + 1);
  sub_1AB16DFC0(v103, *(&v103 + 1), v104);
  v109 = sub_1AB01B220(v106);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0, &qword_1AB4DA4B0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1AB2B8324(&v241, &v245, v109);

  __swift_destroy_boxed_opaque_existential_1Tm(&v245);
  sub_1AB23C170(v222, v232, v223);
  v110 = sub_1AB45F6F4();
  v112 = v111;
  v113 = v203;
  swift_allocObject();
  v114 = sub_1AB251E1C(v110, v112);
  v223 = v57;
  v232 = 0;
  v246 = v113;
  v247 = &off_1F2001F90;
  *&v245 = v114;
  __swift_destroy_boxed_opaque_existential_1Tm(v253);
  sub_1AB0149B0(&v245, v253);
  if ((BYTE3(v254) & 1) == 0)
  {
    sub_1AB31D8B0(0xD00000000000001DLL, 0x80000001AB5075E0);
    sub_1AB461234();
    v121 = v234;
    sub_1AB45FF74();
    sub_1AB45FF34();
    v208(v121, v237);
    if (v224)
    {
      if (*(v224 + 16))
      {
        v122 = sub_1AB1DB6EC(WORD4(v255));
        if (v123)
        {
          v125 = v217;
          v124 = v218;
          v126 = v238;
          v209(v217, (*(v224 + 56) + *(v218 + 72) * v122), v238);
          v127 = *(v124 + 56);
          v127(v125, 0, 1, v126);
          v128 = v219;
          (*(v124 + 32))(v219, v125, v126);
          v127(v128, 0, 1, v126);
          v129 = (*(v124 + 48))(v219, 1, v238);
          goto LABEL_49;
        }
      }

      v130 = *(v218 + 56);
      v130(v217, 1, 1, v238);
      if (*(v224 + 16) && (v131 = sub_1AB1DB6EC(0), (v132 & 1) != 0))
      {
        v133 = v219;
        v134 = v238;
        v209(v219, (*(v224 + 56) + *(v218 + 72) * v131), v238);
        v135 = v133;
        v136 = 0;
        v137 = v134;
      }

      else
      {
        v135 = v219;
        v136 = 1;
        v137 = v238;
      }

      v130(v135, v136, 1, v137);
    }

    else
    {
      v138 = *(v218 + 56);
      v139 = v238;
      v138(v217, 1, 1, v238);
      v138(v219, 1, 1, v139);
    }

    v140 = *(v218 + 48);
    if (v140(v217, 1, v238) != 1)
    {
      sub_1AB014AC0(v217, &unk_1EB4395B0, &qword_1AB4D6720);
    }

    v129 = v140(v219, 1, v238);
LABEL_49:
    if (v129 == 1)
    {
      sub_1AB014AC0(v219, &unk_1EB4395B0, &qword_1AB4D6720);
      *&v245 = 0;
      *(&v245 + 1) = 0xE000000000000000;
      sub_1AB4615D4();

      *&v245 = 0xD00000000000002DLL;
      *(&v245 + 1) = 0x80000001AB507610;
      LOWORD(v249) = WORD4(v255);
      v141 = sub_1AB461C44();
      MEMORY[0x1AC59BA20](v141);

      sub_1AB31D8B0(v245, *(&v245 + 1));

      sub_1AB2BAF88();
      swift_allocError();
      *v142 = 3;
      swift_willThrow();

      v143 = v223;
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1Tm((v143 + 16));
      swift_deallocClassInstance();
      sub_1AB2BB180(&v254);
      __swift_destroy_boxed_opaque_existential_1Tm(v253);
      sub_1AB2BB1D4(v231, v144);
      v145 = v210;
      sub_1AB2BA874();
      v146 = v145;
      return v206(v146, v238);
    }

    (*(v218 + 32))(v215, v219, v238);
    sub_1AB31D8B0(0xD00000000000001ALL, 0x80000001AB507640);
    v147 = v232;
    v148 = sub_1AB45F784();
    v232 = v147;
    if (v147)
    {

      v150 = v223;
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1Tm((v150 + 16));
      swift_deallocClassInstance();
      sub_1AB2BB180(&v254);
      v151 = v238;
      v152 = v206;
      v206(v215, v238);
      __swift_destroy_boxed_opaque_existential_1Tm(v253);
      sub_1AB2BB1D4(v231, v153);
      v154 = v210;
      sub_1AB2BA874();
      return v152(v154, v151);
    }

    v252 = &off_1F20152C8;
    *&v249 = v148;
    *(&v249 + 1) = v149;
    v251 = &type metadata for CommonCryptoPackageEncryption;
    v250 = 0x20000;
    sub_1AB0149B0(&v249, &v245);
    v155 = v227;
    v156 = v209;
    v157 = v238;
    v209(v227, v210, v238);
    v158 = v228;
    sub_1AB45F9D4();
    sub_1AB45F9C4();
    v226(v158, v230);
    v159 = v213;
    sub_1AB45F664();

    v206(v155, v157);
    sub_1AB01494C(&v245, &v249);
    __swift_project_boxed_opaque_existential_1Tm(&v249, v251);
    sub_1AB01494C(v253, &v241);
    v160 = v212;
    v156(v212, v159, v157);
    swift_allocObject();
    v161 = v232;
    v162 = sub_1AB2516A4(v160);
    v232 = v161;
    if (v161)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v241);
      sub_1AB2BB1D4(v213, v163);
      __swift_destroy_boxed_opaque_existential_1Tm(&v249);
    }

    else
    {
      v240[3] = v204;
      v240[4] = &off_1F2001F78;
      v240[0] = v162;
      sub_1AB3C93A8(&v241, v240);
      v232 = 0;
      __swift_destroy_boxed_opaque_existential_1Tm(&v241);
      __swift_destroy_boxed_opaque_existential_1Tm(v240);
      __swift_destroy_boxed_opaque_existential_1Tm(&v249);
      v176 = sub_1AB45F6F4();
      v178 = v177;
      swift_allocObject();
      v179 = v232;
      v180 = sub_1AB251E1C(v176, v178);
      v232 = v179;
      if (!v179)
      {
        v252 = &off_1F2001F90;
        v251 = v203;
        *&v249 = v180;
        sub_1AB2BB1D4(v213, v181);
        __swift_destroy_boxed_opaque_existential_1Tm(v253);
        sub_1AB0149B0(&v249, v253);
        sub_1AB461224();
        v182 = v234;
        sub_1AB45FF74();
        sub_1AB45FF34();
        v208(v182, v237);
        __swift_destroy_boxed_opaque_existential_1Tm(&v245);
        v206(v215, v238);
        if (BYTE1(v254))
        {
          goto LABEL_31;
        }

        goto LABEL_63;
      }

      sub_1AB2BB1D4(v213, v181);
    }

    *&v249 = 0;
    *(&v249 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000026, 0x80000001AB507660);
    swift_getErrorValue();
    sub_1AB461D64();
    sub_1AB31D6E0(v249, *(&v249 + 1));

    swift_willThrow();

    v171 = v223;
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1Tm((v171 + 16));
    swift_deallocClassInstance();
    sub_1AB2BB180(&v254);
    __swift_destroy_boxed_opaque_existential_1Tm(&v245);
    v172 = v238;
    v173 = v206;
    v206(v215, v238);
    __swift_destroy_boxed_opaque_existential_1Tm(v253);
    sub_1AB2BB1D4(v231, v174);
    v175 = v210;
    sub_1AB2BA874();
    return v173(v175, v172);
  }

  if (BYTE1(v254))
  {
LABEL_31:
    sub_1AB31D8B0(0xD000000000000021, 0x80000001AB507520);
    sub_1AB461234();
    v115 = v234;
    sub_1AB45FF74();
    sub_1AB45FF34();
    v208(v115, v237);
    if (v205)
    {
LABEL_34:
      v120 = v232;
      sub_1AB2D2354(v253, v236, 102400);
      if (v120)
      {
      }

      else
      {
        sub_1AB461224();
        v164 = v234;
        sub_1AB45FF74();
        v165 = v233;
        sub_1AB45FF34();
        v208(v164, v237);
        sub_1AB31D8B0(0xD00000000000001ALL, 0x80000001AB507570);
      }

      v166 = v223;
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1Tm((v166 + 16));
      swift_deallocClassInstance();
      sub_1AB2BB180(&v254);
      goto LABEL_65;
    }

    v116 = [v211 defaultManager];
    v117 = sub_1AB45F654();
    *&v245 = 0;
    v118 = [v116 createDirectoryAtURL:v117 withIntermediateDirectories:0 attributes:0 error:&v245];

    if (v118)
    {
      v119 = v245;
      goto LABEL_34;
    }

    v167 = v245;
    sub_1AB45F594();

    swift_willThrow();
    v168 = v223;
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1Tm((v168 + 16));
    swift_deallocClassInstance();
    sub_1AB2BB180(&v254);
    __swift_destroy_boxed_opaque_existential_1Tm(v253);
    sub_1AB2BB1D4(v231, v169);
    v170 = v210;
    sub_1AB2BA874();
    v146 = v170;
    return v206(v146, v238);
  }

LABEL_63:
  sub_1AB31D8B0(0xD000000000000020, 0x80000001AB507590);
  sub_1AB461234();
  v183 = v234;
  sub_1AB45FF74();
  sub_1AB45FF34();
  v208(v183, v237);
  v184 = v227;
  v185 = v209;
  v186 = v238;
  v209(v227, v210, v238);
  v187 = v228;
  sub_1AB45F9D4();
  sub_1AB45F9C4();
  v226(v187, v230);
  v188 = v216;
  sub_1AB45F664();

  v206(v184, v186);
  sub_1AB01494C(v253, &v249);
  v189 = v214;
  v185(v214, v188, v186);
  swift_allocObject();
  v190 = v232;
  v191 = sub_1AB2516A4(v189);
  if (!v190)
  {
    v243 = v204;
    v244 = &off_1F2001F78;
    *&v241 = v191;
    sub_1AB0149B0(&v249, &v245);
    sub_1AB0149B0(&v241, &v248);
    sub_1AB1DFFD0();
    sub_1AB2BB230(&v245);
    v196 = sub_1AB45F6F4();
    v198 = v197;
    swift_allocObject();
    v199 = sub_1AB251E1C(v196, v198);
    v232 = 0;
    v246 = v203;
    v247 = &off_1F2001F90;
    *&v245 = v199;
    __swift_destroy_boxed_opaque_existential_1Tm(v253);
    sub_1AB0149B0(&v245, v253);
    sub_1AB461224();
    v200 = v234;
    sub_1AB45FF74();
    sub_1AB45FF34();
    v201 = v208(v200, v237);
    sub_1AB2BB1D4(v216, v201);
    goto LABEL_31;
  }

  v192 = v223;
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((v192 + 16));
  swift_deallocClassInstance();
  sub_1AB2BB180(&v254);
  __swift_destroy_boxed_opaque_existential_1Tm(&v249);
  sub_1AB2BB1D4(v216, v193);
LABEL_65:
  __swift_destroy_boxed_opaque_existential_1Tm(v253);
  sub_1AB2BB1D4(v231, v194);
  v195 = v210;
  sub_1AB2BA874();
  return v206(v195, v238);
}

void sub_1AB2BA874()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1AB45F654();
  v9 = 0;
  v2 = [v0 removeItemAtURL:v1 error:&v9];

  v3 = v9;
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v9;
    v6 = sub_1AB45F594();

    swift_willThrow();
    v9 = 0;
    v10 = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000031, 0x80000001AB507720);
    sub_1AB45F764();
    sub_1AB2BB128();
    v7 = sub_1AB461C44();
    MEMORY[0x1AC59BA20](v7);

    MEMORY[0x1AC59BA20](8250, 0xE200000000000000);
    swift_getErrorValue();
    v8 = sub_1AB462024();
    MEMORY[0x1AC59BA20](v8);

    sub_1AB31D6E0(v9, v10);
  }
}

void sub_1AB2BAA5C(uint64_t a1, void (*a2)(void))
{
  if (qword_1EB435708 != -1)
  {
    a1 = swift_once();
  }

  v4 = qword_1EB432CD0;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v4 + 24));
  sub_1AB2BB0F0((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));
  if (!v2)
  {
    a2();
    sub_1AB4615D4();

    sub_1AB45F764();
    sub_1AB2BB128();
    v5 = sub_1AB461C44();
    MEMORY[0x1AC59BA20](v5);

    sub_1AB31D8B0(0xD00000000000001ELL, 0x80000001AB507430);

    MEMORY[0x1EEE9AC00](v6);
    os_unfair_lock_lock((v4 + 24));
    sub_1AB2BB5C0(v4 + 16);
    os_unfair_lock_unlock((v4 + 24));
  }
}

uint64_t sub_1AB2BAC7C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AB45F764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  if (sub_1AB15A854(a2, *a1))
  {
    sub_1AB2BAF88();
    swift_allocError();
    *v11 = 5;
    return swift_willThrow();
  }

  else
  {
    (*(v5 + 16))(v7, a2, v4);
    sub_1AB249050(v10, v7);
    return (*(v5 + 8))(v10, v4);
  }
}

uint64_t sub_1AB2BADE4()
{
  result = sub_1AB460514();
  qword_1EB432D28 = result;
  return result;
}

id static NSNotificationName.jetpackSignatureVerificationDidFailNotification.getter()
{
  if (qword_1EB432D20 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB432D28;

  return v1;
}

uint64_t sub_1AB2BAE78(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  sub_1AB15F778(a2, &v7 - v4);
  return sub_1AB014AC0(v5, &unk_1EB4395B0, &qword_1AB4D6720);
}

unint64_t sub_1AB2BAF30()
{
  result = qword_1EB43A218;
  if (!qword_1EB43A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A218);
  }

  return result;
}

unint64_t sub_1AB2BAF88()
{
  result = qword_1EB43A220;
  if (!qword_1EB43A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A220);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine16JetpackSignatureVAA11InputStream_pSb10Foundation4DataVSgs5Error_pIegnndozo_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AB2BB004(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AB2BB060(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1AB2BB128()
{
  result = qword_1ED4D1D50;
  if (!qword_1ED4D1D50)
  {
    sub_1AB45F764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D1D50);
  }

  return result;
}

uint64_t sub_1AB2BB1D4(uint64_t a1, double a2)
{
  v3 = type metadata accessor for FileArtifact(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AB2BB284(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v49 = a1;
  v50 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v51 = v8;
  v52 = 0;
  v53 = v11 & v9;
  v54 = a2;
  v55 = a3;

  sub_1AB06B8BC(&v47);
  v12 = *(&v47 + 1);
  if (!*(&v47 + 1))
  {
    goto LABEL_25;
  }

  v13 = v47;
  sub_1AB014B78(v48, v46);
  v14 = *a5;
  v15 = sub_1AB014DB4(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_1AB01AF68(v20, a4 & 1);
    v15 = sub_1AB014DB4(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v15 = sub_1AB461FC4();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = v15;
    sub_1AB0676CC();
    v15 = v26;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * v15;
    sub_1AB0165C4(*(*a5 + 56) + 32 * v15, v45);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);

    v25 = *(v23 + 56);
    __swift_destroy_boxed_opaque_existential_1Tm((v25 + v24));
    sub_1AB014B78(v45, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (v15 >> 6) + 64) |= 1 << v15;
  v28 = (v27[6] + 16 * v15);
  *v28 = v13;
  v28[1] = v12;
  sub_1AB014B78(v46, (v27[7] + 32 * v15));
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v27[2] = v30;
LABEL_15:
    sub_1AB06B8BC(&v47);
    v12 = *(&v47 + 1);
    if (*(&v47 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v47;
        sub_1AB014B78(v48, v46);
        v34 = *a5;
        v35 = sub_1AB014DB4(v13, v12);
        v37 = *(v34 + 16);
        v38 = (v36 & 1) == 0;
        v19 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v36;
        if (*(v34 + 24) < v39)
        {
          sub_1AB01AF68(v39, 1);
          v35 = sub_1AB014DB4(v13, v12);
          if ((a4 & 1) != (v40 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 32 * v35;
          sub_1AB0165C4(*(*a5 + 56) + 32 * v35, v45);
          __swift_destroy_boxed_opaque_existential_1Tm(v46);

          v33 = *(v31 + 56);
          __swift_destroy_boxed_opaque_existential_1Tm((v33 + v32));
          sub_1AB014B78(v45, (v33 + v32));
        }

        else
        {
          v41 = *a5;
          *(*a5 + 8 * (v35 >> 6) + 64) |= 1 << v35;
          v42 = (v41[6] + 16 * v35);
          *v42 = v13;
          v42[1] = v12;
          sub_1AB014B78(v46, (v41[7] + 32 * v35));
          v43 = v41[2];
          v19 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v41[2] = v44;
        }

        sub_1AB06B8BC(&v47);
        v12 = *(&v47 + 1);
      }

      while (*(&v47 + 1));
    }

LABEL_25:
    sub_1AB0309A4(v49);

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1AB2BB5EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48) >> 9;
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

uint64_t sub_1AB2BB63C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 400) = 1;
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
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = -a2 << 9;
      *(result + 72) = 0u;
      *(result + 88) = 0u;
      *(result + 104) = 0u;
      *(result + 120) = 0u;
      *(result + 136) = 0u;
      *(result + 152) = 0u;
      *(result + 168) = 0u;
      *(result + 184) = 0u;
      *(result + 200) = 0u;
      *(result + 216) = 0u;
      *(result + 232) = 0u;
      *(result + 248) = 0u;
      *(result + 392) = 0;
      *(result + 56) = 0u;
      result += 56;
      *(result + 208) = 0u;
      *(result + 224) = 0u;
      *(result + 240) = 0u;
      *(result + 256) = 0u;
      *(result + 272) = 0u;
      *(result + 288) = 0u;
      *(result + 304) = 0u;
      *(result + 320) = 0u;
      return result;
    }

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB2BB73C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 96) & 1;
  v3 = *(result + 112) & 1;
  v4 = *(result + 128) & 0xFF01;
  v5 = *(result + 144) & 1;
  v6 = *(result + 160) & 1;
  v7 = *(result + 176) & 1;
  v8 = *(result + 192) & 1;
  v9 = *(result + 208) & 1;
  v10 = *(result + 224) & 1;
  v11 = *(result + 240) & 1;
  v12 = *(result + 256) & 1;
  v13 = *(result + 272) & 1;
  v14 = *(result + 288) & 0xFF01;
  v15 = *(result + 304) & 1;
  v16 = *(result + 320) & 1;
  v17 = *(result + 376) | (a2 << 61);
  *(result + 48) &= 0x1FFuLL;
  *(result + 96) = v2;
  *(result + 112) = v3;
  *(result + 128) = v4;
  *(result + 144) = v5;
  *(result + 160) = v6;
  *(result + 176) = v7;
  *(result + 192) = v8;
  *(result + 208) = v9;
  *(result + 224) = v10;
  *(result + 240) = v11;
  *(result + 256) = v12;
  *(result + 272) = v13;
  *(result + 288) = v14;
  *(result + 304) = v15;
  *(result + 320) = v16;
  *(result + 376) = v17;
  return result;
}

BOOL sub_1AB2BB828(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v7 = *a3;
  v8 = a3[1];
  v10 = a3[2];
  v9 = a3[3];
  memcpy(v27, v4, sizeof(v27));
  v11 = sub_1AB1DBC30(v27);
  v12 = sub_1AB054B4C(v27);
  v13 = *v12;
  v14 = v12[1];
  if (v11 == 6)
  {
    if (v13 != a1 || v14 != a2)
    {
      v16 = v12;
      v17 = sub_1AB461DA4();
      v12 = v16;
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    v19 = v12[2];
    v18 = v12[3];
    v20 = v19 == v7;
    if (v18 >= v8)
    {
      v20 = 0;
    }

    if (v19 < v7 || v20)
    {
      return 0;
    }

    v21 = v10 < v19;
    if (v10 == v19)
    {
      v21 = v9 < v18;
    }

    return !v21;
  }

  v23 = v12[2];
  v22 = v12[3];
  v24 = v13 == a1 && v14 == a2;
  if (!v24 && (sub_1AB461DA4() & 1) == 0)
  {
    return 0;
  }

  v25 = v23 == v7;
  if (v22 >= v8)
  {
    v25 = 0;
  }

  if (v23 < v7 || v25)
  {
    return 0;
  }

  v21 = v10 < v23;
  if (v10 != v23)
  {
    return !v21;
  }

  return v9 >= v22;
}

uint64_t sub_1AB2BB998(uint64_t *a1, uint64_t a2, double a3)
{
  v79 = a2;
  v6 = sub_1AB45F9B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v72 - v11;
  memcpy(v81, v3, 0x190uLL);
  v13 = sub_1AB1DBC30(v81);
  v14 = sub_1AB054B4C(v81);
  if (v13 > 3)
  {
    if (v13 > 5)
    {
      if (v13 == 6)
      {
        v40 = v14;
        v41 = sub_1AB461614();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439DB0, &qword_1AB4D6A98);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1AB4D4720;
        memcpy(v80, (v40 + 56), sizeof(v80));
        *(v42 + 32) = sub_1AB3815C0();
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A228, qword_1AB4E5CC0);
        result = v41;
        a1[3] = v43;
        *a1 = v42;
      }

      else
      {
        v58 = sub_1AB461614();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90, &qword_1AB4D6A80);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_1AB4D4720;
        v60 = sub_1AB45F584();
        v61 = AMSLogableError();

        v62 = sub_1AB460544();
        v64 = v63;

        *(v59 + 32) = v62;
        *(v59 + 40) = v64;
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8, &qword_1AB4D4400);
        result = v58;
        a1[3] = v65;
        *a1 = v59;
      }
    }

    else if (v13 == 4)
    {
      v26 = *(v14 + 56);
      result = sub_1AB461614();
      a1[3] = MEMORY[0x1E69E63B0];
      *a1 = v26;
    }

    else
    {
      v56 = *(v14 + 56);
      v55 = *(v14 + 64);

      result = sub_1AB461614();
      a1[3] = MEMORY[0x1E69E6158];
      *a1 = v56;
      a1[1] = v55;
    }

    return result;
  }

  if (v13 <= 1)
  {
    v78 = a1;
    if (!v13)
    {
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      v17 = sub_1AB461614();
      v76 = v18;
      v77 = v17;
      type metadata accessor for MonotonicTimeReference(0);
      if (qword_1ED4D1F88 != -1)
      {
        v74 = v16;
        v75 = v15;
        swift_once();
      }

      sub_1AB45F934();
      sub_1AB45F904();
      v19 = *(*&v7 + 8);
      v19(v9, v6);
      v20 = objc_opt_self();
      v21 = sub_1AB45F914();
      v22 = [v20 serverTimeFromDate_];

      v19(v12, v6);
      v23 = sub_1AB083ACC();
      v24 = v78;
      v78[3] = v23;
      *v24 = v22;
      return v77;
    }

    v75 = v7;
    v76 = v4;
    v44 = *(v14 + 16);
    v74 = *(v14 + 24);
    v45 = sub_1AB461614();
    v47 = sub_1AB248C34(v80, v45, v46);

    if (v47)
    {
      v80[0] = sub_1AB461614();
      v80[1] = v48;
      MEMORY[0x1AC59BA20](0x6D69547472617453, 0xE900000000000065);
      v77 = v80[0];
      type metadata accessor for MonotonicTimeReference(0);
      if (qword_1ED4D1F88 != -1)
      {
        *&v73 = *&v74;
        v74 = v44;
        swift_once();
      }

      sub_1AB45F934();
      sub_1AB45F904();
      v49 = *(*&v75 + 8);
      v49(v9, v6);
      v50 = objc_opt_self();
      v51 = sub_1AB45F914();
      v52 = [v50 serverTimeFromDate_];

      v49(v12, v6);
      v53 = sub_1AB083ACC();
      v54 = v78;
      v78[3] = v53;
      *v54 = v52;
      return v77;
    }

    v66 = sub_1AB461614();
    v68 = v67;
    v69 = 0;
LABEL_26:
    sub_1AB1603E0();
    swift_allocError();
    *v71 = v66;
    *(v71 + 8) = v68;
    *(v71 + 16) = v69;
    return swift_willThrow();
  }

  if (v13 != 2)
  {
    v57 = *(v14 + 49);
    result = sub_1AB461614();
    a1[3] = MEMORY[0x1E69E6370];
    *a1 = v57;
    return result;
  }

  v75 = v7;
  v76 = v4;
  v78 = a1;
  v27 = *(v14 + 24);
  v73 = *(v14 + 16);
  v74 = v27;
  v28 = sub_1AB461614();
  sub_1AB057310(v28, v29);
  v31 = v30;

  if (!v31)
  {
    v66 = sub_1AB461614();
    v68 = v70;
    v69 = 1;
    goto LABEL_26;
  }

  v80[0] = sub_1AB461614();
  v80[1] = v32;
  MEMORY[0x1AC59BA20](0x656D6954646E45, 0xE700000000000000);
  v77 = v80[0];
  type metadata accessor for MonotonicTimeReference(0);
  v33 = v73;
  if (qword_1ED4D1F88 != -1)
  {
    *&v73 = *&v74;
    v74 = v33;
    swift_once();
  }

  sub_1AB45F934();
  sub_1AB45F904();
  v34 = *(*&v75 + 8);
  v34(v9, v6);
  v35 = objc_opt_self();
  v36 = sub_1AB45F914();
  v37 = [v35 serverTimeFromDate_];

  v34(v12, v6);
  v38 = sub_1AB083ACC();
  v39 = v78;
  v78[3] = v38;
  *v39 = v37;
  return v77;
}

uint64_t dispatch thunk of JetPackAssetCache._cache(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB027554;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of JetPackAssetCache._asset(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AB027554;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of JetPackAssetCache._evict(asset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AB027554;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of JetPackAssetCache._empty()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027554;

  return v7(a1, a2);
}

uint64_t dispatch thunk of JetPackAssetCache._allCachedAssets.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB2231A8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of JetPackAssetCache._executeWithTransaction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 64) + **(a6 + 64));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1AB027460;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t LogMessageLevel.osLogType.getter(uint64_t a1)
{
  if (*v1 - 1 < 2)
  {
    return sub_1AB461094();
  }

  if (*v1)
  {
    return sub_1AB461064();
  }

  return sub_1AB461074();
}

uint64_t sub_1AB2BC9F4()
{
  sub_1AB4620A4();
  sub_1AB460684();
  sub_1AB460684();
  return sub_1AB462104();
}

uint64_t sub_1AB2BCA5C(uint64_t a1)
{
  sub_1AB460684();

  return sub_1AB460684();
}

uint64_t sub_1AB2BCAAC(uint64_t a1)
{
  sub_1AB4620A4();
  sub_1AB460684();
  sub_1AB460684();
  return sub_1AB462104();
}

void sub_1AB2BCB30(uint64_t a1)
{
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2241F8((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1EB435668 = v2;
}

uint64_t sub_1AB2BCC34(uint64_t a1)
{
  v3[4] = &type metadata for OSLogger;
  v3[5] = &protocol witness table for OSLogger;
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2241F8((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 24));
  v3[1] = v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A268, &qword_1AB4E5EE8);
  swift_allocObject();
  result = sub_1AB4622D4();
  qword_1EB46BDD8 = result;
  return result;
}

void sub_1AB2BCDCC(uint64_t a1)
{
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2241F8((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1EB4358E8 = v2;
}

void sub_1AB2BCF04(uint64_t a1)
{
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2241F8((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1EB43A230 = v2;
}

void sub_1AB2BD054(uint64_t a1)
{
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2241F8((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1EB43A238 = v2;
}

uint64_t sub_1AB2BD168(uint64_t a1)
{
  v3[4] = &type metadata for OSLogger;
  v3[5] = &protocol witness table for OSLogger;
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2241F8((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 24));
  v3[1] = v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A268, &qword_1AB4E5EE8);
  swift_allocObject();
  result = sub_1AB4622D4();
  qword_1EB43A240 = result;
  return result;
}

void sub_1AB2BD2EC(uint64_t a1)
{
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2241F8((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1EB43A248 = v2;
}

id sub_1AB2BD400@<X0>(void *a1@<X0>, void **a2@<X1>, void **a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a4;
    swift_once();
    a4 = v8;
    a2 = v7;
  }

  v5 = *a2;
  *a4 = *a2;

  return v5;
}

uint64_t sub_1AB2BD45C(uint64_t a1)
{
  v3[4] = &type metadata for OSLogger;
  v3[5] = &protocol witness table for OSLogger;
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2241F8((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 24));
  v3[1] = v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A268, &qword_1AB4E5EE8);
  swift_allocObject();
  result = sub_1AB4622D4();
  qword_1EB43A250 = result;
  return result;
}

uint64_t sub_1AB2BD5B0(uint64_t a1)
{
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2241F8((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A270, &qword_1AB4E5EF0);
  swift_allocObject();
  result = sub_1AB4622D4();
  qword_1EB4334B0 = result;
  return result;
}

void *sub_1AB2BD760(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return sub_1AB4622E4();
}

uint64_t sub_1AB2BD7AC(uint64_t a1)
{
  v3[4] = &type metadata for OSLogger;
  v3[5] = &protocol witness table for OSLogger;
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2241F8((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 24));
  v3[1] = v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A268, &qword_1AB4E5EE8);
  swift_allocObject();
  result = sub_1AB4622D4();
  qword_1EB433A40 = result;
  return result;
}

uint64_t sub_1AB2BD900(uint64_t a1)
{
  v3[4] = &type metadata for OSLogger;
  v3[5] = &protocol witness table for OSLogger;
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2241F8((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 24));
  v3[1] = v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A268, &qword_1AB4E5EE8);
  swift_allocObject();
  result = sub_1AB4622D4();
  qword_1EB43A258 = result;
  return result;
}

double sub_1AB2BDA58(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

unint64_t sub_1AB2BDAE8()
{
  result = qword_1EB43A260;
  if (!qword_1EB43A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A260);
  }

  return result;
}

uint64_t _DispatchQueueExecutor.__allocating_init(label:qos:target:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v22 = a4;
  v16 = a3;
  v20 = a1;
  v5 = sub_1AB461114();
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v17 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1AB4601F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v15[1] = sub_1AB015664();
  (*(v9 + 16))(v11, a3, v8);
  v23 = MEMORY[0x1E69E7CC0];
  sub_1AB01CAD8(&qword_1ED4D1F50, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770, &unk_1AB4D89F0);
  sub_1AB01CB68(&qword_1ED4D1F68, &unk_1EB439770, &unk_1AB4D89F0);
  sub_1AB4614E4();
  (*(v18 + 104))(v17, *MEMORY[0x1E69E8098], v19);
  v13 = sub_1AB461154();
  (*(v9 + 8))(v16, v8);
  *(v12 + 16) = v13;
  return v12;
}

uint64_t _DispatchQueueExecutor.init(label:qos:target:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v16 = a3;
  v19 = a1;
  v20 = a2;
  v5 = sub_1AB461114();
  v17 = *(v5 - 8);
  v18 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB4610E4();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1AB4601F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = sub_1AB015664();
  (*(v10 + 16))(v12, a3, v9);
  v23 = MEMORY[0x1E69E7CC0];
  sub_1AB01CAD8(&qword_1ED4D1F50, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439770, &unk_1AB4D89F0);
  sub_1AB01CB68(&qword_1ED4D1F68, &unk_1EB439770, &unk_1AB4D89F0);
  sub_1AB4614E4();
  (*(v17 + 104))(v7, *MEMORY[0x1E69E8098], v18);
  v13 = sub_1AB461154();
  (*(v10 + 8))(v16, v9);
  result = v22;
  *(v22 + 16) = v13;
  return result;
}

uint64_t _DispatchQueueExecutor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ReplayLogger.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A280, &qword_1AB4E5FC8);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  return v0;
}

uint64_t ReplayLogger.snapshot(limitedTo:)(unint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  if (a1 < 1)
  {

    v9 = v4;
    goto LABEL_12;
  }

  v5 = *(v4 + 16);
  if (v5 >= a1)
  {
    v6 = v5 - a1;
  }

  else
  {
    v6 = 0;
  }

  sub_1AB461E94();
  swift_unknownObjectRetain_n();

  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = *(v7 + 16);

  if (v8 != v5 - v6)
  {
    swift_unknownObjectRelease();
    sub_1AB2BEAD0(v4, v4 + 32, v6, (2 * v5) | 1);
    v9 = v11;
    goto LABEL_10;
  }

  v9 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v9)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_10:
    swift_unknownObjectRelease();
  }

LABEL_12:
  os_unfair_lock_unlock((v3 + 24));
  return v9;
}

uint64_t ReplayLogger.replay(last:messagesInto:)(unint64_t a1, void *a2)
{
  v3 = ReplayLogger.snapshot(limitedTo:)(a1);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *v5;
      v5 += 16;
      v7 = a2[3];
      v8 = a2[4];
      __swift_project_boxed_opaque_existential_1Tm(a2, v7);
      v12 = v6;
      v9 = *(v8 + 8);

      v9(v10, &v12, v7, v8);

      --v4;
    }

    while (v4);
  }
}

Swift::Bool __swiftcall ReplayLogger.hasEmitted(messageMatching:withLevel:)(Swift::String messageMatching, JetEngine::LogMessageLevel withLevel)
{
  object = messageMatching._object;
  countAndFlagsBits = messageMatching._countAndFlagsBits;
  v4 = *withLevel;
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);

  os_unfair_lock_unlock((v5 + 24));
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (v6 + 40);
    while (v9 < *(v6 + 16))
    {
      if (*v10 == v4)
      {
        v12 = qword_1EB4359F8;

        if (v12 != -1)
        {
          swift_once();
        }

        v13 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v13[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v13 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        *(swift_allocObject() + 16) = (os_unfair_lock_opaque_low & 1) == 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
        sub_1AB016A34();
        v15 = sub_1AB460484();
        v17 = v16;

        if (v15 == countAndFlagsBits && v17 == object)
        {

LABEL_15:

          return 1;
        }

        v11 = sub_1AB461DA4();

        if (v11)
        {
          goto LABEL_15;
        }
      }

      ++v9;
      v10 += 16;
      if (v8 == v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

Swift::Void __swiftcall ReplayLogger.reset()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  *(v1 + 16) = MEMORY[0x1E69E7CC0];

  os_unfair_lock_unlock((v1 + 24));
}

Swift::Void __swiftcall ReplayLogger.log(contentsOf:withLevel:)(Swift::OpaquePointer contentsOf, JetEngine::LogMessageLevel withLevel)
{
  v3 = *(v2 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_1AB2BEBA8((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
}

char *sub_1AB2BE790(char **a1, uint64_t a2, char a3)
{
  v6 = *a1;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AB2B13D8(0, *(v6 + 2) + 1, 1, v6);
    v6 = result;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    result = sub_1AB2B13D8((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[16 * v9];
  *(v10 + 4) = a2;
  v10[40] = a3;
  *a1 = v6;
  return result;
}

uint64_t ReplayLogger.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1AB2BE8AC()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2BEBF8((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

char *sub_1AB2BE90C(void *a1, uint64_t a2, uint64_t a3)
{
  result = [a1 numberOfRanges];
  v7 = (result - 1);
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if ((v7 & 0x8000000000000000) == 0)
  {
    if (result != 1)
    {
      v8 = sub_1AB1AFEFC((result - 1), 0);
      v9 = a1;

      v10 = sub_1AB1AF328(&v12, v8 + 4, v7, v9, a2, a3);
      v11 = v12;

      if (v10 == v7)
      {
        return v8;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

void *sub_1AB2BE9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1AB1AFF10(*(a1 + 16), 0);
  v8 = *(sub_1AB45F2C4() - 8);
  v10 = sub_1AB1AF4B4(&v12, v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v3, a1, a2, a3, v9);

  if (v10 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

void sub_1AB2BEAD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439DE0, &qword_1AB4E4E78);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t SentryConfiguration.projectName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t SentryConfiguration.topic.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SentryConfiguration.javascriptVersion.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t SentryConfiguration.environment.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t SentryConfiguration.environment.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t SentryConfiguration.tags.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

id sub_1AB2BEE00(void *a1)
{
  [a1 setAnonymous_];

  return a1;
}

uint64_t sub_1AB2BEE54(uint64_t *a1, int a2)
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

uint64_t sub_1AB2BEE9C(uint64_t result, int a2, int a3)
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

uint64_t sub_1AB2BEEF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x646E616D65446E6FLL;
  if (v2 != 1)
  {
    v4 = 0x74726174536E6FLL;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x646E616D65446E6FLL;
  if (*a2 != 1)
  {
    v8 = 0x74726174536E6FLL;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AB461DA4();
  }

  return v11 & 1;
}

uint64_t sub_1AB2BEFF0()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB2BF08C(uint64_t a1)
{
  sub_1AB460684();
}

uint64_t sub_1AB2BF114(uint64_t a1)
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

unint64_t sub_1AB2BF1AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AB2C36F8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AB2BF1DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x646E616D65446E6FLL;
  if (v2 != 1)
  {
    v5 = 0x74726174536E6FLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

_BYTE *sub_1AB2BF234@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x646E616D65446E6FLL;
  if (v2 != 1)
  {
    v5 = 0x74726174536E6FLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*result)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  a2[3] = MEMORY[0x1E69E6158];
  *a2 = v7;
  a2[1] = v3;
  return result;
}

unint64_t sub_1AB2BF298@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1AB0165C4(a1, v6);
  if (swift_dynamicCast())
  {
    result = sub_1AB2C36F8(v4, v5);
  }

  else
  {
    result = 3;
  }

  *a2 = result;
  return result;
}

id sub_1AB2BF304()
{
  if (qword_1ED4CFE90 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED4CFE98;
  qword_1EB43A288 = qword_1ED4CFE98;

  return v1;
}

uint64_t sub_1AB2BF368@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - v5;
  v7 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v44 = 0xD000000000000014;
  v45 = 0x80000001AB5079C0;
  Preferences.subscript.getter(&v44, ObjectType, MEMORY[0x1E69E6158], v7, &v41);

  if (*(&v41 + 1))
  {
    v9 = v41;
  }

  else
  {
    v9 = 0xD00000000000004CLL;
  }

  if (*(&v41 + 1))
  {
    v10 = *(&v41 + 1);
  }

  else
  {
    v10 = 0x80000001AB5079E0;
  }

  sub_1AB45F714();
  v11 = sub_1AB45F764();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    v39 = a1;
    sub_1AB014AC0(v6, &unk_1EB4395B0, &qword_1AB4D6720);
    if (qword_1EB435D60 != -1)
    {
      swift_once();
    }

    v38 = qword_1EB43A288;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AB4D47F0;
    v47 = sub_1AB0168A8(0, 1, 0, MEMORY[0x1E69E7CC0]);
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    v15 = *(v2 + 16);
    v16 = *(v2 + 32);
    v46 = &type metadata for AppleServicesLocalizationLiveUpdateService;
    v17 = swift_allocObject();
    v44 = v17;
    v18 = *(v2 + 16);
    *(v17 + 16) = *v2;
    *(v17 + 32) = v18;
    *(v17 + 48) = *(v2 + 32);
    sub_1AB014A58(&v44, v40, &unk_1EB437E60, &qword_1AB4D4730);
    v41 = 0u;
    v42 = 0u;
    swift_unknownObjectRetain();
    v19 = v15;

    v20 = v16;
    sub_1AB0169C4(v40, &v41);
    v43 = 2;
    v21 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1AB0168A8(0, *(v21 + 2) + 1, 1, v21);
      v47 = v21;
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    a1 = v39;
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[40 * v23];
    v25 = v41;
    v26 = v42;
    v24[64] = v43;
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    v47 = v21;
    sub_1AB014AC0(&v44, &unk_1EB437E60, &qword_1AB4D4730);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(v13 + 32) = v47;
    v47 = sub_1AB0168A8(0, 34, 0, MEMORY[0x1E69E7CC0]);
    v28._countAndFlagsBits = 0xD000000000000021;
    v28._object = 0x80000001AB507A30;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    v46 = MEMORY[0x1E69E6158];
    v44 = v9;
    v45 = v10;
    sub_1AB014A58(&v44, v40, &unk_1EB437E60, &qword_1AB4D4730);
    v41 = 0u;
    v42 = 0u;
    sub_1AB0169C4(v40, &v41);
    v43 = 2;
    v29 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1AB0168A8(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[40 * v31];
    v33 = v41;
    v34 = v42;
    v32[64] = v43;
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    v47 = v29;
    sub_1AB014AC0(&v44, &unk_1EB437E60, &qword_1AB4D4730);
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    *(v13 + 40) = v47;
    *&v41 = v38;
    LOBYTE(v44) = 0;
    OSLogger.log(contentsOf:withLevel:)(v13, &v44);

    v36 = 1;
  }

  else
  {

    (*(v12 + 32))(a1, v6, v11);
    v36 = 0;
  }

  return (*(v12 + 56))(a1, v36, 1, v11);
}

uint64_t sub_1AB2BF880()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  *&v29 = 0xD00000000000001ELL;
  *(&v29 + 1) = 0x80000001AB507A60;
  Preferences.subscript.getter(&v29, ObjectType, &type metadata for AppleServicesLocalizationLiveUpdateService.CachingPolicyPreferenceKey, v1, &off_1EE7643B0, v32);
  result = v32[0];
  if (v32[0] == 3)
  {
    if (qword_1EB435D60 != -1)
    {
      swift_once();
    }

    v4 = qword_1EB43A288;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AB4D47F0;
    v34 = sub_1AB0168A8(0, 1, 0, MEMORY[0x1E69E7CC0]);
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v6);
    v7 = *(v0 + 16);
    v8 = *(v0 + 32);
    v33 = &type metadata for AppleServicesLocalizationLiveUpdateService;
    v9 = swift_allocObject();
    *v32 = v9;
    v10 = *(v0 + 16);
    *(v9 + 16) = *v0;
    *(v9 + 32) = v10;
    *(v9 + 48) = *(v0 + 32);
    sub_1AB014A58(v32, v28, &unk_1EB437E60, &qword_1AB4D4730);
    v29 = 0u;
    v30 = 0u;
    swift_unknownObjectRetain();
    v11 = v7;

    v12 = v8;
    sub_1AB0169C4(v28, &v29);
    v31 = 2;
    v13 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1AB0168A8(0, *(v13 + 2) + 1, 1, v13);
      v34 = v13;
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_1AB0168A8((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v16 = &v13[40 * v15];
    v17 = v29;
    v18 = v30;
    v16[64] = v31;
    *(v16 + 2) = v17;
    *(v16 + 3) = v18;
    v34 = v13;
    sub_1AB014AC0(v32, &unk_1EB437E60, &qword_1AB4D4730);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    *(v5 + 32) = v34;
    v34 = sub_1AB0168A8(0, 56, 0, MEMORY[0x1E69E7CC0]);
    v20._countAndFlagsBits = 0xD000000000000030;
    v20._object = 0x80000001AB507A80;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    v33 = &type metadata for AppleServicesLocalizationLiveUpdateService.CachingPolicy;
    v32[0] = 2;
    sub_1AB014A58(v32, v28, &unk_1EB437E60, &qword_1AB4D4730);
    v29 = 0u;
    v30 = 0u;
    sub_1AB0169C4(v28, &v29);
    v31 = 2;
    v21 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1AB0168A8(0, *(v21 + 2) + 1, 1, v21);
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[40 * v23];
    v25 = v29;
    v26 = v30;
    v24[64] = v31;
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    v34 = v21;
    sub_1AB014AC0(v32, &unk_1EB437E60, &qword_1AB4D4730);
    v27._countAndFlagsBits = 0x7963696C6F7020;
    v27._object = 0xE700000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(v5 + 40) = v34;
    *&v29 = v4;
    v32[0] = 0;
    OSLogger.log(contentsOf:withLevel:)(v5, v32);

    return 2;
  }

  return result;
}

uint64_t sub_1AB2BFC4C(void *a1, uint64_t a2, uint64_t a3)
{
  if (sub_1AB2BF880() != 2)
  {
    if (qword_1EB435D60 != -1)
    {
      swift_once();
    }

    v13 = qword_1EB43A288;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1AB4D47F0;
    v79 = sub_1AB0168A8(0, 1, 0, MEMORY[0x1E69E7CC0]);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    v16 = *(v3 + 16);
    v17 = *(v3 + 32);
    v78 = &type metadata for AppleServicesLocalizationLiveUpdateService;
    v18 = swift_allocObject();
    v77[0] = v18;
    v19 = *(v3 + 16);
    *(v18 + 16) = *v3;
    *(v18 + 32) = v19;
    *(v18 + 48) = *(v3 + 32);
    sub_1AB014A58(v77, v73, &unk_1EB437E60, &qword_1AB4D4730);
    v74 = 0u;
    v75 = 0u;
    swift_unknownObjectRetain();
    v20 = v16;

    v21 = v17;
    sub_1AB0169C4(v73, &v74);
    v76 = 2;
    v22 = v79;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1AB0168A8(0, *(v22 + 2) + 1, 1, v22);
      v79 = v22;
    }

    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_1AB0168A8((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    v25 = &v22[40 * v24];
    v26 = v74;
    v27 = v75;
    v25[64] = v76;
    *(v25 + 2) = v26;
    *(v25 + 3) = v27;
    v79 = v22;
    sub_1AB014AC0(v77, &unk_1EB437E60, &qword_1AB4D4730);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    *(v14 + 32) = v79;
    v79 = sub_1AB0168A8(0, 48, 0, MEMORY[0x1E69E7CC0]);
    v29._object = 0x80000001AB507B00;
    v29._countAndFlagsBits = 0xD000000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v29);
    v30 = sub_1AB2BF880();
    v78 = &type metadata for AppleServicesLocalizationLiveUpdateService.CachingPolicy;
    LOBYTE(v77[0]) = v30;
    sub_1AB014A58(v77, v73, &unk_1EB437E60, &qword_1AB4D4730);
    v74 = 0u;
    v75 = 0u;
    sub_1AB0169C4(v73, &v74);
    v76 = 2;
    v31 = v79;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1AB0168A8(0, *(v31 + 2) + 1, 1, v31);
    }

    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_1AB0168A8((v32 > 1), v33 + 1, 1, v31);
    }

    *(v31 + 2) = v33 + 1;
    v34 = &v31[40 * v33];
    v35 = v74;
    v36 = v75;
    v34[64] = v76;
    *(v34 + 2) = v35;
    *(v34 + 3) = v36;
    v79 = v31;
    sub_1AB014AC0(v77, &unk_1EB437E60, &qword_1AB4D4730);
    v37._countAndFlagsBits = 0x676E696863616320;
    v37._object = 0xEF7963696C6F7020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v37);
    *(v14 + 40) = v79;
    v38 = sub_1AB461094();
    if (os_log_type_enabled(v13, v38))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v39 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v39[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v39 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v41 = swift_allocObject();
      *(v41 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v74 = v14;
      *(&v74 + 1) = sub_1AB0223E4;
      *&v75 = v41;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
      sub_1AB016A34();
      v42 = sub_1AB460484();
      v44 = v43;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1AB4D4720;
      *(v45 + 56) = MEMORY[0x1E69E6158];
      *(v45 + 64) = sub_1AB016854();
      *(v45 + 32) = v42;
      *(v45 + 40) = v44;
      sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, v13, v38, v45);
    }
  }

  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v7);
  v9 = *(v8 + 8);
  v10 = *(v9(v7, v8) + 16);

  if (!v10)
  {
    if (qword_1EB435D60 != -1)
    {
      swift_once();
    }

    v46 = qword_1EB43A288;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1AB4D47F0;
    v79 = sub_1AB0168A8(0, 1, 0, MEMORY[0x1E69E7CC0]);
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v48);
    v49 = *(v3 + 16);
    v50 = *(v3 + 32);
    v78 = &type metadata for AppleServicesLocalizationLiveUpdateService;
    v51 = swift_allocObject();
    v77[0] = v51;
    v52 = *(v3 + 16);
    *(v51 + 16) = *v3;
    *(v51 + 32) = v52;
    *(v51 + 48) = *(v3 + 32);
    sub_1AB014A58(v77, v73, &unk_1EB437E60, &qword_1AB4D4730);
    v74 = 0u;
    v75 = 0u;
    swift_unknownObjectRetain();
    v53 = v49;

    v54 = v50;
    sub_1AB0169C4(v73, &v74);
    v76 = 2;
    v55 = v79;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_1AB0168A8(0, *(v55 + 2) + 1, 1, v55);
      v79 = v55;
    }

    v57 = *(v55 + 2);
    v56 = *(v55 + 3);
    if (v57 >= v56 >> 1)
    {
      v55 = sub_1AB0168A8((v56 > 1), v57 + 1, 1, v55);
    }

    *(v55 + 2) = v57 + 1;
    v58 = &v55[40 * v57];
    v59 = v74;
    v60 = v75;
    v58[64] = v76;
    *(v58 + 2) = v59;
    *(v58 + 3) = v60;
    v79 = v55;
    sub_1AB014AC0(v77, &unk_1EB437E60, &qword_1AB4D4730);
    v61._countAndFlagsBits = 0;
    v61._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v61);
    *(v47 + 32) = v79;
    v79 = sub_1AB0168A8(0, 74, 0, MEMORY[0x1E69E7CC0]);
    v62._countAndFlagsBits = 543516756;
    v62._object = 0xE400000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v62);
    v63 = a1[3];
    v64 = __swift_project_boxed_opaque_existential_1Tm(a1, v63);
    v78 = v63;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v77);
    (*(*(v63 - 8) + 16))(boxed_opaque_existential_0, v64, v63);
    sub_1AB014A58(v77, v73, &unk_1EB437E60, &qword_1AB4D4730);
    v74 = 0u;
    v75 = 0u;
    sub_1AB0169C4(v73, &v74);
    v76 = 2;
    v66 = v79;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_1AB0168A8(0, *(v66 + 2) + 1, 1, v66);
      v79 = v66;
    }

    v68 = *(v66 + 2);
    v67 = *(v66 + 3);
    if (v68 >= v67 >> 1)
    {
      v66 = sub_1AB0168A8((v67 > 1), v68 + 1, 1, v66);
    }

    *(v66 + 2) = v68 + 1;
    v69 = &v66[40 * v68];
    v70 = v74;
    v71 = v75;
    v69[64] = v76;
    *(v69 + 2) = v70;
    *(v69 + 3) = v71;
    v79 = v66;
    sub_1AB014AC0(v77, &unk_1EB437E60, &qword_1AB4D4730);
    v72._countAndFlagsBits = 0xD000000000000045;
    v72._object = 0x80000001AB507B30;
    LogMessage.StringInterpolation.appendLiteral(_:)(v72);
    *(v47 + 40) = v79;
    *&v74 = v46;
    LOBYTE(v77[0]) = 0;
    OSLogger.log(contentsOf:withLevel:)(v47, v77);
  }

  v11 = v9(v7, v8);
  sub_1AB2C057C(v11, a2, a3);
}

unint64_t sub_1AB2C057C(uint64_t *a1, uint64_t a2, int64_t a3)
{
  v4 = v3;
  v222 = a3;
  v221 = a2;
  v219 = a1;
  v238 = *MEMORY[0x1E69E9840];
  v5 = sub_1AB4601B4();
  v213 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v197 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB4601F4();
  v211 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v197 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_1AB45F0A4();
  v216 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v210 = &v197 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v215 = &v197 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v197 - v15;
  v17 = sub_1AB45F764();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v197 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB2BF368(v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1AB014AC0(v16, &unk_1EB4395B0, &qword_1AB4D6720);
    return sub_1AB0B22E0(MEMORY[0x1E69E7CC0]);
  }

  v199 = v10;
  v200 = v7;
  v201 = v8;
  v22 = *(v18 + 32);
  v220 = v20;
  v22(v20, v16, v17);
  if (qword_1EB435D60 != -1)
  {
    swift_once();
  }

  v218 = qword_1EB43A288;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v23 = swift_allocObject();
  v205 = xmmword_1AB4D47F0;
  *(v23 + 16) = xmmword_1AB4D47F0;
  v229 = sub_1AB0168A8(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  v25 = *v3;
  v225 = v3[1];
  v26 = v3[2];
  v27 = v3[3];
  v28 = v3[4];
  v237 = &type metadata for AppleServicesLocalizationLiveUpdateService;
  v29 = swift_allocObject();
  v235 = v29;
  v30 = *(v4 + 1);
  *(v29 + 16) = *v4;
  *(v29 + 32) = v30;
  *(v29 + 48) = v4[4];
  sub_1AB014A58(&v235, &v234, &unk_1EB437E60, &qword_1AB4D4730);
  aBlock = 0u;
  v231 = 0u;
  v226 = v25;
  swift_unknownObjectRetain();
  v203 = v26;
  v212 = v27;

  v204 = v28;
  sub_1AB0169C4(&v234, &aBlock);
  LOBYTE(v232) = 2;
  v31 = v229;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v208 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v31 = sub_1AB0168A8(0, *(v31 + 2) + 1, 1, v31);
    v229 = v31;
  }

  v33 = v222;
  v35 = *(v31 + 2);
  v34 = *(v31 + 3);
  v214 = v4;
  v202 = v5;
  if (v35 >= v34 >> 1)
  {
    v31 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v31);
  }

  *(v31 + 2) = v35 + 1;
  v36 = &v31[40 * v35];
  v37 = aBlock;
  v38 = v231;
  v36[64] = v232;
  *(v36 + 2) = v37;
  *(v36 + 3) = v38;
  v229 = v31;
  sub_1AB014AC0(&v235, &unk_1EB437E60, &qword_1AB4D4730);
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v39);
  *(v23 + 32) = v229;
  v229 = sub_1AB0168A8(0, 68, 0, MEMORY[0x1E69E7CC0]);
  v40._object = 0x80000001AB507880;
  v40._countAndFlagsBits = 0xD000000000000014;
  LogMessage.StringInterpolation.appendLiteral(_:)(v40);
  v41 = v219[2];
  v237 = MEMORY[0x1E69E6530];
  v235 = v41;
  sub_1AB014A58(&v235, &v234, &unk_1EB437E60, &qword_1AB4D4730);
  aBlock = 0u;
  v231 = 0u;
  sub_1AB0169C4(&v234, &aBlock);
  LOBYTE(v232) = 0;
  v42 = v229;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v42 = sub_1AB0168A8(0, *(v42 + 2) + 1, 1, v42);
  }

  v44 = *(v42 + 2);
  v43 = *(v42 + 3);
  if (v44 >= v43 >> 1)
  {
    v42 = sub_1AB0168A8((v43 > 1), v44 + 1, 1, v42);
  }

  *(v42 + 2) = v44 + 1;
  v45 = &v42[40 * v44];
  v46 = aBlock;
  v47 = v231;
  v45[64] = v232;
  *(v45 + 2) = v46;
  *(v45 + 3) = v47;
  v229 = v42;
  sub_1AB014AC0(&v235, &unk_1EB437E60, &qword_1AB4D4730);
  v48._countAndFlagsBits = 0x6E69207379656B20;
  v48._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v48);
  v49 = MEMORY[0x1E69E6158];
  v237 = MEMORY[0x1E69E6158];
  v235 = v221;
  v236 = v33;
  sub_1AB014A58(&v235, &v234, &unk_1EB437E60, &qword_1AB4D4730);
  aBlock = 0u;
  v231 = 0u;

  sub_1AB0169C4(&v234, &aBlock);
  LOBYTE(v232) = 0;
  v50 = v229;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v50 = sub_1AB0168A8(0, *(v50 + 2) + 1, 1, v50);
    v229 = v50;
  }

  v52 = *(v50 + 2);
  v51 = *(v50 + 3);
  v207 = v18;
  if (v52 >= v51 >> 1)
  {
    v50 = sub_1AB0168A8((v51 > 1), v52 + 1, 1, v50);
  }

  *(v50 + 2) = v52 + 1;
  v53 = &v50[40 * v52];
  v54 = aBlock;
  v55 = v231;
  v53[64] = v232;
  *(v53 + 2) = v54;
  *(v53 + 3) = v55;
  v229 = v50;
  sub_1AB014AC0(&v235, &unk_1EB437E60, &qword_1AB4D4730);
  v56._countAndFlagsBits = 0xD000000000000011;
  v56._object = 0x80000001AB5078A0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v56);
  ObjectType = swift_getObjectType();
  v235 = 0xD000000000000020;
  v236 = 0x80000001AB507850;
  v223 = 0x80000001AB507850;
  v224 = ObjectType;
  Preferences.subscript.getter(&v235, ObjectType, v49, v225, &aBlock);

  v59 = *(&aBlock + 1);
  v58 = aBlock;
  if (!*(&aBlock + 1))
  {
    v58 = 0;
    v59 = 0xE000000000000000;
  }

  v237 = v49;
  v235 = v58;
  v236 = v59;
  sub_1AB014A58(&v235, &v234, &unk_1EB437E60, &qword_1AB4D4730);
  aBlock = 0u;
  v231 = 0u;
  sub_1AB0169C4(&v234, &aBlock);
  LOBYTE(v232) = 0;
  v60 = v229;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v60 = sub_1AB0168A8(0, *(v60 + 2) + 1, 1, v60);
    v229 = v60;
  }

  v62 = *(v60 + 2);
  v61 = *(v60 + 3);
  if (v62 >= v61 >> 1)
  {
    v60 = sub_1AB0168A8((v61 > 1), v62 + 1, 1, v60);
  }

  *(v60 + 2) = v62 + 1;
  v63 = &v60[40 * v62];
  v64 = aBlock;
  v65 = v231;
  v63[64] = v232;
  *(v63 + 2) = v64;
  *(v63 + 3) = v65;
  v229 = v60;
  sub_1AB014AC0(&v235, &unk_1EB437E60, &qword_1AB4D4730);
  v66._countAndFlagsBits = 0xD000000000000012;
  v66._object = 0x80000001AB5078C0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v66);
  v67 = sub_1AB45F614();
  v237 = v49;
  v235 = v67;
  v236 = v68;
  sub_1AB014A58(&v235, &v234, &unk_1EB437E60, &qword_1AB4D4730);
  aBlock = 0u;
  v231 = 0u;
  sub_1AB0169C4(&v234, &aBlock);
  LOBYTE(v232) = 2;
  v69 = v229;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v69 = sub_1AB0168A8(0, *(v69 + 2) + 1, 1, v69);
    v229 = v69;
  }

  v71 = *(v69 + 2);
  v70 = *(v69 + 3);
  if (v71 >= v70 >> 1)
  {
    v69 = sub_1AB0168A8((v70 > 1), v71 + 1, 1, v69);
  }

  *(v69 + 2) = v71 + 1;
  v72 = &v69[40 * v71];
  v73 = aBlock;
  v74 = v231;
  v72[64] = v232;
  *(v72 + 2) = v73;
  *(v72 + 3) = v74;
  v229 = v69;
  sub_1AB014AC0(&v235, &unk_1EB437E60, &qword_1AB4D4730);
  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v75);
  *(v23 + 40) = v229;
  v76 = sub_1AB461094();
  if (os_log_type_enabled(v218, v76))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v77 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v77[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v77 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v79 = swift_allocObject();
    *(v79 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&aBlock = v23;
    *(&aBlock + 1) = sub_1AB0223E4;
    *&v231 = v79;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
    sub_1AB016A34();
    v80 = sub_1AB460484();
    v82 = v81;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_1AB4D4720;
    *(v83 + 56) = v49;
    *(v83 + 64) = sub_1AB016854();
    *(v83 + 32) = v80;
    *(v83 + 40) = v82;
    sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, v218, v76, v83);
  }

  v84 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
  v85 = swift_allocObject();
  *&v85[4]._os_unfair_lock_opaque = xmmword_1AB4D9850;
  *&v85[8]._os_unfair_lock_opaque = 0x6D726F6674616C70;
  *&v85[10]._os_unfair_lock_opaque = 0xE800000000000000;
  *&v85[12]._os_unfair_lock_opaque = 0;
  *&v85[14]._os_unfair_lock_opaque = 0xE000000000000000;
  *&v85[18]._os_unfair_lock_opaque = v49;
  strcpy(&v85[20], "languageCode");
  BYTE1(v85[23]._os_unfair_lock_opaque) = 0;
  HIWORD(v85[23]._os_unfair_lock_opaque) = -5120;
  *&v85[24]._os_unfair_lock_opaque = v221;
  *&v85[26]._os_unfair_lock_opaque = v222;
  *&v85[30]._os_unfair_lock_opaque = v49;
  *&v85[32]._os_unfair_lock_opaque = 0xD000000000000018;
  *&v85[34]._os_unfair_lock_opaque = 0x80000001AB5078E0;
  *&v85[36]._os_unfair_lock_opaque = 2;
  *&v85[42]._os_unfair_lock_opaque = MEMORY[0x1E69E6530];
  strcpy(&v85[44], "keysWithParams");
  HIBYTE(v85[47]._os_unfair_lock_opaque) = -18;
  if (v41)
  {
    v197 = v85 + 8;
    v198 = v85;
    v234 = v84;

    sub_1AB177A00(0, v41, 0);
    v86 = v234;
    v87 = v219 + 5;
    do
    {
      v88 = *(v87 - 1);
      v89 = *v87;
      v235 = 0xD000000000000020;
      v236 = v223;

      Preferences.subscript.getter(&v235, v224, MEMORY[0x1E69E6158], v225, &aBlock);

      v90 = aBlock;
      if (*(&aBlock + 1))
      {
        v91 = *(&aBlock + 1);
      }

      else
      {
        v90 = 0;
        v91 = 0xE000000000000000;
      }

      *&aBlock = v90;
      *(&aBlock + 1) = v91;

      MEMORY[0x1AC59BA20](v88, v89);

      v92 = aBlock;
      v93 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];

      v94 = sub_1AB016760(0, &qword_1ED4D1D80, 0x1E695DFB0);
      v234 = v86;
      v96 = *(v86 + 16);
      v95 = *(v86 + 24);
      if (v96 >= v95 >> 1)
      {
        sub_1AB177A00((v95 > 1), v96 + 1, 1);
        v86 = v234;
      }

      *(v86 + 16) = v96 + 1;
      v97 = v86 + 48 * v96;
      *(v97 + 32) = v92;
      *(v97 + 48) = v93;
      *(v97 + 56) = aBlock;
      *(v97 + 72) = v94;
      v87 += 2;
      --v41;
    }

    while (v41);
    v85 = v198;
    goto LABEL_43;
  }

  if (*(v84 + 16))
  {
LABEL_43:
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB436EF0, &qword_1AB4E61B0);
    v98 = sub_1AB461924();
    goto LABEL_44;
  }

  v98 = MEMORY[0x1E69E7CC8];
LABEL_44:
  *&aBlock = v98;

  sub_1AB0AF350(v99, 1, &aBlock);
  v100 = v220;

  v101 = aBlock;
  *&v85[54]._os_unfair_lock_opaque = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70, &unk_1AB4D6790);
  *&v85[48]._os_unfair_lock_opaque = v101;
  sub_1AB01B220(v85);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0, &qword_1AB4DA4B0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v102 = objc_opt_self();
  v103 = sub_1AB4602D4();

  *&aBlock = 0;
  v104 = [v102 dataWithJSONObject:v103 options:4 error:&aBlock];

  v105 = aBlock;
  if (v104)
  {
    v106 = sub_1AB45F854();
    v108 = v107;

    v109 = dispatch_group_create();
    dispatch_group_enter(v109);
    v110 = v215;
    v225 = v106;
    v224 = v108;
    sub_1AB2C2660(v100, v106, v108);
    v111 = sub_1AB0B22E0(MEMORY[0x1E69E7CC0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A290, &qword_1AB4E61B8);
    v112 = swift_allocObject();
    *(v112 + 24) = 0;
    v198 = (v112 + 24);
    *(v112 + 16) = v111;
    v113 = v216;
    v114 = v210;
    v115 = v217;
    (*(v216 + 16))(v210, v110, v217);
    v116 = (*(v113 + 80) + 56) & ~*(v113 + 80);
    v117 = (v209 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
    v118 = swift_allocObject();
    v119 = v214;
    v120 = v214[1];
    *(v118 + 16) = *v214;
    *(v118 + 32) = v120;
    *(v118 + 48) = *(v119 + 4);
    (*(v113 + 32))(v118 + v116, v114, v115);
    *(v118 + v117) = v109;
    *(v118 + ((v117 + 15) & 0xFFFFFFFFFFFFFFF8)) = v112;
    v232 = sub_1AB2C3744;
    v233 = v118;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v231 = sub_1AB01D528;
    *(&v231 + 1) = &block_descriptor_25;
    v121 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v219 = v203;

    v210 = v204;
    v122 = v109;

    v123 = v199;
    _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
    v235 = MEMORY[0x1E69E7CC0];
    sub_1AB016500();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540, &unk_1AB4DCF50);
    sub_1AB01561C(&qword_1ED4D1FB0, &qword_1EB438540, &unk_1AB4DCF50, MEMORY[0x1E69E6328]);
    v124 = v200;
    v125 = v202;
    sub_1AB4614E4();
    v126 = v210;
    MEMORY[0x1AC59C480](0, v123, v124, v121);
    _Block_release(v121);
    (*(v213 + 8))(v124, v125);
    (*(v211 + 8))(v123, v201);

    v223 = v122;
    sub_1AB4610B4();
    v127 = v198;
    os_unfair_lock_lock(v198);
    v21 = *(v112 + 16);

    os_unfair_lock_unlock(v127);
    v128 = swift_allocObject();
    *(v128 + 16) = v205;
    v229 = sub_1AB0168A8(0, 1, 0, MEMORY[0x1E69E7CC0]);
    v129._countAndFlagsBits = 0;
    v129._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v129);
    v237 = &type metadata for AppleServicesLocalizationLiveUpdateService;
    v130 = swift_allocObject();
    v235 = v130;
    v131 = v119[1];
    *(v130 + 16) = *v119;
    *(v130 + 32) = v131;
    *(v130 + 48) = *(v119 + 4);
    sub_1AB014A58(&v235, &v234, &unk_1EB437E60, &qword_1AB4D4730);
    aBlock = 0u;
    v231 = 0u;
    swift_unknownObjectRetain();
    v132 = v219;

    v133 = v126;
    sub_1AB0169C4(&v234, &aBlock);
    LOBYTE(v232) = 2;
    v134 = v229;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v134 = sub_1AB0168A8(0, *(v134 + 2) + 1, 1, v134);
      v229 = v134;
    }

    v136 = *(v134 + 2);
    v135 = *(v134 + 3);
    v137 = v220;
    v138 = MEMORY[0x1E69E6158];
    if (v136 >= v135 >> 1)
    {
      v134 = sub_1AB0168A8((v135 > 1), v136 + 1, 1, v134);
    }

    *(v134 + 2) = v136 + 1;
    v139 = &v134[40 * v136];
    v140 = aBlock;
    v141 = v231;
    v139[64] = v232;
    *(v139 + 2) = v140;
    *(v139 + 3) = v141;
    v229 = v134;
    sub_1AB014AC0(&v235, &unk_1EB437E60, &qword_1AB4D4730);
    v142._countAndFlagsBits = 0;
    v142._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v142);
    *(v128 + 32) = v229;
    v229 = sub_1AB0168A8(0, 35, 0, MEMORY[0x1E69E7CC0]);
    v143._object = 0x80000001AB507930;
    v143._countAndFlagsBits = 0xD000000000000014;
    LogMessage.StringInterpolation.appendLiteral(_:)(v143);
    v144 = *(v21 + 16);
    v237 = MEMORY[0x1E69E6530];
    v235 = v144;
    sub_1AB014A58(&v235, &v234, &unk_1EB437E60, &qword_1AB4D4730);
    aBlock = 0u;
    v231 = 0u;
    sub_1AB0169C4(&v234, &aBlock);
    LOBYTE(v232) = 0;
    v145 = v229;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v145 = sub_1AB0168A8(0, *(v145 + 2) + 1, 1, v145);
    }

    v147 = *(v145 + 2);
    v146 = *(v145 + 3);
    if (v147 >= v146 >> 1)
    {
      v145 = sub_1AB0168A8((v146 > 1), v147 + 1, 1, v145);
    }

    *(v145 + 2) = v147 + 1;
    v148 = &v145[40 * v147];
    v149 = aBlock;
    v150 = v231;
    v148[64] = v232;
    *(v148 + 2) = v149;
    *(v148 + 3) = v150;
    v229 = v145;
    sub_1AB014AC0(&v235, &unk_1EB437E60, &qword_1AB4D4730);
    v151._countAndFlagsBits = 0x73676E6972747320;
    v151._object = 0xED000020726F6620;
    LogMessage.StringInterpolation.appendLiteral(_:)(v151);
    v237 = v138;
    v235 = v221;
    v236 = v222;
    sub_1AB014A58(&v235, &v234, &unk_1EB437E60, &qword_1AB4D4730);
    aBlock = 0u;
    v231 = 0u;

    sub_1AB0169C4(&v234, &aBlock);
    LOBYTE(v232) = 0;
    v152 = v229;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v152 = sub_1AB0168A8(0, *(v152 + 2) + 1, 1, v152);
      v229 = v152;
    }

    v154 = *(v152 + 2);
    v153 = *(v152 + 3);
    if (v154 >= v153 >> 1)
    {
      v152 = sub_1AB0168A8((v153 > 1), v154 + 1, 1, v152);
    }

    *(v152 + 2) = v154 + 1;
    v155 = &v152[40 * v154];
    v156 = aBlock;
    v157 = v231;
    v155[64] = v232;
    *(v155 + 2) = v156;
    *(v155 + 3) = v157;
    v229 = v152;
    sub_1AB014AC0(&v235, &unk_1EB437E60, &qword_1AB4D4730);
    v158._countAndFlagsBits = 0;
    v158._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v158);
    *(v128 + 40) = v229;
    v159 = sub_1AB461094();
    if (os_log_type_enabled(v218, v159))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v160 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      v161 = LOBYTE(v160[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v160 + 5);
      if (v161 == 2)
      {
        LOBYTE(v161) = os_variant_has_internal_content();
      }

      v162 = swift_allocObject();
      *(v162 + 16) = (v161 & 1) == 0;
      *&aBlock = v128;
      *(&aBlock + 1) = sub_1AB01A8D8;
      *&v231 = v162;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
      sub_1AB016A34();
      v163 = sub_1AB460484();
      v165 = v164;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
      v166 = swift_allocObject();
      *(v166 + 16) = xmmword_1AB4D4720;
      *(v166 + 56) = v138;
      *(v166 + 64) = sub_1AB016854();
      *(v166 + 32) = v163;
      *(v166 + 40) = v165;
      sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, v218, v159, v166);
    }

    v195 = v207;
    sub_1AB2C3494(v21, v221, v222);
    sub_1AB017254(v225, v224);

    (*(v216 + 8))(v215, v217);
    (*(v195 + 8))(v137, v208);
  }

  else
  {
    v167 = v105;
    v168 = sub_1AB45F594();

    swift_willThrow();
    v169 = qword_1EB43A288;
    v170 = swift_allocObject();
    *(v170 + 16) = v205;
    v229 = sub_1AB0168A8(0, 1, 0, MEMORY[0x1E69E7CC0]);
    v171._countAndFlagsBits = 0;
    v171._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v171);
    v237 = &type metadata for AppleServicesLocalizationLiveUpdateService;
    v172 = swift_allocObject();
    v235 = v172;
    v173 = v214;
    v174 = v214[1];
    *(v172 + 16) = *v214;
    *(v172 + 32) = v174;
    *(v172 + 48) = *(v173 + 4);
    sub_1AB014A58(&v235, &v234, &unk_1EB437E60, &qword_1AB4D4730);
    aBlock = 0u;
    v231 = 0u;
    swift_unknownObjectRetain();
    v175 = v203;

    v176 = v204;
    sub_1AB0169C4(&v234, &aBlock);
    LOBYTE(v232) = 2;
    v177 = v229;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v177 = sub_1AB0168A8(0, *(v177 + 2) + 1, 1, v177);
      v229 = v177;
    }

    v179 = *(v177 + 2);
    v178 = *(v177 + 3);
    if (v179 >= v178 >> 1)
    {
      v177 = sub_1AB0168A8((v178 > 1), v179 + 1, 1, v177);
    }

    *(v177 + 2) = v179 + 1;
    v180 = &v177[40 * v179];
    v181 = aBlock;
    v182 = v231;
    v180[64] = v232;
    *(v180 + 2) = v181;
    *(v180 + 3) = v182;
    v229 = v177;
    sub_1AB014AC0(&v235, &unk_1EB437E60, &qword_1AB4D4730);
    v183._countAndFlagsBits = 0;
    v183._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v183);
    *(v170 + 32) = v229;
    v229 = sub_1AB0168A8(0, 40, 0, MEMORY[0x1E69E7CC0]);
    v184._countAndFlagsBits = 0xD000000000000027;
    v184._object = 0x80000001AB507900;
    LogMessage.StringInterpolation.appendLiteral(_:)(v184);
    swift_getErrorValue();
    v185 = v227;
    v186 = v228;
    v237 = v228;
    v187 = __swift_allocate_boxed_opaque_existential_0(&v235);
    (*(v186[-1].Description + 2))(v187, v185, v186);
    sub_1AB014A58(&v235, &v234, &unk_1EB437E60, &qword_1AB4D4730);
    aBlock = 0u;
    v231 = 0u;
    sub_1AB0169C4(&v234, &aBlock);
    LOBYTE(v232) = 0;
    v188 = v229;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v188 = sub_1AB0168A8(0, *(v188 + 2) + 1, 1, v188);
      v229 = v188;
    }

    v190 = *(v188 + 2);
    v189 = *(v188 + 3);
    if (v190 >= v189 >> 1)
    {
      v188 = sub_1AB0168A8((v189 > 1), v190 + 1, 1, v188);
    }

    *(v188 + 2) = v190 + 1;
    v191 = &v188[40 * v190];
    v192 = aBlock;
    v193 = v231;
    v191[64] = v232;
    *(v191 + 2) = v192;
    *(v191 + 3) = v193;
    v229 = v188;
    sub_1AB014AC0(&v235, &unk_1EB437E60, &qword_1AB4D4730);
    v194._countAndFlagsBits = 0;
    v194._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v194);
    *(v170 + 40) = v229;
    *&aBlock = v169;
    LOBYTE(v235) = 0;
    OSLogger.log(contentsOf:withLevel:)(v170, &v235);

    v21 = sub_1AB0B22E0(MEMORY[0x1E69E7CC0]);

    (*(v207 + 8))(v100, v208);
  }

  return v21;
}

uint64_t sub_1AB2C22A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1AB2BF880())
  {
    v9 = sub_1AB461DA4();

    if ((v9 & 1) == 0)
    {
      v10 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v27[0] = 0xD000000000000020;
      v27[1] = 0x80000001AB507850;
      Preferences.subscript.getter(v27, ObjectType, MEMORY[0x1E69E6158], v10, &v28);

      v12 = v28;
      if (v29)
      {
        v13 = v29;
      }

      else
      {
        v12 = 0;
        v13 = 0xE000000000000000;
      }

      v14 = *(v4 + 24);
      v28 = v12;
      v29 = v13;

      MEMORY[0x1AC59BA20](a1, a2);

      v15 = v28;
      v16 = v29;
      v17 = *(v14 + 16);
      v18 = type metadata accessor for LocalizedStringsCache.Key();
      v19 = objc_allocWithZone(v18);
      v20 = &v19[OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_key];
      *v20 = v15;
      *(v20 + 1) = v16;
      v21 = &v19[OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_domain];
      *v21 = a3;
      *(v21 + 1) = a4;
      v26.receiver = v19;
      v26.super_class = v18;

      v22 = objc_msgSendSuper2(&v26, sel_init);
      v23 = [v17 objectForKey_];

      if (v23)
      {
        v24 = v23[2];

        return v24;
      }
    }
  }

  else
  {
  }

  return sub_1AB2C24B0(a1, a2, a3, a4);
}

uint64_t sub_1AB2C24B0(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90, &qword_1AB4D6A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v10 = sub_1AB2C057C(inited, a3, a4);
  swift_setDeallocating();
  sub_1AB0589A8(inited + 32);
  v11 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  v20[0] = 0xD000000000000020;
  v20[1] = 0x80000001AB507850;
  Preferences.subscript.getter(v20, ObjectType, MEMORY[0x1E69E6158], v11, &v21);

  v13 = v21;
  if (v22)
  {
    v14 = v22;
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  v21 = v13;
  v22 = v14;

  MEMORY[0x1AC59BA20](a1, a2);

  if (*(v10 + 16))
  {
    v15 = sub_1AB014DB4(v21, v22);
    v17 = v16;

    if (v17)
    {
      v18 = *(*(v10 + 56) + 16 * v15);

      return v18;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1AB2C2660(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1AB45F764();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  sub_1AB45F064();
  sub_1AB45EFF4();
  sub_1AB45F094();
  sub_1AB45F094();
  sub_1AB017200(a2, a3);
  return sub_1AB45F084();
}

void sub_1AB2C27C8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1[2];
  v8 = sub_1AB45F024();
  v9 = a1[4];
  v10 = swift_allocObject();
  v11 = *(a1 + 1);
  *(v10 + 24) = *a1;
  *(v10 + 16) = a3;
  *(v10 + 40) = v11;
  *(v10 + 56) = a1[4];
  *(v10 + 64) = a4;
  v17[4] = sub_1AB2C37E0;
  v17[5] = v10;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1AB373C48;
  v17[3] = &block_descriptor_19;
  v12 = _Block_copy(v17);
  v13 = a3;
  swift_unknownObjectRetain();
  v14 = v7;

  v15 = v9;

  v16 = [v14 dataTaskWithRequest:v8 completionHandler:v12];
  _Block_release(v12);

  [v16 resume];
}

void sub_1AB2C2938(uint64_t a1, unint64_t a2, int a3, id a4, NSObject *a5, void *a6, os_unfair_lock_s *a7)
{
  v97 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v10 = a4;
    if (qword_1EB435D60 != -1)
    {
      swift_once();
    }

    v11 = qword_1EB43A288;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AB4D47F0;
    *&v89 = sub_1AB0168A8(0, 1, 0, MEMORY[0x1E69E7CC0]);
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v14 = a6[2];
    v15 = a6[4];
    v92 = &type metadata for AppleServicesLocalizationLiveUpdateService;
    v16 = swift_allocObject();
    v91[0] = v16;
    v17 = *(a6 + 1);
    *(v16 + 16) = *a6;
    *(v16 + 32) = v17;
    *(v16 + 48) = a6[4];
    sub_1AB014A58(v91, &v86, &unk_1EB437E60, &qword_1AB4D4730);
    v94 = 0u;
    v95 = 0u;
    swift_unknownObjectRetain();
    v18 = v14;

    v19 = v15;
    sub_1AB0169C4(&v86, &v94);
    LOBYTE(v96) = 2;
    v20 = v89;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1AB0168A8(0, *(v20 + 16) + 1, 1, v20);
      *&v89 = v20;
    }

    v22 = *(v20 + 16);
    v21 = *(v20 + 24);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 16) = v22 + 1;
    v23 = v20 + 40 * v22;
    v24 = v94;
    v25 = v95;
    *(v23 + 64) = v96;
    *(v23 + 32) = v24;
    *(v23 + 48) = v25;
    *&v89 = v20;
    sub_1AB014AC0(v91, &unk_1EB437E60, &qword_1AB4D4730);
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    *(v12 + 32) = v89;
    *&v89 = sub_1AB0168A8(0, 30, 0, MEMORY[0x1E69E7CC0]);
    v27._object = 0x80000001AB507980;
    v27._countAndFlagsBits = 0xD00000000000001DLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    swift_getErrorValue();
    v92 = v84;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v91);
    (*(v84[-1].Description + 2))(boxed_opaque_existential_0);
    sub_1AB014A58(v91, &v86, &unk_1EB437E60, &qword_1AB4D4730);
    v94 = 0u;
    v95 = 0u;
    sub_1AB0169C4(&v86, &v94);
    LOBYTE(v96) = 0;
    v29 = v89;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1AB0168A8(0, *(v29 + 16) + 1, 1, v29);
      *&v89 = v29;
    }

    v31 = *(v29 + 16);
    v30 = *(v29 + 24);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 16) = v31 + 1;
    v32 = v29 + 40 * v31;
    v33 = v94;
    v34 = v95;
    *(v32 + 64) = v96;
    *(v32 + 32) = v33;
    *(v32 + 48) = v34;
    *&v89 = v29;
    sub_1AB014AC0(v91, &unk_1EB437E60, &qword_1AB4D4730);
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    *(v12 + 40) = v89;
    *&v94 = v11;
    LOBYTE(v91[0]) = 0;
    OSLogger.log(contentsOf:withLevel:)(v12, v91);

    goto LABEL_48;
  }

  v38 = a2 >> 60;
  if (a2 >> 60 == 15)
  {
    goto LABEL_34;
  }

  sub_1AB1B9C40(a1, a2);
  sub_1AB017200(a1, a2);
  if (qword_1EB4356D0 != -1)
  {
    swift_once();
  }

  if (sub_1AB0672FC(qword_1EB46C2A0, *algn_1EB46C2A8, a1, a2))
  {
    v40 = 0x1E695DF20;
    v41 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
    v42 = qword_1ED4D1BA0;
  }

  else
  {
    if (qword_1EB4356D8 != -1)
    {
      swift_once();
    }

    if (!sub_1AB0672FC(qword_1EB46C248, unk_1EB46C250, a1, a2))
    {
      v49 = objc_opt_self();
      v50 = sub_1AB45F834();
      v85 = 0;
      v51 = [v49 JSONObjectWithData:v50 options:4 error:&v85];

      v52 = v85;
      if (!v51)
      {
        v53 = v52;
        v54 = sub_1AB45F594();

        swift_willThrow();
        sub_1AB03BD58(a1, a2);
LABEL_33:
        sub_1AB03BD58(a1, a2);
        goto LABEL_34;
      }

      sub_1AB461494();
      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    v40 = 0x1E695DEC8;
    v41 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
    v42 = &qword_1ED4D0BE0;
  }

  v90 = sub_1AB016760(0, v42, v40);
  *&v89 = v41;
LABEL_23:
  sub_1AB014B78(&v89, &v86);
  sub_1AB0165C4(&v86, &v89);
  v92 = &type metadata for FoundationValue;
  v93 = &off_1F1FFB5A8;
  v91[0] = swift_allocObject();
  sub_1AB014B78(&v89, (v91[0] + 16));
  sub_1AB03BD58(a1, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(&v86);
  sub_1AB014A58(v91, &v86, &qword_1EB436BA0, &qword_1AB4D4F40);
  v43 = v87;
  if (v87)
  {
    v44 = v88;
    __swift_project_boxed_opaque_existential_1Tm(&v86, v87);
    (*(v44 + 160))(&v94, v43, v44);
    sub_1AB066D84(v91);
    __swift_destroy_boxed_opaque_existential_1Tm(&v86);
    v45 = *(&v95 + 1);
    if (*(&v95 + 1))
    {
      v46 = v96;
      __swift_project_boxed_opaque_existential_1Tm(&v94, *(&v95 + 1));
      v47 = (*(v46 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], v45, v46);
      v48 = sub_1AB07CDB0(&v94);
      if (v47)
      {
        MEMORY[0x1EEE9AC00](v48);
        os_unfair_lock_lock(a7 + 6);
        sub_1AB2C37F0(&a7[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(a7 + 6);
        sub_1AB03BD58(a1, a2);

        goto LABEL_48;
      }

      goto LABEL_33;
    }

    sub_1AB03BD58(a1, a2);
  }

  else
  {
    sub_1AB03BD58(a1, a2);
    sub_1AB066D84(v91);
    sub_1AB014AC0(&v86, &qword_1EB436BA0, &qword_1AB4D4F40);
    v94 = 0u;
    v95 = 0u;
    v96 = 0;
  }

  sub_1AB014AC0(&v94, &qword_1EB436BC0, &qword_1AB4D52B0);
LABEL_34:
  v55 = v38;
  v56 = a5;
  if (qword_1EB435D60 != -1)
  {
    swift_once();
  }

  v83 = qword_1EB43A288;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1AB4D47F0;
  *&v89 = sub_1AB0168A8(0, 1, 0, MEMORY[0x1E69E7CC0]);
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v58);
  v59 = a6[2];
  v60 = a6[4];
  v92 = &type metadata for AppleServicesLocalizationLiveUpdateService;
  v61 = swift_allocObject();
  v91[0] = v61;
  v62 = *(a6 + 1);
  *(v61 + 16) = *a6;
  *(v61 + 32) = v62;
  *(v61 + 48) = a6[4];
  sub_1AB014A58(v91, &v86, &unk_1EB437E60, &qword_1AB4D4730);
  v94 = 0u;
  v95 = 0u;
  swift_unknownObjectRetain();
  v63 = v59;

  v64 = v60;
  sub_1AB0169C4(&v86, &v94);
  LOBYTE(v96) = 2;
  v65 = v89;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v65 = sub_1AB0168A8(0, *(v65 + 16) + 1, 1, v65);
    *&v89 = v65;
  }

  v67 = *(v65 + 16);
  v66 = *(v65 + 24);
  a5 = v56;
  if (v67 >= v66 >> 1)
  {
    v65 = sub_1AB0168A8((v66 > 1), v67 + 1, 1, v65);
  }

  *(v65 + 16) = v67 + 1;
  v68 = v65 + 40 * v67;
  v69 = v94;
  v70 = v95;
  *(v68 + 64) = v96;
  *(v68 + 32) = v69;
  *(v68 + 48) = v70;
  *&v89 = v65;
  sub_1AB014AC0(v91, &unk_1EB437E60, &qword_1AB4D4730);
  v71._countAndFlagsBits = 0;
  v71._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v71);
  *(v57 + 32) = v89;
  *&v89 = sub_1AB0168A8(0, 47, 0, MEMORY[0x1E69E7CC0]);
  v72._countAndFlagsBits = 0xD00000000000002ELL;
  v72._object = 0x80000001AB507950;
  LogMessage.StringInterpolation.appendLiteral(_:)(v72);
  if (v55 < 0xF)
  {
    v75 = MEMORY[0x1E6969080];
    v73 = a1;
    v74 = a2;
  }

  else
  {
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v91[2] = 0;
  }

  v91[0] = v73;
  v91[1] = v74;
  v92 = v75;
  sub_1AB014A58(v91, &v86, &unk_1EB437E60, &qword_1AB4D4730);
  v94 = 0u;
  v95 = 0u;
  sub_1AB1B9C40(a1, a2);
  sub_1AB0169C4(&v86, &v94);
  LOBYTE(v96) = 2;
  v76 = v89;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v76 = sub_1AB0168A8(0, *(v76 + 16) + 1, 1, v76);
  }

  v78 = *(v76 + 16);
  v77 = *(v76 + 24);
  if (v78 >= v77 >> 1)
  {
    v76 = sub_1AB0168A8((v77 > 1), v78 + 1, 1, v76);
  }

  *(v76 + 16) = v78 + 1;
  v79 = v76 + 40 * v78;
  v80 = v94;
  v81 = v95;
  *(v79 + 64) = v96;
  *(v79 + 32) = v80;
  *(v79 + 48) = v81;
  *&v89 = v76;
  sub_1AB014AC0(v91, &unk_1EB437E60, &qword_1AB4D4730);
  v82._countAndFlagsBits = 0;
  v82._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v82);
  *(v57 + 40) = v89;
  *&v94 = v83;
  LOBYTE(v91[0]) = 0;
  OSLogger.log(contentsOf:withLevel:)(v57, v91);

LABEL_48:
  dispatch_group_leave(a5);
}

void sub_1AB2C3494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1AB2BF880())
  {
    v3 = sub_1AB461DA4();

    if ((v3 & 1) == 0)
    {
      v4 = 1 << *(a1 + 32);
      v5 = -1;
      if (v4 < 64)
      {
        v5 = ~(-1 << v4);
      }

      v6 = v5 & *(a1 + 64);
      v7 = (v4 + 63) >> 6;

      v8 = 0;
      while (v6)
      {
        v9 = v8;
LABEL_11:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (v9 << 10) | (16 * v10);
        v12 = (*(a1 + 48) + v11);
        v14 = *v12;
        v13 = v12[1];
        v15 = (*(a1 + 56) + v11);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(v27 + 24) + 16);
        type metadata accessor for LocalizedStringsCache.Value();
        v19 = swift_allocObject();
        *(v19 + 16) = v17;
        *(v19 + 24) = v16;
        v20 = type metadata accessor for LocalizedStringsCache.Key();
        v21 = objc_allocWithZone(v20);
        v22 = &v21[OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_key];
        *v22 = v14;
        *(v22 + 1) = v13;
        v23 = &v21[OBJC_IVAR____TtCC9JetEngine21LocalizedStringsCacheP33_5B10CF4EC9E6563F43A45CEBFA8559793Key_domain];
        *v23 = a2;
        *(v23 + 1) = a3;
        v29.receiver = v21;
        v29.super_class = v20;

        v24 = objc_msgSendSuper2(&v29, sel_init);
        [v18 setObject:v19 forKey:v24];
      }

      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v7)
        {

          return;
        }

        v6 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v6)
        {
          v8 = v9;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }

  else
  {
  }
}

unint64_t sub_1AB2C36F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AB4619B4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void sub_1AB2C3744()
{
  v1 = *(sub_1AB45F0A4() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1AB2C27C8((v0 + 16), v0 + v2, v4, v5);
}

uint64_t sub_1AB2C37F0(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

uint64_t sub_1AB2C3838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1AB461114();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_1AB4610E4();
  v3[8] = swift_task_alloc();
  sub_1AB4601F4();
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB2C3954, 0, 0);
}

uint64_t sub_1AB2C3954()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v12 = v0[4];
  v4 = v0[2];
  v5 = v0[3];
  sub_1AB016760(0, &qword_1ED4D2060, 0x1E69E9610);
  sub_1AB4601E4();
  sub_1AB4610D4();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8098], v3);
  v6 = sub_1AB461154();
  v7 = [objc_opt_self() defaultSessionConfiguration];
  v8 = [objc_opt_self() sessionWithConfiguration_];

  type metadata accessor for LocalizedStringsCache();
  v9 = swift_allocObject();
  *(v9 + 16) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];

  *v4 = v5;
  v4[1] = v12;
  v4[2] = v8;
  v4[3] = v9;
  v4[4] = v6;
  v10 = v0[1];

  return v10();
}

unint64_t sub_1AB2C3B38()
{
  result = qword_1EB43A298;
  if (!qword_1EB43A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A298);
  }

  return result;
}

uint64_t dispatch thunk of IntentCache.retrieve<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AB027554;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of IntentCache.store<A>(_:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 16) + **(a7 + 16));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1AB027460;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

JetEngine::LintedMetricsEvent __swiftcall LintedMetricsEvent.init(fields:issues:)(Swift::OpaquePointer fields, Swift::OpaquePointer issues)
{
  v2->_rawValue = fields._rawValue;
  v2[1]._rawValue = issues._rawValue;
  result.issues = issues;
  result.fields = fields;
  return result;
}

uint64_t sub_1AB2C3E80(uint64_t a1)
{
  v2 = sub_1AB2C400C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB2C3EBC(uint64_t a1)
{
  v2 = sub_1AB2C400C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LintedMetricsEvent.Issue.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A2A0, &qword_1AB4E6300);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB2C400C();
  sub_1AB462274();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1AB2C400C()
{
  result = qword_1EB43A2A8;
  if (!qword_1EB43A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A2A8);
  }

  return result;
}

uint64_t sub_1AB2C4088(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A2A0, &qword_1AB4E6300);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB2C400C();
  sub_1AB462274();
  return (*(v3 + 8))(v5, v2);
}

unint64_t static LintedMetricsEvent.empty.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1AB2C4204()
{
  if (*v0)
  {
    return 0x736575737369;
  }

  else
  {
    return 0x73646C656966;
  }
}

uint64_t sub_1AB2C4230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73646C656966 && a2 == 0xE600000000000000;
  if (v6 || (sub_1AB461DA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736575737369 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AB461DA4();

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

uint64_t sub_1AB2C4304(uint64_t a1)
{
  v2 = sub_1AB2C4A8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB2C4340(uint64_t a1)
{
  v2 = sub_1AB2C4A8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LintedMetricsEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A2B0, &qword_1AB4E6308);
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - v5;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v7 = sub_1AB2C4A8C();
  sub_1AB462224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v24 = v6;
  v8 = v26;
  v25 = v4;
  sub_1AB01494C(a1, &v31);
  JSONObject.init(from:)(&v31, v34);
  JSONObject.subscript.getter(0x73646C656966, 0xE600000000000000, v30);
  sub_1AB01EC0C(v30, v27);
  v9 = v28;
  if (!v28)
  {
    sub_1AB066D84(v30);
    sub_1AB014AC0(v27, &qword_1EB436BA0, &qword_1AB4D4F40);
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    goto LABEL_7;
  }

  v10 = v29;
  __swift_project_boxed_opaque_existential_1Tm(v27, v28);
  (*(v10 + 160))(&v31, v9, v10);
  sub_1AB066D84(v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  v11 = *(&v32 + 1);
  if (!*(&v32 + 1))
  {
LABEL_7:
    sub_1AB014AC0(&v31, &qword_1EB436BC0, &qword_1AB4D52B0);
    goto LABEL_8;
  }

  v12 = v33;
  __swift_project_boxed_opaque_existential_1Tm(&v31, *(&v32 + 1));
  v13 = (*(v12 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168], v11, v12);
  sub_1AB07CDB0(&v31);
  if (!v13)
  {
LABEL_8:
    v16 = sub_1AB4616B4();
    swift_allocError();
    v18 = v17;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438010, &qword_1AB4E6310) + 48);
    *(v18 + 24) = &type metadata for LintedMetricsEvent.CodingKeys;
    *(v18 + 32) = v7;
    *v18 = 0;
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB4621E4();
    sub_1AB461694();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF0], v16);
    swift_willThrow();
    sub_1AB066D84(v34);
    (*(v35 + 8))(v24, v25);
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A2C0, &qword_1AB4E6318);
  v30[0] = 1;
  sub_1AB2C4AE0();
  v14 = v25;
  v15 = v24;
  sub_1AB461A54();
  v20 = a1;
  v21 = v31;
  v22 = v35;
  if (!v31)
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  sub_1AB066D84(v34);
  (*(v22 + 8))(v15, v14);
  *v8 = v13;
  v8[1] = v21;

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
}

uint64_t LintedMetricsEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A2E8, &unk_1AB4E6328);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v14 = v1[1];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB2C4A8C();

  sub_1AB462274();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70, &unk_1AB4D6790);
  *&v11 = v8;
  v13[3] = &type metadata for FoundationValue;
  v13[4] = &off_1F1FFB5A8;
  v13[0] = swift_allocObject();
  sub_1AB014B78(&v11, (v13[0] + 16));
  LOBYTE(v11) = 0;
  sub_1AB1BF9A0();
  sub_1AB461BF4();
  sub_1AB066D84(v13);
  if (!v2)
  {
    v13[0] = v14;
    LOBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A2D8, &qword_1AB4E6320);
    sub_1AB2C4BE8(&qword_1EB43A2F0, sub_1AB2C4C60, MEMORY[0x1E69E6300]);
    sub_1AB461BF4();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1AB2C4A8C()
{
  result = qword_1EB43A2B8;
  if (!qword_1EB43A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A2B8);
  }

  return result;
}

unint64_t sub_1AB2C4AE0()
{
  result = qword_1EB43A2C8;
  if (!qword_1EB43A2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43A2C0, &qword_1AB4E6318);
    sub_1AB2C4BE8(&qword_1EB43A2D0, sub_1AB2C4B94, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A2C8);
  }

  return result;
}

unint64_t sub_1AB2C4B94()
{
  result = qword_1EB43A2E0;
  if (!qword_1EB43A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A2E0);
  }

  return result;
}

uint64_t sub_1AB2C4BE8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43A2D8, &qword_1AB4E6320);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AB2C4C60()
{
  result = qword_1EB43A2F8;
  if (!qword_1EB43A2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A2F8);
  }

  return result;
}

unint64_t sub_1AB2C4CE8()
{
  result = qword_1EB43A300;
  if (!qword_1EB43A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A300);
  }

  return result;
}

unint64_t sub_1AB2C4D40()
{
  result = qword_1EB43A308;
  if (!qword_1EB43A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A308);
  }

  return result;
}

unint64_t sub_1AB2C4D98()
{
  result = qword_1EB43A310;
  if (!qword_1EB43A310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A310);
  }

  return result;
}

unint64_t sub_1AB2C4DF0()
{
  result = qword_1EB43A318;
  if (!qword_1EB43A318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A318);
  }

  return result;
}

unint64_t sub_1AB2C4E48()
{
  result = qword_1EB43A320;
  if (!qword_1EB43A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A320);
  }

  return result;
}

void ScreenMetricsFieldsProvider.init()(uint64_t a1@<X8>)
{
  MainScreenSize = JEGestaltGetMainScreenSize();
  v4 = v3;
  MainScreenScale = JEGestaltGetMainScreenScale();
  *a1 = 0;
  *(a1 + 8) = MainScreenSize;
  *(a1 + 16) = v4;
  *(a1 + 24) = MainScreenScale;
}

uint64_t sub_1AB2C4F04(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AB2C4F60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t ModelMergingError.errorDescription.getter()
{
  sub_1AB2C5114(v0, &v6);
  if (!v7)
  {
    return 0xD000000000000047;
  }

  if (v7 == 1)
  {
    return 0xD00000000000004DLL;
  }

  sub_1AB014B78(&v6, &v4);
  sub_1AB014B78(&v8, &v2);
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD000000000000026, 0x80000001AB507C40);
  __swift_project_boxed_opaque_existential_1Tm(&v4, v5);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0xD000000000000018, 0x80000001AB507C70);
  __swift_project_boxed_opaque_existential_1Tm(&v2, v3);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](46, 0xE100000000000000);
  __swift_destroy_boxed_opaque_existential_1Tm(&v2);
  __swift_destroy_boxed_opaque_existential_1Tm(&v4);
  return 0;
}

unint64_t sub_1AB2C5150()
{
  result = qword_1EB43A328;
  if (!qword_1EB43A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43A328);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine17ModelMergingErrorO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AB2C51E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 64))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1AB2C523C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_1AB2C52A0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

JetEngine::DeResolutionNumericTreatmentFilter::Definition __swiftcall DeResolutionNumericTreatmentFilter.Definition.init(eventType:rules:)(JetEngine::MetricsEventType eventType, Swift::OpaquePointer rules)
{
  v3 = *(eventType.rawValue._countAndFlagsBits + 8);
  *v2 = *eventType.rawValue._countAndFlagsBits;
  v2[1] = v3;
  v2[2] = eventType.rawValue._object;
  result.eventType = eventType;
  result.rules = rules;
  return result;
}

JetEngine::DeResolutionNumericTreatmentFilter __swiftcall DeResolutionNumericTreatmentFilter.init(_:)(JetEngine::DeResolutionNumericTreatmentFilter result)
{
  *v1 = *result.definition.eventType.rawValue._countAndFlagsBits;
  *(v1 + 8) = *(result.definition.eventType.rawValue._countAndFlagsBits + 8);
  return result;
}

JetEngine::LintedMetricsEvent __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeResolutionNumericTreatmentFilter.treat(_:on:)(JetEngine::LintedMetricsEvent _, Swift::String_optional on)
{
  v4 = v2;
  v5 = *_.fields._rawValue;
  v6 = *(_.fields._rawValue + 1);
  if (!*(*_.fields._rawValue + 16))
  {
    goto LABEL_31;
  }

  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);

  v10 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065);
  if ((v11 & 1) == 0 || (sub_1AB0165C4(v5[7] + 32 * v10, &v53), v12 = MEMORY[0x1E69E6158], (swift_dynamicCast() & 1) == 0))
  {

LABEL_31:
    *v4 = v5;
    v4[1] = v6;

LABEL_32:

    goto LABEL_39;
  }

  v50 = v9;
  v47 = v4;
  if ((v52[0] != v7 || v52[1] != v8) && (sub_1AB461DA4() & 1) == 0)
  {

    goto LABEL_31;
  }

  v54 = v12;
  v53 = *v52;
  sub_1AB014B78(&v53, v52);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1AB01AE18(v52, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v14 = v5;
  v15 = v9;
  v51 = *(v9 + 16);
  if (!v51)
  {
LABEL_33:
    *v47 = v14;
    v47[1] = v6;
    goto LABEL_32;
  }

  v16 = 0;
  v17 = (v9 + 56);
  v48 = v6;
  while (v16 < *(v15 + 16))
  {
    if (!v5[2])
    {
      goto LABEL_11;
    }

    v19 = *(v17 - 3);
    v18 = *(v17 - 2);
    v21 = *(v17 - 1);
    v20 = *v17;
    swift_bridgeObjectRetain_n();
    v22 = sub_1AB014DB4(v19, v18);
    v24 = v23;

    if (v24 & 1) != 0 && (sub_1AB0165C4(v5[7] + 32 * v22, &v53), sub_1AB083ACC(), (swift_dynamicCast()))
    {
      v49 = v52[0];
      [v52[0] doubleValue];
      v26 = v25;
      v27 = NAN;
      if (v21 > 0.0 && v20 >= 0.0)
      {
        v28 = __exp10(v20);
        v27 = v28 * trunc(v26 / v21 / v28);
      }

      v54 = MEMORY[0x1E69E63B0];
      *&v53 = v27;
      sub_1AB014B78(&v53, v52);
      v29 = v14;
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v32 = sub_1AB014DB4(v19, v18);
      v33 = v29[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_36;
      }

      v36 = v31;
      if (v29[3] >= v35)
      {
        if (v30)
        {
          if ((v31 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
          sub_1AB0676CC();
          if ((v36 & 1) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        sub_1AB01AF68(v35, v30);
        v37 = sub_1AB014DB4(v19, v18);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_38;
        }

        v32 = v37;
        if ((v36 & 1) == 0)
        {
LABEL_28:
          v29[(v32 >> 6) + 8] |= 1 << v32;
          v40 = (v29[6] + 16 * v32);
          *v40 = v19;
          v40[1] = v18;
          sub_1AB014B78(v52, (v29[7] + 32 * v32));

          v41 = v29[2];
          v42 = __OFADD__(v41, 1);
          v43 = v41 + 1;
          if (v42)
          {
            goto LABEL_37;
          }

          v14 = v29;
          v29[2] = v43;
          v6 = v48;
          goto LABEL_10;
        }
      }

      v14 = v29;
      v39 = (v29[7] + 32 * v32);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      sub_1AB014B78(v52, v39);

      v6 = v48;
    }

    else
    {
    }

LABEL_10:
    v15 = v50;
LABEL_11:
    ++v16;
    v17 += 4;
    if (v51 == v16)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  v44 = sub_1AB461FC4();
  __break(1u);
LABEL_39:
  result.issues._rawValue = v45;
  result.fields._rawValue = v44;
  return result;
}

uint64_t sub_1AB2C5758(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      if (result < 0)
      {
        goto LABEL_18;
      }

LABEL_14:
      *(v1 + 16) = xmmword_1AB4DA6A0;
      sub_1AB017200(v2, v3);
      sub_1AB017254(v2, v3);
      return v2;
    }

    v6 = *(v2 + 16);
    v5 = *(v2 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 <= result)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v4)
  {
    if (BYTE6(v3) <= result)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(v2), v2))
  {
    goto LABEL_17;
  }

  if (HIDWORD(v2) - v2 <= result)
  {
    goto LABEL_14;
  }

LABEL_11:
  if ((result & 0x8000000000000000) == 0)
  {
    sub_1AB017200(*(v1 + 16), *(v1 + 24));
    v9 = sub_1AB45F884();
    sub_1AB017254(v2, v3);
    v10 = *(v1 + 16);
    v11 = *(v1 + 24);
    sub_1AB017200(v10, v11);
    v12 = sub_1AB45F8A4();
    v14 = v13;
    sub_1AB017254(v10, v11);
    v15 = *(v1 + 16);
    v16 = *(v1 + 24);
    *(v1 + 16) = v12;
    *(v1 + 24) = v14;
    sub_1AB017254(v15, v16);
    return v9;
  }

LABEL_18:
  __break(1u);
  return result;
}

BOOL sub_1AB2C58B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      v1 = 0;
      return v1 != 0;
    }

    v6 = v1 + 16;
    v4 = *(v1 + 16);
    v5 = *(v6 + 8);
    v7 = __OFSUB__(v5, v4);
    v1 = v5 - v4;
    if (!v7)
    {
      return v1 != 0;
    }

    __break(1u);
  }

  else if (!v3)
  {
    v1 = BYTE6(v2);
    return v1 != 0;
  }

  v7 = __OFSUB__(HIDWORD(v1), v1);
  LODWORD(v1) = HIDWORD(v1) - v1;
  if (!v7)
  {
    v1 = v1;
    return v1 != 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB2C593C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1AB45F874();
  return swift_endAccess();
}

uint64_t sub_1AB2C59A8(_BYTE *a1, unint64_t a2)
{
  v2 = sub_1AB05AF50(a1, a2);
  v4 = v3;
  swift_beginAccess();
  sub_1AB45F874();
  swift_endAccess();
  return sub_1AB017254(v2, v4);
}

void sub_1AB2C5A24(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = BYTE6(v4);
      goto LABEL_10;
    }

LABEL_8:
    LODWORD(v6) = HIDWORD(v3) - v3;
    if (__OFSUB__(HIDWORD(v3), v3))
    {
      __break(1u);
      goto LABEL_29;
    }

    v6 = v6;
    goto LABEL_10;
  }

  if (v5 != 2)
  {
    v10 = a2 & (a2 >> 63);
    goto LABEL_14;
  }

  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_10:
  if (v6 >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = v6;
  }

LABEL_14:
  sub_1AB017200(v3, v4);
  sub_1AB45F8B4();
  sub_1AB017254(v3, v4);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      if (!v10)
      {
        goto LABEL_21;
      }

      goto LABEL_26;
    }

    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    v9 = __OFSUB__(v14, v15);
    v16 = v14 - v15;
    if (!v9)
    {
      if (v10 == v16)
      {
        goto LABEL_21;
      }

LABEL_26:
      sub_1AB017200(*(v2 + 16), *(v2 + 24));
      v19 = sub_1AB45F8A4();
      v21 = v20;
      sub_1AB017254(v11, v12);
      v17 = *(v2 + 16);
      v18 = *(v2 + 24);
      *(v2 + 16) = v19;
      *(v2 + 24) = v21;
      goto LABEL_27;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!v13)
  {
    if (v10 != BYTE6(v12))
    {
      goto LABEL_26;
    }

LABEL_21:
    *(v2 + 16) = xmmword_1AB4DA6A0;
    v17 = v11;
    v18 = v12;
LABEL_27:
    sub_1AB017254(v17, v18);
    return;
  }

  if (!__OFSUB__(HIDWORD(v11), v11))
  {
    if (v10 != HIDWORD(v11) - v11)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_1AB2C5BA8(uint64_t a1)
{
  sub_1AB017254(*(v1 + 16), *(v1 + 24));

  return swift_deallocClassInstance();
}

size_t sub_1AB2C5C90(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_1AB4615C4();
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v7 = a2 & 0xFFFFFFFFFFFFFFFLL;
      if (a3)
      {
        v8 = MEMORY[0x1E69E94C0];
      }

      else
      {
        v8 = MEMORY[0x1E69E9498];
      }

      result = strlen((v7 + 32));
      if ((result & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(result))
        {
          return v8(v7 + 32, result, a4);
        }

        goto LABEL_20;
      }

      goto LABEL_18;
    }

    return sub_1AB4615C4();
  }

  *__s = a1;
  v12 = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a3)
  {
    v10 = MEMORY[0x1E69E94C0];
  }

  else
  {
    v10 = MEMORY[0x1E69E9498];
  }

  result = strlen(__s);
  if ((result & 0x8000000000000000) == 0)
  {
    if (!HIDWORD(result))
    {
      return v10(__s, result, a4);
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t static LogMessage.identity(_:)@<X0>(uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  swift_unknownObjectRetain();
  result = sub_1AB2C605C(v3 + 32);
  *a2 = v3;
  return result;
}

__n128 LogMessage.StringInterpolation.appendInterpolation(identity:)(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectRetain();
  sub_1AB4604F4();
  sub_1AB02F088();
  v3 = sub_1AB4607B4();
  v5 = v4;
  swift_getObjectType();
  v16.n128_u64[0] = sub_1AB462314();
  v16.n128_u64[1] = v6;
  MEMORY[0x1AC59BA20](7876666, 0xE300000000000000);
  MEMORY[0x1AC59BA20](v3, v5);

  v15 = MEMORY[0x1E69E6158];
  swift_unknownObjectRelease();
  v14 = v16;
  v16 = 0u;
  v17 = 0u;
  sub_1AB0169C4(&v14, &v16);
  v18 = 0;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1AB0168A8(0, *(v7 + 2) + 1, 1, v7);
    *v2 = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1AB0168A8((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[40 * v10];
  result = v16;
  v13 = v17;
  v11[64] = v18;
  *(v11 + 2) = result;
  *(v11 + 3) = v13;
  *v2 = v7;
  return result;
}