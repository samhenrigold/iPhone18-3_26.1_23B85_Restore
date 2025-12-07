char *sub_26CCBE4C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD578, &qword_26CD46158);
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

char *sub_26CCBE5D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD570, &qword_26CD46150);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_26CCBE6FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD530, &qword_26CD46108);
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

void *sub_26CCBE7F0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD520, &qword_26CD460F8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD528, &qword_26CD46100);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26CCBE924(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD588, &qword_26CD46168);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26CCBEA70(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_26CCBEC4C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD508, &qword_26CD47B90);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26CCBED94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD548, &qword_26CD46128);
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

void *sub_26CCBEE98(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD550, &qword_26CD46130);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD558, &qword_26CD46138);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26CCBEFCC(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD560, &unk_26CD46140);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD568, &qword_26CD463E0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD568, &qword_26CD463E0) - 8);
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

void *sub_26CCBF1BC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD510, &qword_26CD460E8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD518, &qword_26CD460F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26CCBF2F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD540, &qword_26CD46120);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26CCBF3FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2804BD598, &qword_26CD46178);
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

void *sub_26CCBF508(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBB70, &unk_26CD3C680);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26CCBF63C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_26CD3A59C();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_26CD3AB3C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_26CC548D4(v7);
    return 0;
  }
}

uint64_t sub_26CCBF774()
{
  if (qword_2804BBA48 != -1)
  {
    swift_once();
  }

  sub_26CC19A84(&unk_2804D14D0, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 32))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_2804BBA50 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_2804D14F8, qword_2804D1510);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_26CCBF914;

  return sub_26CD0F0D0(0);
}

uint64_t sub_26CCBF914()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_26CCBFA08()
{
  result = qword_2804BD4F0;
  if (!qword_2804BD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD4F0);
  }

  return result;
}

unint64_t sub_26CCBFA60()
{
  result = qword_2804BD4F8;
  if (!qword_2804BD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD4F8);
  }

  return result;
}

uint64_t sub_26CCBFAC4(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CC246B8;

  return v7(a1, a2);
}

uint64_t VideoResourceRequest.init<>(item:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return sub_26CCBFC0C(a1, 0, a2);
}

{
  return sub_26CCBFC0C(a1, 1, a2);
}

uint64_t sub_26CCBFC0C@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (qword_280BBB0C0 != -1)
  {
    swift_once();
  }

  *(a3 + 24) = qword_280BBB0C8;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = *(v7 + 24);

  *(a3 + 8) = v8(v6, v7);
  *(a3 + 16) = v9;
  *a3 = a2;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t VideoResourceRequest.response()(uint64_t a1, uint64_t a2)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  *(v3 + 64) = type metadata accessor for UTSNetworkRequest(0);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  *(v3 + 96) = swift_task_alloc();
  v4 = sub_26CD39D0C();
  *(v3 + 104) = v4;
  *(v3 + 112) = *(v4 - 8);
  v5 = swift_task_alloc();
  *(v3 + 209) = *v2;
  v6 = *(v2 + 8);
  *(v3 + 120) = v5;
  *(v3 + 128) = v6;
  *(v3 + 136) = *(v2 + 16);

  return MEMORY[0x2822009F8](sub_26CCBFE3C, 0, 0);
}

uint64_t sub_26CCBFE3C()
{
  if (qword_2804BBA08 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = qword_2804D1498;
  *(v0 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();

  MEMORY[0x26D6AD060](v2, v1);
  MEMORY[0x26D6AD060](0x203A65707974202CLL, 0xE800000000000000);
  v5 = VideoItemType.rawValue.getter();
  MEMORY[0x26D6AD060](v5);

  MEMORY[0x26D6AD060](46, 0xE100000000000000);
  *(v4 + 32) = 0xD000000000000022;
  *(v4 + 40) = 0x800000026CD50E60;
  v6 = sub_26CD3A97C();
  sub_26CC57EC8(v6, v4, 0xD000000000000074, 0x800000026CD50E90, v3);

  if (qword_280BBACD8 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 136);
  if (*(&xmmword_280BBACE0 + 1))
  {
    v9 = *(v0 + 128) & 0xFFFFFFFFFFFFLL;
    if ((v8 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v8) & 0xF;
    }

    if (v9)
    {
      v10 = *(v0 + 209);
      type metadata accessor for VideoResourceRequest.VideoDataRequestBuilder(0, *(*(v0 + 56) + 16), *(*(v0 + 56) + 24), v7);
      *(v0 + 208) = v10;
      v11 = swift_task_alloc();
      *(v0 + 160) = v11;
      *v11 = v0;
      v11[1] = sub_26CCC0168;
      v13 = *(v0 + 128);
      v12 = *(v0 + 136);

      return sub_26CCC0A30(v13, v12, (v0 + 208));
    }

    v15 = 0;
  }

  else
  {
    v15 = 2;
  }

  sub_26CC2E794();
  swift_allocError();
  *v16 = v15;
  swift_willThrow();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_26CCC0168(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_26CCC08C4;
  }

  else
  {
    *(v4 + 176) = a1;
    v5 = sub_26CCC0290;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CCC0290()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  sub_26CCC1EA8(v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26CC1B544(*(v0 + 96), &qword_2804BC3F8, &qword_26CD45490);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = qword_280BBCBE0;
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD000000000000037, 0x800000026CD50F10);
    MEMORY[0x26D6AD060](v5, v4);
    *(v7 + 32) = 0;
    *(v7 + 40) = 0xE000000000000000;
    v8 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26CD3C1E0;
    *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v9 + 64) = sub_26CC2E6E8();
    *(v9 + 32) = v7;
    sub_26CD3A3DC(v8, &dword_26CC14000, v6, "%@", 2, 2, v9);

    sub_26CC2E794();
    swift_allocError();
    *v10 = 5;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 120);
    v14 = *(v0 + 128);
    v15 = *(v0 + 209);
    v16 = *(v0 + 104);
    v17 = *(v0 + 112);
    v18 = *(v0 + 88);
    v19 = *(v0 + 72);
    v20 = *(v0 + 80);
    v21 = *(v0 + 64);
    v32 = *(v0 + 136);
    (*(v17 + 32))(v13, *(v0 + 96), v16);
    (*(v17 + 16))(&v18[v21[7]], v13, v16);
    v22 = [objc_opt_self() standardUserDefaults];
    v23 = sub_26CD3A59C();
    v24 = [v22 integerForKey_];

    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = 91;
    }

    sub_26CD3A1FC();
    v18[v21[6]] = 0;
    *&v18[v21[8]] = v25;
    *v18 = 0;
    sub_26CCC2438(v18, v20);
    type metadata accessor for AMSRequestHandler(0);
    v26 = swift_allocObject();
    sub_26CCC2438(v20, v19);
    v27 = sub_26CD32DB4(v19, v26);
    *(v0 + 184) = v27;
    sub_26CCC249C(v20);
    *(v0 + 16) = v15;
    *(v0 + 24) = v14;
    *(v0 + 32) = v32;
    v28 = swift_task_alloc();
    *(v0 + 192) = v28;
    *v28 = v0;
    v28[1] = sub_26CCC06DC;
    v29 = *(v0 + 120);
    v30 = *(v0 + 48);
    v31 = *(v0 + 56);

    return sub_26CCC1520(v30, v29, v27, &off_287E05C08, v31);
  }
}

uint64_t sub_26CCC06DC()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_26CCC0960;
  }

  else
  {
    v2 = sub_26CCC07F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CCC07F0()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[11];

  (*(v2 + 8))(v1, v3);
  sub_26CCC249C(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26CCC08C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCC0960()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[11];

  (*(v2 + 8))(v1, v3);
  sub_26CCC249C(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26CCC0A30(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  *(v4 + 40) = swift_task_alloc();
  v6 = sub_26CD3A07C();
  *(v4 + 48) = v6;
  *(v4 + 56) = *(v6 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  v7 = sub_26CD39D0C();
  *(v4 + 80) = v7;
  *(v4 + 88) = *(v7 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 136) = *a3;

  return MEMORY[0x2822009F8](sub_26CCC0BAC, 0, 0);
}

uint64_t sub_26CCC0BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for VideoResourceRequest.VideoItemRoute(0, *(v4[4] + 560), *(v4[4] + 568), a4);

  v5 = sub_26CCC1C50();
  v7 = v6;
  v4[14] = v6;

  if (v7)
  {
    type metadata accessor for UTSURLRequestFactory();
    v8 = swift_task_alloc();
    v4[15] = v8;
    *v8 = v4;
    v8[1] = sub_26CCC0F0C;
    v9 = v4[13];

    return sub_26CD027F0(v9, v5, v7, 0, 0xE000000000000000, 0, 0);
  }

  else
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v12 = v4[2];
    v11 = v4[3];
    v13 = qword_280BBCC98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD000000000000020, 0x800000026CD51010);
    v15 = VideoItemType.rawValue.getter();
    MEMORY[0x26D6AD060](v15);

    MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD51040);
    MEMORY[0x26D6AD060](v12, v11);

    *(v14 + 32) = 0;
    *(v14 + 40) = 0xE000000000000000;
    v16 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_26CD3C1E0;
    *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v17 + 64) = sub_26CC2E6E8();
    *(v17 + 32) = v14;
    sub_26CD3A3DC(v16, &dword_26CC14000, v13, "%@", 2, 2, v17);

    sub_26CCC2718();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();

    v19 = v4[1];

    return v19();
  }
}

uint64_t sub_26CCC0F0C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_26CCC1470;
  }

  else
  {

    v2 = sub_26CCC1028;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CCC1028()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  sub_26CD39C9C();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26CC1B544(*(v0 + 40), &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 104);
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = qword_280BBCC98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD00000000000001ELL, 0x800000026CD51060);
    v11 = VideoItemType.rawValue.getter();
    MEMORY[0x26D6AD060](v11);

    MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD51040);
    MEMORY[0x26D6AD060](v8, v7);

    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    v12 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26CD3C1E0;
    *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v13 + 64) = sub_26CC2E6E8();
    *(v13 + 32) = v10;
    sub_26CD3A3DC(v12, &dword_26CC14000, v9, "%@", 2, 2, v13);

    sub_26CCC2718();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    (*(v6 + 8))(v4, v5);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v30 = *(v0 + 136);
    v17 = *(v0 + 96);
    v18 = *(v0 + 104);
    v19 = *(v0 + 88);
    v20 = *(v0 + 64);
    v21 = *(v0 + 72);
    v23 = *(v0 + 48);
    v22 = *(v0 + 56);
    v28 = *(v0 + 80);
    v29 = *(v0 + 24);
    v27 = *(v0 + 16);
    (*(v22 + 32))(v21, *(v0 + 40), v23);
    (*(v22 + 16))(v20, v21, v23);
    sub_26CD39C7C();
    swift_allocObject();
    v24 = sub_26CCC1D80(v17);
    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v28);
    v25 = (v24 + qword_2804BD628);
    *v25 = v30;
    v25[1] = v27;
    v25[2] = v29;

    v26 = *(v0 + 8);

    return v26(v24);
  }
}

uint64_t sub_26CCC1470()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCC1520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 112) = a3;
  *(v6 + 120) = a4;
  *(v6 + 96) = a1;
  *(v6 + 104) = a2;
  *(v6 + 128) = *(a5 + 16);
  v7 = sub_26CD3AADC();
  *(v6 + 136) = v7;
  *(v6 + 144) = *(v7 - 8);
  v8 = swift_task_alloc();
  *(v6 + 200) = *v5;
  v9 = *(v5 + 8);
  v10 = *(v5 + 16);
  *(v6 + 152) = v8;
  *(v6 + 160) = v9;
  *(v6 + 168) = v10;

  return MEMORY[0x2822009F8](sub_26CCC15FC, 0, 0);
}

uint64_t sub_26CCC15FC()
{
  if (qword_280BBAA78 != -1)
  {
    swift_once();
  }

  if (qword_2804BBA20 != -1)
  {
    swift_once();
  }

  v1 = off_2804BC780;
  v0[5] = type metadata accessor for LocationService();
  v0[6] = &off_287DFFFE0;
  v0[2] = v1;

  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_26CCC1734;
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];

  return sub_26CD2E0E4(v5, v3, v4);
}

uint64_t sub_26CCC1734(uint64_t a1)
{
  v3 = *v2;
  v3[23] = a1;
  v3[24] = v1;

  __swift_destroy_boxed_opaque_existential_1(v3 + 2);
  if (v1)
  {
    v4 = sub_26CCC1BEC;
  }

  else
  {
    v4 = sub_26CCC1850;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CCC1850()
{
  v30 = v0;
  v1 = *(v0 + 192);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 200);
  v5 = [*(v0 + 184) data];
  v6 = sub_26CD3A0BC();
  v8 = v7;

  LOBYTE(v28) = v4;
  sub_26CC70040(&v28, v3, v2, v0 + 56);
  if (v1)
  {
    v9 = *(v0 + 184);
    sub_26CC18C50(v6, v8);
  }

  else
  {
    sub_26CC18C50(v6, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD738, &qword_26CD46328);
    if (swift_dynamicCast())
    {
      v10 = *(v0 + 152);
      v11 = *(v0 + 128);
      v12 = *(v0 + 96);

      v13 = *(v11 - 8);
      (*(v13 + 56))(v10, 0, 1, v11);
      (*(v13 + 32))(v12, v10, v11);

      v14 = *(v0 + 8);
      goto LABEL_9;
    }

    v16 = *(v0 + 144);
    v15 = *(v0 + 152);
    v17 = *(v0 + 136);
    (*(*(*(v0 + 128) - 8) + 56))(v15, 1, 1);
    (*(v16 + 8))(v15, v17);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 184);
    v20 = *(v0 + 160);
    v19 = *(v0 + 168);
    v21 = qword_280BBCBE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_26CD3C1E0;
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD000000000000038, 0x800000026CD50F70);
    MEMORY[0x26D6AD060](v20, v19);
    v23 = v29;
    *(v22 + 32) = v28;
    *(v22 + 40) = v23;
    v24 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_26CD3C1E0;
    *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v25 + 64) = sub_26CC2E6E8();
    *(v25 + 32) = v22;
    sub_26CD3A3DC(v24, &dword_26CC14000, v21, "%@", 2, 2, v25);

    sub_26CC2E794();
    swift_allocError();
    *v26 = 6;
    swift_willThrow();
  }

  v14 = *(v0 + 8);
LABEL_9:

  return v14();
}

uint64_t sub_26CCC1BEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCC1C50()
{
  if (*v0 != 1 && *v0)
  {
    return 0;
  }

  sub_26CC16DCC();
  return sub_26CD3AB0C();
}

uint64_t sub_26CCC1D80(uint64_t a1)
{
  v3 = sub_26CD39D0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + qword_2804BD620);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v1 + qword_2804BD628);
  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  *(v1 + qword_2804BD630) = 26;
  (*(v4 + 16))(v6, a1, v3);
  v9 = sub_26CD0881C(v6);
  (*(v4 + 8))(a1, v3);
  return v9;
}

uint64_t sub_26CCC1EA8@<X0>(unint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  *&v40 = sub_26CD39E2C();
  v5 = *(v40 - 8);
  v6 = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v34 - v9;
  v10 = *(v2 + qword_2804BD628 + 16);
  if (v10)
  {
    v11 = *(v2 + qword_2804BD628 + 8);
    LOBYTE(v41) = *(v2 + qword_2804BD628);
    v42 = v11;
    v43 = v10;
    type metadata accessor for VideoResourceRequest.VideoItemRoute(0, *(v4 + 560), *(v4 + 568), v8);
    v12 = sub_26CCC1C50();
    if (v13)
    {
      v14 = sub_26CD279B4(v12, v13);

      if (!v14)
      {
        return sub_26CD08B34(a1);
      }

      v35 = a1;
      v15 = 0;
      a1 = v14 + 64;
      v16 = 1 << *(v14 + 32);
      v17 = -1;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      v18 = v17 & *(v14 + 64);
      v19 = (v16 + 63) >> 6;
      v36 = (v5 + 8);
      v37 = v14;
      if (v18)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v20 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v20 >= v19)
        {

          a1 = v35;
          return sub_26CD08B34(a1);
        }

        v18 = *(a1 + 8 * v20);
        ++v15;
        if (v18)
        {
          v15 = v20;
          do
          {
LABEL_12:
            v18 &= v18 - 1;

            v21 = v39;
            sub_26CD39DFC();

            swift_beginAccess();
            v22 = v38;
            sub_26CCDEE64(v38, v21);
            (*v36)(v22, v40);
            swift_endAccess();
          }

          while (v18);
          continue;
        }
      }

      __break(1u);
      goto LABEL_27;
    }
  }

  if (qword_280BB9C20 != -1)
  {
LABEL_27:
    swift_once();
  }

  v23 = qword_280BBCBE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v24 = swift_allocObject();
  v40 = xmmword_26CD3C1E0;
  *(v24 + 16) = xmmword_26CD3C1E0;
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD000000000000034, 0x800000026CD50FB0);
  v25 = *(v2 + qword_2804BD620 + 8);
  if (v25)
  {
    v26 = *(v2 + qword_2804BD620);
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  MEMORY[0x26D6AD060](v26, v27);

  v28 = v42;
  *(v24 + 32) = v41;
  *(v24 + 40) = v28;
  v29 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v30 = swift_allocObject();
  *(v30 + 16) = v40;
  *(v30 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v30 + 64) = sub_26CC2E6E8();
  *(v30 + 32) = v24;
  sub_26CD3A3DC(v29, &dword_26CC14000, v23, "%@", 2, 2, v30);

  v31 = sub_26CD39D0C();
  v32 = *(*(v31 - 8) + 56);

  return v32(a1, 1, 1, v31);
}

double sub_26CCC2334()
{

  return result;
}

uint64_t sub_26CCC237C()
{
  v0 = sub_26CD09390();

  return v0;
}

uint64_t sub_26CCC23CC()
{
  sub_26CCC237C();

  return swift_deallocClassInstance();
}

uint64_t sub_26CCC2438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTSNetworkRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CCC249C(uint64_t a1)
{
  v2 = type metadata accessor for UTSNetworkRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26CCC24F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26CCC2540(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26CCC2588(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26CCC263C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26CCC2678(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26CCC26C0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_26CCC2718()
{
  result = qword_2804BD740;
  if (!qword_2804BD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD740);
  }

  return result;
}

uint64_t sub_26CCC279C(uint64_t a1)
{
  v49 = a1;
  v1 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v47 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v46 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v41 - v7;
  v9 = sub_26CD3A1EC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v45 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v48 = v41 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD748, &qword_26CD46340);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v41 - v21;
  v23 = v1;
  sub_26CC1B4DC(v49, v41 - v21, &qword_2804BD748, &qword_26CD46340);
  v24 = *(v2 + 48);
  if (v24(v22, 1, v23) == 1)
  {
    v25 = v22;
LABEL_8:
    sub_26CC1B544(v25, &qword_2804BD748, &qword_26CD46340);
    return sub_26CCD7DD4();
  }

  v49 = v23;
  sub_26CC1B4DC(&v22[*(v23 + 20)], v8, &qword_2804BCA90, &qword_26CD3C200);
  v43 = *(v10 + 48);
  v26 = v43(v8, 1, v9);
  v44 = v9;
  v42 = v10;
  if (v26 == 1)
  {
    sub_26CC1B544(v8, &qword_2804BCA90, &qword_26CD3C200);
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
    v41[1] = v10 + 48;
    v27 = v48;
    sub_26CD3A1DC();
    sub_26CD3A10C();
    v28 = *(v10 + 8);
    v28(v27, v9);
    v28(v16, v9);
  }

  sub_26CCC490C(v22);
  v29 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_playbackState;
  v30 = v50;
  swift_beginAccess();
  sub_26CC1B4DC(v30 + v29, v20, &qword_2804BD748, &qword_26CD46340);
  v31 = v49;
  if (v24(v20, 1, v49))
  {
    v25 = v20;
    goto LABEL_8;
  }

  v33 = v47;
  sub_26CCC48A8(v20, v47);
  sub_26CC1B544(v20, &qword_2804BD748, &qword_26CD46340);
  v34 = v33 + *(v31 + 20);
  v35 = v46;
  sub_26CC1B4DC(v34, v46, &qword_2804BCA90, &qword_26CD3C200);
  v36 = v44;
  if (v43(v35, 1, v44) == 1)
  {
    sub_26CC1B544(v35, &qword_2804BCA90, &qword_26CD3C200);
  }

  else
  {
    v37 = v42;
    v38 = v45;
    (*(v42 + 32))(v45, v35, v36);
    v39 = v48;
    sub_26CD3A1DC();
    sub_26CD3A10C();
    v40 = *(v37 + 8);
    v40(v39, v36);
    v40(v38, v36);
  }

  sub_26CCC490C(v33);
  return sub_26CCD7DD4();
}

uint64_t sub_26CCC2CD0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_playbackState;
  swift_beginAccess();
  return sub_26CC1B4DC(v1 + v3, a1, &qword_2804BD748, &qword_26CD46340);
}

uint64_t sub_26CCC2D3C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD748, &qword_26CD46340);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  v9 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_playbackState;
  swift_beginAccess();
  sub_26CC1B4DC(v1 + v9, v8, &qword_2804BD748, &qword_26CD46340);
  sub_26CC1B4DC(a1, v6, &qword_2804BD748, &qword_26CD46340);
  swift_beginAccess();
  sub_26CCC2E8C(v6, v1 + v9);
  swift_endAccess();
  sub_26CCC279C(v8);
  sub_26CC1B544(a1, &qword_2804BD748, &qword_26CD46340);
  return sub_26CC1B544(v8, &qword_2804BD748, &qword_26CD46340);
}

uint64_t sub_26CCC2E8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD748, &qword_26CD46340);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*sub_26CCC2EFC(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x78uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD748, &qword_26CD46340) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v5[12] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v5[12] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_playbackState;
  v5[13] = v7;
  v5[14] = v9;
  swift_beginAccess();
  sub_26CC1B4DC(v1 + v9, v8, &qword_2804BD748, &qword_26CD46340);
  return sub_26CCC304C;
}

void sub_26CCC304C(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 13);
  v4 = *(*a1 + 14);
  v5 = *(*a1 + 11);
  v6 = *(*a1 + 12);
  v7 = *(*a1 + 9);
  v8 = *(*a1 + 10);
  if (a2)
  {
    sub_26CC1B4DC(*(*a1 + 13), v6, &qword_2804BD748, &qword_26CD46340);
    sub_26CC1B4DC(v7 + v4, v5, &qword_2804BD748, &qword_26CD46340);
    sub_26CC1B4DC(v6, v8, &qword_2804BD748, &qword_26CD46340);
    swift_beginAccess();
    sub_26CCC2E8C(v8, v7 + v4);
    swift_endAccess();
    sub_26CCC279C(v5);
    sub_26CC1B544(v5, &qword_2804BD748, &qword_26CD46340);
  }

  else
  {
    sub_26CC1B4DC(v7 + v4, v6, &qword_2804BD748, &qword_26CD46340);
    sub_26CC1B4DC(v3, v5, &qword_2804BD748, &qword_26CD46340);
    swift_beginAccess();
    sub_26CCC2E8C(v5, v7 + v4);
    swift_endAccess();
    sub_26CCC279C(v6);
  }

  sub_26CC1B544(v6, &qword_2804BD748, &qword_26CD46340);
  sub_26CC1B544(v3, &qword_2804BD748, &qword_26CD46340);
  free(v3);
  free(v6);
  free(v5);
  free(v8);

  free(v2);
}

uint64_t sub_26CCC31E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v14[0] = *v3;
  v14[1] = v4;
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  v15 = *(v3 + 80);
  v14[3] = v6;
  v14[4] = v7;
  v14[2] = v5;
  v8 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v8;
  v9 = *(v3 + 32);
  v10 = *(v3 + 48);
  v11 = *(v3 + 64);
  *(a2 + 80) = *(v3 + 80);
  *(a2 + 48) = v10;
  *(a2 + 64) = v11;
  *(a2 + 32) = v9;
  return sub_26CC1B4DC(v14, &v13, &qword_2804BD750, qword_26CD46348);
}

uint64_t sub_26CCC3290(__int128 *a1, void *a2)
{
  v2 = a1[3];
  v22 = a1[2];
  v23 = v2;
  v24 = a1[4];
  v25 = *(a1 + 10);
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams;
  v20 = *a1;
  v21 = v3;
  swift_beginAccess();
  v5 = *(v4 + 16);
  v26 = *v4;
  v27 = v5;
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  v31 = *(v4 + 80);
  v29 = v7;
  v30 = v8;
  v28 = v6;
  v10 = *(v4 + 48);
  v9 = *(v4 + 64);
  v11 = *(v4 + 32);
  v33 = *(v4 + 80);
  v32[3] = v10;
  v32[4] = v9;
  v32[2] = v11;
  v12 = *(v4 + 16);
  v32[0] = *v4;
  v32[1] = v12;
  v13 = v21;
  *v4 = v20;
  *(v4 + 16) = v13;
  v14 = v22;
  v15 = v23;
  v16 = v24;
  *(v4 + 80) = v25;
  *(v4 + 48) = v15;
  *(v4 + 64) = v16;
  *(v4 + 32) = v14;
  sub_26CC1B4DC(&v20, v18, &qword_2804BD750, qword_26CD46348);
  sub_26CC1B4DC(&v26, v18, &qword_2804BD750, qword_26CD46348);
  sub_26CC1B544(v32, &qword_2804BD750, qword_26CD46348);
  v18[2] = v28;
  v18[3] = v29;
  v18[4] = v30;
  v19 = v31;
  v18[0] = v26;
  v18[1] = v27;
  sub_26CCC33E0(v18);
  return sub_26CC1B544(&v26, &qword_2804BD750, qword_26CD46348);
}

void sub_26CCC33E0(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD568, &qword_26CD463E0);
  v77 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v73 - v5;
  v7 = a1[1];
  v81 = *a1;
  v82 = v7;
  v8 = a1[2];
  v78 = a1[3];
  v9 = a1[9];
  v75 = a1[10];
  v76 = v8;
  v10 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_logger;

  v80 = v10;
  v11 = sub_26CD3A42C();
  v12 = sub_26CD3A99C();

  v13 = os_log_type_enabled(v11, v12);
  v74 = v9;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v84[0] = v15;
    *v14 = 136315650;
    v79 = v2;
    v16 = (v2 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams);
    swift_beginAccess();
    v17 = v16[1];
    if (v17 >= 2)
    {
      v18 = *v16;
    }

    else
    {

      v17 = 0xE300000000000000;
      v18 = 7104878;
    }

    v19 = sub_26CCF188C(v18, v17, v84);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    if (v16[1] == 1 || (v20 = v16[3]) == 0)
    {

      v20 = 0xE300000000000000;
      v22 = 7104878;
    }

    else
    {
      v21 = v16[2];

      v22 = v21;
    }

    v23 = sub_26CCF188C(v22, v20, v84);

    *(v14 + 14) = v23;
    *(v14 + 22) = 2080;
    if (v16[1] == 1)
    {
      v24 = 0;
      v25 = 0xF000000000000000;
    }

    else
    {
      v24 = v16[9];
      v25 = v16[10];
      sub_26CCC706C(v24, v25);
    }

    v2 = v79;
    *&v86 = v24;
    *(&v86 + 1) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD790, &unk_26CD463E8);
    v26 = sub_26CD3A5FC();
    v28 = sub_26CCF188C(v26, v27, v84);

    *(v14 + 24) = v28;
    _os_log_impl(&dword_26CC14000, v11, v12, "Received fetch params with program ID %s adam ID %s rawData %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D6AE340](v15, -1, -1);
    MEMORY[0x26D6AE340](v14, -1, -1);
  }

  else
  {
  }

  v29 = v82;
  if (v82 == 1)
  {
    v81 = 0;
    v30 = 0;
  }

  else
  {

    v30 = v29;
  }

  v31 = (v2 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams);
  swift_beginAccess();
  v32 = v31[1];
  if (v32 == 1)
  {
    if (v30)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v33 = *v31;

    if (v30)
    {
      if (!v32)
      {
        goto LABEL_47;
      }

      if (v81 == v33 && v30 == v32)
      {
      }

      else
      {
        v34 = sub_26CD3AFDC();

        if ((v34 & 1) == 0)
        {
          goto LABEL_48;
        }
      }
    }

    else if (v32)
    {
      goto LABEL_47;
    }
  }

  if (v29 == 1)
  {
    v35 = 0;
    if (v31[1] == 1)
    {
      v36 = 0xF000000000000000;
LABEL_31:
      sub_26CC1D1B8(v35, v36);
LABEL_32:
      v37 = sub_26CD3A42C();
      v38 = sub_26CD3A99C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_26CC14000, v37, v38, "Ignoring updated fetch params since they match existing fetch params", v39, 2u);
        MEMORY[0x26D6AE340](v39, -1, -1);
      }

      return;
    }

    v42 = 0;
    v41 = 0;
  }

  else
  {
    v40 = v31[1];
    v41 = v78;

    if (v40 == 1)
    {
      if (!v41)
      {
        goto LABEL_66;
      }

      goto LABEL_47;
    }

    v42 = v76;
  }

  v44 = v31[2];
  v43 = v31[3];

  if (!v41)
  {
    if (!v43)
    {
      goto LABEL_63;
    }

LABEL_47:

    goto LABEL_48;
  }

  if (!v43)
  {
    goto LABEL_47;
  }

  if (v42 == v44 && v41 == v43)
  {
  }

  else
  {
    v63 = sub_26CD3AFDC();

    if ((v63 & 1) == 0)
    {
      goto LABEL_48;
    }
  }

LABEL_63:
  if (v29 == 1)
  {
    v35 = 0;
    v36 = 0xF000000000000000;
    if (v31[1] == 1)
    {
      goto LABEL_31;
    }

    goto LABEL_70;
  }

LABEL_66:
  v65 = v74;
  v64 = v75;
  sub_26CCC706C(v74, v75);
  if (v31[1] == 1)
  {
    v36 = v64;
    v35 = v65;
    if (v64 >> 60 == 15)
    {
      goto LABEL_31;
    }

    v66 = 0;
    v67 = 0xF000000000000000;
    goto LABEL_74;
  }

  v35 = v65;
  v36 = v64;
LABEL_70:
  v68 = v35;
  v66 = v31[9];
  v67 = v31[10];
  v69 = v36;
  sub_26CCC706C(v66, v67);
  v36 = v69;
  if (v69 >> 60 == 15)
  {
    v35 = v68;
    if (v67 >> 60 == 15)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

  v35 = v68;
  if (v67 >> 60 == 15)
  {
LABEL_74:
    sub_26CC1D1B8(v35, v36);
    sub_26CC1D1B8(v66, v67);
    goto LABEL_48;
  }

  v70 = v69;
  v71 = v35;
  sub_26CCC706C(v35, v69);
  sub_26CCC706C(v66, v67);
  v72 = sub_26CCC7138(v71, v69, v66, v67);
  sub_26CC1D1B8(v66, v67);
  sub_26CC1D1B8(v66, v67);
  sub_26CC1D1B8(v71, v70);
  sub_26CC1D1B8(v71, v70);
  if (v72)
  {
    goto LABEL_32;
  }

LABEL_48:
  v45 = *(v2 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParamsContinuations);
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = *(v31 + 3);
    v88 = *(v31 + 2);
    v89 = v47;
    v90 = *(v31 + 4);
    v91 = v31[10];
    v48 = *(v31 + 1);
    v86 = *v31;
    v87 = v48;
    if (*(&v86 + 1) != 1)
    {
      if (!(*(&v86 + 1) | *(&v87 + 1)) || v91 >> 60 == 15)
      {
        v58 = *(v31 + 3);
        v84[2] = *(v31 + 2);
        v84[3] = v58;
        v84[4] = *(v31 + 4);
        v85 = v31[10];
        v59 = *(v31 + 1);
        v84[0] = *v31;
        v84[1] = v59;
        sub_26CCC5FC8(v84, &v83);
        v60 = sub_26CD3A42C();
        v61 = sub_26CD3A99C();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_26CC14000, v60, v61, "Waiting for fetch params that have both ID and data", v62, 2u);
          MEMORY[0x26D6AE340](v62, -1, -1);
        }

        sub_26CC1B544(&v86, &qword_2804BD750, qword_26CD46348);
      }

      else
      {
        v82 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParamsContinuations;
        v79 = v2;
        v49 = v77;
        v50 = v45 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
        sub_26CC1B4DC(&v86, v84, &qword_2804BD750, qword_26CD46348);
        v53 = *(v49 + 16);
        v51 = v49 + 16;
        v52 = v53;
        v54 = *(v51 + 56);
        v81 = v45;

        do
        {
          v52(v6, v50, v4);
          sub_26CD3A82C();
          (*(v51 - 8))(v6, v4);
          v50 += v54;
          --v46;
        }

        while (v46);

        sub_26CC1B544(&v86, &qword_2804BD750, qword_26CD46348);
        *(v79 + v82) = MEMORY[0x277D84F90];
      }
    }
  }

  else
  {
    v55 = sub_26CD3A42C();
    v56 = sub_26CD3A99C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_26CC14000, v55, v56, "Waiting for loading process to start, which should occur shortly", v57, 2u);
      MEMORY[0x26D6AE340](v57, -1, -1);
    }

    sub_26CCD9454();
    sub_26CCC5DEC();
  }
}

uint64_t sub_26CCC3CA0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams;
  swift_beginAccess();
  v5 = *(v3 + 48);
  v12 = *(v3 + 32);
  v4 = v12;
  v13 = v5;
  v14 = *(v3 + 64);
  v6 = v14;
  v15 = *(v3 + 80);
  v8 = *(v3 + 16);
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  *(a1 + 80) = v15;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *a1 = v7;
  *(a1 + 16) = v8;
  return sub_26CC1B4DC(v11, &v10, &qword_2804BD750, qword_26CD46348);
}

uint64_t sub_26CCC3D34(__int128 *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams);
  swift_beginAccess();
  v4 = v3[3];
  v13 = v3[2];
  v14 = v4;
  v15 = v3[4];
  v16 = *(v3 + 10);
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v18 = v16;
  v17[2] = v13;
  v17[3] = v4;
  v17[4] = v15;
  v17[0] = v11;
  v17[1] = v5;
  *(v3 + 10) = *(a1 + 10);
  v6 = a1[4];
  v3[3] = a1[3];
  v3[4] = v6;
  v7 = a1[2];
  v3[1] = a1[1];
  v3[2] = v7;
  *v3 = *a1;
  sub_26CC1B4DC(&v11, v9, &qword_2804BD750, qword_26CD46348);
  sub_26CC1B544(v17, &qword_2804BD750, qword_26CD46348);
  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v10 = v16;
  v9[0] = v11;
  v9[1] = v12;
  sub_26CCC33E0(v9);
  return sub_26CC1B544(&v11, &qword_2804BD750, qword_26CD46348);
}

void (*sub_26CCC3E40(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x290uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 640) = v1;
  v5 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams;
  *(v3 + 648) = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *v4 = *v6;
  *(v4 + 16) = v7;
  v8 = v6[2];
  v9 = v6[3];
  v10 = v6[4];
  *(v4 + 80) = *(v6 + 10);
  *(v4 + 48) = v9;
  *(v4 + 64) = v10;
  *(v4 + 32) = v8;
  v12 = v6[3];
  v11 = v6[4];
  v13 = *(v6 + 10);
  *(v4 + 120) = v6[2];
  *(v4 + 168) = v13;
  *(v4 + 152) = v11;
  *(v4 + 136) = v12;
  v14 = *v6;
  *(v4 + 104) = v6[1];
  *(v4 + 88) = v14;
  sub_26CC1B4DC(v4, v4 + 176, &qword_2804BD750, qword_26CD46348);
  return sub_26CCC3F38;
}

void sub_26CCC3F38(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 264;
  v4 = *(v2 + 640) + *(v2 + 648);
  if (a2)
  {
    v5 = *(v2 + 104);
    *(v2 + 440) = *(v2 + 88);
    *(v2 + 456) = v5;
    *(v2 + 520) = *(v2 + 168);
    v6 = *(v2 + 152);
    v7 = *(v2 + 120);
    *(v2 + 488) = *(v2 + 136);
    *(v2 + 504) = v6;
    *(v2 + 472) = v7;
    v8 = *(v4 + 16);
    *(v2 + 352) = *v4;
    *(v2 + 368) = v8;
    v9 = *(v4 + 32);
    v10 = *(v4 + 48);
    v11 = *(v4 + 64);
    *(v2 + 432) = *(v4 + 80);
    *(v2 + 400) = v10;
    *(v2 + 416) = v11;
    *(v2 + 384) = v9;
    v13 = *(v4 + 48);
    v12 = *(v4 + 64);
    v14 = *(v4 + 32);
    *(v3 + 80) = *(v4 + 80);
    *(v3 + 48) = v13;
    *(v3 + 64) = v12;
    *(v3 + 32) = v14;
    v15 = *(v4 + 16);
    *v3 = *v4;
    *(v3 + 16) = v15;
    v16 = *(v2 + 104);
    *v4 = *(v2 + 88);
    *(v4 + 16) = v16;
    v17 = *(v2 + 120);
    v18 = *(v2 + 136);
    v19 = *(v2 + 152);
    *(v4 + 80) = *(v2 + 168);
    *(v4 + 48) = v18;
    *(v4 + 64) = v19;
    *(v4 + 32) = v17;
    sub_26CC1B4DC(v2 + 440, v2 + 528, &qword_2804BD750, qword_26CD46348);
    sub_26CC1B4DC(v2 + 352, v2 + 528, &qword_2804BD750, qword_26CD46348);
    sub_26CC1B544(v3, &qword_2804BD750, qword_26CD46348);
    v20 = *(v2 + 400);
    v41 = *(v2 + 384);
    v42 = v20;
    v43 = *(v2 + 416);
    v44 = *(v2 + 432);
    v21 = *(v2 + 368);
    v39 = *(v2 + 352);
    v40 = v21;
    sub_26CCC33E0(&v39);
    sub_26CC1B544(v2 + 352, &qword_2804BD750, qword_26CD46348);
    v22 = *(v2 + 136);
    *(v2 + 208) = *(v2 + 120);
    *(v2 + 224) = v22;
    *(v2 + 240) = *(v2 + 152);
    *(v2 + 256) = *(v2 + 168);
    v23 = *(v2 + 104);
    *(v2 + 176) = *(v2 + 88);
    *(v2 + 192) = v23;
    v24 = v2 + 176;
  }

  else
  {
    v25 = *(v4 + 16);
    *v3 = *v4;
    *(v3 + 16) = v25;
    v27 = *(v4 + 48);
    v26 = *(v4 + 64);
    v28 = *(v4 + 32);
    *(v3 + 80) = *(v4 + 80);
    *(v3 + 48) = v27;
    *(v3 + 64) = v26;
    *(v3 + 32) = v28;
    v29 = *(v4 + 16);
    *(v2 + 176) = *v4;
    *(v2 + 192) = v29;
    v31 = *(v4 + 48);
    v30 = *(v4 + 64);
    v32 = *(v4 + 32);
    *(v2 + 256) = *(v4 + 80);
    *(v2 + 224) = v31;
    *(v2 + 240) = v30;
    *(v2 + 208) = v32;
    v33 = *(v2 + 104);
    *v4 = *(v2 + 88);
    *(v4 + 16) = v33;
    v34 = *(v2 + 120);
    v35 = *(v2 + 136);
    v36 = *(v2 + 152);
    *(v4 + 80) = *(v2 + 168);
    *(v4 + 48) = v35;
    *(v4 + 64) = v36;
    *(v4 + 32) = v34;
    sub_26CC1B4DC(v3, v2 + 352, &qword_2804BD750, qword_26CD46348);
    sub_26CC1B544(v2 + 176, &qword_2804BD750, qword_26CD46348);
    v37 = *(v3 + 48);
    v41 = *(v3 + 32);
    v42 = v37;
    v43 = *(v3 + 64);
    v44 = *(v3 + 80);
    v38 = *(v3 + 16);
    v39 = *v3;
    v40 = v38;
    sub_26CCC33E0(&v39);
    v24 = v3;
  }

  sub_26CC1B544(v24, &qword_2804BD750, qword_26CD46348);

  free(v2);
}

uint64_t sub_26CCC41B8(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v57 = a3;
  v59 = a2;
  v54 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v58 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - v9;
  v66 = sub_26CD3A1EC();
  v64 = *(v66 - 8);
  v11 = MEMORY[0x28223BE20](v66);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v55 = &v54 - v14;
  MEMORY[0x28223BE20](v13);
  v65 = &v54 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD748, &qword_26CD46340);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v61 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v63 = &v54 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v62 = &v54 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v54 - v23;
  v25 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  v26 = *(v25 - 1);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = (&v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v31 = (&v54 - v30);
  v32 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_playbackState;
  swift_beginAccess();
  sub_26CC1B4DC(v4 + v32, v24, &qword_2804BD748, &qword_26CD46340);
  v60 = v26;
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    return sub_26CC1B544(v24, &qword_2804BD748, &qword_26CD46340);
  }

  sub_26CCC4844(v24, v31);
  v34 = v66;
  v35 = v64;
  if (v59)
  {
    goto LABEL_6;
  }

  sub_26CC1B4DC(v57, v10, &qword_2804BCA90, &qword_26CD3C200);
  if ((*(v35 + 48))(v10, 1, v34) == 1)
  {
    sub_26CC1B544(v10, &qword_2804BCA90, &qword_26CD3C200);
LABEL_6:
    v36 = v58;
    sub_26CC1B4DC(v31 + v25[5], v58, &qword_2804BCA90, &qword_26CD3C200);
    if ((*(v35 + 48))(v36, 1, v34) == 1)
    {
      sub_26CC1B544(v36, &qword_2804BCA90, &qword_26CD3C200);
      v37 = *v31;
    }

    else
    {
      v38 = v55;
      (*(v35 + 32))(v55, v36, v34);
      v39 = *v31;
      v40 = v56;
      sub_26CD3A1DC();
      sub_26CD3A10C();
      v42 = v41;
      v43 = *(v35 + 8);
      v43(v40, v34);
      v43(v38, v34);
      v35 = v64;
      v37 = v39 + v42 * *(v31 + v25[6]);
    }

    v44 = v65;
    sub_26CD3A1DC();
    goto LABEL_11;
  }

  v37 = *&v54;
  v44 = v65;
  (*(v35 + 32))();
LABEL_11:
  v45 = v25[5];
  (*(v35 + 16))(v29 + v45, v44, v34);
  (*(v35 + 56))(v29 + v45, 0, 1, v34);
  v46 = v25[6];
  v47 = (v31 + v25[7]);
  v48 = *v47;
  v49 = v47[1];
  *v29 = v37;
  *(v29 + v46) = a4;
  v50 = (v29 + v25[7]);
  *v50 = v48;
  v50[1] = v49;
  v64 = v31;
  v51 = v62;
  sub_26CCC48A8(v29, v62);
  (*(v60 + 56))(v51, 0, 1, v25);
  v52 = v63;
  sub_26CC1B4DC(v4 + v32, v63, &qword_2804BD748, &qword_26CD46340);
  v53 = v61;
  sub_26CC1B4DC(v51, v61, &qword_2804BD748, &qword_26CD46340);
  swift_beginAccess();

  sub_26CCC2E8C(v53, v4 + v32);
  swift_endAccess();
  sub_26CCC279C(v52);
  sub_26CC1B544(v52, &qword_2804BD748, &qword_26CD46340);
  sub_26CC1B544(v51, &qword_2804BD748, &qword_26CD46340);
  sub_26CCC490C(v29);
  (*(v35 + 8))(v65, v66);
  return sub_26CCC490C(v64);
}

uint64_t sub_26CCC4844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CCC48A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CCC490C(uint64_t a1)
{
  v2 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26CCC4968()
{
  sub_26CCD6CDC();

  return sub_26CCC5DEC();
}

uint64_t sub_26CCC4990()
{
  v1 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_boundaryTask;
  if (*(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_boundaryTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    sub_26CD3A8DC();
  }

  *(v0 + v1) = 0;
}

uint64_t sub_26CCC4A28(uint64_t a1)
{
  v2[55] = a1;
  v2[56] = v1;
  v2[57] = sub_26CD3A84C();
  v2[58] = sub_26CD3A83C();
  v4 = sub_26CD3A80C();
  v2[59] = v4;
  v2[60] = v3;

  return MEMORY[0x2822009F8](sub_26CCC4AC4, v4, v3);
}

uint64_t sub_26CCC4AC4()
{
  v1 = *(v0 + 448);
  v2 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams;
  *(v0 + 488) = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams;
  v3 = (v1 + v2);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[10];
  v9 = *(v3 + 2);
  v10 = *(v3 + 4);
  *(v0 + 384) = *(v3 + 3);
  *(v0 + 400) = v10;
  *(v0 + 368) = v9;
  if (v4 == 1 || (v4 | v6) == 0 || v8 >> 60 == 15)
  {
    *(v0 + 496) = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_logger;
    v13 = sub_26CD3A42C();
    v14 = sub_26CD3A99C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_26CC14000, v13, v14, "Waiting for fetch params with data to be provided", v15, 2u);
      MEMORY[0x26D6AE340](v15, -1, -1);
    }

    *(v0 + 504) = sub_26CD3A83C();
    v16 = swift_task_alloc();
    *(v0 + 512) = v16;
    *v16 = v0;
    v16[1] = sub_26CCC4D34;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v17 = *(v0 + 440);
    *(v0 + 192) = v5;
    *(v0 + 200) = v4;
    *(v0 + 208) = v7;
    *(v0 + 216) = v6;
    v19 = *(v3 + 3);
    v18 = *(v3 + 4);
    *(v0 + 224) = *(v3 + 2);
    *(v0 + 240) = v19;
    *(v0 + 256) = v18;
    *(v0 + 272) = v8;
    sub_26CCC5FC8(v0 + 192, v0 + 280);

    *v17 = v5;
    *(v17 + 8) = v4;
    *(v17 + 16) = v7;
    *(v17 + 24) = v6;
    v20 = *(v0 + 368);
    v21 = *(v0 + 400);
    *(v17 + 48) = *(v0 + 384);
    *(v17 + 64) = v21;
    *(v17 + 32) = v20;
    *(v17 + 80) = v8;
    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_26CCC4D34()
{
  v1 = *v0;

  v2 = *(v1 + 480);
  v3 = *(v1 + 472);

  return MEMORY[0x2822009F8](sub_26CCC4E78, v3, v2);
}

uint64_t sub_26CCC4E78()
{

  v1 = sub_26CD3A42C();
  v2 = sub_26CD3A99C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26CC14000, v1, v2, "Continuing after receiving fetch params with data", v3, 2u);
    MEMORY[0x26D6AE340](v3, -1, -1);
  }

  v4 = *(v0 + 488);
  v5 = *(v0 + 448);

  v6 = *(v5 + v4 + 8);
  if (v6 == 1)
  {
    v7 = *(v0 + 440);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *v7 = 0u;
    *(v7 + 80) = 0xF000000000000000;
  }

  else
  {
    v8 = *(v0 + 440);
    v9 = (*(v0 + 448) + *(v0 + 488));
    v10 = *v9;
    *v8 = *v9;
    *(v8 + 8) = v6;
    *(v8 + 16) = *(v9 + 1);
    v11 = *(v9 + 2);
    v12 = *(v9 + 3);
    v13 = *(v9 + 4);
    *(v8 + 80) = v9[10];
    *(v8 + 48) = v12;
    *(v8 + 64) = v13;
    *(v8 + 32) = v11;
    *(v0 + 16) = v10;
    *(v0 + 24) = v6;
    *(v0 + 32) = *(v9 + 1);
    v14 = *(v9 + 2);
    v15 = *(v9 + 3);
    v16 = *(v9 + 4);
    *(v0 + 96) = v9[10];
    *(v0 + 64) = v15;
    *(v0 + 80) = v16;
    *(v0 + 48) = v14;
    sub_26CCC5FC8(v0 + 16, v0 + 104);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_26CCC4FF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD568, &qword_26CD463E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  (*(v5 + 16))(&v14 - v6, a1, v4);
  v8 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParamsContinuations;
  v9 = *(a2 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParamsContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_26CCBEFCC(0, v9[2] + 1, 1, v9);
    *(a2 + v8) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_26CCBEFCC((v11 > 1), v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v7, v4);
  *(a2 + v8) = v9;
  return result;
}

void sub_26CCC517C(uint64_t a1, char a2)
{
  v60 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v57 - v7;
  v9 = sub_26CD3A1EC();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v57 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD748, &qword_26CD46340);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v57 - v16;
  v18 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v61 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_boundaryTask;
  if (*(v2 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_boundaryTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    sub_26CD3A8DC();
  }

  *(v2 + v21) = 0;

  if (a2)
  {
    v61 = sub_26CD3A42C();
    v22 = sub_26CD3A99C();
    if (os_log_type_enabled(v61, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_26CC14000, v61, v22, "Not scheduling next boundary time since next time is not available", v23, 2u);
      MEMORY[0x26D6AE340](v23, -1, -1);
    }

    v24 = v61;
  }

  else
  {
    v25 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_playbackState;
    swift_beginAccess();
    sub_26CC1B4DC(v2 + v25, v17, &qword_2804BD748, &qword_26CD46340);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_26CC1B544(v17, &qword_2804BD748, &qword_26CD46340);
      v26 = sub_26CD3A42C();
      v27 = sub_26CD3A99C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_26CC14000, v26, v27, "Not scheduling next boundary time since playback state is nil", v28, 2u);
        MEMORY[0x26D6AE340](v28, -1, -1);
      }
    }

    else
    {
      v29 = v61;
      sub_26CCC4844(v17, v61);
      v30 = *(v29 + *(v18 + 24));
      if (v30 <= 0.0)
      {
        v36 = sub_26CD3A42C();
        v37 = sub_26CD3A99C();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_26CC14000, v36, v37, "Not scheduling next boundary time since playback rate is 0 or negative", v38, 2u);
          MEMORY[0x26D6AE340](v38, -1, -1);
        }

        sub_26CCC490C(v29);
      }

      else
      {
        v31 = *&v60;
        sub_26CC1B4DC(v29 + *(v18 + 20), v8, &qword_2804BCA90, &qword_26CD3C200);
        v33 = v57;
        v32 = v58;
        v34 = v2;
        if ((*(v57 + 48))(v8, 1, v58) == 1)
        {
          sub_26CC1B544(v8, &qword_2804BCA90, &qword_26CD3C200);
          v35 = *v29;
        }

        else
        {
          (*(v33 + 32))(v14, v8, v32);
          v39 = *v29;
          sub_26CD3A1DC();
          sub_26CD3A10C();
          v41 = v40;
          v42 = *(v33 + 8);
          v42(v12, v32);
          v42(v14, v32);
          v35 = v39 + v30 * v41;
        }

        v43 = v31 - v35;
        if (v31 - v35 <= 0.0)
        {
          v44 = sub_26CD3A42C();
          v45 = sub_26CD3A99C();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&dword_26CC14000, v44, v45, "Interval to next boundary time is negative.  Scheduling for 0.5 seconds", v46, 2u);
            MEMORY[0x26D6AE340](v46, -1, -1);
          }

          v43 = 0.5;
        }

        v47 = sub_26CD3A42C();
        v48 = sub_26CD3A99C();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 134218240;
          *(v49 + 4) = *&v60;
          *(v49 + 12) = 2048;
          *(v49 + 14) = v43;
          _os_log_impl(&dword_26CC14000, v47, v48, "Scheduling timer to fire at next boundary time %f which is in %f seconds", v49, 0x16u);
          MEMORY[0x26D6AE340](v49, -1, -1);
        }

        v50 = sub_26CD3A86C();
        v51 = v59;
        (*(*(v50 - 8) + 56))(v59, 1, 1, v50);
        v52 = swift_allocObject();
        swift_weakInit();
        sub_26CD3A84C();

        v53 = sub_26CD3A83C();
        v54 = swift_allocObject();
        v55 = MEMORY[0x277D85700];
        *(v54 + 16) = v53;
        *(v54 + 24) = v55;
        *(v54 + 32) = v43;
        *(v54 + 40) = v52;

        v56 = sub_26CD2806C(0, 0, v51, &unk_26CD46368, v54);
        sub_26CCC490C(v61);
        *(v34 + v21) = v56;
      }
    }
  }
}

uint64_t sub_26CCC5984(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 40) = a1;
  v6 = sub_26CD3ACFC();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  sub_26CD3A84C();
  *(v5 + 80) = sub_26CD3A83C();
  v8 = sub_26CD3A80C();
  *(v5 + 88) = v8;
  *(v5 + 96) = v7;

  return MEMORY[0x2822009F8](sub_26CCC5A7C, v8, v7);
}

uint64_t sub_26CCC5A7C()
{
  v1 = sub_26CD3B17C();
  v3 = v2;
  sub_26CD3B05C();
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_26CCC5B58;

  return sub_26CCC68A8(v1, v3, 0, 0, 1);
}

uint64_t sub_26CCC5B58()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  v3 = v2[12];
  v4 = v2[11];
  if (v0)
  {
    v5 = sub_26CCC5D80;
  }

  else
  {
    v5 = sub_26CCC5CE0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26CCC5CE0()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_26CCD7DD4();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCC5D80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCC5DEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD568, &qword_26CD463E0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - v3;
  v5 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParamsContinuations;
  v6 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParamsContinuations);
  v7 = *(v6 + 16);
  if (v7)
  {
    v15 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParamsContinuations;
    v16 = v0;
    v10 = *(v2 + 16);
    v8 = v2 + 16;
    v9 = v10;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);

    do
    {
      v9(v4, v11, v1);
      sub_26CD3A82C();
      (*(v8 - 8))(v4, v1);
      v11 += v12;
      --v7;
    }

    while (v7);

    v5 = v15;
    v0 = v16;
  }

  *(v0 + v5) = MEMORY[0x277D84F90];

  v13 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_boundaryTask;
  if (*(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_boundaryTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    sub_26CD3A8DC();
  }

  *(v0 + v13) = 0;
}

uint64_t TimerBasedMetadataVendor.init()()
{
  v1 = v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams;
  *v1 = xmmword_26CD3E690;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_boundaryTask) = 0;
  *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParamsContinuations) = MEMORY[0x277D84F90];
  sub_26CD3A43C();

  return TimedMetadataVendor.init()();
}

uint64_t sub_26CCC6108()
{
  sub_26CCC6DD0(*(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams), *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 8), *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 16), *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 24), *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 32), *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 40), *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 48), *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 56), *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 64), *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 72), *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 80));

  v1 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_logger;
  v2 = sub_26CD3A44C();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t TimerBasedMetadataVendor.deinit()
{
  v0 = TimedMetadataVendor.deinit();
  v1 = v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams;
  sub_26CCC6DD0(*(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams), *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));

  v2 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_logger;
  v3 = sub_26CD3A44C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t TimerBasedMetadataVendor.__deallocating_deinit()
{
  v0 = TimedMetadataVendor.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams);
  v2 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 8);
  v3 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 16);
  v4 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 24);
  v5 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 32);
  v6 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 40);
  v7 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 48);
  v8 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 56);
  v13 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 64);
  v9 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 80);

  sub_26CCC6DD0(v1, v2, v3, v4, v5, v6, v7, v8, v13, *(&v13 + 1), v9);

  v10 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_logger;
  v11 = sub_26CD3A44C();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);

  return swift_deallocClassInstance();
}

uint64_t sub_26CCC63D8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_26CCC6424(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26CC246B8;

  return sub_26CCC5984(v6, a1, v4, v5, v7);
}

uint64_t sub_26CCC64E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_26CD39EBC();
    if (v10)
    {
      v11 = sub_26CD39EDC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_26CD39ECC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_26CD39EBC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_26CD39EDC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_26CD39ECC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_26CCC6718(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_26CCC7080(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_26CC18C50(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_26CCC64E8(v13, a3, a4, &v12);
  v10 = v4;
  sub_26CC18C50(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_26CCC68A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_26CD3ACEC();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_26CCC69A8, 0, 0);
}

uint64_t sub_26CCC69A8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_26CD3ACFC();
  v5 = sub_26CCC7024(&qword_2804BD780, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_26CD3B03C();
  sub_26CCC7024(&qword_2804BD788, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_26CD3AD0C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_26CCC6B38;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_26CCC6B38()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26CCC6CF4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_26CCC6CF4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_26CCC6D88(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

_BYTE **sub_26CCC6DC0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_26CCC6DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  if (a2 != 1)
  {

    sub_26CC1D1B8(a10, a11);
  }
}

uint64_t type metadata accessor for TimerBasedMetadataVendor(uint64_t a1)
{
  result = qword_2804BD770;
  if (!qword_2804BD770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26CCC6EA4(uint64_t a1, double a2)
{
  result = sub_26CD3A44C();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26CCC7024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26CCC706C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26CCAE954(result, a2);
  }

  return result;
}

uint64_t sub_26CCC7080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_26CD39EBC();
  v11 = result;
  if (result)
  {
    result = sub_26CD39EDC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_26CD39ECC();
  sub_26CCC64E8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_26CCC7138(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_26CCAE954(a3, a4);
          return sub_26CCC6718(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t static AccountMonitor.notifyAccountDidChange()()
{
  v1 = sub_26CD3A49C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26CD3A4CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CC18F30();
  v9 = sub_26CD3A9DC();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_26CCC75F8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CC1DDD0;
  aBlock[3] = &block_descriptor_8;
  v11 = _Block_copy(aBlock);

  sub_26CD3A4AC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26CCC7600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC40, &unk_26CD45D50);
  sub_26CCC7658();
  sub_26CD3AB5C();
  MEMORY[0x26D6AD3E0](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26CCC751C(uint64_t a1)
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_2804BBA28 != -1)
  {
    swift_once();
  }

  v2 = qword_2804BC8E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD798, &unk_26CD46420);
  [v1 postNotificationName:v2 object:sub_26CD3B00C() userInfo:0];

  return swift_unknownObjectRelease();
}

unint64_t sub_26CCC7600()
{
  result = qword_280BBB7F0;
  if (!qword_280BBB7F0)
  {
    sub_26CD3A49C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB7F0);
  }

  return result;
}

unint64_t sub_26CCC7658()
{
  result = qword_280BBB7D0;
  if (!qword_280BBB7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804BCC40, &unk_26CD45D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB7D0);
  }

  return result;
}

uint64_t sub_26CCC7724(uint64_t a1, uint64_t a2)
{
  v3 = sub_26CCC88BC(a1);
  if (!*(a2 + 16))
  {

    return 0;
  }

  v5 = sub_26CC181C4(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_26CC168C0(*(a2 + 56) + 32 * v5, v10);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26CCC77E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = sub_26CCC88BC(a1);
  if (!*(a2 + 16))
  {

    return 0;
  }

  v9 = sub_26CC181C4(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  sub_26CC168C0(*(a2 + 56) + 32 * v9, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if (swift_dynamicCast())
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t Dictionary<>.dictionary(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_26CC181C4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_26CC168C0(*(a3 + 56) + 32 * v4, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26CCC7944(uint64_t a1, uint64_t a2)
{
  v3 = sub_26CCC88BC(a1);
  if (!*(a2 + 16))
  {

    return 0;
  }

  v5 = sub_26CC181C4(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_26CC168C0(*(a2 + 56) + 32 * v5, v10);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26CCC79F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_26CCC88BC(a1);
  if (*(a2 + 16))
  {
    v5 = sub_26CC181C4(v3, v4);
    v7 = v6;

    result = 2;
    if (v7)
    {
      sub_26CC168C0(*(a2 + 56) + 32 * v5, v10);
      if (swift_dynamicCast())
      {
        return v9;
      }

      else
      {
        return 2;
      }
    }
  }

  else
  {

    return 2;
  }

  return result;
}

uint64_t sub_26CCC7AAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_26CCC88BC(a1);
  if (!*(a2 + 16))
  {

    return 0;
  }

  v5 = sub_26CC181C4(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_26CC168C0(*(a2 + 56) + 32 * v5, v10);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_26CCC7B60(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD00, &qword_26CD3CFC0);
    v2 = sub_26CD3AD6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
        swift_dynamicCast();
        sub_26CC331CC(&v22, v24);
        sub_26CC331CC(v24, v25);
        sub_26CC331CC(v25, &v23);
        result = sub_26CC181C4(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_26CC331CC(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_26CC331CC(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_26CCC7DC0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCF0, &qword_26CD3CFB0);
    v2 = sub_26CD3AD6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_26CC168C0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_26CC331CC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_26CC331CC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_26CC331CC(v31, v32);
    result = sub_26CD3ABDC();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_26CC331CC(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_26CCC8088(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCF0, &qword_26CD3CFB0);
    v2 = sub_26CD3AD6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_26CC331CC(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_26CC331CC(v29, v30);
    result = sub_26CD3ABDC();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_26CC331CC(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_26CCC8340(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD00, &qword_26CD3CFC0);
    v2 = sub_26CD3AD6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_26CC331CC(&v22, v24);
        sub_26CC331CC(v24, v25);
        sub_26CC331CC(v25, &v23);
        result = sub_26CC181C4(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_26CC331CC(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_26CC331CC(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_26CCC8588(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCF0, &qword_26CD3CFB0);
    v2 = sub_26CD3AD6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_26CC331CC(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_26CC331CC(v29, v30);
    result = sub_26CD3ABDC();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_26CC331CC(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t HTTPMethod.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x4554454C4544;
  v3 = 0x4843544150;
  v4 = 1414745936;
  if (v1 != 3)
  {
    v4 = 5526864;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 5522759;
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

uint64_t sub_26CCC88BC(char a1)
{
  result = 0x6669726556656761;
  switch(a1)
  {
    case 1:
      result = 0x496D616441707061;
      break;
    case 2:
    case 66:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0x6C646E7542707061;
      break;
    case 4:
      result = 0x6E6F6349707061;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x656D614E707061;
      break;
    case 8:
      result = 0x65726F7453707061;
      break;
    case 9:
      result = 0x6C656E6E616863;
      break;
    case 10:
      result = 0x496C656E6E616863;
      break;
    case 11:
      result = 0x736C656E6E616863;
      break;
    case 12:
      result = 0x746E65746E6F63;
      break;
    case 13:
      result = 0x747865746E6F63;
      break;
    case 14:
      result = 0x55746E65746E6F63;
      break;
    case 15:
      result = 1635017060;
      break;
    case 16:
      result = 0x746C7561666544;
      break;
    case 17:
      result = 0x4E79616C70736964;
      break;
    case 18:
      result = 0x6E6F697461727564;
      break;
    case 19:
      result = 0x4E65646F73697065;
      break;
    case 20:
    case 57:
      result = 0xD000000000000013;
      break;
    case 21:
      result = 0x4565727574616566;
      break;
    case 22:
    case 77:
      result = 0xD000000000000017;
      break;
    case 23:
      v3 = 1131963752;
      goto LABEL_74;
    case 24:
      result = 0x7365726E6567;
      break;
    case 25:
      result = 0x746867696568;
      break;
    case 26:
      result = 0x7461576F54776F68;
      break;
    case 27:
      result = 25705;
      break;
    case 28:
      result = 0x736567616D69;
      break;
    case 29:
      result = 0x43746C7564417369;
      break;
    case 30:
      result = 0x4F656C7070417369;
      break;
    case 31:
      result = 0xD000000000000010;
      break;
    case 32:
      result = 0x6E65736E6F437369;
      break;
    case 33:
      result = 0x656E6F447369;
      break;
    case 34:
      result = 0xD000000000000010;
      break;
    case 35:
    case 84:
      result = 0xD000000000000018;
      break;
    case 36:
      result = 0x6C6174736E497369;
      break;
    case 37:
      result = 0x73656E7574497369;
      break;
    case 38:
      result = 0x5074737269467369;
      break;
    case 39:
      result = 860910441;
      break;
    case 40:
      result = 0x7263736275537369;
      break;
    case 41:
      result = 0x4270704176547369;
      break;
    case 42:
    case 44:
    case 52:
    case 62:
      result = 0xD000000000000012;
      break;
    case 43:
      result = 0x736D657469;
      break;
    case 45:
      v3 = 1130721130;
LABEL_74:
      result = v3 | 0x726F6C6F00000000;
      break;
    case 46:
      result = 1684957547;
      break;
    case 47:
      result = 0xD000000000000010;
      break;
    case 48:
    case 85:
      result = 0xD000000000000014;
      break;
    case 49:
      result = 1701667182;
      break;
    case 50:
      result = 0x656B6F547478656ELL;
      break;
    case 51:
      result = 1852141679;
      break;
    case 53:
      result = 2036427888;
      break;
    case 54:
      result = 0x656C626179616C70;
      break;
    case 55:
      result = 0x656C626179616C70;
      break;
    case 56:
      result = 0xD00000000000001ELL;
      break;
    case 58:
      result = 0x6E65764579616C70;
      break;
    case 59:
      result = 0x7241726574736F70;
      break;
    case 60:
      result = 0x74756F68636E7570;
      break;
    case 61:
      result = 0x74756F68636E7570;
      break;
    case 63:
      result = 0x676E69746172;
      break;
    case 64:
      result = 0x6E6F73616572;
      break;
    case 65:
      result = 0x44657361656C6572;
      break;
    case 67:
      result = 0xD000000000000011;
      break;
    case 68:
      result = 0x754E6E6F73616573;
      break;
    case 69:
      result = 0x736E6F73616573;
      break;
    case 70:
      result = 0x69546E6F73616573;
      break;
    case 71:
      result = 0x69546E6F73616573;
      break;
    case 72:
      result = 0x666C656873;
      break;
    case 73:
      result = 0x616D49666C656873;
      break;
    case 74:
      result = 0x616D49666C656873;
      break;
    case 75:
      result = 0x657449666C656873;
      break;
    case 76:
      result = 0x74695474726F6873;
      break;
    case 78:
      result = 0x6449776F6873;
      break;
    case 79:
      result = 0x74736F50776F6873;
      break;
    case 80:
      result = 0x6C746954776F6873;
      break;
    case 81:
      result = 0x6C7255776F6873;
      break;
    case 82:
      result = 0x616C507472616D73;
      break;
    case 83:
      result = 0x61467374726F7073;
      break;
    case 86:
      result = 0x6D6574737973;
      break;
    case 87:
      result = 0x79546D6574737973;
      break;
    case 88:
      result = 0x656C746974;
      break;
    case 89:
      result = 1701869940;
      break;
    case 90:
      result = 0x664F6C6C65737075;
      break;
    case 91:
      result = 7107189;
      break;
    case 92:
      result = 1802728565;
      break;
    case 93:
      result = 0x706F72506B737475;
      break;
    case 94:
      result = 0x65756C6176;
      break;
    case 95:
      result = 0x676F4C6574696877;
      break;
    case 96:
      result = 0x6874646977;
      break;
    case 97:
      result = 0x5574756F68746957;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t HeaderKeys.rawValue.getter()
{
  v1 = 0x2D746E65746E6F43;
  if (*v0 != 1)
  {
    v1 = 7169648;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6556746E65696C63;
  }
}

uint64_t sub_26CCC9310(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656B6F547478656ELL;
  v4 = 0xE90000000000006ELL;
  if (v2 != 1)
  {
    v3 = 0x6F43726579616C70;
    v4 = 0xEF6449746E65746ELL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0x656B6F547478656ELL;
  v8 = 0xE90000000000006ELL;
  if (*a2 != 1)
  {
    v7 = 0x6F43726579616C70;
    v8 = 0xEF6449746E65746ELL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}

uint64_t sub_26CCC942C()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

double sub_26CCC94D4(uint64_t a1)
{
  sub_26CD3A54C();

  return result;
}

uint64_t sub_26CCC9568(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

unint64_t sub_26CCC960C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26CCCACE4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26CCC963C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE90000000000006ELL;
  v5 = 0x656B6F547478656ELL;
  if (v2 != 1)
  {
    v5 = 0x6F43726579616C70;
    v4 = 0xEF6449746E65746ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

TVAppServices::HTTPMethod_optional __swiftcall HTTPMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26CD3AD9C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26CCC9708()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

double sub_26CCC97CC(uint64_t a1)
{
  sub_26CD3A54C();

  return result;
}

uint64_t sub_26CCC987C(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

void sub_26CCC9948(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x4554454C4544;
  v5 = 0xE500000000000000;
  v6 = 0x4843544150;
  v7 = 0xE400000000000000;
  v8 = 1414745936;
  if (v2 != 3)
  {
    v8 = 5526864;
    v7 = 0xE300000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 5522759;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t RequestHandlerError.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

TVAppServices::HeaderKeys_optional __swiftcall HeaderKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26CD3AD9C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26CCC9AAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x2D746E65746E6F43;
  v4 = 0xEC00000065707954;
  if (v2 != 1)
  {
    v3 = 7169648;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6556746E65696C63;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED00006E6F697372;
  }

  v7 = 0x2D746E65746E6F43;
  v8 = 0xEC00000065707954;
  if (*a2 != 1)
  {
    v7 = 7169648;
    v8 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6556746E65696C63;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED00006E6F697372;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}

uint64_t sub_26CCC9BB8()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

double sub_26CCC9C68(uint64_t a1)
{
  sub_26CD3A54C();

  return result;
}

uint64_t sub_26CCC9D04(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

void sub_26CCC9DBC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006E6F697372;
  v4 = 0xEC00000065707954;
  v5 = 0x2D746E65746E6F43;
  if (v2 != 1)
  {
    v5 = 7169648;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6556746E65696C63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t Dictionary<>.dictionary<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26CD3A75C();
  if (!*(a2 + 16))
  {

    return 0;
  }

  v5 = sub_26CC181C4(v10, v11);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_26CC168C0(*(a2 + 56) + 32 * v5, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

id Dictionary<>.isEqual(to:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  sub_26CCC7DC0(a2);
  v3 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v4 = sub_26CD3A4DC();

  v5 = [v3 initWithDictionary_];

  sub_26CCC7DC0(a1);
  v6 = sub_26CD3A4DC();

  v7 = [v5 isEqualToDictionary_];

  return v7;
}

void sub_26CCCA00C(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v7 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!a1 || ((a4 & 0x2000000000000000) != 0 ? (v13 = HIBYTE(a4) & 0xF) : (v13 = a3 & 0xFFFFFFFFFFFFLL), !v13))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v12 || (a2 & 1) == 0)
    {
      v7 = sub_26CD3A73C();
      v8 = v26;
      v9 = v27;
      v10 = v28;

      v11 = sub_26CC1CAFC(0, 1, 1, MEMORY[0x277D84F90]);
      v5 = *(v11 + 2);
      a5 = *(v11 + 3);
      goto LABEL_42;
    }

LABEL_34:

    return;
  }

  v14 = 4 * v13;
  v11 = MEMORY[0x277D84F90];
  v10 = 15;
  v8 = 0xE100000000000000;
  while (2)
  {
    v15 = v10 >> 14;
    if (v10 >> 14 == v14)
    {
      goto LABEL_35;
    }

    v36 = v11;
    while (1)
    {
      while (1)
      {
        v9 = sub_26CD3A71C();
        v17 = v16;
        if (v9 == 44 && v16 == 0xE100000000000000 || (sub_26CD3AFDC() & 1) != 0 || v9 == 45 && v17 == 0xE100000000000000)
        {

          break;
        }

        v9 = sub_26CD3AFDC();

        if (v9)
        {
          break;
        }

        v15 = sub_26CD3A65C() >> 14;
        if (v15 == v14)
        {
          goto LABEL_35;
        }
      }

      if (v10 >> 14 != v15 || (a2 & 1) == 0)
      {
        break;
      }

      v10 = sub_26CD3A65C();
      v15 = v10 >> 14;
      if (v10 >> 14 == v14)
      {
        goto LABEL_35;
      }
    }

    if (v15 >= v10 >> 14)
    {
      v18 = sub_26CD3A73C();
      v33 = v20;
      v34 = v19;
      v22 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_26CC1CAFC(0, *(v11 + 2) + 1, 1, v11);
      }

      v24 = *(v36 + 2);
      v23 = *(v36 + 3);
      v9 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v36 = sub_26CC1CAFC((v23 > 1), v24 + 1, 1, v36);
      }

      *(v36 + 2) = v9;
      v25 = &v36[32 * v24];
      *(v25 + 4) = v18;
      *(v25 + 5) = v34;
      *(v25 + 6) = v22;
      *(v25 + 7) = v33;
      v11 = v36;
      v10 = sub_26CD3A65C();
      if (*(v36 + 2) == a1)
      {
LABEL_35:
        if (v10 >> 14 == v14 && (a2 & 1) != 0)
        {
          goto LABEL_34;
        }

        if (v14 < v10 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_26CD3A73C();
          v8 = v29;
          v9 = v30;
          v10 = v31;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_41;
          }
        }

        v11 = sub_26CC1CAFC(0, *(v11 + 2) + 1, 1, v11);
LABEL_41:
        v5 = *(v11 + 2);
        a5 = *(v11 + 3);
LABEL_42:
        v6 = v5 + 1;
        if (v5 < a5 >> 1)
        {
LABEL_43:
          *(v11 + 2) = v6;
          v32 = &v11[32 * v5];
          *(v32 + 4) = v7;
          *(v32 + 5) = v8;
          *(v32 + 6) = v9;
          *(v32 + 7) = v10;
          return;
        }

LABEL_45:
        v11 = sub_26CC1CAFC((a5 > 1), v6, 1, v11);
        goto LABEL_43;
      }

      continue;
    }

    break;
  }

  __break(1u);
}

uint64_t sub_26CCCA404()
{
  v3 = _s13TVAppServices0A12AccountStoreC10storefrontSSSgvgZ_0();
  if (v1)
  {
    sub_26CCCA00C(0x7FFFFFFFFFFFFFFFLL, 1, v3, v1, v2);
    if (v4[2])
    {
      v6 = v4[4];
      v5 = v4[5];
      v7 = v4[6];
      v8 = v4[7];

      v3 = MEMORY[0x26D6AD010](v6, v5, v7, v8);
      v10 = v9;

      v1 = v10;
    }

    else
    {

      v3 = 0;
      v1 = 0;
    }
  }

  v11 = *(v0 + 8);

  return v11(v3, v1);
}

unint64_t sub_26CCCA4F8()
{
  result = qword_2804BD7A0;
  if (!qword_2804BD7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD7A0);
  }

  return result;
}

unint64_t sub_26CCCA550()
{
  result = qword_2804BD7A8;
  if (!qword_2804BD7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD7A8);
  }

  return result;
}

unint64_t sub_26CCCA5A8()
{
  result = qword_2804BD7B0;
  if (!qword_2804BD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD7B0);
  }

  return result;
}

unint64_t sub_26CCCA640()
{
  result = qword_2804BD7B8;
  if (!qword_2804BD7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD7B8);
  }

  return result;
}

unint64_t sub_26CCCA694(uint64_t a1)
{
  v2 = sub_26CD3ABDC();

  return sub_26CCCA86C(a1, v2);
}

unint64_t sub_26CCCA6D8(uint64_t a1)
{
  v2 = sub_26CD3B0EC();

  return sub_26CCCA934(a1, v2);
}

unint64_t sub_26CCCA71C(uint64_t a1)
{
  v1 = a1;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  v2 = sub_26CD3B13C();

  return sub_26CCCA9A0(v1, v2);
}

unint64_t sub_26CCCA7E8(uint64_t a1)
{
  sub_26CD3A20C();
  sub_26CCCAD8C(&qword_280BBB1C0, MEMORY[0x277CC9600]);
  v2 = sub_26CD3A52C();

  return sub_26CCCAB38(a1, v2);
}

unint64_t sub_26CCCA86C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_26CCCAD30(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26D6AD5D0](v9, a1);
      sub_26CC579C4(v9);
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

unint64_t sub_26CCCA934(uint64_t a1, uint64_t a2)
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

unint64_t sub_26CCCA9A0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x656B6F547478656ELL;
          v8 = 0xE90000000000006ELL;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0x6F43726579616C70;
          v8 = 0xEF6449746E65746ELL;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE200000000000000;
            if (v7 != 25705)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE200000000000000;
        v7 = 25705;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x656B6F547478656ELL;
      }

      else
      {
        v10 = 0x6F43726579616C70;
      }

      if (v9 == 1)
      {
        v11 = 0xE90000000000006ELL;
      }

      else
      {
        v11 = 0xEF6449746E65746ELL;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_26CD3AFDC();

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

unint64_t sub_26CCCAB38(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_26CD3A20C();
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
      sub_26CCCAD8C(&qword_280BBB1B8, MEMORY[0x277CC9610]);
      v15 = sub_26CD3A56C();
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

unint64_t sub_26CCCACE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_26CD3AD9C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26CCCAD8C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_26CD3A20C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26CCCADD0()
{
  type metadata accessor for TVSubscriptionsFetcherActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_2804BD7C0 = v0;
  return result;
}

uint64_t sub_26CCCAE10(double a1)
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v1);
}

uint64_t sub_26CCCAE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26CC37110;

  return v9(a1, a2, a3);
}

uint64_t sub_26CCCAF90()
{
  if (qword_2804BBA58 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26CCCAFEC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TVSubscriptionsFetcherActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_26CCCB028()
{
  v1[11] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v1[13] = swift_task_alloc();
  v2 = sub_26CD3A07C();
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v1[16] = *(v3 + 64);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  if (qword_2804BBA58 != -1)
  {
    swift_once();
  }

  v4 = qword_2804BD7C0;
  v1[19] = qword_2804BD7C0;

  return MEMORY[0x2822009F8](sub_26CCCB1A4, v4, 0);
}

uint64_t sub_26CCCB1A4()
{
  v0[20] = (*(*(v0[11] + 24) + 8))();
  if (v1)
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v2 = qword_280BBCBE0;
    v3 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_26CD3C1E0;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_26CC19E10();
    *(v4 + 32) = 0xD00000000000005BLL;
    *(v4 + 40) = 0x800000026CD51390;
    sub_26CD3A3DC(v3, &dword_26CC14000, v2, "%@", 2, 2, v4);

    v5 = v0[1];

    return v5(0);
  }

  else
  {
    v7 = v0[11];
    v9 = *(v7 + 72);
    v8 = *(v7 + 80);
    v12 = (*(v8 + 8) + **(v8 + 8));
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_26CCCB428;
    v11 = v0[13];

    return v12(v11, v9, v8);
  }
}

uint64_t sub_26CCCB428()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_26CCCBF7C;
  }

  else
  {
    v4 = sub_26CCCB554;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26CCCB554()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26CC3C0E0(v3);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v4 = qword_280BBCBE0;
    v5 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26CD3C1E0;
    *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v6 + 64) = sub_26CC2E6E8();
    *(v6 + 32) = &unk_287DFA690;
    sub_26CD3A3DC(v5, &dword_26CC14000, v4, "%@", 2, 2, v6);

    sub_26CC3D980();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[20];
    v11 = v0[11];
    v12 = *(v2 + 32);
    v12(v0[18], v3, v1);
    v0[8] = v10;
    v13 = sub_26CD3AF8C();
    MEMORY[0x26D6AD060](v13);

    swift_beginAccess();
    v14 = *(v11 + 88);
    if (*(v14 + 16) && (v15 = sub_26CC181C4(2970195, 0xE300000000000000), (v16 & 1) != 0))
    {
      v17 = *(*(v14 + 56) + 8 * v15);
      v0[23] = v17;
      swift_endAccess();

      if (qword_280BB9C20 != -1)
      {
        swift_once();
      }

      v18 = qword_280BBCBE0;
      v19 = sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_26CD3C1E0;
      *(v20 + 56) = MEMORY[0x277D837D0];
      *(v20 + 64) = sub_26CC19E10();
      *(v20 + 32) = 0x1000000000000059;
      *(v20 + 40) = 0x800000026CD513F0;
      sub_26CD3A3DC(v19, &dword_26CC14000, v18, "%@", 2, 2, v20);

      v21 = swift_task_alloc();
      v0[24] = v21;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCCA0, &qword_26CD45DA0);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
      *v21 = v0;
      v21[1] = sub_26CCCBBB4;
      v24 = MEMORY[0x277D84950];
      v25 = v0 + 10;
      v26 = v17;
      v27 = v22;
    }

    else
    {
      v45 = v12;
      v28 = v0[17];
      v42 = v0[18];
      v29 = v0[15];
      v43 = v0[19];
      v30 = v0[14];
      v31 = v0[12];
      v44 = v31;
      swift_endAccess();
      v32 = sub_26CD3A86C();
      (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
      v33 = swift_allocObject();
      swift_weakInit();
      v34 = v30;
      (*(v29 + 16))(v28, v42, v30);
      v35 = sub_26CCCCBA4();
      v36 = (*(v29 + 80) + 56) & ~*(v29 + 80);
      v37 = swift_allocObject();
      *(v37 + 2) = v43;
      *(v37 + 3) = v35;
      *(v37 + 4) = v33;
      *(v37 + 5) = 2970195;
      *(v37 + 6) = 0xE300000000000000;
      v45(&v37[v36], v28, v34);

      v38 = sub_26CD27DF0(0, 0, v44, &unk_26CD468D0, v37);
      v0[26] = v38;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = *(v11 + 88);
      *(v11 + 88) = 0x8000000000000000;
      sub_26CD38C60(v38, 2970195, 0xE300000000000000, isUniquelyReferenced_nonNull_native);

      *(v11 + 88) = v46;
      swift_endAccess();
      v40 = swift_task_alloc();
      v0[27] = v40;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCCA0, &qword_26CD45DA0);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
      *v40 = v0;
      v40[1] = sub_26CCCBD98;
      v24 = MEMORY[0x277D84950];
      v25 = v0 + 9;
      v26 = v38;
      v27 = v41;
    }

    return MEMORY[0x282200430](v25, v26, v27, v23, v24);
  }
}

uint64_t sub_26CCCBBB4()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_26CCCC004;
  }

  else
  {
    v4 = sub_26CCCBCE0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26CCCBCE0()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];

  (*(v3 + 8))(v1, v2);
  v4 = v0[10];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_26CCCBD98()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_26CCCC0B4;
  }

  else
  {
    v4 = sub_26CCCBEC4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26CCCBEC4()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];

  (*(v3 + 8))(v1, v2);
  v4 = v0[9];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_26CCCBF7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCCC004()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26CCCC0B4()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_26CCCC164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v7[15] = a1;
  v8 = sub_26CD3A07C();
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();
  v9 = sub_26CD39D0C();
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();
  if (qword_2804BBA58 != -1)
  {
    swift_once();
  }

  v10 = qword_2804BD7C0;
  v7[26] = qword_2804BD7C0;

  return MEMORY[0x2822009F8](sub_26CCCC2C0, v10, 0);
}

uint64_t sub_26CCCC2C0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[27] = Strong;
  if (Strong)
  {
    v2 = Strong;
    (*(v0[21] + 16))(v0[22], v0[19], v0[20]);
    sub_26CD39C7C();
    v3 = v2[7];
    v4 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v3);
    v13 = (*(v4 + 16) + **(v4 + 16));
    v5 = swift_task_alloc();
    v0[28] = v5;
    *v5 = v0;
    v5[1] = sub_26CCCC580;
    v6 = v0[25];

    return v13(v0 + 14, v6, v3, v4);
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v8 = v0[15];
    v9 = qword_280BBCBE0;
    v10 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26CD3C1E0;
    *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v11 + 64) = sub_26CC2E6E8();
    *(v11 + 32) = &unk_287DFC358;
    sub_26CD3A3DC(v10, &dword_26CC14000, v9, "%@", 2, 2, v11);

    *v8 = 0;

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_26CCCC580()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = sub_26CCCC934;
  }

  else
  {
    v4 = sub_26CCCC6AC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26CCCC6AC(uint64_t a1)
{
  v2 = v1[14];
  if (v2)
  {
    v4 = v1[17];
    v3 = v1[18];
    v5 = v1[15];
    (*(v1[24] + 8))(v1[25], v1[23]);
    *v5 = v2;
    swift_beginAccess();

    sub_26CCD644C(0, v4, v3);
    swift_endAccess();

    v6 = v1[1];
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v8 = v1[24];
    v7 = v1[25];
    v9 = v1[23];
    v11 = v1[17];
    v10 = v1[18];
    v12 = qword_280BBCBE0;
    v13 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_26CD3C1E0;
    *(v14 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v14 + 64) = sub_26CC2E6E8();
    *(v14 + 32) = &unk_287DFC388;
    sub_26CD3A3DC(v13, &dword_26CC14000, v12, "%@", 2, 2, v14);

    sub_26CC3D980();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
    swift_beginAccess();

    sub_26CCD644C(0, v11, v10);
    swift_endAccess();

    v6 = v1[1];
  }

  return v6();
}

uint64_t sub_26CCCC934()
{
  v2 = v0[17];
  v1 = v0[18];
  (*(v0[24] + 8))(v0[25], v0[23]);
  swift_beginAccess();

  sub_26CCD644C(0, v2, v1);
  swift_endAccess();

  v3 = v0[1];

  return v3();
}

uint64_t sub_26CCCCA10()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_26CCCCA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26CC37110;

  return v9(a1, a2, a3);
}

unint64_t sub_26CCCCBA4()
{
  result = qword_2804BD7C8;
  if (!qword_2804BD7C8)
  {
    type metadata accessor for TVSubscriptionsFetcherActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD7C8);
  }

  return result;
}

uint64_t sub_26CCCCC1C()
{
  if (qword_280BBB5E8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_26CCCCCEC;

  return TVBagService.bag.getter(v0 + 16);
}

uint64_t sub_26CCCCCEC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_26CCCCEB0;
  }

  else
  {
    v2 = sub_26CCCCE00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CCCCE00()
{
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_26CD3A3BC();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_26CCCCEC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26CCCCEE8, 0, 0);
}

uint64_t sub_26CCCCEE8()
{
  if (qword_280BBB0C0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_26CCCCFC8;
  v2 = *(v0 + 24);

  return sub_26CD2BB90(v2);
}

uint64_t sub_26CCCCFC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_26CCCD114, 0, 0);
  }
}

uint64_t sub_26CCCD114()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = [v1 data];
  v4 = sub_26CD3A0BC();
  v6 = v5;

  v7 = Data.asDictionary()();
  sub_26CC18C50(v4, v6);

  *v2 = v7;
  v8 = v0[1];

  return v8();
}

uint64_t sub_26CCCD1D8(uint64_t a1)
{
  v4 = *(sub_26CD3A07C() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_26CC246B8;

  return sub_26CCCC164(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t TimedMetadataRequest.RequestBuildError.hashValue.getter()
{
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](0);
  return sub_26CD3B13C();
}

unint64_t sub_26CCCD37C()
{
  result = qword_2804BD7D0;
  if (!qword_2804BD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD7D0);
  }

  return result;
}

uint64_t sub_26CCCD3E0()
{
  sub_26CCCDDF0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_26CCCD448(uint64_t a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 128) = a2;
  v5 = sub_26CD39D0C();
  *(v3 + 24) = v5;
  *(v3 + 32) = *(v5 - 8);
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();
  v6 = *(a1 + 16);
  *(v3 + 56) = *a1;
  *(v3 + 72) = v6;
  *(v3 + 88) = *(a1 + 32);
  *(v3 + 129) = *(a1 + 48);

  return MEMORY[0x2822009F8](sub_26CCCD538, 0, 0);
}

uint64_t sub_26CCCD538()
{
  v1 = *(v0 + 129);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 16);
  v9 = *(v0 + 128);
  v10 = OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams;
  *(v0 + 104) = OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams;
  v11 = v8 + v10;
  *v11 = v7;
  *(v11 + 8) = v6;
  *(v11 + 16) = v5;
  *(v11 + 24) = v4;
  *(v11 + 32) = v3;
  *(v11 + 40) = v2;
  *(v11 + 48) = v1;
  *(v8 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_allowExplicitContent) = v9;
  sub_26CCCDE58(v7, v6, v5, v4, v3, v2, v1);
  sub_26CCCDDF0(v7, v6, v5, v4, v3, v2, v1);
  type metadata accessor for UTSURLRequestFactory();
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_26CCCD6A4;
  v13 = *(v0 + 48);

  return sub_26CD027F0(v13, 0x656D2D64656D6974, 0xEE00617461646174, 0, 0xE000000000000000, 0, 0);
}

uint64_t sub_26CCCD6A4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_26CCCD888;
  }

  else
  {
    v2 = sub_26CCCD7B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CCCD7B8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  (*(v4 + 16))(v2, v1, v3);
  v5 = sub_26CD0881C(v2);
  (*(v4 + 8))(v1, v3);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_26CCCD888()
{
  v1 = v0[2] + v0[13];
  sub_26CCCDDF0(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  _s27TimedMetadataRequestBuilderCMa(0);
  swift_deallocPartialClassInstance();

  v2 = v0[1];

  return v2();
}

uint64_t sub_26CCCD960@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26CD39E2C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  v10 = v1 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams;
  if (*(v1 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams + 48))
  {
    v11 = *(v10 + 40);
    v13 = v10 + 16;
    v12 = *(v10 + 16);
    v16[3] = *(v13 + 8);
    v16[1] = v11;
    v16[2] = v12;
    sub_26CD39DFC();
    v17 = a1;
    swift_beginAccess();
    sub_26CCDEE64(v9, v7);
    v14 = *(v4 + 8);
    v14(v9, v3);
    swift_endAccess();
    sub_26CD39DFC();
    swift_beginAccess();
    sub_26CCDEE64(v9, v7);
    v14(v9, v3);
    swift_endAccess();
    sub_26CD39DFC();
    swift_beginAccess();
    a1 = v17;
    sub_26CCDEE64(v9, v7);
  }

  else
  {
    sub_26CD39DFC();
    swift_beginAccess();
    sub_26CCDEE64(v9, v7);
    v14 = *(v4 + 8);
  }

  v14(v9, v3);
  swift_endAccess();
  sub_26CD39DFC();

  swift_beginAccess();
  sub_26CCDEE64(v9, v7);
  v14(v9, v3);
  swift_endAccess();
  return sub_26CD08B34(a1);
}

uint64_t sub_26CCCDCCC()
{
  v0 = sub_26CD09390();
  sub_26CCCDDF0(*(v0 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams), *(v0 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams + 8), *(v0 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams + 16), *(v0 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams + 24), *(v0 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams + 32), *(v0 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams + 40), *(v0 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams + 48));

  return swift_deallocClassInstance();
}

uint64_t _s27TimedMetadataRequestBuilderCMa(uint64_t a1)
{
  result = qword_2804BD7D8;
  if (!qword_2804BD7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_26CCCDDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if (a7)
  {
  }

  return result;
}

uint64_t sub_26CCCDE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    v7 = vars8;
  }
}

__n128 TimedMetadataRequest.init(fetchParams:allowExplicitContent:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  result = *(a1 + 32);
  *(a3 + 32) = result;
  *(a3 + 48) = v3;
  *(a3 + 49) = a2;
  return result;
}

uint64_t TimedMetadataRequest.response()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490);
  *(v1 + 160) = swift_task_alloc();
  v2 = sub_26CD39D0C();
  *(v1 + 168) = v2;
  *(v1 + 176) = *(v2 - 8);
  *(v1 + 184) = swift_task_alloc();
  v3 = *(v0 + 16);
  *(v1 + 192) = *v0;
  *(v1 + 208) = v3;
  *(v1 + 224) = *(v0 + 32);
  *(v1 + 65) = *(v0 + 48);
  *(v1 + 66) = *(v0 + 49);

  return MEMORY[0x2822009F8](sub_26CCCDFD8, 0, 0);
}

uint64_t sub_26CCCDFD8()
{
  if (qword_280BBACD8 != -1)
  {
    swift_once();
  }

  if (!*(&xmmword_280BBACE0 + 1))
  {
    sub_26CC2E794();
    swift_allocError();
    v12 = 2;
    goto LABEL_26;
  }

  v1 = *(v0 + 65);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (*(v0 + 65))
  {
    if (!v4)
    {
      sub_26CC2E794();
      swift_allocError();
      v12 = 9;
      goto LABEL_26;
    }

    v5 = *(v0 + 224);
    v6 = *(v0 + 232);
    if ((v6 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(v6) & 0xF;
    }

    else
    {
      v7 = *(v0 + 224) & 0xFFFFFFFFFFFFLL;
    }

    if (!v7)
    {
      sub_26CC2E794();
      swift_allocError();
      v12 = 10;
      goto LABEL_26;
    }

    v8 = *(v0 + 208);
    v9 = *(v0 + 216);
    if ((v9 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(v9) & 0xF;
    }

    else
    {
      v10 = *(v0 + 208) & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {
      sub_26CC2E794();
      swift_allocError();
      v12 = 11;
LABEL_26:
      *v11 = v12;
      swift_willThrow();

      v16 = *(v0 + 8);

      return v16();
    }
  }

  else
  {
    if (!v4)
    {
      sub_26CC2E794();
      swift_allocError();
      v12 = 8;
      goto LABEL_26;
    }

    v8 = *(v0 + 208);
    v5 = *(v0 + 224);
  }

  v17 = v8;
  v18 = v5;
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v8;
  *(v0 + 48) = v5;
  *(v0 + 64) = v1;
  _s27TimedMetadataRequestBuilderCMa(0);
  swift_allocObject();
  sub_26CCCDE58(v3, v2, v17, *(&v17 + 1), v18, *(&v18 + 1), v1);
  v13 = swift_task_alloc();
  *(v0 + 240) = v13;
  *v13 = v0;
  v13[1] = sub_26CCCE298;
  v14 = *(v0 + 66);

  return sub_26CCCD448(v0 + 16, v14);
}

uint64_t sub_26CCCE298(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v5 = sub_26CCCE71C;
  }

  else
  {
    *(v4 + 256) = a1;
    v5 = sub_26CCCE3C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CCCE3C0()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  sub_26CCCD960(v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26CC5BF40(v0[20]);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v4 = qword_280BBCBE0;
    v5 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26CD3C1E0;
    *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v6 + 64) = sub_26CC2E6E8();
    *(v6 + 32) = &unk_287DFC3B8;
    sub_26CD3A3DC(v5, &dword_26CC14000, v4, "%@", 2, 2, v6);

    sub_26CC2E794();
    swift_allocError();
    *v7 = 12;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
    v0[12] = &type metadata for FeatureFlagManager;
    v10 = sub_26CC30530();
    *(v0 + 72) = 0;
    v0[13] = v10;
    v11 = sub_26CD3A29C();
    __swift_destroy_boxed_opaque_existential_1(v0 + 9);
    if (v11)
    {
      if (qword_280BBAA78 != -1)
      {
        swift_once();
      }

      v12 = swift_task_alloc();
      v0[33] = v12;
      *v12 = v0;
      v12[1] = sub_26CCCE78C;
      v13 = v0[23];

      return UTSNetworkManager.execute(request:)(v13);
    }

    else
    {
      if (qword_280BBAA78 != -1)
      {
        swift_once();
      }

      v14 = swift_task_alloc();
      v0[35] = v14;
      *v14 = v0;
      v14[1] = sub_26CCCE988;
      v15 = v0[23];

      return sub_26CD2E7BC(v15);
    }
  }
}

uint64_t sub_26CCCE71C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCCE78C(uint64_t a1)
{
  v3 = *v2;
  v3[14] = v2;
  v3[15] = a1;
  v3[16] = v1;
  v3[34] = v1;

  if (v1)
  {
    v4 = sub_26CCCEB84;
  }

  else
  {
    v4 = sub_26CCCE8A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CCCE8A8()
{
  v1 = v0[15];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = [v1 data];
  v6 = sub_26CD3A0BC();
  v8 = v7;

  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9(v6, v8);
}

uint64_t sub_26CCCE988(uint64_t a1)
{
  v3 = *v2;
  v3[17] = v2;
  v3[18] = a1;
  v3[19] = v1;
  v3[36] = v1;

  if (v1)
  {
    v4 = sub_26CCCEC0C;
  }

  else
  {
    v4 = sub_26CCCEAA4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CCCEAA4()
{
  v1 = v0[18];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = [v1 data];
  v6 = sub_26CD3A0BC();
  v8 = v7;

  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9(v6, v8);
}

uint64_t sub_26CCCEB84()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26CCCEC0C()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26CCCECBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26CCCED04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26CCCED90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 50))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26CCCEDD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

unint64_t sub_26CCCEE50()
{
  result = qword_2804BD7E8;
  if (!qword_2804BD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD7E8);
  }

  return result;
}

TVAppServices::NotificationCategory_optional __swiftcall NotificationCategory.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t NotificationSetting.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

unint64_t sub_26CCCEF64()
{
  result = qword_2804BD7F0;
  if (!qword_2804BD7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD7F0);
  }

  return result;
}

unint64_t sub_26CCCEFBC()
{
  result = qword_2804BD7F8;
  if (!qword_2804BD7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD7F8);
  }

  return result;
}

void TimedMetadata.EntityType.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_26CD3AD9C();

  v5 = 3;
  if (v4 < 3)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t TimedMetadata.EntityType.rawValue.getter()
{
  v1 = 1735290707;
  if (*v0 != 1)
  {
    v1 = 0x7473696C79616C50;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F73726550;
  }
}

uint64_t sub_26CCCF0DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1735290707;
  if (v2 != 1)
  {
    v4 = 0x7473696C79616C50;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E6F73726550;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1735290707;
  if (*a2 != 1)
  {
    v8 = 0x7473696C79616C50;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6F73726550;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}

uint64_t sub_26CCCF1CC()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

double sub_26CCCF264(uint64_t a1)
{
  sub_26CD3A54C();

  return result;
}

uint64_t sub_26CCCF2E8(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

void sub_26CCCF388(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1735290707;
  if (v2 != 1)
  {
    v5 = 0x7473696C79616C50;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F73726550;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t TimedMetadata.ImageMetadata.joeColor.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TimedMetadata.ImageMetadata.url.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t TimedMetadata.PersonEntity.entityId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TimedMetadata.PersonEntity.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void TimedMetadata.PersonEntity.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t TimedMetadata.PersonEntity.subtitle.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void TimedMetadata.PersonEntity.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

void TimedMetadata.PersonEntity.imageMetadata.getter(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  sub_26CCCF5F0(v2, v3, v4, v5, v6, v7, v8);
}

void sub_26CCCF5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
  }
}

__n128 TimedMetadata.PersonEntity.imageMetadata.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_26CCCF69C(v1[7], v1[8], v1[9], v1[10], v1[11], v1[12], v1[13]);
  v4 = *a1;
  *(v1 + 9) = a1[1];
  *(v1 + 7) = v4;
  result = v6;
  *(v1 + 11) = v6;
  v1[13] = v3;
  return result;
}

double sub_26CCCF69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
  }

  return result;
}

uint64_t TimedMetadata.PersonEntity.url.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

void TimedMetadata.PersonEntity.url.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

__n128 TimedMetadata.PersonEntity.init(entityId:title:subtitle:imageMetadata:url:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = a7[2];
  v13 = *(a7 + 6);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = 0;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  sub_26CCCF69C(0, 0, 0, 0, 0, 0, 0);
  v14 = *a7;
  *(a9 + 72) = a7[1];
  *(a9 + 56) = v14;
  result = v16;
  *(a9 + 88) = v16;
  *(a9 + 104) = v13;
  *(a9 + 112) = a8;
  *(a9 + 120) = a10;
  return result;
}

uint64_t TimedMetadata.SongEntity.entityId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TimedMetadata.SongEntity.songId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void TimedMetadata.SongEntity.songId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t TimedMetadata.SongEntity.url.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void TimedMetadata.SongEntity.url.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t TimedMetadata.SongEntity.name.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void TimedMetadata.SongEntity.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t TimedMetadata.SongEntity.artist.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

void TimedMetadata.SongEntity.artist.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t TimedMetadata.SongEntity.imageUrl.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

void TimedMetadata.SongEntity.imageUrl.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t TimedMetadata.SongEntity.init(entityId:songId:url:name:artist:service:imageUrl:isExplicitContent:isAddedToPlaylist:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, char a15, char a16)
{
  v16 = *a12;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0;
  *(a9 + 122) = 0;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  *(a9 + 96) = v16;
  *(a9 + 104) = a13;
  *(a9 + 112) = a14;
  *(a9 + 121) = a15;
  *(a9 + 120) = a16;
  return result;
}

double TimedMetadata.TimedEntityMapping.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

double TimedMetadata.TimedEntityMapping.init(timeRange:entities:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = result;
  *(a3 + 24) = a2;
  return result;
}

uint64_t TimedMetadata.EntityMapping.visualEntityMappingForGivenRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

__n128 TimedMetadata.EntityMapping.visualEntityMappingForGivenRange.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  return result;
}

uint64_t TimedMetadata.EntityMapping.visualEntityMappingForGivenTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

__n128 TimedMetadata.EntityMapping.visualEntityMappingForGivenTime.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v4;
  return result;
}

uint64_t TimedMetadata.EntityMapping.audioEntityMappingForGivenTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  *a1 = *(v1 + 64);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

__n128 TimedMetadata.EntityMapping.audioEntityMappingForGivenTime.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v4;
  return result;
}

uint64_t TimedMetadata.EntityMapping.audioEntityMappingAfterRetainRule.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  *a1 = *(v1 + 96);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

__n128 TimedMetadata.EntityMapping.audioEntityMappingAfterRetainRule.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 96) = *a1;
  *(v1 + 112) = v4;
  return result;
}

uint64_t TimedMetadata.Service.name.getter()
{
  if (*v0)
  {
    return 0;
  }

  else
  {
    return 0x636973754DBFA3EFLL;
  }
}

void TimedMetadata.Service.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_26CD3AD9C();

  v5 = 3;
  if (v4 < 3)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t TimedMetadata.Service.rawValue.getter()
{
  v1 = 0x6D617A616873;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656E755469;
  }
}

uint64_t sub_26CCCFF64(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D617A616873;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x73656E755469;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x6D617A616873;
  if (*a2 != 1)
  {
    v8 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73656E755469;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}

uint64_t sub_26CCD0048()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

double sub_26CCD00DC(uint64_t a1)
{
  sub_26CD3A54C();

  return result;
}

uint64_t sub_26CCD015C(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

void sub_26CCD01F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D617A616873;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73656E755469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void TimedMetadata.ContentRating.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_26CD3AD9C();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t TimedMetadata.ContentRating.rawValue.getter()
{
  if (*v0)
  {
    return 0x746963696C707865;
  }

  else
  {
    return 0x6E61656C63;
  }
}

unint64_t sub_26CCD02E8()
{
  result = qword_2804BD800;
  if (!qword_2804BD800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD800);
  }

  return result;
}

unint64_t sub_26CCD0340()
{
  result = qword_2804BD808;
  if (!qword_2804BD808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD808);
  }

  return result;
}

uint64_t sub_26CCD0394(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746963696C707865;
  }

  else
  {
    v3 = 0x6E61656C63;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x746963696C707865;
  }

  else
  {
    v5 = 0x6E61656C63;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26CD3AFDC();
  }

  return v8 & 1;
}

unint64_t sub_26CCD043C()
{
  result = qword_2804BD810;
  if (!qword_2804BD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD810);
  }

  return result;
}

uint64_t sub_26CCD0490()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

double sub_26CCD0510(uint64_t a1)
{
  sub_26CD3A54C();

  return result;
}

uint64_t sub_26CCD057C(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

void sub_26CCD05F8(char *a2@<X8>)
{
  v3 = sub_26CD3AD9C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_26CCD0658(uint64_t *a1@<X8>)
{
  v2 = 0x6E61656C63;
  if (*v1)
  {
    v2 = 0x746963696C707865;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26CCD06F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26CCD073C(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_13TVAppServices13TimedMetadataC05ImageD0VSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_26CCD07D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26CCD081C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy123_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 107) = *(a2 + 107);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26CCD08B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 123))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26CCD0900(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 122) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 123) = 1;
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

    *(result + 123) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26CCD0974(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26CCD09BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26CCD0A0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_26CCD0A68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

id static TVAppAccountStore.activeAccount(forMediaType:)(uint64_t a1)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 ams:a1 activeiTunesAccountForMediaType:?];

  return v3;
}

id static TVAppAccountStore.shared()()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];

  return v0;
}

id static TVAppAccountStore.activeOrLocalAccount()()
{
  v0 = objc_opt_self();
  v1 = [v0 ams_sharedAccountStore];
  v2 = [v1 ams_activeiTunesAccount];

  if (!v2)
  {
    v3 = [v0 ams_sharedAccountStore];
    v2 = [v3 ams_localiTunesAccount];
  }

  return v2;
}

id sub_26CCD0CB0(uint64_t a1, SEL *a2)
{
  v4 = [objc_opt_self() ams_sharedAccountStore];
  v5 = [v4 *a2];

  return v5;
}

id sub_26CCD0D2C(SEL *a1)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 *a1];

  return v3;
}

uint64_t static TVAppAccountStore.accounts.getter()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_iTunesAccounts];

  sub_26CCD0E20();
  v2 = sub_26CD3A7AC();

  return v2;
}

unint64_t sub_26CCD0E20()
{
  result = qword_2804BD818;
  if (!qword_2804BD818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804BD818);
  }

  return result;
}

uint64_t sub_26CCD0EBC(double a1)
{
  v1 = sub_26CD3A44C();
  __swift_allocate_value_buffer(v1, qword_2804D1538);
  __swift_project_value_buffer(v1, qword_2804D1538);
  return sub_26CD3A43C();
}

uint64_t sub_26CCD0F3C(uint64_t a1, double a2)
{
  if (!*(a1 + 16) || (v6 = sub_26CC181C4(1635017060, 0xE400000000000000), (v7 & 1) == 0) || (v74[0] = *(*(a1 + 56) + 8 * v6), swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD828, &qword_26CD479D0), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v12 = sub_26CD3A44C();
    __swift_project_value_buffer(v12, qword_2804D1538);
    v13 = sub_26CD3A42C();
    v14 = sub_26CD3A98C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_26CC14000, v13, v14, "data key not found", v15, 2u);
      MEMORY[0x26D6AE340](v15, -1, -1);
    }

    sub_26CCD4200();
    swift_allocError();
    v17 = 8;
    goto LABEL_17;
  }

  if (!*(v75[0] + 16) || (v8 = sub_26CC181C4(0x74654D64656D6974, 0xED00006174616461), (v9 & 1) == 0))
  {

    goto LABEL_20;
  }

  v3 = *(*(v75[0] + 56) + 8 * v8);
  swift_unknownObjectRetain();

  v74[0] = v3;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v19 = sub_26CD3A44C();
    __swift_project_value_buffer(v19, qword_2804D1538);
    v20 = sub_26CD3A42C();
    v21 = sub_26CD3A98C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26CC14000, v20, v21, "timedMetadata key not found", v22, 2u);
      MEMORY[0x26D6AE340](v22, -1, -1);
    }

    sub_26CCD4200();
    swift_allocError();
    v17 = 9;
LABEL_17:
    *v16 = v17;
    swift_willThrow();
    return v3;
  }

  if (!*(v75[0] + 16))
  {
    v23 = 0;
    v3 = 0;
LABEL_39:

    v73 = 0;
    goto LABEL_40;
  }

  v10 = sub_26CC181C4(0x7365697469746E65, 0xE800000000000000);
  if (v11)
  {
    v74[0] = *(*(v75[0] + 56) + 8 * v10);
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      v3 = v75[0];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  if (!*(v75[0] + 16))
  {
    v23 = 0;
    goto LABEL_39;
  }

  v24 = sub_26CC181C4(0x6E6572727563636FLL, 0xEB00000000736563);
  if (v25)
  {
    v74[0] = *(*(v75[0] + 56) + 8 * v24);
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      v23 = v75[0];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  if (!*(v75[0] + 16))
  {
    goto LABEL_39;
  }

  v26 = sub_26CC181C4(0x6E45646574726F73, 0xEF73644979746974);
  if ((v27 & 1) == 0)
  {
    goto LABEL_39;
  }

  v28 = *(*(v75[0] + 56) + 8 * v26);
  swift_unknownObjectRetain();

  v74[0] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  v29 = swift_dynamicCast();
  v31 = v75[0];
  if (!v29)
  {
    v31 = 0;
  }

  v73 = v31;
LABEL_40:
  if (!v23)
  {
    v39 = 0;
    v71 = 1000;
    v72 = 0;
    goto LABEL_59;
  }

  if (!*(v23 + 16))
  {
    v71 = 1000;
    v72 = 0;
LABEL_58:

    v39 = 0;
    goto LABEL_59;
  }

  v32 = sub_26CC181C4(0x6F65646976, 0xE500000000000000);
  if ((v33 & 1) == 0)
  {

    goto LABEL_51;
  }

  v34 = *(*(v23 + 56) + 8 * v32);
  swift_unknownObjectRetain();

  v74[0] = v34;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_51:
    v72 = 0;
    goto LABEL_52;
  }

  v72 = v75[0];
  if (!*(v75[0] + 16))
  {
    goto LABEL_52;
  }

  v35 = sub_26CC181C4(0x65736162656D6974, 0xE800000000000000);
  if ((v36 & 1) == 0)
  {

    goto LABEL_52;
  }

  v37 = *(*(v75[0] + 56) + 8 * v35);
  swift_unknownObjectRetain();

  v74[0] = v37;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_52:
    v38 = 1000;
    goto LABEL_53;
  }

  v38 = v75[0];
LABEL_53:
  v71 = v38;
  if (!*(v23 + 16))
  {
    goto LABEL_58;
  }

  v40 = sub_26CC181C4(0x6F69647561, 0xE500000000000000);
  if ((v41 & 1) == 0)
  {
    goto LABEL_58;
  }

  v42 = *(*(v23 + 56) + 8 * v40);
  swift_unknownObjectRetain();

  v74[0] = v42;
  if (swift_dynamicCast())
  {
    v39 = v75[0];
  }

  else
  {
    v39 = 0;
  }

LABEL_59:
  v43 = sub_26CCD1A28(v3, v30);
  if (v2)
  {
  }

  else
  {
    v70 = v43;
    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v44 = sub_26CD3A44C();
    __swift_project_value_buffer(v44, qword_2804D1538);
    v45 = sub_26CD3A42C();
    v46 = sub_26CD3A99C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      *(v47 + 4) = a2;
      _os_log_impl(&dword_26CC14000, v45, v46, "TimedMetadataParser using start time offset of %f", v47, 0xCu);
      MEMORY[0x26D6AE340](v47, -1, -1);
    }

    if (v73)
    {
      v48 = sub_26CD3A42C();
      v49 = sub_26CD3A99C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_26CC14000, v48, v49, "Visual entity sort order is available in timedmetadata json", v50, 2u);
        MEMORY[0x26D6AE340](v50, -1, -1);
      }

      v51 = *(v73 + 16);
      if (v51)
      {
        v52 = (v73 + 40);
        v69 = MEMORY[0x277D84F90];
        do
        {
          if (v3 && *(v3 + 16))
          {
            v54 = *(v52 - 1);
            v53 = *v52;

            v55 = sub_26CC181C4(v54, v53);
            v57 = v56;

            if (v57)
            {
              v58 = *(*(v3 + 56) + 8 * v55);
              swift_unknownObjectRetain();

              v74[0] = v58;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BD450, &unk_26CD47370);
              if (swift_dynamicCast())
              {
                v59 = v75[0];
                sub_26CD3ABFC();
                if (*(v59 + 16) && (v60 = sub_26CCCA694(v74), (v61 & 1) != 0))
                {
                  sub_26CC168C0(*(v59 + 56) + 32 * v60, v75);
                  sub_26CC579C4(v74);

                  if (swift_dynamicCast())
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v69 = sub_26CCBE3BC(0, *(v69 + 2) + 1, 1, v69);
                    }

                    v63 = *(v69 + 2);
                    v62 = *(v69 + 3);
                    if (v63 >= v62 >> 1)
                    {
                      v69 = sub_26CCBE3BC((v62 > 1), v63 + 1, 1, v69);
                    }

                    *(v69 + 2) = v63 + 1;
                    v64 = &v69[16 * v63];
                    *(v64 + 4) = 25705;
                    *(v64 + 5) = 0xE200000000000000;
                  }
                }

                else
                {

                  sub_26CC579C4(v74);
                }
              }
            }

            else
            {
            }
          }

          v52 += 2;
          --v51;
        }

        while (v51);
      }

      else
      {
        v69 = MEMORY[0x277D84F90];
      }

      v65 = v69;
    }

    else
    {
      v65 = MEMORY[0x277D84F90];
    }

    v66 = sub_26CCD42B8(v72, v3, v71, a2);

    v67 = sub_26CCD4E0C(v39, v3, a2);

    if (v66)
    {
      v68 = v66;
    }

    else
    {
      v68 = MEMORY[0x277D84F90];
    }

    if (!v67)
    {
      v67 = MEMORY[0x277D84F98];
    }

    type metadata accessor for TimedMetadata(0);
    v3 = swift_allocObject();
    *(v3 + 24) = xmmword_26CD47330;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    sub_26CD3A43C();
    *(v3 + 16) = v70;
    *(v3 + 40) = v68;
    *(v3 + 48) = v67;
    *(v3 + 56) = v65;
    sub_26CCEFDB8();
  }

  return v3;
}

void *sub_26CCD1A28(uint64_t a1, double a2)
{
  if (a1)
  {
    v3 = v2;
    v5 = a1 + 64;
    v6 = 1 << *(a1 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(a1 + 64);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    v62 = MEMORY[0x277D84F90];
LABEL_5:
    if (v8)
    {
      goto LABEL_10;
    }

LABEL_6:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        return v62;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
LABEL_10:
        while (1)
        {
          v12 = __clz(__rbit64(v8));
          v8 &= v8 - 1;
          *&v52 = *(*(a1 + 56) + ((v10 << 9) | (8 * v12)));
          swift_unknownObjectRetain_n();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD828, &qword_26CD479D0);
          if (swift_dynamicCast())
          {
            break;
          }

          swift_unknownObjectRelease();
          if (!v8)
          {
            goto LABEL_6;
          }
        }

        v13 = v41;
        if (!*(v41 + 16) || (v14 = sub_26CC181C4(1701869940, 0xE400000000000000), (v15 & 1) == 0) || (*&v41 = *(*(v41 + 56) + 8 * v14), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
        {
          swift_unknownObjectRelease();

          goto LABEL_5;
        }

        v40 = v3;
        v16 = v52;
        if (v52 == __PAIR128__(0xE600000000000000, 0x6E6F73726550) || (sub_26CD3AFDC() & 1) != 0)
        {

          if (*(v13 + 16))
          {
            v17 = sub_26CC181C4(25705, 0xE200000000000000);
            if (v18)
            {
              *&v41 = *(*(v13 + 56) + 8 * v17);
              swift_unknownObjectRetain();
              if (swift_dynamicCast())
              {

                sub_26CCD21C8(v13, &v52);
                v19 = v3;
                if (!v3)
                {

                  v45 = v56;
                  v47 = v57;
                  v49 = v58[0];
                  v51 = v58[1];
                  v41 = v52;
                  v42 = v53;
                  v43 = v54;
                  v44 = v55;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v62 = sub_26CCBEC4C(0, v62[2] + 1, 1, v62);
                  }

                  v21 = v62[2];
                  v20 = v62[3];
                  v22 = v21 + 1;
                  if (v21 >= v20 >> 1)
                  {
                    v62 = sub_26CCBEC4C((v20 > 1), v21 + 1, 1, v62);
                  }

                  swift_unknownObjectRelease();
                  v60 = &type metadata for TimedMetadata.PersonEntity;
                  v61 = &protocol witness table for TimedMetadata.PersonEntity;
                  v23 = swift_allocObject();
                  *&v59 = v23;
                  v23[5] = v45;
                  v23[6] = v47;
                  v23[7] = v49;
                  v23[8] = v51;
                  goto LABEL_44;
                }

LABEL_36:

                swift_unknownObjectRelease();
                v3 = 0;
                goto LABEL_5;
              }
            }
          }

          goto LABEL_37;
        }

        if (v16 == __PAIR128__(0xE400000000000000, 1735290707))
        {
        }

        else
        {
          v24 = sub_26CD3AFDC();

          if ((v24 & 1) == 0)
          {
            goto LABEL_52;
          }
        }

        if (*(v13 + 16))
        {
          v25 = sub_26CC181C4(25705, 0xE200000000000000);
          v3 = v40;
          if ((v26 & 1) == 0 || (*&v41 = *(*(v13 + 56) + 8 * v25), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
          {
LABEL_37:

            swift_unknownObjectRelease();
            goto LABEL_5;
          }

          sub_26CCD2940(v13, &v52);
          v19 = v40;
          if (v40)
          {
            goto LABEL_36;
          }

          v46 = v56;
          v48 = v57;
          *v50 = v58[0];
          *&v50[11] = *(v58 + 11);
          v41 = v52;
          v42 = v53;
          v43 = v54;
          v44 = v55;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v62 = sub_26CCBEC4C(0, v62[2] + 1, 1, v62);
          }

          v21 = v62[2];
          v27 = v62[3];
          v22 = v21 + 1;
          if (v21 >= v27 >> 1)
          {
            v62 = sub_26CCBEC4C((v27 > 1), v21 + 1, 1, v62);
          }

          swift_unknownObjectRelease();
          v60 = &type metadata for TimedMetadata.SongEntity;
          v61 = &protocol witness table for TimedMetadata.SongEntity;
          v23 = swift_allocObject();
          *&v59 = v23;
          v23[5] = v46;
          v23[6] = v48;
          v23[7] = *v50;
          *(v23 + 123) = *&v50[11];
LABEL_44:
          v23[1] = v41;
          v23[2] = v42;
          v23[3] = v43;
          v23[4] = v44;
          v28 = &v62[5 * v21];
          v62[2] = v22;
          sub_26CC2524C(&v59, (v28 + 4));
          v3 = 0;
        }

        else
        {

          swift_unknownObjectRelease();
          v3 = v40;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_52:

    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v35 = sub_26CD3A44C();
    __swift_project_value_buffer(v35, qword_2804D1538);
    v36 = sub_26CD3A42C();
    v37 = sub_26CD3A98C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_26CC14000, v36, v37, "Unknown entity type", v38, 2u);
      MEMORY[0x26D6AE340](v38, -1, -1);
    }

    sub_26CCD4200();
    swift_allocError();
    *v39 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v30 = sub_26CD3A44C();
    __swift_project_value_buffer(v30, qword_2804D1538);
    v31 = sub_26CD3A42C();
    v32 = sub_26CD3A98C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26CC14000, v31, v32, "Base entities not found", v33, 2u);
      MEMORY[0x26D6AE340](v33, -1, -1);
    }

    sub_26CCD4200();
    swift_allocError();
    *v34 = 0;
    return swift_willThrow();
  }
}