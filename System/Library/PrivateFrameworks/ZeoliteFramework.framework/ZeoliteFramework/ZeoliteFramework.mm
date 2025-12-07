Swift::OpaquePointer_optional __swiftcall calculatePercentiles(_:percentiles:)(Swift::OpaquePointer _, Swift::OpaquePointer percentiles)
{
  v4 = sub_2751D06D0(percentiles._rawValue);
  v5 = *&v4;
  v6 = v4 & 0x100000000;
  v8 = sub_2751D0728(percentiles._rawValue);
  rawValue = _._rawValue;
  v11 = 0;
  if (*(rawValue + 2))
  {
    v12 = v6 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12 || (v5 >= 0.0 ? (v13 = (v8 & 0x100000000) == 0) : (v13 = 0), (v9.n128_u32[0] = 1120403456, v13) ? (v14 = *&v8 > 100.0) : (v14 = 1), v14))
  {
LABEL_38:
    v31 = v11;
    goto LABEL_50;
  }

  v32 = rawValue;
  v9;
  v15 = 0;
  sub_2751D0780(&v32);
  v16 = v32;
  v17 = *(percentiles._rawValue + 2);
  if (!v17)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_37:

    goto LABEL_38;
  }

  v18 = (*(v32 + 2) - 1);
  v19 = (percentiles._rawValue + 32);
  v20 = v32 + 32;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = (*v19 * v18) / 100.0;
    v22 = floorf(v21);
    if ((LODWORD(v22) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      break;
    }

    if (v22 <= -9.2234e18)
    {
      goto LABEL_40;
    }

    if (v22 >= 9.2234e18)
    {
      goto LABEL_41;
    }

    v23 = ceilf(v21);
    if ((LODWORD(v23) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      goto LABEL_42;
    }

    if (v23 <= -9.2234e18)
    {
      goto LABEL_43;
    }

    if (v23 >= 9.2234e18)
    {
      goto LABEL_44;
    }

    v15 = v22;
    v24 = v23;
    if (v22 == v23)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_45;
      }

      if (*(v16 + 2) <= v15)
      {
        goto LABEL_48;
      }

      v25 = *&v20[4 * v15];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_2751D09D0(0, *(v11 + 2) + 1, 1, v11);
      }
    }

    else
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      v26 = *(v16 + 2);
      if (v26 <= v15)
      {
        goto LABEL_47;
      }

      if (v26 <= v24)
      {
        goto LABEL_49;
      }

      v27 = *&v20[4 * v15];
      v28 = *&v20[4 * v24];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_2751D09D0(0, *(v11 + 2) + 1, 1, v11);
      }

      v25 = ((1.0 - (v21 - v15)) * v27) + ((v21 - v15) * v28);
    }

    v30 = *(v11 + 2);
    v29 = *(v11 + 3);
    v15 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      v11 = sub_2751D09D0((v29 > 1), v30 + 1, 1, v11);
    }

    *(v11 + 2) = v15;
    *&v11[4 * v30 + 32] = v25;
    ++v19;
    if (!--v17)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  MEMORY[0x277C6DB10](v15);

  __break(1u);
LABEL_50:
  result.value._rawValue = v31;
  result.is_nil = v7;
  return result;
}

unint64_t sub_2751D06D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v5 < v2)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

unint64_t sub_2751D0728(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t sub_2751D0780(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_275209584(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_27520C1D8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
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
      v7 = sub_27520BCF8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2751D123C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

char *sub_2751D08B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1B0, &qword_27520E510);
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

char *sub_2751D09D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1F8, &qword_27520C9D8);
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

char *sub_2751D0AE8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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

char *sub_2751D0BE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1D0, &unk_27520DE70);
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

void *sub_2751D0D30(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *sub_2751D0E8C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 16 * v10;
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

char *sub_2751D0FA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A0, &unk_27520FCD0);
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

char *sub_2751D10C8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2751D123C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2751F3A50(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_2751D1798((*a3 + 4 * *v78), (*a3 + 4 * *v80), (*a3 + 4 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
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
        v16 = 4 * v7 - 4;
        v17 = 4 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 4;
          v17 += 4;
        }

        while (v19 < v18);
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
      result = sub_2751D08B8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_2751D08B8((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
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

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_2751D1798((*a3 + 4 * *v71), (*a3 + 4 * *v73), (*a3 + 4 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 4 * v7 - 4;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 4 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 4;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
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

uint64_t sub_2751D1798(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 4)
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

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 4);
      v18 -= 4;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFFCLL)))
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

int64_t sub_2751D1990()
{
  v1 = v0;
  swift_beginAccess();
  if (*(*(v0 + 32) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD208, &unk_27520C9E0);
    v2 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v2);
    v4 = result - 40;
    if (result < 40)
    {
      v4 = result - 25;
    }

    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 16) = v4 >> 4;
    if (qword_2883F89C0)
    {
      if (qword_2883F89C0 != 1)
      {
LABEL_73:
        __break(1u);
        return result;
      }

      *(v2 + 40) = xmmword_2883F89D0;
    }

    v5 = 0;
    *(v2 + 24) = 1;
    v41 = v2;
    while (1)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2751D2550(&qword_2809AD208, &unk_27520C9E0, sub_2751D3724);
      }

      v9 = v41;
      v10 = v41[4];
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v12 = &v41[2 * v10];
      v14 = v12[5];
      v13 = v12[6];
      v15 = v41[3];
      if (v11 >= v41[2])
      {
        v11 = 0;
      }

      v41[4] = v11;
      v8 = v15 - 1;
      if (__OFSUB__(v15, 1))
      {
        goto LABEL_58;
      }

      v41[3] = v8;
      if (v13 > v5)
      {
        v5 = v13;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      v16 = *(v1 + 32);
      v17 = *(v16 + 16);
      if (v14 >= v17)
      {
        goto LABEL_60;
      }

      v18 = v16 + 56 * v14;
      if ((*(v18 + 56) & 1) == 0)
      {
        if (__OFADD__(v13, 1))
        {
          goto LABEL_62;
        }

        v19 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_63;
        }

        v20 = *(v18 + 48);
        result = swift_isUniquelyReferenced_nonNull_native();
        if (v41[2] < v19 || (result & 1) == 0)
        {
          result = sub_2751D275C(result, v19, 0);
          v9 = v41;
        }

        v22 = v9[3];
        v21 = v9[4];
        v25 = __OFADD__(v21, v22);
        v23 = v21 + v22;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v22 < 0)
        {
          if (v23 < 0)
          {
            v27 = v9[2];
            v25 = __OFADD__(v23, v27);
            v23 += v27;
            if (v25)
            {
              goto LABEL_72;
            }
          }
        }

        else
        {
          v24 = v9[2];
          v25 = __OFSUB__(v23, v24);
          v26 = v23 - v24;
          if (v26 < 0 == v25)
          {
            v23 = v26;
            if (v25)
            {
              goto LABEL_70;
            }
          }
        }

        v28 = &v9[2 * v23];
        v28[5] = v20;
        v28[6] = v13 + 1;
        v29 = v9[3];
        v25 = __OFADD__(v29, 1);
        v8 = v29 + 1;
        if (v25)
        {
          goto LABEL_66;
        }

        v9[3] = v8;
        v16 = *(v1 + 32);
        v17 = *(v16 + 16);
      }

      if (v14 >= v17)
      {
        goto LABEL_61;
      }

      v30 = v16 + 56 * v14;
      if ((*(v30 + 72) & 1) == 0)
      {
        v25 = __OFADD__(v13, 1);
        v31 = v13 + 1;
        if (v25)
        {
          goto LABEL_65;
        }

        v32 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_67;
        }

        v33 = *(v30 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        if (v9[2] < v32 || (result & 1) == 0)
        {
          result = sub_2751D275C(result, v32, 0);
        }

        v35 = v41[3];
        v34 = v41[4];
        v25 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v25)
        {
          goto LABEL_68;
        }

        if (v35 < 0)
        {
          if (v36 < 0)
          {
            v40 = v41[2];
            v25 = __OFADD__(v36, v40);
            v36 += v40;
            if (v25)
            {
              __break(1u);
LABEL_54:

              return v5;
            }
          }
        }

        else
        {
          v37 = v41[2];
          v38 = __OFSUB__(v36, v37);
          v39 = v36 - v37;
          if (v39 < 0 == v38)
          {
            v36 = v39;
            if (v38)
            {
              goto LABEL_71;
            }
          }
        }

        v6 = &v41[2 * v36];
        v6[5] = v33;
        v6[6] = v31;
        v7 = v41[3];
        v25 = __OFADD__(v7, 1);
        v8 = v7 + 1;
        if (v25)
        {
          goto LABEL_69;
        }

        v41[3] = v8;
      }

      if (!v8)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  return 0;
}

int64_t sub_2751D1CA8()
{
  v1 = v0;
  swift_beginAccess();
  if (*(*(v0 + 32) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD208, &unk_27520C9E0);
    v2 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v2);
    v4 = result - 40;
    if (result < 40)
    {
      v4 = result - 25;
    }

    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 16) = v4 >> 4;
    if (qword_2883F89F0)
    {
      if (qword_2883F89F0 != 1)
      {
LABEL_73:
        __break(1u);
        return result;
      }

      *(v2 + 40) = xmmword_2883F8A00;
    }

    v5 = 0;
    *(v2 + 24) = 1;
    v41 = v2;
    while (1)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2751D2550(&qword_2809AD208, &unk_27520C9E0, sub_2751D3724);
      }

      v9 = v41;
      v10 = v41[4];
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v12 = &v41[2 * v10];
      v14 = v12[5];
      v13 = v12[6];
      v15 = v41[3];
      if (v11 >= v41[2])
      {
        v11 = 0;
      }

      v41[4] = v11;
      v8 = v15 - 1;
      if (__OFSUB__(v15, 1))
      {
        goto LABEL_58;
      }

      v41[3] = v8;
      if (v13 > v5)
      {
        v5 = v13;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_59;
      }

      v16 = *(v1 + 32);
      v17 = *(v16 + 16);
      if (v14 >= v17)
      {
        goto LABEL_60;
      }

      v18 = v16 + 56 * v14;
      if ((*(v18 + 56) & 1) == 0)
      {
        if (__OFADD__(v13, 1))
        {
          goto LABEL_62;
        }

        v19 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_63;
        }

        v20 = *(v18 + 48);
        result = swift_isUniquelyReferenced_nonNull_native();
        if (v41[2] < v19 || (result & 1) == 0)
        {
          result = sub_2751D275C(result, v19, 0);
          v9 = v41;
        }

        v22 = v9[3];
        v21 = v9[4];
        v25 = __OFADD__(v21, v22);
        v23 = v21 + v22;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v22 < 0)
        {
          if (v23 < 0)
          {
            v27 = v9[2];
            v25 = __OFADD__(v23, v27);
            v23 += v27;
            if (v25)
            {
              goto LABEL_72;
            }
          }
        }

        else
        {
          v24 = v9[2];
          v25 = __OFSUB__(v23, v24);
          v26 = v23 - v24;
          if (v26 < 0 == v25)
          {
            v23 = v26;
            if (v25)
            {
              goto LABEL_70;
            }
          }
        }

        v28 = &v9[2 * v23];
        v28[5] = v20;
        v28[6] = v13 + 1;
        v29 = v9[3];
        v25 = __OFADD__(v29, 1);
        v8 = v29 + 1;
        if (v25)
        {
          goto LABEL_66;
        }

        v9[3] = v8;
        v16 = *(v1 + 32);
        v17 = *(v16 + 16);
      }

      if (v14 >= v17)
      {
        goto LABEL_61;
      }

      v30 = v16 + 56 * v14;
      if ((*(v30 + 72) & 1) == 0)
      {
        v25 = __OFADD__(v13, 1);
        v31 = v13 + 1;
        if (v25)
        {
          goto LABEL_65;
        }

        v32 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_67;
        }

        v33 = *(v30 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        if (v9[2] < v32 || (result & 1) == 0)
        {
          result = sub_2751D275C(result, v32, 0);
        }

        v35 = v41[3];
        v34 = v41[4];
        v25 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v25)
        {
          goto LABEL_68;
        }

        if (v35 < 0)
        {
          if (v36 < 0)
          {
            v40 = v41[2];
            v25 = __OFADD__(v36, v40);
            v36 += v40;
            if (v25)
            {
              __break(1u);
LABEL_54:

              return v5;
            }
          }
        }

        else
        {
          v37 = v41[2];
          v38 = __OFSUB__(v36, v37);
          v39 = v36 - v37;
          if (v39 < 0 == v38)
          {
            v36 = v39;
            if (v38)
            {
              goto LABEL_71;
            }
          }
        }

        v6 = &v41[2 * v36];
        v6[5] = v33;
        v6[6] = v31;
        v7 = v41[3];
        v25 = __OFADD__(v7, 1);
        v8 = v7 + 1;
        if (v25)
        {
          goto LABEL_69;
        }

        v41[3] = v8;
      }

      if (!v8)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  return 0;
}

Swift::Int __swiftcall BinaryMetricTree.maxDepth()()
{
  v2 = v0;
  v3 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v57 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = &v52 - v8;
  v9 = 0;
  if ((*(v3 + 72))(v2, v3))
  {
    return v9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD208, &unk_27520C9E0);
  v10 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v10);
  v12 = result - 40;
  if (result < 40)
  {
    v12 = result - 25;
  }

  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = v12 >> 4;
  if (!qword_2883F8A20)
  {
    goto LABEL_7;
  }

  if (qword_2883F8A20 == 1)
  {
    *(v10 + 40) = xmmword_2883F8A30;
LABEL_7:
    *(v10 + 24) = 1;
    v63 = *(v3 + 64);
    v64 = v3 + 64;
    v65 = v10;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v9 = 0;
    v55 = *(AssociatedConformanceWitness + 8);
    v56 = AssociatedConformanceWitness + 8;
    v62 = AssociatedConformanceWitness;
    v53 = *(AssociatedConformanceWitness + 16);
    v54 = AssociatedConformanceWitness + 16;
    v61 = (v5 + 8);
    v52 = AssociatedTypeWitness;
    while (1)
    {
      v14 = v65;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2751D2550(&qword_2809AD208, &unk_27520C9E0, sub_2751D3724);
        v14 = v65;
      }

      v15 = v14[4];
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v17 = v14[2 * v15 + 6];
      v18 = v14[3];
      if (v16 >= v14[2])
      {
        v16 = 0;
      }

      v14[4] = v16;
      if (__OFSUB__(v18, 1))
      {
        goto LABEL_52;
      }

      v14[3] = v18 - 1;
      if (v17 > v9)
      {
        v9 = v17;
      }

      v60 = v9;
      v63(v2, v3);
      v19 = v58;
      sub_27520BDA8();

      v59 = v55(AssociatedTypeWitness, v62);
      v21 = v20;
      v22 = *v61;
      result = (*v61)(v19, AssociatedTypeWitness);
      if ((v21 & 1) == 0)
      {
        if (__OFADD__(v17, 1))
        {
          goto LABEL_53;
        }

        v23 = v14[3];
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_54;
        }

        v14 = v65;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (v14[2] < v24 || (result & 1) == 0)
        {
          result = sub_2751D275C(result, v24, 0);
          v14 = v65;
        }

        v26 = v14[3];
        v25 = v14[4];
        v29 = __OFADD__(v25, v26);
        v27 = v25 + v26;
        if (v29)
        {
          goto LABEL_55;
        }

        if (v26 < 0)
        {
          if (v27 < 0)
          {
            v31 = v14[2];
            v29 = __OFADD__(v27, v31);
            v27 += v31;
            if (v29)
            {
              goto LABEL_63;
            }
          }
        }

        else
        {
          v28 = v14[2];
          v29 = __OFSUB__(v27, v28);
          v30 = v27 - v28;
          if (v30 < 0 == v29)
          {
            v27 = v30;
            if (v29)
            {
              goto LABEL_61;
            }
          }
        }

        v32 = &v14[2 * v27];
        v32[5] = v59;
        v32[6] = v17 + 1;
        v33 = v14[3];
        v29 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v29)
        {
          goto LABEL_58;
        }

        v14[3] = v34;
        AssociatedTypeWitness = v52;
      }

      v63(v2, v3);
      v35 = v57;
      sub_27520BDA8();

      v36 = v53(AssociatedTypeWitness, v62);
      v38 = v37;
      result = v22(v35, AssociatedTypeWitness);
      if (v38)
      {
        v9 = v60;
        if (!v14[3])
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (__OFADD__(v17, 1))
        {
          goto LABEL_56;
        }

        v39 = v14[3];
        v40 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_57;
        }

        v41 = v65;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (v41[2] < v40 || (result & 1) == 0)
        {
          result = sub_2751D275C(result, v40, 0);
          v41 = v65;
        }

        v43 = v41[3];
        v42 = v41[4];
        v29 = __OFADD__(v42, v43);
        v44 = v42 + v43;
        if (v29)
        {
          goto LABEL_59;
        }

        if (v43 < 0)
        {
          AssociatedTypeWitness = v52;
          if (v44 < 0)
          {
            v48 = v41[2];
            v29 = __OFADD__(v44, v48);
            v44 += v48;
            if (v29)
            {
              goto LABEL_64;
            }
          }
        }

        else
        {
          v45 = v41[2];
          v46 = __OFSUB__(v44, v45);
          v47 = v44 - v45;
          AssociatedTypeWitness = v52;
          if (v47 < 0 == v46)
          {
            v44 = v47;
            if (v46)
            {
              goto LABEL_62;
            }
          }
        }

        v49 = &v41[2 * v44];
        v49[5] = v36;
        v49[6] = v17 + 1;
        v50 = v41[3];
        v29 = __OFADD__(v50, 1);
        v51 = v50 + 1;
        if (v29)
        {
          goto LABEL_60;
        }

        v41[3] = v51;
        v9 = v60;
        if (!v51)
        {
LABEL_49:

          return v9;
        }
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2751D2550(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t *, uint64_t))
{
  v5 = *v3;
  v6 = (*v3 + 16);
  v7 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = swift_allocObject();
  v9 = *(v5 + 24);
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  if (v9 >= 1)
  {
    a3(v8 + 16, v8 + 40, v6, v5 + 40);
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2751D2604()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD218, &qword_27520CA30);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_2751D38F8(v4 + 16, (v4 + 40), v2, (v1 + 40));
  }

  *v0 = v4;
  return result;
}

uint64_t sub_2751D26C0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *v3;
  v6 = (*v3 + 16);
  v7 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = swift_allocObject();
  v9 = *(v5 + 24);
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  if (v9 >= 1)
  {
    sub_2751D39E0(v8 + 16, v8 + 40, v6, v5 + 40, a3);
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2751D275C(char a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD208, &unk_27520C9E0);
    v9 = swift_allocObject();
    v12 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v12;
    if (v12 >= 1)
    {
      sub_2751D3724(v9 + 16, (v9 + 40), v5, (v4 + 40));
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD238, &qword_27520CA50);
    sub_27520BA88();
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD208, &unk_27520C9E0);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 40;
      if (v10 < 40)
      {
        v11 = v10 - 25;
      }

      *(v9 + 16) = v11 >> 4;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_2751D2E98(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD208, &unk_27520C9E0);
      v9 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v9);
      v14 = v13 - 40;
      if (v13 < 40)
      {
        v14 = v13 - 25;
      }

      v15 = *(v4 + 24);
      *(v9 + 16) = v14 >> 4;
      *(v9 + 24) = v15;
      *(v9 + 32) = 0;
      if (v15 >= 1)
      {
        sub_2751D334C(v9 + 16, (v9 + 40), v5, (v4 + 40));
      }
    }
  }

  *v3 = v9;
  return result;
}

uint64_t sub_2751D2924(char a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD228, &unk_27520CA40);
    v9 = swift_allocObject();
    v12 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v12;
    if (v12 >= 1)
    {
      sub_2751D380C(v9 + 16, (v9 + 40), v5, (v4 + 40));
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
    sub_27520BA88();
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD228, &unk_27520CA40);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 40;
      if (v10 < 40)
      {
        v11 = v10 - 25;
      }

      *(v9 + 16) = v11 >> 4;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_2751D2FC0(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD228, &unk_27520CA40);
      v9 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v9);
      v14 = v13 - 40;
      if (v13 < 40)
      {
        v14 = v13 - 25;
      }

      v15 = *(v4 + 24);
      *(v9 + 16) = v14 >> 4;
      *(v9 + 24) = v15;
      *(v9 + 32) = 0;
      if (v15 >= 1)
      {
        sub_2751D3444(v9 + 16, (v9 + 40), v5, (v4 + 40));
      }
    }
  }

  *v3 = v9;
  return result;
}

uint64_t sub_2751D2B08(char a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = (*v3 + 16);
  v6 = *v5;
  if (*v5 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD218, &qword_27520CA30);
    v9 = swift_allocObject();
    v12 = *(v4 + 24);
    *(v9 + 16) = v6;
    *(v9 + 24) = v12;
    if (v12 >= 1)
    {
      sub_2751D38F8(v9 + 16, (v9 + 40), v5, (v4 + 40));
    }
  }

  else
  {
    sub_27520BA88();
    if (a1)
    {
      v8 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD218, &qword_27520CA30);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 40;
      if (v10 < 40)
      {
        v11 = v10 - 33;
      }

      *(v9 + 16) = v11 >> 3;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_2751D30E8(v9 + 16, (v9 + 40), v5, (v4 + 40));
        *(v4 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD218, &qword_27520CA30);
      v9 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v9);
      v14 = v13 - 40;
      if (v13 < 40)
      {
        v14 = v13 - 33;
      }

      v15 = *(v4 + 24);
      *(v9 + 16) = v14 >> 3;
      *(v9 + 24) = v15;
      *(v9 + 32) = 0;
      if (v15 >= 1)
      {
        sub_2751D3540(v9 + 16, (v9 + 40), v5, (v4 + 40));
      }
    }
  }

  *v3 = v9;
  return result;
}

uint64_t sub_2751D2CD0(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = *v6;
  v11 = (*v6 + 16);
  v12 = *v11;
  if (*v11 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v15 = swift_allocObject();
    v16 = *(v10 + 24);
    *(v15 + 16) = v12;
    *(v15 + 24) = v16;
    if (v16 >= 1)
    {
      sub_2751D39E0(v15 + 16, v15 + 40, v11, v10 + 40, a4);
    }
  }

  else
  {
    sub_27520BA88();
    if (a1)
    {
      v14 = *(v10 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = swift_allocObject();
      *(v15 + 16) = (_swift_stdlib_malloc_size(v15) - 40) / 24;
      *(v15 + 24) = v14;
      *(v15 + 32) = 0;
      if (v14 >= 1)
      {
        sub_2751D3210(v15 + 16, (v15 + 40), v11, (v10 + 40));
        *(v10 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v15);
      v18 = *(v10 + 24);
      *(v15 + 16) = (v17 - 40) / 24;
      *(v15 + 24) = v18;
      *(v15 + 32) = 0;
      if (v18 >= 1)
      {
        sub_2751D3638(v15 + 16, v15 + 40, v11, v10 + 40, a4);
      }
    }
  }

  *v6 = v15;
  return result;
}

void sub_2751D2E98(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[16 * v4];
  if (v12 != __dst || &v12[16 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 16 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[16 * v8];
  if (v16 != v11 || v16 >= &v11[16 * v7])
  {

    memmove(v16, v11, 16 * v7);
  }
}

void sub_2751D2FC0(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[16 * v4];
  if (v12 != __dst || &v12[16 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 16 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[16 * v8];
  if (v16 != v11 || v16 >= &v11[16 * v7])
  {

    memmove(v16, v11, 16 * v7);
  }
}

void sub_2751D30E8(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[8 * v4];
  if (v12 != __dst || &v12[8 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 8 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[8 * v8];
  if (v16 != v11 || v16 >= &v11[8 * v7])
  {

    memmove(v16, v11, 8 * v7);
  }
}

void sub_2751D3210(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = &a4[24 * v4];
  if (v12 != __dst || &v12[24 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 24 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v16 = &__dst[24 * v8];
  v17 = 24 * v7;
  if (v16 != v11 || v16 >= &v11[v17])
  {

    memmove(v16, v11, v17);
  }
}

void sub_2751D334C(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  memcpy(__dst, &__src[16 * v4], 16 * v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[16 * v9], v10, 16 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

void sub_2751D3444(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = 16 * v9;
  memcpy(__dst, &__src[16 * v4], 16 * v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[v11], v10, 16 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

void sub_2751D3540(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  memcpy(__dst, &__src[8 * v4], 8 * v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[8 * v9], v10, 8 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_2751D3638(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  if (v6 < v7)
  {
    v8 = v7 - v6;
    if (!__OFSUB__(v7, v6))
    {
      v9 = a4;
      if (v6 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = 0;
  v8 = 0;
  if (v7 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v6 < v7 && v8 >= 1)
  {
    if (v9)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_2751D3724(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (__src)
    {
      memcpy(&__dst[16 * v4], &__src[16 * v4], 16 * v9);
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(__dst, v10, 16 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

void sub_2751D380C(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (__src)
    {
      memcpy(&__dst[16 * v4], &__src[16 * v4], 16 * v9);
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(__dst, v10, 16 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

void sub_2751D38F8(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (__src)
    {
      memcpy(&__dst[8 * v4], &__src[8 * v4], 8 * v9);
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(__dst, v10, 8 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_2751D39E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  if (v6 >= v7)
  {
    v9 = 0;
    v8 = 0;
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = a4;
  if (v6 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v6 < v7 && v8 >= 1)
  {
    if (v9)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void *sub_2751D3B28(void *result, void *__dst, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = *(a4 + 16);
    if (!v6)
    {
LABEL_5:
      v5[1] = a3;
      return result;
    }

    if (v6 <= a3)
    {
      result = memcpy(__dst, (a4 + 32), 16 * v6);
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void *sub_2751D3B90(void *result, void *__dst, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = *(a4 + 16);
    if (!v6)
    {
LABEL_5:
      v5[1] = a3;
      return result;
    }

    if (v6 <= a3)
    {
      result = memcpy(__dst, (a4 + 32), 8 * v6);
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t JSONLinesLoader.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a1;
  v30 = a2;
  v31 = a6;
  v9 = sub_27520B6D8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_27520B6E8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for JSONLinesLoader(0, a3, a4, a5);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v28 - v20);
  *(&v28 - v20 + 24) = 0;
  v22 = *(v19 + 52);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD240, &qword_27520CA70);
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  *(v21 + *(v17 + 56)) = 0;
  v24 = v30;
  *v21 = v29;
  v21[1] = v24;
  sub_27520B738();
  swift_allocObject();
  v25 = sub_27520B728();
  (*(v14 + 104))(v16, *MEMORY[0x277CC86D0], v13);
  sub_27520B708();
  (*(v10 + 104))(v12, *MEMORY[0x277CC86B0], v9);
  sub_27520B6F8();
  v21[2] = v25;
  v26 = v31;
  (*(v18 + 32))(v31, v21, v17);
  return (*(v18 + 56))(v26, 0, 1, v17);
}

uint64_t JSONLinesLoader.next()(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = *(a2 + 16);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD248, &unk_27520CA80);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_27520BEB8();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD250, &unk_27520D850);
  v3[16] = swift_task_alloc();
  v7 = sub_27520B7F8();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD258, qword_27520CA90);
  v3[20] = swift_task_alloc();
  v8 = sub_27520B828();
  v3[21] = v8;
  v3[22] = *(v8 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2751D4208, 0, 0);
}

uint64_t sub_2751D4208()
{
  sub_27520BE08();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v1 + 56);
  *(v0 + 232) = v3;
  v4 = *(v2 + v3);
  *(v0 + 192) = v4;
  if (!v4)
  {
    v17 = *(v0 + 176);
    v16 = *(v0 + 184);
    v19 = *(v0 + 160);
    v18 = *(v0 + 168);
    v21 = *(v0 + 144);
    v20 = *(v0 + 152);
    v22 = *(v0 + 136);
    sub_2751D59E8();
    (*(v17 + 56))(v19, 1, 1, v18);
    v23.n128_f64[0] = (*(v21 + 104))(v20, *MEMORY[0x277CC91D8], v22);
    v23;
    sub_27520B818();
    v24 = sub_2751D4F04(v16);
    if (!v24)
    {
LABEL_17:
      (*(*(v0 + 64) + 56))(*(v0 + 32), 1, 1, *(v0 + 56));

      v38 = *(v0 + 8);

      return v38();
    }

    v26 = *(v0 + 120);
    v27 = *(v0 + 104);
    v28 = *(v0 + 112);
    v30 = *(v0 + 88);
    v29 = *(v0 + 96);
    v40 = *(v0 + 80);
    v41 = *(v0 + 128);
    v31 = *(v0 + 48);
    v42 = *(v0 + 40);
    v32 = *(v31 + 24);
    v33 = v24;
    v34 = v24;

    *(v31 + 24) = v33;
    sub_27520BEC8();

    sub_2751D5A34();
    sub_27520BE18();
    (*(v28 + 8))(v26, v27);
    sub_27520B7C8();
    (*(v30 + 8))(v29, v40);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD240, &qword_27520CA70);
    (*(*(v35 - 8) + 56))(v41, 0, 1, v35);
    sub_2751D5A8C(v41, v31 + *(v42 + 52));
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
  }

  v5 = *(v1 + 52);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD240, &qword_27520CA70);
  if ((*(*(v6 - 8) + 48))(v2 + v5, 1, v6))
  {
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v7 = sub_27520BAB8();
    __swift_project_value_buffer(v7, qword_2809B38E8);
    v8 = sub_27520BA98();
    v9 = sub_27520BEE8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2751CF000, v8, v9, "Reached the end of the file.", v10, 2u);
      MEMORY[0x277C6DCC0](v10, -1, -1);
    }

    v11 = *(v0 + 48);

    v12 = *(v11 + 24);
    if (v12)
    {
      *(v0 + 16) = 0;
      v13 = [v12 closeAndReturnError_];
      v14 = *(v0 + 16);
      if (v13)
      {
        v15 = v14;
      }

      else
      {
        v36 = v14;
        v37 = sub_27520B7E8();

        swift_willThrow();
        MEMORY[0x277C6DB10](v37);
      }
    }

    goto LABEL_17;
  }

  v25 = swift_task_alloc();
  *(v0 + 200) = v25;
  *v25 = v0;
  v25[1] = sub_2751D4748;

  return MEMORY[0x28211C2E8](v6);
}

uint64_t sub_2751D4748(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[26] = a1;
  v4[27] = a2;
  v4[28] = v2;

  if (v2)
  {
    MEMORY[0x277C6DB10](v2);
    v5 = sub_2751D4CF0;
  }

  else
  {
    v5 = sub_2751D4894;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2751D4894(__n128 a1, __n128 a2)
{
  v3 = *(v2 + 216);
  if (!v3)
  {
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v21 = sub_27520BAB8();
    __swift_project_value_buffer(v21, qword_2809B38E8);
    v22 = sub_27520BA98();
    v23 = sub_27520BEE8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2751CF000, v22, v23, "Reached the end of the file.", v24, 2u);
      MEMORY[0x277C6DCC0](v24, -1, -1);
    }

    v25 = *(v2 + 48);

    v26 = *(v25 + 24);
    if (!v26)
    {
      goto LABEL_24;
    }

    *(v2 + 16) = 0;
    v27 = [v26 closeAndReturnError_];
    v28 = *(v2 + 16);
    if (v27)
    {
      v29 = v28;
LABEL_24:
      (*(*(v2 + 64) + 56))(*(v2 + 32), 1, 1, *(v2 + 56));
      goto LABEL_25;
    }

    v38 = v28;
    v37 = sub_27520B7E8();

    swift_willThrow();
    goto LABEL_22;
  }

  v4 = *(v2 + 224);
  v5 = sub_2751D505C(*(v2 + 208), v3, a1, a2);
  v7 = v6;
  sub_27520B718();
  if (v4)
  {
    v8 = v4;
    sub_2751D5994(v5, v7);
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v9 = sub_27520BAB8();
    __swift_project_value_buffer(v9, qword_2809B38E8);
    MEMORY[0x277C6DB20](v4);
    v10 = sub_27520BA98();
    v11 = sub_27520BEF8();
    MEMORY[0x277C6DB10](v8);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      MEMORY[0x277C6DB20](v8);
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&dword_2751CF000, v10, v11, "Failed at parsing data: %@", v12, 0xCu);
      sub_2751D5E78(v13, &qword_2809AD260, &unk_27520DDE0);
      MEMORY[0x277C6DCC0](v13, -1, -1);
      MEMORY[0x277C6DCC0](v12, -1, -1);
    }

    v15 = *(v2 + 48);

    v16 = *(v15 + 24);
    if (!v16)
    {
      goto LABEL_10;
    }

    *(v2 + 24) = 0;
    v17 = [v16 closeAndReturnError_];
    v18 = *(v2 + 24);
    if (v17)
    {
      v19 = v18;
LABEL_10:
      v20 = v8;
LABEL_23:
      MEMORY[0x277C6DB10](v20);
      goto LABEL_24;
    }

    v36 = v18;
    v37 = sub_27520B7E8();

    swift_willThrow();
    MEMORY[0x277C6DB10](v8);
LABEL_22:
    v20 = v37;
    goto LABEL_23;
  }

  v30 = *(v2 + 192);
  sub_2751D5994(v5, v7);
  v31 = v30 + 1;
  if (__OFADD__(v30, 1))
  {
    __break(1u);
  }

  v33 = *(v2 + 64);
  v32 = *(v2 + 72);
  v34 = *(v2 + 56);
  v35 = *(v2 + 32);
  *(*(v2 + 48) + *(v2 + 232)) = v31;
  (*(v33 + 32))(v35, v32, v34);
  (*(v33 + 56))(v35, 0, 1, v34);
LABEL_25:

  v39 = *(v2 + 8);

  return v39();
}

uint64_t sub_2751D4CF0()
{
  if (qword_2809AD190 != -1)
  {
    swift_once();
  }

  v1 = sub_27520BAB8();
  __swift_project_value_buffer(v1, qword_2809B38E8);
  v2 = sub_27520BA98();
  v3 = sub_27520BEE8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2751CF000, v2, v3, "Reached the end of the file.", v4, 2u);
    MEMORY[0x277C6DCC0](v4, -1, -1);
  }

  v5 = v0[6];

  v6 = *(v5 + 24);
  if (v6)
  {
    v0[2] = 0;
    v7 = [v6 closeAndReturnError_];
    v8 = v0[2];
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v10 = v8;
      v11 = sub_27520B7E8();

      swift_willThrow();
      MEMORY[0x277C6DB10](v11);
    }
  }

  (*(v0[8] + 56))(v0[4], 1, 1, v0[7]);

  v12 = v0[1];

  return v12();
}

id sub_2751D4F04(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_27520B808();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_27520B828();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_27520B7E8();

    swift_willThrow();
    v9 = sub_27520B828();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_2751D505C(uint64_t a1, unint64_t a2, __n128 a3, __n128 a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v41[0] = a1;
  v41[1] = a2;
  *&v44 = a1;
  *(&v44 + 1) = a2;
  a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD308, &qword_27520CB68);
  if (swift_dynamicCast())
  {
    sub_2751D67EC(__src, &v45);
    __swift_project_boxed_opaque_existential_1(&v45, v46);
    sub_27520B7B8();
    __src[0] = v44;
    __swift_destroy_boxed_opaque_existential_1(&v45);
    goto LABEL_63;
  }

  v43 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2751D5E78(__src, &qword_2809AD310, &unk_27520CB70);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v6 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = sub_27520BFA8();
  }

  sub_2751D5ED8(&v45, v6, v7);
  v8 = *(&v45 + 1);
  v9 = v45;
  if (*(&v45 + 1) >> 60 != 15)
  {
    __src[0] = v45;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2751D667C(v10);
  *(&__src[0] + 1) = v11;
  MEMORY[0x28223BE20](*&__src[0]);
  v36[2] = v41;
  v12 = sub_2751D5FA0(sub_2751D671C, v36);
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v19 == 2)
    {
      v21 = *(*&__src[0] + 16);
      v20 = *(*&__src[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v23 = v20 - v21;
      if (v22)
      {
        goto LABEL_70;
      }

      if (v15 != v23)
      {
        goto LABEL_23;
      }
    }

    else if (v15)
    {
      v24 = 0;
      goto LABEL_60;
    }
  }

  else if (v19)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v15 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v19 == 2)
      {
        v24 = *(*&__src[0] + 24);
      }

      else if (v19 == 1)
      {
        v24 = *&__src[0] >> 32;
      }

      else
      {
        v24 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v24 >= v15)
      {
        sub_27520B858();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v15 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v38 = v9;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v25 = v12 & 0xFFFFFFFFFFFFLL;
  }

  *(&v44 + 7) = 0;
  *&v44 = 0;
  if (4 * v25 == v14 >> 14)
  {
    goto LABEL_57;
  }

  v37 = v8;
  LOBYTE(v26) = 0;
  v27 = (v12 >> 59) & 1;
  if ((v13 & 0x1000000000000000) == 0)
  {
    LOBYTE(v27) = 1;
  }

  v28 = 4 << v27;
  v39 = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v40 = v13 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v29 = v18 & 0xC;
    v30 = v18;
    if (v29 == v28)
    {
      v30 = sub_2751D64F8(v18, v16, v17);
    }

    v31 = v30 >> 16;
    if (v30 >> 16 >= v25)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v10 = sub_27520BBF8();
      v9 = 0;
      v8 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v17 & 0x1000000000000000) != 0)
    {
      v33 = sub_27520BC28();
      if (v29 != v28)
      {
        goto LABEL_46;
      }
    }

    else if ((v17 & 0x2000000000000000) != 0)
    {
      *&v45 = v16;
      *(&v45 + 1) = v40;
      v33 = *(&v45 + v31);
      if (v29 != v28)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v32 = v39;
      if ((v16 & 0x1000000000000000) == 0)
      {
        v32 = sub_27520BFA8();
      }

      v33 = *(v32 + v31);
      if (v29 != v28)
      {
LABEL_46:
        if ((v17 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v18 = sub_2751D64F8(v18, v16, v17);
    if ((v17 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v25 <= v18 >> 16)
    {
      goto LABEL_66;
    }

    v18 = sub_27520BC08();
LABEL_52:
    *(&v44 + v26) = v33;
    v26 = v26 + 1;
    if ((v26 >> 8))
    {
      goto LABEL_65;
    }

    if (v26 == 14)
    {
      *&v45 = v44;
      *(&v45 + 6) = *(&v44 + 6);
      sub_27520B868();
      LOBYTE(v26) = 0;
    }
  }

  while (4 * v25 != v18 >> 14);
  v8 = v37;
  if (v26)
  {
    *&v45 = v44;
    *(&v45 + 6) = *(&v44 + 6);
    sub_27520B868();
    sub_2751D67D8(v38, v8);
    goto LABEL_62;
  }

LABEL_57:

  sub_2751D67D8(v38, v8);
LABEL_63:
  v34 = __src[0];
  sub_2751D6784(*&__src[0], *(&__src[0] + 1));

  sub_2751D5994(v34, *(&v34 + 1));
  return v34;
}

uint64_t sub_2751D557C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2751D5624;

  return JSONLinesLoader.next()(a1, a2);
}

uint64_t sub_2751D5624()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2751D5718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_2751D57EC;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_2751D57EC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_2751D58FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  JSONLinesLoader.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2751D5994(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_2751D59E8()
{
  result = qword_2809AD268;
  if (!qword_2809AD268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809AD268);
  }

  return result;
}

unint64_t sub_2751D5A34()
{
  result = qword_2809AD270[0];
  if (!qword_2809AD270[0])
  {
    sub_27520BEB8();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809AD270);
  }

  return result;
}

uint64_t sub_2751D5A8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD250, &unk_27520D850);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2751D5B2C(uint64_t a1)
{
  sub_27520B738();
  if (v1 <= 0x3F)
  {
    sub_2751D5D74(319);
    if (v2 <= 0x3F)
    {
      sub_2751D5DCC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2751D5BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD250, &unk_27520D850);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2751D5CC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD250, &unk_27520D850);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2751D5D74(uint64_t a1)
{
  if (!qword_2809AD2F8)
  {
    sub_2751D59E8();
    v1 = sub_27520BF08();
    if (!v2)
    {
      atomic_store(v1, &qword_2809AD2F8);
    }
  }
}

void sub_2751D5DCC(uint64_t a1)
{
  if (!qword_2809AD300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809AD240, &qword_27520CA70);
    v1 = sub_27520BF08();
    if (!v2)
    {
      atomic_store(v1, &qword_2809AD300);
    }
  }
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

uint64_t sub_2751D5E78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_2751D5ED8@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_2751D65C4(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_27520B7A8();
      swift_allocObject();
      v8 = sub_27520B758();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_27520B848();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_2751D5FA0(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_2751D5994(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_2751D5994(v7, v6);
    *v4 = xmmword_27520CA60;
    sub_2751D5994(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_27520B768() && __OFSUB__(v7, sub_27520B798()))
      {
LABEL_26:
        __break(1u);
      }

      sub_27520B7A8();
      swift_allocObject();
      v14 = sub_27520B748();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_2751D6444(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_2751D5994(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_27520CA60;
    sub_2751D5994(0, 0xC000000000000000);
    sub_27520B838();
    result = sub_2751D6444(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_2751D6344@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2751D65C4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2751D6894(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2751D6910(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2751D63D8(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_2751D6444(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_27520B768();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_27520B798();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_27520B788();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_2751D64F8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_27520BC38();
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
    v5 = MEMORY[0x277C6D130](15, a1 >> 16);
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

uint64_t sub_2751D6574@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_27520BF78();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2751D65C4(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_2751D667C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_27520B7A8();
      swift_allocObject();
      sub_27520B778();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_27520B848();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_2751D671C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2751D63D8(sub_2751D6994, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_2751D6784(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2751D67D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2751D5994(result, a2);
  }

  return result;
}

uint64_t sub_2751D67EC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2751D6894(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_27520B7A8();
  swift_allocObject();
  result = sub_27520B758();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_27520B848();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2751D6910(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_27520B7A8();
  swift_allocObject();
  result = sub_27520B758();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t EmbeddingItem.embeddingModel.getter(__n128 a1, __n128 a2)
{
  v3 = *(v2 + 16);
  a1;
  return v3;
}

uint64_t EmbeddingItem.sourceType.getter(__n128 a1, __n128 a2)
{
  v3 = *(v2 + 32);
  a1;
  return v3;
}

uint64_t EmbeddingItem.init(itemId:embedding:embeddingModel:sourceType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_2751D6AAC()
{
  v1 = 0x64496D657469;
  v2 = 0x6E69646465626D65;
  if (*v0 != 2)
  {
    v2 = 0x7954656372756F73;
  }

  if (*v0)
  {
    v1 = 0x6E69646465626D65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2751D6B38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2751D9BB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2751D6B78(uint64_t a1)
{
  v2 = sub_2751D6E20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2751D6BB4(uint64_t a1)
{
  v2 = sub_2751D6E20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmbeddingItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD318, &unk_27520CB80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v12[3] = v1[2];
  v13 = v8;
  v10 = v1[5];
  v12[1] = v1[4];
  v12[2] = v9;
  v12[0] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751D6E20();
  sub_27520C2B8();
  v18 = 0;
  sub_27520C1B8();
  if (!v2)
  {
    v14 = v13;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1F0, &qword_27520DE80);
    sub_2751D7154(&qword_2809AD328, MEMORY[0x277D83AA0], MEMORY[0x277D83948]);
    sub_27520C1A8();
    v16 = 2;
    sub_27520C138();
    v15 = 3;
    sub_27520C138();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2751D6E20()
{
  result = qword_2809AD320;
  if (!qword_2809AD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD320);
  }

  return result;
}

uint64_t EmbeddingItem.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD330, &qword_27520CB90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751D6E20();
  sub_27520C2A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v9 = sub_27520C118();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1F0, &qword_27520DE80);
  v27 = 1;
  sub_2751D7154(&qword_2809AD338, MEMORY[0x277D83AC8], MEMORY[0x277D83978]);
  sub_27520C108();
  v10 = v24;
  v26 = 2;
  v22 = sub_27520C098();
  v23 = v12;
  v25 = 3;
  v13 = sub_27520C098();
  v15 = v14;
  v16 = *(v6 + 8);
  v21 = v13;
  v17.n128_f64[0] = v16(v8, v5);
  *a2 = v9;
  a2[1] = v10;
  v18 = v23;
  a2[2] = v22;
  a2[3] = v18;
  a2[4] = v21;
  a2[5] = v15;
  v17;
  v19;
  v20;
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2751D7154(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809AD1F0, &qword_27520DE80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t NNScore.k.getter()
{
  if (*(v0[1] + 16) >= *(*v0 + 16))
  {
    return *(*v0 + 16);
  }

  else
  {
    return *(v0[1] + 16);
  }
}

uint64_t static NNScore.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  result = a1[1];
  v6 = a2[1];
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return sub_2751D72DC(result, v6);
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      return sub_2751D72DC(result, v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2751D7280(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2751D72DC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2751D7338()
{
  if (*v0)
  {
    return 0x69646E494B706F74;
  }

  else
  {
    return 0x726F63534B706F74;
  }
}

uint64_t sub_2751D7380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F63534B706F74 && a2 == 0xEA00000000007365;
  if (v6 || (sub_27520C218() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69646E494B706F74 && a2 == 0xEB00000000736563)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_27520C218();

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

uint64_t sub_2751D7468(uint64_t a1)
{
  v2 = sub_2751D7700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2751D74A4(uint64_t a1)
{
  v2 = sub_2751D7700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NNScore.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD340, &qword_27520CB98);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751D7700();
  v9;
  sub_27520C2B8();
  v13 = v8;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1F0, &qword_27520DE80);
  sub_2751D7154(&qword_2809AD328, MEMORY[0x277D83AA0], MEMORY[0x277D83948]);
  sub_27520C1A8();

  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD350, &qword_27520CBA0);
    sub_2751D7754(&qword_2809AD358, MEMORY[0x277D83B90], MEMORY[0x277D83948]);
    sub_27520C1A8();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2751D7700()
{
  result = qword_2809AD348;
  if (!qword_2809AD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD348);
  }

  return result;
}

uint64_t sub_2751D7754(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809AD350, &qword_27520CBA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t NNScore.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD360, &qword_27520CBA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751D7700();
  sub_27520C2A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1F0, &qword_27520DE80);
  v15 = 0;
  sub_2751D7154(&qword_2809AD338, MEMORY[0x277D83AC8], MEMORY[0x277D83978]);
  sub_27520C108();
  v9 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD350, &qword_27520CBA0);
  v15 = 1;
  sub_2751D7754(&qword_2809AD368, MEMORY[0x277D83BB8], MEMORY[0x277D83978]);
  sub_27520C108();
  (*(v6 + 8))(v8, v5);
  v10 = v16;
  *a2 = v9;
  a2[1] = v10;
  v11;
  v12;
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2751D7A68(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_2751D7280(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_2751D72DC(v2, v3);
}

void __swiftcall ScoreStatistics.init(nnScore:)(ZeoliteFramework::ScoreStatistics *__return_ptr retstr, ZeoliteFramework::NNScore nnScore)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = *nnScore.topKScores._rawValue;
  v4 = calculatePercentiles(_:percentiles:)(*nnScore.topKScores._rawValue, &unk_2883F8A40);
  v5 = 0.0;
  if (v4)
  {
    if (!*(v4 + 16))
    {
      __break(1u);
    }

    v5 = *(v4 + 32);
  }

  v6 = sub_2751D06D0(v3);
  if ((v6 & 0x100000000) != 0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = *&v6;
  }

  v8 = sub_2751D0728(v3);
  v9.n128_u32[0] = v8;
  if ((v8 & 0x100000000) != 0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = *&v8;
  }

  v11 = *(v3 + 16);
  LODWORD(v16[0]) = 2143289344;
  v9;
  vDSP_meanv((v3 + 32), 1, v16, v11);
  v12 = *v16;

  v16[0] = v3;
  v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1F0, &qword_27520DE80);
  sub_2751D7C4C();
  sub_27520B6A8();
  v15 = v14;

  swift_bridgeObjectRelease_n();
  retstr->min = v7;
  retstr->max = v10;
  retstr->mean = v12;
  retstr->standardDeviation = v15;
  retstr->median = v5;
}

unint64_t sub_2751D7C4C()
{
  result = qword_2809AD370;
  if (!qword_2809AD370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809AD1F0, &qword_27520DE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD370);
  }

  return result;
}

uint64_t sub_2751D7CB4()
{
  v1 = *v0;
  sub_27520C278();
  MEMORY[0x277C6D7A0](v1);
  return sub_27520C298();
}

uint64_t sub_2751D7CFC(uint64_t a1)
{
  v2 = *v1;
  sub_27520C278();
  MEMORY[0x277C6D7A0](v2);
  return sub_27520C298();
}

uint64_t sub_2751D7D40()
{
  v1 = *v0;
  v2 = 7235949;
  v3 = 1851876717;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x6E616964656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7889261;
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

uint64_t sub_2751D7DC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2751D9D28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2751D7DF8(uint64_t a1)
{
  v2 = sub_2751D8DC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2751D7E34(uint64_t a1)
{
  v2 = sub_2751D8DC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScoreStatistics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD378, &qword_27520CBB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751D8DC4();
  sub_27520C2B8();
  v13 = 0;
  sub_27520C188();
  if (!v1)
  {
    v12 = 1;
    sub_27520C188();
    v11 = 2;
    sub_27520C188();
    v10 = 3;
    sub_27520C188();
    v9 = 4;
    sub_27520C188();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ScoreStatistics.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD388, &qword_27520CBB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751D8DC4();
  sub_27520C2A8();
  if (!v2)
  {
    v20[15] = 0;
    sub_27520C0E8();
    v10 = v9;
    v20[14] = 1;
    sub_27520C0E8();
    v12 = v11;
    v20[13] = 2;
    sub_27520C0E8();
    v14 = v13;
    v20[12] = 3;
    sub_27520C0E8();
    v17 = v16;
    v20[11] = 4;
    sub_27520C0E8();
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    a2[1] = v12;
    a2[2] = v14;
    a2[3] = v17;
    a2[4] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ConversationScore.nnScore.getter@<X0>(void *a1@<X8>, __n128 a2@<Q0>)
{
  v4 = *(v3 + 16);
  *a1 = *(v3 + 8);
  a1[1] = v4;
  a2;

  return v5;
}

__n128 ConversationScore.init(conversationId:nnScore:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  result = *a2;
  *(a3 + 8) = *a2;
  return result;
}

uint64_t sub_2751D8330()
{
  if (*v0)
  {
    return 0x65726F63536E6ELL;
  }

  else
  {
    return 0x61737265766E6F63;
  }
}

uint64_t sub_2751D8378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974;
  if (v6 || (sub_27520C218() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65726F63536E6ELL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_27520C218();

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

uint64_t sub_2751D8468(uint64_t a1)
{
  v2 = sub_2751D8E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2751D84A4(uint64_t a1)
{
  v2 = sub_2751D8E18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversationScore.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD390, &qword_27520CBC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = *(v1 + 8);
  v12[0] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751D8E18();
  sub_27520C2B8();
  LOBYTE(v13) = 0;
  v8 = v12[1];
  sub_27520C1B8();
  if (!v8)
  {
    v13 = v7;
    v14 = v12[0];
    v15 = 1;
    sub_2751D8E6C();
    v9;
    v10;
    sub_27520C1A8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ConversationScore.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD3A8, &qword_27520CBC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751D8E18();
  sub_27520C2A8();
  if (!v2)
  {
    LOBYTE(v12) = 0;
    v9 = sub_27520C118();
    v13 = 1;
    sub_2751D8EC0();
    sub_27520C108();
    (*(v6 + 8))(v8, v5);
    v10 = v12;
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

ZeoliteFramework::PercentileScore __swiftcall PercentileScore.init(percentile:score:)(Swift::Float percentile, Swift::Float score)
{
  *v2 = percentile;
  v2[1] = score;
  result.score = score;
  result.percentile = percentile;
  return result;
}

uint64_t sub_2751D8898()
{
  if (*v0)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x69746E6563726570;
  }
}

uint64_t sub_2751D88D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69746E6563726570 && a2 == 0xEA0000000000656CLL;
  if (v6 || (sub_27520C218() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_27520C218();

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

uint64_t sub_2751D89B4(uint64_t a1)
{
  v2 = sub_2751D8F14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2751D89F0(uint64_t a1)
{
  v2 = sub_2751D8F14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PercentileScore.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD3B8, &qword_27520CBD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751D8F14();
  sub_27520C2B8();
  v8[15] = 0;
  sub_27520C188();
  if (!v1)
  {
    v8[14] = 1;
    sub_27520C188();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PercentileScore.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD3C8, &qword_27520CBD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751D8F14();
  sub_27520C2A8();
  if (!v2)
  {
    v16 = 0;
    sub_27520C0E8();
    v10 = v9;
    v15 = 1;
    sub_27520C0E8();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2751D8DC4()
{
  result = qword_2809AD380;
  if (!qword_2809AD380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD380);
  }

  return result;
}

unint64_t sub_2751D8E18()
{
  result = qword_2809AD398;
  if (!qword_2809AD398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD398);
  }

  return result;
}

unint64_t sub_2751D8E6C()
{
  result = qword_2809AD3A0;
  if (!qword_2809AD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD3A0);
  }

  return result;
}

unint64_t sub_2751D8EC0()
{
  result = qword_2809AD3B0;
  if (!qword_2809AD3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD3B0);
  }

  return result;
}

unint64_t sub_2751D8F14()
{
  result = qword_2809AD3C0;
  if (!qword_2809AD3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD3C0);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2751D8F7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2751D8FC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2751D902C(uint64_t *a1, int a2)
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

uint64_t sub_2751D9074(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ScoreStatistics(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScoreStatistics(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2751D9148(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2751D9190(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for PercentileScore(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PercentileScore(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ScoreStatistics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ScoreStatistics.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ClusterLabels(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ClusterLabels(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for EmbeddingItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EmbeddingItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2751D968C()
{
  result = qword_2809AD3D0;
  if (!qword_2809AD3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD3D0);
  }

  return result;
}

unint64_t sub_2751D96E4()
{
  result = qword_2809AD3D8;
  if (!qword_2809AD3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD3D8);
  }

  return result;
}

unint64_t sub_2751D973C()
{
  result = qword_2809AD3E0;
  if (!qword_2809AD3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD3E0);
  }

  return result;
}

unint64_t sub_2751D9794()
{
  result = qword_2809AD3E8;
  if (!qword_2809AD3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD3E8);
  }

  return result;
}

unint64_t sub_2751D97EC()
{
  result = qword_2809AD3F0;
  if (!qword_2809AD3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD3F0);
  }

  return result;
}

unint64_t sub_2751D9844()
{
  result = qword_2809AD3F8;
  if (!qword_2809AD3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD3F8);
  }

  return result;
}

unint64_t sub_2751D989C()
{
  result = qword_2809AD400;
  if (!qword_2809AD400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD400);
  }

  return result;
}

unint64_t sub_2751D98F4()
{
  result = qword_2809AD408;
  if (!qword_2809AD408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD408);
  }

  return result;
}

unint64_t sub_2751D994C()
{
  result = qword_2809AD410;
  if (!qword_2809AD410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD410);
  }

  return result;
}

unint64_t sub_2751D99A4()
{
  result = qword_2809AD418;
  if (!qword_2809AD418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD418);
  }

  return result;
}

unint64_t sub_2751D99FC()
{
  result = qword_2809AD420;
  if (!qword_2809AD420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD420);
  }

  return result;
}

unint64_t sub_2751D9A54()
{
  result = qword_2809AD428;
  if (!qword_2809AD428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD428);
  }

  return result;
}

unint64_t sub_2751D9AAC()
{
  result = qword_2809AD430;
  if (!qword_2809AD430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD430);
  }

  return result;
}

unint64_t sub_2751D9B04()
{
  result = qword_2809AD438;
  if (!qword_2809AD438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD438);
  }

  return result;
}

unint64_t sub_2751D9B5C()
{
  result = qword_2809AD440;
  if (!qword_2809AD440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD440);
  }

  return result;
}

uint64_t sub_2751D9BB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_27520C218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xE900000000000067 || (sub_27520C218() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69646465626D65 && a2 == 0xEE006C65646F4D67 || (sub_27520C218() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7954656372756F73 && a2 == 0xEA00000000006570)
  {

    return 3;
  }

  else
  {
    v6 = sub_27520C218();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2751D9D28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v3 || (sub_27520C218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1851876717 && a2 == 0xE400000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000027520FD70 == a2 || (sub_27520C218() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E616964656DLL && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_27520C218();

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

uint64_t sub_2751D9F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_2751D9F2C, 0, 0);
}

uint64_t sub_2751D9F2C()
{
  v1 = sub_27520BE08();
  v0[7] = 0;
  v4 = v0[6];
  v6 = *v4;
  v5 = v4[1];
  if (v5 >= *(*v4 + 16))
  {
    v8 = sub_27520BA38();
    v9 = *(v8 - 8);
    v10 = 1;
  }

  else
  {
    if (v5 < 0)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v1, v2, v3);
    }

    v7 = v0[3];
    v8 = sub_27520BA38();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v7, v6 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v5, v8);
    v10 = 0;
    v4[1] = v5 + 1;
  }

  (*(v9 + 56))(v0[3], v10, 1, v8);
  v11 = v0[1];

  return v11();
}

uint64_t sub_2751DA134()
{
  v0[2] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD508, &unk_27520D6B0);
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t InMemoryTensorLoader.init(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t InMemoryTensorLoader.makeAsyncIterator()@<X0>(void *a1@<X8>, __n128 a2@<Q0>)
{
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
  return a2;
}

uint64_t InMemoryTensorLoader.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2751DA204, 0, 0);
}

uint64_t sub_2751DA204()
{
  result = sub_27520BE08();
  v2 = v0[3];
  v4 = *v2;
  v3 = v2[1];
  if (v3 >= *(*v2 + 16))
  {
    v6 = sub_27520BA38();
    v7 = *(v6 - 8);
    v8 = 1;
  }

  else
  {
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = v0[2];
    v6 = sub_27520BA38();
    v7 = *(v6 - 8);
    (*(v7 + 16))(v5, v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v3, v6);
    v8 = 0;
    v2[1] = v3 + 1;
  }

  (*(v7 + 56))(v0[2], v8, 1, v6);
  v9 = v0[1];

  return v9();
}

uint64_t sub_2751DA3A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2751DC754;

  return InMemoryTensorLoader.next()(a1);
}

uint64_t sub_2751DA440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_2751DA50C;

  return sub_2751D9F08(a1, a2, a3);
}

uint64_t sub_2751DA50C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v4 = *(v3 + 8);

  return v4();
}

void sub_2751DA62C(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t BatchedTensorLoader.filePath.getter(__n128 a1, __n128 a2)
{
  v3 = *v2;
  a1;
  return v3;
}

uint64_t BatchedTensorLoader.init(filePath:batchSize:fieldKeyPath:scalarType:computeDevice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v18 = type metadata accessor for BatchedTensorLoader(0, *(*a4 + *MEMORY[0x277D84DE8]), a8, a10);
  *&a9[v18[15]] = 0;
  v19 = v18[16];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD240, &qword_27520CA70);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  *&a9[v18[17]] = 0;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  v21 = &a9[v18[14]];

  return sub_2751DA7B4(a7, v21);
}

uint64_t sub_2751DA7B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD448, &qword_27520D460);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t BatchedTensorLoader.next()(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD448, &qword_27520D460);
  v3[8] = swift_task_alloc();
  sub_27520B8B8();
  v3[9] = swift_task_alloc();
  v5 = *(a2 + 16);
  v3[10] = v5;
  v6 = sub_27520BF08();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD248, &unk_27520CA80);
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  v8 = sub_27520BEB8();
  v3[19] = v8;
  v3[20] = *(v8 - 8);
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD250, &unk_27520D850);
  v3[22] = swift_task_alloc();
  v9 = sub_27520B7F8();
  v3[23] = v9;
  v3[24] = *(v9 - 8);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD258, qword_27520CA90);
  v3[26] = swift_task_alloc();
  v10 = sub_27520B828();
  v3[27] = v10;
  v3[28] = *(v10 - 8);
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2751DAC00, 0, 0);
}

uint64_t sub_2751DAC00()
{
  sub_27520BE08();
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 48) + 68);
  *(v0 + 304) = v2;
  v3 = (v1 + v2);
  v4 = *(v1 + v2);
  *(v0 + 240) = v4;
  if (!v4)
  {
    v45 = (v1 + v2);
    v13 = *(v0 + 224);
    v12 = *(v0 + 232);
    v15 = *(v0 + 208);
    v14 = *(v0 + 216);
    v17 = *(v0 + 192);
    v16 = *(v0 + 200);
    v18 = *(v0 + 184);
    sub_2751D59E8();
    (*(v13 + 56))(v15, 1, 1, v14);
    v19.n128_f64[0] = (*(v17 + 104))(v16, *MEMORY[0x277CC91D8], v18);
    v19;
    sub_27520B818();
    v20 = sub_2751D4F04(v12);
    if (!v20)
    {
LABEL_18:
      v39 = *(v0 + 40);
      v40 = sub_27520BA38();
      (*(*(v40 - 8) + 56))(v39, 1, 1, v40);

      v41 = *(v0 + 8);

      return v41();
    }

    v30 = *(v0 + 168);
    v31 = *(v0 + 160);
    v32 = *(v0 + 144);
    v46 = *(v0 + 176);
    v47 = *(v0 + 136);
    v43 = *(v0 + 152);
    v44 = *(v0 + 128);
    v33 = *(v0 + 56);
    v48 = *(v0 + 48);
    v34 = *(v48 + 60);
    v35 = *(v33 + v34);
    v36 = v20;
    v37 = v20;

    *(v33 + v34) = v36;
    sub_27520BEC8();

    sub_2751DC040(qword_2809AD270, MEMORY[0x277CC9CE0], MEMORY[0x277CC9CE8]);
    sub_27520BE18();
    (*(v31 + 8))(v30, v43);
    sub_27520B7C8();
    (*(v47 + 8))(v32, v44);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD240, &qword_27520CA70);
    (*(*(v38 - 8) + 56))(v46, 0, 1, v38);
    sub_2751D5A8C(v46, v33 + *(v48 + 64));
    v1 = *(v0 + 56);
    v3 = v45;
  }

  *(v0 + 16) = MEMORY[0x277D84F90];
  v5 = *(v1 + 16);
  *(v0 + 248) = v5;
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (!v5)
  {
    v11 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
LABEL_9:
      *v3 = v11;
      v21 = *(v0 + 48);
      v22 = *(v0 + 56);

      v23 = *(v22 + *(v21 + 60));
      if (v23)
      {
        *(v0 + 24) = 0;
        v24 = [v23 closeAndReturnError_];
        v25 = *(v0 + 24);
        if (v24)
        {
          v26 = v25;
        }

        else
        {
          v27 = v25;
          v28 = sub_27520B7E8();

          swift_willThrow();
          MEMORY[0x277C6DB10](v28);
        }
      }

      goto LABEL_18;
    }

LABEL_22:
    __break(1u);
  }

  v6 = *(v0 + 48);
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  v7 = *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD240, &qword_27520CA70);
  if ((*(*(v8 - 8) + 48))(v1 + v7, 1, v8))
  {
    v9 = *(v0 + 240);
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (!v10)
    {
      v3 = (v1 + *(v0 + 304));
      goto LABEL_9;
    }

    goto LABEL_22;
  }

  v29 = swift_task_alloc();
  *(v0 + 272) = v29;
  *v29 = v0;
  v29[1] = sub_2751DB1AC;

  return MEMORY[0x28211C2E8](v8);
}

uint64_t sub_2751DB1AC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[35] = a1;
  v4[36] = a2;
  v4[37] = v2;

  if (v2)
  {
    MEMORY[0x277C6DB10](v2);
    v5 = sub_2751DB86C;
  }

  else
  {
    v5 = sub_2751DB2F8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2751DB2F8()
{
  v1 = *(v0 + 288);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = *(v0 + 296);
  v3 = *(v0 + 280);
  sub_27520B738();
  swift_allocObject();
  sub_27520B728();
  v6 = sub_2751D505C(v3, v1, v4, v5);
  v8 = v7;
  sub_27520B718();
  if (v2)
  {
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    v11 = *(v0 + 88);
    v12 = *(v0 + 96);
    v13 = *(v0 + 80);
    MEMORY[0x277C6DB10](v2);
    sub_2751D5994(v6, v8);

    (*(v10 + 56))(v9, 1, 1, v13);
    (*(v12 + 8))(v9, v11);
LABEL_4:
    v14 = *(v0 + 264);
    v15 = (v0 + 256);
LABEL_5:
    v16 = *v15;
LABEL_6:
    v17 = *(v0 + 240);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
    }

    *(*(v0 + 56) + *(v0 + 304)) = v19;
    if (v16 < 1)
    {
      v26 = *(v0 + 48);
      v27 = *(v0 + 56);

      v28 = *(v27 + *(v26 + 60));
      if (v28)
      {
        *(v0 + 24) = 0;
        v29 = [v28 closeAndReturnError_];
        v30 = *(v0 + 24);
        if (v29)
        {
          v31 = v30;
        }

        else
        {
          v46 = v30;
          v47 = sub_27520B7E8();

          swift_willThrow();
          MEMORY[0x277C6DB10](v47);
        }
      }

      v48 = *(v0 + 40);
      v49 = sub_27520BA38();
      (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
    }

    else
    {
      v20 = *(v0 + 64);
      v22 = *(v0 + 48);
      v21 = *(v0 + 56);
      v23 = *(v0 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_27520D440;
      *(v24 + 32) = v16;
      *(v24 + 40) = v14;
      sub_27520B8C8();
      sub_2751DBB0C(*(v0 + 16));

      sub_2751DBC00(v21 + *(v22 + 56), v20);
      sub_27520B988();
      v25 = sub_27520BA38();
      (*(*(v25 - 8) + 56))(v23, 0, 1, v25);
    }

    v50 = *(v0 + 8);

    return v50();
  }

  v32 = *(v0 + 256);
  v52 = *(v0 + 264);
  v34 = *(v0 + 112);
  v33 = *(v0 + 120);
  v35 = *(v0 + 104);
  v36 = *(v0 + 80);
  sub_2751D5994(v6, v8);

  (*(v34 + 56))(v35, 0, 1, v36);
  (*(v34 + 32))(v33, v35, v36);
  swift_getAtKeyPath();
  v14 = *(*(v0 + 32) + 16);
  if (v32 && v52 != v14)
  {
    v15 = (v0 + 256);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 80));

    v14 = *(v0 + 264);
    goto LABEL_5;
  }

  v37 = *(v0 + 248);
  v15 = (v0 + 248);
  v39 = *(v0 + 112);
  v38 = *(v0 + 120);
  v40 = *(v0 + 80);
  v41 = *(v0 + 256) + 1;
  sub_2751DBD78(*(v0 + 32));
  (*(v39 + 8))(v38, v40);
  if (v41 == v37)
  {
    goto LABEL_5;
  }

  v16 = *(v0 + 256) + 1;
  *(v0 + 256) = v16;
  *(v0 + 264) = v14;
  v42 = *(v0 + 56);
  v43 = *(*(v0 + 48) + 64);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD240, &qword_27520CA70);
  if ((*(*(v44 - 8) + 48))(v42 + v43, 1, v44))
  {
    goto LABEL_6;
  }

  v45 = swift_task_alloc();
  *(v0 + 272) = v45;
  *v45 = v0;
  v45[1] = sub_2751DB1AC;

  return MEMORY[0x28211C2E8](v44);
}

uint64_t sub_2751DB86C()
{
  v1 = *(v0 + 240);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  *(*(v0 + 56) + *(v0 + 304)) = v3;
  if (v5 < 1)
  {
    v12 = *(v0 + 48);
    v13 = *(v0 + 56);

    v14 = *(v13 + *(v12 + 60));
    if (v14)
    {
      *(v0 + 24) = 0;
      v15 = [v14 closeAndReturnError_];
      v16 = *(v0 + 24);
      if (v15)
      {
        v17 = v16;
      }

      else
      {
        v18 = v16;
        v19 = sub_27520B7E8();

        swift_willThrow();
        MEMORY[0x277C6DB10](v19);
      }
    }

    v20 = *(v0 + 40);
    v21 = sub_27520BA38();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  }

  else
  {
    v6 = *(v0 + 64);
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v0 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_27520D440;
    *(v10 + 32) = v5;
    *(v10 + 40) = v4;
    sub_27520B8C8();
    sub_2751DBB0C(*(v0 + 16));

    sub_2751DBC00(v7 + *(v8 + 56), v6);
    sub_27520B988();
    v11 = sub_27520BA38();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2751DBB0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2751E1244(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 32);
    v5 = MEMORY[0x277D83A90];
    v6 = MEMORY[0x277D2CF38];
    do
    {
      v7 = *v4;
      v14 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2751E1244((v8 > 1), v9 + 1, 1);
        v2 = v14;
      }

      v12 = v5;
      v13 = v6;
      LODWORD(v11) = v7;
      *(v2 + 16) = v9 + 1;
      sub_2751D67EC(&v11, v2 + 40 * v9 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2751DBC00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD448, &qword_27520D460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2751DBC70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2751D5624;

  return BatchedTensorLoader.next()(a1, a2);
}

uint64_t sub_2751DBD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  BatchedTensorLoader.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_2751DBD78(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2751D198C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_2751DBE64(uint64_t a1)
{
  *(a1 + 8) = sub_2751DBE94();
  result = sub_2751DBEE8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2751DBE94()
{
  result = qword_2809AD450;
  if (!qword_2809AD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD450);
  }

  return result;
}

unint64_t sub_2751DBEE8()
{
  result = qword_2809AD458;
  if (!qword_2809AD458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD458);
  }

  return result;
}

uint64_t sub_2751DBF40(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2751DBFBC(uint64_t a1)
{
  v2 = MEMORY[0x277D3D180];
  *(a1 + 8) = sub_2751DC040(&qword_2809AD460, MEMORY[0x277D3D180], MEMORY[0x277D3D188]);
  result = sub_2751DC040(qword_2809AD468, v2, MEMORY[0x277D3D190]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2751DC040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2751DC0A0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809AD1F0, &qword_27520DE80);
  sub_27520C2C8();
  if (v1 <= 0x3F)
  {
    sub_2751DC484();
    if (v2 <= 0x3F)
    {
      sub_2751DC4D8(319, &qword_2809AD500, MEMORY[0x277D2CD30]);
      if (v3 <= 0x3F)
      {
        sub_2751DC4D8(319, &qword_2809AD2F8, sub_2751D59E8);
        if (v4 <= 0x3F)
        {
          sub_2751D5DCC(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2751DC1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD448, &qword_27520D460);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD250, &unk_27520D850);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 64);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2751DC348(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD448, &qword_27520D460);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD250, &unk_27520D850);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 64);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

unint64_t sub_2751DC484()
{
  result = qword_2809AD4F0;
  if (!qword_2809AD4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809AD4F8, qword_27520D690);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2809AD4F0);
  }

  return result;
}

void sub_2751DC4D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_27520BF08();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2751DC52C(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_2751D0BE4(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 4 * v15 + 32), (a2 + 4 * a3), 4 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

void sub_2751DC640(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_2751D198C(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 4 * v15 + 32), (a2 + 4 * a3), 4 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

ZeoliteFramework::ClusterLabels_optional __swiftcall ClusterLabels.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == -2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == -1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ClusterLabels.rawValue.getter()
{
  if (*v0)
  {
    return -2;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_2751DC794()
{
  v1 = *v0;
  sub_27520C278();
  if (v1)
  {
    v2 = -2;
  }

  else
  {
    v2 = -1;
  }

  MEMORY[0x277C6D7A0](v2);
  return sub_27520C298();
}

uint64_t sub_2751DC7E4()
{
  if (*v0)
  {
    v1 = -2;
  }

  else
  {
    v1 = -1;
  }

  return MEMORY[0x277C6D7A0](v1);
}

uint64_t sub_2751DC81C(uint64_t a1)
{
  v2 = *v1;
  sub_27520C278();
  if (v2)
  {
    v3 = -2;
  }

  else
  {
    v3 = -1;
  }

  MEMORY[0x277C6D7A0](v3);
  return sub_27520C298();
}

void *sub_2751DC868@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == -2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_2751DC888(uint64_t *a1@<X8>)
{
  v2 = -2;
  if (!*v1)
  {
    v2 = -1;
  }

  *a1 = v2;
}

uint64_t DBSCAN.epsilon.setter(float a1)
{
  result = swift_beginAccess();
  *(v1 + 20) = a1;
  return result;
}

uint64_t DBSCAN.minSamples.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t DBSCAN.__allocating_init(epsilon:minSamples:metric:)(uint64_t a1, char *a2, float a3)
{
  result = swift_allocObject();
  v7 = *a2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 20) = a3;
  *(result + 24) = a1;
  *(result + 16) = v7;
  return result;
}

uint64_t DBSCAN.init(epsilon:minSamples:metric:)(uint64_t a1, char *a2, float a3)
{
  v4 = *a2;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 20) = a3;
  *(v3 + 24) = a1;
  *(v3 + 16) = v4;
  return v3;
}

uint64_t DBSCAN.setRangeQueryFunction(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  sub_2751DCB04(v5, v4);
}

uint64_t sub_2751DCB04(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2751DCB14(uint64_t a1, unint64_t a2, float a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return MEMORY[0x277D84FA0];
  }

  v6 = *(a1 + 16);
  result = MEMORY[0x277D84FA0];
  if (v6 <= a2)
  {
    return result;
  }

  v9 = MEMORY[0x277D84FA0];
  if (*(v3 + 16) == 2)
  {
  }

  else
  {
    v10 = sub_27520C218();

    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  a3 = a3 * a3;
LABEL_9:
  v40 = v9;
  v11 = *(v3 + 32);
  if (!v11)
  {
    v39 = MEMORY[0x277D84F90];
    sub_2751E1264(0, v6, 0);
    v26 = 0;
    v15 = v39;
    v27 = a1 + 32;
    v28 = *(a1 + 32 + 8 * a2);
    v29 = off_2883F96C0[*(v3 + 16)];
    do
    {
      v30 = *(v27 + 8 * v26);
      v25;
      v31;
      v32 = (v29)(v28, v30);

      v39 = v15;
      v34 = *(v15 + 16);
      v33 = *(v15 + 24);
      v16 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        sub_2751E1264((v33 > 1), v34 + 1, 1);
        v15 = v39;
      }

      v35 = v15 + 16 * v34;
      *(v35 + 32) = v26;
      *(v15 + 16) = v16;
      *(v35 + 40) = v32;
      ++v26;
    }

    while (v6 != v26);
    goto LABEL_11;
  }

  v12 = *(v3 + 40);
  sub_2751DD634(v11, v12);
  v14 = v13;
  v15 = v11(v14, a3);
  sub_2751DCB04(v11, v12);

  v16 = *(v15 + 16);
  if (v16)
  {
LABEL_11:
    v17 = (v15 + 40);
    v18 = MEMORY[0x277D84F90];
    do
    {
      v22 = *(v17 - 1);
      v23 = *v17;
      if (v22 != a2 && v23 <= a3)
      {
        v39 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2751E1264(0, v18[2] + 1, 1);
          v18 = v39;
        }

        v20 = v18[2];
        v19 = v18[3];
        if (v20 >= v19 >> 1)
        {
          sub_2751E1264((v19 > 1), v20 + 1, 1);
          v18 = v39;
        }

        v18[2] = v20 + 1;
        v21 = &v18[2 * v20];
        *(v21 + 4) = v22;
        v21[10] = v23;
      }

      v17 += 4;
      --v16;
    }

    while (v16);
    goto LABEL_28;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_28:

  v36 = v18[2];
  if (v36)
  {
    v37 = v18 + 4;
    do
    {
      v38 = *v37;
      v37 += 2;
      sub_2751EDDAC(&v39, v38);
      --v36;
    }

    while (v36);
  }

  return v40;
}

Swift::OpaquePointer_optional __swiftcall DBSCAN.cluster(points:)(Swift::OpaquePointer points)
{
  v2 = v1;
  v3 = *(points._rawValue + 2);
  if (v3)
  {
    v4 = sub_27520BCF8();
    *(v4 + 16) = v3;
    v5 = v4 + 32;
    memset_pattern16((v4 + 32), &unk_27520D810, 8 * v3);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_beginAccess();
    v8 = 0;
    v9 = 0;
    v24 = v3;
    while (v9 < *(v4 + 16))
    {
      if (*(v5 + 8 * v9) == -2)
      {
        isUniquelyReferenced_nonNull_native = sub_2751DCB14(points._rawValue, v9, *(v2 + 20));
        v10 = isUniquelyReferenced_nonNull_native;
        v11 = isUniquelyReferenced_nonNull_native[2];
        if (v11 >= *(v2 + 24))
        {
          if (__OFADD__(v8++, 1))
          {
            goto LABEL_47;
          }

          if (v9 >= *(v4 + 16))
          {
            goto LABEL_49;
          }

          *(v5 + 8 * v9) = v8;
          if (v11)
          {
            v13 = isUniquelyReferenced_nonNull_native[2] == 0;
            while (!v13)
            {
              v14 = 0;
              v15 = 1 << *(v10 + 32);
              v16 = (v15 + 63) >> 6;
              v17 = 7;
              while (1)
              {
                v18 = v10[v17];
                if (v18)
                {
                  break;
                }

                v14 -= 64;
                ++v17;
                if (!--v16)
                {
                  goto LABEL_23;
                }
              }

              v15 = __clz(__rbit64(v18)) - v14;
LABEL_23:
              v19 = *(v10 + 9);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((v15 & 0x8000000000000000) != 0 || v15 >= 1 << *(v10 + 32))
              {
                goto LABEL_40;
              }

              if (((*(v10 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) >> v15) & 1) == 0)
              {
                goto LABEL_41;
              }

              if (v19 != *(v10 + 9))
              {
                goto LABEL_42;
              }

              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_2751DD250();
              }

              v20 = *(v10[6] + 8 * v15);
              isUniquelyReferenced_nonNull_native = sub_2751DD390(v15);
              if ((v20 & 0x8000000000000000) != 0)
              {
                goto LABEL_43;
              }

              v21 = *(v4 + 16);
              if (v20 >= v21)
              {
                goto LABEL_44;
              }

              v22 = *(v5 + 8 * v20);
              if (v22 == -1)
              {
                *(v5 + 8 * v20) = v8;
                v21 = *(v4 + 16);
                v22 = v8;
              }

              if (v20 >= v21)
              {
                goto LABEL_45;
              }

              if (v22 == -2)
              {
                *(v5 + 8 * v20) = v8;
                v23 = sub_2751DCB14(points._rawValue, v20, *(v2 + 20));
                if (*(v23 + 16) >= *(v2 + 24))
                {
                  isUniquelyReferenced_nonNull_native = sub_2751DD118(v23);
                }

                else
                {
                }
              }

              v13 = 0;
              if (!v10[2])
              {
                goto LABEL_3;
              }
            }

            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            break;
          }

LABEL_3:
        }

        else
        {

          if (v9 >= *(v4 + 16))
          {
            goto LABEL_48;
          }

          *(v5 + 8 * v9) = -1;
        }

        v3 = v24;
      }

      if (++v9 == v3)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  else
  {
    v4 = 0;
LABEL_38:
    isUniquelyReferenced_nonNull_native = v4;
  }

  result.value._rawValue = isUniquelyReferenced_nonNull_native;
  result.is_nil = v7;
  return result;
}

uint64_t sub_2751DD118(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_2751EDDAC(v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t DBSCAN.__deallocating_deinit()
{
  sub_2751DCB04(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void *sub_2751DD250()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD528, &unk_27520D800);
  v2 = *v0;
  v3 = sub_27520BF28();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

unint64_t sub_2751DD390(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_27520BF18();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_27520C268() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2751DD518()
{
  result = qword_2809AD510;
  if (!qword_2809AD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD510);
  }

  return result;
}

unint64_t sub_2751DD570()
{
  result = qword_2809AD518;
  if (!qword_2809AD518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809AD520, &qword_27520D760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD518);
  }

  return result;
}

uint64_t sub_2751DD634(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

ZeoliteFramework::InMemoryMatrixLoader __swiftcall InMemoryMatrixLoader.init(_:columnCount:maxRows:)(Swift::OpaquePointer _, Swift::Int columnCount, Swift::Int maxRows)
{
  v3->_rawValue = _._rawValue;
  v3[1]._rawValue = 0;
  v3[2]._rawValue = maxRows;
  v3[3]._rawValue = columnCount;
  result.maxRows = maxRows;
  result.current = columnCount;
  result.matrixValues = _;
  return result;
}

ZeoliteFramework::InMemoryMatrixLoader __swiftcall InMemoryMatrixLoader.makeAsyncIterator()()
{
  v2 = *(v1 + 24);
  *v0 = *v1;
  v3 = *(v1 + 8);
  *(v0 + 8) = v3;
  *(v0 + 24) = v2;
  v4 = v3;
  result.columnCount = v7;
  result.maxRows = v6;
  result.current = v5;
  result.matrixValues._rawValue = v4;
  return result;
}

uint64_t sub_2751DD6A0()
{
  result = sub_27520BE08();
  v2 = *(v0 + 16);
  v4 = *v2;
  v3 = v2[1];
  v5 = *(*v2 + 16);
  if (v3 >= v5)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v6 = v2[2];
  v7 = v2[3];
  v8 = v6 * v7;
  if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
  {
    __break(1u);
    goto LABEL_27;
  }

  v9 = __OFADD__(v3, v8);
  v10 = v3 + v8;
  if (v9)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v5 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(*v2 + 16);
  }

  if (v11 < v3)
  {
    goto LABEL_28;
  }

  if (v11 != v3)
  {
    v14 = v11 - v3;
    if (v11 > v3)
    {
      result = sub_2751D198C(0, 1, 1, MEMORY[0x277D84F90]);
      if ((v3 & 0x8000000000000000) == 0)
      {
        v15 = *(v4 + 16);
        if (v3 < v15 && v11 - 1 < v15)
        {
          v12 = result;
          v17 = *(result + 16);
          v18 = (v4 + 4 * v3 + 32);
          do
          {
            v19 = *v18;
            v20 = *(v12 + 24);
            if (v17 >= v20 >> 1)
            {
              v12 = sub_2751D198C(v20 > 1, v17 + 1, 1, v12);
            }

            *(v12 + 16) = v17 + 1;
            *(v12 + 4 * v17 + 32) = v19;
            ++v18;
            ++v17;
            --v14;
          }

          while (v14);
          goto LABEL_10;
        }

LABEL_31:
        __break(1u);
        return result;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_10:
  v2[1] = v11;
LABEL_12:
  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_2751DD87C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2751E13E4;

  return InMemoryMatrixLoader.next()();
}

uint64_t sub_2751DD90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = sub_2751DD9A0;

  return InMemoryMatrixLoader.next()();
}

uint64_t sub_2751DD9A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  *(*v2 + 64) = v1;

  if (v1)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_27520BDB8();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v10 = sub_2751E13EC;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_27520BDB8();
      v8 = v9;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    *(v4 + 72) = a1;
    v10 = sub_2751E13E8;
  }

  return MEMORY[0x2822009F8](v10, v6, v8);
}

__n128 sub_2751DDB2C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  return result;
}

uint64_t JSONLMatrixLoader.filePath.getter(__n128 a1)
{
  v2 = *v1;
  a1;
  return v2;
}

uint64_t JSONLMatrixLoader.init(filePath:maxRows:columnCount:fieldKeyPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v14 = *a5;
  *(a8 + 5) = 0;
  v15 = type metadata accessor for JSONLMatrixLoader(0, *(v14 + *MEMORY[0x277D84DE8]), a6, a7);
  v16 = *(v15 + 60);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD240, &qword_27520CA70);
  result = (*(*(v17 - 8) + 56))(&a8[v16], 1, 1, v17);
  *&a8[*(v15 + 64)] = 0;
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  *(a8 + 4) = a5;
  return result;
}

uint64_t JSONLMatrixLoader.next()(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(a1 + 16);
  v2[7] = v3;
  v4 = sub_27520BF08();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD248, &unk_27520CA80);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v6 = sub_27520BEB8();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD250, &unk_27520D850);
  v2[19] = swift_task_alloc();
  v7 = sub_27520B7F8();
  v2[20] = v7;
  v2[21] = *(v7 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD258, qword_27520CA90);
  v2[23] = swift_task_alloc();
  v8 = sub_27520B828();
  v2[24] = v8;
  v2[25] = *(v8 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2751DDFEC, 0, 0);
}

uint64_t sub_2751DDFEC()
{
  sub_27520BE08();
  v1 = *(v0 + 48);
  v2 = *(*(v0 + 40) + 64);
  *(v0 + 272) = v2;
  v3 = (v1 + v2);
  v4 = *(v1 + v2);
  *(v0 + 216) = v4;
  if (!v4)
  {
    v13 = *(v0 + 200);
    v12 = *(v0 + 208);
    v15 = *(v0 + 184);
    v14 = *(v0 + 192);
    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    v40 = (v1 + v2);
    v41 = *(v0 + 160);
    sub_2751D59E8();
    (*(v13 + 56))(v15, 1, 1, v14);
    v18.n128_f64[0] = (*(v17 + 104))(v16, *MEMORY[0x277CC91D8], v41);
    v18;
    sub_27520B818();
    v19 = sub_2751D4F04(v12);
    if (!v19)
    {
LABEL_18:

      v37 = *(v0 + 8);

      return v37(0);
    }

    v28 = *(v0 + 144);
    v29 = *(v0 + 136);
    v39 = *(v0 + 128);
    v31 = *(v0 + 112);
    v30 = *(v0 + 120);
    v42 = *(v0 + 104);
    v43 = *(v0 + 152);
    v32 = *(v0 + 48);
    v44 = *(v0 + 40);
    v33 = *(v32 + 40);
    v34 = v19;
    v35 = v19;

    *(v32 + 40) = v34;
    sub_27520BEC8();

    sub_2751D5A34();
    sub_27520BE18();
    (*(v29 + 8))(v28, v39);
    sub_27520B7C8();
    (*(v31 + 8))(v30, v42);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD240, &qword_27520CA70);
    (*(*(v36 - 8) + 56))(v43, 0, 1, v36);
    sub_2751D5A8C(v43, v32 + *(v44 + 60));
    v1 = *(v0 + 48);
    v3 = v40;
  }

  *(v0 + 16) = MEMORY[0x277D84F90];
  v5 = *(v1 + 16);
  *(v0 + 224) = v5;
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (!v5)
  {
    v11 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
LABEL_9:
      *v3 = v11;
      v20 = *(v0 + 48);

      v21 = *(v20 + 40);
      if (v21)
      {
        *(v0 + 24) = 0;
        v22 = [v21 closeAndReturnError_];
        v23 = *(v0 + 24);
        if (v22)
        {
          v24 = v23;
        }

        else
        {
          v25 = v23;
          v26 = sub_27520B7E8();

          swift_willThrow();
          MEMORY[0x277C6DB10](v26);
        }
      }

      goto LABEL_18;
    }

LABEL_22:
    __break(1u);
  }

  v6 = *(v0 + 40);
  *(v0 + 232) = 0;
  v7 = *(v6 + 60);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD240, &qword_27520CA70);
  if ((*(*(v8 - 8) + 48))(v1 + v7, 1, v8))
  {
    v9 = *(v0 + 216);
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (!v10)
    {
      v3 = (v1 + *(v0 + 272));
      goto LABEL_9;
    }

    goto LABEL_22;
  }

  v27 = swift_task_alloc();
  *(v0 + 240) = v27;
  *v27 = v0;
  v27[1] = sub_2751DE51C;

  return MEMORY[0x28211C2E8](v8);
}

uint64_t sub_2751DE51C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[31] = a1;
  v4[32] = a2;
  v4[33] = v2;

  if (v2)
  {
    MEMORY[0x277C6DB10](v2);
    v5 = sub_2751DEB68;
  }

  else
  {
    v5 = sub_2751DE668;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2751DE668()
{
  v1 = *(v0 + 256);
  if (v1)
  {
    v2 = *(v0 + 264);
    v3 = *(v0 + 248);
    sub_27520B738();
    swift_allocObject();
    sub_27520B728();
    v6 = sub_2751D505C(v3, v1, v4, v5);
    v8 = v7;
    sub_27520B718();
    if (!v2)
    {
      v15 = *(v0 + 88);
      v14 = *(v0 + 96);
      v16 = *(v0 + 80);
      v18 = *(v0 + 48);
      v17 = *(v0 + 56);
      sub_2751D5994(v6, v8);

      (*(v15 + 56))(v16, 0, 1, v17);
      (*(v15 + 32))(v14, v16, v17);
      swift_getAtKeyPath();
      v19 = *(v0 + 32);
      if (*(v18 + 24) != *(v19 + 16))
      {

        if (qword_2809AD190 == -1)
        {
          goto LABEL_11;
        }

        goto LABEL_28;
      }

      v21 = *(v0 + 224);
      v20 = (v0 + 224);
      v23 = *(v0 + 88);
      v22 = *(v0 + 96);
      v24 = *(v0 + 56);
      v25 = *(v0 + 232) + 1;
      sub_2751DBD78(v19);
      (*(v23 + 8))(v22, v24);
      if (v25 == v21)
      {
        goto LABEL_15;
      }

      v26 = *(v0 + 232) + 1;
      *(v0 + 232) = v26;
      v27 = *(v0 + 48);
      v28 = *(*(v0 + 40) + 60);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD240, &qword_27520CA70);
      if ((*(*(v29 - 8) + 48))(v27 + v28, 1, v29))
      {
        goto LABEL_16;
      }

      v30 = swift_task_alloc();
      *(v0 + 240) = v30;
      *v30 = v0;
      v30[1] = sub_2751DE51C;

      return MEMORY[0x28211C2E8](v29);
    }

    v9 = *(v0 + 80);
    v10 = *(v0 + 88);
    v11 = *(v0 + 64);
    v12 = *(v0 + 72);
    v13 = *(v0 + 56);
    MEMORY[0x277C6DB10](v2);
    sub_2751D5994(v6, v8);

    (*(v10 + 56))(v9, 1, 1, v13);
    (*(v12 + 8))(v9, v11);
  }

  while (1)
  {
    v20 = (v0 + 232);
LABEL_15:
    v26 = *v20;
LABEL_16:
    v39 = *(v0 + 216);
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (!v40)
    {
      break;
    }

    __break(1u);
LABEL_28:
    swift_once();
LABEL_11:
    v31 = sub_27520BAB8();
    __swift_project_value_buffer(v31, qword_2809B38E8);
    v32 = sub_27520BA98();
    v33 = sub_27520BEF8();
    v34 = os_log_type_enabled(v32, v33);
    v36 = *(v0 + 88);
    v35 = *(v0 + 96);
    v37 = *(v0 + 56);
    if (v34)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2751CF000, v32, v33, "Vector length mismatched.", v38, 2u);
      MEMORY[0x277C6DCC0](v38, -1, -1);
    }

    (*(v36 + 8))(v35, v37);
  }

  *(*(v0 + 48) + *(v0 + 272)) = v41;
  if (v26 < 1)
  {
    v43 = *(v0 + 48);

    v44 = *(v43 + 40);
    if (v44)
    {
      *(v0 + 24) = 0;
      v45 = [v44 closeAndReturnError_];
      v46 = *(v0 + 24);
      if (v45)
      {
        v47 = v46;
      }

      else
      {
        v48 = v46;
        v49 = sub_27520B7E8();

        swift_willThrow();
        MEMORY[0x277C6DB10](v49);
      }
    }

    v42 = 0;
  }

  else
  {
    v42 = *(v0 + 16);
  }

  v50 = *(v0 + 8);

  return v50(v42);
}

uint64_t sub_2751DEB68()
{
  v1 = *(v0 + 216);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  v4 = *(v0 + 232);
  *(*(v0 + 48) + *(v0 + 272)) = v3;
  if (v4 < 1)
  {
    v6 = *(v0 + 48);

    v7 = *(v6 + 40);
    if (v7)
    {
      *(v0 + 24) = 0;
      v8 = [v7 closeAndReturnError_];
      v9 = *(v0 + 24);
      if (v8)
      {
        v10 = v9;
      }

      else
      {
        v11 = v9;
        v12 = sub_27520B7E8();

        swift_willThrow();
        MEMORY[0x277C6DB10](v12);
      }
    }

    v5 = 0;
  }

  else
  {
    v5 = *(v0 + 16);
  }

  v13 = *(v0 + 8);

  return v13(v5);
}

uint64_t sub_2751DED04(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2751DED9C;

  return JSONLMatrixLoader.next()(a2);
}

uint64_t sub_2751DED9C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_2751DEEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  JSONLMatrixLoader.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

double AsyncMatrixSequence.init(reader:label:columnCount:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = sub_27520BAE8();
  v11 = sub_2751DF12C(a2, a3, v10);

  if (v11)
  {

    v12;
    v13 = sub_27520BAC8();
    sub_27520BAD8();
    v15 = v14;

    *a5 = a1;
    a5[1] = a2;
    a5[2] = a3;
    a5[3] = v13;
    a5[4] = 0;
    a5[5] = v15;
    a5[6] = a4;
  }

  else
  {
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v17 = sub_27520BAB8();
    __swift_project_value_buffer(v17, qword_2809B38E8);
    v18;
    v19 = sub_27520BA98();
    v20 = sub_27520BEF8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      v23.n128_u64[0] = 136315138;
      *v21 = 136315138;
      v24 = sub_2751E0324(a2, a3, &v25, v23);

      *(v21 + 4) = v24;
      _os_log_impl(&dword_2751CF000, v19, v20, "Invalid label: %s for AsyncMatrixSequence.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x277C6DCC0](v22, -1, -1);
      MEMORY[0x277C6DCC0](v21, -1, -1);
    }

    else
    {
    }

    a5[6] = 0;
    result = 0.0;
    *(a5 + 1) = 0u;
    *(a5 + 2) = 0u;
    *a5 = 0u;
  }

  return result;
}