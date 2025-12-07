unint64_t sub_2148A8ED0()
{
  result = qword_27CA1A588;
  if (!qword_27CA1A588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A540, &qword_2149923D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A588);
  }

  return result;
}

char *sub_2148A8FA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A598, &qword_2149924E8);
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

char *sub_2148A90C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5A0, &qword_2149924F0);
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

char *sub_2148A91D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A590, &qword_2149924E0);
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

void *sub_2148A934C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2148A9494(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5C8, &qword_214992528);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5C0, &qword_214992520);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2148A962C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A630, &qword_214992568);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2148A9750(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A638, &unk_214992570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2148A9878(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A618, &qword_214992550);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 384);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[384 * v8])
    {
      memmove(v12, v13, 384 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2148A99BC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_2148A9B98(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2148A9D40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2148A9BB8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2148A9E68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2148A9BD8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2148AA150(a1, a2, a3, *v3, &qword_27CA1A5C8, &qword_214992528, &qword_27CA1A5C0, &qword_214992520);
  *v3 = result;
  return result;
}

void *sub_2148A9C18(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2148A9F74(a1, a2, a3, *v3, &qword_27CA1A608, &qword_214992540, MEMORY[0x277D232B0]);
  *v3 = result;
  return result;
}

void *sub_2148A9C5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2148A9F74(a1, a2, a3, *v3, &qword_27CA1A620, &qword_214992558, type metadata accessor for MATipDismissal);
  *v3 = result;
  return result;
}

void *sub_2148A9CA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2148AA150(a1, a2, a3, *v3, &qword_27CA1A670, &unk_2149926E0, &qword_27CA1A678, &qword_2149940C0);
  *v3 = result;
  return result;
}

void *sub_2148A9CE0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2148AA150(a1, a2, a3, *v3, &qword_27CA1A660, &qword_2149926D0, &qword_27CA1A668, &qword_2149926D8);
  *v3 = result;
  return result;
}

char *sub_2148A9D20(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2148AA298(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2148A9D40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A590, &qword_2149924E0);
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

char *sub_2148A9E68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5A0, &qword_2149924F0);
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

void *sub_2148A9F74(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_2148AA150(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *sub_2148AA298(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A628, &qword_214992560);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2148AA3C0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  sub_21498E8D0();
  v9 = sub_21498E7C0();
  v10 = *(v9 - 8);
  v11 = 0;
  v12 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_2148AA824(v8, v6, &qword_27CA1A330, &qword_2149916E0);
    if ((*(v10 + 88))(v6, v9) == *MEMORY[0x277D232A0])
    {
      (*(v10 + 96))(v6, v9);
      v13 = *v6;
      v11 = *(v13 + 16);
      v12 = *(v13 + 24);
    }

    else
    {
      (*(v10 + 8))(v6, v9);
      v11 = 0;
      v12 = 0;
    }
  }

  result = sub_21489DFCC(v8, &qword_27CA1A330, &qword_2149916E0);
  v15 = 0;
  v16 = *(a2 + 16);
  v17 = a2 - 8;
  v18 = MEMORY[0x277D84F90];
LABEL_6:
  v19 = (v17 + 72 * v15);
  while (1)
  {
    if (v16 == v15)
    {
      return v11;
    }

    if (v15 >= v16)
    {
      break;
    }

    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_18;
    }

    v21 = v19[10];
    ++v15;
    v19 += 9;
    if (v21)
    {
      v30 = v12;
      v31 = v11;
      v22 = *v19;
      v24 = v19[2];
      v23 = v19[3];
      v29 = v19[4];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2148A8FA8(0, *(v18 + 16) + 1, 1, v18);
        v18 = result;
      }

      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_2148A8FA8((v25 > 1), v26 + 1, 1, v18);
        v18 = result;
      }

      *(v18 + 16) = v26 + 1;
      v27 = (v18 + 40 * v26);
      v27[4] = v22;
      v27[5] = v21;
      v27[6] = v24;
      v27[7] = v23;
      v12 = v30;
      v27[8] = v29;
      v15 = v20;
      v11 = v31;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2148AA6D8(uint64_t a1)
{
  v4 = v1[3];
  v11 = v1[2];
  v5 = v1[4];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899138;

  return sub_2148A76F4(a1, v11, v4, v5, (v1 + 5), v6, v7, v8);
}

uint64_t sub_2148AA824(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2148AA88C(uint64_t *a1)
{
  *(v1 + 24) = *a1;
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

unint64_t sub_2148AA930()
{
  result = qword_27CA1A5B8;
  if (!qword_27CA1A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A5B8);
  }

  return result;
}

unint64_t sub_2148AA984()
{
  result = qword_27CA1A5D8;
  if (!qword_27CA1A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A5D8);
  }

  return result;
}

uint64_t sub_2148AA9D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2148AAA2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A578, &qword_2149924B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2148AAA9C()
{
  result = qword_27CA1A5F8;
  if (!qword_27CA1A5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A5F0, &qword_21499B770);
    sub_2148AAB50(&qword_27CA1A600, MEMORY[0x277D232F0], MEMORY[0x277D232F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A5F8);
  }

  return result;
}

uint64_t sub_2148AAB50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for MAUnsubscribeAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MAUnsubscribeAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2148AACEC()
{
  result = qword_27CA1A648;
  if (!qword_27CA1A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A648);
  }

  return result;
}

unint64_t sub_2148AAD44()
{
  result = qword_27CA1A650;
  if (!qword_27CA1A650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A650);
  }

  return result;
}

unint64_t sub_2148AAD9C()
{
  result = qword_27CA1A658;
  if (!qword_27CA1A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A658);
  }

  return result;
}

unint64_t sub_2148AADF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2148AAE40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v135 = a2;
  v152 = sub_21498E690();
  v146 = *(v152 - 8);
  v3 = MEMORY[0x28223BE20](v152);
  v5 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v137 = &v120 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v139 = &v120 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v120 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v138 = &v120 - v14;
  MEMORY[0x28223BE20](v13);
  v134 = &v120 - v15;
  v16 = sub_21498E7C0();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v136 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v120 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v140 = &v120 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v120 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v120 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = (&v120 - v31);
  v144 = v17[2];
  v145 = v17 + 2;
  v144(&v120 - v31, a1, v16);
  v141 = v17[11];
  v142 = v17 + 11;
  if (v141(v32, v16) == *MEMORY[0x277D23270])
  {
    v33 = v17[12];
    v127 = v16;
    v129 = v17 + 12;
    v128 = v33;
    v33(v32, v16);
    v34 = *v32;
    v35 = *(v34 + 16);

    sub_2148AE1C0(v36, &v147);
    v37 = v147;
    v38 = v148;
    v39 = v149;
    v40 = v150;
    v41 = v151;
    if (*(v35 + 16))
    {
      v130 = v147;
      v131 = v148;
      v132 = v149;
      v133 = v150;
      v143 = v17;
      v42 = sub_214907F9C(0x4579616C70736964, 0xEC0000006C69616DLL);
      v43 = v143;
      if (v44)
      {
        v45 = *(v35 + 56);
        v126 = v143[9];
        v46 = v127;
        v144(v30, v45 + v126 * v42, v127);
        v47 = v141(v30, v46);
        v48 = *MEMORY[0x277D232A0];
        v124 = v47;
        if (v47 == v48)
        {
          v125 = v34;
          v128(v30, v46);
          v50 = *(*v30 + 16);
          v49 = *(*v30 + 24);

          if (*(v35 + 16))
          {
            v51 = sub_214907F9C(0x6C69616D456C6C61, 0xE900000000000073);
            v52 = v152;
            v53 = v146;
            if (v54)
            {
              v144(v27, *(v35 + 56) + v51 * v126, v46);
              if (v141(v27, v46) == *MEMORY[0x277D23278])
              {
                v122 = v50;
                v121 = v49;
                v128(v27, v46);
                v53 = *(*v27 + 16);

                v139 = *(v53 + 2);
                if (v139)
                {
                  v55 = 0;
                  v56 = MEMORY[0x277D84F90];
                  v57 = v53;
                  v138 = v53;
                  v123 = v41;
                  while (1)
                  {
                    if (v55 >= *(v53 + 2))
                    {
                      __break(1u);
                      goto LABEL_68;
                    }

                    v58 = v140;
                    v144(v140, &v57[(*(v143 + 80) + 32) & ~*(v143 + 80)], v46);
                    v59 = v141(v58, v46);
                    if (v59 != v124)
                    {
                      break;
                    }

                    v128(v58, v46);
                    v60 = *(*v58 + 16);
                    v61 = *(*v58 + 24);

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v56 = sub_2148A90C8(0, *(v56 + 16) + 1, 1, v56);
                    }

                    v63 = *(v56 + 16);
                    v62 = *(v56 + 24);
                    v52 = v63 + 1;
                    if (v63 >= v62 >> 1)
                    {
                      v56 = sub_2148A90C8((v62 > 1), v63 + 1, 1, v56);
                    }

                    ++v55;
                    *(v56 + 16) = v52;
                    v64 = v56 + 16 * v63;
                    *(v64 + 32) = v60;
                    *(v64 + 40) = v61;
                    v57 += v126;
                    v53 = v138;
                    v41 = v123;
                    if (v139 == v55)
                    {
                      goto LABEL_53;
                    }
                  }

                  sub_2148AF724(v130, v131, v132, v133);

                  (v143[1])(v58, v46);
                  if (qword_281190DA0 != -1)
                  {
                    swift_once();
                  }

                  v112 = v152;
                  v113 = __swift_project_value_buffer(v152, qword_281194E18);
                  v114 = v146;
                  v115 = v134;
                  (*(v146 + 2))(v134, v113, v112);
                  v116 = sub_21498E670();
                  v117 = sub_21498FBB0();
                  if (os_log_type_enabled(v116, v117))
                  {
                    v118 = swift_slowAlloc();
                    *v118 = 0;
                    _os_log_impl(&dword_21488E000, v116, v117, "[LiftUIUnwantedSender] failed to parse element in array 'allEmails'", v118, 2u);
                    MEMORY[0x216059AC0](v118, -1, -1);
                  }

                  (*(v114 + 1))(v115, v112);
                  type metadata accessor for LiftUIUnwantedSenderError(0);
                  sub_2148AF6CC();
                  swift_allocError();
                  *v119 = MEMORY[0x277D837D0];
                  swift_storeEnumTagMultiPayload();
                  swift_willThrow();
                }

                v56 = MEMORY[0x277D84F90];
LABEL_53:

                v81 = v152;
                v83 = v146;
                v80 = v121;
                if (!*(v35 + 16))
                {
                  goto LABEL_54;
                }

LABEL_33:
                v87 = sub_214907F9C(0x7463656C65537369, 0xEA00000000006465);
                if (v88)
                {
                  v89 = v136;
                  v144(v136, *(v35 + 56) + v126 * v87, v46);

                  if (v141(v89, v46) == *MEMORY[0x277D23258])
                  {
                    v128(v89, v46);
                    v90 = *(*v89 + 16);

                    v91 = v135;
                    *v135 = v122;
                    v91[1] = v80;
                    v91[2] = v56;
                    *(v91 + 24) = v90;
                    v92 = v131;
                    v91[4] = v130;
                    v91[5] = v92;
                    v93 = v133;
                    v91[6] = v132;
                    v91[7] = v93;
                    v91[8] = v41;
                    return result;
                  }

                  sub_2148AF724(v130, v131, v132, v133);

                  (v143[1])(v89, v46);
                  goto LABEL_55;
                }

LABEL_54:
                sub_2148AF724(v130, v131, v132, v133);

LABEL_55:
                v106 = v137;
                if (qword_281190DA0 != -1)
                {
                  swift_once();
                }

                v107 = __swift_project_value_buffer(v81, qword_281194E18);
                (*(v83 + 2))(v106, v107, v81);
                v108 = sub_21498E670();
                v109 = sub_21498FBB0();
                if (os_log_type_enabled(v108, v109))
                {
                  v110 = swift_slowAlloc();
                  *v110 = 0;
                  _os_log_impl(&dword_21488E000, v108, v109, "[LiftUIUnwantedSender] failed to parse key 'isSelected'", v110, 2u);
                  MEMORY[0x216059AC0](v110, -1, -1);
                }

                (*(v83 + 1))(v106, v81);
                type metadata accessor for LiftUIUnwantedSenderError(0);
                sub_2148AF6CC();
                swift_allocError();
                *v111 = MEMORY[0x277D839B0];
LABEL_60:
                swift_storeEnumTagMultiPayload();
                swift_willThrow();
              }

              sub_2148AF724(v130, v131, v132, v133);

              (v143[1])(v27, v46);
            }

            else
            {
              sub_2148AF724(v130, v131, v132, v133);
            }
          }

          else
          {
            sub_2148AF724(v130, v131, v132, v133);

            v52 = v152;
            v53 = v146;
          }

          v41 = v138;
          if (qword_281190DA0 != -1)
          {
LABEL_68:
            swift_once();
          }

          v101 = __swift_project_value_buffer(v52, qword_281194E18);
          (*(v53 + 2))(v41, v101, v52);
          v102 = sub_21498E670();
          v103 = sub_21498FBB0();
          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            *v104 = 0;
            _os_log_impl(&dword_21488E000, v102, v103, "[LiftUIUnwantedSender] failed to parse key 'allEmails'", v104, 2u);
            MEMORY[0x216059AC0](v104, -1, -1);
          }

          (*(v53 + 1))(v41, v52);
          type metadata accessor for LiftUIUnwantedSenderError(0);
          sub_2148AF6CC();
          swift_allocError();
          *v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
          goto LABEL_60;
        }

        (v43[1])(v30, v46);
      }

      v39 = v132;
      v40 = v133;
      v38 = v131;
      v37 = v130;
      if (*(v35 + 16))
      {
        v75 = sub_214907F9C(0x6C69616D65, 0xE500000000000000);
        if (v76)
        {
          v77 = *(v35 + 56);
          v78 = v143;
          v126 = v143[9];
          v46 = v127;
          v144(v22, v77 + v126 * v75, v127);
          if (v141(v22, v46) == *MEMORY[0x277D232A0])
          {
            v125 = v34;
            v128(v22, v46);
            v79 = *(*v22 + 16);
            v80 = *(*v22 + 24);
            v122 = v79;

            if (qword_281190DA0 != -1)
            {
              swift_once();
            }

            v81 = v152;
            v82 = __swift_project_value_buffer(v152, qword_281194E18);
            v83 = v146;
            (*(v146 + 2))(v139, v82, v81);
            v84 = sub_21498E670();
            v85 = sub_21498FBB0();
            if (os_log_type_enabled(v84, v85))
            {
              v86 = swift_slowAlloc();
              *v86 = 0;
              _os_log_impl(&dword_21488E000, v84, v85, "[LiftUIUnwantedSender] parsing 'email' in backward-compatible mode", v86, 2u);
              MEMORY[0x216059AC0](v86, -1, -1);
            }

            (*(v83 + 1))(v139, v81);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5A0, &qword_2149924F0);
            v56 = swift_allocObject();
            *(v56 + 16) = xmmword_214991720;
            *(v56 + 32) = v122;
            *(v56 + 40) = v80;

            if (!*(v35 + 16))
            {
              goto LABEL_54;
            }

            goto LABEL_33;
          }

          sub_2148AF724(v130, v131, v132, v133);
          (v78[1])(v22, v46);
LABEL_38:
          v94 = v152;
          v95 = v146;
          if (qword_281190DA0 != -1)
          {
            swift_once();
          }

          v96 = __swift_project_value_buffer(v94, qword_281194E18);
          (*(v95 + 2))(v12, v96, v94);
          v97 = sub_21498E670();
          v98 = sub_21498FBB0();
          if (os_log_type_enabled(v97, v98))
          {
            v99 = swift_slowAlloc();
            *v99 = 0;
            _os_log_impl(&dword_21488E000, v97, v98, "[LiftUIUnwantedSender] failed to parse key 'displayEmail'", v99, 2u);
            MEMORY[0x216059AC0](v99, -1, -1);
          }

          (*(v95 + 1))(v12, v94);
          type metadata accessor for LiftUIUnwantedSenderError(0);
          sub_2148AF6CC();
          swift_allocError();
          *v100 = MEMORY[0x277D837D0];
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }

        v37 = v130;
        v38 = v131;
        v39 = v132;
        v40 = v133;
      }
    }

    sub_2148AF724(v37, v38, v39, v40);

    goto LABEL_38;
  }

  v143 = v17;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v65 = v152;
  v66 = __swift_project_value_buffer(v152, qword_281194E18);
  v67 = v146;
  (*(v146 + 2))(v5, v66, v65);
  v68 = sub_21498E670();
  v69 = sub_21498FBB0();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_21488E000, v68, v69, "[LiftUIUnwantedSender] DecodabelStateType is not a dictionary", v70, 2u);
    MEMORY[0x216059AC0](v70, -1, -1);
  }

  (*(v67 + 1))(v5, v65);
  type metadata accessor for LiftUIUnwantedSenderError(0);
  sub_2148AF6CC();
  swift_allocError();
  v72 = v71;
  v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A6C8, &unk_214992A00) + 48);
  v144(v72, a1, v16);
  *&v72[v73] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A6D0, &qword_2149933D0);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return (v143[1])(v32, v16);
}

uint64_t sub_2148AC0BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A7B0, &qword_214992E98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148B0108();
  sub_2149901C0();
  v8[15] = 0;
  sub_21498FFC0();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_21498FFC0();
  v8[13] = 2;
  sub_21498FFC0();
  v8[12] = 3;
  sub_21498FFC0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2148AC27C(uint64_t a1)
{
  if (v1[1])
  {
    sub_214990180();
    sub_21498F900();
    if (v1[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_214990180();
    if (v1[3])
    {
LABEL_3:
      sub_214990180();
      sub_21498F900();
      if (v1[5])
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_214990180();
      if (v1[7])
      {
        goto LABEL_5;
      }

      return sub_214990180();
    }
  }

  sub_214990180();
  if (!v1[5])
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_214990180();
  sub_21498F900();
  if (!v1[7])
  {
    return sub_214990180();
  }

LABEL_5:
  sub_214990180();

  return sub_21498F900();
}

uint64_t sub_2148AC38C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A788, &qword_214992E80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148AFF34();
  sub_2149901C0();
  LOBYTE(v16) = 0;
  sub_214990000();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_21498FFC0();
    v9 = v3[3];
    v20[0] = v3[2];
    v20[1] = v9;
    v10 = v3[5];
    v12 = v3[2];
    v11 = v3[3];
    v20[2] = v3[4];
    v20[3] = v10;
    v16 = v12;
    v17 = v11;
    v13 = v3[5];
    v18 = v3[4];
    v19 = v13;
    v21 = 2;
    sub_2148B0044(v20, v15);
    sub_2148B00B4();
    sub_21498FFE0();
    v15[0] = v16;
    v15[1] = v17;
    v15[2] = v18;
    v15[3] = v19;
    sub_21489DFCC(v15, &qword_27CA1A790, &qword_214992E88);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2148AC5AC()
{
  sub_214990160();
  v1 = *(v0 + 24);
  sub_21498F900();
  sub_214990180();
  if (v1)
  {
    sub_21498F900();
  }

  v2 = *(v0 + 40);
  if (v2 == 1)
  {
    sub_214990180();
  }

  else
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 64);
    v9 = *(v0 + 48);
    v10 = v4;
    v11 = *(v0 + 80);
    v7 = v3;
    v8 = v2;
    sub_214990180();
    sub_2148AC27C(v6);
  }

  return sub_214990190();
}

uint64_t sub_2148AC678(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A700, &qword_214992A20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148AF768();
  sub_2149901C0();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A6E8, &qword_214992A18);
  sub_2148AF810(&qword_27CA1A708, sub_2148AF888, MEMORY[0x277D83948]);
  sub_214990040();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2148AC804()
{
  v1 = 0x7463656A627573;
  v2 = 28532;
  if (*v0 != 2)
  {
    v2 = 1836020326;
  }

  if (*v0)
  {
    v1 = 2036625250;
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

uint64_t sub_2148AC860@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2148AEB58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2148AC888(uint64_t a1)
{
  v2 = sub_2148B0108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148AC8C4(uint64_t a1)
{
  v2 = sub_2148B0108();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2148AC900@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2148AECB4(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_2148AC95C()
{
  sub_214990160();
  sub_2148AC27C(v1);
  return sub_214990190();
}

uint64_t sub_2148AC9A0(uint64_t a1)
{
  sub_214990160();
  sub_2148AC27C(v2);
  return sub_214990190();
}

uint64_t sub_2148AC9DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_2148AE7C0(v7, v8) & 1;
}

uint64_t sub_2148ACA28()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 0x7261506C69616D65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657079546B6E696CLL;
  }
}

uint64_t sub_2148ACA84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2148AEFA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2148ACAAC(uint64_t a1)
{
  v2 = sub_2148AFF34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148ACAE8(uint64_t a1)
{
  v2 = sub_2148AFF34();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2148ACB24@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2148AF0C4(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_2148ACB8C(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  sub_21498F900();
  if (v3)
  {
    sub_214990180();
    sub_21498F900();
    if (v4 == 1)
    {
      return sub_214990180();
    }
  }

  else
  {
    sub_214990180();
    if (v4 == 1)
    {
      return sub_214990180();
    }
  }

  sub_214990180();
  return sub_2148AC27C(a1);
}

uint64_t sub_2148ACC58(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_214990160();
  sub_21498F900();
  if (!v2)
  {
    sub_214990180();
    if (v4 == 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = *(v1 + 64);
    v10 = *(v1 + 48);
    v11 = v5;
    v12 = *(v1 + 80);
    v8 = v3;
    v9 = v4;
    sub_214990180();
    sub_2148AC27C(v7);
    return sub_214990190();
  }

  sub_214990180();
  sub_21498F900();
  if (v4 != 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_214990180();
  return sub_214990190();
}

uint64_t sub_2148ACD3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_2148AE928(v9, v10) & 1;
}

uint64_t sub_2148ACDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002149A1160 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_214990080();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2148ACE48(uint64_t a1)
{
  v2 = sub_2148AF768();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148ACE84(uint64_t a1)
{
  v2 = sub_2148AF768();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2148ACEC0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2148AF3A4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

BOOL static UnsubscribeAnalytics.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_214990080()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_214990080()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2148ACFA4()
{
  v1 = *v0;
  sub_214990160();
  MEMORY[0x216059200](v1);
  return sub_214990190();
}

uint64_t sub_2148ACFEC(uint64_t a1)
{
  v2 = *v1;
  sub_214990160();
  MEMORY[0x216059200](v2);
  return sub_214990190();
}

uint64_t sub_2148AD030()
{
  v1 = 0x6E6569736E617274;
  if (*v0 != 1)
  {
    v1 = 1802396018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2148AD090@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2148AF558(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2148AD0B8(uint64_t a1)
{
  v2 = sub_2148AD2F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148AD0F4(uint64_t a1)
{
  v2 = sub_2148AD2F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UnsubscribeAnalytics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A688, &qword_214992720);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = v1[2];
  v10[1] = v1[3];
  v10[2] = v7;
  v10[0] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148AD2F0();
  sub_2149901C0();
  v13 = 0;
  v8 = v10[3];
  sub_214990000();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = 1;
  sub_214990000();
  v11 = 2;
  sub_214990030();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2148AD2F0()
{
  result = qword_27CA1A690;
  if (!qword_27CA1A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A690);
  }

  return result;
}

uint64_t UnsubscribeAnalytics.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_21498F900();
  sub_21498F900();
  return MEMORY[0x216059200](v2);
}

uint64_t UnsubscribeAnalytics.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_214990160();
  sub_21498F900();
  sub_21498F900();
  MEMORY[0x216059200](v1);
  return sub_214990190();
}

uint64_t UnsubscribeAnalytics.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A698, &qword_214992728);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148AD2F0();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v9 = sub_21498FF60();
  v11 = v10;
  v19 = v9;
  v21 = 1;
  v17 = sub_21498FF60();
  v18 = v12;
  v20 = 2;
  v13 = sub_21498FF90();
  (*(v6 + 8))(v8, v5);
  v14 = v18;
  *a2 = v19;
  a2[1] = v11;
  a2[2] = v17;
  a2[3] = v14;
  a2[4] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2148AD6AC()
{
  v1 = *(v0 + 32);
  sub_214990160();
  sub_21498F900();
  sub_21498F900();
  MEMORY[0x216059200](v1);
  return sub_214990190();
}

uint64_t sub_2148AD72C(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_21498F900();
  sub_21498F900();
  return MEMORY[0x216059200](v2);
}

uint64_t sub_2148AD780(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_214990160();
  sub_21498F900();
  sub_21498F900();
  MEMORY[0x216059200](v2);
  return sub_214990190();
}

unint64_t sub_2148AD800()
{
  result = qword_27CA1A6A0;
  if (!qword_27CA1A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A6A0);
  }

  return result;
}

BOOL sub_2148AD854(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_214990080()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_214990080()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2148AD904(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2148AD94C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2148AD9C8()
{
  result = qword_27CA1A6A8;
  if (!qword_27CA1A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A6A8);
  }

  return result;
}

unint64_t sub_2148ADA20()
{
  result = qword_27CA1A6B0;
  if (!qword_27CA1A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A6B0);
  }

  return result;
}

unint64_t sub_2148ADA78()
{
  result = qword_27CA1A6B8;
  if (!qword_27CA1A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A6B8);
  }

  return result;
}

uint64_t sub_2148ADACC@<X0>(uint64_t *a1@<X8>)
{
  v80 = a1;
  v2 = sub_21498E7C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v78 = *(v1 + 24);
  v9 = v1[4];
  v82 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v73 = v9;
  v74 = v10;
  v75 = v1[8];
  v76 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A7B8, &unk_214992EA0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A7C0, &unk_214995AE0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v70[1] = *(v14 + 80);
  v72 = v12;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_214992700;
  v79 = v17;
  v71 = v16;
  v18 = v17 + v16;
  v84 = v13;
  v19 = *(v13 + 48);
  strcpy((v17 + v16), "displayEmail");
  *(v18 + 13) = 0;
  *(v18 + 14) = -5120;
  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  *(v20 + 24) = v7;
  *(v18 + v19) = v20;
  v21 = *(v3 + 104);
  v22 = v18 + v19;
  v23 = v15;
  v87 = *MEMORY[0x277D232A0];
  v88 = v3 + 104;
  v21(v22);
  v83 = v18;
  v24 = (v18 + v15);
  *v24 = 0x6C69616D456C6C61;
  v77 = v18 + v15;
  v24[1] = 0xE900000000000073;
  v25 = *(v8 + 16);
  v81 = v23;
  if (v25)
  {
    v86 = v21;
    v89 = MEMORY[0x277D84F90];

    sub_2148A9C18(0, v25, 0);
    v26 = v89;
    v85 = v3 + 32;
    v27 = (v8 + 40);
    v28 = v2;
    do
    {
      v30 = *(v27 - 1);
      v29 = *v27;
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      *(v31 + 24) = v29;
      *v5 = v31;
      (v86)(v5, v87, v28);
      v89 = v26;
      v32 = v28;
      v33 = *(v26 + 16);
      v34 = *(v26 + 24);

      if (v33 >= v34 >> 1)
      {
        sub_2148A9C18((v34 > 1), v33 + 1, 1);
        v26 = v89;
      }

      *(v26 + 16) = v33 + 1;
      (*(v3 + 32))(v26 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v33, v5, v32);
      v27 += 2;
      --v25;
      v28 = v32;
    }

    while (v25);
    v21 = v86;
    v23 = v81;
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
    v28 = v2;
  }

  v35 = v84;
  v36 = *(v84 + 48);
  v37 = swift_allocObject();
  *(v37 + 16) = v26;
  v38 = v77;
  *(v77 + v36) = v37;
  (v21)(v38 + v36, *MEMORY[0x277D23278], v28);
  v39 = 2 * v23;
  v40 = v83;
  v41 = (v83 + 2 * v23);
  v42 = v21;
  v43 = v23;
  v44 = *(v35 + 48);
  *v41 = 0x7463656C65537369;
  v41[1] = 0xEA00000000006465;
  v45 = swift_allocObject();
  *(v45 + 16) = v78;
  *(v41 + v44) = v45;
  (v21)(v41 + v44, *MEMORY[0x277D23258], v28);
  v46 = v40 + v39 + v43;
  v47 = *(v35 + 48);
  *v46 = 0x636974796C616E61;
  *(v46 + 8) = 0xE900000000000073;
  v48 = swift_allocObject();
  v49 = v82;
  if (v82)
  {
    v50 = v71;
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_214992710;
    v52 = v51 + v50;
    *v52 = 0xD000000000000010;
    *(v52 + 8) = 0x80000002149A1110;
    v53 = swift_allocObject();
    *(v53 + 16) = v73;
    *(v53 + 24) = v49;
    *&v47[v52] = v53;
    v85 = v48;
    v54 = v42;
    v55 = v28;
    v56 = v87;
    (v54)(&v47[v51 + v50], v87, v55);
    v57 = (v51 + v50 + v81);
    v86 = v47;
    v58 = *(v84 + 48);
    *v57 = 0x6E6569736E617274;
    v57[1] = 0xEB00000000644974;
    v59 = swift_allocObject();
    v60 = v76;
    *(v59 + 16) = v74;
    *(v59 + 24) = v60;
    *(v57 + v58) = v59;
    v61 = v56;
    v28 = v55;
    v42 = v54;
    v48 = v85;
    (v42)(v57 + v58, v61, v28);
    v62 = (v52 + v39);
    v63 = *(v84 + 48);
    *v62 = 1802396018;
    v62[1] = 0xE400000000000000;
    v64 = swift_allocObject();
    *(v64 + 16) = v75;
    *(v62 + v63) = v64;
    v65 = (v52 + v39 + v63);
    v47 = v86;
    (v42)(v65, *MEMORY[0x277D23248], v28);

    v66 = sub_2148E0C4C(v51);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v48 + 16) = v66;
  }

  else
  {
    *(v48 + 16) = sub_2148E0C4C(MEMORY[0x277D84F90]);
  }

  *&v47[v46] = v48;
  v67 = swift_allocObject();
  (v42)(&v47[v46], *MEMORY[0x277D23270], v28);
  v68 = sub_2148E0C4C(v79);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v67 + 16) = v68;
  *v80 = v67;
  return (v42)();
}

double sub_2148AE1C0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_21498E690();
  v56 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v55 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21498E7C0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v45 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v45 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  if (*(a1 + 16))
  {
    v19 = sub_214907F9C(0xD000000000000014, 0x80000002149A1130);
    if (v20)
    {
      v21 = *(a1 + 56);
      v52 = *(v7 + 72);
      v53 = *(v7 + 16);
      v54 = v4;
      v53(v18, v21 + v52 * v19, v6);
      v51 = *(v7 + 88);
      if (v51(v18, v6) == *MEMORY[0x277D23270])
      {
        v22 = *(v7 + 96);
        v49 = v7 + 96;
        v50 = v7 + 16;
        v48 = v22;
        v22(v18, v6);
        v23 = *(*v18 + 16);

        if (*(v23 + 16))
        {
          v24 = sub_214907F9C(0x6E6569736E617274, 0xEB00000000644974);
          if (v25)
          {
            v53(v16, *(v23 + 56) + v24 * v52, v6);
            v26 = v51(v16, v6);
            if (v26 != *MEMORY[0x277D232A0])
            {

              (*(v7 + 8))(v16, v6);
              goto LABEL_16;
            }

            v47 = v26;
            v48(v16, v6);
            v27 = *(*v16 + 16);
            v28 = *(*v16 + 24);
            v46 = v27;

            if (*(v23 + 16) && (v29 = sub_214907F9C(1802396018, 0xE400000000000000), (v30 & 1) != 0))
            {
              v53(v13, *(v23 + 56) + v29 * v52, v6);

              if (v51(v13, v6) != *MEMORY[0x277D23248])
              {

                (*(v7 + 8))(v13, v6);
                goto LABEL_16;
              }

              v48(v13, v6);
              v31 = *(*v13 + 16);

              if (*(a1 + 16))
              {
                v32 = sub_214907F9C(0x6C69616D65, 0xE500000000000000);
                if (v33)
                {
                  v53(v10, *(a1 + 56) + v32 * v52, v6);
                  v34 = v51(v10, v6);
                  if (v34 == v47)
                  {
                    v48(v10, v6);
                    v36 = *(*v10 + 16);
                    v35 = *(*v10 + 24);

                    *a2 = v36;
                    a2[1] = v35;
                    a2[2] = v46;
                    a2[3] = v28;
                    a2[4] = v31;
                    return result;
                  }

                  (*(v7 + 8))(v10, v6);
                  goto LABEL_16;
                }
              }
            }

            else
            {
            }
          }
        }

LABEL_16:
        v38 = v54;
        v39 = v55;
        v40 = v56;
        if (qword_281190DA0 != -1)
        {
          swift_once();
        }

        v41 = __swift_project_value_buffer(v38, qword_281194E18);
        (*(v40 + 16))(v39, v41, v38);
        v42 = sub_21498E670();
        v43 = sub_21498FBB0();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_21488E000, v42, v43, "[LiftUIUnwantedSender] failed to parse element in dictionary 'impressionParameters'", v44, 2u);
          MEMORY[0x216059AC0](v44, -1, -1);
        }

        (*(v40 + 8))(v39, v38);
        goto LABEL_21;
      }

      (*(v7 + 8))(v18, v6);
    }
  }

LABEL_21:
  a2[4] = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

uint64_t sub_2148AE7C0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_214990080();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_214990080();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = sub_214990080();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21)
  {
    if (v22 && (a1[6] == a2[6] && v21 == v22 || (sub_214990080() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v22)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2148AE928(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_214990080() & 1) == 0)
  {
    goto LABEL_17;
  }

  v5 = a1[3];
  v6 = *(a2 + 24);
  if (v5)
  {
    if (v6)
    {
      v7 = a1[2] == *(a2 + 16) && v5 == v6;
      if (v7 || (sub_214990080() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

LABEL_17:
    v13 = 0;
    return v13 & 1;
  }

  if (v6)
  {
    goto LABEL_17;
  }

LABEL_13:
  v8 = *(a1 + 3);
  v37[0] = *(a1 + 2);
  v37[1] = v8;
  v9 = *(a1 + 5);
  v37[2] = *(a1 + 4);
  v37[3] = v9;
  v10 = *(a2 + 48);
  v36[0] = *(a2 + 32);
  v36[1] = v10;
  v11 = *(a2 + 80);
  v36[2] = *(a2 + 64);
  v36[3] = v11;
  v12 = v37[0];
  if (*(&v37[0] + 1) == 1)
  {
    if (*(&v36[0] + 1) == 1)
    {
      v13 = 1;
      *&v28 = *&v37[0];
      *(&v28 + 1) = 1;
      v14 = *(a1 + 4);
      v29 = *(a1 + 3);
      v30 = v14;
      v31 = *(a1 + 5);
      sub_2148B0044(v37, v38);
      sub_2148B0044(v36, v38);
      v15 = &v28;
LABEL_22:
      sub_21489DFCC(v15, &qword_27CA1A790, &qword_214992E88);
      return v13 & 1;
    }
  }

  else if (*(&v36[0] + 1) != 1)
  {
    v23 = v36[0];
    v19 = *(a2 + 64);
    v24 = *(a2 + 48);
    v25 = v19;
    v26 = *(a2 + 80);
    v30 = v19;
    v31 = v26;
    v28 = v36[0];
    v29 = v24;
    v20 = *(a1 + 3);
    v21 = *(a1 + 5);
    v38[2] = *(a1 + 4);
    v38[3] = v21;
    v38[1] = v20;
    v38[0] = v37[0];
    v13 = sub_2148AE7C0(v38, &v28);
    sub_2148B0044(v37, v27);
    sub_2148B0044(v36, v27);
    sub_21489DFCC(&v23, &qword_27CA1A790, &qword_214992E88);
    v27[0] = v12;
    v22 = *(a1 + 4);
    v27[1] = *(a1 + 3);
    v27[2] = v22;
    v27[3] = *(a1 + 5);
    v15 = v27;
    goto LABEL_22;
  }

  v28 = v37[0];
  v17 = *(a1 + 4);
  v29 = *(a1 + 3);
  v30 = v17;
  v31 = *(a1 + 5);
  v32 = v36[0];
  v18 = *(a2 + 64);
  v33 = *(a2 + 48);
  v34 = v18;
  v35 = *(a2 + 80);
  sub_2148B0044(v37, v38);
  sub_2148B0044(v36, v38);
  sub_21489DFCC(&v28, &qword_27CA1A7C8, &qword_214992EB0);
  v13 = 0;
  return v13 & 1;
}

uint64_t sub_2148AEB58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 28532 && a2 == 0xE200000000000000 || (sub_214990080() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1836020326 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_214990080();

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

uint64_t sub_2148AECB4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A7A0, &qword_214992E90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148B0108();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_21498FF20();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_21498FF20();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_21498FF20();
  v25 = v13;
  v33 = 3;
  v14 = sub_21498FF20();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  sub_2148B015C(&v28, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  result = sub_2148B0194(v32);
  v21 = v29;
  *a2 = v28;
  a2[1] = v21;
  v22 = v31;
  a2[2] = v30;
  a2[3] = v22;
  return result;
}

uint64_t sub_2148AEFA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657079546B6E696CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261506C69616D65 && a2 == 0xEB00000000736D61)
  {

    return 2;
  }

  else
  {
    v6 = sub_214990080();

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

uint64_t sub_2148AF0C4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A770, &qword_214992E78);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148AFF34();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  LOBYTE(v29[0]) = 0;
  v9 = sub_21498FF60();
  v11 = v10;
  v22 = v9;
  LOBYTE(v29[0]) = 1;
  *&v21 = sub_21498FF20();
  *(&v21 + 1) = v12;
  v34 = 2;
  sub_2148AFF88();
  sub_21498FF40();
  (*(v8 + 8))(v7, v4);
  v39 = v35;
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v13 = *(&v21 + 1);
  v14 = v22;
  *&v23 = v22;
  *(&v23 + 1) = v11;
  v15 = v21;
  v24 = v21;
  v25 = v35;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  sub_2148AFFDC(&v23, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29[0] = v14;
  v29[1] = v11;
  v29[2] = v15;
  v29[3] = v13;
  v30 = v39;
  v31 = v40;
  v32 = v41;
  v33 = v42;
  result = sub_2148B0014(v29);
  v17 = v26;
  v18 = v43;
  v43[2] = v25;
  v18[3] = v17;
  v19 = v28;
  v18[4] = v27;
  v18[5] = v19;
  v20 = v24;
  *v18 = v23;
  v18[1] = v20;
  return result;
}

void *sub_2148AF3A4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A6D8, &qword_214992A10);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148AF768();
  sub_2149901B0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A6E8, &qword_214992A18);
    sub_2148AF810(&qword_27CA1A6F0, sub_2148AF7BC, MEMORY[0x277D83978]);
    sub_21498FFA0();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_2148AF558(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000002149A1110 == a2 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6569736E617274 && a2 == 0xEB00000000644974 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1802396018 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_214990080();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t type metadata accessor for LiftUIUnwantedSenderError(uint64_t a1)
{
  result = qword_27CA1A718;
  if (!qword_27CA1A718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2148AF6CC()
{
  result = qword_27CA1A6C0;
  if (!qword_27CA1A6C0)
  {
    type metadata accessor for LiftUIUnwantedSenderError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A6C0);
  }

  return result;
}

void sub_2148AF724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_2148AF768()
{
  result = qword_27CA1A6E0;
  if (!qword_27CA1A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A6E0);
  }

  return result;
}

unint64_t sub_2148AF7BC()
{
  result = qword_27CA1A6F8;
  if (!qword_27CA1A6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A6F8);
  }

  return result;
}

uint64_t sub_2148AF810(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A6E8, &qword_214992A18);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2148AF888()
{
  result = qword_27CA1A710;
  if (!qword_27CA1A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A710);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2148AF8F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2148AF94C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_2148AFA20(uint64_t a1)
{
  sub_2148AFA94();
  if (v1 <= 0x3F)
  {
    sub_2148AFB28(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2148AFA94()
{
  if (!qword_27CA1A728)
  {
    v0 = sub_2148AFADC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1A728);
    }
  }
}

unint64_t sub_2148AFADC()
{
  result = qword_27CA1A730;
  if (!qword_27CA1A730)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27CA1A730);
  }

  return result;
}

void sub_2148AFB28(uint64_t a1)
{
  if (!qword_27CA1A738)
  {
    sub_21498E7C0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A740, &qword_214992AA0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CA1A738);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_19iCloudMailAssistant20UnsubscribeAnalyticsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2148AFBE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2148AFC2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19iCloudMailAssistant22UnsubscribeEmailParamsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_2148AFCCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_2148AFD14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2148AFD80()
{
  result = qword_27CA1A748;
  if (!qword_27CA1A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A748);
  }

  return result;
}

unint64_t sub_2148AFDD8()
{
  result = qword_27CA1A750;
  if (!qword_27CA1A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A750);
  }

  return result;
}

unint64_t sub_2148AFE30()
{
  result = qword_27CA1A758;
  if (!qword_27CA1A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A758);
  }

  return result;
}

unint64_t sub_2148AFE88()
{
  result = qword_27CA1A760;
  if (!qword_27CA1A760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A760);
  }

  return result;
}

unint64_t sub_2148AFEE0()
{
  result = qword_27CA1A768;
  if (!qword_27CA1A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A768);
  }

  return result;
}

unint64_t sub_2148AFF34()
{
  result = qword_27CA1A778;
  if (!qword_27CA1A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A778);
  }

  return result;
}

unint64_t sub_2148AFF88()
{
  result = qword_27CA1A780;
  if (!qword_27CA1A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A780);
  }

  return result;
}

uint64_t sub_2148B0044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A790, &qword_214992E88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2148B00B4()
{
  result = qword_27CA1A798;
  if (!qword_27CA1A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A798);
  }

  return result;
}

unint64_t sub_2148B0108()
{
  result = qword_27CA1A7A8;
  if (!qword_27CA1A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A7A8);
  }

  return result;
}

unint64_t sub_2148B01E8()
{
  result = qword_27CA1A7D0;
  if (!qword_27CA1A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A7D0);
  }

  return result;
}

unint64_t sub_2148B0240()
{
  result = qword_27CA1A7D8;
  if (!qword_27CA1A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A7D8);
  }

  return result;
}

unint64_t sub_2148B0298()
{
  result = qword_27CA1A7E0;
  if (!qword_27CA1A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A7E0);
  }

  return result;
}

unint64_t sub_2148B02F0()
{
  result = qword_27CA1A7E8;
  if (!qword_27CA1A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A7E8);
  }

  return result;
}

unint64_t sub_2148B0348()
{
  result = qword_27CA1A7F0;
  if (!qword_27CA1A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A7F0);
  }

  return result;
}

unint64_t sub_2148B03A0()
{
  result = qword_27CA1A7F8;
  if (!qword_27CA1A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A7F8);
  }

  return result;
}

uint64_t type metadata accessor for CustomRemoteContent(uint64_t a1)
{
  result = qword_27CA1A818;
  if (!qword_27CA1A818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2148B048C(uint64_t a1)
{
  sub_21498E900();
  if (v1 <= 0x3F)
  {
    sub_2148B07D8(319, &qword_27CA1A828, MEMORY[0x277D23340], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2148B06A0(319, &qword_27CA1A830, &qword_27CA1A838, &qword_21499B640);
      if (v3 <= 0x3F)
      {
        sub_2148B06A0(319, &qword_27CA1A840, &qword_27CA1A848, &qword_214993160);
        if (v4 <= 0x3F)
        {
          sub_2148B06F4(319, &qword_281190D68, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_21498E5D0();
            if (v6 <= 0x3F)
            {
              sub_2148B06F4(319, &qword_27CA1A850, &type metadata for CustomRemoteContent.LoadingState, MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_2148B0744(319);
                if (v8 <= 0x3F)
                {
                  sub_2148B07D8(319, &qword_27CA1A860, type metadata accessor for MARemoteViewModel, MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2148B06A0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21498FCF0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2148B06F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2148B0744(uint64_t a1)
{
  if (!qword_27CA1B660)
  {
    sub_21498E8C0();
    sub_2148B4BD8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    v1 = sub_21498ED30();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA1B660);
    }
  }
}

void sub_2148B07D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_19iCloudMailAssistant19CustomRemoteContentV12LoadingState33_71E8631C5FC8C4AC9E539594EC7861FCLLO(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

uint64_t sub_2148B085C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 8) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_2148B08A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = xmmword_2149930D0;
    }
  }

  return result;
}

void *sub_2148B08F8(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x2000000000000000;
  }

  return result;
}

uint64_t sub_2148B0930()
{
  v1 = sub_21498EDC0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for CustomRemoteContent(0) + 52));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_21498FBC0();
    v8 = sub_21498EFC0();
    sub_21498E5A0();

    sub_21498EDB0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_2148B0A8C()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148B0B54(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_2148B0C08(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_2148B0CCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2148B5014(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2148B0CFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE600000000000000;
  v6 = 0x646F6874656DLL;
  v7 = 0xE400000000000000;
  v8 = 2036625250;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x80000002149A04B0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7107189;
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

uint64_t sub_2148B0D80()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x646F6874656DLL;
  v4 = 2036625250;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7107189;
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

unint64_t sub_2148B0E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2148B5014(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2148B0E34(uint64_t a1)
{
  v2 = sub_2148B4B84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148B0E70(uint64_t a1)
{
  v2 = sub_2148B4B84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148B0EAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a1;
  v60 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A810, qword_214993110);
  MEMORY[0x28223BE20](v2 - 8);
  v61 = &v60 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v60 - v7;
  v69 = sub_21498E900();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21498E350();
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x28223BE20](v9);
  v63 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A918, &qword_2149933D8);
  v70 = *(v11 - 8);
  v71 = v11;
  MEMORY[0x28223BE20](v11);
  v78 = &v60 - v12;
  v75 = sub_21498E600();
  v13 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21498E690();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CustomRemoteContent(0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &v23[*(v21 + 44)];
  v80 = xmmword_2149930E0;
  sub_21498F400();
  v25 = v82;
  *v24 = v81;
  v74 = v24;
  *(v24 + 2) = v25;
  v26 = &v23[*(v20 + 48)];
  sub_21498E8C0();
  sub_2148B4BD8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  v73 = sub_21498ED20();
  *v26 = v73;
  v26[1] = v27;
  v79 = v20;
  v28 = *(v20 + 52);
  v83 = v23;
  v29 = &v23[v28];
  KeyPath = swift_getKeyPath();
  *v29 = KeyPath;
  v29[8] = 0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v16, qword_281194E18);
  (*(v17 + 16))(v19, v30, v16);
  v31 = sub_21498E670();
  v32 = sub_21498FBD0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_21488E000, v31, v32, "CustomRemoteContent init", v33, 2u);
    MEMORY[0x216059AC0](v33, -1, -1);
  }

  (*(v17 + 8))(v19, v16);
  if (qword_281190DA8 != -1)
  {
    swift_once();
  }

  v34 = v75;
  v35 = __swift_project_value_buffer(v75, qword_281194E30);
  (*(v13 + 16))(v15, v35, v34);
  v36 = v79[10];
  sub_21498E5F0();
  v37 = v83;
  sub_21498E5B0();
  (*(v13 + 8))(v15, v34);
  v38 = v77;
  __swift_project_boxed_opaque_existential_1(v77, v77[3]);
  sub_2148B4B84();
  v39 = v76;
  sub_2149901B0();
  if (v39)
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
    v43 = sub_21498E5D0();
    (*(*(v43 - 8) + 8))(v37 + v36, v43);
    sub_2148B45A0(*v74, *(v74 + 1));
  }

  else
  {
    LOBYTE(v81) = 0;
    v40 = v71;
    v41 = sub_21498FF20();
    if (!v42)
    {
      v45 = v63;
      sub_21498E340();
      v46 = sub_21498E330();
      v48 = v47;
      (*(v64 + 8))(v45, v65);
      v42 = v48;
      v41 = v46;
      v40 = v71;
    }

    v50 = v68;
    v49 = v69;
    *v37 = v41;
    v37[1] = v42;
    v76 = v42;
    LOBYTE(v81) = 1;
    sub_2148B4BD8(&qword_27CA1A2C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
    v51 = v78;
    sub_21498FFA0();
    (*(v67 + 32))(v83 + v79[5], v50, v49);
    LOBYTE(v81) = 2;
    v52 = v66;
    sub_21498FF40();
    sub_2148B4C68(v52, v83 + v79[6], &qword_27CA1A800, &unk_214993100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A838, &qword_21499B640);
    LOBYTE(v81) = 3;
    sub_2148B4C20(&qword_27CA1A928, &qword_27CA1A838, &qword_21499B640, MEMORY[0x277D23238]);
    v53 = v40;
    v54 = v62;
    sub_21498FF40();
    sub_2148B4C68(v54, v83 + v79[7], &qword_27CA1A808, &unk_21499B730);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
    LOBYTE(v81) = 4;
    sub_2148B4C20(&qword_27CA1A930, &qword_27CA1A848, &qword_214993160, MEMORY[0x277D23238]);
    v55 = v61;
    sub_21498FF40();
    (*(v70 + 8))(v51, v53);
    v56 = v79;
    v57 = v55;
    v58 = v83;
    sub_2148B4C68(v57, v83 + v79[8], &qword_27CA1A810, qword_214993110);
    v59 = (v58 + v56[9]);
    *v59 = 0;
    v59[1] = 0;
    sub_2148B49C8(v58, v60, type metadata accessor for CustomRemoteContent);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return sub_2148B4CD0(v58, type metadata accessor for CustomRemoteContent);
  }
}

uint64_t sub_2148B1A14()
{
  v1 = sub_21498E690();
  MEMORY[0x28223BE20](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  if (*(v0 + *(type metadata accessor for CustomRemoteContent(0) + 48)))
  {

    sub_21498E8F0();

    sub_21498E1A0();

    v5 = sub_21498E1B0();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_21489DFCC(v4, &qword_27CA1A348, &qword_214991700);
      return 0;
    }

    else
    {
      v8 = sub_21498E170();
      (*(v6 + 8))(v4, v5);
      return v8;
    }
  }

  else
  {
    sub_21498E8C0();
    sub_2148B4BD8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    result = sub_21498ED10();
    __break(1u);
  }

  return result;
}

uint64_t sub_2148B1DF4@<X0>(uint64_t a1@<X8>)
{
  v139 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A810, qword_214993110);
  MEMORY[0x28223BE20](v2 - 8);
  v128 = &v110 - v3;
  v4 = type metadata accessor for CustomRemoteContent(0);
  v122 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v124 = v5;
  v125 = (&v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A890, &qword_214993370);
  MEMORY[0x28223BE20](v123);
  v127 = &v110 - v6;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A898, &qword_214993378);
  v7 = MEMORY[0x28223BE20](v138);
  v126 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v129 = &v110 - v9;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8A0, &qword_214993380);
  MEMORY[0x28223BE20](v136);
  v137 = &v110 - v10;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8A8, &qword_214993388);
  MEMORY[0x28223BE20](v132);
  v133 = (&v110 - v11);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8B0, &unk_214993390);
  MEMORY[0x28223BE20](v135);
  v134 = &v110 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  MEMORY[0x28223BE20](v13 - 8);
  v121 = &v110 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  MEMORY[0x28223BE20](v15 - 8);
  v120 = &v110 - v16;
  v117 = sub_21498E510();
  v119 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = (&v110 - v20);
  v22 = type metadata accessor for TracingContext(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for MALiftUISource(0);
  v118 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = (&v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v130 = type metadata accessor for MARemoteView(0);
  v28 = MEMORY[0x28223BE20](v130);
  v30 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v110 - v31;
  v131 = v4;
  v33 = *(v4 + 44);
  v34 = v1;
  v35 = (v1 + v33);
  v36 = *(v35 + 2);
  v140 = *v35;
  *&v141 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8B8, &qword_2149933B0);
  sub_21498F410();
  v37 = v143;
  v38 = v144;
  v39 = (v144 >> 60) & 3;
  if (v39)
  {
    if (v39 == 1)
    {
      v40 = v144;
      *v133 = v143;
      v41 = v37;
      swift_storeEnumTagMultiPayload();
      v42 = v41;
      sub_2148B4BD8(&qword_27CA1A340, type metadata accessor for MARemoteView, &unk_214999710);
      sub_2148B4744();
      v43 = v134;
      sub_21498EE90();
      v44 = &qword_27CA1A8B0;
      v45 = &unk_214993390;
      sub_2148AA824(v43, v137, &qword_27CA1A8B0, &unk_214993390);
      swift_storeEnumTagMultiPayload();
      sub_2148B4688();
      sub_2148B4798();
      sub_21498EE90();
      sub_2148B45A0(v41, v40);
      v46 = v43;
      return sub_21489DFCC(v46, v44, v45);
    }

    sub_2148B45A0(v143, v144);
    v57 = v127;
    sub_21498EBC0();
    v58 = v125;
    sub_2148B49C8(v1, v125, type metadata accessor for CustomRemoteContent);
    v59 = (*(v122 + 80) + 16) & ~*(v122 + 80);
    v60 = swift_allocObject();
    sub_2148B4960(v58, v60 + v59, type metadata accessor for CustomRemoteContent);
    v61 = (v57 + *(v123 + 36));
    sub_21498EC30();
    sub_21498FAC0();
    *v61 = &unk_2149933C0;
    v61[1] = v60;
    v62 = v131;
    v63 = v128;
    sub_2148AA824(&v34[v131[8]], v128, &qword_27CA1A810, qword_214993110);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
    v65 = *(v64 - 8);
    if ((*(v65 + 48))(v63, 1, v64) == 1)
    {
      sub_21489DFCC(v63, &qword_27CA1A810, qword_214993110);
      v66 = 2.0;
LABEL_15:
      LOBYTE(v143) = 0;
      sub_21498F400();
      v105 = v140;
      v106 = *(&v140 + 1);
      v107 = v126;
      sub_2148B4C68(v57, v126, &qword_27CA1A890, &qword_214993370);
      v108 = v107 + *(v138 + 36);
      *v108 = v105;
      *(v108 + 8) = v106;
      *(v108 + 16) = v66;
      v44 = &qword_27CA1A898;
      v45 = &qword_214993378;
      v109 = v129;
      sub_2148B4C68(v107, v129, &qword_27CA1A898, &qword_214993378);
      sub_2148AA824(v109, v137, &qword_27CA1A898, &qword_214993378);
      swift_storeEnumTagMultiPayload();
      sub_2148B4688();
      sub_2148B4798();
      sub_21498EE90();
      v46 = v109;
      return sub_21489DFCC(v46, v44, v45);
    }

    if (*&v34[v62[12]])
    {

      sub_21498E750();

      (*(v65 + 8))(v63, v64);
      v66 = *&v140;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v124 = v18;
  v125 = v30;
  v126 = v24;
  v127 = v32;
  *v27 = v143;
  v27[1] = v38;
  v47 = v37;
  v116 = v27;
  v48 = v38;
  swift_storeEnumTagMultiPayload();
  v128 = v47;
  v129 = v48;
  sub_21489B70C(v47, v48);
  v49 = v34;
  v50 = *(sub_2148B0930() + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_appleAccount);

  v51 = [v50 accountStore];

  if (!v51)
  {
    __break(1u);
LABEL_18:
    sub_21498E8C0();
    sub_2148B4BD8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    result = sub_21498ED10();
    __break(1u);
    return result;
  }

  v113 = v51;
  v111 = *(sub_2148B0930() + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_appleAccount);

  v52 = sub_2148B1A14();
  v54 = v130;
  v114 = v21;
  v115 = v25;
  if (v53)
  {
    v55 = v52;
    v56 = v53;
  }

  else
  {
    v55 = *v34;
    v56 = *(v34 + 1);
  }

  v67 = v116;
  v68 = v126;
  v69 = *(v22 + 20);
  v122 = v69;
  v70 = v131[10];
  v71 = sub_21498E5D0();
  v126 = v71;
  v72 = *(v71 - 8);
  (*(v72 + 16))(&v68[v69], &v49[v70], v71);
  v73 = *(v72 + 56);
  v123 = v72 + 56;
  v131 = v73;
  (v73)(&v68[v69], 0, 1, v71);
  *v68 = v55;
  *(v68 + 1) = v56;
  v74 = v125;
  *v125 = v55;
  v74[1] = v56;
  v75 = v54[5];
  v112 = type metadata accessor for MALiftUISource;
  v76 = v67;
  sub_2148B49C8(v67, v74 + v75, type metadata accessor for MALiftUISource);
  *(v74 + v54[9]) = v113;
  v77 = v111;
  *(v74 + v54[10]) = v111;
  v78 = (v74 + v54[7]);
  sub_21498E8C0();
  *v78 = 0;
  v78[1] = 0;
  swift_allocObject();
  v113 = v77;

  v79 = sub_21498E8B0();
  v111 = "Assistant19IntervalGuardAction";
  v80 = swift_allocObject();
  v81 = v119;
  v82 = v124;
  v83 = v117;
  (*(v119 + 104))(v124, *MEMORY[0x277D245A0], v117);
  LOBYTE(v72) = sub_21498E500();
  v84 = v83;
  v85 = v74;
  (*(v81 + 8))(v82, v84);
  *(v80 + 16) = v72 & 1;
  v86 = v114;
  *v114 = v80;
  v87 = *MEMORY[0x277D23258];
  v88 = sub_21498E7C0();
  v89 = *(v88 - 8);
  (*(v89 + 104))(v86, v87, v88);
  (*(v89 + 56))(v86, 0, 1, v88);
  sub_21498E8E0();
  v90 = v120;
  sub_2148B49C8(v76, v120, v112);
  (*(v118 + 56))(v90, 0, 1, v115);
  type metadata accessor for MARemoteViewModel(0);
  v140 = 0u;
  v141 = 0u;
  v142 = 0;
  swift_allocObject();

  v91 = sub_21490B164(v113, v90, v79, &v140);
  v92 = v74 + v54[6];
  *v92 = sub_21489B760;
  *(v92 + 1) = v91;
  v92[16] = 0;
  v93 = v122;
  sub_2148AA824(&v68[v122], v85 + v54[11], &qword_27CA1A320, &unk_2149916D0);
  v94 = v54;
  v95 = v121;
  sub_2148AA824(&v68[v93], v121, &qword_27CA1A320, &unk_2149916D0);
  type metadata accessor for MARemoteViewDelegate(0);
  v96 = swift_allocObject();
  v97 = OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID;
  (v131)(v96 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID, 1, 1, v126);
  v98 = qword_281190DA8;

  v99 = v116;
  if (v98 != -1)
  {
    swift_once();
  }

  sub_2148B4CD0(v68, type metadata accessor for TracingContext);
  sub_2148B4CD0(v99, type metadata accessor for MALiftUISource);
  v100 = sub_21498E600();
  __swift_project_value_buffer(v100, qword_281194E30);
  *(v96 + 16) = "LoadRemoteView";
  *(v96 + 24) = 14;
  *(v96 + 32) = 2;
  swift_beginAccess();
  sub_21489B818(v95, v96 + v97);
  swift_endAccess();
  v101 = (v96 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry);
  *v101 = sub_21489B7D8;
  v101[1] = v91;
  *(v85 + v94[8]) = v96;
  v102 = v127;
  sub_2148B4960(v85, v127, type metadata accessor for MARemoteView);
  sub_2148B49C8(v102, v133, type metadata accessor for MARemoteView);
  swift_storeEnumTagMultiPayload();
  sub_2148B4BD8(&qword_27CA1A340, type metadata accessor for MARemoteView, &unk_214999710);
  sub_2148B4744();
  v103 = v134;
  sub_21498EE90();
  sub_2148AA824(v103, v137, &qword_27CA1A8B0, &unk_214993390);
  swift_storeEnumTagMultiPayload();
  sub_2148B4688();
  sub_2148B4798();
  sub_21498EE90();
  sub_2148B45A0(v128, v129);
  sub_21489DFCC(v103, &qword_27CA1A8B0, &unk_214993390);
  return sub_2148B4CD0(v102, type metadata accessor for MARemoteView);
}

uint64_t sub_2148B2F9C(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_21498E690();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730);
  v1[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v1[25] = swift_task_alloc();
  v3 = sub_21498E5D0();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v4 = sub_21498E600();
  v1[30] = v4;
  v1[31] = *(v4 - 8);
  v1[32] = swift_task_alloc();
  sub_21498FAB0();
  v1[33] = sub_21498FAA0();
  v6 = sub_21498FA50();
  v1[34] = v6;
  v1[35] = v5;

  return MEMORY[0x2822009F8](sub_2148B31D0, v6, v5);
}

uint64_t sub_2148B31D0()
{
  v77 = v0;
  if (qword_281190DA8 != -1)
  {
    swift_once();
  }

  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[19];
  v8 = __swift_project_value_buffer(v3, qword_281194E30);
  (*(v2 + 16))(v1, v8, v3);
  v9 = type metadata accessor for CustomRemoteContent(0);
  v0[36] = v9;
  v74 = v9;
  v10 = *(v6 + 16);
  v10(v4, v7 + *(v9 + 40), v5);
  v11 = sub_21498E5F0();
  v12 = sub_21498FC80();
  if (sub_21498FCE0())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_21498E5C0();
    _os_signpost_emit_with_name_impl(&dword_21488E000, v11, v12, v14, "LoadRemoteView", "", v13, 2u);
    MEMORY[0x216059AC0](v13, -1, -1);
  }

  v15 = v0[31];
  v16 = v0[29];
  v70 = v0[30];
  v72 = v0[32];
  v18 = v0[27];
  v17 = v0[28];
  v19 = v0[26];
  v20 = v0[19];

  v10(v17, v16, v19);
  sub_21498E650();
  swift_allocObject();
  sub_21498E640();

  (*(v18 + 8))(v16, v19);
  (*(v15 + 8))(v72, v70);
  if (*(v20 + v74[12]))
  {

    v21 = sub_21498E8F0();
    v0[37] = v22;
    v24 = v22;
    v73 = v21;
    v25 = v0[25];
    v26 = v0[19];

    sub_2148AA824(v26 + v74[6], v25, &qword_27CA1A800, &unk_214993100);
    v27 = sub_21498E900();
    v28 = *(v27 - 8);
    v29 = (*(v28 + 48))(v25, 1, v27);
    if (v29 == 1)
    {
      sub_21489DFCC(v0[25], &qword_27CA1A800, &unk_214993100);
      v30 = 1;
    }

    else
    {

      v31 = sub_21498E8F0();
      v32 = (v28 + 8);
      v33 = v0[25];
      v34 = v31;
      v36 = v35;

      (*v32)(v33, v27);
      v37 = sub_21491F750(v34, v36);
      if (v37 == 4)
      {
        v30 = 1;
      }

      else
      {
        v30 = v37;
      }
    }

    v38 = v0[24];
    sub_2148AA824(v0[19] + v74[7], v38, &qword_27CA1A808, &unk_21499B730);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A838, &qword_21499B640);
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v38, 1, v39) == 1)
    {
      sub_21489DFCC(v0[24], &qword_27CA1A808, &unk_21499B730);
      v41 = 0;
      v42 = 0xF000000000000000;
    }

    else
    {
      sub_2148B4A4C();

      sub_21498E750();
      v65 = v0[24];

      (*(v40 + 8))(v65, v39);
      v66 = v0[17];
      sub_21498DF70();
      swift_allocObject();
      sub_21498DF60();
      v0[18] = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A6D0, &qword_2149933D0);
      sub_2148B4AC8();
      v41 = sub_21498DF50();
      v42 = v67;
    }

    v0[38] = v41;
    v0[39] = v42;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v43 = v0[23];
    v44 = v0[20];
    v45 = v0[21];
    v46 = __swift_project_value_buffer(v44, qword_281194E18);
    (*(v45 + 16))(v43, v46, v44);

    v47 = sub_21498E670();
    v48 = sub_21498FBD0();

    v71 = v30;
    if (os_log_type_enabled(v47, v48))
    {
      v69 = v42;
      v75 = v41;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v76[0] = v50;
      v51 = 0xE300000000000000;
      *v49 = 136315394;
      v52 = 5522759;
      v53 = 0xE300000000000000;
      v54 = 5526864;
      if (v30 != 2)
      {
        v54 = 0x4554454C4544;
        v53 = 0xE600000000000000;
      }

      if (v30)
      {
        v52 = 1414745936;
        v51 = 0xE400000000000000;
      }

      if (v30 <= 1u)
      {
        v55 = v52;
      }

      else
      {
        v55 = v54;
      }

      if (v30 <= 1u)
      {
        v56 = v51;
      }

      else
      {
        v56 = v53;
      }

      v68 = v0[23];
      v58 = v0[20];
      v57 = v0[21];
      v59 = sub_2149079F4(v55, v56, v76);

      *(v49 + 4) = v59;
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_2149079F4(v73, v24, v76);
      _os_log_impl(&dword_21488E000, v47, v48, "CustomRemoteContent with: [%s] %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v50, -1, -1);
      MEMORY[0x216059AC0](v49, -1, -1);

      (*(v57 + 8))(v68, v58);
      v41 = v75;
      v42 = v69;
    }

    else
    {
      v60 = v0[23];
      v61 = v0[20];
      v62 = v0[21];

      (*(v62 + 8))(v60, v61);
    }

    v63 = sub_2148B0930();
    sub_2148994D0(v63 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_repository, (v0 + 2));

    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v64 = swift_task_alloc();
    v0[40] = v64;
    *v64 = v0;
    v64[1] = sub_2148B3CB0;

    return sub_214937744(v73, v24, v71, v41, v42);
  }

  else
  {
    sub_21498E8C0();
    sub_2148B4BD8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);

    return sub_21498ED10();
  }
}

uint64_t sub_2148B3CB0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 328) = v2;

  if (v2)
  {
    v7 = v6[34];
    v8 = v6[35];
    v9 = sub_2148B3F80;
  }

  else
  {
    v6[42] = a2;
    v6[43] = a1;
    v7 = v6[34];
    v8 = v6[35];
    v9 = sub_2148B3DF8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2148B3DF8()
{
  v2 = v0[42];
  v1 = v0[43];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v6 = v0[19];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v7 = (v6 + *(v5 + 44));
  v9 = *v7;
  v8 = v7[1];
  v10 = v7[2];
  v0[10] = *v7;
  v0[11] = v8;
  v0[12] = v10;
  v0[15] = v1;
  v0[16] = v2;
  sub_21489B70C(v1, v2);
  sub_21489B70C(v1, v2);
  sub_2148B4A30(v9, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8B8, &qword_2149933B0);
  sub_21498F420();
  sub_21489B8F0(v4, v3);
  sub_21489B4F8(v1, v2);
  sub_21489B4F8(v1, v2);
  sub_2148B45A0(v0[10], v0[11]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2148B3F80()
{
  v1 = v0[38];
  v2 = v0[39];

  sub_21489B8F0(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v0[41];
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = __swift_project_value_buffer(v6, qword_281194E18);
  (*(v5 + 16))(v4, v7, v6);
  v8 = v3;
  v9 = sub_21498E670();
  v10 = sub_21498FBB0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v3;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_21488E000, v9, v10, "CustomRemoteContent: error %@", v11, 0xCu);
    sub_21489DFCC(v12, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v12, -1, -1);
    MEMORY[0x216059AC0](v11, -1, -1);
  }

  v15 = v0[36];
  v17 = v0[21];
  v16 = v0[22];
  v19 = v0[19];
  v18 = v0[20];

  (*(v17 + 8))(v16, v18);
  v20 = (v19 + *(v15 + 44));
  v21 = *v20;
  v22 = v20[1];
  v23 = v20[2];
  v0[7] = *v20;
  v0[8] = v22;
  v0[9] = v23;
  v0[13] = v3;
  v0[14] = 0x1000000000000000;
  sub_2148B4A30(v21, v22);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8B8, &qword_2149933B0);
  sub_21498F420();
  sub_2148B45A0(v0[7], v0[8]);

  v24 = v0[1];

  return v24();
}

uint64_t sub_2148B4220(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148B4BD8(&qword_27CA1A868, type metadata accessor for CustomRemoteContent, &unk_214993328);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2148B42A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148B4BD8(&qword_27CA1A870, type metadata accessor for CustomRemoteContent, &unk_2149932D8);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2148B4320(uint64_t a1)
{
  v2 = sub_2148B4BD8(&qword_27CA1A870, type metadata accessor for CustomRemoteContent, &unk_2149932D8);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2148B439C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148B4BD8(&qword_27CA1A888, type metadata accessor for CustomRemoteContent, &unk_2149932A0);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_2148B4458(uint64_t a1, uint64_t a2)
{
  sub_2148B4BD8(&qword_27CA1A868, type metadata accessor for CustomRemoteContent, &unk_214993328);
  sub_2148B4BD8(&qword_27CA1A870, type metadata accessor for CustomRemoteContent, &unk_2149932D8);
  return swift_getOpaqueTypeConformance2();
}

void sub_2148B45A0(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2 == 1)
  {
  }

  else if (!v2)
  {
    sub_21489B4F8(result, a2);
  }
}

uint64_t sub_2148B45BC()
{
  v2 = *(type metadata accessor for CustomRemoteContent(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_214899138;

  return sub_2148B2F9C(v0 + v3);
}

unint64_t sub_2148B4688()
{
  result = qword_27CA1A8C0;
  if (!qword_27CA1A8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A8B0, &unk_214993390);
    sub_2148B4BD8(&qword_27CA1A340, type metadata accessor for MARemoteView, &unk_214999710);
    sub_2148B4744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A8C0);
  }

  return result;
}

unint64_t sub_2148B4744()
{
  result = qword_27CA1A8C8;
  if (!qword_27CA1A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A8C8);
  }

  return result;
}

unint64_t sub_2148B4798()
{
  result = qword_27CA1A8D0;
  if (!qword_27CA1A8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A898, &qword_214993378);
    sub_2148B4824();
    sub_2148B490C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A8D0);
  }

  return result;
}

unint64_t sub_2148B4824()
{
  result = qword_27CA1A8D8;
  if (!qword_27CA1A8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A890, &qword_214993370);
    sub_2148B4C20(&qword_27CA1A8E0, &qword_27CA1A8E8, &qword_2149933C8, MEMORY[0x277CDD7F8]);
    sub_2148B4BD8(&qword_27CA1B7A0, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A8D8);
  }

  return result;
}

unint64_t sub_2148B490C()
{
  result = qword_27CA1A8F0;
  if (!qword_27CA1A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A8F0);
  }

  return result;
}

uint64_t sub_2148B4960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2148B49C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2148B4A30(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2 == 1)
  {
    return result;
  }

  if (!v2)
  {
    return sub_21489B70C(result, a2);
  }

  return result;
}

unint64_t sub_2148B4A4C()
{
  result = qword_27CA1A900;
  if (!qword_27CA1A900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A6D0, &qword_2149933D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A900);
  }

  return result;
}

unint64_t sub_2148B4AC8()
{
  result = qword_27CA1A908;
  if (!qword_27CA1A908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A6D0, &qword_2149933D0);
    sub_2148B4BD8(&qword_27CA1A910, MEMORY[0x277D232B0], MEMORY[0x277D232B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A908);
  }

  return result;
}

unint64_t sub_2148B4B84()
{
  result = qword_27CA1A920;
  if (!qword_27CA1A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A920);
  }

  return result;
}

uint64_t sub_2148B4BD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2148B4C20(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2148B4C68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2148B4CD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for CustomRemoteContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CustomRemoteContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2148B4E80()
{
  result = qword_27CA1A938;
  if (!qword_27CA1A938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A940, &qword_214993418);
    sub_2148B4688();
    sub_2148B4798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A938);
  }

  return result;
}

unint64_t sub_2148B4F10()
{
  result = qword_27CA1A948;
  if (!qword_27CA1A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A948);
  }

  return result;
}

unint64_t sub_2148B4F68()
{
  result = qword_27CA1A950;
  if (!qword_27CA1A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A950);
  }

  return result;
}

unint64_t sub_2148B4FC0()
{
  result = qword_27CA1A958;
  if (!qword_27CA1A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A958);
  }

  return result;
}

unint64_t sub_2148B5014(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2148B5060()
{

  sub_21498EB20();

  return v1;
}

uint64_t sub_2148B50AC()
{

  sub_21498EB20();

  return v1;
}

uint64_t sub_2148B50F8()
{

  sub_21498EB20();

  return v1;
}

uint64_t sub_2148B5144()
{

  sub_21498EB20();

  return v1;
}

uint64_t sub_2148B5190()
{

  sub_21498EB20();

  return v1;
}

uint64_t sub_2148B51DC()
{

  sub_21498EB20();

  return v1;
}

uint64_t sub_2148B5228()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  return v1;
}

uint64_t sub_2148B52C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  return v1;
}

double sub_2148B5360@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

double sub_2148B53EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  return v1;
}

__n128 sub_2148B5460@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  result = v4;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_2148B5530@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  result = v4;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_2148B55D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();
}

uint64_t sub_2148B5674(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  return v3;
}

uint64_t sub_2148B5730(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  return v3;
}

uint64_t sub_2148B57C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();
}

uint64_t sub_2148B5834()
{
  v1[4] = v0;
  sub_21498FAB0();
  v1[5] = sub_21498FAA0();
  v3 = sub_21498FA50();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_2148B58CC, v3, v2);
}

uint64_t sub_2148B58CC()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 4) + 16), *(*(v0 + 4) + 40));
  v1 = sub_21493B060(0xD00000000000003BLL, 0x80000002149A15B0);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v1;

  sub_21498EA20();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v2 = *(v0 + 3);
  *(v0 + 8) = v2;
  v5 = (*(*v2 + 256) + **(*v2 + 256));
  v3 = swift_task_alloc();
  *(v0 + 9) = v3;
  *v3 = v0;
  v3[1] = sub_2148B5ACC;

  return v5();
}

uint64_t sub_2148B5ACC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  *v3 = v2;
  v3[1] = sub_2148B5C28;

  return sub_2148B8444();
}

uint64_t sub_2148B5C28()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_2148BC75C, v3, v2);
}

uint64_t sub_2148B5D48()
{
  v0 = sub_21498E320();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB20, &qword_214993BD0);
  sub_21498EB20();

  if (v15)
  {
    return 4271950;
  }

  v5 = v14;
  sub_21498E310();
  sub_21498E2E0();
  v7 = v6;
  v8 = v6;
  result = (*(v1 + 8))(v3, v0);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v9 >= 1296000)
  {
    return 0x737961642030;
  }

  v10 = __OFSUB__(1296000, v9);
  v11 = 1296000 - v9;
  if (!v10)
  {
    v13[1] = v11 / 86400;
    v14 = sub_214990050();
    v15 = v12;
    MEMORY[0x2160589C0](0x7379616420, 0xE500000000000000);
    return v14;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_2148B5F58()
{
  v0 = sub_21498E320();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB20, &qword_214993BD0);
  sub_21498EB20();

  if ((v13 & 1) == 0)
  {
    v4 = v12;
    sub_21498E310();
    sub_21498E2E0();
    v6 = v5;
    v7 = v5;
    (*(v1 + 8))(v3, v0);
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v6 > -9.22337204e18)
    {
      if (v6 < 9.22337204e18)
      {
        if (!__OFSUB__(v6, v4))
        {
          if (v6 - v4 > 1295999)
          {
            return;
          }

          if (!__OFADD__(v4, -1296000))
          {
            _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
            v9 = v8;
            v10 = sub_21498FB20();
            v11 = sub_21498F840();
            [v9 setObject:v10 forKey:v11];

            return;
          }

LABEL_14:
          __break(1u);
          return;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_2148B614C()
{
  v1[4] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AAE0, qword_214993660);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_21498FAB0();
  v1[7] = sub_21498FAA0();
  v3 = sub_21498FA50();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x2822009F8](sub_2148B6228, v3, v2);
}

uint64_t sub_2148B6228()
{
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 104) = 1;

  sub_21498EA20();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v1 = *(v0 + 16);
  *(v0 + 80) = v1;
  v4 = (*(*v1 + 424) + **(*v1 + 424));
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_2148B63F4;

  return v4();
}

uint64_t sub_2148B63F4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_2148B6540, v4, v3);
}

uint64_t sub_2148B6540()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  v3 = *(v0 + 40);

  *(v0 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  sub_21489CA54();
  v4 = sub_21498F810();
  v6 = v5;
  sub_21498E340();
  v7 = type metadata accessor for ResultContainer(0);
  v8 = (v2 + *(v7 + 20));
  *v8 = 0xD000000000000012;
  v8[1] = 0x80000002149A15F0;
  v9 = (v2 + *(v7 + 24));
  *v9 = v4;
  v9[1] = v6;
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2148AA824(v2, v3, &qword_27CA1AAE0, qword_214993660);

  sub_21498EA20();
  sub_21489DFCC(v2, &qword_27CA1AAE0, qword_214993660);
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v11 = v10;
  v12 = sub_21498F840();
  [v11 setObject:0 forKey:v12];

  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v14 = v13;
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v16 = v15;

  v17 = sub_21498F840();

  [v14 setBool:0 forKey:v17];

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 105) = 0;

  sub_21498EA20();

  v18 = *(v0 + 8);
  v19 = *(v0 + 96);

  return v18(v19);
}

void sub_2148B67EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  MEMORY[0x28223BE20](v4 - 8);
  v28 = &v26 - v5;
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v7 = v6;
  v8 = [v6 dictionaryRepresentation];

  v9 = sub_21498F7E0();
  v10 = 0;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v29 = "tegoriesDisabledTimestamp";
  v26 = a1;
  v27 = a2;
  if (v13)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v15 >= v14)
    {

      return;
    }

    v13 = *(v9 + 64 + 8 * v15);
    ++v10;
    if (v13)
    {
      while (1)
      {
        v13 &= v13 - 1;

        if (sub_21498F950())
        {
          v16 = [objc_opt_self() defaultManager];
          v17 = sub_21498F840();
          v18 = [v16 containerURLForSecurityApplicationGroupIdentifier_];

          if (v18)
          {
            v19 = v28;
            sub_21498E160();

            v20 = 0;
          }

          else
          {
            v20 = 1;
            v19 = v28;
          }

          v21 = sub_21498E1B0();
          (*(*(v21 - 8) + 56))(v19, v20, 1, v21);
          sub_21489DFCC(v19, &qword_27CA1A348, &qword_214991700);
          v22 = objc_allocWithZone(type metadata accessor for NSUserDefaults.MailCleanupUserDefaults());
          v23 = sub_21498F840();
          v24 = [v22 initWithSuiteName_];

          if (!v24)
          {
            goto LABEL_19;
          }

          v25 = sub_21498F840();

          [v24 removeObjectForKey_];

          v10 = v15;
          if (!v13)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v10 = v15;
          if (!v13)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v15 = v10;
      }
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_2148B6B20()
{
  v1[6] = v0;
  v2 = sub_21498E690();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  sub_21498FAB0();
  v1[10] = sub_21498FAA0();
  v4 = sub_21498FA50();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x2822009F8](sub_2148B6C14, v4, v3);
}

uint64_t sub_2148B6C14()
{
  v1 = v0[6];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = 0;

  sub_21498EA20();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_2148B6D0C;

  return sub_214938AB4(0, 0, 1);
}

uint64_t sub_2148B6D0C(char a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 112) = v3;

  if (v3)
  {
    v9 = *(v8 + 88);
    v10 = *(v8 + 96);
    v11 = sub_2148B6FC4;
  }

  else
  {
    *(v8 + 120) = a3;
    *(v8 + 128) = a2;
    *(v8 + 137) = a1 & 1;
    v9 = *(v8 + 88);
    v10 = *(v8 + 96);
    v11 = sub_2148B6E4C;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_2148B6E4C()
{
  v1 = *(v0 + 137);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = v3;

  sub_21498EA20();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 40) = v2;

  sub_21498EA20();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 136) = v1;

  sub_21498EA20();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2148B6FC4()
{

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = __swift_project_value_buffer(v4, qword_281194E18);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_21498E670();
  v8 = sub_21498FBB0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[14];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_21488E000, v7, v8, "fetchRecommendations - %@", v10, 0xCu);
    sub_21489DFCC(v11, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v11, -1, -1);
    MEMORY[0x216059AC0](v10, -1, -1);
  }

  v14 = v0[14];
  v16 = v0[8];
  v15 = v0[9];
  v17 = v0[7];

  (*(v16 + 8))(v15, v17);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[3] = v14;

  sub_21498EA20();

  v18 = v0[1];

  return v18();
}

uint64_t sub_2148B71E4()
{
  v1[18] = v0;
  v2 = sub_21498E690();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  sub_21498FAB0();
  v1[22] = sub_21498FAA0();
  v4 = sub_21498FA50();
  v1[23] = v4;
  v1[24] = v3;

  return MEMORY[0x2822009F8](sub_2148B72D8, v4, v3);
}

uint64_t sub_2148B72D8()
{
  v1 = v0[18];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[16] = 0;

  sub_21498EA20();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_2148B73CC;

  return sub_21493A124((v0 + 2));
}

uint64_t sub_2148B73CC()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_2148B75E8;
  }

  else
  {
    v6 = *(v2 + 32);
    *(v2 + 216) = *(v2 + 16);
    *(v2 + 232) = v6;
    *(v2 + 248) = *(v2 + 48);
    *(v2 + 65) = *(v2 + 64);
    v3 = *(v2 + 184);
    v4 = *(v2 + 192);
    v5 = sub_2148B74FC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2148B74FC()
{
  v1 = *(v0 + 65);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v6 = *(v0 + 232);
  v7 = *(v0 + 216);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 88) = v6;
  *(v0 + 72) = v7;
  *(v0 + 104) = v3;
  *(v0 + 112) = v2;
  *(v0 + 120) = v1;

  sub_21498EA20();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2148B75E8()
{

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v5 = __swift_project_value_buffer(v4, qword_281194E18);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_21498E670();
  v8 = sub_21498FBB0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[26];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_21488E000, v7, v8, "fetchPreferences - %@", v10, 0xCu);
    sub_21489DFCC(v11, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v11, -1, -1);
    MEMORY[0x216059AC0](v10, -1, -1);
  }

  v14 = v0[26];
  v16 = v0[20];
  v15 = v0[21];
  v17 = v0[19];

  (*(v16 + 8))(v15, v17);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[17] = v14;

  sub_21498EA20();

  v18 = v0[1];

  return v18();
}

uint64_t sub_2148B7808()
{
  v1[5] = v0;
  v2 = sub_21498E690();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_21498FAB0();
  v1[9] = sub_21498FAA0();
  v4 = sub_21498FA50();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x2822009F8](sub_2148B78FC, v4, v3);
}

uint64_t sub_2148B78FC()
{
  v1 = v0[5];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = 0;

  sub_21498EA20();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_2148B79EC;

  return sub_214933DA0(0);
}

uint64_t sub_2148B79EC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_2148B7BD8;
  }

  else
  {
    v4[14] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_2148B7B14;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2148B7B14()
{
  v1 = v0[14];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[4] = v1;

  sub_21498EA20();

  v2 = v0[1];

  return v2();
}

uint64_t sub_2148B7BD8()
{

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = __swift_project_value_buffer(v4, qword_281194E18);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_21498E670();
  v8 = sub_21498FBB0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[13];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_21488E000, v7, v8, "fetchUnifiedRules - %@", v10, 0xCu);
    sub_21489DFCC(v11, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v11, -1, -1);
    MEMORY[0x216059AC0](v10, -1, -1);
  }

  v14 = v0[13];
  v16 = v0[7];
  v15 = v0[8];
  v17 = v0[6];

  (*(v16 + 8))(v15, v17);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[3] = v14;

  sub_21498EA20();

  v18 = v0[1];

  return v18();
}

uint64_t sub_2148B7DF8()
{
  v1[15] = v0;
  v2 = sub_21498E690();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  sub_21498FAB0();
  v1[19] = sub_21498FAA0();
  v4 = sub_21498FA50();
  v1[20] = v4;
  v1[21] = v3;

  return MEMORY[0x2822009F8](sub_2148B7EEC, v4, v3);
}

uint64_t sub_2148B7EEC()
{
  v1 = v0[15];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[12] = 0;

  sub_21498EA20();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_2148B7FE4;

  return sub_214937B00((v0 + 2), 1);
}

uint64_t sub_2148B7FE4()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_2148B8224;
  }

  else
  {
    v5 = sub_2148B8120;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2148B8120()
{

  v1 = *(v0 + 16);
  *(v0 + 64) = *(v0 + 24);
  sub_21489DFCC(v0 + 64, &qword_27CA1AB18, &unk_21499A610);
  *(v0 + 80) = *(v0 + 40);
  sub_21489DFCC(v0 + 80, &qword_27CA1AB18, &unk_21499A610);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 112) = v1;

  sub_21498EA20();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2148B8224()
{

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = __swift_project_value_buffer(v4, qword_281194E18);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_21498E670();
  v8 = sub_21498FBB0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[23];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_21488E000, v7, v8, "fetchUnifiedRules - %@", v10, 0xCu);
    sub_21489DFCC(v11, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v11, -1, -1);
    MEMORY[0x216059AC0](v10, -1, -1);
  }

  v14 = v0[23];
  v16 = v0[17];
  v15 = v0[18];
  v17 = v0[16];

  (*(v16 + 8))(v15, v17);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[13] = v14;

  sub_21498EA20();

  v18 = v0[1];

  return v18();
}

uint64_t sub_2148B8444()
{
  v1[3] = v0;
  v1[4] = sub_21498FAB0();
  v1[5] = sub_21498FAA0();
  v3 = sub_21498FA50();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_2148B84E0, v3, v2);
}

uint64_t sub_2148B84E0()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 3) + 16), *(*(v0 + 3) + 40));
  v1 = sub_21493B060(0xD00000000000003BLL, 0x80000002149A15B0);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v1;

  sub_21498EA20();
  v2 = sub_21498FAA0();
  *(v0 + 8) = v2;
  v3 = swift_task_alloc();
  *(v0 + 9) = v3;
  *v3 = v0;
  v3[1] = sub_2148B8648;
  v4 = *(v0 + 3);
  v5 = MEMORY[0x277D84F78] + 8;
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D84F78] + 8;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v3, v5, v7, v2, v6, &unk_2149937A0, v4, v8);
}

uint64_t sub_2148B8648()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_2148B878C, v3, v2);
}

uint64_t sub_2148B878C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2148B87EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v3[4] = swift_task_alloc();
  sub_21498FAB0();
  v3[5] = sub_21498FAA0();
  v5 = sub_21498FA50();

  return MEMORY[0x2822009F8](sub_2148B88BC, v5, v4);
}

uint64_t sub_2148B88BC()
{
  v1 = v0[4];
  v2 = v0[3];

  v3 = sub_21498FAE0();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;

  sub_2148B8D10(v1, &unk_2149937B8, v5, &unk_2826C6F68, MEMORY[0x277D84F78] + 8, &unk_214993850);
  sub_21489DFCC(v1, &qword_27CA1B6D0, &qword_2149916C0);
  v4(v1, 1, 1, v3);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;

  v7 = MEMORY[0x277D84F78];
  sub_2148B8D10(v1, &unk_2149937C8, v6, &unk_2826C6F68, MEMORY[0x277D84F78] + 8, &unk_214993850);
  sub_21489DFCC(v1, &qword_27CA1B6D0, &qword_2149916C0);
  v4(v1, 1, 1, v3);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;

  sub_2148B8D10(v1, &unk_2149937D8, v8, &unk_2826C6F68, v7 + 8, &unk_214993850);
  sub_21489DFCC(v1, &qword_27CA1B6D0, &qword_2149916C0);
  v4(v1, 1, 1, v3);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;

  sub_2148B8D10(v1, &unk_2149937E8, v9, &unk_2826C6F68, v7 + 8, &unk_214993850);
  sub_21489DFCC(v1, &qword_27CA1B6D0, &qword_2149916C0);
  v4(v1, 1, 1, v3);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;

  sub_2148B8D10(v1, &unk_2149937F8, v10, &unk_2826C6F68, MEMORY[0x277D84F78] + 8, &unk_214993850);
  sub_21489DFCC(v1, &qword_27CA1B6D0, &qword_2149916C0);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2148B8C58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_214899964;

  return sub_2148B71E4();
}

uint64_t sub_2148B8D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[0] = a6;
  v7 = v6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v23 - v12;
  sub_2148AA824(a1, v23 - v12, &qword_27CA1B6D0, &qword_2149916C0);
  v14 = sub_21498FAE0();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_21489DFCC(v13, &qword_27CA1B6D0, &qword_2149916C0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_21498FA50();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_21498FAD0();
    (*(v15 + 8))(v13, v14);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v7;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

uint64_t sub_2148B8F20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_214899138;

  return sub_2148B6B20();
}

uint64_t sub_2148B8FB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_214899964;

  return sub_2148B7808();
}

uint64_t sub_2148B9040()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_214899964;

  return sub_2148B7DF8();
}

uint64_t sub_2148B90F0()
{
  sub_21498FAB0();
  *(v0 + 32) = sub_21498FAA0();
  v2 = sub_21498FA50();

  return MEMORY[0x2822009F8](sub_2148B9184, v2, v1);
}

uint64_t sub_2148B9184()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v1 = v0[2];
  v0[5] = v1;
  v4 = (*(*v1 + 344) + **(*v1 + 344));
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_2148B9304;

  return v4();
}

uint64_t sub_2148B9304()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_2148B9414()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__provider;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB28, &qword_214993D88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__unsubscribeRecommendations;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB30, &qword_214993D90);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__automationRecommendations;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB38, &qword_214993D98);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__showUnsubscribeInMessageList;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB40, &qword_214993DA0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__unifiedRules;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB48, &qword_214993DA8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__inlineTips;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB50, &qword_214993DB0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__preferences;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB58, &qword_214993DB8);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__cacheTTL;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB60, &qword_214993DC0);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__selectedAutomationRecommendation;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB68, &qword_214993DC8);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__selectedUnsubscribeRecommendations;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB70, &qword_214993DD0);
  v21 = *(*(v20 - 8) + 8);
  v21(v0 + v19, v20);
  v22 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__selectedUnifiedRule;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB78, &qword_214993DD8);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  v24 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__selectedInlineTip;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB80, &qword_214993DE0);
  (*(*(v25 - 8) + 8))(v0 + v24, v25);
  v21(v0 + OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__isResettingMailCleanup, v20);
  v21(v0 + OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__shouldShowOnboardingScreen, v20);
  v26 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__recommendationsError;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB88, &qword_214993DE8);
  v28 = *(*(v27 - 8) + 8);
  v28(v0 + v26, v27);
  v28(v0 + OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__unifiedRulesError, v27);
  v28(v0 + OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__inlineTipsError, v27);
  v28(v0 + OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__preferencesError, v27);
  v29 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__errorToPresent;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB90, &qword_214993DF0);
  (*(*(v30 - 8) + 8))(v0 + v29, v30);
  v31 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__resultToPresent;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB98, &qword_214993DF8);
  (*(*(v32 - 8) + 8))(v0 + v31, v32);
  return v0;
}

uint64_t sub_2148B9994()
{
  sub_2148B9414();

  return swift_deallocClassInstance();
}

void sub_2148B9A14(uint64_t a1)
{
  sub_2148B9F60(319);
  if (v1 <= 0x3F)
  {
    sub_2148BA004(319, &qword_27CA1AA18, &qword_27CA1AA20, &qword_214993608);
    if (v2 <= 0x3F)
    {
      sub_2148BA004(319, &qword_27CA1AA28, &qword_27CA1AA30, &qword_214993610);
      if (v3 <= 0x3F)
      {
        sub_2148BA004(319, &qword_27CA1AA38, &qword_27CA1AA40, &qword_214993618);
        if (v4 <= 0x3F)
        {
          sub_2148BA004(319, &qword_27CA1AA48, &qword_27CA1AA50, &qword_214993620);
          if (v5 <= 0x3F)
          {
            sub_2148BA004(319, &qword_27CA1AA58, &qword_27CA1AA60, &qword_214993628);
            if (v6 <= 0x3F)
            {
              sub_2148BA004(319, &qword_27CA1AA68, &qword_27CA1AA70, &qword_214993630);
              if (v7 <= 0x3F)
              {
                sub_2148B9FB8(319, &qword_27CA1AA78, MEMORY[0x277D839F8]);
                if (v8 <= 0x3F)
                {
                  sub_2148BA004(319, &qword_27CA1AA80, &qword_27CA1AA88, &qword_214993638);
                  if (v9 <= 0x3F)
                  {
                    sub_2148B9FB8(319, &qword_27CA1AA90, MEMORY[0x277D839B0]);
                    if (v10 <= 0x3F)
                    {
                      sub_2148BA004(319, &qword_27CA1AA98, &qword_27CA1AAA0, &qword_214993640);
                      if (v11 <= 0x3F)
                      {
                        sub_2148BA004(319, &qword_27CA1AAA8, &qword_27CA1AAB0, &qword_214993648);
                        if (v12 <= 0x3F)
                        {
                          sub_2148BA004(319, &qword_27CA1AAB8, &qword_27CA1AAC0, &unk_214993650);
                          if (v13 <= 0x3F)
                          {
                            sub_2148BA004(319, &qword_27CA1AAC8, &qword_27CA1AAD0, &qword_214994AB0);
                            if (v14 <= 0x3F)
                            {
                              sub_2148BA004(319, &qword_27CA1AAD8, &qword_27CA1AAE0, qword_214993660);
                              if (v15 <= 0x3F)
                              {
                                swift_updateClassMetadata2();
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2148B9F60(uint64_t a1)
{
  if (!qword_27CA1AA10)
  {
    type metadata accessor for iCloudMailAssistantProviderSwift();
    v1 = sub_21498EA30();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA1AA10);
    }
  }
}

void sub_2148B9FB8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21498EA30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2148BA004(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21498EA30();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2148BA0A0(uint64_t a1)
{
  result = sub_21498E350();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2148BA164(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2148BA19C(uint64_t a1)
{
  result = sub_21498E350();
  if (v2 <= 0x3F)
  {
    result = sub_2148BA220();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2148BA220()
{
  result = qword_27CA1AB08;
  if (!qword_27CA1AB08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CA1AB08);
  }

  return result;
}

unint64_t sub_2148BA284()
{
  result = qword_27CA1AB10;
  if (!qword_27CA1AB10)
  {
    sub_21498E350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AB10);
  }

  return result;
}

uint64_t sub_2148BA2DC@<X0>(uint64_t *a2@<X8>)
{
  _s9ViewModelCMa(0);
  result = sub_21498E9D0();
  *a2 = result;
  return result;
}

uint64_t sub_2148BA31C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21498E350();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

__n128 sub_2148BA3B8@<Q0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  result = v5;
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *(a2 + 96) = v10;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_2148BA478(__int128 *a1, uint64_t *a2)
{
  v3 = a1[5];
  v18[4] = a1[4];
  v18[5] = v3;
  v19 = *(a1 + 96);
  v4 = a1[1];
  v18[0] = *a1;
  v18[1] = v4;
  v5 = a1[3];
  v18[2] = a1[2];
  v18[3] = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[5];
  v15 = a1[4];
  v16 = v6;
  v17 = *(a1 + 96);
  v7 = a1[1];
  v11 = *a1;
  v12 = v7;
  v8 = a1[3];
  v13 = a1[2];
  v14 = v8;
  sub_2148AA824(v18, v10, &qword_27CA1AA88, &qword_214993638);

  return sub_21498EA20();
}

__n128 sub_2148BA578@<Q0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  result = v5;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_2148BA628(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[5];
  v11[4] = a1[4];
  v11[5] = v3;
  v11[6] = a1[6];
  v4 = a1[1];
  v11[0] = *a1;
  v11[1] = v4;
  v5 = a1[3];
  v11[2] = a1[2];
  v11[3] = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[5];
  v10[11] = a1[4];
  v10[12] = v6;
  v10[13] = a1[6];
  v7 = a1[1];
  v10[7] = *a1;
  v10[8] = v7;
  v8 = a1[3];
  v10[9] = a1[2];
  v10[10] = v8;
  sub_2148AA824(v11, v10, &qword_27CA1AAA0, &qword_214993640);

  return sub_21498EA20();
}

void *sub_2148BA6FC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  return memcpy(a2, v4, 0x179uLL);
}

uint64_t sub_2148BA78C(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, 0x179uLL);
  swift_getKeyPath();
  swift_getKeyPath();
  memcpy(v5, __src, sizeof(v5));
  sub_2148AA824(__dst, &v4, &qword_27CA1AAB0, &qword_214993648);

  return sub_21498EA20();
}

uint64_t sub_2148BA890()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();
}

uint64_t sub_2148BA92C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v18 - v15;
  sub_2148AA824(a1, &v18 - v15, a5, a6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2148AA824(v16, v14, a5, a6);

  sub_21498EA20();
  return sub_21489DFCC(v16, a5, a6);
}

uint64_t sub_2148BAAA4@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  *a2 = v4;
  return result;
}

uint64_t sub_2148BAB24(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21498EA20();
}

uint64_t sub_2148BABE8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21498EA20();
}

double sub_2148BAC60@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_2148BACF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2148BB870(v2, v3, v4, v5, v6);

  return sub_21498EA20();
}

double sub_2148BADB4@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_2148BAE34(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21498EA20();
}

uint64_t sub_2148BAEB0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_214899138;

  return sub_2148B87EC(a1, a2, v2);
}

uint64_t sub_2148BAF5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_214899964;

  return sub_2148B8C58();
}

uint64_t sub_2148BB010()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_214899964;

  return sub_2148B8F20();
}

uint64_t sub_2148BB0C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_214899964;

  return sub_2148B8FB0();
}

uint64_t sub_2148BB178()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_214899964;

  return sub_2148B9040();
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2148BB26C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899964;

  return sub_2148B90D0(a1, v4, v5, v6);
}

uint64_t sub_2148BB334@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  *a4 = v6;
  return result;
}

uint64_t sub_2148BB3C4(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21498EA20();
}

uint64_t sub_2148BB4C0@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  *a4 = v6;
  return result;
}

uint64_t sub_2148BB550(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return sub_21498EA20();
}

uint64_t sub_2148BB5C8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2148BB6C0;

  return v6(a1);
}

uint64_t sub_2148BB6C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2148BB7B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214899964;

  return sub_2148BB5C8(a1, v4);
}

void sub_2148BB870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 2)
  {
    sub_2148BB880(a1, a2, a3, a4, a5);
  }
}

void sub_2148BB880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_2148BB8C8(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_2148BB9BC;

  return v5(v2 + 16);
}

uint64_t sub_2148BB9BC()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v6 = *v0;

  v3 = *(v1 + 24);
  *v2 = *(v1 + 16);
  v2[1] = v3;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2148BBB00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214899138;

  return sub_2148BB8C8(a1, v4);
}

uint64_t sub_2148BBBB8()
{
  v1 = sub_21498E690();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  v0[5] = swift_task_alloc();
  v0[6] = type metadata accessor for TapToRadarDraft(0);
  v0[7] = swift_task_alloc();
  sub_21498FAB0();
  v0[8] = sub_21498FAA0();
  v3 = sub_21498FA50();
  v0[9] = v3;
  v0[10] = v2;

  return MEMORY[0x2822009F8](sub_2148BBD10, v3, v2);
}

uint64_t sub_2148BBD10()
{
  if (qword_27CA19F98 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v29 = *(&xmmword_27CA1BDF0 + 1);
  v30 = xmmword_27CA1BDF0;
  v27 = qword_27CA1BE00;
  v28 = unk_27CA1BE08;
  v26 = qword_27CA1BE10;

  v4 = v3;
  v25 = v3;
  sub_21498E310();
  v5 = sub_21498E320();
  v6 = *(*(v5 - 8) + 56);
  v31 = v0;
  v6(v4, 0, 1, v5);
  *v1 = 0x4449656C646E7542;
  *(v1 + 8) = 0xE800000000000000;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 88) = 10;
  *(v1 + 64) = 0;
  strcpy((v1 + 72), "Classification");
  *(v1 + 87) = -18;
  *(v1 + 112) = 6;
  *(v1 + 96) = 0x6375646F72706552;
  *(v1 + 104) = 0xEF7974696C696269;
  *(v1 + 120) = 0x656C746954;
  *(v1 + 128) = 0xE500000000000000;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 152) = 0x7470697263736544;
  *(v1 + 160) = 0xEB000000006E6F69;
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0x7364726F7779654BLL;
  *(v1 + 192) = 0xE800000000000000;
  v7 = MEMORY[0x277D84F90];
  *(v1 + 200) = MEMORY[0x277D84F90];
  v8 = (v1 + v2[11]);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA8, &unk_214993E28) + 36);
  v6(v8 + v24, 1, 1, v5);
  *v8 = 0x7349664F656D6954;
  v8[1] = 0xEB00000000657573;
  v22 = (v1 + v2[12]);
  v23 = v8;
  *v22 = 0x656D686361747441;
  v22[1] = 0xEB0000000073746ELL;
  v22[2] = v7;
  v21 = (v1 + v2[13]);
  *v21 = 0xD000000000000011;
  v21[1] = 0x80000002149A1680;
  v21[2] = v7;
  v20 = (v1 + v2[14]);
  *v20 = 0xD000000000000014;
  v20[1] = 0x80000002149A16A0;
  v20[2] = v7;
  v19 = (v1 + v2[15]);
  strcpy(v19, "DeleteOnAttach");
  v19[15] = -18;
  v19[16] = 0;
  v9 = (v1 + v2[16]);
  *v9 = 0x4449656369766544;
  v9[1] = 0xE900000000000073;
  v9[2] = v7;
  v10 = v1 + v2[17];
  strcpy(v10, "DeviceClasses");
  *(v10 + 14) = -4864;
  *(v10 + 16) = v7;
  v11 = v1 + v2[18];
  strcpy(v11, "DeviceModels");
  *(v11 + 13) = 0;
  *(v11 + 14) = -5120;
  *(v11 + 16) = v7;
  v12 = (v1 + v2[19]);
  *v12 = 0xD000000000000016;
  v12[1] = 0x80000002149A16C0;
  v12[2] = 0;
  v13 = v1 + v2[20];
  *v13 = 0xD00000000000001ALL;
  *(v13 + 8) = 0x80000002149A16E0;
  *(v13 + 16) = 0;
  v14 = v1 + v2[21];
  *(v14 + 16) = 0;
  *v14 = 0x676169446F747541;
  *(v14 + 8) = 0xEF73636974736F6ELL;
  v15 = (v1 + v2[22]);
  *v15 = 0xD00000000000001BLL;
  v15[1] = 0x80000002149A1700;
  v15[2] = v7;
  v16 = (v1 + v2[23]);
  *v16 = 0xD000000000000018;
  v16[1] = 0x80000002149A1720;
  v16[2] = 0;
  v16[3] = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_2148BC644(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
  *(v1 + 32) = v30;
  *(v1 + 40) = v29;
  *(v1 + 48) = v27;
  *(v1 + 56) = v28;
  *(v1 + 64) = v26;
  *(v1 + 88) = 5;
  *(v1 + 112) = 4;
  *(v1 + 136) = 0xD00000000000001ALL;
  *(v1 + 144) = 0x80000002149A1660;
  *(v1 + 168) = 0xD00000000000001ALL;
  *(v1 + 176) = 0x80000002149A1660;
  *(v1 + 200) = v7;
  sub_2148BC688(v25, v23 + v24);
  v22[2] = v7;
  v21[2] = v7;
  v20[2] = v7;
  v19[16] = 0;
  v9[2] = v7;
  *(v10 + 16) = &unk_2826C4458;
  *(v11 + 16) = v7;
  v12[2] = 32;
  *(v13 + 16) = 1;
  *(v14 + 16) = 0;
  v15[2] = v7;
  v16[2] = 0;
  v16[3] = 0;
  v17 = swift_task_alloc();
  v31[11] = v17;
  *v17 = v31;
  v17[1] = sub_2148BC280;

  return TapToRadarDraft.open()();
}

uint64_t sub_2148BC280()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_2148BC440;
  }

  else
  {
    v5 = sub_2148BC3BC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2148BC3BC()
{
  v1 = *(v0 + 56);

  sub_2148BC6F8(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2148BC440()
{
  v1 = v0[7];

  sub_2148BC6F8(v1);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = __swift_project_value_buffer(v5, qword_281194E18);
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_21498E670();
  v9 = sub_21498FBB0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[12];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_21488E000, v8, v9, "Failed to open tap-to-radar error: %@", v12, 0xCu);
    sub_21489DFCC(v13, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v13, -1, -1);
    MEMORY[0x216059AC0](v12, -1, -1);
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  v16 = v0[1];

  return v16();
}

void sub_2148BC644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

uint64_t sub_2148BC688(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2148BC6F8(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2148BC7A8(uint64_t a1)
{
  sub_21498E900();
  if (v1 <= 0x3F)
  {
    sub_2148BC9E0(319, &qword_27CA1A828, MEMORY[0x277D23340]);
    if (v2 <= 0x3F)
    {
      sub_2148BC9E0(319, &qword_27CA1ABE0, type metadata accessor for HeaderImage);
      if (v3 <= 0x3F)
      {
        sub_2148BC9E0(319, &qword_27CA1ABE8, type metadata accessor for OBKLiftUIContent);
        if (v4 <= 0x3F)
        {
          type metadata accessor for OBWelcomeContentViewLayout(319);
          if (v5 <= 0x3F)
          {
            sub_2148BC9E0(319, &qword_27CA1ABF0, type metadata accessor for OBKLiftUICaption);
            if (v6 <= 0x3F)
            {
              sub_2148BC9E0(319, &qword_27CA1ABF8, type metadata accessor for OBKLiftUIButton);
              if (v7 <= 0x3F)
              {
                sub_2148BCA54(319, &qword_27CA1B660, MEMORY[0x277D23330], &qword_27CA1A858, MEMORY[0x277D23330]);
                if (v8 <= 0x3F)
                {
                  sub_2148BCA54(319, &qword_27CA1AC00, MEMORY[0x277D232E8], &qword_27CA1AC08, MEMORY[0x277D232E8]);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2148BC9E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21498FCF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2148BCA54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2148BCAE8(a4, a5, MEMORY[0x277D233A0]);
    v8 = sub_21498ED30();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2148BCAE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2148BCB30(uint64_t a1)
{
  sub_2148BCBDC(319, &qword_27CA1AC20, MEMORY[0x277D23340]);
  if (v1 <= 0x3F)
  {
    sub_2148BCBDC(319, &qword_27CA1AC28, MEMORY[0x277D231A8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2148BCBDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2148BCC28@<X0>(void *a1@<X8>)
{
  v43 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC58, &qword_214993FD8);
  MEMORY[0x28223BE20](v42);
  v3 = &v40 - v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC60, &qword_214993FE0);
  MEMORY[0x28223BE20](v40);
  v41 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB8, &qword_214993E40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v40 - v6;
  v8 = type metadata accessor for OBKLiftUIContent(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  v15 = type metadata accessor for OBKLiftUIView(0);
  sub_2148AA824(v1 + v15[8], v7, &qword_27CA1ABB8, &qword_214993E40);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21489DFCC(v7, &qword_27CA1ABB8, &qword_214993E40);
    goto LABEL_8;
  }

  sub_2148C5F40(v7, v14, type metadata accessor for OBKLiftUIContent);
  sub_2148C5ED8(v14, v12, type metadata accessor for OBKLiftUIContent);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_2148C69F4(v14, type metadata accessor for OBKLiftUIContent);
    sub_2148C69F4(v12, type metadata accessor for OBKLiftUIContent);
LABEL_8:
    sub_2148BF39C(v3);
    v29 = sub_21498EFF0();
    v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC68, &qword_214993FE8) + 36)] = v29;
    v30 = sub_21498ECE0();
    v31 = sub_21498F000();
    v32 = &v3[*(v42 + 36)];
    *v32 = v30;
    v32[8] = v31;
    v33 = sub_2148BECC0();
    v34 = sub_2148BEEDC(v33);

    v35 = *(v1 + v15[13]);
    if (v35)
    {
      v36 = *(v1 + v15[14]);
      if (v36)
      {

        v37 = sub_2148BF014(v34, v35, v36, &qword_27CA1AC58, &qword_214993FD8, &qword_27CA1AD98, sub_2148C6BA4);

        sub_21489DFCC(v3, &qword_27CA1AC58, &qword_214993FD8);
        v44 = v37;
        v45 = 1;
        result = sub_21498EE90();
        goto LABEL_11;
      }

      goto LABEL_13;
    }

LABEL_12:
    sub_21498E8C0();
    sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    sub_21498ED10();
    __break(1u);
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC70, &unk_214993FF0);
  sub_21489DFCC(&v12[*(v16 + 48)], &qword_27CA1AC78, qword_214999F40);
  v17 = sub_21498E6A0();
  (*(*(v17 - 8) + 8))(v12, v17);
  v18 = v41;
  sub_2148BD2BC(v41);
  v19 = sub_21498EFF0();
  *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC80, &qword_214994000) + 36)) = v19;
  v20 = sub_21498ECE0();
  v21 = sub_21498F000();
  v22 = v18 + *(v40 + 36);
  *v22 = v20;
  *(v22 + 8) = v21;
  v23 = sub_2148BECC0();
  v24 = sub_2148BEEDC(v23);

  v25 = *(v1 + v15[13]);
  if (!v25)
  {
    goto LABEL_12;
  }

  v26 = *(v1 + v15[14]);
  if (v26)
  {

    v27 = sub_2148BF014(v24, v25, v26, &qword_27CA1AC60, &qword_214993FE0, &qword_27CA1AC88, sub_2148C5B0C);

    sub_21489DFCC(v18, &qword_27CA1AC60, &qword_214993FE0);
    v44 = v27;
    v45 = 0;
    sub_21498EE90();
    result = sub_2148C69F4(v14, type metadata accessor for OBKLiftUIContent);
LABEL_11:
    v38 = v47;
    v39 = v43;
    *v43 = v46;
    *(v39 + 8) = v38;
    return result;
  }

LABEL_13:
  sub_21498E870();
  sub_2148BCAE8(&qword_27CA1AC08, MEMORY[0x277D232E8], MEMORY[0x277D233A0]);

  result = sub_21498ED10();
  __break(1u);
  return result;
}

uint64_t sub_2148BD2BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v146 = a1;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD08, &qword_214994040);
  MEMORY[0x28223BE20](v134);
  v135 = &v114 - v3;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ACE0, &qword_214994028);
  MEMORY[0x28223BE20](v145);
  v137 = &v114 - v4;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ACF0, &qword_214994030);
  v122 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v121 = &v114 - v5;
  v131 = sub_21498E6A0();
  v123 = *(v131 - 8);
  v6 = MEMORY[0x28223BE20](v131);
  v118 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v7;
  MEMORY[0x28223BE20](v6);
  v130 = &v114 - v8;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ACD0, &qword_214994020);
  v120 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v119 = &v114 - v9;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD10, &qword_214994048);
  MEMORY[0x28223BE20](v142);
  v144 = &v114 - v10;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD18, &qword_214994050);
  MEMORY[0x28223BE20](v124);
  v125 = &v114 - v11;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ACB0, &qword_214994010);
  MEMORY[0x28223BE20](v143);
  v126 = &v114 - v12;
  v13 = type metadata accessor for OBKLiftUIView(0);
  v138 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v139 = v14;
  v140 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD20, &qword_214994058);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v148 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v149 = &v114 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD28, &unk_214994060);
  MEMORY[0x28223BE20](v19 - 8);
  v147 = (&v114 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v114 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v114 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v114 - v31;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ACC0, &qword_214994018);
  v133 = *(v141 - 8);
  v33 = MEMORY[0x28223BE20](v141);
  v132 = (&v114 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v116 = &v114 - v35;
  v36 = sub_21498E900();
  v37 = *(v36 - 8);
  v150 = v36;
  v151 = v37;
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v36);
  v115 = &v114 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v39);
  v129 = &v114 - v41;
  MEMORY[0x28223BE20](v40);
  v128 = &v114 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB0, &qword_214993E38);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v114 - v44;
  sub_2148AA824(v2 + v13[7], &v114 - v44, &qword_27CA1ABB0, &qword_214993E38);
  v46 = type metadata accessor for HeaderImage(0);
  if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
  {
    if (*(v2 + v13[13]))
    {

      v47 = sub_21498E8F0();
      v48 = v150;
      v130 = v52;
      v131 = v47;

      sub_2148AA824(v2 + v13[6], v24, &qword_27CA1A800, &unk_214993100);
      v53 = v151;
      v54 = (*(v151 + 48))(v24, 1, v48);
      if (v54 == 1)
      {
        sub_21489DFCC(v24, &qword_27CA1A800, &unk_214993100);
      }

      else
      {

        sub_21498E8F0();

        (*(v53 + 8))(v24, v48);
      }

      sub_2148C0D28(v2 + v13[10], v147);
      sub_2148C1AA4(v2 + v13[11], v149);
      sub_2148C1AA4(v2 + v13[12], v148);
      sub_2148C2414();
      v55 = v140;
      sub_2148C5ED8(v2, v140, type metadata accessor for OBKLiftUIView);
      v56 = (*(v138 + 80) + 16) & ~*(v138 + 80);
      v57 = swift_allocObject();
      sub_2148C5F40(v55, v57 + v56, type metadata accessor for OBKLiftUIView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD40, &qword_214994078);
      sub_2148C5FA8();
      v58 = v132;
      sub_21498E470();
      v59 = v133;
      v60 = v141;
      v133[2](v135, v58, v141);
      swift_storeEnumTagMultiPayload();
      v61 = MEMORY[0x277D24540];
      sub_2148B4C20(&qword_27CA1ACE8, &qword_27CA1ACF0, &qword_214994030, MEMORY[0x277D24540]);
      sub_2148B4C20(&qword_27CA1ACB8, &qword_27CA1ACC0, &qword_214994018, v61);
      v62 = v137;
      sub_21498EE90();
      sub_2148AA824(v62, v144, &qword_27CA1ACE0, &qword_214994028);
      swift_storeEnumTagMultiPayload();
      sub_2148C5C50();
      sub_2148C5D30();
      sub_21498EE90();
      sub_21489DFCC(v62, &qword_27CA1ACE0, &qword_214994028);
      return (v59[1])(v58, v60);
    }

LABEL_29:
    sub_21498E8C0();
    sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    result = sub_21498ED10();
    __break(1u);
    return result;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v50 = v150;
    v51 = v151;
    if (EnumCaseMultiPayload == 1)
    {
      v135 = *(v151 + 32);
      v136 = v151 + 32;
      (v135)(v129, v45, v150);
      if (!*(v2 + v13[13]))
      {
        goto LABEL_29;
      }

      v69 = sub_21498E8F0();
      v131 = v70;

      sub_2148AA824(v2 + v13[6], v30, &qword_27CA1A800, &unk_214993100);
      v71 = (*(v51 + 48))(v30, 1, v50);
      v137 = v69;
      if (v71 == 1)
      {
        sub_21489DFCC(v30, &qword_27CA1A800, &unk_214993100);
        v133 = 0;
        v134 = 0;
      }

      else
      {

        v72 = sub_21498E8F0();
        v133 = v104;
        v134 = v72;

        (*(v51 + 8))(v30, v50);
      }

      sub_2148C0D28(v2 + v13[10], v147);
      sub_2148C1AA4(v2 + v13[11], v149);
      sub_2148C1AA4(v2 + v13[12], v148);
      LODWORD(v150) = sub_2148C2414();
      v73 = v151;
      v74 = v115;
      (*(v151 + 16))(v115, v129, v50);
      v132 = type metadata accessor for OBKLiftUIView;
      v75 = v140;
      sub_2148C5ED8(v2, v140, type metadata accessor for OBKLiftUIView);
      v76 = (*(v73 + 80) + 16) & ~*(v73 + 80);
      v77 = *(v138 + 80);
      v78 = swift_allocObject();
      v79 = v74;
      v80 = v50;
      (v135)(v78 + v76, v79, v50);
      sub_2148C5F40(v75, v78 + ((v38 + v77 + v76) & ~v77), type metadata accessor for OBKLiftUIView);
      sub_2148C5ED8(v2, v75, v132);
      v81 = swift_allocObject();
      sub_2148C5F40(v75, v81 + ((v77 + 16) & ~v77), type metadata accessor for OBKLiftUIView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD68, &qword_214994088);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD40, &qword_214994078);
      sub_2148C6970();
      sub_2148C5FA8();
      v82 = v119;
      sub_21498E460();
      v83 = v120;
      v84 = v127;
      (*(v120 + 16))(v125, v82, v127);
      swift_storeEnumTagMultiPayload();
      v85 = MEMORY[0x277D24540];
      sub_2148B4C20(&qword_27CA1ACB8, &qword_27CA1ACC0, &qword_214994018, MEMORY[0x277D24540]);
      sub_2148B4C20(&qword_27CA1ACC8, &qword_27CA1ACD0, &qword_214994020, v85);
      v86 = v126;
      sub_21498EE90();
      sub_2148AA824(v86, v144, &qword_27CA1ACB0, &qword_214994010);
      swift_storeEnumTagMultiPayload();
      sub_2148C5C50();
      sub_2148C5D30();
      sub_21498EE90();
      sub_21489DFCC(v86, &qword_27CA1ACB0, &qword_214994010);
      (*(v83 + 8))(v82, v84);
      return (*(v151 + 8))(v129, v80);
    }

    else
    {
      v67 = *(v123 + 32);
      (v67)(v130, v45, v131);
      if (!*(v2 + v13[13]))
      {
        goto LABEL_29;
      }

      v68 = sub_21498E8F0();
      v128 = v89;
      v129 = v68;

      sub_2148AA824(v2 + v13[6], v27, &qword_27CA1A800, &unk_214993100);
      v90 = (*(v51 + 48))(v27, 1, v50);
      v133 = v67;
      if (v90 == 1)
      {
        sub_21489DFCC(v27, &qword_27CA1A800, &unk_214993100);
        v151 = 0;
        v132 = 0;
      }

      else
      {

        v151 = sub_21498E8F0();
        v132 = v113;

        (*(v51 + 8))(v27, v150);
      }

      sub_2148C0D28(v2 + v13[10], v147);
      sub_2148C1AA4(v2 + v13[11], v149);
      sub_2148C1AA4(v2 + v13[12], v148);
      v91 = v123;
      v92 = v118;
      v93 = v131;
      (*(v123 + 16))(v118, v130, v131);
      v94 = (*(v91 + 80) + 16) & ~*(v91 + 80);
      v95 = swift_allocObject();
      (v133)(v95 + v94, v92, v93);
      v96 = v140;
      sub_2148C5ED8(v2, v140, type metadata accessor for OBKLiftUIView);
      v97 = (*(v138 + 80) + 16) & ~*(v138 + 80);
      v98 = swift_allocObject();
      sub_2148C5F40(v96, v98 + v97, type metadata accessor for OBKLiftUIView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD40, &qword_214994078);
      sub_2148BCAE8(&qword_27CA1AD60, MEMORY[0x277D231A8], MEMORY[0x277D231A0]);
      sub_2148C5FA8();
      v99 = v121;
      sub_21498E460();
      v100 = v122;
      v101 = v136;
      (*(v122 + 16))(v135, v99, v136);
      swift_storeEnumTagMultiPayload();
      v102 = MEMORY[0x277D24540];
      sub_2148B4C20(&qword_27CA1ACE8, &qword_27CA1ACF0, &qword_214994030, MEMORY[0x277D24540]);
      sub_2148B4C20(&qword_27CA1ACB8, &qword_27CA1ACC0, &qword_214994018, v102);
      v103 = v137;
      sub_21498EE90();
      sub_2148AA824(v103, v144, &qword_27CA1ACE0, &qword_214994028);
      swift_storeEnumTagMultiPayload();
      sub_2148C5C50();
      sub_2148C5D30();
      sub_21498EE90();
      sub_21489DFCC(v103, &qword_27CA1ACE0, &qword_214994028);
      (*(v100 + 8))(v99, v101);
      return (*(v91 + 8))(v130, v131);
    }
  }

  else
  {
    v64 = v150;
    v65 = v151;
    (*(v151 + 32))(v128, v45, v150);
    if (!*(v2 + v13[13]))
    {
      goto LABEL_29;
    }

    v66 = sub_21498E8F0();
    v135 = v87;
    v136 = v66;

    sub_2148AA824(v2 + v13[6], v32, &qword_27CA1A800, &unk_214993100);
    v88 = (*(v65 + 48))(v32, 1, v64);
    if (v88 == 1)
    {
      sub_21489DFCC(v32, &qword_27CA1A800, &unk_214993100);
      v137 = 0;
    }

    else
    {

      v137 = sub_21498E8F0();

      (*(v65 + 8))(v32, v64);
    }

    sub_21498E8F0();

    sub_2148C0D28(v2 + v13[10], v147);
    sub_2148C1AA4(v2 + v13[11], v149);
    sub_2148C1AA4(v2 + v13[12], v148);
    sub_2148C2414();
    v105 = v140;
    sub_2148C5ED8(v2, v140, type metadata accessor for OBKLiftUIView);
    v106 = (*(v138 + 80) + 16) & ~*(v138 + 80);
    v107 = swift_allocObject();
    sub_2148C5F40(v105, v107 + v106, type metadata accessor for OBKLiftUIView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD40, &qword_214994078);
    sub_2148C5FA8();
    v108 = v116;
    sub_21498E470();
    v109 = v133;
    v110 = v141;
    v133[2](v125, v108, v141);
    swift_storeEnumTagMultiPayload();
    v111 = MEMORY[0x277D24540];
    sub_2148B4C20(&qword_27CA1ACB8, &qword_27CA1ACC0, &qword_214994018, MEMORY[0x277D24540]);
    sub_2148B4C20(&qword_27CA1ACC8, &qword_27CA1ACD0, &qword_214994020, v111);
    v112 = v126;
    sub_21498EE90();
    sub_2148AA824(v112, v144, &qword_27CA1ACB0, &qword_214994010);
    swift_storeEnumTagMultiPayload();
    sub_2148C5C50();
    sub_2148C5D30();
    sub_21498EE90();
    sub_21489DFCC(v112, &qword_27CA1ACB0, &qword_214994010);
    (v109[1])(v108, v110);
    return (*(v151 + 8))(v128, v150);
  }
}

uint64_t sub_2148BECC0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABC8, qword_214993E50);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v15 = MEMORY[0x277D84F90];
  v8 = type metadata accessor for OBKLiftUIView(0);
  sub_2148AA824(v1 + *(v8 + 44), v7, &qword_27CA1ABC8, qword_214993E50);
  v9 = type metadata accessor for OBKLiftUIButton(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) == 1)
  {
    sub_21489DFCC(v7, &qword_27CA1ABC8, qword_214993E50);
  }

  else
  {
    v11 = *&v7[*(v9 + 28)];

    sub_2148C69F4(v7, type metadata accessor for OBKLiftUIButton);
    sub_2148A8A04(v11);
  }

  sub_2148AA824(v1 + *(v8 + 48), v5, &qword_27CA1ABC8, qword_214993E50);
  if (v10(v5, 1, v9) == 1)
  {
    sub_21489DFCC(v5, &qword_27CA1ABC8, qword_214993E50);
  }

  else
  {
    v12 = *&v5[*(v9 + 28)];

    sub_2148C69F4(v5, type metadata accessor for OBKLiftUIButton);
    sub_2148A8A04(v12);
  }

  return v15;
}

uint64_t sub_2148BEEDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_2148A9CA0(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_2148994D0(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5C0, &qword_214992520);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A678, &qword_2149940C0);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2148A9CA0((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_2148970B8(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2148BF014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void (*a7)(void))
{
  v12 = v7;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v25 = sub_2148C6B20(a6, a4, a5, a7);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  sub_2148AA824(v12, boxed_opaque_existential_1, a4, a5);
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = (a1 + 32);
    do
    {
      __swift_project_boxed_opaque_existential_1(v16, v16[3]);
      sub_21498E7E0();
      sub_2148970B8(&v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v23);
      sub_2148970B8(v22, v23);
      v16 += 5;
      --v15;
    }

    while (v15);
  }

  v17 = v24;
  v18 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v19 = sub_2148C5E10(v17, v18);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v19;
}

uint64_t sub_2148BF214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v11 = v7;
  v13 = a4(0);
  v24 = v13;
  v25 = sub_2148BCAE8(a5, a6, a7);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v11, v13);
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = (a1 + 32);
    do
    {
      __swift_project_boxed_opaque_existential_1(v16, v16[3]);
      sub_21498E7E0();
      sub_2148970B8(&v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v23);
      sub_2148970B8(v22, v23);
      v16 += 5;
      --v15;
    }

    while (v15);
  }

  v17 = v24;
  v18 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v19 = sub_2148C5E10(v17, v18);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v19;
}

uint64_t sub_2148BF39C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD20, &qword_214994058);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD28, &unk_214994060);
  MEMORY[0x28223BE20](v9 - 8);
  v29 = (v26 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ADB0, &qword_2149940C8);
  MEMORY[0x28223BE20](v11 - 8);
  v28 = (v26 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ADB8, &qword_2149940D0);
  MEMORY[0x28223BE20](v13 - 8);
  v27 = v26 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v26 - v16;
  v18 = type metadata accessor for OBKLiftUIView(0);
  if (*(v1 + *(v18 + 52)))
  {
    v19 = v18;

    v20 = sub_21498E8F0();
    v30 = v8;
    v31 = v6;
    v26[1] = v20;
    v26[2] = v21;

    v32 = a1;
    sub_2148AA824(v1 + v19[6], v17, &qword_27CA1A800, &unk_214993100);
    v22 = sub_21498E900();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v17, 1, v22) == 1)
    {
      sub_21489DFCC(v17, &qword_27CA1A800, &unk_214993100);
      v26[0] = 0;
    }

    else
    {

      v26[0] = sub_21498E8F0();

      (*(v23 + 8))(v17, v22);
    }

    v24 = v30;
    sub_2148BF808(v27);
    sub_2148C00E8(v28);
    sub_2148C0D28(v1 + v19[10], v29);
    sub_2148C1AA4(v1 + v19[11], v24);
    sub_2148C1AA4(v1 + v19[12], v31);
    return sub_21498E4F0();
  }

  else
  {
    sub_21498E8C0();
    sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    result = sub_21498ED10();
    __break(1u);
  }

  return result;
}

uint64_t sub_2148BF808@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21498E690();
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = &v44 - v7;
  v8 = sub_21498E6A0();
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_21498E900();
  v11 = *(v50 - 8);
  v12 = MEMORY[0x28223BE20](v50);
  v45 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB0, &qword_214993E38);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v44 - v17;
  v19 = type metadata accessor for OBKLiftUIView(0);
  sub_2148AA824(v1 + *(v19 + 28), v18, &qword_27CA1ABB0, &qword_214993E38);
  v20 = type metadata accessor for HeaderImage(0);
  if ((*(*(v20 - 8) + 48))(v18, 1, v20) == 1)
  {
    v21 = sub_21498E4B0();
    return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v28 = *(v44 + 32);
      v28(v10, v18, v8);
      *(a1 + 24) = v8;
      *(a1 + 32) = sub_2148BCAE8(&qword_27CA1AD60, MEMORY[0x277D231A8], MEMORY[0x277D231A0]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v28(boxed_opaque_existential_1, v10, v8);
      *(a1 + 40) = 0;
      v30 = *MEMORY[0x277D24560];
      v31 = sub_21498E4B0();
      v32 = *(v31 - 8);
      (*(v32 + 104))(a1, v30, v31);
      return (*(v32 + 56))(a1, 0, 1, v31);
    }

    v23 = v45;
    v24 = v50;
    (*(v11 + 32))(v45, v18, v50);
    if (*(v1 + *(v19 + 52)))
    {

      sub_21498E8F0();
      v25 = a1;

      _s18CurrentBundleClassCMa();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v34 = [objc_opt_self() bundleForClass_];
      v35 = sub_21498F840();
      v36 = [objc_opt_self() imageNamed:v35 inBundle:v34];

      if (v36)
      {
        (*(v11 + 8))(v23, v24);

        *a1 = v36;
        v40 = MEMORY[0x277D24568];
        goto LABEL_12;
      }

      __break(1u);
    }

LABEL_15:
    sub_21498E8C0();
    sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    result = sub_21498ED10();
    __break(1u);
    return result;
  }

  v26 = v50;
  (*(v11 + 32))(v15, v18, v50);
  if (!*(v1 + *(v19 + 52)))
  {
    goto LABEL_15;
  }

  v25 = a1;
  v37 = sub_21498E8F0();
  v39 = v38;
  (*(v11 + 8))(v15, v26);

  *a1 = v37;
  *(a1 + 8) = v39;
  v40 = MEMORY[0x277D24570];
LABEL_12:
  v41 = *v40;
  v42 = sub_21498E4B0();
  v43 = *(v42 - 8);
  (*(v43 + 104))(v25, v41, v42);
  return (*(v43 + 56))(v25, 0, 1, v42);
}

uint64_t sub_2148C00E8@<X0>(char **a1@<X8>)
{
  v3 = sub_21498E690();
  v4 = *(v3 - 8);
  v69 = v3;
  v70 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v68 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v62 - v7;
  v9 = sub_21498E6A0();
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21498E4A0();
  v79 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v81 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  MEMORY[0x28223BE20](v15 - 8);
  v75 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ADC0, &qword_2149940D8);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v74 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v83 = (&v62 - v20);
  v21 = type metadata accessor for OBKLiftUIContentItem(0);
  v77 = *(v21 - 8);
  v78 = v21;
  MEMORY[0x28223BE20](v21);
  v80 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB8, &qword_214993E40);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v62 - v24;
  v76 = type metadata accessor for OBKLiftUIView(0);
  v26 = *(v76 + 32);
  v82 = v1;
  sub_2148AA824(v1 + v26, v25, &qword_27CA1ABB8, &qword_214993E40);
  v27 = type metadata accessor for OBKLiftUIContent(0);
  if ((*(*(v27 - 8) + 48))(v25, 1, v27) == 1)
  {
    v28 = sub_21498E430();
    return (*(*(v28 - 8) + 56))(a1, 1, 1, v28);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v31 = *(v10 + 32);
      v31(v12, v25, v9);
      a1[3] = v9;
      a1[4] = sub_2148BCAE8(&qword_27CA1AD60, MEMORY[0x277D231A8], MEMORY[0x277D231A0]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v31(boxed_opaque_existential_1, v12, v9);
      v33 = MEMORY[0x277D24528];
LABEL_29:
      v59 = *v33;
      v60 = sub_21498E430();
      v61 = *(v60 - 8);
      (*(v61 + 104))(a1, v59, v60);
      return (*(v61 + 56))(a1, 0, 1, v60);
    }

    if (qword_281190DA0 != -1)
    {
LABEL_31:
      swift_once();
    }

    v52 = v69;
    v53 = __swift_project_value_buffer(v69, qword_281194E18);
    (*(v70 + 16))(v8, v53, v52);
    v54 = sub_21498E670();
    v55 = sub_21498FBB0();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_21488E000, v54, v55, "Sections aren't supported by ObkView, use OBKListView instead", v56, 2u);
      MEMORY[0x216059AC0](v56, -1, -1);
    }

    (*(v70 + 8))(v8, v52);
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC70, &unk_214993FF0) + 48);
    v58 = sub_21498E430();
    (*(*(v58 - 8) + 56))(a1, 1, 1, v58);
    sub_21489DFCC(&v25[v57], &qword_27CA1AC78, qword_214999F40);
    return (*(v10 + 8))(v25, v9);
  }

  else
  {
    v34 = *v25;
    v67 = *(*v25 + 16);
    if (!v67)
    {
      v8 = MEMORY[0x277D84F90];
LABEL_28:

      *a1 = v8;
      v33 = MEMORY[0x277D24520];
      goto LABEL_29;
    }

    v10 = 0;
    v9 = 0;
    v25 = v80;
    v64 = v79 + 32;
    v8 = MEMORY[0x277D84F90];
    v35 = v78;
    v63 = a1;
    v65 = v13;
    v66 = v34;
    while (1)
    {
      if (v10 >= *(v34 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      v73 = v8;
      sub_2148C5ED8(v34 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v10, v25, type metadata accessor for OBKLiftUIContentItem);
      if (!*(v82 + *(v76 + 52)))
      {
        break;
      }

      v36 = sub_21498E8F0();
      v38 = v37;
      v72 = v36;

      sub_21498E8F0();

      sub_2148C2DC8(v25, v82, v83);
      v71 = v38;
      v39 = v75;
      sub_2148AA824(&v25[*(v35 + 32)], v75, &qword_27CA1A800, &unk_214993100);
      v40 = sub_21498E900();
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(v39, 1, v40) == 1)
      {
        sub_21489DFCC(v39, &qword_27CA1A800, &unk_214993100);
        v42 = 0;
        v43 = v63;
        v25 = v80;
      }

      else
      {

        v48 = sub_21498E8F0();
        v50 = v49;

        (*(v41 + 8))(v39, v40);
        v51 = sub_2148FD3E8(v48, v50);
        if (v51 == 25)
        {
          v42 = 0;
        }

        else
        {
          sub_2148F9BA4(v51);
          sub_2148C6C8C();
          v42 = sub_21498FCB0();
        }

        v43 = v63;
        v25 = v80;
      }

      sub_2148AA824(v83, v74, &qword_27CA1ADC0, &qword_2149940D8);
      v44 = v42;
      sub_21498E490();
      v8 = v73;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_2148A9604(0, *(v8 + 2) + 1, 1, v8);
      }

      v45 = v65;
      v47 = *(v8 + 2);
      v46 = *(v8 + 3);
      a1 = v43;
      if (v47 >= v46 >> 1)
      {
        v8 = sub_2148A9604((v46 > 1), v47 + 1, 1, v8);
      }

      v35 = v78;
      ++v10;

      sub_21489DFCC(v83, &qword_27CA1ADC0, &qword_2149940D8);
      sub_2148C69F4(v25, type metadata accessor for OBKLiftUIContentItem);
      *(v8 + 2) = v47 + 1;
      (*(v79 + 32))(&v8[((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v47], v81, v45);
      v34 = v66;
      if (v67 == v10)
      {
        goto LABEL_28;
      }
    }

    sub_21498E8C0();
    sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    result = sub_21498ED10();
    __break(1u);
  }

  return result;
}

uint64_t sub_2148C0D28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v103 = a2;
  v3 = sub_21498E690();
  v98 = *(v3 - 8);
  v99 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v97 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v91 = &v89 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  MEMORY[0x28223BE20](v7 - 8);
  v93 = &v89 - v8;
  v94 = sub_21498E1B0();
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v90 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21498E900();
  v101 = *(v10 - 8);
  v102 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v96 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v95 = &v89 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v89 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v89 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABC0, &qword_214993E48);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v89 - v21;
  v23 = type metadata accessor for OBKLiftUICaption(0);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v89 - v28;
  sub_2148AA824(a1, v22, &qword_27CA1ABC0, &qword_214993E48);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_21489DFCC(v22, &qword_27CA1ABC0, &qword_214993E48);
LABEL_3:
    v30 = sub_21498E420();
    return (*(*(v30 - 8) + 56))(v103, 1, 1, v30);
  }

  sub_2148C5F40(v22, v29, type metadata accessor for OBKLiftUICaption);
  sub_2148C5ED8(v29, v27, type metadata accessor for OBKLiftUICaption);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v89 = v29;
  if (!EnumCaseMultiPayload)
  {
    v36 = v101;
    (*(v101 + 32))(v19, v27, v102);
    if (*(v100 + *(type metadata accessor for OBKLiftUIView(0) + 52)))
    {

      v50 = sub_21498E8F0();
      v52 = v51;

      (*(v36 + 8))(v19, v102);
      sub_2148C69F4(v89, type metadata accessor for OBKLiftUICaption);
      v48 = v103;
      *v103 = v50;
      v48[1] = v52;
      v49 = MEMORY[0x277D24518];
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v32 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD90, &unk_2149940B0) + 48)];
    v33 = *v32;
    v34 = v32[8];
    v35 = v101;
    (*(v101 + 32))(v17, v27, v102);
    if (*(v100 + *(type metadata accessor for OBKLiftUIView(0) + 52)))
    {

      v45 = sub_21498E8F0();
      v47 = v46;

      (*(v35 + 8))(v17, v102);
      sub_2148C69F4(v89, type metadata accessor for OBKLiftUICaption);
      v48 = v103;
      *v103 = v45;
      v48[1] = v47;
      v48[2] = v33;
      *(v48 + 24) = v34;
      v49 = MEMORY[0x277D24510];
LABEL_12:
      v53 = *v49;
      v54 = sub_21498E420();
      v55 = *(v54 - 8);
      (*(v55 + 104))(v48, v53, v54);
      return (*(v55 + 56))(v48, 0, 1, v54);
    }

    goto LABEL_21;
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD38, &qword_214994070);
  v38 = &v27[*(v37 + 48)];
  v39 = *v38;
  v40 = v38[8];
  v41 = *(v37 + 64);
  v42 = v102;
  v43 = *(v101 + 32);
  v44 = v95;
  v43(v95, v27, v102);
  v43(v96, &v27[v41], v42);
  if (!*(v100 + *(type metadata accessor for OBKLiftUIView(0) + 52)))
  {
LABEL_21:
    sub_21498E8C0();
    sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    result = sub_21498ED10();
    __break(1u);
    return result;
  }

  v56 = sub_21498E8F0();
  v58 = v57;

  v59 = v96;
  v61 = sub_21498E8F0();
  v63 = v62;

  v64 = v93;
  v100 = v61;
  sub_21498E1A0();
  v65 = v92;
  if ((*(v92 + 48))(v64, 1, v94) == 1)
  {

    sub_21489DFCC(v64, &qword_27CA1A348, &qword_214991700);
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v66 = v99;
    v67 = __swift_project_value_buffer(v99, qword_281194E18);
    v68 = v98;
    v69 = v91;
    (*(v98 + 16))(v91, v67, v66);

    v70 = sub_21498E670();
    v71 = sub_21498FBB0();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v104[0] = v73;
      *v72 = 136315138;
      v74 = sub_2149079F4(v100, v63, v104);

      *(v72 + 4) = v74;
      _os_log_impl(&dword_21488E000, v70, v71, "Unable to get URL from learn more: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x216059AC0](v73, -1, -1);
      MEMORY[0x216059AC0](v72, -1, -1);

      (*(v68 + 8))(v69, v66);
      v75 = *(v101 + 8);
      v76 = v96;
    }

    else
    {

      (*(v68 + 8))(v69, v66);
      v75 = *(v101 + 8);
      v76 = v59;
    }

    v88 = v102;
    v75(v76, v102);
    v75(v95, v88);
    sub_2148C69F4(v29, type metadata accessor for OBKLiftUICaption);
    goto LABEL_3;
  }

  v77 = *(v101 + 8);
  v78 = v59;
  v79 = v102;
  v77(v78, v102);
  v77(v44, v79);
  sub_2148C69F4(v29, type metadata accessor for OBKLiftUICaption);
  v80 = *(v65 + 32);
  v81 = v90;
  v82 = v94;
  v80(v90, v93, v94);
  v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD88, &qword_2149940A8) + 64);
  v84 = v103;
  *v103 = v56;
  v84[1] = v58;
  v84[2] = v39;
  *(v84 + 24) = v40;
  v80(v84 + v83, v81, v82);
  v85 = *MEMORY[0x277D24508];
  v86 = sub_21498E420();
  v87 = *(v86 - 8);
  (*(v87 + 104))(v84, v85, v86);
  return (*(v87 + 56))(v84, 0, 1, v86);
}

uint64_t sub_2148C1AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_21498E690();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OBKLiftUIView(0);
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = v6;
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD80, &unk_214994098);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC78, qword_214999F40);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v41 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABC8, qword_214993E50);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v41 - v15;
  v17 = type metadata accessor for OBKLiftUIButton(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v43 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - v21;
  sub_2148AA824(a1, v16, &qword_27CA1ABC8, qword_214993E50);
  v42 = v18;
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_21489DFCC(v16, &qword_27CA1ABC8, qword_214993E50);
    v29 = 1;
    v30 = v52;
LABEL_6:
    v31 = sub_21498E530();
    return (*(*(v31 - 8) + 56))(v30, v29, 1, v31);
  }

  sub_2148C5F40(v16, v22, type metadata accessor for OBKLiftUIButton);
  if (*(v51 + *(v5 + 52)))
  {

    v23 = sub_21498E8F0();
    v48 = v24;
    v49 = v23;

    v25 = *(v17 + 20);
    v50 = v22;
    sub_2148AA824(&v22[v25], v13, &qword_27CA1AC78, qword_214999F40);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    if (v28(v13, 1, v26) == 1)
    {
      sub_21489DFCC(v13, &qword_27CA1AC78, qword_214999F40);
    }

    else
    {

      sub_21498E750();

      (*(v27 + 8))(v13, v26);
    }

    v33 = v41;
    sub_2148AA824(&v50[*(v17 + 24)], v41, &qword_27CA1AC78, qword_214999F40);
    if (v28(v33, 1, v26) == 1)
    {
      sub_21489DFCC(v33, &qword_27CA1AC78, qword_214999F40);
    }

    else
    {

      sub_21498E750();

      (*(v27 + 8))(v33, v26);
    }

    v34 = v50;
    v35 = sub_21498E4E0();
    (*(*(v35 - 8) + 56))(v46, 1, 1, v35);
    v36 = v43;
    sub_2148C5ED8(v34, v43, type metadata accessor for OBKLiftUIButton);
    v37 = v47;
    sub_2148C5ED8(v51, v47, type metadata accessor for OBKLiftUIView);
    v38 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v39 = (v19 + *(v44 + 80) + v38) & ~*(v44 + 80);
    v40 = swift_allocObject();
    sub_2148C5F40(v36, v40 + v38, type metadata accessor for OBKLiftUIButton);
    sub_2148C5F40(v37, v40 + v39, type metadata accessor for OBKLiftUIView);
    v30 = v52;
    sub_21498E520();
    sub_2148C69F4(v34, type metadata accessor for OBKLiftUIButton);
    v29 = 0;
    goto LABEL_6;
  }

  sub_21498E8C0();
  sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  result = sub_21498ED10();
  __break(1u);
  return result;
}

uint64_t sub_2148C2414()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC78, qword_214999F40);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v20[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB8, &qword_214993E40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20[-v8];
  v10 = type metadata accessor for OBKLiftUIView(0);
  sub_2148AA824(v0 + *(v10 + 32), v9, &qword_27CA1ABB8, &qword_214993E40);
  v11 = type metadata accessor for OBKLiftUIContent(0);
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC70, &unk_214993FF0);
        sub_2148B4C68(&v9[*(v15 + 48)], v6, &qword_27CA1AC78, qword_214999F40);
        sub_2148AA824(v6, v4, &qword_27CA1AC78, qword_214999F40);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
        v17 = *(v16 - 8);
        if ((*(v17 + 48))(v4, 1, v16) == 1)
        {
          sub_21489DFCC(v6, &qword_27CA1AC78, qword_214999F40);
          sub_21489DFCC(v4, &qword_27CA1AC78, qword_214999F40);
          v18 = 2;
        }

        else
        {
          if (!*(v0 + *(v10 + 52)))
          {
            sub_21498E8C0();
            sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
            result = sub_21498ED10();
            __break(1u);
            return result;
          }

          sub_21498E750();
          sub_21489DFCC(v6, &qword_27CA1AC78, qword_214999F40);

          (*(v17 + 8))(v4, v16);
          v18 = v20[15];
        }

        v19 = sub_21498E6A0();
        (*(*(v19 - 8) + 8))(v9, v19);
        return v18;
      }

      v13 = sub_21498E6A0();
      (*(*(v13 - 8) + 8))(v9, v13);
    }

    else
    {
      sub_2148C69F4(v9, type metadata accessor for OBKLiftUIContent);
    }
  }

  return 2;
}

uint64_t sub_2148C283C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for OBKLiftUIView(0) + 52)))
  {

    sub_21498E8F0();

    _s18CurrentBundleClassCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_21498F840();
    v6 = [objc_opt_self() imageNamed:v5 inBundle:v4];

    if (v6)
    {

      sub_21498F3C0();
      result = sub_21498EE90();
      *a2 = v8;
      *(a2 + 8) = v9;
      return result;
    }

    __break(1u);
  }

  sub_21498E8C0();
  sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  result = sub_21498ED10();
  __break(1u);
  return result;
}

uint64_t sub_2148C2A0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD78, &qword_214994090);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - v3;
  v5 = sub_21498E6A0();
  v20 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB8, &qword_214993E40);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  v14 = type metadata accessor for OBKLiftUIView(0);
  sub_2148AA824(a1 + *(v14 + 32), v13, &qword_27CA1ABB8, &qword_214993E40);
  v15 = type metadata accessor for OBKLiftUIContent(0);
  if ((*(*(v15 - 8) + 48))(v13, 1, v15) == 1)
  {
    goto LABEL_5;
  }

  sub_2148AA824(v13, v11, &qword_27CA1ABB8, &qword_214993E40);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_2148C69F4(v11, type metadata accessor for OBKLiftUIContent);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    sub_2148BCAE8(&qword_27CA1AD60, MEMORY[0x277D231A8], MEMORY[0x277D231A0]);
    sub_21498EE90();
    return sub_21489DFCC(v13, &qword_27CA1ABB8, &qword_214993E40);
  }

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC70, &unk_214993FF0) + 48);
  v17 = v20;
  (*(v20 + 32))(v7, v11, v5);
  (*(v17 + 16))(v4, v7, v5);
  swift_storeEnumTagMultiPayload();
  sub_2148BCAE8(&qword_27CA1AD60, MEMORY[0x277D231A8], MEMORY[0x277D231A0]);
  sub_21498EE90();
  (*(v17 + 8))(v7, v5);
  sub_21489DFCC(&v11[v16], &qword_27CA1AC78, qword_214999F40);
  return sub_21489DFCC(v13, &qword_27CA1ABB8, &qword_214993E40);
}

uint64_t sub_2148C2DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a2;
  v48 = a3;
  v47 = sub_21498E900();
  v45 = *(v47 - 8);
  v4 = MEMORY[0x28223BE20](v47);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ADD0, &qword_2149940E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for OBKLiftUIContentItemImage(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = type metadata accessor for OBKLiftUIContentItem(0);
  sub_2148AA824(a1 + *(v18 + 28), v10, &qword_27CA1ADD0, &qword_2149940E0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_21489DFCC(v10, &qword_27CA1ADD0, &qword_2149940E0);
    v19 = sub_21498E480();
    return (*(*(v19 - 8) + 56))(v48, 1, 1, v19);
  }

  v21 = v48;
  sub_2148C5F40(v10, v17, type metadata accessor for OBKLiftUIContentItemImage);
  sub_2148C5ED8(v17, v15, type metadata accessor for OBKLiftUIContentItemImage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v23 = v45;
  v24 = *(v45 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v7 = v44;
    v25 = v47;
    v24(v44, v15, v47);
    if (*(v46 + *(type metadata accessor for OBKLiftUIView(0) + 52)))
    {

      v26 = v49;
      sub_21498E8F0();
      if (!v26)
      {
        v27 = v17;

        _s18CurrentBundleClassCMa();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v29 = [objc_opt_self() bundleForClass_];
        v30 = sub_21498F840();

        v31 = [objc_opt_self() imageNamed:v30 inBundle:v29];

        if (v31)
        {
          (*(v23 + 8))(v44, v25);
          sub_2148C69F4(v27, type metadata accessor for OBKLiftUIContentItemImage);
          *v21 = v31;
          v32 = *MEMORY[0x277D24548];
          v33 = sub_21498E480();
          v34 = *(v33 - 8);
          (*(v34 + 104))(v21, v32, v33);
          return (*(v34 + 56))(v21, 0, 1, v33);
        }

        __break(1u);
        goto LABEL_14;
      }

LABEL_10:

      (*(v23 + 8))(v7, v25);
      return sub_2148C69F4(v17, type metadata accessor for OBKLiftUIContentItemImage);
    }

LABEL_14:
    sub_21498E8C0();
    sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    result = sub_21498ED10();
    __break(1u);
    return result;
  }

  v25 = v47;
  v24(v7, v15, v47);
  if (!*(v46 + *(type metadata accessor for OBKLiftUIView(0) + 52)))
  {
    goto LABEL_14;
  }

  v35 = v49;
  v36 = sub_21498E8F0();
  if (v35)
  {
    goto LABEL_10;
  }

  v38 = v36;
  v39 = v37;

  (*(v23 + 8))(v7, v25);
  sub_2148C69F4(v17, type metadata accessor for OBKLiftUIContentItemImage);
  *v21 = v38;
  v21[1] = v39;
  v40 = *MEMORY[0x277D24550];
  v41 = sub_21498E480();
  v42 = *(v41 - 8);
  (*(v42 + 104))(v21, v40, v41);
  return (*(v42 + 56))(v21, 0, 1, v41);
}