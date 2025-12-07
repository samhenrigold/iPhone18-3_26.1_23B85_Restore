uint64_t sub_22DF10E54(_BYTE *__dst, _BYTE *__src, _BYTE *a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      sub_22DF141A8();
LABEL_26:
      v14 = v6 - 1;
      --v5;
      v15 = v10;
      do
      {
        v16 = v5 + 1;
        --v15;
        if (sub_22DF63964())
        {
          if (v16 < v6 || v5 >= v6)
          {
            *v5 = *v14;
          }

          if (v10 <= v4 || (--v6, v14 <= v7))
          {
            v6 = v14;
            goto LABEL_40;
          }

          goto LABEL_26;
        }

        if (v16 < v10 || v5 >= v10)
        {
          *v5 = *v15;
        }

        --v5;
        v10 = v15;
      }

      while (v15 > v4);
      v10 = v15;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      sub_22DF141A8();
      while (1)
      {
        if (sub_22DF63964())
        {
          v11 = v6 + 1;
          v12 = v6;
          if (v7 >= v6 && v7 < v11)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v13 = v4 + 1;
          v12 = v4;
          v11 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_17;
            }
          }
        }

        *v7 = *v12;
LABEL_17:
        ++v7;
        if (v4 < v10)
        {
          v6 = v11;
          if (v11 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
  }

LABEL_40:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t sub_22DF110A8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22DF642A4();
  sub_22DF63A54();
  v8 = sub_22DF642D4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22DF64184() & 1) != 0)
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

    sub_22DF11458(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22DF111F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47828, &qword_22DF68950);
  result = sub_22DF63EE4();
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
      sub_22DF642A4();
      sub_22DF63A54();
      result = sub_22DF642D4();
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

void sub_22DF11458(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22DF111F8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_22DF115D8();
      goto LABEL_16;
    }

    sub_22DF11734(v8 + 1);
  }

  v10 = *v4;
  sub_22DF642A4();
  sub_22DF63A54();
  v11 = sub_22DF642D4();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_22DF64184() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_22DF64224();
  __break(1u);
}

void sub_22DF115D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47828, &qword_22DF68950);
  v2 = *v0;
  v3 = sub_22DF63ED4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
}

uint64_t sub_22DF11734(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47828, &qword_22DF68950);
  result = sub_22DF63EE4();
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
      sub_22DF642A4();

      sub_22DF63A54();
      result = sub_22DF642D4();
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

void *sub_22DF1196C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DF11AA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22DF1198C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DF11C78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22DF119AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47838, &unk_22DF67100);
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

void *sub_22DF11AA0(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47610, &unk_22DF660D0);
  v10 = *(type metadata accessor for ServiceEventValue(0) - 8);
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
  v15 = *(type metadata accessor for ServiceEventValue(0) - 8);
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

void *sub_22DF11C78(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47820, &qword_22DF670E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47818, &qword_22DF670E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22DF11DAC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_22DF638B4();
      sub_22DF1213C(&qword_27DA47750, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_22DF63864();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_22DF11F8C(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_22DF11F8C(v5, v6);
  }

  sub_22DF638B4();
  sub_22DF1213C(&qword_27DA47750, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_22DF63864();
}

uint64_t sub_22DF11F8C(uint64_t a1, uint64_t a2)
{
  result = sub_22DF63204();
  if (!result || (result = sub_22DF63234(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22DF63224();
      sub_22DF638B4();
      sub_22DF1213C(&qword_27DA47750, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_22DF63864();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22DF12080(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_22DF07128(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_22DF12118(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

uint64_t sub_22DF1213C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22DF12184()
{
  result = qword_27DA4A5D8[0];
  if (!qword_27DA4A5D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4A5D8);
  }

  return result;
}

uint64_t sub_22DF121D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_22DF64184() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x5F68736572666572 && a2 == 0xED0000656C637963 || (sub_22DF64184() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0x765F646572616873 && a2 == 0xEC00000073656C61 || (sub_22DF64184() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0x6D706F6C65766564 && a2 == 0xEB00000000746E65)
  {
    v5 = 0;
LABEL_17:

    return v5;
  }

  v6 = sub_22DF64184();

  result = 0;
  if ((v6 & 1) == 0)
  {
    if (a1 == 0x6E695F656C707061 && a2 == 0xEE006C616E726574)
    {
      v5 = 1;
      goto LABEL_17;
    }

    v7 = sub_22DF64184();

    if (v7)
    {
      return 1;
    }

    if (a1 == 1684366707 && a2 == 0xE400000000000000)
    {
      v5 = 2;
      goto LABEL_17;
    }

    v8 = sub_22DF64184();

    if (v8)
    {
      return 2;
    }

    if (a1 == 0x657361656C6572 && a2 == 0xE700000000000000)
    {
      v5 = 3;
      goto LABEL_17;
    }

    v9 = sub_22DF64184();

    if (v9)
    {
      return 3;
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t sub_22DF1245C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA477B8, &qword_22DF67098);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF13D6C();
  sub_22DF64304();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v39) = 4;
  v31 = sub_22DF640C4();
  v32 = v9;
  LOBYTE(v39) = 5;
  v30 = sub_22DF640A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47C00, &qword_22DF670A0);
  v38 = 6;
  sub_22DF13F94(&qword_27DA477C0, &qword_27DA47C00, &qword_22DF670A0, sub_22DF13DC0);
  sub_22DF64094();
  v28 = v39;
  v11 = sub_22DF64104();
  v12 = *(v11 + 16);
  v29 = v6;
  v27[1] = v11;
  if (v12)
  {
    v13 = (v11 + 32);
    v14 = MEMORY[0x277D84F90];
    v35 = a2;
    while (1)
    {
      v16 = *v13;
      v15 = v16;
      v37 = v13 + 1;
      if (v16 <= 2)
      {
        if (!v15)
        {
          goto LABEL_27;
        }

        if (v15 == 1)
        {
          LOBYTE(v15) = (sub_22DF64184() & 1) == 0;
          goto LABEL_27;
        }

        v36 = 1;
        v33 = 1;
        v34 = 1;
      }

      else
      {
        v36 = 0;
        if (v15 > 4)
        {
          v33 = 1;
          v34 = 1;
        }

        else
        {
          v33 = 0;
          v34 = v15 != 3;
        }
      }

      if (sub_22DF64184())
      {
        LOBYTE(v15) = 0;
        goto LABEL_27;
      }

      v17 = sub_22DF64184();
      if (v17)
      {
        LOBYTE(v15) = 1;
      }

      else
      {
        LOBYTE(v15) = 2;
      }

      if ((v17 | v36))
      {
        goto LABEL_27;
      }

      if (sub_22DF64184())
      {
        break;
      }

      if ((v34 | v33) != 1)
      {
        LOBYTE(v15) = 3;
        goto LABEL_27;
      }

      v18 = sub_22DF64184();

      if (v18)
      {
        LOBYTE(v15) = 3;
LABEL_28:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_22DF0EDC0(0, *(v14 + 2) + 1, 1, v14);
        }

        v20 = *(v14 + 2);
        v19 = *(v14 + 3);
        if (v20 >= v19 >> 1)
        {
          v14 = sub_22DF0EDC0((v19 > 1), v20 + 1, 1, v14);
        }

        *(v14 + 2) = v20 + 1;
        v14[v20 + 32] = v15;
      }

      a2 = v35;
      --v12;
      v13 = v37;
      if (!v12)
      {
        goto LABEL_36;
      }
    }

    LOBYTE(v15) = 2;
LABEL_27:

    goto LABEL_28;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_36:

  MEMORY[0x28223BE20](v21);
  v27[-2] = v8;
  v22 = sub_22DF0C198(sub_22DF13E14, &v27[-4], v14);

  if (v22[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA477D0, &qword_22DF670A8);
    v23 = sub_22DF64044();
  }

  else
  {
    v23 = MEMORY[0x277D84F98];
  }

  v24 = v29;
  v39 = v23;
  sub_22DF0F3E8(v22, 1, &v39);
  v25 = v39;
  (*(v24 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v26 = v32;
  *a2 = v31;
  *(a2 + 8) = v26;
  BYTE4(v26) = BYTE4(v30);
  *(a2 + 16) = v30;
  *(a2 + 20) = BYTE4(v26) & 1;
  *(a2 + 24) = v28;
  *(a2 + 32) = v25;
  return result;
}

unint64_t sub_22DF12AD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47858, &qword_22DF67120);
    v3 = sub_22DF64044();

    for (i = (a1 + 72); ; i += 48)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      sub_22DF12F0C(v7, v8, v9, v10);
      result = sub_22DEF08FC(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = v3[7] + 32 * result;
      *v14 = v7;
      *(v14 + 8) = v8;
      *(v14 + 16) = v9;
      *(v14 + 24) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22DF12C04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47850, &qword_22DF67118);
    v3 = sub_22DF64044();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_22DEF08FC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22DF12D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3 || !a1)
  {
    return 0;
  }

  v5 = (a1 + 40);
  v6 = *(a1 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 2;
    v9 = *(v5 - 1);
    v8 = *v5;
    v13[0] = a2;
    v13[1] = a3;
    MEMORY[0x28223BE20](a1);
    v12[2] = v13;

    v10 = sub_22DF10540(sub_22DF144B8, v12, v9);

    v5 = v7;
    if (v10)
    {
      return v8;
    }
  }

  return 0;
}

uint64_t sub_22DF12E24(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = a1[1];
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  (*(v6 + 8))(v11, v5, v6);
  v13 = v12;
  v7 = v12;

  sub_22DEF0FA8(v11);
  if (v3 == v7 && v4 == *(&v7 + 1))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22DF64184();
  }

  sub_22DF13A04(&v13);
  return v9 & 1;
}

uint64_t sub_22DF12EF4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_22DF12F0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_22DF12F5C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != 1)
  {
    if (a4)
    {
      return v5;
    }
  }
}

uint64_t sub_22DF12FC8(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_22DEEBC28(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_22DF12FE0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_22DEEBC34(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_22DF12FF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x2318DCC40](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_22DF110A8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *sub_22DF13090(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = ~a3;
  v55 = type metadata accessor for ServiceEventValue(0);
  v9 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v8)
  {
    goto LABEL_6;
  }

  if (a3)
  {
    if (!*(a4 + 16) || (v12 = sub_22DEF08FC(a1, a2), (v13 & 1) == 0) || (v14 = *(a4 + 56) + 16 * v12, *(v14 + 8)))
    {
LABEL_6:
      a1 = MEMORY[0x277D84F90];
      goto LABEL_8;
    }

    a1 = *v14;
  }

  else
  {
    sub_22DEEBC28(a1, a2, 0);
  }

LABEL_8:
  result = sub_22DF0F0C8(0, *(a1 + 16), 0, MEMORY[0x277D84F90]);
  v54 = result;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = a1 + 32;
    v49 = 0x800000022DF6E510;
    v51 = a1;
    v52 = v16;
    v50 = a1 + 32;
    while (1)
    {
      v19 = (v18 + 72 * v17);
      v20 = v19[3];
      v21 = *(v19 + 8);
      v22 = v19[1];
      v59 = v19[2];
      v23 = *v19;
      v61 = v21;
      v60 = v20;
      v57 = v23;
      v58 = v22;
      if (!*(&v59 + 1))
      {
        break;
      }

LABEL_24:
      if (++v17 == v16)
      {
        goto LABEL_50;
      }

      if (v17 >= *(a1 + 16))
      {
        __break(1u);
        return result;
      }
    }

    v24 = *(&v57 + 1);
    sub_22DF08DA4(&v57, v56);

    v26 = sub_22DF12FF8(v25);

    v27 = *(v24 + 16);
    if (v27)
    {
      v53 = v26;
      v56[0] = MEMORY[0x277D84F90];
      sub_22DF1196C(0, v27, 0);
      v28 = v56[0];
      v29 = (v24 + 40);
      do
      {
        v30 = *v29;
        *v11 = *(v29 - 1);
        v11[1] = v30;
        swift_storeEnumTagMultiPayload();
        v56[0] = v28;
        v32 = *(v28 + 16);
        v31 = *(v28 + 24);

        if (v32 >= v31 >> 1)
        {
          sub_22DF1196C((v31 > 1), v32 + 1, 1);
          v28 = v56[0];
        }

        *(v28 + 16) = v32 + 1;
        sub_22DF140DC(v11, v28 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v32, type metadata accessor for ServiceEventValue);
        v29 += 2;
        --v27;
      }

      while (v27);
    }

    v33 = v58;
    j_nullsub_1();
    v35 = v34;
    v37 = v36;
    if (v33 == __PAIR128__(0xE500000000000000, 0x776F6C6C61) || (sub_22DF64184() & 1) != 0)
    {
      v38 = &type metadata for EventAllowFilter;
      v39 = &off_2841953D0;
    }

    else if (v33 == __PAIR128__(0xE600000000000000, 0x65766F6D6572) || (sub_22DF64184() & 1) != 0)
    {
      v38 = &type metadata for EventRemoveFilter;
      v39 = &off_2841953F8;
    }

    else if (v33 == __PAIR128__(0xE600000000000000, 0x363532616873) || (sub_22DF64184() & 1) != 0)
    {
      v38 = &type metadata for EventSHA256KeyFilter;
      v39 = &off_284195420;
    }

    else if (v33 == __PAIR128__(0xEF7365756C615674, 0x73696C6574696877) || (sub_22DF64184() & 1) != 0)
    {
      v38 = &type metadata for EventAllowValuesFilter;
      v39 = &off_284195448;
    }

    else if (v33 == __PAIR128__(0xEF7365756C615674, 0x73696C6B63616C62) || (sub_22DF64184() & 1) != 0)
    {
      v38 = &type metadata for EventDenyValuesFilter;
      v39 = &off_284195470;
    }

    else if (__PAIR128__(v49, 0xD000000000000018) == v33 || (sub_22DF64184() & 1) != 0)
    {
      v38 = &type metadata for EventInsertStringKeyFilter;
      v39 = &off_284195498;
    }

    else if (v33 == __PAIR128__(0xE600000000000000, 0x646E65707061) || (sub_22DF64184() & 1) != 0)
    {
      v38 = &type metadata for EventAppendToKeyFilter;
      v39 = &off_2841954C0;
    }

    else
    {
      if (v33 != __PAIR128__(0xE700000000000000, 0x646E6570657270))
      {
        v48 = sub_22DF64184();
        sub_22DF08DDC(&v57);
        if ((v48 & 1) == 0)
        {

          a1 = v51;
          v16 = v52;
LABEL_23:
          v18 = v50;
          goto LABEL_24;
        }

        v38 = &type metadata for EventPrependToKeyFilter;
        v39 = &off_2841954E8;
LABEL_20:
        v40 = v39[2];
        v56[3] = v38;
        v56[4] = v39;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
        v42 = v40(v35, v37, boxed_opaque_existential_1);
        v62 = v54;
        v44 = v54[2];
        v43 = v54[3];
        if (v44 >= v43 >> 1)
        {
          v42 = sub_22DF0F0C8((v43 > 1), v44 + 1, 1, v54);
          v54 = v42;
          v62 = v42;
        }

        v16 = v52;
        MEMORY[0x28223BE20](v42);
        v46 = &v49 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v47 + 16))(v46, boxed_opaque_existential_1, v38);
        sub_22DF12080(v44, v46, &v62, v38, v39);
        result = __swift_destroy_boxed_opaque_existential_0(v56);
        a1 = v51;
        goto LABEL_23;
      }

      v38 = &type metadata for EventPrependToKeyFilter;
      v39 = &off_2841954E8;
    }

    sub_22DF08DDC(&v57);
    goto LABEL_20;
  }

LABEL_50:

  return v54;
}

void type metadata accessor for CFString()
{
  if (!qword_27DA477B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DA477B0);
    }
  }
}

uint64_t sub_22DF13944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF139A8(uint64_t a1)
{
  v2 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22DF13A5C()
{
  result = qword_27DA47788;
  if (!qword_27DA47788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47788);
  }

  return result;
}

uint64_t sub_22DF13AF4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_22DF13B40()
{
  result = qword_27DA477A0;
  if (!qword_27DA477A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA477A0);
  }

  return result;
}

unint64_t sub_22DF13B98()
{
  result = qword_27DA477A8;
  if (!qword_27DA477A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA477A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Storebag.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Storebag.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22DF13D6C()
{
  result = qword_27DA4AA60[0];
  if (!qword_27DA4AA60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4AA60);
  }

  return result;
}

unint64_t sub_22DF13DC0()
{
  result = qword_27DA477C8;
  if (!qword_27DA477C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA477C8);
  }

  return result;
}

void *sub_22DF13E14@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA477B8, &qword_22DF67098);
  sub_22DF13F40();
  sub_22DF640E4();
  if (v2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA477F8, &unk_22DF670D0);
    sub_22DF13F94(&qword_27DA47800, &qword_27DA477F8, &unk_22DF670D0, sub_22DF14018);
    result = sub_22DF640E4();
    *a2 = v4;
    a2[1] = v6;
  }

  else
  {
    result = sub_22DEF7A34(v6, v7);
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

unint64_t sub_22DF13F40()
{
  result = qword_27DA477F0;
  if (!qword_27DA477F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA477F0);
  }

  return result;
}

uint64_t sub_22DF13F94(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22DF14018()
{
  result = qword_27DA47808;
  if (!qword_27DA47808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47808);
  }

  return result;
}

uint64_t sub_22DF1406C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47818, &qword_22DF670E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF140DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
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

unint64_t sub_22DF141A8()
{
  result = qword_27DA47840;
  if (!qword_27DA47840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47840);
  }

  return result;
}

double sub_22DF141FC(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_22DF14220(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22DF64184() & 1;
  }
}

uint64_t getEnumTagSinglePayload for Storebag._StorebagRoot.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Storebag._StorebagRoot.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_22DF143D0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_22DF143E4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_22DF14408()
{
  result = qword_27DA4AB70;
  if (!qword_27DA4AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA4AB70);
  }

  return result;
}

unint64_t sub_22DF14460()
{
  result = qword_27DA4AB78;
  if (!qword_27DA4AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA4AB78);
  }

  return result;
}

uint64_t sub_22DF144F0()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E5D8);
  __swift_project_value_buffer(v0, qword_27DA4E5D8);
  return sub_22DF63724();
}

uint64_t sub_22DF14570(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  v15 = (v14 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_clientID);
  *v15 = a5;
  v15[1] = a6;
  *(v14 + 112) = a3;
  *(v14 + 120) = a1;
  v36 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v16 = v36[7];
  v17 = OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_url;
  v18 = sub_22DF63444();
  (*(*(v18 - 8) + 16))(v14 + v17, &a4[v16], v18);
  *(v14 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_options) = a7;
  v19 = a7;
  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  v22 = *(v21 + 16);

  v34 = v19;
  v23 = v22(v20, v21);
  v25 = v24;
  v27 = a2[3];
  v26 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v27);
  (*(v26 + 8))(v37, v27, v26);
  sub_22DF35BA0(v23, v25, v37, a4[v36[9]], v38);

  v28 = v14 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_extraHeaders;
  v29 = v38[3];
  *(v28 + 32) = v38[2];
  *(v28 + 48) = v29;
  *(v28 + 64) = v38[4];
  *(v28 + 80) = v39;
  v30 = v38[1];
  *v28 = v38[0];
  *(v28 + 16) = v30;
  *(v14 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_filters) = *&a4[v36[8]];
  v31 = *(a4 + 1);
  v32 = (v14 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_name);
  *v32 = *a4;
  v32[1] = v31;
  LOBYTE(a6) = a4[v36[10]];

  sub_22DF17B50(a4, type metadata accessor for SessionConfiguration.BackendHTTP);
  *(v14 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_skipLogging) = a6;
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v14;
}

uint64_t sub_22DF147D4()
{
  v1 = 0x6449746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0x73746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D695474736F70;
  }
}

uint64_t sub_22DF1482C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22DF1839C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22DF14860(uint64_t a1)
{
  v2 = sub_22DF17D60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF1489C(uint64_t a1)
{
  v2 = sub_22DF17D60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22DF148D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v13 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47870, &qword_22DF673D0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF17D60();
  sub_22DF64334();
  v17 = 0;
  sub_22DF64124();
  if (!v5)
  {
    v16 = 1;
    sub_22DF64114();
    v15 = a4;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47878, &qword_22DF673D8);
    sub_22DF17DB4();
    sub_22DF64134();
  }

  return (*(v9 + 8))(v11, v8);
}

void sub_22DF14B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = a1;
  v14[1] = a2;
  v14[2] = a3;
  v5 = *(v3 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_filters);
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_22DEF2388(v8, v11);
      v9 = v12;
      v10 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v10 + 24))(v14, v9, v10);
      if (v4)
      {
        __swift_destroy_boxed_opaque_existential_0(v11);

        return;
      }

      ++v7;
      __swift_destroy_boxed_opaque_existential_0(v11);
      v8 += 40;
      if (v6 == v7)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22DF14C38(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v3 = sub_22DF63604();
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();
  v4 = type metadata accessor for ServiceEventValue(0);
  v2[38] = v4;
  v2[39] = *(v4 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47598, &qword_22DF65E30);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v5 = sub_22DF63444();
  v2[44] = v5;
  v2[45] = *(v5 - 8);
  v2[46] = swift_task_alloc();
  v6 = sub_22DF63124();
  v2[47] = v6;
  v2[48] = *(v6 - 8);
  v2[49] = swift_task_alloc();
  v7 = sub_22DF63174();
  v2[50] = v7;
  v2[51] = *(v7 - 8);
  v2[52] = swift_task_alloc();
  v8 = sub_22DF63594();
  v2[53] = v8;
  v2[54] = *(v8 - 8);
  v2[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF14F14, v1, 0);
}

uint64_t sub_22DF14F14()
{
  v128 = v0;
  v1 = v0;
  v2 = v0[33];
  v3 = *(v2 + 16);
  v125 = v1;
  if (v3)
  {
    v126 = MEMORY[0x277D84F90];
    sub_22DEF0AB0(0, v3, 0);
    v4 = v126;
    v5 = (v2 + 48);
    do
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;

      sub_22DF14B10(v6, v7, v8);
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v126 = v4;
      v16 = *(v4 + 16);
      v15 = *(v4 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        sub_22DEF0AB0((v15 > 1), v16 + 1, 1);
        v17 = v16 + 1;
        v4 = v126;
      }

      *(v4 + 16) = v17;
      v18 = (v4 + 24 * v16);
      v18[4] = v10;
      v18[5] = v12;
      v18[6] = v14;
      v5 += 3;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
    v17 = *(MEMORY[0x277D84F90] + 16);
    v19 = MEMORY[0x277D84F90];
    if (!v17)
    {
LABEL_16:
      v1[56] = v19;

      if (*(v19 + 16))
      {
        if (qword_27DA4AC00 == -1)
        {
          goto LABEL_18;
        }

        goto LABEL_98;
      }

      v35 = v1[1];

      return v35();
    }
  }

  v20 = 0;
  v1 = (v4 + 48);
  v19 = MEMORY[0x277D84F90];
  v123 = v17;
  while (v20 < *(v4 + 16))
  {
    v21 = *(v1 - 2);
    v22 = *(v1 - 1);
    v23 = *v1;

    v126 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22DEF0AB0(0, *(v19 + 16) + 1, 1);
      v17 = v123;
      v19 = v126;
    }

    v25 = *(v19 + 16);
    v24 = *(v19 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_22DEF0AB0((v24 > 1), v25 + 1, 1);
      v17 = v123;
      v19 = v126;
    }

    ++v20;
    *(v19 + 16) = v25 + 1;
    v26 = (v19 + 24 * v25);
    v26[4] = v21;
    v26[5] = v22;
    v26[6] = v23;
    v1 += 3;
    if (v17 == v20)
    {
      v1 = v125;
      goto LABEL_16;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_98:
    swift_once();
LABEL_18:
    v27 = sub_22DF63734();
    v1[57] = __swift_project_value_buffer(v27, qword_27DA4E5D8);

    v28 = sub_22DF63714();
    v29 = sub_22DF63D24();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v126 = v31;
      *v30 = 134349314;
      *(v30 + 4) = *(v19 + 16);

      *(v30 + 12) = 2082;
      sub_22DF17E38(&qword_27DA47868, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v32 = sub_22DF64154();
      v34 = sub_22DEF0354(v32, v33, &v126);

      *(v30 + 14) = v34;
      _os_log_impl(&dword_22DEEA000, v28, v29, "submitting %{public}ld events to %{public}s", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x2318DDBE0](v31, -1, -1);
      MEMORY[0x2318DDBE0](v30, -1, -1);
    }

    else
    {
    }

    v37 = v1[54];
    v36 = v1[55];
    v38 = v1[53];
    v39 = v1[34];
    sub_22DF63554();
    getTimeIntervalSince1970(Date:)(v36);
    v41 = v40;
    (*(v37 + 8))(v36, v38);
    v42 = *(v39 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_clientID + 8);
    v124 = *(v39 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_clientID);
    v1[58] = v42;
    v43 = *(v19 + 16);
    if (v43)
    {
      v126 = MEMORY[0x277D84F90];

      sub_22DF17748(0, v43, 0);
      v44 = v126;
      v45 = v126[2];
      v46 = (v19 + 48);
      do
      {
        v47 = *v46;
        v126 = v44;
        v48 = *(v44 + 24);

        if (v45 >= v48 >> 1)
        {
          sub_22DF17748((v48 > 1), v45 + 1, 1);
          v44 = v126;
        }

        *(v44 + 16) = v45 + 1;
        *(v44 + 8 * v45 + 32) = v47;
        v46 += 3;
        ++v45;
        --v43;
      }

      while (v43);
      v1 = v125;
    }

    else
    {

      v44 = MEMORY[0x277D84F90];
    }

    v1[59] = v44;
    sub_22DF631B4();
    swift_allocObject();
    v1[60] = sub_22DF631A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47368, qword_22DF67230);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_22DF65900;
    sub_22DF63164();
    v1[27] = v49;
    sub_22DF17E38(&qword_27DA47370, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47378, &qword_22DF65950);
    sub_22DF17768();
    sub_22DF63E54();
    sub_22DF63184();
    *(v1 + 13) = v41;
    v1[14] = v124;
    v1[15] = v42;
    v1[16] = v44;
    sub_22DF177CC();
    v50 = sub_22DF63194();
    v1[61] = 0;
    v1[62] = v50;
    v1[63] = v51;
    v53 = sub_22DF2E5EC();
    swift_beginAccess();
    if (*v53 == 1 && *sub_22DF2E7D0() == 1)
    {
      v54 = v1[34];
    }

    else
    {
      v54 = v1[34];
      if ((*(v54 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_skipLogging) & 1) == 0)
      {
        v57 = *(v54 + 120);
        v1[64] = v57;
        v58 = v54 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_name;
        v1[65] = *(v54 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_name);
        v1[66] = *(v58 + 8);

        return MEMORY[0x2822009F8](sub_22DF160DC, v57, 0);
      }
    }

    v55 = v1[62];
    v56 = v1[63];
    (*(v1[45] + 16))(v1[46], v54 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_url, v1[44]);
    sub_22DF630E4();
    sub_22DEF7A88(v55, v56);
    sub_22DF17954(v55, v56, v55, v56, &v126);
    v60 = v126;
    v59 = v127;
    if (v127 >> 60 == 15)
    {
      sub_22DEF7A88(v1[62], v1[63]);
    }

    else
    {
      sub_22DEF7A88(v126, v127);
    }

    v1[69] = v59;
    v1[68] = v60;
    sub_22DF63104();
    sub_22DF630D4();
    if (v59 >> 60 != 15)
    {
      sub_22DF63114();
    }

    sub_22DF63114();
    sub_22DF63114();
    v61 = sub_22DF630F4();
    if (v62 >> 60 == 15)
    {
      goto LABEL_100;
    }

    v63 = v62 >> 62;
    if ((v62 >> 62) <= 1)
    {
      if (!v63)
      {
        v64 = BYTE6(v62);
        sub_22DEF7A20(v61, v62);
        v65 = v64;
        goto LABEL_57;
      }

      goto LABEL_54;
    }

    if (v63 != 2)
    {
      sub_22DEF7A20(v61, v62);
      v65 = 0;
      goto LABEL_57;
    }

    v67 = *(v61 + 16);
    v66 = *(v61 + 24);
    v61 = sub_22DEF7A20(v61, v62);
    v65 = v66 - v67;
    if (__OFSUB__(v66, v67))
    {
      __break(1u);
LABEL_54:
      v68 = HIDWORD(v61);
      v69 = v61;
      v61 = sub_22DEF7A20(v61, v62);
      LODWORD(v65) = v68 - v69;
      if (__OFSUB__(v68, v69))
      {
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        return MEMORY[0x2821463B8](v61, v62);
      }

      v65 = v65;
    }

LABEL_57:
    v119 = v1[39];
    v120 = v1[42];
    v70 = v1[34];
    v1[28] = v65;
    sub_22DF64154();
    sub_22DF63114();

    v71 = v70 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_extraHeaders;
    v72 = *(v70 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_extraHeaders + 16);
    *(v1 + 1) = *(v70 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_extraHeaders);
    *(v1 + 2) = v72;
    v74 = *(v71 + 48);
    v73 = *(v71 + 64);
    v75 = *(v71 + 32);
    v1[12] = *(v71 + 80);
    *(v1 + 4) = v74;
    *(v1 + 5) = v73;
    *(v1 + 3) = v75;
    v76 = sub_22DF35C50();
    v77 = 0;
    v19 = v76 + 64;
    v78 = *(v76 + 64);
    v121 = v76;
    v122 = v76 + 64;
    v79 = -1;
    v80 = -1 << *(v76 + 32);
    if (-v80 < 64)
    {
      v79 = ~(-1 << -v80);
    }

    v81 = v79 & v78;
    v82 = (63 - v80) >> 6;
    v83 = &unk_27DA475B0;
    if ((v79 & v78) != 0)
    {
      break;
    }

LABEL_63:
    if (v82 <= v77 + 1)
    {
      v85 = v77 + 1;
    }

    else
    {
      v85 = v82;
    }

    v86 = v85 - 1;
    v1 = v125;
    while (1)
    {
      v84 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        break;
      }

      if (v84 >= v82)
      {
        v104 = v125[42];
        v94 = v83;
        v105 = __swift_instantiateConcreteTypeFromMangledNameV2(v83, qword_22DF65E40);
        (*(*(v105 - 8) + 56))(v104, 1, 1, v105);
        v81 = 0;
        v77 = v86;
        goto LABEL_72;
      }

      v81 = *(v19 + 8 * v84);
      ++v77;
      if (v81)
      {
        v77 = v84;
        goto LABEL_71;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v84 = v77;
    v1 = v125;
LABEL_71:
    v88 = v1[41];
    v87 = v1[42];
    v89 = __clz(__rbit64(v81));
    v81 &= v81 - 1;
    v90 = v89 | (v84 << 6);
    v91 = (*(v121 + 48) + 16 * v90);
    v92 = *v91;
    v93 = v91[1];
    sub_22DEF0974(*(v121 + 56) + *(v119 + 72) * v90, v88);
    v94 = v83;
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(v83, qword_22DF65E40);
    v96 = *(v95 + 48);
    *v87 = v92;
    *(v120 + 8) = v93;
    sub_22DEFE894(v88, v87 + v96);
    v97 = *(*(v95 - 8) + 56);
    v98 = v95;
    v1 = v125;
    v97(v87, 0, 1, v98);

LABEL_72:
    v99 = v1[43];
    sub_22DF17AE0(v1[42], v99);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(v94, qword_22DF65E40);
    if ((*(*(v100 - 8) + 48))(v99, 1, v100) == 1)
    {
      break;
    }

    v101 = v94;
    sub_22DEFE894(v1[43] + *(v100 + 48), v1[40]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v103 = v1[40];
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v125[30] = *v103;
        goto LABEL_78;
      }

      v83 = v94;
      if (EnumCaseMultiPayload == 1)
      {
        v125[31] = *v103;
LABEL_78:
        sub_22DF64154();
        goto LABEL_61;
      }

      sub_22DF17B50(v103, type metadata accessor for ServiceEventValue);
      v19 = v122;
      if (!v81)
      {
        goto LABEL_63;
      }
    }

    else
    {
LABEL_61:
      v19 = v122;
      sub_22DF63114();

      v83 = v101;
      if (!v81)
      {
        goto LABEL_63;
      }
    }
  }

  v107 = v1[36];
  v106 = v1[37];
  v108 = v1[34];
  v109 = v1[35];

  [*(v108 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_options) copy];
  sub_22DF63E44();
  swift_unknownObjectRelease();
  sub_22DEF7E20(0, &qword_27DA47860, 0x277CF36E0);
  swift_dynamicCast();
  v110 = v1[29];
  v1[70] = v110;
  sub_22DF635F4();
  sub_22DF635A4();
  (*(v107 + 8))(v106, v109);
  v111 = sub_22DF63984();

  [v110 setIdentifier_];

  sub_22DEF7E20(0, &qword_27DA47630, 0x277CCABB0);
  v112 = sub_22DF63E04();
  [v110 setUseNWLoaderOverride_];

  v113 = sub_22DF633E4();
  if (v114)
  {
    if (v113 == 0xD00000000000001BLL && v114 == 0x800000022DF6E550)
    {

      goto LABEL_87;
    }

    v115 = sub_22DF64184();

    if (v115)
    {
LABEL_87:
      v116 = sub_22DF63E04();
      [v110 setPrivacyProxyFailClosedOverride_];
    }
  }

  if (v1[3] == 0x51424A3241394B34 && v1[4] == 0xEA00000000005832 || (sub_22DF64184() & 1) != 0)
  {
    v117 = sub_22DF63E04();
    [v110 setUseNWLoaderOverride_];
  }

  [v110 set:1 optIntoDisableAPWakeOnIdleConnections:?];
  v61 = [objc_opt_self() sharedManager];
  v1[71] = v61;
  if (!v61)
  {
    goto LABEL_101;
  }

  v118 = swift_task_alloc();
  v1[72] = v118;
  *v118 = v1;
  v118[1] = sub_22DF16B48;
  v61 = v1[49];
  v62 = v110;

  return MEMORY[0x2821463B8](v61, v62);
}

uint64_t sub_22DF160DC()
{
  v1 = v0[61];
  sub_22DEF6580(v0[65], v0[66], v0[62], v0[63]);
  v0[67] = v1;
  v2 = v0[34];
  if (v1)
  {
    v3 = sub_22DF16DEC;
  }

  else
  {
    v3 = sub_22DF16170;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_22DF16170()
{
  v77 = v0;
  v1 = v0[67];
  v2 = v0[62];
  v3 = v0[63];
  (*(v0[45] + 16))(v0[46], v0[34] + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_url, v0[44]);
  sub_22DF630E4();
  sub_22DEF7A88(v2, v3);
  sub_22DF17954(v2, v3, v2, v3, &v75);
  v74 = v0;
  if (v1)
  {
    v4 = v1;
    v5 = sub_22DF63714();
    v6 = sub_22DF63D04();

    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[62];
    v8 = v0[63];
    if (v7)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v75 = v11;
      *v10 = 136446210;
      swift_getErrorValue();
      v12 = sub_22DF64244();
      v14 = sub_22DEF0354(v12, v13, &v75);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_22DEEA000, v5, v6, "failed to compress payload: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x2318DDBE0](v11, -1, -1);
      MEMORY[0x2318DDBE0](v10, -1, -1);
    }

    else
    {
    }

    sub_22DEF7A88(v9, v8);
    v16 = 0;
    v15 = 0xF000000000000000;
  }

  else
  {
    v16 = v75;
    v15 = v76;
    if (v76 >> 60 == 15)
    {
      sub_22DEF7A88(v0[62], v0[63]);
    }

    else
    {
      sub_22DEF7A88(v75, v76);
    }
  }

  v0[69] = v15;
  v0[68] = v16;
  sub_22DF63104();
  sub_22DF630D4();
  if (v15 >> 60 != 15)
  {
    sub_22DF63114();
  }

  sub_22DF63114();
  sub_22DF63114();
  v17 = sub_22DF630F4();
  if (v18 >> 60 == 15)
  {
    goto LABEL_63;
  }

  v19 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v19 != 2)
    {
      sub_22DEF7A20(v17, v18);
      v21 = 0;
      goto LABEL_22;
    }

    v23 = *(v17 + 16);
    v22 = *(v17 + 24);
    v17 = sub_22DEF7A20(v17, v18);
    v21 = v22 - v23;
    if (!__OFSUB__(v22, v23))
    {
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v19)
  {
LABEL_19:
    v24 = HIDWORD(v17);
    v25 = v17;
    v17 = sub_22DEF7A20(v17, v18);
    LODWORD(v21) = v24 - v25;
    if (!__OFSUB__(v24, v25))
    {
      v21 = v21;
      goto LABEL_22;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v20 = BYTE6(v18);
  sub_22DEF7A20(v17, v18);
  v21 = v20;
LABEL_22:
  v70 = v0[39];
  v71 = v0[42];
  v26 = v0[34];
  v0[28] = v21;
  sub_22DF64154();
  sub_22DF63114();

  v27 = v26 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_extraHeaders;
  v28 = *(v26 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_extraHeaders + 16);
  *(v0 + 1) = *(v26 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_extraHeaders);
  *(v0 + 2) = v28;
  v30 = *(v27 + 48);
  v29 = *(v27 + 64);
  v31 = *(v27 + 32);
  v0[12] = *(v27 + 80);
  *(v0 + 4) = v30;
  *(v0 + 5) = v29;
  *(v0 + 3) = v31;
  v17 = sub_22DF35C50();
  v32 = 0;
  v33 = v17 + 64;
  v72 = v17;
  v73 = v17 + 64;
  v34 = -1;
  v35 = -1 << *(v17 + 32);
  if (-v35 < 64)
  {
    v34 = ~(-1 << -v35);
  }

  v36 = v34 & *(v17 + 64);
  v37 = (63 - v35) >> 6;
  while (1)
  {
    if (!v36)
    {
      if (v37 <= v32 + 1)
      {
        v39 = v32 + 1;
      }

      else
      {
        v39 = v37;
      }

      v40 = v39 - 1;
      while (1)
      {
        v38 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v38 >= v37)
        {
          v54 = v0[42];
          v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
          (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
          v36 = 0;
          v32 = v40;
          goto LABEL_38;
        }

        v36 = *(v33 + 8 * v38);
        ++v32;
        if (v36)
        {
          v32 = v38;
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_62;
    }

    v38 = v32;
LABEL_37:
    v42 = v0[41];
    v41 = v0[42];
    v43 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v44 = v43 | (v38 << 6);
    v45 = (*(v72 + 48) + 16 * v44);
    v47 = *v45;
    v46 = v45[1];
    sub_22DEF0974(*(v72 + 56) + *(v70 + 72) * v44, v42);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
    v49 = *(v48 + 48);
    *v41 = v47;
    v0 = v74;
    *(v71 + 8) = v46;
    sub_22DEFE894(v42, v41 + v49);
    (*(*(v48 - 8) + 56))(v41, 0, 1, v48);

LABEL_38:
    v50 = v0[43];
    sub_22DF17AE0(v0[42], v50);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
    if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
    {
      break;
    }

    sub_22DEFE894(v0[43] + *(v51 + 48), v0[40]);
    v0 = v74;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v53 = v74[40];
    switch(EnumCaseMultiPayload)
    {
      case 0:
        goto LABEL_25;
      case 2:
        v74[30] = *v53;
        goto LABEL_44;
      case 1:
        v74[31] = *v53;
LABEL_44:
        sub_22DF64154();
LABEL_25:
        sub_22DF63114();

        goto LABEL_26;
    }

    v17 = sub_22DF17B50(v53, type metadata accessor for ServiceEventValue);
LABEL_26:
    v33 = v73;
  }

  v57 = v0[36];
  v56 = v0[37];
  v58 = v0[34];
  v59 = v0[35];

  [*(v58 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_options) copy];
  sub_22DF63E44();
  swift_unknownObjectRelease();
  sub_22DEF7E20(0, &qword_27DA47860, 0x277CF36E0);
  swift_dynamicCast();
  v60 = v0[29];
  v0[70] = v60;
  sub_22DF635F4();
  sub_22DF635A4();
  (*(v57 + 8))(v56, v59);
  v61 = sub_22DF63984();

  [v60 setIdentifier_];

  sub_22DEF7E20(0, &qword_27DA47630, 0x277CCABB0);
  v62 = sub_22DF63E04();
  [v60 setUseNWLoaderOverride_];

  v63 = sub_22DF633E4();
  if (v64)
  {
    if (v63 == 0xD00000000000001BLL && v64 == 0x800000022DF6E550)
    {

      goto LABEL_52;
    }

    v65 = sub_22DF64184();

    if (v65)
    {
LABEL_52:
      v66 = sub_22DF63E04();
      [v60 setPrivacyProxyFailClosedOverride_];
    }
  }

  if (v0[3] == 0x51424A3241394B34 && v0[4] == 0xEA00000000005832 || (sub_22DF64184() & 1) != 0)
  {
    v67 = sub_22DF63E04();
    [v60 setUseNWLoaderOverride_];
  }

  [v60 set:1 optIntoDisableAPWakeOnIdleConnections:?];
  v17 = [objc_opt_self() sharedManager];
  v0[71] = v17;
  if (v17)
  {

    v68 = swift_task_alloc();
    v0[72] = v68;
    *v68 = v0;
    v68[1] = sub_22DF16B48;
    v17 = v0[49];
    v18 = v60;

    return MEMORY[0x2821463B8](v17, v18);
  }

LABEL_64:
  __break(1u);
  return MEMORY[0x2821463B8](v17, v18);
}

uint64_t sub_22DF16B48(uint64_t a1, unint64_t a2, void *a3)
{
  v8 = *v4;
  *(*v4 + 584) = v3;

  v9 = *(v8 + 568);
  v10 = *(v8 + 272);
  if (v3)
  {

    v11 = sub_22DF16EFC;
  }

  else
  {
    sub_22DEF7A34(a1, a2);

    v11 = sub_22DF16CC0;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_22DF16CC0()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v4 = *(v0 + 496);
  v3 = *(v0 + 504);
  v6 = *(v0 + 384);
  v5 = *(v0 + 392);
  v7 = *(v0 + 376);

  sub_22DEF7A34(v4, v3);
  sub_22DEF7A20(v2, v1);
  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22DF16DEC()
{
  sub_22DEF7A34(v0[62], v0[63]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22DF16EFC()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v4 = *(v0 + 496);
  v3 = *(v0 + 504);
  v6 = *(v0 + 384);
  v5 = *(v0 + 392);
  v7 = *(v0 + 376);

  sub_22DEF7A34(v4, v3);
  sub_22DEF7A20(v2, v1);
  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22DF17030()
{
  MEMORY[0x2318DCA20](*(v0 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_name), *(v0 + OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_name + 8));
  MEMORY[0x2318DCA20](539828258, 0xE400000000000000);
  sub_22DF63444();
  sub_22DF17E38(&qword_27DA47868, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v1 = sub_22DF64154();
  MEMORY[0x2318DCA20](v1);

  MEMORY[0x2318DCA20](41, 0xE100000000000000);
  return 8744;
}

uint64_t sub_22DF17118()
{

  v1 = OBJC_IVAR____TtC19CloudTelemetryTools11BackendHTTP_url;
  v2 = sub_22DF63444();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22DF17218()
{
  sub_22DF17118();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DF17244(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22DEEFBD4;

  return v6(a1);
}

uint64_t sub_22DF173A8@<X0>(Bytef *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a2 - a1;
  memset(&strm.total_out, 0, 72);
  if (a1)
  {
    v8 = a2 - a1;
  }

  else
  {
    v8 = 0;
  }

  memset(&strm.avail_in, 0, 32);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (HIDWORD(v8))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  strm.avail_in = v8;
  if (!a1)
  {
    goto LABEL_48;
  }

  strm.next_in = a1;
  v11 = deflateInit2_(&strm, -1, 8, 31, 8, 0, "1.2.12", 112);
  if (v11)
  {
    v12 = v11;
    sub_22DF17F40();
    swift_allocError();
    *v13 = v12;
    return swift_willThrow();
  }

  v15 = deflateBound(&strm, v7);
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

  v35 = sub_22DF184B0(v15);
  v36 = v16;
  v17 = sub_22DF17F94(&v35, &strm);
  if (v17 != 1)
  {
    v5 = v17;
    if (qword_27DA4AC00 == -1)
    {
LABEL_16:
      v22 = sub_22DF63734();
      __swift_project_value_buffer(v22, qword_27DA4E5D8);
      v23 = sub_22DF63714();
      v24 = sub_22DF63D14();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 67240192;
        *(v25 + 4) = v5;
        _os_log_impl(&dword_22DEEA000, v23, v24, "zlib returned unexpected status %{public}d", v25, 8u);
        MEMORY[0x2318DDBE0](v25, -1, -1);
      }

      *a5 = xmmword_22DF671F0;
      v18 = v35;
      v19 = v36;
      goto LABEL_39;
    }

LABEL_44:
    swift_once();
    goto LABEL_16;
  }

  if ((strm.total_out & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_22DF63494();
  v18 = v35;
  v19 = v36;
  v20 = v36 >> 62;
  if ((v36 >> 62) <= 1)
  {
    if (!v20)
    {
      v21 = BYTE6(v36);
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v20 != 2)
  {
    v21 = 0;
    goto LABEL_26;
  }

  v27 = *(v35 + 16);
  v26 = *(v35 + 24);
  v28 = __OFSUB__(v26, v27);
  v21 = v26 - v27;
  if (v28)
  {
    __break(1u);
LABEL_23:
    LODWORD(v21) = HIDWORD(v18) - v18;
    if (__OFSUB__(HIDWORD(v18), v18))
    {
      __break(1u);
      goto LABEL_46;
    }

    v21 = v21;
  }

LABEL_26:
  v29 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v29 != 2)
    {
      if (v21 < 0)
      {
        goto LABEL_33;
      }

      goto LABEL_38;
    }

    v31 = *(a3 + 16);
    v30 = *(a3 + 24);
    v28 = __OFSUB__(v30, v31);
    v32 = v30 - v31;
    if (!v28)
    {
      if (v21 < v32)
      {
        goto LABEL_33;
      }

LABEL_38:
      *a5 = xmmword_22DF671F0;
      goto LABEL_39;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

  if (v29)
  {
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      if (v21 >= HIDWORD(a3) - a3)
      {
        goto LABEL_38;
      }

      goto LABEL_33;
    }

    goto LABEL_47;
  }

  if (v21 >= BYTE6(a4))
  {
    goto LABEL_38;
  }

LABEL_33:
  *a5 = v18;
  *(a5 + 8) = v19;
  v33 = v18;
  v34 = v19;
  sub_22DEF7A88(v18, v19);
  v18 = v33;
  v19 = v34;
LABEL_39:
  sub_22DEF7A34(v18, v19);
  return deflateEnd(&strm);
}

uint64_t sub_22DF176CC@<X0>(z_streamp strm@<X2>, uint64_t result@<X0>, uint64_t a3@<X1>, _DWORD *a4@<X8>)
{
  if (result)
  {
    v5 = a3 - result;
  }

  else
  {
    v5 = 0;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  total_out = strm->total_out;
  v7 = v5 >= total_out;
  v8 = v5 - total_out;
  if (!v7)
  {
    goto LABEL_12;
  }

  if (HIDWORD(v8))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  strm->avail_out = v8;
  if (result)
  {
    if ((total_out & 0x8000000000000000) == 0)
    {
      strm->next_out = (total_out + result);
      result = deflate(strm, 4);
      *a4 = result;
      return result;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_22DF17748(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DF17820(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_22DF17768()
{
  result = qword_27DA47380;
  if (!qword_27DA47380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA47378, &qword_22DF65950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47380);
  }

  return result;
}

unint64_t sub_22DF177CC()
{
  result = qword_27DA4AC08[0];
  if (!qword_27DA4AC08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4AC08);
  }

  return result;
}

void *sub_22DF17820(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47890, &unk_22DF673E0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47590, &unk_22DF65E20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22DF17954@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v13, 0, 14);
      v8 = v13;
      goto LABEL_9;
    }

    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      v8 = v13 + BYTE6(a2);
LABEL_9:
      sub_22DF173A8(v13, v8, a3, a4, a5);
      return sub_22DEF7A34(a3, a4);
    }

    v9 = a1;
    v10 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_22DEF7A88(a3, a4);
  sub_22DF17E80(v9, v10, a3, a4, a5);
  return sub_22DEF7A34(a3, a4);
}

uint64_t sub_22DF17AE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47598, &qword_22DF65E30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF17B50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for BackendHTTP(uint64_t a1)
{
  result = qword_28150A8B0;
  if (!qword_28150A8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DF17C04(uint64_t a1)
{
  result = sub_22DF63444();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s9ZLibErrorOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9ZLibErrorOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_22DF17D60()
{
  result = qword_27DA4AE10[0];
  if (!qword_27DA4AE10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4AE10);
  }

  return result;
}

unint64_t sub_22DF17DB4()
{
  result = qword_27DA47880;
  if (!qword_27DA47880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA47878, &qword_22DF673D8);
    sub_22DEF7D64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47880);
  }

  return result;
}

uint64_t sub_22DF17E38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Bytef *sub_22DF17E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  result = sub_22DF63204();
  v11 = result;
  if (result)
  {
    result = sub_22DF63234();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = sub_22DF63224();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = &v11[v15];
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  sub_22DF173A8(v11, v17, a3, a4, a5);
  return sub_22DEF7A34(a3, a4);
}

unint64_t sub_22DF17F40()
{
  result = qword_27DA47888;
  if (!qword_27DA47888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47888);
  }

  return result;
}

uint64_t sub_22DF17F94(uint64_t *a1, z_streamp strm)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_22DEF7A34(v6, v5);
      *&v17 = v6;
      WORD4(v17) = v5;
      BYTE10(v17) = BYTE2(v5);
      BYTE11(v17) = BYTE3(v5);
      BYTE12(v17) = BYTE4(v5);
      BYTE13(v17) = BYTE5(v5);
      BYTE14(v17) = BYTE6(v5);
      result = sub_22DF176CC(strm, &v17, &v17 + BYTE6(v5), &v16);
      if (!v2)
      {
        result = v16;
      }

      v9 = DWORD2(v17) | ((WORD6(v17) | (BYTE14(v17) << 16)) << 32);
      *a1 = v17;
      a1[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_22DEF7A34(v6, v5);
    *a1 = xmmword_22DF67200;
    sub_22DEF7A34(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (sub_22DF63204() && __OFSUB__(v6, sub_22DF63234()))
      {
LABEL_22:
        __break(1u);
      }

      sub_22DF63244();
      swift_allocObject();
      v13 = sub_22DF631E4();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_22DF182F8(v6, v6 >> 32, v11, strm);

      *a1 = v6;
      a1[1] = v11 | 0x4000000000000000;
      if (!v2)
      {
        return v14;
      }

      return result;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v7 == 2)
  {

    sub_22DEF7A34(v6, v5);
    *&v17 = v6;
    *(&v17 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_22DF67200;
    sub_22DEF7A34(0, 0xC000000000000000);
    sub_22DF63454();
    v10 = *(&v17 + 1);
    result = sub_22DF182F8(*(v17 + 16), *(v17 + 24), *(&v17 + 1), strm);
    *a1 = v17;
    a1[1] = v10 | 0x8000000000000000;
  }

  else
  {
    *(&v17 + 7) = 0;
    *&v17 = 0;
    result = sub_22DF176CC(strm, &v17, &v17, &v16);
    if (!v2)
    {
      return v16;
    }
  }

  return result;
}

uint64_t sub_22DF182F8(uint64_t a1, uint64_t a2, uint64_t a3, z_stream *a4)
{
  result = sub_22DF63204();
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  result = sub_22DF63234();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v13 = sub_22DF63224();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  result = sub_22DF176CC(a4, v9 + v10, v9 + v10 + v14, &v15);
  if (!v4)
  {
    return v15;
  }

  return result;
}

uint64_t sub_22DF1839C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D695474736F70 && a2 == 0xE800000000000000;
  if (v4 || (sub_22DF64184() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449746E65696C63 && a2 == 0xE800000000000000 || (sub_22DF64184() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22DF64184();

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

uint64_t sub_22DF184B0(uint64_t result)
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
      sub_22DF63244();
      swift_allocObject();
      sub_22DF63214();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22DF63484();
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

unint64_t sub_22DF18564()
{
  result = qword_27DA4AF20[0];
  if (!qword_27DA4AF20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4AF20);
  }

  return result;
}

unint64_t sub_22DF185BC()
{
  result = qword_27DA4B030;
  if (!qword_27DA4B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA4B030);
  }

  return result;
}

unint64_t sub_22DF18614()
{
  result = qword_27DA4B038[0];
  if (!qword_27DA4B038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4B038);
  }

  return result;
}

uint64_t type metadata accessor for CachedSession(uint64_t a1)
{
  result = qword_27DA4B140;
  if (!qword_27DA4B140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DF186B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v10 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v10;
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = *(a1 + 48);
  *(a6 + 56) = a2;
  *(a6 + 64) = a3;
  *(a6 + 72) = a7;
  v11 = type metadata accessor for CachedSession(0);
  v12 = v11[7];
  v13 = sub_22DF63594();
  result = (*(*(v13 - 8) + 32))(a6 + v12, a4, v13);
  v15 = a6 + v11[8];
  *v15 = 0;
  *(v15 + 4) = 1;
  *(a6 + v11[9]) = a5;
  return result;
}

uint64_t sub_22DF18780()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_22DF187B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_22DF63594();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

int8x16_t *sub_22DF18864@<X0>(int8x16_t *result@<X0>, uint64_t a2@<X1>, int8x8_t *a3@<X8>)
{
  if (!result || (a2 - result + 7) < 0xF)
  {
    *a3 = 0;
    return result;
  }

  v3 = ((a2 - result) / 8 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v3 >= 3)
  {
    v6 = v3 + 1;
    v7 = (v3 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v5 = (result + 8 * v7);
    v8 = result + 1;
    v9 = 0uLL;
    v10 = v7;
    v11 = 0uLL;
    do
    {
      v9 = veorq_s8(v8[-1], v9);
      v11 = veorq_s8(*v8, v11);
      v8 += 2;
      v10 -= 4;
    }

    while (v10);
    v12 = veorq_s8(v11, v9);
    v4 = veor_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
    if (v6 == v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    v5 = result;
  }

  do
  {
    v13 = v5->i64[0];
    v5 = (v5 + 8);
    *&v4 ^= v13;
  }

  while (v5 != &result->i8[(a2 - result + (a2 - result < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8]);
LABEL_10:
  *a3 = v4;
  return result;
}

uint64_t sub_22DF18918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEventValue(0);
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7 || !*(a2 + 16))
  {
    return 0;
  }

  v30 = MEMORY[0x277D84F90];
  sub_22DF18BA0(0, v7, 0);
  v8 = v30;
  v9 = (a1 + 40);
  do
  {
    v10 = *v9;
    if (*(a2 + 16))
    {
      v11 = *(v9 - 1);

      v12 = sub_22DEF08FC(v11, v10);
      if (v13)
      {
        sub_22DEF0974(*(a2 + 56) + *(v29 + 72) * v12, v6);
        v14 = sub_22DEFC730();
        sub_22DF1904C(v6);
        v15 = [v14 description];
        v16 = sub_22DF639B4();
        v18 = v17;

        goto LABEL_9;
      }
    }

    else
    {
    }

    v16 = 0;
    v18 = 0xE000000000000000;
LABEL_9:
    v30 = v8;
    v20 = *(v8 + 16);
    v19 = *(v8 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_22DF18BA0((v19 > 1), v20 + 1, 1);
      v8 = v30;
    }

    *(v8 + 16) = v20 + 1;
    v21 = v8 + 16 * v20;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
    v9 += 2;
    --v7;
  }

  while (v7);
  v30 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47670, &qword_22DF67510);
  sub_22DF18FE8();
  v22 = sub_22DF63954();
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    sub_22DF18CCC(v22, v24);
    v27 = v26;

    return v27;
  }

  return 0;
}

char *sub_22DF18BA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22DF18BC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22DF18BC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA476A8, &qword_22DF663F0);
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

uint64_t sub_22DF18CCC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22DF638B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22DF638A4();
  v19 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22DF63A04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return arc4random_uniform(0x2710u);
  }

  v18 = v7;
  sub_22DF639F4();
  v14 = sub_22DF639C4();
  v16 = v15;
  result = (*(v11 + 8))(v13, v10);
  if (v16 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_22DF19254();
    sub_22DF63884();
    sub_22DEF7A88(v14, v16);
    sub_22DF11DAC(v14, v16, v6);
    sub_22DEF7A20(v14, v16);
    sub_22DF63874();
    (*(v4 + 8))(v6, v3);
    sub_22DF63894();
    sub_22DEF7A20(v14, v16);
    return (*(v19 + 8))(v9, v18);
  }

  return result;
}

unint64_t sub_22DF18FE8()
{
  result = qword_27DA47768;
  if (!qword_27DA47768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA47670, &qword_22DF67510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47768);
  }

  return result;
}

uint64_t sub_22DF1904C(uint64_t a1)
{
  v2 = type metadata accessor for ServiceEventValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SessionUser(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SessionUser(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_22DF19108(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22DF19124(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

void sub_22DF1917C(uint64_t a1)
{
  sub_22DF63594();
  if (v1 <= 0x3F)
  {
    sub_22DEFFA04(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_22DF19254()
{
  result = qword_27DA47750;
  if (!qword_27DA47750)
  {
    sub_22DF638B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47750);
  }

  return result;
}

void *sub_22DF192AC()
{
  v0 = dlopen("../../AppleInternal/Library/Frameworks/CloudTelemetryLocalBackend.framework/CloudTelemetryLocalBackend", 1);
  if (v0)
  {
    result = dlsym(v0, "initLocalBackend");
  }

  else
  {
    if (dlerror())
    {
      v2 = sub_22DF63AA4();
      v4 = v3;
    }

    else
    {
      v4 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
    }

    if (qword_27DA4B158 != -1)
    {
      swift_once();
    }

    v5 = sub_22DF63734();
    __swift_project_value_buffer(v5, qword_27DA4E5F8);

    v6 = sub_22DF63714();
    v7 = sub_22DF63D04();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136446210;
      v10 = sub_22DEF0354(v2, v4, &v11);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_22DEEA000, v6, v7, "failed to load CloudTelemetryTTR framework: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x2318DDBE0](v9, -1, -1);
      MEMORY[0x2318DDBE0](v8, -1, -1);
    }

    else
    {
    }

    result = 0;
  }

  off_27DA4E5F0 = result;
  return result;
}

uint64_t sub_22DF19464()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E5F8);
  __swift_project_value_buffer(v0, qword_27DA4E5F8);
  return sub_22DF63724();
}

uint64_t sub_22DF194E8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  sub_22DF19540(a1, a2, a3);
  return v6;
}

uint64_t sub_22DF19540(uint64_t a1, uint64_t a2, void *a3)
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA475F8, qword_22DF67590);
  v5 = sub_22DF64024();
  v6 = v5;
  v7 = 0;
  v49 = a2;
  v10 = *(a2 + 64);
  v9 = a2 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v48 = v5 + 64;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v3 = 16 * v18;
      v19 = (*(v49 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = (*(v49 + 56) + 48 * v18);
      v23 = v22[2];
      *v52 = v22[1];
      *&v52[16] = v23;
      v51 = *v22;
      v53 = v51;
      v54 = *&v52[8];
      v55[0] = *(&v23 + 1);

      sub_22DF051C0(&v53, v50);
      sub_22DF051C0(&v54, v50);
      sub_22DF1998C(v55, v50);
      v24 = sub_22DF3B2D4();
      sub_22DF13A04(&v53);
      sub_22DF13A04(&v54);
      sub_22DF199FC(v55);
      *(v48 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v25 = (v6[6] + 16 * v18);
      *v25 = v20;
      v25[1] = v21;
      *(v6[7] + 8 * v18) = v24;
      v26 = v6[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v6[2] = v28;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v14)
      {
        break;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    v3 = v47;
    v47[16] = v6;
    v47[17] = a1;

    v6 = a3;
    v29 = a3[3];
    v30 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v29);
    (*(v30 + 8))(v50, v29, v30);
    v31 = v50[0];
    v32 = v50[1];

    sub_22DEF0FA8(v50);
    v47[14] = v31;
    v47[15] = v32;
    v33 = sub_22DF2E5EC();
    swift_beginAccess();
    if ((*v33 & 1) == 0)
    {
      v47[18] = 0;
      goto LABEL_30;
    }

    if (qword_27DA4B150 != -1)
    {
      goto LABEL_33;
    }
  }

  v34 = off_27DA4E5F0;
  if (off_27DA4E5F0)
  {
    v35 = v6[3];
    v36 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v35);
    v37 = (*(v36 + 40))(v35, v36);
    if ((v37 & 0x100000000) != 0)
    {
      v37 = 0;
    }

    else
    {
      v37 = v37;
    }

    *(v3 + 144) = v34(v37);
    if (qword_27DA4B158 != -1)
    {
      swift_once();
    }

    v38 = sub_22DF63734();
    __swift_project_value_buffer(v38, qword_27DA4E5F8);
    v39 = sub_22DF63714();
    v40 = sub_22DF63D24();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_29;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "initialized CloudTelemetryTTR framework";
  }

  else
  {
    *(v3 + 144) = 0;
    if (qword_27DA4B158 != -1)
    {
      swift_once();
    }

    v43 = sub_22DF63734();
    __swift_project_value_buffer(v43, qword_27DA4E5F8);
    v39 = sub_22DF63714();
    v40 = sub_22DF63D04();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_29;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "failed to initialize CloudTelemetryTTR framework";
  }

  _os_log_impl(&dword_22DEEA000, v39, v40, v42, v41, 2u);
  MEMORY[0x2318DDBE0](v41, -1, -1);
LABEL_29:

LABEL_30:
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v3;
}

uint64_t sub_22DF1998C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47898, &unk_22DF69230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF199FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47898, &unk_22DF69230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22DF19A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = a1;
  v14[1] = a2;
  v14[2] = a3;
  v5 = *(v3 + 136);
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_22DEF2388(v8, v11);
      v9 = v12;
      v10 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v10 + 24))(v14, v9, v10);
      if (v4)
      {
        __swift_destroy_boxed_opaque_existential_0(v11);

        return;
      }

      ++v7;
      __swift_destroy_boxed_opaque_existential_0(v11);
      v8 += 40;
      if (v6 == v7)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22DF19B84(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *v1;
  v2[13] = *(type metadata accessor for ServiceEventValue(0) - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47598, &qword_22DF65E30);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF19CB8, v1, 0);
}

uint64_t sub_22DF19CB8(uint64_t a1)
{
  v127 = v1;
  v3 = v1;
  v4 = sub_22DF2E5EC();
  isUniquelyReferenced_nonNull_native = swift_beginAccess();
  if (*v4 != 1)
  {
    goto LABEL_57;
  }

  v6 = *(v1 + 80);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  v125 = v3;
  if (v7)
  {
    v126 = MEMORY[0x277D84F90];
    sub_22DEF0AB0(0, v7, 0);
    v8 = v126;
    v9 = (v6 + 48);
    do
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v12 = *v9;

      sub_22DF19A64(v10, v11, v12);
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v126 = v8;
      v2 = *(v8 + 16);
      v19 = *(v8 + 24);
      v20 = v2 + 1;
      if (v2 >= v19 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_22DEF0AB0((v19 > 1), v2 + 1, 1);
        v8 = v126;
      }

      *(v8 + 16) = v20;
      v21 = (v8 + 24 * v2);
      v21[4] = v14;
      v21[5] = v16;
      v21[6] = v18;
      v9 += 3;
      --v7;
      v3 = v125;
    }

    while (v7);
LABEL_60:
    v93 = 0;
    v94 = (v8 + 48);
    v22 = MEMORY[0x277D84F90];
    while (v93 < *(v8 + 16))
    {
      v2 = *(v94 - 2);
      v95 = *(v94 - 1);
      v96 = *v94;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v126 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_22DEF0AB0(0, *(v22 + 16) + 1, 1);
        v22 = v126;
      }

      v98 = *(v22 + 16);
      v97 = *(v22 + 24);
      if (v98 >= v97 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_22DEF0AB0((v97 > 1), v98 + 1, 1);
        v22 = v126;
      }

      ++v93;
      *(v22 + 16) = v98 + 1;
      v99 = (v22 + 24 * v98);
      v99[4] = v2;
      v99[5] = v95;
      v99[6] = v96;
      v94 += 3;
      v3 = v125;
      if (v20 == v93)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_72;
  }

  v20 = *(MEMORY[0x277D84F90] + 16);
  v22 = MEMORY[0x277D84F90];
  if (v20)
  {
    goto LABEL_60;
  }

LABEL_9:
  *(v3 + 144) = v22;
  v23 = *(v3 + 88);

  v24 = *(v23 + 144);
  *(v3 + 152) = v24;
  if (!v24)
  {
    goto LABEL_54;
  }

  v25 = *(v22 + 16);
  *(v3 + 160) = v25;
  if (!v25)
  {
    goto LABEL_54;
  }

  *(v3 + 168) = 0;
  v26 = *(v3 + 144);
  v27 = *(v26 + 16);
  v28 = v24;
  if (!v27)
  {
    goto LABEL_53;
  }

  v2 = v3 + 64;
  v29 = sub_22DF1B590();
  v30 = 0;
  v31 = MEMORY[0x277D837D0];
  v32 = MEMORY[0x277D837E0];
  v121 = v29;
  while (2)
  {
    v33 = *(v26 + 24 * v30 + 48);
    v22 = *(v33 + 16);

    isUniquelyReferenced_nonNull_native = MEMORY[0x2318DC890](v22, v31, v29, v32);
    v34 = 0;
    *v2 = isUniquelyReferenced_nonNull_native;
    v35 = v33 + 64;
    v36 = -1 << *(v33 + 32);
    if (-v36 < 64)
    {
      v37 = ~(-1 << -v36);
    }

    else
    {
      v37 = -1;
    }

    v38 = v37 & *(v33 + 64);
    v39 = (63 - v36) >> 6;
    v124 = v33 + 64;
    v122 = v33;
    v123 = v39;
    while (1)
    {
      if (!v38)
      {
        if (v39 <= v34 + 1)
        {
          v44 = v34 + 1;
        }

        else
        {
          v44 = v39;
        }

        v45 = v44 - 1;
        while (1)
        {
          v43 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          if (v43 >= v39)
          {
            v77 = *(v3 + 128);
            v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
            (*(*(v78 - 8) + 56))(v77, 1, 1, v78);
            v38 = 0;
            v34 = v45;
            goto LABEL_30;
          }

          v38 = *(v35 + 8 * v43);
          ++v34;
          if (v38)
          {
            v34 = v43;
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        v85 = 0;
LABEL_74:
        *(v3 + 184) = v22;
        *(v3 + 192) = v85;
        v100 = __clz(__rbit64(v22)) | (v85 << 6);
        v101 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v100);
        v34 = *v101;
        v65 = v101[1];
        *(v3 + 200) = v65;
        v102 = *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v100);
        *(v3 + 208) = v102;
        v103 = qword_27DA4B158;

        v60 = v102;
        if (v103 == -1)
        {
          goto LABEL_75;
        }

        goto LABEL_83;
      }

      v43 = v34;
LABEL_29:
      v46 = *(v3 + 120);
      v47 = *(v3 + 128);
      v48 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      v49 = v48 | (v43 << 6);
      v50 = (*(v122 + 48) + 16 * v49);
      v52 = *v50;
      v51 = v50[1];
      sub_22DEF0974(*(v122 + 56) + *(*(v3 + 104) + 72) * v49, v46);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
      v54 = *(v53 + 48);
      *v47 = v52;
      v47[1] = v51;
      sub_22DEFE894(v46, v47 + v54);
      (*(*(v53 - 8) + 56))(v47, 0, 1, v53);

LABEL_30:
      v55 = *(v3 + 136);
      sub_22DF17AE0(*(v3 + 128), v55);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
      if ((*(*(v56 - 8) + 48))(v55, 1, v56) == 1)
      {
        break;
      }

      v57 = v2;
      v58 = *(v3 + 136);
      v59 = *v58;
      v2 = v58[1];
      sub_22DEFE894(v58 + *(v56 + 48), *(v3 + 112));
      v60 = sub_22DEFC730();
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v62 = v3;
      v3 = v61;
      v63 = *(v62 + 64);
      *(v62 + 72) = v63;
      v65 = sub_22DEF08FC(v59, v2);
      v66 = *(v63 + 16);
      v67 = (v64 & 1) == 0;
      v68 = v66 + v67;
      if (__OFADD__(v66, v67))
      {
        __break(1u);
        goto LABEL_81;
      }

      v69 = v64;
      if (*(v63 + 24) >= v68)
      {
        if (v3)
        {
          v3 = v125;
          v22 = *(v125 + 112);
          if (v64)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v3 = v125;
          sub_22DEFD87C();
          v22 = *(v125 + 112);
          if (v69)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        v70 = v3;
        v3 = v125;
        sub_22DEFD394(v68, v70);
        v71 = sub_22DEF08FC(v59, v2);
        if ((v69 & 1) != (v72 & 1))
        {

          return sub_22DF64234();
        }

        v65 = v71;
        v22 = *(v125 + 112);
        if (v69)
        {
LABEL_17:

          v40 = *(v3 + 72);
          v41 = v40[7];
          v42 = *(v41 + 8 * v65);
          *(v41 + 8 * v65) = v60;

          isUniquelyReferenced_nonNull_native = sub_22DF1904C(v22);
          goto LABEL_18;
        }
      }

      v40 = *(v3 + 72);
      v40[(v65 >> 6) + 8] |= 1 << v65;
      v73 = (v40[6] + 16 * v65);
      *v73 = v59;
      v73[1] = v2;
      *(v40[7] + 8 * v65) = v60;
      isUniquelyReferenced_nonNull_native = sub_22DF1904C(v22);
      v74 = v40[2];
      v75 = __OFADD__(v74, 1);
      v76 = v74 + 1;
      if (v75)
      {
        __break(1u);
LABEL_83:
        swift_once();
LABEL_75:
        v104 = sub_22DF63734();
        __swift_project_value_buffer(v104, qword_27DA4E5F8);

        v105 = sub_22DF63714();
        v106 = sub_22DF63D24();

        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v126 = v108;
          *v107 = 136446210;
          *(v107 + 4) = sub_22DEF0354(v34, v65, &v126);
          _os_log_impl(&dword_22DEEA000, v105, v106, "running TTR rule %{public}s", v107, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v108);
          v109 = v108;
          v3 = v125;
          MEMORY[0x2318DDBE0](v109, -1, -1);
          MEMORY[0x2318DDBE0](v107, -1, -1);
        }

        v110 = *(v3 + 152);
        v111 = v3;
        v112 = *(v3 + 96);
        v113 = v111[11];
        v116 = sub_22DF1B5DC(v114, v115);
        v117 = swift_task_alloc();
        v111[27] = v117;
        v117[2] = v60;
        v117[3] = v110;
        v117[4] = v2;
        v117[5] = v113;
        v117[6] = v34;
        v117[7] = v65;
        v117[8] = v112;
        v118 = swift_task_alloc();
        v111[28] = v118;
        *v118 = v111;
        v118[1] = sub_22DF1A73C;
        v119 = MEMORY[0x277D84F78] + 8;

        return MEMORY[0x2822007B8](v118, v113, v116, 0x65766528646E6573, 0xED0000293A73746ELL, sub_22DF1B654, v117, v119);
      }

      v40[2] = v76;
LABEL_18:
      v2 = v57;
      *v57 = v40;
      v39 = v123;
      v35 = v124;
    }

    v79 = *(v3 + 88);

    v80 = *(v79 + 128);
    *(v3 + 176) = v80;
    v81 = *(v80 + 32);
    *(v3 + 232) = v81;
    v82 = -1 << v81;
    if (-(-1 << v81) < 64)
    {
      v83 = ~(-1 << -v82);
    }

    else
    {
      v83 = -1;
    }

    v22 = v83 & *(v80 + 64);

    if (v22)
    {
      goto LABEL_73;
    }

    v84 = 0;
    v31 = MEMORY[0x277D837D0];
    v32 = MEMORY[0x277D837E0];
    while (((63 - v82) >> 6) - 1 != v84)
    {
      v85 = v84 + 1;
      v22 = *(isUniquelyReferenced_nonNull_native + 8 * v84++ + 72);
      if (v22)
      {
        goto LABEL_74;
      }
    }

    v87 = *(v3 + 160);
    v86 = *(v3 + 168);

    if (v86 + 1 == v87)
    {
LABEL_81:
      v120 = *(v3 + 152);

      goto LABEL_55;
    }

    v30 = *(v3 + 168) + 1;
    *(v3 + 168) = v30;
    v26 = *(v3 + 144);
    v29 = v121;
    if (v30 < *(v26 + 16))
    {
      continue;
    }

    break;
  }

LABEL_53:
  __break(1u);
LABEL_54:

LABEL_55:
  swift_beginAccess();
  v88 = off_27DA4E610;
  if (off_27DA4E610)
  {
    v89 = qword_27DA4E618;

    v88(v90);
    sub_22DEEB93C(v88, v89);
  }

LABEL_57:

  v91 = *(v3 + 8);

  return v91();
}

uint64_t sub_22DF1A73C()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_22DF1A88C, v1, 0);
}

uint64_t sub_22DF1A88C()
{
  v86 = v1;
  v83 = v1 + 8;

  v3 = v1[24];
  v4 = (v1[23] - 1) & v1[23];
  v84 = v1;
  if (v4)
  {
    v5 = v1[22];
    goto LABEL_3;
  }

  v8 = -1;
  while (1)
  {
LABEL_11:
    v25 = __OFADD__(v3++, 1);
    if (v25)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v5 = v1[22];
    if (v3 >= (((1 << *(v1 + 232)) + 63) >> 6))
    {
      break;
    }

    v4 = *(v5 + 8 * v3 + 64);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v0 = v1[20];
  v26 = v1[21];

  if (v26 + 1 != v0)
  {
    v27 = v1[21] + 1;
    v1[21] = v27;
    v28 = v1[18];
    if (v27 < *(v28 + 16))
    {
      isUniquelyReferenced_nonNull_native = *(v28 + 24 * v27 + 48);
      v29 = *(isUniquelyReferenced_nonNull_native + 16);
      v30 = sub_22DF1B590();

      v31 = MEMORY[0x2318DC890](v29, MEMORY[0x277D837D0], v30, MEMORY[0x277D837E0]);
      v32 = 0;
      *v83 = v31;
      v80 = isUniquelyReferenced_nonNull_native + 64;
      v81 = isUniquelyReferenced_nonNull_native;
      v33 = -1 << *(isUniquelyReferenced_nonNull_native + 32);
      if (-v33 < 64)
      {
        v34 = ~(-1 << -v33);
      }

      else
      {
        v34 = -1;
      }

      v35 = v34 & *(isUniquelyReferenced_nonNull_native + 64);
      v36 = (63 - v33) >> 6;
      v82 = v36;
      while (2)
      {
        if (!v35)
        {
          if (v36 <= v32 + 1)
          {
            v40 = v32 + 1;
          }

          else
          {
            v40 = v36;
          }

          v8 = v40 - 1;
          while (1)
          {
            v39 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              break;
            }

            if (v39 >= v36)
            {
              v67 = v1[16];
              v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
              (*(*(v68 - 8) + 56))(v67, 1, 1, v68);
              v35 = 0;
              goto LABEL_31;
            }

            v35 = *(v80 + 8 * v39);
            ++v32;
            if (v35)
            {
              goto LABEL_30;
            }
          }

          __break(1u);
          goto LABEL_53;
        }

        v39 = v32;
LABEL_30:
        v41 = v1[15];
        v42 = v1[16];
        v43 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v44 = v43 | (v39 << 6);
        v45 = (*(v81 + 48) + 16 * v44);
        v47 = *v45;
        v46 = v45[1];
        sub_22DEF0974(*(v81 + 56) + *(v1[13] + 72) * v44, v41);
        isUniquelyReferenced_nonNull_native = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
        v48 = *(isUniquelyReferenced_nonNull_native + 48);
        *v42 = v47;
        v42[1] = v46;
        sub_22DEFE894(v41, v42 + v48);
        v1 = v84;
        (*(*(isUniquelyReferenced_nonNull_native - 8) + 56))(v42, 0, 1, isUniquelyReferenced_nonNull_native);

        v8 = v39;
LABEL_31:
        v0 = v1[17];
        sub_22DF17AE0(v1[16], v0);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA475B0, qword_22DF65E40);
        if ((*(*(v49 - 8) + 48))(v0, 1, v49) == 1)
        {
          v69 = v1[11];

          v70 = *(v69 + 128);
          v1[22] = v70;
          v71 = *(v70 + 32);
          *(v1 + 232) = v71;
          v72 = 1 << v71;
          v8 = -1;
          if (v72 < 64)
          {
            v73 = ~(-1 << v72);
          }

          else
          {
            v73 = -1;
          }

          v4 = v73 & *(v70 + 64);

          v3 = 0;
          if (!v4)
          {
            goto LABEL_11;
          }

LABEL_3:
          v1[23] = v4;
          v1[24] = v3;
          v6 = __clz(__rbit64(v4)) | (v3 << 6);
          v7 = (*(v5 + 48) + 16 * v6);
          v8 = *v7;
          v0 = v7[1];
          v1[25] = v0;
          v9 = *(*(v5 + 56) + 8 * v6);
          v1[26] = v9;
          v10 = qword_27DA4B158;

          isUniquelyReferenced_nonNull_native = v9;
          if (v10 == -1)
          {
LABEL_4:
            v11 = sub_22DF63734();
            __swift_project_value_buffer(v11, qword_27DA4E5F8);

            v12 = sub_22DF63714();
            v13 = sub_22DF63D24();

            if (os_log_type_enabled(v12, v13))
            {
              v14 = swift_slowAlloc();
              v15 = swift_slowAlloc();
              v85 = v15;
              *v14 = 136446210;
              *(v14 + 4) = sub_22DEF0354(v8, v0, &v85);
              _os_log_impl(&dword_22DEEA000, v12, v13, "running TTR rule %{public}s", v14, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v15);
              MEMORY[0x2318DDBE0](v15, -1, -1);
              MEMORY[0x2318DDBE0](v14, -1, -1);
            }

            v16 = v84[19];
            v17 = v84[11];
            v18 = v84[12];
            v21 = sub_22DF1B5DC(v19, v20);
            v22 = swift_task_alloc();
            v84[27] = v22;
            v22[2] = isUniquelyReferenced_nonNull_native;
            v22[3] = v16;
            v22[4] = v83;
            v22[5] = v17;
            v22[6] = v8;
            v22[7] = v0;
            v22[8] = v18;
            v23 = swift_task_alloc();
            v84[28] = v23;
            *v23 = v84;
            v23[1] = sub_22DF1A73C;
            v24 = MEMORY[0x277D84F78] + 8;

            return MEMORY[0x2822007B8](v23, v17, v21, 0x65766528646E6573, 0xED0000293A73746ELL, sub_22DF1B654, v22, v24);
          }

LABEL_62:
          swift_once();
          goto LABEL_4;
        }

        v50 = v8;
        v51 = v1[17];
        v53 = *v51;
        v52 = v51[1];
        sub_22DEFE894(v51 + *(v49 + 48), v1[14]);
        v54 = sub_22DEFC730();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v1[8];
        v1[9] = v55;
        v0 = sub_22DEF08FC(v53, v52);
        v57 = *(v55 + 16);
        v58 = (v56 & 1) == 0;
        v59 = v57 + v58;
        if (__OFADD__(v57, v58))
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v60 = v56;
        if (*(v55 + 24) >= v59)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v1 = v84;
            v63 = v84[14];
            if ((v56 & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v1 = v84;
            sub_22DEFD87C();
            v63 = v84[14];
            if ((v60 & 1) == 0)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
          v1 = v84;
          sub_22DEFD394(v59, isUniquelyReferenced_nonNull_native);
          v61 = sub_22DEF08FC(v53, v52);
          if ((v60 & 1) != (v62 & 1))
          {

            return sub_22DF64234();
          }

          v0 = v61;
          v63 = v84[14];
          if ((v60 & 1) == 0)
          {
LABEL_39:
            v8 = v1[9];
            *(v8 + 8 * (v0 >> 6) + 64) |= 1 << v0;
            v64 = (*(v8 + 48) + 16 * v0);
            *v64 = v53;
            v64[1] = v52;
            *(*(v8 + 56) + 8 * v0) = v54;
            sub_22DF1904C(v63);
            v65 = *(v8 + 16);
            v25 = __OFADD__(v65, 1);
            v66 = v65 + 1;
            if (v25)
            {
              goto LABEL_59;
            }

            *(v8 + 16) = v66;
            goto LABEL_20;
          }
        }

        v8 = v1[9];
        v37 = *(v8 + 56);
        v38 = *(v37 + 8 * v0);
        *(v37 + 8 * v0) = v54;

        sub_22DF1904C(v63);
LABEL_20:
        v36 = v82;
        *v83 = v8;
        v32 = v50;
        continue;
      }
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

LABEL_53:
  v74 = v1[19];

  swift_beginAccess();
  v75 = off_27DA4E610;
  if (off_27DA4E610)
  {
    v76 = qword_27DA4E618;

    v75(v77);
    sub_22DEEB93C(v75, v76);
  }

  v78 = v1[1];

  return v78();
}

void sub_22DF1B084(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a8;
  v24 = a7;
  v21 = a1;
  v22 = a6;
  v25 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA478A8, "r6");
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  aBlock[0] = 0;
  sub_22DF1B590();
  sub_22DF638D4();
  if (aBlock[0])
  {

    v20 = sub_22DF638C4();

    v13 = sub_22DF63984();
    v14 = sub_22DF638C4();

    (*(v9 + 16))(v12, v21, v8);
    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = swift_allocObject();
    v17 = v24;
    *(v16 + 16) = v22;
    *(v16 + 24) = v17;
    (*(v9 + 32))(v16 + v15, v12, v8);
    *(v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
    aBlock[4] = sub_22DF1B668;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22DF1B35C;
    aBlock[3] = &block_descriptor_1;
    v18 = _Block_copy(aBlock);

    v19 = v20;
    [v25 handleEvent:v20 sender:v13 ruleConfig:v14 withReplyBlock:v18];
    _Block_release(v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22DF1B35C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_22DF1B3B0()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DF1B400(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22DEEFBD4;

  return v6(a1);
}

unint64_t sub_22DF1B520()
{
  v1 = *v0;
  sub_22DF63F24();

  MEMORY[0x2318DCA20](*(v1 + 112), *(v1 + 120));
  return 0xD000000000000016;
}

unint64_t sub_22DF1B590()
{
  result = qword_27DA475C0;
  if (!qword_27DA475C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA475C0);
  }

  return result;
}

unint64_t sub_22DF1B5DC(uint64_t a1, uint64_t a2)
{
  result = qword_27DA478A0;
  if (!qword_27DA478A0)
  {
    type metadata accessor for BackendLocal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA478A0);
  }

  return result;
}

uint64_t sub_22DF1B668(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA478A8, "r6");
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (qword_27DA4B158 != -1)
  {
    swift_once();
  }

  v5 = sub_22DF63734();
  __swift_project_value_buffer(v5, qword_27DA4E5F8);

  v6 = sub_22DF63714();
  v7 = sub_22DF63CE4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_22DEF0354(v4, v3, &v11);
    *(v8 + 12) = 1026;
    *(v8 + 14) = a1 & 1;
    _os_log_impl(&dword_22DEEA000, v6, v7, "TTR rule %{public}s processed event with status: %{BOOL,public}d", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2318DDBE0](v9, -1, -1);
    MEMORY[0x2318DDBE0](v8, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA478A8, "r6");
  return sub_22DF63C04();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22DF1B850()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E620);
  __swift_project_value_buffer(v0, qword_27DA4E620);
  return sub_22DF63724();
}

uint64_t sub_22DF1B8C8(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC19CloudTelemetryTools8Throttle_state) = 0;
  v3 = OBJC_IVAR____TtC19CloudTelemetryTools8Throttle_location;
  v4 = sub_22DF63444();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

id sub_22DF1B98C()
{
  v27[4] = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR____TtC19CloudTelemetryTools8Throttle_state;
  v2 = *(v0 + OBJC_IVAR____TtC19CloudTelemetryTools8Throttle_state);
  if (v2)
  {
    goto LABEL_3;
  }

  v11 = sub_22DF63464();
  v13 = v12;
  v14 = objc_opt_self();
  sub_22DEF7A88(v11, v13);
  v15 = sub_22DF634A4();
  sub_22DEF7A34(v11, v13);
  v27[0] = 0;
  v16 = [v14 propertyListWithData:v15 options:0 format:0 error:v27];

  if (v16)
  {
    v17 = v27[0];
    sub_22DF63E44();
    sub_22DEF7A34(v11, v13);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47638, &qword_22DF660F0);
    v18 = swift_dynamicCast();
    v19 = v26;
    if (!v18)
    {
      v19 = 0;
    }
  }

  else
  {
    v20 = v27[0];
    v21 = sub_22DF63334();

    swift_willThrow();
    sub_22DEF7A34(v11, v13);

    v19 = 0;
  }

  *(v0 + v1) = v19;

  v2 = *(v0 + v1);
  if (v2)
  {
LABEL_3:
    if (!*(v2 + 16))
    {
      goto LABEL_23;
    }

    v3 = sub_22DEF08FC(0xD000000000000011, 0x800000022DF6E7C0);
    if (v4)
    {
      sub_22DEF12A0(*(v2 + 56) + 32 * v3, v27);
      sub_22DF1C99C();
      if (swift_dynamicCast())
      {
        if (!*(v2 + 16) || (v5 = sub_22DEF08FC(0xD000000000000012, 0x800000022DF6E7E0), (v6 & 1) == 0) || (sub_22DEF12A0(*(v2 + 56) + 32 * v5, v27), (swift_dynamicCast() & 1) == 0))
        {

          goto LABEL_23;
        }

        if (*(v2 + 16))
        {
          v7 = sub_22DEF08FC(0x756F437972746572, 0xEC0000007265746ELL);
          if (v8)
          {
            sub_22DEF12A0(*(v2 + 56) + 32 * v7, v27);

            if (swift_dynamicCast())
            {
              v9 = v26;
              [v26 doubleValue];
              [v26 doubleValue];
              v10 = [v26 integerValue];

LABEL_28:
              return v10;
            }

LABEL_23:
            if (qword_27DA4B260 != -1)
            {
              swift_once();
            }

            v22 = sub_22DF63734();
            __swift_project_value_buffer(v22, qword_27DA4E620);
            v9 = sub_22DF63714();
            v23 = sub_22DF63D04();
            if (os_log_type_enabled(v9, v23))
            {
              v24 = swift_slowAlloc();
              *v24 = 0;
              _os_log_impl(&dword_22DEEA000, v9, v23, "failed to decode throttle state", v24, 2u);
              MEMORY[0x2318DDBE0](v24, -1, -1);
            }

            v10 = 0;
            goto LABEL_28;
          }
        }
      }
    }

    goto LABEL_23;
  }

  return 0;
}

void sub_22DF1BDEC(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v31 = *MEMORY[0x277D85DE8];
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v8 = sub_22DF1C99C();
  v30 = v8;
  *&v29 = v7;
  sub_22DEFFBF0(&v29, v28);
  v9 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22DF1CCA0(v28, 0xD000000000000011, 0x800000022DF6E7C0, isUniquelyReferenced_nonNull_native);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v30 = v8;
  *&v29 = v11;
  sub_22DEFFBF0(&v29, v28);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_22DF1CCA0(v28, 0xD000000000000012, 0x800000022DF6E7E0, v12);
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v30 = v8;
  *&v29 = v13;
  sub_22DEFFBF0(&v29, v28);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_22DF1CCA0(v28, 0x756F437972746572, 0xEC0000007265746ELL, v14);
  *(v4 + OBJC_IVAR____TtC19CloudTelemetryTools8Throttle_state) = v9;

  v15 = objc_opt_self();
  v16 = sub_22DF638C4();

  *&v29 = 0;
  v17 = [v15 dataWithPropertyList:v16 format:100 options:0 error:&v29];

  v18 = v29;
  if (v17)
  {
    v19 = sub_22DF634C4();
    v21 = v20;

    sub_22DF634D4();
    sub_22DEF7A34(v19, v21);
  }

  else
  {
    v22 = v18;
    v23 = sub_22DF63334();

    swift_willThrow();
    if (qword_27DA4B260 != -1)
    {
      swift_once();
    }

    v24 = sub_22DF63734();
    __swift_project_value_buffer(v24, qword_27DA4E620);
    v25 = sub_22DF63714();
    v26 = sub_22DF63D04();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22DEEA000, v25, v26, "failed to encode throttle", v27, 2u);
      MEMORY[0x2318DDBE0](v27, -1, -1);
    }
  }
}

uint64_t sub_22DF1C23C()
{
  *(v1 + 24) = v0;

  return MEMORY[0x2822009F8](sub_22DF1C2CC, v0, 0);
}

uint64_t sub_22DF1C2CC()
{
  *(v0[3] + OBJC_IVAR____TtC19CloudTelemetryTools8Throttle_state) = 0;

  v1 = [objc_opt_self() defaultManager];
  v2 = sub_22DF63394();
  v0[2] = 0;
  v3 = [v1 removeItemAtURL:v2 error:v0 + 2];

  v4 = v0[2];
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v6 = v4;
    v7 = sub_22DF63334();

    swift_willThrow();
    if (qword_27DA4B260 != -1)
    {
      swift_once();
    }

    v8 = sub_22DF63734();
    __swift_project_value_buffer(v8, qword_27DA4E620);
    v9 = sub_22DF63714();
    v10 = sub_22DF63D04();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22DEEA000, v9, v10, "failed to clear throttle", v11, 2u);
      MEMORY[0x2318DDBE0](v11, -1, -1);
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_22DF1C4C8()
{
  v1[2] = v0;
  v2 = sub_22DF63594();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF1C588, v0, 0);
}

uint64_t sub_22DF1C588()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_22DF1B98C();
  v5 = v4;
  v7 = v6;
  sub_22DF63554();
  sub_22DF63544();
  v9 = v8;
  (*(v2 + 8))(v1, v3);
  v10 = 1;
  if (v5 != 0.0)
  {
    v10 = v7 == 0.0 || v9 + 3600.0 < v5 || v5 + v7 < v9;
  }

  v12 = v0[1];

  return v12(v10);
}

uint64_t sub_22DF1C678()
{
  v1[2] = v0;
  v2 = sub_22DF63594();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF1C738, v0, 0);
}

uint64_t sub_22DF1C738()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_22DF1B98C();
  sub_22DF63554();
  sub_22DF63544();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  result = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v8 = 86400.0;
    if ((v4 ^ 2) <= 86400.0)
    {
      v8 = (v4 ^ 2);
    }

    sub_22DF1BDEC(result, v6, v8);

    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_22DF1C81C()
{
  v1 = OBJC_IVAR____TtC19CloudTelemetryTools8Throttle_location;
  v2 = sub_22DF63444();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for Throttle(uint64_t a1)
{
  result = qword_28150A820;
  if (!qword_28150A820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DF1C8F8(uint64_t a1)
{
  result = sub_22DF63444();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_22DF1C99C()
{
  result = qword_27DA47630;
  if (!qword_27DA47630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA47630);
  }

  return result;
}

uint64_t sub_22DF1C9E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA478B0, &unk_22DF676E0);
  v33 = v4;
  result = sub_22DF64034();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_22DEFFBF0(v24, v34);
      }

      else
      {
        sub_22DEF12A0(v24, v34);
      }

      sub_22DF642A4();
      sub_22DF63A54();
      result = sub_22DF642D4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_22DEFFBF0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void sub_22DF1CCA0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22DEF08FC(a2, a3);
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
      sub_22DF1CE5C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22DF1C9E8(v16, a4 & 1);
    v11 = sub_22DEF08FC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_22DF64234();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    sub_22DEFFBF0(a1, v22);
  }

  else
  {
    sub_22DF1CDF0(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_22DF1CDF0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22DEFFBF0(a4, (a5[7] + 32 * a1));
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

void sub_22DF1CE5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA478B0, &unk_22DF676E0);
  v2 = *v0;
  v3 = sub_22DF64024();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_22DEF12A0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22DEFFBF0(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

uint64_t sub_22DF1D014@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_22DF1DD94(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

unint64_t sub_22DF1D044(char a1)
{
  result = 0x79745F746E657665;
  switch(a1)
  {
    case 1:
      result = 0x6C72755F74736F70;
      break;
    case 2:
      result = 0x676E696C706D6173;
      break;
    case 3:
    case 12:
    case 16:
      result = 0xD000000000000012;
      break;
    case 4:
    case 20:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x5F64656C62616E65;
      break;
    case 9:
      result = 0x6C625F746E657665;
      break;
    case 10:
      result = 0x68775F746E657665;
      break;
    case 11:
      result = 0x68745F746E657665;
      break;
    case 13:
      result = 0x737265746C6966;
      break;
    case 14:
      result = 0x635F646568736168;
      break;
    case 15:
      result = 0x6863726172656968;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 0x656469727265766FLL;
      break;
    case 19:
      result = 0x746C6165725F7369;
      break;
    case 21:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22DF1D2C4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_22DF1D044(*a1);
  v5 = v4;
  if (v3 == sub_22DF1D044(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22DF64184();
  }

  return v8 & 1;
}

uint64_t sub_22DF1D34C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000736570;
  v3 = a1;
  v4 = 0x737265746C6966;
  if (a1 != 2)
  {
    v4 = 0x73747069726373;
  }

  v5 = 0xD000000000000012;
  v6 = 0x800000022DF6E850;
  if (!a1)
  {
    v5 = 0x79745F746E657665;
    v6 = 0xEB00000000736570;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v3 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (a2 > 1u)
  {
    v10 = a2 == 2;
    v2 = 0xE700000000000000;
    v9 = 0xE700000000000000;
    if (a2 == 2)
    {
      v11 = 0x737265746C6966;
    }

    else
    {
      v11 = 0x73747069726373;
    }
  }

  else
  {
    v9 = 0x800000022DF6E850;
    v10 = a2 == 0;
    if (a2)
    {
      v11 = 0xD000000000000012;
    }

    else
    {
      v11 = 0x79745F746E657665;
    }
  }

  if (v10)
  {
    v12 = v2;
  }

  else
  {
    v12 = v9;
  }

  if (v7 == v11 && v8 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_22DF64184();
  }

  return v13 & 1;
}

uint64_t sub_22DF1D48C()
{
  v1 = *v0;
  sub_22DF642A4();
  sub_22DF1D044(v1);
  sub_22DF63A54();

  return sub_22DF642D4();
}

uint64_t sub_22DF1D4F0(uint64_t a1)
{
  sub_22DF1D044(*v1);
  sub_22DF63A54();
}

uint64_t sub_22DF1D544(uint64_t a1)
{
  v2 = *v1;
  sub_22DF642A4();
  sub_22DF1D044(v2);
  sub_22DF63A54();

  return sub_22DF642D4();
}

unint64_t sub_22DF1D5A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22DF1DF50(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22DF1D5D4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22DF1D044(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22DF1D608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22DF1DF50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22DF1D63C(uint64_t a1)
{
  v2 = sub_22DF1F9B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF1D678(uint64_t a1)
{
  v2 = sub_22DF1F9B8();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_22DF1D6B4@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_22DF1DFA4(a2, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a1 + 160) = v10[10];
    *(a1 + 176) = v5;
    *(a1 + 192) = v10[12];
    v6 = v10[7];
    *(a1 + 96) = v10[6];
    *(a1 + 112) = v6;
    v7 = v10[9];
    *(a1 + 128) = v10[8];
    *(a1 + 144) = v7;
    v8 = v10[3];
    *(a1 + 32) = v10[2];
    *(a1 + 48) = v8;
    v9 = v10[5];
    *(a1 + 64) = v10[4];
    *(a1 + 80) = v9;
    result = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_22DF1D720()
{
  if (*v0)
  {
    return 0x6C6F687365726874;
  }

  else
  {
    return 0x7972746E756F63;
  }
}

uint64_t sub_22DF1D760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_22DF64184() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22DF64184();

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

uint64_t sub_22DF1D850(uint64_t a1)
{
  v2 = sub_22DF1FA60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF1D88C(uint64_t a1)
{
  v2 = sub_22DF1FA60();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22DF1D8C8(uint64_t *a1@<X8>, void *a2@<X0>)
{
  v5 = sub_22DF1ECFC(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
  }
}

uint64_t sub_22DF1D904()
{
  sub_22DF642A4();
  sub_22DF63A54();

  return sub_22DF642D4();
}

uint64_t sub_22DF1D9D4(uint64_t a1)
{
  sub_22DF63A54();
}

uint64_t sub_22DF1DA90(uint64_t a1)
{
  sub_22DF642A4();
  sub_22DF63A54();

  return sub_22DF642D4();
}

unint64_t sub_22DF1DB5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22DF1EEFC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22DF1DB8C(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000736570;
  v3 = 0x79745F746E657665;
  v4 = 0x737265746C6966;
  if (*v1 != 2)
  {
    v4 = 0x73747069726373;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x800000022DF6E850;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_22DF1DC18()
{
  v1 = 0x79745F746E657665;
  v2 = 0x737265746C6966;
  if (*v0 != 2)
  {
    v2 = 0x73747069726373;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

unint64_t sub_22DF1DCA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22DF1EEFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22DF1DCC8(uint64_t a1)
{
  v2 = sub_22DF1F964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF1DD04(uint64_t a1)
{
  v2 = sub_22DF1F964();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_22DF1DD40@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_22DF1EF48(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_22DF1DD94(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF642F4();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v4 = sub_22DF641A4();
    if (!v4)
    {
      v3 = 1;
      goto LABEL_10;
    }

    if (v4 == 1)
    {
      v3 = 0;
LABEL_10:
      __swift_destroy_boxed_opaque_existential_0(v9);
      __swift_destroy_boxed_opaque_existential_0(a1);
      return v3;
    }

    v6 = sub_22DF63F74();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47968, &qword_22DF67D38);
    *v8 = &type metadata for StorebagBool;
    v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22DF642E4();
    sub_22DF63F64();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

unint64_t sub_22DF1DF50(uint64_t a1, uint64_t a2)
{
  v2 = sub_22DF64204();

  if (v2 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22DF1DFA4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47930, &qword_22DF67D20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - v7;
  v9 = a1[3];
  v151 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_22DF1F9B8();
  sub_22DF64304();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v151);
  }

  v10 = v6;
  v80 = a2;
  LOBYTE(v94) = 0;
  v12 = sub_22DF640C4();
  v78 = v13;
  LOBYTE(v94) = 1;
  v14 = sub_22DF640C4();
  v76 = v15;
  v77 = 0;
  v66 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47670, &qword_22DF67510);
  LOBYTE(v81) = 2;
  v17 = v16;
  v18 = sub_22DF1FB08(&qword_27DA47700, &qword_27DA47670, &qword_22DF67510);
  sub_22DF64094();
  v65 = v17;
  v75 = v94;
  LOBYTE(v94) = 3;
  v64 = sub_22DF64084();
  v150 = v19 & 1;
  LOBYTE(v94) = 4;
  v20 = sub_22DF640B4();
  v79 = 0;
  v62 = v20;
  v63 = v18;
  v148 = v21 & 1;
  LOBYTE(v81) = 5;
  v27 = sub_22DF1FAB4();
  v28 = v79;
  sub_22DF64094();
  if (v28)
  {
    v79 = v28;
    (*(v10 + 8))(v8, v5);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v61 = v27;
    v60 = v94;
    LOBYTE(v81) = 6;
    sub_22DF64094();
    v74 = v94;
    LOBYTE(v81) = 7;
    sub_22DF64094();
    v73 = v94;
    LOBYTE(v94) = 8;
    v29 = sub_22DF64074();
    v79 = 0;
    v30 = v29;
    v72 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47940, &qword_22DF67D28);
    LOBYTE(v81) = 9;
    sub_22DF1FB08(&qword_27DA47948, &qword_27DA47940, &qword_22DF67D28);
    v32 = v79;
    sub_22DF64094();
    v79 = v32;
    if (v32)
    {
      (*(v10 + 8))(v8, v5);
      v25 = 0;
      v26 = 0;
      v22 = 1;
      v23 = 1;
      v24 = 1;
    }

    else
    {
      v71 = v94;
      LOBYTE(v81) = 10;
      sub_22DF64094();
      v79 = 0;
      v70 = v94;
      LOBYTE(v94) = 11;
      v59 = sub_22DF640B4();
      v79 = 0;
      v145 = v33 & 1;
      LOBYTE(v81) = 12;
      sub_22DF64094();
      v79 = 0;
      v58 = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47908, &qword_22DF67D08);
      LOBYTE(v81) = 13;
      sub_22DF1FA0C(&qword_27DA47910, &qword_27DA47908, &qword_22DF67D08);
      v34 = v79;
      sub_22DF640E4();
      v79 = v34;
      if (!v34)
      {
        v68 = v95;
        v69 = v94;
        v142 = v96;
        LOBYTE(v94) = 14;
        v35 = sub_22DF64074();
        v67 = v36;
        v79 = 0;
        v37 = v35;
        LOBYTE(v81) = 15;
        sub_22DF64094();
        v79 = 0;
        v57 = v94;
        LOBYTE(v81) = 16;
        sub_22DF64094();
        v79 = 0;
        v56 = v94;
        LOBYTE(v81) = 17;
        sub_22DF64094();
        v79 = 0;
        v77 = v94;
        LOBYTE(v81) = 18;
        sub_22DF64094();
        v79 = 0;
        LODWORD(v65) = v94;
        LOBYTE(v81) = 19;
        sub_22DF64094();
        v79 = 0;
        LODWORD(v63) = v94;
        LOBYTE(v81) = 20;
        sub_22DF64094();
        v79 = 0;
        LODWORD(v61) = v94;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47950, &qword_22DF67D30);
        v135 = 21;
        sub_22DF1FB70();
        v38 = v79;
        sub_22DF64094();
        v79 = v38;
        (*(v10 + 8))(v8, v5);
        if (v38)
        {
          __swift_destroy_boxed_opaque_existential_0(v151);

          sub_22DF144D4(v69, v68, v142);
        }

        else
        {
          v52 = v136;
          *&v81 = v12;
          *(&v81 + 1) = v78;
          *&v82 = v75;
          *(&v82 + 1) = v66;
          *&v83 = v76;
          *(&v83 + 1) = v64;
          v55 = v150;
          LOBYTE(v84) = v150;
          *(&v84 + 1) = *v149;
          DWORD1(v84) = *&v149[3];
          *(&v84 + 1) = v62;
          v54 = v148;
          LOBYTE(v85) = v148;
          BYTE1(v85) = v60;
          WORD3(v85) = v147;
          *(&v85 + 2) = v146;
          *(&v85 + 1) = v74;
          *&v86 = v73;
          v53 = v30;
          *(&v86 + 1) = v30;
          *&v87 = v72;
          *(&v87 + 1) = v71;
          *&v88 = v70;
          *(&v88 + 1) = v59;
          *(&v89 + 2) = v143;
          HIDWORD(v90) = *&v141[3];
          *(&v90 + 9) = *v141;
          *(&v92 + 2) = v139;
          *(&v93 + 3) = v137;
          HIDWORD(v51) = v145;
          LOBYTE(v89) = v145;
          v40 = v57;
          v39 = v58;
          BYTE1(v89) = v58;
          WORD3(v89) = v144;
          *(&v89 + 1) = v69;
          *&v90 = v68;
          WORD3(v92) = v140;
          BYTE7(v93) = v138;
          v41 = v142;
          BYTE8(v90) = v142;
          v42 = v67;
          *&v91 = v37;
          *(&v91 + 1) = v67;
          LOBYTE(v92) = v57;
          v43 = v56;
          BYTE1(v92) = v56;
          *(&v92 + 1) = v77;
          LOBYTE(v93) = v65;
          BYTE1(v93) = v63;
          BYTE2(v93) = v61;
          *(&v93 + 1) = v136;
          sub_22DF13844(&v81, &v94);
          __swift_destroy_boxed_opaque_existential_0(v151);
          v94 = v12;
          v95 = v78;
          v96 = v75;
          v97 = v66;
          v98 = v76;
          v99 = v64;
          v100 = v55;
          *v101 = *v149;
          *&v101[3] = *&v149[3];
          v102 = v62;
          v103 = v54;
          v104 = v60;
          v105 = v146;
          v106 = v147;
          v107 = v74;
          v108 = v73;
          v109 = v53;
          v110 = v72;
          v111 = v71;
          v112 = v70;
          v113 = v59;
          v114 = BYTE4(v51);
          v115 = v39;
          v116 = v143;
          v117 = v144;
          v118 = v69;
          v119 = v68;
          v120 = v41;
          *v121 = *v141;
          *&v121[3] = *&v141[3];
          v122 = v37;
          v123 = v42;
          v124 = v40;
          v125 = v43;
          v127 = v140;
          v126 = v139;
          v128 = v77;
          v129 = v65;
          v130 = v63;
          v131 = v61;
          v133 = v138;
          v132 = v137;
          v134 = v52;
          result = sub_22DF138A0(&v94);
          v44 = v92;
          v45 = v80;
          v80[10] = v91;
          v45[11] = v44;
          v45[12] = v93;
          v46 = v88;
          v45[6] = v87;
          v45[7] = v46;
          v47 = v90;
          v45[8] = v89;
          v45[9] = v47;
          v48 = v84;
          v45[2] = v83;
          v45[3] = v48;
          v49 = v86;
          v45[4] = v85;
          v45[5] = v49;
          v50 = v82;
          *v45 = v81;
          v45[1] = v50;
        }

        return result;
      }

      (*(v10 + 8))(v8, v5);
      v22 = 1;
      v23 = 1;
      v24 = 1;
      v25 = 1;
      v26 = 1;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v151);

  if (v77)
  {
    if (v22)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v22)
    {
LABEL_7:

      if ((v23 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  if (!v23)
  {
LABEL_8:
    if (v24)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:

  if (v24)
  {
LABEL_9:

    if ((v25 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:

    if (v26)
    {
    }

    return result;
  }

LABEL_15:
  if (v25)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v26)
  {
  }

  return result;
}

double sub_22DF1ECFC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47928, &qword_22DF67D18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF1FA60();
  sub_22DF64304();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47670, &qword_22DF67510);
    v10[15] = 0;
    sub_22DF1FB08(&qword_27DA47700, &qword_27DA47670, &qword_22DF67510);
    sub_22DF640E4();
    v10[14] = 1;
    sub_22DF640D4();
    v2 = v9;
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

unint64_t sub_22DF1EEFC(uint64_t a1, uint64_t a2)
{
  v2 = sub_22DF64064();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22DF1EF48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47900, &unk_22DF67CF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF1F964();
  sub_22DF64304();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47670, &qword_22DF67510);
  v29 = 0;
  sub_22DF1FB08(&qword_27DA47700, &qword_27DA47670, &qword_22DF67510);
  sub_22DF640E4();
  v9 = v25;
  LOBYTE(v25) = 1;
  v10 = sub_22DF64084();
  v21 = v11;
  v22 = v10;
  v23 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47908, &qword_22DF67D08);
  v29 = 2;
  sub_22DF1FA0C(&qword_27DA47910, &qword_27DA47908, &qword_22DF67D08);
  sub_22DF64094();
  v18 = v25;
  v19 = v26;
  v20 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47918, &qword_22DF67D10);
  v29 = 3;
  sub_22DF1FA0C(&qword_27DA47920, &qword_27DA47918, &qword_22DF67D10);
  sub_22DF640E4();
  (*(v6 + 8))(v8, v5);
  v12 = v25;
  v13 = v26;
  v28 = v21 & 1;
  v24 = v27;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v15 = v22;
  *a2 = v23;
  *(a2 + 8) = v15;
  *(a2 + 16) = v28;
  v16 = v19;
  *(a2 + 24) = v18;
  *(a2 + 32) = v16;
  *(a2 + 40) = v20;
  *(a2 + 48) = v12;
  *(a2 + 56) = v13;
  *(a2 + 64) = v24;
  return result;
}

unint64_t sub_22DF1F2FC()
{
  result = qword_27DA478B8;
  if (!qword_27DA478B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA478B8);
  }

  return result;
}

unint64_t sub_22DF1F354()
{
  result = qword_27DA478C0;
  if (!qword_27DA478C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA478C0);
  }

  return result;
}

unint64_t sub_22DF1F3AC()
{
  result = qword_27DA478C8;
  if (!qword_27DA478C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA478C8);
  }

  return result;
}

unint64_t sub_22DF1F404()
{
  result = qword_27DA478D0;
  if (!qword_27DA478D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA478D0);
  }

  return result;
}

unint64_t sub_22DF1F45C()
{
  result = qword_27DA478D8;
  if (!qword_27DA478D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA478D8);
  }

  return result;
}

unint64_t sub_22DF1F4B4()
{
  result = qword_27DA478E0;
  if (!qword_27DA478E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA478E0);
  }

  return result;
}

unint64_t sub_22DF1F50C()
{
  result = qword_27DA478E8;
  if (!qword_27DA478E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA478E8);
  }

  return result;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_22DF1F5C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_22DF1F608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorebagSectionClientHTTP.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorebagSectionClientHTTP.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22DF1F7DC(uint64_t *a1, int a2)
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

uint64_t sub_22DF1F824(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_19CloudTelemetryTools26StorebagSectionMaybeSharedOySayAA0dE6FilterVGGSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
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

uint64_t sub_22DF1F8A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_22DF1F8F0(uint64_t result, int a2, int a3)
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
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22DF1F964()
{
  result = qword_27DA478F0;
  if (!qword_27DA478F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA478F0);
  }

  return result;
}

unint64_t sub_22DF1F9B8()
{
  result = qword_27DA478F8;
  if (!qword_27DA478F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA478F8);
  }

  return result;
}

uint64_t sub_22DF1FA0C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_22DF1FA60()
{
  result = qword_27DA4BC00[0];
  if (!qword_27DA4BC00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4BC00);
  }

  return result;
}

unint64_t sub_22DF1FAB4()
{
  result = qword_27DA47938;
  if (!qword_27DA47938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47938);
  }

  return result;
}

uint64_t sub_22DF1FB08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_22DF1FB70()
{
  result = qword_27DA47958;
  if (!qword_27DA47958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA47950, &qword_22DF67D30);
    sub_22DF1FBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47958);
  }

  return result;
}

unint64_t sub_22DF1FBF4()
{
  result = qword_27DA47960;
  if (!qword_27DA47960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47960);
  }

  return result;
}

unint64_t sub_22DF1FC5C()
{
  result = qword_27DA4BD10[0];
  if (!qword_27DA4BD10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4BD10);
  }

  return result;
}

unint64_t sub_22DF1FCB4()
{
  result = qword_27DA4BE20;
  if (!qword_27DA4BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA4BE20);
  }

  return result;
}

unint64_t sub_22DF1FD0C()
{
  result = qword_27DA4BE28[0];
  if (!qword_27DA4BE28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4BE28);
  }

  return result;
}

uint64_t sub_22DF1FD7C()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E638);
  __swift_project_value_buffer(v0, qword_27DA4E638);
  return sub_22DF63724();
}

uint64_t sub_22DF1FE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  return MEMORY[0x2822009F8](sub_22DF1FE24, v3, 0);
}

uint64_t sub_22DF1FE24()
{
  v6 = (*(**(v0[18] + 112) + 232) + **(**(v0[18] + 112) + 232));
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_22DF1FF4C;
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];

  return v6(v0 + 2, v4, v2, v3);
}

uint64_t sub_22DF1FF4C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v10 = (*(**(v2 + 144) + 128) + **(**(v2 + 144) + 128));
    v6 = swift_task_alloc();
    *(v2 + 160) = v6;
    *v6 = v3;
    v6[1] = sub_22DF2014C;
    v7 = *(v2 + 136);
    v8 = *(v2 + 120);
    v9 = *(v2 + 128);

    return v10(v2 + 16, v8, v9, v7);
  }
}

uint64_t sub_22DF2014C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[21] = v2;

  v7 = v6[18];
  if (v2)
  {
    v8 = sub_22DF2033C;
  }

  else
  {
    v6[22] = a2;
    v6[23] = a1;
    v8 = sub_22DF2028C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22DF2028C()
{
  *(v0 + 104) = *(v0 + 16);
  sub_22DEF1364(v0 + 104, &qword_27DA47970, qword_22DF67E58);
  *(v0 + 112) = *(v0 + 24);
  sub_22DEF1364(v0 + 112, &qword_27DA47970, qword_22DF67E58);
  *(v0 + 72) = *(v0 + 40);
  sub_22DF13A04(v0 + 72);
  v1 = *(v0 + 8);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1(v2, v3);
}

uint64_t sub_22DF2033C()
{
  *(v0 + 88) = *(v0 + 16);
  sub_22DEF1364(v0 + 88, &qword_27DA47970, qword_22DF67E58);
  *(v0 + 96) = *(v0 + 24);
  sub_22DEF1364(v0 + 96, &qword_27DA47970, qword_22DF67E58);
  *(v0 + 56) = *(v0 + 40);
  sub_22DF13A04(v0 + 56);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF203E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v5[31] = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF204B8, v4, 0);
}

uint64_t sub_22DF204B8()
{
  v1 = *(v0 + 208);
  v2 = *v1;
  *(v0 + 272) = *v1;
  v3 = *(v2 + 16);
  *(v0 + 280) = v3;
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = *(v0 + 264);
      v6 = *(v0 + 240);
      v5 = *(v0 + 248);
      v8 = *(v0 + 224);
      v7 = *(v0 + 232);
      v9 = *(v0 + 216);
      *(v0 + 192) = v8;
      *(v0 + 200) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 168));
      (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
      sub_22DF23058(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4, type metadata accessor for SessionConfiguration.Backend);
      (*(v7 + 8))(v8, v7);
      v25 = (*(*v6 + 152) + **(*v6 + 152));
      v11 = swift_task_alloc();
      *(v0 + 288) = v11;
      *v11 = v0;
      v11[1] = sub_22DF20888;
      v12 = v0 + 72;
    }

    else
    {
      v15 = *(v0 + 248);
      v16 = sub_22DF22F24(0, v3, 0, MEMORY[0x277D84F90]);
      v17 = *(v15 + 80);
      *(v0 + 376) = v17;
      v18 = *(v15 + 72);
      *(v0 + 328) = v16;
      *(v0 + 336) = 0;
      *(v0 + 320) = v18;
      v19 = *(v0 + 232);
      v20 = *(v0 + 240);
      v21 = *(v0 + 216);
      v22 = *(v0 + 224);
      sub_22DF23058(*(v0 + 272) + ((v17 + 32) & ~v17), *(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
      *(v0 + 152) = v22;
      *(v0 + 160) = v19;
      v23 = __swift_allocate_boxed_opaque_existential_1((v0 + 128));
      (*(*(v22 - 8) + 16))(v23, v21, v22);
      (*(v19 + 8))(v22, v19);
      v25 = (*(*v20 + 152) + **(*v20 + 152));
      v24 = swift_task_alloc();
      *(v0 + 344) = v24;
      *v24 = v0;
      v24[1] = sub_22DF20AD0;
      v12 = v0 + 16;
    }

    return v25(v12);
  }

  else
  {

    v13 = *(v0 + 8);

    return v13(0, 0);
  }
}

uint64_t sub_22DF20888(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 296) = v2;

  if (v2)
  {
    v7 = v6[30];
    sub_22DF09508(v6[33], type metadata accessor for SessionConfiguration.Backend);
    sub_22DEF0FA8((v6 + 9));
    v8 = sub_22DF20F48;
  }

  else
  {
    v7 = v6[30];
    v6[38] = a2;
    v6[39] = a1;
    sub_22DEF0FA8((v6 + 9));
    v8 = sub_22DF209E4;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22DF209E4()
{
  v1 = *(v0 + 264);
  v2 = (*(**(v0 + 240) + 144))(v0 + 168, v1, *(v0 + 312), *(v0 + 304));
  v4 = v3;

  sub_22DF09508(v1, type metadata accessor for SessionConfiguration.Backend);
  __swift_destroy_boxed_opaque_existential_0((v0 + 168));

  v5 = *(v0 + 8);

  return v5(v2, v4);
}

uint64_t sub_22DF20AD0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 352) = v2;

  if (v2)
  {
    v7 = v6[30];
    sub_22DEF0FA8((v6 + 2));

    v8 = sub_22DF20FBC;
    v9 = v7;
  }

  else
  {
    v10 = v6[30];
    v6[45] = a2;
    v6[46] = a1;
    sub_22DEF0FA8((v6 + 2));
    v8 = sub_22DF20C34;
    v9 = v10;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_22DF20C34()
{
  v1 = *(v0 + 328);
  v2 = (*(**(v0 + 240) + 144))(v0 + 128, *(v0 + 256), *(v0 + 368), *(v0 + 360));
  v4 = v3;

  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v0 + 328);
  if (v6 >= v5 >> 1)
  {
    v7 = sub_22DF22F24((v5 > 1), v6 + 1, 1, *(v0 + 328));
  }

  v8 = *(v0 + 280);
  v9 = *(v0 + 336) + 1;
  sub_22DF09508(*(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
  v7[2] = v6 + 1;
  v10 = &v7[2 * v6];
  v10[4] = v2;
  v10[5] = v4;
  if (v9 == v8)
  {
    type metadata accessor for BackendGroup();
    v11 = sub_22DF27764(v7);

    v12 = *(v0 + 8);

    return v12(v11, &off_284194AF0);
  }

  else
  {
    v14 = *(v0 + 336) + 1;
    *(v0 + 328) = v7;
    *(v0 + 336) = v14;
    v15 = *(v0 + 232);
    v16 = *(v0 + 240);
    v17 = *(v0 + 216);
    v18 = *(v0 + 224);
    sub_22DF23058(*(v0 + 272) + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v0 + 320) * v14, *(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
    *(v0 + 152) = v18;
    *(v0 + 160) = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 128));
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v17, v18);
    (*(v15 + 8))(v18, v15);
    v21 = (*(*v16 + 152) + **(*v16 + 152));
    v20 = swift_task_alloc();
    *(v0 + 344) = v20;
    *v20 = v0;
    v20[1] = sub_22DF20AD0;

    return v21(v0 + 16);
  }
}

uint64_t sub_22DF20F48()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 168));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF20FBC()
{
  sub_22DF09508(v0[32], type metadata accessor for SessionConfiguration.Backend);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22DF2104C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v5[31] = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF2111C, v4, 0);
}

uint64_t sub_22DF2111C()
{
  v1 = *(v0 + 208);
  v2 = v1[1];
  *(v0 + 272) = v2;
  v3 = *(v2 + 16);
  *(v0 + 280) = v3;
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = *(v0 + 264);
      v6 = *(v0 + 240);
      v5 = *(v0 + 248);
      v8 = *(v0 + 224);
      v7 = *(v0 + 232);
      v9 = *(v0 + 216);
      *(v0 + 192) = v8;
      *(v0 + 200) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 168));
      (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
      sub_22DF23058(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4, type metadata accessor for SessionConfiguration.Backend);
      (*(v7 + 8))(v8, v7);
      v25 = (*(*v6 + 152) + **(*v6 + 152));
      v11 = swift_task_alloc();
      *(v0 + 288) = v11;
      *v11 = v0;
      v11[1] = sub_22DF214F4;
      v12 = v0 + 72;
    }

    else
    {
      v15 = *(v0 + 248);
      v16 = sub_22DF22F24(0, *(*v1 + 16), 0, MEMORY[0x277D84F90]);
      v17 = *(v15 + 80);
      *(v0 + 376) = v17;
      v18 = *(v15 + 72);
      *(v0 + 328) = v16;
      *(v0 + 336) = 0;
      *(v0 + 320) = v18;
      v19 = *(v0 + 232);
      v20 = *(v0 + 240);
      v21 = *(v0 + 216);
      v22 = *(v0 + 224);
      sub_22DF23058(*(v0 + 272) + ((v17 + 32) & ~v17), *(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
      *(v0 + 152) = v22;
      *(v0 + 160) = v19;
      v23 = __swift_allocate_boxed_opaque_existential_1((v0 + 128));
      (*(*(v22 - 8) + 16))(v23, v21, v22);
      (*(v19 + 8))(v22, v19);
      v25 = (*(*v20 + 152) + **(*v20 + 152));
      v24 = swift_task_alloc();
      *(v0 + 344) = v24;
      *v24 = v0;
      v24[1] = sub_22DF21650;
      v12 = v0 + 16;
    }

    return v25(v12);
  }

  else
  {

    v13 = *(v0 + 8);

    return v13(0, 0);
  }
}

uint64_t sub_22DF214F4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 296) = v2;

  if (v2)
  {
    v7 = v6[30];
    sub_22DF09508(v6[33], type metadata accessor for SessionConfiguration.Backend);
    sub_22DEF0FA8((v6 + 9));
    v8 = sub_22DF23140;
  }

  else
  {
    v7 = v6[30];
    v6[38] = a2;
    v6[39] = a1;
    sub_22DEF0FA8((v6 + 9));
    v8 = sub_22DF23138;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22DF21650(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 352) = v2;

  if (v2)
  {
    v7 = v6[30];
    sub_22DEF0FA8((v6 + 2));

    v8 = sub_22DF2313C;
    v9 = v7;
  }

  else
  {
    v10 = v6[30];
    v6[45] = a2;
    v6[46] = a1;
    sub_22DEF0FA8((v6 + 2));
    v8 = sub_22DF217B4;
    v9 = v10;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_22DF217B4()
{
  v1 = *(v0 + 328);
  v2 = (*(**(v0 + 240) + 144))(v0 + 128, *(v0 + 256), *(v0 + 368), *(v0 + 360));
  v4 = v3;

  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v0 + 328);
  if (v6 >= v5 >> 1)
  {
    v7 = sub_22DF22F24((v5 > 1), v6 + 1, 1, *(v0 + 328));
  }

  v8 = *(v0 + 280);
  v9 = *(v0 + 336) + 1;
  sub_22DF09508(*(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
  v7[2] = v6 + 1;
  v10 = &v7[2 * v6];
  v10[4] = v2;
  v10[5] = v4;
  if (v9 == v8)
  {
    type metadata accessor for BackendGroup();
    v11 = sub_22DF27764(v7);

    v12 = *(v0 + 8);

    return v12(v11, &off_284194AF0);
  }

  else
  {
    v14 = *(v0 + 336) + 1;
    *(v0 + 328) = v7;
    *(v0 + 336) = v14;
    v15 = *(v0 + 232);
    v16 = *(v0 + 240);
    v17 = *(v0 + 216);
    v18 = *(v0 + 224);
    sub_22DF23058(*(v0 + 272) + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v0 + 320) * v14, *(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
    *(v0 + 152) = v18;
    *(v0 + 160) = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 128));
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v17, v18);
    (*(v15 + 8))(v18, v15);
    v21 = (*(*v16 + 152) + **(*v16 + 152));
    v20 = swift_task_alloc();
    *(v0 + 344) = v20;
    *v20 = v0;
    v20[1] = sub_22DF21650;

    return v21(v0 + 16);
  }
}

uint64_t sub_22DF21AC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v15 = type metadata accessor for SessionConfiguration.Backend(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DF23058(a2, v17, type metadata accessor for SessionConfiguration.Backend);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *(v17 + 1);
    v19 = *(v17 + 2);
    type metadata accessor for BackendLocal();
    sub_22DEF2388(a1, v39);
    return sub_22DF194E8(v18, v19, v39);
  }

  else
  {
    sub_22DF094A4(v17, v14);
    v37 = type metadata accessor for BackendHTTP(0);
    v35 = *(v4 + 128);
    sub_22DEF2388(a1, v38);
    v36 = type metadata accessor for SessionConfiguration.BackendHTTP;
    sub_22DF23058(v14, v12, type metadata accessor for SessionConfiguration.BackendHTTP);

    RequestOptions.globalRequestOptions.unsafeMutableAddressor();
    swift_beginAccess();
    v34 = a3;
    v21 = a1[3];
    v22 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v21);
    v23 = *(v22 + 8);

    v33 = a4;
    v24 = v4;
    v23(v39, v21, v22);
    v25 = v40;
    v26 = v41;
    v27 = v42;
    v28 = v43;

    sub_22DEF0FA8(v39);
    if (v26)
    {
      v29 = 256;
    }

    else
    {
      v29 = 0;
    }

    v30 = sub_22DF5A7E4(v29 | v25, v27, v28);

    v31 = sub_22DF14570(v35, v38, v24, v12, v34, v33, v30);
    sub_22DF09508(v14, v36);
    return v31;
  }
}

uint64_t sub_22DF21DB0(uint64_t a1)
{
  v2[30] = a1;
  v2[31] = v1;
  v3 = sub_22DF63604();
  v2[32] = v3;
  v2[33] = *(v3 - 8);
  v2[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47680, &qword_22DF661D0);
  v2[35] = swift_task_alloc();
  v4 = sub_22DF63594();
  v2[36] = v4;
  v2[37] = *(v4 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF21F28, v1, 0);
}

uint64_t sub_22DF21F28()
{
  v3 = (*(**(*(v0 + 248) + 112) + 264) + **(**(*(v0 + 248) + 112) + 264));
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_22DF22048;

  return v3();
}

uint64_t sub_22DF22048()
{
  v1 = *(*v0 + 248);

  return MEMORY[0x2822009F8](sub_22DF22158, v1, 0);
}

uint64_t sub_22DF22158()
{
  v0[43] = *(v0[31] + 120);
  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = sub_22DF22200;
  v2 = v0[35];
  v3 = v0[30];

  return sub_22DF02F58(v2, v3);
}

uint64_t sub_22DF22200()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 248);
  if (v0)
  {
    v4 = sub_22DF22D28;
  }

  else
  {
    v4 = sub_22DF2232C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22DF2232C()
{
  v53 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47698, &qword_22DF663E0);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  v5 = (v1 + 8);
  v6 = *(v0 + 288);
  if (v4 == 1)
  {
    v7 = *(v0 + 320);
    v9 = *(v0 + 264);
    v8 = *(v0 + 272);
    v10 = *(v0 + 256);
    sub_22DEF1364(v2, &qword_27DA47680, &qword_22DF661D0);
    sub_22DF635F4();
    v11 = sub_22DF635A4();
    v13 = v12;
    *(v0 + 416) = v11;
    *(v0 + 424) = v12;
    (*(v9 + 8))(v8, v10);

    sub_22DF63554();
    sub_22DF63504();
    v14 = *v5;
    *(v0 + 432) = *v5;
    *(v0 + 440) = v5 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v7, v6);
    v15 = swift_task_alloc();
    *(v0 + 448) = v15;
    *v15 = v0;
    v15[1] = sub_22DF22B00;
    v16 = *(v0 + 304);
    v17 = *(v0 + 240);
    v18 = v11;
    v19 = v13;
LABEL_12:

    return sub_22DF03240(v17, v18, v19, v16);
  }

  v20 = *(v0 + 320);
  v22 = *v2;
  v21 = *(v2 + 1);
  (*(v1 + 32))(*(v0 + 328), &v2[*(v3 + 48)], *(v0 + 288));
  sub_22DF63554();
  v23 = sub_22DF63524();
  v24 = *(v1 + 8);
  *(v0 + 368) = v24;
  *(v0 + 376) = v5 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v20, v6);
  if ((v23 & 1) == 0)
  {

    if (qword_27DA4BEB0 != -1)
    {
      swift_once();
    }

    v51 = v24;
    v27 = *(v0 + 240);
    v28 = sub_22DF63734();
    __swift_project_value_buffer(v28, qword_27DA4E638);
    sub_22DEF0F4C(v27, v0 + 16);
    v29 = sub_22DF63714();
    v30 = sub_22DF63D24();
    sub_22DEF0FA8(v27);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 240);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v52 = v33;
      *v32 = 136446210;
      v35 = *(v31 + 16);
      v34 = *(v31 + 32);
      v36 = *v31;
      *(v0 + 176) = *(v31 + 48);
      *(v0 + 144) = v35;
      *(v0 + 160) = v34;
      *(v0 + 128) = v36;
      sub_22DEF0F4C(v31, v0 + 184);
      sub_22DF230C0();
      v37 = sub_22DF64154();
      v39 = v38;
      v40 = *(v0 + 144);
      *(v0 + 72) = *(v0 + 128);
      *(v0 + 88) = v40;
      *(v0 + 104) = *(v0 + 160);
      *(v0 + 120) = *(v0 + 176);
      sub_22DEF0FA8(v0 + 72);
      v41 = sub_22DEF0354(v37, v39, &v52);

      *(v32 + 4) = v41;
      _os_log_impl(&dword_22DEEA000, v29, v30, "CID expired for %{public}s, refreshing", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x2318DDBE0](v33, -1, -1);
      MEMORY[0x2318DDBE0](v32, -1, -1);
    }

    v42 = *(v0 + 320);
    v43 = *(v0 + 288);
    v45 = *(v0 + 264);
    v44 = *(v0 + 272);
    v46 = *(v0 + 256);
    sub_22DF635F4();
    v47 = sub_22DF635A4();
    v49 = v48;
    *(v0 + 384) = v47;
    *(v0 + 392) = v48;
    (*(v45 + 8))(v44, v46);

    sub_22DF63554();
    sub_22DF63504();
    v51(v42, v43);
    v50 = swift_task_alloc();
    *(v0 + 400) = v50;
    *v50 = v0;
    v50[1] = sub_22DF22878;
    v16 = *(v0 + 312);
    v17 = *(v0 + 240);
    v18 = v47;
    v19 = v49;
    goto LABEL_12;
  }

  v24(*(v0 + 328), *(v0 + 288));

  v25 = *(v0 + 8);

  return v25(v22, v21);
}

uint64_t sub_22DF22878()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *(*v1 + 312);
  v5 = *(*v1 + 288);
  *(*v1 + 408) = v0;

  v3(v4, v5);

  if (v0)
  {
    v6 = *(v2 + 248);

    v7 = sub_22DF22DCC;
    v8 = v6;
  }

  else
  {
    v8 = *(v2 + 248);
    v7 = sub_22DF22A38;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_22DF22A38()
{
  (*(v0 + 368))(*(v0 + 328), *(v0 + 288));
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_22DF22B00()
{
  v2 = *(*v1 + 432);
  v3 = *(*v1 + 304);
  v4 = *(*v1 + 288);
  v5 = *v1;
  v5[57] = v0;

  v2(v3, v4);

  v6 = v5[53];
  if (v0)
  {
    v7 = v5[31];

    return MEMORY[0x2822009F8](sub_22DF22E80, v7, 0);
  }

  else
  {
    v8 = v5[52];

    v9 = v5[1];

    return v9(v8, v6);
  }
}

uint64_t sub_22DF22D28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF22DCC()
{
  (*(v0 + 368))(*(v0 + 328), *(v0 + 288));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF22E80()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_22DF22F24(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47980, "B/");
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47988, &qword_22DF67EE8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22DF23058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_22DF230C0()
{
  result = qword_27DA47978;
  if (!qword_27DA47978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47978);
  }

  return result;
}

uint64_t sub_22DF23144()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E650);
  __swift_project_value_buffer(v0, qword_27DA4E650);
  return sub_22DF63724();
}

uint64_t sub_22DF231C8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      sub_22DF63F24();

      v5 = 0xD000000000000012;
    }

    else
    {
      sub_22DF63F24();

      v5 = 0xD00000000000001FLL;
    }

    v8 = v5;
    MEMORY[0x2318DCA20](a1, a2);
    return v8;
  }

  if (a3 == 2)
  {
    sub_22DF63F24();

    v8 = 0xD000000000000021;
    v6 = sub_22DF64154();
    MEMORY[0x2318DCA20](v6);

    return v8;
  }

  return 0x656C74746F726874;
}

uint64_t type metadata accessor for StorebagSigningConfiguration(uint64_t a1)
{
  result = qword_28150A850;
  if (!qword_28150A850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DF23384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22DF63444();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  type metadata accessor for Throttle(0);
  sub_22DF1B95C(a1, v11);
  if (v2)
  {
    return (*(v6 + 8))(a1, v5);
  }

  v13 = *(v6 + 32);
  v13(a2, v11, v5);
  sub_22DF2FA30(a1, 0x72756769666E6F63, 0xEF2F736E6F697461, v9);
  (*(v6 + 8))(a1, v5);
  v14 = type metadata accessor for StorebagSigningConfiguration(0);
  return (v13)(a2 + *(v14 + 20), v9, v5);
}

uint64_t sub_22DF23570()
{
  v111 = *MEMORY[0x277D85DE8];
  v0 = sub_22DF63594();
  v1 = *(v0 - 8);
  v104 = v0;
  v105 = v1;
  v2 = MEMORY[0x28223BE20](v0);
  v101 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v102 = &v96 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v96 - v6;
  v8 = sub_22DF632E4();
  v103 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47468, &qword_22DF697B0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v96 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v96 - v18;
  v106 = sub_22DF63444();
  v20 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v22 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StorebagSigningConfiguration(0);
  sub_22DF633A4();
  v107 = v22;
  v23 = sub_22DF633C4();
  v98 = v17;
  v99 = v14;
  v100 = v7;
  v24 = v105;
  if ((v23 & 1) == 0)
  {
    if (qword_27DA4BF40 != -1)
    {
      swift_once();
    }

    v28 = sub_22DF63734();
    __swift_project_value_buffer(v28, qword_27DA4E650);
    v29 = sub_22DF63714();
    v30 = sub_22DF63CE4();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v107;
    if (v31)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22DEEA000, v29, v30, "configuration does not exist", v33, 2u);
      MEMORY[0x2318DDBE0](v33, -1, -1);
    }

    (*(v20 + 8))(v32, v106);
    return 0;
  }

  v97 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47470, &unk_22DF65BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22DF65900;
  v26 = *MEMORY[0x277CBE7B0];
  *(inited + 32) = *MEMORY[0x277CBE7B0];
  v27 = v26;
  sub_22DEF9A50(inited);
  swift_setDeallocating();
  sub_22DEF9C44(inited + 32);
  sub_22DF63354();

  v34 = v98;
  sub_22DF632B4();
  (*(v103 + 8))(v10, v8);
  v35 = v104;
  result = (*(v24 + 48))(v34, 1, v104);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v37 = v19;
  (*(v24 + 32))(v19, v34, v35);
  v38 = v97;
  v39 = v106;
  v40 = v99;
  (*(v24 + 56))(v19, 0, 1, v35);
  sub_22DF27578(v19, v40);
  v41 = (*(v24 + 48))(v40, 1, v35);
  v42 = v107;
  if (v41 == 1)
  {
    sub_22DF275E8(v40);
    if (qword_27DA4BF40 != -1)
    {
      swift_once();
    }

    v43 = sub_22DF63734();
    __swift_project_value_buffer(v43, qword_27DA4E650);
    v44 = sub_22DF63714();
    v45 = sub_22DF63D04();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_22DEEA000, v44, v45, "unable to determine configuration creation date", v46, 2u);
      MEMORY[0x2318DDBE0](v46, -1, -1);
    }

LABEL_30:
    sub_22DF275E8(v37);
    (*(v38 + 8))(v42, v39);
    return 0;
  }

  (*(v24 + 32))(v100, v40, v35);
  v47 = sub_22DF63464();
  v49 = v48;
  v50 = objc_opt_self();
  v51 = v47;
  v103 = v49;
  v52 = sub_22DF634A4();
  v110[0] = 0;
  v53 = [v50 propertyListWithData:v52 options:0 format:0 error:v110];

  if (!v53)
  {
    v62 = v110[0];
    v63 = sub_22DF63334();

    swift_willThrow();
    goto LABEL_25;
  }

  v54 = v110[0];
  sub_22DF63E44();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47638, &qword_22DF660F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    if (qword_27DA4BF40 != -1)
    {
      swift_once();
    }

    v64 = sub_22DF63734();
    __swift_project_value_buffer(v64, qword_27DA4E650);
    v65 = sub_22DF63714();
    v66 = sub_22DF63D04();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_22DEEA000, v65, v66, "failed to parse configuration", v67, 2u);
      MEMORY[0x2318DDBE0](v67, -1, -1);
    }

    sub_22DEF7A34(v51, v103);

    (*(v24 + 8))(v100, v35);
    goto LABEL_30;
  }

  v55 = v108;
  if (*(*&v108 + 16) && (v56 = sub_22DEF08FC(0xD000000000000016, 0x800000022DF6ED10), (v57 & 1) != 0))
  {
    sub_22DEF12A0(*(*&v55 + 56) + 32 * v56, v110);

    v58 = swift_dynamicCast();
    v59 = v100;
    v60 = v102;
    v61 = v101;
    if (v58)
    {
      v109 = 0;
      if (v108 > 31536000.0 || v108 < 3600.0)
      {
        v108 = 86400.0;
        v109 = 0;
      }
    }

    else
    {
      v108 = 0.0;
      v109 = v58 ^ 1;
    }
  }

  else
  {

    v108 = 0.0;
    v109 = 1;
    v59 = v100;
    v60 = v102;
    v61 = v101;
  }

  sub_22DF63504();
  sub_22DF63554();
  v68 = sub_22DF63524();
  v71 = *(v24 + 8);
  v70 = v24 + 8;
  v69 = v71;
  v72 = v61;
  v73 = v104;
  v71(v72, v104);
  if (v68)
  {
    if (qword_27DA4BF40 != -1)
    {
      swift_once();
    }

    v74 = sub_22DF63734();
    __swift_project_value_buffer(v74, qword_27DA4E650);
    v75 = sub_22DF63714();
    v76 = sub_22DF63D24();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_22DEEA000, v75, v76, "removing expired config", v77, 2u);
      MEMORY[0x2318DDBE0](v77, -1, -1);
    }

    v78 = [objc_opt_self() defaultManager];
    v79 = sub_22DF63394();
    v110[0] = 0;
    v80 = [v78 removeItemAtURL:v79 error:v110];

    if (v80)
    {
      v81 = v110[0];
      sub_22DEF7A34(v51, v103);
    }

    else
    {
      v82 = v110[0];
      v83 = sub_22DF63334();

      swift_willThrow();
      v84 = v83;
      v85 = sub_22DF63714();
      v86 = sub_22DF63CE4();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v101 = v37;
        v88 = v87;
        v89 = swift_slowAlloc();
        v105 = v70;
        v90 = v89;
        v110[0] = v89;
        *v88 = 136446210;
        swift_getErrorValue();
        v91 = sub_22DF64244();
        v93 = sub_22DEF0354(v91, v92, v110);

        *(v88 + 4) = v93;
        _os_log_impl(&dword_22DEEA000, v85, v86, "failed to remove expired configuration: %{public}s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v90);
        MEMORY[0x2318DDBE0](v90, -1, -1);
        MEMORY[0x2318DDBE0](v88, -1, -1);
        sub_22DEF7A34(v51, v103);

        v94 = v104;
        v69(v102, v104);
        v69(v100, v94);
        sub_22DF275E8(v101);
        (*(v97 + 8))(v42, v106);
        return 0;
      }

      sub_22DEF7A34(v51, v103);
    }

    v95 = v104;
    v69(v102, v104);
    v69(v100, v95);
    sub_22DF275E8(v37);
    (*(v38 + 8))(v42, v106);
    return 0;
  }

  v69(v60, v73);
  v69(v59, v73);
  sub_22DF275E8(v37);
  (*(v38 + 8))(v42, v106);
  return v51;
}

uint64_t sub_22DF2438C()
{
  v1[15] = v0;
  v2 = sub_22DF63124();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47410, &qword_22DF65B80);
  v1[19] = swift_task_alloc();
  v3 = sub_22DF63444();
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF24524, 0, 0);
}

uint64_t sub_22DF24524()
{
  v1 = sub_22DF23570();
  if (v2 >> 60 == 15)
  {
    v3 = v0[24];
    type metadata accessor for Throttle(0);
    sub_22DF633B4();
    v4 = sub_22DF1B8C8(v3);
    v0[25] = v4;
    v10 = (*(*v4 + 160) + **(*v4 + 160));
    v5 = swift_task_alloc();
    v0[26] = v5;
    *v5 = v0;
    v5[1] = sub_22DF24768;

    return v10();
  }

  else
  {
    v7 = v2;
    v8 = v1;

    v9 = v0[1];

    return v9(v8, v7);
  }
}