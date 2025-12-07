void *sub_249CFF468(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19928, &qword_249D08018);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198E8, &qword_249D07FC0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198E8, &qword_249D07FC0) - 8);
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

uint64_t sub_249CFF658(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_249CFF724(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_249CF91AC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

void sub_249CFF724(uint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          *(__dst + v9) = 0;
          *a1 = __dst;
          return;
        }
      }
    }

LABEL_8:
    sub_249CFF830(a5, a6);
    *a1 = v8;
    return;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    v7 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    v7 = sub_249D04CCC();
    a6 = v11;
    if (!v7)
    {
      __break(1u);
      return;
    }
  }

  *a1 = v7;
  if ((a6 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRetain();
  }
}

void *sub_249CFF830(uint64_t a1, unint64_t a2)
{
  v3 = sub_249CFF87C(a1, a2);
  sub_249CFF9AC(&unk_285CEAA68);
  return v3;
}

void *sub_249CFF87C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_249CFFA98(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_249D04CCC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_249D04A8C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_249CFFA98(v10, 0);
        result = sub_249D04C9C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_249CFF9AC(uint64_t result)
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

  result = sub_249CFFB0C(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_249CFFA98(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19980, &qword_249D080D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_249CFFB0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19980, &qword_249D080D0);
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

uint64_t sub_249CFFC00(_OWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 49);
  *v45 = *(a2 + 33);
  *&v45[16] = v8;
  *&v45[32] = *(a2 + 65);
  v9 = *v2;
  sub_249D04D7C();
  sub_249D04C5C();
  if (v4 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v4;
  }

  MEMORY[0x24C1FEE80](*&v10);
  if (v5 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v5;
  }

  MEMORY[0x24C1FEE80](*&v11);
  if (v6 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v6;
  }

  MEMORY[0x24C1FEE80](*&v12);
  v46 = *&v45[7];
  v47 = *&v45[23];
  v48 = v45[39];
  v38 = v7;
  sub_249D04D8C();
  sub_249D01748();
  v13 = sub_249D04DAC();
  v14 = -1 << *(v9 + 32);
  v15 = v13 & ~v14;
  if (((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_24:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v40[0] = *v32;
    sub_249CE93BC(a2, &v42);
    sub_249D00310(a2, v15, isUniquelyReferenced_nonNull_native);
    *v32 = *&v40[0];
    v23 = *(a2 + 48);
    a1[2] = *(a2 + 32);
    a1[3] = v23;
    *(a1 + 57) = *(a2 + 57);
    v24 = *(a2 + 16);
    result = 1;
    *a1 = *a2;
    a1[1] = v24;
    return result;
  }

  v16 = ~v14;
  sub_249CE6CC8(0, &qword_27EF198C0, 0x277D82BB8);
  while (1)
  {
    v17 = (*(v9 + 48) + 80 * v15);
    v42 = *v17;
    v19 = v17[2];
    v18 = v17[3];
    v20 = *(v17 + 57);
    v43 = v17[1];
    *v44 = v19;
    *&v44[25] = v20;
    *&v44[16] = v18;
    sub_249CE93BC(&v42, v40);
    if (sub_249D04C4C() & 1) == 0 || *(&v42 + 1) != v4 || *&v43 != v5 || *(&v43 + 1) != v6 || ((v44[0] ^ v38))
    {
      goto LABEL_13;
    }

    v21 = v48;
    if (v44[40])
    {
      break;
    }

    v36 = *&v44[8];
    v37 = *&v44[24];
    v34 = v46;
    v35 = v47;
    sub_249CE93F4(&v42);
    if ((v21 & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v36, v34), vceqq_f64(v37, v35)), xmmword_249D076A0)) & 0xF) == 0)
    {
      goto LABEL_26;
    }

LABEL_14:
    v15 = (v15 + 1) & v16;
    if (((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if ((v48 & 1) == 0)
  {
LABEL_13:
    sub_249CE93F4(&v42);
    goto LABEL_14;
  }

  sub_249CE93F4(&v42);
LABEL_26:
  sub_249CE93F4(a2);
  v26 = (*(v9 + 48) + 80 * v15);
  v40[0] = *v26;
  v28 = v26[2];
  v27 = v26[3];
  v29 = *(v26 + 57);
  v40[1] = v26[1];
  v40[2] = v28;
  *(v41 + 9) = v29;
  v41[0] = v27;
  v30 = v26[3];
  a1[2] = v26[2];
  a1[3] = v30;
  *(a1 + 57) = *(v26 + 57);
  v31 = v26[1];
  *a1 = *v26;
  a1[1] = v31;
  sub_249CE93BC(v40, v39);
  return 0;
}

uint64_t sub_249CFFF4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198E0, &qword_249D07FB8);
  v4 = sub_249D04C8C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v46 = v1;
    v47 = (v3 + 56);
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
    v11 = v4 + 56;
    v48 = v3;
    v49 = v4;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v51 = (v9 - 1) & v9;
LABEL_15:
      v18 = *(v3 + 48) + 80 * (v14 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      *v54 = *(v18 + 33);
      *&v54[3] = *(v18 + 36);
      v25 = *(v18 + 40);
      v24 = *(v18 + 48);
      v26 = *(v18 + 64);
      v53 = *(v18 + 56);
      v27 = *(v18 + 72);
      sub_249D04D7C();
      sub_249D04C5C();
      if (v20 == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v20;
      }

      MEMORY[0x24C1FEE80](*&v28);
      if (v21 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v21;
      }

      MEMORY[0x24C1FEE80](*&v29);
      if (v22 == 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v22;
      }

      MEMORY[0x24C1FEE80](*&v30);
      v52 = v23;
      sub_249D04D8C();
      v50 = v27;
      if (v27)
      {
        v31 = v26;
        v32 = v24;
        sub_249D04D8C();
        v33 = v53;
      }

      else
      {
        sub_249D04D8C();
        if ((v25 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v34 = v25;
        }

        else
        {
          v34 = 0;
        }

        MEMORY[0x24C1FEE80](v34);
        v32 = v24;
        if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v35 = v24;
        }

        else
        {
          v35 = 0;
        }

        MEMORY[0x24C1FEE80](v35);
        v33 = v53;
        if ((v53 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v36 = v53;
        }

        else
        {
          v36 = 0;
        }

        MEMORY[0x24C1FEE80](v36);
        v31 = v26;
        if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v37 = v26;
        }

        else
        {
          v37 = 0;
        }

        MEMORY[0x24C1FEE80](v37);
      }

      result = sub_249D04DAC();
      v5 = v49;
      v38 = -1 << *(v49 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v11 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v11 + 8 * v40);
          if (v44 != -1)
          {
            v12 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_54:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v39) & ~*(v11 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v49 + 48) + 80 * v12;
      *v13 = v19;
      *(v13 + 8) = v20;
      *(v13 + 16) = v21;
      *(v13 + 24) = v22;
      *(v13 + 32) = v52;
      *(v13 + 33) = *v54;
      *(v13 + 36) = *&v54[3];
      *(v13 + 40) = v25;
      *(v13 + 48) = v32;
      *(v13 + 56) = v33;
      *(v13 + 64) = v31;
      *(v13 + 72) = v50;
      ++*(v49 + 16);
      v3 = v48;
      v9 = v51;
    }

    v15 = v6;
    result = v47;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      if (v6 >= v10)
      {
        break;
      }

      v17 = v47[v6];
      ++v15;
      if (v17)
      {
        v14 = __clz(__rbit64(v17));
        v51 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v45 = 1 << *(v3 + 32);
    if (v45 >= 64)
    {
      bzero(v47, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v47 = -1 << v45;
    }

    v2 = v46;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_249D00310(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_32;
  }

  if (a3)
  {
    sub_249CFFF4C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_249D007CC();
      goto LABEL_32;
    }

    sub_249D0095C(v6 + 1);
  }

  v8 = *(v5 + 8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  v11 = *(v5 + 32);
  v12 = *v3;
  sub_249D04D7C();
  sub_249D04C5C();
  if (v8 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v8;
  }

  MEMORY[0x24C1FEE80](*&v13);
  if (v9 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v9;
  }

  MEMORY[0x24C1FEE80](*&v14);
  if (v10 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v10;
  }

  MEMORY[0x24C1FEE80](*&v15);
  v16 = *(v5 + 56);
  v42 = *(v5 + 40);
  v43 = v16;
  v44 = *(v5 + 72);
  v37 = v11;
  sub_249D04D8C();
  sub_249D01748();
  result = sub_249D04DAC();
  v17 = -1 << *(v12 + 32);
  a2 = result & ~v17;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_249CE6CC8(0, &qword_27EF198C0, 0x277D82BB8);
    do
    {
      v19 = (*(v12 + 48) + 80 * a2);
      v39 = *v19;
      v21 = v19[2];
      v20 = v19[3];
      v22 = *(v19 + 57);
      v40 = v19[1];
      *v41 = v21;
      *&v41[25] = v22;
      *&v41[16] = v20;
      sub_249CE93BC(&v39, v38);
      if ((sub_249D04C4C() & 1) != 0 && *(&v39 + 1) == v8 && *&v40 == v9 && *(&v40 + 1) == v10 && ((v41[0] ^ v37) & 1) == 0)
      {
        v35 = *&v41[8];
        v36 = *&v41[24];
        v23 = v41[40];
        v33 = v42;
        v34 = v43;
        v24 = v44;
        result = sub_249CE93F4(&v39);
        if (v23)
        {
          if (v24)
          {
            goto LABEL_31;
          }
        }

        else if ((v24 & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v35, v33), vceqq_f64(v36, v34)), xmmword_249D076A0)) & 0xF) == 0)
        {
LABEL_31:
          result = sub_249D04D5C();
          __break(1u);
          break;
        }
      }

      else
      {
        result = sub_249CE93F4(&v39);
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_32:
  v25 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v26 = (*(v25 + 48) + 80 * a2);
  *(v26 + 57) = *(v5 + 57);
  v27 = *(v5 + 48);
  v26[2] = *(v5 + 32);
  v26[3] = v27;
  v28 = *(v5 + 16);
  *v26 = *v5;
  v26[1] = v28;
  v29 = *(v25 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v31;
  }

  return result;
}

void *sub_249D00630()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19938, &qword_249D08028);
  v2 = *v0;
  v3 = sub_249D04C7C();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_249CE40CC(v23, v22))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 88 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[4];
      v24 = *(v17 + 80);
      v23[3] = v19;
      v23[4] = v20;
      v21 = v17[1];
      v23[0] = *v17;
      v23[1] = v21;
      v23[2] = v18;
      memmove((*(v4 + 48) + v16), v17, 0x51uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_249D007CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198E0, &qword_249D07FB8);
  v2 = *v0;
  v3 = sub_249D04C7C();
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
    v10 = *(v2 + 56);
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
        v17 = 80 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[3];
        *&v24[9] = *(v18 + 57);
        *v24 = v21;
        v23[0] = *v18;
        v23[1] = v20;
        v23[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x49uLL);
        result = sub_249CE93BC(v23, &v22);
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_249D0095C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198E0, &qword_249D07FB8);
  result = sub_249D04C8C();
  v5 = result;
  if (*(v3 + 16))
  {
    v45 = v2;
    v46 = result;
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
    v47 = v3;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v49 = (v10 - 1) & v10;
LABEL_15:
      v21 = (*(v3 + 48) + 80 * (v18 | (v6 << 6)));
      v23 = v21[2];
      v22 = v21[3];
      v24 = v21[1];
      *&v54[9] = *(v21 + 57);
      v53 = v23;
      *v54 = v22;
      v51 = *v21;
      v52 = v24;
      sub_249D04D7C();
      v25 = *(&v51 + 1);
      v26 = v52;
      v27 = *(&v53 + 1);
      v28 = *v54;
      v29 = *&v54[8];
      v48 = *&v54[16];
      v30 = v54[24];
      sub_249CE93BC(&v51, v50);
      sub_249D04C5C();
      if (v25 == 0.0)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = v25;
      }

      MEMORY[0x24C1FEE80](*&v31);
      if (*&v26 == 0.0)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = *&v26;
      }

      MEMORY[0x24C1FEE80](*&v32);
      if (*(&v26 + 1) == 0.0)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = *(&v26 + 1);
      }

      MEMORY[0x24C1FEE80](*&v33);
      sub_249D04D8C();
      if (v30 == 1)
      {
        sub_249D04D8C();
      }

      else
      {
        sub_249D04D8C();
        if ((v27 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v34 = v27;
        }

        else
        {
          v34 = 0;
        }

        MEMORY[0x24C1FEE80](v34);
        if ((v28 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v35 = v28;
        }

        else
        {
          v35 = 0;
        }

        MEMORY[0x24C1FEE80](v35);
        if ((v29 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v36 = v29;
        }

        else
        {
          v36 = 0;
        }

        MEMORY[0x24C1FEE80](v36);
        if ((v48 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v37 = v48;
        }

        else
        {
          v37 = 0;
        }

        MEMORY[0x24C1FEE80](v37);
      }

      result = sub_249D04DAC();
      v5 = v46;
      v3 = v47;
      v38 = -1 << *(v46 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v12 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v12 + 8 * v40);
          if (v44 != -1)
          {
            v13 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_52;
      }

      v13 = __clz(__rbit64((-1 << v39) & ~*(v12 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v46 + 48) + 80 * v13);
      v15 = v52;
      v16 = v53;
      v17 = *v54;
      *(v14 + 57) = *&v54[9];
      v14[2] = v16;
      v14[3] = v17;
      v14[1] = v15;
      *v14 = v51;
      ++*(v46 + 16);
      v10 = v49;
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v45;
        goto LABEL_50;
      }

      v20 = *(v7 + 8 * v6);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v49 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
  }

  else
  {

LABEL_50:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_249D00CCC(unint64_t result, uint64_t a2, void (*a3)(__int128 *, char *), uint64_t (*a4)(__int128 *))
{
  v4 = a2;
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(v4 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v42 = v6;
    v40 = (sub_249D04C6C() + 1) & ~v7;
    v41 = v9;
    v43 = v4;
    while (1)
    {
      v10 = 80 * v8;
      v11 = (*(v4 + 48) + 80 * v8);
      v47 = *v11;
      v13 = v11[2];
      v12 = v11[3];
      v14 = v11[1];
      *&v50[9] = *(v11 + 57);
      v49 = v13;
      *v50 = v12;
      v48 = v14;
      sub_249D04D7C();
      v15 = *(&v47 + 1);
      v16 = v48;
      v18 = *(&v49 + 1);
      v17 = *v50;
      v20 = *&v50[8];
      v19 = *&v50[16];
      v21 = v50[24];
      a3(&v47, v46);
      sub_249D04C5C();
      if (v15 == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v15;
      }

      MEMORY[0x24C1FEE80](*&v22);
      if (*&v16 == 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = *&v16;
      }

      MEMORY[0x24C1FEE80](*&v23);
      if (*(&v16 + 1) == 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = *(&v16 + 1);
      }

      MEMORY[0x24C1FEE80](*&v24);
      sub_249D04D8C();
      if (v21 == 1)
      {
        sub_249D04D8C();
      }

      else
      {
        sub_249D04D8C();
        if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v25 = v18;
        }

        else
        {
          v25 = 0;
        }

        MEMORY[0x24C1FEE80](v25);
        if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v26 = v17;
        }

        else
        {
          v26 = 0;
        }

        MEMORY[0x24C1FEE80](v26);
        if ((v20 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v27 = v20;
        }

        else
        {
          v27 = 0;
        }

        MEMORY[0x24C1FEE80](v27);
        if ((v19 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v28 = v19;
        }

        else
        {
          v28 = 0;
        }

        MEMORY[0x24C1FEE80](v28);
      }

      v29 = sub_249D04DAC();
      result = a4(&v47);
      v30 = v29 & v41;
      v4 = v43;
      if (v5 >= v40)
      {
        v31 = v42;
        if (v30 < v40)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v31 = v42;
        if (v30 >= v40)
        {
          goto LABEL_34;
        }
      }

      if (v5 >= v30)
      {
LABEL_34:
        v32 = *(v43 + 48);
        result = v32 + 80 * v5;
        v33 = (v32 + v10);
        if (80 * v5 < v10 || result >= v33 + 80 || v5 != v8)
        {
          result = memmove(result, v33, 0x50uLL);
        }

        v34 = *(v43 + 56);
        v35 = (v34 + 8 * v5);
        v36 = (v34 + 8 * v8);
        if (v5 != v8 || v35 >= v36 + 1)
        {
          *v35 = *v36;
          v5 = v8;
        }
      }

LABEL_4:
      v8 = (v8 + 1) & v41;
      if (((*(v31 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        *(v31 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
        goto LABEL_43;
      }
    }
  }

  *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
LABEL_43:
  v37 = *(v4 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v39;
    ++*(v4 + 36);
  }

  return result;
}

void *sub_249D00FD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF198D8, &qword_249D07FB0);
  v2 = *v0;
  v3 = sub_249D04CFC();
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
        v18 = (*(v2 + 48) + 80 * v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[3];
        *&v25[9] = *(v18 + 57);
        *v25 = v21;
        v24[0] = *v18;
        v24[1] = v20;
        v24[2] = v19;
        v22 = *(*(v2 + 56) + 8 * v17);
        memmove((*(v4 + 48) + 80 * v17), v18, 0x49uLL);
        *(*(v4 + 56) + 8 * v17) = v22;
        sub_249CE93BC(v24, &v23);
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

id sub_249D01188()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19950, &qword_249D08060);
  v2 = *v0;
  v3 = sub_249D04CFC();
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
        v18 = (*(v2 + 48) + 80 * v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[3];
        *&v25[9] = *(v18 + 57);
        *v25 = v21;
        v24[0] = *v18;
        v24[1] = v20;
        v24[2] = v19;
        v22 = *(*(v2 + 56) + 8 * v17);
        memmove((*(v4 + 48) + 80 * v17), v18, 0x49uLL);
        *(*(v4 + 56) + 8 * v17) = v22;
        sub_249CEA370(v24, &v23);
        result = v22;
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

unint64_t sub_249D01334(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_249D04C6C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v38 = v4;
      v39 = v2;
      v37 = (v8 + 1) & v7;
      while (1)
      {
        v9 = 80 * v6;
        v10 = (*(v3 + 48) + 80 * v6);
        v12 = v10[2];
        v11 = v10[3];
        v13 = v10[1];
        *&v44[9] = *(v10 + 57);
        v43 = v12;
        *v44 = v11;
        v41 = *v10;
        v42 = v13;
        v14 = v3;
        sub_249D04D7C();
        v15 = *(&v41 + 1);
        v16 = v42;
        v17 = *(&v43 + 1);
        v18 = *v44;
        v20 = *&v44[8];
        v19 = *&v44[16];
        v21 = v44[24];
        sub_249CE93BC(&v41, v40);
        sub_249D04C5C();
        v22 = v15 == 0.0 ? 0.0 : v15;
        MEMORY[0x24C1FEE80](*&v22);
        v23 = *&v16 == 0.0 ? 0.0 : *&v16;
        MEMORY[0x24C1FEE80](*&v23);
        v24 = *(&v16 + 1) == 0.0 ? 0.0 : *(&v16 + 1);
        MEMORY[0x24C1FEE80](*&v24);
        sub_249D04D8C();
        if (v21 == 1)
        {
          sub_249D04D8C();
        }

        else
        {
          sub_249D04D8C();
          v25 = (v17 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v17 : 0;
          MEMORY[0x24C1FEE80](v25);
          v26 = (v18 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v18 : 0;
          MEMORY[0x24C1FEE80](v26);
          v27 = (v20 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v20 : 0;
          MEMORY[0x24C1FEE80](v27);
          v28 = (v19 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v19 : 0;
          MEMORY[0x24C1FEE80](v28);
        }

        v29 = sub_249D04DAC();
        sub_249CE93F4(&v41);
        v30 = v29 & v7;
        v2 = v39;
        v3 = v14;
        if (v39 >= v37)
        {
          break;
        }

        v4 = v38;
        if (v30 < v37)
        {
          goto LABEL_32;
        }

LABEL_33:
        v31 = *(v3 + 48);
        v32 = (v31 + 80 * v39);
        v33 = (v31 + v9);
        if (80 * v39 < v9 || v32 >= v33 + 80 || v39 != v6)
        {
          memmove(v32, v33, 0x50uLL);
          v2 = v6;
        }

LABEL_37:
        v6 = (v6 + 1) & v7;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_39;
        }

        v39 = v2;
      }

      v4 = v38;
      if (v30 < v37)
      {
        goto LABEL_37;
      }

LABEL_32:
      if (v39 < v30)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }

LABEL_39:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v34 = *(v3 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v36;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_249D01630(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_249D04CEC();
LABEL_9:
  result = sub_249D04CBC();
  *v2 = result;
  return result;
}

uint64_t sub_249D016E4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_249D04CEC();
  }

  return sub_249D04CBC();
}

uint64_t sub_249D01748()
{
  if (v0[4])
  {
    return sub_249D04D8C();
  }

  v3 = v0[2];
  v2 = v0[3];
  v5 = *v0;
  v4 = v0[1];
  sub_249D04D8C();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x24C1FEE80](v6);
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x24C1FEE80](v7);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x24C1FEE80](v8);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0;
  }

  return MEMORY[0x24C1FEE80](v9);
}

uint64_t sub_249D017D0(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x24C1FEE80](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x24C1FEE80](*&v3);
}

uint64_t sub_249D01820(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19670, &qword_249D07600);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v32 = &v28 - v7;
  os_unfair_lock_lock((v1 + 16));

  *(v1 + 24) = a1;
  v8 = a1;
  os_unfair_lock_unlock((v1 + 16));
  swift_beginAccess();
  result = *(v1 + 40);
  v10 = *(result + 16);
  if (v10)
  {

    v11 = (v29 + 48);
    do
    {
      v13 = *(v11 - 2);
      v12 = *(v11 - 1);
      v14 = *v11;
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      *(v15 + 24) = v12;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v31 = v14;
        swift_retain_n();

        swift_unknownObjectRelease();
        v16 = swift_allocObject();
        *(v16 + 16) = sub_249D03238;
        *(v16 + 24) = v15;
        v17 = sub_249D04B6C();
        v18 = *(v17 - 8);
        v19 = v32;
        (*(v18 + 56))(v32, 1, 1, v17);
        sub_249D04B2C();

        v20 = sub_249D04B1C();
        v21 = swift_allocObject();
        v21[2] = v20;
        v21[3] = MEMORY[0x277D85700];
        v21[4] = sub_249D039CC;
        v30 = v16;
        v21[5] = v16;
        v22 = v6;
        sub_249D03320(v19, v6, &qword_27EF19670, &qword_249D07600);
        LODWORD(v20) = (*(v18 + 48))(v6, 1, v17);

        if (v20 == 1)
        {
          sub_249CE9184(v6, &qword_27EF19670, &qword_249D07600);
        }

        else
        {
          sub_249D04B5C();
          (*(v18 + 8))(v6, v17);
        }

        v23 = v21[2];
        swift_unknownObjectRetain();

        if (v23)
        {
          swift_getObjectType();
          v24 = sub_249D04ADC();
          v26 = v25;
          swift_unknownObjectRelease();
        }

        else
        {
          v24 = 0;
          v26 = 0;
        }

        sub_249CE9184(v32, &qword_27EF19670, &qword_249D07600);
        v27 = swift_allocObject();
        *(v27 + 16) = &unk_249D08038;
        *(v27 + 24) = v21;
        if (v26 | v24)
        {
          v33 = 0;
          v34 = 0;
          v35 = v24;
          v36 = v26;
        }

        v6 = v22;
        swift_task_create();
      }

      else
      {
      }

      v11 += 3;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t _s21DocumentManagerUICore12ImageOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  v5 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (v5 && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0)
  {
    if (*(a1 + 64))
    {
      if (*(a2 + 64))
      {
        return 1;
      }
    }

    else if ((*(a2 + 64) & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48))), xmmword_249D076A0)) & 0xF) == 0)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL _s21DocumentManagerUICore9ThumbnailO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    if (*(a2 + 16) == 1)
    {
      v2 = 2;
      if (*(a2 + 8) == 2)
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  v3 = 2;
  if (*(a1 + 8) == 2)
  {
    v3 = 3;
  }

  if (*(a1 + 16) != 1)
  {
    v3 = 0;
  }

  if (*(a1 + 16))
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  return v2 == v4;
}

BOOL _s21DocumentManagerUICore9ThumbnailO1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      v2 = 2;
      if (*(a1 + 8) == 2)
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  v3 = 2;
  if (*(a2 + 8) == 2)
  {
    v3 = 3;
  }

  if (*(a2 + 16) != 1)
  {
    v3 = 0;
  }

  if (*(a2 + 16))
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  return v2 < v4;
}

unint64_t sub_249D01DDC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF19998, &qword_249D08108);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

unint64_t sub_249D01EC8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_249CFF1EC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_249D01DDC(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_249D01F88(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1 & 0xFFFFFFFFFFFFFF8);
  v5 = *a1 >> 62;
  if (v5)
  {
LABEL_62:
    v6 = sub_249D04CEC();
  }

  else
  {
    v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FED90](v7, v3);
    }

    else
    {
      if (v7 >= v4[2])
      {
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
        goto LABEL_62;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      result = swift_unknownObjectRelease();
      if (Strong == a2)
      {
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
          return result;
        }

        v4 = a1;
        while (1)
        {
          if (v3 >> 62)
          {
            if (v11 == sub_249D04CEC())
            {
              return v7;
            }
          }

          else if (v11 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            return v7;
          }

          v5 = v3 & 0xC000000000000001;
          if ((v3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x24C1FED90](v11, v3);
          }

          else
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }
          }

          v12 = swift_unknownObjectWeakLoadStrong();

          if (!v12 || (swift_unknownObjectRelease(), v12 != a2))
          {
            if (v7 != v11)
            {
              if (v5)
              {
                v13 = MEMORY[0x24C1FED90](v7, v3);
                v14 = MEMORY[0x24C1FED90](v11, v3);
              }

              else
              {
                if ((v7 & 0x8000000000000000) != 0)
                {
                  goto LABEL_59;
                }

                v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v7 >= v15)
                {
                  goto LABEL_60;
                }

                if (v11 >= v15)
                {
                  goto LABEL_61;
                }

                v13 = *(v3 + 32 + 8 * v7);
                v14 = *(v3 + 32 + 8 * v11);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
              {
                v3 = sub_249D016E4(v3);
                v16 = (v3 >> 62) & 1;
              }

              else
              {
                LODWORD(v16) = 0;
              }

              v5 = v3 & 0xFFFFFFFFFFFFFF8;
              *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v14;

              if ((v3 & 0x8000000000000000) != 0 || v16)
              {
                v3 = sub_249D016E4(v3);
                v5 = v3 & 0xFFFFFFFFFFFFFF8;
                if ((v11 & 0x8000000000000000) != 0)
                {
LABEL_50:
                  __break(1u);
                  return sub_249D04CEC();
                }
              }

              else if ((v11 & 0x8000000000000000) != 0)
              {
                goto LABEL_50;
              }

              if (v11 >= *(v5 + 16))
              {
                goto LABEL_58;
              }

              *(v5 + 8 * v11 + 32) = v13;

              *a1 = v3;
            }

            v8 = __OFADD__(v7++, 1);
            if (v8)
            {
              goto LABEL_57;
            }
          }

          v8 = __OFADD__(v11++, 1);
          if (v8)
          {
            goto LABEL_56;
          }
        }
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_53;
    }
  }

  if (v5)
  {
    return sub_249D04CEC();
  }

  return v4[2];
}

uint64_t sub_249D02270(uint64_t a1, uint64_t a2, uint64_t a3)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF196F0, &unk_249D076E0);
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
  result = sub_249D04CEC();
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
    result = sub_249D04CEC();
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

uint64_t sub_249D0237C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_249D04CEC();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_249D04CEC();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_249D01630(result, 1);

  return sub_249D02270(v5, v3, 0);
}

uint64_t sub_249D0247C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_249CE6A30;

  return sub_249CFEC10(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t objectdestroy_2Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_249D02588(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_249CE6A30;

  return sub_249CFEA54(a1, v4, v5, v6);
}

unint64_t sub_249D02640()
{
  result = qword_27EF19708;
  if (!qword_27EF19708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF19708);
  }

  return result;
}

unint64_t sub_249D02698()
{
  result = qword_27EF19710;
  if (!qword_27EF19710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF19710);
  }

  return result;
}

unint64_t sub_249D026F0()
{
  result = qword_27EF19718;
  if (!qword_27EF19718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF19718);
  }

  return result;
}

uint64_t sub_249D02744(uint64_t a1, uint64_t a2)
{
  result = sub_249CE6C80(&unk_27EF19720, a2, type metadata accessor for NodeThumbnail, MEMORY[0x277D85380]);
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_249D027E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_249D02838(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
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

uint64_t sub_249D0289C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249D028BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_249D0291C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_249D02964(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_249D029B4(uint64_t a1, unsigned int a2)
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
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_249D029FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_249D02AC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_249D02B10(uint64_t result, int a2, int a3)
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
      *(result + 80) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_21DocumentManagerUICore12ImageRequest33_595D9CE99B152AB33A118330F75FAEECLLC0dE5StateO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_249D02B94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 17))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_249D02BE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_249D02C48(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_249D02CA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_249D02CF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_249D02D9C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8) - 8);
  v4 = v1 + ((*(v3 + 80) + 104) & ~*(v3 + 80));

  return sub_249CFC2E4(a1, v1 + 16, v4);
}

uint64_t objectdestroy_130Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249D02EF4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8) - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_249CE6A30;

  return sub_249CFC864(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t objectdestroy_142Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 120) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_249D030D4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF19918, &qword_249D07FE8) - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_249CE6A30;

  return sub_249CFC500(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_249D03260(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_249CE6A30;

  return sub_249CFA7BC(a1, v4, v5, v7, v6);
}

uint64_t sub_249D03320(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_249D03388(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_249D033C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_249CE6A34;

  return sub_249CEAABC(a1, v4);
}

uint64_t objectdestroy_160Tm(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();
  a1(*(v2 + 40));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_249D034DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_249CE6A30;

  return sub_249CFB8C4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_249D035A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_249D036E4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_249D038EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_249D03934(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double gotLoadHelper_x8__ICQCurrentInAppMessageChangedNotification(double result)
{
  if (!atomic_load(dlopenHelperFlag_iCloudQuotaUI))
  {
    return dlopenHelper_iCloudQuotaUI(result);
  }

  return result;
}

double gotLoadHelper_x8__ICQInAppMessageKey(double result)
{
  if (!atomic_load(dlopenHelperFlag_iCloudQuotaUI))
  {
    return dlopenHelper_iCloudQuotaUI(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___ICQInAppMessaging(double result)
{
  if (!atomic_load(dlopenHelperFlag_iCloudQuotaUI))
  {
    return dlopenHelper_iCloudQuotaUI(result);
  }

  return result;
}

double dlopenHelper_iCloudQuotaUI(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/iCloudQuotaUI.framework/iCloudQuotaUI", 0);
  atomic_store(1u, dlopenHelperFlag_iCloudQuotaUI);
  return a1;
}