uint64_t sub_25EB24DC0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_25EB24E08()
{
  result = qword_27FD12070;
  if (!qword_27FD12070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12070);
  }

  return result;
}

unint64_t sub_25EB24E5C()
{
  result = qword_27FD12088;
  if (!qword_27FD12088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD12080, &qword_25EB78E50);
    sub_25EB24EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12088);
  }

  return result;
}

unint64_t sub_25EB24EE0()
{
  result = qword_27FD12090;
  if (!qword_27FD12090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12090);
  }

  return result;
}

unint64_t sub_25EB24F34()
{
  result = qword_27FD120A8;
  if (!qword_27FD120A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD120A0, &qword_25EB78E58);
    sub_25EB24FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD120A8);
  }

  return result;
}

unint64_t sub_25EB24FB8()
{
  result = qword_27FD120B0;
  if (!qword_27FD120B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD120B0);
  }

  return result;
}

void *sub_25EB2500C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EB25270(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25EB2502C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EB25460(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25EB2504C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EB2556C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25EB2506C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EB2568C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25EB2508C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EB25798(a1, a2, a3, *v3, &qword_27FD12420, &qword_25EB795B0, &qword_27FD12428, &qword_25EB795B8);
  *v3 = result;
  return result;
}

void *sub_25EB250CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EB25798(a1, a2, a3, *v3, &qword_27FD12430, &qword_25EB795C0, &qword_27FD12438, &qword_25EB795C8);
  *v3 = result;
  return result;
}

void *sub_25EB2510C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EB258CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25EB2512C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EB25A1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25EB2514C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25EB25B6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25EB2516C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD124F0, &qword_25EB79650);
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

void *sub_25EB25270(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD123C0, &qword_25EB78998);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980) - 8);
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

char *sub_25EB25460(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD124B0, &qword_25EB79628);
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

char *sub_25EB2556C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD124B8, &qword_25EB79630);
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

char *sub_25EB2568C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12488, &qword_25EB79600);
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

void *sub_25EB25798(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

void *sub_25EB258CC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12490, &qword_25EB79608);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12468, &qword_25EB795E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25EB25A1C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD124C0, &qword_25EB79638);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD124C8, &unk_25EB79640);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25EB25B6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F28, &qword_25EB78D50);
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

uint64_t sub_25EB25C78(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25EB6E138();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_25EB24DC0(&unk_27FD11F50, 255, MEMORY[0x277D3E738], MEMORY[0x277D3E740]);
  v33 = a2;
  v11 = sub_25EB6E228();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_25EB24DC0(&unk_27FD124E0, 255, MEMORY[0x277D3E738], MEMORY[0x277D3E748]);
      v21 = sub_25EB6E248();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_25EB27F34(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_25EB25F60(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - v8;
  v10 = *v2;
  sub_25EB31A70(&qword_27FD11BD8, &qword_27FD11BF0, &qword_25EB78980, MEMORY[0x277D3E7B0]);
  v31 = a2;
  v11 = sub_25EB6E228();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = a1;
    v28 = ~v12;
    v25 = v7;
    v15 = v7 + 16;
    v14 = *(v7 + 16);
    v16 = (v7 + 8);
    v17 = *(v15 + 56);
    v24[1] = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v18 = v14;
      v14(v9, *(v30 + 48) + v17 * v13, v6);
      sub_25EB31A70(&qword_27FD11F30, &qword_27FD11BF0, &qword_25EB78980, MEMORY[0x277D3E7B8]);
      v19 = sub_25EB6E248();
      v20 = *v16;
      (*v16)(v9, v6);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v28;
      v14 = v18;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v3 = v26;
        a1 = v27;
        v7 = v25;
        goto LABEL_7;
      }
    }

    v20(v31, v6);
    v18(v27, *(v30 + 48) + v17 * v13, v6);
    return 0;
  }

  else
  {
    v14 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v31;
    v14(v9, v31, v6);
    v32 = *v3;
    sub_25EB281E0(v9, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    (*(v7 + 32))(a1, v22, v6);
    return 1;
  }
}

uint64_t sub_25EB26244(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_25EB6EA28();
  sub_25EB6E2D8();
  v8 = sub_25EB6EA58();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_25EB6E988() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_25EB28484(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25EB26394(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_25EB6E608();

    if (v9)
    {

      type metadata accessor for PSSGResourceID(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_25EB6E5F8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_25EB26CCC(v7, result + 1, &qword_27FD11E00, &unk_25EB79550, type metadata accessor for PSSGResourceID);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_25EB27A90(v20 + 1, &qword_27FD11E00, &unk_25EB79550);
    }

    v18 = v8;
    sub_25EB0EE64();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for PSSGResourceID(0);
  v11 = sub_25EB6E508();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_25EB287F8(v18, v13, isUniquelyReferenced_nonNull_native, &qword_27FD11E00, &unk_25EB79550, type metadata accessor for PSSGResourceID, sub_25EB0979C);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_25EB6E518();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_25EB26618(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6EA48();
  if (a5)
  {
    sub_25EB6E2D8();
  }

  v11 = sub_25EB6EA58();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v29;

    sub_25EB28604(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v29 = v31;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }

  v15 = ~v13;
  v28 = v10;
  v16 = *(v10 + 48);
  while (1)
  {
    v17 = (v16 + 32 * v14);
    v19 = v17[2];
    v18 = v17[3];
    v20 = *v17 == a2 && v17[1] == a3;
    if (!v20 && (sub_25EB6E988() & 1) == 0)
    {
      goto LABEL_6;
    }

    if (v18)
    {
      break;
    }

    if (!a5)
    {
      goto LABEL_21;
    }

LABEL_6:
    v14 = (v14 + 1) & v15;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (!a5)
  {
    goto LABEL_6;
  }

  v21 = v19 == a4 && v18 == a5;
  if (!v21 && (sub_25EB6E988() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_21:

  v24 = (*(v28 + 48) + 32 * v14);
  v25 = v24[1];
  v27 = v24[2];
  v26 = v24[3];
  *a1 = *v24;
  a1[1] = v25;
  a1[2] = v27;
  a1[3] = v26;

  return 0;
}

uint64_t sub_25EB26820(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_25EB6E608();

    if (v9)
    {

      type metadata accessor for PSSGGraphID(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_25EB6E5F8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_25EB26CCC(v7, result + 1, &unk_27FD123B0, qword_25EB78CA0, type metadata accessor for PSSGGraphID);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_25EB27A90(v20 + 1, &unk_27FD123B0, qword_25EB78CA0);
    }

    v18 = v8;
    sub_25EB0EE64();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for PSSGGraphID(0);
  v11 = sub_25EB6E508();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_25EB287F8(v18, v13, isUniquelyReferenced_nonNull_native, &unk_27FD123B0, qword_25EB78CA0, type metadata accessor for PSSGGraphID, sub_25EB0991C);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_25EB6E518();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_25EB26AA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6E2D8();
  v11 = sub_25EB6EA58();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v28 = v10;
    v16 = *(v10 + 48);
    while (1)
    {
      v17 = (v16 + 32 * v14);
      v18 = v17[2];
      v19 = v17[3];
      v20 = *v17 == a2 && v17[1] == a3;
      if (v20 || (sub_25EB6E988() & 1) != 0)
      {
        v21 = v18 == a4 && v19 == a5;
        if (v21 || (sub_25EB6E988() & 1) != 0)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v22 = (*(v28 + 48) + 32 * v14);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    *a1 = *v22;
    a1[1] = v23;
    a1[2] = v24;
    a1[3] = v25;

    return 0;
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v29;

    sub_25EB28978(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v29 = v31;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_25EB26CCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_25EB6E688();
    v21 = v8;
    sub_25EB6E5B8();
    if (sub_25EB6E638())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_25EB27A90(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = sub_25EB6E508();
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (sub_25EB6E638());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_25EB26EC4(uint64_t a1)
{
  v2 = v1;
  v36 = sub_25EB6E138();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F38, &qword_25EB78DA8);
  result = sub_25EB6E678();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_25EB24DC0(&unk_27FD11F50, 255, MEMORY[0x277D3E738], MEMORY[0x277D3E740]);
      result = sub_25EB6E228();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_25EB27224(uint64_t a1)
{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11FA0, &unk_25EB78E00);
  result = sub_25EB6E678();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_25EB31A70(&qword_27FD11BD8, &qword_27FD11BF0, &qword_25EB78980, MEMORY[0x277D3E7B0]);
      result = sub_25EB6E228();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_25EB27584(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD12400, &unk_25EB79570);
  result = sub_25EB6E678();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_25EB6EA28();
      sub_25EB6E2D8();
      result = sub_25EB6EA58();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25EB277E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD124A0, &qword_25EB78D40);
  result = sub_25EB6E678();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v1;
    v33 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_25EB6EA28();
      v34 = v20;
      sub_25EB6E2D8();
      if (v22)
      {
        sub_25EB6EA48();
        v23 = v21;
        sub_25EB6E2D8();
      }

      else
      {
        v23 = v21;
        sub_25EB6EA48();
      }

      result = sub_25EB6EA58();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v34;
      v14[2] = v23;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v33;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25EB27A90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_25EB6E678();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_25EB6E508();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_25EB27CB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F08, &qword_25EB795F0);
  result = sub_25EB6E678();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_25EB6EA28();
      sub_25EB6E2D8();
      sub_25EB6E2D8();
      result = sub_25EB6EA58();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v32;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25EB27F34(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_25EB6E138();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25EB26EC4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_25EB091C8();
      goto LABEL_12;
    }

    sub_25EB28B44(v10 + 1);
  }

  v12 = *v3;
  sub_25EB24DC0(&unk_27FD11F50, 255, MEMORY[0x277D3E738], MEMORY[0x277D3E740]);
  v13 = sub_25EB6E228();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_25EB24DC0(&unk_27FD124E0, 255, MEMORY[0x277D3E738], MEMORY[0x277D3E748]);
      v21 = sub_25EB6E248();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25EB6E9A8();
  __break(1u);
  return result;
}

uint64_t sub_25EB281E0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v7;
  v29 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25EB27224(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_25EB09400();
      goto LABEL_12;
    }

    sub_25EB28E64(v10 + 1);
  }

  v12 = *v3;
  sub_25EB31A70(&qword_27FD11BD8, &qword_27FD11BF0, &qword_25EB78980, MEMORY[0x277D3E7B0]);
  v13 = sub_25EB6E228();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v17 = v7 + 16;
    v18 = v19;
    v20 = *(v17 + 56);
    do
    {
      v18(v9, *(v30 + 48) + v20 * a2, v6);
      sub_25EB31A70(&qword_27FD11F30, &qword_27FD11BF0, &qword_25EB78980, MEMORY[0x277D3E7B8]);
      v21 = sub_25EB6E248();
      (*(v17 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v28;
  v23 = *v29;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25EB6E9A8();
  __break(1u);
  return result;
}

uint64_t sub_25EB28484(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_25EB27584(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25EB09640();
      goto LABEL_16;
    }

    sub_25EB29184(v8 + 1);
  }

  v10 = *v4;
  sub_25EB6EA28();
  sub_25EB6E2D8();
  result = sub_25EB6EA58();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_25EB6E988();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_25EB6E9A8();
  __break(1u);
  return result;
}

uint64_t sub_25EB28604(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a6)
  {
    sub_25EB277E4(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_25EB097B0();
      goto LABEL_27;
    }

    sub_25EB293BC(v12 + 1);
  }

  v14 = *v6;
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6EA48();
  if (a4)
  {
    sub_25EB6E2D8();
  }

  result = sub_25EB6EA58();
  v15 = v14 + 56;
  v16 = -1 << *(v14 + 32);
  a5 = result & ~v16;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    v18 = *(v14 + 48);
    do
    {
      v19 = (v18 + 32 * a5);
      result = *v19;
      v21 = v19[2];
      v20 = v19[3];
      v22 = *v19 == v11 && v19[1] == a2;
      if (v22 || (result = sub_25EB6E988(), (result & 1) != 0))
      {
        if (v20)
        {
          if (a4)
          {
            v23 = v21 == a3 && v20 == a4;
            if (v23 || (result = sub_25EB6E988(), (result & 1) != 0))
            {
LABEL_26:
              result = sub_25EB6E9A8();
              __break(1u);
              break;
            }
          }
        }

        else if (!a4)
        {
          goto LABEL_26;
        }
      }

      a5 = (a5 + 1) & v17;
    }

    while (((*(v15 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_27:
  v24 = *v29;
  *(*v29 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = (*(v24 + 48) + 32 * a5);
  *v25 = v11;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

void sub_25EB287F8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), void (*a7)(void))
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    sub_25EB27A90(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      a7();
      goto LABEL_12;
    }

    v12 = a6;
    sub_25EB29658(v10 + 1, a4, a5);
  }

  v13 = *v7;
  v14 = sub_25EB6E508();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v12(0);
    do
    {
      v17 = *(*(v13 + 48) + 8 * a2);
      v18 = sub_25EB6E518();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_25EB6E9A8();
  __break(1u);
}

uint64_t sub_25EB28978(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    sub_25EB27CB0(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_25EB09A70();
      goto LABEL_22;
    }

    sub_25EB29864(v12 + 1);
  }

  v14 = *v6;
  sub_25EB6EA28();
  sub_25EB6E2D8();
  sub_25EB6E2D8();
  result = sub_25EB6EA58();
  v15 = v14 + 56;
  v16 = -1 << *(v14 + 32);
  a5 = result & ~v16;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    v18 = *(v14 + 48);
    while (1)
    {
      v19 = (v18 + 32 * a5);
      v20 = v19[2];
      v21 = v19[3];
      v22 = *v19 == v11 && v19[1] == a2;
      if (v22 || (result = sub_25EB6E988(), (result & 1) != 0))
      {
        if (v20 == a3 && v21 == a4)
        {
          break;
        }

        result = sub_25EB6E988();
        if (result)
        {
          break;
        }
      }

      a5 = (a5 + 1) & v17;
      if (((*(v15 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_25EB6E9A8();
    __break(1u);
  }

LABEL_22:
  v24 = *v29;
  *(*v29 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = (*(v24 + 48) + 32 * a5);
  *v25 = v11;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

uint64_t sub_25EB28B44(uint64_t a1)
{
  v2 = v1;
  v33 = sub_25EB6E138();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F38, &qword_25EB78DA8);
  v7 = sub_25EB6E678();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_25EB24DC0(&unk_27FD11F50, 255, MEMORY[0x277D3E738], MEMORY[0x277D3E740]);
      result = sub_25EB6E228();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_25EB28E64(uint64_t a1)
{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - v4;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD11FA0, &unk_25EB78E00);
  v7 = sub_25EB6E678();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_25EB31A70(&qword_27FD11BD8, &qword_27FD11BF0, &qword_25EB78980, MEMORY[0x277D3E7B0]);
      result = sub_25EB6E228();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_25EB29184(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD12400, &unk_25EB79570);
  result = sub_25EB6E678();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_25EB6EA28();

      sub_25EB6E2D8();
      result = sub_25EB6EA58();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_25EB293BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD124A0, &qword_25EB78D40);
  result = sub_25EB6E678();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_25EB6EA28();

      v33 = v19;
      sub_25EB6E2D8();
      if (v22)
      {
        sub_25EB6EA48();
        v23 = v21;
        sub_25EB6E2D8();
      }

      else
      {
        v23 = v21;
        sub_25EB6EA48();
      }

      result = sub_25EB6EA58();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      v3 = v32;
      *v14 = v33;
      v14[1] = v20;
      v14[2] = v23;
      v14[3] = v22;
      ++*(v5 + 16);
      v10 = v34;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v31;
        goto LABEL_29;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_25EB29658(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_25EB6E678();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_25EB6E508();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_25EB29864(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F08, &qword_25EB795F0);
  result = sub_25EB6E678();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v1;
    v31 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_25EB6EA28();

      sub_25EB6E2D8();
      sub_25EB6E2D8();
      result = sub_25EB6EA58();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void *sub_25EB29AC8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_25EB2E034(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_25EB29B58(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_25EAFD168(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_25EB2C310(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_25EB2D5C8(&qword_27FD11ED8, &qword_25EB78D10);
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_25EB6E7E8();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_25EB6E5F8();
  v8 = sub_25EB29F34(v4, v7, &qword_27FD11ED8, &qword_25EB78D10, type metadata accessor for PSSGGraphID, type metadata accessor for PSSGGraph);

  v9 = sub_25EAFD168(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_25EB2C310(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25EB29D50()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25EB29DA0(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_25EAFD114(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_25EB2C310(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_25EB2D5C8(&qword_27FD11ED0, &unk_25EB795A0);
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_25EB6E7E8();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_25EB6E5F8();
  v8 = sub_25EB29F34(v4, v7, &qword_27FD11ED0, &unk_25EB795A0, type metadata accessor for PSSGResourceID, type metadata accessor for PSSGResource);

  v9 = sub_25EAFD114(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_25EB2C310(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_25EB29F34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_25EB6E888();
    v29 = v10;
    sub_25EB6E768();
    v11 = sub_25EB6E7F8();
    if (v11)
    {
      v26 = a4;
      v12 = v11;
      a5(0);
      v13 = v12;
      do
      {
        v27 = v13;
        v20 = swift_dynamicCast();
        a6(v20);
        swift_dynamicCast();
        v21 = *(v10 + 16);
        if (*(v10 + 24) <= v21)
        {
          sub_25EB2ADDC(v21 + 1, 1, a3, v26);
        }

        v10 = v29;
        result = sub_25EB6E508();
        v15 = v29 + 64;
        v16 = -1 << *(v29 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v29 + 64 + 8 * (v17 >> 6))) != 0)
        {
          v19 = __clz(__rbit64((-1 << v17) & ~*(v29 + 64 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = 0;
          v23 = (63 - v16) >> 6;
          do
          {
            if (++v18 == v23 && (v22 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v24 = v18 == v23;
            if (v18 == v23)
            {
              v18 = 0;
            }

            v22 |= v24;
            v25 = *(v15 + 8 * v18);
          }

          while (v25 == -1);
          v19 = __clz(__rbit64(~v25)) + (v18 << 6);
        }

        *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v29 + 48) + 8 * v19) = v28;
        *(*(v29 + 56) + 8 * v19) = v27;
        ++*(v29 + 16);
        v13 = sub_25EB6E7F8();
      }

      while (v13);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v10;
}

uint64_t sub_25EB2A170(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD123D0, &qword_25EB78DC8);
  v39 = v4;
  result = sub_25EB6E878();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_25EB31A70(&qword_27FD11BD8, &qword_27FD11BF0, &qword_25EB78980, MEMORY[0x277D3E7B0]);
      result = sub_25EB6E228();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25EB2A550(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_25EB6E138();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD123E0, &unk_25EB79560);
  v47 = v4;
  result = sub_25EB6E878();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_25EB31A70(&qword_27FD11BD8, &qword_27FD11BF0, &qword_25EB78980, MEMORY[0x277D3E7B0]);
      result = sub_25EB6E228();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_25EB2A9FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F78, &qword_25EB78DD8);
  v39 = v4;
  result = sub_25EB6E878();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
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
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_25EB31A70(&qword_27FD11BD8, &qword_27FD11BF0, &qword_25EB78980, MEMORY[0x277D3E7B0]);
      result = sub_25EB6E228();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_25EB2ADDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_25EB6E878();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      result = sub_25EB6E508();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v33 = 1 << *(v7 + 32);
      if (v33 >= 64)
      {
        bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v33;
      }

      *(v7 + 16) = 0;
    }

    v5 = v34;
  }

  else
  {
  }

  *v5 = v9;
  return result;
}

uint64_t sub_25EB2B03C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EC0, &qword_25EB78CF8);
  v38 = v4;
  result = sub_25EB6E878();
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
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 32 * v21);
      v23 = v22[1];
      v24 = v22[3];
      v42 = v22[2];
      v43 = *v22;
      v25 = (*(v5 + 56) + 40 * v21);
      v26 = *v25;
      v27 = v25[1];
      v40 = v25[3];
      v41 = v25[2];
      v39 = v25[4];
      if ((v38 & 1) == 0)
      {

        sub_25EB0E880(v26, v27, v41, v40);
      }

      sub_25EB6EA28();
      sub_25EB6E2D8();
      sub_25EB6EA48();
      if (v24)
      {
        sub_25EB6E2D8();
      }

      result = sub_25EB6EA58();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v43;
      v16[1] = v23;
      v16[2] = v42;
      v16[3] = v24;
      v17 = (*(v7 + 56) + 40 * v15);
      *v17 = v26;
      v17[1] = v27;
      v17[2] = v41;
      v17[3] = v40;
      v17[4] = v39;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if (v38)
    {
      v35 = 1 << *(v5 + 32);
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

    v3 = v36;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25EB2B36C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EC8, &unk_25EB78D00);
  v39 = v4;
  result = sub_25EB6E878();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
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
      v40 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = v23[1];
      v25 = v23[3];
      v42 = v23[2];
      v43 = *v23;
      v26 = (v22 + 24 * v21);
      v27 = v26[1];
      v41 = *v26;
      v28 = v26[2];
      if ((v39 & 1) == 0)
      {
      }

      sub_25EB6EA28();
      sub_25EB6E2D8();
      sub_25EB6E2D8();
      result = sub_25EB6EA58();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v43;
      v16[1] = v24;
      v16[2] = v42;
      v16[3] = v25;
      v17 = (*(v7 + 56) + 24 * v15);
      v12 = v40;
      *v17 = v41;
      v17[1] = v27;
      v17[2] = v28;
      ++*(v7 + 16);
      v5 = v38;
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
        v40 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25EB2B66C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD121C0, &qword_25EB78CF0);
  v37 = v4;
  result = sub_25EB6E878();
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

      sub_25EB6EA28();
      sub_25EB6E2D8();
      result = sub_25EB6EA58();
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

uint64_t sub_25EB2B92C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EA8, &unk_25EB78CE0);
  v30 = v4;
  result = sub_25EB6E878();
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_25EB6EA28();
      sub_25EB2F4F0(v31, v20);
      result = sub_25EB6EA58();
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25EB2BBC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_25EB6E878();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
      }

      result = sub_25EB6E508();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_25EB2BE2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11E80, &qword_25EB78CC0);
  result = sub_25EB6E878();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_25EB6E508();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
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

uint64_t sub_25EB2C090(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11E88, &qword_25EB78CC8);
  result = sub_25EB6E878();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v2;
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
      v31 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
        v21 = v20;
      }

      result = sub_25EB6E508();
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
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v31;
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

void sub_25EB2C310(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25EB6E578() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_25EB6E508();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_25EB2C49C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25EB6E578() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_25EB6E508();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_25EB2C628(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = *v3;
  v14 = sub_25EAFD040(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25EB2CD68();
      goto LABEL_7;
    }

    sub_25EB2A170(v17, a3 & 1);
    v23 = sub_25EAFD040(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_25EB2CCA4(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_25EB6E9B8();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

id sub_25EB2C7FC(uint64_t a1, void *a2, char a3, uint64_t (*a4)(void *), uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v12 = v7;
  v15 = *v7;
  v16 = a4(a2);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 < v21 || (a3 & 1) != 0)
    {
      sub_25EB2ADDC(v21, a3 & 1, a5, a6);
      v16 = a4(a2);
      if ((v22 & 1) != (v24 & 1))
      {
LABEL_18:
        a7(0);
        sub_25EB6E9B8();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      a7 = v16;
      sub_25EB2D5C8(a5, a6);
      v16 = a7;
    }
  }

  v25 = *v12;
  if (v22)
  {
    *(v25[7] + 8 * v16) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v25[(v16 >> 6) + 8] |= 1 << v16;
  *(v25[6] + 8 * v16) = a2;
  *(v25[7] + 8 * v16) = a1;
  v26 = v25[2];
  v20 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v27;

  return a2;
}

uint64_t sub_25EB2C9A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_25EAFD1BC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_25EB2B92C(v14, a3 & 1);
      v9 = sub_25EAFD1BC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD12410, &unk_25EB79580);
        result = sub_25EB6E9B8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_25EB2DA9C();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v21 = v19[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v22;
}

id sub_25EB2CB14(uint64_t a1, void *a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v11 = *v5;
  v12 = sub_25EAFD168(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      sub_25EB2BBC4(v17, a3 & 1, a4, a5);
      v12 = sub_25EAFD168(a2);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        type metadata accessor for PSSGGraphID(0);
        result = sub_25EB6E9B8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v12;
      sub_25EB2DC00(a4, a5);
      v12 = v20;
    }
  }

  v22 = *v8;
  if (v18)
  {
    *(v22[7] + 8 * v12) = a1;
  }

  v22[(v12 >> 6) + 8] |= 1 << v12;
  *(v22[6] + 8 * v12) = a2;
  *(v22[7] + 8 * v12) = a1;
  v24 = v22[2];
  v16 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v25;

  return a2;
}

uint64_t sub_25EB2CCA4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_25EB2CD68()
{
  v1 = v0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD123D0, &qword_25EB78DC8);
  v3 = *v0;
  v4 = sub_25EB6E868();
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
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
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

char *sub_25EB2CFE4()
{
  v1 = v0;
  v41 = sub_25EB6E138();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD123E0, &unk_25EB79560);
  v4 = *v0;
  v5 = sub_25EB6E868();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_25EB2D340()
{
  v1 = v0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11BF0, &qword_25EB78980);
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11F78, &qword_25EB78DD8);
  v3 = *v0;
  v4 = sub_25EB6E868();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

id sub_25EB2D5C8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25EB6E868();
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
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

void *sub_25EB2D718()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EC0, &qword_25EB78CF8);
  v30 = v0;
  v1 = *v0;
  v31 = sub_25EB6E868();
  v32 = v1;
  if (*(v1 + 16))
  {
    result = (v31 + 64);
    v3 = v1 + 64;
    v4 = ((1 << *(v31 + 32)) + 63) >> 6;
    if (v31 != v1 || result >= v1 + 64 + 8 * v4)
    {
      result = memmove(result, (v1 + 64), 8 * v4);
    }

    v6 = 0;
    *(v31 + 16) = *(v32 + 16);
    v7 = 1 << *(v32 + 32);
    v8 = *(v32 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      do
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_17:
        v15 = v12 | (v6 << 6);
        v16 = 32 * v15;
        v17 = (*(v32 + 48) + 32 * v15);
        v18 = *v17;
        v19 = v17[1];
        v21 = v17[2];
        v20 = v17[3];
        v15 *= 40;
        v22 = (*(v32 + 56) + v15);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = v22[4];
        v28 = (*(v31 + 48) + v16);
        *v28 = v18;
        v28[1] = v19;
        v28[2] = v21;
        v28[3] = v20;
        v29 = (*(v31 + 56) + v15);
        *v29 = v23;
        v29[1] = v24;
        v29[2] = v25;
        v29[3] = v26;
        v29[4] = v27;

        sub_25EB0E880(v23, v24, v25, v26);
      }

      while (v10);
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_19;
      }

      v14 = *(v3 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v30 = v31;
  }

  return result;
}

void *sub_25EB2D8F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EC8, &unk_25EB78D00);
  v2 = *v0;
  v3 = sub_25EB6E868();
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
        v18 = 32 * v17;
        v19 = (*(v2 + 48) + 32 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v17 *= 24;
        v24 = (*(v2 + 56) + v17);
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[2];
        v28 = (*(v4 + 48) + v18);
        *v28 = v21;
        v28[1] = v20;
        v28[2] = v22;
        v28[3] = v23;
        v29 = (*(v4 + 56) + v17);
        *v29 = v25;
        v29[1] = v26;
        v29[2] = v27;
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

void *sub_25EB2DA9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11EA8, &unk_25EB78CE0);
  v2 = *v0;
  v3 = sub_25EB6E868();
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

void *sub_25EB2DC00(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25EB6E868();
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
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

id sub_25EB2DD54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11E80, &qword_25EB78CC0);
  v2 = *v0;
  v3 = sub_25EB6E868();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
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

void *sub_25EB2DEB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11E88, &qword_25EB78CC8);
  v2 = *v0;
  v3 = sub_25EB6E868();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        v20 = v18;
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

void sub_25EB2E034(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_25EB08FC8(a1, a2, v20, a3);
        return;
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
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_25EB2E1A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_25EB6E5F8())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_25EB6E648();

      if ((v13 & 1) == 0)
      {
        return;
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
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_25EB2E2A0(void *a1, char a2, void *a3, uint64_t (*a4)(id), uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v46 = a1[2];
  if (!v46)
  {
    goto LABEL_22;
  }

  v11 = a1[5];
  v12 = *a3;
  v13 = a1[4];
  v14 = v11;
  v16 = a4(v13);
  v17 = v12[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v20 = v15;
  if (v12[3] >= v19)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_25EB2D5C8(a5, a6);
      if ((v20 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v23 = swift_allocError();
    swift_willThrow();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C38, &qword_25EB789A8);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

  sub_25EB2ADDC(v19, a2 & 1, a5, a6);
  v21 = a4(v13);
  if ((v20 & 1) != (v22 & 1))
  {
LABEL_27:
    a7(0);
    sub_25EB6E9B8();
    __break(1u);
LABEL_28:
    sub_25EB6E6B8();
    MEMORY[0x25F8C69B0](0xD00000000000001BLL, 0x800000025EB8E140);
    a7(0);
    sub_25EB6E748();
    MEMORY[0x25F8C69B0](39, 0xE100000000000000);
    sub_25EB6E838();
    __break(1u);
    return;
  }

  v16 = v21;
  if (v20)
  {
    goto LABEL_9;
  }

LABEL_12:
  v25 = *a3;
  *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  *(v25[6] + 8 * v16) = v13;
  *(v25[7] + 8 * v16) = v14;
  v26 = v25[2];
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v25[2] = v28;
  if (v46 != 1)
  {
    v29 = (a1 + 7);
    v30 = 1;
    while (v30 < a1[2])
    {
      v31 = *v29;
      v32 = *a3;
      v13 = *(v29 - 1);
      v14 = v31;
      v33 = a4(v13);
      v35 = v32[2];
      v36 = (v34 & 1) == 0;
      v27 = __OFADD__(v35, v36);
      v37 = v35 + v36;
      if (v27)
      {
        goto LABEL_24;
      }

      v38 = v34;
      if (v32[3] < v37)
      {
        sub_25EB2ADDC(v37, 1, a5, a6);
        v33 = a4(v13);
        if ((v38 & 1) != (v39 & 1))
        {
          goto LABEL_27;
        }
      }

      if (v38)
      {
        goto LABEL_9;
      }

      v40 = *a3;
      *(*a3 + 8 * (v33 >> 6) + 64) |= 1 << v33;
      *(v40[6] + 8 * v33) = v13;
      *(v40[7] + 8 * v33) = v14;
      v41 = v40[2];
      v27 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v27)
      {
        goto LABEL_25;
      }

      ++v30;
      v40[2] = v42;
      v29 += 2;
      if (v46 == v30)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_26;
  }

LABEL_22:
}

void sub_25EB2E64C(uint64_t a1, char a2, void *a3)
{
  v3 = a1;
  v30 = *(a1 + 16);
  if (!v30)
  {
LABEL_18:

    return;
  }

  v4 = 0;
  v5 = 32;
  while (1)
  {
    if (v4 >= *(v3 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_25EB6E9B8();
      __break(1u);
      goto LABEL_24;
    }

    v6 = *(v3 + v5 + 48);
    v40 = *(v3 + v5 + 32);
    v41 = v6;
    v7 = *(v3 + v5 + 16);
    v38 = *(v3 + v5);
    v39 = v7;
    v8 = *(v3 + v5 + 64);
    v42 = v8;
    v9 = *(&v41 + 1);
    v34 = v41;
    v33 = v40;
    v10 = v7;
    v11 = v38;
    sub_25EB0EDAC(&v38, v37, &qword_27FD12468, &qword_25EB795E0);
    if (!*(&v11 + 1))
    {
      goto LABEL_18;
    }

    v31 = v9;
    v32 = v8;
    v38 = v11;
    v39 = v10;
    v12 = *a3;
    v14 = sub_25EAFCA88(v11, *(&v11 + 1), v10, *(&v10 + 1));
    v15 = v12[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_21;
    }

    v18 = v13;
    if (v12[3] < v17)
    {
      break;
    }

    if (a2)
    {
      if (v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_25EB2D718();
      if (v18)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v21 = *a3;
    *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    v22 = (v21[6] + 32 * v14);
    *v22 = v11;
    v22[1] = v10;
    v23 = v21[7] + 40 * v14;
    *v23 = v33;
    *(v23 + 16) = v34;
    *(v23 + 24) = v31;
    *(v23 + 32) = v32;
    v24 = v21[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_22;
    }

    ++v4;
    v21[2] = v26;
    v5 += 72;
    a2 = 1;
    v3 = a1;
    if (v30 == v4)
    {
      goto LABEL_18;
    }
  }

  sub_25EB2B03C(v17, a2 & 1);
  v19 = sub_25EAFCA88(v11, *(&v11 + 1), v10, *(&v10 + 1));
  if ((v18 & 1) != (v20 & 1))
  {
    goto LABEL_23;
  }

  v14 = v19;
  if ((v18 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v27 = swift_allocError();
  swift_willThrow();
  v43 = v27;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C38, &qword_25EB789A8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_25EB315C4(v33, *(&v33 + 1), v34, v31);

    return;
  }

LABEL_24:
  v37[0] = 0;
  v37[1] = 0xE000000000000000;
  sub_25EB6E6B8();
  MEMORY[0x25F8C69B0](0xD00000000000001BLL, 0x800000025EB8E140);
  sub_25EB6E748();
  MEMORY[0x25F8C69B0](39, 0xE100000000000000);
  sub_25EB6E838();
  __break(1u);
}

void sub_25EB2E9CC(uint64_t a1, char a2, void *a3)
{
  v32 = *(a1 + 16);
  if (!v32)
  {
LABEL_18:

    return;
  }

  v4 = 0;
  v5 = (a1 + 80);
  while (1)
  {
    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_25EB6E9B8();
      __break(1u);
      goto LABEL_24;
    }

    v7 = *(v5 - 1);
    v6 = *v5;
    v9 = *(v5 - 3);
    v8 = *(v5 - 2);
    v10 = *(v5 - 5);
    v11 = *(v5 - 4);
    v12 = *(v5 - 6);

    if (!v10)
    {
      goto LABEL_18;
    }

    v34 = v8;
    v35 = v4;
    v13 = a2;
    v36 = v6;
    v14 = *a3;
    v16 = sub_25EAFCB44(v12, v10, v11, v9);
    v17 = v14[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_21;
    }

    v20 = v15;
    if (v14[3] < v19)
    {
      break;
    }

    if (v13)
    {
      v23 = v35;
      if (v15)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_25EB2D8F4();
      v23 = v35;
      if (v20)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v24 = *a3;
    *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v25 = (v24[6] + 32 * v16);
    *v25 = v12;
    v25[1] = v10;
    v25[2] = v11;
    v25[3] = v9;
    v26 = (v24[7] + 24 * v16);
    *v26 = v34;
    v26[1] = v7;
    v26[2] = v36;
    v27 = v24[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_22;
    }

    v4 = v23 + 1;
    v24[2] = v29;
    v5 += 7;
    a2 = 1;
    if (v32 == v4)
    {
      goto LABEL_18;
    }
  }

  sub_25EB2B36C(v19, v13 & 1);
  v21 = sub_25EAFCB44(v12, v10, v11, v9);
  if ((v20 & 1) != (v22 & 1))
  {
    goto LABEL_23;
  }

  v16 = v21;
  v23 = v35;
  if ((v20 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v30 = swift_allocError();
  swift_willThrow();
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD11C38, &qword_25EB789A8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_24:
  sub_25EB6E6B8();
  MEMORY[0x25F8C69B0](0xD00000000000001BLL, 0x800000025EB8E140);
  sub_25EB6E748();
  MEMORY[0x25F8C69B0](39, 0xE100000000000000);
  sub_25EB6E838();
  __break(1u);
}

void sub_25EB2ED1C(uint64_t a1, uint64_t a2)
{
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (!sub_25EB6E5F8())
    {
      return;
    }
  }

  else if (!*(*v2 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_25EB6E5B8();
    type metadata accessor for PSSGGraphID(0);
    sub_25EB24DC0(&unk_27FD11DF0, 255, type metadata accessor for PSSGGraphID, MEMORY[0x277D85378]);
    sub_25EB6E478();
    a1 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v15 = (v13 - 1) & v13;
    v16 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_22:
      sub_25EB0EC08(a1);
      return;
    }

    while (1)
    {
      v17 = sub_25EB09E84(v16);

      v6 = v14;
      v7 = v15;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_25EB6E638())
      {
        type metadata accessor for PSSGGraphID(0);
        swift_dynamicCast();
        v16 = v18;
        v14 = v6;
        v15 = v7;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_22;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_25EB2EF50(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x25F8C6CE0](a1, a2, v9);
      a5(0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    a5(0);
    if (sub_25EB6E5D8() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_25EB6E5E8();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_25EB6E508();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_25EB6E518();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

void sub_25EB2F15C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)())
{
  if (a3)
  {
    if (sub_25EB6E798() == *(a4 + 36))
    {
      sub_25EB6E7A8();
      a5(0);
      swift_dynamicCast();
      a6();
      v9 = v8;

      if (v9)
      {
        sub_25EB6E778();
        sub_25EB6E7C8();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_25EB6E588();
}

void sub_25EB2F2C0(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(), uint64_t (*a8)(uint64_t))
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_25EB6E7D8();
      a6(0);
      v13 = swift_dynamicCast();
      a8(v13);
      swift_dynamicCast();
      *a1 = v20;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_25EB6E798() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_25EB6E7A8();
  a6(0);
  swift_dynamicCast();
  a2 = a7();
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v17 = *(*(a5 + 48) + 8 * a2);
  v18 = *(*(a5 + 56) + 8 * a2);
  *a1 = v18;
  v17;
  v19 = v18;
}

uint64_t sub_25EB2F48C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_25EB6E5F8();
  }

  return sub_25EB6E6D8();
}

void sub_25EB2F4F0(__int128 *a1, uint64_t a2)
{
  sub_25EB6EA58();
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_25EB6E5B8();
    type metadata accessor for PSSGResourceID(0);
    sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, MEMORY[0x277D85378]);
    sub_25EB6E478();
    a2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a2 + 32);
    v3 = a2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a2 + 56);

    v5 = 0;
  }

  v10 = 0;
  v11 = (v4 + 64) >> 6;
  while (a2 < 0)
  {
    if (!sub_25EB6E638())
    {
LABEL_20:
      sub_25EB0EC08(a2);
      MEMORY[0x25F8C7100](v10);
      return;
    }

    type metadata accessor for PSSGResourceID(0);
    swift_dynamicCast();
    v14 = v17;
LABEL_10:
    v15 = sub_25EB6E508();

    v10 ^= v15;
  }

  if (v6)
  {
    v12 = v5;
LABEL_9:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v17 = *(*(a2 + 48) + ((v12 << 9) | (8 * v13)));
    v14 = v17;
    goto LABEL_10;
  }

  v16 = v5;
  while (1)
  {
    v12 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      goto LABEL_20;
    }

    v6 = *(v3 + 8 * v12);
    ++v16;
    if (v6)
    {
      v5 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_25EB2F71C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  if (!v3)
  {
    sub_25EB0E880(*a1, 0, v5, v4);
    if (!v8)
    {
      sub_25EB0E880(v7, 0, v10, v9);
      v3 = 0;
      goto LABEL_22;
    }

    sub_25EB0E880(v7, v8, v10, v9);
    goto LABEL_17;
  }

  if (!v8)
  {
    sub_25EB0E880(*a1, v3, v5, v4);
    sub_25EB0E880(v7, 0, v10, v9);
    sub_25EB0E880(v2, v3, v5, v4);

LABEL_17:
    sub_25EB315C4(v2, v3, v5, v4);
    v14 = v7;
    v15 = v8;
    v16 = v10;
    v17 = v9;
LABEL_18:
    sub_25EB315C4(v14, v15, v16, v17);
    return 0;
  }

  v12 = v2 == v7 && v3 == v8;
  if (!v12 && (sub_25EB6E988() & 1) == 0)
  {
    sub_25EB0E880(v2, v3, v5, v4);
    sub_25EB0E880(v7, v8, v10, v9);
    sub_25EB0E880(v2, v3, v5, v4);
    sub_25EB315C4(v7, v8, v10, v9);

    v14 = v2;
    v15 = v3;
    v16 = v5;
    v17 = v4;
    goto LABEL_18;
  }

  if (v5 != v10 || v4 != v9)
  {
    v19 = sub_25EB6E988();
    sub_25EB0E880(v2, v3, v5, v4);
    sub_25EB0E880(v7, v8, v10, v9);
    sub_25EB0E880(v2, v3, v5, v4);
    sub_25EB315C4(v7, v8, v10, v9);

    sub_25EB315C4(v2, v3, v5, v4);
    if (v19)
    {
      goto LABEL_23;
    }

    return 0;
  }

  sub_25EB0E880(v2, v3, v5, v4);
  sub_25EB0E880(v7, v8, v5, v4);
  sub_25EB0E880(v2, v3, v5, v4);
  sub_25EB315C4(v7, v8, v5, v4);

LABEL_22:
  sub_25EB315C4(v2, v3, v5, v4);
LABEL_23:

  return sub_25EB246BC(v6, v11);
}

BOOL sub_25EB2FA34(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_25EB6E988() & 1) != 0)
  {
    if (v3)
    {
      if (v5)
      {
        v9 = v2 == v6 && v3 == v5;
        if (v9 || (sub_25EB6E988() & 1) != 0)
        {
          return v4 == v7;
        }
      }
    }

    else if (!v5)
    {
      return v4 == v7;
    }
  }

  return 0;
}

uint64_t sub_25EB2FB1C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25EB2FB2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

char *sub_25EB2FB74(void *a1)
{
  v1 = a1;
  v2 = [a1 type];
  v3 = [v1 inputs];
  type metadata accessor for PSSGGraphInput(v3);
  v4 = sub_25EB6E3D8();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_16:

LABEL_17:
    v26 = [v1 outputs];
    type metadata accessor for PSSGResourceID(0);
    sub_25EB24DC0(&qword_27FD11EA0, 255, type metadata accessor for PSSGResourceID, MEMORY[0x277D85378]);
    v27 = sub_25EB6E438();

    sub_25EB0F894(v27);
    v29 = v28;

    sub_25EB0CEAC(v29);

    return v2;
  }

  v5 = sub_25EB6E5F8();
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_3:
  v32 = MEMORY[0x277D84F90];
  result = sub_25EB2504C(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v30 = v1;
    v31 = v2;
    v7 = 0;
    v8 = v4;
    v9 = v5;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x25F8C6D90](v7, v8);
      }

      else
      {
        v10 = *(v8 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = [v10 resource];
      v13 = [v12 name];
      v14 = sub_25EB6E268();
      v16 = v15;

      v17 = [v12 session];
      if (v17)
      {
        v18 = v17;
        v19 = sub_25EB6E268();
        v21 = v20;
      }

      else
      {

        v19 = 0;
        v21 = 0;
      }

      v22 = [v11 type];

      v24 = *(v32 + 16);
      v23 = *(v32 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_25EB2504C((v23 > 1), v24 + 1, 1);
      }

      ++v7;
      *(v32 + 16) = v24 + 1;
      v25 = (v32 + 40 * v24);
      v25[4] = v14;
      v25[5] = v16;
      v25[6] = v19;
      v25[7] = v21;
      v25[8] = v22;
      v8 = v4;
    }

    while (v9 != v7);

    v1 = v30;
    v2 = v31;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_25EB2FE64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_25EB6E988() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737475706E69 && a2 == 0xE600000000000000 || (sub_25EB6E988() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7374757074756FLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_25EB6E988();

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

uint64_t sub_25EB2FF78(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12378, &qword_25EB79538);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25EB313C0();
  sub_25EB6EA68();
  type metadata accessor for PSGraphFrequencyType(0);
  HIBYTE(v8) = 0;
  sub_25EB24DC0(&qword_27FD12380, 255, type metadata accessor for PSGraphFrequencyType, &protocol conformance descriptor for PSGraphFrequencyType);
  sub_25EB6E8F8();
  v6 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12330, &qword_25EB79518);
  HIBYTE(v8) = 1;
  sub_25EB3168C();
  sub_25EB6E8F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD12348, &qword_25EB79520);
  HIBYTE(v8) = 2;
  sub_25EB31764();
  sub_25EB6E8F8();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

unint64_t sub_25EB30200()
{
  result = qword_27FD12108;
  if (!qword_27FD12108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12108);
  }

  return result;
}

uint64_t sub_25EB30254()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25EB302CC()
{
  result = qword_27FD12138;
  if (!qword_27FD12138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12138);
  }

  return result;
}

unint64_t sub_25EB30320()
{
  result = qword_27FD12150;
  if (!qword_27FD12150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12150);
  }

  return result;
}

uint64_t sub_25EB30374(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD12158, &qword_25EB78EA0);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25EB30404()
{
  result = qword_27FD12168;
  if (!qword_27FD12168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12168);
  }

  return result;
}

uint64_t sub_25EB30458(unint64_t *a1, void (*a2)(void), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD12140, &qword_25EB78E98);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25EB304E8()
{
  result = qword_27FD12180;
  if (!qword_27FD12180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12180);
  }

  return result;
}

unint64_t sub_25EB3053C()
{
  result = qword_27FD12188;
  if (!qword_27FD12188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12188);
  }

  return result;
}

unint64_t sub_25EB30590()
{
  result = qword_27FD12198;
  if (!qword_27FD12198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12198);
  }

  return result;
}

unint64_t sub_25EB305E4()
{
  result = qword_27FD121A0;
  if (!qword_27FD121A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD121A0);
  }

  return result;
}

void *sub_25EB30638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  _s11QueryHelperCMa();
  v14 = swift_allocObject();
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_25EB6E5F8())
    {
      sub_25EB0E8C4(MEMORY[0x277D84F90]);
    }

    else
    {
      v26 = MEMORY[0x277D84FA0];
    }

    v14[9] = v26;
    if (sub_25EB6E5F8())
    {
      sub_25EB0EBE0(MEMORY[0x277D84F90]);
    }

    else
    {
      v15 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
    v14[9] = MEMORY[0x277D84FA0];
  }

  v14[10] = v15;
  v14[2] = a1;
  if (a2)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    v17 = sub_25EB3214C;
  }

  else
  {
    v17 = sub_25EB321B0;
    v16 = 0;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  v14[3] = sub_25EB320E4;
  v14[4] = v18;
  if (a4)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    v20 = sub_25EB321A0;
  }

  else
  {
    v20 = sub_25EB18D84;
    v19 = 0;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  v14[5] = sub_25EB32194;
  v14[6] = v21;
  if (a6)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = a6;
    *(v22 + 24) = a7;
    v23 = sub_25EB3214C;
  }

  else
  {
    v23 = sub_25EB321B0;
    v22 = 0;
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  v14[7] = sub_25EB320E4;
  v14[8] = v24;
  return v14;
}

unint64_t sub_25EB3089C(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_25EB6E5F8();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x25F8C6D90](v5, a1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_25EAFCC70(0, &qword_27FD12038, 0x277D82BB8);
    v8 = [v7 resource];
    v9 = sub_25EB6E518();

    if (v9)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_25EB309C8(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = sub_25EB3089C(*a1, a2);
  v7 = v5;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    if (v4 >> 62)
    {
      return sub_25EB6E5F8();
    }

    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v4 >> 62)
    {
      if (v8 == sub_25EB6E5F8())
      {
        return v7;
      }
    }

    else if (v8 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v7;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x25F8C6D90](v8, v4);
      goto LABEL_16;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v10 = *(v4 + 8 * v8 + 32);
LABEL_16:
    v11 = v10;
    sub_25EAFCC70(0, &qword_27FD12038, 0x277D82BB8);
    v12 = [v11 resource];
    v13 = sub_25EB6E518();

    if ((v13 & 1) == 0)
    {
      if (v7 != v8)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x25F8C6D90](v7, v4);
          v15 = MEMORY[0x25F8C6D90](v8, v4);
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= v16)
          {
            goto LABEL_46;
          }

          if (v8 >= v16)
          {
            goto LABEL_47;
          }

          v17 = *(v4 + 32 + 8 * v8);
          v14 = *(v4 + 32 + 8 * v7);
          v15 = v17;
        }

        v18 = v15;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = sub_25EB2F48C(v4);
          v19 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v4 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v18;

        if ((v4 & 0x8000000000000000) != 0 || v19)
        {
          v4 = sub_25EB2F48C(v4);
          v20 = v4 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_38:
            __break(1u);
            return v7;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v8 >= *(v20 + 16))
        {
          goto LABEL_44;
        }

        v22 = v20 + 8 * v8;
        v23 = *(v22 + 32);
        *(v22 + 32) = v14;

        *a1 = v4;
      }

LABEL_8:
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        goto LABEL_43;
      }
    }

    v9 = __OFADD__(v8++, 1);
    if (v9)
    {
      goto LABEL_42;
    }
  }

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
  return sub_25EB6E5F8();
}

uint64_t sub_25EB30C5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_11:
    v13 = *(*(a1 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v6)))));
    if ((v13 & 0xC000000000000001) != 0)
    {

      v10 = sub_25EB6E5F8();
    }

    else
    {
      v10 = *(v13 + 16);
    }

    v6 &= v6 - 1;
    v11 = __OFADD__(v2, v10);
    v2 += v10;
    if (v11)
    {
      goto LABEL_15;
    }
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v12);
    ++v9;
    if (v6)
    {
      v9 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_25EB30D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for PSSGGraphID(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_25EB6E5F8();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_25EB6E5F8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25EB30E8C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_25EB30EE8(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25EB30F70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25EB30FB8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_7Polaris16PSSGGraphIDSwiftVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_25EB31030(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25EB31078(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25EB310E4(uint64_t a1, int a2)
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

uint64_t sub_25EB3112C(uint64_t result, int a2, int a3)
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

unint64_t sub_25EB311B4()
{
  result = qword_27FD122E8;
  if (!qword_27FD122E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD122E8);
  }

  return result;
}

unint64_t sub_25EB3120C()
{
  result = qword_27FD122F0;
  if (!qword_27FD122F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD122F0);
  }

  return result;
}

unint64_t sub_25EB31264()
{
  result = qword_27FD122F8;
  if (!qword_27FD122F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD122F8);
  }

  return result;
}

unint64_t sub_25EB312BC()
{
  result = qword_27FD12300;
  if (!qword_27FD12300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12300);
  }

  return result;
}

unint64_t sub_25EB31314()
{
  result = qword_27FD12308;
  if (!qword_27FD12308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12308);
  }

  return result;
}

unint64_t sub_25EB3136C()
{
  result = qword_27FD12310;
  if (!qword_27FD12310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12310);
  }

  return result;
}

unint64_t sub_25EB313C0()
{
  result = qword_27FD12320;
  if (!qword_27FD12320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12320);
  }

  return result;
}

unint64_t sub_25EB31414()
{
  result = qword_27FD12338;
  if (!qword_27FD12338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD12330, &qword_25EB79518);
    sub_25EB31498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12338);
  }

  return result;
}

unint64_t sub_25EB31498()
{
  result = qword_27FD12340;
  if (!qword_27FD12340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12340);
  }

  return result;
}

unint64_t sub_25EB314EC()
{
  result = qword_27FD12350;
  if (!qword_27FD12350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD12348, &qword_25EB79520);
    sub_25EB24FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12350);
  }

  return result;
}

unint64_t sub_25EB31570()
{
  result = qword_27FD12360;
  if (!qword_27FD12360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12360);
  }

  return result;
}

void sub_25EB315C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_25EB31608()
{
  result = qword_27FD12370;
  if (!qword_27FD12370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD12368, &qword_25EB79530);
    sub_25EB24EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12370);
  }

  return result;
}

unint64_t sub_25EB3168C()
{
  result = qword_27FD12388;
  if (!qword_27FD12388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD12330, &qword_25EB79518);
    sub_25EB31710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12388);
  }

  return result;
}

unint64_t sub_25EB31710()
{
  result = qword_27FD12390;
  if (!qword_27FD12390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12390);
  }

  return result;
}

unint64_t sub_25EB31764()
{
  result = qword_27FD12398;
  if (!qword_27FD12398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD12348, &qword_25EB79520);
    sub_25EB30590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12398);
  }

  return result;
}

unint64_t sub_25EB317E8()
{
  result = qword_27FD123A8;
  if (!qword_27FD123A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD12368, &qword_25EB79530);
    sub_25EB304E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD123A8);
  }

  return result;
}

uint64_t sub_25EB3186C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25EB318AC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25EB31914(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_25EB31954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v8 = a2;
  v9 = a1;
  v7 = a3;
  v4(&v6, &v9, &v8, &v7);
  return v6;
}

uint64_t sub_25EB319A0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_25EB319D8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = (*(v4 + 16))(*a1, *a2, *a3);
  *a4 = result & 1;
  return result;
}

uint64_t sub_25EB31A70(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_25EB31AB8(uint64_t *a1, int a2)
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

uint64_t sub_25EB31B00(uint64_t result, int a2, int a3)
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

uint64_t sub_25EB31B6C(uint64_t a1, int a2)
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

uint64_t sub_25EB31BB4(uint64_t result, int a2, int a3)
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

unint64_t sub_25EB31C10()
{
  result = qword_27FD12500;
  if (!qword_27FD12500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12500);
  }

  return result;
}

unint64_t sub_25EB31C68()
{
  result = qword_27FD12508;
  if (!qword_27FD12508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12508);
  }

  return result;
}

unint64_t sub_25EB31CC0()
{
  result = qword_27FD12510;
  if (!qword_27FD12510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12510);
  }

  return result;
}

unint64_t sub_25EB31D18()
{
  result = qword_27FD12518;
  if (!qword_27FD12518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12518);
  }

  return result;
}

unint64_t sub_25EB31D70()
{
  result = qword_27FD12520;
  if (!qword_27FD12520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12520);
  }

  return result;
}

unint64_t sub_25EB31DC8()
{
  result = qword_27FD12528;
  if (!qword_27FD12528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12528);
  }

  return result;
}

unint64_t sub_25EB31E1C()
{
  result = qword_27FD12538;
  if (!qword_27FD12538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12538);
  }

  return result;
}

uint64_t sub_25EB31E70(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25EB31F00(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25EB31FC4()
{
  result = qword_27FD12558;
  if (!qword_27FD12558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12558);
  }

  return result;
}

unint64_t sub_25EB3201C()
{
  result = qword_27FD12560;
  if (!qword_27FD12560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12560);
  }

  return result;
}

unint64_t sub_25EB32074()
{
  result = qword_27FD12568;
  if (!qword_27FD12568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD12568);
  }

  return result;
}

id PSSGResourceIDSwift.toObjC()()
{
  if (*(v0 + 24))
  {
    v1 = objc_allocWithZone(PSSGResourceID);

    v2 = sub_25EB6E258();
    v3 = sub_25EB6E258();

    v4 = [v1 initLocalWithName:v2 session:v3];
  }

  else
  {
    v5 = objc_allocWithZone(PSSGResourceID);
    v3 = sub_25EB6E258();
    v4 = [v5 initGlobalWithName_];
  }

  return v4;
}

Polaris::PSSGResourceIDSwift __swiftcall PSSGResourceID.toSwift()()
{
  v2 = v0;
  v3 = v1;

  sub_25EB33B24(v3, v2);
  result.session.value._object = v7;
  result.session.value._countAndFlagsBits = v6;
  result.name._object = v5;
  result.name._countAndFlagsBits = v4;
  return result;
}

id PSSGGraphIDSwift.toObjC()()
{
  v0 = objc_allocWithZone(PSSGGraphID);
  v1 = sub_25EB6E258();
  v2 = sub_25EB6E258();
  v3 = [v0 initWithName:v1 session:v2];

  return v3;
}

id sub_25EB3235C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ps_resource_storage_mode_description();
  v8 = sub_25EB6E2F8();
  v10 = v9;
  ps_resource_storage_mode_description();
  v11 = sub_25EB6E2F8();
  v12 = v8;
  v14 = v13;
  if (v12 == a5 && v10 == a6)
  {

LABEL_8:

    v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v19 = sub_25EB6E258();

    v20 = [v18 initGlobalWithName_];
    goto LABEL_9;
  }

  v16 = v11;
  v17 = sub_25EB6E988();

  if (v17)
  {
    goto LABEL_8;
  }

  if (v16 == a5 && v14 == a6)
  {
  }

  else
  {
    v22 = sub_25EB6E988();

    if ((v22 & 1) == 0)
    {

      return 0;
    }
  }

  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = sub_25EB6E258();

  v19 = sub_25EB6E258();

  v20 = [v23 initLocalWithName:v24 session:v19];

LABEL_9:
  return v20;
}

uint64_t PSSGGraphID.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___PSSGGraphID_name);

  return v1;
}

uint64_t PSSGGraphID.session.getter()
{
  v1 = *(v0 + OBJC_IVAR___PSSGGraphID_session);

  return v1;
}

void PSSGGraphIDSwift.init(fromObjC:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 name];
  v5 = sub_25EB6E268();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  v8 = [a1 session];
  v9 = sub_25EB6E268();
  v11 = v10;

  a2[2] = v9;
  a2[3] = v11;
}

uint64_t PSSGGraphID.isEqual(_:)(uint64_t a1)
{
  v2 = sub_25EB33BD4(a1, v23);
  if (!v24)
  {
    sub_25EB33C44(v23);
    goto LABEL_7;
  }

  type metadata accessor for PSSGGraphID(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v11 = 0;
    return v11 & 1;
  }

  v3 = [v1 name];
  v4 = sub_25EB6E268();
  v6 = v5;

  v7 = [v22 name];
  v8 = sub_25EB6E268();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {

    goto LABEL_9;
  }

  v12 = sub_25EB6E988();

  if ((v12 & 1) == 0)
  {

    goto LABEL_7;
  }

LABEL_9:
  v13 = [v1 session];
  v14 = sub_25EB6E268();
  v16 = v15;

  v17 = [v22 session];
  v18 = sub_25EB6E268();
  v20 = v19;

  if (v14 == v18 && v16 == v20)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25EB6E988();
  }

  return v11 & 1;
}

uint64_t PSSGGraphID.hash.getter()
{
  v1 = v0;
  v2 = [v0 name];
  sub_25EB6E268();

  sub_25EB33CC0();
  v3 = sub_25EB6E538();

  v4 = [v1 session];
  sub_25EB6E268();

  v5 = sub_25EB6E538();

  return v5 ^ v3;
}

uint64_t PSSGGraphID.description.getter()
{
  v1 = v0;
  v2 = [v0 session];
  v3 = sub_25EB6E268();

  MEMORY[0x25F8C69B0](8250, 0xE200000000000000);

  v4 = [v1 name];
  v5 = sub_25EB6E268();
  v7 = v6;

  MEMORY[0x25F8C69B0](v5, v7);

  return v3;
}

uint64_t sub_25EB32C18@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 name];
  if (!v4)
  {
    sub_25EB6E268();
    v4 = sub_25EB6E258();
  }

  v5 = [v2 session];
  if (!v5)
  {
    sub_25EB6E268();
    v5 = sub_25EB6E258();
  }

  v6 = [objc_allocWithZone(PSSGGraphID) initWithName:v4 session:v5];

  result = type metadata accessor for PSSGGraphID(v7);
  a1[3] = result;
  *a1 = v6;
  return result;
}

uint64_t static PSSGGraphIDSwift.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25EB6E988(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_25EB6E988();
    }
  }

  return result;
}

uint64_t sub_25EB32E60()
{
  if (*v0)
  {
    return 0x6E6F6973736573;
  }

  else
  {
    return 1701667182;
  }
}