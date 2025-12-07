char *sub_22958A53C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
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

void *sub_22958A648(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D3E0, &unk_22A578560);
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
    type metadata accessor for HMFMessageName(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22958A794(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D3A0, &qword_22A578520);
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

void *sub_22958A8B4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D370, &qword_22A5784F0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D378, &qword_22A5784F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22958A9E8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D490, &qword_22A578630);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D498, &qword_22A578638);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22958AB1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4B8, &qword_22A578650);
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

char *sub_22958AC3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4B0, &qword_22A578648);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22958AE28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D470, &unk_22A578610);
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

void *sub_22958AF40(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D480, &qword_22A578620);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D488, &qword_22A578628);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22958B0B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D1B8, &qword_22A5780E8);
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

void *sub_22958B23C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

void *sub_22958B44C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D1A0, &unk_22A5780D0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D3F0, &unk_22A578570);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22958B580(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D3B0, &unk_22A578530);
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

char *sub_22958B68C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D3A8, &qword_22A578528);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 272);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[272 * v8])
    {
      memmove(v12, v13, 272 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22958B7F8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

void *sub_22958B990(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4C0, &qword_22A578658);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4C8, &qword_22A578660);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22958BAC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4A8, &qword_22A578640);
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

char *sub_22958BBE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D3D0, &unk_22A578550);
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

void *sub_22958BD08(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_22958BF08(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

void (*sub_22958C03C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAD13F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_22958C1F0;
  }

  __break(1u);
  return result;
}

void (*sub_22958C0E0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAD13F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_22958C160;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_22958C168(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAD13F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_22958C1E8;
  }

  __break(1u);
  return result;
}

id sub_22958C1F4()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 appData];
  if (!result)
  {
    v7 = [v1 uuid];
    sub_22A4DB79C();

    v8 = objc_allocWithZone(HMDApplicationData);
    v9 = sub_22A4DB77C();
    v10 = [v8 initWithParentUUID_];

    (*(v3 + 8))(v5, v2);
    return v10;
  }

  return result;
}

uint64_t sub_22958C334(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_22958C358, 0, 0);
}

uint64_t sub_22958C358()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[7];
  }

  else
  {
    v2 = 0x53555F6E65;
  }

  if (v1)
  {
    v3 = v0[8];
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = sub_229773768();
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  if (!*(v4 + 16))
  {

    goto LABEL_15;
  }

  v6 = sub_229543DBC(v2, v3);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_15:

    v9 = 0;
    goto LABEL_16;
  }

  sub_2295404B0(*(v5 + 56) + 32 * v6, (v0 + 2));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if (swift_dynamicCast())
  {
    v9 = v0[6];
  }

  else
  {
    v9 = 0;
  }

LABEL_16:
  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_22958C4A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_229773768();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (!*(v4 + 16))
  {
    goto LABEL_11;
  }

  v6 = sub_229543DBC(a1, a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_2295404B0(*(v5 + 56) + 32 * v6, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v11 + 16) || (v8 = sub_229543DBC(0x6D614E656E656353, 0xE900000000000065), (v9 & 1) == 0))
  {
LABEL_11:

    return 0;
  }

  sub_2295404B0(*(v11 + 56) + 32 * v8, v12);

  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22958C5E4(uint64_t a1)
{
  v2[54] = a1;
  v2[55] = v1;
  v3 = sub_22A4DB7DC();
  v2[56] = v3;
  v2[57] = *(v3 - 8);
  v2[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22958C6A4, 0, 0);
}

uint64_t sub_22958C6A4()
{
  v1 = *(v0 + 432);
  if (!*(v1 + 16) || (v2 = sub_229543DBC(0x6D614E656E656353, 0xE900000000000065), (v3 & 1) == 0))
  {
    v16 = *(v0 + 440);
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    sub_22953EAE4(v0 + 256, &unk_27D87FC20, &unk_22A578810);
    type metadata accessor for HMError(0);
    *(v0 + 392) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v18 = [v16 shortDescription];
    v19 = sub_22A4DD5EC();
    v21 = v20;

    MEMORY[0x22AAD08C0](v19, v21);

    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD000000000000019;
    *(inited + 56) = 0x800000022A58A9A0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
    sub_22A4DB3CC();
LABEL_18:
    swift_willThrow();

    v38 = *(v0 + 8);
    goto LABEL_19;
  }

  v4 = *(v0 + 432);
  sub_2295404B0(*(v4 + 56) + 32 * v2, v0 + 256);
  sub_22953EAE4(v0 + 256, &unk_27D87FC20, &unk_22A578810);
  if (!*(v1 + 16) || (v5 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265), (v6 & 1) == 0) || (sub_2295404B0(*(v4 + 56) + 32 * v5, v0 + 288), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), (swift_dynamicCast() & 1) == 0))
  {
LABEL_17:
    v31 = MEMORY[0x277D837D0];
    v32 = *(v0 + 440);
    type metadata accessor for HMError(0);
    *(v0 + 408) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v33 = swift_initStackObject();
    *(v33 + 32) = 0x6E6F73616552;
    *(v33 + 16) = xmmword_22A576180;
    *(v33 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v34 = [v32 shortDescription];
    v35 = sub_22A4DD5EC();
    v37 = v36;

    MEMORY[0x22AAD08C0](v35, v37);

    *(v33 + 72) = v31;
    *(v33 + 48) = 0xD00000000000002ALL;
    *(v33 + 56) = 0x800000022A58A9C0;
    sub_22956AD8C(v33);
    swift_setDeallocating();
    sub_22953EAE4(v33 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
    sub_22A4DB3CC();
    goto LABEL_18;
  }

  v7 = *(v0 + 456);
  v8 = *(v0 + 464);
  v9 = *(v0 + 448);
  v11 = *(v0 + 352);
  v10 = *(v0 + 360);
  v12 = [*(v0 + 440) uuid];
  sub_22A4DB79C();

  v13 = sub_22A4DB76C();
  v15 = v14;
  (*(v7 + 8))(v8, v9);
  if (v13 != v11 || v15 != v10)
  {
    v22 = sub_22A4DE60C();

    if (v22)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_11:
  if (!*(v1 + 16) || (v23 = sub_229543DBC(1701869908, 0xE400000000000000), (v24 & 1) == 0) || (sub_2295404B0(*(v4 + 56) + 32 * v23, v0 + 320), (swift_dynamicCast() & 1) == 0))
  {
LABEL_24:
    v41 = *(v0 + 440);
    type metadata accessor for HMError(0);
    *(v0 + 424) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v42 = swift_initStackObject();
    *(v42 + 32) = 0x6E6F73616552;
    *(v42 + 16) = xmmword_22A576180;
    *(v42 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v43 = [v41 shortDescription];
    v44 = sub_22A4DD5EC();
    v46 = v45;

    MEMORY[0x22AAD08C0](v44, v46);

    *(v42 + 72) = MEMORY[0x277D837D0];
    *(v42 + 48) = 0xD000000000000024;
    *(v42 + 56) = 0x800000022A58A9F0;
    sub_22956AD8C(v42);
    swift_setDeallocating();
    sub_22953EAE4(v42 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
    sub_22A4DB3CC();
    goto LABEL_18;
  }

  v26 = *(v0 + 368);
  v25 = *(v0 + 376);
  v27 = [*(v0 + 440) type];
  v28 = sub_22A4DD5EC();
  v30 = v29;

  if (v26 != v28 || v25 != v30)
  {
    v40 = sub_22A4DE60C();

    if (v40)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

LABEL_23:

  v38 = *(v0 + 8);
LABEL_19:

  return v38();
}

uint64_t sub_22958CD88()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 name];
  v7 = sub_22A4DD5EC();
  v9 = v8;

  v10 = MEMORY[0x277D837D0];
  v41 = MEMORY[0x277D837D0];
  v39 = v7;
  v40 = v9;
  sub_229543C58(&v39, v37);
  v11 = MEMORY[0x277D84F98];
  LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
  v36 = v11;
  v12 = __swift_mutable_project_boxed_opaque_existential_0(v37, v38);
  MEMORY[0x28223BE20](v12);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  sub_2297FE940(*v14, v14[1], 0x6D614E656E656353, 0xE900000000000065, v7, &v36);
  __swift_destroy_boxed_opaque_existential_0(v37);
  v16 = v36;
  v17 = [v1 uuid];
  sub_22A4DB79C();

  v18 = sub_22A4DB76C();
  v20 = v19;
  (*(v3 + 8))(v5, v2);
  v41 = v10;
  v39 = v18;
  v40 = v20;
  sub_229543C58(&v39, v37);
  LOBYTE(v5) = swift_isUniquelyReferenced_nonNull_native();
  v36 = v16;
  v21 = __swift_mutable_project_boxed_opaque_existential_0(v37, v38);
  MEMORY[0x28223BE20](v21);
  v23 = (&v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  sub_2297FE940(*v23, v23[1], 0x696669746E656449, 0xEA00000000007265, v5, &v36);
  __swift_destroy_boxed_opaque_existential_0(v37);
  v25 = v36;
  v26 = [v1 type];
  v27 = sub_22A4DD5EC();
  v29 = v28;

  v41 = v10;
  v39 = v27;
  v40 = v29;
  sub_229543C58(&v39, v37);
  LOBYTE(v26) = swift_isUniquelyReferenced_nonNull_native();
  v36 = v25;
  v30 = __swift_mutable_project_boxed_opaque_existential_0(v37, v38);
  MEMORY[0x28223BE20](v30);
  v32 = (&v35 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  sub_2297FE940(*v32, v32[1], 1701869908, 0xE400000000000000, v26, &v36);
  __swift_destroy_boxed_opaque_existential_0(v37);
  return v36;
}

uint64_t sub_22958D1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v8 = swift_task_alloc();
  v5[15] = v8;
  *v8 = v5;
  v8[1] = sub_22958D268;

  return sub_22958C334(a3, a4);
}

uint64_t sub_22958D268(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_22958D650;
  }

  else
  {
    v4 = sub_22958D37C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22958D37C()
{
  v14 = v0;
  v1 = v0[16];
  if (!v1)
  {
    v1 = sub_22958CD88();
  }

  v2 = v0[10];
  v3 = v0[11];
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = v2;
  v0[3] = v3;
  sub_229543C58((v0 + 2), (v0 + 6));

  LOBYTE(v3) = swift_isUniquelyReferenced_nonNull_native();
  v13 = v1;
  v4 = v0[9];
  v5 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 6), v4);
  v6 = *(v4 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v4);
  sub_2297FE940(*v7, v7[1], 0x6D614E656E656353, 0xE900000000000065, v3, &v13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 6);

  v8 = v13;
  v0[18] = v13;
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_22958D534;
  v10 = v0[13];
  v11 = v0[12];

  return sub_22958D6CC(v8, v11, v10);
}

uint64_t sub_22958D534()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_22958D668;
  }

  else
  {

    v2 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22958D668()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22958D6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x2822009F8](sub_22958D6F0, 0, 0);
}

uint64_t sub_22958D6F0()
{
  v1 = v0[14];
  v2 = sub_2298165BC(v0[11]);
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  v0[5] = sub_229562F68(0, &qword_281401C20, off_278666020);
  v0[6] = &off_283CDD088;
  v0[2] = v1;
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  v0[7] = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_22958D81C;
  v5 = v0[12];
  v6 = v0[13];

  return sub_229709F5C((v0 + 2), (v0 + 7), v5, v6);
}

uint64_t sub_22958D81C()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22958D970, 0, 0);
  }

  else
  {
    sub_22953EAE4((v2 + 7), &unk_27D87FC20, &unk_22A578810);
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_22958D970()
{
  sub_22953EAE4(v0 + 56, &unk_27D87FC20, &unk_22A578810);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22958DA0C()
{
  v1 = sub_22958C4A4(0x53555F6E65, 0xE500000000000000);
  v0[8] = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_22958DB98;

    return sub_22989CCDC(v3, v4);
  }

  else
  {
    v7 = v0[7];
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    v0[5] = sub_229562F68(0, &qword_281401C20, off_278666020);
    v0[6] = &off_283CDD088;
    v0[2] = v7;
    v8 = v7;
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_22958DDA4;

    return sub_22970A4FC((v0 + 2), 0);
  }
}

uint64_t sub_22958DB98()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_22958DEE0;
  }

  else
  {
    v2 = sub_22958DCAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22958DCAC()
{

  v1 = v0[7];
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  v0[5] = sub_229562F68(0, &qword_281401C20, off_278666020);
  v0[6] = &off_283CDD088;
  v0[2] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_22958DDA4;

  return sub_22970A4FC((v0 + 2), 0);
}

uint64_t sub_22958DDA4()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22958DF44, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_22958DEE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22958DF44()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22958DFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_229569B30;

  return sub_22958D1B8(a1, a2, a3, a4);
}

id sub_22958E0B0()
{
  v1 = [*v0 home];
  v2 = [v1 backingStore];

  return v2;
}

unint64_t sub_22958E108()
{
  result = qword_27D87D7C0;
  if (!qword_27D87D7C0)
  {
    type metadata accessor for HMError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D7C0);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

id sub_22958E1B0()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 appData];
  if (!result)
  {
    v7 = [v1 uuid];
    sub_22A4DB79C();

    v8 = objc_allocWithZone(HMDApplicationData);
    v9 = sub_22A4DB77C();
    v10 = [v8 initWithParentUUID_];

    (*(v3 + 8))(v5, v2);
    return v10;
  }

  return result;
}

uint64_t sub_22958E2F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_229773768();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (!*(v4 + 16))
  {
    goto LABEL_11;
  }

  v6 = sub_229543DBC(a1, a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_2295404B0(*(v5 + 56) + 32 * v6, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v11 + 16) || (v8 = sub_229543DBC(0x656D614E6D6F6F52, 0xE800000000000000), (v9 & 1) == 0))
  {
LABEL_11:

    return 0;
  }

  sub_2295404B0(*(v11 + 56) + 32 * v8, v12);

  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22958E42C(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v3 = sub_22A4DB7DC();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22958E4EC, 0, 0);
}

uint64_t sub_22958E4EC()
{
  v1 = *(v0 + 288);
  if (*(v1 + 16) && (v2 = sub_229543DBC(0x656D614E6D6F6F52, 0xE800000000000000), (v3 & 1) != 0))
  {
    v4 = *(v0 + 288);
    sub_2295404B0(*(v4 + 56) + 32 * v2, v0 + 176);
    sub_22953EAE4(v0 + 176, &unk_27D87FC20, &unk_22A578810);
    if (*(v1 + 16))
    {
      v5 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
      if (v6)
      {
        sub_2295404B0(*(v4 + 56) + 32 * v5, v0 + 208);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        if (swift_dynamicCast())
        {
          v8 = *(v0 + 312);
          v7 = *(v0 + 320);
          v9 = *(v0 + 304);
          v11 = *(v0 + 240);
          v10 = *(v0 + 248);
          v12 = [*(v0 + 296) uuid];
          sub_22A4DB79C();

          v13 = sub_22A4DB76C();
          v15 = v14;
          (*(v8 + 8))(v7, v9);
          if (v13 == v11 && v15 == v10)
          {

LABEL_11:

            v23 = *(v0 + 8);
            goto LABEL_14;
          }

          v22 = sub_22A4DE60C();

          if (v22)
          {
            goto LABEL_11;
          }
        }
      }
    }

    v24 = MEMORY[0x277D837D0];
    v25 = *(v0 + 296);
    type metadata accessor for HMError(0);
    *(v0 + 280) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v27 = [v25 shortDescription];
    v28 = sub_22A4DD5EC();
    v30 = v29;

    MEMORY[0x22AAD08C0](v28, v30);

    *(inited + 72) = v24;
    *(inited + 48) = 0xD000000000000027;
    *(inited + 56) = 0x800000022A58AA40;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
  }

  else
  {
    v16 = *(v0 + 296);
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    sub_22953EAE4(v0 + 176, &unk_27D87FC20, &unk_22A578810);
    type metadata accessor for HMError(0);
    *(v0 + 264) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v17 = swift_initStackObject();
    *(v17 + 32) = 0x6E6F73616552;
    *(v17 + 16) = xmmword_22A576180;
    *(v17 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v18 = [v16 shortDescription];
    v19 = sub_22A4DD5EC();
    v21 = v20;

    MEMORY[0x22AAD08C0](v19, v21);

    *(v17 + 72) = MEMORY[0x277D837D0];
    *(v17 + 48) = 0xD000000000000016;
    *(v17 + 56) = 0x800000022A58AA20;
    sub_22956AD8C(v17);
    swift_setDeallocating();
    sub_22953EAE4(v17 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
  }

  sub_22A4DB3CC();
  swift_willThrow();

  v23 = *(v0 + 8);
LABEL_14:

  return v23();
}

uint64_t sub_22958E994()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 name];
  v7 = sub_22A4DD5EC();
  v9 = v8;

  v10 = MEMORY[0x277D837D0];
  v32 = MEMORY[0x277D837D0];
  v30 = v7;
  v31 = v9;
  sub_229543C58(&v30, v28);
  v11 = MEMORY[0x277D84F98];
  LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
  v27 = v11;
  v12 = __swift_mutable_project_boxed_opaque_existential_0(v28, v29);
  MEMORY[0x28223BE20](v12);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  sub_2297FE940(*v14, v14[1], 0x656D614E6D6F6F52, 0xE800000000000000, v7, &v27);
  __swift_destroy_boxed_opaque_existential_0(v28);
  v16 = v27;
  v17 = [v1 uuid];
  sub_22A4DB79C();

  v18 = sub_22A4DB76C();
  v20 = v19;
  (*(v3 + 8))(v5, v2);
  v32 = v10;
  v30 = v18;
  v31 = v20;
  sub_229543C58(&v30, v28);
  LOBYTE(v2) = swift_isUniquelyReferenced_nonNull_native();
  v27 = v16;
  v21 = __swift_mutable_project_boxed_opaque_existential_0(v28, v29);
  MEMORY[0x28223BE20](v21);
  v23 = (&v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  sub_2297FE940(*v23, v23[1], 0x696669746E656449, 0xEA00000000007265, v2, &v27);
  __swift_destroy_boxed_opaque_existential_0(v28);
  return v27;
}

uint64_t sub_22958ECB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v8 = swift_task_alloc();
  v5[15] = v8;
  *v8 = v5;
  v8[1] = sub_22958ED60;

  return sub_22958C334(a3, a4);
}

uint64_t sub_22958ED60(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_22958D650;
  }

  else
  {
    v4 = sub_22958EE74;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22958EE74()
{
  v14 = v0;
  v1 = v0[16];
  if (!v1)
  {
    v1 = sub_22958E994();
  }

  v2 = v0[10];
  v3 = v0[11];
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = v2;
  v0[3] = v3;
  sub_229543C58((v0 + 2), (v0 + 6));

  LOBYTE(v3) = swift_isUniquelyReferenced_nonNull_native();
  v13 = v1;
  v4 = v0[9];
  v5 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 6), v4);
  v6 = *(v4 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v4);
  sub_2297FE940(*v7, v7[1], 0x656D614E6D6F6F52, 0xE800000000000000, v3, &v13);
  __swift_destroy_boxed_opaque_existential_0(v0 + 6);

  v8 = v13;
  v0[18] = v13;
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_22958D534;
  v10 = v0[13];
  v11 = v0[12];

  return sub_22958F028(v8, v11, v10);
}

uint64_t sub_22958F028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x2822009F8](sub_22958F04C, 0, 0);
}

uint64_t sub_22958F04C()
{
  v1 = v0[14];
  v2 = sub_22981661C(v0[11]);
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  v0[5] = sub_229562F68(0, &unk_2814017A0, off_278666308);
  v0[6] = &off_283CDD0E8;
  v0[2] = v1;
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  v0[7] = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_22958D81C;
  v5 = v0[12];
  v6 = v0[13];

  return sub_229709F5C((v0 + 2), (v0 + 7), v5, v6);
}

uint64_t sub_22958F198()
{
  v1 = sub_22958E2F0(0x53555F6E65, 0xE500000000000000);
  v0[8] = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_22958F324;

    return sub_22989B8C4(v3, v4);
  }

  else
  {
    v7 = v0[7];
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    v0[5] = sub_229562F68(0, &unk_2814017A0, off_278666308);
    v0[6] = &off_283CDD0E8;
    v0[2] = v7;
    v8 = v7;
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_22958DDA4;

    return sub_22970A4FC((v0 + 2), 0);
  }
}

uint64_t sub_22958F324()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_22958DEE0;
  }

  else
  {
    v2 = sub_22958F438;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22958F438()
{

  v1 = v0[7];
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  v0[5] = sub_229562F68(0, &unk_2814017A0, off_278666308);
  v0[6] = &off_283CDD0E8;
  v0[2] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_22958DDA4;

  return sub_22970A4FC((v0 + 2), 0);
}

uint64_t sub_22958F554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_229569B30;

  return sub_22958ECB0(a1, a2, a3, a4);
}

id sub_22958F648()
{
  result = [objc_allocWithZone(MEMORY[0x277D0F8F8]) initWithMajorVersion:1 minorVersion:0 updateVersion:0];
  qword_27D8AB648 = result;
  return result;
}

id sub_22958F6B0(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t sub_22958F6F4(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4F0, &qword_22A578750);
  if (swift_dynamicCast())
  {
    sub_229557188(__src, &v43);
    __swift_project_boxed_opaque_existential_0(&v43, v44);
    sub_22A4DB31C();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_0(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_229590C48(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_22A4DE25C();
  }

  sub_22958FCC0(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2295903E8(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_22958FD88(sub_229590CB0, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_22A4DB5DC();
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

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_2296172C0(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_22A4DD70C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_22A4DD73C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_22A4DE25C();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_2296172C0(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_22A4DD71C();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_22A4DB5EC();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_22A4DB5EC();
    sub_229590D18(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_229590D18(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_22956C148(*&__src[0], *(&__src[0] + 1));

  sub_2295798D4(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_22958FC04(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_0(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_229590330(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_229590488(v3, v4);
    }

    else
    {
      v6 = sub_229590504(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t *sub_22958FCC0@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_229590330(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_22A4DB28C();
      swift_allocObject();
      v8 = sub_22A4DB23C();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_22A4DB5CC();
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

char *sub_22958FD88(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
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
      sub_2295798D4(v7, v6);
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

    sub_2295798D4(v7, v6);
    *v4 = xmmword_22A578710;
    sub_2295798D4(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_22A4DB24C() && __OFSUB__(v7, sub_22A4DB27C()))
      {
LABEL_26:
        __break(1u);
      }

      sub_22A4DB28C();
      swift_allocObject();
      v14 = sub_22A4DB22C();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_22959022C(v7, v7 >> 32, a1);

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

    sub_2295798D4(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_22A578710;
    sub_2295798D4(0, 0xC000000000000000);
    sub_22A4DB58C();
    result = sub_22959022C(*(v17 + 2), *(v17 + 3), a1);
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

_BYTE *sub_22959012C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_229590330(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_229590488(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_229590504(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2295901C0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

char *sub_22959022C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_22A4DB24C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_22A4DB27C();
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

  v12 = sub_22A4DB26C();
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

uint64_t sub_2295902E0@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_22A4DE20C();
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

uint64_t sub_229590330(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_2295903E8(uint64_t result)
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
      sub_22A4DB28C();
      swift_allocObject();
      sub_22A4DB25C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22A4DB5CC();
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

uint64_t sub_229590488(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_22A4DB28C();
  swift_allocObject();
  result = sub_22A4DB23C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22A4DB5CC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_229590504(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_22A4DB28C();
  swift_allocObject();
  result = sub_22A4DB23C();
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

uint64_t sub_229590588()
{
  v15 = MEMORY[0x277D84F90];
  v0 = 6;
  sub_229583334(0, 6, 0);
  v1 = v15;
  v2 = MEMORY[0x277D84B78];
  v3 = MEMORY[0x277D84BC0];
  do
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_22A576180;
    *(v4 + 56) = v2;
    *(v4 + 64) = v3;
    v14 = 0;
    MEMORY[0x22AAD4E70](&v14, 8);
    *(v4 + 32) = v14;
    v5 = sub_22A4DD61C();
    v15 = v1;
    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    if (v8 >= v7 >> 1)
    {
      v10 = v5;
      v11 = v6;
      sub_229583334((v7 > 1), v8 + 1, 1);
      v6 = v11;
      v5 = v10;
      v1 = v15;
    }

    *(v1 + 16) = v8 + 1;
    v9 = v1 + 16 * v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6;
    --v0;
  }

  while (v0);
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  sub_229590C00(&qword_281401CA8, &qword_27D87E400, "ll\b", MEMORY[0x277D83958]);
  v12 = sub_22A4DD50C();

  return v12;
}

uint64_t sub_229590750(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4E0, &qword_22A578748);
  v10 = sub_229590C00(&qword_27D87D4E8, &qword_27D87D4E0, &qword_22A578748, MEMORY[0x277CC9C28]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_22959012C(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t sub_22959082C()
{
  v8 = MEMORY[0x277D84F90];
  v0 = 64;
  sub_2295836F4(0, 64, 0);
  v1 = v8;
  do
  {
    v7 = 0;
    MEMORY[0x22AAD4E70](&v7, 8);
    v2 = v7;
    v8 = v1;
    v4 = *(v1 + 16);
    v3 = *(v1 + 24);
    if (v4 >= v3 >> 1)
    {
      sub_2295836F4((v3 > 1), v4 + 1, 1);
      v1 = v8;
    }

    *(v1 + 16) = v4 + 1;
    *(v1 + v4 + 32) = v2;
    --v0;
  }

  while (v0);
  v5 = sub_229590750(v1);

  return v5;
}

uint64_t sub_229590908()
{
  v30 = MEMORY[0x277D84F90];
  sub_2295836F4(0, 8, 0);
  v0 = v30;
  v29 = 0;
  MEMORY[0x22AAD4E70](&v29, 8);
  v1 = v29;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v3 >= v2 >> 1)
  {
    sub_2295836F4((v2 > 1), v3 + 1, 1);
    v0 = v30;
  }

  *(v0 + 16) = v3 + 1;
  *(v0 + v3 + 32) = v1;
  v29 = 0;
  MEMORY[0x22AAD4E70](&v29, 8);
  v4 = v29;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  if (v6 >= v5 >> 1)
  {
    sub_2295836F4((v5 > 1), v6 + 1, 1);
    v0 = v30;
  }

  *(v0 + 16) = v6 + 1;
  *(v0 + v6 + 32) = v4;
  v29 = 0;
  MEMORY[0x22AAD4E70](&v29, 8);
  v7 = v29;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  if (v9 >= v8 >> 1)
  {
    sub_2295836F4((v8 > 1), v9 + 1, 1);
  }

  v10 = v30;
  *(v30 + 16) = v9 + 1;
  *(v10 + v9 + 32) = v7;
  v29 = 0;
  MEMORY[0x22AAD4E70](&v29, 8);
  v11 = v29;
  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_2295836F4((v12 > 1), v13 + 1, 1);
    v10 = v30;
  }

  *(v10 + 16) = v13 + 1;
  *(v10 + v13 + 32) = v11;
  v29 = 0;
  MEMORY[0x22AAD4E70](&v29, 8);
  v14 = v29;
  v16 = *(v10 + 16);
  v15 = *(v10 + 24);
  if (v16 >= v15 >> 1)
  {
    sub_2295836F4((v15 > 1), v16 + 1, 1);
    v10 = v30;
  }

  *(v10 + 16) = v16 + 1;
  *(v10 + v16 + 32) = v14;
  v29 = 0;
  MEMORY[0x22AAD4E70](&v29, 8);
  v17 = v29;
  v19 = *(v10 + 16);
  v18 = *(v10 + 24);
  if (v19 >= v18 >> 1)
  {
    sub_2295836F4((v18 > 1), v19 + 1, 1);
  }

  v20 = v30;
  *(v30 + 16) = v19 + 1;
  *(v20 + v19 + 32) = v17;
  v29 = 0;
  MEMORY[0x22AAD4E70](&v29, 8);
  v21 = v29;
  v23 = *(v20 + 16);
  v22 = *(v20 + 24);
  if (v23 >= v22 >> 1)
  {
    sub_2295836F4((v22 > 1), v23 + 1, 1);
    v20 = v30;
  }

  *(v20 + 16) = v23 + 1;
  *(v20 + v23 + 32) = v21;
  v29 = 0;
  MEMORY[0x22AAD4E70](&v29, 8);
  v24 = v29;
  v26 = *(v20 + 16);
  v25 = *(v20 + 24);
  if (v26 >= v25 >> 1)
  {
    sub_2295836F4((v25 > 1), v26 + 1, 1);
    v20 = v30;
  }

  *(v20 + 16) = v26 + 1;
  *(v20 + v26 + 32) = v24;
  v27 = sub_229590750(v20);

  return v27;
}

uint64_t sub_229590C00(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_229590C48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D4F8, &qword_22A578758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_229590CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2295901C0(sub_229590D2C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_229590D18(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2295798D4(result, a2);
  }

  return result;
}

void sub_229590D4C()
{
  swift_getObjectType();
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D3E0, &unk_22A578560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A578760;
  *(inited + 32) = sub_22A4DD5AC();
  *(inited + 40) = sub_22A4DD5AC();
  *(inited + 48) = sub_22A4DD5AC();
  *(inited + 56) = sub_22A4DD5AC();
  *(inited + 64) = sub_22A4DD5AC();
  *(inited + 72) = sub_22A4DD5AC();
  v6 = sub_22A4DD5AC();
  v7 = *MEMORY[0x277CD0328];
  *(inited + 80) = v6;
  *(inited + 88) = v7;
  v8 = *MEMORY[0x277CD0320];
  *(inited + 96) = *MEMORY[0x277CD0320];
  *(inited + 104) = @"HMD.EL.reset";
  v28 = inited;
  v9 = v7;
  v10 = v8;
  v11 = @"HMD.EL.reset";
  if (isRetailDemoModeV2Enabled())
  {
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_22A576180;
    v13 = *MEMORY[0x277CD2080];
    *(v12 + 32) = *MEMORY[0x277CD2080];
    v14 = v13;
    sub_2296F0760(v12);
  }

  sub_22A4DDBFC();
  v15 = v0;
  v16 = sub_22A4DD05C();
  v17 = sub_22A4DDCCC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&dword_229538000, v16, v17, "%@ Deregistering for messages in locked demo mode", v18, 0xCu);
    sub_22953EAE4(v19, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v19, -1, -1);
    MEMORY[0x22AAD4E50](v18, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v21 = v28;
  v22 = *(v28 + 16);
  if (v22)
  {
    v23 = 0;
    while (v23 < *(v21 + 16))
    {
      v24 = *(v21 + 32 + 8 * v23);
      v25 = [v15 messageDispatcher];
      if (!v25)
      {
        goto LABEL_12;
      }

      v26 = v25;
      ++v23;
      [v25 deregisterForMessage:v24 receiver:v15];

      if (v22 == v23)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

id sub_229591184()
{
  result = [v0 homes];
  if (result)
  {
    v2 = result;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v3 = sub_22A4DD83C();

    if (v3 >> 62)
    {
LABEL_16:
      v4 = sub_22A4DE0EC();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    do
    {
      v6 = v5;
      if (v4 == v5)
      {
        break;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAD13F0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v9 = [v7 hasDemoAccessories];

      v5 = v6 + 1;
    }

    while (!v9);

    return (v4 != v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2295912D0(void *a1, uint64_t a2, SEL *a3)
{
  v5 = qword_27D87F8F8;
  if (qword_27D87F8F8)
  {
    v6 = a1;
    v7 = v5;
  }

  else
  {
    v8 = qword_281402220;
    v9 = a1;
    if (v8 != -1)
    {
      swift_once();
    }

    v7 = qword_281402230;
    swift_unknownObjectRetain();
  }

  swift_unknownObjectRetain();
  v10 = [v7 *a3];

  swift_unknownObjectRelease();
  return v10;
}

id sub_229591410()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 appData];
  if (!result)
  {
    result = [v1 uuid];
    if (result)
    {
      v7 = result;
      sub_22A4DB79C();

      v8 = objc_allocWithZone(HMDApplicationData);
      v9 = sub_22A4DB77C();
      v10 = [v8 initWithParentUUID_];

      (*(v3 + 8))(v5, v2);
      return v10;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_229591558()
{
  result = sub_2297734A8(v0);
  if (result)
  {
    v2 = result;
    if (result[2] && (v3 = sub_229543DBC(0x4C746E6572727543, 0xED0000656C61636FLL), (v4 & 1) != 0))
    {
      sub_2295404B0(v2[7] + 32 * v3, v6);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      if (swift_dynamicCast())
      {
        return v5;
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

  return result;
}

void *sub_229591628()
{
  result = sub_2297734A8(v0);
  if (result)
  {
    v2 = result;
    if (result[2] && (v3 = sub_229543DBC(0x73656C61636F4CLL, 0xE700000000000000), (v4 & 1) != 0))
    {
      sub_2295404B0(v2[7] + 32 * v3, v6);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
      if (swift_dynamicCast())
      {
        return v5;
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

  return result;
}

uint64_t sub_2295916F8(uint64_t a1, uint64_t a2)
{
  v3[47] = a2;
  v3[48] = v2;
  v3[46] = a1;
  return MEMORY[0x2822009F8](sub_22959171C, 0, 0);
}

uint64_t sub_22959171C()
{
  v45 = v0;
  v1 = sub_229591558();
  v3 = v2;
  v0[49] = v2;
  v0[50] = v1;
  v4 = sub_229591628();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    if (!v3)
    {
      v3 = 0xE500000000000000;
      v1 = 0x53555F6E65;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_22A576180;
    *(v5 + 32) = v1;
    *(v5 + 40) = v3;
  }

  v0[51] = v5;
  v6 = v0[47];
  if (v6)
  {
    v7 = v0[46];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_22A576180;
    *(v5 + 32) = v7;
    *(v5 + 40) = v6;

    v13 = 1;
    goto LABEL_9;
  }

  v13 = *(v5 + 16);

  if (v13)
  {
LABEL_9:
    v0[52] = v5;
    v0[53] = v13;
    v0[62] = MEMORY[0x277D84F98];
    v0[54] = 0;
    if (*(v5 + 16))
    {
      v14 = v0[48];
      v15 = *(v5 + 32);
      v0[55] = v15;
      v16 = *(v5 + 40);
      v0[56] = v16;

      v8 = [v14 homes];
      if (v8)
      {
        v17 = v8;
        sub_229562F68(0, &qword_2814017B0, off_278666198);
        v18 = sub_22A4DD83C();
        v0[57] = v18;

        v0[43] = v18;
        v19 = swift_task_alloc();
        v0[58] = v19;
        *(v19 + 16) = v15;
        *(v19 + 24) = v16;
        v20 = swift_task_alloc();
        v0[59] = v20;
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F0, &qword_22A5787B0);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3A8, &qword_22A576E88);
        v12 = sub_229590C00(&qword_27D87D500, &qword_27D87F2F0, &qword_22A5787B0, MEMORY[0x277D83970]);
        *v20 = v0;
        v20[1] = sub_229591D68;
        v8 = &unk_22A5787D0;
        v9 = v19;
        v10 = v21;
        v11 = v22;

        return MEMORY[0x282167810](v8, v9, v10, v11, v12);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x282167810](v8, v9, v10, v11, v12);
  }

  v23 = MEMORY[0x277D84F98];
  if (*(MEMORY[0x277D84F98] + 16))
  {
    v24 = v0[50];
    v25 = v0[51];
    v26 = v0[49];
    if (!v26)
    {
      v26 = 0xE500000000000000;
      v24 = 0x53555F6E65;
    }

    v0[30] = MEMORY[0x277D837D0];
    v0[27] = v24;
    v0[28] = v26;
    sub_229543C58((v0 + 27), (v0 + 31));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44[0] = v23;
    v28 = v0[34];
    v29 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 31), v28);
    v30 = *(v28 - 8);
    v31 = swift_task_alloc();
    (*(v30 + 16))(v31, v29, v28);
    sub_2297FE940(*v31, v31[1], 0x4C746E6572727543, 0xED0000656C61636FLL, isUniquelyReferenced_nonNull_native, v44);
    __swift_destroy_boxed_opaque_existential_0(v0 + 31);

    v32 = v44[0];
    v0[38] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    v0[35] = v25;
    sub_229543C58((v0 + 35), (v0 + 39));
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v44[0] = v32;
    v34 = v0[42];
    v35 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 39), v34);
    v36 = *(v34 - 8);
    v37 = swift_task_alloc();
    (*(v36 + 16))(v37, v35, v34);
    sub_2297FEB3C(*v37, 0x73656C61636F4CLL, 0xE700000000000000, v33, v44);
    __swift_destroy_boxed_opaque_existential_0(v0 + 39);

    v38 = v44[0];
    v39 = v0[1];

    return v39(v38);
  }

  else
  {

    type metadata accessor for HMError(0);
    v0[45] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = 0x6E6F73616552;
    v42 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 0xD000000000000048;
    *(inited + 56) = 0x800000022A58AB30;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(v42, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
    sub_22A4DB3CC();
    swift_willThrow();
    v43 = v0[1];

    return v43();
  }
}

uint64_t sub_229591D68(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 480) = a1;
  *(v3 + 488) = v1;

  if (v1)
  {

    v4 = sub_2295926CC;
  }

  else
  {

    v4 = sub_229591EEC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229591EEC(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = v5;
  v6 = 0;
  v7 = v5[60];
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  while (v8 != v6)
  {
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v10 = *(v7 + 32 + 8 * v6++);
    if (v10)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_22958A770(0, v9[2] + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_22958A770((v11 > 1), v12 + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v9[2] = v12 + 1;
      v9[v12 + 4] = v10;
    }
  }

  if (v9[2])
  {
    v13 = v5[62];
    v15 = v5[55];
    v14 = v5[56];
    v16 = v5[53];
    v17 = v5[54] + 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881360, &qword_22A5787E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = 0x73656D6F48;
    v19 = inited + 32;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v9;
    v20 = sub_22956AEBC(inited);
    swift_setDeallocating();
    sub_22953EAE4(v19, &qword_27D87D508, &qword_22A5787E8);
    v5[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D510, &unk_22A5787F0);
    v5[19] = v20;
    sub_229543C58((v5 + 19), (v5 + 23));
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v62[0] = v13;
    v22 = v5[26];
    v23 = __swift_mutable_project_boxed_opaque_existential_0((v5 + 23), v22);
    v24 = *(v22 - 8);
    v25 = swift_task_alloc();
    (*(v24 + 16))(v25, v23, v22);
    sub_2297FEB28(*v25, v15, v14, v21, v62);

    __swift_destroy_boxed_opaque_existential_0(v5 + 23);

    v26 = v62[0];
    if (v17 != v16)
    {
      v27 = v5[54];
      v5[62] = v62[0];
      goto LABEL_22;
    }
  }

  else
  {
    v29 = v5[53];
    v28 = v5[54];

    if (v28 + 1 != v29)
    {
      v27 = v5[54];
LABEL_22:
      v47 = v27 + 1;
      v5[54] = v47;
      v48 = v5[52];
      if (v47 >= *(v48 + 16))
      {
        goto LABEL_31;
      }

      v49 = v5[48];
      v50 = v48 + 16 * v47;
      v51 = *(v50 + 32);
      v5[55] = v51;
      v52 = *(v50 + 40);
      v5[56] = v52;

      isUniquelyReferenced_nonNull_native = [v49 homes];
      if (isUniquelyReferenced_nonNull_native)
      {
        v53 = isUniquelyReferenced_nonNull_native;
        sub_229562F68(0, &qword_2814017B0, off_278666198);
        v54 = sub_22A4DD83C();
        v5[57] = v54;

        v5[43] = v54;
        v55 = swift_task_alloc();
        v5[58] = v55;
        *(v55 + 16) = v51;
        *(v55 + 24) = v52;
        v56 = swift_task_alloc();
        v5[59] = v56;
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F0, &qword_22A5787B0);
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3A8, &qword_22A576E88);
        a5 = sub_229590C00(&qword_27D87D500, &qword_27D87F2F0, &qword_22A5787B0, MEMORY[0x277D83970]);
        *v56 = v5;
        v56[1] = sub_229591D68;
        isUniquelyReferenced_nonNull_native = &unk_22A5787D0;
        a2 = v55;
        a3 = v57;
        a4 = v58;
      }

      else
      {
LABEL_32:
        __break(1u);
      }

      return MEMORY[0x282167810](isUniquelyReferenced_nonNull_native, a2, a3, a4, a5);
    }

    v26 = v5[62];
  }

  if (*(v26 + 16))
  {
    v30 = v5[50];
    v31 = v5[51];
    v32 = v5[49];
    if (!v32)
    {
      v32 = 0xE500000000000000;
      v30 = 0x53555F6E65;
    }

    v5[30] = MEMORY[0x277D837D0];
    v5[27] = v30;
    v5[28] = v32;
    sub_229543C58((v5 + 27), (v5 + 31));
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v62[0] = v26;
    v34 = v5[34];
    v35 = __swift_mutable_project_boxed_opaque_existential_0((v5 + 31), v34);
    v36 = *(v34 - 8);
    v37 = swift_task_alloc();
    (*(v36 + 16))(v37, v35, v34);
    sub_2297FE940(*v37, v37[1], 0x4C746E6572727543, 0xED0000656C61636FLL, v33, v62);
    __swift_destroy_boxed_opaque_existential_0(v5 + 31);

    v38 = v62[0];
    v5[38] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    v5[35] = v31;
    sub_229543C58((v5 + 35), (v5 + 39));
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v62[0] = v38;
    v40 = v5[42];
    v41 = __swift_mutable_project_boxed_opaque_existential_0((v5 + 39), v40);
    v42 = *(v40 - 8);
    v43 = swift_task_alloc();
    (*(v42 + 16))(v43, v41, v40);
    sub_2297FEB3C(*v43, 0x73656C61636F4CLL, 0xE700000000000000, v39, v62);
    __swift_destroy_boxed_opaque_existential_0(v5 + 39);

    v44 = v62[0];
    v45 = v5[1];

    return v45(v44);
  }

  else
  {

    type metadata accessor for HMError(0);
    v5[45] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v59 = swift_initStackObject();
    *(v59 + 16) = xmmword_22A576180;
    *(v59 + 32) = 0x6E6F73616552;
    v60 = v59 + 32;
    *(v59 + 72) = MEMORY[0x277D837D0];
    *(v59 + 40) = 0xE600000000000000;
    *(v59 + 48) = 0xD000000000000048;
    *(v59 + 56) = 0x800000022A58AB30;
    sub_22956AD8C(v59);
    swift_setDeallocating();
    sub_22953EAE4(v60, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
    sub_22A4DB3CC();
    swift_willThrow();
    v61 = v5[1];

    return v61();
  }
}

uint64_t sub_2295926E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_229592790;

  return sub_229808024(a3, a4);
}

uint64_t sub_229592790(uint64_t a1)
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
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_2295928DC, 0, 0);
  }
}

id sub_229592900(uint64_t a1, uint64_t a2)
{
  v5 = sub_229591558();
  v138 = MEMORY[0x277D837D0];
  v7 = 0x53555F6E65;
  if (v6)
  {
    v7 = v5;
  }

  v8 = 0xE500000000000000;
  if (v6)
  {
    v8 = v6;
  }

  v136 = v7;
  v137 = v8;
  sub_229543C58(&v136, v146);
  v9 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v145 = v9;
  v11 = __swift_mutable_project_boxed_opaque_existential_0(v146, v147);
  MEMORY[0x28223BE20](v11);
  v13 = (&v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  sub_2297FE940(*v13, v13[1], 0x4C746E6572727543, 0xED0000656C61636FLL, isUniquelyReferenced_nonNull_native, &v145);
  __swift_destroy_boxed_opaque_existential_0(v146);
  v15 = v145;
  v148 = v145;
  v126 = v2;
  v16 = sub_229591628();
  if (!v16)
  {
    sub_2297FCFD4(0x73656C61636F4CLL, 0xE700000000000000, &v136);
    sub_22953EAE4(&v136, &unk_27D87FC20, &unk_22A578810);
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_9:
    v25 = sub_229591628();
    if (v25)
    {
      v23 = v25;
    }

    else
    {
      v23 = &unk_283CDA418;
    }

    v26 = v23[2];

    v124 = v26;
    if (!v26)
    {
      goto LABEL_59;
    }

    goto LABEL_13;
  }

  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  v138 = v18;
  v136 = v17;
  sub_229543C58(&v136, v146);
  LOBYTE(v17) = swift_isUniquelyReferenced_nonNull_native();
  v145 = v15;
  v19 = __swift_mutable_project_boxed_opaque_existential_0(v146, v147);
  MEMORY[0x28223BE20](v19);
  v21 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  sub_2297FF768(v21, 0x73656C61636F4CLL, 0xE700000000000000, v17, &v145, v18);
  __swift_destroy_boxed_opaque_existential_0(v146);
  v148 = v145;
  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
  v23 = swift_allocObject();
  *(v23 + 1) = xmmword_22A576180;
  v23[4] = a1;
  v23[5] = a2;

  v124 = 1;
LABEL_13:
  v27 = 0;
  v125 = v23 + 4;
  v122 = &unk_22A587F90;
  v123 = v23;
  while (1)
  {
    if (v27 >= v23[2])
    {
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
      return result;
    }

    v36 = &v125[2 * v27];
    v37 = v36[1];
    v134 = *v36;
    v144 = MEMORY[0x277D84FA0];
    v145 = MEMORY[0x277D84FA0];
    v142 = MEMORY[0x277D84FA0];
    v143 = MEMORY[0x277D84FA0];
    v140 = MEMORY[0x277D84FA0];
    v141 = MEMORY[0x277D84FA0];

    result = [v126 homes];
    if (!result)
    {
      goto LABEL_70;
    }

    v38 = result;
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v39 = sub_22A4DD83C();

    v40 = v39 >> 62 ? sub_22A4DE0EC() : *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v133 = v27;

    if (v40)
    {
      break;
    }

LABEL_29:

    v45 = v145;
    v46 = *(v145 + 16);
    v132 = v145;
    if (v46)
    {
      v47 = sub_229714EC0(v46, 0);
      v48 = sub_229715134(&v136, v47 + 4, v46, v45);
      v49 = v136;

      result = sub_22953EE84(v49);
      if (v48 != v46)
      {
        goto LABEL_64;
      }

      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
      v147 = v50;
      v146[0] = v47;
      sub_229543C58(v146, &v136);
      v51 = MEMORY[0x277D84F98];
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v135 = v51;
      v53 = __swift_mutable_project_boxed_opaque_existential_0(&v136, v138);
      MEMORY[0x28223BE20](v53);
      v55 = &v121 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v56 + 16))(v55);
      sub_2297FF768(v55, 0x656D614E656D6F48, 0xE900000000000073, v52, &v135, v50);
      __swift_destroy_boxed_opaque_existential_0(&v136);
      v139 = v135;
      v57 = v144;
    }

    else
    {
      v57 = v144;
      if (!*(v144 + 16) && !*(v143 + 16) && !*(v142 + 16) && !*(v141 + 16))
      {

        type metadata accessor for HMError(0);
        v133 = v117;
        v146[0] = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
        v118 = swift_allocObject();
        *(v118 + 32) = 0x6E6F73616552;
        *(v118 + 16) = xmmword_22A576180;
        *(v118 + 40) = 0xE600000000000000;
        v136 = 0;
        v137 = 0xE000000000000000;
        sub_22A4DE1FC();
        MEMORY[0x22AAD08C0](0xD000000000000029, 0x800000022A58AB80);
        MEMORY[0x22AAD08C0](v134, v37);

        MEMORY[0x22AAD08C0](0xD000000000000024, 0x800000022A58ABB0);
        v119 = v136;
        v120 = v137;
        *(v118 + 72) = MEMORY[0x277D837D0];
        *(v118 + 48) = v119;
        *(v118 + 56) = v120;
        sub_22956AD8C(v118);
        swift_setDeallocating();
        sub_22953EAE4(v118 + 32, &qword_27D87CDA0, &unk_22A57A930);
        swift_deallocClassInstance();
        sub_22958E108();
        sub_22A4DB3CC();
        swift_willThrow();
        v35 = v140;

        return v35;
      }

      v139 = MEMORY[0x277D84F98];
      sub_2297FCFD4(0x656D614E656D6F48, 0xE900000000000073, &v136);
      sub_22953EAE4(&v136, &unk_27D87FC20, &unk_22A578810);
    }

    v58 = *(v57 + 16);
    v131 = v57;
    if (v58)
    {
      v59 = sub_229714EC0(v58, 0);
      v60 = sub_229715134(&v136, v59 + 4, v58, v57);
      v61 = v136;

      result = sub_22953EE84(v61);
      if (v60 != v58)
      {
        goto LABEL_65;
      }

      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
      v138 = v62;
      v136 = v59;
      sub_229543C58(&v136, v146);
      v63 = v139;
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v135 = v63;
      v65 = __swift_mutable_project_boxed_opaque_existential_0(v146, v147);
      MEMORY[0x28223BE20](v65);
      v67 = &v121 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v68 + 16))(v67);
      sub_2297FF768(v67, 0x726F737365636341, 0xEE0073656D614E79, v64, &v135, v62);
      __swift_destroy_boxed_opaque_existential_0(v146);
      v139 = v135;
    }

    else
    {
      sub_2297FCFD4(0x726F737365636341, 0xEE0073656D614E79, &v136);
      sub_22953EAE4(&v136, &unk_27D87FC20, &unk_22A578810);
    }

    v69 = v143;
    v70 = *(v143 + 16);
    v130 = v143;
    if (v70)
    {
      v71 = sub_229714EC0(v70, 0);
      v72 = sub_229715134(&v136, v71 + 4, v70, v69);
      v73 = v136;

      result = sub_22953EE84(v73);
      if (v72 != v70)
      {
        goto LABEL_66;
      }

      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
      v138 = v74;
      v136 = v71;
      sub_229543C58(&v136, v146);
      v75 = v139;
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v135 = v75;
      v77 = __swift_mutable_project_boxed_opaque_existential_0(v146, v147);
      MEMORY[0x28223BE20](v77);
      v79 = &v121 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v80 + 16))(v79);
      sub_2297FF768(v79, 0x656D614E6D6F6F52, 0xE900000000000073, v76, &v135, v74);
      __swift_destroy_boxed_opaque_existential_0(v146);
      v139 = v135;
    }

    else
    {
      sub_2297FCFD4(0x656D614E6D6F6F52, 0xE900000000000073, &v136);
      sub_22953EAE4(&v136, &unk_27D87FC20, &unk_22A578810);
    }

    v81 = v142;
    v82 = *(v142 + 16);
    v129 = v142;
    if (v82)
    {
      v83 = sub_229714EC0(v82, 0);
      v84 = sub_229715134(&v136, v83 + 4, v82, v81);
      v85 = v136;

      result = sub_22953EE84(v85);
      if (v84 != v82)
      {
        goto LABEL_67;
      }

      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
      v138 = v86;
      v136 = v83;
      sub_229543C58(&v136, v146);
      v87 = v139;
      v88 = swift_isUniquelyReferenced_nonNull_native();
      v135 = v87;
      v89 = __swift_mutable_project_boxed_opaque_existential_0(v146, v147);
      MEMORY[0x28223BE20](v89);
      v91 = &v121 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v92 + 16))(v91);
      sub_2297FF768(v91, 0x6D614E656E656353, 0xEA00000000007365, v88, &v135, v86);
      __swift_destroy_boxed_opaque_existential_0(v146);
      v139 = v135;
    }

    else
    {
      sub_2297FCFD4(0x6D614E656E656353, 0xEA00000000007365, &v136);
      sub_22953EAE4(&v136, &unk_27D87FC20, &unk_22A578810);
    }

    v93 = v141;
    v94 = *(v141 + 16);
    v128 = v141;
    if (v94)
    {
      v95 = sub_229714EC0(v94, 0);
      v96 = sub_229715134(&v136, v95 + 4, v94, v93);
      v97 = v136;

      result = sub_22953EE84(v97);
      if (v96 != v94)
      {
        goto LABEL_68;
      }

      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
      v138 = v98;
      v136 = v95;
      sub_229543C58(&v136, v146);
      v99 = v139;
      v100 = swift_isUniquelyReferenced_nonNull_native();
      v135 = v99;
      v101 = __swift_mutable_project_boxed_opaque_existential_0(v146, v147);
      MEMORY[0x28223BE20](v101);
      v103 = &v121 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v104 + 16))(v103);
      sub_2297FF768(v103, 0x4E65636976726553, 0xEC00000073656D61, v100, &v135, v98);
      __swift_destroy_boxed_opaque_existential_0(v146);
      v139 = v135;
    }

    else
    {
      sub_2297FCFD4(0x4E65636976726553, 0xEC00000073656D61, &v136);
      sub_22953EAE4(&v136, &unk_27D87FC20, &unk_22A578810);
    }

    v105 = v140;
    v106 = *(v140 + 16);
    if (v106)
    {
      v107 = sub_229714EC0(*(v140 + 16), 0);
      v108 = sub_229715134(&v136, v107 + 4, v106, v105);
      v109 = v136;
      v127 = v105;

      result = sub_22953EE84(v109);
      if (v108 != v106)
      {
        goto LABEL_69;
      }

      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
      v138 = v110;
      v136 = v107;
      sub_229543C58(&v136, v146);
      v111 = v139;
      v112 = swift_isUniquelyReferenced_nonNull_native();
      v135 = v111;
      v113 = __swift_mutable_project_boxed_opaque_existential_0(v146, v147);
      MEMORY[0x28223BE20](v113);
      v115 = &v121 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v116 + 16))(v115);
      sub_2297FF768(v115, 0xD000000000000014, v122 | 0x8000000000000000, v112, &v135, v110);
      __swift_destroy_boxed_opaque_existential_0(v146);
      v28 = v135;
    }

    else
    {
      sub_2297FCFD4(0xD000000000000014, v122 | 0x8000000000000000, &v136);
      sub_22953EAE4(&v136, &unk_27D87FC20, &unk_22A578810);
      v28 = v139;
    }

    v27 = v133 + 1;
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
    v136 = v28;
    sub_229543C58(&v136, v146);
    v29 = v148;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v135 = v29;
    v31 = __swift_mutable_project_boxed_opaque_existential_0(v146, v147);
    MEMORY[0x28223BE20](v31);
    v33 = (&v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v34 + 16))(v33);
    sub_2297FED6C(*v33, v134, v37, v30, &v135);

    __swift_destroy_boxed_opaque_existential_0(v146);

    v35 = v135;
    v148 = v135;

    v23 = v123;
    if (v27 == v124)
    {
      goto LABEL_60;
    }
  }

  v41 = 0;
  while (1)
  {
    if ((v39 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x22AAD13F0](v41, v39);
    }

    else
    {
      if (v41 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v42 = *(v39 + 8 * v41 + 32);
    }

    v43 = v42;
    v44 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    v136 = v42;
    sub_229593C58(&v136, v134, v37);

    ++v41;
    if (v44 == v40)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  v35 = v148;
LABEL_60:

  return v35;
}

id sub_229593C58(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v107 = a3;
  v100 = v3;
  v4 = sub_229809210(a2, a3);
  if (v5)
  {
    sub_229570788(&v106, v4, v5);
  }

  v6 = [v3 accessories];
  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  v7 = sub_22A4DD83C();

  if (v7 >> 62)
  {
LABEL_33:
    v8 = sub_22A4DE0EC();
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_34:
    v97 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_34;
  }

LABEL_5:
  v9 = 0;
  v97 = MEMORY[0x277D84F90];
  do
  {
    v10 = v9;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AAD13F0](v10, v7);
      }

      else
      {
        if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v9 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v13 = sub_229773768();
      if (!v13)
      {
        goto LABEL_8;
      }

      v14 = v13;
      if (!*(v13 + 16) || (v15 = sub_229543DBC(a2, v107), (v16 & 1) == 0))
      {

LABEL_8:

        goto LABEL_9;
      }

      sub_2295404B0(*(v14 + 56) + 32 * v15, &v106);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_8;
      }

      if (!*(v104 + 16) || (v17 = sub_229543DBC(0x726F737365636341, 0xED0000656D614E79), (v18 & 1) == 0))
      {

        goto LABEL_9;
      }

      sub_2295404B0(*(v104 + 56) + 32 * v17, &v106);

      if (swift_dynamicCast())
      {
        break;
      }

LABEL_9:
      ++v10;
      if (v9 == v8)
      {
        goto LABEL_35;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v97 = sub_22958A53C(0, *(v97 + 2) + 1, 1, v97);
    }

    v21 = *(v97 + 2);
    v20 = *(v97 + 3);
    if (v21 >= v20 >> 1)
    {
      v97 = sub_22958A53C((v20 > 1), v21 + 1, 1, v97);
    }

    *(v97 + 2) = v21 + 1;
    v22 = &v97[16 * v21];
    *(v22 + 4) = v104;
    *(v22 + 5) = v105;
  }

  while (v9 != v8);
LABEL_35:

  sub_22959CFB4(v97);

  v23 = [v100 rooms];
  sub_229562F68(0, &unk_2814017A0, off_278666308);
  v24 = sub_22A4DD83C();

  if (!(v24 >> 62))
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_37;
    }

LABEL_65:
    v27 = MEMORY[0x277D84F90];
    goto LABEL_66;
  }

  while (2)
  {
    v25 = sub_22A4DE0EC();
    if (!v25)
    {
      goto LABEL_65;
    }

LABEL_37:
    v26 = 0;
    v27 = MEMORY[0x277D84F90];
LABEL_38:
    v98 = v27;
    v28 = v26;
LABEL_39:
    if ((v24 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x22AAD13F0](v28, v24);
    }

    else
    {
      if (v28 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v29 = *(v24 + 8 * v28 + 32);
    }

    v30 = v29;
    v26 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
      continue;
    }

    break;
  }

  v31 = sub_229773768();
  if (!v31)
  {
    goto LABEL_52;
  }

  v32 = v31;
  if (!*(v31 + 16))
  {
    goto LABEL_51;
  }

  v33 = sub_229543DBC(a2, v107);
  if ((v34 & 1) == 0)
  {
    goto LABEL_51;
  }

  sub_2295404B0(*(v32 + 56) + 32 * v33, &v106);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_52:

LABEL_53:
    ++v28;
    if (v26 == v25)
    {
      v27 = v98;
      goto LABEL_66;
    }

    goto LABEL_39;
  }

  if (!*(v104 + 16) || (v35 = sub_229543DBC(0x656D614E6D6F6F52, 0xE800000000000000), (v36 & 1) == 0))
  {
LABEL_51:

    goto LABEL_52;
  }

  sub_2295404B0(*(v104 + 56) + 32 * v35, &v106);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_53;
  }

  v37 = v98;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  if ((v38 & 1) == 0)
  {
    v37 = sub_22958A53C(0, *(v98 + 16) + 1, 1, v98);
  }

  v40 = *(v37 + 2);
  v39 = *(v37 + 3);
  v41 = v37;
  if (v40 >= v39 >> 1)
  {
    v41 = sub_22958A53C((v39 > 1), v40 + 1, 1, v37);
  }

  *(v41 + 2) = v40 + 1;
  v42 = &v41[16 * v40];
  v27 = v41;
  *(v42 + 4) = v104;
  *(v42 + 5) = v105;
  if (v26 != v25)
  {
    goto LABEL_38;
  }

LABEL_66:

  sub_22959CFB4(v27);

  result = [v100 actionSets];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v44 = result;
  sub_229562F68(0, &qword_281401C20, off_278666020);
  v45 = sub_22A4DD83C();

  if (!(v45 >> 62))
  {
    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      goto LABEL_69;
    }

LABEL_97:
    v48 = MEMORY[0x277D84F90];
    goto LABEL_98;
  }

  while (2)
  {
    v46 = sub_22A4DE0EC();
    if (!v46)
    {
      goto LABEL_97;
    }

LABEL_69:
    v47 = 0;
    v48 = MEMORY[0x277D84F90];
LABEL_70:
    v99 = v48;
    v49 = v47;
LABEL_71:
    if ((v45 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x22AAD13F0](v49, v45);
    }

    else
    {
      if (v49 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_95;
      }

      v50 = *(v45 + 8 * v49 + 32);
    }

    v51 = v50;
    v47 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_95:
      __break(1u);
      continue;
    }

    break;
  }

  v52 = sub_229773768();
  if (!v52)
  {
    goto LABEL_84;
  }

  v53 = v52;
  if (!*(v52 + 16))
  {
    goto LABEL_83;
  }

  v54 = sub_229543DBC(a2, v107);
  if ((v55 & 1) == 0)
  {
    goto LABEL_83;
  }

  sub_2295404B0(*(v53 + 56) + 32 * v54, &v106);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_84:

LABEL_85:
    ++v49;
    if (v47 == v46)
    {
      goto LABEL_98;
    }

    goto LABEL_71;
  }

  if (!*(v104 + 16) || (v56 = sub_229543DBC(0x6D614E656E656353, 0xE900000000000065), (v57 & 1) == 0))
  {
LABEL_83:

    goto LABEL_84;
  }

  sub_2295404B0(*(v104 + 56) + 32 * v56, &v106);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_85;
  }

  v58 = swift_isUniquelyReferenced_nonNull_native();
  if ((v58 & 1) == 0)
  {
    v99 = sub_22958A53C(0, *(v48 + 16) + 1, 1, v48);
  }

  v60 = *(v99 + 2);
  v59 = *(v99 + 3);
  if (v60 >= v59 >> 1)
  {
    v99 = sub_22958A53C((v59 > 1), v60 + 1, 1, v99);
  }

  *(v99 + 2) = v60 + 1;
  v61 = &v99[16 * v60];
  *(v61 + 4) = v104;
  *(v61 + 5) = v105;
  v48 = v99;
  if (v47 != v46)
  {
    goto LABEL_70;
  }

LABEL_98:

  sub_22959CFB4(v48);

  v62 = [v100 hapAccessories];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  v63 = sub_22A4DD83C();

  v64 = sub_22954B4DC(v63);
  v65 = v95;

  if (v64 >> 62)
  {
LABEL_128:
    v66 = sub_22A4DE0EC();
    if (!v66)
    {
      goto LABEL_129;
    }

LABEL_100:
    v67 = 0;
    v68 = MEMORY[0x277D84F90];
    v96 = v65;
LABEL_101:
    v101 = v68;
    v69 = v67;
    while (1)
    {
      if ((v64 & 0xC000000000000001) != 0)
      {
        v70 = MEMORY[0x22AAD13F0](v69, v64);
      }

      else
      {
        if (v69 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_127;
        }

        v70 = *(v64 + 8 * v69 + 32);
      }

      v65 = v70;
      v67 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        __break(1u);
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      v71 = sub_229773768();
      if (!v71)
      {
        goto LABEL_103;
      }

      v72 = v71;
      if (!*(v71 + 16))
      {
        break;
      }

      v73 = sub_229543DBC(a2, v107);
      if ((v74 & 1) == 0)
      {
        break;
      }

      sub_2295404B0(*(v72 + 56) + 32 * v73, &v106);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_103;
      }

      if (*(v104 + 16) && (v75 = sub_229543DBC(0x4E65636976726553, 0xEB00000000656D61), (v76 & 1) != 0))
      {
        sub_2295404B0(*(v104 + 56) + 32 * v75, &v106);

        if (swift_dynamicCast())
        {
          v77 = v101;
          v78 = swift_isUniquelyReferenced_nonNull_native();
          if ((v78 & 1) == 0)
          {
            v77 = sub_22958A53C(0, *(v101 + 2) + 1, 1, v101);
          }

          v80 = *(v77 + 2);
          v79 = *(v77 + 3);
          v81 = v77;
          if (v80 >= v79 >> 1)
          {
            v81 = sub_22958A53C((v79 > 1), v80 + 1, 1, v77);
          }

          *(v81 + 2) = v80 + 1;
          v82 = &v81[16 * v80];
          v68 = v81;
          *(v82 + 4) = v104;
          *(v82 + 5) = v105;
          v65 = v96;
          if (v67 == v66)
          {
            goto LABEL_130;
          }

          goto LABEL_101;
        }
      }

      else
      {
      }

LABEL_104:
      ++v69;
      if (v67 == v66)
      {
        v68 = v101;
        goto LABEL_130;
      }
    }

LABEL_103:

    goto LABEL_104;
  }

  v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v66)
  {
    goto LABEL_100;
  }

LABEL_129:
  v68 = MEMORY[0x277D84F90];
LABEL_130:
  sub_22959CFB4(v68);

  v83 = sub_229594ED8(v64);

  if (v83 >> 62)
  {
LABEL_148:
    v84 = sub_22A4DE0EC();
  }

  else
  {
    v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v85 = 0;
  v102 = MEMORY[0x277D84F90];
  while (v84 != v85)
  {
    if ((v83 & 0xC000000000000001) != 0)
    {
      v86 = MEMORY[0x22AAD13F0](v85, v83);
    }

    else
    {
      if (v85 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_147;
      }

      v86 = *(v83 + 8 * v85 + 32);
    }

    v87 = v86;
    v88 = v85 + 1;
    if (__OFADD__(v85, 1))
    {
      __break(1u);
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    v89 = sub_22970DF2C(a2, v107);
    v91 = v90;

    ++v85;
    if (v91)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_22958A53C(0, *(v102 + 2) + 1, 1, v102);
      }

      v93 = *(v102 + 2);
      v92 = *(v102 + 3);
      if (v93 >= v92 >> 1)
      {
        v102 = sub_22958A53C((v92 > 1), v93 + 1, 1, v102);
      }

      *(v102 + 2) = v93 + 1;
      v94 = &v102[16 * v93];
      *(v94 + 4) = v89;
      *(v94 + 5) = v91;
      v85 = v88;
    }
  }

  sub_22959CFB4(v102);
}

uint64_t sub_2295948C4(uint64_t a1)
{
  v2 = type metadata accessor for HomeDeviceEntity(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - v8;
  result = MEMORY[0x28223BE20](v7);
  v12 = &v20 - v11;
  v13 = 0;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  for (i = (v14 + 63) >> 6; v16; result = sub_22959E6E0(v9))
  {
    v18 = v13;
LABEL_9:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_22959E67C(*(a1 + 48) + *(v3 + 72) * (v19 | (v18 << 6)), v12);
    sub_22959E73C(v12, v6);
    sub_2295708D8(v9, v6);
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= i)
    {
    }

    v16 = *(a1 + 56 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_229594AA4(uint64_t a1)
{
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v23 - v8;
  result = MEMORY[0x28223BE20](v7);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      sub_22957198C(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_229594CE4(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *))
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_22A4DE09C();
    sub_229562F68(0, a2, a3);
    sub_22959E62C(a4, a2, a3);
    sub_22A4DDBAC();
    v6 = v24[1];
    v10 = v24[2];
    v11 = v24[3];
    v12 = v24[4];
    v13 = v24[5];
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(a1 + 32);
    v10 = (a1 + 56);
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = (v16 & *(a1 + 56));
  }

  v17 = (v11 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_12:
    v21 = (v19 - 1) & v19;
    if (!*(*(v6 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19))))))
    {
LABEL_18:
      sub_22953EE84(v6);
      return;
    }

    while (1)
    {
      a5(v24);

      v12 = v20;
      v13 = v21;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_22A4DE12C())
      {
        sub_229562F68(0, a2, a3);
        swift_dynamicCast();
        v20 = v12;
        v21 = v13;
        if (v24[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v20 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_18;
    }

    v19 = v10[v20];
    ++v18;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t sub_229594ED8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject characteristics];
      sub_229562F68(0, &unk_27D87E490, off_2786660B8);
      v8 = sub_22A4DD83C();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_22A4DE0EC();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_22A4DE0EC();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_229590C00(&qword_27D87D518, &unk_27D880960, &qword_22A578820, MEMORY[0x277D83988]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880960, &qword_22A578820);
              v19 = sub_22958C03C(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
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
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_22A4DE0EC();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_22959526C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject accessories];
      sub_229562F68(0, &qword_281401C30, off_278665FE8);
      v8 = sub_22A4DD83C();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_22A4DE0EC();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_22A4DE0EC();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_229590C00(&qword_27D881EC0, &qword_27D87D548, &unk_22A578880, MEMORY[0x277D83988]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D548, &unk_22A578880);
              v19 = sub_22958C03C(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
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
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_22A4DE0EC();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_229595600(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject rooms];
      sub_229562F68(0, &unk_2814017A0, off_278666308);
      v8 = sub_22A4DD83C();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_22A4DE0EC();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_22A4DE0EC();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_229590C00(&qword_27D87D550, &qword_27D87C3D0, &qword_22A576EA8, MEMORY[0x277D83988]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3D0, &qword_22A576EA8);
              v19 = sub_22958C03C(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
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
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_22A4DE0EC();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

id sub_229595994(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
LABEL_46:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_22A4DE0EC();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
LABEL_3:
      v2 = 0;
      v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
      v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
      v26 = isUniquelyReferenced_nonNull_bridgeObject;
      v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
      v3 = MEMORY[0x277D84F90];
      v27 = v1;
      while (1)
      {
        if (v30)
        {
          isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v2, v26);
        }

        else
        {
          if (v2 >= *(v29 + 16))
          {
            goto LABEL_41;
          }

          isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
        }

        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_40;
        }

        result = [isUniquelyReferenced_nonNull_bridgeObject actionSets];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v8 = result;
        sub_229562F68(0, &qword_281401C20, off_278666020);
        v9 = sub_22A4DD83C();

        v10 = v9 >> 62;
        v11 = v9 >> 62 ? sub_22A4DE0EC() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = v3 >> 62;
        if (v3 >> 62)
        {
          isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
          v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
          if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
          {
LABEL_39:
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
            goto LABEL_46;
          }
        }

        else
        {
          isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
          if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
          {
            goto LABEL_39;
          }
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        v31 = v6;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          break;
        }

        if (v12)
        {
          goto LABEL_20;
        }

LABEL_21:
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
        v3 = isUniquelyReferenced_nonNull_bridgeObject;
        v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
        v33 = v3;
        v15 = *(v14 + 16);
        v16 = *(v14 + 24);
        if (v10)
        {
          isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
          v17 = isUniquelyReferenced_nonNull_bridgeObject;
          if (!isUniquelyReferenced_nonNull_bridgeObject)
          {
LABEL_4:

            v3 = v33;
            if (v11 > 0)
            {
              goto LABEL_42;
            }

            goto LABEL_5;
          }
        }

        else
        {
          v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v17)
          {
            goto LABEL_4;
          }
        }

        if (((v16 >> 1) - v15) < v11)
        {
          goto LABEL_43;
        }

        v18 = v14 + 8 * v15 + 32;
        if (v10)
        {
          if (v17 < 1)
          {
            goto LABEL_45;
          }

          sub_229590C00(&qword_27D87D560, &qword_27D87D558, &unk_22A578890, MEMORY[0x277D83988]);
          for (i = 0; i != v17; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D558, &unk_22A578890);
            v20 = sub_22958C03C(v32, i, v9);
            v22 = *v21;
            (v20)(v32, 0);
            *(v18 + 8 * i) = v22;
          }
        }

        else
        {
          swift_arrayInitWithCopy();
        }

        v1 = v27;
        v3 = v33;
        if (v11 >= 1)
        {
          v23 = *(v14 + 16);
          v5 = __OFADD__(v23, v11);
          v24 = v23 + v11;
          if (v5)
          {
            goto LABEL_44;
          }

          *(v14 + 16) = v24;
        }

LABEL_5:
        v2 = v31;
        if (v31 == v1)
        {
          return v3;
        }
      }

      if (!v12)
      {
        v14 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

LABEL_20:
      sub_22A4DE0EC();
      goto LABEL_21;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_229595D30(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return MEMORY[0x2822009F8](sub_229595D50, 0, 0);
}

uint64_t sub_229595D50()
{
  v1 = sub_22959D130(v0[15]);
  v0[17] = v1;
  v2 = v0[15];
  if (*(v1 + 16))
  {
    v3 = v0[16];
    v0[12] = v1;
    v4 = swift_task_alloc();
    v0[18] = v4;
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = swift_task_alloc();
    v0[19] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    v7 = sub_229590C00(&qword_27D87D530, &qword_27D87E400, "ll\b", MEMORY[0x277D83970]);
    *v5 = v0;
    v5[1] = sub_22959608C;

    return MEMORY[0x282167808](&unk_22A5788D0, v4, v6, v7);
  }

  else
  {

    type metadata accessor for HMError(0);
    v0[14] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000028, 0x800000022A58AC50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v9 = MEMORY[0x277D837D0];
    v10 = sub_22A4DD4DC();
    MEMORY[0x22AAD08C0](v10);

    v11 = MEMORY[0x22AAD08C0](0xD000000000000011, 0x800000022A58AC80);
    MEMORY[0x22AACE9F0](v11);
    v12 = MEMORY[0x22AAD0A20]();
    v14 = v13;

    MEMORY[0x22AAD08C0](v12, v14);

    *(inited + 72) = v9;
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
    sub_22A4DB3CC();
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_22959608C()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2295961D4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2295961D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229596240(void *a1, uint64_t a2, uint64_t a3)
{
  v3[25] = a2;
  v3[26] = a3;
  v4 = a1[1];
  v3[27] = *a1;
  v3[28] = v4;
  return MEMORY[0x2822009F8](sub_229596268, 0, 0);
}

uint64_t sub_229596268()
{
  if (*(*(v0 + 200) + 16) && (v1 = sub_229543DBC(*(v0 + 216), *(v0 + 224)), (v2 & 1) != 0) && (sub_2295404B0(*(*(v0 + 200) + 56) + 32 * v1, v0 + 96), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(v0 + 176);
    if (*(v3 + 16) && (v4 = sub_229543DBC(0x73656D6F48, 0xE500000000000000), (v5 & 1) != 0))
    {
      sub_2295404B0(*(v3 + 56) + 32 * v4, v0 + 128);

      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        v7 = *(v0 + 224);
        v17 = *(v0 + 208);
        v8 = *(v0 + 184);
        *(v0 + 232) = v8;
        *(v0 + 192) = v8;
        v9 = swift_task_alloc();
        *(v0 + 240) = v9;
        *(v9 + 16) = v17;
        *(v9 + 32) = v7;
        v10 = swift_task_alloc();
        *(v0 + 248) = v10;
        v11 = sub_229590C00(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0, MEMORY[0x277D83970]);
        *v10 = v0;
        v10[1] = sub_2295965EC;

        return MEMORY[0x282167808](&unk_22A5788E0, v9, v6, v11);
      }
    }

    else
    {
    }

    v15 = *(v0 + 8);
  }

  else
  {
    v13 = *(v0 + 216);
    v12 = *(v0 + 224);
    type metadata accessor for HMError(0);
    *(v0 + 168) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    MEMORY[0x22AAD08C0](v13, v12);
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD000000000000027;
    *(inited + 56) = 0x800000022A58ACA0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
    sub_22A4DB3CC();
    swift_willThrow();
    v15 = *(v0 + 8);
  }

  return v15();
}

uint64_t sub_2295965EC()
{
  v2 = *v1;
  *(v2 + 256) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229596734, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_229596734()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295967A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a2;
  v4[15] = a3;
  v5 = *a1;
  v4[16] = a4;
  v4[17] = v5;
  return MEMORY[0x2822009F8](sub_2295967C8, 0, 0);
}

uint64_t sub_2295967C8()
{
  v1 = sub_229596C30(v0[17]);
  v0[18] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_229596A54;
    v3 = v0[17];

    return sub_22980934C(v3);
  }

  else
  {
    v5 = v0[16];
    v6 = v0[15];
    type metadata accessor for HMError(0);
    v0[13] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000002FLL, 0x800000022A58ACD0);
    MEMORY[0x22AAD08C0](v6, v5);
    MEMORY[0x22AAD08C0](0xD000000000000015, 0x800000022A58AD00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v8 = MEMORY[0x277D837D0];
    v9 = sub_22A4DD4AC();
    MEMORY[0x22AAD08C0](v9);

    *(inited + 72) = v8;
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
    sub_22A4DB3CC();
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_229596A54()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_229596BCC;
  }

  else
  {
    v2 = sub_229596B68;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229596B68()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229596BCC()
{
  v1 = *(v0 + 8);

  return v1();
}

id sub_229596C30(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17[-v5];
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 16))
  {
    v11 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
    if (v12)
    {
      sub_2295404B0(*(a1 + 56) + 32 * v11, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      if (swift_dynamicCast())
      {
        sub_22A4DB75C();

        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {
          sub_22953EAE4(v6, &unk_27D87D2A0, &unk_22A578BD0);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          v13 = sub_22A4DB77C();
          v14 = [v2 _homeWithUUID_];

          (*(v8 + 8))(v10, v7);
          result = v14;
          if (v14)
          {
            return result;
          }
        }
      }
    }
  }

  return 0;
}

void *sub_229596E6C()
{
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v56 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_229591558();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x53555F6E65;
  }

  v61 = MEMORY[0x277D837D0];
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v60[0] = v6;
  v60[1] = v7;
  sub_229543C58(v60, v58);

  v8 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v8;
  v10 = __swift_mutable_project_boxed_opaque_existential_0(v58, v59);
  MEMORY[0x28223BE20](v10);
  v12 = (&v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  sub_2297FE940(*v12, v12[1], 0x4C746E6572727543, 0xED0000656C61636FLL, isUniquelyReferenced_nonNull_native, &v57);
  __swift_destroy_boxed_opaque_existential_0(v58);
  v14 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881360, &qword_22A5787E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = 0x73656D6F48;
  v16 = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  result = [v0 homes];
  if (!result)
  {
    goto LABEL_26;
  }

  v18 = result;
  v53 = v0;
  v54 = v2;

  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v19 = sub_22A4DD83C();

  if (v19 >> 62)
  {
    v20 = sub_22A4DE0EC();
    v55 = v1;
    if (v20)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v55 = v1;
    if (v20)
    {
LABEL_10:
      v60[0] = MEMORY[0x277D84F90];
      result = sub_229583714(0, v20 & ~(v20 >> 63), 0);
      if ((v20 & 0x8000000000000000) == 0)
      {
        v51 = inited + 32;
        v52 = v14;
        v21 = 0;
        v22 = v60[0];
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x22AAD13F0](v21, v19);
          }

          else
          {
            v23 = *(v19 + 8 * v21 + 32);
          }

          v24 = v23;
          v25 = sub_22980CAD8();

          v60[0] = v22;
          v27 = *(v22 + 16);
          v26 = *(v22 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_229583714((v26 > 1), v27 + 1, 1);
            v22 = v60[0];
          }

          ++v21;
          *(v22 + 16) = v27 + 1;
          *(v22 + 8 * v27 + 32) = v25;
        }

        while (v20 != v21);

        v14 = v52;
        v16 = v51;
        goto LABEL_21;
      }

      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_21:
  *(inited + 48) = v22;
  v28 = sub_22956AEBC(inited);
  swift_setDeallocating();
  sub_22953EAE4(v16, &qword_27D87D508, &qword_22A5787E8);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D510, &unk_22A5787F0);
  v60[0] = v28;
  sub_229543C58(v60, v58);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v57 = v14;
  v30 = __swift_mutable_project_boxed_opaque_existential_0(v58, v59);
  MEMORY[0x28223BE20](v30);
  v32 = (&v50 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  sub_2297FEB28(*v32, 0x53555F6E65, 0xE500000000000000, v29, &v57);
  __swift_destroy_boxed_opaque_existential_0(v58);
  v34 = v57;
  sub_22A4DD5EC();
  v35 = v56;
  sub_22A4DD06C();
  v36 = v53;
  v37 = sub_22A4DD05C();
  v38 = sub_22A4DDCDC();

  v39 = os_log_type_enabled(v37, v38);
  v40 = v54;
  if (v39)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v60[0] = v43;
    *v41 = 138412546;
    *(v41 + 4) = v36;
    *v42 = v36;
    *(v41 + 12) = 2080;
    v44 = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v45 = v35;
    v46 = sub_22A4DD4AC();
    v48 = v47;

    v49 = sub_2295A3E30(v46, v48, v60);

    *(v41 + 14) = v49;
    _os_log_impl(&dword_229538000, v37, v38, "%@ Did generate demo configuration: %s", v41, 0x16u);
    sub_22953EAE4(v42, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v42, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x22AAD4E50](v43, -1, -1);
    MEMORY[0x22AAD4E50](v41, -1, -1);

    (*(v40 + 8))(v45, v55);
  }

  else
  {

    (*(v40 + 8))(v35, v55);
  }

  return v34;
}

uint64_t sub_229597520()
{
  v1[2] = v0;
  v2 = sub_22A4DD07C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295975E0, 0, 0);
}

uint64_t sub_2295975E0()
{
  v1 = sub_229596E6C();
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_22959769C;

  return sub_22959D63C(v1);
}

uint64_t sub_22959769C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2295979D4;
  }

  else
  {
    v2 = sub_2295977B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2295977B0()
{
  v23 = v0;
  v1 = v0[2];
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  if (v5)
  {
    v21 = v0[5];
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    v13 = v9;
    v14 = sub_229591558();
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v14 = 45;
      v16 = 0xE100000000000000;
    }

    v17 = sub_2295A3E30(v14, v16, &v22);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_229538000, v3, v4, "%@ Did commit the demo mode configuration. Locale: %s", v10, 0x16u);
    sub_22953EAE4(v11, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);

    (*(v7 + 8))(v21, v8);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v18 = v0[1];
  v19 = v0[6];

  return v18(v19);
}

uint64_t sub_2295979D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229597A40(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = swift_task_alloc();
  v2[16] = v3;
  *v3 = v2;
  v3[1] = sub_229597AD8;

  return sub_2295916F8(0, 0);
}

uint64_t sub_229597AD8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_229597C0C, 0, 0);
  }
}

uint64_t sub_229597C0C()
{
  if (v0[17])
  {

    v1 = swift_task_alloc();
    v0[18] = v1;
    *v1 = v0;
    v1[1] = sub_229597DDC;
    v2 = v0[14];

    return sub_22959D63C(v2);
  }

  else
  {
    type metadata accessor for HMError(0);
    v0[13] = 52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = 0x6E6F73616552;
    v5 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 0xD000000000000047;
    *(inited + 56) = 0x800000022A58ADA0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(v5, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
    sub_22A4DB3CC();
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_229597DDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_229597ED0(uint64_t a1)
{
  *(v2 + 312) = a1;
  *(v2 + 320) = v1;
  return MEMORY[0x2822009F8](sub_229597EF0, 0, 0);
}

uint64_t sub_229597EF0()
{
  v44 = v0;
  v1 = *(v0 + 312);
  v2 = sub_22959D130(v1);
  if (!*(v1 + 16) || (v3 = sub_229543DBC(0x53555F6E65, 0xE500000000000000), (v4 & 1) == 0) || (sub_2295404B0(*(*(v0 + 312) + 56) + 32 * v3, v0 + 16), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090), (swift_dynamicCast() & 1) == 0) || (v5 = *(v0 + 304)) == 0)
  {
    v9 = 0;
    v42 = 0;
    v8 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_13;
  }

  if (!*(v5 + 16))
  {
LABEL_21:
    v8 = 0;
    if (!*(v5 + 16))
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  v6 = sub_229543DBC(0x656D614E656D6F48, 0xE900000000000073);
  if ((v7 & 1) == 0)
  {

    goto LABEL_21;
  }

  sub_2295404B0(*(v5 + 56) + 32 * v6, v0 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 296);
  }

  else
  {
    v8 = 0;
  }

  if (!*(v5 + 16))
  {
LABEL_29:
    v10 = 0;
    if (!*(v5 + 16))
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

LABEL_22:

  v25 = sub_229543DBC(0x726F737365636341, 0xEE0073656D614E79);
  if ((v26 & 1) == 0)
  {

    goto LABEL_29;
  }

  sub_2295404B0(*(v5 + 56) + 32 * v25, v0 + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  if (swift_dynamicCast())
  {
    v10 = *(v0 + 288);
  }

  else
  {
    v10 = 0;
  }

  if (!*(v5 + 16))
  {
LABEL_36:
    v42 = 0;
    if (!*(v5 + 16))
    {
      goto LABEL_44;
    }

    goto LABEL_37;
  }

LABEL_30:

  v27 = sub_229543DBC(0x656D614E6D6F6F52, 0xE900000000000073);
  if ((v28 & 1) == 0)
  {

    goto LABEL_36;
  }

  sub_2295404B0(*(v5 + 56) + 32 * v27, v0 + 112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  v29 = swift_dynamicCast();
  v30 = *(v0 + 280);
  if (!v29)
  {
    v30 = 0;
  }

  v42 = v30;
  if (!*(v5 + 16))
  {
LABEL_44:
    v33 = 0;
    if (*(v5 + 16))
    {
      goto LABEL_45;
    }

LABEL_42:
    v34 = v0;
    goto LABEL_52;
  }

LABEL_37:

  v31 = sub_229543DBC(0x6D614E656E656353, 0xEA00000000007365);
  if ((v32 & 1) == 0)
  {

    goto LABEL_44;
  }

  sub_2295404B0(*(v5 + 56) + 32 * v31, v0 + 144);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  if (swift_dynamicCast())
  {
    v33 = *(v0 + 272);
  }

  else
  {
    v33 = 0;
  }

  if (!*(v5 + 16))
  {
    goto LABEL_42;
  }

LABEL_45:

  v35 = sub_229543DBC(0x4E65636976726553, 0xEC00000073656D61);
  if ((v36 & 1) == 0)
  {
    v34 = v0;

LABEL_52:
    v9 = 0;
    if (!*(v5 + 16))
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  sub_2295404B0(*(v5 + 56) + 32 * v35, v0 + 176);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  v34 = v0;
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 264);
  }

  else
  {
    v9 = 0;
  }

  if (!*(v5 + 16))
  {
    goto LABEL_55;
  }

LABEL_53:
  v37 = sub_229543DBC(0xD000000000000014, 0x800000022A587F90);
  if (v38)
  {
    v0 = v34;
    sub_2295404B0(*(v5 + 56) + 32 * v37, v34 + 208);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    swift_dynamicCast();
    v11 = v33;
    goto LABEL_13;
  }

LABEL_55:

  v11 = v33;
  v0 = v34;
LABEL_13:
  v12 = *(v0 + 320);
  v13 = MEMORY[0x277D84F90];
  *(v0 + 240) = MEMORY[0x277D84F90];
  v14 = *(v2 + 16);

  v15 = v12;

  v40 = v9;

  if (v14)
  {
    v41 = v10;
    v17 = v16;
    v18 = (v2 + 40);
    do
    {
      v20 = *(v0 + 312);
      v19 = *(v0 + 320);
      v21 = *v18;
      v43[0] = *(v18 - 1);
      v43[1] = v21;

      sub_22959C158(v43, v20, v8, v19, (v0 + 240), v41, v42, v11, v40, v17);

      v18 += 2;
      --v14;
    }

    while (v14);
    v13 = *(v0 + 240);
    v15 = *(v0 + 320);
  }

  *(v0 + 328) = v13;
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  swift_bridgeObjectRelease_n();

  *(v0 + 248) = v13;

  v22 = swift_task_alloc();
  *(v0 + 336) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D538, &qword_22A578868);
  v24 = sub_229590C00(&qword_27D87D540, &qword_27D87D538, &qword_22A578868, MEMORY[0x277D83970]);
  *v22 = v0;
  v22[1] = sub_229598650;

  return MEMORY[0x282167808](&unk_22A578860, 0, v23, v24);
}

uint64_t sub_229598650()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_2295987D8;
  }

  else
  {
    v2 = sub_229598774;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229598774()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295987D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22959883C(void *a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v4 = a1[1];
  v3[15] = *a1;
  v3[16] = v4;
  return MEMORY[0x2822009F8](sub_229598864, 0, 0);
}

uint64_t sub_229598864()
{
  if (*(*(v0 + 104) + 16))
  {
    v1 = sub_229543DBC(*(v0 + 120), *(v0 + 128));
    if (v2)
    {
      sub_2295404B0(*(*(v0 + 104) + 56) + 32 * v1, v0 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      if (swift_dynamicCast())
      {
        v3 = *(v0 + 80);
        if (*(v3 + 16) && (v4 = sub_229543DBC(0x73656D6F48, 0xE500000000000000), (v5 & 1) != 0))
        {
          sub_2295404B0(*(v3 + 56) + 32 * v4, v0 + 48);

          v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
          if (swift_dynamicCast())
          {
            v7 = *(v0 + 128);
            v14 = *(v0 + 112);
            v8 = *(v0 + 88);
            *(v0 + 136) = v8;
            *(v0 + 96) = v8;
            v9 = swift_task_alloc();
            *(v0 + 144) = v9;
            *(v9 + 16) = v14;
            *(v9 + 32) = v7;
            v10 = swift_task_alloc();
            *(v0 + 152) = v10;
            v11 = sub_229590C00(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0, MEMORY[0x277D83970]);
            *v10 = v0;
            v10[1] = sub_229598AB8;

            return MEMORY[0x282167808](&unk_22A5788B0, v9, v6, v11);
          }
        }

        else
        {
        }
      }
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_229598AB8()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229598C00, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_229598C00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229598C6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v5 = *a1;
  v4[4] = a4;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_229598C94, 0, 0);
}

uint64_t sub_229598C94()
{
  v1 = sub_229596C30(v0[5]);
  v0[6] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_229598D74;
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[3];

    return sub_22980D4C8(v4, v5, v3);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_229598D74()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_229598E88;
  }

  else
  {
    v2 = sub_2295860D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229598E88()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229598EEC()
{
  v1[7] = v0;
  v2 = sub_22A4DD07C();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229598FAC, 0, 0);
}

id sub_229598FAC()
{
  result = [*(v0 + 56) homes];
  if (!result)
  {
    goto LABEL_16;
  }

  v2 = result;
  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v3 = sub_22A4DD83C();
  *(v0 + 88) = v3;

  if (v3 >> 62)
  {
    result = sub_22A4DE0EC();
    *(v0 + 96) = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 96) = result;
    if (result)
    {
LABEL_4:
      v4 = *(v0 + 88);
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AAD13F0](0);
        goto LABEL_7;
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v4 + 32);
LABEL_7:
        *(v0 + 104) = v5;
        *(v0 + 112) = 1;
        v6 = swift_task_alloc();
        *(v0 + 120) = v6;
        *v6 = v0;
        v6[1] = sub_2295991CC;

        return sub_22981047C();
      }

      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }
  }

  v7 = *(v0 + 56);

  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  *(v0 + 40) = sub_229562F68(0, &qword_281401BC0, off_2786661B8);
  *(v0 + 48) = &off_283CDD168;
  *(v0 + 16) = v7;
  v8 = v7;
  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  *v9 = v0;
  v9[1] = sub_2295994AC;

  return sub_22970A4FC(v0 + 16, 0);
}

uint64_t sub_2295991CC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_2295997E8;
  }

  else
  {
    v2 = sub_2295992E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2295992E8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);

  v3 = *(v0 + 88);
  if (v1 == v2)
  {
    v4 = *(v0 + 56);

    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    *(v0 + 40) = sub_229562F68(0, &qword_281401BC0, off_2786661B8);
    *(v0 + 48) = &off_283CDD168;
    *(v0 + 16) = v4;
    v5 = v4;
    v6 = swift_task_alloc();
    *(v0 + 136) = v6;
    *v6 = v0;
    v6[1] = sub_2295994AC;

    sub_22970A4FC(v0 + 16, 0);
    return;
  }

  v7 = *(v0 + 112);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x22AAD13F0](*(v0 + 112));
  }

  else
  {
    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return;
    }

    v8 = *(v3 + 8 * v7 + 32);
  }

  *(v0 + 104) = v8;
  *(v0 + 112) = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_2295991CC;

  sub_22981047C();
}

uint64_t sub_2295994AC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_229599854;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v3 = sub_2295995C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2295995C8()
{
  v22 = v0;
  v1 = v0[7];
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  if (v5)
  {
    v20 = v0[10];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    v13 = v9;
    v14 = sub_229591558();
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v14 = 45;
      v16 = 0xE100000000000000;
    }

    v17 = sub_2295A3E30(v14, v16, &v21);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_229538000, v3, v4, "%@ Did reset the demo mode configuration. Locale: %s", v10, 0x16u);
    sub_22953EAE4(v11, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);

    (*(v7 + 8))(v20, v8);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_2295997E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229599854()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295998C0(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  v4 = sub_22A4DD07C();
  v3[40] = v4;
  v3[41] = *(v4 - 8);
  v3[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229599984, 0, 0);
}

uint64_t sub_229599984()
{
  v1 = sub_229591628();
  if (v1)
  {
    v2 = v1;
    v0[31] = v0[37];
    v0[32] = v0[38];
    v3 = swift_task_alloc();
    *(v3 + 16) = v0 + 31;
    v4 = sub_22986A5E0(sub_22959E60C, v3, v2);

    if (v4)
    {
      v5 = v0[38];
      v6 = v0[39];
      v7 = v0[37];

      sub_229562F68(0, &qword_27D87D4D8, off_278666048);
      v0[25] = sub_229562F68(0, &qword_281401BC0, off_2786661B8);
      v0[26] = &off_283CDD168;
      v0[22] = v6;
      v0[30] = MEMORY[0x277D837D0];
      v0[27] = v7;
      v0[28] = v5;
      v8 = v6;

      v9 = swift_task_alloc();
      v0[43] = v9;
      *v9 = v0;
      v9[1] = sub_229599D8C;

      return sub_229709F5C((v0 + 22), (v0 + 27), 0x4C746E6572727543, 0xED0000656C61636FLL);
    }

    type metadata accessor for HMError(0);
    v0[36] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v14 = MEMORY[0x277D837D0];
    v15 = MEMORY[0x22AAD0A20](v2, MEMORY[0x277D837D0]);
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    *(inited + 72) = v14;
    *(inited + 48) = 0xD00000000000002ALL;
    *(inited + 56) = 0x800000022A58AD70;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
  }

  else
  {
    type metadata accessor for HMError(0);
    v0[34] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_22A576180;
    *(v11 + 32) = 0x6E6F73616552;
    v12 = v11 + 32;
    *(v11 + 72) = MEMORY[0x277D837D0];
    *(v11 + 40) = 0xE600000000000000;
    *(v11 + 48) = 0xD000000000000047;
    *(v11 + 56) = 0x800000022A58AD20;
    sub_22956AD8C(v11);
    swift_setDeallocating();
    sub_22953EAE4(v12, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
  }

  sub_22A4DB3CC();
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_229599D8C()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_22959A220;
  }

  else
  {
    sub_22953EAE4(v2 + 216, &unk_27D87FC20, &unk_22A578810);
    __swift_destroy_boxed_opaque_existential_0((v2 + 176));
    v3 = sub_229599EC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229599EC0()
{
  v23 = v0;
  v1 = v0[39];
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v2 = v1;

  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[41];
  v7 = v0[42];
  v8 = v0[40];
  if (v5)
  {
    v21 = v0[42];
    v10 = v0[38];
    v9 = v0[39];
    v11 = v0[37];
    v20 = v0[40];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v15 = v9;
    *(v12 + 14) = sub_2295A3E30(v11, v10, &v22);
    _os_log_impl(&dword_229538000, v3, v4, "%@ Did select locale: %s as current locale", v12, 0x16u);
    sub_22953EAE4(v13, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    (*(v6 + 8))(v21, v20);
  }

  else
  {

    (*(v6 + 8))(v7, v8);
  }

  v16 = swift_task_alloc();
  v0[45] = v16;
  *v16 = v0;
  v16[1] = sub_22959A108;
  v17 = v0[38];
  v18 = v0[37];

  return sub_22959A2A4(v18, v17);
}

uint64_t sub_22959A108()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22959A220()
{
  sub_22953EAE4(v0 + 216, &unk_27D87FC20, &unk_22A578810);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22959A2A4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22A4DD07C();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22959A368, 0, 0);
}

uint64_t sub_22959A368()
{
  v1 = [*(v0 + 40) homes];
  if (v1)
  {
    v5 = v1;
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v8 = sub_22A4DD83C();
    *(v0 + 72) = v8;

    *(v0 + 16) = v8;
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *(v9 + 16) = v7;
    *(v9 + 24) = v6;
    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F0, &qword_22A5787B0);
    v4 = sub_229590C00(&qword_27D87D500, &qword_27D87F2F0, &qword_22A5787B0, MEMORY[0x277D83970]);
    *v10 = v0;
    v10[1] = sub_22959A4E8;
    v1 = &unk_22A5787A8;
    v2 = v9;
    v3 = v11;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282167808](v1, v2, v3, v4);
}

uint64_t sub_22959A4E8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_22959A850;
  }

  else
  {
    v2 = sub_22959A63C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22959A63C()
{
  v21 = v0;
  v1 = v0[5];
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v2 = v1;

  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[6];
  if (v5)
  {
    v19 = v0[8];
    v10 = v0[4];
    v9 = v0[5];
    v11 = v0[3];
    v18 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v15 = v9;
    *(v12 + 14) = sub_2295A3E30(v11, v10, &v20);
    _os_log_impl(&dword_229538000, v3, v4, "%@ Did reconfigure homes for %s", v12, 0x16u);
    sub_22953EAE4(v13, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    (*(v6 + 8))(v19, v18);
  }

  else
  {

    (*(v6 + 8))(v7, v8);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_22959A850()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22959A8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_229569B30;

  return sub_229811500(a2, a3);
}

unint64_t sub_22959A95C(uint64_t a1, uint64_t a2)
{
  sub_22A4DE1FC();

  MEMORY[0x22AAD08C0](a1, a2);
  return 0xD000000000000010;
}

id sub_22959AA00()
{
  v1 = [*v0 backingStore];

  return v1;
}

uint64_t sub_22959AA38(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229569B30;

  return sub_22959A8B4(a1, v5, v4);
}

void sub_22959AB00()
{
  v1 = v0[25];
  v2 = v1[2];
  v0[26] = v2;
  v3 = *(v2 + 16);
  v0[27] = v3;
  v4 = v1[1];
  v0[28] = v4;
  if (v3 != *(v4 + 16))
  {
    type metadata accessor for HMError(0);
    v0[23] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = 0x6E6F73616552;
    v33 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 0xD00000000000002DLL;
    *(inited + 56) = 0x800000022A58ABE0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(v33, &qword_27D87CDA0, &unk_22A57A930);
    sub_22958E108();
    sub_22A4DB3CC();
    swift_willThrow();
    v34 = v0[1];
LABEL_33:

    v34();
    return;
  }

  v5 = *v1;
  v0[29] = v5;
  v6 = *(v5 + 16);
  v0[30] = v6;
  if (!v6)
  {
LABEL_32:
    v34 = v0[1];
    goto LABEL_33;
  }

  v7 = 0;
  while (1)
  {
    v0[31] = v7;
    sub_22957F1C4(v5 + 40 * v7 + 32, (v0 + 12));
    v8 = swift_task_alloc();
    *(v8 + 16) = v0 + 12;
    v9 = sub_22959BFAC(sub_22959E3E4, v8, v2);
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      break;
    }

    sub_22957F1C4((v0 + 12), (v0 + 17));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D160, &unk_22A578080);
    sub_229562F68(0, &unk_27D87D360, off_278666310);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_29;
    }

    v12 = v0[24];
    v0[35] = v12;
    v13 = [v12 characteristics];
    sub_229562F68(0, &unk_27D87E490, off_2786660B8);
    v14 = sub_22A4DD83C();
    v0[36] = v14;

    if (v14 >> 62)
    {
      v29 = sub_22A4DE0EC();
      v0[37] = v29;
      if (v29)
      {
LABEL_8:
        v16 = 0;
        do
        {
          v17 = v0[36];
          if ((v17 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x22AAD13F0](v16);
          }

          else
          {
            if (v16 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_46;
            }

            v18 = *(v17 + 8 * v16 + 32);
          }

          v19 = v18;
          v0[38] = v18;
          v0[39] = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          if (v0[27])
          {
            v20 = 0;
            for (i = 0; i != v0[27]; ++i)
            {
              v22 = v0[26] + v20;
              v23 = *(v22 + 32);
              v24 = *(v22 + 40);

              v25 = sub_22970DF2C(0x53555F6E65, 0xE500000000000000);
              if (v26)
              {
                if (v23 == v25 && v26 == v24)
                {

LABEL_37:
                  if (i < v0[27])
                  {
                    v35 = v0[25];
                    v36 = v0[28] + v20;
                    v37 = *(v36 + 32);
                    v38 = *(v36 + 40);
                    v0[40] = v38;
                    v39 = *(v35 + 24);
                    v40 = *(v35 + 32);

                    v41 = swift_task_alloc();
                    v0[41] = v41;
                    *v41 = v0;
                    v41[1] = sub_22959B790;

                    sub_22970E398(v37, v38, v39, v40);
                    return;
                  }

LABEL_47:
                  __break(1u);
LABEL_48:
                  __break(1u);
                  return;
                }

                v28 = sub_22A4DE60C();

                if (v28)
                {
                  goto LABEL_37;
                }
              }

              else
              {
              }

              v20 += 16;
            }
          }

          v16 = v0[39];
        }

        while (v16 != v0[37]);
        v12 = v0[35];
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0[37] = v15;
      if (v15)
      {
        goto LABEL_8;
      }
    }

LABEL_29:
    v30 = v0[30];
    v31 = v0[31] + 1;
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    if (v31 == v30)
    {
      goto LABEL_32;
    }

    v7 = v0[31] + 1;
    v5 = v0[29];
    v2 = v0[26];
  }

  v42 = v0[27];
  v43 = v0[15];
  v44 = v0[16];
  __swift_project_boxed_opaque_existential_0(v0 + 12, v43);
  if (v9 >= v42)
  {
    goto LABEL_48;
  }

  v45 = v0[25];
  v46 = v0[28] + 16 * v9;
  v47 = *(v46 + 32);
  v48 = *(v46 + 40);
  v0[32] = v48;
  v49 = *(v45 + 24);
  v50 = *(v45 + 32);
  v51 = *(v44 + 56);

  v53 = (v51 + *v51);
  v52 = swift_task_alloc();
  v0[33] = v52;
  *v52 = v0;
  v52[1] = sub_22959B144;

  v53(v47, v48, v49, v50, v43, v44);
}

uint64_t sub_22959B144()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_22959BE10;
  }

  else
  {
    v2 = sub_22959B278;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22959B278()
{
  do
  {
    sub_22957F1C4((v0 + 12), (v0 + 17));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D160, &unk_22A578080);
    sub_229562F68(0, &unk_27D87D360, off_278666310);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_25;
    }

    v1 = v0[24];
    v0[35] = v1;
    v2 = [v1 characteristics];
    sub_229562F68(0, &unk_27D87E490, off_2786660B8);
    v3 = sub_22A4DD83C();
    v0[36] = v3;

    if (v3 >> 62)
    {
      v18 = sub_22A4DE0EC();
      v0[37] = v18;
      if (v18)
      {
LABEL_4:
        v5 = 0;
        do
        {
          v6 = v0[36];
          if ((v6 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x22AAD13F0](v5);
          }

          else
          {
            if (v5 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_40;
            }

            v7 = *(v6 + 8 * v5 + 32);
          }

          v8 = v7;
          v0[38] = v7;
          v0[39] = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

          if (v0[27])
          {
            v9 = 0;
            for (i = 0; i != v0[27]; ++i)
            {
              v11 = v0[26] + v9;
              v12 = *(v11 + 32);
              v13 = *(v11 + 40);

              v14 = sub_22970DF2C(0x53555F6E65, 0xE500000000000000);
              if (v15)
              {
                if (v12 == v14 && v15 == v13)
                {

LABEL_32:
                  if (i < v0[27])
                  {
                    v37 = v0[25];
                    v38 = v0[28] + v9;
                    v39 = *(v38 + 32);
                    v40 = *(v38 + 40);
                    v0[40] = v40;
                    v41 = *(v37 + 24);
                    v42 = *(v37 + 32);

                    v43 = swift_task_alloc();
                    v0[41] = v43;
                    *v43 = v0;
                    v43[1] = sub_22959B790;

                    sub_22970E398(v39, v40, v41, v42);
                    return;
                  }

LABEL_41:
                  __break(1u);
LABEL_42:
                  __break(1u);
                  return;
                }

                v17 = sub_22A4DE60C();

                if (v17)
                {
                  goto LABEL_32;
                }
              }

              else
              {
              }

              v9 += 16;
            }
          }

          v5 = v0[39];
        }

        while (v5 != v0[37]);
        v1 = v0[35];
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0[37] = v4;
      if (v4)
      {
        goto LABEL_4;
      }
    }

LABEL_25:
    v19 = v0[30];
    v20 = v0[31] + 1;
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    if (v20 == v19)
    {
      v44 = v0[1];

      v44();
      return;
    }

    v21 = v0[31];
    v0[31] = v21 + 1;
    v22 = v0[26];
    sub_22957F1C4(v0[29] + 40 * v21 + 72, (v0 + 12));
    v23 = swift_task_alloc();
    *(v23 + 16) = v0 + 12;
    v24 = sub_22959BFAC(sub_22959E3E4, v23, v22);
    LOBYTE(v22) = v25;
  }

  while ((v22 & 1) != 0);
  v26 = v0[27];
  v27 = v0[15];
  v28 = v0[16];
  __swift_project_boxed_opaque_existential_0(v0 + 12, v27);
  if (v24 >= v26)
  {
    goto LABEL_42;
  }

  v29 = v0[25];
  v30 = v0[28] + 16 * v24;
  v31 = *(v30 + 32);
  v32 = *(v30 + 40);
  v0[32] = v32;
  v33 = *(v29 + 24);
  v34 = *(v29 + 32);
  v35 = *(v28 + 56);

  v45 = (v35 + *v35);
  v36 = swift_task_alloc();
  v0[33] = v36;
  *v36 = v0;
  v36[1] = sub_22959B144;

  v45(v31, v32, v33, v34, v27, v28);
}

uint64_t sub_22959B790()
{
  *(*v1 + 336) = v0;

  if (v0)
  {

    v2 = sub_22959BE74;
  }

  else
  {
    v2 = sub_22959B8D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22959B8D4()
{
LABEL_2:
  v1 = *(v0 + 312);
  if (v1 != *(v0 + 296))
  {
    goto LABEL_13;
  }

  v2 = *(v0 + 280);
LABEL_4:

  while (1)
  {
    v3 = *(v0 + 240);
    v4 = *(v0 + 248) + 1;
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    if (v4 == v3)
    {
      v26 = *(v0 + 8);

      v26();
      return;
    }

    v5 = *(v0 + 248);
    *(v0 + 248) = v5 + 1;
    v6 = *(v0 + 208);
    sub_22957F1C4(*(v0 + 232) + 40 * v5 + 72, v0 + 96);
    v7 = swift_task_alloc();
    *(v7 + 16) = v0 + 96;
    v8 = sub_22959BFAC(sub_22959E3E4, v7, v6);
    LOBYTE(v6) = v9;

    if ((v6 & 1) == 0)
    {
      break;
    }

    sub_22957F1C4(v0 + 96, v0 + 136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D160, &unk_22A578080);
    sub_229562F68(0, &unk_27D87D360, off_278666310);
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 192);
      *(v0 + 280) = v2;
      v10 = [v2 characteristics];
      sub_229562F68(0, &unk_27D87E490, off_2786660B8);
      v11 = sub_22A4DD83C();
      *(v0 + 288) = v11;

      if (!(v11 >> 62))
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 296) = v12;
        if (v12)
        {
          goto LABEL_12;
        }

        goto LABEL_4;
      }

      v13 = sub_22A4DE0EC();
      *(v0 + 296) = v13;
      if (!v13)
      {
        goto LABEL_4;
      }

LABEL_12:
      v1 = 0;
LABEL_13:
      v14 = *(v0 + 288);
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x22AAD13F0](v1);
        goto LABEL_17;
      }

      if (v1 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = *(v14 + 8 * v1 + 32);
LABEL_17:
        v16 = v15;
        *(v0 + 304) = v15;
        *(v0 + 312) = v1 + 1;
        if (!__OFADD__(v1, 1))
        {
          if (*(v0 + 216))
          {
            v17 = 0;
            for (i = 0; i != *(v0 + 216); ++i)
            {
              v19 = *(v0 + 208) + v17;
              v21 = *(v19 + 32);
              v20 = *(v19 + 40);

              v22 = sub_22970DF2C(0x53555F6E65, 0xE500000000000000);
              if (v23)
              {
                if (v21 == v22 && v23 == v20)
                {

LABEL_38:
                  if (i < *(v0 + 216))
                  {
                    v38 = *(v0 + 200);
                    v39 = *(v0 + 224) + v17;
                    v40 = *(v39 + 32);
                    v41 = *(v39 + 40);
                    *(v0 + 320) = v41;
                    v42 = *(v38 + 24);
                    v43 = *(v38 + 32);

                    v44 = swift_task_alloc();
                    *(v0 + 328) = v44;
                    *v44 = v0;
                    v44[1] = sub_22959B790;

                    sub_22970E398(v40, v41, v42, v43);
                    return;
                  }

LABEL_44:
                  __break(1u);
LABEL_45:
                  __break(1u);
                  return;
                }

                v25 = sub_22A4DE60C();

                if (v25)
                {
                  goto LABEL_38;
                }
              }

              else
              {
              }

              v17 += 16;
            }
          }

          goto LABEL_2;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_44;
    }
  }

  v27 = *(v0 + 216);
  v28 = *(v0 + 120);
  v29 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_0((v0 + 96), v28);
  if (v8 >= v27)
  {
    goto LABEL_45;
  }

  v30 = *(v0 + 200);
  v31 = *(v0 + 224) + 16 * v8;
  v32 = *(v31 + 32);
  v33 = *(v31 + 40);
  *(v0 + 256) = v33;
  v34 = *(v30 + 24);
  v35 = *(v30 + 32);
  v36 = *(v29 + 56);

  v45 = (v36 + *v36);
  v37 = swift_task_alloc();
  *(v0 + 264) = v37;
  *v37 = v0;
  v37[1] = sub_22959B144;

  v45(v32, v33, v34, v35, v28, v29);
}

uint64_t sub_22959BE10()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22959BE74()
{
  v1 = *(v0 + 280);

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22959BEE8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v4);
  v6 = (*(v5 + 48))(0x53555F6E65, 0xE500000000000000, v4, v5);
  if (v7)
  {
    if (v2 == v6 && v7 == v3)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_22A4DE60C();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_22959BFAC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 40); ; i += 2)
  {
    v8 = *i;
    v11[0] = *(i - 1);
    v11[1] = v8;

    v9 = a1(v11);

    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_22959C06C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_22A4DB7DC() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_22959C158(uint64_t result, uint64_t a2, uint64_t a3, void *a4, char **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!*(a2 + 16))
  {
    return result;
  }

  v16 = *result;
  v17 = *(result + 8);
  result = sub_229543DBC(*result, v17);
  if ((v18 & 1) == 0)
  {
    return result;
  }

  sub_2295404B0(*(a2 + 56) + 32 * result, v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v103 = a5;
  v19 = v106;
  if (a3 && *(v106 + 16))
  {

    v20 = sub_229543DBC(0x656D614E656D6F48, 0xE900000000000073);
    if (v21 & 1) != 0 && (sub_2295404B0(*(v19 + 56) + 32 * v20, v105), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b"), (swift_dynamicCast()))
    {
      v95 = v106;
      v98 = v16;
      result = [a4 homes];
      if (!result)
      {
        __break(1u);
        goto LABEL_89;
      }

      v22 = result;
      sub_229562F68(0, &qword_2814017B0, off_278666198);
      v23 = sub_22A4DD83C();

      v94 = sub_2298699E8(v23);

      v24 = *v103;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v103 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_22958A794(0, *(v24 + 2) + 1, 1, v24);
        *v103 = v24;
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v92 = sub_22958A794((v26 > 1), v27 + 1, 1, v24);
        v28 = v27 + 1;
        v24 = v92;
        *v103 = v92;
      }

      *(v24 + 2) = v28;
      v29 = &v24[40 * v27];
      *(v29 + 4) = v94;
      *(v29 + 5) = v95;
      v16 = v98;
      *(v29 + 6) = a3;
      *(v29 + 7) = v98;
      *(v29 + 8) = v17;
    }

    else
    {
    }
  }

  if (!a6 || !*(v19 + 16))
  {
LABEL_28:
    if (!a7)
    {
      goto LABEL_40;
    }

LABEL_29:
    if (!*(v19 + 16))
    {
      goto LABEL_40;
    }

    v42 = sub_229543DBC(0x656D614E6D6F6F52, 0xE900000000000073);
    if ((v43 & 1) == 0 || (sub_2295404B0(*(v19 + 56) + 32 * v42, v105), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b"), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_40;
    }

    v97 = v106;
    v100 = v16;
    result = [a4 homes];
    if (result)
    {
      v44 = result;
      sub_229562F68(0, &qword_2814017B0, off_278666198);
      v45 = sub_22A4DD83C();

      v46 = sub_229595600(v45);

      v47 = sub_229869BE4(v46);

      if (v47[2])
      {
        v48 = *v103;

        v49 = swift_isUniquelyReferenced_nonNull_native();
        *v103 = v48;
        if ((v49 & 1) == 0)
        {
          v48 = sub_22958A794(0, *(v48 + 2) + 1, 1, v48);
          *v103 = v48;
        }

        v51 = *(v48 + 2);
        v50 = *(v48 + 3);
        if (v51 >= v50 >> 1)
        {
          v48 = sub_22958A794((v50 > 1), v51 + 1, 1, v48);
          *v103 = v48;
        }

        *(v48 + 2) = v51 + 1;
        v52 = &v48[40 * v51];
        v16 = v100;
        *(v52 + 4) = v47;
        *(v52 + 5) = v97;
        *(v52 + 6) = a7;
        *(v52 + 7) = v100;
        *(v52 + 8) = v17;
      }

      else
      {

        v16 = v100;
      }

      goto LABEL_40;
    }

LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v30 = sub_229543DBC(0x726F737365636341, 0xEE0073656D614E79);
  if ((v31 & 1) == 0 || (sub_2295404B0(*(v19 + 56) + 32 * v30, v105), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b"), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_28;
  }

  v96 = v106;
  v99 = v16;
  result = [a4 homes];
  if (!result)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v32 = result;
  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v33 = sub_22A4DD83C();

  v34 = sub_22959526C(v33);

  v35 = sub_229869A04(v34);

  if (!v35[2])
  {

    v16 = v99;
    if (!a7)
    {
      goto LABEL_40;
    }

    goto LABEL_29;
  }

  v36 = *v103;

  v37 = swift_isUniquelyReferenced_nonNull_native();
  *v103 = v36;
  if ((v37 & 1) == 0)
  {
    v36 = sub_22958A794(0, *(v36 + 2) + 1, 1, v36);
    *v103 = v36;
  }

  v39 = *(v36 + 2);
  v38 = *(v36 + 3);
  v40 = v39 + 1;
  if (v39 >= v38 >> 1)
  {
    v93 = sub_22958A794((v38 > 1), v39 + 1, 1, v36);
    v40 = v39 + 1;
    v36 = v93;
    *v103 = v93;
  }

  *(v36 + 2) = v40;
  v41 = &v36[40 * v39];
  v16 = v99;
  *(v41 + 4) = v35;
  *(v41 + 5) = v96;
  *(v41 + 6) = a6;
  *(v41 + 7) = v99;
  *(v41 + 8) = v17;
  if (a7)
  {
    goto LABEL_29;
  }

LABEL_40:
  if (!a8 || !*(v19 + 16))
  {
LABEL_53:
    v65 = a9;
    if (!a9)
    {
      goto LABEL_65;
    }

LABEL_54:
    if (!*(v19 + 16))
    {
      goto LABEL_65;
    }

    v66 = sub_229543DBC(0x4E65636976726553, 0xEC00000073656D61);
    if ((v67 & 1) == 0 || (sub_2295404B0(*(v19 + 56) + 32 * v66, v105), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b"), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_65;
    }

    v102 = v16;
    v68 = v106;
    result = [a4 homes];
    if (result)
    {
      v69 = result;
      sub_229562F68(0, &qword_2814017B0, off_278666198);
      v70 = sub_22A4DD83C();

      v71 = sub_22954B870(v70);

      v72 = sub_22954B4DC(v71);

      v73 = sub_229869C1C(v72);

      if (v73[2])
      {
        v74 = *v103;

        v75 = swift_isUniquelyReferenced_nonNull_native();
        *v103 = v74;
        if ((v75 & 1) == 0)
        {
          v74 = sub_22958A794(0, *(v74 + 2) + 1, 1, v74);
          *v103 = v74;
        }

        v77 = *(v74 + 2);
        v76 = *(v74 + 3);
        if (v77 >= v76 >> 1)
        {
          v74 = sub_22958A794((v76 > 1), v77 + 1, 1, v74);
          *v103 = v74;
        }

        *(v74 + 2) = v77 + 1;
        v78 = &v74[40 * v77];
        *(v78 + 4) = v73;
        *(v78 + 5) = v68;
        v16 = v102;
        *(v78 + 6) = v65;
        *(v78 + 7) = v102;
        *(v78 + 8) = v17;
      }

      else
      {

        v16 = v102;
      }

      goto LABEL_65;
    }

LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v53 = sub_229543DBC(0x6D614E656E656353, 0xEA00000000007365);
  if ((v54 & 1) == 0 || (sub_2295404B0(*(v19 + 56) + 32 * v53, v105), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b"), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_53;
  }

  v101 = v16;
  v55 = v106;
  result = [a4 homes];
  if (!result)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v56 = result;
  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v57 = sub_22A4DD83C();

  v58 = sub_229595994(v57);

  v59 = sub_229869C00(v58);

  if (!v59[2])
  {

    v16 = v101;
    v65 = a9;
    if (!a9)
    {
      goto LABEL_65;
    }

    goto LABEL_54;
  }

  v60 = *v103;

  v61 = swift_isUniquelyReferenced_nonNull_native();
  *v103 = v60;
  if ((v61 & 1) == 0)
  {
    v60 = sub_22958A794(0, *(v60 + 2) + 1, 1, v60);
    *v103 = v60;
  }

  v63 = *(v60 + 2);
  v62 = *(v60 + 3);
  if (v63 >= v62 >> 1)
  {
    v60 = sub_22958A794((v62 > 1), v63 + 1, 1, v60);
    *v103 = v60;
  }

  *(v60 + 2) = v63 + 1;
  v64 = &v60[40 * v63];
  *(v64 + 4) = v59;
  *(v64 + 5) = v55;
  v16 = v101;
  *(v64 + 6) = a8;
  *(v64 + 7) = v101;
  *(v64 + 8) = v17;
  v65 = a9;
  if (a9)
  {
    goto LABEL_54;
  }

LABEL_65:
  if (!a10 || !*(v19 + 16))
  {
  }

  v79 = sub_229543DBC(0xD000000000000014, 0x800000022A587F90);
  if ((v80 & 1) == 0 || (sub_2295404B0(*(v19 + 56) + 32 * v79, v105), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b"), (swift_dynamicCast() & 1) == 0))
  {
  }

  v81 = v16;
  v82 = v106;
  result = [a4 homes];
  if (!result)
  {
LABEL_93:
    __break(1u);
    return result;
  }

  v83 = result;

  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v84 = sub_22A4DD83C();

  v85 = sub_22954B870(v84);

  v86 = sub_22954B4DC(v85);

  if (v86 >> 62)
  {
    if (sub_22A4DE0EC())
    {
      goto LABEL_72;
    }

    goto LABEL_87;
  }

  if (!*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_87:
  }

LABEL_72:
  v87 = sub_229869C1C(v86);

  v88 = *v103;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v103 = v88;
  if ((result & 1) == 0)
  {
    result = sub_22958A794(0, *(v88 + 16) + 1, 1, v88);
    v88 = result;
    *v103 = result;
  }

  v90 = *(v88 + 16);
  v89 = *(v88 + 24);
  if (v90 >= v89 >> 1)
  {
    result = sub_22958A794((v89 > 1), v90 + 1, 1, v88);
    v88 = result;
    *v103 = result;
  }

  *(v88 + 16) = v90 + 1;
  v91 = (v88 + 40 * v90);
  v91[4] = v87;
  v91[5] = v82;
  v91[6] = a10;
  v91[7] = v81;
  v91[8] = v17;
  return result;
}

uint64_t sub_22959CD6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(a1 + 32);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_22959CE0C;

  return sub_22959AAE0();
}

uint64_t sub_22959CE0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22959CF00(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_229586D38;

  return sub_2295926E4(a1, a2, v7, v6);
}

uint64_t sub_22959CFB4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_229570788(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_22959D024(uint64_t a1)
{
  v2 = type metadata accessor for HomeDeviceEntity(0) - 8;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v3);
  v9 = &v13 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    do
    {
      sub_22959E67C(v11, v5);
      sub_2295708D8(v9, v5);
      result = sub_22959E6E0(v9);
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_22959D130(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v23 = MEMORY[0x277D84F90];
  if (v5)
  {
    while (1)
    {
LABEL_11:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = v10 | (v8 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      sub_2295404B0(*(a1 + 56) + 32 * v11, v28);
      v27[0] = v14;
      v27[1] = v13;
      sub_2295404B0(v28, &v25);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      if (!swift_dynamicCast())
      {
        goto LABEL_6;
      }

      if (*(v24 + 16) && (v15 = sub_229543DBC(0x656D614E656D6F48, 0xE900000000000073), (v16 & 1) != 0))
      {
        sub_2295404B0(*(v24 + 56) + 32 * v15, &v25);
        v17 = 1;
      }

      else
      {
        v17 = 0;
        v25 = 0u;
        v26 = 0u;
      }

      sub_22953EAE4(&v25, &unk_27D87FC20, &unk_22A578810);
      if (*(v24 + 16))
      {
        v18 = sub_229543DBC(0x73656D6F48, 0xE500000000000000);
        if (v19)
        {
          sub_2295404B0(*(v24 + 56) + 32 * v18, &v25);

          sub_22953EAE4(&v25, &unk_27D87FC20, &unk_22A578810);
          goto LABEL_19;
        }
      }

      v25 = 0u;
      v26 = 0u;
      sub_22953EAE4(&v25, &unk_27D87FC20, &unk_22A578810);
      if (v17)
      {
LABEL_19:

        sub_22953EAE4(v27, &qword_27D87D578, &qword_22A5788C0);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_22958A53C(0, *(v23 + 16) + 1, 1, v23);
          v23 = result;
        }

        v21 = *(v23 + 16);
        v20 = *(v23 + 24);
        if (v21 >= v20 >> 1)
        {
          result = sub_22958A53C((v20 > 1), v21 + 1, 1, v23);
          v23 = result;
        }

        *(v23 + 16) = v21 + 1;
        v22 = v23 + 16 * v21;
        *(v22 + 32) = v14;
        *(v22 + 40) = v13;
        if (!v5)
        {
          break;
        }
      }

      else
      {
LABEL_6:
        result = sub_22953EAE4(v27, &qword_27D87D578, &qword_22A5788C0);
        if (!v5)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v23;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}