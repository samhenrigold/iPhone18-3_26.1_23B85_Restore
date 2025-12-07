char *sub_22B3E0698(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE200, &qword_22B3F88F0);
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

char *sub_22B3E078C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE2B0, &qword_22B3F9C00);
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

char *sub_22B3E0890(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE2A0, &qword_22B3F88F8);
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

void *sub_22B3E099C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE450, &unk_22B3F9BE8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE440, &qword_22B3F9BE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B3E0AD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE290, &unk_22B3F88E0);
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

void *sub_22B3E0BD4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE430, &qword_22B3F9BC8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE428, &qword_22B3F9BB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22B3E0D1C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE468, &unk_22B3F9C10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE460, &qword_22B3F9C08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22B3E0E50(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22B3E2258(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_22B3F6C64();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE440, &qword_22B3F9BE0);
      v7 = sub_22B3F67B4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_22B3E12A4(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_22B3E0FA4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22B3E226C(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_22B3F6C64();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 8);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 2) >= v11)
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 3;
          v16 = *(v13 + 2);
          *(v13 + 4) = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          v13[1] = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE428, &qword_22B3F9BB8);
      v7 = sub_22B3F67B4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_22B3E182C(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_22B3E1114(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE200, &qword_22B3F88F0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_22B3E11D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE2C8, &unk_22B3F8920);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_22B3E12A4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_22B3E2230(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_22B3E1DF0((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22B3C1DD8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_22B3C1DD8((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_22B3E1DF0((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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

uint64_t sub_22B3E182C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_22B3E2230(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_22B3E1FF4((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v27 + v10);
            v22 = (v27 + v18);
            v23 = *v21;
            v24 = v21[1];
            v25 = v21[2];
            v26 = *v22;
            *v21 = *(v22 - 1);
            v21[2] = v26;
            *(v22 - 2) = v23;
            *(v22 - 1) = v24;
            *v22 = v25;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22B3C1DD8(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_22B3C1DD8((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_22B3E1FF4((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6 + 16);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (*(v33 - 1) >= v31)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *v33;
    v35 = *(v33 + 1);
    *v33 = *(v33 - 3);
    v33[2] = *(v33 - 1);
    *(v33 - 2) = v35;
    *(v33 - 1) = v31;
    *(v33 - 3) = v34;
    v33 -= 3;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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

uint64_t sub_22B3E1DF0(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
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
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_22B3E1FF4(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v19 = v6 - 3;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 3, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 3;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 3;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

void *sub_22B3E2280(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 48) + v17);
      v19 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v19;
        goto LABEL_24;
      }

      v11 += 2;
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

void *sub_22B3E23D8(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

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

_OWORD *sub_22B3E2534(_OWORD *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _OWORD *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v55 = a8;
  v52 = a7;
  v53 = a3;
  v50 = a6;
  v48 = a5;
  v57 = a4;
  v61 = a2;
  v59 = a12;
  v58 = a11;
  v60 = a10;
  v54 = a9;
  v51 = a22;
  v47 = a21;
  v49 = a19;
  v24 = type metadata accessor for BlackPearlLevels(0);
  MEMORY[0x28223BE20](v24 - 8);
  v56 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67[3] = a15;
  v67[4] = a20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
  (*(*(a15 - 8) + 32))(boxed_opaque_existential_1, v48, a15);
  v66[3] = a18;
  v66[4] = a23;
  v27 = __swift_allocate_boxed_opaque_existential_1(v66);
  (*(*(a18 - 8) + 32))(v27, v50, a18);
  v65[3] = a16;
  v65[4] = v47;
  v28 = __swift_allocate_boxed_opaque_existential_1(v65);
  (*(*(a16 - 8) + 32))(v28, v52, a16);
  v64[3] = a14;
  v64[4] = v49;
  v29 = __swift_allocate_boxed_opaque_existential_1(v64);
  v30 = v53;
  (*(*(a14 - 8) + 32))(v29, v55, a14);
  v63[3] = a17;
  v63[4] = v51;
  v31 = __swift_allocate_boxed_opaque_existential_1(v63);
  (*(*(a17 - 8) + 32))(v31, v54, a17);
  v33 = a1[1];
  v68[0] = *a1;
  v32 = v68[0];
  v68[1] = v33;
  v35 = a1[3];
  v69 = a1[2];
  v34 = v69;
  v70 = v35;
  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_catMaxSeqLen) = 256;
  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_nonCommerceCategories) = &unk_283F05350;
  a13[1] = v32;
  a13[2] = v33;
  a13[3] = v34;
  a13[4] = v35;
  v36 = v61[3];
  v37 = v61[4];
  v38 = v61;
  __swift_project_boxed_opaque_existential_0(v61, v36);
  v39 = *(v37 + 304);
  sub_22B3CEED0(v68, &v62);
  v40 = v56;
  v39(v36, v37);
  sub_22B3B2C30(v40, a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels);
  sub_22B3CEF2C(v38, a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_modelLoader);
  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_nerRule) = v30;
  v41 = v59;
  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_commerceSenderRule) = v60;
  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_guaranteeList) = v58;
  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_finalRule) = v41;
  sub_22B3CEF2C(v67, a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_tsSubjectMap);
  sub_22B3CEF2C(v66, a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_tsSenderMap);
  sub_22B3CEF2C(v65, a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_catMap);
  type metadata accessor for BertEmbeddings();
  swift_allocObject();

  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_bertEmbeddings) = BertEmbeddings.init()();
  sub_22B3CEF2C(v64, a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_saasSenderMap);
  sub_22B3CEF2C(v63, a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_mbertDomainMap);
  type metadata accessor for LanguageDetection();
  swift_allocObject();
  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_languageDetection) = sub_22B3C2BDC();
  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_domainHelper) = v57;
  v42 = objc_allocWithZone(MEMORY[0x277CCAC68]);

  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_privateRelayRegex) = sub_22B3CED78(0xD000000000000041, 0x800000022B3FB800, 1);
  v43 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_tsRegex) = sub_22B3CED78(0x775C5E5B7C2B775CLL, 0xEB000000005D735CLL, 0);
  v44 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v45 = sub_22B3CED78(0xD000000000000014, 0x800000022B3FB8E0, 0);

  sub_22B3CEF90(v68);
  __swift_destroy_boxed_opaque_existential_0(v63);
  __swift_destroy_boxed_opaque_existential_0(v64);
  __swift_destroy_boxed_opaque_existential_0(v65);
  __swift_destroy_boxed_opaque_existential_0(v66);
  __swift_destroy_boxed_opaque_existential_0(v67);
  *(a13 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_alphaNumericRegex) = v45;
  __swift_destroy_boxed_opaque_existential_0(v61);
  return a13;
}

_OWORD *sub_22B3E2C44(_OWORD *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, __int128 a19, uint64_t a20)
{
  v50 = a6;
  v48 = a5;
  v62 = a3;
  v63 = a4;
  v60 = a1;
  v61 = a2;
  v59 = a10;
  v58 = a11;
  v56 = a19;
  v57 = a18;
  v54 = a8;
  v55 = a20;
  v52 = a7;
  v53 = a9;
  v45 = a15;
  v51 = a16;
  v49 = *(a16 - 8);
  v46 = a13;
  MEMORY[0x28223BE20](a1);
  v47 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v44 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a17 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v44 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a14 - 8);
  MEMORY[0x28223BE20](v36);
  v38 = &v44 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DecisionStrategy(0);
  v44 = swift_allocObject();
  (*(v35 + 16))(v38, v48, a14);
  (*(v31 + 16))(v34, v50, a17);
  v39 = v45;
  (*(v27 + 16))(v30, v52, v45);
  v40 = v46;
  (*(v22 + 16))(v25, v54, v46);
  v41 = v47;
  v42 = v51;
  (*(v49 + 16))(v47, v53, v51);
  return sub_22B3E2534(v60, v61, v62, v63, v38, v34, v30, v25, v41, v59, *(&v59 + 1), v58, v44, v40, a14, v39, v42, a17, v57, *(&v57 + 1), v56, *(&v56 + 1), v55);
}

uint64_t sub_22B3E3088(uint64_t a1)
{
  v2 = type metadata accessor for BlackPearlLevels(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22B3E30E4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

char *sub_22B3E30FC(unsigned __int8 *a1)
{
  v1 = a1[65];
  v2 = a1[66];
  v3 = a1[68];
  if (a1[67])
  {
    v4 = sub_22B3C1CD8(0, 1, 1, MEMORY[0x277D84F90]);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_22B3C1CD8((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v4[v6 + 32] = 4;
    if (!v2)
    {
      if (!v3)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v4 = MEMORY[0x277D84F90];
  if (v2)
  {
LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_22B3C1CD8(0, *(v4 + 2) + 1, 1, v4);
    }

    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    if (v8 >= v7 >> 1)
    {
      v4 = sub_22B3C1CD8((v7 > 1), v8 + 1, 1, v4);
    }

    *(v4 + 2) = v8 + 1;
    v4[v8 + 32] = 6;
    if (!v3)
    {
LABEL_6:
      if (!v1)
      {
        return v4;
      }

      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if ((v3 & 1) == 0)
  {
    if ((v1 & 1) == 0)
    {
      return v4;
    }

    goto LABEL_21;
  }

LABEL_16:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_22B3C1CD8(0, *(v4 + 2) + 1, 1, v4);
  }

  v10 = *(v4 + 2);
  v9 = *(v4 + 3);
  if (v10 >= v9 >> 1)
  {
    v4 = sub_22B3C1CD8((v9 > 1), v10 + 1, 1, v4);
  }

  *(v4 + 2) = v10 + 1;
  v4[v10 + 32] = 4;
  if (v1)
  {
LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_22B3C1CD8(0, *(v4 + 2) + 1, 1, v4);
    }

    v12 = *(v4 + 2);
    v11 = *(v4 + 3);
    if (v12 >= v11 >> 1)
    {
      v4 = sub_22B3C1CD8((v11 > 1), v12 + 1, 1, v4);
    }

    *(v4 + 2) = v12 + 1;
    v4[v12 + 32] = 5;
  }

  return v4;
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22B3E33CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_22B3E3414(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for DecisionStrategy(uint64_t a1)
{
  result = qword_28140CBD8;
  if (!qword_28140CBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B3E34CC(uint64_t a1)
{
  result = type metadata accessor for BlackPearlLevels(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_22B3E36B4()
{
  v0 = sub_22B3B4258();
  v1 = MEMORY[0x231890330](1601462623, 0xE400000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v0);
  if (v1[2] > 1uLL)
  {
    v5 = v1[4];
    v4 = v1[5];
    v6 = v1[6];
    v7 = v1[7];
    v8 = v1;

    v9 = MEMORY[0x23188FF00](v5, v4, v6, v7);

    if (v8[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {

      v10 = sub_22B3B63C0();
      v11 = MEMORY[0x231890330](95, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D83E40], v10);

      if (*(v11 + 16) > 2uLL)
      {
        sub_22B3DD884(2, v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE460, &qword_22B3F9C08);
        sub_22B3D0990(&qword_28140BF98, &qword_27D8BE460, &qword_22B3F9C08, MEMORY[0x277D83970]);
        v13 = sub_22B3F6774();
        v15 = v14;

        MEMORY[0x23188FF80](64, 0xE100000000000000);

        MEMORY[0x23188FF80](v13, v15);

        return v9;
      }

      else
      {

        sub_22B3E52A8();
        swift_allocError();
        *v12 = 1;
        swift_willThrow();
      }
    }
  }

  else
  {

    sub_22B3E52A8();
    swift_allocError();
    *v2 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22B3E3940(uint64_t a1, int64_t a2)
{
  v3 = *(a1 + 16);
  v4 = a2 - v3;
  if (a2 > v3)
  {
    if (a2 - v3 >= 0)
    {
      v5 = sub_22B3F67B4();
      *(v5 + 16) = v4;
      bzero((v5 + 32), 8 * v4);

      sub_22B3CB5B0(v6);
      return v5;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_unknownObjectRelease();
    sub_22B3E11D4(a1, a1 + 32, 0, v4);
    v13 = v12;
    swift_unknownObjectRelease();
    return v13;
  }

  if (a2 >= v3)
  {
  }

  if (a2 < 0)
  {
    goto LABEL_19;
  }

  if (v3 >= a2)
  {
    v3 = a2;
  }

  v8 = 2 * v3;
  if (a2)
  {
    v4 = v8 + 1;
  }

  else
  {
    v4 = 1;
  }

  sub_22B3F6C94();
  swift_unknownObjectRetain_n();

  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);

  if (v10 != v4 >> 1)
  {
    goto LABEL_20;
  }

  v11 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  result = v11;
  if (!v11)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return result;
}

void *sub_22B3E3A98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v102 = a4;
  v101 = a3;
  v104 = 0;
  v110 = sub_22B3F5F94();
  v7 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v99 - v11;
  MEMORY[0x28223BE20](v13);
  v109 = &v99 - v14;
  MEMORY[0x28223BE20](v15);
  v108 = &v99 - v16;
  v17 = v4[2];
  v117[0] = v4[1];
  v117[1] = v17;
  v18 = v4[4];
  v20 = v4[1];
  v19 = v4[2];
  v117[2] = v4[3];
  v117[3] = v18;
  v113 = v20;
  v114 = v19;
  v106 = v4;
  v21 = v4[4];
  v115 = v4[3];
  v116 = v21;
  sub_22B3CEED0(v117, v118);
  v22 = sub_22B3D204C(a1, a2);
  v118[0] = v113;
  v118[1] = v114;
  v118[2] = v115;
  v118[3] = v116;
  sub_22B3CEF90(v118);
  v23 = *(v22 + 16);
  v103 = v22;
  if (v23)
  {
    v112 = a2;
    v24 = v7;
    *&v113 = MEMORY[0x277D84F90];
    sub_22B3B799C(0, v23, 0);
    v25 = v113;
    v26 = (v22 + 32);
    v27 = *(v113 + 16);
    do
    {
      v29 = *v26++;
      v28 = v29;
      *&v113 = v25;
      v30 = *(v25 + 24);
      if (v27 >= v30 >> 1)
      {
        sub_22B3B799C((v30 > 1), v27 + 1, 1);
        v25 = v113;
      }

      *(v25 + 16) = v27 + 1;
      *(v25 + 4 * v27++ + 32) = v28;
      --v23;
    }

    while (v23);
    v107 = v25;
    v7 = v24;
    a2 = v112;
  }

  else
  {
    v107 = MEMORY[0x277D84F90];
  }

  sub_22B3F5F54();
  sub_22B3F5F44();
  sub_22B3F5F84();
  *&v113 = a1;
  *(&v113 + 1) = a2;
  sub_22B3F5F34();
  sub_22B3F5F74();
  v31 = *(v7 + 8);
  v32 = v110;
  v31(v9, v110);
  sub_22B3B4258();
  v33 = sub_22B3F69D4();
  v105 = v7 + 8;
  v100 = v31;
  v31(v12, v32);
  v34 = 0;
  v35 = *(v33 + 16);
  v36 = MEMORY[0x277D84F90];
LABEL_9:
  v37 = (v33 + 40 + 16 * v34);
  while (v35 != v34)
  {
    if (v34 >= *(v33 + 16))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      swift_once();
      goto LABEL_31;
    }

    ++v34;
    v39 = *(v37 - 1);
    v38 = *v37;
    v37 += 2;
    v40 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v40 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v40)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v113 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22B3B791C(0, *(v36 + 16) + 1, 1);
        v36 = v113;
      }

      v43 = *(v36 + 16);
      v42 = *(v36 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_22B3B791C((v42 > 1), v43 + 1, 1);
        v36 = v113;
      }

      *(v36 + 16) = v43 + 1;
      v44 = v36 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v38;
      goto LABEL_9;
    }
  }

  v45 = 0;
  v112 = *(v36 + 16);
  v46 = (v106 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_catMap);
  v47 = v36 + 40;
  v111 = MEMORY[0x277D84F90];
  v99 = v36 + 40;
LABEL_21:
  v48 = v47 + 16 * v45;
  while (v112 != v45)
  {
    if (v45 >= *(v36 + 16))
    {
      goto LABEL_50;
    }

    ++v45;
    v49 = v36;
    v50 = v48 + 16;
    v51 = v46[4];
    __swift_project_boxed_opaque_existential_0(v46, v46[3]);
    *&v113 = sub_22B3F65D4();
    *(&v113 + 1) = v52;

    v53 = sub_22B3F6754();
    v54 = (*(v51 + 16))(v53);
    LOBYTE(v51) = v55;

    v48 = v50;
    v36 = v49;
    if ((v51 & 1) == 0)
    {
      v56 = v111;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_22B3C199C(0, *(v56 + 2) + 1, 1, v56);
      }

      v111 = v56;
      v58 = *(v56 + 2);
      v57 = *(v56 + 3);
      if (v58 >= v57 >> 1)
      {
        v111 = sub_22B3C199C((v57 > 1), v58 + 1, 1, v111);
      }

      v59 = v111;
      *(v111 + 2) = v58 + 1;
      *&v59[8 * v58 + 32] = v54;
      v47 = v99;
      goto LABEL_21;
    }
  }

  if (qword_28140BFC8 != -1)
  {
    goto LABEL_51;
  }

LABEL_31:
  v60 = sub_22B3F6464();
  __swift_project_value_buffer(v60, qword_28140D680);
  v61 = v111;

  v62 = sub_22B3F6444();
  v63 = sub_22B3F68B4();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&v113 = v65;
    *v64 = 136315138;
    v66 = MEMORY[0x2318900A0](v61, MEMORY[0x277D83B88]);
    v68 = sub_22B3BDABC(v66, v67, &v113);

    *(v64 + 4) = v68;
    v61 = v111;
    _os_log_impl(&dword_22B3A7000, v62, v63, "LSTM Token IDs: %s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v65);
    MEMORY[0x231890C40](v65, -1, -1);
    MEMORY[0x231890C40](v64, -1, -1);
  }

  v69 = sub_22B3E3940(v61, 256);
  v70 = *(v69 + 16);
  v71 = MEMORY[0x277D84F90];
  if (v70)
  {
    *&v113 = MEMORY[0x277D84F90];
    sub_22B3B799C(0, v70, 0);
    v71 = v113;
    v72 = (v69 + 32);
    v73 = *(v113 + 16);
    do
    {
      v75 = *v72++;
      v74 = v75;
      *&v113 = v71;
      v76 = *(v71 + 24);
      if (v73 >= v76 >> 1)
      {
        sub_22B3B799C((v76 > 1), v73 + 1, 1);
        v71 = v113;
      }

      *(v71 + 16) = v73 + 1;
      *(v71 + 4 * v73++ + 32) = v74;
      --v70;
    }

    while (v70);
  }

  *&v113 = v71;

  sub_22B3CB4C4(v77);
  v78 = v113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE290, &unk_22B3F88E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3F79B0;
  v80 = HIBYTE(v102) & 0xF;
  if ((v102 & 0x2000000000000000) == 0)
  {
    v80 = v101 & 0xFFFFFFFFFFFFLL;
  }

  if (v80)
  {
    v81 = inited;
    v82 = sub_22B3B6414(v101, v102);
    v84 = sub_22B3B568C(v82, v83);

    inited = v81;
    v85 = v84;
  }

  else
  {
    v85 = -1.0;
  }

  *(inited + 32) = v85;
  *&v113 = v78;
  sub_22B3CB4C4(inited);
  v86 = v113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE420, &unk_22B3F9AB8);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_22B3F9AA0;
  sub_22B3B41C4(0, &qword_28140BF28, 0x277CCABB0);
  *(v87 + 32) = sub_22B3F6964();
  *(v87 + 40) = sub_22B3F6964();
  v88 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v89 = v87;
  v90 = v104;
  v91 = sub_22B3E0294(v89, 65600);
  if (v90)
  {

    goto LABEL_53;
  }

  v92 = v91;
  if (!v91)
  {
LABEL_53:
    result = sub_22B3F6B14();
    __break(1u);
    return result;
  }

  v93 = *(v86 + 16);
  if (v93)
  {
    for (i = 0; i != v93; ++i)
    {
      v95 = sub_22B3F6834();
      [v92 setObject:v95 atIndexedSubscript:i];
    }
  }

  v96 = v110;
  v97 = v100;
  v100(v109, v110);
  v97(v108, v96);
  return v92;
}

void *sub_22B3E4510(void *a1)
{
  v2 = sub_22B3CC1DC(MEMORY[0x277D84F90]);
  v3 = [a1 count];
  if (__OFSUB__(v3, 1))
  {
    goto LABEL_20;
  }

  if (((v3 - 1) & 0x8000000000000000) == 0)
  {
    v4 = v3;
    v5 = [a1 objectAtIndexedSubscript_];
    [v5 doubleValue];
    v7 = v6;

    v8 = &unk_283F053F0;
    v9 = 1;
    while (1)
    {
      v11 = *(v8 - 1);
      v10 = *v8;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_22B3B79DC(v11, v10);
      v15 = v2[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v19 = v14;
      if (v2[3] < v18)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_9;
      }

      v22 = v13;
      sub_22B3B9BB0();
      v13 = v22;
      if ((v19 & 1) == 0)
      {
LABEL_13:
        v2[(v13 >> 6) + 8] |= 1 << v13;
        v23 = (v2[6] + 16 * v13);
        *v23 = v11;
        v23[1] = v10;
        *(v2[7] + 8 * v13) = v7;
        v24 = v2[2];
        v17 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v17)
        {
          goto LABEL_19;
        }

        v2[2] = v25;
        if (v4 == v9)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_10:
      v21 = v13;

      *(v2[7] + 8 * v21) = v7;
      if (v4 == v9)
      {
        goto LABEL_17;
      }

LABEL_15:
      v26 = [a1 objectAtIndexedSubscript_];
      [v26 doubleValue];
      v7 = v27;

      ++v9;
      v8 += 2;
      if (v9 == 6)
      {
        __break(1u);
LABEL_17:
        swift_arrayDestroy();
        return v2;
      }
    }

    sub_22B3B8C5C(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_22B3B79DC(v11, v10);
    if ((v19 & 1) != (v20 & 1))
    {
      goto LABEL_22;
    }

LABEL_9:
    if ((v19 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_22B3F6CC4();
  __break(1u);
  return result;
}

char *sub_22B3E475C()
{
  v0 = sub_22B3B4258();
  v1 = MEMORY[0x231890330](64, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v0);
  v2 = *(v1 + 16);
  if (v2)
  {
    v23 = MEMORY[0x277D84F90];
    sub_22B3B79BC(0, v2, 0);
    v3 = v23;
    v4 = sub_22B3B63C0();
    v5 = v1 + 56;
    v6 = MEMORY[0x277D83E40];
    do
    {

      v7 = MEMORY[0x231890330](46, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, v6, v4);

      v9 = *(v23 + 16);
      v8 = *(v23 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_22B3B79BC((v8 > 1), v9 + 1, 1);
      }

      *(v23 + 16) = v9 + 1;
      *(v23 + 8 * v9 + 32) = v7;
      v5 += 32;
      --v2;
    }

    while (v2);

    v11 = *(v23 + 16);
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_25:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE460, &qword_22B3F9C08);
    sub_22B3D0990(&qword_28140BF98, &qword_27D8BE460, &qword_22B3F9C08, MEMORY[0x277D83970]);
    sub_22B3B63C0();
    v22 = sub_22B3F6774();

    return v22;
  }

  v3 = MEMORY[0x277D84F90];
  v11 = *(MEMORY[0x277D84F90] + 16);
  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_7:
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v12 < *(v3 + 16))
  {
    v14 = *(v3 + 32 + 8 * v12);
    v15 = *(v14 + 16);
    v16 = *(v13 + 2);
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      goto LABEL_27;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v17 <= *(v13 + 3) >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v18 = v16 + v15;
      }

      else
      {
        v18 = v16;
      }

      result = sub_22B3C1890(result, v18, 1, v13);
      v13 = result;
      if (*(v14 + 16))
      {
LABEL_20:
        if ((*(v13 + 3) >> 1) - *(v13 + 2) < v15)
        {
          goto LABEL_29;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v19 = *(v13 + 2);
          v20 = __OFADD__(v19, v15);
          v21 = v19 + v15;
          if (v20)
          {
            goto LABEL_30;
          }

          *(v13 + 2) = v21;
        }

        goto LABEL_9;
      }
    }

    if (v15)
    {
      goto LABEL_28;
    }

LABEL_9:
    if (v11 == ++v12)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

id sub_22B3E4A64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v21 = MEMORY[0x277D84F90];
    sub_22B3B799C(0, v3, 0);
    v4 = v21;
    v6 = (a1 + 32);
    v7 = *(v21 + 16);
    do
    {
      v9 = *v6++;
      v8 = v9;
      v10 = *(v21 + 24);
      if (v7 >= v10 >> 1)
      {
        sub_22B3B799C((v10 > 1), v7 + 1, 1);
      }

      *(v21 + 16) = v7 + 1;
      *(v21 + 4 * v7++ + 32) = v8;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE420, &unk_22B3F9AB8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22B3F9AA0;
  sub_22B3B41C4(0, &qword_28140BF28, 0x277CCABB0);
  *(v11 + 32) = sub_22B3F6964();
  *(v11 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v12 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v13 = sub_22B3E0294(v11, 65600);
  if (v13)
  {
    v14 = *(v4 + 16);
    if (v14)
    {
      for (i = 0; i != v14; ++i)
      {
        v16 = *(v4 + 32 + 4 * i);
        v17 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        LODWORD(v18) = v16;
        v19 = [v17 initWithFloat_];
        [v13 setObject:v19 atIndexedSubscript:i];
      }
    }

    return v13;
  }

  else
  {
    result = sub_22B3F6B14();
    __break(1u);
  }

  return result;
}

void *sub_22B3E4CAC(void *a1)
{
  v2 = sub_22B3CC1DC(MEMORY[0x277D84F90]);
  v3 = [a1 count];
  if (__OFSUB__(v3, 1))
  {
    goto LABEL_20;
  }

  if (((v3 - 1) & 0x8000000000000000) == 0)
  {
    v4 = v3;
    v5 = [a1 objectAtIndexedSubscript_];
    [v5 doubleValue];
    v7 = v6;

    v8 = &aCalendar_0[8];
    v9 = 1;
    while (1)
    {
      v11 = *(v8 - 1);
      v10 = *v8;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_22B3B79DC(v11, v10);
      v15 = v2[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v19 = v14;
      if (v2[3] < v18)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_9;
      }

      v22 = v13;
      sub_22B3B9BB0();
      v13 = v22;
      if ((v19 & 1) == 0)
      {
LABEL_13:
        v2[(v13 >> 6) + 8] |= 1 << v13;
        v23 = (v2[6] + 16 * v13);
        *v23 = v11;
        v23[1] = v10;
        *(v2[7] + 8 * v13) = v7;
        v24 = v2[2];
        v17 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v17)
        {
          goto LABEL_19;
        }

        v2[2] = v25;
        if (v4 == v9)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_10:
      v21 = v13;

      *(v2[7] + 8 * v21) = v7;
      if (v4 == v9)
      {
        goto LABEL_17;
      }

LABEL_15:
      v26 = [a1 objectAtIndexedSubscript_];
      [v26 doubleValue];
      v7 = v27;

      ++v9;
      v8 += 2;
      if (v9 == 8)
      {
        __break(1u);
LABEL_17:
        swift_arrayDestroy();
        return v2;
      }
    }

    sub_22B3B8C5C(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_22B3B79DC(v11, v10);
    if ((v19 & 1) != (v20 & 1))
    {
      goto LABEL_22;
    }

LABEL_9:
    if ((v19 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_22B3F6CC4();
  __break(1u);
  return result;
}

void *sub_22B3E4F00(uint64_t a1)
{
  v2 = sub_22B3CC1DC(MEMORY[0x277D84F90]);
  v3 = a1 + 64;
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
LABEL_10:
    v10 = __clz(__rbit64(v6)) | (v8 << 6);
    sub_22B3E51F8(*(a1 + 48) + 40 * v10, &v39);
    v11 = *(*(a1 + 56) + 8 * v10);
    v12 = v40;
    v32 = v39;
    v34 = v41;
    v13 = v41;
    v14 = v11;
    if (!v13)
    {
LABEL_24:

      return v2;
    }

    v15 = v14;
    v39 = v32;
    v6 &= v6 - 1;
    v40 = v12;
    v41 = v34;
    sub_22B3F6A74();
    if (swift_dynamicCast())
    {
      v37 = 0;
      v38 = 1;
      MEMORY[0x231890110](v15, &v37);
      if (v38 == 1)
      {
        sub_22B3E5254(&v39);
      }

      else
      {
        v33 = a1;
        v16 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v2;
        v18 = sub_22B3B79DC(v35, v36);
        v20 = v2[2];
        v21 = (v19 & 1) == 0;
        v22 = __OFADD__(v20, v21);
        v23 = v20 + v21;
        if (v22)
        {
          goto LABEL_26;
        }

        v24 = v19;
        if (v2[3] >= v23)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_19;
          }

          v27 = v18;
          sub_22B3B9BB0();
          v18 = v27;
          if ((v24 & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_20:
          v26 = v18;

          v2 = v37;
          *(v37[7] + 8 * v26) = v16;

          sub_22B3E5254(&v39);
          a1 = v33;
        }

        else
        {
          sub_22B3B8C5C(v23, isUniquelyReferenced_nonNull_native);
          v18 = sub_22B3B79DC(v35, v36);
          if ((v24 & 1) != (v25 & 1))
          {
            goto LABEL_28;
          }

LABEL_19:
          if (v24)
          {
            goto LABEL_20;
          }

LABEL_22:
          v2 = v37;
          v37[(v18 >> 6) + 8] |= 1 << v18;
          v28 = (v2[6] + 16 * v18);
          *v28 = v35;
          v28[1] = v36;
          *(v2[7] + 8 * v18) = v16;

          sub_22B3E5254(&v39);
          v29 = v2[2];
          v22 = __OFADD__(v29, 1);
          v30 = v29 + 1;
          if (v22)
          {
            goto LABEL_27;
          }

          v2[2] = v30;
          a1 = v33;
        }
      }
    }

    else
    {
      sub_22B3E5254(&v39);
    }
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
      goto LABEL_24;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_22B3F6CC4();
  __break(1u);
  return result;
}

unint64_t sub_22B3E52A8()
{
  result = qword_27D8BE448;
  if (!qword_27D8BE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE448);
  }

  return result;
}

double sub_22B3E52FC(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 217) = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_22B3E533C()
{
  result = qword_27D8BE470;
  if (!qword_27D8BE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE470);
  }

  return result;
}

uint64_t sub_22B3E5394@<X0>(char *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_22B3F6184();
  v171 = *(v6 - 8);
  v172 = v6;
  MEMORY[0x28223BE20](v6);
  v160 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v162 = &v145 - v9;
  MEMORY[0x28223BE20](v10);
  v163 = &v145 - v11;
  MEMORY[0x28223BE20](v12);
  v164 = &v145 - v13;
  MEMORY[0x28223BE20](v14);
  v165 = &v145 - v15;
  MEMORY[0x28223BE20](v16);
  v166 = &v145 - v17;
  v18 = type metadata accessor for BloomFilterData(0);
  MEMORY[0x28223BE20](v18 - 8);
  v170 = &v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for BlackPearlModel(0);
  MEMORY[0x28223BE20](v161);
  v169 = &v145 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v179 = &v145 - v22;
  MEMORY[0x28223BE20](v23);
  v178 = &v145 - v24;
  MEMORY[0x28223BE20](v25);
  v181 = &v145 - v26;
  MEMORY[0x28223BE20](v27);
  v180 = &v145 - v28;
  MEMORY[0x28223BE20](v29);
  v176 = &v145 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v145 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE480, qword_22B3F9EB8);
  MEMORY[0x28223BE20](v34);
  v175 = &v145 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v174 = &v145 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v145 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v145 - v42;
  LODWORD(v173) = *a2;
  type metadata accessor for BlackPearlSharedDefaults();
  swift_allocObject();
  v44 = sub_22B3BA428();
  v156 = a3;
  *a3 = v44;

  v177 = a1;
  static BlackPearlTrialLevels.buildVersion(trialClient:)(a1, &v185);
  v203 = v191;
  v204 = v192;
  v205 = v193;
  v206 = v194;
  v207 = v185;
  v199 = v187;
  v200 = v188;
  v201 = v189;
  v202 = v190;
  v45 = v195;
  v46 = v196;
  v47 = v197;
  v48 = v198;
  v167 = *(&v186 + 1);
  v168 = v186;
  sub_22B3BA6F4(&v185);

  v152 = v48;
  if (v48)
  {
    goto LABEL_43;
  }

  v154 = v46;
  v155 = v45;
  *&v185 = v45;
  *(&v185 + 1) = v46;
  v153 = v47;
  *&v186 = v47;
  v49 = BlackPearlCategorizationVersion.getVersionString()();
  v50 = *(v34 + 48);
  LOBYTE(v185) = 0;
  v51 = v177;
  object = v49._object;
  sub_22B3E72A0(v43, &v43[v50], v177, &v185, v49._countAndFlagsBits, v49._object);
  sub_22B3E8E9C(v43, v40);
  v52 = *(v34 + 48);
  v158 = v33;
  sub_22B3A9CCC(v40, v33, type metadata accessor for BlackPearlModel);
  sub_22B3BD990(&v40[v52]);
  sub_22B3E8E9C(v43, v40);
  sub_22B3A9CCC(&v40[*(v34 + 48)], v176, type metadata accessor for BlackPearlModel);
  sub_22B3BD990(v40);
  v53 = v173;
  if (v173 == 4 || v173 == 1)
  {
    BlackPearlModel.loadModel()();
    BlackPearlModel.loadModel()();
  }

  v54 = *(v34 + 48);
  LOBYTE(v185) = 1;
  v55 = v174;
  v56 = v51;
  sub_22B3E72A0(v174, &v174[v54], v51, &v185, v49._countAndFlagsBits, object);
  sub_22B3E8E9C(v55, v40);
  v57 = v53;
  v58 = *(v34 + 48);
  sub_22B3A9CCC(v40, v180, type metadata accessor for BlackPearlModel);
  sub_22B3BD990(&v40[v58]);
  sub_22B3E8E9C(v55, v40);
  sub_22B3A9CCC(&v40[*(v34 + 48)], v181, type metadata accessor for BlackPearlModel);
  sub_22B3BD990(v40);
  if (v57 == 4 || v57 == 2)
  {
    BlackPearlModel.loadModel()();
    BlackPearlModel.loadModel()();
  }

  v59 = *(v34 + 48);
  LOBYTE(v185) = 2;
  v60 = v175;
  sub_22B3E72A0(v175, &v175[v59], v56, &v185, v49._countAndFlagsBits, object);
  sub_22B3E8E9C(v60, v40);
  v61 = *(v34 + 48);
  sub_22B3A9CCC(v40, v178, type metadata accessor for BlackPearlModel);
  sub_22B3BD990(&v40[v61]);
  sub_22B3E8E9C(v60, v40);
  sub_22B3A9CCC(&v40[*(v34 + 48)], v179, type metadata accessor for BlackPearlModel);
  sub_22B3BD990(v40);
  if ((v57 - 3) <= 1)
  {
    BlackPearlModel.loadModel()();
    BlackPearlModel.loadModel()();
  }

  v62 = sub_22B3F6564();
  v173 = "P";
  v63 = sub_22B3F6564();
  v64 = [v56 levelForFactor:v62 withNamespaceName:v63];

  if (!v64)
  {
    goto LABEL_43;
  }

  v65 = [v64 directoryValue];

  if (!v65)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v66 = [v65 path];

  if (!v66)
  {
    goto LABEL_43;
  }

  v151 = v43;
  v67 = sub_22B3F6594();
  v69 = v68;

  *&v185 = 47;
  *(&v185 + 1) = 0xE100000000000000;
  v183 = v67;
  v184 = v69;
  v150 = v69;

  v183 = sub_22B3F6754();
  v184 = v70;
  sub_22B3F6664();
  v159 = 0x800000022B3FA4F0;
  *&v185 = 0xD000000000000010;
  *(&v185 + 1) = 0x800000022B3FA4F0;
  v183 = sub_22B3F6754();
  v184 = v71;
  sub_22B3F6664();
  *&v185 = 0x616B6361706C6D2ELL;
  *(&v185 + 1) = 0xEA00000000006567;
  v183 = sub_22B3F6754();
  v184 = v72;
  sub_22B3F6664();
  v73 = v184;
  v74 = v161;
  v75 = v161[7];
  v76 = v172;
  v77 = *(v171 + 56);
  v78 = v169;
  v77(&v169[v75], 1, 1, v172);
  v157 = v74[8];
  v79 = v159;
  *v78 = 0xD000000000000010;
  *(v78 + 1) = v79;
  v80 = v167;
  *(v78 + 2) = v168;
  *(v78 + 3) = v80;

  v149 = v73;
  sub_22B3F60D4();
  sub_22B3B4B3C(&v78[v75], &qword_27D8BE0A0, &qword_22B3F7FD0);
  v77(&v78[v75], 1, 1, v76);
  *&v78[v157] = 0;
  v78[v74[9]] = 0;
  BlackPearlModel.loadModel()();
  v81 = v177;
  static BlackPearlTrialLevels.buildThresholds(trialClient:)(v177, &v185);
  static BlackPearlTrialLevels.buildBloomFilters(trialClient:)(v81, v170);
  v82 = sub_22B3F6564();
  v83 = sub_22B3F6564();
  v84 = [v81 levelForFactor:v82 withNamespaceName:v83];

  if (!v84)
  {
    goto LABEL_43;
  }

  v85 = [v84 fileValue];
  if (!v85)
  {
    goto LABEL_36;
  }

  v86 = v85;
  v87 = [v85 path];

  if (!v87)
  {
    goto LABEL_43;
  }

  sub_22B3F6594();
  v89 = v88;

  v157 = v89;
  sub_22B3F60D4();
  v90 = sub_22B3F6564();
  v91 = sub_22B3F6564();
  v92 = [v81 levelForFactor:v90 withNamespaceName:v91];

  if (!v92)
  {
    goto LABEL_43;
  }

  v93 = [v92 fileValue];
  if (!v93)
  {
    goto LABEL_37;
  }

  v94 = v93;
  v95 = [v93 path];

  if (!v95)
  {
    goto LABEL_43;
  }

  sub_22B3F6594();
  v97 = v96;

  v148 = v97;
  sub_22B3F60D4();
  v98 = sub_22B3F6564();
  v99 = sub_22B3F6564();
  v100 = [v81 levelForFactor:v98 withNamespaceName:v99];

  v161 = v100;
  if (!v100)
  {
    goto LABEL_43;
  }

  v101 = [v161 fileValue];
  if (!v101)
  {
    goto LABEL_38;
  }

  v102 = v101;
  v103 = [v101 path];

  if (!v103)
  {
    goto LABEL_43;
  }

  sub_22B3F6594();
  v105 = v104;

  v147 = v105;
  sub_22B3F60D4();
  v106 = sub_22B3F6564();
  v107 = sub_22B3F6564();
  v108 = [v81 levelForFactor:v106 withNamespaceName:v107];

  v159 = v108;
  if (!v108)
  {
    goto LABEL_43;
  }

  v109 = [v159 fileValue];
  if (!v109)
  {
    goto LABEL_39;
  }

  v110 = v109;
  v111 = [v109 path];

  if (!v111)
  {
    goto LABEL_43;
  }

  v146 = v92;
  sub_22B3F6594();

  sub_22B3F60D4();
  v112 = sub_22B3F6564();
  v113 = sub_22B3F6564();
  v114 = [v81 levelForFactor:v112 withNamespaceName:v113];

  if (!v114)
  {
    goto LABEL_43;
  }

  v115 = [v114 fileValue];
  if (!v115)
  {
    goto LABEL_40;
  }

  v116 = v115;
  v117 = [v115 path];

  if (!v117)
  {
    goto LABEL_43;
  }

  v145 = v84;
  sub_22B3F6594();

  sub_22B3F60D4();
  v118 = sub_22B3F6564();
  v119 = sub_22B3F6564();
  v120 = [v81 levelForFactor:v118 withNamespaceName:v119];

  if (!v120)
  {
    goto LABEL_43;
  }

  v121 = [v120 fileValue];
  if (!v121)
  {
    goto LABEL_41;
  }

  v122 = v121;
  v123 = [v121 path];

  if (!v123)
  {
    goto LABEL_43;
  }

  sub_22B3F6594();

  sub_22B3F60D4();
  v124 = sub_22B3F6564();
  v125 = sub_22B3F6564();
  v126 = [v81 levelForFactor:v124 withNamespaceName:v125];

  if (!v126)
  {
    goto LABEL_43;
  }

  v127 = [v126 fileValue];
  if (!v127)
  {
    goto LABEL_42;
  }

  v128 = v127;
  v129 = [v127 path];

  if (v129)
  {

    sub_22B3F6594();

    v130 = v156 + *(type metadata accessor for BlackPearlTrialLevels(0) + 20);
    v131 = type metadata accessor for BlackPearlLevels(0);
    sub_22B3F60D4();

    sub_22B3B4B3C(v175, &qword_27D8BE480, qword_22B3F9EB8);
    sub_22B3B4B3C(v174, &qword_27D8BE480, qword_22B3F9EB8);
    sub_22B3B4B3C(v151, &qword_27D8BE480, qword_22B3F9EB8);
    sub_22B3A9CCC(v158, v130, type metadata accessor for BlackPearlModel);
    sub_22B3A9CCC(v180, v130 + v131[5], type metadata accessor for BlackPearlModel);
    sub_22B3A9CCC(v178, v130 + v131[6], type metadata accessor for BlackPearlModel);
    sub_22B3A9CCC(v181, v130 + v131[9], type metadata accessor for BlackPearlModel);
    sub_22B3A9CCC(v179, v130 + v131[10], type metadata accessor for BlackPearlModel);
    sub_22B3A9CCC(v169, v130 + v131[7], type metadata accessor for BlackPearlModel);
    sub_22B3A9CCC(v176, v130 + v131[8], type metadata accessor for BlackPearlModel);
    v132 = v130 + v131[11];
    *v132 = v207;
    v133 = v167;
    *(v132 + 16) = v168;
    *(v132 + 24) = v133;
    v134 = v204;
    *(v132 + 96) = v203;
    *(v132 + 112) = v134;
    v135 = v206;
    *(v132 + 128) = v205;
    *(v132 + 144) = v135;
    v136 = v200;
    *(v132 + 32) = v199;
    *(v132 + 48) = v136;
    v137 = v202;
    *(v132 + 64) = v201;
    *(v132 + 80) = v137;
    v138 = v154;
    *(v132 + 160) = v155;
    *(v132 + 168) = v138;
    *(v132 + 176) = v153;
    *(v132 + 184) = v152;
    v139 = v130 + v131[12];
    v140 = v188;
    *(v139 + 32) = v187;
    *(v139 + 48) = v140;
    *(v139 + 64) = v189;
    *(v139 + 80) = v190;
    v141 = v186;
    *v139 = v185;
    *(v139 + 16) = v141;
    sub_22B3A9CCC(v170, v130 + v131[13], type metadata accessor for BloomFilterData);
    v142 = v172;
    v143 = *(v171 + 32);
    v143(v130 + v131[14], v166, v172);
    v143(v130 + v131[15], v165, v142);
    v143(v130 + v131[16], v164, v142);
    v143(v130 + v131[17], v163, v142);
    v143(v130 + v131[18], v162, v142);
    return (v143)(v130 + v131[19], v160, v142);
  }

LABEL_43:
  result = sub_22B3F6B14();
  __break(1u);
  return result;
}

uint64_t BlackPearlTrialLevels.getBlackPearlLevels()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BlackPearlTrialLevels(0) + 20);

  return sub_22B3B2A74(v3, a1);
}

uint64_t type metadata accessor for BlackPearlTrialLevels(uint64_t a1)
{
  result = qword_28140C4C8;
  if (!qword_28140C4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NLPLevel.hashValue.getter()
{
  v1 = *v0;
  sub_22B3F6D34();
  MEMORY[0x231890640](v1);
  return sub_22B3F6D54();
}

void static BlackPearlTrialLevels.buildVersion(trialClient:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22B3F6564();
  v5 = [a1 experimentIdentifiersWithNamespaceName_];

  v6 = sub_22B3F6564();
  v80 = [a1 rolloutIdentifiersWithNamespaceName_];

  v7 = sub_22B3F6564();
  v8 = sub_22B3F6564();
  v9 = [a1 levelForFactor:v7 withNamespaceName:v8];

  if (!v9 || (v10 = [v9 stringValue], v9, !v10))
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v56 = sub_22B3F6464();
    __swift_project_value_buffer(v56, qword_28140D680);
    v57 = sub_22B3F6444();
    v58 = sub_22B3F68C4();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_44;
    }

    v59 = "Model version not found";
    goto LABEL_43;
  }

  v77 = sub_22B3F6594();
  v78 = v11;

  v12 = sub_22B3F6564();
  v13 = sub_22B3F6564();
  v14 = [a1 levelForFactor:v12 withNamespaceName:v13];

  if (!v14 || (v15 = [v14 stringValue], v14, !v15))
  {

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v60 = sub_22B3F6464();
    __swift_project_value_buffer(v60, qword_28140D680);
    v57 = sub_22B3F6444();
    v58 = sub_22B3F68C4();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_44;
    }

    v59 = "Sender Model Version not found";
    goto LABEL_43;
  }

  v75 = sub_22B3F6594();
  v76 = v16;

  v17 = sub_22B3F6564();
  v18 = sub_22B3F6564();
  v19 = [a1 levelForFactor:v17 withNamespaceName:v18];

  if (!v19 || (v20 = [v19 stringValue], v19, !v20))
  {

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v61 = sub_22B3F6464();
    __swift_project_value_buffer(v61, qword_28140D680);
    v57 = sub_22B3F6444();
    v58 = sub_22B3F68C4();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_44;
    }

    v59 = "TS Model Version not found";
    goto LABEL_43;
  }

  v73 = sub_22B3F6594();
  v74 = v21;

  v22 = sub_22B3F6564();
  v23 = sub_22B3F6564();
  v24 = [a1 levelForFactor:v22 withNamespaceName:v23];

  if (!v24 || (v25 = [v24 stringValue], v24, !v25))
  {

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v62 = sub_22B3F6464();
    __swift_project_value_buffer(v62, qword_28140D680);
    v57 = sub_22B3F6444();
    v58 = sub_22B3F68C4();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_44;
    }

    v59 = "Rule Version not found";
    goto LABEL_43;
  }

  v71 = sub_22B3F6594();
  v72 = v26;

  v27 = sub_22B3F6564();
  v28 = sub_22B3F6564();
  v29 = [a1 levelForFactor:v27 withNamespaceName:v28];

  if (!v29 || (v30 = [v29 stringValue], v29, !v30))
  {

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v63 = sub_22B3F6464();
    __swift_project_value_buffer(v63, qword_28140D680);
    v57 = sub_22B3F6444();
    v58 = sub_22B3F68C4();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_44;
    }

    v59 = "BreakThrough version not found";
    goto LABEL_43;
  }

  v69 = sub_22B3F6594();
  v70 = v31;

  v32 = sub_22B3F6564();
  v33 = sub_22B3F6564();
  v34 = [a1 levelForFactor:v32 withNamespaceName:v33];

  if (v34)
  {
    v35 = [v34 stringValue];

    if (v35)
    {
      sub_22B3F6594();

      v36 = v80;
      v79 = v5;
      if (v5)
      {
        v37 = [v5 experimentId];
        v38 = sub_22B3F6594();
        v67 = v39;
        v68 = v38;

        v40 = [v5 treatmentId];
        v41 = v5;
        v5 = sub_22B3F6594();
        v43 = v42;

        v44 = [v41 deploymentId];
        if (v80)
        {
LABEL_15:
          v45 = [v80 deploymentId];
          v46 = [v80 factorPackId];
          v47 = sub_22B3F6594();
          v49 = v48;

          v50 = [v80 rolloutId];
          v51 = sub_22B3F6594();
          v53 = v52;

          v36 = v80;
LABEL_18:
          *a2 = v77;
          *(a2 + 8) = v78;
          *(a2 + 16) = v75;
          *(a2 + 24) = v76;
          *(a2 + 32) = v73;
          *(a2 + 40) = v74;
          *(a2 + 48) = v71;
          *(a2 + 56) = v72;
          *(a2 + 64) = v69;
          *(a2 + 72) = v70;
          *(a2 + 96) = v5;
          *(a2 + 104) = v43;
          *(a2 + 80) = v68;
          *(a2 + 88) = v67;
          *(a2 + 112) = v44;
          *(a2 + 120) = v45;
          *(a2 + 128) = v47;
          *(a2 + 136) = v49;
          *(a2 + 144) = v51;
          *(a2 + 152) = v53;
          sub_22B3BB2B8(&v81);

          v54 = v82;
          v55 = v83;
          *(a2 + 160) = v81;
          *(a2 + 176) = v54;
          *(a2 + 184) = v55;
          return;
        }
      }

      else
      {
        v43 = 0;
        v67 = 0;
        v68 = 0;
        v44 = -1;
        if (v80)
        {
          goto LABEL_15;
        }
      }

      v51 = 0;
      v53 = 0;
      v47 = 0;
      v49 = 0;
      v45 = -1;
      goto LABEL_18;
    }
  }

  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v64 = sub_22B3F6464();
  __swift_project_value_buffer(v64, qword_28140D680);
  v57 = sub_22B3F6444();
  v58 = sub_22B3F68C4();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = "Categorization version not found";
LABEL_43:
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_22B3A7000, v57, v58, v59, v65, 2u);
    MEMORY[0x231890C40](v65, -1, -1);
  }

LABEL_44:

  sub_22B3B30D4();
  swift_allocError();
  *v66 = 1;
  swift_willThrow();

  sub_22B3F6AC4();
  MEMORY[0x23188FF80](0xD000000000000028, 0x800000022B3FBFB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A8, &qword_22B3F7A70);
  sub_22B3F6B04();
  sub_22B3F6B14();
  __break(1u);
}

uint64_t sub_22B3E72A0(char *a1, uint64_t *a2, void *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a4;
  type metadata accessor for TrialLoader(0);
  LOBYTE(v36) = v11;
  static TrialLoader.getModelFactors(forLanguageModel:)(&v36, v38);
  v33 = v38[2];
  v34 = v38[3];

  v12 = sub_22B3F6564();

  v13 = sub_22B3F6564();
  v14 = [a3 levelForFactor:v12 withNamespaceName:v13];

  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = [v14 directoryValue];

  if (!v15)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = [v15 path];

  if (!v16)
  {
    goto LABEL_10;
  }

  v32 = a2;
  v31 = a6;
  sub_22B3F6594();

  v36 = 47;
  v37 = 0xE100000000000000;

  sub_22B3F6754();
  sub_22B3F6664();
  v36 = v33;
  v37 = v34;
  sub_22B3F6754();
  sub_22B3F6664();
  v36 = 0x616B6361706C6D2ELL;
  v37 = 0xEA00000000006567;
  sub_22B3F6754();
  sub_22B3F6664();
  v17 = v38[6];
  v18 = v38[7];

  v19 = sub_22B3F6564();

  v20 = sub_22B3F6564();
  v21 = [a3 levelForFactor:v19 withNamespaceName:v20];

  if (!v21)
  {
    goto LABEL_10;
  }

  v22 = [v21 directoryValue];

  if (!v22)
  {
    goto LABEL_9;
  }

  v23 = [v22 path];

  if (v23)
  {

    sub_22B3F6594();

    v36 = 47;
    v37 = 0xE100000000000000;
    sub_22B3F6754();
    sub_22B3F6664();
    v36 = v17;
    v37 = v18;
    sub_22B3F6754();
    sub_22B3F6664();
    v36 = 0x616B6361706C6D2ELL;
    v37 = 0xEA00000000006567;
    sub_22B3F6754();
    sub_22B3F6664();
    v24 = type metadata accessor for BlackPearlModel(0);
    v25 = v24[7];
    v26 = sub_22B3F6184();
    v27 = *(*(v26 - 8) + 56);
    v27(&a1[v25], 1, 1, v26);
    v30 = v24[8];
    *a1 = v33;
    *(a1 + 1) = v34;
    *(a1 + 2) = a5;
    *(a1 + 3) = v31;

    sub_22B3F60D4();

    sub_22B3B4B3C(&a1[v25], &qword_27D8BE0A0, &qword_22B3F7FD0);
    v27(&a1[v25], 1, 1, v26);
    *&a1[v30] = 0;
    a1[v24[9]] = 0;
    v28 = v24[7];
    v27(v32 + v28, 1, 1, v26);
    v35 = v24[8];
    *v32 = v17;
    v32[1] = v18;
    v32[2] = a5;
    v32[3] = v31;

    sub_22B3F60D4();
    sub_22B3B30A4(v38);

    sub_22B3B4B3C(v32 + v28, &qword_27D8BE0A0, &qword_22B3F7FD0);
    result = (v27)(v32 + v28, 1, 1, v26);
    *(v32 + v35) = 0;
    *(v32 + v24[9]) = 0;
    return result;
  }

LABEL_10:
  result = sub_22B3F6B14();
  __break(1u);
  return result;
}

void static BlackPearlTrialLevels.buildThresholds(trialClient:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22B3F6564();
  v5 = sub_22B3F6564();
  v6 = [a1 levelForFactor:v4 withNamespaceName:v5];

  if (!v6)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v62 = sub_22B3F6464();
    __swift_project_value_buffer(v62, qword_28140D680);
    v63 = sub_22B3F6444();
    v64 = sub_22B3F68C4();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "Threshold Commerce not found";
    goto LABEL_57;
  }

  [v6 doubleValue];
  v8 = v7;

  v9 = sub_22B3F6564();
  v10 = sub_22B3F6564();
  v11 = [a1 levelForFactor:v9 withNamespaceName:v10];

  if (!v11)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v66 = sub_22B3F6464();
    __swift_project_value_buffer(v66, qword_28140D680);
    v63 = sub_22B3F6444();
    v64 = sub_22B3F68C4();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "ThresholdEmployeeNews value not found";
    goto LABEL_57;
  }

  [v11 doubleValue];
  v13 = v12;

  v14 = sub_22B3F6564();
  v15 = sub_22B3F6564();
  v16 = [a1 levelForFactor:v14 withNamespaceName:v15];

  if (!v16)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v67 = sub_22B3F6464();
    __swift_project_value_buffer(v67, qword_28140D680);
    v63 = sub_22B3F6444();
    v64 = sub_22B3F68C4();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "ThresholdEmployee value not found";
    goto LABEL_57;
  }

  [v16 doubleValue];
  v18 = v17;

  v19 = sub_22B3F6564();
  v20 = sub_22B3F6564();
  v21 = [a1 levelForFactor:v19 withNamespaceName:v20];

  if (!v21)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v68 = sub_22B3F6464();
    __swift_project_value_buffer(v68, qword_28140D680);
    v63 = sub_22B3F6444();
    v64 = sub_22B3F68C4();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "ThresholdPersonal value not found";
    goto LABEL_57;
  }

  [v21 doubleValue];
  v23 = v22;

  v24 = sub_22B3F6564();
  v25 = sub_22B3F6564();
  v26 = [a1 levelForFactor:v24 withNamespaceName:v25];

  if (!v26)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v69 = sub_22B3F6464();
    __swift_project_value_buffer(v69, qword_28140D680);
    v63 = sub_22B3F6444();
    v64 = sub_22B3F68C4();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "ThresholdP2C values ";
    goto LABEL_57;
  }

  [v26 doubleValue];
  v28 = v27;

  v29 = sub_22B3F6564();
  v30 = sub_22B3F6564();
  v31 = [a1 levelForFactor:v29 withNamespaceName:v30];

  if (!v31)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v70 = sub_22B3F6464();
    __swift_project_value_buffer(v70, qword_28140D680);
    v63 = sub_22B3F6444();
    v64 = sub_22B3F68C4();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "ThresholdCorpEmployee not found";
    goto LABEL_57;
  }

  [v31 doubleValue];
  v33 = v32;

  v34 = sub_22B3F6564();
  v35 = sub_22B3F6564();
  v36 = [a1 levelForFactor:v34 withNamespaceName:v35];

  if (!v36)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v71 = sub_22B3F6464();
    __swift_project_value_buffer(v71, qword_28140D680);
    v63 = sub_22B3F6444();
    v64 = sub_22B3F68C4();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "Threshold Sender is not found";
    goto LABEL_57;
  }

  v78 = v33;
  v37 = v28;
  v38 = v23;
  v39 = v18;
  v40 = v13;
  [v36 doubleValue];
  v42 = v41;

  v43 = sub_22B3F6564();
  v44 = sub_22B3F6564();
  v45 = [a1 levelForFactor:v43 withNamespaceName:v44];

  if (!v45)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v72 = sub_22B3F6464();
    __swift_project_value_buffer(v72, qword_28140D680);
    v63 = sub_22B3F6444();
    v64 = sub_22B3F68C4();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "Threshold TS is not found";
    goto LABEL_57;
  }

  v46 = v8;
  [v45 doubleValue];
  v48 = v47;

  v49 = sub_22B3F6564();
  v50 = sub_22B3F6564();
  v51 = [a1 levelForFactor:v49 withNamespaceName:v50];

  if (!v51)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v73 = sub_22B3F6464();
    __swift_project_value_buffer(v73, qword_28140D680);
    v63 = sub_22B3F6444();
    v64 = sub_22B3F68C4();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "Threshold Category TS is not found";
    goto LABEL_57;
  }

  [v51 doubleValue];
  v53 = v52;

  v54 = sub_22B3F6564();
  v55 = sub_22B3F6564();
  v56 = [a1 levelForFactor:v54 withNamespaceName:v55];

  if (!v56)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v74 = sub_22B3F6464();
    __swift_project_value_buffer(v74, qword_28140D680);
    v63 = sub_22B3F6444();
    v64 = sub_22B3F68C4();
    if (!os_log_type_enabled(v63, v64))
    {
      goto LABEL_58;
    }

    v65 = "Sender Max Tokens is not found";
    goto LABEL_57;
  }

  v57 = [v56 longValue];

  v58 = sub_22B3F6564();
  v59 = sub_22B3F6564();
  v60 = [a1 levelForFactor:v58 withNamespaceName:v59];

  if (v60)
  {
    v61 = [v60 longValue];

    *a2 = v46;
    a2[1] = v40;
    a2[2] = v39;
    a2[3] = v38;
    a2[4] = v37;
    a2[5] = v42;
    a2[6] = v48;
    a2[7] = v53;
    a2[8] = v78;
    a2[9] = v57;
    a2[10] = v61;
    return;
  }

  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v75 = sub_22B3F6464();
  __swift_project_value_buffer(v75, qword_28140D680);
  v63 = sub_22B3F6444();
  v64 = sub_22B3F68C4();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = "Subject Max Tokens is not found";
LABEL_57:
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_22B3A7000, v63, v64, v65, v76, 2u);
    MEMORY[0x231890C40](v76, -1, -1);
  }

LABEL_58:

  sub_22B3B30D4();
  swift_allocError();
  *v77 = 1;
  swift_willThrow();
  sub_22B3F6AC4();
  MEMORY[0x23188FF80](0xD000000000000026, 0x800000022B3FBFE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A8, &qword_22B3F7A70);
  sub_22B3F6B04();
  sub_22B3F6B14();
  __break(1u);
}

uint64_t static BlackPearlTrialLevels.buildBloomFilters(trialClient:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22B3F6184();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v45 - v7;
  v8 = sub_22B3F6564();
  v9 = sub_22B3F6564();
  v10 = [a1 levelForFactor:v8 withNamespaceName:v9];

  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = [v10 fileValue];

  if (!v11)
  {
    __break(1u);
    goto LABEL_12;
  }

  v12 = [v11 path];

  if (!v12)
  {
LABEL_14:
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v27 = sub_22B3F6464();
    __swift_project_value_buffer(v27, qword_28140D680);
    v28 = sub_22B3F6444();
    v29 = sub_22B3F68C4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22B3A7000, v28, v29, "Commerce Bloom filter file is missing", v30, 2u);
      MEMORY[0x231890C40](v30, -1, -1);
    }

    sub_22B3B30D4();
    v31 = swift_allocError();
    *v32 = 1;
    swift_willThrow();
    goto LABEL_30;
  }

  sub_22B3F6594();

  sub_22B3F60D4();
  v13 = sub_22B3F6564();
  v14 = sub_22B3F6564();
  v15 = [a1 levelForFactor:v13 withNamespaceName:v14];

  if (!v15)
  {
LABEL_19:

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v33 = sub_22B3F6464();
    __swift_project_value_buffer(v33, qword_28140D680);
    v34 = sub_22B3F6444();
    v35 = sub_22B3F68C4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_22B3A7000, v34, v35, "Guaranteed list file is missing", v36, 2u);
      MEMORY[0x231890C40](v36, -1, -1);
    }

    sub_22B3B30D4();
    v31 = swift_allocError();
    *v37 = 1;
    swift_willThrow();
    (*(v45 + 8))(v48, v46);
    goto LABEL_30;
  }

  v16 = [v15 fileValue];

  if (!v16)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = [v16 path];

  if (!v17)
  {
    goto LABEL_19;
  }

  sub_22B3F6594();

  sub_22B3F60D4();
  v18 = sub_22B3F6564();
  v19 = sub_22B3F6564();
  v20 = [a1 levelForFactor:v18 withNamespaceName:v19];

  if (v20)
  {
    v21 = [v20 fileValue];

    if (v21)
    {

      v22 = [v21 path];

      if (v22)
      {
        sub_22B3F6594();

        v23 = type metadata accessor for BloomFilterData(0);
        sub_22B3F60D4();

        v24 = v46;
        v25 = *(v45 + 32);
        v25(a2, v48, v46);
        return (v25)(a2 + *(v23 + 20), v47, v24);
      }

      goto LABEL_25;
    }

    goto LABEL_13;
  }

LABEL_25:
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v38 = sub_22B3F6464();
  __swift_project_value_buffer(v38, qword_28140D680);
  v39 = sub_22B3F6444();
  v40 = sub_22B3F68C4();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_22B3A7000, v39, v40, "NER bloom filer file path not found", v41, 2u);
    MEMORY[0x231890C40](v41, -1, -1);
  }

  sub_22B3B30D4();
  v31 = swift_allocError();
  *v42 = 1;
  swift_willThrow();
  v43 = v46;
  v44 = *(v45 + 8);
  v44(v47, v46);
  v44(v48, v43);
LABEL_30:
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_22B3F6AC4();
  MEMORY[0x23188FF80](0xD00000000000002DLL, 0x800000022B3FC010);
  v49 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A8, &qword_22B3F7A70);
  sub_22B3F6B04();
  result = sub_22B3F6B14();
  __break(1u);
  return result;
}

void __swiftcall BlackPearlTrialLevels.getThresholds()(MCCKitCategorization::BlackPearlThreshold *__return_ptr retstr)
{
  v3 = v1 + *(type metadata accessor for BlackPearlTrialLevels(0) + 20);
  v4 = v3 + *(type metadata accessor for BlackPearlLevels(0) + 48);
  v5 = *(v4 + 48);
  *&retstr->thresholdP2C = *(v4 + 32);
  *&retstr->thresholdTS = v5;
  *&retstr->thresholdCorpEmployee = *(v4 + 64);
  retstr->tsSubjectMaxTokens = *(v4 + 80);
  v6 = *(v4 + 16);
  *&retstr->thresholdCommerce = *v4;
  *&retstr->thresholdEmployee = v6;
}

unint64_t sub_22B3E8C4C()
{
  result = qword_27D8BE478;
  if (!qword_27D8BE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE478);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NLPLevel(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NLPLevel(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22B3E8E18(uint64_t a1)
{
  result = type metadata accessor for BlackPearlSharedDefaults();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BlackPearlLevels(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22B3E8E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE480, qword_22B3F9EB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_22B3E8F0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE2E8, &qword_22B3F8B58);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22B3F9890;
  v1 = *MEMORY[0x277CD8708];
  v2 = *MEMORY[0x277CD8718];
  *(v0 + 32) = *MEMORY[0x277CD8708];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CD8810];
  v4 = *MEMORY[0x277CD87D8];
  *(v0 + 48) = *MEMORY[0x277CD8810];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277CD8768];
  v6 = *MEMORY[0x277CD8728];
  *(v0 + 64) = *MEMORY[0x277CD8768];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277CD87F8];
  v33 = *MEMORY[0x277CD8840];
  v8 = *MEMORY[0x277CD8840];
  *(v0 + 80) = *MEMORY[0x277CD87F8];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x277CD8790];
  v10 = *MEMORY[0x277CD8770];
  *(v0 + 96) = *MEMORY[0x277CD8790];
  *(v0 + 104) = v10;
  v11 = *MEMORY[0x277CD8868];
  v35 = *MEMORY[0x277CD8848];
  v12 = *MEMORY[0x277CD8848];
  *(v0 + 112) = *MEMORY[0x277CD8868];
  *(v0 + 120) = v12;
  v32 = *MEMORY[0x277CD8700];
  v36 = *MEMORY[0x277CD8818];
  v13 = *MEMORY[0x277CD8818];
  *(v0 + 128) = *MEMORY[0x277CD8700];
  *(v0 + 136) = v13;
  v14 = *MEMORY[0x277CD87C0];
  v34 = *MEMORY[0x277CD86F8];
  v15 = *MEMORY[0x277CD86F8];
  *(v0 + 144) = *MEMORY[0x277CD87C0];
  *(v0 + 152) = v15;
  qword_27D8C1150 = v0;
  v16 = v1;
  v17 = v2;
  v18 = v3;
  v19 = v4;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v33;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = v35;
  v28 = v32;
  v29 = v36;
  v30 = v14;

  return v34;
}

uint64_t static LocaleHelper.isCategorizationSupported(forLocale:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = sub_22B3F62E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_22B3F6254();
  v7 = sub_22B3E9278(v6);
  v8 = qword_27D8BDFE0;
  v9 = v7;
  v10 = v9;
  if (v8 != -1)
  {
    v9 = swift_once();
  }

  v15 = v10;
  MEMORY[0x28223BE20](v9);
  *(&v14 - 2) = &v15;
  v12 = sub_22B3C46E8(sub_22B3C48DC, (&v14 - 4), v11);
  (*(v4 + 8))(v6, v3);

  return v12 & 1;
}

uint64_t sub_22B3E9278(uint64_t a1)
{
  v1073 = sub_22B3F6294();
  v1070 = *(v1073 - 8);
  MEMORY[0x28223BE20](v1073);
  v1068 = &v1026 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1063 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE488, &qword_22B3F9F00);
  MEMORY[0x28223BE20](v1063);
  v1071 = &v1026 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE490, &qword_22B3F9F08);
  MEMORY[0x28223BE20](v4 - 8);
  v1067 = &v1026 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v1065 = &v1026 - v7;
  MEMORY[0x28223BE20](v8);
  v1066 = &v1026 - v9;
  v10 = sub_22B3F6274();
  v1208 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v1203 = &v1026 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE498, &qword_22B3F9F10);
  MEMORY[0x28223BE20](v1210);
  v1101 = &v1026 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v1100 = &v1026 - v14;
  MEMORY[0x28223BE20](v15);
  v1099 = &v1026 - v16;
  MEMORY[0x28223BE20](v17);
  v1096 = &v1026 - v18;
  MEMORY[0x28223BE20](v19);
  v1093 = &v1026 - v20;
  MEMORY[0x28223BE20](v21);
  v1090 = &v1026 - v22;
  MEMORY[0x28223BE20](v23);
  v1087 = &v1026 - v24;
  MEMORY[0x28223BE20](v25);
  v1084 = &v1026 - v26;
  MEMORY[0x28223BE20](v27);
  v1081 = &v1026 - v28;
  MEMORY[0x28223BE20](v29);
  v1078 = &v1026 - v30;
  MEMORY[0x28223BE20](v31);
  v1075 = &v1026 - v32;
  MEMORY[0x28223BE20](v33);
  v1069 = &v1026 - v34;
  MEMORY[0x28223BE20](v35);
  v1060 = &v1026 - v36;
  MEMORY[0x28223BE20](v37);
  v1057 = &v1026 - v38;
  MEMORY[0x28223BE20](v39);
  v1054 = &v1026 - v40;
  MEMORY[0x28223BE20](v41);
  v1052 = &v1026 - v42;
  MEMORY[0x28223BE20](v43);
  v1049 = &v1026 - v44;
  MEMORY[0x28223BE20](v45);
  v1046 = &v1026 - v46;
  MEMORY[0x28223BE20](v47);
  v1044 = &v1026 - v48;
  MEMORY[0x28223BE20](v49);
  v1041 = &v1026 - v50;
  MEMORY[0x28223BE20](v51);
  v1106 = &v1026 - v52;
  MEMORY[0x28223BE20](v53);
  v1105 = &v1026 - v54;
  MEMORY[0x28223BE20](v55);
  v1111 = &v1026 - v56;
  MEMORY[0x28223BE20](v57);
  v1113 = &v1026 - v58;
  MEMORY[0x28223BE20](v59);
  v1116 = &v1026 - v60;
  MEMORY[0x28223BE20](v61);
  v1119 = &v1026 - v62;
  MEMORY[0x28223BE20](v63);
  v1122 = &v1026 - v64;
  MEMORY[0x28223BE20](v65);
  v1125 = &v1026 - v66;
  MEMORY[0x28223BE20](v67);
  v1128 = &v1026 - v68;
  MEMORY[0x28223BE20](v69);
  v1131 = &v1026 - v70;
  MEMORY[0x28223BE20](v71);
  v1134 = &v1026 - v72;
  MEMORY[0x28223BE20](v73);
  v1137 = &v1026 - v74;
  MEMORY[0x28223BE20](v75);
  v1140 = &v1026 - v76;
  MEMORY[0x28223BE20](v77);
  v1144 = &v1026 - v78;
  MEMORY[0x28223BE20](v79);
  v1148 = &v1026 - v80;
  MEMORY[0x28223BE20](v81);
  v1150 = &v1026 - v82;
  MEMORY[0x28223BE20](v83);
  v1147 = &v1026 - v84;
  MEMORY[0x28223BE20](v85);
  v1152 = &v1026 - v86;
  MEMORY[0x28223BE20](v87);
  v1155 = &v1026 - v88;
  MEMORY[0x28223BE20](v89);
  v1158 = &v1026 - v90;
  MEMORY[0x28223BE20](v91);
  v1161 = &v1026 - v92;
  MEMORY[0x28223BE20](v93);
  v1164 = &v1026 - v94;
  MEMORY[0x28223BE20](v95);
  v1167 = &v1026 - v96;
  MEMORY[0x28223BE20](v97);
  v1170 = &v1026 - v98;
  MEMORY[0x28223BE20](v99);
  v1173 = &v1026 - v100;
  MEMORY[0x28223BE20](v101);
  v1176 = &v1026 - v102;
  MEMORY[0x28223BE20](v103);
  v1179 = &v1026 - v104;
  MEMORY[0x28223BE20](v105);
  v1182 = &v1026 - v106;
  MEMORY[0x28223BE20](v107);
  v1185 = &v1026 - v108;
  MEMORY[0x28223BE20](v109);
  v1188 = &v1026 - v110;
  MEMORY[0x28223BE20](v111);
  v1191 = &v1026 - v112;
  MEMORY[0x28223BE20](v113);
  v1196 = &v1026 - v114;
  MEMORY[0x28223BE20](v115);
  v1201 = &v1026 - v116;
  MEMORY[0x28223BE20](v117);
  v1202 = &v1026 - v118;
  MEMORY[0x28223BE20](v119);
  v1204 = &v1026 - v120;
  MEMORY[0x28223BE20](v121);
  v123 = &v1026 - v122;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE4A0, &qword_22B3F9F18);
  MEMORY[0x28223BE20](v124 - 8);
  v1098 = &v1026 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v126);
  v1097 = &v1026 - v127;
  MEMORY[0x28223BE20](v128);
  v1095 = &v1026 - v129;
  MEMORY[0x28223BE20](v130);
  v1094 = &v1026 - v131;
  MEMORY[0x28223BE20](v132);
  v1092 = &v1026 - v133;
  MEMORY[0x28223BE20](v134);
  v1091 = &v1026 - v135;
  MEMORY[0x28223BE20](v136);
  v1089 = &v1026 - v137;
  MEMORY[0x28223BE20](v138);
  v1088 = &v1026 - v139;
  MEMORY[0x28223BE20](v140);
  v1086 = &v1026 - v141;
  MEMORY[0x28223BE20](v142);
  v1085 = &v1026 - v143;
  MEMORY[0x28223BE20](v144);
  v1083 = &v1026 - v145;
  MEMORY[0x28223BE20](v146);
  v1082 = &v1026 - v147;
  MEMORY[0x28223BE20](v148);
  v1080 = &v1026 - v149;
  MEMORY[0x28223BE20](v150);
  v1079 = &v1026 - v151;
  MEMORY[0x28223BE20](v152);
  v1077 = &v1026 - v153;
  MEMORY[0x28223BE20](v154);
  v1076 = &v1026 - v155;
  MEMORY[0x28223BE20](v156);
  v1074 = &v1026 - v157;
  MEMORY[0x28223BE20](v158);
  v1072 = &v1026 - v159;
  MEMORY[0x28223BE20](v160);
  v1062 = &v1026 - v161;
  MEMORY[0x28223BE20](v162);
  v1061 = &v1026 - v163;
  MEMORY[0x28223BE20](v164);
  v1059 = &v1026 - v165;
  MEMORY[0x28223BE20](v166);
  v1058 = &v1026 - v167;
  MEMORY[0x28223BE20](v168);
  v1056 = &v1026 - v169;
  MEMORY[0x28223BE20](v170);
  v1055 = &v1026 - v171;
  MEMORY[0x28223BE20](v172);
  v1053 = &v1026 - v173;
  MEMORY[0x28223BE20](v174);
  v1051 = &v1026 - v175;
  MEMORY[0x28223BE20](v176);
  v1050 = &v1026 - v177;
  MEMORY[0x28223BE20](v178);
  v1048 = &v1026 - v179;
  MEMORY[0x28223BE20](v180);
  v1047 = &v1026 - v181;
  MEMORY[0x28223BE20](v182);
  v1045 = &v1026 - v183;
  MEMORY[0x28223BE20](v184);
  v1043 = &v1026 - v185;
  MEMORY[0x28223BE20](v186);
  v1042 = &v1026 - v187;
  MEMORY[0x28223BE20](v188);
  v1038 = &v1026 - v189;
  MEMORY[0x28223BE20](v190);
  v1036 = &v1026 - v191;
  MEMORY[0x28223BE20](v192);
  v1034 = &v1026 - v193;
  MEMORY[0x28223BE20](v194);
  v1033 = &v1026 - v195;
  MEMORY[0x28223BE20](v196);
  v1032 = &v1026 - v197;
  MEMORY[0x28223BE20](v198);
  v1031 = &v1026 - v199;
  MEMORY[0x28223BE20](v200);
  v1030 = &v1026 - v201;
  MEMORY[0x28223BE20](v202);
  v1029 = &v1026 - v203;
  MEMORY[0x28223BE20](v204);
  v1028 = &v1026 - v205;
  MEMORY[0x28223BE20](v206);
  v1104 = &v1026 - v207;
  MEMORY[0x28223BE20](v208);
  v1027 = &v1026 - v209;
  MEMORY[0x28223BE20](v210);
  v1103 = &v1026 - v211;
  MEMORY[0x28223BE20](v212);
  v1102 = &v1026 - v213;
  MEMORY[0x28223BE20](v214);
  v1108 = &v1026 - v215;
  MEMORY[0x28223BE20](v216);
  v1107 = &v1026 - v217;
  MEMORY[0x28223BE20](v218);
  v1110 = &v1026 - v219;
  MEMORY[0x28223BE20](v220);
  v1109 = &v1026 - v221;
  MEMORY[0x28223BE20](v222);
  v1114 = &v1026 - v223;
  MEMORY[0x28223BE20](v224);
  v1112 = &v1026 - v225;
  MEMORY[0x28223BE20](v226);
  v1117 = &v1026 - v227;
  MEMORY[0x28223BE20](v228);
  v1115 = &v1026 - v229;
  MEMORY[0x28223BE20](v230);
  v1120 = &v1026 - v231;
  MEMORY[0x28223BE20](v232);
  v1118 = &v1026 - v233;
  MEMORY[0x28223BE20](v234);
  v1123 = &v1026 - v235;
  MEMORY[0x28223BE20](v236);
  v1121 = &v1026 - v237;
  MEMORY[0x28223BE20](v238);
  v1126 = &v1026 - v239;
  MEMORY[0x28223BE20](v240);
  v1124 = &v1026 - v241;
  MEMORY[0x28223BE20](v242);
  v1129 = &v1026 - v243;
  MEMORY[0x28223BE20](v244);
  v1127 = &v1026 - v245;
  MEMORY[0x28223BE20](v246);
  v1132 = &v1026 - v247;
  MEMORY[0x28223BE20](v248);
  v1130 = &v1026 - v249;
  MEMORY[0x28223BE20](v250);
  v1135 = &v1026 - v251;
  MEMORY[0x28223BE20](v252);
  v1133 = &v1026 - v253;
  MEMORY[0x28223BE20](v254);
  v1138 = &v1026 - v255;
  MEMORY[0x28223BE20](v256);
  v1136 = &v1026 - v257;
  MEMORY[0x28223BE20](v258);
  v1141 = &v1026 - v259;
  MEMORY[0x28223BE20](v260);
  v1139 = &v1026 - v261;
  MEMORY[0x28223BE20](v262);
  v1145 = &v1026 - v263;
  MEMORY[0x28223BE20](v264);
  v1143 = &v1026 - v265;
  MEMORY[0x28223BE20](v266);
  v1149 = &v1026 - v267;
  MEMORY[0x28223BE20](v268);
  v1142 = &v1026 - v269;
  MEMORY[0x28223BE20](v270);
  v1153 = &v1026 - v271;
  MEMORY[0x28223BE20](v272);
  v1146 = &v1026 - v273;
  MEMORY[0x28223BE20](v274);
  v1156 = &v1026 - v275;
  MEMORY[0x28223BE20](v276);
  v1151 = &v1026 - v277;
  MEMORY[0x28223BE20](v278);
  v1160 = &v1026 - v279;
  MEMORY[0x28223BE20](v280);
  v1154 = &v1026 - v281;
  MEMORY[0x28223BE20](v282);
  v1163 = &v1026 - v283;
  MEMORY[0x28223BE20](v284);
  v1157 = &v1026 - v285;
  MEMORY[0x28223BE20](v286);
  v1166 = &v1026 - v287;
  MEMORY[0x28223BE20](v288);
  v1159 = &v1026 - v289;
  MEMORY[0x28223BE20](v290);
  v1169 = &v1026 - v291;
  MEMORY[0x28223BE20](v292);
  v1162 = &v1026 - v293;
  MEMORY[0x28223BE20](v294);
  v1172 = &v1026 - v295;
  MEMORY[0x28223BE20](v296);
  v1165 = &v1026 - v297;
  MEMORY[0x28223BE20](v298);
  v1175 = &v1026 - v299;
  MEMORY[0x28223BE20](v300);
  v1168 = &v1026 - v301;
  MEMORY[0x28223BE20](v302);
  v1178 = &v1026 - v303;
  MEMORY[0x28223BE20](v304);
  v1171 = &v1026 - v305;
  MEMORY[0x28223BE20](v306);
  v1181 = &v1026 - v307;
  MEMORY[0x28223BE20](v308);
  v1174 = &v1026 - v309;
  MEMORY[0x28223BE20](v310);
  v1184 = &v1026 - v311;
  MEMORY[0x28223BE20](v312);
  v1177 = &v1026 - v313;
  MEMORY[0x28223BE20](v314);
  v1187 = &v1026 - v315;
  MEMORY[0x28223BE20](v316);
  v1180 = &v1026 - v317;
  MEMORY[0x28223BE20](v318);
  v1190 = &v1026 - v319;
  MEMORY[0x28223BE20](v320);
  v1183 = &v1026 - v321;
  MEMORY[0x28223BE20](v322);
  v1193 = &v1026 - v323;
  MEMORY[0x28223BE20](v324);
  v1186 = &v1026 - v325;
  MEMORY[0x28223BE20](v326);
  v1195 = &v1026 - v327;
  MEMORY[0x28223BE20](v328);
  v1189 = &v1026 - v329;
  MEMORY[0x28223BE20](v330);
  v1194 = &v1026 - v331;
  MEMORY[0x28223BE20](v332);
  v1192 = &v1026 - v333;
  MEMORY[0x28223BE20](v334);
  v1198 = &v1026 - v335;
  MEMORY[0x28223BE20](v336);
  v1197 = &v1026 - v337;
  MEMORY[0x28223BE20](v338);
  v1200 = &v1026 - v339;
  MEMORY[0x28223BE20](v340);
  v1199 = &v1026 - v341;
  MEMORY[0x28223BE20](v342);
  v344 = &v1026 - v343;
  MEMORY[0x28223BE20](v345);
  v347 = &v1026 - v346;
  MEMORY[0x28223BE20](v348);
  v350 = &v1026 - v349;
  MEMORY[0x28223BE20](v351);
  v353 = &v1026 - v352;
  v354 = sub_22B3F62C4();
  v355 = *(v354 - 8);
  MEMORY[0x28223BE20](v354);
  v1037 = &v1026 - ((v356 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v357);
  v359 = &v1026 - v358;
  v1064 = a1;
  sub_22B3F62D4();
  sub_22B3F62A4();
  v360 = *(v355 + 8);
  v361 = v359;
  v362 = v123;
  v1040 = v354;
  v363 = v354;
  v364 = v1208;
  v1039 = v355 + 8;
  v1035 = v360;
  v360(v361, v363);
  sub_22B3F6264();
  v1206 = *(v364 + 56);
  v1207 = v364 + 56;
  v1206(v350, 0, 1, v10);
  v365 = *(v1210 + 48);
  sub_22B3B4B9C(v350, v123, &qword_27D8BE4A0, &qword_22B3F9F18);
  v1209 = v353;
  sub_22B3B4B9C(v353, &v123[v365], &qword_27D8BE4A0, &qword_22B3F9F18);
  v366 = *(v364 + 48);
  v367 = v366(v362, 1, v10);
  v1205 = v366;
  if (v367 != 1)
  {
    sub_22B3B4B9C(v362, v347, &qword_27D8BE4A0, &qword_22B3F9F18);
    if (v366(v362 + v365, 1, v10) != 1)
    {
      v380 = v1208;
      v381 = v1203;
      (*(v1208 + 32))(v1203, v362 + v365, v10);
      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
      v382 = sub_22B3F6554();
      v383 = *(v380 + 8);
      v383(v381, v10);
      sub_22B3B4B3C(v350, &qword_27D8BE4A0, &qword_22B3F9F18);
      v383(v347, v10);
      v366 = v1205;
      sub_22B3B4B3C(v362, &qword_27D8BE4A0, &qword_22B3F9F18);
      if (v382)
      {
        goto LABEL_17;
      }

LABEL_7:
      sub_22B3F6264();
      v1206(v344, 0, 1, v10);
      v368 = *(v1210 + 48);
      v369 = v1204;
      sub_22B3B4B9C(v344, v1204, &qword_27D8BE4A0, &qword_22B3F9F18);
      v370 = v369;
      sub_22B3B4B9C(v1209, v369 + v368, &qword_27D8BE4A0, &qword_22B3F9F18);
      if (v366(v369, 1, v10) == 1)
      {
        sub_22B3B4B3C(v344, &qword_27D8BE4A0, &qword_22B3F9F18);
        v371 = v366(v369 + v368, 1, v10);
        v372 = v1202;
        if (v371 == 1)
        {
          sub_22B3B4B3C(v370, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_25:
          sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
          v384 = MEMORY[0x277CD86B8];
          return *v384;
        }
      }

      else
      {
        v373 = v369;
        v374 = v1199;
        sub_22B3B4B9C(v373, v1199, &qword_27D8BE4A0, &qword_22B3F9F18);
        if (v366(v370 + v368, 1, v10) != 1)
        {
          v389 = v1208;
          v390 = v1203;
          (*(v1208 + 32))(v1203, v370 + v368, v10);
          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
          v391 = sub_22B3F6554();
          v392 = *(v389 + 8);
          v392(v390, v10);
          sub_22B3B4B3C(v344, &qword_27D8BE4A0, &qword_22B3F9F18);
          v392(v374, v10);
          sub_22B3B4B3C(v1204, &qword_27D8BE4A0, &qword_22B3F9F18);
          v372 = v1202;
          if (v391)
          {
            goto LABEL_25;
          }

LABEL_13:
          v375 = v1200;
          sub_22B3F6264();
          v1206(v375, 0, 1, v10);
          v376 = *(v1210 + 48);
          sub_22B3B4B9C(v375, v372, &qword_27D8BE4A0, &qword_22B3F9F18);
          sub_22B3B4B9C(v1209, v372 + v376, &qword_27D8BE4A0, &qword_22B3F9F18);
          v377 = v1205;
          if (v1205(v372, 1, v10) == 1)
          {
            sub_22B3B4B3C(v375, &qword_27D8BE4A0, &qword_22B3F9F18);
            v378 = v377(v372 + v376, 1, v10);
            v379 = v1201;
            if (v378 == 1)
            {
              sub_22B3B4B3C(v372, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_33:
              sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
              v384 = MEMORY[0x277CD86C0];
              return *v384;
            }
          }

          else
          {
            v385 = v1197;
            sub_22B3B4B9C(v372, v1197, &qword_27D8BE4A0, &qword_22B3F9F18);
            if (v377(v372 + v376, 1, v10) != 1)
            {
              v400 = v1208;
              v401 = v372 + v376;
              v402 = v1203;
              (*(v1208 + 32))(v1203, v401, v10);
              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
              v403 = sub_22B3F6554();
              v404 = *(v400 + 8);
              v404(v402, v10);
              sub_22B3B4B3C(v375, &qword_27D8BE4A0, &qword_22B3F9F18);
              v404(v385, v10);
              sub_22B3B4B3C(v372, &qword_27D8BE4A0, &qword_22B3F9F18);
              v379 = v1201;
              if (v403)
              {
                goto LABEL_33;
              }

LABEL_21:
              v386 = v1198;
              sub_22B3F6264();
              v1206(v386, 0, 1, v10);
              v387 = *(v1210 + 48);
              sub_22B3B4B9C(v386, v379, &qword_27D8BE4A0, &qword_22B3F9F18);
              sub_22B3B4B9C(v1209, v379 + v387, &qword_27D8BE4A0, &qword_22B3F9F18);
              v388 = v1205;
              if (v1205(v379, 1, v10) == 1)
              {
                sub_22B3B4B3C(v386, &qword_27D8BE4A0, &qword_22B3F9F18);
                if (v388(v379 + v387, 1, v10) == 1)
                {
                  sub_22B3B4B3C(v379, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_41:
                  sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                  v384 = MEMORY[0x277CD86C8];
                  return *v384;
                }
              }

              else
              {
                v393 = v1192;
                sub_22B3B4B9C(v379, v1192, &qword_27D8BE4A0, &qword_22B3F9F18);
                if (v388(v379 + v387, 1, v10) != 1)
                {
                  v411 = v1208;
                  v412 = v379 + v387;
                  v413 = v1203;
                  (*(v1208 + 32))(v1203, v412, v10);
                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                  v414 = sub_22B3F6554();
                  v415 = *(v411 + 8);
                  v415(v413, v10);
                  sub_22B3B4B3C(v386, &qword_27D8BE4A0, &qword_22B3F9F18);
                  v415(v393, v10);
                  sub_22B3B4B3C(v379, &qword_27D8BE4A0, &qword_22B3F9F18);
                  if (v414)
                  {
                    goto LABEL_41;
                  }

LABEL_29:
                  v394 = v1194;
                  sub_22B3F6264();
                  v1206(v394, 0, 1, v10);
                  v395 = *(v1210 + 48);
                  v396 = v1196;
                  sub_22B3B4B9C(v394, v1196, &qword_27D8BE4A0, &qword_22B3F9F18);
                  sub_22B3B4B9C(v1209, v396 + v395, &qword_27D8BE4A0, &qword_22B3F9F18);
                  v397 = v1205;
                  if (v1205(v396, 1, v10) == 1)
                  {
                    sub_22B3B4B3C(v394, &qword_27D8BE4A0, &qword_22B3F9F18);
                    v398 = v397(v396 + v395, 1, v10);
                    v399 = v1195;
                    if (v398 == 1)
                    {
                      sub_22B3B4B3C(v396, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_49:
                      sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                      v384 = MEMORY[0x277CD86D0];
                      return *v384;
                    }
                  }

                  else
                  {
                    v405 = v1189;
                    sub_22B3B4B9C(v396, v1189, &qword_27D8BE4A0, &qword_22B3F9F18);
                    if (v397(v396 + v395, 1, v10) != 1)
                    {
                      v422 = v1208;
                      v423 = v396 + v395;
                      v424 = v1203;
                      (*(v1208 + 32))(v1203, v423, v10);
                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                      v425 = sub_22B3F6554();
                      v426 = *(v422 + 8);
                      v426(v424, v10);
                      sub_22B3B4B3C(v394, &qword_27D8BE4A0, &qword_22B3F9F18);
                      v426(v405, v10);
                      sub_22B3B4B3C(v396, &qword_27D8BE4A0, &qword_22B3F9F18);
                      v399 = v1195;
                      if (v425)
                      {
                        goto LABEL_49;
                      }

LABEL_37:
                      sub_22B3F6264();
                      v1206(v399, 0, 1, v10);
                      v406 = *(v1210 + 48);
                      v407 = v1191;
                      sub_22B3B4B9C(v399, v1191, &qword_27D8BE4A0, &qword_22B3F9F18);
                      sub_22B3B4B9C(v1209, v407 + v406, &qword_27D8BE4A0, &qword_22B3F9F18);
                      v408 = v1205;
                      if (v1205(v407, 1, v10) == 1)
                      {
                        sub_22B3B4B3C(v399, &qword_27D8BE4A0, &qword_22B3F9F18);
                        v409 = v408(v407 + v406, 1, v10);
                        v410 = v1193;
                        if (v409 == 1)
                        {
                          sub_22B3B4B3C(v407, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_57:
                          sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                          v384 = MEMORY[0x277CD86D8];
                          return *v384;
                        }
                      }

                      else
                      {
                        v416 = v1186;
                        sub_22B3B4B9C(v407, v1186, &qword_27D8BE4A0, &qword_22B3F9F18);
                        if (v408(v407 + v406, 1, v10) != 1)
                        {
                          v433 = v1208;
                          v434 = v407 + v406;
                          v435 = v1203;
                          (*(v1208 + 32))(v1203, v434, v10);
                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                          v436 = sub_22B3F6554();
                          v437 = *(v433 + 8);
                          v437(v435, v10);
                          sub_22B3B4B3C(v399, &qword_27D8BE4A0, &qword_22B3F9F18);
                          v437(v416, v10);
                          sub_22B3B4B3C(v1191, &qword_27D8BE4A0, &qword_22B3F9F18);
                          v410 = v1193;
                          if (v436)
                          {
                            goto LABEL_57;
                          }

LABEL_45:
                          sub_22B3F6264();
                          v1206(v410, 0, 1, v10);
                          v417 = *(v1210 + 48);
                          v418 = v1188;
                          sub_22B3B4B9C(v410, v1188, &qword_27D8BE4A0, &qword_22B3F9F18);
                          sub_22B3B4B9C(v1209, v418 + v417, &qword_27D8BE4A0, &qword_22B3F9F18);
                          v419 = v1205;
                          if (v1205(v418, 1, v10) == 1)
                          {
                            sub_22B3B4B3C(v410, &qword_27D8BE4A0, &qword_22B3F9F18);
                            v420 = v419(v418 + v417, 1, v10);
                            v421 = v1190;
                            if (v420 == 1)
                            {
                              sub_22B3B4B3C(v418, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_65:
                              sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                              v384 = MEMORY[0x277CD86E0];
                              return *v384;
                            }
                          }

                          else
                          {
                            v427 = v1183;
                            sub_22B3B4B9C(v418, v1183, &qword_27D8BE4A0, &qword_22B3F9F18);
                            if (v419(v418 + v417, 1, v10) != 1)
                            {
                              v444 = v1208;
                              v445 = v418 + v417;
                              v446 = v1203;
                              (*(v1208 + 32))(v1203, v445, v10);
                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                              v447 = sub_22B3F6554();
                              v448 = *(v444 + 8);
                              v448(v446, v10);
                              sub_22B3B4B3C(v1193, &qword_27D8BE4A0, &qword_22B3F9F18);
                              v448(v427, v10);
                              sub_22B3B4B3C(v418, &qword_27D8BE4A0, &qword_22B3F9F18);
                              v421 = v1190;
                              if (v447)
                              {
                                goto LABEL_65;
                              }

LABEL_53:
                              sub_22B3F6264();
                              v1206(v421, 0, 1, v10);
                              v428 = *(v1210 + 48);
                              v429 = v1185;
                              sub_22B3B4B9C(v421, v1185, &qword_27D8BE4A0, &qword_22B3F9F18);
                              sub_22B3B4B9C(v1209, v429 + v428, &qword_27D8BE4A0, &qword_22B3F9F18);
                              v430 = v1205;
                              if (v1205(v429, 1, v10) == 1)
                              {
                                sub_22B3B4B3C(v421, &qword_27D8BE4A0, &qword_22B3F9F18);
                                v431 = v430(v429 + v428, 1, v10);
                                v432 = v1187;
                                if (v431 == 1)
                                {
                                  sub_22B3B4B3C(v429, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_73:
                                  sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                  v384 = MEMORY[0x277CD86E8];
                                  return *v384;
                                }
                              }

                              else
                              {
                                v438 = v1180;
                                sub_22B3B4B9C(v429, v1180, &qword_27D8BE4A0, &qword_22B3F9F18);
                                if (v430(v429 + v428, 1, v10) != 1)
                                {
                                  v455 = v1208;
                                  v456 = v429 + v428;
                                  v457 = v1203;
                                  (*(v1208 + 32))(v1203, v456, v10);
                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                  v458 = sub_22B3F6554();
                                  v459 = *(v455 + 8);
                                  v459(v457, v10);
                                  sub_22B3B4B3C(v1190, &qword_27D8BE4A0, &qword_22B3F9F18);
                                  v459(v438, v10);
                                  sub_22B3B4B3C(v429, &qword_27D8BE4A0, &qword_22B3F9F18);
                                  v432 = v1187;
                                  if (v458)
                                  {
                                    goto LABEL_73;
                                  }

LABEL_61:
                                  sub_22B3F6264();
                                  v1206(v432, 0, 1, v10);
                                  v439 = *(v1210 + 48);
                                  v440 = v1182;
                                  sub_22B3B4B9C(v432, v1182, &qword_27D8BE4A0, &qword_22B3F9F18);
                                  sub_22B3B4B9C(v1209, v440 + v439, &qword_27D8BE4A0, &qword_22B3F9F18);
                                  v441 = v1205;
                                  if (v1205(v440, 1, v10) == 1)
                                  {
                                    sub_22B3B4B3C(v432, &qword_27D8BE4A0, &qword_22B3F9F18);
                                    v442 = v441(v440 + v439, 1, v10);
                                    v443 = v1184;
                                    if (v442 == 1)
                                    {
                                      sub_22B3B4B3C(v440, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_81:
                                      sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                      v384 = MEMORY[0x277CD86F0];
                                      return *v384;
                                    }
                                  }

                                  else
                                  {
                                    v449 = v1177;
                                    sub_22B3B4B9C(v440, v1177, &qword_27D8BE4A0, &qword_22B3F9F18);
                                    if (v441(v440 + v439, 1, v10) != 1)
                                    {
                                      v466 = v1208;
                                      v467 = v440 + v439;
                                      v468 = v1203;
                                      (*(v1208 + 32))(v1203, v467, v10);
                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                      v469 = sub_22B3F6554();
                                      v470 = *(v466 + 8);
                                      v470(v468, v10);
                                      sub_22B3B4B3C(v1187, &qword_27D8BE4A0, &qword_22B3F9F18);
                                      v470(v449, v10);
                                      sub_22B3B4B3C(v440, &qword_27D8BE4A0, &qword_22B3F9F18);
                                      v443 = v1184;
                                      if (v469)
                                      {
                                        goto LABEL_81;
                                      }

LABEL_69:
                                      sub_22B3F6264();
                                      v1206(v443, 0, 1, v10);
                                      v450 = *(v1210 + 48);
                                      v451 = v1179;
                                      sub_22B3B4B9C(v443, v1179, &qword_27D8BE4A0, &qword_22B3F9F18);
                                      sub_22B3B4B9C(v1209, v451 + v450, &qword_27D8BE4A0, &qword_22B3F9F18);
                                      v452 = v1205;
                                      if (v1205(v451, 1, v10) == 1)
                                      {
                                        sub_22B3B4B3C(v443, &qword_27D8BE4A0, &qword_22B3F9F18);
                                        v453 = v452(v451 + v450, 1, v10);
                                        v454 = v1181;
                                        if (v453 == 1)
                                        {
                                          sub_22B3B4B3C(v451, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_89:
                                          sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                          v384 = MEMORY[0x277CD86F8];
                                          return *v384;
                                        }
                                      }

                                      else
                                      {
                                        v460 = v1174;
                                        sub_22B3B4B9C(v451, v1174, &qword_27D8BE4A0, &qword_22B3F9F18);
                                        if (v452(v451 + v450, 1, v10) != 1)
                                        {
                                          v477 = v1208;
                                          v478 = v451 + v450;
                                          v479 = v1203;
                                          (*(v1208 + 32))(v1203, v478, v10);
                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                          v480 = sub_22B3F6554();
                                          v481 = *(v477 + 8);
                                          v481(v479, v10);
                                          sub_22B3B4B3C(v1184, &qword_27D8BE4A0, &qword_22B3F9F18);
                                          v481(v460, v10);
                                          sub_22B3B4B3C(v451, &qword_27D8BE4A0, &qword_22B3F9F18);
                                          v454 = v1181;
                                          if (v480)
                                          {
                                            goto LABEL_89;
                                          }

LABEL_77:
                                          sub_22B3F6264();
                                          v1206(v454, 0, 1, v10);
                                          v461 = *(v1210 + 48);
                                          v462 = v1176;
                                          sub_22B3B4B9C(v454, v1176, &qword_27D8BE4A0, &qword_22B3F9F18);
                                          sub_22B3B4B9C(v1209, v462 + v461, &qword_27D8BE4A0, &qword_22B3F9F18);
                                          v463 = v1205;
                                          if (v1205(v462, 1, v10) == 1)
                                          {
                                            sub_22B3B4B3C(v454, &qword_27D8BE4A0, &qword_22B3F9F18);
                                            v464 = v463(v462 + v461, 1, v10);
                                            v465 = v1178;
                                            if (v464 == 1)
                                            {
                                              sub_22B3B4B3C(v462, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_97:
                                              sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                              v384 = MEMORY[0x277CD8700];
                                              return *v384;
                                            }
                                          }

                                          else
                                          {
                                            v471 = v1171;
                                            sub_22B3B4B9C(v462, v1171, &qword_27D8BE4A0, &qword_22B3F9F18);
                                            if (v463(v462 + v461, 1, v10) != 1)
                                            {
                                              v488 = v1208;
                                              v489 = v462 + v461;
                                              v490 = v1203;
                                              (*(v1208 + 32))(v1203, v489, v10);
                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                              v491 = sub_22B3F6554();
                                              v492 = *(v488 + 8);
                                              v492(v490, v10);
                                              sub_22B3B4B3C(v1181, &qword_27D8BE4A0, &qword_22B3F9F18);
                                              v492(v471, v10);
                                              sub_22B3B4B3C(v462, &qword_27D8BE4A0, &qword_22B3F9F18);
                                              v465 = v1178;
                                              if (v491)
                                              {
                                                goto LABEL_97;
                                              }

LABEL_85:
                                              sub_22B3F6264();
                                              v1206(v465, 0, 1, v10);
                                              v472 = *(v1210 + 48);
                                              v473 = v1173;
                                              sub_22B3B4B9C(v465, v1173, &qword_27D8BE4A0, &qword_22B3F9F18);
                                              sub_22B3B4B9C(v1209, v473 + v472, &qword_27D8BE4A0, &qword_22B3F9F18);
                                              v474 = v1205;
                                              if (v1205(v473, 1, v10) == 1)
                                              {
                                                sub_22B3B4B3C(v465, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                v475 = v474(v473 + v472, 1, v10);
                                                v476 = v1175;
                                                if (v475 == 1)
                                                {
                                                  sub_22B3B4B3C(v473, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_105:
                                                  sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                  v384 = MEMORY[0x277CD8708];
                                                  return *v384;
                                                }
                                              }

                                              else
                                              {
                                                v482 = v1168;
                                                sub_22B3B4B9C(v473, v1168, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                if (v474(v473 + v472, 1, v10) != 1)
                                                {
                                                  v499 = v1208;
                                                  v500 = v473 + v472;
                                                  v501 = v1203;
                                                  (*(v1208 + 32))(v1203, v500, v10);
                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                  v502 = sub_22B3F6554();
                                                  v503 = *(v499 + 8);
                                                  v503(v501, v10);
                                                  sub_22B3B4B3C(v1178, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                  v503(v482, v10);
                                                  sub_22B3B4B3C(v473, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                  v476 = v1175;
                                                  if (v502)
                                                  {
                                                    goto LABEL_105;
                                                  }

LABEL_93:
                                                  sub_22B3F6264();
                                                  v1206(v476, 0, 1, v10);
                                                  v483 = *(v1210 + 48);
                                                  v484 = v1170;
                                                  sub_22B3B4B9C(v476, v1170, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                  sub_22B3B4B9C(v1209, v484 + v483, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                  v485 = v1205;
                                                  if (v1205(v484, 1, v10) == 1)
                                                  {
                                                    sub_22B3B4B3C(v476, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                    v486 = v485(v484 + v483, 1, v10);
                                                    v487 = v1172;
                                                    if (v486 == 1)
                                                    {
                                                      sub_22B3B4B3C(v484, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_113:
                                                      sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                      v384 = MEMORY[0x277CD8710];
                                                      return *v384;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v493 = v1165;
                                                    sub_22B3B4B9C(v484, v1165, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                    if (v485(v484 + v483, 1, v10) != 1)
                                                    {
                                                      v510 = v1208;
                                                      v511 = v484 + v483;
                                                      v512 = v1203;
                                                      (*(v1208 + 32))(v1203, v511, v10);
                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                      v513 = sub_22B3F6554();
                                                      v514 = *(v510 + 8);
                                                      v514(v512, v10);
                                                      sub_22B3B4B3C(v1175, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                      v514(v493, v10);
                                                      sub_22B3B4B3C(v484, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                      v487 = v1172;
                                                      if (v513)
                                                      {
                                                        goto LABEL_113;
                                                      }

LABEL_101:
                                                      sub_22B3F6264();
                                                      v1206(v487, 0, 1, v10);
                                                      v494 = *(v1210 + 48);
                                                      v495 = v1167;
                                                      sub_22B3B4B9C(v487, v1167, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                      sub_22B3B4B9C(v1209, v495 + v494, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                      v496 = v1205;
                                                      if (v1205(v495, 1, v10) == 1)
                                                      {
                                                        sub_22B3B4B3C(v487, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                        v497 = v496(v495 + v494, 1, v10);
                                                        v498 = v1169;
                                                        if (v497 == 1)
                                                        {
                                                          sub_22B3B4B3C(v495, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_121:
                                                          sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                          v384 = MEMORY[0x277CD8718];
                                                          return *v384;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v504 = v1162;
                                                        sub_22B3B4B9C(v495, v1162, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                        if (v496(v495 + v494, 1, v10) != 1)
                                                        {
                                                          v521 = v1208;
                                                          v522 = v495 + v494;
                                                          v523 = v1203;
                                                          (*(v1208 + 32))(v1203, v522, v10);
                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                          v524 = sub_22B3F6554();
                                                          v525 = *(v521 + 8);
                                                          v525(v523, v10);
                                                          sub_22B3B4B3C(v1172, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                          v525(v504, v10);
                                                          sub_22B3B4B3C(v495, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                          v498 = v1169;
                                                          if (v524)
                                                          {
                                                            goto LABEL_121;
                                                          }

LABEL_109:
                                                          sub_22B3F6264();
                                                          v1206(v498, 0, 1, v10);
                                                          v505 = *(v1210 + 48);
                                                          v506 = v1164;
                                                          sub_22B3B4B9C(v498, v1164, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                          sub_22B3B4B9C(v1209, v506 + v505, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                          v507 = v1205;
                                                          if (v1205(v506, 1, v10) == 1)
                                                          {
                                                            sub_22B3B4B3C(v498, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                            v508 = v507(v506 + v505, 1, v10);
                                                            v509 = v1166;
                                                            if (v508 == 1)
                                                            {
                                                              sub_22B3B4B3C(v506, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_129:
                                                              sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                              v384 = MEMORY[0x277CD8720];
                                                              return *v384;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v515 = v1159;
                                                            sub_22B3B4B9C(v506, v1159, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                            if (v507(v506 + v505, 1, v10) != 1)
                                                            {
                                                              v532 = v1208;
                                                              v533 = v506 + v505;
                                                              v534 = v1203;
                                                              (*(v1208 + 32))(v1203, v533, v10);
                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                              v535 = sub_22B3F6554();
                                                              v536 = *(v532 + 8);
                                                              v536(v534, v10);
                                                              sub_22B3B4B3C(v1169, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                              v536(v515, v10);
                                                              sub_22B3B4B3C(v506, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                              v509 = v1166;
                                                              if (v535)
                                                              {
                                                                goto LABEL_129;
                                                              }

LABEL_117:
                                                              sub_22B3F6264();
                                                              v1206(v509, 0, 1, v10);
                                                              v516 = *(v1210 + 48);
                                                              v517 = v1161;
                                                              sub_22B3B4B9C(v509, v1161, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                              sub_22B3B4B9C(v1209, v517 + v516, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                              v518 = v1205;
                                                              if (v1205(v517, 1, v10) == 1)
                                                              {
                                                                sub_22B3B4B3C(v509, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                v519 = v518(v517 + v516, 1, v10);
                                                                v520 = v1163;
                                                                if (v519 == 1)
                                                                {
                                                                  sub_22B3B4B3C(v517, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_137:
                                                                  sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                  v384 = MEMORY[0x277CD8728];
                                                                  return *v384;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v526 = v1157;
                                                                sub_22B3B4B9C(v517, v1157, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                if (v518(v517 + v516, 1, v10) != 1)
                                                                {
                                                                  v541 = v1208;
                                                                  v542 = v517 + v516;
                                                                  v543 = v1203;
                                                                  (*(v1208 + 32))(v1203, v542, v10);
                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                  v544 = sub_22B3F6554();
                                                                  v545 = *(v541 + 8);
                                                                  v545(v543, v10);
                                                                  sub_22B3B4B3C(v1166, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                  v545(v526, v10);
                                                                  sub_22B3B4B3C(v517, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                  v520 = v1163;
                                                                  if (v544)
                                                                  {
                                                                    goto LABEL_137;
                                                                  }

LABEL_125:
                                                                  sub_22B3F6264();
                                                                  v1206(v520, 0, 1, v10);
                                                                  v527 = *(v1210 + 48);
                                                                  v528 = v1158;
                                                                  sub_22B3B4B9C(v520, v1158, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                  sub_22B3B4B9C(v1209, v528 + v527, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                  v529 = v1205;
                                                                  if (v1205(v528, 1, v10) == 1)
                                                                  {
                                                                    sub_22B3B4B3C(v520, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                    v530 = v529(v528 + v527, 1, v10);
                                                                    v531 = v1160;
                                                                    if (v530 == 1)
                                                                    {
                                                                      sub_22B3B4B3C(v528, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_145:
                                                                      sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                      v384 = MEMORY[0x277CD8730];
                                                                      return *v384;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v537 = v1154;
                                                                    sub_22B3B4B9C(v528, v1154, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                    if (v529(v528 + v527, 1, v10) != 1)
                                                                    {
                                                                      v551 = v1208;
                                                                      v552 = v528 + v527;
                                                                      v553 = v1203;
                                                                      (*(v1208 + 32))(v1203, v552, v10);
                                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                      v554 = sub_22B3F6554();
                                                                      v555 = *(v551 + 8);
                                                                      v555(v553, v10);
                                                                      sub_22B3B4B3C(v1163, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                      v555(v537, v10);
                                                                      sub_22B3B4B3C(v528, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                      v531 = v1160;
                                                                      if (v554)
                                                                      {
                                                                        goto LABEL_145;
                                                                      }

LABEL_133:
                                                                      sub_22B3F6264();
                                                                      v1206(v531, 0, 1, v10);
                                                                      v538 = *(v1210 + 48);
                                                                      v539 = v1155;
                                                                      sub_22B3B4B9C(v531, v1155, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                      sub_22B3B4B9C(v1209, v539 + v538, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                      v540 = v1205;
                                                                      if (v1205(v539, 1, v10) == 1)
                                                                      {
                                                                        sub_22B3B4B3C(v531, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                        if (v540(v539 + v538, 1, v10) == 1)
                                                                        {
                                                                          sub_22B3B4B3C(v539, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_153:
                                                                          sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                          v384 = MEMORY[0x277CD8738];
                                                                          return *v384;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v546 = v1151;
                                                                        sub_22B3B4B9C(v539, v1151, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                        if (v540(v539 + v538, 1, v10) != 1)
                                                                        {
                                                                          v563 = v1208;
                                                                          v564 = v539 + v538;
                                                                          v565 = v1203;
                                                                          (*(v1208 + 32))(v1203, v564, v10);
                                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                          v566 = sub_22B3F6554();
                                                                          v567 = *(v563 + 8);
                                                                          v567(v565, v10);
                                                                          sub_22B3B4B3C(v1160, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                          v567(v546, v10);
                                                                          sub_22B3B4B3C(v539, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                          if (v566)
                                                                          {
                                                                            goto LABEL_153;
                                                                          }

LABEL_141:
                                                                          v547 = v1156;
                                                                          sub_22B3F6264();
                                                                          v1206(v547, 0, 1, v10);
                                                                          v548 = *(v1210 + 48);
                                                                          v549 = v1152;
                                                                          sub_22B3B4B9C(v547, v1152, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                          sub_22B3B4B9C(v1209, v549 + v548, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                          v550 = v1205;
                                                                          if (v1205(v549, 1, v10) == 1)
                                                                          {
                                                                            sub_22B3B4B3C(v1156, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                            if (v550(v549 + v548, 1, v10) == 1)
                                                                            {
                                                                              sub_22B3B4B3C(v549, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_161:
                                                                              sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                              v384 = MEMORY[0x277CD8740];
                                                                              return *v384;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v556 = v1146;
                                                                            sub_22B3B4B9C(v549, v1146, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                            if (v550(v549 + v548, 1, v10) != 1)
                                                                            {
                                                                              v575 = v1208;
                                                                              v576 = v549 + v548;
                                                                              v577 = v1203;
                                                                              (*(v1208 + 32))(v1203, v576, v10);
                                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                              v578 = sub_22B3F6554();
                                                                              v579 = *(v575 + 8);
                                                                              v579(v577, v10);
                                                                              sub_22B3B4B3C(v1156, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                              v579(v556, v10);
                                                                              sub_22B3B4B3C(v549, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                              if (v578)
                                                                              {
                                                                                goto LABEL_161;
                                                                              }

LABEL_149:
                                                                              v557 = v1153;
                                                                              sub_22B3F6264();
                                                                              v1206(v557, 0, 1, v10);
                                                                              v558 = *(v1210 + 48);
                                                                              v559 = v557;
                                                                              v560 = v1147;
                                                                              sub_22B3B4B9C(v559, v1147, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                              sub_22B3B4B9C(v1209, v560 + v558, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                              v561 = v1205;
                                                                              if (v1205(v560, 1, v10) == 1)
                                                                              {
                                                                                sub_22B3B4B3C(v1153, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                v562 = v10;
                                                                                if (v561(v560 + v558, 1, v10) == 1)
                                                                                {
                                                                                  sub_22B3B4B3C(v560, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_169:
                                                                                  sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                  v384 = MEMORY[0x277CD8748];
                                                                                  return *v384;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v568 = v1142;
                                                                                sub_22B3B4B9C(v560, v1142, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                if (v561(v560 + v558, 1, v10) != 1)
                                                                                {
                                                                                  v584 = v1208;
                                                                                  v585 = v560 + v558;
                                                                                  v586 = v1203;
                                                                                  (*(v1208 + 32))(v1203, v585, v10);
                                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                  v587 = sub_22B3F6554();
                                                                                  v588 = *(v584 + 8);
                                                                                  v588(v586, v10);
                                                                                  sub_22B3B4B3C(v1153, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                  v589 = v568;
                                                                                  v562 = v10;
                                                                                  v588(v589, v10);
                                                                                  sub_22B3B4B3C(v560, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                  if (v587)
                                                                                  {
                                                                                    goto LABEL_169;
                                                                                  }

LABEL_157:
                                                                                  v570 = v1149;
                                                                                  sub_22B3F6264();
                                                                                  v1206(v570, 0, 1, v562);
                                                                                  v571 = *(v1210 + 48);
                                                                                  v572 = v570;
                                                                                  v573 = v1150;
                                                                                  sub_22B3B4B9C(v572, v1150, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                  sub_22B3B4B9C(v1209, v573 + v571, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                  v574 = v1205;
                                                                                  if (v1205(v573, 1, v562) == 1)
                                                                                  {
                                                                                    sub_22B3B4B3C(v1149, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                    if (v574(v573 + v571, 1, v562) == 1)
                                                                                    {
                                                                                      sub_22B3B4B3C(v1150, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_177:
                                                                                      sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                      v384 = MEMORY[0x277CD8750];
                                                                                      return *v384;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    sub_22B3B4B9C(v573, v1143, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                    if (v574(v573 + v571, 1, v562) != 1)
                                                                                    {
                                                                                      v595 = v1208;
                                                                                      v596 = v1150;
                                                                                      v597 = v1150 + v571;
                                                                                      v598 = v1203;
                                                                                      (*(v1208 + 32))(v1203, v597, v562);
                                                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                      v599 = v1143;
                                                                                      v600 = sub_22B3F6554();
                                                                                      v601 = *(v595 + 8);
                                                                                      v601(v598, v562);
                                                                                      sub_22B3B4B3C(v1149, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                      v601(v599, v562);
                                                                                      sub_22B3B4B3C(v596, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                      if (v600)
                                                                                      {
                                                                                        goto LABEL_177;
                                                                                      }

LABEL_165:
                                                                                      v580 = v1145;
                                                                                      sub_22B3F6264();
                                                                                      v1206(v580, 0, 1, v562);
                                                                                      v581 = *(v1210 + 48);
                                                                                      v582 = v580;
                                                                                      v583 = v1148;
                                                                                      sub_22B3B4B9C(v582, v1148, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                      sub_22B3B4B9C(v1209, v583 + v581, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                      if (v1205(v583, 1, v562) == 1)
                                                                                      {
                                                                                        sub_22B3B4B3C(v1145, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                        if (v1205(v1148 + v581, 1, v562) == 1)
                                                                                        {
                                                                                          sub_22B3B4B3C(v1148, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_185:
                                                                                          sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                          v384 = MEMORY[0x277CD8758];
                                                                                          return *v384;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v590 = v1148;
                                                                                        sub_22B3B4B9C(v1148, v1139, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                        if (v1205(v590 + v581, 1, v562) != 1)
                                                                                        {
                                                                                          v607 = v1208;
                                                                                          v608 = v1148;
                                                                                          v609 = v1148 + v581;
                                                                                          v610 = v1203;
                                                                                          (*(v1208 + 32))(v1203, v609, v562);
                                                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                          v611 = v1139;
                                                                                          v612 = sub_22B3F6554();
                                                                                          v613 = *(v607 + 8);
                                                                                          v613(v610, v562);
                                                                                          sub_22B3B4B3C(v1145, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                          v613(v611, v562);
                                                                                          sub_22B3B4B3C(v608, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                          if (v612)
                                                                                          {
                                                                                            goto LABEL_185;
                                                                                          }

LABEL_173:
                                                                                          v591 = v1141;
                                                                                          sub_22B3F6264();
                                                                                          v1206(v591, 0, 1, v562);
                                                                                          v592 = *(v1210 + 48);
                                                                                          v593 = v591;
                                                                                          v594 = v1144;
                                                                                          sub_22B3B4B9C(v593, v1144, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                          sub_22B3B4B9C(v1209, v594 + v592, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                          if (v1205(v594, 1, v562) == 1)
                                                                                          {
                                                                                            sub_22B3B4B3C(v1141, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                            if (v1205(v1144 + v592, 1, v562) == 1)
                                                                                            {
                                                                                              sub_22B3B4B3C(v1144, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_193:
                                                                                              sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                              v384 = MEMORY[0x277CD8760];
                                                                                              return *v384;
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v602 = v1144;
                                                                                            sub_22B3B4B9C(v1144, v1136, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                            if (v1205(v602 + v592, 1, v562) != 1)
                                                                                            {
                                                                                              v619 = v1208;
                                                                                              v620 = v1144;
                                                                                              v621 = v1144 + v592;
                                                                                              v622 = v1203;
                                                                                              (*(v1208 + 32))(v1203, v621, v562);
                                                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                              v623 = v1136;
                                                                                              v624 = sub_22B3F6554();
                                                                                              v625 = *(v619 + 8);
                                                                                              v625(v622, v562);
                                                                                              sub_22B3B4B3C(v1141, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                              v625(v623, v562);
                                                                                              sub_22B3B4B3C(v620, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                              if (v624)
                                                                                              {
                                                                                                goto LABEL_193;
                                                                                              }

LABEL_181:
                                                                                              v603 = v1138;
                                                                                              sub_22B3F6264();
                                                                                              v1206(v603, 0, 1, v562);
                                                                                              v604 = *(v1210 + 48);
                                                                                              v605 = v603;
                                                                                              v606 = v1140;
                                                                                              sub_22B3B4B9C(v605, v1140, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                              sub_22B3B4B9C(v1209, v606 + v604, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                              if (v1205(v606, 1, v562) == 1)
                                                                                              {
                                                                                                sub_22B3B4B3C(v1138, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                if (v1205(v1140 + v604, 1, v562) == 1)
                                                                                                {
                                                                                                  sub_22B3B4B3C(v1140, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_201:
                                                                                                  sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                  v384 = MEMORY[0x277CD8768];
                                                                                                  return *v384;
                                                                                                }
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v614 = v1140;
                                                                                                sub_22B3B4B9C(v1140, v1133, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                if (v1205(v614 + v604, 1, v562) != 1)
                                                                                                {
                                                                                                  v631 = v1208;
                                                                                                  v632 = v1140;
                                                                                                  v633 = v1140 + v604;
                                                                                                  v634 = v1203;
                                                                                                  (*(v1208 + 32))(v1203, v633, v562);
                                                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                  v635 = v1133;
                                                                                                  v636 = sub_22B3F6554();
                                                                                                  v637 = *(v631 + 8);
                                                                                                  v637(v634, v562);
                                                                                                  sub_22B3B4B3C(v1138, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                  v637(v635, v562);
                                                                                                  sub_22B3B4B3C(v632, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                  if (v636)
                                                                                                  {
                                                                                                    goto LABEL_201;
                                                                                                  }

LABEL_189:
                                                                                                  v615 = v1135;
                                                                                                  sub_22B3F6264();
                                                                                                  v1206(v615, 0, 1, v562);
                                                                                                  v616 = *(v1210 + 48);
                                                                                                  v617 = v615;
                                                                                                  v618 = v1137;
                                                                                                  sub_22B3B4B9C(v617, v1137, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                  sub_22B3B4B9C(v1209, v618 + v616, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                  if (v1205(v618, 1, v562) == 1)
                                                                                                  {
                                                                                                    sub_22B3B4B3C(v1135, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                    if (v1205(v1137 + v616, 1, v562) == 1)
                                                                                                    {
                                                                                                      sub_22B3B4B3C(v1137, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_209:
                                                                                                      sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                      v384 = MEMORY[0x277CD8770];
                                                                                                      return *v384;
                                                                                                    }
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v626 = v1137;
                                                                                                    sub_22B3B4B9C(v1137, v1130, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                    if (v1205(v626 + v616, 1, v562) != 1)
                                                                                                    {
                                                                                                      v643 = v1208;
                                                                                                      v644 = v1137;
                                                                                                      v645 = v1137 + v616;
                                                                                                      v646 = v1203;
                                                                                                      (*(v1208 + 32))(v1203, v645, v562);
                                                                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                      v647 = v1130;
                                                                                                      v648 = sub_22B3F6554();
                                                                                                      v649 = *(v643 + 8);
                                                                                                      v649(v646, v562);
                                                                                                      sub_22B3B4B3C(v1135, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                      v649(v647, v562);
                                                                                                      sub_22B3B4B3C(v644, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                      if (v648)
                                                                                                      {
                                                                                                        goto LABEL_209;
                                                                                                      }

LABEL_197:
                                                                                                      v627 = v1132;
                                                                                                      sub_22B3F6264();
                                                                                                      v1206(v627, 0, 1, v562);
                                                                                                      v628 = *(v1210 + 48);
                                                                                                      v629 = v627;
                                                                                                      v630 = v1134;
                                                                                                      sub_22B3B4B9C(v629, v1134, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                      sub_22B3B4B9C(v1209, v630 + v628, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                      if (v1205(v630, 1, v562) == 1)
                                                                                                      {
                                                                                                        sub_22B3B4B3C(v1132, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                        if (v1205(v1134 + v628, 1, v562) == 1)
                                                                                                        {
                                                                                                          sub_22B3B4B3C(v1134, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_217:
                                                                                                          sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                          v384 = MEMORY[0x277CD8778];
                                                                                                          return *v384;
                                                                                                        }
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v638 = v1134;
                                                                                                        sub_22B3B4B9C(v1134, v1127, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                        if (v1205(v638 + v628, 1, v562) != 1)
                                                                                                        {
                                                                                                          v655 = v1208;
                                                                                                          v656 = v1134;
                                                                                                          v657 = v1134 + v628;
                                                                                                          v658 = v1203;
                                                                                                          (*(v1208 + 32))(v1203, v657, v562);
                                                                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                          v659 = v1127;
                                                                                                          v660 = sub_22B3F6554();
                                                                                                          v661 = *(v655 + 8);
                                                                                                          v661(v658, v562);
                                                                                                          sub_22B3B4B3C(v1132, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                          v661(v659, v562);
                                                                                                          sub_22B3B4B3C(v656, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                          if (v660)
                                                                                                          {
                                                                                                            goto LABEL_217;
                                                                                                          }

LABEL_205:
                                                                                                          v639 = v1129;
                                                                                                          sub_22B3F6264();
                                                                                                          v1206(v639, 0, 1, v562);
                                                                                                          v640 = *(v1210 + 48);
                                                                                                          v641 = v639;
                                                                                                          v642 = v1131;
                                                                                                          sub_22B3B4B9C(v641, v1131, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                          sub_22B3B4B9C(v1209, v642 + v640, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                          if (v1205(v642, 1, v562) == 1)
                                                                                                          {
                                                                                                            sub_22B3B4B3C(v1129, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                            if (v1205(v1131 + v640, 1, v562) == 1)
                                                                                                            {
                                                                                                              sub_22B3B4B3C(v1131, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_225:
                                                                                                              sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                              v384 = MEMORY[0x277CD8788];
                                                                                                              return *v384;
                                                                                                            }
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v650 = v1131;
                                                                                                            sub_22B3B4B9C(v1131, v1124, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                            if (v1205(v650 + v640, 1, v562) != 1)
                                                                                                            {
                                                                                                              v667 = v1208;
                                                                                                              v668 = v1131;
                                                                                                              v669 = v1131 + v640;
                                                                                                              v670 = v1203;
                                                                                                              (*(v1208 + 32))(v1203, v669, v562);
                                                                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                              v671 = v1124;
                                                                                                              v672 = sub_22B3F6554();
                                                                                                              v673 = *(v667 + 8);
                                                                                                              v673(v670, v562);
                                                                                                              sub_22B3B4B3C(v1129, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                              v673(v671, v562);
                                                                                                              sub_22B3B4B3C(v668, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                              if (v672)
                                                                                                              {
                                                                                                                goto LABEL_225;
                                                                                                              }

LABEL_213:
                                                                                                              v651 = v1126;
                                                                                                              sub_22B3F6264();
                                                                                                              v1206(v651, 0, 1, v562);
                                                                                                              v652 = *(v1210 + 48);
                                                                                                              v653 = v651;
                                                                                                              v654 = v1128;
                                                                                                              sub_22B3B4B9C(v653, v1128, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                              sub_22B3B4B9C(v1209, v654 + v652, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                              if (v1205(v654, 1, v562) == 1)
                                                                                                              {
                                                                                                                sub_22B3B4B3C(v1126, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                if (v1205(v1128 + v652, 1, v562) == 1)
                                                                                                                {
                                                                                                                  sub_22B3B4B3C(v1128, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_233:
                                                                                                                  sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                  v384 = MEMORY[0x277CD8790];
                                                                                                                  return *v384;
                                                                                                                }
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v662 = v1128;
                                                                                                                sub_22B3B4B9C(v1128, v1121, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                if (v1205(v662 + v652, 1, v562) != 1)
                                                                                                                {
                                                                                                                  v679 = v1208;
                                                                                                                  v680 = v1128;
                                                                                                                  v681 = v1128 + v652;
                                                                                                                  v682 = v1203;
                                                                                                                  (*(v1208 + 32))(v1203, v681, v562);
                                                                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                  v683 = v1121;
                                                                                                                  v684 = sub_22B3F6554();
                                                                                                                  v685 = *(v679 + 8);
                                                                                                                  v685(v682, v562);
                                                                                                                  sub_22B3B4B3C(v1126, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                  v685(v683, v562);
                                                                                                                  sub_22B3B4B3C(v680, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                  if (v684)
                                                                                                                  {
                                                                                                                    goto LABEL_233;
                                                                                                                  }

LABEL_221:
                                                                                                                  v663 = v1123;
                                                                                                                  sub_22B3F6264();
                                                                                                                  v1206(v663, 0, 1, v562);
                                                                                                                  v664 = *(v1210 + 48);
                                                                                                                  v665 = v663;
                                                                                                                  v666 = v1125;
                                                                                                                  sub_22B3B4B9C(v665, v1125, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                  sub_22B3B4B9C(v1209, v666 + v664, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                  if (v1205(v666, 1, v562) == 1)
                                                                                                                  {
                                                                                                                    sub_22B3B4B3C(v1123, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                    if (v1205(v1125 + v664, 1, v562) == 1)
                                                                                                                    {
                                                                                                                      sub_22B3B4B3C(v1125, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_241:
                                                                                                                      sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                      v384 = MEMORY[0x277CD8798];
                                                                                                                      return *v384;
                                                                                                                    }
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v674 = v1125;
                                                                                                                    sub_22B3B4B9C(v1125, v1118, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                    if (v1205(v674 + v664, 1, v562) != 1)
                                                                                                                    {
                                                                                                                      v691 = v1208;
                                                                                                                      v692 = v1125;
                                                                                                                      v693 = v1125 + v664;
                                                                                                                      v694 = v1203;
                                                                                                                      (*(v1208 + 32))(v1203, v693, v562);
                                                                                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                      v695 = v1118;
                                                                                                                      v696 = sub_22B3F6554();
                                                                                                                      v697 = *(v691 + 8);
                                                                                                                      v697(v694, v562);
                                                                                                                      sub_22B3B4B3C(v1123, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                      v697(v695, v562);
                                                                                                                      sub_22B3B4B3C(v692, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                      if (v696)
                                                                                                                      {
                                                                                                                        goto LABEL_241;
                                                                                                                      }

LABEL_229:
                                                                                                                      v675 = v1120;
                                                                                                                      sub_22B3F6264();
                                                                                                                      v1206(v675, 0, 1, v562);
                                                                                                                      v676 = *(v1210 + 48);
                                                                                                                      v677 = v675;
                                                                                                                      v678 = v1122;
                                                                                                                      sub_22B3B4B9C(v677, v1122, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                      sub_22B3B4B9C(v1209, v678 + v676, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                      if (v1205(v678, 1, v562) == 1)
                                                                                                                      {
                                                                                                                        sub_22B3B4B3C(v1120, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                        if (v1205(v1122 + v676, 1, v562) == 1)
                                                                                                                        {
                                                                                                                          sub_22B3B4B3C(v1122, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_249:
                                                                                                                          sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                          v384 = MEMORY[0x277CD87A0];
                                                                                                                          return *v384;
                                                                                                                        }
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        v686 = v1122;
                                                                                                                        sub_22B3B4B9C(v1122, v1115, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                        if (v1205(v686 + v676, 1, v562) != 1)
                                                                                                                        {
                                                                                                                          v703 = v1208;
                                                                                                                          v704 = v1122;
                                                                                                                          v705 = v1122 + v676;
                                                                                                                          v706 = v1203;
                                                                                                                          (*(v1208 + 32))(v1203, v705, v562);
                                                                                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                          v707 = v1115;
                                                                                                                          v708 = sub_22B3F6554();
                                                                                                                          v709 = *(v703 + 8);
                                                                                                                          v709(v706, v562);
                                                                                                                          sub_22B3B4B3C(v1120, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                          v709(v707, v562);
                                                                                                                          sub_22B3B4B3C(v704, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                          if (v708)
                                                                                                                          {
                                                                                                                            goto LABEL_249;
                                                                                                                          }

LABEL_237:
                                                                                                                          v687 = v1117;
                                                                                                                          sub_22B3F6264();
                                                                                                                          v1206(v687, 0, 1, v562);
                                                                                                                          v688 = *(v1210 + 48);
                                                                                                                          v689 = v687;
                                                                                                                          v690 = v1119;
                                                                                                                          sub_22B3B4B9C(v689, v1119, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                          sub_22B3B4B9C(v1209, v690 + v688, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                          if (v1205(v690, 1, v562) == 1)
                                                                                                                          {
                                                                                                                            sub_22B3B4B3C(v1117, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                            if (v1205(v1119 + v688, 1, v562) == 1)
                                                                                                                            {
                                                                                                                              sub_22B3B4B3C(v1119, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_254:
                                                                                                                              sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                              v384 = MEMORY[0x277CD87A8];
                                                                                                                              return *v384;
                                                                                                                            }
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            v698 = v1119;
                                                                                                                            sub_22B3B4B9C(v1119, v1112, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                            if (v1205(v698 + v688, 1, v562) != 1)
                                                                                                                            {
                                                                                                                              v711 = v1208;
                                                                                                                              v712 = v1119;
                                                                                                                              v713 = v1119 + v688;
                                                                                                                              v714 = v1203;
                                                                                                                              (*(v1208 + 32))(v1203, v713, v562);
                                                                                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                              v715 = v1112;
                                                                                                                              v716 = sub_22B3F6554();
                                                                                                                              v717 = *(v711 + 8);
                                                                                                                              v717(v714, v562);
                                                                                                                              sub_22B3B4B3C(v1117, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                              v717(v715, v562);
                                                                                                                              sub_22B3B4B3C(v712, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                              if (v716)
                                                                                                                              {
                                                                                                                                goto LABEL_254;
                                                                                                                              }

LABEL_245:
                                                                                                                              v699 = v1114;
                                                                                                                              sub_22B3F6264();
                                                                                                                              v1206(v699, 0, 1, v562);
                                                                                                                              v700 = *(v1210 + 48);
                                                                                                                              v701 = v699;
                                                                                                                              v702 = v1116;
                                                                                                                              sub_22B3B4B9C(v701, v1116, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                              sub_22B3B4B9C(v1209, v702 + v700, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                              if (v1205(v702, 1, v562) == 1)
                                                                                                                              {
                                                                                                                                sub_22B3B4B3C(v1114, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                if (v1205(v1116 + v700, 1, v562) == 1)
                                                                                                                                {
                                                                                                                                  sub_22B3B4B3C(v1116, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_256:
                                                                                                                                  sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                  v384 = MEMORY[0x277CD87B0];
                                                                                                                                  return *v384;
                                                                                                                                }
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                v710 = v1116;
                                                                                                                                sub_22B3B4B9C(v1116, v1109, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                if (v1205(v710 + v700, 1, v562) != 1)
                                                                                                                                {
                                                                                                                                  v718 = v1208;
                                                                                                                                  v719 = v1116;
                                                                                                                                  v720 = v1116 + v700;
                                                                                                                                  v721 = v1203;
                                                                                                                                  (*(v1208 + 32))(v1203, v720, v562);
                                                                                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                  v722 = v1109;
                                                                                                                                  v723 = sub_22B3F6554();
                                                                                                                                  v724 = *(v718 + 8);
                                                                                                                                  v724(v721, v562);
                                                                                                                                  sub_22B3B4B3C(v1114, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                  v724(v722, v562);
                                                                                                                                  sub_22B3B4B3C(v719, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                  if (v723)
                                                                                                                                  {
                                                                                                                                    goto LABEL_256;
                                                                                                                                  }

LABEL_257:
                                                                                                                                  v725 = v1110;
                                                                                                                                  sub_22B3F6264();
                                                                                                                                  v1206(v725, 0, 1, v562);
                                                                                                                                  v726 = *(v1210 + 48);
                                                                                                                                  v727 = v725;
                                                                                                                                  v728 = v1113;
                                                                                                                                  sub_22B3B4B9C(v727, v1113, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                  sub_22B3B4B9C(v1209, v728 + v726, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                  if (v1205(v728, 1, v562) == 1)
                                                                                                                                  {
                                                                                                                                    sub_22B3B4B3C(v1110, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                    if (v1205(v1113 + v726, 1, v562) == 1)
                                                                                                                                    {
                                                                                                                                      sub_22B3B4B3C(v1113, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_273:
                                                                                                                                      sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                      v384 = MEMORY[0x277CD87B8];
                                                                                                                                      return *v384;
                                                                                                                                    }
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    v729 = v1113;
                                                                                                                                    sub_22B3B4B9C(v1113, v1107, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                    if (v1205(v729 + v726, 1, v562) != 1)
                                                                                                                                    {
                                                                                                                                      v740 = v1208;
                                                                                                                                      v741 = v1113;
                                                                                                                                      v742 = v1113 + v726;
                                                                                                                                      v743 = v1203;
                                                                                                                                      (*(v1208 + 32))(v1203, v742, v562);
                                                                                                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                      v744 = v1107;
                                                                                                                                      v745 = sub_22B3F6554();
                                                                                                                                      v746 = *(v740 + 8);
                                                                                                                                      v746(v743, v562);
                                                                                                                                      sub_22B3B4B3C(v1110, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                      v746(v744, v562);
                                                                                                                                      sub_22B3B4B3C(v741, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                      if (v745)
                                                                                                                                      {
                                                                                                                                        goto LABEL_273;
                                                                                                                                      }

LABEL_263:
                                                                                                                                      v730 = v1108;
                                                                                                                                      sub_22B3F6264();
                                                                                                                                      v1206(v730, 0, 1, v562);
                                                                                                                                      v731 = *(v1210 + 48);
                                                                                                                                      v732 = v730;
                                                                                                                                      v733 = v1111;
                                                                                                                                      sub_22B3B4B9C(v732, v1111, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                      sub_22B3B4B9C(v1209, v733 + v731, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                      if (v1205(v733, 1, v562) == 1)
                                                                                                                                      {
                                                                                                                                        sub_22B3B4B3C(v1108, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                        if (v1205(v1111 + v731, 1, v562) == 1)
                                                                                                                                        {
                                                                                                                                          v734 = &v1143;
LABEL_280:
                                                                                                                                          sub_22B3B4B3C(*(v734 - 32), &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_281:
                                                                                                                                          sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                          v384 = MEMORY[0x277CD87C0];
                                                                                                                                          return *v384;
                                                                                                                                        }
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        v735 = v1111;
                                                                                                                                        sub_22B3B4B9C(v1111, v1102, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                        if (v1205(v735 + v731, 1, v562) != 1)
                                                                                                                                        {
                                                                                                                                          v753 = v1208;
                                                                                                                                          v754 = v1111;
                                                                                                                                          v755 = v1111 + v731;
                                                                                                                                          v756 = v1203;
                                                                                                                                          (*(v1208 + 32))(v1203, v755, v562);
                                                                                                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                          v757 = v1102;
                                                                                                                                          v758 = sub_22B3F6554();
                                                                                                                                          v759 = *(v753 + 8);
                                                                                                                                          v759(v756, v562);
                                                                                                                                          sub_22B3B4B3C(v1108, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                          v759(v757, v562);
                                                                                                                                          sub_22B3B4B3C(v754, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                          if (v758)
                                                                                                                                          {
                                                                                                                                            goto LABEL_281;
                                                                                                                                          }

LABEL_269:
                                                                                                                                          v736 = v1103;
                                                                                                                                          sub_22B3F6264();
                                                                                                                                          v1206(v736, 0, 1, v562);
                                                                                                                                          v737 = *(v1210 + 48);
                                                                                                                                          v738 = v736;
                                                                                                                                          v739 = v1105;
                                                                                                                                          sub_22B3B4B9C(v738, v1105, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                          sub_22B3B4B9C(v1209, v739 + v737, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                          if (v1205(v739, 1, v562) == 1)
                                                                                                                                          {
                                                                                                                                            sub_22B3B4B3C(v1103, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                            if (v1205(v1105 + v737, 1, v562) == 1)
                                                                                                                                            {
                                                                                                                                              v734 = &v1137;
                                                                                                                                              goto LABEL_280;
                                                                                                                                            }
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            v747 = v1105;
                                                                                                                                            sub_22B3B4B9C(v1105, v1027, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                            if (v1205(v747 + v737, 1, v562) != 1)
                                                                                                                                            {
                                                                                                                                              v761 = v1208;
                                                                                                                                              v762 = v1105;
                                                                                                                                              v763 = v1105 + v737;
                                                                                                                                              v764 = v1203;
                                                                                                                                              (*(v1208 + 32))(v1203, v763, v562);
                                                                                                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                              v765 = v1027;
                                                                                                                                              v766 = sub_22B3F6554();
                                                                                                                                              v767 = *(v761 + 8);
                                                                                                                                              v767(v764, v562);
                                                                                                                                              sub_22B3B4B3C(v1103, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                              v767(v765, v562);
                                                                                                                                              sub_22B3B4B3C(v762, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                              if (v766)
                                                                                                                                              {
                                                                                                                                                goto LABEL_281;
                                                                                                                                              }

LABEL_277:
                                                                                                                                              v748 = v1104;
                                                                                                                                              sub_22B3F6264();
                                                                                                                                              v1206(v748, 0, 1, v562);
                                                                                                                                              v749 = *(v1210 + 48);
                                                                                                                                              v750 = v748;
                                                                                                                                              v751 = v1106;
                                                                                                                                              sub_22B3B4B9C(v750, v1106, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                              sub_22B3B4B9C(v1209, v751 + v749, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                              if (v1205(v751, 1, v562) == 1)
                                                                                                                                              {
                                                                                                                                                sub_22B3B4B3C(v1104, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                if (v1205(v1106 + v749, 1, v562) == 1)
                                                                                                                                                {
                                                                                                                                                  v734 = &v1138;
                                                                                                                                                  goto LABEL_280;
                                                                                                                                                }
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                v760 = v1106;
                                                                                                                                                sub_22B3B4B9C(v1106, v1028, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                if (v1205(v760 + v749, 1, v562) != 1)
                                                                                                                                                {
                                                                                                                                                  v768 = v1208;
                                                                                                                                                  v769 = v1106;
                                                                                                                                                  v770 = v1106 + v749;
                                                                                                                                                  v771 = v1203;
                                                                                                                                                  (*(v1208 + 32))(v1203, v770, v562);
                                                                                                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                                  v772 = v1028;
                                                                                                                                                  v773 = sub_22B3F6554();
                                                                                                                                                  v774 = *(v768 + 8);
                                                                                                                                                  v774(v771, v562);
                                                                                                                                                  sub_22B3B4B3C(v1104, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                  v774(v772, v562);
                                                                                                                                                  sub_22B3B4B3C(v769, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                  if (v773)
                                                                                                                                                  {
                                                                                                                                                    goto LABEL_281;
                                                                                                                                                  }

LABEL_291:
                                                                                                                                                  v775 = v1029;
                                                                                                                                                  sub_22B3F6264();
                                                                                                                                                  v1206(v775, 0, 1, v562);
                                                                                                                                                  v776 = *(v1210 + 48);
                                                                                                                                                  v777 = v775;
                                                                                                                                                  v778 = v1041;
                                                                                                                                                  sub_22B3B4B9C(v777, v1041, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                  sub_22B3B4B9C(v1209, v778 + v776, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                  if (v1205(v778, 1, v562) == 1)
                                                                                                                                                  {
                                                                                                                                                    sub_22B3B4B3C(v1029, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                    if (v1205(v1041 + v776, 1, v562) == 1)
                                                                                                                                                    {
                                                                                                                                                      sub_22B3B4B3C(v1041, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_304:
                                                                                                                                                      sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                      v384 = MEMORY[0x277CD87C8];
                                                                                                                                                      return *v384;
                                                                                                                                                    }
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    v779 = v1041;
                                                                                                                                                    sub_22B3B4B9C(v1041, v1030, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                    if (v1205(v779 + v776, 1, v562) != 1)
                                                                                                                                                    {
                                                                                                                                                      v785 = v1208;
                                                                                                                                                      v786 = v1041;
                                                                                                                                                      v787 = v1041 + v776;
                                                                                                                                                      v788 = v1203;
                                                                                                                                                      (*(v1208 + 32))(v1203, v787, v562);
                                                                                                                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                                      v789 = v1030;
                                                                                                                                                      v790 = sub_22B3F6554();
                                                                                                                                                      v791 = *(v785 + 8);
                                                                                                                                                      v791(v788, v562);
                                                                                                                                                      sub_22B3B4B3C(v1029, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                      v791(v789, v562);
                                                                                                                                                      sub_22B3B4B3C(v786, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                      if (v790)
                                                                                                                                                      {
                                                                                                                                                        goto LABEL_304;
                                                                                                                                                      }

LABEL_297:
                                                                                                                                                      v780 = v1031;
                                                                                                                                                      sub_22B3F6264();
                                                                                                                                                      v1206(v780, 0, 1, v562);
                                                                                                                                                      v781 = *(v1210 + 48);
                                                                                                                                                      v782 = v780;
                                                                                                                                                      v783 = v1044;
                                                                                                                                                      sub_22B3B4B9C(v782, v1044, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                      sub_22B3B4B9C(v1209, v783 + v781, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                      if (v1205(v783, 1, v562) == 1)
                                                                                                                                                      {
                                                                                                                                                        sub_22B3B4B3C(v1031, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                        if (v1205(v1044 + v781, 1, v562) == 1)
                                                                                                                                                        {
                                                                                                                                                          sub_22B3B4B3C(v1044, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_306:
                                                                                                                                                          sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                          v384 = MEMORY[0x277CD87D0];
                                                                                                                                                          return *v384;
                                                                                                                                                        }
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        v784 = v1044;
                                                                                                                                                        sub_22B3B4B9C(v1044, v1032, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                        if (v1205(v784 + v781, 1, v562) != 1)
                                                                                                                                                        {
                                                                                                                                                          v792 = v1208;
                                                                                                                                                          v793 = v1044;
                                                                                                                                                          v794 = v1044 + v781;
                                                                                                                                                          v795 = v1203;
                                                                                                                                                          (*(v1208 + 32))(v1203, v794, v562);
                                                                                                                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                                          v796 = v1032;
                                                                                                                                                          v797 = sub_22B3F6554();
                                                                                                                                                          v798 = *(v792 + 8);
                                                                                                                                                          v798(v795, v562);
                                                                                                                                                          sub_22B3B4B3C(v1031, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                          v798(v796, v562);
                                                                                                                                                          sub_22B3B4B3C(v793, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                          if (v797)
                                                                                                                                                          {
                                                                                                                                                            goto LABEL_306;
                                                                                                                                                          }

LABEL_307:
                                                                                                                                                          v799 = v1033;
                                                                                                                                                          sub_22B3F6264();
                                                                                                                                                          v1206(v799, 0, 1, v562);
                                                                                                                                                          v800 = *(v1210 + 48);
                                                                                                                                                          v801 = v799;
                                                                                                                                                          v802 = v1046;
                                                                                                                                                          sub_22B3B4B9C(v801, v1046, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                          sub_22B3B4B9C(v1209, v802 + v800, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                          if (v1205(v802, 1, v562) == 1)
                                                                                                                                                          {
                                                                                                                                                            sub_22B3B4B3C(v1033, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                            if (v1205(v1046 + v800, 1, v562) == 1)
                                                                                                                                                            {
                                                                                                                                                              sub_22B3B4B3C(v1046, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_320:
                                                                                                                                                              sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                              v384 = MEMORY[0x277CD87D8];
                                                                                                                                                              return *v384;
                                                                                                                                                            }
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            v803 = v1046;
                                                                                                                                                            sub_22B3B4B9C(v1046, v1034, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                            if (v1205(v803 + v800, 1, v562) != 1)
                                                                                                                                                            {
                                                                                                                                                              v809 = v1208;
                                                                                                                                                              v810 = v1046;
                                                                                                                                                              v811 = v1046 + v800;
                                                                                                                                                              v812 = v1203;
                                                                                                                                                              (*(v1208 + 32))(v1203, v811, v562);
                                                                                                                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                                              v813 = v1034;
                                                                                                                                                              v814 = sub_22B3F6554();
                                                                                                                                                              v815 = *(v809 + 8);
                                                                                                                                                              v815(v812, v562);
                                                                                                                                                              sub_22B3B4B3C(v1033, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                              v815(v813, v562);
                                                                                                                                                              sub_22B3B4B3C(v810, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                              if (v814)
                                                                                                                                                              {
                                                                                                                                                                goto LABEL_320;
                                                                                                                                                              }

LABEL_313:
                                                                                                                                                              v804 = v1036;
                                                                                                                                                              sub_22B3F6264();
                                                                                                                                                              v1206(v804, 0, 1, v562);
                                                                                                                                                              v805 = *(v1210 + 48);
                                                                                                                                                              v806 = v804;
                                                                                                                                                              v807 = v1049;
                                                                                                                                                              sub_22B3B4B9C(v806, v1049, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                              sub_22B3B4B9C(v1209, v807 + v805, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                              if (v1205(v807, 1, v562) == 1)
                                                                                                                                                              {
                                                                                                                                                                sub_22B3B4B3C(v1036, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                if (v1205(v1049 + v805, 1, v562) == 1)
                                                                                                                                                                {
                                                                                                                                                                  sub_22B3B4B3C(v1049, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_322:
                                                                                                                                                                  sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                  v384 = MEMORY[0x277CD87E0];
                                                                                                                                                                  return *v384;
                                                                                                                                                                }
                                                                                                                                                              }

                                                                                                                                                              else
                                                                                                                                                              {
                                                                                                                                                                v808 = v1049;
                                                                                                                                                                sub_22B3B4B9C(v1049, v1038, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                if (v1205(v808 + v805, 1, v562) != 1)
                                                                                                                                                                {
                                                                                                                                                                  v816 = v1208;
                                                                                                                                                                  v817 = v1049;
                                                                                                                                                                  v818 = v1049 + v805;
                                                                                                                                                                  v819 = v1203;
                                                                                                                                                                  (*(v1208 + 32))(v1203, v818, v562);
                                                                                                                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                                                  v820 = v1038;
                                                                                                                                                                  v821 = sub_22B3F6554();
                                                                                                                                                                  v822 = *(v816 + 8);
                                                                                                                                                                  v822(v819, v562);
                                                                                                                                                                  sub_22B3B4B3C(v1036, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                  v822(v820, v562);
                                                                                                                                                                  sub_22B3B4B3C(v817, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                  if (v821)
                                                                                                                                                                  {
                                                                                                                                                                    goto LABEL_322;
                                                                                                                                                                  }

LABEL_323:
                                                                                                                                                                  v823 = v1042;
                                                                                                                                                                  sub_22B3F6264();
                                                                                                                                                                  v1206(v823, 0, 1, v562);
                                                                                                                                                                  v824 = *(v1210 + 48);
                                                                                                                                                                  v825 = v823;
                                                                                                                                                                  v826 = v1052;
                                                                                                                                                                  sub_22B3B4B9C(v825, v1052, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                  sub_22B3B4B9C(v1209, v826 + v824, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                  if (v1205(v826, 1, v562) == 1)
                                                                                                                                                                  {
                                                                                                                                                                    sub_22B3B4B3C(v1042, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                    if (v1205(v1052 + v824, 1, v562) == 1)
                                                                                                                                                                    {
                                                                                                                                                                      sub_22B3B4B3C(v1052, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_330:
                                                                                                                                                                      sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                      v384 = MEMORY[0x277CD87E8];
                                                                                                                                                                      return *v384;
                                                                                                                                                                    }
                                                                                                                                                                  }

                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                    v827 = v1052;
                                                                                                                                                                    sub_22B3B4B9C(v1052, v1043, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                    if (v1205(v827 + v824, 1, v562) != 1)
                                                                                                                                                                    {
                                                                                                                                                                      v828 = v1208;
                                                                                                                                                                      v829 = v1052;
                                                                                                                                                                      v830 = v1052 + v824;
                                                                                                                                                                      v831 = v1203;
                                                                                                                                                                      (*(v1208 + 32))(v1203, v830, v562);
                                                                                                                                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                                                      v832 = v1043;
                                                                                                                                                                      v833 = sub_22B3F6554();
                                                                                                                                                                      v834 = *(v828 + 8);
                                                                                                                                                                      v834(v831, v562);
                                                                                                                                                                      sub_22B3B4B3C(v1042, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                      v834(v832, v562);
                                                                                                                                                                      sub_22B3B4B3C(v829, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                      if (v833)
                                                                                                                                                                      {
                                                                                                                                                                        goto LABEL_330;
                                                                                                                                                                      }

LABEL_331:
                                                                                                                                                                      v835 = v1045;
                                                                                                                                                                      sub_22B3F6264();
                                                                                                                                                                      v1206(v835, 0, 1, v562);
                                                                                                                                                                      v836 = *(v1210 + 48);
                                                                                                                                                                      v837 = v835;
                                                                                                                                                                      v838 = v1054;
                                                                                                                                                                      sub_22B3B4B9C(v837, v1054, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                      sub_22B3B4B9C(v1209, v838 + v836, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                      if (v1205(v838, 1, v562) == 1)
                                                                                                                                                                      {
                                                                                                                                                                        sub_22B3B4B3C(v1045, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                        if (v1205(v1054 + v836, 1, v562) == 1)
                                                                                                                                                                        {
                                                                                                                                                                          sub_22B3B4B3C(v1054, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_338:
                                                                                                                                                                          sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                          v384 = MEMORY[0x277CD87F0];
                                                                                                                                                                          return *v384;
                                                                                                                                                                        }
                                                                                                                                                                      }

                                                                                                                                                                      else
                                                                                                                                                                      {
                                                                                                                                                                        v839 = v1054;
                                                                                                                                                                        sub_22B3B4B9C(v1054, v1047, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                        if (v1205(v839 + v836, 1, v562) != 1)
                                                                                                                                                                        {
                                                                                                                                                                          v840 = v1208;
                                                                                                                                                                          v841 = v1054;
                                                                                                                                                                          v842 = v1054 + v836;
                                                                                                                                                                          v843 = v1203;
                                                                                                                                                                          (*(v1208 + 32))(v1203, v842, v562);
                                                                                                                                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                                                          v844 = v1047;
                                                                                                                                                                          v845 = sub_22B3F6554();
                                                                                                                                                                          v846 = *(v840 + 8);
                                                                                                                                                                          v846(v843, v562);
                                                                                                                                                                          sub_22B3B4B3C(v1045, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                          v846(v844, v562);
                                                                                                                                                                          sub_22B3B4B3C(v841, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                          if (v845)
                                                                                                                                                                          {
                                                                                                                                                                            goto LABEL_338;
                                                                                                                                                                          }

LABEL_339:
                                                                                                                                                                          v847 = v1048;
                                                                                                                                                                          sub_22B3F6264();
                                                                                                                                                                          v1206(v847, 0, 1, v562);
                                                                                                                                                                          v848 = *(v1210 + 48);
                                                                                                                                                                          v849 = v847;
                                                                                                                                                                          v850 = v1057;
                                                                                                                                                                          sub_22B3B4B9C(v849, v1057, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                          sub_22B3B4B9C(v1209, v850 + v848, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                          if (v1205(v850, 1, v562) == 1)
                                                                                                                                                                          {
                                                                                                                                                                            sub_22B3B4B3C(v1048, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                            if (v1205(v1057 + v848, 1, v562) == 1)
                                                                                                                                                                            {
                                                                                                                                                                              sub_22B3B4B3C(v1057, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                              goto LABEL_346;
                                                                                                                                                                            }
                                                                                                                                                                          }

                                                                                                                                                                          else
                                                                                                                                                                          {
                                                                                                                                                                            v851 = v1057;
                                                                                                                                                                            sub_22B3B4B9C(v1057, v1050, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                            if (v1205(v851 + v848, 1, v562) != 1)
                                                                                                                                                                            {
                                                                                                                                                                              v852 = v1208;
                                                                                                                                                                              v853 = v1057;
                                                                                                                                                                              v854 = v1057 + v848;
                                                                                                                                                                              v855 = v1203;
                                                                                                                                                                              (*(v1208 + 32))(v1203, v854, v562);
                                                                                                                                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                                                              v856 = v1050;
                                                                                                                                                                              v857 = sub_22B3F6554();
                                                                                                                                                                              v858 = *(v852 + 8);
                                                                                                                                                                              v858(v855, v562);
                                                                                                                                                                              sub_22B3B4B3C(v1048, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                              v858(v856, v562);
                                                                                                                                                                              sub_22B3B4B3C(v853, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                              if (v857)
                                                                                                                                                                              {
LABEL_346:
                                                                                                                                                                                sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                v859 = v1037;
                                                                                                                                                                                sub_22B3F62D4();
                                                                                                                                                                                v860 = v1066;
                                                                                                                                                                                sub_22B3F62B4();
                                                                                                                                                                                v1035(v859, v1040);
                                                                                                                                                                                v861 = v1065;
                                                                                                                                                                                sub_22B3F6284();
                                                                                                                                                                                v862 = v1070;
                                                                                                                                                                                v863 = v1073;
                                                                                                                                                                                (*(v1070 + 56))(v861, 0, 1, v1073);
                                                                                                                                                                                v864 = *(v1063 + 48);
                                                                                                                                                                                v865 = v1071;
                                                                                                                                                                                sub_22B3B4B9C(v860, v1071, &qword_27D8BE490, &qword_22B3F9F08);
                                                                                                                                                                                sub_22B3B4B9C(v861, v865 + v864, &qword_27D8BE490, &qword_22B3F9F08);
                                                                                                                                                                                v866 = *(v862 + 48);
                                                                                                                                                                                if (v866(v865, 1, v863) == 1)
                                                                                                                                                                                {
                                                                                                                                                                                  sub_22B3B4B3C(v1065, &qword_27D8BE490, &qword_22B3F9F08);
                                                                                                                                                                                  sub_22B3B4B3C(v1066, &qword_27D8BE490, &qword_22B3F9F08);
                                                                                                                                                                                  if (v866(v1071 + v864, 1, v1073) == 1)
                                                                                                                                                                                  {
                                                                                                                                                                                    sub_22B3B4B3C(v1071, &qword_27D8BE490, &qword_22B3F9F08);
LABEL_378:
                                                                                                                                                                                    v384 = MEMORY[0x277CD87F8];
                                                                                                                                                                                    return *v384;
                                                                                                                                                                                  }
                                                                                                                                                                                }

                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                  v877 = v1071;
                                                                                                                                                                                  sub_22B3B4B9C(v1071, v1067, &qword_27D8BE490, &qword_22B3F9F08);
                                                                                                                                                                                  if (v866(v877 + v864, 1, v1073) != 1)
                                                                                                                                                                                  {
                                                                                                                                                                                    v901 = v1070;
                                                                                                                                                                                    v902 = v1071;
                                                                                                                                                                                    v903 = v1071 + v864;
                                                                                                                                                                                    v904 = v1068;
                                                                                                                                                                                    v905 = v1073;
                                                                                                                                                                                    (*(v1070 + 32))(v1068, v903, v1073);
                                                                                                                                                                                    sub_22B3F4AAC(&qword_27D8BE4B0, MEMORY[0x277CC96C0], MEMORY[0x277CC96C8]);
                                                                                                                                                                                    v906 = v1067;
                                                                                                                                                                                    v907 = sub_22B3F6554();
                                                                                                                                                                                    v908 = *(v901 + 8);
                                                                                                                                                                                    v908(v904, v905);
                                                                                                                                                                                    sub_22B3B4B3C(v1065, &qword_27D8BE490, &qword_22B3F9F08);
                                                                                                                                                                                    sub_22B3B4B3C(v1066, &qword_27D8BE490, &qword_22B3F9F08);
                                                                                                                                                                                    v908(v906, v905);
                                                                                                                                                                                    sub_22B3B4B3C(v902, &qword_27D8BE490, &qword_22B3F9F08);
                                                                                                                                                                                    if (v907)
                                                                                                                                                                                    {
                                                                                                                                                                                      goto LABEL_378;
                                                                                                                                                                                    }

LABEL_379:
                                                                                                                                                                                    v384 = MEMORY[0x277CD8840];
                                                                                                                                                                                    return *v384;
                                                                                                                                                                                  }

                                                                                                                                                                                  sub_22B3B4B3C(v1065, &qword_27D8BE490, &qword_22B3F9F08);
                                                                                                                                                                                  sub_22B3B4B3C(v1066, &qword_27D8BE490, &qword_22B3F9F08);
                                                                                                                                                                                  (*(v1070 + 8))(v1067, v1073);
                                                                                                                                                                                }

                                                                                                                                                                                sub_22B3B4B3C(v1071, &qword_27D8BE488, &qword_22B3F9F00);
                                                                                                                                                                                goto LABEL_379;
                                                                                                                                                                              }

LABEL_349:
                                                                                                                                                                              v867 = v1051;
                                                                                                                                                                              sub_22B3F6264();
                                                                                                                                                                              v1206(v867, 0, 1, v562);
                                                                                                                                                                              v868 = *(v1210 + 48);
                                                                                                                                                                              v869 = v867;
                                                                                                                                                                              v870 = v1060;
                                                                                                                                                                              sub_22B3B4B9C(v869, v1060, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                              sub_22B3B4B9C(v1209, v870 + v868, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                              if (v1205(v870, 1, v562) == 1)
                                                                                                                                                                              {
                                                                                                                                                                                sub_22B3B4B3C(v1051, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                if (v1205(v1060 + v868, 1, v562) == 1)
                                                                                                                                                                                {
                                                                                                                                                                                  sub_22B3B4B3C(v1060, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_365:
                                                                                                                                                                                  sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                  v384 = MEMORY[0x277CD8800];
                                                                                                                                                                                  return *v384;
                                                                                                                                                                                }
                                                                                                                                                                              }

                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                v871 = v1060;
                                                                                                                                                                                sub_22B3B4B9C(v1060, v1053, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                if (v1205(v871 + v868, 1, v562) != 1)
                                                                                                                                                                                {
                                                                                                                                                                                  v878 = v1208;
                                                                                                                                                                                  v879 = v1060;
                                                                                                                                                                                  v880 = v1060 + v868;
                                                                                                                                                                                  v881 = v1203;
                                                                                                                                                                                  (*(v1208 + 32))(v1203, v880, v562);
                                                                                                                                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                                                                  v882 = v1053;
                                                                                                                                                                                  v883 = sub_22B3F6554();
                                                                                                                                                                                  v884 = *(v878 + 8);
                                                                                                                                                                                  v884(v881, v562);
                                                                                                                                                                                  sub_22B3B4B3C(v1051, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                  v884(v882, v562);
                                                                                                                                                                                  sub_22B3B4B3C(v879, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                  if (v883)
                                                                                                                                                                                  {
                                                                                                                                                                                    goto LABEL_365;
                                                                                                                                                                                  }

LABEL_355:
                                                                                                                                                                                  v872 = v1055;
                                                                                                                                                                                  sub_22B3F6264();
                                                                                                                                                                                  v1206(v872, 0, 1, v562);
                                                                                                                                                                                  v873 = *(v1210 + 48);
                                                                                                                                                                                  v874 = v872;
                                                                                                                                                                                  v875 = v1069;
                                                                                                                                                                                  sub_22B3B4B9C(v874, v1069, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                  sub_22B3B4B9C(v1209, v875 + v873, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                  if (v1205(v875, 1, v562) == 1)
                                                                                                                                                                                  {
                                                                                                                                                                                    sub_22B3B4B3C(v1055, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                    if (v1205(v1069 + v873, 1, v562) == 1)
                                                                                                                                                                                    {
                                                                                                                                                                                      sub_22B3B4B3C(v1069, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_367:
                                                                                                                                                                                      sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                      v384 = MEMORY[0x277CD8808];
                                                                                                                                                                                      return *v384;
                                                                                                                                                                                    }
                                                                                                                                                                                  }

                                                                                                                                                                                  else
                                                                                                                                                                                  {
                                                                                                                                                                                    v876 = v1069;
                                                                                                                                                                                    sub_22B3B4B9C(v1069, v1056, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                    if (v1205(v876 + v873, 1, v562) != 1)
                                                                                                                                                                                    {
                                                                                                                                                                                      v885 = v1208;
                                                                                                                                                                                      v886 = v1069;
                                                                                                                                                                                      v887 = v1069 + v873;
                                                                                                                                                                                      v888 = v1203;
                                                                                                                                                                                      (*(v1208 + 32))(v1203, v887, v562);
                                                                                                                                                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                                                                      v889 = v1056;
                                                                                                                                                                                      v890 = sub_22B3F6554();
                                                                                                                                                                                      v891 = *(v885 + 8);
                                                                                                                                                                                      v891(v888, v562);
                                                                                                                                                                                      sub_22B3B4B3C(v1055, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                      v891(v889, v562);
                                                                                                                                                                                      sub_22B3B4B3C(v886, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                      if (v890)
                                                                                                                                                                                      {
                                                                                                                                                                                        goto LABEL_367;
                                                                                                                                                                                      }

LABEL_368:
                                                                                                                                                                                      v892 = v1058;
                                                                                                                                                                                      sub_22B3F6264();
                                                                                                                                                                                      v1206(v892, 0, 1, v562);
                                                                                                                                                                                      v893 = *(v1210 + 48);
                                                                                                                                                                                      v894 = v892;
                                                                                                                                                                                      v895 = v1075;
                                                                                                                                                                                      sub_22B3B4B9C(v894, v1075, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                      sub_22B3B4B9C(v1209, v895 + v893, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                      if (v1205(v895, 1, v562) == 1)
                                                                                                                                                                                      {
                                                                                                                                                                                        sub_22B3B4B3C(v1058, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                        if (v1205(v1075 + v893, 1, v562) == 1)
                                                                                                                                                                                        {
                                                                                                                                                                                          sub_22B3B4B3C(v1075, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_384:
                                                                                                                                                                                          sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                          v384 = MEMORY[0x277CD8810];
                                                                                                                                                                                          return *v384;
                                                                                                                                                                                        }
                                                                                                                                                                                      }

                                                                                                                                                                                      else
                                                                                                                                                                                      {
                                                                                                                                                                                        v896 = v1075;
                                                                                                                                                                                        sub_22B3B4B9C(v1075, v1059, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                        if (v1205(v896 + v893, 1, v562) != 1)
                                                                                                                                                                                        {
                                                                                                                                                                                          v910 = v1208;
                                                                                                                                                                                          v911 = v1075;
                                                                                                                                                                                          v912 = v1075 + v893;
                                                                                                                                                                                          v913 = v1203;
                                                                                                                                                                                          (*(v1208 + 32))(v1203, v912, v562);
                                                                                                                                                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                                                                          v914 = v1059;
                                                                                                                                                                                          v915 = sub_22B3F6554();
                                                                                                                                                                                          v916 = *(v910 + 8);
                                                                                                                                                                                          v916(v913, v562);
                                                                                                                                                                                          sub_22B3B4B3C(v1058, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                          v916(v914, v562);
                                                                                                                                                                                          sub_22B3B4B3C(v911, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                          if (v915)
                                                                                                                                                                                          {
                                                                                                                                                                                            goto LABEL_384;
                                                                                                                                                                                          }

LABEL_374:
                                                                                                                                                                                          v897 = v1061;
                                                                                                                                                                                          sub_22B3F6264();
                                                                                                                                                                                          v1206(v897, 0, 1, v562);
                                                                                                                                                                                          v898 = *(v1210 + 48);
                                                                                                                                                                                          v899 = v897;
                                                                                                                                                                                          v900 = v1078;
                                                                                                                                                                                          sub_22B3B4B9C(v899, v1078, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                          sub_22B3B4B9C(v1209, v900 + v898, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                          if (v1205(v900, 1, v562) == 1)
                                                                                                                                                                                          {
                                                                                                                                                                                            sub_22B3B4B3C(v1061, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                            if (v1205(v1078 + v898, 1, v562) == 1)
                                                                                                                                                                                            {
                                                                                                                                                                                              sub_22B3B4B3C(v1078, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_386:
                                                                                                                                                                                              sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                              v384 = MEMORY[0x277CD8818];
                                                                                                                                                                                              return *v384;
                                                                                                                                                                                            }
                                                                                                                                                                                          }

                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                            v909 = v1078;
                                                                                                                                                                                            sub_22B3B4B9C(v1078, v1062, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                            if (v1205(v909 + v898, 1, v562) != 1)
                                                                                                                                                                                            {
                                                                                                                                                                                              v917 = v1208;
                                                                                                                                                                                              v918 = v1078;
                                                                                                                                                                                              v919 = v1078 + v898;
                                                                                                                                                                                              v920 = v1203;
                                                                                                                                                                                              (*(v1208 + 32))(v1203, v919, v562);
                                                                                                                                                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                                                                              v921 = v1062;
                                                                                                                                                                                              v922 = sub_22B3F6554();
                                                                                                                                                                                              v923 = *(v917 + 8);
                                                                                                                                                                                              v923(v920, v562);
                                                                                                                                                                                              sub_22B3B4B3C(v1061, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                              v923(v921, v562);
                                                                                                                                                                                              sub_22B3B4B3C(v918, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                              if (v922)
                                                                                                                                                                                              {
                                                                                                                                                                                                goto LABEL_386;
                                                                                                                                                                                              }

LABEL_387:
                                                                                                                                                                                              v924 = v1072;
                                                                                                                                                                                              sub_22B3F6264();
                                                                                                                                                                                              v1206(v924, 0, 1, v562);
                                                                                                                                                                                              v925 = *(v1210 + 48);
                                                                                                                                                                                              v926 = v924;
                                                                                                                                                                                              v927 = v1081;
                                                                                                                                                                                              sub_22B3B4B9C(v926, v1081, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                              sub_22B3B4B9C(v1209, v927 + v925, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                              if (v1205(v927, 1, v562) == 1)
                                                                                                                                                                                              {
                                                                                                                                                                                                sub_22B3B4B3C(v1072, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                if (v1205(v1081 + v925, 1, v562) == 1)
                                                                                                                                                                                                {
                                                                                                                                                                                                  sub_22B3B4B3C(v1081, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_400:
                                                                                                                                                                                                  sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                  v384 = MEMORY[0x277CD8820];
                                                                                                                                                                                                  return *v384;
                                                                                                                                                                                                }
                                                                                                                                                                                              }

                                                                                                                                                                                              else
                                                                                                                                                                                              {
                                                                                                                                                                                                v928 = v1081;
                                                                                                                                                                                                sub_22B3B4B9C(v1081, v1074, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                if (v1205(v928 + v925, 1, v562) != 1)
                                                                                                                                                                                                {
                                                                                                                                                                                                  v934 = v1208;
                                                                                                                                                                                                  v935 = v1081;
                                                                                                                                                                                                  v936 = v1081 + v925;
                                                                                                                                                                                                  v937 = v1203;
                                                                                                                                                                                                  (*(v1208 + 32))(v1203, v936, v562);
                                                                                                                                                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                                                                                  v938 = v1074;
                                                                                                                                                                                                  v939 = sub_22B3F6554();
                                                                                                                                                                                                  v940 = *(v934 + 8);
                                                                                                                                                                                                  v940(v937, v562);
                                                                                                                                                                                                  sub_22B3B4B3C(v1072, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                  v940(v938, v562);
                                                                                                                                                                                                  sub_22B3B4B3C(v935, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                  if (v939)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    goto LABEL_400;
                                                                                                                                                                                                  }

LABEL_393:
                                                                                                                                                                                                  v929 = v1076;
                                                                                                                                                                                                  sub_22B3F6264();
                                                                                                                                                                                                  v1206(v929, 0, 1, v562);
                                                                                                                                                                                                  v930 = *(v1210 + 48);
                                                                                                                                                                                                  v931 = v929;
                                                                                                                                                                                                  v932 = v1084;
                                                                                                                                                                                                  sub_22B3B4B9C(v931, v1084, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                  sub_22B3B4B9C(v1209, v932 + v930, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                  if (v1205(v932, 1, v562) == 1)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    sub_22B3B4B3C(v1076, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                    if (v1205(v1084 + v930, 1, v562) == 1)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      sub_22B3B4B3C(v1084, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_402:
                                                                                                                                                                                                      sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                      v384 = MEMORY[0x277CD8828];
                                                                                                                                                                                                      return *v384;
                                                                                                                                                                                                    }
                                                                                                                                                                                                  }

                                                                                                                                                                                                  else
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v933 = v1084;
                                                                                                                                                                                                    sub_22B3B4B9C(v1084, v1077, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                    if (v1205(v933 + v930, 1, v562) != 1)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v941 = v1208;
                                                                                                                                                                                                      v942 = v1084;
                                                                                                                                                                                                      v943 = v1084 + v930;
                                                                                                                                                                                                      v944 = v1203;
                                                                                                                                                                                                      (*(v1208 + 32))(v1203, v943, v562);
                                                                                                                                                                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                                                                                      v945 = v1077;
                                                                                                                                                                                                      v946 = sub_22B3F6554();
                                                                                                                                                                                                      v947 = *(v941 + 8);
                                                                                                                                                                                                      v947(v944, v562);
                                                                                                                                                                                                      sub_22B3B4B3C(v1076, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                      v947(v945, v562);
                                                                                                                                                                                                      sub_22B3B4B3C(v942, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                      if (v946)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        goto LABEL_402;
                                                                                                                                                                                                      }

LABEL_403:
                                                                                                                                                                                                      v948 = v1079;
                                                                                                                                                                                                      sub_22B3F6264();
                                                                                                                                                                                                      v1206(v948, 0, 1, v562);
                                                                                                                                                                                                      v949 = *(v1210 + 48);
                                                                                                                                                                                                      v950 = v948;
                                                                                                                                                                                                      v951 = v1087;
                                                                                                                                                                                                      sub_22B3B4B9C(v950, v1087, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                      sub_22B3B4B9C(v1209, v951 + v949, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                      if (v1205(v951, 1, v562) == 1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        sub_22B3B4B3C(v1079, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                        if (v1205(v1087 + v949, 1, v562) == 1)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          sub_22B3B4B3C(v1087, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_416:
                                                                                                                                                                                                          sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                          v384 = MEMORY[0x277CD8830];
                                                                                                                                                                                                          return *v384;
                                                                                                                                                                                                        }
                                                                                                                                                                                                      }

                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                        v952 = v1087;
                                                                                                                                                                                                        sub_22B3B4B9C(v1087, v1080, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                        if (v1205(v952 + v949, 1, v562) != 1)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v958 = v1208;
                                                                                                                                                                                                          v959 = v1087;
                                                                                                                                                                                                          v960 = v1087 + v949;
                                                                                                                                                                                                          v961 = v1203;
                                                                                                                                                                                                          (*(v1208 + 32))(v1203, v960, v562);
                                                                                                                                                                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                                                                                          v962 = v1080;
                                                                                                                                                                                                          v963 = sub_22B3F6554();
                                                                                                                                                                                                          v964 = *(v958 + 8);
                                                                                                                                                                                                          v964(v961, v562);
                                                                                                                                                                                                          sub_22B3B4B3C(v1079, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                          v964(v962, v562);
                                                                                                                                                                                                          sub_22B3B4B3C(v959, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                          if (v963)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            goto LABEL_416;
                                                                                                                                                                                                          }

LABEL_409:
                                                                                                                                                                                                          v953 = v1082;
                                                                                                                                                                                                          sub_22B3F6264();
                                                                                                                                                                                                          v1206(v953, 0, 1, v562);
                                                                                                                                                                                                          v954 = *(v1210 + 48);
                                                                                                                                                                                                          v955 = v953;
                                                                                                                                                                                                          v956 = v1090;
                                                                                                                                                                                                          sub_22B3B4B9C(v955, v1090, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                          sub_22B3B4B9C(v1209, v956 + v954, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                          if (v1205(v956, 1, v562) == 1)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            sub_22B3B4B3C(v1082, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                            if (v1205(v1090 + v954, 1, v562) == 1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              sub_22B3B4B3C(v1090, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_418:
                                                                                                                                                                                                              sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                              v384 = MEMORY[0x277CD8838];
                                                                                                                                                                                                              return *v384;
                                                                                                                                                                                                            }
                                                                                                                                                                                                          }

                                                                                                                                                                                                          else
                                                                                                                                                                                                          {
                                                                                                                                                                                                            v957 = v1090;
                                                                                                                                                                                                            sub_22B3B4B9C(v1090, v1083, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                            if (v1205(v957 + v954, 1, v562) != 1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v965 = v1208;
                                                                                                                                                                                                              v966 = v1090;
                                                                                                                                                                                                              v967 = v1090 + v954;
                                                                                                                                                                                                              v968 = v1203;
                                                                                                                                                                                                              (*(v1208 + 32))(v1203, v967, v562);
                                                                                                                                                                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                                                                                              v969 = v1083;
                                                                                                                                                                                                              v970 = sub_22B3F6554();
                                                                                                                                                                                                              v971 = *(v965 + 8);
                                                                                                                                                                                                              v971(v968, v562);
                                                                                                                                                                                                              sub_22B3B4B3C(v1082, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                              v971(v969, v562);
                                                                                                                                                                                                              sub_22B3B4B3C(v966, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                              if (v970)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                goto LABEL_418;
                                                                                                                                                                                                              }

LABEL_419:
                                                                                                                                                                                                              v972 = v1085;
                                                                                                                                                                                                              sub_22B3F6264();
                                                                                                                                                                                                              v1206(v972, 0, 1, v562);
                                                                                                                                                                                                              v973 = *(v1210 + 48);
                                                                                                                                                                                                              v974 = v972;
                                                                                                                                                                                                              v975 = v1093;
                                                                                                                                                                                                              sub_22B3B4B9C(v974, v1093, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                              sub_22B3B4B9C(v1209, v975 + v973, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                              if (v1205(v975, 1, v562) == 1)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                sub_22B3B4B3C(v1085, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                if (v1205(v1093 + v973, 1, v562) == 1)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  sub_22B3B4B3C(v1093, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_426:
                                                                                                                                                                                                                  sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                  v384 = MEMORY[0x277CD8848];
                                                                                                                                                                                                                  return *v384;
                                                                                                                                                                                                                }
                                                                                                                                                                                                              }

                                                                                                                                                                                                              else
                                                                                                                                                                                                              {
                                                                                                                                                                                                                v976 = v1093;
                                                                                                                                                                                                                sub_22B3B4B9C(v1093, v1086, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                if (v1205(v976 + v973, 1, v562) != 1)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v977 = v1208;
                                                                                                                                                                                                                  v978 = v1093;
                                                                                                                                                                                                                  v979 = v1093 + v973;
                                                                                                                                                                                                                  v980 = v1203;
                                                                                                                                                                                                                  (*(v1208 + 32))(v1203, v979, v562);
                                                                                                                                                                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                                                                                                  v981 = v1086;
                                                                                                                                                                                                                  v982 = sub_22B3F6554();
                                                                                                                                                                                                                  v983 = *(v977 + 8);
                                                                                                                                                                                                                  v983(v980, v562);
                                                                                                                                                                                                                  sub_22B3B4B3C(v1085, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                  v983(v981, v562);
                                                                                                                                                                                                                  sub_22B3B4B3C(v978, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                  if (v982)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    goto LABEL_426;
                                                                                                                                                                                                                  }

LABEL_427:
                                                                                                                                                                                                                  v984 = v1088;
                                                                                                                                                                                                                  sub_22B3F6264();
                                                                                                                                                                                                                  v1206(v984, 0, 1, v562);
                                                                                                                                                                                                                  v985 = *(v1210 + 48);
                                                                                                                                                                                                                  v986 = v984;
                                                                                                                                                                                                                  v987 = v1096;
                                                                                                                                                                                                                  sub_22B3B4B9C(v986, v1096, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                  sub_22B3B4B9C(v1209, v987 + v985, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                  if (v1205(v987, 1, v562) == 1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    sub_22B3B4B3C(v1088, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                    if (v1205(v1096 + v985, 1, v562) == 1)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      sub_22B3B4B3C(v1096, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_434:
                                                                                                                                                                                                                      sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                      v384 = MEMORY[0x277CD8850];
                                                                                                                                                                                                                      return *v384;
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    v988 = v1096;
                                                                                                                                                                                                                    sub_22B3B4B9C(v1096, v1089, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                    if (v1205(v988 + v985, 1, v562) != 1)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      v989 = v1208;
                                                                                                                                                                                                                      v990 = v1096;
                                                                                                                                                                                                                      v991 = v1096 + v985;
                                                                                                                                                                                                                      v992 = v1203;
                                                                                                                                                                                                                      (*(v1208 + 32))(v1203, v991, v562);
                                                                                                                                                                                                                      sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                                                                                                      v993 = v1089;
                                                                                                                                                                                                                      v994 = sub_22B3F6554();
                                                                                                                                                                                                                      v995 = *(v989 + 8);
                                                                                                                                                                                                                      v995(v992, v562);
                                                                                                                                                                                                                      sub_22B3B4B3C(v1088, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                      v995(v993, v562);
                                                                                                                                                                                                                      sub_22B3B4B3C(v990, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                      if (v994)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        goto LABEL_434;
                                                                                                                                                                                                                      }

LABEL_435:
                                                                                                                                                                                                                      v996 = v1091;
                                                                                                                                                                                                                      sub_22B3F6264();
                                                                                                                                                                                                                      v1206(v996, 0, 1, v562);
                                                                                                                                                                                                                      v997 = *(v1210 + 48);
                                                                                                                                                                                                                      v998 = v996;
                                                                                                                                                                                                                      v999 = v1099;
                                                                                                                                                                                                                      sub_22B3B4B9C(v998, v1099, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                      sub_22B3B4B9C(v1209, v999 + v997, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                      if (v1205(v999, 1, v562) == 1)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        sub_22B3B4B3C(v1091, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                        if (v1205(v1099 + v997, 1, v562) == 1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          sub_22B3B4B3C(v1099, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_448:
                                                                                                                                                                                                                          sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                          v384 = MEMORY[0x277CD8860];
                                                                                                                                                                                                                          return *v384;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      else
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        v1000 = v1099;
                                                                                                                                                                                                                        sub_22B3B4B9C(v1099, v1092, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                        if (v1205(v1000 + v997, 1, v562) != 1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          v1005 = v1208;
                                                                                                                                                                                                                          v1006 = v1099;
                                                                                                                                                                                                                          v1007 = v1099 + v997;
                                                                                                                                                                                                                          v1008 = v1203;
                                                                                                                                                                                                                          (*(v1208 + 32))(v1203, v1007, v562);
                                                                                                                                                                                                                          sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                                                                                                          v1009 = v1092;
                                                                                                                                                                                                                          v1010 = sub_22B3F6554();
                                                                                                                                                                                                                          v1011 = *(v1005 + 8);
                                                                                                                                                                                                                          v1011(v1008, v562);
                                                                                                                                                                                                                          sub_22B3B4B3C(v1091, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                          v1011(v1009, v562);
                                                                                                                                                                                                                          sub_22B3B4B3C(v1006, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                          if (v1010)
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            goto LABEL_448;
                                                                                                                                                                                                                          }

LABEL_441:
                                                                                                                                                                                                                          v1001 = v1094;
                                                                                                                                                                                                                          sub_22B3F6264();
                                                                                                                                                                                                                          v1206(v1001, 0, 1, v562);
                                                                                                                                                                                                                          v1002 = *(v1210 + 48);
                                                                                                                                                                                                                          v1003 = v1001;
                                                                                                                                                                                                                          v1004 = v1100;
                                                                                                                                                                                                                          sub_22B3B4B9C(v1003, v1100, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                          sub_22B3B4B9C(v1209, v1004 + v1002, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                          if (v1205(v1004, 1, v562) == 1)
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            sub_22B3B4B3C(v1094, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                            if (v1205(v1004 + v1002, 1, v562) == 1)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              sub_22B3B4B3C(v1004, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_450:
                                                                                                                                                                                                                              sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                              v384 = MEMORY[0x277CD8868];
                                                                                                                                                                                                                              return *v384;
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                          }

                                                                                                                                                                                                                          else
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            sub_22B3B4B9C(v1004, v1095, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                            if (v1205(v1004 + v1002, 1, v562) != 1)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v1012 = v1208;
                                                                                                                                                                                                                              v1013 = v1004 + v1002;
                                                                                                                                                                                                                              v1014 = v1203;
                                                                                                                                                                                                                              (*(v1208 + 32))(v1203, v1013, v562);
                                                                                                                                                                                                                              sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                                                                                                              v1015 = v1095;
                                                                                                                                                                                                                              v1016 = sub_22B3F6554();
                                                                                                                                                                                                                              v1017 = *(v1012 + 8);
                                                                                                                                                                                                                              v1017(v1014, v562);
                                                                                                                                                                                                                              sub_22B3B4B3C(v1094, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                              v1017(v1015, v562);
                                                                                                                                                                                                                              sub_22B3B4B3C(v1004, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                              if (v1016)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                goto LABEL_450;
                                                                                                                                                                                                                              }

LABEL_451:
                                                                                                                                                                                                                              v1018 = v1097;
                                                                                                                                                                                                                              sub_22B3F6264();
                                                                                                                                                                                                                              v1206(v1018, 0, 1, v562);
                                                                                                                                                                                                                              v1019 = *(v1210 + 48);
                                                                                                                                                                                                                              v1020 = v1101;
                                                                                                                                                                                                                              sub_22B3B4B9C(v1018, v1101, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                              sub_22B3F4A3C(v1209, v1020 + v1019);
                                                                                                                                                                                                                              if (v1205(v1020, 1, v562) == 1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                sub_22B3B4B3C(v1097, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                                if (v1205(v1020 + v1019, 1, v562) == 1)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  sub_22B3B4B3C(v1020, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_459:
                                                                                                                                                                                                                                  v384 = MEMORY[0x277CD8780];
                                                                                                                                                                                                                                  return *v384;
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                sub_22B3B4B9C(v1020, v1098, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                                if (v1205(v1020 + v1019, 1, v562) != 1)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v1021 = v1208;
                                                                                                                                                                                                                                  v1022 = v1203;
                                                                                                                                                                                                                                  (*(v1208 + 32))(v1203, v1020 + v1019, v562);
                                                                                                                                                                                                                                  sub_22B3F4AAC(&qword_27D8BE4A8, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
                                                                                                                                                                                                                                  v1023 = v1098;
                                                                                                                                                                                                                                  v1024 = sub_22B3F6554();
                                                                                                                                                                                                                                  v1025 = *(v1021 + 8);
                                                                                                                                                                                                                                  v1025(v1022, v562);
                                                                                                                                                                                                                                  sub_22B3B4B3C(v1097, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                                  v1025(v1023, v562);
                                                                                                                                                                                                                                  sub_22B3B4B3C(v1020, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                                  if (v1024)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    goto LABEL_459;
                                                                                                                                                                                                                                  }

LABEL_457:
                                                                                                                                                                                                                                  v384 = MEMORY[0x277CD8858];
                                                                                                                                                                                                                                  return *v384;
                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                sub_22B3B4B3C(v1097, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                                (*(v1208 + 8))(v1098, v562);
                                                                                                                                                                                                                              }

                                                                                                                                                                                                                              sub_22B3B4B3C(v1020, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                                                              goto LABEL_457;
                                                                                                                                                                                                                            }

                                                                                                                                                                                                                            sub_22B3B4B3C(v1094, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                            (*(v1208 + 8))(v1095, v562);
                                                                                                                                                                                                                          }

                                                                                                                                                                                                                          sub_22B3B4B3C(v1004, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                                                          goto LABEL_451;
                                                                                                                                                                                                                        }

                                                                                                                                                                                                                        sub_22B3B4B3C(v1091, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                        (*(v1208 + 8))(v1092, v562);
                                                                                                                                                                                                                      }

                                                                                                                                                                                                                      sub_22B3B4B3C(v1099, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                                                      goto LABEL_441;
                                                                                                                                                                                                                    }

                                                                                                                                                                                                                    sub_22B3B4B3C(v1088, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                    (*(v1208 + 8))(v1089, v562);
                                                                                                                                                                                                                  }

                                                                                                                                                                                                                  sub_22B3B4B3C(v1096, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                                                  goto LABEL_435;
                                                                                                                                                                                                                }

                                                                                                                                                                                                                sub_22B3B4B3C(v1085, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                                (*(v1208 + 8))(v1086, v562);
                                                                                                                                                                                                              }

                                                                                                                                                                                                              sub_22B3B4B3C(v1093, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                                              goto LABEL_427;
                                                                                                                                                                                                            }

                                                                                                                                                                                                            sub_22B3B4B3C(v1082, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                            (*(v1208 + 8))(v1083, v562);
                                                                                                                                                                                                          }

                                                                                                                                                                                                          sub_22B3B4B3C(v1090, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                                          goto LABEL_419;
                                                                                                                                                                                                        }

                                                                                                                                                                                                        sub_22B3B4B3C(v1079, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                        (*(v1208 + 8))(v1080, v562);
                                                                                                                                                                                                      }

                                                                                                                                                                                                      sub_22B3B4B3C(v1087, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                                      goto LABEL_409;
                                                                                                                                                                                                    }

                                                                                                                                                                                                    sub_22B3B4B3C(v1076, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                    (*(v1208 + 8))(v1077, v562);
                                                                                                                                                                                                  }

                                                                                                                                                                                                  sub_22B3B4B3C(v1084, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                                  goto LABEL_403;
                                                                                                                                                                                                }

                                                                                                                                                                                                sub_22B3B4B3C(v1072, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                                (*(v1208 + 8))(v1074, v562);
                                                                                                                                                                                              }

                                                                                                                                                                                              sub_22B3B4B3C(v1081, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                              goto LABEL_393;
                                                                                                                                                                                            }

                                                                                                                                                                                            sub_22B3B4B3C(v1061, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                            (*(v1208 + 8))(v1062, v562);
                                                                                                                                                                                          }

                                                                                                                                                                                          sub_22B3B4B3C(v1078, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                          goto LABEL_387;
                                                                                                                                                                                        }

                                                                                                                                                                                        sub_22B3B4B3C(v1058, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                        (*(v1208 + 8))(v1059, v562);
                                                                                                                                                                                      }

                                                                                                                                                                                      sub_22B3B4B3C(v1075, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                      goto LABEL_374;
                                                                                                                                                                                    }

                                                                                                                                                                                    sub_22B3B4B3C(v1055, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                    (*(v1208 + 8))(v1056, v562);
                                                                                                                                                                                  }

                                                                                                                                                                                  sub_22B3B4B3C(v1069, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                                  goto LABEL_368;
                                                                                                                                                                                }

                                                                                                                                                                                sub_22B3B4B3C(v1051, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                                (*(v1208 + 8))(v1053, v562);
                                                                                                                                                                              }

                                                                                                                                                                              sub_22B3B4B3C(v1060, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                              goto LABEL_355;
                                                                                                                                                                            }

                                                                                                                                                                            sub_22B3B4B3C(v1048, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                            (*(v1208 + 8))(v1050, v562);
                                                                                                                                                                          }

                                                                                                                                                                          sub_22B3B4B3C(v1057, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                          goto LABEL_349;
                                                                                                                                                                        }

                                                                                                                                                                        sub_22B3B4B3C(v1045, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                        (*(v1208 + 8))(v1047, v562);
                                                                                                                                                                      }

                                                                                                                                                                      sub_22B3B4B3C(v1054, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                      goto LABEL_339;
                                                                                                                                                                    }

                                                                                                                                                                    sub_22B3B4B3C(v1042, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                    (*(v1208 + 8))(v1043, v562);
                                                                                                                                                                  }

                                                                                                                                                                  sub_22B3B4B3C(v1052, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                                  goto LABEL_331;
                                                                                                                                                                }

                                                                                                                                                                sub_22B3B4B3C(v1036, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                                (*(v1208 + 8))(v1038, v562);
                                                                                                                                                              }

                                                                                                                                                              sub_22B3B4B3C(v1049, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                              goto LABEL_323;
                                                                                                                                                            }

                                                                                                                                                            sub_22B3B4B3C(v1033, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                            (*(v1208 + 8))(v1034, v562);
                                                                                                                                                          }

                                                                                                                                                          sub_22B3B4B3C(v1046, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                          goto LABEL_313;
                                                                                                                                                        }

                                                                                                                                                        sub_22B3B4B3C(v1031, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                        (*(v1208 + 8))(v1032, v562);
                                                                                                                                                      }

                                                                                                                                                      sub_22B3B4B3C(v1044, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                      goto LABEL_307;
                                                                                                                                                    }

                                                                                                                                                    sub_22B3B4B3C(v1029, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                    (*(v1208 + 8))(v1030, v562);
                                                                                                                                                  }

                                                                                                                                                  sub_22B3B4B3C(v1041, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                                  goto LABEL_297;
                                                                                                                                                }

                                                                                                                                                sub_22B3B4B3C(v1104, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                                (*(v1208 + 8))(v1028, v562);
                                                                                                                                              }

                                                                                                                                              sub_22B3B4B3C(v1106, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                              goto LABEL_291;
                                                                                                                                            }

                                                                                                                                            sub_22B3B4B3C(v1103, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                            (*(v1208 + 8))(v1027, v562);
                                                                                                                                          }

                                                                                                                                          sub_22B3B4B3C(v1105, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                          goto LABEL_277;
                                                                                                                                        }

                                                                                                                                        sub_22B3B4B3C(v1108, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                        (*(v1208 + 8))(v1102, v562);
                                                                                                                                      }

                                                                                                                                      sub_22B3B4B3C(v1111, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                      goto LABEL_269;
                                                                                                                                    }

                                                                                                                                    sub_22B3B4B3C(v1110, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                    (*(v1208 + 8))(v1107, v562);
                                                                                                                                  }

                                                                                                                                  sub_22B3B4B3C(v1113, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                                  goto LABEL_263;
                                                                                                                                }

                                                                                                                                sub_22B3B4B3C(v1114, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                                (*(v1208 + 8))(v1109, v562);
                                                                                                                              }

                                                                                                                              sub_22B3B4B3C(v1116, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                              goto LABEL_257;
                                                                                                                            }

                                                                                                                            sub_22B3B4B3C(v1117, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                            (*(v1208 + 8))(v1112, v562);
                                                                                                                          }

                                                                                                                          sub_22B3B4B3C(v1119, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                          goto LABEL_245;
                                                                                                                        }

                                                                                                                        sub_22B3B4B3C(v1120, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                        (*(v1208 + 8))(v1115, v562);
                                                                                                                      }

                                                                                                                      sub_22B3B4B3C(v1122, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                      goto LABEL_237;
                                                                                                                    }

                                                                                                                    sub_22B3B4B3C(v1123, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                    (*(v1208 + 8))(v1118, v562);
                                                                                                                  }

                                                                                                                  sub_22B3B4B3C(v1125, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                                  goto LABEL_229;
                                                                                                                }

                                                                                                                sub_22B3B4B3C(v1126, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                                (*(v1208 + 8))(v1121, v562);
                                                                                                              }

                                                                                                              sub_22B3B4B3C(v1128, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                              goto LABEL_221;
                                                                                                            }

                                                                                                            sub_22B3B4B3C(v1129, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                            (*(v1208 + 8))(v1124, v562);
                                                                                                          }

                                                                                                          sub_22B3B4B3C(v1131, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                          goto LABEL_213;
                                                                                                        }

                                                                                                        sub_22B3B4B3C(v1132, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                        (*(v1208 + 8))(v1127, v562);
                                                                                                      }

                                                                                                      sub_22B3B4B3C(v1134, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                      goto LABEL_205;
                                                                                                    }

                                                                                                    sub_22B3B4B3C(v1135, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                    (*(v1208 + 8))(v1130, v562);
                                                                                                  }

                                                                                                  sub_22B3B4B3C(v1137, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                                  goto LABEL_197;
                                                                                                }

                                                                                                sub_22B3B4B3C(v1138, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                                (*(v1208 + 8))(v1133, v562);
                                                                                              }

                                                                                              sub_22B3B4B3C(v1140, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                              goto LABEL_189;
                                                                                            }

                                                                                            sub_22B3B4B3C(v1141, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                            (*(v1208 + 8))(v1136, v562);
                                                                                          }

                                                                                          sub_22B3B4B3C(v1144, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                          goto LABEL_181;
                                                                                        }

                                                                                        sub_22B3B4B3C(v1145, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                        (*(v1208 + 8))(v1139, v562);
                                                                                      }

                                                                                      sub_22B3B4B3C(v1148, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                      goto LABEL_173;
                                                                                    }

                                                                                    sub_22B3B4B3C(v1149, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                    (*(v1208 + 8))(v1143, v562);
                                                                                  }

                                                                                  sub_22B3B4B3C(v1150, &qword_27D8BE498, &qword_22B3F9F10);
                                                                                  goto LABEL_165;
                                                                                }

                                                                                sub_22B3B4B3C(v1153, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                                v569 = v568;
                                                                                v562 = v10;
                                                                                (*(v1208 + 8))(v569, v10);
                                                                              }

                                                                              sub_22B3B4B3C(v560, &qword_27D8BE498, &qword_22B3F9F10);
                                                                              goto LABEL_157;
                                                                            }

                                                                            sub_22B3B4B3C(v1156, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                            (*(v1208 + 8))(v556, v10);
                                                                          }

                                                                          sub_22B3B4B3C(v549, &qword_27D8BE498, &qword_22B3F9F10);
                                                                          goto LABEL_149;
                                                                        }

                                                                        sub_22B3B4B3C(v1160, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                        (*(v1208 + 8))(v546, v10);
                                                                      }

                                                                      sub_22B3B4B3C(v539, &qword_27D8BE498, &qword_22B3F9F10);
                                                                      goto LABEL_141;
                                                                    }

                                                                    sub_22B3B4B3C(v1163, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                    (*(v1208 + 8))(v537, v10);
                                                                    v531 = v1160;
                                                                  }

                                                                  sub_22B3B4B3C(v528, &qword_27D8BE498, &qword_22B3F9F10);
                                                                  goto LABEL_133;
                                                                }

                                                                sub_22B3B4B3C(v1166, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                                (*(v1208 + 8))(v526, v10);
                                                                v520 = v1163;
                                                              }

                                                              sub_22B3B4B3C(v517, &qword_27D8BE498, &qword_22B3F9F10);
                                                              goto LABEL_125;
                                                            }

                                                            sub_22B3B4B3C(v1169, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                            (*(v1208 + 8))(v515, v10);
                                                            v509 = v1166;
                                                          }

                                                          sub_22B3B4B3C(v506, &qword_27D8BE498, &qword_22B3F9F10);
                                                          goto LABEL_117;
                                                        }

                                                        sub_22B3B4B3C(v1172, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                        (*(v1208 + 8))(v504, v10);
                                                        v498 = v1169;
                                                      }

                                                      sub_22B3B4B3C(v495, &qword_27D8BE498, &qword_22B3F9F10);
                                                      goto LABEL_109;
                                                    }

                                                    sub_22B3B4B3C(v1175, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                    (*(v1208 + 8))(v493, v10);
                                                    v487 = v1172;
                                                  }

                                                  sub_22B3B4B3C(v484, &qword_27D8BE498, &qword_22B3F9F10);
                                                  goto LABEL_101;
                                                }

                                                sub_22B3B4B3C(v1178, &qword_27D8BE4A0, &qword_22B3F9F18);
                                                (*(v1208 + 8))(v482, v10);
                                                v476 = v1175;
                                              }

                                              sub_22B3B4B3C(v473, &qword_27D8BE498, &qword_22B3F9F10);
                                              goto LABEL_93;
                                            }

                                            sub_22B3B4B3C(v1181, &qword_27D8BE4A0, &qword_22B3F9F18);
                                            (*(v1208 + 8))(v471, v10);
                                            v465 = v1178;
                                          }

                                          sub_22B3B4B3C(v462, &qword_27D8BE498, &qword_22B3F9F10);
                                          goto LABEL_85;
                                        }

                                        sub_22B3B4B3C(v1184, &qword_27D8BE4A0, &qword_22B3F9F18);
                                        (*(v1208 + 8))(v460, v10);
                                        v454 = v1181;
                                      }

                                      sub_22B3B4B3C(v451, &qword_27D8BE498, &qword_22B3F9F10);
                                      goto LABEL_77;
                                    }

                                    sub_22B3B4B3C(v1187, &qword_27D8BE4A0, &qword_22B3F9F18);
                                    (*(v1208 + 8))(v449, v10);
                                    v443 = v1184;
                                  }

                                  sub_22B3B4B3C(v440, &qword_27D8BE498, &qword_22B3F9F10);
                                  goto LABEL_69;
                                }

                                sub_22B3B4B3C(v1190, &qword_27D8BE4A0, &qword_22B3F9F18);
                                (*(v1208 + 8))(v438, v10);
                                v432 = v1187;
                              }

                              sub_22B3B4B3C(v429, &qword_27D8BE498, &qword_22B3F9F10);
                              goto LABEL_61;
                            }

                            sub_22B3B4B3C(v1193, &qword_27D8BE4A0, &qword_22B3F9F18);
                            (*(v1208 + 8))(v427, v10);
                            v421 = v1190;
                          }

                          sub_22B3B4B3C(v418, &qword_27D8BE498, &qword_22B3F9F10);
                          goto LABEL_53;
                        }

                        sub_22B3B4B3C(v399, &qword_27D8BE4A0, &qword_22B3F9F18);
                        (*(v1208 + 8))(v416, v10);
                        v410 = v1193;
                      }

                      sub_22B3B4B3C(v407, &qword_27D8BE498, &qword_22B3F9F10);
                      goto LABEL_45;
                    }

                    sub_22B3B4B3C(v394, &qword_27D8BE4A0, &qword_22B3F9F18);
                    (*(v1208 + 8))(v405, v10);
                    v399 = v1195;
                  }

                  sub_22B3B4B3C(v396, &qword_27D8BE498, &qword_22B3F9F10);
                  goto LABEL_37;
                }

                sub_22B3B4B3C(v386, &qword_27D8BE4A0, &qword_22B3F9F18);
                (*(v1208 + 8))(v393, v10);
              }

              sub_22B3B4B3C(v379, &qword_27D8BE498, &qword_22B3F9F10);
              goto LABEL_29;
            }

            sub_22B3B4B3C(v375, &qword_27D8BE4A0, &qword_22B3F9F18);
            (*(v1208 + 8))(v385, v10);
            v379 = v1201;
          }

          sub_22B3B4B3C(v372, &qword_27D8BE498, &qword_22B3F9F10);
          goto LABEL_21;
        }

        sub_22B3B4B3C(v344, &qword_27D8BE4A0, &qword_22B3F9F18);
        (*(v1208 + 8))(v374, v10);
        v372 = v1202;
      }

      sub_22B3B4B3C(v370, &qword_27D8BE498, &qword_22B3F9F10);
      goto LABEL_13;
    }

    sub_22B3B4B3C(v350, &qword_27D8BE4A0, &qword_22B3F9F18);
    (*(v1208 + 8))(v347, v10);
LABEL_6:
    sub_22B3B4B3C(v362, &qword_27D8BE498, &qword_22B3F9F10);
    goto LABEL_7;
  }

  sub_22B3B4B3C(v350, &qword_27D8BE4A0, &qword_22B3F9F18);
  if (v366(v362 + v365, 1, v10) != 1)
  {
    goto LABEL_6;
  }

  sub_22B3B4B3C(v362, &qword_27D8BE4A0, &qword_22B3F9F18);
LABEL_17:
  sub_22B3B4B3C(v1209, &qword_27D8BE4A0, &qword_22B3F9F18);
  v384 = MEMORY[0x277CD86B0];
  return *v384;
}

uint64_t sub_22B3F4A3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE4A0, &qword_22B3F9F18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B3F4AAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

MCCKitCategorization::CategoryTS_optional __swiftcall CategoryTS.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue + 4) > 0xC)
  {
    *v1 = 12;
  }

  else
  {
    *v1 = byte_22B3FA062[rawValue + 4];
  }

  return rawValue;
}

void static CategoryTS.getCategory(for:)(char *a3@<X8>)
{
  v5 = sub_22B3F65E4();
  v6 = v4;
  if (v5 == 0x5241444E454C4143 && v4 == 0xE800000000000000 || (sub_22B3F6C84() & 1) != 0)
  {

    v7 = 4;
  }

  else if (v5 == 5130566 && v6 == 0xE300000000000000 || (sub_22B3F6C84() & 1) != 0)
  {

    v7 = 5;
  }

  else if (v5 == 0x474E49524948 && v6 == 0xE600000000000000 || (sub_22B3F6C84() & 1) != 0)
  {

    v7 = 6;
  }

  else if (v5 == 0x59545245504F5250 && v6 == 0xE800000000000000 || (sub_22B3F6C84() & 1) != 0)
  {

    v7 = 7;
  }

  else if (v5 == 0x4E49474F4CLL && v6 == 0xE500000000000000 || (sub_22B3F6C84() & 1) != 0)
  {

    v7 = 8;
  }

  else if (v5 == 0x5354544F4ELL && v6 == 0xE500000000000000 || (sub_22B3F6C84() & 1) != 0)
  {

    v7 = 9;
  }

  else if (v5 == 0x544341534E415254 && v6 == 0xEC000000534E4F49 || (sub_22B3F6C84() & 1) != 0)
  {

    v7 = 10;
  }

  else if (v5 == 0xD000000000000014 && 0x800000022B3FBA60 == v6 || (sub_22B3F6C84() & 1) != 0)
  {

    v7 = 0;
  }

  else
  {
    if (v5 == 0x524F525245 && v6 == 0xE500000000000000 || (sub_22B3F6C84() & 1) != 0)
    {
    }

    else
    {
      if (v5 == 18760 && v6 == 0xE200000000000000)
      {

        v7 = 11;
        goto LABEL_5;
      }

      v8 = sub_22B3F6C84();

      if (v8)
      {
        v7 = 11;
        goto LABEL_5;
      }

      if (qword_28140BFC8 != -1)
      {
        swift_once();
      }

      v9 = sub_22B3F6464();
      __swift_project_value_buffer(v9, qword_28140D680);

      v10 = sub_22B3F6444();
      v11 = sub_22B3F68C4();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v17 = v13;
        *v12 = 136315138;
        v14 = sub_22B3F65E4();
        v16 = sub_22B3BDABC(v14, v15, &v17);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_22B3A7000, v10, v11, "Invalid category key: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x231890C40](v13, -1, -1);
        MEMORY[0x231890C40](v12, -1, -1);
      }
    }

    v7 = 1;
  }

LABEL_5:
  *a3 = v7;
}

unint64_t static CategoryTS.getCategoryText(for:)(_BYTE *a1)
{
  v1 = *a1;
  if (v1 > 5)
  {
    v2 = 0x5354544F4ELL;
    v5 = 0x544341534E415254;
    if (v1 != 10)
    {
      v5 = 18760;
    }

    if (v1 != 9)
    {
      v2 = v5;
    }

    v3 = 0x474E49524948;
    v6 = 0x59545245504F5250;
    if (v1 != 7)
    {
      v6 = 0x4E49474F4CLL;
    }

    if (v1 != 6)
    {
      v3 = v6;
    }

    v4 = *a1 <= 8u;
  }

  else
  {
    v2 = 0x5241444E454C4143;
    if (v1 != 4)
    {
      v2 = 5130566;
    }

    if (v1 == 3)
    {
      v2 = 0x524F525245;
    }

    v3 = 0xD000000000000014;
    if (*a1)
    {
      v3 = 0x524F525245;
    }

    v4 = *a1 <= 2u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22B3F5134()
{
  v1 = *v0;
  sub_22B3F6D34();
  MEMORY[0x231890640](qword_22B3FA070[v1]);
  return sub_22B3F6D54();
}

uint64_t sub_22B3F51BC(uint64_t a1)
{
  v2 = *v1;
  sub_22B3F6D34();
  MEMORY[0x231890640](qword_22B3FA070[v2]);
  return sub_22B3F6D54();
}

unint64_t sub_22B3F523C()
{
  result = qword_27D8BE4B8;
  if (!qword_27D8BE4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE4B8);
  }

  return result;
}

unint64_t sub_22B3F5294()
{
  result = qword_27D8BE4C0;
  if (!qword_27D8BE4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BE4C8, &qword_22B3F9FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE4C0);
  }

  return result;
}

void *ModelProxy.__allocating_init(modelLocation:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = 0x636C65646F6D6C6DLL;
  v4[3] = 0xE800000000000000;
  v4[4] = 0x6C65646F6D6C6DLL;
  v4[5] = 0xE700000000000000;
  v4[6] = a1;
  v4[7] = a2;

  v5 = sub_22B3F56B0(a1, a2);

  v4[8] = v5;
  return v4;
}

void *ModelProxy.init(modelLocation:)(uint64_t a1, unint64_t a2)
{
  v2[2] = 0x636C65646F6D6C6DLL;
  v2[3] = 0xE800000000000000;
  v2[4] = 0x6C65646F6D6C6DLL;
  v2[5] = 0xE700000000000000;
  v2[6] = a1;
  v2[7] = a2;

  v2[8] = sub_22B3F56B0(a1, a2);

  return v2;
}

uint64_t sub_22B3F5428(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

void sub_22B3F5468()
{
  v1 = v0[6];
  v2 = v0[7];

  v3 = sub_22B3F56B0(v1, v2);

  v4 = v0[8];
  v0[8] = v3;
}

id sub_22B3F54C8(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22B3F60F4();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_22B3F6184();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_22B3F6064();

    swift_willThrow();
    v9 = sub_22B3F6184();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t ModelProxy.deinit()
{

  return v0;
}

uint64_t ModelProxy.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

id sub_22B3F56B0(uint64_t a1, unint64_t a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v55 = sub_22B3F6184();
  v4 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - v17;
  type metadata accessor for MCCNLP(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v54 = a1;
  v21 = sub_22B3F6564();
  v22 = sub_22B3F6564();
  v56 = v20;
  v23 = [v20 URLForResource:v21 withExtension:v22];

  if (v23)
  {
    sub_22B3F6134();

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v24 = sub_22B3F6464();
    __swift_project_value_buffer(v24, qword_28140D680);
    v25 = sub_22B3F6444();
    v26 = sub_22B3F68B4();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v55;
    if (v27)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22B3A7000, v25, v26, "Model already compiled", v29, 2u);
      MEMORY[0x231890C40](v29, -1, -1);
    }

    sub_22B3BE570();
    (*(v4 + 16))(v15, v18, v28);
    v30 = sub_22B3F54C8(v15);
    (*(v4 + 8))(v18, v28);
    goto LABEL_14;
  }

  v53 = v12;
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v31 = sub_22B3F6464();
  __swift_project_value_buffer(v31, qword_28140D680);

  v32 = sub_22B3F6444();
  v33 = sub_22B3F68B4();

  v34 = os_log_type_enabled(v32, v33);
  v35 = v54;
  if (v34)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v58 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_22B3BDABC(v35, a2, &v58);
    _os_log_impl(&dword_22B3A7000, v32, v33, "Compiled model not found. Finding %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x231890C40](v37, -1, -1);
    MEMORY[0x231890C40](v36, -1, -1);
  }

  v52 = a2;
  v38 = sub_22B3F6564();
  v39 = sub_22B3F6564();
  v40 = [v56 pathForResource:v38 ofType:v39];

  if (v40)
  {
    sub_22B3F6594();

    v41 = objc_opt_self();
    sub_22B3F60D4();
    v42 = sub_22B3F60F4();
    v43 = *(v4 + 8);
    v44 = v55;
    v43(v9, v55);
    v58 = 0;
    v45 = [v41 compileModelAtURL:v42 error:&v58];

    v46 = v58;
    if (v45)
    {
      v47 = v53;
      sub_22B3F6134();
      v48 = v46;

      sub_22B3BE570();
      (*(v4 + 16))(v6, v47, v44);
      v30 = sub_22B3F54C8(v6);
      v43(v47, v44);

LABEL_14:

      return v30;
    }

    v50 = v58;
    v51 = sub_22B3F6064();

    swift_willThrow();
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_22B3F6AC4();
    MEMORY[0x23188FF80](0xD00000000000001BLL, 0x800000022B3FC280);
    MEMORY[0x23188FF80](v54, v52);
    MEMORY[0x23188FF80](8238, 0xE200000000000000);
    v57 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A8, &qword_22B3F7A70);
    sub_22B3F6B04();
  }

  else
  {
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_22B3F6AC4();

    v58 = 0xD00000000000001ELL;
    v59 = 0x800000022B3FC260;
    MEMORY[0x23188FF80](v54, v52);
  }

  result = sub_22B3F6B14();
  __break(1u);
  return result;
}