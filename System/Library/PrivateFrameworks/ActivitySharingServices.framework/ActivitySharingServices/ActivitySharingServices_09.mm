uint64_t sub_221F771A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E9544C;

  return sub_221F766AC(a1);
}

uint64_t sub_221F77250(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221F749C8(a1, v4);
}

uint64_t sub_221F772EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221F75578(a1, v4);
}

unint64_t *sub_221F77388(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_221F79338(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_221F77438(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_221FB6948();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_221FB6748();
    v19 = -1 << *(v11 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 48) + 8 * v22) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *sub_221F77624(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_221F776E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_221F77644(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_221F77800(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_221F77664(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_221F7790C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_221F77684(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_221F77B44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_221F776A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_221F77D1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_221F776C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_221F77F0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_221F776E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC1E8, &unk_221FBAD80);
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

char *sub_221F77800(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB78, &unk_221FBB910);
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

void *sub_221F7790C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC9F0, &unk_221FBE480);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD70, &unk_221FB9550);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_221F77A40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB38, &qword_221FB8A00);
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

void *sub_221F77B44(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC1F0, &qword_221FBAD90);
  v10 = *(sub_221FB5C38() - 8);
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
  v15 = *(sub_221FB5C38() - 8);
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

void *sub_221F77D1C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC9E8, &qword_221FBE478);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0) - 8);
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

char *sub_221F77F0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC9E0, &unk_221FBE468);
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

uint64_t sub_221F78008(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_221ED4B5C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_221ED5174(v16, a4 & 1);
      v11 = sub_221ED4B5C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_221FB6B98();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_221ED6B78();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_221F78180(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_221ED4C18(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_221ED5418(v13, a3 & 1);
      v8 = sub_221ED4C18(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
        sub_221FB6B98();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_221ED6CE4();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return MEMORY[0x2821F9840]();
}

_OWORD *sub_221F782F8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_221ED4BD4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_221ED70F8();
      goto LABEL_7;
    }

    sub_221ED5B84(v13, a3 & 1);
    v19 = sub_221ED4BD4(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_221EC5220(a2, v21);
      return sub_221F78A2C(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_221FB6B98();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_221EC45F0(a1, v17);
}

unint64_t sub_221F78444(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_221ED4C68(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_221ED5E3C(v14, a3 & 1);
      result = sub_221ED4C68(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_221FB6B98();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_221ED729C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_221F78590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_221ED4B5C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_221ED6354(v18, a5 & 1);
      v13 = sub_221ED4B5C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_221FB6B98();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_221ED7588();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_221F78718(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_221ED4B5C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_221ED660C(v16, a4 & 1);
      v11 = sub_221ED4B5C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_221FB6B98();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_221ED7708();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

_OWORD *sub_221F78894(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_221ED4B5C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_221ED771C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_221ED6620(v16, a4 & 1);
    v11 = sub_221ED4B5C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_221FB6B98();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_221EC45F0(a1, v22);
  }

  else
  {
    sub_221F78AEC(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_221F789E4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

_OWORD *sub_221F78A2C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_221EC45F0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_221F78AA8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

_OWORD *sub_221F78AEC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_221EC45F0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_221F78B80(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x223DACC50](a1, a2, v11);
      sub_221E9D138(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_221E9D138(0, a5, a6);
    if (sub_221FB6848() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_221FB6858();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_221FB6748();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_221FB6758();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
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

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

uint64_t sub_221F78D98(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_221F78DEC(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_221F15684(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_221F78E6C(uint64_t a1, uint64_t a2)
{
  v25 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_221FB6868();
    result = MEMORY[0x277D84F90];
    if (!v3)
    {
      return result;
    }

    v31 = MEMORY[0x277D84F90];
    sub_221FB69D8();
    result = sub_221FB6818();
    v28 = result;
    v29 = v5;
    v30 = 1;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v3)
  {
    return result;
  }

  v31 = MEMORY[0x277D84F90];
  sub_221FB69D8();
  result = sub_221FB67E8();
  v6 = *(a1 + 36);
  v28 = result;
  v29 = v6;
  v30 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v3)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v10 = v28;
    v11 = v29;
    v12 = v30;
    sub_221F78B80(v28, v29, v30, a1, &qword_27CFEBB00, 0x277CCDDD0);
    v14 = v13;
    v15 = [v13 recordWithZoneID:a2 recordEncryptionType:1];

    sub_221FB69B8();
    sub_221FB69E8();
    sub_221FB69F8();
    result = sub_221FB69C8();
    if (v25)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (sub_221FB6838())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC9D8, &unk_221FBE458);
      v8 = sub_221FB6528();
      sub_221FB68B8();
      result = v8(v27, 0);
      if (v7 == v3)
      {
LABEL_28:
        sub_221EB9940(v28, v29, v30);
        return v31;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v16 = 1 << *(a1 + 32);
      if (v10 >= v16)
      {
        goto LABEL_32;
      }

      v17 = v10 >> 6;
      v18 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v18 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v11)
      {
        goto LABEL_34;
      }

      v19 = v18 & (-2 << (v10 & 0x3F));
      if (v19)
      {
        v16 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v17 << 6;
        v21 = v17 + 1;
        v22 = (a1 + 64 + 8 * v17);
        while (v21 < (v16 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_221EB9940(v10, v11, 0);
            v16 = __clz(__rbit64(v23)) + v20;
            goto LABEL_27;
          }
        }

        result = sub_221EB9940(v10, v11, 0);
      }

LABEL_27:
      v28 = v16;
      v29 = v11;
      v30 = 0;
      if (v7 == v3)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_221F7919C(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E9544C;

  return sub_221F73C7C(a1, a2, v6, v7, v8);
}

uint64_t sub_221F79260(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_221E963B4;

  return sub_221F72584(a1, a2, v6, v7, v8, v9, v10);
}

void sub_221F79338(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v40 = a1;
  v6 = sub_221FB5C38();
  v7 = MEMORY[0x28223BE20](v6);
  v51 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v43 = a3;
  v44 = 0;
  v12 = 0;
  v13 = *(a3 + 56);
  v39 = a3 + 56;
  v14 = 1 << *(a3 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v52 = a4 + 56;
  v53 = a4;
  v50 = v9 + 16;
  v41 = v17;
  v42 = v9;
  v54 = (v9 + 8);
LABEL_6:
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_13:
    v21 = v18 | (v12 << 6);
    v22 = *(v43 + 48);
    v46 = v21;
    v49 = *(v22 + 8 * v21);
    v23 = [v49 UUID];
    sub_221FB5C18();

    v24 = *(a4 + 16);
    v45 = v54 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v24 && (sub_221F182A4(&qword_27CFEC2C8, MEMORY[0x277CC9600]), v25 = sub_221FB62A8(), v26 = -1 << *(a4 + 32), v27 = v25 & ~v26, ((*(v52 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0))
    {
      v47 = v16;
      v48 = v12;
      v28 = v11;
      v29 = ~v26;
      v30 = *(v42 + 72);
      v31 = *(v42 + 16);
      do
      {
        v32 = v51;
        v31(v51, *(v53 + 48) + v30 * v27, v6);
        sub_221F182A4(&qword_27CFEC260, MEMORY[0x277CC9610]);
        v33 = sub_221FB62D8();
        v34 = *v54;
        (*v54)(v32, v6);
        if (v33)
        {
          v11 = v28;
          v34(v28, v6);

          a4 = v53;
          v16 = v47;
          v12 = v48;
          v17 = v41;
          goto LABEL_6;
        }

        v27 = (v27 + 1) & v29;
      }

      while (((*(v52 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0);
      a4 = v53;
      v11 = v28;
      v16 = v47;
      v12 = v48;
      v17 = v41;
      v34(v11, v6);
    }

    else
    {
      (*v54)(v11, v6);
    }

    *(v40 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
    if (__OFADD__(v44++, 1))
    {
      goto LABEL_25;
    }
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      v36 = v43;

      sub_221F77438(v40, v38, v44, v36, &qword_27CFEC2D8, &qword_221FBB760);
      return;
    }

    v20 = *(v39 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_221F79710(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = *MEMORY[0x277D85DE8];
  v6 = sub_221FB5C38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v56 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v41 - v10;
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;

  if (v12 > 0xD)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v42 = v13;
    v43 = v3;
    v41 = &v41;
    MEMORY[0x28223BE20](v15);
    v45 = &v41 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v45, v14);
    v49 = 0;
    v3 = 0;
    v16 = *(a1 + 56);
    v44 = a1 + 56;
    v17 = 1 << *(a1 + 32);
    v18 = v17 < 64 ? ~(-1 << v17) : -1;
    v19 = v18 & v16;
    v13 = (v17 + 63) >> 6;
    v57 = a2 + 56;
    v55 = v7 + 16;
    v59 = (v7 + 8);
    v14 = v58;
    v47 = a1;
    v48 = v7;
    v46 = v13;
LABEL_7:
    while (v19)
    {
      v20 = __clz(__rbit64(v19));
      v54 = (v19 - 1) & v19;
LABEL_14:
      v23 = v20 | (v3 << 6);
      v24 = *(a1 + 48);
      v51 = v23;
      v53 = *(v24 + 8 * v23);
      v25 = [v53 UUID];
      sub_221FB5C18();

      v26 = *(a2 + 16);
      v50 = v59 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v26 && (sub_221F182A4(&qword_27CFEC2C8, MEMORY[0x277CC9600]), v27 = sub_221FB62A8(), v28 = -1 << *(a2 + 32), v29 = v27 & ~v28, ((*(v57 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
      {
        v52 = v3;
        v30 = a2;
        v31 = ~v28;
        v32 = *(v7 + 72);
        v33 = *(v7 + 16);
        do
        {
          v34 = v56;
          v33(v56, *(v30 + 48) + v32 * v29, v6);
          sub_221F182A4(&qword_27CFEC260, MEMORY[0x277CC9610]);
          v35 = sub_221FB62D8();
          v36 = *v59;
          (*v59)(v34, v6);
          if (v35)
          {
            v14 = v58;
            v36(v58, v6);

            a2 = v30;
            a1 = v47;
            v7 = v48;
            v3 = v52;
            v13 = v46;
            v19 = v54;
            goto LABEL_7;
          }

          v29 = (v29 + 1) & v31;
        }

        while (((*(v57 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0);
        a2 = v30;
        v13 = v46;
        a1 = v47;
        v14 = v58;
        v3 = v52;
        v36(v58, v6);
      }

      else
      {
        (*v59)(v14, v6);
      }

      *&v45[(v51 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v51;
      v7 = v48;
      v37 = __OFADD__(v49++, 1);
      v19 = v54;
      if (v37)
      {
        goto LABEL_27;
      }
    }

    v21 = v3;
    while (1)
    {
      v3 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v3 >= v13)
      {
        v38 = sub_221F77438(v45, v42, v49, a1, &qword_27CFEC2D8, &qword_221FBB760);

        return v38;
      }

      v22 = *(v44 + 8 * v3);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v54 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v40 = swift_slowAlloc();

  v38 = sub_221F77388(v40, v13, a1, a2);

  MEMORY[0x223DADA80](v40, -1, -1);

  return v38;
}

uint64_t sub_221F79C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_221FB5C38();
  v40 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v47 = &v39 - v9;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_221F79710(v8, a2);
  }

  v10 = MEMORY[0x277D84FA0];
  v50 = MEMORY[0x277D84FA0];

  v42 = sub_221FB6828();
  v11 = sub_221FB6898();
  if (v11)
  {
    v12 = v11;
    v41 = sub_221E9D138(0, &qword_27CFEBB00, 0x277CCDDD0);
    v13 = v12;
    v44 = v40 + 16;
    v45 = a2 + 56;
    v14 = (v40 + 8);
    v43 = MEMORY[0x277D84FA0];
    v46 = a2;
    do
    {
      v48 = v13;
      swift_dynamicCast();
      v23 = [v49 UUID];
      sub_221FB5C18();

      if (*(a2 + 16) && (sub_221F182A4(&qword_27CFEC2C8, MEMORY[0x277CC9600]), v24 = sub_221FB62A8(), v25 = v46, v26 = -1 << *(v46 + 32), v27 = v24 & ~v26, ((*(v45 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0))
      {
        v28 = ~v26;
        v29 = *(v40 + 72);
        v30 = *(v40 + 16);
        while (1)
        {
          v30(v7, *(v25 + 48) + v29 * v27, v4);
          sub_221F182A4(&qword_27CFEC260, MEMORY[0x277CC9610]);
          v31 = sub_221FB62D8();
          v32 = *v14;
          (*v14)(v7, v4);
          if (v31)
          {
            break;
          }

          v27 = (v27 + 1) & v28;
          v25 = v46;
          if (((*(v45 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        v32(v47, v4);
      }

      else
      {
LABEL_13:
        (*v14)(v47, v4);
        v33 = v49;
        v34 = *(v43 + 16);
        if (*(v43 + 24) <= v34)
        {
          sub_221F16528(v34 + 1);
        }

        v15 = v50;
        result = sub_221FB6748();
        v17 = v15 + 56;
        v18 = -1 << *(v15 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v15 + 56 + 8 * (v19 >> 6))) != 0)
        {
          v21 = __clz(__rbit64((-1 << v19) & ~*(v15 + 56 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v35 = 0;
          v36 = (63 - v18) >> 6;
          do
          {
            if (++v20 == v36 && (v35 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v37 = v20 == v36;
            if (v20 == v36)
            {
              v20 = 0;
            }

            v35 |= v37;
            v38 = *(v17 + 8 * v20);
          }

          while (v38 == -1);
          v21 = __clz(__rbit64(~v38)) + (v20 << 6);
        }

        *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v15 + 48) + 8 * v21) = v33;
        v22 = *(v15 + 16) + 1;
        v43 = v15;
        *(v15 + 16) = v22;
      }

      v13 = sub_221FB6898();
      a2 = v46;
    }

    while (v13);
  }

  else
  {
    v43 = v10;
  }

  return v43;
}

uint64_t sub_221F7A08C(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return v7(a1, a2);
}

uint64_t sub_221F7A1A4(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return v7(a1, a2);
}

uint64_t sub_221F7A2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E9E350;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221F7A3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_221F7A52C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_221F7A52C(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

uint64_t sub_221F7A630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E9544C;

  return v11(a1, a2, a3, a4);
}

char *sub_221F7A760(void *a1, void *a2)
{
  v4 = sub_221FB5C38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 UUID];
  if (v8)
  {
    v9 = v8;
    sub_221FB5C18();

    v10 = sub_221FB5BE8();
    v12 = v11;
    (*(v5 + 8))(v7, v4);
    v13 = sub_221ECB14C(v10, v12);

    if (!v13)
    {
      v13 = sub_221ED7E7C(MEMORY[0x277D84F90]);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECA00, qword_221FBE618);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221FB81A0;
    *(inited + 32) = [a1 _activitySummaryIndex];
    *(inited + 40) = sub_221F8F248();
    v15 = sub_221ED7E7C(inited);
    swift_setDeallocating();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v13;
    sub_221F7AF4C(v15, sub_221F7B170, 0, isUniquelyReferenced_nonNull_native, &v20);
    v17 = sub_221F91EF8(3, v20);

    return v17;
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_221F7A96C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));

  sub_221ED9A18(*(v0 + 176));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_221F7AA68(uint64_t a1)
{
  result = sub_221F7AA90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_221F7AA90()
{
  result = qword_27CFEC9F8;
  if (!qword_27CFEC9F8)
  {
    type metadata accessor for ActivitySnapshotSummaryStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC9F8);
  }

  return result;
}

uint64_t sub_221F7AAE4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_221FB5C38();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F7ABA8, v2, 0);
}

id sub_221F7ABA8()
{
  if (*(*(v0 + 32) + 176) >= 2uLL)
  {
    v4 = *(v0 + 24);
    v5 = sub_221F7A760(*(v0 + 16), v4);
    *(v0 + 64) = v5;
    result = [v4 UUID];
    if (result)
    {
      v6 = result;
      v8 = *(v0 + 48);
      v7 = *(v0 + 56);
      v9 = *(v0 + 40);
      sub_221FB5C18();

      v10 = sub_221FB5BE8();
      v12 = v11;
      *(v0 + 72) = v11;
      (*(v8 + 8))(v7, v9);
      v13 = swift_task_alloc();
      *(v0 + 80) = v13;
      *v13 = v0;
      v13[1] = sub_221F7AD68;

      return sub_221ECFCA8(v5, v10, v12);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_221ED8D78();
    swift_allocError();
    *v1 = 0;
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }

  return result;
}

uint64_t sub_221F7AD68()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x2822009F8](sub_221F7AEE8, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_221F7AEE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F7AF4C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v36 = a5;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
    v12 = v11;
LABEL_11:
    v13 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
    v14 = *(*(a1 + 48) + v13);
    v15 = *(*(a1 + 56) + v13);
    v35[0] = v14;
    v35[1] = v15;
    a2(v34, v35);
    v17 = v34[0];
    v16 = v34[1];
    v18 = *v36;
    v19 = sub_221ED4C68(v34[0]);
    v21 = v18[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_22;
    }

    v25 = v20;
    if (v18[3] >= v24)
    {
      if ((a4 & 1) == 0)
      {
        v31 = v19;
        sub_221ED6E44();
        v19 = v31;
      }
    }

    else
    {
      sub_221ED5680(v24, a4 & 1);
      v19 = sub_221ED4C68(v17);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_24;
      }
    }

    v9 &= v9 - 1;
    v27 = *v36;
    if (v25)
    {
      *(v27[7] + 8 * v19) = v16;
    }

    else
    {
      v27[(v19 >> 6) + 8] |= 1 << v19;
      *(v27[6] + 8 * v19) = v17;
      *(v27[7] + 8 * v19) = v16;
      v28 = v27[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      v27[2] = v29;
    }

    a4 = 1;
    v11 = v12;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_221FB6B98();
  __break(1u);
  return result;
}

__n128 sub_221F7B170@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_221F7B1E0(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221EE581C;

  return v7(a1, a2);
}

uint64_t sub_221F7B2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E9E350;

  return v9(a1, a2, a3);
}

void sub_221F7B420(uint64_t a1)
{
  v1 = a1;
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_221FB6868();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v38 = MEMORY[0x277D84F90];
    sub_221E94E24(0, v2 & ~(v2 >> 63), 0);
    v33 = v38;
    if (v32)
    {
      v3 = sub_221FB6818();
    }

    else
    {
      v3 = sub_221FB67E8();
      v4 = *(v1 + 36);
    }

    v35 = v3;
    v36 = v4;
    v37 = v32 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v30 = v1 + 56;
      v29 = v1 + 64;
      v31 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v9 = v35;
        v8 = v36;
        v10 = v37;
        v11 = v1;
        sub_221F78B58(v35, v36, v37, v1);
        v13 = v12;
        v14 = [v12 dictionaryRepresentation];
        v15 = sub_221FB6288();

        v16 = v33;
        v38 = v33;
        v18 = *(v33 + 16);
        v17 = *(v33 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_221E94E24((v17 > 1), v18 + 1, 1);
          v16 = v38;
        }

        *(v16 + 16) = v18 + 1;
        *(v16 + 8 * v18 + 32) = v15;
        v33 = v16;
        if (v32)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_221FB6838())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECA10, &qword_221FBE698);
          v6 = sub_221FB6528();
          sub_221FB68B8();
          v6(v34, 0);
          if (v5 == v31)
          {
LABEL_32:
            sub_221EB9940(v35, v36, v37);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v19 = 1 << *(v11 + 32);
          if (v9 >= v19)
          {
            goto LABEL_36;
          }

          v20 = v9 >> 6;
          v21 = *(v30 + 8 * (v9 >> 6));
          if (((v21 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_38;
          }

          v22 = v21 & (-2 << (v9 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v31;
          }

          else
          {
            v23 = v20 << 6;
            v24 = v20 + 1;
            v25 = (v29 + 8 * v20);
            v2 = v31;
            while (v24 < (v19 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                sub_221EB9940(v9, v8, 0);
                v19 = __clz(__rbit64(v26)) + v23;
                goto LABEL_31;
              }
            }

            sub_221EB9940(v9, v8, 0);
          }

LABEL_31:
          v28 = *(v1 + 36);
          v35 = v19;
          v36 = v28;
          v37 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_221F7B7A4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v8 = *v7;
      v9 = *(v7 - 8);
      v14 = *(v7 - 2);
      v15 = v9;
      v16 = v8;
      v10 = v14;
      v11 = a1(&v14);

      if (v3)
      {
        break;
      }

      v7 += 3;
      v12 = v6-- == 0;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_221F7B864(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_221F7B910(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x223DACD50](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_221FB6868();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_221F7BA38@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v6)
  {
    v6 = [objc_opt_self() standardUserDefaults];
  }

  _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  *(a3 + 56) = 7;
  v7 = MEMORY[0x277D84F90];
  *(a3 + 64) = MEMORY[0x277D84F90];
  *(a3 + 72) = v6;
  sub_221EA4AB4(a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECA08, &qword_221FBE690);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *(v8 + 16) = v7;
  *(a3 + 40) = a2;
  *(a3 + 48) = v8;
  return result;
}

void sub_221F7BB1C()
{
  v1 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_221E93000, v3, v4, "Clearing collected cloud devices", v5, 2u);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v6 = *(v1 + 48);
  os_unfair_lock_lock((v6 + 24));

  *(v6 + 16) = MEMORY[0x277D84F90];

  os_unfair_lock_unlock((v6 + 24));
}

void sub_221F7BC68()
{
  sub_221E94E44();
  v2 = sub_221F17BE0(v1);

  v3 = *(v0 + 48);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));
  v5 = sub_221F17BE0(v4);

  sub_221F71510(v2, v5);
  sub_221F7B420(v6);
  v7 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC218, &qword_221FBE680);
  v8 = sub_221FB6428();

  sub_221FB5D88();
  v9 = sub_221FB62E8();

  [v7 setObject:v8 forKey:v9];

  sub_221F7BB1C();
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v10 = sub_221FB61D8();
  __swift_project_value_buffer(v10, qword_281307DF0);

  oslog = sub_221FB61B8();
  v11 = sub_221FB65C8();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    sub_221EA97E8();
    sub_221F7C720();
    v14 = sub_221FB6508();
    v16 = v15;

    v17 = sub_221EF4114(v14, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_221E93000, oslog, v11, "Updated cloud devices from merge %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

  else
  {
  }
}

void sub_221F7BED4()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));

  v4 = sub_221F17BE0(v3);

  sub_221F7B420(v4);

  v5 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC218, &qword_221FBE680);
  v6 = sub_221FB6428();

  sub_221FB5D88();
  v7 = sub_221FB62E8();

  [v5 setObject:v6 forKey:v7];

  sub_221F7BB1C();
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v8 = sub_221FB61D8();
  __swift_project_value_buffer(v8, qword_281307DF0);

  oslog = sub_221FB61B8();
  v9 = sub_221FB65C8();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = sub_221EA97E8();
    v13 = MEMORY[0x223DAC810](v2, v12);
    v15 = v14;

    v16 = sub_221EF4114(v13, v15, &v18);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_221E93000, oslog, v9, "Updated cloud devices from apply %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223DADA80](v11, -1, -1);
    MEMORY[0x223DADA80](v10, -1, -1);
  }

  else
  {
  }
}

void sub_221F7C11C()
{
  v1 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_221E93000, v3, v4, "Clearing stored cloud devices", v5, 2u);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v6 = *(v1 + 40);
  v7 = sub_221FB6428();
  sub_221FB5D88();
  v8 = sub_221FB62E8();

  [v6 setObject:v7 forKey:v8];
}

uint64_t sub_221F7C268(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x2822009F8](sub_221F7C28C, 0, 0);
}

uint64_t sub_221F7C28C()
{
  sub_221E94E44();
  v2 = v1;
  v21 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_16:
    v3 = sub_221FB6868();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x223DACD50](v4, v2);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v9 = v21;
            goto LABEL_18;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v5 = *(v2 + 8 * v4 + 32);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        v7 = v5;
        v8 = sub_221FB6588();

        if (v8)
        {
          sub_221FB69B8();
          sub_221FB69E8();
          sub_221FB69F8();
          sub_221FB69C8();
        }

        else
        {
        }

        ++v4;
        if (v6 == v3)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_18:
  v10 = *(v0 + 16);

  v11 = swift_task_alloc();
  *(v11 + 16) = v10;
  v12 = sub_221F54478(sub_221F7C650, v11, v9);

  if (v12 >> 62)
  {
LABEL_36:
    v13 = sub_221FB6868();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = v13 != 0;
  if (v13 && (*(v0 + 24) & 1) == 0)
  {
    v15 = 0;
    do
    {
      v14 = v13 == v15;
      if (v13 == v15)
      {
        break;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x223DACD50](v15, v12);
        if (__OFADD__(v15, 1))
        {
LABEL_31:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_36;
        }

        v16 = *(v12 + 8 * v15 + 32);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_31;
        }
      }

      v17 = v16;
      v18 = sub_221FB6598();

      ++v15;
    }

    while ((v18 & 1) != 0);
  }

  v19 = *(v0 + 8);

  return v19(v14);
}

BOOL sub_221F7C51C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 56);
  v4 = *(a2 + 64);
  v5 = *(a2 + 72);
  if ((_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0() & 1) != 0 && (LOBYTE(v15[0]) = v3, v6 = UserDefaultsKeys.rawValue.getter(), v7 = _sSa23ActivitySharingServicesSSRszlE4read4from3keySaySSGSgSo14NSUserDefaultsC_SStFZ_0(v5, v6), , v7))
  {
    v4 = v7;
  }

  else
  {
  }

  v8 = [v2 identifier];
  v9 = sub_221FB6318();
  v11 = v10;

  v15[0] = v9;
  v15[1] = v11;
  MEMORY[0x28223BE20](v12);
  v14[2] = v15;
  LOBYTE(v8) = sub_221F7B864(sub_221F7C6C8, v14, v4);

  return (v8 & 1) == 0;
}

uint64_t sub_221F7C670(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_221FB6B58() & 1;
  }
}

uint64_t sub_221F7C6C8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_221FB6B58() & 1;
  }
}

unint64_t sub_221F7C720()
{
  result = qword_281306EF8;
  if (!qword_281306EF8)
  {
    sub_221EA97E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281306EF8);
  }

  return result;
}

uint64_t sub_221F7C7A4(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9606C;

  return v7(a1, a2);
}

uint64_t sub_221F7C8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E96070;

  return v9(a1, a2, a3);
}

uint64_t sub_221F7C9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E9544C;

  return v9(a1, a2, a3);
}

uint64_t sub_221F7CB1C(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v2[20] = type metadata accessor for IDSErrorAction(0);
  v2[21] = swift_task_alloc();
  v3 = sub_221FB5FF8();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v4 = sub_221FB5C38();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F7CC74, 0, 0);
}

uint64_t sub_221F7CC74(uint64_t a1)
{
  v50 = v1;
  sub_221FB5FA8();
  v2 = sub_221FB62E8();

  v3 = ASContactForOutgoingHandshakeTokenWithManager();
  v1[29] = v3;

  if (v3)
  {
    v4 = [v3 relationshipStorage];
    v5 = [v4 legacyRelationship];
    v1[30] = v5;

    v6 = [v5 preferredReachableAddress];
    v1[31] = v6;
    if (v6)
    {
      v7 = v6;
      v8 = sub_221FB6318();
      v10 = v9;
      v1[32] = v8;
      v1[33] = v9;
      v11 = [v5 preferredReachableService];
      v1[34] = v11;
      if (v11)
      {
        v1[35] = sub_221FB6318();
        v1[36] = v12;
        if (qword_281307080 != -1)
        {
          swift_once();
        }

        v13 = sub_221FB61D8();
        v1[37] = __swift_project_value_buffer(v13, qword_281307DF0);

        v14 = sub_221FB61B8();
        v15 = sub_221FB65C8();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v49 = v17;
          *v16 = 136315138;
          *(v16 + 4) = sub_221EF4114(v8, v10, &v49);
          _os_log_impl(&dword_221E93000, v14, v15, "Withdraw any accepted secure cloud invites for %s", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v17);
          MEMORY[0x223DADA80](v17, -1, -1);
          MEMORY[0x223DADA80](v16, -1, -1);
        }

        __swift_project_boxed_opaque_existential_0Tm((v1[19] + 48), *(v1[19] + 72));
        v18 = [v3 UUID];
        sub_221FB5C18();

        v19 = swift_task_alloc();
        v1[38] = v19;
        *v19 = v1;
        v19[1] = sub_221F7D2C4;
        v20 = v1[28];

        return sub_221F5AC18(v20);
      }

      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v46 = sub_221FB61D8();
      __swift_project_value_buffer(v46, qword_281307DF0);
      v28 = sub_221FB61B8();
      v41 = sub_221FB65A8();
      if (!os_log_type_enabled(v28, v41))
      {
        goto LABEL_25;
      }

      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = "Legacy contact missing preferred service identifier for fallback";
    }

    else
    {
      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v40 = sub_221FB61D8();
      __swift_project_value_buffer(v40, qword_281307DF0);
      v28 = sub_221FB61B8();
      v41 = sub_221FB65A8();
      if (!os_log_type_enabled(v28, v41))
      {
        goto LABEL_25;
      }

      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = "Legacy contact missing preferred reachable address for fallback";
    }

    _os_log_impl(&dword_221E93000, v28, v41, v43, v42, 2u);
    MEMORY[0x223DADA80](v42, -1, -1);
LABEL_25:

    goto LABEL_26;
  }

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v22 = v1[25];
  v23 = v1[22];
  v24 = v1[23];
  v25 = v1[18];
  v26 = sub_221FB61D8();
  __swift_project_value_buffer(v26, qword_281307DF0);
  v27 = *(v24 + 16);
  v27(v22, v25, v23);
  v28 = sub_221FB61B8();
  v29 = sub_221FB65A8();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v1[25];
  if (v30)
  {
    v32 = v1[23];
    v33 = v1[24];
    v34 = v1[22];
    v35 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = v48;
    *v35 = 136315138;
    v27(v33, v31, v34);
    v36 = sub_221FB6328();
    v38 = v37;
    (*(v32 + 8))(v31, v34);
    v39 = sub_221EF4114(v36, v38, &v49);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_221E93000, v28, v29, "Handshake token in invite response does not match any contacts: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x223DADA80](v48, -1, -1);
    MEMORY[0x223DADA80](v35, -1, -1);
LABEL_26:

    goto LABEL_27;
  }

  v44 = v1[22];
  v45 = v1[23];

  (*(v45 + 8))(v31, v44);
LABEL_27:

  v47 = v1[1];

  return v47();
}

uint64_t sub_221F7D2C4()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = v2[34];
    v4 = v2[31];
    (*(v2[27] + 8))(v2[28], v2[26]);

    v5 = sub_221F7D6D8;
  }

  else
  {
    (*(v2[27] + 8))(v2[28], v2[26]);
    v5 = sub_221F7D43C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F7D43C()
{
  v18 = v0;

  v1 = sub_221FB61B8();
  v2 = sub_221FB65C8();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[36];
  if (v3)
  {
    v5 = v0[35];
    v7 = v0[32];
    v6 = v0[33];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    v10 = sub_221EF4114(v7, v6, &v17);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v11 = sub_221EF4114(v5, v4, &v17);

    *(v8 + 14) = v11;
    _os_log_impl(&dword_221E93000, v1, v2, "Sending fallback invitation to %s on %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[34];
  v13 = v0[31];
  v14 = *__swift_project_boxed_opaque_existential_0Tm((v0[19] + 8), *(v0[19] + 32));
  v0[2] = v0;
  v0[7] = v0 + 41;
  v0[3] = sub_221F7D7EC;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221FA909C;
  v0[13] = &block_descriptor_30;
  v0[14] = v15;
  [v14 sendInviteToPersonWithDestination:v13 callerID:0 serviceIdentifier:v12 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221F7D6D8()
{
  v1 = v0[39];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[21];
  *v4 = 1;
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for IDSError(0);
  sub_221EA49E8();
  swift_allocError();
  v7 = v6;
  sub_221EA4A40(v4, v6);
  *(v7 + *(v5 + 20)) = v1;
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_221F7D7EC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_221F7D9A4;
  }

  else
  {
    v2 = sub_221F7D8FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F7D8FC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_221F7D9A4(uint64_t a1)
{
  v2 = v1[34];
  v3 = v1[31];
  swift_willThrow();

  v4 = v1[40];
  v5 = v1[29];
  v6 = v1[30];
  v7 = v1[21];
  *v7 = 1;
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for IDSError(0);
  sub_221EA49E8();
  swift_allocError();
  v10 = v9;
  sub_221EA4A40(v7, v9);
  *(v10 + *(v8 + 20)) = v4;
  swift_willThrow();

  v11 = v1[1];

  return v11();
}

uint64_t sub_221F7DAF0(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return v7(a1, a2);
}

uint64_t sub_221F7DC08(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return v7(a1, a2);
}

uint64_t sub_221F7DD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221F7A52C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221F7DE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_221E9544C;

  return v13(a1, a2, a3, a4, a5);
}

unint64_t sub_221F7DFCC(uint64_t a1)
{
  result = sub_221F7DFF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_221F7DFF4()
{
  result = qword_27CFECA18;
  if (!qword_27CFECA18)
  {
    type metadata accessor for GoalCompletionAnchorStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFECA18);
  }

  return result;
}

uint64_t sub_221F7E068()
{
  v1 = v0[3];
  v2 = *(v1 + 112);
  if (v2)
  {
    v0[2] = v2;
    v3 = sub_221F7E7CC();
    v4 = swift_task_alloc();
    v0[4] = v4;
    *(v4 + 16) = v0 + 2;
    *(v4 + 24) = v1;

    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_221F7E1C4;
    v6 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v5, v1, v3, 0x29286B636F6CLL, 0xE600000000000000, sub_221F7E820, v4, v6);
  }

  else
  {
    *(v1 + 112) = MEMORY[0x277D84F90];
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_221F7E1C4()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_221F7E2F0, v1, 0);
}

uint64_t sub_221F7E2F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F7E350(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC208, &qword_221FBADA8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  (*(v7 + 16))(&v15 - v8, a1, v6);
  v10 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_221EF3E84(0, v10[2] + 1, 1, v10);
    *a2 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_221EF3E84((v12 > 1), v13 + 1, 1, v10);
    *a2 = v10;
  }

  v10[2] = v13 + 1;
  (*(v7 + 32))(v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v9, v6);
  *(a3 + 112) = *a2;
}

uint64_t sub_221F7E4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC208, &qword_221FBADA8);
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F7E5BC, a4, 0);
}

uint64_t sub_221F7E5BC()
{
  v1 = v0[2];
  v2 = *(v1 + 112);
  if (v2)
  {
    if (v2[2])
    {
      result = (*(v0[4] + 16))(v0[5], v2 + ((*(v0[4] + 80) + 32) & ~*(v0[4] + 80)), v0[3]);
      v4 = v2[2];
      if (!v4)
      {
        __break(1u);
        return result;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v4 - 1) > v2[3] >> 1)
      {
        v2 = sub_221EF3E84(isUniquelyReferenced_nonNull_native, v4, 1, v2);
      }

      v7 = v0[4];
      v6 = v0[5];
      v8 = v0[3];
      sub_221F7E900(0, 1, 0);
      *(v1 + 112) = v2;

      sub_221FB64A8();
      (*(v7 + 8))(v6, v8);
    }

    else
    {
      *(v1 + 112) = 0;
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t AsyncLock.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncLock.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_221F7E7CC()
{
  result = qword_281307060;
  if (!qword_281307060)
  {
    type metadata accessor for AsyncLock();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281307060);
  }

  return result;
}

unint64_t sub_221F7E828(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_221F7E900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC208, &qword_221FBADA8);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_221F7EA70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_221F7EAB8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_221F7EB34()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 16);
  v4 = swift_allocObject();
  v5 = *(v0 + 32);
  *(v4 + 16) = *(v0 + 16);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 48);
  *(v4 + 64) = *(v0 + 64);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBEA88;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1368) = v7;
  *(v7 + 16) = &unk_221FBEA98;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1376) = v8;
  v9 = sub_221FB61A8();
  *v8 = v0;
  v8[1] = sub_221F7ECDC;
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x28213ACA0](101, &unk_221FBEAA8, v7, v2, v9, v10, v3);
}

uint64_t sub_221F7ECDC()
{

  return MEMORY[0x2822009F8](sub_221F7EDF4, 0, 0);
}

uint64_t sub_221F7EDF4()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 72);
  v4 = swift_allocObject();
  v5 = *(v0 + 88);
  *(v4 + 16) = *(v0 + 72);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 104);
  *(v4 + 64) = *(v0 + 120);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBEAB8;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1384) = v7;
  *(v7 + 16) = &unk_221FBEAC8;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1392) = v8;
  *v8 = v0;
  v8[1] = sub_221F7EF98;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x28213ACA0](102, &unk_221FBEAD8, v7, v2, v9, v10, v3);
}

uint64_t sub_221F7EF98()
{

  return MEMORY[0x2822009F8](sub_221F7F0B0, 0, 0);
}

uint64_t sub_221F7F0B0()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 128);
  v4 = swift_allocObject();
  v5 = *(v0 + 144);
  *(v4 + 16) = *(v0 + 128);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 160);
  *(v4 + 64) = *(v0 + 176);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBEAE8;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1400) = v7;
  *(v7 + 16) = &unk_221FBEAF0;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1408) = v8;
  *v8 = v0;
  v8[1] = sub_221F7F250;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x28213ACA0](103, &unk_221FBEAF8, v7, v2, v9, v10, v3);
}

uint64_t sub_221F7F250()
{

  return MEMORY[0x2822009F8](sub_221F7F368, 0, 0);
}

uint64_t sub_221F7F368()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 184);
  v4 = swift_allocObject();
  v5 = *(v0 + 200);
  *(v4 + 16) = *(v0 + 184);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 216);
  *(v4 + 64) = *(v0 + 232);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBEB08;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1416) = v7;
  *(v7 + 16) = &unk_221FBEB10;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1424) = v8;
  *v8 = v0;
  v8[1] = sub_221F7F50C;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x28213ACA0](104, &unk_221FBEB18, v7, v2, v9, v10, v3);
}

uint64_t sub_221F7F50C()
{

  return MEMORY[0x2822009F8](sub_221F7F624, 0, 0);
}

uint64_t sub_221F7F624()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 240);
  v4 = swift_allocObject();
  v5 = *(v0 + 256);
  *(v4 + 16) = *(v0 + 240);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 272);
  *(v4 + 64) = *(v0 + 288);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBEB28;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1432) = v7;
  *(v7 + 16) = &unk_221FBEB38;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1440) = v8;
  v9 = sub_221FB6158();
  *v8 = v0;
  v8[1] = sub_221F7F7CC;
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x28213ACA0](202, &unk_221FBEB48, v7, v2, v9, v10, v3);
}

uint64_t sub_221F7F7CC()
{

  return MEMORY[0x2822009F8](sub_221F7F8E4, 0, 0);
}

uint64_t sub_221F7F8E4()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 296);
  v4 = swift_allocObject();
  v5 = *(v0 + 312);
  *(v4 + 16) = *(v0 + 296);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 328);
  *(v4 + 64) = *(v0 + 344);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBEB58;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1448) = v7;
  *(v7 + 16) = &unk_221FBEB68;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1456) = v8;
  v9 = sub_221FB5C98();
  *v8 = v0;
  v8[1] = sub_221F7FA90;
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x28213ACA0](201, &unk_221FBEB78, v7, v2, v9, v10, v3);
}

uint64_t sub_221F7FA90()
{

  return MEMORY[0x2822009F8](sub_221F7FBA8, 0, 0);
}

uint64_t sub_221F7FBA8()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 352);
  v4 = swift_allocObject();
  v5 = *(v0 + 368);
  *(v4 + 16) = *(v0 + 352);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 384);
  *(v4 + 64) = *(v0 + 400);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBEB88;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1464) = v7;
  *(v7 + 16) = &unk_221FBEB90;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1472) = v8;
  *v8 = v0;
  v8[1] = sub_221F7FD48;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x28213ACA0](301, &unk_221FBEB98, v7, v2, v9, v10, v3);
}

uint64_t sub_221F7FD48()
{

  return MEMORY[0x2822009F8](sub_221F7FE60, 0, 0);
}

uint64_t sub_221F7FE60()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 408);
  v4 = swift_allocObject();
  v5 = *(v0 + 424);
  *(v4 + 16) = *(v0 + 408);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 440);
  *(v4 + 64) = *(v0 + 456);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBEBA8;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1480) = v7;
  *(v7 + 16) = &unk_221FBEBB0;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1488) = v8;
  *v8 = v0;
  v8[1] = sub_221F80004;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x28213ACA0](302, &unk_221FBEBB8, v7, v2, v9, v10, v3);
}

uint64_t sub_221F80004()
{

  return MEMORY[0x2822009F8](sub_221F8011C, 0, 0);
}

uint64_t sub_221F8011C()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 464);
  v4 = swift_allocObject();
  v5 = *(v0 + 480);
  *(v4 + 16) = *(v0 + 464);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 496);
  *(v4 + 64) = *(v0 + 512);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBEBC8;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1496) = v7;
  *(v7 + 16) = &unk_221FBEBD0;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1504) = v8;
  *v8 = v0;
  v8[1] = sub_221F802BC;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x28213ACA0](303, &unk_221FBEBD8, v7, v2, v9, v10, v3);
}

uint64_t sub_221F802BC()
{

  return MEMORY[0x2822009F8](sub_221F803D4, 0, 0);
}

uint64_t sub_221F803D4()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 520);
  v4 = swift_allocObject();
  v5 = *(v0 + 536);
  *(v4 + 16) = *(v0 + 520);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 552);
  *(v4 + 64) = *(v0 + 568);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBEBE8;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1512) = v7;
  *(v7 + 16) = &unk_221FBEBF0;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1520) = v8;
  *v8 = v0;
  v8[1] = sub_221F80578;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x28213ACA0](304, &unk_221FBEBF8, v7, v2, v9, v10, v3);
}

uint64_t sub_221F80578()
{

  return MEMORY[0x2822009F8](sub_221F80690, 0, 0);
}

uint64_t sub_221F80690()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 576);
  v4 = swift_allocObject();
  v5 = *(v0 + 592);
  *(v4 + 16) = *(v0 + 576);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 608);
  *(v4 + 64) = *(v0 + 624);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBEC08;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1528) = v7;
  *(v7 + 16) = &unk_221FBEC10;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1536) = v8;
  *v8 = v0;
  v8[1] = sub_221F80830;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x28213ACA0](305, &unk_221FBEC18, v7, v2, v9, v10, v3);
}

uint64_t sub_221F80830()
{

  return MEMORY[0x2822009F8](sub_221F80948, 0, 0);
}

uint64_t sub_221F80948()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 632);
  v4 = swift_allocObject();
  v5 = *(v0 + 648);
  *(v4 + 16) = *(v0 + 632);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 664);
  *(v4 + 64) = *(v0 + 680);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBEC28;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1544) = v7;
  *(v7 + 16) = &unk_221FBEC38;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1552) = v8;
  *v8 = v0;
  v8[1] = sub_221F80AD4;
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277CE94B8];

  return MEMORY[0x28213ACA8](401, &unk_221FBEC48, v7, v2, v9, v3, v10);
}

uint64_t sub_221F80AD4()
{

  return MEMORY[0x2822009F8](sub_221F80BEC, 0, 0);
}

uint64_t sub_221F80BEC()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 688);
  v4 = swift_allocObject();
  v5 = *(v0 + 704);
  *(v4 + 16) = *(v0 + 688);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 720);
  *(v4 + 64) = *(v0 + 736);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBEC58;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1560) = v7;
  *(v7 + 16) = &unk_221FBEC60;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1568) = v8;
  *v8 = v0;
  v8[1] = sub_221F80D74;
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277CE94B8];

  return MEMORY[0x28213ACA8](402, &unk_221FBEC68, v7, v2, v9, v3, v10);
}

uint64_t sub_221F80D74()
{

  return MEMORY[0x2822009F8](sub_221F80E8C, 0, 0);
}

uint64_t sub_221F80E8C()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 744);
  v4 = swift_allocObject();
  v5 = *(v0 + 760);
  *(v4 + 16) = *(v0 + 744);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 776);
  *(v4 + 64) = *(v0 + 792);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBEC78;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1576) = v7;
  *(v7 + 16) = &unk_221FBEC88;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1584) = v8;
  *v8 = v0;
  v8[1] = sub_221F81030;
  v9 = MEMORY[0x277D83E88];
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x28213ACA0](403, &unk_221FBEC98, v7, v2, v9, v10, v3);
}

uint64_t sub_221F81030()
{

  return MEMORY[0x2822009F8](sub_221F81148, 0, 0);
}

uint64_t sub_221F81148()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 800);
  v4 = swift_allocObject();
  v5 = *(v0 + 816);
  *(v4 + 16) = *(v0 + 800);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 832);
  *(v4 + 64) = *(v0 + 848);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBECA8;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1592) = v7;
  *(v7 + 16) = &unk_221FBECB0;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1600) = v8;
  *v8 = v0;
  v8[1] = sub_221F812D0;
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277CE94B8];

  return MEMORY[0x28213ACA8](404, &unk_221FBECB8, v7, v2, v9, v3, v10);
}

uint64_t sub_221F812D0()
{

  return MEMORY[0x2822009F8](sub_221F813E8, 0, 0);
}

uint64_t sub_221F813E8()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 856);
  v4 = swift_allocObject();
  v5 = *(v0 + 872);
  *(v4 + 16) = *(v0 + 856);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 888);
  *(v4 + 64) = *(v0 + 904);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBECC8;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1608) = v7;
  *(v7 + 16) = &unk_221FBECD0;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1616) = v8;
  *v8 = v0;
  v8[1] = sub_221F81574;
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277CE94B8];

  return MEMORY[0x28213ACA8](405, &unk_221FBECD8, v7, v2, v9, v3, v10);
}

uint64_t sub_221F81574()
{

  return MEMORY[0x2822009F8](sub_221F8168C, 0, 0);
}

uint64_t sub_221F8168C()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 912);
  v4 = swift_allocObject();
  v5 = *(v0 + 928);
  *(v4 + 16) = *(v0 + 912);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 944);
  *(v4 + 64) = *(v0 + 960);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBECE8;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1624) = v7;
  *(v7 + 16) = &unk_221FBECF8;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1632) = v8;
  *v8 = v0;
  v8[1] = sub_221F8182C;
  v9 = MEMORY[0x277D84A28];
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x28213ACA0](501, &unk_221FBED08, v7, v2, v9, v10, v3);
}

uint64_t sub_221F8182C()
{

  return MEMORY[0x2822009F8](sub_221F81944, 0, 0);
}

uint64_t sub_221F81944()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 968);
  v4 = swift_allocObject();
  v5 = *(v0 + 984);
  *(v4 + 16) = *(v0 + 968);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 1000);
  *(v4 + 64) = *(v0 + 1016);
  v6 = swift_allocObject();
  *(v0 + 1640) = v6;
  *(v6 + 16) = &unk_221FBED18;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  *(v0 + 1648) = v7;
  v8 = sub_221E9D138(0, &qword_281306E98, 0x277CE90A0);
  *v7 = v0;
  v7[1] = sub_221F81ABC;
  v9 = MEMORY[0x277CE94F8];

  return MEMORY[0x28213ACA8](601, &unk_221FBED28, v6, v2, v8, v3, v9);
}

uint64_t sub_221F81ABC()
{

  return MEMORY[0x2822009F8](sub_221F81BD4, 0, 0);
}

uint64_t sub_221F81BD4()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 1024);
  v4 = swift_allocObject();
  v5 = *(v0 + 1040);
  *(v4 + 16) = *(v0 + 1024);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 1056);
  *(v4 + 64) = *(v0 + 1072);
  v6 = swift_allocObject();
  *(v0 + 1656) = v6;
  *(v6 + 16) = &unk_221FBED38;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  *(v0 + 1664) = v7;
  v8 = sub_221E9D138(0, &qword_281306ED0, 0x277CE9098);
  *v7 = v0;
  v7[1] = sub_221F81D64;
  v9 = MEMORY[0x277D837D0];

  return MEMORY[0x28213ACA0](602, &unk_221FBED48, v6, v2, v9, v8, v3);
}

uint64_t sub_221F81D64()
{

  return MEMORY[0x2822009F8](sub_221F81E7C, 0, 0);
}

uint64_t sub_221F81E7C()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 1080);
  v4 = swift_allocObject();
  v5 = *(v0 + 1096);
  *(v4 + 16) = *(v0 + 1080);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 1112);
  *(v4 + 64) = *(v0 + 1128);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBED58;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1672) = v7;
  *(v7 + 16) = &unk_221FBED60;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1680) = v8;
  *v8 = v0;
  v8[1] = sub_221F82020;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x28213ACA0](603, &unk_221FBED68, v7, v2, v9, v10, v3);
}

uint64_t sub_221F82020()
{

  return MEMORY[0x2822009F8](sub_221F82138, 0, 0);
}

uint64_t sub_221F82138()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 1136);
  v4 = swift_allocObject();
  v5 = *(v0 + 1152);
  *(v4 + 16) = *(v0 + 1136);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 1168);
  *(v4 + 64) = *(v0 + 1184);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBED78;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1688) = v7;
  *(v7 + 16) = &unk_221FBED80;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1696) = v8;
  *v8 = v0;
  v8[1] = sub_221F822C4;
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277CE94B8];

  return MEMORY[0x28213ACA8](604, &unk_221FBED88, v7, v2, v9, v3, v10);
}

uint64_t sub_221F822C4()
{

  return MEMORY[0x2822009F8](sub_221F823DC, 0, 0);
}

uint64_t sub_221F823DC()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 1192);
  v4 = swift_allocObject();
  v5 = *(v0 + 1208);
  *(v4 + 16) = *(v0 + 1192);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 1224);
  *(v4 + 64) = *(v0 + 1240);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBED98;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1704) = v7;
  *(v7 + 16) = &unk_221FBEDA8;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1712) = v8;
  v9 = sub_221E9D138(0, &qword_281306E78, 0x277CE9138);
  *v8 = v0;
  v8[1] = sub_221F82598;
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x28213ACA0](701, &unk_221FBEDB8, v7, v2, v9, v10, v3);
}

uint64_t sub_221F82598()
{

  return MEMORY[0x2822009F8](sub_221F826B0, 0, 0);
}

uint64_t sub_221F826B0()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 1248);
  v4 = swift_allocObject();
  v5 = *(v0 + 1264);
  *(v4 + 16) = *(v0 + 1248);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 1280);
  *(v4 + 64) = *(v0 + 1296);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBEDC8;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1720) = v7;
  *(v7 + 16) = &unk_221FBEDD8;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1728) = v8;
  *v8 = v0;
  v8[1] = sub_221F8283C;
  v9 = MEMORY[0x277D83B88];
  v10 = MEMORY[0x277CE94C0];

  return MEMORY[0x28213ACA8](801, &unk_221FBEDE8, v7, v2, v9, v3, v10);
}

uint64_t sub_221F8283C()
{

  return MEMORY[0x2822009F8](sub_221F82954, 0, 0);
}

uint64_t sub_221F82954()
{
  v1 = *(v0 + 1360);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 2, v2);
  sub_221F82C88(v1, v0 + 1304);
  v4 = swift_allocObject();
  v5 = *(v0 + 1320);
  *(v4 + 16) = *(v0 + 1304);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 1336);
  *(v4 + 64) = *(v0 + 1352);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_221FBEDF8;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1736) = v7;
  *(v7 + 16) = &unk_221FBEE00;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1744) = v8;
  *v8 = v0;
  v8[1] = sub_221F82AE0;
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277CE94B8];

  return MEMORY[0x28213ACA8](901, &unk_221FBEE08, v7, v2, v9, v3, v10);
}

uint64_t sub_221F82AE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_221F82BF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E95F60;

  return sub_221F82D58(a1);
}

uint64_t sub_221F82CC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E9606C;

  return sub_221F82BF0(a1);
}

uint64_t sub_221F82D58(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_221FB61A8();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v2[13] = *(v4 + 64);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F82E20, 0, 0);
}

uint64_t sub_221F82E20()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = sub_221FB61D8();
  __swift_project_value_buffer(v6, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0xD000000000000014, 0x8000000221FC4590);
  sub_221F82C88(v4, v0 + 16);
  (*(v3 + 16))(v1, v5, v2);
  v7 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v0 + 120) = v8;
  v9 = *(v0 + 32);
  *(v8 + 16) = *(v0 + 16);
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v0 + 48);
  *(v8 + 64) = *(v0 + 64);
  (*(v3 + 32))(v8 + v7, v1, v2);
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  v10[2] = v4;
  v10[3] = sub_221F8E0A0;
  v10[4] = v8;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_221F83048;
  v12 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 152, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8E150, v10, v12);
}

uint64_t sub_221F83048()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F8E1B8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 152);

    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_221F831B0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_221E9616C;

  return v6(a1);
}

uint64_t sub_221F832A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9606C;

  return sub_221F831B0(a1, v4);
}

uint64_t sub_221F83358(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_221E962A0;

  return v7(a2);
}

uint64_t sub_221F83450(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return sub_221F83358(a1, a2, v6);
}

uint64_t sub_221F83518(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E95F60;

  return sub_221F83668(a1, a2);
}

uint64_t sub_221F835C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9606C;

  return sub_221F83518(a1, a2);
}

uint64_t sub_221F83668(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_221F8368C, 0, 0);
}

uint64_t sub_221F8368C()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0xD000000000000019, 0x8000000221FC4570);
  sub_221F82C88(v1, v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 96) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = *(v0 + 16);
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v0 + 48);
  *(v5 + 64) = *(v0 + 64);
  *(v5 + 72) = v3;
  *(v5 + 80) = v2;

  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  v7[2] = v1;
  v7[3] = sub_221F8DFB8;
  v7[4] = v5;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_221F83864;
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 128, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8E150, v7, v9);
}

uint64_t sub_221F83864()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F8E140, 0, 0);
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_221F839B0(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_221E9616C;

  return v8(a1, a2);
}

uint64_t sub_221F83AB0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E9606C;

  return sub_221F839B0(a1, a2, v6);
}

uint64_t sub_221F83B74(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = a2[1];
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_221E962A0;

  return v8(v4, v5);
}

uint64_t sub_221F83C74(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return sub_221F83B74(a1, a2, v6);
}

uint64_t sub_221F83D3C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E95F60;

  return sub_221F83E8C(a1, a2);
}

uint64_t sub_221F83DE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9606C;

  return sub_221F83D3C(a1, a2);
}

uint64_t sub_221F83E8C(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_221F83EB0, 0, 0);
}

uint64_t sub_221F83EB0()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0xD000000000000019, 0x8000000221FC4550);
  sub_221F82C88(v1, v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 96) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = *(v0 + 16);
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v0 + 48);
  *(v5 + 64) = *(v0 + 64);
  *(v5 + 72) = v3;
  *(v5 + 80) = v2;

  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  v7[2] = v1;
  v7[3] = sub_221F8DF5C;
  v7[4] = v5;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_221F83864;
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 128, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8E150, v7, v9);
}

uint64_t sub_221F84088(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E95F60;

  return sub_221F841D8(a1, a2);
}

uint64_t sub_221F84130(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9606C;

  return sub_221F84088(a1, a2);
}

uint64_t sub_221F841D8(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_221F841FC, 0, 0);
}

uint64_t sub_221F841FC()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0xD000000000000019, 0x8000000221FC4530);
  sub_221F82C88(v1, v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 96) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = *(v0 + 16);
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v0 + 48);
  *(v5 + 64) = *(v0 + 64);
  *(v5 + 72) = v3;
  *(v5 + 80) = v2;

  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  v7[2] = v1;
  v7[3] = sub_221F8DF50;
  v7[4] = v5;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_221F83864;
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 128, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8E150, v7, v9);
}

uint64_t sub_221F843D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E95F60;

  return sub_221F84504(a1);
}

uint64_t sub_221F8446C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E9606C;

  return sub_221F843D4(a1);
}

uint64_t sub_221F84504(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_221FB6158();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v2[13] = *(v4 + 64);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F845CC, 0, 0);
}

uint64_t sub_221F845CC()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = sub_221FB61D8();
  __swift_project_value_buffer(v6, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0xD000000000000012, 0x8000000221FC4510);
  sub_221F82C88(v4, v0 + 16);
  (*(v3 + 16))(v1, v5, v2);
  v7 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v0 + 120) = v8;
  v9 = *(v0 + 32);
  *(v8 + 16) = *(v0 + 16);
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v0 + 48);
  *(v8 + 64) = *(v0 + 64);
  (*(v3 + 32))(v8 + v7, v1, v2);
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  v10[2] = v4;
  v10[3] = sub_221F8DE88;
  v10[4] = v8;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_221F83048;
  v12 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 152, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8E150, v10, v12);
}

uint64_t sub_221F847F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9606C;

  return sub_221F831B0(a1, v4);
}

uint64_t sub_221F848A8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return sub_221F83358(a1, a2, v6);
}

uint64_t sub_221F84970(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E95F64;

  return sub_221F84AA0(a1);
}

uint64_t sub_221F84A08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E96070;

  return sub_221F84970(a1);
}

uint64_t sub_221F84AA0(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_221FB5C98();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v2[13] = *(v4 + 64);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F84B68, 0, 0);
}

uint64_t sub_221F84B68()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = sub_221FB61D8();
  __swift_project_value_buffer(v6, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0xD00000000000001ALL, 0x8000000221FC44F0);
  sub_221F82C88(v4, v0 + 16);
  (*(v3 + 16))(v1, v5, v2);
  v7 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v0 + 120) = v8;
  v9 = *(v0 + 32);
  *(v8 + 16) = *(v0 + 16);
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v0 + 48);
  *(v8 + 64) = *(v0 + 64);
  (*(v3 + 32))(v8 + v7, v1, v2);
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  v10[2] = v4;
  v10[3] = sub_221F8DE5C;
  v10[4] = v8;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_221F84D90;
  v12 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 152, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8E150, v10, v12);
}

uint64_t sub_221F84D90()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F84EF8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 152);

    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_221F84EF8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_221F84F74(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_221E96170;

  return v6(a1);
}

uint64_t sub_221F85068(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E96070;

  return sub_221F84F74(a1, v4);
}

uint64_t sub_221F8511C(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_221E962A4;

  return v7(a2);
}

uint64_t sub_221F85214(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E9544C;

  return sub_221F8511C(a1, a2, v6);
}

uint64_t sub_221F852DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E95F60;

  return sub_221F8542C(a1, a2);
}

uint64_t sub_221F85384(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9606C;

  return sub_221F852DC(a1, a2);
}

uint64_t sub_221F8542C(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_221F85450, 0, 0);
}

uint64_t sub_221F85450()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0xD00000000000001ALL, 0x8000000221FC44D0);
  sub_221F82C88(v1, v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 96) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = *(v0 + 16);
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v0 + 48);
  *(v5 + 64) = *(v0 + 64);
  *(v5 + 72) = v3;
  *(v5 + 80) = v2;

  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  v7[2] = v1;
  v7[3] = sub_221F8DE50;
  v7[4] = v5;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_221F83864;
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 128, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8E150, v7, v9);
}

uint64_t sub_221F85628(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E95F60;

  return sub_221F85778(a1, a2);
}

uint64_t sub_221F856D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9606C;

  return sub_221F85628(a1, a2);
}

uint64_t sub_221F85778(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_221F8579C, 0, 0);
}

uint64_t sub_221F8579C()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0xD00000000000001ELL, 0x8000000221FC44B0);
  sub_221F82C88(v1, v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 96) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = *(v0 + 16);
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v0 + 48);
  *(v5 + 64) = *(v0 + 64);
  *(v5 + 72) = v3;
  *(v5 + 80) = v2;

  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  v7[2] = v1;
  v7[3] = sub_221F8DE44;
  v7[4] = v5;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_221F83864;
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 128, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8E150, v7, v9);
}

uint64_t sub_221F85974(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E95F60;

  return sub_221F85AC4(a1, a2);
}

uint64_t sub_221F85A1C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9606C;

  return sub_221F85974(a1, a2);
}

uint64_t sub_221F85AC4(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_221F85AE8, 0, 0);
}

uint64_t sub_221F85AE8()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0xD00000000000001ELL, 0x8000000221FC4490);
  sub_221F82C88(v1, v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 96) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = *(v0 + 16);
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v0 + 48);
  *(v5 + 64) = *(v0 + 64);
  *(v5 + 72) = v3;
  *(v5 + 80) = v2;

  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  v7[2] = v1;
  v7[3] = sub_221F8DE38;
  v7[4] = v5;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_221F83864;
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 128, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8E150, v7, v9);
}

uint64_t sub_221F85CC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E95F60;

  return sub_221F85E10(a1, a2);
}

uint64_t sub_221F85D68(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9606C;

  return sub_221F85CC0(a1, a2);
}

uint64_t sub_221F85E10(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_221F85E34, 0, 0);
}

uint64_t sub_221F85E34()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0xD00000000000001ALL, 0x8000000221FC4470);
  sub_221F82C88(v1, v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 96) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = *(v0 + 16);
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v0 + 48);
  *(v5 + 64) = *(v0 + 64);
  *(v5 + 72) = v3;
  *(v5 + 80) = v2;

  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  v7[2] = v1;
  v7[3] = sub_221F8DE2C;
  v7[4] = v5;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_221F83864;
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 128, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8E150, v7, v9);
}

uint64_t sub_221F8600C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E95F60;

  return sub_221F8615C(a1, a2);
}

uint64_t sub_221F860B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9606C;

  return sub_221F8600C(a1, a2);
}

uint64_t sub_221F8615C(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_221F86180, 0, 0);
}

uint64_t sub_221F86180()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0xD000000000000016, 0x8000000221FC4450);
  sub_221F82C88(v1, v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 96) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = *(v0 + 16);
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v0 + 48);
  *(v5 + 64) = *(v0 + 64);
  *(v5 + 72) = v3;
  *(v5 + 80) = v2;

  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  v7[2] = v1;
  v7[3] = sub_221F8DE20;
  v7[4] = v5;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_221F83864;
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 128, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8E150, v7, v9);
}

uint64_t sub_221F86358()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E95F60;

  return sub_221F8647C();
}

uint64_t sub_221F863E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E9606C;

  return sub_221F86358();
}

uint64_t sub_221F8649C()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0xD000000000000012, 0x8000000221FC4430);
  sub_221F82C88(v1, v0 + 16);
  v3 = swift_allocObject();
  *(v0 + 80) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v0 + 48);
  *(v3 + 64) = *(v0 + 64);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  v5[2] = v1;
  v5[3] = sub_221F8DE18;
  v5[4] = v3;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_221E95C40;
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 112, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8E150, v5, v7);
}

uint64_t sub_221F8666C(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_221E9616C;

  return v4();
}

uint64_t sub_221F86754()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E9606C;

  return sub_221F8666C(v2);
}

uint64_t sub_221F86800(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_221E962A0;

  return v5();
}

uint64_t sub_221F868EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221F86800(a1, v4);
}

uint64_t sub_221F869A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E95F60;

  return sub_221F86AC8();
}

uint64_t sub_221F86A34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E9606C;

  return sub_221F869A4();
}

uint64_t sub_221F86AE8()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0xD00000000000001CLL, 0x8000000221FC4410);
  sub_221F82C88(v1, v0 + 16);
  v3 = swift_allocObject();
  *(v0 + 80) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v0 + 48);
  *(v3 + 64) = *(v0 + 64);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  v5[2] = v1;
  v5[3] = sub_221F8DDE8;
  v5[4] = v3;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_221F86CB0;
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 112, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8E150, v5, v7);
}

uint64_t sub_221F86CB0()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F86DFC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_221F86DFC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_221F86E6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E95F60;

  return sub_221F86F9C(a1);
}

uint64_t sub_221F86F04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E9606C;

  return sub_221F86E6C(a1);
}

uint64_t sub_221F86F9C(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](sub_221F86FBC, 0, 0);
}

uint64_t sub_221F86FBC()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0xD00000000000002BLL, 0x8000000221FC43E0);
  sub_221F82C88(v1, v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 88) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = *(v0 + 16);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 48);
  *(v4 + 64) = *(v0 + 64);
  *(v4 + 72) = v2;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v6[2] = v1;
  v6[3] = sub_221F8DDDC;
  v6[4] = v4;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_221F87184;
  v8 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 120, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8E150, v6, v8);
}

uint64_t sub_221F87184()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F8E148, 0, 0);
  }

  else
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_221F872D0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_221E9616C;

  return v6(a1);
}

uint64_t sub_221F873C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9606C;

  return sub_221F872D0(a1, v4);
}

uint64_t sub_221F87478(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_221E962A0;

  return v7(v4);
}

uint64_t sub_221F87570(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return sub_221F87478(a1, a2, v6);
}

uint64_t sub_221F87638()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E95F60;

  return sub_221F8775C();
}

uint64_t sub_221F876C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E9606C;

  return sub_221F87638();
}

uint64_t sub_221F8777C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E95F60;

  return sub_221F878A0();
}

uint64_t sub_221F8780C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E9606C;

  return sub_221F8777C();
}

uint64_t sub_221F878C0()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0xD000000000000013, 0x8000000221FC43A0);
  sub_221F82C88(v1, v0 + 16);
  v3 = swift_allocObject();
  *(v0 + 80) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v0 + 48);
  *(v3 + 64) = *(v0 + 64);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  v5[2] = v1;
  v5[3] = sub_221F8DDCC;
  v5[4] = v3;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_221E95C40;
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 112, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8E150, v5, v7);
}

uint64_t sub_221F87A8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E95F60;

  return sub_221F87BBC(a1);
}

uint64_t sub_221F87B24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E9606C;

  return sub_221F87A8C(a1);
}

uint64_t sub_221F87BBC(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](sub_221F87BDC, 0, 0);
}

uint64_t sub_221F87BDC()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0xD000000000000030, 0x8000000221FC4340);
  sub_221F82C88(v1, v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 88) = v4;
  *(v4 + 16) = v2;
  v5 = *(v0 + 32);
  *(v4 + 24) = *(v0 + 16);
  *(v4 + 40) = v5;
  *(v4 + 56) = *(v0 + 48);
  *(v4 + 72) = *(v0 + 64);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v6[2] = v1;
  v6[3] = sub_221F8DDC0;
  v6[4] = v4;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_221F87DAC;
  v8 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 120, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8E150, v6, v8);
}

uint64_t sub_221F87DAC()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F87EF8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_221F87EF8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_221F87F68(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_221E9616C;

  return v6(a1);
}

uint64_t sub_221F8805C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9606C;

  return sub_221F87F68(a1, v4);
}

uint64_t sub_221F88110(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_221E962A0;

  return v7(v4);
}

uint64_t sub_221F88208(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return sub_221F88110(a1, a2, v6);
}

uint64_t sub_221F882D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221F8E1BC;

  return sub_221F883F4();
}

uint64_t sub_221F88360()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E9606C;

  return sub_221F882D0();
}

uint64_t sub_221F88414()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0x6E656972466C6C61, 0xEC00000029287364);
  sub_221F82C88(v1, v0 + 16);
  v3 = swift_allocObject();
  *(v0 + 88) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v0 + 48);
  *(v3 + 64) = *(v0 + 64);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  v5[2] = v1;
  v5[3] = sub_221F8DCA8;
  v5[4] = v3;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECA40, &qword_221FBEE70);
  *v6 = v0;
  v6[1] = sub_221F885F4;

  return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8DCB0, v5, v7);
}

uint64_t sub_221F885F4()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F88740, 0, 0);
  }

  else
  {

    v3 = v2[9];
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_221F88740()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F887AC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_221F8E13C;

  return v5();
}

uint64_t sub_221F88898(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221F887AC(a1, v4);
}

uint64_t sub_221F88950(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221F8E1BC;

  return sub_221F88AA0(a1, a2);
}

uint64_t sub_221F889F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9606C;

  return sub_221F88950(a1, a2);
}

uint64_t sub_221F88AA0(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_221F88AC4, 0, 0);
}

uint64_t sub_221F88AC4()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0xD000000000000028, 0x8000000221FC42E0);
  sub_221F82C88(v1, v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 104) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = *(v0 + 16);
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v0 + 48);
  *(v5 + 64) = *(v0 + 64);
  *(v5 + 72) = v3;
  *(v5 + 80) = v2;

  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  v7[2] = v1;
  v7[3] = sub_221F8DB90;
  v7[4] = v5;
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECA30, &qword_221FBEE58);
  *v8 = v0;
  v8[1] = sub_221F88CAC;

  return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8DB9C, v7, v9);
}

uint64_t sub_221F88CAC()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F88DF8, 0, 0);
  }

  else
  {

    v3 = v2[9];
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_221F88DF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F88E64(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = a2[1];
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_221F88F64;

  return v8(v4, v5);
}

uint64_t sub_221F88F64(uint64_t a1)
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

uint64_t sub_221F89074(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return sub_221F88E64(a1, a2, v6);
}

uint64_t sub_221F8913C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E95F60;

  return sub_221F8928C(a1, a2);
}

uint64_t sub_221F891E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9606C;

  return sub_221F8913C(a1, a2);
}

uint64_t sub_221F8928C(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_221F892B0, 0, 0);
}

uint64_t sub_221F892B0()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0xD000000000000017, 0x8000000221FC42C0);
  sub_221F82C88(v1, v0 + 16);
  v5 = swift_allocObject();
  *(v0 + 96) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = *(v0 + 16);
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v0 + 48);
  *(v5 + 64) = *(v0 + 64);
  *(v5 + 72) = v3;
  *(v5 + 80) = v2;

  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  v7[2] = v1;
  v7[3] = sub_221F8DB84;
  v7[4] = v5;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_221F89488;
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 128, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8E150, v7, v9);
}

uint64_t sub_221F89488()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F895D4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_221F895D4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_221F89644()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E95F60;

  return sub_221F89768();
}

uint64_t sub_221F896D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E9606C;

  return sub_221F89644();
}

uint64_t sub_221F89788()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0xD000000000000012, 0x8000000221FC42A0);
  sub_221F82C88(v1, v0 + 16);
  v3 = swift_allocObject();
  *(v0 + 80) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v0 + 48);
  *(v3 + 64) = *(v0 + 64);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  v5[2] = v1;
  v5[3] = sub_221F8DB7C;
  v5[4] = v3;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_221E95C40;
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 112, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8E150, v5, v7);
}

uint64_t sub_221F89958(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E95F60;

  return sub_221F89A88(a1);
}

uint64_t sub_221F899F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E9606C;

  return sub_221F89958(a1);
}

uint64_t sub_221F89A88(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](sub_221F89AA8, 0, 0);
}

uint64_t sub_221F89AA8()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0xD00000000000001ELL, 0x8000000221FC4280);
  sub_221F82C88(v1, v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 88) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = *(v0 + 16);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v0 + 48);
  *(v4 + 64) = *(v0 + 64);
  *(v4 + 72) = v2;
  v6 = v2;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  v7[2] = v1;
  v7[3] = sub_221F8DB70;
  v7[4] = v4;
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_221F87184;
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 120, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8E150, v7, v9);
}

uint64_t sub_221F89C74(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_221E9616C;

  return v6(a1);
}

uint64_t sub_221F89D68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9606C;

  return sub_221F89C74(a1, v4);
}

uint64_t sub_221F89E1C(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_221E962A0;

  return v7(v4);
}

uint64_t sub_221F89F14(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E963B4;

  return sub_221F89E1C(a1, a2, v6);
}

uint64_t sub_221F89FDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221ECAFA0;

  return sub_221F8A100();
}

uint64_t sub_221F8A06C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E96070;

  return sub_221F89FDC();
}

uint64_t sub_221F8A120()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0x6567646142707061, 0xEF2928746E756F43);
  sub_221F82C88(v1, v0 + 16);
  v3 = swift_allocObject();
  *(v0 + 88) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v0 + 48);
  *(v3 + 64) = *(v0 + 64);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  v5[2] = v1;
  v5[3] = sub_221F8D888;
  v5[4] = v3;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_221F8A2F4;
  v7 = MEMORY[0x277D83B88];

  return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8D890, v5, v7);
}

uint64_t sub_221F8A2F4()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F8E14C, 0, 0);
  }

  else
  {

    v3 = v2[9];
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_221F8A440(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_221F8A528;

  return v4();
}

uint64_t sub_221F8A528(uint64_t a1)
{
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v4 = a1;
    v5 = 0;
  }

  return v6(v4, v5);
}

uint64_t sub_221F8A62C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221EBD108;

  return sub_221F8A440(v2);
}

uint64_t sub_221F8A6D8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_221F3C508;

  return v5();
}

uint64_t sub_221F8A7C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221F8A6D8(a1, v4);
}

uint64_t sub_221F8A87C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E95F60;

  return sub_221F8A9A0();
}

uint64_t sub_221F8A90C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E9606C;

  return sub_221F8A87C();
}

uint64_t sub_221F8A9C0()
{
  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DC0);
  sub_221E9DCE8(0xD000000000000075, 0x8000000221FC4190, 0xD000000000000016, 0x8000000221FC4210);
  sub_221F82C88(v1, v0 + 16);
  v3 = swift_allocObject();
  *(v0 + 80) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = *(v0 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v0 + 48);
  *(v3 + 64) = *(v0 + 64);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  v5[2] = v1;
  v5[3] = sub_221F8C8F0;
  v5[4] = v3;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_221E95C40;
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 112, 0, 0, 0xD000000000000013, 0x8000000221FC4230, sub_221F8CC54, v5, v7);
}

void sub_221F8AB88(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *a3;

  sub_221FB6178();
  v8 = sub_221FB62E8();

  sub_221FB6198();
  v9 = sub_221FB62E8();

  sub_221FB6188();
  v10 = sub_221FB62E8();

  v11 = swift_allocObject();
  *(v11 + 16) = sub_221E95020;
  *(v11 + 24) = v6;
  v13[4] = sub_221F8E134;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_221F8AD04;
  v13[3] = &block_descriptor_815;
  v12 = _Block_copy(v13);

  [v7 sendInviteRequestToDestination:v8 callerID:v9 serviceIdentifier:v10 completion:v12];
  _Block_release(v12);
}

void sub_221F8AD04(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_221F8AD7C(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *a3;

  v9 = sub_221FB62E8();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_221E95020;
  *(v10 + 24) = v7;
  v12[4] = sub_221F8E134;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_221F8AD04;
  v12[3] = &block_descriptor_793;
  v11 = _Block_copy(v12);

  [v8 acceptInviteRequestFromFriendWithUUID:v9 completion:v11];
  _Block_release(v11);
}

void sub_221F8AEB4(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *a3;

  v9 = sub_221FB62E8();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_221E95020;
  *(v10 + 24) = v7;
  v12[4] = sub_221F8E134;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_221F8AD04;
  v12[3] = &block_descriptor_771;
  v11 = _Block_copy(v12);

  [v8 sendWithdrawInviteRequestToFriendWithUUID:v9 completion:v11];
  _Block_release(v11);
}

void sub_221F8AFEC(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *a3;

  v9 = sub_221FB62E8();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_221E95020;
  *(v10 + 24) = v7;
  v12[4] = sub_221F8E134;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_221F8AD04;
  v12[3] = &block_descriptor_753;
  v11 = _Block_copy(v12);

  [v8 ignoreInviteRequestFromFriendWithUUID:v9 completion:v11];
  _Block_release(v11);
}

void sub_221F8B124(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *a3;

  LOBYTE(a2) = sub_221FB6138();
  sub_221FB6148();
  v8 = sub_221FB62E8();

  v9 = swift_allocObject();
  *(v9 + 16) = sub_221E95020;
  *(v9 + 24) = v6;
  v11[4] = sub_221F8E134;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_221F8AD04;
  v11[3] = &block_descriptor_735;
  v10 = _Block_copy(v11);

  [v7 setMuteEnabled:a2 & 1 forFriendWithUUID:v8 completion:v10];
  _Block_release(v10);
}

void sub_221F8B26C(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *a3;

  LOBYTE(a2) = sub_221FB5C78();
  sub_221FB5C88();
  v8 = sub_221FB62E8();

  v9 = swift_allocObject();
  *(v9 + 16) = sub_221E95020;
  *(v9 + 24) = v6;
  v11[4] = sub_221F8E134;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_221F8AD04;
  v11[3] = &block_descriptor_713;
  v10 = _Block_copy(v11);

  [v7 setActivityDataVisible:a2 & 1 toFriendWithUUID:v8 completion:v10];
  _Block_release(v10);
}

void sub_221F8B3B4(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *a3;

  v9 = sub_221FB62E8();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_221E95020;
  *(v10 + 24) = v7;
  v12[4] = sub_221F8E134;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_221F8AD04;
  v12[3] = &block_descriptor_691;
  v11 = _Block_copy(v12);

  [v8 sendCompetitionRequestToFriendWithUUID:v9 completion:v11];
  _Block_release(v11);
}

void sub_221F8B4EC(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *a3;

  v9 = sub_221FB62E8();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_221E95020;
  *(v10 + 24) = v7;
  v12[4] = sub_221F8E134;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_221F8AD04;
  v12[3] = &block_descriptor_673;
  v11 = _Block_copy(v12);

  [v8 acceptCompetitionRequestFromFriendWithUUID:v9 completion:v11];
  _Block_release(v11);
}

void sub_221F8B624(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *a3;

  v9 = sub_221FB62E8();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_221E95020;
  *(v10 + 24) = v7;
  v12[4] = sub_221F8E134;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_221F8AD04;
  v12[3] = &block_descriptor_655;
  v11 = _Block_copy(v12);

  [v8 ignoreCompetitionRequestFromFriendWithUUID:v9 completion:v11];
  _Block_release(v11);
}

void sub_221F8B75C(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *a3;

  v9 = sub_221FB62E8();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_221E95020;
  *(v10 + 24) = v7;
  v12[4] = sub_221F8E134;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_221F8AD04;
  v12[3] = &block_descriptor_637;
  v11 = _Block_copy(v12);

  [v8 completeCompetitionWithFriendWithUUID:v9 completion:v11];
  _Block_release(v11);
}

void sub_221F8B894(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *a3;

  v9 = sub_221FB62E8();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_221E95020;
  *(v10 + 24) = v7;
  v12[4] = sub_221F8E134;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_221F8AD04;
  v12[3] = &block_descriptor_619;
  v11 = _Block_copy(v12);

  [v8 rollCompetitionWithFriendWithUUID:v9 completion:v11];
  _Block_release(v11);
}

void sub_221F8B9CC(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_221E95020;
  *(v8 + 24) = v6;
  v10[4] = sub_221F8E134;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_221F8AD04;
  v10[3] = &block_descriptor_601;
  v9 = _Block_copy(v10);

  [v7 pushActivityDataToAllFriendsWithCompletion_];
  _Block_release(v9);
}

void sub_221F8BAE0(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_221E95020;
  *(v8 + 24) = v6;
  v10[4] = sub_221F8DDF0;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_221F8AD04;
  v10[3] = &block_descriptor_579;
  v9 = _Block_copy(v10);

  [v7 fetchAllDataWithCompletion_];
  _Block_release(v9);
}

void sub_221F8BBF4(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *a3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_221E95020;
  *(v10 + 24) = v8;
  v12[4] = sub_221F8E134;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_221F8AD04;
  v12[3] = &block_descriptor_561;
  v11 = _Block_copy(v12);

  [v9 fetchAllDataIfTimeSinceLastFetchIsGreaterThan:a4 completion:v11];
  _Block_release(v11);
}

void sub_221F8BD18(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_221E95020;
  *(v8 + 24) = v6;
  v10[4] = sub_221E950D8;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_221E95050;
  v10[3] = &block_descriptor_539;
  v9 = _Block_copy(v10);

  [v7 cloudKitAccountStatusWithCompletion_];
  _Block_release(v9);
}

void sub_221F8BE2C(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_221E95020;
  *(v8 + 24) = v6;
  v10[4] = sub_221F8E134;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_221F8AD04;
  v10[3] = &block_descriptor_521;
  v9 = _Block_copy(v10);

  [v7 expireChangeTokenWithCompletion_];
  _Block_release(v9);
}

void sub_221F8BF40(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  v8 = sub_221FB6C18();
  v9 = *a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_221E95020;
  *(v10 + 24) = v7;
  v13[4] = sub_221E95024;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_221E95050;
  v13[3] = &block_descriptor_503;
  v11 = _Block_copy(v13);
  v12 = v8;

  [v9 fetchAreMultipleDevicesSharingDataForSnapshotIndex:v12 withCompletion:v11];
  _Block_release(v11);
}

void sub_221F8C080(void (*a1)(id *, void), uint64_t a2, id *a3)
{
  v4 = [*a3 allFriends];
  if (v4)
  {
    v5 = v4;
    sub_221E9D138(0, &qword_281306E70, 0x277CE90F8);
    sub_221EC7A3C();
    sub_221FB64F8();

    v6 = sub_221FB64E8();

    v7 = ASCodableFriendListFromFriends();

    v9 = v7;
    v8 = v7;
    a1(&v9, 0);
  }

  else
  {
    v9 = 0;
    a1(&v9, 0);
  }
}

void sub_221F8C18C(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *a3;

  v9 = sub_221FB62E8();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_221F8DAF0;
  *(v10 + 24) = v7;
  v12[4] = sub_221F8DC7C;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_221F8E138;
  v12[3] = &block_descriptor_463;
  v11 = _Block_copy(v12);

  [v8 fetchCodableFriendWithRemoteUUID:v9 completion:v11];
  _Block_release(v11);
}

void sub_221F8C2C4(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *a3;

  v9 = sub_221FB62E8();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_221E95020;
  *(v10 + 24) = v7;
  v12[4] = sub_221F8E134;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_221F8AD04;
  v12[3] = &block_descriptor_436;
  v11 = _Block_copy(v12);

  [v8 removeFriendWithUUID:v9 completion:v11];
  _Block_release(v11);
}

void sub_221F8C3FC(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_221E95020;
  *(v8 + 24) = v6;
  v10[4] = sub_221F8E134;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_221F8AD04;
  v10[3] = &block_descriptor_418;
  v9 = _Block_copy(v10);

  [v7 clearFriendListWithCompletion_];
  _Block_release(v9);
}

void sub_221F8C510(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *a3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_221E95020;
  *(v10 + 24) = v8;
  v12[4] = sub_221F8E134;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_221F8AD04;
  v12[3] = &block_descriptor_400;
  v11 = _Block_copy(v12);

  [v9 handleNotificationResponse:a4 completion:v11];
  _Block_release(v11);
}

void sub_221F8C634(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_221F8DAF0;
  *(v8 + 24) = v6;
  v10[4] = sub_221F8DB28;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_221F8E138;
  v10[3] = &block_descriptor_378;
  v9 = _Block_copy(v10);

  [v7 queryAppBadgeCountWithCompletion_];
  _Block_release(v9);
}

void sub_221F8C748(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

void sub_221F8C7DC(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_221E9501C;
  *(v8 + 24) = v6;
  v10[4] = sub_221F8E134;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_221F8AD04;
  v10[3] = &block_descriptor_349;
  v9 = _Block_copy(v10);

  [v7 pushFakeActivityDataToAllFriendsWithCompletion_];
  _Block_release(v9);
}

uint64_t sub_221F8C8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v21[0] = a3;
  v6 = sub_221FB6208();
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_221FB6238();
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECA20, &unk_221FBEE18);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v21 - v14;
  v21[1] = *(a2 + 8);
  (*(v13 + 16))(v21 - v14, a1, v12);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = v21[0];
  *(v17 + 24) = v18;
  (*(v13 + 32))(v17 + v16, v15, v12);
  aBlock[4] = sub_221E95BFC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_221F560F8;
  aBlock[3] = &block_descriptor_31;
  v19 = _Block_copy(aBlock);

  sub_221FB6228();
  v25 = MEMORY[0x277D84F90];
  sub_221F8D7CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC180, &qword_221FBAB70);
  sub_221F8D824();
  sub_221FB67D8();
  MEMORY[0x223DACA00](0, v11, v8, v19);
  _Block_release(v19);
  (*(v24 + 8))(v8, v6);
  (*(v9 + 8))(v11, v23);
}

uint64_t sub_221F8CC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v21[0] = a3;
  v6 = sub_221FB6208();
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_221FB6238();
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECA48, &qword_221FBEE78);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v21 - v14;
  v21[1] = *(a2 + 8);
  (*(v13 + 16))(v21 - v14, a1, v12);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = v21[0];
  *(v17 + 24) = v18;
  (*(v13 + 32))(v17 + v16, v15, v12);
  aBlock[4] = sub_221F8DD7C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_221F560F8;
  aBlock[3] = &block_descriptor_478;
  v19 = _Block_copy(aBlock);

  sub_221FB6228();
  v25 = MEMORY[0x277D84F90];
  sub_221F8D7CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC180, &qword_221FBAB70);
  sub_221F8D824();
  sub_221FB67D8();
  MEMORY[0x223DACA00](0, v11, v8, v19);
  _Block_release(v19);
  (*(v24 + 8))(v8, v6);
  (*(v9 + 8))(v11, v23);
}

uint64_t sub_221F8CFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v21[0] = a3;
  v6 = sub_221FB6208();
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_221FB6238();
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECA38, &qword_221FBEE60);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v21 - v14;
  v21[1] = *(a2 + 8);
  (*(v13 + 16))(v21 - v14, a1, v12);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = v21[0];
  *(v17 + 24) = v18;
  (*(v13 + 32))(v17 + v16, v15, v12);
  aBlock[4] = sub_221F8DBA8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_221F560F8;
  aBlock[3] = &block_descriptor_451;
  v19 = _Block_copy(aBlock);

  sub_221FB6228();
  v25 = MEMORY[0x277D84F90];
  sub_221F8D7CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC180, &qword_221FBAB70);
  sub_221F8D824();
  sub_221FB67D8();
  MEMORY[0x223DACA00](0, v11, v8, v19);
  _Block_release(v19);
  (*(v24 + 8))(v8, v6);
  (*(v9 + 8))(v11, v23);
}

uint64_t sub_221F8D318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v21[0] = a3;
  v6 = sub_221FB6208();
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_221FB6238();
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECA28, &qword_221FBEE30);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v21 - v14;
  v21[1] = *(a2 + 8);
  (*(v13 + 16))(v21 - v14, a1, v12);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = v21[0];
  *(v17 + 24) = v18;
  (*(v13 + 32))(v17 + v16, v15, v12);
  aBlock[4] = sub_221F8D89C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_221F560F8;
  aBlock[3] = &block_descriptor_366;
  v19 = _Block_copy(aBlock);

  sub_221FB6228();
  v25 = MEMORY[0x277D84F90];
  sub_221F8D7CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC180, &qword_221FBAB70);
  sub_221F8D824();
  sub_221FB67D8();
  MEMORY[0x223DACA00](0, v11, v8, v19);
  _Block_release(v19);
  (*(v24 + 8))(v8, v6);
  (*(v9 + 8))(v11, v23);
}

uint64_t sub_221F8D674(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  (*(v11 + 16))(&v17 - v12, a3, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  (*(v11 + 32))(v15 + v14, v13, v10);
  a1(a7, v15);
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_221F8D7CC()
{
  result = qword_281306F80;
  if (!qword_281306F80)
  {
    sub_221FB6208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281306F80);
  }

  return result;
}

unint64_t sub_221F8D824()
{
  result = qword_281306F58;
  if (!qword_281306F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEC180, &qword_221FBAB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281306F58);
  }

  return result;
}

uint64_t sub_221F8D958(id *a1, id a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2)
  {
    v7 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_221FB6498();
  }

  else
  {
    v9 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_221FB64A8();
  }
}

uint64_t sub_221F8D9E0(id *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECA28, &qword_221FBEE30);
    return sub_221FB6498();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECA28, &qword_221FBEE30);
    return sub_221FB64A8();
  }
}

uint64_t sub_221F8DA64(id *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECA28, &qword_221FBEE30);

  return sub_221F8D9E0(a1, a2);
}

uint64_t sub_221F8DAF0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_221F8DB28(id a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  if (a1)
  {
    a1 = [a1 integerValue];
  }

  return v5(a1, a3);
}

uint64_t objectdestroy_336Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_221F8DEB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 72) & ~*(v7 + 80));

  return a4(a1, a2, v4 + 16, v8);
}

uint64_t objectdestroy_422Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_699Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 72) & ~v4;
  v6 = *(v3 + 64);

  __swift_destroy_boxed_opaque_existential_0((v1 + 32));
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_221F8E1C0(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return v7(a1, a2);
}

uint64_t sub_221F8E2D8(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E96070;

  return v7(a1, a2);
}

uint64_t sub_221F8E3F0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v13 = a2;
  v14 = a1;
  v15 = sub_221FB6618();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_221FB6608();
  MEMORY[0x28223BE20](v9);
  v10 = sub_221FB6238();
  MEMORY[0x28223BE20](v10 - 8);
  sub_221EA4AB4(a1, a3);
  sub_221EA4AB4(a2, a3 + 40);
  sub_221E9D138(0, &qword_281306EB8, 0x277D85C78);
  sub_221FB6228();
  v16 = MEMORY[0x277D84F90];
  sub_221F3FABC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC500, &qword_221FBCD20);
  sub_221F3FB14();
  sub_221FB67D8();
  (*(v6 + 104))(v8, *MEMORY[0x277D85260], v15);
  v11 = sub_221FB6648();
  __swift_destroy_boxed_opaque_existential_0(v13);
  result = __swift_destroy_boxed_opaque_existential_0(v14);
  *(a3 + 80) = v11;
  return result;
}

uint64_t sub_221F8E660()
{
  v1 = v0[25];
  v2 = [objc_allocWithZone(MEMORY[0x277CE9540]) initWithSerialQueue_];
  v0[26] = v2;
  v3 = __swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
  v4 = ASCloudKitGroupUserActionExplicit();
  v0[27] = v4;
  v0[28] = sub_221ED83E8(MEMORY[0x277D84F90]);
  v5 = *v3;
  sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
  v6 = sub_221FB6428();
  v0[29] = v6;
  v7 = sub_221FB6428();
  v0[30] = v7;
  sub_221E9D138(0, &unk_27CFECC70, 0x277CE9530);
  v8 = sub_221FB6278();
  v0[31] = v8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221F8E898;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECC80, &unk_221FBA7B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221EE370C;
  v0[13] = &block_descriptor_32;
  v0[14] = v9;
  [v5 fetchChangesInPrivateDatabaseWithServerChangeTokenCache:v2 priority:2 activity:0 group:v4 additionalZoneIDs:v6 zoneIDsToSkip:v7 fetchConfigurations:v8 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221F8E898()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_221F8EDAC;
  }

  else
  {
    v2 = sub_221F8E9A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_221F8E9A8()
{
  v39 = v0;
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 152);
  *(v0 + 264) = v4;

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 216);
  v6 = sub_221FB61D8();
  *(v0 + 272) = __swift_project_value_buffer(v6, qword_281307DF0);

  v7 = v5;
  v8 = sub_221FB61B8();
  v9 = sub_221FB65C8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v10 = 134349314;
    if (v4 >> 62)
    {
      v11 = sub_221FB6868();
    }

    else
    {
      v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = *(v0 + 216);
    *(v10 + 4) = v11;

    *(v10 + 12) = 2080;
    v13 = [v12 name];
    if (v13)
    {
      v14 = v13;
      v15 = sub_221FB6318();
      v17 = v16;

      *(v0 + 168) = 0;
      *(v0 + 176) = 0xE000000000000000;
      *(v0 + 184) = v15;
      *(v0 + 192) = v17;
      sub_221FB6A08();

      v18 = *(v0 + 168);
      v19 = *(v0 + 176);
    }

    else
    {
      v19 = 0xE300000000000000;
      v18 = 7104878;
    }

    v21 = *(v0 + 216);
    v22 = sub_221EF4114(v18, v19, &v38);

    *(v10 + 14) = v22;
    _os_log_impl(&dword_221E93000, v8, v9, "Fetched %{public}ld records from secure cloud private database, group: %s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x223DADA80](v37, -1, -1);
    MEMORY[0x223DADA80](v10, -1, -1);
  }

  else
  {
    v20 = *(v0 + 216);
  }

  v23 = sub_221FB61B8();
  v24 = sub_221FB65C8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38 = v26;
    *v25 = 136315138;
    v27 = sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    v28 = MEMORY[0x223DAC810](v4, v27);
    v30 = sub_221EF4114(v28, v29, &v38);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_221E93000, v23, v24, "Fetched private records %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x223DADA80](v26, -1, -1);
    MEMORY[0x223DADA80](v25, -1, -1);
  }

  v31 = __swift_project_boxed_opaque_existential_0Tm(*(v0 + 200), *(*(v0 + 200) + 24));
  v32 = ASCloudKitGroupUserActionExplicit();
  *(v0 + 280) = v32;
  v33 = *v31;
  v34 = swift_task_alloc();
  *(v0 + 288) = v34;
  *v34 = v0;
  v34[1] = sub_221F8EE50;
  v35 = *(v0 + 208);

  return sub_221EE383C(v35, 2, v32, 0, v33);
}

uint64_t sub_221F8EDAC(uint64_t a1)
{
  v2 = *(v1 + 248);
  v4 = *(v1 + 232);
  v3 = *(v1 + 240);
  v5 = *(v1 + 216);
  swift_willThrow();

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_221F8EE50(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  if (v1)
  {

    v5 = sub_221F8F128;
  }

  else
  {
    v5 = sub_221F8EF9C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F8EF9C()
{
  v16 = v0;

  v1 = sub_221FB61B8();
  v2 = sub_221FB65C8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[37];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    v6 = sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    v7 = MEMORY[0x223DAC810](v3, v6);
    v9 = sub_221EF4114(v7, v8, &v15);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_221E93000, v1, v2, "Fetched shared records %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223DADA80](v5, -1, -1);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v10 = v0[37];
  v11 = v0[26];
  v15 = v0[33];
  sub_221ED4350(v10);

  v12 = v15;
  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_221F8F128()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F8F19C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_221F8F1E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221F8F248()
{
  v1 = v0;
  [v0 _activitySummaryIndex];
  sub_221FB6B08();
  v41 = [v0 activityMoveMode];
  v2 = sub_221FB6B08();
  MEMORY[0x223DAC740](v2);

  v3 = [v0 activityMoveMode];
  if (v3 == 2)
  {
    v4 = &selRef_minuteUnit;
  }

  else
  {
    v4 = &selRef_kilocalorieUnit;
  }

  v5 = &selRef_appleMoveTime;
  if (v3 == 2)
  {
    v6 = &selRef_appleMoveTimeGoal;
  }

  else
  {
    v5 = &selRef_activeEnergyBurned;
    v6 = &selRef_activeEnergyBurnedGoal;
  }

  v7 = [v0 *v5];
  v8 = objc_opt_self();
  v9 = [v8 *v4];
  [v7 doubleValueForUnit_];

  v10 = sub_221FB64D8();
  MEMORY[0x223DAC740](v10);

  v11 = [v1 *v6];
  v12 = [v8 *v4];
  [v11 doubleValueForUnit_];

  v13 = sub_221FB64D8();
  MEMORY[0x223DAC740](v13);

  v14 = [v1 appleExerciseTime];
  v15 = objc_opt_self();
  v16 = [v15 minuteUnit];
  [v14 doubleValueForUnit_];

  v17 = sub_221FB64D8();
  MEMORY[0x223DAC740](v17);

  v18 = [v1 exerciseTimeGoal];
  if (v18)
  {
    v19 = v18;
    v20 = [v15 minuteUnit];
    [v19 doubleValueForUnit_];

    v21 = sub_221FB64D8();
    MEMORY[0x223DAC740](v21);
  }

  v22 = [v1 appleStandHours];
  v23 = [v15 countUnit];
  [v22 doubleValueForUnit_];

  v24 = sub_221FB64D8();
  MEMORY[0x223DAC740](v24);

  v25 = [v1 standHoursGoal];
  if (v25)
  {
    v26 = v25;
    v27 = [v15 countUnit];
    [v26 doubleValueForUnit_];

    v28 = sub_221FB64D8();
    MEMORY[0x223DAC740](v28);
  }

  v29 = [v1 distanceWalkingRunning];
  v30 = [v15 meterUnit];
  [v29 doubleValueForUnit_];

  v31 = sub_221FB64D8();
  MEMORY[0x223DAC740](v31);

  v32 = [v1 stepCount];
  v33 = [v15 countUnit];
  [v32 doubleValueForUnit_];

  v34 = sub_221FB64D8();
  MEMORY[0x223DAC740](v34);

  v35 = [v1 _pushCount];
  v36 = [v15 countUnit];
  [v35 doubleValueForUnit_];

  v37 = sub_221FB64D8();
  MEMORY[0x223DAC740](v37);

  [v1 _wheelchairUse];
  v38 = sub_221FB6B08();
  MEMORY[0x223DAC740](v38);

  sub_221E9E194();
  v39 = sub_221FB67B8();

  return v39;
}

uint64_t sub_221F8F7B4(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return v7(a1, a2);
}

uint64_t sub_221F8F8CC(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_221F8F8F0, 0, 0);
}

uint64_t sub_221F8F8F0()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v19 = MEMORY[0x277D84F90];
    sub_221FB69D8();
    sub_221E9D138(0, &qword_281306E90, 0x277CBC2A0);
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_221F96134();

      MEMORY[0x223DAC740](v6, v5);

      v7 = [objc_allocWithZone(MEMORY[0x277CBC4D0]) init];
      v8 = sub_221FB62E8();
      [v7 setAlertBody_];

      v9 = sub_221FB66C8();

      sub_221FB66B8();
      v10 = v9;
      [v10 setNotificationInfo_];

      sub_221FB69B8();
      sub_221FB69E8();
      sub_221FB69F8();
      sub_221FB69C8();
      v4 += 2;
      --v2;
    }

    while (v2);
    v3 = v19;
  }

  *(v0 + 184) = v3;
  v11 = *(v0 + 168);
  v12 = **(v0 + 176);

  v14 = sub_221F17EF8(v13);

  sub_221F901BC(v14);

  sub_221E9D138(0, &qword_281306EE0, 0x277CBC6E0);
  sub_221E9E930(&qword_281306ED8, &qword_281306EE0, 0x277CBC6E0);
  v15 = sub_221FB64E8();
  *(v0 + 192) = v15;

  sub_221F18084(MEMORY[0x277D84F90]);
  v16 = sub_221FB64E8();
  *(v0 + 200) = v16;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_221F8FC48;
  v17 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECA50, &unk_221FBF058);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_221F906CC;
  *(v0 + 104) = &block_descriptor_33;
  *(v0 + 112) = v17;
  [v12 saveSubscriptions:v15 andDeleteSubscriptionsWithIdentifiers:v16 inDatabase:v11 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_221F8FC48()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {

    v2 = sub_221F90144;
  }

  else
  {
    v2 = sub_221F8FD60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

char *sub_221F8FD60()
{
  v47 = v0;
  v1 = v0[24];
  v2 = v0[25];

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v3 = v0[21];
  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);

  v5 = v3;
  v6 = sub_221FB61B8();
  v7 = sub_221FB65C8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[23];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = v11;
    v45 = v11;
    *v10 = 136315394;
    if (v9 >> 62)
    {
      v13 = sub_221FB6868();
      v44 = v12;
      if (v13)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v44 = v11;
      if (v13)
      {
LABEL_6:
        v46 = MEMORY[0x277D84F90];
        result = sub_221F77644(0, v13 & ~(v13 >> 63), 0);
        if (v13 < 0)
        {
          __break(1u);
          return result;
        }

        v42 = v7;
        v43 = v6;
        v15 = v46;
        if ((v9 & 0xC000000000000001) != 0)
        {
          v16 = 0;
          do
          {
            MEMORY[0x223DACD50](v16, v0[23]);
            v17 = sub_221FB65E8();
            v19 = v18;
            swift_unknownObjectRelease();
            v46 = v15;
            v21 = *(v15 + 16);
            v20 = *(v15 + 24);
            if (v21 >= v20 >> 1)
            {
              sub_221F77644((v20 > 1), v21 + 1, 1);
              v15 = v46;
            }

            ++v16;
            *(v15 + 16) = v21 + 1;
            v22 = v15 + 16 * v21;
            *(v22 + 32) = v17;
            *(v22 + 40) = v19;
          }

          while (v13 != v16);
        }

        else
        {
          v23 = (v0[23] + 32);
          do
          {
            v24 = *v23;
            v25 = sub_221FB65E8();
            v27 = v26;

            v46 = v15;
            v29 = *(v15 + 16);
            v28 = *(v15 + 24);
            if (v29 >= v28 >> 1)
            {
              sub_221F77644((v28 > 1), v29 + 1, 1);
              v15 = v46;
            }

            *(v15 + 16) = v29 + 1;
            v30 = v15 + 16 * v29;
            *(v30 + 32) = v25;
            *(v30 + 40) = v27;
            ++v23;
            --v13;
          }

          while (v13);
        }

        v6 = v43;
        v7 = v42;
        goto LABEL_21;
      }
    }

    v15 = MEMORY[0x277D84F90];
LABEL_21:
    v31 = v0[21];
    v32 = MEMORY[0x223DAC810](v15, MEMORY[0x277D837D0]);
    v34 = v33;

    v35 = sub_221EF4114(v32, v34, &v45);

    *(v10 + 4) = v35;
    *(v10 + 12) = 2080;
    [v31 scope];
    v36 = CKDatabaseScopeString();
    v37 = sub_221FB6318();
    v39 = v38;

    v40 = sub_221EF4114(v37, v39, &v45);

    *(v10 + 14) = v40;
    _os_log_impl(&dword_221E93000, v6, v7, "Saved subscriptions %s to database %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v44, -1, -1);
    MEMORY[0x223DADA80](v10, -1, -1);

    goto LABEL_22;
  }

LABEL_22:
  v41 = v0[1];

  return v41();
}

uint64_t sub_221F90144(uint64_t a1)
{
  v2 = v1[25];
  v3 = v1[24];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

void sub_221F901BC(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  if (!sub_221FB6868())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECA58, &qword_221FBF068);
  v3 = sub_221FB6948();
LABEL_6:
  if (sub_221E9D138(0, &qword_281306EE0, 0x277CBC6E0) == MEMORY[0x277D837D0])
  {
    if (v2)
    {

      sub_221FB6828();
      sub_221E9D138(0, &qword_281306E90, 0x277CBC2A0);
      sub_221E9E930(&qword_281306E88, &qword_281306E90, 0x277CBC2A0);
      sub_221FB6538();
      v1 = v39;
      v8 = v40;
      v9 = v41;
      v10 = v42;
      v11 = v43;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);

      v10 = 0;
    }

    while ((v1 & 0x8000000000000000) == 0)
    {
      if (v11)
      {
        v33 = v10;
        goto LABEL_44;
      }

      v36 = v10;
      do
      {
        v33 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_60;
        }

        if (v33 >= ((v9 + 64) >> 6))
        {
          v37 = v1;
          goto LABEL_56;
        }

        v11 = *(v8 + 8 * v33);
        ++v36;
      }

      while (!v11);
      v10 = v33;
LABEL_44:
      v34 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
LABEL_45:
      sub_221F90DDC(v35);
    }

    if (sub_221FB6898())
    {
      sub_221E9D138(0, &qword_281306E90, 0x277CBC2A0);
      swift_dynamicCast();
      v35 = v38;
      goto LABEL_45;
    }

    v37 = v1;
LABEL_56:
    sub_221E96470(v37);
LABEL_57:

    return;
  }

  if (v2)
  {

    sub_221FB6828();
    sub_221E9D138(0, &qword_281306E90, 0x277CBC2A0);
    sub_221E9E930(&qword_281306E88, &qword_281306E90, 0x277CBC2A0);
    sub_221FB6538();
    v1 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
    v7 = v43;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_221FB6898())
    {
LABEL_38:
      sub_221E96470(v1);
      goto LABEL_57;
    }

    sub_221E9D138(0, &qword_281306E90, 0x277CBC2A0);
    swift_dynamicCast();
    v19 = v38;
LABEL_29:
    v22 = sub_221FB6748();
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_59;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v25);
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v38 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v38;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_38;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_221F906CC(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v6 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    sub_221E9D138(0, &qword_281306EE0, 0x277CBC6E0);
    sub_221E9E930(&qword_281306ED8, &qword_281306EE0, 0x277CBC6E0);
    v10 = sub_221FB64F8();
    v11 = *(*(v6 + 64) + 40);
    *v11 = a2;
    *(v11 + 8) = v10;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_221F90814()
{
  v1 = v0[16];
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB78, &unk_221FBB910);
  inited = swift_initStackObject();
  v0[18] = inited;
  *(inited + 16) = xmmword_221FBB1B0;
  *(inited + 32) = sub_221FB6318();
  *(inited + 40) = v3;
  v0[19] = *MEMORY[0x277CE8F00];
  *(inited + 48) = sub_221FB6318();
  *(inited + 56) = v4;
  __swift_project_boxed_opaque_existential_0Tm((v1 + 8), *(v1 + 32));
  v5 = sub_221F9ACE4();
  v6 = [v5 sharedCloudDatabase];
  v0[20] = v6;

  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_221F90950;

  return sub_221F8F8CC(inited, v6);
}

uint64_t sub_221F90950()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_221F90CE4;
  }

  else
  {

    swift_setDeallocating();
    swift_arrayDestroy();
    v3 = sub_221F90A8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F90A8C()
{
  v1 = v0[16];
  inited = swift_initStackObject();
  v0[23] = inited;
  *(inited + 16) = xmmword_221FB81A0;
  *(inited + 32) = sub_221FB6318();
  *(inited + 40) = v3;
  __swift_project_boxed_opaque_existential_0Tm((v1 + 8), *(v1 + 32));
  v4 = sub_221F9ACE4();
  v5 = [v4 privateCloudDatabase];
  v0[24] = v5;

  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_221F90B94;

  return sub_221F8F8CC(inited, v5);
}

uint64_t sub_221F90B94()
{
  v2 = *v1;
  *(v2 + 208) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221F90D68, 0, 0);
  }

  else
  {
    v3 = *(v2 + 184);

    swift_setDeallocating();
    sub_221EA4B18(v3 + 32);
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_221F90CE4()
{
  swift_setDeallocating();
  swift_arrayDestroy();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221F90D68()
{
  v1 = *(v0 + 184);

  swift_setDeallocating();
  sub_221EA4B18(v1 + 32);
  v2 = *(v0 + 8);

  return v2();
}

void sub_221F90DDC(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_221FB6748();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_221E9D138(0, &qword_281306EE0, 0x277CBC6E0);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_221FB6758();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

uint64_t Loggable.logDescription.getter(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_221FB6328();
}

uint64_t sub_221F90FF4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t **sub_221F910DC()
{
  v1 = [*v0 secureCloudCompetitionListsToSave];
  sub_221E9D138(0, &qword_27CFEBE30, 0x277CE90E0);
  sub_221EC69E0();
  v2 = sub_221FB64F8();

  v3 = sub_221E9EBF8(v2);

  return v3;
}

void sub_221F9117C(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *v4;
  sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
  v7 = sub_221FB6428();
  [v6 *a4];
}

uint64_t sub_221F9121C(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return v7(a1, a2);
}

uint64_t sub_221F91334(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return v7(a1, a2);
}

uint64_t sub_221F9144C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E9E350;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221F9157C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221E9544C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221F91770(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBF88, &qword_221FBE3D0);
    sub_221F91868(a2, 255, MEMORY[0x277CC95F0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_221F91810(uint64_t a1, uint64_t a2)
{
  result = sub_221F91868(&qword_27CFECA60, a2, type metadata accessor for WorkoutDeletionAnchorStore, &unk_221FBF2C4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221F91868(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_221F918C4()
{
  result = qword_27CFECA68;
  if (!qword_27CFECA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFECA68);
  }

  return result;
}

uint64_t sub_221F91918(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return v7(a1, a2);
}

uint64_t sub_221F91A30(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return v7(a1, a2);
}

uint64_t sub_221F91B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221EE581C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_221F91C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_221E9E350;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_221F91DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_221E9544C;

  return v13(a1, a2, a3, a4, a5);
}

char *sub_221F91EF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = sub_221E9E984(*(a2 + 16), 0);
    v6 = sub_221E9F5AC();

    sub_221E96470(v32);
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v32 = v5;
  v7 = 0;
  sub_221F92B14(&v32);
  v8 = v32;
  if (*(v32 + 2) >= a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = *(v32 + 2);
  }

  if (a1 < 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
    v10 = sub_221ED7E7C(MEMORY[0x277D84F90]);
    v11 = 0;
LABEL_10:
    while (2)
    {
      while (2)
      {
        v7 = v11;
        while (1)
        {
          if (v9 == v7)
          {

            return v10;
          }

          if (v7 >= v9)
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v11 = (v7 + 1);
          if (__OFADD__(v7, 1))
          {
            goto LABEL_32;
          }

          v14 = *&v8[8 * v7 + 32];
          if (*(a2 + 16))
          {
            v15 = sub_221ED4C68(*&v8[8 * v7 + 32]);
            if (v16)
            {
              break;
            }
          }

          v12 = sub_221ED4C68(v14);
          ++v7;
          if (v13)
          {
            v26 = v12;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v32 = v10;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_221ED6E44();
              v10 = v32;
            }

            sub_221F55650(v26, v10);
            goto LABEL_10;
          }
        }

        v7 = *(*(a2 + 56) + 8 * v15);
        v17 = swift_isUniquelyReferenced_nonNull_native();
        v32 = v10;
        v18 = sub_221ED4C68(v14);
        v20 = *(v10 + 2);
        v21 = (v19 & 1) == 0;
        v22 = __OFADD__(v20, v21);
        v23 = v20 + v21;
        if (v22)
        {
          goto LABEL_34;
        }

        v24 = v19;
        if (*(v10 + 3) >= v23)
        {
          if ((v17 & 1) == 0)
          {
            v30 = v18;
            sub_221ED6E44();
            v18 = v30;
          }
        }

        else
        {
          sub_221ED5680(v23, v17);
          v18 = sub_221ED4C68(v14);
          if ((v24 & 1) != (v25 & 1))
          {
            goto LABEL_36;
          }
        }

        v10 = v32;
        if (v24)
        {
          *(*(v32 + 7) + 8 * v18) = v7;
          continue;
        }

        break;
      }

      *&v32[8 * (v18 >> 6) + 64] |= 1 << v18;
      *(*(v10 + 6) + 8 * v18) = v14;
      *(*(v10 + 7) + 8 * v18) = v7;
      v28 = *(v10 + 2);
      v22 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (!v22)
      {
        *(v10 + 2) = v29;
        continue;
      }

      break;
    }
  }

  __break(1u);

  __break(1u);
LABEL_36:
  result = sub_221FB6B98();
  __break(1u);
  return result;
}

char *sub_221F921A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = sub_221E9E984(*(a2 + 16), 0);
    v6 = sub_221E9F5AC();

    sub_221E96470(v30);
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v30 = v5;
  v7 = 0;
  sub_221F92B14(&v30);
  v8 = v30;
  if (*(v30 + 2) >= a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = *(v30 + 2);
  }

  if (a1 < 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
    v10 = sub_221ED82C0(MEMORY[0x277D84F90]);
    v11 = 0;
LABEL_10:
    while (2)
    {
      while (2)
      {
        v7 = v11;
        while (1)
        {
          if (v9 == v7)
          {

            return v10;
          }

          if (v7 >= v9)
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v11 = (v7 + 1);
          if (__OFADD__(v7, 1))
          {
            goto LABEL_32;
          }

          v13 = *&v8[8 * v7 + 32];
          if (*(a2 + 16))
          {
            v14 = sub_221ED4C68(*&v8[8 * v7 + 32]);
            if (v15)
            {
              break;
            }
          }

          sub_221ED4C68(v13);
          ++v7;
          if (v12)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v30 = v10;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_221ED729C();
              v10 = v30;
            }

            sub_221F55AEC();
            goto LABEL_10;
          }
        }

        v7 = *(*(a2 + 56) + 8 * v14);

        v16 = swift_isUniquelyReferenced_nonNull_native();
        v30 = v10;
        v17 = sub_221ED4C68(v13);
        v19 = *(v10 + 2);
        v20 = (v18 & 1) == 0;
        v21 = __OFADD__(v19, v20);
        v22 = v19 + v20;
        if (v21)
        {
          goto LABEL_34;
        }

        v23 = v18;
        if (*(v10 + 3) >= v22)
        {
          if ((v16 & 1) == 0)
          {
            v28 = v17;
            sub_221ED729C();
            v17 = v28;
          }
        }

        else
        {
          sub_221ED5E3C(v22, v16);
          v17 = sub_221ED4C68(v13);
          if ((v23 & 1) != (v24 & 1))
          {
            goto LABEL_36;
          }
        }

        v10 = v30;
        if (v23)
        {
          *(*(v30 + 7) + 8 * v17) = v7;

          continue;
        }

        break;
      }

      *&v30[8 * (v17 >> 6) + 64] |= 1 << v17;
      *(*(v10 + 6) + 8 * v17) = v13;
      *(*(v10 + 7) + 8 * v17) = v7;
      v26 = *(v10 + 2);
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (!v21)
      {
        *(v10 + 2) = v27;
        continue;
      }

      break;
    }
  }

  __break(1u);

  __break(1u);
LABEL_36:
  result = sub_221FB6B98();
  __break(1u);
  return result;
}

char *sub_221F92470(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = sub_221E9E984(*(a2 + 16), 0);
    v6 = sub_221E9F5AC();

    sub_221E96470(v30);
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v30 = v5;
  v7 = 0;
  sub_221F92B14(&v30);
  v8 = v30;
  if (*(v30 + 2) >= a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = *(v30 + 2);
  }

  if (a1 < 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
    v10 = sub_221ED82D4(MEMORY[0x277D84F90]);
    v11 = 0;
LABEL_10:
    while (2)
    {
      while (2)
      {
        v7 = v11;
        while (1)
        {
          if (v9 == v7)
          {

            return v10;
          }

          if (v7 >= v9)
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v11 = (v7 + 1);
          if (__OFADD__(v7, 1))
          {
            goto LABEL_32;
          }

          v13 = *&v8[8 * v7 + 32];
          if (*(a2 + 16))
          {
            v14 = sub_221ED4C68(*&v8[8 * v7 + 32]);
            if (v15)
            {
              break;
            }
          }

          sub_221ED4C68(v13);
          ++v7;
          if (v12)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v30 = v10;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_221ED72C4();
              v10 = v30;
            }

            sub_221F55AEC();
            goto LABEL_10;
          }
        }

        v7 = *(*(a2 + 56) + 8 * v14);

        v16 = swift_isUniquelyReferenced_nonNull_native();
        v30 = v10;
        v17 = sub_221ED4C68(v13);
        v19 = *(v10 + 2);
        v20 = (v18 & 1) == 0;
        v21 = __OFADD__(v19, v20);
        v22 = v19 + v20;
        if (v21)
        {
          goto LABEL_34;
        }

        v23 = v18;
        if (*(v10 + 3) >= v22)
        {
          if ((v16 & 1) == 0)
          {
            v28 = v17;
            sub_221ED72C4();
            v17 = v28;
          }
        }

        else
        {
          sub_221ED5E64(v22, v16);
          v17 = sub_221ED4C68(v13);
          if ((v23 & 1) != (v24 & 1))
          {
            goto LABEL_36;
          }
        }

        v10 = v30;
        if (v23)
        {
          *(*(v30 + 7) + 8 * v17) = v7;

          continue;
        }

        break;
      }

      *&v30[8 * (v17 >> 6) + 64] |= 1 << v17;
      *(*(v10 + 6) + 8 * v17) = v13;
      *(*(v10 + 7) + 8 * v17) = v7;
      v26 = *(v10 + 2);
      v21 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (!v21)
      {
        *(v10 + 2) = v27;
        continue;
      }

      break;
    }
  }

  __break(1u);

  __break(1u);
LABEL_36:
  result = sub_221FB6B98();
  __break(1u);
  return result;
}

char *sub_221F9273C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_221FB5C38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a3 UUID];
  if (v9)
  {
    v10 = v9;
    sub_221FB5C18();

    v11 = sub_221FB5BE8();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    v14 = sub_221ECB638(v11, v13);

    if (v14)
    {
      if (!*(v14 + 16))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v14 = sub_221ED82D4(MEMORY[0x277D84F90]);
      if (!*(v14 + 16))
      {
        goto LABEL_8;
      }
    }

    v15 = sub_221ED4C68(a2);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);

LABEL_9:

      v19 = sub_221F7175C(v18, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECA78, &qword_221FBF4D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_221FB81A0;
      *(inited + 32) = a2;
      v21 = inited + 32;
      *(inited + 40) = v19;
      v22 = sub_221ED82D4(inited);
      swift_setDeallocating();
      sub_221F93450(v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v14;
      sub_221F934B8(v22, sub_221EE5550, 0, isUniquelyReferenced_nonNull_native, &v27);

      v24 = sub_221F92470(3, v27);

      return v24;
    }

LABEL_8:
    v17 = MEMORY[0x277D84FA0];
    goto LABEL_9;
  }

  __break(1u);

  __break(1u);
  return result;
}