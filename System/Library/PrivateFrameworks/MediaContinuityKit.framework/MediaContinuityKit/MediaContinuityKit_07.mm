_OWORD *sub_25850D118(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2584BC1D0(a2, a3);
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
      sub_25850DEC4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25850C3EC(v16, a4 & 1);
    v11 = sub_2584BC1D0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_258533E5C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_2584F6C74(a1, v22);
  }

  else
  {
    sub_25850DB08(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_25850D268(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  result = sub_2584BC4BC();
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 < v12 || (a2 & 1) == 0)
  {
    if (v14 < v12 || (a2 & 1) != 0)
    {
      sub_25850C6A4(v12, a2 & 1, &qword_27F931840, &qword_25853EBC0, 0x6F436F6572657473, 0xED0000746E65746ELL);
      result = sub_2584BC4BC();
      if ((v13 & 1) != (v16 & 1))
      {
LABEL_16:
        result = sub_258533E5C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v15 = result;
      sub_25850E0A4(&qword_27F931840, &qword_25853EBC0);
      result = v15;
    }
  }

  v17 = *v3;
  if ((v13 & 1) == 0)
  {
    *(v17 + 8 * (result >> 6) + 64) |= 1 << result;
    *(*(v17 + 56) + 8 * result) = a1;
    v18 = *(v17 + 16);
    v11 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (!v11)
    {
      *(v17 + 16) = v19;
      return result;
    }

    goto LABEL_15;
  }

  *(*(v17 + 56) + 8 * result) = a1;
}

unint64_t sub_25850D3E4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  result = sub_2584BC4BC();
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 < v12 || (a2 & 1) == 0)
  {
    if (v14 < v12 || (a2 & 1) != 0)
    {
      sub_25850C6A4(v12, a2 & 1, &qword_27F931848, &qword_25853EBC8, 0x6F436F6572657473, 0xED0000746E65746ELL);
      result = sub_2584BC4BC();
      if ((v13 & 1) != (v16 & 1))
      {
LABEL_16:
        result = sub_258533E5C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v15 = result;
      sub_25850E0A4(&qword_27F931848, &qword_25853EBC8);
      result = v15;
    }
  }

  v17 = *v3;
  if ((v13 & 1) == 0)
  {
    *(v17 + 8 * (result >> 6) + 64) |= 1 << result;
    *(*(v17 + 56) + 8 * result) = a1;
    v18 = *(v17 + 16);
    v11 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (!v11)
    {
      *(v17 + 16) = v19;
      return result;
    }

    goto LABEL_15;
  }

  *(*(v17 + 56) + 8 * result) = a1;
}

unint64_t sub_25850D560(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  result = sub_2584BC50C();
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 < v12 || (a2 & 1) == 0)
  {
    if (v14 < v12 || (a2 & 1) != 0)
    {
      sub_25850C6A4(v12, a2 & 1, &qword_27F931830, &qword_25853EBB0, 0x6F69647541707061, 0xE800000000000000);
      result = sub_2584BC50C();
      if ((v13 & 1) != (v16 & 1))
      {
LABEL_16:
        result = sub_258533E5C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v15 = result;
      sub_25850E0A4(&qword_27F931830, &qword_25853EBB0);
      result = v15;
    }
  }

  v17 = *v3;
  if ((v13 & 1) == 0)
  {
    *(v17 + 8 * (result >> 6) + 64) |= 1 << result;
    *(*(v17 + 56) + 8 * result) = a1;
    v18 = *(v17 + 16);
    v11 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (!v11)
    {
      *(v17 + 16) = v19;
      return result;
    }

    goto LABEL_15;
  }

  *(*(v17 + 56) + 8 * result) = a1;
}

unint64_t sub_25850D6D0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  result = sub_2584BC50C();
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 < v12 || (a2 & 1) == 0)
  {
    if (v14 < v12 || (a2 & 1) != 0)
    {
      sub_25850C6A4(v12, a2 & 1, &qword_27F931838, &qword_25853EBB8, 0x6F69647541707061, 0xE800000000000000);
      result = sub_2584BC50C();
      if ((v13 & 1) != (v16 & 1))
      {
LABEL_16:
        result = sub_258533E5C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v15 = result;
      sub_25850E0A4(&qword_27F931838, &qword_25853EBB8);
      result = v15;
    }
  }

  v17 = *v3;
  if ((v13 & 1) == 0)
  {
    *(v17 + 8 * (result >> 6) + 64) |= 1 << result;
    *(*(v17 + 56) + 8 * result) = a1;
    v18 = *(v17 + 16);
    v11 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (!v11)
    {
      *(v17 + 16) = v19;
      return result;
    }

    goto LABEL_15;
  }

  *(*(v17 + 56) + 8 * result) = a1;
}

_OWORD *sub_25850D840(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2584BC248(a2);
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
      sub_25850E1F8();
      goto LABEL_7;
    }

    sub_25850C918(v13, a3 & 1);
    v19 = sub_2584BC248(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2584BC778(a2, v21);
      return sub_25850DB74(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_258533E5C();
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
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_2584F6C74(a1, v17);
}

uint64_t sub_25850D98C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2584BC1D0(a2, a3);
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
      sub_25850CBD0(v16, a4 & 1);
      v11 = sub_2584BC1D0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_258533E5C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_25850E39C();
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

_OWORD *sub_25850DB08(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2584F6C74(a4, (a5[7] + 32 * a1));
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

_OWORD *sub_25850DB74(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_2584F6C74(a3, (a4[7] + 32 * a1));
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

void *sub_25850DBF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931880, &qword_25853EBF0);
  v2 = *v0;
  v3 = sub_258533CBC();
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 56) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v4 + 56) + v17;
        v24 = *(v18 + 32);
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v24;
        result = sub_2584A967C(v19, v20, v21, v22, v24);
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

void *sub_25850DD60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931888, &qword_25853EBF8);
  v2 = *v0;
  v3 = sub_258533CBC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(v2 + 56) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 56) + v17;
        *v21 = *v18;
        *(v21 + 8) = v20;
        result = sub_2584742A4(v19, v20);
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

void *sub_25850DEC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314F8, &qword_25853D738);
  v2 = *v0;
  v3 = sub_258533CBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_258472C68(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2584F6C74(v25, (*(v4 + 56) + v22));
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

  return result;
}

void *sub_25850E0A4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_258533CBC();
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
        *(*(v6 + 56) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 56) + 8 * (v16 | (v10 << 6)));
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

void *sub_25850E1F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9314A0, &qword_25853D608);
  v2 = *v0;
  v3 = sub_258533CBC();
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
        v18 = 40 * v17;
        sub_2584BC778(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_258472C68(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_2584F6C74(v22, (*(v4 + 56) + v17));
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

void *sub_25850E39C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931500, &unk_25853D740);
  v2 = *v0;
  v3 = sub_258533CBC();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

uint64_t sub_25850E50C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 33) == 1)
  {
    sub_258476AE4();
    swift_allocError();
    *v2 = 1;
    return swift_willThrow();
  }

  else
  {
    v4 = *(a2 + 32);
    v5 = sub_25853342C();
    v7 = v6;
    if (v4 < 0)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    v12 = MEMORY[0x277D83B88];
    *&v11 = v8;
    sub_2584F6C74(&v11, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_25850D118(v10, v5, v7, isUniquelyReferenced_nonNull_native);

    return 12;
  }
}

uint64_t sub_25850E63C(uint64_t a1)
{
  v2 = sub_25853394C();
  v157 = *(v2 - 8);
  v158 = v2;
  MEMORY[0x28223BE20](v2);
  v156 = &v125 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_2585339AC();
  MEMORY[0x28223BE20](v154);
  v155 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25853335C();
  MEMORY[0x28223BE20](v5 - 8);
  v153 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931850, &qword_25853EBD0);
  v152 = *(v162 - 1);
  MEMORY[0x28223BE20](v162);
  v151 = (&v125 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
  v169 = *(v8 - 8);
  v170 = v8;
  MEMORY[0x28223BE20](v8);
  v150 = &v125 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  v167 = *(v10 - 8);
  v168 = v10;
  MEMORY[0x28223BE20](v10);
  v149 = &v125 - v11;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931858, &unk_25853EBD8);
  v12 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v14 = &v125 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931808, &qword_25853EB60);
  v165 = *(v15 - 8);
  v166 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v125 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931810, &unk_25853EB70);
  v163 = *(v18 - 8);
  v164 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v125 - v19;
  inited = type metadata accessor for VideoStreamInternalInitParameters(0);
  MEMORY[0x28223BE20](inited);
  v160 = a1;
  v202 = (&v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25850FB28(a1, v202, type metadata accessor for VideoStreamInternalInitParameters);
  v22 = type metadata accessor for AVConferenceBackedMediaStreamNegotiatorVendor();
  v23 = swift_allocObject();
  v195 = v22;
  v196 = &off_28698F1B8;
  v194[0] = v23;
  v24 = type metadata accessor for AVConferenceBackedMediaStreamAVCVendor();
  v25 = swift_allocObject();
  v193[4] = &off_28698EA90;
  v193[3] = v24;
  v193[0] = v25;
  v26 = type metadata accessor for AVConferenceBackedMediaStreamInputVendor();
  v27 = swift_allocObject();
  v192[4] = &off_28698F0D0;
  v192[3] = v26;
  v192[0] = v27;
  v28 = type metadata accessor for AVConferenceBackedRemoteVideoClientVendor();
  v29 = swift_allocObject();
  v191[4] = &off_28698F2A0;
  v191[3] = v28;
  v191[0] = v29;
  v30 = type metadata accessor for TrafficRegistrationVendor();
  v31 = swift_allocObject();
  v190[4] = &off_286990C48;
  v190[3] = v30;
  v190[0] = v31;
  v32 = type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProviderVendor();
  v33 = swift_allocObject();
  v189[4] = &off_281DA7598;
  v189[3] = v32;
  v189[0] = v33;
  v34 = type metadata accessor for AVConferenceBackedDelegatedPIDProvider();
  v35 = swift_allocObject();
  v188[4] = &off_28698E800;
  v188[3] = v34;
  v188[0] = v35;
  v36 = type metadata accessor for FoundationBackedUserDefaultsProvider();
  v37 = swift_allocObject();
  v37[3] = 0xD00000000000001CLL;
  v37[4] = 0x800000025853FF50;
  v38 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v39 = sub_25853341C();
  v40 = [v38 initWithSuiteName_];

  v37[2] = v40;
  v187[4] = &off_28698F5C8;
  v187[3] = v36;
  v187[0] = v37;
  v41 = type metadata accessor for KTraceBackedSignpostReporter();
  v42 = swift_allocObject();
  v186[4] = &off_28698F5E0;
  v186[3] = v41;
  v186[0] = v42;
  v147 = type metadata accessor for VideoStreamAVConference(0);
  v43 = swift_allocObject();
  *(v43 + 184) = 0u;
  v144 = v43 + 184;
  *(v43 + 232) = 0;
  *(v43 + 136) = 0u;
  *(v43 + 152) = 0u;
  *(v43 + 168) = 0u;
  *(v43 + 200) = 0u;
  *(v43 + 216) = 0;
  v44 = v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_eventStream;
  v45 = v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_eventStreamContinuation;
  v46 = v148;
  (*(v12 + 104))(v14, *MEMORY[0x277D858A0], v148);
  sub_2585337BC();
  (*(v12 + 8))(v14, v46);
  v47 = *(v163 + 32);
  v146 = v44;
  v47(v44, v20, v164);
  v48 = *(v165 + 32);
  v148 = v45;
  v48(v45, v17, v166);
  v49 = v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_internalEventStream;
  v50 = (v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_internalEventStreamContinuation);
  v52 = v151;
  v51 = v152;
  v53 = v162;
  (v152[13])(v151, *MEMORY[0x277D85778], v162);
  v54 = v149;
  v55 = v150;
  sub_25853369C();
  (v51[1])(v52, v53);
  v56 = *(v167 + 32);
  v145 = v49;
  v56(v49, v54, v168);
  v57 = *(v169 + 32);
  v149 = v50;
  v57(v50, v55, v170);
  v58 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_logger;
  if (qword_27F92F8E0 != -1)
  {
    swift_once();
  }

  v59 = sub_258532A4C();
  v60 = __swift_project_value_buffer(v59, qword_27F93CFF0);
  v142 = *(v59 - 8);
  v143 = v59;
  v61 = *(v142 + 16);
  v150 = v58;
  v61(v43 + v58, v60, v59);
  *(v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_isPaused) = 0;
  v139 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnectionEventMonitor;
  *(v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnectionEventMonitor) = 0;
  v140 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_streamEventMonitor;
  *(v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_streamEventMonitor) = 0;
  v62 = v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_waitForResponseContinuation;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9317B0, &qword_25853EA00);
  v64 = *(*(v63 - 8) + 56);
  v141 = v62;
  v64(v62, 1, 1, v63);
  v65 = (v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream);
  *v65 = 0;
  v65[1] = 0;
  v137 = v65;
  v66 = v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_connectionPrerequisites;
  v67 = type metadata accessor for MediaConnectionPrerequisites(0);
  v68 = *(*(v67 - 8) + 56);
  v138 = v66;
  v68(v66, 1, 1, v67);
  v69 = v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistration;
  *v69 = 0u;
  *(v69 + 16) = 0u;
  v136 = v69;
  *(v69 + 32) = 0;
  v70 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_activatingContinuation;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  (*(*(v71 - 8) + 56))(v43 + v70, 1, 1, v71);
  v72 = v202;
  v73 = v202[1];
  *(v43 + 236) = *v202;
  v74 = *(v72 + 32);
  v75 = *(v72 + 33);
  *(v43 + 252) = v73;
  *(v43 + 268) = v74;
  *(v43 + 269) = v75;
  v77 = *(v72 + 5);
  v76 = *(v72 + 6);
  v79 = *(v72 + 7);
  v151 = *(v72 + 8);
  v78 = v151;
  v152 = v76;
  *(v43 + 16) = v77;
  *(v43 + 24) = v76;
  *(v43 + 32) = v79;
  *(v43 + 40) = v78;
  v80 = *(v72 + 72);
  v81 = (v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection);
  *(v43 + 48) = v80;
  v134 = v81;
  sub_258464C30((v72 + 5), v81);
  v83 = *(v72 + 168);
  v198 = *(v72 + 152);
  v82 = v198;
  v199 = v83;
  v85 = *(v72 + 200);
  v200 = *(v72 + 184);
  v84 = v200;
  v201 = v85;
  v86 = *(v72 + 136);
  v197[0] = *(v72 + 120);
  v197[1] = v86;
  v87 = (v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer);
  *v87 = v197[0];
  v87[1] = v86;
  v87[2] = v82;
  v87[3] = v83;
  v87[4] = v84;
  v87[5] = v85;
  v162 = v87;
  v88 = v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_sessionID;
  v89 = inited;
  v90 = inited[8];
  v91 = sub_2585329BC();
  v130 = *(v91 - 8);
  v92 = *(v130 + 16);
  v132 = v91;
  v133 = v88;
  v92(v88, v72 + v90);
  *(v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_shouldPerformTrafficRegistration) = *(v72 + v89[9]);
  v93 = v72 + v89[10];
  v135 = (v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider);
  sub_258464C30(v93, v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider);
  v131 = (v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProviderVendor);
  sub_258464C30(v189, v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProviderVendor);
  v94 = type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider(0);
  swift_allocObject();
  sub_2584A967C(v77, v152, v79, v151, v80);
  sub_2584AC3B8(v197, &v180, &qword_27F9303B8, &qword_258537F70);
  v95 = sub_2584EAE98();
  v96 = (v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProvider);
  v96[3] = v94;
  v96[4] = &off_28698FE70;
  v152 = v96;
  *v96 = v95;
  v127 = (v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamVendor);
  sub_258464C30(v193, v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamVendor);
  sub_258464C30(v192, v43 + 56);
  sub_258464C30(v191, v43 + 96);
  v126 = (v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_delegatedPIDProvider);
  sub_258464C30(v188, v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_delegatedPIDProvider);
  v129 = (v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_userDefaultsProvider);
  sub_258464C30(v187, v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_userDefaultsProvider);
  v128 = (v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistrationVendor);
  sub_258464C30(v190, v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistrationVendor);
  v151 = (v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_signpostReporter);
  sub_258464C30(v186, v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_signpostReporter);
  if (*(v43 + 48) < 0)
  {
    if (qword_27F92F940 != -1)
    {
      swift_once();
    }

    v97 = &qword_27F93D0A8;
  }

  else
  {
    if (qword_27F92F938 != -1)
    {
      swift_once();
    }

    v97 = &qword_27F93D0A0;
  }

  v98 = *v97;
  sub_25850FB90();
  inited = v98;
  sub_25853334C();
  *&v180 = MEMORY[0x277D84F90];
  sub_25850FBDC(&qword_27F931868, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931870, &qword_25853EBE8);
  sub_25850FC24();
  sub_258533A8C();
  (*(v157 + 104))(v156, *MEMORY[0x277D85268], v158);
  *(v43 + 224) = sub_2585339BC();
  v99 = *(v43 + 268);
  v100 = *(v43 + 269);
  v101 = *(v43 + 252);
  v177[0] = *(v43 + 236);
  v177[1] = v101;
  v178 = v99;
  v179 = v100;
  v102 = *(v43 + 24);
  v103 = *(v43 + 32);
  v104 = *(v43 + 40);
  v105 = *(v43 + 48);
  v172 = *(v43 + 16);
  v173 = v102;
  v174 = v103;
  v175 = v104;
  v176 = v105;
  sub_2584A967C(v172, v102, v103, v104, v105);
  v106 = v159;
  v107 = sub_25850E50C(v177, &v172);
  if (!v106)
  {
    v113 = v108;
    v114 = v107;
    sub_2584A96C0(v172, v173, v174, v175, v176);
    v115 = v162[3];
    v182 = v162[2];
    v183 = v115;
    v116 = v162[5];
    v184 = v162[4];
    v185 = v116;
    v117 = v162[1];
    v180 = *v162;
    v181 = v117;
    if (v180 == 2)
    {
      __swift_project_boxed_opaque_existential_1(v194, v195);
      sub_2584D2AD4(v114, v113, v171);
      v118 = v202;

      __swift_destroy_boxed_opaque_existential_1Tm(v186);
      __swift_destroy_boxed_opaque_existential_1Tm(v187);
      __swift_destroy_boxed_opaque_existential_1Tm(v188);
      __swift_destroy_boxed_opaque_existential_1Tm(v189);
      __swift_destroy_boxed_opaque_existential_1Tm(v190);
      __swift_destroy_boxed_opaque_existential_1Tm(v191);
      __swift_destroy_boxed_opaque_existential_1Tm(v192);
      __swift_destroy_boxed_opaque_existential_1Tm(v193);
      v124 = v118;
    }

    else
    {
      v120 = *(&v180 + 1);
      v119 = v181;
      v158 = *__swift_project_boxed_opaque_existential_1(v194, v195);
      v159 = 0;
      v121 = v182;
      v122 = v183;
      v154 = *(&v184 + 1);
      v155 = v184;
      v156 = *(&v185 + 1);
      v157 = v185;
      sub_2584A7B8C(v120, v119);
      sub_2584ABAF4(v121, *(&v121 + 1));
      sub_2584ABAF4(v122, *(&v122 + 1));
      sub_2584A7B8C(v155, v154);
      sub_2584A7B8C(v157, v156);
      v123 = v159;
      sub_2584D2BD8(v120, v119, v113, v171);
      if (v123)
      {
        sub_258465168(&v180, &qword_27F9303B8, &qword_258537F70);

        __swift_destroy_boxed_opaque_existential_1Tm(v186);
        __swift_destroy_boxed_opaque_existential_1Tm(v187);
        __swift_destroy_boxed_opaque_existential_1Tm(v188);
        __swift_destroy_boxed_opaque_existential_1Tm(v189);
        __swift_destroy_boxed_opaque_existential_1Tm(v190);
        __swift_destroy_boxed_opaque_existential_1Tm(v191);
        __swift_destroy_boxed_opaque_existential_1Tm(v192);
        __swift_destroy_boxed_opaque_existential_1Tm(v193);
        sub_25850FC88(v202, type metadata accessor for VideoStreamInternalInitParameters);
        goto LABEL_12;
      }

      sub_258465168(&v180, &qword_27F9303B8, &qword_258537F70);

      __swift_destroy_boxed_opaque_existential_1Tm(v186);
      __swift_destroy_boxed_opaque_existential_1Tm(v187);
      __swift_destroy_boxed_opaque_existential_1Tm(v188);
      __swift_destroy_boxed_opaque_existential_1Tm(v189);
      __swift_destroy_boxed_opaque_existential_1Tm(v190);
      __swift_destroy_boxed_opaque_existential_1Tm(v191);
      __swift_destroy_boxed_opaque_existential_1Tm(v192);
      __swift_destroy_boxed_opaque_existential_1Tm(v193);
      v124 = v202;
    }

    sub_25850FC88(v124, type metadata accessor for VideoStreamInternalInitParameters);
    sub_258464C18(v171, v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamNegotiator);
    goto LABEL_13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v186);
  __swift_destroy_boxed_opaque_existential_1Tm(v187);
  __swift_destroy_boxed_opaque_existential_1Tm(v188);
  __swift_destroy_boxed_opaque_existential_1Tm(v189);
  __swift_destroy_boxed_opaque_existential_1Tm(v190);
  __swift_destroy_boxed_opaque_existential_1Tm(v191);
  __swift_destroy_boxed_opaque_existential_1Tm(v192);
  __swift_destroy_boxed_opaque_existential_1Tm(v193);
  sub_25850FC88(v202, type metadata accessor for VideoStreamInternalInitParameters);
  sub_2584A96C0(v172, v173, v174, v175, v176);
LABEL_12:
  sub_2584A96C0(*(v43 + 16), *(v43 + 24), *(v43 + 32), *(v43 + 40), *(v43 + 48));
  __swift_destroy_boxed_opaque_existential_1Tm((v43 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v43 + 96));

  sub_258465168(v43 + 144, &qword_27F9317E0, &qword_25853EB18);
  sub_258465168(v144, &qword_27F9317F0, &qword_25853EB30);

  (*(v130 + 8))(v133, v132);
  __swift_destroy_boxed_opaque_existential_1Tm(v134);
  v109 = v162[3];
  v182 = v162[2];
  v183 = v109;
  v110 = v162[5];
  v184 = v162[4];
  v185 = v110;
  v111 = v162[1];
  v180 = *v162;
  v181 = v111;
  sub_258465168(&v180, &qword_27F9303B8, &qword_258537F70);
  __swift_destroy_boxed_opaque_existential_1Tm(v131);
  __swift_destroy_boxed_opaque_existential_1Tm(v127);
  __swift_destroy_boxed_opaque_existential_1Tm(v126);
  (*(v163 + 8))(v146, v164);
  (*(v165 + 8))(v148, v166);
  (*(v167 + 8))(v145, v168);
  (*(v169 + 8))(v149, v170);
  (*(v142 + 8))(&v150[v43], v143);
  __swift_destroy_boxed_opaque_existential_1Tm(v152);

  sub_258465168(v141, &qword_27F931820, &unk_25853F380);
  swift_unknownObjectRelease();
  sub_258465168(v138, &qword_27F930580, &unk_2585382B0);
  __swift_destroy_boxed_opaque_existential_1Tm(v129);
  __swift_destroy_boxed_opaque_existential_1Tm(v128);
  sub_258465168(v136, &qword_27F931828, &unk_25853EB90);
  __swift_destroy_boxed_opaque_existential_1Tm(v135);
  __swift_destroy_boxed_opaque_existential_1Tm(v151);
  sub_258465168(v43 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_activatingContinuation, &qword_27F930590, &qword_25853F8A0);
  swift_deallocPartialClassInstance();
LABEL_13:
  __swift_destroy_boxed_opaque_existential_1Tm(v194);
  sub_25850FC88(v160, type metadata accessor for VideoStreamInternalInitParameters);
  return v43;
}

uint64_t sub_25850FA84(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12)
{
  if (result != 2)
  {
    sub_258467E20(a2, a3);
    sub_2584AE960(a5, a6);
    sub_2584AE960(a7, a8);
    sub_258467E20(a9, a10);

    return sub_258467E20(a11, a12);
  }

  return result;
}

uint64_t sub_25850FB28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25850FB90()
{
  result = qword_27F931860;
  if (!qword_27F931860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F931860);
  }

  return result;
}

uint64_t sub_25850FBDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25850FC24()
{
  result = qword_27F931878;
  if (!qword_27F931878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F931870, &qword_25853EBE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931878);
  }

  return result;
}

uint64_t sub_25850FC88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25850FD54(uint64_t a1)
{
  result = sub_25850AAF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25850FD80()
{
  result = qword_27F931890;
  if (!qword_27F931890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931890);
  }

  return result;
}

uint64_t sub_25850FDD4(uint64_t a1)
{
  if (!a1)
  {
    return 2;
  }

  swift_unknownObjectRetain();
  v1 = nw_endpoint_copy_interface();
  if (v1)
  {
    type = nw_interface_get_type(v1);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (type == nw_interface_type_wired)
    {
      return 1;
    }

    else
    {
      return 2 * (type != nw_interface_type_wifi);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return 2;
  }
}

uint64_t sub_25850FE58(uint64_t a1)
{
  sub_258532EEC();
  nw_parameters_allow_interface_type();
  swift_unknownObjectRelease();
  sub_258532EEC();
  nw_parameters_allow_interface_subtype();
  swift_unknownObjectRelease();
  sub_258532EEC();
  nw_parameters_allow_interface_type();
  swift_unknownObjectRelease();
  sub_258532EEC();
  nw_parameters_allow_interface_subtype();
  swift_unknownObjectRelease();
  v14 = &type metadata for MediaContinuityKitFeatureFlags;
  v15 = sub_2584A56DC();
  LOBYTE(aBlock[0]) = 1;
  v1 = sub_2585329EC();
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  if (v1)
  {
    sub_258532EEC();
    v15 = sub_25850FDD4;
    v16 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25851011C;
    v14 = &block_descriptor_6;
    v2 = _Block_copy(aBlock);

    nw_parameters_set_endpoint_resolution_preference_handler();
    _Block_release(v2);
    swift_unknownObjectRelease();
  }

  type metadata accessor for FoundationBackedUserDefaultsProvider();
  inited = swift_initStackObject();
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = sub_25853341C();
  v6 = [v4 initWithSuiteName_];

  *(inited + 16) = v6;
  v7 = sub_2585138CC(1u, 1);

  if (v7 != 2 && (v7 & 1) != 0)
  {
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v8 = sub_258532A4C();
    __swift_project_value_buffer(v8, qword_27F93CFA8);
    v9 = sub_258532A2C();
    v10 = sub_2585338EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_25845E000, v9, v10, "Allowing infrastructure WiFi interface", v11, 2u);
      MEMORY[0x259C82900](v11, -1, -1);
    }

    sub_258532EEC();
    nw_parameters_allow_interface_subtype();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_25851011C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v4 = v2(v3);

  swift_unknownObjectRelease();
  return v4;
}

uint64_t _s7Network12NWParametersC18MediaContinuityKitE35compositorServicesBrowserParametersACvgZ_0()
{
  sub_258532EFC();
  v10 = sub_258532EDC();
  sub_2585330CC();

  sub_2585330DC();

  type metadata accessor for FoundationBackedUserDefaultsProvider();
  inited = swift_initStackObject();
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_25853341C();
  v3 = [v1 initWithSuiteName_];

  *(inited + 16) = v3;
  v4 = sub_2585138CC(1u, 1);

  if (v4 == 2 || (v4 & 1) == 0)
  {
    sub_258532EEC();
    nw_parameters_set_include_ble();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v5 = sub_258532A4C();
    __swift_project_value_buffer(v5, qword_27F93CFD8);
    v6 = sub_258532A2C();
    v7 = sub_2585338EC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_25845E000, v6, v7, "Allowing Infra WiFi Interface, not limiting discovery to BLE ", v8, 2u);
      MEMORY[0x259C82900](v8, -1, -1);
    }
  }

  return v10;
}

uint64_t _s7Network12NWParametersC18MediaContinuityKitE38compositorServicesConnectionParameters9sessionIDAC10Foundation4UUIDV_tFZ_0()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = sub_258532ECC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258532EFC();
  v12 = sub_258532EDC();
  sub_2585330CC();

  v11 = v9;
  sub_25853310C();

  v11 = v12;
  (*(v1 + 104))(v3, *MEMORY[0x277CD8E18], v0);
  sub_2585330FC();
  (*(v1 + 8))(v3, v0);

  v5 = v9;
  sub_25850FE58(v4);

  sub_258532EBC();
  sub_258532EEC();
  nw_parameters_set_required_address_family();
  swift_unknownObjectRelease();
  v9 = sub_25853299C();
  v10 = v6;
  sub_258532EEC();
  nw_parameters_set_migration_controller_session_uuid();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t _s7Network12NWParametersC18MediaContinuityKitE36compositorServicesListenerParametersACvgZ_0()
{
  sub_258532EFC();
  v2 = sub_258532EDC();
  sub_2585330CC();

  sub_2585330EC();

  sub_25850FE58(v0);

  sub_258532EEC();
  nw_parameters_set_required_address_family();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for ReportingEndReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 39;
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

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v8 = v6 - 40;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReportingEndReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2585107F8()
{
  sub_258533EEC();
  sub_258533F0C();
  return sub_258533F2C();
}

uint64_t sub_258510880(uint64_t a1)
{
  sub_258533EEC();
  sub_258533F0C();
  return sub_258533F2C();
}

uint64_t sub_2585108CC@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_258510A18(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2585109C4()
{
  result = qword_27F931898;
  if (!qword_27F931898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931898);
  }

  return result;
}

uint64_t sub_258510A18(int a1)
{
  if (a1 <= 2000)
  {
    if (a1 <= 999)
    {
      return 1;
    }

    if (a1 <= 1002)
    {
      if (a1 == 1000)
      {
        return 14;
      }

      if (a1 == 1001)
      {
        return 15;
      }

      return 16;
    }

    switch(a1)
    {
      case 1003:
        return 17;
      case 1004:
        return 18;
      case 2000:
        return 19;
    }

    return 40;
  }

  if (a1 > 2010)
  {
    if (a1 > 5000)
    {
      if (a1 <= 6999)
      {
        if (a1 == 5001)
        {
          return 35;
        }

        if (a1 == 6000)
        {
          return 36;
        }
      }

      else
      {
        switch(a1)
        {
          case 7000:
            return 37;
          case 8000:
            return 38;
          case 8001:
            return 39;
        }
      }
    }

    else if (a1 <= 3000)
    {
      if (a1 == 2011)
      {
        return 30;
      }

      if (a1 == 3000)
      {
        return 31;
      }
    }

    else
    {
      switch(a1)
      {
        case 3001:
          return 32;
        case 4000:
          return 33;
        case 5000:
          return 34;
      }
    }

    return 40;
  }

  if (a1 > 2005)
  {
    if (a1 <= 2007)
    {
      if (a1 == 2006)
      {
        return 25;
      }

      else
      {
        return 26;
      }
    }

    else if (a1 == 2008)
    {
      return 27;
    }

    else if (a1 == 2009)
    {
      return 28;
    }

    else
    {
      return 29;
    }
  }

  else if (a1 <= 2002)
  {
    if (a1 == 2001)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }

  else if (a1 == 2003)
  {
    return 22;
  }

  else if (a1 == 2004)
  {
    return 23;
  }

  else
  {
    return 24;
  }
}

unint64_t sub_258510D00()
{
  result = qword_27F9318A0;
  if (!qword_27F9318A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9318A0);
  }

  return result;
}

void sub_258510D54()
{
  v1 = v0;
  if (*(v0 + 112))
  {
    v2 = qword_27F92F8F0;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = sub_258532A4C();
    __swift_project_value_buffer(v3, qword_27F93D020);

    v4 = sub_258532A2C();
    v5 = sub_2585338EC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v21 = v7;
      *v6 = 136315138;
      type metadata accessor for TimeSyncHeartbeat();
      sub_258512FF8(&qword_27F9318B0, v8, type metadata accessor for TimeSyncHeartbeat, &unk_25853EEB4);
      v9 = sub_258533DFC();
      v11 = sub_2584713B0(v9, v10, &v21);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_25845E000, v4, v5, "%s stopping", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x259C82900](v7, -1, -1);
      MEMORY[0x259C82900](v6, -1, -1);
    }

    sub_25853374C();

    *(v1 + 112) = 0;
  }

  else
  {
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v12 = sub_258532A4C();
    __swift_project_value_buffer(v12, qword_27F93D020);

    oslog = sub_258532A2C();
    v13 = sub_2585338CC();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      type metadata accessor for TimeSyncHeartbeat();
      sub_258512FF8(&qword_27F9318B0, v16, type metadata accessor for TimeSyncHeartbeat, &unk_25853EEB4);
      v17 = sub_258533DFC();
      v19 = sub_2584713B0(v17, v18, &v21);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_25845E000, oslog, v13, "%s not started", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x259C82900](v15, -1, -1);
      MEMORY[0x259C82900](v14, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2585110D4()
{
  if (v0[14])
  {
    sub_258510D54();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t sub_25851114C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TimeSyncHeartbeat();
  result = sub_258533B9C();
  *a2 = result;
  return result;
}

void sub_25851118C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  if (*(v0 + 112))
  {
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v5 = sub_258532A4C();
    __swift_project_value_buffer(v5, qword_27F93D020);

    v30 = sub_258532A2C();
    v6 = sub_2585338CC();

    if (os_log_type_enabled(v30, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v31 = v0;
      v32 = v8;
      *v7 = 136315138;
      type metadata accessor for TimeSyncHeartbeat();
      sub_258512FF8(&qword_27F9318B0, v9, type metadata accessor for TimeSyncHeartbeat, &unk_25853EEB4);
      v10 = sub_258533DFC();
      v12 = sub_2584713B0(v10, v11, &v32);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_25845E000, v30, v6, "%s already started", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x259C82900](v8, -1, -1);
      MEMORY[0x259C82900](v7, -1, -1);
    }

    else
    {
      v28 = v30;
    }
  }

  else
  {
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v13 = sub_258532A4C();
    __swift_project_value_buffer(v13, qword_27F93D020);

    v14 = sub_258532A2C();
    v15 = sub_2585338EC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v0;
      v32 = v17;
      *v16 = 136315394;
      type metadata accessor for TimeSyncHeartbeat();
      sub_258512FF8(&qword_27F9318B0, v18, type metadata accessor for TimeSyncHeartbeat, &unk_25853EEB4);
      v19 = sub_258533DFC();
      v21 = sub_2584713B0(v19, v20, &v32);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      v22 = sub_258533F5C();
      v24 = sub_2584713B0(v22, v23, &v32);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_25845E000, v14, v15, "%s starting with interval: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v17, -1, -1);
      MEMORY[0x259C82900](v16, -1, -1);
    }

    v25 = sub_25853368C();
    (*(*(v25 - 8) + 56))(v4, 1, 1, v25);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v26;
    *(v1 + 112) = sub_2585135CC(0, 0, v4, &unk_25853EF38, v27);
  }
}

uint64_t sub_258511600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = sub_258533C4C();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v6 = sub_258533C6C();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v7 = sub_25853398C();
  v4[26] = v7;
  v4[27] = *(v7 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = type metadata accessor for Signpost(0);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2585117CC, 0, 0);
}

uint64_t sub_2585117CC()
{
  v66 = v0;
  swift_beginAccess();
  if (sub_25853376C())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      if (qword_27F92F8F0 != -1)
      {
        swift_once();
      }

      v3 = sub_258532A4C();
      __swift_project_value_buffer(v3, qword_27F93D020);

      v4 = sub_258532A2C();
      v5 = sub_2585338EC();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v65 = v7;
        *v6 = 136315138;
        *(v0 + 120) = v2;
        type metadata accessor for TimeSyncHeartbeat();
        sub_258512FF8(&qword_27F9318B0, v8, type metadata accessor for TimeSyncHeartbeat, &unk_25853EEB4);
        v9 = sub_258533DFC();
        v11 = sub_2584713B0(v9, v10, &v65);

        *(v6 + 4) = v11;
        _os_log_impl(&dword_25845E000, v4, v5, "%s task cancelled", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        MEMORY[0x259C82900](v7, -1, -1);
        MEMORY[0x259C82900](v6, -1, -1);
      }

      else
      {
      }
    }

    goto LABEL_13;
  }

  v12 = swift_weakLoadStrong();
  *(v0 + 264) = v12;
  if (v12)
  {
    v13 = v12;
    v14 = [*(*__swift_project_boxed_opaque_existential_1((v12 + 16) *(v12 + 40)) + 16)];
    v15 = mach_absolute_time();
    v16 = [*(*__swift_project_boxed_opaque_existential_1(v13 + 2 v13[5]) + 16)];
    v17 = [*(*__swift_project_boxed_opaque_existential_1(v13 + 2 v13[5]) + 16)];
    v18 = v17;
    if (v17 >= 3)
    {
      sub_258533B8C();
      *(v0 + 88) = 0;
      *(v0 + 96) = 0xE000000000000000;
      MEMORY[0x259C81500](0xD000000000000014, 0x80000002585428E0);
      *(v0 + 84) = v18;
      type metadata accessor for TSClockLockState(0);
      sub_258533C8C();
      return sub_258533C9C();
    }

    v20 = *(v0 + 248);
    v19 = *(v0 + 256);
    v61 = v17;
    v63 = v15;
    v64 = v14;
    *v19 = v14;
    v19[1] = v15;
    v62 = v16;
    v19[2] = v16;
    v19[3] = v17;
    swift_storeEnumTagMultiPayload();
    sub_2584D6A6C(v19, v20);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v22 = *v20;
    v23 = *(v0 + 248);
    if (EnumCaseMultiPayload == 1)
    {
      v25 = *(v0 + 216);
      v24 = *(v0 + 224);
      v26 = *(v0 + 208);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F930DE8, &qword_25853BED0);
      v28 = (*(v25 + 32))(v24, v23 + *(v27 + 48), v26);
      if (v22 < 0)
      {
        __break(1u);
        return MEMORY[0x2822008C8](v28, v29, v30, v31);
      }

      v33 = *(v0 + 216);
      v32 = *(v0 + 224);
      v34 = *(v0 + 208);
      sub_25853397C();
      sub_2585339DC();
      (*(v33 + 8))(v32, v34);
    }

    sub_2584D6A6C(*(v0 + 256), *(v0 + 240));
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = *(v0 + 240);
      v38 = *(v0 + 208);
      v39 = *(v0 + 216);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F930DE8, &qword_25853BED0);
      (*(v39 + 8))(v37 + *(v40 + 48), v38);
    }

    kdebug_trace();
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v41 = sub_258532A4C();
    __swift_project_value_buffer(v41, qword_27F93D020);

    v42 = sub_258532A2C();
    v43 = sub_2585338EC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 136316162;
      *(v0 + 128) = v45;
      *(v0 + 136) = v13;
      type metadata accessor for TimeSyncHeartbeat();
      sub_258512FF8(&qword_27F9318B0, v46, type metadata accessor for TimeSyncHeartbeat, &unk_25853EEB4);
      v47 = sub_258533DFC();
      v49 = sub_2584713B0(v47, v48, (v0 + 128));

      *(v44 + 4) = v49;
      *(v44 + 12) = 2048;
      *(v44 + 14) = v64;
      *(v44 + 22) = 2048;
      *(v44 + 24) = v63;
      *(v44 + 32) = 2048;
      *(v44 + 34) = v62;
      *(v44 + 42) = 2080;
      if (v61)
      {
        if (v61 == 1)
        {
          v50 = 0xE700000000000000;
          v51 = 0x676E696B636F4CLL;
        }

        else
        {
          v50 = 0xE600000000000000;
          v51 = 0x64656B636F4CLL;
        }
      }

      else
      {
        v50 = 0xEB00000000676E69;
        v51 = 0x6B636F6C20746F4ELL;
      }

      v52 = sub_2584713B0(v51, v50, (v0 + 128));

      *(v44 + 44) = v52;
      _os_log_impl(&dword_25845E000, v42, v43, "%s leader: %llu, machTime: %llu, domainTime: %llu, lockState: %s", v44, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v45, -1, -1);
      MEMORY[0x259C82900](v44, -1, -1);
    }

    v54 = *(v0 + 160);
    v53 = *(v0 + 168);
    v55 = *(v0 + 152);
    v57 = v13[7];
    v56 = v13[8];
    sub_258533E8C();
    *(v0 + 104) = v57;
    *(v0 + 112) = v56;
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    *(v0 + 80) = 1;
    v58 = sub_258512FF8(&qword_27F930428, 255, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_258533E6C();
    sub_258512FF8(&qword_27F930430, 255, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_258533C7C();
    v59 = *(v54 + 8);
    *(v0 + 272) = v59;
    *(v0 + 280) = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v59(v53, v55);
    v60 = swift_task_alloc();
    *(v0 + 288) = v60;
    *v60 = v0;
    v60[1] = sub_2585120E4;
    v30 = *(v0 + 184);
    v28 = *(v0 + 176);
    v29 = v0 + 64;
    v31 = v58;

    return MEMORY[0x2822008C8](v28, v29, v30, v31);
  }

LABEL_13:

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_2585120E4()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    (*(v2 + 272))(*(v2 + 176), *(v2 + 152));
    v3 = sub_258512B4C;
  }

  else
  {
    v5 = *(v2 + 192);
    v4 = *(v2 + 200);
    v6 = *(v2 + 184);
    (*(v2 + 272))(*(v2 + 176), *(v2 + 152));
    (*(v5 + 8))(v4, v6);
    v3 = sub_25851223C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25851223C()
{
  v67 = v0;
  v1 = *(v0 + 256);

  sub_258513040(v1);
  if (sub_25853376C())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      if (qword_27F92F8F0 != -1)
      {
        swift_once();
      }

      v4 = sub_258532A4C();
      __swift_project_value_buffer(v4, qword_27F93D020);

      v5 = sub_258532A2C();
      v6 = sub_2585338EC();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v66 = v8;
        *v7 = 136315138;
        *(v0 + 120) = v3;
        type metadata accessor for TimeSyncHeartbeat();
        sub_258512FF8(&qword_27F9318B0, v9, type metadata accessor for TimeSyncHeartbeat, &unk_25853EEB4);
        v10 = sub_258533DFC();
        v12 = sub_2584713B0(v10, v11, &v66);

        *(v7 + 4) = v12;
        _os_log_impl(&dword_25845E000, v5, v6, "%s task cancelled", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        MEMORY[0x259C82900](v8, -1, -1);
        MEMORY[0x259C82900](v7, -1, -1);
      }

      else
      {
      }
    }

    goto LABEL_13;
  }

  v13 = swift_weakLoadStrong();
  *(v0 + 264) = v13;
  if (v13)
  {
    v14 = v13;
    v15 = [*(*__swift_project_boxed_opaque_existential_1((v13 + 16) *(v13 + 40)) + 16)];
    v16 = mach_absolute_time();
    v17 = [*(*__swift_project_boxed_opaque_existential_1(v14 + 2 v14[5]) + 16)];
    v18 = [*(*__swift_project_boxed_opaque_existential_1(v14 + 2 v14[5]) + 16)];
    v19 = v18;
    if (v18 >= 3)
    {
      sub_258533B8C();
      *(v0 + 88) = 0;
      *(v0 + 96) = 0xE000000000000000;
      MEMORY[0x259C81500](0xD000000000000014, 0x80000002585428E0);
      *(v0 + 84) = v19;
      type metadata accessor for TSClockLockState(0);
      sub_258533C8C();
      return sub_258533C9C();
    }

    v21 = *(v0 + 248);
    v20 = *(v0 + 256);
    v62 = v18;
    v64 = v16;
    v65 = v15;
    *v20 = v15;
    v20[1] = v16;
    v63 = v17;
    v20[2] = v17;
    v20[3] = v18;
    swift_storeEnumTagMultiPayload();
    sub_2584D6A6C(v20, v21);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v23 = *v21;
    v24 = *(v0 + 248);
    if (EnumCaseMultiPayload == 1)
    {
      v26 = *(v0 + 216);
      v25 = *(v0 + 224);
      v27 = *(v0 + 208);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F930DE8, &qword_25853BED0);
      v29 = (*(v26 + 32))(v25, v24 + *(v28 + 48), v27);
      if (v23 < 0)
      {
        __break(1u);
        return MEMORY[0x2822008C8](v29, v30, v31, v32);
      }

      v34 = *(v0 + 216);
      v33 = *(v0 + 224);
      v35 = *(v0 + 208);
      sub_25853397C();
      sub_2585339DC();
      (*(v34 + 8))(v33, v35);
    }

    sub_2584D6A6C(*(v0 + 256), *(v0 + 240));
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = *(v0 + 240);
      v39 = *(v0 + 208);
      v40 = *(v0 + 216);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F930DE8, &qword_25853BED0);
      (*(v40 + 8))(v38 + *(v41 + 48), v39);
    }

    kdebug_trace();
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v42 = sub_258532A4C();
    __swift_project_value_buffer(v42, qword_27F93D020);

    v43 = sub_258532A2C();
    v44 = sub_2585338EC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 136316162;
      *(v0 + 128) = v46;
      *(v0 + 136) = v14;
      type metadata accessor for TimeSyncHeartbeat();
      sub_258512FF8(&qword_27F9318B0, v47, type metadata accessor for TimeSyncHeartbeat, &unk_25853EEB4);
      v48 = sub_258533DFC();
      v50 = sub_2584713B0(v48, v49, (v0 + 128));

      *(v45 + 4) = v50;
      *(v45 + 12) = 2048;
      *(v45 + 14) = v65;
      *(v45 + 22) = 2048;
      *(v45 + 24) = v64;
      *(v45 + 32) = 2048;
      *(v45 + 34) = v63;
      *(v45 + 42) = 2080;
      if (v62)
      {
        if (v62 == 1)
        {
          v51 = 0xE700000000000000;
          v52 = 0x676E696B636F4CLL;
        }

        else
        {
          v51 = 0xE600000000000000;
          v52 = 0x64656B636F4CLL;
        }
      }

      else
      {
        v51 = 0xEB00000000676E69;
        v52 = 0x6B636F6C20746F4ELL;
      }

      v53 = sub_2584713B0(v52, v51, (v0 + 128));

      *(v45 + 44) = v53;
      _os_log_impl(&dword_25845E000, v43, v44, "%s leader: %llu, machTime: %llu, domainTime: %llu, lockState: %s", v45, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v46, -1, -1);
      MEMORY[0x259C82900](v45, -1, -1);
    }

    v55 = *(v0 + 160);
    v54 = *(v0 + 168);
    v56 = *(v0 + 152);
    v58 = v14[7];
    v57 = v14[8];
    sub_258533E8C();
    *(v0 + 104) = v58;
    *(v0 + 112) = v57;
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    *(v0 + 80) = 1;
    v59 = sub_258512FF8(&qword_27F930428, 255, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_258533E6C();
    sub_258512FF8(&qword_27F930430, 255, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_258533C7C();
    v60 = *(v55 + 8);
    *(v0 + 272) = v60;
    *(v0 + 280) = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v60(v54, v56);
    v61 = swift_task_alloc();
    *(v0 + 288) = v61;
    *v61 = v0;
    v61[1] = sub_2585120E4;
    v31 = *(v0 + 184);
    v29 = *(v0 + 176);
    v30 = v0 + 64;
    v32 = v59;

    return MEMORY[0x2822008C8](v29, v30, v31, v32);
  }

LABEL_13:

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_258512B4C()
{
  v17 = v0;
  v1 = v0[37];
  v2 = v0[32];
  (*(v0[24] + 8))(v0[25], v0[23]);

  sub_258513040(v2);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_27F92F8F0 != -1)
    {
      swift_once();
    }

    v5 = sub_258532A4C();
    __swift_project_value_buffer(v5, qword_27F93D020);

    v6 = sub_258532A2C();
    v7 = sub_2585338EC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136315138;
      v0[15] = v4;
      type metadata accessor for TimeSyncHeartbeat();
      sub_258512FF8(&qword_27F9318B0, v10, type metadata accessor for TimeSyncHeartbeat, &unk_25853EEB4);
      v11 = sub_258533DFC();
      v13 = sub_2584713B0(v11, v12, &v16);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_25845E000, v6, v7, "%s task cancelled", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x259C82900](v9, -1, -1);
      MEMORY[0x259C82900](v8, -1, -1);
    }

    else
    {
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_258512DE0()
{
  sub_258533B8C();
  MEMORY[0x259C81500](0xD000000000000012, 0x8000000258542880);
  type metadata accessor for TimeSyncHeartbeat();
  sub_258512FF8(&qword_27F9318A8, v0, type metadata accessor for TimeSyncHeartbeat, &unk_25853EEEC);
  sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_258512ECC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258512F04()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_258512F44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258464F5C;

  return sub_258511600(a1, v4, v5, v6);
}

uint64_t sub_258512FF8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_258513040(uint64_t a1)
{
  v2 = type metadata accessor for Signpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MediaStreamDirection.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

MediaContinuityKit::MediaStreamDirection_optional __swiftcall MediaStreamDirection.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2585130CC()
{
  sub_258533EEC();
  sub_258533F0C();
  return sub_258533F2C();
}

uint64_t sub_258513154(uint64_t a1)
{
  sub_258533EEC();
  sub_258533F0C();
  return sub_258533F2C();
}

_DWORD *sub_2585131A0@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
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

void sub_2585131C0(int *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t MediaStreamDirection.description.getter()
{
  if (*v0)
  {
    return 0x65766965636572;
  }

  else
  {
    return 1684956531;
  }
}

unint64_t sub_258513210()
{
  result = qword_27F9318B8;
  if (!qword_27F9318B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9318B8);
  }

  return result;
}

uint64_t sub_258513264()
{
  if (*v0)
  {
    return 0x65766965636572;
  }

  else
  {
    return 1684956531;
  }
}

uint64_t sub_2585132A8()
{
  v1 = *v0;
  sub_258533EEC();
  MEMORY[0x259C81F60](v1);
  return sub_258533F2C();
}

uint64_t sub_25851331C(uint64_t a1)
{
  v2 = *v1;
  sub_258533EEC();
  MEMORY[0x259C81F60](v2);
  return sub_258533F2C();
}

unint64_t *sub_258513360@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_258513384()
{
  v1 = 0x676E696B636F4CLL;
  if (*v0 != 1)
  {
    v1 = 0x64656B636F4CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B636F6C20746F4ELL;
  }
}

unint64_t sub_2585133F8()
{
  result = qword_27F9318C0[0];
  if (!qword_27F9318C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F9318C0);
  }

  return result;
}

uint64_t sub_2585134B4(unsigned __int8 a1)
{
  if (a1 < 2u)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

void *sub_2585134D0()
{

  sub_258464B24(*(v0 + 136), *(v0 + 144));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_258513510()
{
  sub_2585134D0();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_258513574(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2585135CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2584AC3B8(a3, v25 - v10, &qword_27F92FB78, &qword_2585368F0);
  v12 = sub_25853368C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_258465168(v11, &qword_27F92FB78, &qword_2585368F0);
  }

  else
  {
    sub_25853367C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25853362C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25853348C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_258465168(a3, &qword_27F92FB78, &qword_2585368F0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_258465168(a3, &qword_27F92FB78, &qword_2585368F0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2585138CC(unsigned __int8 a1, char a2)
{
  if (a2)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v4 = sub_25853341C();
    v5 = [v3 initWithString_];

    [v5 UTF8String];
    v6 = v5;
    if (!os_variant_allows_internal_security_policies())
    {
      return 2;
    }
  }

  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = sub_25853341C();

    v9 = [v7 objectForKey_];

    if (v9)
    {
      sub_258533A5C();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FD80, &unk_25853F3F0);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_258513AE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258472CF8;

  return sub_2585154CC(a1);
}

uint64_t sub_258513B98(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v2[11] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319D0, &qword_25853F3A0);
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v2[14] = *(v4 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258513CB0, v1, 0);
}

uint64_t sub_258513CB0()
{
  v1 = v0[10];
  if (*(v1 + 121) == 1)
  {
    *(v1 + 121) = 2;
    sub_25852FFD0(1);
    v2 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection + 24);
    v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection), v2);
    v10 = (*(v3 + 64) + **(v3 + 64));
    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_258513EBC;
    v5 = v0[16];

    return v10(v5, v2, v3);
  }

  else
  {
    sub_258476AE4();
    v7 = swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v0[28] = v7;
    v9 = swift_task_alloc();
    v0[29] = v9;
    *v9 = v0;
    v9[1] = sub_2585150C4;

    return sub_258519188(v7);
  }
}

uint64_t sub_258513EBC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_258514374;
  }

  else
  {
    v4 = sub_258513FE8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258513FE8()
{
  v1 = v0[10];
  if (*(v1 + 121) == 2)
  {
    v2 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer;
    v0[19] = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer;
    if (*(v1 + v2) == 2)
    {
      v3 = v0[15];
      v4 = v0[16];
      v6 = v0[13];
      v5 = v0[14];
      v7 = v0[11];
      v8 = v0[12];
      v9 = sub_25853368C();
      (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
      (*(v6 + 16))(v3, v4, v8);
      v10 = sub_25852DC88(&qword_27F930588, type metadata accessor for AudioStreamAVConference, &unk_25853F878);
      v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v12 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
      v13 = swift_allocObject();
      *(v13 + 16) = v1;
      *(v13 + 24) = v10;
      (*(v6 + 32))(v13 + v11, v3, v8);
      *(v13 + v12) = v1;
      swift_retain_n();
      *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnectionEventMonitor) = sub_258476C88(0, 0, v7, &unk_25853F4E0, v13);

      v14 = swift_task_alloc();
      v0[22] = v14;
      *v14 = v0;
      v14[1] = sub_258514554;

      return sub_25851C6C4();
    }

    else
    {
      v23 = swift_task_alloc();
      v0[20] = v23;
      *v23 = v0;
      v23[1] = sub_258514428;

      return sub_25851E8FC();
    }
  }

  else
  {
    v16 = v0[16];
    v17 = v0[12];
    v18 = v0[13];
    sub_258476AE4();
    v20 = swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v21 = 4;
    }

    else
    {
      v21 = 5;
    }

    *v19 = v21;
    swift_willThrow();
    (*(v18 + 8))(v16, v17);
    v0[28] = v20;
    v22 = swift_task_alloc();
    v0[29] = v22;
    *v22 = v0;
    v22[1] = sub_2585150C4;

    return sub_258519188(v20);
  }
}

uint64_t sub_258514374()
{
  v1 = v0[18];
  v0[28] = v1;
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_2585150C4;

  return sub_258519188(v1);
}

uint64_t sub_258514428()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_258515400;
  }

  else
  {
    v4 = sub_258515268;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258514554()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_258514680;
  }

  else
  {
    v4 = sub_25852E2A8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258514680()
{
  (*(v0[13] + 8))(v0[16], v0[12]);
  v1 = v0[23];
  v0[28] = v1;
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_2585150C4;

  return sub_258519188(v1);
}

uint64_t sub_25851474C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_258514A10;
  }

  else
  {
    v4 = sub_258514878;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258514878()
{
  v1 = v0[10];
  if (*(v1 + 121) == 2)
  {
    v2 = swift_task_alloc();
    v0[26] = v2;
    *v2 = v0;
    v2[1] = sub_258514ADC;

    return sub_258520628();
  }

  else
  {
    v4 = v0[16];
    v5 = v0[12];
    v6 = v0[13];
    sub_258476AE4();
    v8 = swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v9 = 4;
    }

    else
    {
      v9 = 5;
    }

    *v7 = v9;
    swift_willThrow();
    (*(v6 + 8))(v4, v5);
    v0[28] = v8;
    v10 = swift_task_alloc();
    v0[29] = v10;
    *v10 = v0;
    v10[1] = sub_2585150C4;

    return sub_258519188(v8);
  }
}

uint64_t sub_258514A10()
{
  (*(v0[13] + 8))(v0[16], v0[12]);
  v1 = v0[25];
  v0[28] = v1;
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_2585150C4;

  return sub_258519188(v1);
}

uint64_t sub_258514ADC()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_258514FF8;
  }

  else
  {
    v4 = sub_258514C08;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258514C08()
{
  v1 = *(v0 + 80);
  if (*(v1 + 121) == 2)
  {
    v2 = *(v0 + 152);
    *(v1 + 121) = 4;
    sub_25852FFD0(2);
    if (*(v1 + v2) != 2)
    {
      v3 = *(v0 + 120);
      v4 = *(v0 + 128);
      v6 = *(v0 + 104);
      v5 = *(v0 + 112);
      v7 = *(v0 + 88);
      v8 = *(v0 + 96);
      v9 = *(v0 + 80);
      v10 = sub_25853368C();
      (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
      (*(v6 + 16))(v3, v4, v8);
      v11 = sub_25852DC88(&qword_27F930588, type metadata accessor for AudioStreamAVConference, &unk_25853F878);
      v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
      v14 = swift_allocObject();
      *(v14 + 16) = v9;
      *(v14 + 24) = v11;
      (*(v6 + 32))(v14 + v12, v3, v8);
      *(v14 + v13) = v9;
      swift_retain_n();
      *(v9 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnectionEventMonitor) = sub_258476C88(0, 0, v7, &unk_25853F500, v14);
    }

    v15 = *(v0 + 128);
    v16 = *(v0 + 96);
    v17 = *(v0 + 104);
    v18 = *(v0 + 80);
    v19 = *(v0 + 72);
    *(v0 + 40) = &type metadata for AudioStreamIdentifier;
    *(v0 + 48) = sub_2584ABB2C();
    *(v0 + 65) = 5;
    __swift_project_boxed_opaque_existential_1((v18 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider), *(v18 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider + 24));
    v20 = off_286990988;
    type metadata accessor for TelemetryProvider(0);
    v20(v0 + 16);
    (*(v17 + 8))(v15, v16);
    sub_2584A57D8(v0 + 16);
    v21 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_eventStream;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F8, &qword_25853F8B0);
    (*(*(v22 - 8) + 16))(v19, v18 + v21, v22);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = *(v0 + 128);
    v26 = *(v0 + 96);
    v27 = *(v0 + 104);
    sub_258476AE4();
    v29 = swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v30 = 4;
    }

    else
    {
      v30 = 5;
    }

    *v28 = v30;
    swift_willThrow();
    (*(v27 + 8))(v25, v26);
    *(v0 + 224) = v29;
    v31 = swift_task_alloc();
    *(v0 + 232) = v31;
    *v31 = v0;
    v31[1] = sub_2585150C4;

    return sub_258519188(v29);
  }
}

uint64_t sub_258514FF8()
{
  (*(v0[13] + 8))(v0[16], v0[12]);
  v1 = v0[27];
  v0[28] = v1;
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_2585150C4;

  return sub_258519188(v1);
}

uint64_t sub_2585150C4()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_2585151D4, v1, 0);
}

uint64_t sub_2585151D4(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_258515268()
{
  v1 = v0[10];
  if (*(v1 + 121) == 2)
  {
    v2 = swift_task_alloc();
    v0[24] = v2;
    *v2 = v0;
    v2[1] = sub_25851474C;

    return sub_258530B2C();
  }

  else
  {
    v4 = v0[16];
    v5 = v0[12];
    v6 = v0[13];
    sub_258476AE4();
    v8 = swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v9 = 4;
    }

    else
    {
      v9 = 5;
    }

    *v7 = v9;
    swift_willThrow();
    (*(v6 + 8))(v4, v5);
    v0[28] = v8;
    v10 = swift_task_alloc();
    v0[29] = v10;
    *v10 = v0;
    v10[1] = sub_2585150C4;

    return sub_258519188(v8);
  }
}

uint64_t sub_258515400()
{
  (*(v0[13] + 8))(v0[16], v0[12]);
  v1 = v0[21];
  v0[28] = v1;
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_2585150C4;

  return sub_258519188(v1);
}

uint64_t sub_2585154CC(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v2[11] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319D0, &qword_25853F3A0);
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v2[14] = *(v4 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference(0);
  v2[17] = sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v6 = sub_25853362C();
  v2[18] = v6;
  v2[19] = v5;

  return MEMORY[0x2822009F8](sub_25851563C, v6, v5);
}

uint64_t sub_25851563C()
{
  v1 = v0[10];
  if (*(v1 + 232) == 1)
  {
    *(v1 + 232) = 2;
    sub_2585084C8(1);
    v2 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 24);
    v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection), v2);
    v10 = (*(v3 + 64) + **(v3 + 64));
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_258515848;
    v5 = v0[16];

    return v10(v5, v2, v3);
  }

  else
  {
    sub_258476AE4();
    v7 = swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v0[31] = v7;
    v9 = swift_task_alloc();
    v0[32] = v9;
    *v9 = v0;
    v9[1] = sub_258516A6C;

    return sub_258519A34(v7);
  }
}

uint64_t sub_258515848()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_258515CDC;
  }

  else
  {
    v5 = sub_258515984;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_258515984()
{
  v1 = v0[10];
  if (*(v1 + 232) == 2)
  {
    v2 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer;
    v0[22] = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer;
    if (*(v1 + v2) == 2)
    {
      v3 = v0[16];
      v4 = v0[17];
      v6 = v0[14];
      v5 = v0[15];
      v7 = v0[12];
      v8 = v0[13];
      v9 = v0[11];
      v10 = sub_25853368C();
      (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
      (*(v8 + 16))(v5, v3, v7);
      v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = v1;
      *(v12 + 24) = v4;
      (*(v8 + 32))(v12 + v11, v5, v7);
      *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
      swift_retain_n();
      *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnectionEventMonitor) = sub_258476C88(0, 0, v9, &unk_25853F3B8, v12);

      v13 = swift_task_alloc();
      v0[25] = v13;
      *v13 = v0;
      v13[1] = sub_258515ECC;

      return sub_25851D7CC();
    }

    else
    {
      v22 = swift_task_alloc();
      v0[23] = v22;
      *v22 = v0;
      v22[1] = sub_258515D90;

      return sub_25851F76C();
    }
  }

  else
  {
    v15 = v0[16];
    v16 = v0[12];
    v17 = v0[13];
    sub_258476AE4();
    v19 = swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v20 = 4;
    }

    else
    {
      v20 = 5;
    }

    *v18 = v20;
    swift_willThrow();
    (*(v17 + 8))(v15, v16);
    v0[31] = v19;
    v21 = swift_task_alloc();
    v0[32] = v21;
    *v21 = v0;
    v21[1] = sub_258516A6C;

    return sub_258519A34(v19);
  }
}

uint64_t sub_258515CDC()
{
  v1 = v0[21];
  v0[31] = v1;
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_258516A6C;

  return sub_258519A34(v1);
}

uint64_t sub_258515D90()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_258516DB8;
  }

  else
  {
    v5 = sub_258516C20;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_258515ECC()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_258516008;
  }

  else
  {
    v5 = sub_25852E2AC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_258516008()
{
  (*(v0[13] + 8))(v0[16], v0[12]);
  v1 = v0[26];
  v0[31] = v1;
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_258516A6C;

  return sub_258519A34(v1);
}

uint64_t sub_2585160D4()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_2585163E0;
  }

  else
  {
    v5 = sub_258516210;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_258516210()
{
  v1 = v0[10];
  if (*(v1 + 232) != 2)
  {
    v4 = v0[16];
    v5 = v0[12];
    v6 = v0[13];
    sub_258476AE4();
    v3 = swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }

    *v7 = v8;
    swift_willThrow();
    (*(v6 + 8))(v4, v5);
    goto LABEL_8;
  }

  v2 = v0[28];
  sub_25850A63C();
  if (v2)
  {
    v3 = v2;
    (*(v0[13] + 8))(v0[16], v0[12]);
LABEL_8:
    v0[31] = v3;
    v9 = swift_task_alloc();
    v0[32] = v9;
    *v9 = v0;
    v9[1] = sub_258516A6C;

    return sub_258519A34(v3);
  }

  v11 = swift_task_alloc();
  v0[29] = v11;
  *v11 = v0;
  v11[1] = sub_2585164AC;

  return sub_258521650();
}

uint64_t sub_2585163E0()
{
  (*(v0[13] + 8))(v0[16], v0[12]);
  v1 = v0[28];
  v0[31] = v1;
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_258516A6C;

  return sub_258519A34(v1);
}

uint64_t sub_2585164AC()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_2585169A0;
  }

  else
  {
    v5 = sub_2585165E8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2585165E8()
{
  v1 = *(v0 + 80);
  if (*(v1 + 232) == 2)
  {
    v2 = *(v0 + 176);
    *(v1 + 232) = 4;
    sub_2585084C8(2);
    if (*(v1 + v2) != 2)
    {
      v3 = *(v0 + 128);
      v4 = *(v0 + 136);
      v6 = *(v0 + 112);
      v5 = *(v0 + 120);
      v7 = *(v0 + 96);
      v8 = *(v0 + 104);
      v10 = *(v0 + 80);
      v9 = *(v0 + 88);
      v11 = sub_25853368C();
      (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
      (*(v8 + 16))(v5, v3, v7);
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = v10;
      *(v13 + 24) = v4;
      (*(v8 + 32))(v13 + v12, v5, v7);
      *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
      swift_retain_n();
      *(v10 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnectionEventMonitor) = sub_258476C88(0, 0, v9, &unk_25853F3D8, v13);
    }

    v14 = *(v0 + 128);
    v15 = *(v0 + 96);
    v16 = *(v0 + 104);
    v17 = *(v0 + 80);
    v18 = *(v0 + 72);
    *(v0 + 40) = &type metadata for VideoStreamIdentifier;
    *(v0 + 48) = sub_2584AC364();
    *(v0 + 65) = 5;
    __swift_project_boxed_opaque_existential_1((v17 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider), *(v17 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider + 24));
    v19 = off_286990988;
    type metadata accessor for TelemetryProvider(0);
    v19(v0 + 16);
    (*(v16 + 8))(v14, v15);
    sub_2584A57D8(v0 + 16);
    v20 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_eventStream;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931810, &unk_25853EB70);
    (*(*(v21 - 8) + 16))(v18, v17 + v20, v21);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = *(v0 + 128);
    v25 = *(v0 + 96);
    v26 = *(v0 + 104);
    sub_258476AE4();
    v28 = swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v29 = 4;
    }

    else
    {
      v29 = 5;
    }

    *v27 = v29;
    swift_willThrow();
    (*(v26 + 8))(v24, v25);
    *(v0 + 248) = v28;
    v30 = swift_task_alloc();
    *(v0 + 256) = v30;
    *v30 = v0;
    v30[1] = sub_258516A6C;

    return sub_258519A34(v28);
  }
}

uint64_t sub_2585169A0()
{
  (*(v0[13] + 8))(v0[16], v0[12]);
  v1 = v0[30];
  v0[31] = v1;
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_258516A6C;

  return sub_258519A34(v1);
}

uint64_t sub_258516A6C()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_258516B8C, v3, v2);
}

uint64_t sub_258516B8C(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_258516C20()
{
  v1 = v0[10];
  if (*(v1 + 232) == 2)
  {
    v2 = swift_task_alloc();
    v0[27] = v2;
    *v2 = v0;
    v2[1] = sub_2585160D4;

    return sub_258509514();
  }

  else
  {
    v4 = v0[16];
    v5 = v0[12];
    v6 = v0[13];
    sub_258476AE4();
    v8 = swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v9 = 4;
    }

    else
    {
      v9 = 5;
    }

    *v7 = v9;
    swift_willThrow();
    (*(v6 + 8))(v4, v5);
    v0[31] = v8;
    v10 = swift_task_alloc();
    v0[32] = v10;
    *v10 = v0;
    v10[1] = sub_258516A6C;

    return sub_258519A34(v8);
  }
}

uint64_t sub_258516DB8()
{
  (*(v0[13] + 8))(v0[16], v0[12]);
  v1 = v0[24];
  v0[31] = v1;
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_258516A6C;

  return sub_258519A34(v1);
}

uint64_t sub_258516E84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2585176A4();
}

uint64_t sub_258516F24()
{
  v1[21] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319C8, &unk_25853F360);
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258516FF0, v0, 0);
}

uint64_t sub_258516FF0()
{
  v20 = v0;
  v1 = *(v0 + 168);
  if (*(v1 + 121) > 4u)
  {

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {

    v2 = sub_258532A2C();
    v3 = sub_2585338EC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v19 = v5;
      *v4 = 136315138;

      *(v4 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, &v19);
      _os_log_impl(&dword_25845E000, v2, v3, "Invalidating %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x259C82900](v5, -1, -1);
      MEMORY[0x259C82900](v4, -1, -1);
    }

    else
    {
    }

    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v10 = *(v0 + 168);
    v11 = *(v0 + 176);
    v12 = *(v1 + 121);
    *(v1 + 121) = 5;
    sub_25852FFD0(v12);
    *(v0 + 136) = &type metadata for AudioStreamIdentifier;
    *(v0 + 144) = sub_2584ABB2C();
    *(v0 + 161) = 6;
    __swift_project_boxed_opaque_existential_1((v10 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider), *(v10 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider + 24));
    v13 = off_286990988;
    type metadata accessor for TelemetryProvider(0);
    v13(v0 + 112);
    sub_2584A57D8(v0 + 112);
    *(v0 + 162) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
    sub_2585336CC();
    (*(v9 + 8))(v8, v11);
    v14 = (v10 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection);
    v15 = *(v10 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection + 24);
    v16 = *(v10 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection + 32);
    __swift_project_boxed_opaque_existential_1(v14, v15);
    *(v0 + 16) = 0;
    *(v0 + 88) = 0;
    *(v0 + 104) = 0;
    v18 = (*(v16 + 80) + **(v16 + 80));
    v17 = swift_task_alloc();
    *(v0 + 200) = v17;
    *v17 = v0;
    v17[1] = sub_25851737C;

    return v18(v0 + 16, v15, v16);
  }
}

uint64_t sub_25851737C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 168);

    v4 = v3;
  }

  else
  {
    v4 = *(v2 + 168);
  }

  return MEMORY[0x2822009F8](sub_2585174B0, v4, 0);
}

uint64_t sub_2585174B0()
{
  sub_258476AE4();
  v1 = swift_allocError();
  *(v0 + 208) = v1;
  *v2 = 4;
  v3 = swift_task_alloc();
  *(v0 + 216) = v3;
  *v3 = v0;
  v3[1] = sub_258517570;

  return sub_25851A32C(v1);
}

uint64_t sub_258517570()
{
  v1 = *(*v0 + 208);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2585176A4()
{
  v1[21] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319C8, &unk_25853F360);
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference(0);
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v4 = sub_25853362C();
  v1[25] = v4;
  v1[26] = v3;

  return MEMORY[0x2822009F8](sub_2585177C4, v4, v3);
}

uint64_t sub_2585177C4()
{
  v20 = v0;
  v1 = *(v0 + 168);
  if (*(v1 + 232) > 4u)
  {

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {

    v2 = sub_258532A2C();
    v3 = sub_2585338EC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v19 = v5;
      *v4 = 136315138;

      *(v4 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v19);
      _os_log_impl(&dword_25845E000, v2, v3, "Invalidating %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x259C82900](v5, -1, -1);
      MEMORY[0x259C82900](v4, -1, -1);
    }

    else
    {
    }

    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v10 = *(v0 + 168);
    v11 = *(v0 + 176);
    v12 = *(v1 + 232);
    *(v1 + 232) = 5;
    sub_2585084C8(v12);
    *(v0 + 136) = &type metadata for VideoStreamIdentifier;
    *(v0 + 144) = sub_2584AC364();
    *(v0 + 161) = 6;
    __swift_project_boxed_opaque_existential_1((v10 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider), *(v10 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider + 24));
    v13 = off_286990988;
    type metadata accessor for TelemetryProvider(0);
    v13(v0 + 112);
    sub_2584A57D8(v0 + 112);
    *(v0 + 162) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
    sub_2585336CC();
    (*(v9 + 8))(v8, v11);
    v14 = (v10 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection);
    v15 = *(v10 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 24);
    v16 = *(v10 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 32);
    __swift_project_boxed_opaque_existential_1(v14, v15);
    *(v0 + 16) = 0;
    *(v0 + 88) = 0;
    *(v0 + 104) = 0;
    v18 = (*(v16 + 80) + **(v16 + 80));
    v17 = swift_task_alloc();
    *(v0 + 216) = v17;
    *v17 = v0;
    v17[1] = sub_258517B50;

    return v18(v0 + 16, v15, v16);
  }
}

uint64_t sub_258517B50()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 200);
  v4 = *(v2 + 208);

  return MEMORY[0x2822009F8](sub_258517C74, v3, v4);
}

uint64_t sub_258517C74()
{
  sub_258476AE4();
  v1 = swift_allocError();
  *(v0 + 224) = v1;
  *v2 = 4;
  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  *v3 = v0;
  v3[1] = sub_258517D34;

  return sub_25851B44C(v1);
}

uint64_t sub_258517D34()
{
  v1 = *(*v0 + 224);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_258517E68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_258518360();
}

uint64_t sub_258517F28()
{
  v1 = v0[2];
  if (!sub_258472CF0(*(v1 + 121), &unk_28698BAF0) || (v2 = v0[2], v3 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_isPaused, v0[3] = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_isPaused, (*(v2 + v3) & 1) != 0))
  {
    sub_258476AE4();
    swift_allocError();
    *v4 = 0;
LABEL_4:
    swift_willThrow();
    v5 = v0[1];
LABEL_5:

    return v5();
  }

  v7 = v2 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream;
  v8 = *(v2 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream);
  v0[4] = v8;
  if (!v8)
  {
    sub_258476AE4();
    swift_allocError();
    *v13 = 8;
    goto LABEL_4;
  }

  if (*(v1 + 121) != 4)
  {
    *(v2 + v3) = 1;
    v5 = v0[1];
    goto LABEL_5;
  }

  v9 = *(v7 + 8);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 32);
  swift_unknownObjectRetain();
  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  v0[5] = v12;
  *v12 = v0;
  v12[1] = sub_258518160;

  return v14(ObjectType, v9);
}

uint64_t sub_258518160()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_2585182FC;
  }

  else
  {
    v4 = sub_25851828C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25851828C()
{
  swift_unknownObjectRelease();
  *(v0[2] + v0[3]) = 1;
  v1 = v0[1];

  return v1();
}

uint64_t sub_2585182FC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258518360()
{
  v1[2] = v0;
  type metadata accessor for VideoStreamAVConference(0);
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v3 = sub_25853362C();
  v1[3] = v3;
  v1[4] = v2;

  return MEMORY[0x2822009F8](sub_258518418, v3, v2);
}

uint64_t sub_258518418()
{
  v1 = v0[2];
  if (!sub_258472CF0(*(v1 + 232), &unk_28698BAC8) || (v2 = v0[2], v3 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_isPaused, v0[5] = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_isPaused, (*(v2 + v3) & 1) != 0))
  {
    sub_258476AE4();
    swift_allocError();
    *v4 = 0;
LABEL_4:
    swift_willThrow();
    v5 = v0[1];
LABEL_5:

    return v5();
  }

  v7 = v2 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream;
  v8 = *(v2 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream);
  v0[6] = v8;
  if (!v8)
  {
    sub_258476AE4();
    swift_allocError();
    *v13 = 8;
    goto LABEL_4;
  }

  if (*(v1 + 232) != 4)
  {
    *(v2 + v3) = 1;
    v5 = v0[1];
    goto LABEL_5;
  }

  v9 = *(v7 + 8);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 32);
  swift_unknownObjectRetain();
  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_258518650;

  return v14(ObjectType, v9);
}

uint64_t sub_258518650()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 32);
  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_258518800;
  }

  else
  {
    v5 = sub_25851878C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25851878C()
{
  swift_unknownObjectRelease();
  *(v0[2] + v0[5]) = 1;
  v1 = v0[1];

  return v1();
}

uint64_t sub_258518800()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258518864()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_258518CF0();
}

uint64_t sub_258518924()
{
  v1 = v0[2];
  if (!sub_258472CF0(*(v1 + 121), &unk_28698BB40) || (v2 = v0[2], v3 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_isPaused, v0[3] = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_isPaused, (*(v2 + v3) & 1) == 0))
  {
    sub_258476AE4();
    swift_allocError();
    *v11 = 0;
LABEL_9:
    swift_willThrow();
    v12 = v0[1];
    goto LABEL_10;
  }

  v4 = v2 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream;
  v5 = *(v2 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream);
  v0[4] = v5;
  if (!v5)
  {
    sub_258476AE4();
    swift_allocError();
    *v13 = 8;
    goto LABEL_9;
  }

  if (*(v1 + 121) == 4)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 40);
    swift_unknownObjectRetain();
    v14 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[5] = v9;
    *v9 = v0;
    v9[1] = sub_258518B58;

    return v14(ObjectType, v6);
  }

  *(v2 + v3) = 0;
  v12 = v0[1];
LABEL_10:

  return v12();
}

uint64_t sub_258518B58()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_25852E2D0;
  }

  else
  {
    v4 = sub_258518C84;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258518C84()
{
  swift_unknownObjectRelease();
  *(v0[2] + v0[3]) = 0;
  v1 = v0[1];

  return v1();
}

uint64_t sub_258518CF0()
{
  v1[2] = v0;
  type metadata accessor for VideoStreamAVConference(0);
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v3 = sub_25853362C();
  v1[3] = v3;
  v1[4] = v2;

  return MEMORY[0x2822009F8](sub_258518DA8, v3, v2);
}

uint64_t sub_258518DA8()
{
  v1 = v0[2];
  if (!sub_258472CF0(*(v1 + 232), &unk_28698BB18) || (v2 = v0[2], v3 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_isPaused, v0[5] = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_isPaused, (*(v2 + v3) & 1) == 0))
  {
    sub_258476AE4();
    swift_allocError();
    *v11 = 0;
LABEL_9:
    swift_willThrow();
    v12 = v0[1];
    goto LABEL_10;
  }

  v4 = v2 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream;
  v5 = *(v2 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream);
  v0[6] = v5;
  if (!v5)
  {
    sub_258476AE4();
    swift_allocError();
    *v13 = 8;
    goto LABEL_9;
  }

  if (*(v1 + 232) == 4)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 40);
    swift_unknownObjectRetain();
    v14 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v9[1] = sub_258518FDC;

    return v14(ObjectType, v6);
  }

  *(v2 + v3) = 0;
  v12 = v0[1];
LABEL_10:

  return v12();
}

uint64_t sub_258518FDC()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 32);
  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_25852E2D4;
  }

  else
  {
    v5 = sub_258519118;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_258519118()
{
  swift_unknownObjectRelease();
  *(v0[2] + v0[5]) = 0;
  v1 = v0[1];

  return v1();
}

uint64_t sub_258519188(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319C8, &unk_25853F360);
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258519254, v1, 0);
}

uint64_t sub_258519254()
{
  v30 = v0;
  v1 = *(v0 + 208);
  if (*(v1 + 121) > 4u)
  {

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v2 = *(v0 + 200);

    v3 = v2;
    v4 = sub_258532A2C();
    v5 = sub_2585338CC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 200);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v29 = v9;
      *v7 = 136315394;

      *(v7 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, &v29);
      *(v7 + 12) = 2112;
      v10 = v6;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v11;
      *v8 = v11;
      _os_log_impl(&dword_25845E000, v4, v5, "Interrupting %s, error:%@", v7, 0x16u);
      sub_258465168(v8, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x259C82900](v9, -1, -1);
      MEMORY[0x259C82900](v7, -1, -1);
    }

    else
    {
    }

    v15 = *(v0 + 224);
    v14 = *(v0 + 232);
    v17 = *(v0 + 208);
    v16 = *(v0 + 216);
    v18 = *(v0 + 200);
    v19 = *(v1 + 121);
    *(v1 + 121) = 6;
    sub_25852FFD0(v19);
    *(v0 + 136) = &type metadata for AudioStreamIdentifier;
    *(v0 + 144) = sub_2584ABB2C();
    *(v0 + 152) = v18;
    *(v0 + 161) = 7;
    __swift_project_boxed_opaque_existential_1((v17 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider), *(v17 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider + 24));
    v20 = off_286990988;
    v21 = v18;
    type metadata accessor for TelemetryProvider(0);
    v20(v0 + 112);
    sub_2584A57D8(v0 + 112);
    *(v0 + 162) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
    sub_2585336CC();
    (*(v15 + 8))(v14, v16);
    if (sub_25852D4DC(v18))
    {
      v22 = (*(v0 + 208) + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection);
      v23 = v22[3];
      v24 = v22[4];
      __swift_project_boxed_opaque_existential_1(v22, v23);
      swift_getErrorValue();
      *(v0 + 16) = sub_25852F0FC(*(v0 + 176), *(v0 + 184));
      *(v0 + 88) = 0;
      *(v0 + 104) = 0;
      v28 = (*(v24 + 80) + **(v24 + 80));
      v25 = swift_task_alloc();
      *(v0 + 240) = v25;
      *v25 = v0;
      v25[1] = sub_258519708;

      return v28(v0 + 16, v23, v24);
    }

    else
    {
      v26 = swift_task_alloc();
      *(v0 + 248) = v26;
      *v26 = v0;
      v26[1] = sub_258519924;
      v27 = *(v0 + 200);

      return sub_25851A32C(v27);
    }
  }
}

uint64_t sub_258519708()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = v2[26];

    return MEMORY[0x2822009F8](sub_258519890, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[31] = v5;
    *v5 = v3;
    v5[1] = sub_258519924;
    v6 = v2[25];

    return sub_25851A32C(v6);
  }
}

uint64_t sub_258519890()
{
  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v1[1] = sub_258519924;
  v2 = *(v0 + 200);

  return sub_25851A32C(v2);
}

uint64_t sub_258519924()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_258519A34(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319C8, &unk_25853F360);
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference(0);
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v5 = sub_25853362C();
  v2[30] = v5;
  v2[31] = v4;

  return MEMORY[0x2822009F8](sub_258519B54, v5, v4);
}

uint64_t sub_258519B54()
{
  v30 = v0;
  v1 = *(v0 + 208);
  if (*(v1 + 232) > 4u)
  {

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v2 = *(v0 + 200);

    v3 = v2;
    v4 = sub_258532A2C();
    v5 = sub_2585338CC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 200);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v29 = v9;
      *v7 = 136315394;

      *(v7 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v29);
      *(v7 + 12) = 2112;
      v10 = v6;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v11;
      *v8 = v11;
      _os_log_impl(&dword_25845E000, v4, v5, "Interrupting %s, error:%@", v7, 0x16u);
      sub_258465168(v8, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x259C82900](v9, -1, -1);
      MEMORY[0x259C82900](v7, -1, -1);
    }

    else
    {
    }

    v15 = *(v0 + 224);
    v14 = *(v0 + 232);
    v17 = *(v0 + 208);
    v16 = *(v0 + 216);
    v18 = *(v0 + 200);
    v19 = *(v1 + 232);
    *(v1 + 232) = 6;
    sub_2585084C8(v19);
    *(v0 + 136) = &type metadata for VideoStreamIdentifier;
    *(v0 + 144) = sub_2584AC364();
    *(v0 + 152) = v18;
    *(v0 + 161) = 7;
    __swift_project_boxed_opaque_existential_1((v17 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider), *(v17 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider + 24));
    v20 = off_286990988;
    v21 = v18;
    type metadata accessor for TelemetryProvider(0);
    v20(v0 + 112);
    sub_2584A57D8(v0 + 112);
    *(v0 + 162) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
    sub_2585336CC();
    (*(v15 + 8))(v14, v16);
    if (sub_25852D4DC(v18))
    {
      v22 = (*(v0 + 208) + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection);
      v23 = v22[3];
      v24 = v22[4];
      __swift_project_boxed_opaque_existential_1(v22, v23);
      swift_getErrorValue();
      *(v0 + 16) = sub_25852F0FC(*(v0 + 176), *(v0 + 184));
      *(v0 + 88) = 0;
      *(v0 + 104) = 0;
      v28 = (*(v24 + 80) + **(v24 + 80));
      v25 = swift_task_alloc();
      *(v0 + 256) = v25;
      *v25 = v0;
      v25[1] = sub_25851A008;

      return v28(v0 + 16, v23, v24);
    }

    else
    {
      v26 = swift_task_alloc();
      *(v0 + 264) = v26;
      *v26 = v0;
      v26[1] = sub_25851A21C;
      v27 = *(v0 + 200);

      return sub_25851B44C(v27);
    }
  }
}

uint64_t sub_25851A008()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = v2[30];
    v5 = v2[31];

    return MEMORY[0x2822009F8](sub_25851A188, v4, v5);
  }

  else
  {
    v6 = swift_task_alloc();
    v2[33] = v6;
    *v6 = v3;
    v6[1] = sub_25851A21C;
    v7 = v2[25];

    return sub_25851B44C(v7);
  }
}

uint64_t sub_25851A188()
{
  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v1[1] = sub_25851A21C;
  v2 = *(v0 + 200);

  return sub_25851B44C(v2);
}

uint64_t sub_25851A21C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25851A32C(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9317B0, &qword_25853EA00);
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931820, &unk_25853F380);
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25851A430, v1, 0);
}

uint64_t sub_25851A430()
{
  v1 = (*(v0 + 184) + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 72) + **(v3 + 72));
  v4 = swift_task_alloc();
  *(v0 + 224) = v4;
  *v4 = v0;
  v4[1] = sub_25851A564;

  return v6(v2, v3);
}

uint64_t sub_25851A564()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_25851A674, v1, 0);
}

uint64_t sub_25851A674()
{
  v1 = *(v0 + 184);
  v2 = v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream;
  v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream);
  *(v0 + 232) = v3;
  if (v3)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 48);
    swift_unknownObjectRetain();
    v29 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v0 + 240) = v7;
    *v7 = v0;
    v7[1] = sub_25851AB7C;

    return v29(ObjectType, v4);
  }

  else
  {
    v9 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistration;
    swift_beginAccess();
    sub_2584AC3B8(v1 + v9, v0 + 16, &qword_27F931828, &unk_25853EB90);
    if (*(v0 + 40))
    {
      sub_258464C30(v0 + 16, v0 + 56);
      sub_258465168(v0 + 16, &qword_27F931828, &unk_25853EB90);
      v10 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      *(v0 + 248) = v10;
      v11 = *v10;

      return MEMORY[0x2822009F8](sub_25851ACD8, v11, 0);
    }

    else
    {
      sub_258465168(v0 + 16, &qword_27F931828, &unk_25853EB90);
      v12 = *(v0 + 184);
      if (*(v12 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnectionEventMonitor))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
        sub_25853374C();

        v12 = *(v0 + 184);
      }

      if (*(v12 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_streamEventMonitor))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
        sub_25853374C();

        v12 = *(v0 + 184);
      }

      v13 = *(v0 + 216);
      v14 = *(v0 + 192);
      v15 = *(v0 + 200);
      v16 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_waitForResponseContinuation;
      swift_beginAccess();
      sub_2584AC3B8(v12 + v16, v13, &qword_27F931820, &unk_25853F380);
      v17 = (*(v15 + 48))(v13, 1, v14);
      v18 = *(v0 + 216);
      if (v17)
      {
        sub_258465168(*(v0 + 216), &qword_27F931820, &unk_25853F380);
      }

      else
      {
        v20 = *(v0 + 200);
        v19 = *(v0 + 208);
        v21 = *(v0 + 192);
        v22 = *(v0 + 176);
        (*(v20 + 16))(v19, *(v0 + 216), v21);
        sub_258465168(v18, &qword_27F931820, &unk_25853F380);
        *(v0 + 168) = v22;
        v23 = v22;
        sub_25853363C();
        (*(v20 + 8))(v19, v21);
      }

      v24 = *(v0 + 176);
      *(v0 + 144) = v24;
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      if (swift_dynamicCast() && *(v0 + 256) == 4)
      {
        *(v0 + 160) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F0, &unk_25853F4B8);
      }

      else
      {
        v26 = *(v0 + 176);
        *(v0 + 152) = v26;
        v27 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F0, &unk_25853F4B8);
      }

      sub_2585337FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
      sub_2585336DC();

      v28 = *(v0 + 8);

      return v28();
    }
  }
}

uint64_t sub_25851AB7C()
{
  v2 = *v1;

  v3 = *(v2 + 184);
  if (v0)
  {

    swift_unknownObjectRelease();
    v4 = sub_25852E2D8;
  }

  else
  {
    swift_unknownObjectRelease();
    v4 = sub_25851B064;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25851ACD8()
{
  v1 = *(v0 + 184);
  sub_2585072A8();

  return MEMORY[0x2822009F8](sub_25851AD48, v1, 0);
}

uint64_t sub_25851AD48()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 184);
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnectionEventMonitor))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();

    v1 = *(v0 + 184);
  }

  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_streamEventMonitor))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();

    v1 = *(v0 + 184);
  }

  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_waitForResponseContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v5, v2, &qword_27F931820, &unk_25853F380);
  v6 = (*(v4 + 48))(v2, 1, v3);
  v7 = *(v0 + 216);
  if (v6)
  {
    sub_258465168(*(v0 + 216), &qword_27F931820, &unk_25853F380);
  }

  else
  {
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    v10 = *(v0 + 192);
    v11 = *(v0 + 176);
    (*(v9 + 16))(v8, *(v0 + 216), v10);
    sub_258465168(v7, &qword_27F931820, &unk_25853F380);
    *(v0 + 168) = v11;
    v12 = v11;
    sub_25853363C();
    (*(v9 + 8))(v8, v10);
  }

  v13 = *(v0 + 176);
  *(v0 + 144) = v13;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
  if (swift_dynamicCast() && *(v0 + 256) == 4)
  {
    *(v0 + 160) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F0, &unk_25853F4B8);
  }

  else
  {
    v15 = *(v0 + 176);
    *(v0 + 152) = v15;
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F0, &unk_25853F4B8);
  }

  sub_2585337FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
  sub_2585336DC();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_25851B064()
{
  v1 = *(v0 + 184);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistration;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v2, v0 + 16, &qword_27F931828, &unk_25853EB90);
  if (*(v0 + 40))
  {
    sub_258464C30(v0 + 16, v0 + 56);
    sub_258465168(v0 + 16, &qword_27F931828, &unk_25853EB90);
    v3 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    *(v0 + 248) = v3;
    v4 = *v3;

    return MEMORY[0x2822009F8](sub_25851ACD8, v4, 0);
  }

  else
  {
    sub_258465168(v0 + 16, &qword_27F931828, &unk_25853EB90);
    v5 = *(v0 + 184);
    if (*(v5 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnectionEventMonitor))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      sub_25853374C();

      v5 = *(v0 + 184);
    }

    if (*(v5 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_streamEventMonitor))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      sub_25853374C();

      v5 = *(v0 + 184);
    }

    v6 = *(v0 + 216);
    v7 = *(v0 + 192);
    v8 = *(v0 + 200);
    v9 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_waitForResponseContinuation;
    swift_beginAccess();
    sub_2584AC3B8(v5 + v9, v6, &qword_27F931820, &unk_25853F380);
    v10 = (*(v8 + 48))(v6, 1, v7);
    v11 = *(v0 + 216);
    if (v10)
    {
      sub_258465168(*(v0 + 216), &qword_27F931820, &unk_25853F380);
    }

    else
    {
      v13 = *(v0 + 200);
      v12 = *(v0 + 208);
      v14 = *(v0 + 192);
      v15 = *(v0 + 176);
      (*(v13 + 16))(v12, *(v0 + 216), v14);
      sub_258465168(v11, &qword_27F931820, &unk_25853F380);
      *(v0 + 168) = v15;
      v16 = v15;
      sub_25853363C();
      (*(v13 + 8))(v12, v14);
    }

    v17 = *(v0 + 176);
    *(v0 + 144) = v17;
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    if (swift_dynamicCast() && *(v0 + 256) == 4)
    {
      *(v0 + 160) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F0, &unk_25853F4B8);
    }

    else
    {
      v19 = *(v0 + 176);
      *(v0 + 152) = v19;
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F0, &unk_25853F4B8);
    }

    sub_2585337FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
    sub_2585336DC();

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_25851B44C(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9317B0, &qword_25853EA00);
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931820, &unk_25853F380);
  v2[40] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference(0);
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v5 = sub_25853362C();
  v2[41] = v5;
  v2[42] = v4;

  return MEMORY[0x2822009F8](sub_25851B5A4, v5, v4);
}

uint64_t sub_25851B5A4()
{
  v1 = v0[36];
  swift_beginAccess();
  sub_2584AC3B8(v1 + 184, (v0 + 2), &qword_27F9317F0, &qword_25853EB30);
  if (v0[5])
  {
    sub_258464C30((v0 + 2), (v0 + 17));
    sub_258465168((v0 + 2), &qword_27F9317F0, &qword_25853EB30);
    __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
    v2 = off_28698F1F0;
    type metadata accessor for AVConferenceBackedRemoteVideoClient(0);
    v2();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  }

  else
  {
    sub_258465168((v0 + 2), &qword_27F9317F0, &qword_25853EB30);
  }

  v3 = v0[36];
  if (*(v3 + 136))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();

    v3 = v0[36];
  }

  v4 = *(v3 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 24);
  v5 = *(v3 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection), v4);
  v8 = (*(v5 + 72) + **(v5 + 72));
  v6 = swift_task_alloc();
  v0[43] = v6;
  *v6 = v0;
  v6[1] = sub_25851B7EC;

  return v8(v4, v5);
}

uint64_t sub_25851B7EC()
{
  v1 = *v0;

  v2 = *(v1 + 336);
  v3 = *(v1 + 328);

  return MEMORY[0x2822009F8](sub_25851B90C, v3, v2);
}

uint64_t sub_25851B90C()
{
  v1 = *(v0 + 288);
  v2 = v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream;
  v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream);
  *(v0 + 352) = v3;
  if (v3)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 48);
    swift_unknownObjectRetain();
    v29 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v0 + 360) = v7;
    *v7 = v0;
    v7[1] = sub_25851BE14;

    return v29(ObjectType, v4);
  }

  else
  {
    v9 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistration;
    swift_beginAccess();
    sub_2584AC3B8(v1 + v9, v0 + 56, &qword_27F931828, &unk_25853EB90);
    if (*(v0 + 80))
    {
      sub_258464C30(v0 + 56, v0 + 96);
      sub_258465168(v0 + 56, &qword_27F931828, &unk_25853EB90);
      v10 = __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
      *(v0 + 368) = v10;
      v11 = *v10;

      return MEMORY[0x2822009F8](sub_25851BF58, v11, 0);
    }

    else
    {
      sub_258465168(v0 + 56, &qword_27F931828, &unk_25853EB90);
      v12 = *(v0 + 288);
      if (*(v12 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnectionEventMonitor))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
        sub_25853374C();

        v12 = *(v0 + 288);
      }

      if (*(v12 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_streamEventMonitor))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
        sub_25853374C();

        v12 = *(v0 + 288);
      }

      v13 = *(v0 + 320);
      v14 = *(v0 + 296);
      v15 = *(v0 + 304);
      v16 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_waitForResponseContinuation;
      swift_beginAccess();
      sub_2584AC3B8(v12 + v16, v13, &qword_27F931820, &unk_25853F380);
      v17 = (*(v15 + 48))(v13, 1, v14);
      v18 = *(v0 + 320);
      if (v17)
      {
        sub_258465168(*(v0 + 320), &qword_27F931820, &unk_25853F380);
      }

      else
      {
        v20 = *(v0 + 304);
        v19 = *(v0 + 312);
        v21 = *(v0 + 296);
        v22 = *(v0 + 280);
        (*(v20 + 16))(v19, *(v0 + 320), v21);
        sub_258465168(v18, &qword_27F931820, &unk_25853F380);
        *(v0 + 272) = v22;
        v23 = v22;
        sub_25853363C();
        (*(v20 + 8))(v19, v21);
      }

      v24 = *(v0 + 280);
      *(v0 + 248) = v24;
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      if (swift_dynamicCast() && *(v0 + 376) == 4)
      {
        *(v0 + 264) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931808, &qword_25853EB60);
      }

      else
      {
        v26 = *(v0 + 280);
        *(v0 + 256) = v26;
        v27 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931808, &qword_25853EB60);
      }

      sub_2585337FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
      sub_2585336DC();

      v28 = *(v0 + 8);

      return v28();
    }
  }
}

uint64_t sub_25851BE14()
{
  v2 = *v1;

  if (v0)
  {

    swift_unknownObjectRelease();
    v3 = *(v2 + 328);
    v4 = *(v2 + 336);
    v5 = sub_25852E2DC;
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = *(v2 + 328);
    v4 = *(v2 + 336);
    v5 = sub_25851C2DC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_25851BF58()
{
  sub_2585072A8();
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);

  return MEMORY[0x2822009F8](sub_25851BFC0, v1, v2);
}

uint64_t sub_25851BFC0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v1 = *(v0 + 288);
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnectionEventMonitor))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();

    v1 = *(v0 + 288);
  }

  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_streamEventMonitor))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();

    v1 = *(v0 + 288);
  }

  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_waitForResponseContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v5, v2, &qword_27F931820, &unk_25853F380);
  v6 = (*(v4 + 48))(v2, 1, v3);
  v7 = *(v0 + 320);
  if (v6)
  {
    sub_258465168(*(v0 + 320), &qword_27F931820, &unk_25853F380);
  }

  else
  {
    v9 = *(v0 + 304);
    v8 = *(v0 + 312);
    v10 = *(v0 + 296);
    v11 = *(v0 + 280);
    (*(v9 + 16))(v8, *(v0 + 320), v10);
    sub_258465168(v7, &qword_27F931820, &unk_25853F380);
    *(v0 + 272) = v11;
    v12 = v11;
    sub_25853363C();
    (*(v9 + 8))(v8, v10);
  }

  v13 = *(v0 + 280);
  *(v0 + 248) = v13;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
  if (swift_dynamicCast() && *(v0 + 376) == 4)
  {
    *(v0 + 264) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931808, &qword_25853EB60);
  }

  else
  {
    v15 = *(v0 + 280);
    *(v0 + 256) = v15;
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931808, &qword_25853EB60);
  }

  sub_2585337FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
  sub_2585336DC();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_25851C2DC()
{
  v1 = *(v0 + 288);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistration;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v2, v0 + 56, &qword_27F931828, &unk_25853EB90);
  if (*(v0 + 80))
  {
    sub_258464C30(v0 + 56, v0 + 96);
    sub_258465168(v0 + 56, &qword_27F931828, &unk_25853EB90);
    v3 = __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    *(v0 + 368) = v3;
    v4 = *v3;

    return MEMORY[0x2822009F8](sub_25851BF58, v4, 0);
  }

  else
  {
    sub_258465168(v0 + 56, &qword_27F931828, &unk_25853EB90);
    v5 = *(v0 + 288);
    if (*(v5 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnectionEventMonitor))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      sub_25853374C();

      v5 = *(v0 + 288);
    }

    if (*(v5 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_streamEventMonitor))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      sub_25853374C();

      v5 = *(v0 + 288);
    }

    v6 = *(v0 + 320);
    v7 = *(v0 + 296);
    v8 = *(v0 + 304);
    v9 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_waitForResponseContinuation;
    swift_beginAccess();
    sub_2584AC3B8(v5 + v9, v6, &qword_27F931820, &unk_25853F380);
    v10 = (*(v8 + 48))(v6, 1, v7);
    v11 = *(v0 + 320);
    if (v10)
    {
      sub_258465168(*(v0 + 320), &qword_27F931820, &unk_25853F380);
    }

    else
    {
      v13 = *(v0 + 304);
      v12 = *(v0 + 312);
      v14 = *(v0 + 296);
      v15 = *(v0 + 280);
      (*(v13 + 16))(v12, *(v0 + 320), v14);
      sub_258465168(v11, &qword_27F931820, &unk_25853F380);
      *(v0 + 272) = v15;
      v16 = v15;
      sub_25853363C();
      (*(v13 + 8))(v12, v14);
    }

    v17 = *(v0 + 280);
    *(v0 + 248) = v17;
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    if (swift_dynamicCast() && *(v0 + 376) == 4)
    {
      *(v0 + 264) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931808, &qword_25853EB60);
    }

    else
    {
      v19 = *(v0 + 280);
      *(v0 + 256) = v19;
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931808, &qword_25853EB60);
    }

    sub_2585337FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
    sub_2585336DC();

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_25851C6C4()
{
  *(v1 + 848) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0);
  *(v1 + 856) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25851C760, v0, 0);
}

uint64_t sub_25851C760()
{
  v1 = v0[106];
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer) == 2)
  {
    v2 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection + 24);
    v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection), v2);
    v8 = (*(v3 + 104) + **(v3 + 104));
    v4 = swift_task_alloc();
    v0[108] = v4;
    *v4 = v0;
    v4[1] = sub_25851C920;

    return v8(v0 + 65, v2, v3);
  }

  else
  {
    sub_258476AE4();
    swift_allocError();
    *v6 = 16;
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_25851C920()
{
  v2 = *v1;
  *(*v1 + 872) = v0;

  v3 = *(v2 + 848);
  if (v0)
  {
    v4 = sub_25851CD58;
  }

  else
  {
    v4 = sub_25851CA4C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25851CA4C()
{
  if (!*(v0 + 544))
  {
    sub_258465168(v0 + 520, &qword_27F92FB90, &qword_258535420);
    sub_258476AE4();
    swift_allocError();
    *v18 = 14;
    swift_willThrow();
LABEL_11:

    v21 = *(v0 + 8);

    return v21();
  }

  v1 = *(v0 + 848);
  sub_258464C18((v0 + 520), v0 + 480);
  if (*(v1 + 121) != 2)
  {
    sub_258476AE4();
    swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v20 = 4;
    }

    else
    {
      v20 = 5;
    }

    *v19 = v20;
    swift_willThrow();
    goto LABEL_10;
  }

  v2 = *(v0 + 872);
  v3 = *(v0 + 848);
  v4 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProvider;
  *(v0 + 880) = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProvider;
  swift_beginAccess();
  sub_258464C30(v3 + v4, v0 + 560);
  __swift_project_boxed_opaque_existential_1((v0 + 560), *(v0 + 584));
  v5 = *(v0 + 504);
  v6 = *(v0 + 512);
  __swift_project_boxed_opaque_existential_1((v0 + 480), v5);
  (*(v6 + 8))(v5, v6);
  __swift_project_boxed_opaque_existential_1((v0 + 600), *(v0 + 624));
  v7 = sub_258532D5C();
  v9 = sub_2585226C8(v7, v8, &OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_userDefaultsProvider);
  v11 = v10;

  *(v0 + 888) = v11;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 600));
  v12 = *(v0 + 504);
  v13 = *(v0 + 512);
  __swift_project_boxed_opaque_existential_1((v0 + 480), v12);
  (*(v13 + 24))(v12, v13);
  v14 = __swift_project_boxed_opaque_existential_1((v0 + 640), *(v0 + 664));
  v16 = v14[2];
  v15 = v14[3];
  *(v0 + 896) = v15;

  v17 = sub_2584BC58C();
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 640));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 560));
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 480));
    goto LABEL_11;
  }

  v23 = v17;
  v24 = swift_task_alloc();
  *(v0 + 904) = v24;
  *v24 = v0;
  v24[1] = sub_25851CDBC;

  return sub_2584EB264(v0 + 440, v9, v11, v16, v15, v23);
}

uint64_t sub_25851CD58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25851CDBC()
{
  v2 = *v1;
  *(*v1 + 912) = v0;

  if (v0)
  {
    v3 = *(v2 + 848);

    v4 = sub_25851D2A4;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 848);

    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 640));
    v4 = sub_25851CF18;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_25851CF18()
{
  v1 = *(v0 + 848);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 560));
  if (*(v1 + 121) == 2)
  {
    v2 = *(v0 + 848);
    v3 = *(v0 + 504);
    v4 = *(v0 + 512);
    __swift_project_boxed_opaque_existential_1((v0 + 480), v3);
    (*(v4 + 16))(v3, v4);
    v5 = __swift_project_boxed_opaque_existential_1((v0 + 680), *(v0 + 704));
    v6 = *v5;
    *(v0 + 920) = *v5;
    v7 = v5[1];
    *(v0 + 928) = v7;
    v8 = *(v0 + 504);
    v9 = *(v0 + 512);
    __swift_project_boxed_opaque_existential_1((v0 + 480), v8);
    v10 = *(v9 + 24);
    sub_2584A7B8C(v6, v7);
    v10(v8, v9);
    v11 = __swift_project_boxed_opaque_existential_1((v0 + 720), *(v0 + 744));
    v12 = *v11;
    *(v0 + 936) = *v11;
    v13 = v11[1];
    *(v0 + 944) = v13;
    sub_2584A7B8C(v12, v13);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 720));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 680));
    LOBYTE(v9) = *(v2 + 120);
    v14 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamNegotiator;
    *(v0 + 952) = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamNegotiator;
    v15 = __swift_project_boxed_opaque_existential_1((v2 + v14), *(v2 + v14 + 24));
    v16 = *v15;
    v17 = *(*v15 + 32);
    v18 = *(v16 + 40);
    *(v0 + 168) = *(v0 + 472);
    v19 = *(v0 + 456);
    *(v0 + 136) = *(v0 + 440);
    *(v0 + 152) = v19;
    *(v0 + 112) = v9;
    *&v20 = v6;
    *(&v20 + 1) = v7;
    *(v0 + 120) = v17;
    *(v0 + 128) = v18;
    *&v19 = v12;
    *(&v19 + 1) = v13;
    *(v0 + 176) = v20;
    *(v0 + 192) = v19;
    v21 = *(v0 + 168);
    *(v0 + 16) = *(v0 + 112);
    *(v0 + 24) = v17;
    *(v0 + 32) = v18;
    *(v0 + 40) = *(v0 + 136);
    *(v0 + 56) = *(v0 + 152);
    *(v0 + 72) = v21;
    *(v0 + 80) = v6;
    *(v0 + 88) = v7 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    *(v0 + 96) = v12;
    *(v0 + 104) = v13 & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
    sub_2584A7B8C(v17, v18);
    sub_2584ABA3C(v0 + 440, v0 + 760);
    sub_2584A7B8C(v6, v7);
    sub_2584A7B8C(v12, v13);
    v22 = sub_25852DC88(&qword_27F930588, type metadata accessor for AudioStreamAVConference, &unk_25853F878);
    v23 = swift_task_alloc();
    *(v0 + 960) = v23;
    *(v23 + 16) = v2;
    *(v23 + 24) = v0 + 16;
    v24 = swift_task_alloc();
    *(v0 + 968) = v24;
    *v24 = v0;
    v24[1] = sub_25851D320;

    return MEMORY[0x2822008A0](v0 + 208, v2, v22, 0xD000000000000021, 0x8000000258540A30, sub_2584ABA98, v23, &type metadata for StreamMessage);
  }

  else
  {
    v25 = *(v0 + 848);
    sub_258476AE4();
    swift_allocError();
    if (*(v25 + 121) == 5)
    {
      v27 = 4;
    }

    else
    {
      v27 = 5;
    }

    *v26 = v27;
    swift_willThrow();
    sub_2584AB9E8(v0 + 440);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 480));

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_25851D2A4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 60);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25851D320()
{
  v2 = *v1;
  *(*v1 + 976) = v0;

  v3 = *(v2 + 848);
  if (v0)
  {
    v4 = sub_25851D718;
  }

  else
  {
    v4 = sub_25851D438;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25851D438()
{
  v1 = *(v0 + 256);
  *(v0 + 336) = *(v0 + 240);
  *(v0 + 352) = v1;
  v2 = *(v0 + 288);
  *(v0 + 368) = *(v0 + 272);
  *(v0 + 384) = v2;
  v3 = *(v0 + 224);
  *(v0 + 304) = *(v0 + 208);
  *(v0 + 320) = v3;
  if (((*(v0 + 392) >> 59) & 6 | ((*(v0 + 376) & 0x2000000000000000) != 0)) != 4)
  {
    v15 = *(v0 + 944);
    v16 = *(v0 + 936);
    v17 = *(v0 + 928);
    v18 = *(v0 + 920);
    sub_258476AE4();
    swift_allocError();
    *v19 = 20;
    swift_willThrow();
    sub_25852E114(v0 + 112);
    sub_258467E20(v18, v17);
    v13 = v16;
    v14 = v15;
    goto LABEL_6;
  }

  v28 = *(v0 + 344);
  v29 = *(v0 + 328);
  v4 = *(v0 + 976);
  v5 = (*(v0 + 848) + *(v0 + 952));
  v6 = *(v0 + 320);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2584D275C();
  if (v4)
  {
    v9 = *(v0 + 944);
    v10 = *(v0 + 936);
    v11 = *(v0 + 928);
    v12 = *(v0 + 920);
    sub_25852E114(v0 + 112);
    sub_258467E20(v12, v11);
    v13 = v10;
    v14 = v9;
LABEL_6:
    sub_258467E20(v13, v14);
    sub_2584AB9E8(v0 + 440);
    sub_2584A975C(v0 + 304);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 480));

    v20 = *(v0 + 8);
    goto LABEL_7;
  }

  v7 = *(v0 + 856);
  v8 = (*(v0 + 848) + *(v0 + 880));
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  *(v0 + 400) = v6;
  *(v0 + 408) = v29;
  *(v0 + 424) = v28;
  sub_2584EE23C((v0 + 400), v7);
  v22 = *(v0 + 944);
  v23 = *(v0 + 936);
  v24 = *(v0 + 856);
  v25 = *(v0 + 848);
  sub_258467E20(*(v0 + 920), *(v0 + 928));
  sub_258467E20(v23, v22);
  sub_2584AB9E8(v0 + 440);
  sub_25852E114(v0 + 112);
  sub_2584A975C(v0 + 304);
  v26 = type metadata accessor for MediaConnectionPrerequisites(0);
  (*(*(v26 - 8) + 56))(v24, 0, 1, v26);
  v27 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC5D0(v24, v25 + v27, &qword_27F930580, &unk_2585382B0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 480));

  v20 = *(v0 + 8);
LABEL_7:

  return v20();
}

uint64_t sub_25851D718()
{
  v1 = v0[118];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[115];

  sub_258467E20(v4, v3);
  sub_258467E20(v2, v1);
  sub_2584AB9E8((v0 + 55));
  sub_25852E114((v0 + 14));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 60);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25851D7CC()
{
  v1[106] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0);
  v1[107] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference(0);
  v1[108] = sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v3 = sub_25853362C();
  v1[109] = v3;
  v1[110] = v2;

  return MEMORY[0x2822009F8](sub_25851D8C4, v3, v2);
}

uint64_t sub_25851D8C4()
{
  v1 = v0[106];
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer) == 2)
  {
    v2 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 24);
    v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection), v2);
    v8 = (*(v3 + 104) + **(v3 + 104));
    v4 = swift_task_alloc();
    v0[111] = v4;
    *v4 = v0;
    v4[1] = sub_25851DA84;

    return v8(v0 + 65, v2, v3);
  }

  else
  {
    sub_258476AE4();
    swift_allocError();
    *v6 = 16;
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_25851DA84()
{
  v2 = *v1;
  *(*v1 + 896) = v0;

  v3 = *(v2 + 880);
  v4 = *(v2 + 872);
  if (v0)
  {
    v5 = sub_25851DECC;
  }

  else
  {
    v5 = sub_25851DBC0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25851DBC0()
{
  if (!*(v0 + 544))
  {
    sub_258465168(v0 + 520, &qword_27F92FB90, &qword_258535420);
    sub_258476AE4();
    swift_allocError();
    *v18 = 14;
    swift_willThrow();
LABEL_11:

    v21 = *(v0 + 8);

    return v21();
  }

  v1 = *(v0 + 848);
  sub_258464C18((v0 + 520), v0 + 480);
  if (*(v1 + 232) != 2)
  {
    sub_258476AE4();
    swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v20 = 4;
    }

    else
    {
      v20 = 5;
    }

    *v19 = v20;
    swift_willThrow();
    goto LABEL_10;
  }

  v2 = *(v0 + 896);
  v3 = *(v0 + 848);
  v4 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProvider;
  *(v0 + 904) = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProvider;
  swift_beginAccess();
  sub_258464C30(v3 + v4, v0 + 560);
  __swift_project_boxed_opaque_existential_1((v0 + 560), *(v0 + 584));
  v5 = *(v0 + 504);
  v6 = *(v0 + 512);
  __swift_project_boxed_opaque_existential_1((v0 + 480), v5);
  (*(v6 + 8))(v5, v6);
  __swift_project_boxed_opaque_existential_1((v0 + 600), *(v0 + 624));
  v7 = sub_258532D5C();
  v9 = sub_2585226C8(v7, v8, &OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_userDefaultsProvider);
  v11 = v10;

  *(v0 + 912) = v11;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 600));
  v12 = *(v0 + 504);
  v13 = *(v0 + 512);
  __swift_project_boxed_opaque_existential_1((v0 + 480), v12);
  (*(v13 + 24))(v12, v13);
  v14 = __swift_project_boxed_opaque_existential_1((v0 + 640), *(v0 + 664));
  v16 = v14[2];
  v15 = v14[3];
  *(v0 + 920) = v15;

  v17 = sub_2584BC58C();
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 640));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 560));
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 480));
    goto LABEL_11;
  }

  v23 = v17;
  v24 = swift_task_alloc();
  *(v0 + 928) = v24;
  *v24 = v0;
  v24[1] = sub_25851DF30;

  return sub_2584EB264(v0 + 440, v9, v11, v16, v15, v23);
}

uint64_t sub_25851DECC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25851DF30()
{
  v2 = *v1;
  *(*v1 + 936) = v0;

  if (v0)
  {
    v3 = v2[110];
    v4 = v2[109];
    v5 = sub_25851E3D0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 80);
    v3 = v2[110];
    v4 = v2[109];
    v5 = sub_25851E07C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25851E07C()
{
  v1 = *(v0 + 848);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 560));
  if (*(v1 + 232) == 2)
  {
    v29 = *(v0 + 864);
    v2 = *(v0 + 848);
    v3 = *(v0 + 504);
    v4 = *(v0 + 512);
    __swift_project_boxed_opaque_existential_1((v0 + 480), v3);
    (*(v4 + 16))(v3, v4);
    v5 = __swift_project_boxed_opaque_existential_1((v0 + 680), *(v0 + 704));
    v6 = *v5;
    *(v0 + 944) = *v5;
    v7 = v5[1];
    *(v0 + 952) = v7;
    v9 = *(v0 + 504);
    v8 = *(v0 + 512);
    __swift_project_boxed_opaque_existential_1((v0 + 480), v9);
    v10 = *(v8 + 24);
    sub_2584A7B8C(v6, v7);
    v10(v9, v8);
    v11 = __swift_project_boxed_opaque_existential_1((v0 + 720), *(v0 + 744));
    v12 = *v11;
    *(v0 + 960) = *v11;
    v13 = v11[1];
    *(v0 + 968) = v13;
    sub_2584A7B8C(v12, v13);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 720));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 680));
    LODWORD(v8) = *(v2 + 48);
    v14 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamNegotiator;
    *(v0 + 976) = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamNegotiator;
    v15 = __swift_project_boxed_opaque_existential_1((v2 + v14), *(v2 + v14 + 24));
    v16 = *v15;
    v17 = *(*v15 + 32);
    v18 = *(v16 + 40);
    v19 = *(v0 + 472);
    *(v0 + 168) = v19;
    v20 = *(v0 + 456);
    *(v0 + 136) = *(v0 + 440);
    *(v0 + 152) = v20;
    *(v0 + 112) = v8 >> 7;
    *(v0 + 120) = v17;
    *(v0 + 128) = v18;
    *&v21 = v6;
    *(&v21 + 1) = v7;
    *&v20 = v12;
    *(&v20 + 1) = v13;
    *(v0 + 176) = v21;
    *(v0 + 192) = v20;
    *(v0 + 16) = *(v0 + 112);
    *(v0 + 24) = v17;
    *(v0 + 32) = v18;
    *(v0 + 40) = *(v0 + 136);
    *(v0 + 56) = *(v0 + 152);
    *(v0 + 72) = v19;
    *(v0 + 80) = v6;
    *(v0 + 88) = v7 & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    *(v0 + 96) = v12;
    *(v0 + 104) = v13 & 0xCFFFFFFFFFFFFFFFLL;
    sub_2584A7B8C(v17, v18);
    sub_2584ABA3C(v0 + 440, v0 + 760);
    sub_2584A7B8C(v6, v7);
    sub_2584A7B8C(v12, v13);
    v22 = swift_task_alloc();
    *(v0 + 984) = v22;
    *(v22 + 16) = v2;
    *(v22 + 24) = v0 + 16;
    v23 = swift_task_alloc();
    *(v0 + 992) = v23;
    *v23 = v0;
    v23[1] = sub_25851E44C;

    return MEMORY[0x2822008A0](v0 + 208, v2, v29, 0xD000000000000021, 0x8000000258540A30, sub_2584AC338, v22, &type metadata for StreamMessage);
  }

  else
  {
    v24 = *(v0 + 848);
    sub_258476AE4();
    swift_allocError();
    if (*(v24 + 232) == 5)
    {
      v26 = 4;
    }

    else
    {
      v26 = 5;
    }

    *v25 = v26;
    swift_willThrow();
    sub_2584AB9E8(v0 + 440);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 480));

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_25851E3D0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 70);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 60);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25851E44C()
{
  v2 = *v1;
  *(*v1 + 1000) = v0;

  v3 = *(v2 + 880);
  v4 = *(v2 + 872);
  if (v0)
  {
    v5 = sub_25851E848;
  }

  else
  {
    v5 = sub_25851E568;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25851E568()
{
  v1 = *(v0 + 256);
  *(v0 + 336) = *(v0 + 240);
  *(v0 + 352) = v1;
  v2 = *(v0 + 288);
  *(v0 + 368) = *(v0 + 272);
  *(v0 + 384) = v2;
  v3 = *(v0 + 224);
  *(v0 + 304) = *(v0 + 208);
  *(v0 + 320) = v3;
  if (((*(v0 + 392) >> 59) & 6 | ((*(v0 + 376) & 0x2000000000000000) != 0)) != 2)
  {
    v15 = *(v0 + 968);
    v16 = *(v0 + 960);
    v17 = *(v0 + 952);
    v18 = *(v0 + 944);
    sub_258476AE4();
    swift_allocError();
    *v19 = 20;
    swift_willThrow();
    sub_25852D92C(v0 + 112);
    sub_258467E20(v18, v17);
    v13 = v16;
    v14 = v15;
    goto LABEL_6;
  }

  v28 = *(v0 + 344);
  v29 = *(v0 + 328);
  v4 = *(v0 + 1000);
  v5 = (*(v0 + 848) + *(v0 + 976));
  v6 = *(v0 + 320);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2584D275C();
  if (v4)
  {
    v9 = *(v0 + 968);
    v10 = *(v0 + 960);
    v11 = *(v0 + 952);
    v12 = *(v0 + 944);
    sub_25852D92C(v0 + 112);
    sub_258467E20(v12, v11);
    v13 = v10;
    v14 = v9;
LABEL_6:
    sub_258467E20(v13, v14);
    sub_2584AB9E8(v0 + 440);
    sub_2584A975C(v0 + 304);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 480));

    v20 = *(v0 + 8);
    goto LABEL_7;
  }

  v7 = *(v0 + 856);
  v8 = (*(v0 + 848) + *(v0 + 904));
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  *(v0 + 400) = v6;
  *(v0 + 408) = v29;
  *(v0 + 424) = v28;
  sub_2584EE23C((v0 + 400), v7);
  v22 = *(v0 + 968);
  v23 = *(v0 + 960);
  v24 = *(v0 + 856);
  v25 = *(v0 + 848);
  sub_258467E20(*(v0 + 944), *(v0 + 952));
  sub_258467E20(v23, v22);
  sub_2584AB9E8(v0 + 440);
  sub_25852D92C(v0 + 112);
  sub_2584A975C(v0 + 304);
  v26 = type metadata accessor for MediaConnectionPrerequisites(0);
  (*(*(v26 - 8) + 56))(v24, 0, 1, v26);
  v27 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC5D0(v24, v25 + v27, &qword_27F930580, &unk_2585382B0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 480));

  v20 = *(v0 + 8);
LABEL_7:

  return v20();
}

uint64_t sub_25851E848()
{
  v1 = v0[121];
  v2 = v0[120];
  v3 = v0[119];
  v4 = v0[118];

  sub_258467E20(v4, v3);
  sub_258467E20(v2, v1);
  sub_2584AB9E8((v0 + 55));
  sub_25852D92C((v0 + 14));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 60);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25851E8FC()
{
  *(v1 + 592) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0);
  *(v1 + 600) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25851E998, v0, 0);
}

uint64_t sub_25851E998()
{
  v1 = *(v0 + 592) + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer;
  v2 = *v1;
  if (*v1 == 2)
  {
    sub_258476AE4();
    swift_allocError();
    *v3 = 17;
    swift_willThrow();
LABEL_9:

    v34 = *(v0 + 8);

    return v34();
  }

  *(v0 + 16) = v2;
  v4 = *(v1 + 8);
  *(v0 + 40) = *(v1 + 24);
  *(v0 + 24) = v4;
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  v7 = *(v1 + 72);
  *(v0 + 104) = *(v1 + 88);
  *(v0 + 88) = v7;
  *(v0 + 72) = v6;
  *(v0 + 56) = v5;
  *(v0 + 448) = &type metadata for AudioStreamOffer;
  *(v0 + 456) = &off_28698DC78;
  v8 = swift_allocObject();
  *(v0 + 424) = v8;
  *(v8 + 16) = v2;
  v9 = *(v1 + 40);
  v10 = *(v1 + 56);
  v11 = *(v1 + 72);
  *(v8 + 104) = *(v1 + 88);
  *(v8 + 88) = v11;
  *(v8 + 72) = v10;
  *(v8 + 56) = v9;
  v12 = *(v1 + 8);
  *(v8 + 40) = *(v1 + 24);
  *(v8 + 24) = v12;
  sub_258464C18((v0 + 424), v0 + 384);
  __swift_project_boxed_opaque_existential_1((v0 + 384), *(v0 + 408));
  sub_2584A9620(v0 + 16, v0 + 112);
  v13 = sub_2584ADC4C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  *(v0 + 608) = v13;
  *(v0 + 616) = v14;
  *(v0 + 624) = v16;
  *(v0 + 632) = v18;
  sub_2584A7B8C(v16, v18);
  sub_2584A7B8C(v13, v15);
  sub_258467E20(v13, v15);
  sub_258467E20(v17, v19);
  sub_2584A7B8C(v17, v19);
  v20 = sub_2584B80A0(v17, v19);
  if (!v21 || (v22 = sub_2584BA8B8(v20, v21), v24 = v23, , !v24))
  {
    sub_258476AE4();
    swift_allocError();
    v33 = 12;
LABEL_8:
    *v32 = v33;
    swift_willThrow();
    sub_258467E20(v17, v19);
    sub_258467E20(v13, v15);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 384));
    goto LABEL_9;
  }

  v25 = sub_2584ADD54(v17, v19, v13, v15);
  *(v0 + 640) = v26;
  if (!v26)
  {

    sub_258476AE4();
    swift_allocError();
    v33 = 13;
    goto LABEL_8;
  }

  v27 = v26;
  v39 = v25;
  v28 = *(v0 + 592);
  v29 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProvider;
  *(v0 + 648) = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProvider;
  swift_beginAccess();
  sub_258464C30(v28 + v29, v0 + 464);
  __swift_project_boxed_opaque_existential_1((v0 + 464), *(v0 + 488));
  v38 = sub_2585226C8(v22, v24, &OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_userDefaultsProvider);
  v31 = v30;

  *(v0 + 656) = v31;
  v36 = sub_2584BC58C();
  v37 = swift_task_alloc();
  *(v0 + 664) = v37;
  *v37 = v0;
  v37[1] = sub_25851EDA8;

  return sub_2584EB264(v0 + 344, v38, v31, v39, v27, v36);
}

uint64_t sub_25851EDA8()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {
    v3 = *(v2 + 592);

    v4 = sub_25851F38C;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 592);
    *(v2 + 744) = *(v2 + 344);
    v7 = *(v2 + 368);
    *(v2 + 680) = *(v2 + 352);
    *(v2 + 696) = v7;

    v4 = sub_25851EF18;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_25851EF18()
{
  v1 = *(v0 + 592);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 464));
  if (*(v1 + 121) != 2)
  {
    v10 = *(v0 + 632);
    v11 = *(v0 + 624);
    v12 = *(v0 + 616);
    v13 = *(v0 + 608);
    sub_258476AE4();
    swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v15 = 4;
    }

    else
    {
      v15 = 5;
    }

    *v14 = v15;
    goto LABEL_8;
  }

  v2 = *(v0 + 672);
  v3 = *(v0 + 600);
  sub_258464C30(*(v0 + 592) + *(v0 + 648), v0 + 504);
  __swift_project_boxed_opaque_existential_1((v0 + 504), *(v0 + 528));
  v4 = *(v0 + 408);
  v5 = *(v0 + 416);
  __swift_project_boxed_opaque_existential_1((v0 + 384), v4);
  (*(v5 + 32))(v4, v5);
  sub_2584EE23C((v0 + 304), v3);
  if (v2)
  {
    v6 = *(v0 + 632);
    v7 = *(v0 + 624);
    v8 = *(v0 + 616);
    v9 = *(v0 + 608);
    sub_2584AB9E8(v0 + 344);
    sub_258467E20(v7, v6);
    sub_258467E20(v9, v8);
    sub_2584AB9E8(v0 + 304);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 504));
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 384));

    v16 = *(v0 + 8);

    return v16();
  }

  v18 = *(v0 + 600);
  v19 = *(v0 + 592);
  sub_2584AB9E8(v0 + 304);
  v20 = type metadata accessor for MediaConnectionPrerequisites(0);
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  v21 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC5D0(v18, v19 + v21, &qword_27F930580, &unk_2585382B0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 504));
  v22 = __swift_project_boxed_opaque_existential_1((v19 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamNegotiator), *(v19 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamNegotiator + 24));
  if (*(*v22 + 24))
  {
    v10 = *(v0 + 632);
    v11 = *(v0 + 624);
    v12 = *(v0 + 616);
    v13 = *(v0 + 608);
    sub_2584D29F0();
    swift_allocError();
    *v23 = 0;
LABEL_8:
    swift_willThrow();
    sub_2584AB9E8(v0 + 344);
    sub_258467E20(v11, v10);
    sub_258467E20(v13, v12);
    goto LABEL_9;
  }

  v24 = *(v0 + 704);
  v25 = *(v0 + 696);
  v26 = *(v0 + 688);
  v27 = *(v0 + 680);
  v40 = *(v0 + 744);
  v28 = *(v0 + 592);
  v29 = [*(*v22 + 16) answer];
  v30 = sub_25853292C();
  v32 = v31;

  *(v0 + 712) = v30;
  *(v0 + 720) = v32;
  v33 = (v28 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection);
  v34 = *(v28 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection + 24);
  v35 = *(v28 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection + 32);
  v39 = v34;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  *(v0 + 208) = v30;
  *(v0 + 216) = v32;
  *(v0 + 224) = v40;
  *(v0 + 232) = v27;
  *(v0 + 240) = v26;
  *(v0 + 248) = v25;
  *(v0 + 256) = v24;
  *(v0 + 280) = 0;
  *(v0 + 296) = 0x2000000000000000;
  v36 = *(v35 + 80);
  sub_2584A7B8C(v30, v32);
  sub_2584ABAF4(v27, v26);
  sub_2584ABAF4(v25, v24);
  v38 = (v36 + *v36);
  v37 = swift_task_alloc();
  *(v0 + 728) = v37;
  *v37 = v0;
  v37[1] = sub_25851F420;

  return v38(v0 + 208, v39, v35);
}

uint64_t sub_25851F38C()
{
  v1 = v0[77];
  v2 = v0[76];
  sub_258467E20(v0[78], v0[79]);
  sub_258467E20(v2, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 58);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);

  v3 = v0[1];

  return v3();
}

uint64_t sub_25851F420()
{
  v2 = *v1;
  *(*v1 + 736) = v0;

  v3 = *(v2 + 592);
  if (v0)
  {
    v4 = sub_25851F654;
  }

  else
  {
    v4 = sub_25851F538;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25851F538()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[79];
  v8 = v0[78];
  v9 = v0[76];
  v12 = v0[77];
  sub_258467E20(v2, v1);
  sub_2584AE960(v6, v5);
  sub_2584AE960(v4, v3);
  sub_258467E20(v2, v1);
  sub_2584AE960(v6, v5);
  sub_2584AE960(v4, v3);
  sub_258467E20(v8, v7);
  sub_258467E20(v9, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);

  v10 = v0[1];

  return v10();
}

uint64_t sub_25851F654()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[79];
  v8 = v0[78];
  v12 = v0[77];
  v9 = v0[76];
  sub_258467E20(v2, v1);
  sub_2584AE960(v6, v5);
  sub_2584AE960(v4, v3);
  sub_258467E20(v8, v7);
  sub_258467E20(v9, v12);
  sub_258467E20(v2, v1);
  sub_2584AE960(v6, v5);
  sub_2584AE960(v4, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);

  v10 = v0[1];

  return v10();
}

uint64_t sub_25851F76C()
{
  v1[74] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0);
  v1[75] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference(0);
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v3 = sub_25853362C();
  v1[76] = v3;
  v1[77] = v2;

  return MEMORY[0x2822009F8](sub_25851F860, v3, v2);
}

uint64_t sub_25851F860()
{
  v1 = *(v0 + 592) + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_remoteVideoOffer;
  v2 = *v1;
  if (*v1 == 2)
  {
    sub_258476AE4();
    swift_allocError();
    *v3 = 17;
    swift_willThrow();
LABEL_9:

    v34 = *(v0 + 8);

    return v34();
  }

  *(v0 + 16) = v2;
  v4 = *(v1 + 8);
  *(v0 + 40) = *(v1 + 24);
  *(v0 + 24) = v4;
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  v7 = *(v1 + 72);
  *(v0 + 104) = *(v1 + 88);
  *(v0 + 88) = v7;
  *(v0 + 72) = v6;
  *(v0 + 56) = v5;
  *(v0 + 448) = &type metadata for VideoStreamOffer;
  *(v0 + 456) = &off_28698E288;
  v8 = swift_allocObject();
  *(v0 + 424) = v8;
  *(v8 + 16) = v2;
  v9 = *(v1 + 40);
  v10 = *(v1 + 56);
  v11 = *(v1 + 72);
  *(v8 + 104) = *(v1 + 88);
  *(v8 + 88) = v11;
  *(v8 + 72) = v10;
  *(v8 + 56) = v9;
  v12 = *(v1 + 8);
  *(v8 + 40) = *(v1 + 24);
  *(v8 + 24) = v12;
  sub_258464C18((v0 + 424), v0 + 384);
  __swift_project_boxed_opaque_existential_1((v0 + 384), *(v0 + 408));
  sub_2584A9700(v0 + 16, v0 + 112);
  v13 = sub_2584ADC4C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  *(v0 + 624) = v13;
  *(v0 + 632) = v14;
  *(v0 + 640) = v16;
  *(v0 + 648) = v18;
  sub_2584A7B8C(v16, v18);
  sub_2584A7B8C(v13, v15);
  sub_258467E20(v13, v15);
  sub_258467E20(v17, v19);
  sub_2584A7B8C(v17, v19);
  v20 = sub_2584B80A0(v17, v19);
  if (!v21 || (v22 = sub_2584BA8B8(v20, v21), v24 = v23, , !v24))
  {
    sub_258476AE4();
    swift_allocError();
    v33 = 12;
LABEL_8:
    *v32 = v33;
    swift_willThrow();
    sub_258467E20(v17, v19);
    sub_258467E20(v13, v15);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 384));
    goto LABEL_9;
  }

  v25 = sub_2584ADD54(v17, v19, v13, v15);
  *(v0 + 656) = v26;
  if (!v26)
  {

    sub_258476AE4();
    swift_allocError();
    v33 = 13;
    goto LABEL_8;
  }

  v27 = v26;
  v39 = v25;
  v28 = *(v0 + 592);
  v29 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProvider;
  *(v0 + 664) = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProvider;
  swift_beginAccess();
  sub_258464C30(v28 + v29, v0 + 464);
  __swift_project_boxed_opaque_existential_1((v0 + 464), *(v0 + 488));
  v38 = sub_2585226C8(v22, v24, &OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_userDefaultsProvider);
  v31 = v30;

  *(v0 + 672) = v31;
  v36 = sub_2584BC58C();
  v37 = swift_task_alloc();
  *(v0 + 680) = v37;
  *v37 = v0;
  v37[1] = sub_25851FC70;

  return sub_2584EB264(v0 + 344, v38, v31, v39, v27, v36);
}

uint64_t sub_25851FC70()
{
  v2 = *v1;
  *(*v1 + 688) = v0;

  if (v0)
  {

    v3 = *(v2 + 616);
    v4 = *(v2 + 608);
    v5 = sub_258520244;
  }

  else
  {
    *(v2 + 760) = *(v2 + 344);
    v6 = *(v2 + 368);
    *(v2 + 696) = *(v2 + 352);
    *(v2 + 712) = v6;

    v3 = *(v2 + 616);
    v4 = *(v2 + 608);
    v5 = sub_25851FDD0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25851FDD0()
{
  v1 = *(v0 + 592);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 464));
  if (*(v1 + 232) != 2)
  {
    v10 = *(v0 + 648);
    v11 = *(v0 + 640);
    v12 = *(v0 + 632);
    v13 = *(v0 + 624);
    sub_258476AE4();
    swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v15 = 4;
    }

    else
    {
      v15 = 5;
    }

    *v14 = v15;
    goto LABEL_8;
  }

  v2 = *(v0 + 688);
  v3 = *(v0 + 600);
  sub_258464C30(*(v0 + 592) + *(v0 + 664), v0 + 504);
  __swift_project_boxed_opaque_existential_1((v0 + 504), *(v0 + 528));
  v4 = *(v0 + 408);
  v5 = *(v0 + 416);
  __swift_project_boxed_opaque_existential_1((v0 + 384), v4);
  (*(v5 + 32))(v4, v5);
  sub_2584EE23C((v0 + 304), v3);
  if (v2)
  {
    v6 = *(v0 + 648);
    v7 = *(v0 + 640);
    v8 = *(v0 + 632);
    v9 = *(v0 + 624);
    sub_2584AB9E8(v0 + 344);
    sub_258467E20(v7, v6);
    sub_258467E20(v9, v8);
    sub_2584AB9E8(v0 + 304);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 504));
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 384));

    v16 = *(v0 + 8);

    return v16();
  }

  v18 = *(v0 + 600);
  v19 = *(v0 + 592);
  sub_2584AB9E8(v0 + 304);
  v20 = type metadata accessor for MediaConnectionPrerequisites(0);
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  v21 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC5D0(v18, v19 + v21, &qword_27F930580, &unk_2585382B0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 504));
  v22 = __swift_project_boxed_opaque_existential_1((v19 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamNegotiator), *(v19 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStreamNegotiator + 24));
  if (*(*v22 + 24))
  {
    v10 = *(v0 + 648);
    v11 = *(v0 + 640);
    v12 = *(v0 + 632);
    v13 = *(v0 + 624);
    sub_2584D29F0();
    swift_allocError();
    *v23 = 0;
LABEL_8:
    swift_willThrow();
    sub_2584AB9E8(v0 + 344);
    sub_258467E20(v11, v10);
    sub_258467E20(v13, v12);
    goto LABEL_9;
  }

  v24 = *(v0 + 720);
  v25 = *(v0 + 712);
  v26 = *(v0 + 704);
  v27 = *(v0 + 696);
  v40 = *(v0 + 760);
  v28 = *(v0 + 592);
  v29 = [*(*v22 + 16) answer];
  v30 = sub_25853292C();
  v32 = v31;

  *(v0 + 728) = v30;
  *(v0 + 736) = v32;
  v33 = (v28 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection);
  v34 = *(v28 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 24);
  v35 = *(v28 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 32);
  v39 = v34;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  *(v0 + 208) = v30;
  *(v0 + 216) = v32;
  *(v0 + 224) = v40;
  *(v0 + 232) = v27;
  *(v0 + 240) = v26;
  *(v0 + 248) = v25;
  *(v0 + 256) = v24;
  *(v0 + 280) = 0;
  *(v0 + 296) = 0x1000000000000000;
  v36 = *(v35 + 80);
  sub_2584A7B8C(v30, v32);
  sub_2584ABAF4(v27, v26);
  sub_2584ABAF4(v25, v24);
  v38 = (v36 + *v36);
  v37 = swift_task_alloc();
  *(v0 + 744) = v37;
  *v37 = v0;
  v37[1] = sub_2585202D8;

  return v38(v0 + 208, v39, v35);
}

uint64_t sub_258520244()
{
  v1 = v0[79];
  v2 = v0[78];
  sub_258467E20(v0[80], v0[81]);
  sub_258467E20(v2, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 58);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2585202D8()
{
  v2 = *v1;
  *(*v1 + 752) = v0;

  v3 = *(v2 + 616);
  v4 = *(v2 + 608);
  if (v0)
  {
    v5 = sub_258520510;
  }

  else
  {
    v5 = sub_2585203F4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2585203F4()
{
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[87];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[78];
  v12 = v0[79];
  sub_258467E20(v2, v1);
  sub_2584AE960(v6, v5);
  sub_2584AE960(v4, v3);
  sub_258467E20(v2, v1);
  sub_2584AE960(v6, v5);
  sub_2584AE960(v4, v3);
  sub_258467E20(v8, v7);
  sub_258467E20(v9, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);

  v10 = v0[1];

  return v10();
}

uint64_t sub_258520510()
{
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[87];
  v7 = v0[81];
  v8 = v0[80];
  v12 = v0[79];
  v9 = v0[78];
  sub_258467E20(v2, v1);
  sub_2584AE960(v6, v5);
  sub_2584AE960(v4, v3);
  sub_258467E20(v8, v7);
  sub_258467E20(v9, v12);
  sub_258467E20(v2, v1);
  sub_2584AE960(v6, v5);
  sub_2584AE960(v4, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);

  v10 = v0[1];

  return v10();
}

uint64_t sub_258520628()
{
  v1[34] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v1[35] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
  v1[36] = v2;
  v3 = *(v2 - 8);
  v1[37] = v3;
  v1[38] = *(v3 + 64);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0);
  v1[41] = swift_task_alloc();
  v4 = type metadata accessor for MediaConnectionPrerequisites(0);
  v1[42] = v4;
  v1[43] = *(v4 - 8);
  v1[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2585207D4, v0, 0);
}

uint64_t sub_2585207D4()
{
  v1 = *(v0 + 272);
  v2 = v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream;
  v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream);
  *(v0 + 360) = v3;
  if (!v3)
  {
    sub_258476AE4();
    swift_allocError();
    *v10 = 8;
    swift_willThrow();
    goto LABEL_5;
  }

  v4 = *(v0 + 336);
  v5 = *(v0 + 344);
  v6 = *(v0 + 328);
  *(v0 + 368) = *(v2 + 8);
  v7 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v7, v6, &qword_27F930580, &unk_2585382B0);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v8 = *(v0 + 328);
    swift_unknownObjectRetain();
    sub_258465168(v8, &qword_27F930580, &unk_2585382B0);
    sub_258476AE4();
    swift_allocError();
    *v9 = 10;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_5:

    v11 = *(v0 + 8);

    return v11();
  }

  v13 = *(v0 + 272);
  sub_25850BB7C(*(v0 + 328), *(v0 + 352));
  if ((*(v13 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_shouldPerformTrafficRegistration) & 1) != 0 && *(*(v0 + 352) + *(*(v0 + 336) + 20)) == 1)
  {
    v14 = *(v0 + 272);
    v15 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistration;
    swift_beginAccess();
    sub_2584AC3B8(v14 + v15, v0 + 136, &qword_27F931828, &unk_25853EB90);
    v16 = *(v0 + 160);
    swift_unknownObjectRetain();
    sub_258465168(v0 + 136, &qword_27F931828, &unk_25853EB90);
    if (!v16)
    {
      v17 = swift_task_alloc();
      *(v0 + 376) = v17;
      *v17 = v0;
      v17[1] = sub_258520D00;

      return sub_25852BA04();
    }
  }

  else
  {
    swift_unknownObjectRetain();
  }

  v18 = *(v0 + 272);
  v19 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistration;
  *(v0 + 392) = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistration;
  swift_beginAccess();
  sub_2584AC3B8(v18 + v19, v0 + 16, &qword_27F931828, &unk_25853EB90);
  if (*(v0 + 40))
  {
    sub_258464C30(v0 + 16, v0 + 96);
    sub_258465168(v0 + 16, &qword_27F931828, &unk_25853EB90);
    v20 = __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    *(v0 + 400) = v20;
    v21 = *v20;

    return MEMORY[0x2822009F8](sub_258520E2C, v21, 0);
  }

  else
  {
    sub_258465168(v0 + 16, &qword_27F931828, &unk_25853EB90);
    v22 = *(v0 + 392);
    v23 = *(v0 + 272);
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    swift_beginAccess();
    sub_2584AC5D0(v0 + 56, v23 + v22, &qword_27F931828, &unk_25853EB90);
    swift_endAccess();
    v24 = *(v0 + 368);
    v25 = *(v0 + 272);
    ObjectType = swift_getObjectType();
    v27 = *(v25 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_isPaused);
    v30 = (*(v24 + 24) + **(v24 + 24));
    v28 = swift_task_alloc();
    *(v0 + 408) = v28;
    *v28 = v0;
    v28[1] = sub_258521040;
    v29 = *(v0 + 320);

    return v30(v29, v27, ObjectType, v24);
  }
}

uint64_t sub_258520D00()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 272);
  if (v0)
  {
    v4 = sub_2585215A0;
  }

  else
  {
    v4 = sub_258521458;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258520E2C()
{
  v1 = *(v0 + 272);
  sub_2585072A8();

  return MEMORY[0x2822009F8](sub_258520E9C, v1, 0);
}

uint64_t sub_258520E9C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v1 = *(v0 + 392);
  v2 = *(v0 + 272);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  swift_beginAccess();
  sub_2584AC5D0(v0 + 56, v2 + v1, &qword_27F931828, &unk_25853EB90);
  swift_endAccess();
  v3 = *(v0 + 368);
  v4 = *(v0 + 272);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_isPaused);
  v10 = (*(v3 + 24) + **(v3 + 24));
  v7 = swift_task_alloc();
  *(v0 + 408) = v7;
  *v7 = v0;
  v7[1] = sub_258521040;
  v8 = *(v0 + 320);

  return v10(v8, v6, ObjectType, v3);
}

uint64_t sub_258521040()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 272);
  if (v0)
  {
    v4 = sub_2585213A8;
  }

  else
  {
    v4 = sub_25852116C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25852116C()
{
  v18 = v0[44];
  v1 = v0[40];
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v17 = v6;
  v8 = sub_25853368C();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = v2;
  (*(v4 + 16))(v2, v1, v5);
  v10 = sub_25852DC88(&qword_27F930588, type metadata accessor for AudioStreamAVConference, &unk_25853F878);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 24) = v10;
  (*(v4 + 32))(v13 + v11, v9, v5);
  *(v13 + v12) = v7;
  swift_retain_n();
  v14 = sub_258476C88(0, 0, v17, &unk_25853F518, v13);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v1, v5);
  sub_25852D594(v18);
  *(v7 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_streamEventMonitor) = v14;

  v15 = v0[1];

  return v15();
}

uint64_t sub_2585213A8()
{
  v1 = *(v0 + 352);
  swift_unknownObjectRelease();
  sub_25852D594(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_258521458()
{
  v1 = v0[46];
  v2 = v0[34];
  ObjectType = swift_getObjectType();
  v4 = *(v2 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_isPaused);
  v8 = (*(v1 + 24) + **(v1 + 24));
  v5 = swift_task_alloc();
  v0[51] = v5;
  *v5 = v0;
  v5[1] = sub_258521040;
  v6 = v0[40];

  return v8(v6, v4, ObjectType, v1);
}

uint64_t sub_2585215A0()
{
  v1 = *(v0 + 352);
  swift_unknownObjectRelease();
  sub_25852D594(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_258521650()
{
  v1[34] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v1[35] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
  v1[36] = v2;
  v3 = *(v2 - 8);
  v1[37] = v3;
  v1[38] = *(v3 + 64);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0);
  v1[41] = swift_task_alloc();
  v4 = type metadata accessor for MediaConnectionPrerequisites(0);
  v1[42] = v4;
  v1[43] = *(v4 - 8);
  v1[44] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference(0);
  v1[45] = sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v6 = sub_25853362C();
  v1[46] = v6;
  v1[47] = v5;

  return MEMORY[0x2822009F8](sub_258521854, v6, v5);
}

uint64_t sub_258521854()
{
  v1 = *(v0 + 272);
  v2 = v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream;
  v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream);
  *(v0 + 384) = v3;
  if (!v3)
  {
    sub_258476AE4();
    swift_allocError();
    *v10 = 8;
    swift_willThrow();
    goto LABEL_5;
  }

  v4 = *(v0 + 336);
  v5 = *(v0 + 344);
  v6 = *(v0 + 328);
  *(v0 + 392) = *(v2 + 8);
  v7 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v7, v6, &qword_27F930580, &unk_2585382B0);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v8 = *(v0 + 328);
    swift_unknownObjectRetain();
    sub_258465168(v8, &qword_27F930580, &unk_2585382B0);
    sub_258476AE4();
    swift_allocError();
    *v9 = 10;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_5:

    v11 = *(v0 + 8);

    return v11();
  }

  v13 = *(v0 + 272);
  sub_25850BB7C(*(v0 + 328), *(v0 + 352));
  if ((*(v13 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_shouldPerformTrafficRegistration) & 1) != 0 && *(*(v0 + 352) + *(*(v0 + 336) + 20)) == 1)
  {
    v14 = *(v0 + 272);
    v15 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistration;
    swift_beginAccess();
    sub_2584AC3B8(v14 + v15, v0 + 136, &qword_27F931828, &unk_25853EB90);
    v16 = *(v0 + 160);
    swift_unknownObjectRetain();
    sub_258465168(v0 + 136, &qword_27F931828, &unk_25853EB90);
    if (!v16)
    {
      v17 = swift_task_alloc();
      *(v0 + 400) = v17;
      *v17 = v0;
      v17[1] = sub_258521D80;

      return sub_25852C14C();
    }
  }

  else
  {
    swift_unknownObjectRetain();
  }

  v18 = *(v0 + 272);
  v19 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistration;
  *(v0 + 416) = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistration;
  swift_beginAccess();
  sub_2584AC3B8(v18 + v19, v0 + 16, &qword_27F931828, &unk_25853EB90);
  if (*(v0 + 40))
  {
    sub_258464C30(v0 + 16, v0 + 96);
    sub_258465168(v0 + 16, &qword_27F931828, &unk_25853EB90);
    v20 = __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    *(v0 + 424) = v20;
    v21 = *v20;

    return MEMORY[0x2822009F8](sub_258521EBC, v21, 0);
  }

  else
  {
    sub_258465168(v0 + 16, &qword_27F931828, &unk_25853EB90);
    v22 = *(v0 + 416);
    v23 = *(v0 + 272);
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    swift_beginAccess();
    sub_2584AC5D0(v0 + 56, v23 + v22, &qword_27F931828, &unk_25853EB90);
    swift_endAccess();
    v24 = *(v0 + 392);
    v25 = *(v0 + 272);
    ObjectType = swift_getObjectType();
    v27 = *(v25 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_isPaused);
    v30 = (*(v24 + 24) + **(v24 + 24));
    v28 = swift_task_alloc();
    *(v0 + 432) = v28;
    *v28 = v0;
    v28[1] = sub_2585220C8;
    v29 = *(v0 + 320);

    return v30(v29, v27, ObjectType, v24);
  }
}

uint64_t sub_258521D80()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  v3 = *(v2 + 376);
  v4 = *(v2 + 368);
  if (v0)
  {
    v5 = sub_2585225FC;
  }

  else
  {
    v5 = sub_2585224B4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_258521EBC()
{
  sub_2585072A8();
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return MEMORY[0x2822009F8](sub_258521F24, v1, v2);
}

uint64_t sub_258521F24()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v1 = *(v0 + 416);
  v2 = *(v0 + 272);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  swift_beginAccess();
  sub_2584AC5D0(v0 + 56, v2 + v1, &qword_27F931828, &unk_25853EB90);
  swift_endAccess();
  v3 = *(v0 + 392);
  v4 = *(v0 + 272);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_isPaused);
  v10 = (*(v3 + 24) + **(v3 + 24));
  v7 = swift_task_alloc();
  *(v0 + 432) = v7;
  *v7 = v0;
  v7[1] = sub_2585220C8;
  v8 = *(v0 + 320);

  return v10(v8, v6, ObjectType, v3);
}

uint64_t sub_2585220C8()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = *(v2 + 376);
  v4 = *(v2 + 368);
  if (v0)
  {
    v5 = sub_258522400;
  }

  else
  {
    v5 = sub_258522204;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_258522204()
{
  v15 = v0[45];
  v1 = v0[40];
  v16 = v0[44];
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v8 = sub_25853368C();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  (*(v4 + 16))(v2, v1, v5);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = (v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v15;
  (*(v4 + 32))(v11 + v9, v2, v5);
  *(v11 + v10) = v7;
  swift_retain_n();
  v12 = sub_258476C88(0, 0, v6, &unk_25853F408, v11);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v1, v5);
  sub_25852D594(v16);
  *(v7 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_streamEventMonitor) = v12;

  v13 = v0[1];

  return v13();
}

uint64_t sub_258522400()
{
  v1 = *(v0 + 352);
  swift_unknownObjectRelease();
  sub_25852D594(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2585224B4()
{
  v1 = v0[49];
  v2 = v0[34];
  ObjectType = swift_getObjectType();
  v4 = *(v2 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_isPaused);
  v8 = (*(v1 + 24) + **(v1 + 24));
  v5 = swift_task_alloc();
  v0[54] = v5;
  *v5 = v0;
  v5[1] = sub_2585220C8;
  v6 = v0[40];

  return v8(v6, v4, ObjectType, v1);
}

uint64_t sub_2585225FC()
{
  v1 = *(v0 + 352);
  swift_unknownObjectRelease();
  sub_25852D594(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2585226C8(uint64_t a1, unint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((v3 + *a3), *(v3 + *a3 + 24));

  v6 = sub_2585138CC(0, 1);
  if (v6 == 2 || (v6 & 1) != 0)
  {
    if (a1 == 0x306C647761 && a2 == 0xE500000000000000 || (sub_258533E2C() & 1) != 0)
    {

      v7 = 0xE400000000000000;
      v8 = 1;
      v9 = 813132908;
      goto LABEL_10;
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = a1;
  v7 = a2;
LABEL_10:
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v10 = sub_258532A4C();
  __swift_project_value_buffer(v10, qword_27F93CFD8);

  v11 = sub_258532A2C();
  v12 = sub_2585338EC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 67109634;
    *(v13 + 4) = v8;
    *(v13 + 8) = 2080;

    v15 = sub_2584713B0(v9, v7, &v17);

    *(v13 + 10) = v15;
    *(v13 + 18) = 2080;
    *(v13 + 20) = sub_2584713B0(a1, a2, &v17);
    _os_log_impl(&dword_25845E000, v11, v12, "UseLLW=%{BOOL}d, localInterface=%s, controlInterface=%s", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v14, -1, -1);
    MEMORY[0x259C82900](v13, -1, -1);
  }

  return v9;
}

uint64_t sub_258522910()
{
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0);
  v1[6] = swift_task_alloc();
  v2 = type metadata accessor for MediaConnectionPrerequisites(0);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258522A08, v0, 0);
}

uint64_t sub_258522A08()
{
  v1 = v0[5];
  v2 = v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream;
  v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream);
  v0[10] = v3;
  if (!v3)
  {
    sub_258476AE4();
    swift_allocError();
    *v11 = 8;
    swift_willThrow();
    goto LABEL_5;
  }

  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v7 = *(v2 + 8);
  v0[11] = v7;
  v8 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v8, v6, &qword_27F930580, &unk_2585382B0);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v9 = v0[6];
    swift_unknownObjectRetain();
    sub_258465168(v9, &qword_27F930580, &unk_2585382B0);
    sub_258476AE4();
    swift_allocError();
    *v10 = 8;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_5:

    v12 = v0[1];

    return v12();
  }

  sub_25850BB7C(v0[6], v0[9]);
  ObjectType = swift_getObjectType();
  v0[12] = ObjectType;
  v15 = *(v7 + 48);
  swift_unknownObjectRetain();
  v17 = (v15 + *v15);
  v16 = swift_task_alloc();
  v0[13] = v16;
  *v16 = v0;
  v16[1] = sub_258522CC4;

  return v17(ObjectType, v7);
}

uint64_t sub_258522CC4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_258522ED4;
  }

  else
  {
    v4 = sub_258522DF0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258522DF0()
{
  if (*(v0[5] + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_streamEventMonitor))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();
  }

  v1 = v0[11];
  v0[15] = *(v1 + 64);
  v0[16] = (v1 + 64) & 0xFFFFFFFFFFFFLL | 0x8E85000000000000;
  v3 = sub_25853362C();

  return MEMORY[0x2822009F8](sub_258522F54, v3, v2);
}

uint64_t sub_258522ED4()
{
  v1 = *(v0 + 72);
  swift_unknownObjectRelease();
  sub_25852D594(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_258522F54()
{
  v1 = *(v0 + 40);
  *(v0 + 136) = (*(v0 + 120))(*(v0 + 96), *(v0 + 88));

  return MEMORY[0x2822009F8](sub_258522FCC, v1, 0);
}

uint64_t sub_258522FCC(uint64_t a1)
{
  v2 = v1[17];
  v3 = v1[11];
  v4 = sub_25853295C();
  [v2 setRtpNWConnectionClientID_];

  v9 = (*(v3 + 56) + **(v3 + 56));
  v5 = swift_task_alloc();
  v1[18] = v5;
  *v5 = v1;
  v5[1] = sub_25852311C;
  v6 = v1[17];
  v7 = v1[12];

  return v9(v6, v7, v3);
}

uint64_t sub_25852311C()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x2822009F8](sub_2585233B4, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[20] = v4;
    *v4 = v2;
    v4[1] = sub_258523288;

    return sub_258520628();
  }
}

uint64_t sub_258523288()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_2585234D4;
  }

  else
  {
    v4 = sub_258523440;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2585233B4()
{
  v1 = *(v0 + 72);

  swift_unknownObjectRelease();
  sub_25852D594(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_258523440()
{
  v1 = *(v0 + 72);

  swift_unknownObjectRelease();
  sub_25852D594(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2585234D4()
{
  v1 = *(v0 + 72);

  swift_unknownObjectRelease();
  sub_25852D594(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_258523560()
{
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0);
  v1[6] = swift_task_alloc();
  v2 = type metadata accessor for MediaConnectionPrerequisites(0);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference(0);
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v4 = sub_25853362C();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x2822009F8](sub_2585236AC, v4, v3);
}

uint64_t sub_2585236AC()
{
  v1 = v0[5];
  v2 = v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream;
  v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaStream);
  v0[12] = v3;
  if (!v3)
  {
    sub_258476AE4();
    swift_allocError();
    *v11 = 8;
    swift_willThrow();
    goto LABEL_5;
  }

  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v7 = *(v2 + 8);
  v0[13] = v7;
  v8 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v8, v6, &qword_27F930580, &unk_2585382B0);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v9 = v0[6];
    swift_unknownObjectRetain();
    sub_258465168(v9, &qword_27F930580, &unk_2585382B0);
    sub_258476AE4();
    swift_allocError();
    *v10 = 8;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_5:

    v12 = v0[1];

    return v12();
  }

  sub_25850BB7C(v0[6], v0[9]);
  ObjectType = swift_getObjectType();
  v0[14] = ObjectType;
  v15 = *(v7 + 48);
  swift_unknownObjectRetain();
  v17 = (v15 + *v15);
  v16 = swift_task_alloc();
  v0[15] = v16;
  *v16 = v0;
  v16[1] = sub_258523968;

  return v17(ObjectType, v7);
}

uint64_t sub_258523968()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_258523B88;
  }

  else
  {
    v5 = sub_258523AA4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_258523AA4()
{
  if (*(v0[5] + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_streamEventMonitor))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();
  }

  v1 = v0[13];
  v0[17] = *(v1 + 64);
  v0[18] = (v1 + 64) & 0xFFFFFFFFFFFFLL | 0x8E85000000000000;
  v3 = sub_25853362C();

  return MEMORY[0x2822009F8](sub_258523C0C, v3, v2);
}

uint64_t sub_258523B88()
{
  v1 = *(v0 + 72);
  swift_unknownObjectRelease();
  sub_25852D594(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_258523C0C()
{
  *(v0 + 152) = (*(v0 + 136))(*(v0 + 112), *(v0 + 104));
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_258523C7C, v1, v2);
}

uint64_t sub_258523C7C(uint64_t a1)
{
  v2 = v1[19];
  v3 = v1[13];
  v4 = sub_25853295C();
  [v2 setRtpNWConnectionClientID_];

  v9 = (*(v3 + 56) + **(v3 + 56));
  v5 = swift_task_alloc();
  v1[20] = v5;
  *v5 = v1;
  v5[1] = sub_258523DCC;
  v6 = v1[19];
  v7 = v1[14];

  return v9(v6, v7, v3);
}

uint64_t sub_258523DCC()
{
  v2 = *v1;
  v2[21] = v0;

  if (v0)
  {
    v3 = v2[10];
    v4 = v2[11];

    return MEMORY[0x2822009F8](sub_258524070, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[22] = v5;
    *v5 = v2;
    v5[1] = sub_258523F34;

    return sub_258521650();
  }
}

uint64_t sub_258523F34()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_258524198;
  }

  else
  {
    v5 = sub_258524100;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_258524070()
{
  v1 = *(v0 + 72);

  swift_unknownObjectRelease();
  sub_25852D594(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_258524100()
{
  v1 = *(v0 + 72);

  swift_unknownObjectRelease();
  sub_25852D594(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_258524198()
{
  v1 = *(v0 + 72);

  swift_unknownObjectRelease();
  sub_25852D594(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_258524228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[54] = a4;
  v5[55] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319E0, &qword_25853F458);
  v5[56] = v7;
  v5[57] = *(v7 - 8);
  v5[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2585242F8, a5, 0);
}

uint64_t sub_2585242F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319D0, &qword_25853F3A0);
  sub_2585336FC();
  v1 = sub_25852DC88(&qword_27F930588, type metadata accessor for AudioStreamAVConference, &unk_25853F878);
  v0[59] = v1;
  v2 = v0[55];
  v3 = swift_task_alloc();
  v0[60] = v3;
  *v3 = v0;
  v3[1] = sub_258524410;
  v4 = v0[56];

  return MEMORY[0x2822005A8](v0 + 2, v2, v1, v4, v0 + 53);
}

uint64_t sub_258524410()
{
  v2 = *v1;

  v3 = *(v2 + 440);
  if (v0)
  {
    v4 = sub_2585247CC;
  }

  else
  {
    v4 = sub_258524524;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258524524(uint64_t a1)
{
  if (*(v1 + 112) == 255)
  {
    (*(*(v1 + 456) + 8))(*(v1 + 464), *(v1 + 448));
    goto LABEL_5;
  }

  v2 = *(v1 + 48);
  *(v1 + 168) = *(v1 + 64);
  v3 = *(v1 + 96);
  *(v1 + 184) = *(v1 + 80);
  *(v1 + 200) = v3;
  *(v1 + 216) = *(v1 + 112);
  v4 = *(v1 + 32);
  *(v1 + 120) = *(v1 + 16);
  *(v1 + 136) = v4;
  *(v1 + 152) = v2;
  if (sub_25853376C())
  {
    v6 = *(v1 + 456);
    v5 = *(v1 + 464);
    v7 = *(v1 + 448);
    sub_258465168(v1 + 120, &qword_27F9319E8, &qword_25853F460);
    (*(v6 + 8))(v5, v7);
LABEL_5:

    v8 = *(v1 + 8);

    return v8();
  }

  sub_2584AC3B8(v1 + 120, v1 + 224, &qword_27F9319E8, &qword_25853F460);
  if (*(v1 + 320))
  {
    if (*(v1 + 320) == 1)
    {
      sub_258465168(v1 + 120, &qword_27F9319E8, &qword_25853F460);
      v10 = &qword_27F92FB90;
      v11 = &qword_258535420;
      v12 = v1 + 264;
    }

    else
    {
      v10 = &qword_27F9319E8;
      v11 = &qword_25853F460;
      v12 = v1 + 120;
    }

    sub_258465168(v12, v10, v11);
    sub_258465168(v1 + 224, v10, v11);
    v17 = *(v1 + 472);
    v18 = *(v1 + 440);
    v19 = swift_task_alloc();
    *(v1 + 480) = v19;
    *v19 = v1;
    v19[1] = sub_258524410;
    v20 = *(v1 + 448);

    return MEMORY[0x2822005A8](v1 + 16, v18, v17, v20, v1 + 424);
  }

  else
  {
    v13 = *(v1 + 272);
    *(v1 + 360) = *(v1 + 256);
    *(v1 + 376) = v13;
    v14 = *(v1 + 304);
    *(v1 + 392) = *(v1 + 288);
    *(v1 + 408) = v14;
    v15 = *(v1 + 240);
    *(v1 + 328) = *(v1 + 224);
    *(v1 + 344) = v15;
    v16 = swift_task_alloc();
    *(v1 + 488) = v16;
    *v16 = v1;
    v16[1] = sub_258524A0C;

    return sub_258525E04(v1 + 328);
  }
}

uint64_t sub_2585247CC()
{
  v13 = v0;
  (*(v0[57] + 8))(v0[58], v0[56]);
  v1 = v0[53];
  v0[63] = v1;

  v2 = v1;
  v3 = sub_258532A2C();
  v4 = sub_2585338CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v5 = 136315394;

    *(v5 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, &v12);
    *(v5 + 12) = 2112;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_25845E000, v3, v4, "%s Connection event processing failed with error: %@", v5, 0x16u);
    sub_258465168(v6, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v5, -1, -1);
  }

  else
  {
  }

  v10 = swift_task_alloc();
  v0[64] = v10;
  *v10 = v0;
  v10[1] = sub_258524E7C;

  return sub_258519188(v1);
}

uint64_t sub_258524A0C()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = *(v2 + 440);
  if (v0)
  {
    v4 = sub_258524C14;
  }

  else
  {
    v4 = sub_258524B38;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_258524B38()
{
  sub_2584A975C((v0 + 41));
  sub_258465168((v0 + 15), &qword_27F9319E8, &qword_25853F460);
  v1 = v0[59];
  v2 = v0[55];
  v3 = swift_task_alloc();
  v0[60] = v3;
  *v3 = v0;
  v3[1] = sub_258524410;
  v4 = v0[56];

  return MEMORY[0x2822005A8](v0 + 2, v2, v1, v4, v0 + 53);
}

uint64_t sub_258524C14()
{
  v16 = v0;
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[56];
  sub_2584A975C((v0 + 41));
  sub_258465168((v0 + 15), &qword_27F9319E8, &qword_25853F460);
  (*(v2 + 8))(v1, v3);
  v4 = v0[62];
  v0[63] = v4;

  v5 = v4;
  v6 = sub_258532A2C();
  v7 = sub_2585338CC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;

    *(v8 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, &v15);
    *(v8 + 12) = 2112;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_25845E000, v6, v7, "%s Connection event processing failed with error: %@", v8, 0x16u);
    sub_258465168(v9, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x259C82900](v10, -1, -1);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  else
  {
  }

  v13 = swift_task_alloc();
  v0[64] = v13;
  *v13 = v0;
  v13[1] = sub_258524E7C;

  return sub_258519188(v4);
}

uint64_t sub_258524E7C()
{
  v1 = *(*v0 + 440);

  return MEMORY[0x2822009F8](sub_258524F8C, v1, 0);
}

uint64_t sub_258524F8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258524FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[54] = a4;
  v5[55] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319E0, &qword_25853F458);
  v5[56] = v6;
  v5[57] = *(v6 - 8);
  v5[58] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference(0);
  v5[59] = sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v8 = sub_25853362C();
  v5[60] = v8;
  v5[61] = v7;

  return MEMORY[0x2822009F8](sub_258525120, v8, v7);
}

uint64_t sub_258525120()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319D0, &qword_25853F3A0);
  sub_2585336FC();
  v1 = v0[59];
  v2 = v0[55];
  v3 = swift_task_alloc();
  v0[62] = v3;
  *v3 = v0;
  v3[1] = sub_258525200;
  v4 = v0[56];

  return MEMORY[0x2822005A8](v0 + 2, v2, v1, v4, v0 + 53);
}

uint64_t sub_258525200()
{
  v2 = *v1;

  v3 = *(v2 + 480);
  v4 = *(v2 + 488);
  if (v0)
  {
    v5 = sub_2585255B8;
  }

  else
  {
    v5 = sub_258525310;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_258525310(uint64_t a1)
{
  if (*(v1 + 112) == 255)
  {
    (*(*(v1 + 456) + 8))(*(v1 + 464), *(v1 + 448));
    goto LABEL_5;
  }

  v2 = *(v1 + 48);
  *(v1 + 168) = *(v1 + 64);
  v3 = *(v1 + 96);
  *(v1 + 184) = *(v1 + 80);
  *(v1 + 200) = v3;
  *(v1 + 216) = *(v1 + 112);
  v4 = *(v1 + 32);
  *(v1 + 120) = *(v1 + 16);
  *(v1 + 136) = v4;
  *(v1 + 152) = v2;
  if (sub_25853376C())
  {
    v6 = *(v1 + 456);
    v5 = *(v1 + 464);
    v7 = *(v1 + 448);
    sub_258465168(v1 + 120, &qword_27F9319E8, &qword_25853F460);
    (*(v6 + 8))(v5, v7);
LABEL_5:

    v8 = *(v1 + 8);

    return v8();
  }

  sub_2584AC3B8(v1 + 120, v1 + 224, &qword_27F9319E8, &qword_25853F460);
  if (*(v1 + 320))
  {
    if (*(v1 + 320) == 1)
    {
      sub_258465168(v1 + 120, &qword_27F9319E8, &qword_25853F460);
      v10 = &qword_27F92FB90;
      v11 = &qword_258535420;
      v12 = v1 + 264;
    }

    else
    {
      v10 = &qword_27F9319E8;
      v11 = &qword_25853F460;
      v12 = v1 + 120;
    }

    sub_258465168(v12, v10, v11);
    sub_258465168(v1 + 224, v10, v11);
    v17 = *(v1 + 472);
    v18 = *(v1 + 440);
    v19 = swift_task_alloc();
    *(v1 + 496) = v19;
    *v19 = v1;
    v19[1] = sub_258525200;
    v20 = *(v1 + 448);

    return MEMORY[0x2822005A8](v1 + 16, v18, v17, v20, v1 + 424);
  }

  else
  {
    v13 = *(v1 + 272);
    *(v1 + 360) = *(v1 + 256);
    *(v1 + 376) = v13;
    v14 = *(v1 + 304);
    *(v1 + 392) = *(v1 + 288);
    *(v1 + 408) = v14;
    v15 = *(v1 + 240);
    *(v1 + 328) = *(v1 + 224);
    *(v1 + 344) = v15;
    v16 = swift_task_alloc();
    *(v1 + 504) = v16;
    *v16 = v1;
    v16[1] = sub_2585257F8;

    return sub_258526570(v1 + 328);
  }
}

uint64_t sub_2585255B8()
{
  v13 = v0;
  (*(v0[57] + 8))(v0[58], v0[56]);
  v1 = v0[53];
  v0[65] = v1;

  v2 = v1;
  v3 = sub_258532A2C();
  v4 = sub_2585338CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v5 = 136315394;

    *(v5 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v12);
    *(v5 + 12) = 2112;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_25845E000, v3, v4, "%s Connection event processing failed with error: %@", v5, 0x16u);
    sub_258465168(v6, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v5, -1, -1);
  }

  else
  {
  }

  v10 = swift_task_alloc();
  v0[66] = v10;
  *v10 = v0;
  v10[1] = sub_258525C78;

  return sub_258519A34(v1);
}

uint64_t sub_2585257F8()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = *(v2 + 488);
  v4 = *(v2 + 480);
  if (v0)
  {
    v5 = sub_258525A10;
  }

  else
  {
    v5 = sub_258525934;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_258525934()
{
  sub_2584A975C((v0 + 41));
  sub_258465168((v0 + 15), &qword_27F9319E8, &qword_25853F460);
  v1 = v0[59];
  v2 = v0[55];
  v3 = swift_task_alloc();
  v0[62] = v3;
  *v3 = v0;
  v3[1] = sub_258525200;
  v4 = v0[56];

  return MEMORY[0x2822005A8](v0 + 2, v2, v1, v4, v0 + 53);
}

uint64_t sub_258525A10()
{
  v16 = v0;
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[56];
  sub_2584A975C((v0 + 41));
  sub_258465168((v0 + 15), &qword_27F9319E8, &qword_25853F460);
  (*(v2 + 8))(v1, v3);
  v4 = v0[64];
  v0[65] = v4;

  v5 = v4;
  v6 = sub_258532A2C();
  v7 = sub_2585338CC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;

    *(v8 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v15);
    *(v8 + 12) = 2112;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_25845E000, v6, v7, "%s Connection event processing failed with error: %@", v8, 0x16u);
    sub_258465168(v9, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x259C82900](v10, -1, -1);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  else
  {
  }

  v13 = swift_task_alloc();
  v0[66] = v13;
  *v13 = v0;
  v13[1] = sub_258525C78;

  return sub_258519A34(v4);
}

uint64_t sub_258525C78()
{
  v1 = *v0;

  v2 = *(v1 + 488);
  v3 = *(v1 + 480);

  return MEMORY[0x2822009F8](sub_258525D98, v3, v2);
}

uint64_t sub_258525D98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258525E04(uint64_t a1)
{
  *(v2 + 304) = a1;
  *(v2 + 312) = v1;
  return MEMORY[0x2822009F8](sub_258525E24, v1, 0);
}

uint64_t sub_258525E24()
{
  v36 = v0;
  v1 = *(v0 + 304);

  sub_2584A97B0(v1, v0 + 16);
  v2 = sub_258532A2C();
  v3 = sub_2585338BC();
  sub_2584A975C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 304);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136315394;

    *(v5 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, &v29);
    *(v5 + 12) = 2080;
    v7 = v4[3];
    v32 = v4[2];
    v33 = v7;
    v8 = v4[5];
    v34 = v4[4];
    v35 = v8;
    v9 = v4[1];
    v30 = *v4;
    v31 = v9;
    sub_2584A97B0(v4, v0 + 208);
    v10 = sub_2584B2E74();
    v12 = v11;
    v13 = v33;
    *(v0 + 144) = v32;
    *(v0 + 160) = v13;
    v14 = v35;
    *(v0 + 176) = v34;
    *(v0 + 192) = v14;
    v15 = v31;
    *(v0 + 112) = v30;
    *(v0 + 128) = v15;
    sub_2584A975C(v0 + 112);
    v16 = sub_2584713B0(v10, v12, &v29);

    *(v5 + 14) = v16;
    _os_log_impl(&dword_25845E000, v2, v3, "%s received message:%s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v6, -1, -1);
    MEMORY[0x259C82900](v5, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 304);
  v18 = (*(v17 + 11) >> 59) & 6 | ((*(v17 + 9) & 0x2000000000000000) != 0);
  if (v18 > 6)
  {
    goto LABEL_16;
  }

  if (((1 << ((*(v17 + 11) >> 59) & 6 | ((*(v17 + 9) & 0x2000000000000000) != 0))) & 0x54) != 0)
  {
    sub_258528EF4(v17, &OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_waitForResponseContinuation);
    v19 = *(v0 + 8);

    return v19();
  }

  if (((1 << ((*(v17 + 11) >> 59) & 6 | ((*(v17 + 9) & 0x2000000000000000) != 0))) & 0xA) != 0)
  {
    sub_258476AE4();
    v20 = swift_allocError();
    *(v0 + 344) = v20;
    *v21 = 19;
    v22 = swift_task_alloc();
    *(v0 + 352) = v22;
    *v22 = v0;
    v23 = sub_25852645C;
LABEL_17:
    v22[1] = v23;

    return sub_258519188(v20);
  }

  if (v18 != 5)
  {
LABEL_16:
    v27 = byte_25853F562[*v17];
    sub_258476AE4();
    v20 = swift_allocError();
    *(v0 + 328) = v20;
    *v28 = v27;
    v22 = swift_task_alloc();
    *(v0 + 336) = v22;
    *v22 = v0;
    v23 = sub_258526348;
    goto LABEL_17;
  }

  v25 = swift_task_alloc();
  *(v0 + 320) = v25;
  *v25 = v0;
  v25[1] = sub_258526254;
  v26 = *(v0 + 304);

  return sub_258526A58(v26);
}

uint64_t sub_258526254()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_258526348()
{
  v1 = *(*v0 + 328);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25852645C()
{
  v1 = *(*v0 + 344);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_258526570(uint64_t a1)
{
  *(v2 + 304) = a1;
  *(v2 + 312) = v1;
  type metadata accessor for VideoStreamAVConference(0);
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v4 = sub_25853362C();

  return MEMORY[0x2822009F8](sub_258526628, v4, v3);
}

uint64_t sub_258526628()
{
  v36 = v0;
  v1 = *(v0 + 304);

  sub_2584A97B0(v1, v0 + 16);
  v2 = sub_258532A2C();
  v3 = sub_2585338BC();
  sub_2584A975C(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 304);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29 = v6;
    *v5 = 136315394;

    *(v5 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v29);
    *(v5 + 12) = 2080;
    v7 = v4[3];
    v32 = v4[2];
    v33 = v7;
    v8 = v4[5];
    v34 = v4[4];
    v35 = v8;
    v9 = v4[1];
    v30 = *v4;
    v31 = v9;
    sub_2584A97B0(v4, v0 + 208);
    v10 = sub_2584B2E74();
    v12 = v11;
    v13 = v33;
    *(v0 + 144) = v32;
    *(v0 + 160) = v13;
    v14 = v35;
    *(v0 + 176) = v34;
    *(v0 + 192) = v14;
    v15 = v31;
    *(v0 + 112) = v30;
    *(v0 + 128) = v15;
    sub_2584A975C(v0 + 112);
    v16 = sub_2584713B0(v10, v12, &v29);

    *(v5 + 14) = v16;
    _os_log_impl(&dword_25845E000, v2, v3, "%s received message:%s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v6, -1, -1);
    MEMORY[0x259C82900](v5, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 304);
  v18 = (*(v17 + 11) >> 59) & 6 | ((*(v17 + 9) & 0x2000000000000000) != 0);
  if (v18 > 6)
  {
    goto LABEL_16;
  }

  if (((1 << ((*(v17 + 11) >> 59) & 6 | ((*(v17 + 9) & 0x2000000000000000) != 0))) & 0x54) != 0)
  {
    sub_258528EF4(v17, &OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_waitForResponseContinuation);
    v19 = *(v0 + 8);

    return v19();
  }

  if (((1 << ((*(v17 + 11) >> 59) & 6 | ((*(v17 + 9) & 0x2000000000000000) != 0))) & 0xA) != 0)
  {
    sub_258476AE4();
    v20 = swift_allocError();
    *(v0 + 344) = v20;
    *v21 = 19;
    v22 = swift_task_alloc();
    *(v0 + 352) = v22;
    *v22 = v0;
    v23 = sub_25852E29C;
LABEL_17:
    v22[1] = v23;

    return sub_258519A34(v20);
  }

  if (v18 != 5)
  {
LABEL_16:
    v27 = byte_25853F562[*v17];
    sub_258476AE4();
    v20 = swift_allocError();
    *(v0 + 328) = v20;
    *v28 = v27;
    v22 = swift_task_alloc();
    *(v0 + 336) = v22;
    *v22 = v0;
    v23 = sub_25852E298;
    goto LABEL_17;
  }

  v25 = swift_task_alloc();
  *(v0 + 320) = v25;
  *v25 = v0;
  v25[1] = sub_25852E2A4;
  v26 = *(v0 + 304);

  return sub_258527C84(v26);
}

uint64_t sub_258526A58(_OWORD *a1)
{
  *(v2 + 928) = v1;
  *(v2 + 920) = a1;
  v3 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v3;
  v4 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v4;
  v5 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0);
  *(v2 + 936) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258526B10, v1, 0);
}

uint64_t sub_258526B10()
{
  v1 = *(v0 + 928);
  if (*(v1 + 121) != 4)
  {
    sub_258476AE4();
    swift_allocError();
    *v23 = 0;
LABEL_9:
    swift_willThrow();
    goto LABEL_12;
  }

  v2 = *(v0 + 920);
  v3 = v2[1];
  *(v0 + 944) = v3;
  *(v0 + 952) = v2[4];
  *(v0 + 960) = v2[5];
  *(v0 + 968) = v2[6];
  *(v0 + 976) = v2[7];
  *(v0 + 984) = v2[8];
  if (((v2[11] >> 59) & 6 | ((v2[9] & 0x2000000000000000) != 0)) != 5)
  {
    sub_258476AE4();
    swift_allocError();
    *v24 = 19;
    goto LABEL_9;
  }

  v4 = v2[3];
  *(v0 + 992) = v4;
  v5 = v2[2];
  *(v0 + 1000) = v5;
  v6 = *v2;
  *(v0 + 1008) = *v2;
  *(v1 + 121) = 3;
  v7 = *(v0 + 96);
  *(v0 + 176) = *(v0 + 80);
  *(v0 + 192) = v7;
  v8 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 48);
  *(v0 + 160) = v8;
  v9 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 16);
  *(v0 + 128) = v9;
  v10 = *(v0 + 200) & 0xCFFFFFFFFFFFFFFFLL;
  *(v0 + 184) &= ~0x2000000000000000uLL;
  *(v0 + 200) = v10;
  sub_25852DBD0(v0 + 112, v0 + 496);
  sub_25852FFD0(4);
  v11 = type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider(0);
  *(v0 + 1016) = v11;
  swift_allocObject();
  v12 = sub_2584EAE98();
  *(v0 + 672) = v11;
  *(v0 + 680) = &off_28698FE70;
  *(v0 + 648) = v12;
  *(v0 + 872) = v5;
  *(v0 + 880) = v4;
  *(v0 + 856) = v6;
  *(v0 + 864) = v3;
  sub_25852DC2C(v0 + 872, v0 + 888);
  sub_25852DC2C(v0 + 856, v0 + 904);
  sub_2584A7B8C(v5, v4);
  v13 = sub_2584B80A0(v5, v4);
  if (v14 && (v15 = sub_2584BA8B8(v13, v14), v17 = v16, , v17))
  {
    v18 = sub_2584ADD54(v5, v4, v6, v3);
    *(v0 + 1024) = v19;
    if (v19)
    {
      v20 = v19;
      v33 = v18;
      __swift_project_boxed_opaque_existential_1((v0 + 648), *(v0 + 672));
      v32 = sub_2585226C8(v15, v17, &OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_userDefaultsProvider);
      v22 = v21;

      *(v0 + 1032) = v22;
      v30 = sub_2584BC58C();
      v31 = swift_task_alloc();
      *(v0 + 1040) = v31;
      *v31 = v0;
      v31[1] = sub_258526F18;

      return sub_2584EB264(v0 + 608, v32, v22, v33, v20, v30);
    }

    v25 = *(v0 + 920);

    sub_258476AE4();
    swift_allocError();
    v27 = 13;
  }

  else
  {
    v25 = *(v0 + 920);
    sub_258476AE4();
    swift_allocError();
    v27 = 12;
  }

  *v26 = v27;
  swift_willThrow();
  sub_2584A975C(v25);
  sub_258467E20(v5, v4);
  sub_258467E20(v6, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 648));
LABEL_12:

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_258526F18()
{
  v2 = *v1;
  *(*v1 + 1048) = v0;

  if (v0)
  {
    v3 = *(v2 + 928);

    v4 = sub_258527410;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 928);
    *(v2 + 1120) = *(v2 + 608);
    *(v2 + 1056) = *(v2 + 616);
    *(v2 + 1072) = *(v2 + 632);

    v4 = sub_25852708C;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_25852708C()
{
  v1 = *(v0 + 928);
  if (*(v1 + 121) != 3)
  {
    v10 = *(v0 + 1008);
    v11 = *(v0 + 1000);
    v12 = *(v0 + 992);
    v13 = *(v0 + 944);
    v14 = *(v0 + 920);
    sub_258476AE4();
    swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v16 = 4;
    }

    else
    {
      v16 = 5;
    }

    *v15 = v16;
    swift_willThrow();
    sub_2584A975C(v14);
    sub_2584AB9E8(v0 + 608);
    sub_258467E20(v11, v12);
    sub_258467E20(v10, v13);
    goto LABEL_8;
  }

  v2 = *(v0 + 1048);
  v3 = *(v0 + 984);
  v4 = *(v0 + 936);
  v31 = *(v0 + 968);
  v32 = *(v0 + 952);
  __swift_project_boxed_opaque_existential_1((v0 + 648), *(v0 + 672));
  *(v0 + 568) = v32;
  *(v0 + 584) = v31;
  *(v0 + 600) = v3;
  sub_2584EE23C((v0 + 568), v4);
  if (v2)
  {
    v5 = *(v0 + 1008);
    v6 = *(v0 + 1000);
    v7 = *(v0 + 992);
    v8 = *(v0 + 944);
    v9 = *(v0 + 920);
    sub_2584AB9E8(v0 + 608);
    sub_258467E20(v6, v7);
    sub_258467E20(v5, v8);
    sub_2584A975C(v9);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 648));

    v17 = *(v0 + 8);

    return v17();
  }

  v19 = *(v0 + 1016);
  v20 = *(v0 + 936);
  v21 = *(v0 + 928);
  v22 = type metadata accessor for MediaConnectionPrerequisites(0);
  (*(*(v22 - 8) + 56))(v20, 0, 1, v22);
  v23 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC5D0(v20, v21 + v23, &qword_27F930580, &unk_2585382B0);
  swift_endAccess();
  sub_258464C30(v0 + 648, v0 + 688);
  v24 = *(v0 + 712);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 688, v24);
  v26 = *(v24 - 8);
  v27 = swift_task_alloc();
  (*(v26 + 16))(v27, v25, v24);
  v28 = *v27;
  *(v0 + 752) = v19;
  *(v0 + 760) = &off_28698FE70;
  *(v0 + 728) = v28;
  v29 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v21 + v29));
  sub_258464C18((v0 + 728), v21 + v29);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 688));

  v30 = swift_task_alloc();
  *(v0 + 1088) = v30;
  *v30 = v0;
  v30[1] = sub_2585274B0;

  return sub_258522910();
}

uint64_t sub_258527410()
{
  v1 = v0[126];
  v2 = v0[118];
  v3 = v0[115];
  sub_258467E20(v0[125], v0[124]);
  sub_258467E20(v1, v2);
  sub_2584A975C(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 81);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2585274B0()
{
  v2 = *v1;
  *(*v1 + 1096) = v0;

  v3 = *(v2 + 928);
  if (v0)
  {
    v4 = sub_25852783C;
  }

  else
  {
    v4 = sub_2585275DC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2585275DC()
{
  v1 = *(v0 + 928);
  if (*(v1 + 121) == 3)
  {
    v2 = *(v0 + 1120);
    v3 = (v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection);
    v4 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection + 24);
    v5 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection + 32);
    v17 = *(v0 + 1072);
    v19 = *(v0 + 1056);
    __swift_project_boxed_opaque_existential_1(v3, v4);
    *(v0 + 208) = v2;
    *(v0 + 232) = v17;
    *(v0 + 216) = v19;
    *(v0 + 280) = 0;
    *(v0 + 296) = 0x3000000000000000;
    v6 = *(v5 + 80);
    sub_2584ABA3C(v0 + 608, v0 + 768);
    v18 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v0 + 1104) = v7;
    *v7 = v0;
    v7[1] = sub_2585278E8;

    return v18(v0 + 208, v4, v5);
  }

  else
  {
    v9 = *(v0 + 1008);
    v10 = *(v0 + 1000);
    v11 = *(v0 + 992);
    v12 = *(v0 + 944);
    v13 = *(v0 + 920);
    sub_258476AE4();
    swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v15 = 4;
    }

    else
    {
      v15 = 5;
    }

    *v14 = v15;
    swift_willThrow();
    sub_2584A975C(v13);
    sub_2584AB9E8(v0 + 608);
    sub_258467E20(v10, v11);
    sub_258467E20(v9, v12);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 648));

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_25852783C()
{
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];
  v4 = v0[118];
  sub_2584A975C(v0[115]);
  sub_2584AB9E8((v0 + 76));
  sub_258467E20(v2, v3);
  sub_258467E20(v1, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 81);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2585278E8()
{
  v2 = *v1;
  *(v2 + 1112) = v0;

  v3 = *(v2 + 928);
  v4 = *(v2 + 224);
  if (v0)
  {
    *(v2 + 304) = *(v2 + 208);
    *(v2 + 320) = v4;
    v5 = *(v2 + 240);
    v6 = *(v2 + 256);
    v7 = *(v2 + 288);
    *(v2 + 368) = *(v2 + 272);
    *(v2 + 384) = v7;
    *(v2 + 336) = v5;
    *(v2 + 352) = v6;
    sub_2584A975C(v2 + 304);
    v8 = sub_258527BCC;
  }

  else
  {
    *(v2 + 400) = *(v2 + 208);
    *(v2 + 416) = v4;
    v9 = *(v2 + 240);
    v10 = *(v2 + 256);
    v11 = *(v2 + 288);
    *(v2 + 464) = *(v2 + 272);
    *(v2 + 480) = v11;
    *(v2 + 432) = v9;
    *(v2 + 448) = v10;
    sub_2584A975C(v2 + 400);
    v8 = sub_258527A58;
  }

  return MEMORY[0x2822009F8](v8, v3, 0);
}

uint64_t sub_258527A58()
{
  v1 = v0[116];
  v2 = v0[126];
  v3 = v0[125];
  v4 = v0[124];
  v5 = v0[118];
  if (*(v1 + 121) == 3)
  {
    v6 = v0[115];
    *(v1 + 121) = 4;
    sub_25852FFD0(3);
    sub_2584A975C(v6);
    sub_2584AB9E8((v0 + 76));
    sub_258467E20(v3, v4);
    sub_258467E20(v2, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 81);

    v7 = v0[1];
  }

  else
  {
    v8 = v0[115];
    sub_258476AE4();
    swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v10 = 4;
    }

    else
    {
      v10 = 5;
    }

    *v9 = v10;
    swift_willThrow();
    sub_2584A975C(v8);
    sub_2584AB9E8((v0 + 76));
    sub_258467E20(v3, v4);
    sub_258467E20(v2, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 81);

    v7 = v0[1];
  }

  return v7();
}

uint64_t sub_258527BCC()
{
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];
  v4 = v0[118];
  v5 = v0[115];
  sub_2584AB9E8((v0 + 76));
  sub_258467E20(v2, v3);
  sub_258467E20(v1, v4);
  sub_2584A975C(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 81);

  v6 = v0[1];

  return v6();
}

uint64_t sub_258527C84(_OWORD *a1)
{
  *(v2 + 928) = v1;
  *(v2 + 920) = a1;
  v3 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v3;
  v4 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v4;
  v5 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0);
  *(v2 + 936) = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference(0);
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v7 = sub_25853362C();
  *(v2 + 944) = v7;
  *(v2 + 952) = v6;

  return MEMORY[0x2822009F8](sub_258527D94, v7, v6);
}

uint64_t sub_258527D94()
{
  v1 = *(v0 + 928);
  if (*(v1 + 232) != 4)
  {
    sub_258476AE4();
    swift_allocError();
    *v23 = 0;
LABEL_9:
    swift_willThrow();
    goto LABEL_12;
  }

  v2 = *(v0 + 920);
  v3 = v2[1];
  *(v0 + 960) = v3;
  *(v0 + 968) = v2[4];
  *(v0 + 976) = v2[5];
  *(v0 + 984) = v2[6];
  *(v0 + 992) = v2[7];
  *(v0 + 1000) = v2[8];
  if (((v2[11] >> 59) & 6 | ((v2[9] & 0x2000000000000000) != 0)) != 5)
  {
    sub_258476AE4();
    swift_allocError();
    *v24 = 19;
    goto LABEL_9;
  }

  v4 = v2[3];
  *(v0 + 1008) = v4;
  v5 = v2[2];
  *(v0 + 1016) = v5;
  v6 = *v2;
  *(v0 + 1024) = *v2;
  *(v1 + 232) = 3;
  v7 = *(v0 + 96);
  *(v0 + 176) = *(v0 + 80);
  *(v0 + 192) = v7;
  v8 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 48);
  *(v0 + 160) = v8;
  v9 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 16);
  *(v0 + 128) = v9;
  v10 = *(v0 + 200) & 0xCFFFFFFFFFFFFFFFLL;
  *(v0 + 184) &= ~0x2000000000000000uLL;
  *(v0 + 200) = v10;
  sub_25852DBD0(v0 + 112, v0 + 496);
  sub_2585084C8(4);
  v11 = type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider(0);
  *(v0 + 1032) = v11;
  swift_allocObject();
  v12 = sub_2584EAE98();
  *(v0 + 672) = v11;
  *(v0 + 680) = &off_28698FE70;
  *(v0 + 648) = v12;
  *(v0 + 872) = v5;
  *(v0 + 880) = v4;
  *(v0 + 856) = v6;
  *(v0 + 864) = v3;
  sub_25852DC2C(v0 + 872, v0 + 888);
  sub_25852DC2C(v0 + 856, v0 + 904);
  sub_2584A7B8C(v5, v4);
  v13 = sub_2584B80A0(v5, v4);
  if (v14 && (v15 = sub_2584BA8B8(v13, v14), v17 = v16, , v17))
  {
    v18 = sub_2584ADD54(v5, v4, v6, v3);
    *(v0 + 1040) = v19;
    if (v19)
    {
      v20 = v19;
      v33 = v18;
      __swift_project_boxed_opaque_existential_1((v0 + 648), *(v0 + 672));
      v32 = sub_2585226C8(v15, v17, &OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_userDefaultsProvider);
      v22 = v21;

      *(v0 + 1048) = v22;
      v30 = sub_2584BC58C();
      v31 = swift_task_alloc();
      *(v0 + 1056) = v31;
      *v31 = v0;
      v31[1] = sub_25852819C;

      return sub_2584EB264(v0 + 608, v32, v22, v33, v20, v30);
    }

    v25 = *(v0 + 920);

    sub_258476AE4();
    swift_allocError();
    v27 = 13;
  }

  else
  {
    v25 = *(v0 + 920);
    sub_258476AE4();
    swift_allocError();
    v27 = 12;
  }

  *v26 = v27;
  swift_willThrow();
  sub_2584A975C(v25);
  sub_258467E20(v5, v4);
  sub_258467E20(v6, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 648));
LABEL_12:

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_25852819C()
{
  v2 = *v1;
  *(*v1 + 1064) = v0;

  if (v0)
  {

    v3 = *(v2 + 952);
    v4 = *(v2 + 944);
    v5 = sub_258528684;
  }

  else
  {
    *(v2 + 1136) = *(v2 + 608);
    *(v2 + 1072) = *(v2 + 616);
    *(v2 + 1088) = *(v2 + 632);

    v3 = *(v2 + 952);
    v4 = *(v2 + 944);
    v5 = sub_258528300;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_258528300()
{
  v1 = *(v0 + 928);
  if (*(v1 + 232) != 3)
  {
    v10 = *(v0 + 1024);
    v11 = *(v0 + 1016);
    v12 = *(v0 + 1008);
    v13 = *(v0 + 960);
    v14 = *(v0 + 920);
    sub_258476AE4();
    swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v16 = 4;
    }

    else
    {
      v16 = 5;
    }

    *v15 = v16;
    swift_willThrow();
    sub_2584A975C(v14);
    sub_2584AB9E8(v0 + 608);
    sub_258467E20(v11, v12);
    sub_258467E20(v10, v13);
    goto LABEL_8;
  }

  v2 = *(v0 + 1064);
  v3 = *(v0 + 1000);
  v4 = *(v0 + 936);
  v31 = *(v0 + 984);
  v32 = *(v0 + 968);
  __swift_project_boxed_opaque_existential_1((v0 + 648), *(v0 + 672));
  *(v0 + 568) = v32;
  *(v0 + 584) = v31;
  *(v0 + 600) = v3;
  sub_2584EE23C((v0 + 568), v4);
  if (v2)
  {
    v5 = *(v0 + 1024);
    v6 = *(v0 + 1016);
    v7 = *(v0 + 1008);
    v8 = *(v0 + 960);
    v9 = *(v0 + 920);
    sub_2584AB9E8(v0 + 608);
    sub_258467E20(v6, v7);
    sub_258467E20(v5, v8);
    sub_2584A975C(v9);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 648));

    v17 = *(v0 + 8);

    return v17();
  }

  v19 = *(v0 + 1032);
  v20 = *(v0 + 936);
  v21 = *(v0 + 928);
  v22 = type metadata accessor for MediaConnectionPrerequisites(0);
  (*(*(v22 - 8) + 56))(v20, 0, 1, v22);
  v23 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC5D0(v20, v21 + v23, &qword_27F930580, &unk_2585382B0);
  swift_endAccess();
  sub_258464C30(v0 + 648, v0 + 688);
  v24 = *(v0 + 712);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 688, v24);
  v26 = *(v24 - 8);
  v27 = swift_task_alloc();
  (*(v26 + 16))(v27, v25, v24);
  v28 = *v27;
  *(v0 + 752) = v19;
  *(v0 + 760) = &off_28698FE70;
  *(v0 + 728) = v28;
  v29 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v21 + v29));
  sub_258464C18((v0 + 728), v21 + v29);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 688));

  v30 = swift_task_alloc();
  *(v0 + 1104) = v30;
  *v30 = v0;
  v30[1] = sub_258528724;

  return sub_258523560();
}

uint64_t sub_258528684()
{
  v1 = v0[128];
  v2 = v0[120];
  v3 = v0[115];
  sub_258467E20(v0[127], v0[126]);
  sub_258467E20(v1, v2);
  sub_2584A975C(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 81);

  v4 = v0[1];

  return v4();
}

uint64_t sub_258528724()
{
  v2 = *v1;
  *(*v1 + 1112) = v0;

  v3 = *(v2 + 952);
  v4 = *(v2 + 944);
  if (v0)
  {
    v5 = sub_258528AC0;
  }

  else
  {
    v5 = sub_258528860;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_258528860()
{
  v1 = *(v0 + 928);
  if (*(v1 + 232) == 3)
  {
    v2 = *(v0 + 1136);
    v3 = (v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection);
    v4 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 24);
    v5 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection + 32);
    v17 = *(v0 + 1088);
    v19 = *(v0 + 1072);
    __swift_project_boxed_opaque_existential_1(v3, v4);
    *(v0 + 208) = v2;
    *(v0 + 232) = v17;
    *(v0 + 216) = v19;
    *(v0 + 280) = 0;
    *(v0 + 296) = 0x3000000000000000;
    v6 = *(v5 + 80);
    sub_2584ABA3C(v0 + 608, v0 + 768);
    v18 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v0 + 1120) = v7;
    *v7 = v0;
    v7[1] = sub_258528B6C;

    return v18(v0 + 208, v4, v5);
  }

  else
  {
    v9 = *(v0 + 1024);
    v10 = *(v0 + 1016);
    v11 = *(v0 + 1008);
    v12 = *(v0 + 960);
    v13 = *(v0 + 920);
    sub_258476AE4();
    swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v15 = 4;
    }

    else
    {
      v15 = 5;
    }

    *v14 = v15;
    swift_willThrow();
    sub_2584A975C(v13);
    sub_2584AB9E8(v0 + 608);
    sub_258467E20(v10, v11);
    sub_258467E20(v9, v12);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 648));

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_258528AC0()
{
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  v4 = v0[120];
  sub_2584A975C(v0[115]);
  sub_2584AB9E8((v0 + 76));
  sub_258467E20(v2, v3);
  sub_258467E20(v1, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 81);

  v5 = v0[1];

  return v5();
}

uint64_t sub_258528B6C()
{
  v2 = *v1;
  *(*v1 + 1128) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    *(v2 + 304) = *(v2 + 208);
    *(v2 + 320) = v3;
    v4 = *(v2 + 240);
    v5 = *(v2 + 256);
    v6 = *(v2 + 288);
    *(v2 + 368) = *(v2 + 272);
    *(v2 + 384) = v6;
    *(v2 + 336) = v4;
    *(v2 + 352) = v5;
    sub_2584A975C(v2 + 304);
    v7 = *(v2 + 952);
    v8 = *(v2 + 944);
    v9 = sub_258528E3C;
  }

  else
  {
    *(v2 + 400) = *(v2 + 208);
    *(v2 + 416) = v3;
    v10 = *(v2 + 240);
    v11 = *(v2 + 256);
    v12 = *(v2 + 288);
    *(v2 + 464) = *(v2 + 272);
    *(v2 + 480) = v12;
    *(v2 + 432) = v10;
    *(v2 + 448) = v11;
    sub_2584A975C(v2 + 400);
    v7 = *(v2 + 952);
    v8 = *(v2 + 944);
    v9 = sub_258528CC8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_258528CC8()
{
  v1 = v0[116];
  v2 = v0[128];
  v3 = v0[127];
  v4 = v0[126];
  v5 = v0[120];
  if (*(v1 + 232) == 3)
  {
    v6 = v0[115];
    *(v1 + 232) = 4;
    sub_2585084C8(3);
    sub_2584A975C(v6);
    sub_2584AB9E8((v0 + 76));
    sub_258467E20(v3, v4);
    sub_258467E20(v2, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 81);

    v7 = v0[1];
  }

  else
  {
    v8 = v0[115];
    sub_258476AE4();
    swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v10 = 4;
    }

    else
    {
      v10 = 5;
    }

    *v9 = v10;
    swift_willThrow();
    sub_2584A975C(v8);
    sub_2584AB9E8((v0 + 76));
    sub_258467E20(v3, v4);
    sub_258467E20(v2, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 81);

    v7 = v0[1];
  }

  return v7();
}

uint64_t sub_258528E3C()
{
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[126];
  v4 = v0[120];
  v5 = v0[115];
  sub_2584AB9E8((v0 + 76));
  sub_258467E20(v2, v3);
  sub_258467E20(v1, v4);
  sub_2584A975C(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 81);

  v6 = v0[1];

  return v6();
}

uint64_t sub_258528EF4(__int128 *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931820, &unk_25853F380);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v22[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9317B0, &qword_25853EA00);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22[-v14];
  v16 = *a2;
  swift_beginAccess();
  sub_2584AC3B8(v4 + v16, v11, &qword_27F931820, &unk_25853F380);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_258465168(v11, &qword_27F931820, &unk_25853F380);
    sub_258476AE4();
    swift_allocError();
    *v17 = 20;
    return swift_willThrow();
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v19 = a1[3];
    v25 = a1[2];
    v26 = v19;
    v20 = a1[5];
    v27 = a1[4];
    v28 = v20;
    v21 = a1[1];
    v23 = *a1;
    v24 = v21;
    sub_2584A97B0(a1, v22);
    sub_25853364C();
    (*(v13 + 8))(v15, v12);
    (*(v13 + 56))(v9, 1, 1, v12);
    swift_beginAccess();
    sub_2584AC5D0(v9, v4 + v16, &qword_27F931820, &unk_25853F380);
    return swift_endAccess();
  }
}

uint64_t sub_2585291B0(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931820, &unk_25853F380);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9317B0, &qword_25853EA00);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_waitForResponseContinuation;
  swift_beginAccess();
  sub_2584AC5D0(v11, a2 + v14, &qword_27F931820, &unk_25853F380);
  swift_endAccess();
  v15 = sub_25853368C();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = sub_25852DC88(&qword_27F930588, type metadata accessor for AudioStreamAVConference, &unk_25853F878);
  v17 = swift_allocObject();
  v18 = a3[3];
  *(v17 + 72) = a3[2];
  *(v17 + 88) = v18;
  v19 = a3[5];
  *(v17 + 104) = a3[4];
  *(v17 + 120) = v19;
  v20 = a3[1];
  *(v17 + 40) = *a3;
  *(v17 + 16) = a2;
  *(v17 + 24) = v16;
  *(v17 + 32) = a2;
  *(v17 + 56) = v20;
  swift_retain_n();
  sub_2584A97B0(a3, v22);
  sub_2585135CC(0, 0, v8, &unk_25853F540, v17);
}

uint64_t sub_25852945C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931820, &unk_25853F380);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9317B0, &qword_25853EA00);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_waitForResponseContinuation;
  swift_beginAccess();
  sub_2584AC5D0(v11, a2 + v14, &qword_27F931820, &unk_25853F380);
  swift_endAccess();
  v15 = sub_25853368C();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v17 = swift_allocObject();
  v18 = a3[3];
  *(v17 + 72) = a3[2];
  *(v17 + 88) = v18;
  v19 = a3[5];
  *(v17 + 104) = a3[4];
  *(v17 + 120) = v19;
  v20 = a3[1];
  *(v17 + 40) = *a3;
  *(v17 + 16) = a2;
  *(v17 + 24) = v16;
  *(v17 + 32) = a2;
  *(v17 + 56) = v20;
  swift_retain_n();
  sub_2584A97B0(a3, v22);
  sub_2585135CC(0, 0, v8, &unk_25853F450, v17);
}

uint64_t sub_258529708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9317B0, &qword_25853EA00);
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931820, &unk_25853F380);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25852981C, a4, 0);
}

uint64_t sub_25852981C()
{
  v1 = *(v0 + 176);
  v2 = (*(v0 + 168) + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v5;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[5];
  *(v0 + 80) = v1[4];
  *(v0 + 96) = v8;
  *(v0 + 48) = v6;
  *(v0 + 64) = v7;
  v11 = (*(v4 + 80) + **(v4 + 80));
  v9 = swift_task_alloc();
  *(v0 + 224) = v9;
  *v9 = v0;
  v9[1] = sub_258529978;

  return v11(v0 + 16, v3, v4);
}

uint64_t sub_258529978()
{
  v2 = *v1;
  v2[29] = v0;

  if (v0)
  {
    v3 = v2[21];

    return MEMORY[0x2822009F8](sub_258529AC8, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_258529AC8()
{
  v26 = v0;
  v1 = v0[29];

  v2 = v1;
  v3 = sub_258532A2C();
  v4 = sub_2585338CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[29];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v6 = 136315394;

    *(v6 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, &v25);
    *(v6 + 12) = 2112;
    v9 = v5;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_25845E000, v3, v4, "%s Send message failed with error: %@", v6, 0x16u);
    sub_258465168(v7, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  else
  {
  }

  v11 = v0[27];
  v12 = v0[23];
  v13 = v0[24];
  v14 = v0[21];
  v15 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_waitForResponseContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v14 + v15, v11, &qword_27F931820, &unk_25853F380);
  v16 = (*(v13 + 48))(v11, 1, v12);
  v17 = v0[29];
  v18 = v0[27];
  if (v16)
  {

    sub_258465168(v18, &qword_27F931820, &unk_25853F380);
  }

  else
  {
    v20 = v0[24];
    v19 = v0[25];
    v21 = v0[23];
    (*(v20 + 16))(v19, v0[27], v21);
    sub_258465168(v18, &qword_27F931820, &unk_25853F380);
    v0[20] = v17;
    sub_25853363C();
    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[26];
  (*(v0[24] + 56))(v22, 1, 1, v0[23]);
  swift_beginAccess();
  sub_2584AC5D0(v22, v14 + v15, &qword_27F931820, &unk_25853F380);
  swift_endAccess();

  v23 = v0[1];

  return v23();
}

uint64_t sub_258529E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9317B0, &qword_25853EA00);
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931820, &unk_25853F380);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference(0);
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v8 = sub_25853362C();
  v5[28] = v8;
  v5[29] = v7;

  return MEMORY[0x2822009F8](sub_258529F80, v8, v7);
}

uint64_t sub_258529F80()
{
  v1 = *(v0 + 176);
  v2 = (*(v0 + 168) + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v5;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[5];
  *(v0 + 80) = v1[4];
  *(v0 + 96) = v8;
  *(v0 + 48) = v6;
  *(v0 + 64) = v7;
  v11 = (*(v4 + 80) + **(v4 + 80));
  v9 = swift_task_alloc();
  *(v0 + 240) = v9;
  *v9 = v0;
  v9[1] = sub_25852A0DC;

  return v11(v0 + 16, v3, v4);
}

uint64_t sub_25852A0DC()
{
  v2 = *v1;
  v2[31] = v0;

  if (v0)
  {
    v3 = v2[28];
    v4 = v2[29];

    return MEMORY[0x2822009F8](sub_25852A228, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_25852A228()
{
  v26 = v0;
  v1 = v0[31];

  v2 = v1;
  v3 = sub_258532A2C();
  v4 = sub_2585338CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[31];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v6 = 136315394;

    *(v6 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v25);
    *(v6 + 12) = 2112;
    v9 = v5;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_25845E000, v3, v4, "%s Send message failed with error: %@", v6, 0x16u);
    sub_258465168(v7, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  else
  {
  }

  v11 = v0[27];
  v12 = v0[23];
  v13 = v0[24];
  v14 = v0[21];
  v15 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_waitForResponseContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v14 + v15, v11, &qword_27F931820, &unk_25853F380);
  v16 = (*(v13 + 48))(v11, 1, v12);
  v17 = v0[31];
  v18 = v0[27];
  if (v16)
  {

    sub_258465168(v18, &qword_27F931820, &unk_25853F380);
  }

  else
  {
    v20 = v0[24];
    v19 = v0[25];
    v21 = v0[23];
    (*(v20 + 16))(v19, v0[27], v21);
    sub_258465168(v18, &qword_27F931820, &unk_25853F380);
    v0[20] = v17;
    sub_25853363C();
    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[26];
  (*(v0[24] + 56))(v22, 1, 1, v0[23]);
  swift_beginAccess();
  sub_2584AC5D0(v22, v14 + v15, &qword_27F931820, &unk_25853F380);
  swift_endAccess();

  v23 = v0[1];

  return v23();
}

uint64_t sub_25852A578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319C8, &unk_25853F360);
  v5[5] = v7;
  v5[6] = *(v7 - 8);
  v5[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319D8, &qword_25853F440);
  v5[8] = v8;
  v5[9] = *(v8 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25852A6B0, a5, 0);
}

uint64_t sub_25852A6B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
  sub_2585336FC();
  v1 = sub_25852DC88(&qword_27F930588, type metadata accessor for AudioStreamAVConference, &unk_25853F878);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_logger;
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_internalEventStreamContinuation;
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_25852A7E4;
  v5 = v0[8];

  return MEMORY[0x2822005A8](v0 + 17, v3, v1, v5, v0 + 2);
}

uint64_t sub_25852A7E4()
{
  v2 = *v1;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_25852ABE0;
  }

  else
  {
    v4 = sub_25852A8F8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25852A8F8()
{
  v19 = v0;
  v1 = *(v0 + 136);
  if (v1 == 2)
  {
    goto LABEL_6;
  }

  v2 = sub_258532A2C();
  v3 = sub_2585338EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315394;

    *(v4 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, &v18);
    *(v4 + 12) = 2080;
    *(v0 + 138) = v1 & 1;
    v6 = sub_25853347C();
    v8 = sub_2584713B0(v6, v7, &v18);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_25845E000, v2, v3, "%s received media stream event %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  else
  {
  }

  if (sub_25853376C())
  {
LABEL_6:
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    if ((v1 & 1) == 0)
    {
      v12 = *(v0 + 48);
      v11 = *(v0 + 56);
      v13 = *(v0 + 40);
      *(v0 + 137) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
      sub_2585336CC();
      (*(v12 + 8))(v11, v13);
    }

    v14 = *(v0 + 88);
    v15 = *(v0 + 32);
    v16 = swift_task_alloc();
    *(v0 + 112) = v16;
    *v16 = v0;
    v16[1] = sub_25852A7E4;
    v17 = *(v0 + 64);

    return MEMORY[0x2822005A8](v0 + 136, v15, v14, v17, v0 + 16);
  }
}

uint64_t sub_25852ABE0()
{
  v13 = v0;
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[2];
  v0[15] = v1;

  v2 = v1;
  v3 = sub_258532A2C();
  v4 = sub_2585338CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v5 = 136315394;

    *(v5 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, &v12);
    *(v5 + 12) = 2112;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_25845E000, v3, v4, "%s Stream failed with error: %@", v5, 0x16u);
    sub_258465168(v6, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v5, -1, -1);
  }

  else
  {
  }

  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_25852AE20;

  return sub_258519188(v1);
}

uint64_t sub_25852AE20()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_25852AF30, v1, 0);
}

uint64_t sub_25852AF30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25852AFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319C8, &unk_25853F360);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319D8, &qword_25853F440);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference(0);
  v5[11] = sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v9 = sub_25853362C();
  v5[12] = v9;
  v5[13] = v8;

  return MEMORY[0x2822009F8](sub_25852B138, v9, v8);
}

uint64_t sub_25852B138()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60);
  sub_2585336FC();
  v1 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_internalEventStreamContinuation;
  v0[14] = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_logger;
  v0[15] = v1;
  v2 = v0[11];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_25852B234;
  v5 = v0[8];

  return MEMORY[0x2822005A8](v0 + 19, v3, v2, v5, v0 + 2);
}

uint64_t sub_25852B234()
{
  v2 = *v1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_25852B62C;
  }

  else
  {
    v5 = sub_25852B344;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_25852B344()
{
  v19 = v0;
  v1 = *(v0 + 152);
  if (v1 == 2)
  {
    goto LABEL_6;
  }

  v2 = sub_258532A2C();
  v3 = sub_2585338EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315394;

    *(v4 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v18);
    *(v4 + 12) = 2080;
    *(v0 + 154) = v1 & 1;
    v6 = sub_25853347C();
    v8 = sub_2584713B0(v6, v7, &v18);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_25845E000, v2, v3, "%s received media stream event %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v5, -1, -1);
    MEMORY[0x259C82900](v4, -1, -1);
  }

  else
  {
  }

  if (sub_25853376C())
  {
LABEL_6:
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    if ((v1 & 1) == 0)
    {
      v12 = *(v0 + 48);
      v11 = *(v0 + 56);
      v13 = *(v0 + 40);
      *(v0 + 153) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
      sub_2585336CC();
      (*(v12 + 8))(v11, v13);
    }

    v14 = *(v0 + 88);
    v15 = *(v0 + 32);
    v16 = swift_task_alloc();
    *(v0 + 128) = v16;
    *v16 = v0;
    v16[1] = sub_25852B234;
    v17 = *(v0 + 64);

    return MEMORY[0x2822005A8](v0 + 152, v15, v14, v17, v0 + 16);
  }
}

uint64_t sub_25852B62C()
{
  v13 = v0;
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[2];
  v0[17] = v1;

  v2 = v1;
  v3 = sub_258532A2C();
  v4 = sub_2585338CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v5 = 136315394;

    *(v5 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v12);
    *(v5 + 12) = 2112;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_25845E000, v3, v4, "%s Stream failed with error: %@", v5, 0x16u);
    sub_258465168(v6, &qword_27F92FBC0, &qword_258537930);
    MEMORY[0x259C82900](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v5, -1, -1);
  }

  else
  {
  }

  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_25852B86C;

  return sub_258519A34(v1);
}

uint64_t sub_25852B86C()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_25852B98C, v3, v2);
}

uint64_t sub_25852B98C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25852BA04()
{
  v1[18] = v0;
  v2 = sub_258532A4C();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v3 = type metadata accessor for MediaConnectionPrerequisites(0);
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0);
  v1[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25852BB64, v0, 0);
}

uint64_t sub_25852BB64()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[18];
  v5 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC3B8(v4 + v5, v1, &qword_27F930580, &unk_2585382B0);
  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = v0[26];
  if (v6)
  {
    sub_258465168(v7, &qword_27F930580, &unk_2585382B0);
LABEL_4:
    sub_258476AE4();
    swift_allocError();
    *v15 = 11;
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }

  v8 = v0[25];
  v9 = v0[23];
  v10 = v0[26];
  sub_25852D71C(v7, v8);
  sub_258465168(v10, &qword_27F930580, &unk_2585382B0);
  v11 = (v8 + *(v9 + 24));
  v12 = *(v11 + 2);
  v13 = *v11;
  v14 = *(v11 + 6);
  sub_25852D594(v8);
  if (v14)
  {
    goto LABEL_4;
  }

  v18 = v13 | (v12 << 32);
  v19 = v0[21];
  v20 = v0[22];
  v42 = v20;
  v21 = v0[19];
  v22 = v0[20];
  v23 = v0[18];
  v24.i64[0] = 0xFFFFFFFFFFFFLL;
  v24.i64[1] = 0xFFFFFFFFFFFFLL;
  v25 = vandq_s8(vdupq_n_s64(v18), v24);
  v41 = vshlq_u64(v25, xmmword_25853F2F0);
  v40 = vshlq_u64(v25, xmmword_25853F300);
  v38 = *(v23 + 157);
  v39 = *(v23 + 156);
  v26 = *(v22 + 16);
  v36 = *(v23 + 140);
  v37 = *(v23 + 124);
  v26(v20, v23 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_logger, v21);
  v26(v19, v20, v21);
  v27 = type metadata accessor for WiFiP2PBackedTrafficRegistration(0);
  v28 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v28 + 112) = 0;
  v29 = (v28 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler);
  *v29 = 0;
  v29[1] = 0;
  *(v28 + 132) = v36;
  *(v28 + 116) = v37;
  *(v28 + 148) = v39;
  *(v28 + 149) = v38;
  *(v28 + 150) = v18;
  v30.i64[1] = v41.i64[1];
  v31 = vmovn_s64(v40);
  *v30.i8 = vmovn_s64(v41);
  v30.i16[1] = v30.i16[2];
  v30.i16[2] = v31.i16[0];
  v30.i16[3] = v31.i16[2];
  *(v28 + 151) = vmovn_s16(v30).u32[0];
  *(v28 + 155) = BYTE5(v18);
  v26(v28 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_logger, v19, v21);
  v32 = [objc_allocWithZone(MEMORY[0x277D7BA60]) init];
  v33 = *(v22 + 8);
  v33(v19, v21);
  *(v28 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_awdlServiceDiscoveryManager) = v32;
  v0[5] = v27;
  v0[6] = &off_286990CE8;
  v0[2] = v28;
  v33(v42, v21);
  v34 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[27] = v34;
  v35 = *v34;

  return MEMORY[0x2822009F8](sub_25852BF18, v35, 0);
}

uint64_t sub_25852BF18()
{
  sub_258506FA4(sub_25852E014, *(v0 + 144));
  *(v0 + 224) = 0;
  v1 = *(v0 + 144);

  return MEMORY[0x2822009F8](sub_25852BFCC, v1, 0);
}

uint64_t sub_25852BFCC()
{
  v1 = v0[18];
  sub_258464C30((v0 + 2), (v0 + 7));
  v2 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistration;
  swift_beginAccess();
  sub_2584AC5D0((v0 + 7), v1 + v2, &qword_27F931828, &unk_25853EB90);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_25852C0BC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25852C14C()
{
  v1[18] = v0;
  v2 = sub_258532A4C();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v3 = type metadata accessor for MediaConnectionPrerequisites(0);
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0);
  v1[26] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference(0);
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v5 = sub_25853362C();
  v1[27] = v5;
  v1[28] = v4;

  return MEMORY[0x2822009F8](sub_25852C300, v5, v4);
}

uint64_t sub_25852C300()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[18];
  v5 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC3B8(v4 + v5, v1, &qword_27F930580, &unk_2585382B0);
  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = v0[26];
  if (v6)
  {
    sub_258465168(v7, &qword_27F930580, &unk_2585382B0);
LABEL_4:
    sub_258476AE4();
    swift_allocError();
    *v15 = 11;
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }

  v8 = v0[25];
  v9 = v0[23];
  v10 = v0[26];
  sub_25852D71C(v7, v8);
  sub_258465168(v10, &qword_27F930580, &unk_2585382B0);
  v11 = (v8 + *(v9 + 24));
  v12 = *(v11 + 2);
  v13 = *v11;
  v14 = *(v11 + 6);
  sub_25852D594(v8);
  if (v14)
  {
    goto LABEL_4;
  }

  v18 = v13 | (v12 << 32);
  v19 = v0[21];
  v20 = v0[22];
  v42 = v20;
  v21 = v0[19];
  v22 = v0[20];
  v23 = v0[18];
  v24.i64[0] = 0xFFFFFFFFFFFFLL;
  v24.i64[1] = 0xFFFFFFFFFFFFLL;
  v25 = vandq_s8(vdupq_n_s64(v18), v24);
  v41 = vshlq_u64(v25, xmmword_25853F2F0);
  v40 = vshlq_u64(v25, xmmword_25853F300);
  v38 = *(v23 + 269);
  v39 = *(v23 + 268);
  v26 = *(v22 + 16);
  v36 = *(v23 + 252);
  v37 = *(v23 + 236);
  v26(v20, v23 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_logger, v21);
  v26(v19, v20, v21);
  v27 = type metadata accessor for WiFiP2PBackedTrafficRegistration(0);
  v28 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v28 + 112) = 0;
  v29 = (v28 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_interruptionHandler);
  *v29 = 0;
  v29[1] = 0;
  *(v28 + 132) = v36;
  *(v28 + 116) = v37;
  *(v28 + 148) = v39;
  *(v28 + 149) = v38;
  *(v28 + 150) = v18;
  v30.i64[1] = v41.i64[1];
  v31 = vmovn_s64(v40);
  *v30.i8 = vmovn_s64(v41);
  v30.i16[1] = v30.i16[2];
  v30.i16[2] = v31.i16[0];
  v30.i16[3] = v31.i16[2];
  *(v28 + 151) = vmovn_s16(v30).u32[0];
  *(v28 + 155) = BYTE5(v18);
  v26(v28 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_logger, v19, v21);
  v32 = [objc_allocWithZone(MEMORY[0x277D7BA60]) init];
  v33 = *(v22 + 8);
  v33(v19, v21);
  *(v28 + OBJC_IVAR____TtC18MediaContinuityKit32WiFiP2PBackedTrafficRegistration_awdlServiceDiscoveryManager) = v32;
  v0[5] = v27;
  v0[6] = &off_286990CE8;
  v0[2] = v28;
  v33(v42, v21);
  v34 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[29] = v34;
  v35 = *v34;

  return MEMORY[0x2822009F8](sub_25852C6B4, v35, 0);
}

uint64_t sub_25852C6B4()
{
  sub_258506FA4(sub_25852D780, v0[18]);
  v0[30] = 0;

  v1 = v0[27];
  v2 = v0[28];

  return MEMORY[0x2822009F8](sub_25852C760, v1, v2);
}

uint64_t sub_25852C760()
{
  v1 = v0[18];
  sub_258464C30((v0 + 2), (v0 + 7));
  v2 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_trafficRegistration;
  swift_beginAccess();
  sub_2584AC5D0((v0 + 7), v1 + v2, &qword_27F931828, &unk_25853EB90);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_25852C850()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25852C8E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;

  v5 = sub_258532A2C();
  v6 = sub_2585338EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;

    *(v7 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, &v14);
    _os_log_impl(&dword_25845E000, v5, v6, "%s TrafficRegistration interrupted", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v7, -1, -1);
  }

  else
  {
  }

  v9 = sub_25853368C();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = sub_25852DC88(&qword_27F930588, type metadata accessor for AudioStreamAVConference, &unk_25853F878);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v10;
  v11[4] = a1;
  swift_retain_n();
  sub_2585135CC(0, 0, v4, &unk_25853F530, v11);
}

uint64_t sub_25852CB28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;

  v5 = sub_258532A2C();
  v6 = sub_2585338EC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;

    *(v7 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, &v14);
    _os_log_impl(&dword_25845E000, v5, v6, "%s TrafficRegistration interrupted", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v7, -1, -1);
  }

  else
  {
  }

  v9 = sub_25853368C();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v10;
  v11[4] = a1;
  swift_retain_n();
  sub_2585135CC(0, 0, v4, &unk_25853F420, v11);
}

uint64_t sub_25852CD90()
{
  sub_258476AE4();
  v1 = swift_allocError();
  *(v0 + 24) = v1;
  *v2 = 15;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_25852CE68;

  return sub_258519188(v1);
}

uint64_t sub_25852CE68()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25852CF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for VideoStreamAVConference(0);
  sub_25852DC88(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference, &unk_25853EAF0);
  v6 = sub_25853362C();

  return MEMORY[0x2822009F8](sub_25852D034, v6, v5);
}

uint64_t sub_25852D034()
{
  sub_258476AE4();
  v1 = swift_allocError();
  *(v0 + 24) = v1;
  *v2 = 15;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_25852E2A0;

  return sub_258519A34(v1);
}

uint64_t sub_25852D10C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258472CF8;

  return sub_258513B98(a1);
}

uint64_t sub_25852D1BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258464F5C;

  return sub_258516F24();
}

uint64_t sub_25852D25C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258464F5C;

  return sub_258517F08();
}

uint64_t sub_25852D2FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_258518904();
}

uint64_t sub_25852D3B0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319D0, &qword_25853F3A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258472CF8;

  return sub_258524FF8(a1, v6, v7, v1 + v5, v8);
}

BOOL sub_25852D4DC(void *a1)
{
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
  result = 0;
  if (!swift_dynamicCast() || v5 != 6)
  {
    v3 = a1;
    if (!swift_dynamicCast() || v5 != 7)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_25852D594(uint64_t a1)
{
  v2 = type metadata accessor for MediaConnectionPrerequisites(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25852D5F0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258472CF8;

  return sub_25852AFA8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_25852D71C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaConnectionPrerequisites(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25852D788(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258472CF8;

  return sub_25852CF78(a1, v4, v5, v6);
}

uint64_t sub_25852D83C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25852D874(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258472CF8;

  return sub_2584A4D50(a1, v4);
}

uint64_t sub_25852D980(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v17 = (a12 >> 59) & 6 | ((a10 & 0x2000000000000000) != 0);
  if (v17 > 3)
  {
    if (v17 != 4)
    {
      if (v17 == 5)
      {
        sub_258467E20(result, a2);
        sub_258467E20(a3, a4);
        sub_2584AE960(a6, a7);
        v18 = a8;
        v19 = a9;
      }

      else
      {
        if (v17 != 6)
        {
          return result;
        }

        sub_2584AE960(a2, a3);
        v18 = a4;
        v19 = a5;
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (v17 == 1)
    {
LABEL_5:
      sub_258467E20(a2, a3);
      sub_2584AE960(a5, a6);
      sub_2584AE960(a7, a8);
      sub_258467E20(a9, a10 & 0xDFFFFFFFFFFFFFFFLL);

      return sub_258467E20(a11, a12 & 0xCFFFFFFFFFFFFFFFLL);
    }

    if (v17 != 2)
    {
      if (v17 != 3)
      {
        return result;
      }

      goto LABEL_5;
    }
  }

  sub_258467E20(result, a2);
  sub_2584AE960(a4, a5);
  v18 = a6;
  v19 = a7;
LABEL_15:

  return sub_2584AE960(v18, v19);
}

uint64_t sub_25852DB10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258472CF8;

  return sub_258529E18(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_25852DC88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25852DCD0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319D0, &qword_25853F3A0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258472CF8;

  return sub_258524228(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroyTm_1(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t sub_25852DEE8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308D0, &qword_25853AC60) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258472CF8;

  return sub_25852A578(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_46Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25852E060(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258464F5C;

  return sub_25852CD70(a1, v4, v5, v6);
}

uint64_t objectdestroy_67Tm()
{
  swift_unknownObjectRelease();

  sub_25852D980(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_25852E1D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258472CF8;

  return sub_258529708(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_25852E2E0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9307C0, &qword_25853A850);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v36 - v6;
  v7 = sub_258532C8C();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930620, &unk_25853E7D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931350, qword_258538C60);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36 - v13;
  v15 = sub_258532CFC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v37 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_258532AAC();
  v41 = *(v18 - 8);
  v42 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_258532D8C();
  v22 = *(*(v21 - 8) + 56);
  v22(v11, 1, 1, v21);
  sub_2584A7B8C(a1, a2);
  sub_258532D0C();
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    sub_258467E20(a1, a2);
    v30 = *(v16 + 32);
    v31 = v37;
    v30(v37, v14, v15);
    v30(v20, v31, v15);
    v32 = MEMORY[0x277CD8AE0];
LABEL_6:
    v29 = v41;
    v28 = v42;
    (*(v41 + 104))(v20, *v32, v42);
    v27 = v43;
    (*(v29 + 32))(v43, v20, v28);
    v26 = 0;
    return (*(v29 + 56))(v27, v26, 1, v28);
  }

  sub_258465168(v14, &unk_27F931350, qword_258538C60);
  v22(v11, 1, 1, v21);
  v23 = v40;
  sub_258532C9C();
  v25 = v38;
  v24 = v39;
  if ((*(v38 + 48))(v23, 1, v39) != 1)
  {
    v33 = *(v25 + 32);
    v34 = v36;
    v33(v36, v23, v24);
    v33(v20, v34, v24);
    v32 = MEMORY[0x277CD8AD8];
    goto LABEL_6;
  }

  sub_258465168(v23, &qword_27F9307C0, &qword_25853A850);
  v26 = 1;
  v28 = v42;
  v27 = v43;
  v29 = v41;
  return (*(v29 + 56))(v27, v26, 1, v28);
}

uint64_t sub_25852E7A4()
{
  v1 = [v0 domain];
  v2 = sub_25853342C();
  v4 = v3;

  if (sub_25853342C() == v2 && v5 == v4)
  {

LABEL_8:

    return sub_25852E9FC();
  }

  v7 = sub_258533E2C();

  if (v7)
  {
    goto LABEL_8;
  }

  if (sub_25853342C() == v2 && v9 == v4)
  {
  }

  else
  {
    v11 = sub_258533E2C();

    if ((v11 & 1) == 0)
    {
      if (qword_27F92F8F8 != -1)
      {
        swift_once();
      }

      v12 = sub_258532A4C();
      __swift_project_value_buffer(v12, qword_27F93D038);
      v13 = v0;
      v14 = sub_258532A2C();
      v15 = sub_2585338DC();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v13;
        v18 = v13;
        _os_log_impl(&dword_25845E000, v14, v15, "Did not find end reason mapping for NSError=%@", v16, 0xCu);
        sub_2584D1214(v17);
        MEMORY[0x259C82900](v17, -1, -1);
        MEMORY[0x259C82900](v16, -1, -1);
      }

      return 35;
    }
  }

  return sub_25852EB64();
}

uint64_t sub_25852E9FC()
{
  v1 = [v0 code];
  if (v1 == 32016)
  {
    return 16;
  }

  if (v1 == 32002)
  {
    return 18;
  }

  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v3 = sub_258532A4C();
  __swift_project_value_buffer(v3, qword_27F93D038);
  v4 = v0;
  v5 = sub_258532A2C();
  v6 = sub_2585338DC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_25845E000, v5, v6, "Did not find end reason mapping for AVC error=%@", v7, 0xCu);
    sub_2584D1214(v8);
    MEMORY[0x259C82900](v8, -1, -1);
    MEMORY[0x259C82900](v7, -1, -1);
  }

  return 17;
}

uint64_t sub_25852EB64()
{
  if ([v0 code] == 5)
  {
    return 38;
  }

  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93D038);
  v3 = v0;
  v4 = sub_258532A2C();
  v5 = sub_2585338DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_25845E000, v4, v5, "Did not find end reason mapping for WiFiP2P error=%@", v6, 0xCu);
    sub_2584D1214(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  return 39;
}

unint64_t sub_25852ECD8(uint64_t a1)
{
  result = sub_25852ED00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25852ED00()
{
  result = qword_27F931A00;
  if (!qword_27F931A00)
  {
    sub_25852ED58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931A00);
  }

  return result;
}

unint64_t sub_25852ED58()
{
  result = qword_27F931A08;
  if (!qword_27F931A08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F931A08);
  }

  return result;
}

BOOL NWError.isFatalForWaitingConnection.getter()
{
  v1 = v0;
  v2 = sub_25853322C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277CD8FA0])
  {
    (*(v3 + 96))(v5, v2);
    return *v5 >> 1 == 2147450871;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

uint64_t sub_25852EEE4()
{
  v1 = v0;
  v2 = sub_25853322C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 != *MEMORY[0x277CD8FB0])
  {
    if (v6 == *MEMORY[0x277CD8FA0])
    {
      (*(v3 + 96))(v5, v2);
      if (*v5 == -65553)
      {
        return 31;
      }

      else
      {
        return 32;
      }
    }

    (*(v3 + 8))(v5, v2);
    return 25;
  }

  (*(v3 + 96))(v5, v2);
  v7 = *v5;
  if (*v5 <= 53)
  {
    if (v7 == 22)
    {
      return 27;
    }

    if (v7 == 50)
    {
      return 26;
    }

    return 25;
  }

  if (v7 == 54)
  {
    return 30;
  }

  if (v7 != 57)
  {
    if (v7 == 60)
    {
      return 28;
    }

    return 25;
  }

  return 29;
}

unint64_t sub_25852F0B0(uint64_t a1)
{
  result = sub_2584E260C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25852F0FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v24 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = *(v4 + 16);
  v11(&v24 - v12, v2, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931A10, &qword_25853F610);
  if (swift_dynamicCast())
  {
    sub_258464C18(v26, v28);
    v13 = v29;
    v14 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v15 = (*(v14 + 16))(v13, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    return v15;
  }

  else
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    sub_258465168(v26, &qword_27F931A18, &qword_25853F618);
    if (qword_27F92F8F8 != -1)
    {
      swift_once();
    }

    v17 = sub_258532A4C();
    __swift_project_value_buffer(v17, qword_27F93D038);
    v11(v10, v2, a1);
    v18 = sub_258532A2C();
    v19 = sub_2585338DC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v20 = 138412290;
      v11(v7, v10, a1);
      if (sub_258533E1C())
      {
        (*(v4 + 8))(v7, a1);
      }

      else
      {
        swift_allocError();
        (*(v4 + 32))(v21, v7, a1);
      }

      v22 = _swift_stdlib_bridgeErrorToNSError();
      (*(v4 + 8))(v10, a1);
      *(v20 + 4) = v22;
      v23 = v25;
      *v25 = v22;
      _os_log_impl(&dword_25845E000, v18, v19, "Did not find end reason mapping for error=%@", v20, 0xCu);
      sub_258465168(v23, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v23, -1, -1);
      MEMORY[0x259C82900](v20, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v10, a1);
    }

    return 1;
  }
}

uint64_t sub_25852F4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 80);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2585329BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25852F578(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 80) = (a2 - 1);
  }

  else
  {
    v7 = sub_2585329BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AudioStreamInternalInitParameters(uint64_t a1)
{
  result = qword_27F931A20;
  if (!qword_27F931A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25852F668(uint64_t a1)
{
  sub_2584BA560();
  if (v1 <= 0x3F)
  {
    sub_25852F73C();
    if (v2 <= 0x3F)
    {
      sub_2585329BC();
      if (v3 <= 0x3F)
      {
        sub_2584BA61C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25852F73C()
{
  if (!qword_27F931A30)
  {
    v0 = sub_258533A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_27F931A30);
    }
  }
}

uint64_t sub_25852F78C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  v6 = a1 >> 40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931A38, &unk_25853F680);
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84B78];
  *(v7 + 16) = xmmword_25853F650;
  v9 = MEMORY[0x277D84BC0];
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  *(v7 + 32) = v1;
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = v2;
  *(v7 + 136) = v8;
  *(v7 + 144) = v9;
  *(v7 + 112) = v3;
  *(v7 + 176) = v8;
  *(v7 + 184) = v9;
  *(v7 + 152) = v4;
  *(v7 + 216) = v8;
  *(v7 + 224) = v9;
  *(v7 + 192) = v5;
  *(v7 + 256) = v8;
  *(v7 + 264) = v9;
  *(v7 + 232) = v6;

  return sub_25853343C();
}

uint64_t sub_25852F870(unint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v2)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 6)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v2 != 2)
    {
      if (v2 != 1)
      {
        v19 = vdupq_n_s64(a1);
        *v19.i8 = vmovn_s32(vuzp1q_s32(vshlq_u64(v19, xmmword_25853F2F0), vshlq_u64(v19, xmmword_25853F300)));
        v20 = a1 >> 40;
        goto LABEL_23;
      }

      v7 = a1;
      if (a1 > a1 >> 32)
      {
        goto LABEL_27;
      }

      v8 = sub_25853285C();
      if (!v8)
      {
        goto LABEL_32;
      }

      v9 = v8;
      v10 = sub_25853287C();
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_29;
      }

      v11 = v7 - v10 + v9;
      a1 = sub_25853286C();
      if (v11)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_26;
      }

      if (HIDWORD(a1) - a1 != 6)
      {
        goto LABEL_17;
      }
    }

    v15 = *(a1 + 16);
    v16 = sub_25853285C();
    if (!v16)
    {
      goto LABEL_30;
    }

    v17 = v16;
    v18 = sub_25853287C();
    if (!__OFSUB__(v15, v18))
    {
      v11 = v15 - v18 + v17;
      sub_25853286C();
      if (!v11)
      {
        goto LABEL_31;
      }

LABEL_21:
      LOBYTE(a1) = *v11;
      v12.i32[0] = *(v11 + 1);
      v19 = vmovl_u8(v12);
      LOBYTE(v20) = *(v11 + 5);
LABEL_23:
      v14 = 0;
      v21 = vmovl_u16((v19.i64[0] & 0xFF00FF00FF00FFLL));
      v22.i64[0] = v21.u32[0];
      v22.i64[1] = v21.u32[1];
      v23 = v22;
      v22.i64[0] = v21.u32[2];
      v22.i64[1] = v21.u32[3];
      v24 = vorrq_s8(vshlq_u64(v23, xmmword_25853F670), vshlq_u64(v22, xmmword_25853F660));
      v13 = *&vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL)) | (v20 << 40) | a1;
      return v13 | (v14 << 48);
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_25853286C();
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_25853286C();
    __break(1u);
    return result;
  }

  if (v2 != 2)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  if (v5)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v6 == 6)
  {
    goto LABEL_8;
  }

LABEL_17:
  v13 = 0;
  v14 = 1;
  return v13 | (v14 << 48);
}

void sub_25852FA44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = objc_opt_self();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = sub_2584C9794;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2584D170C;
  aBlock[3] = &block_descriptor_6;
  v9 = _Block_copy(aBlock);

  [v6 notifyWhenClockManagerIsAvailable_];
  _Block_release(v9);
}

void sub_25852FC00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = objc_opt_self();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = sub_2584C9628;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2584D170C;
  aBlock[3] = &block_descriptor_7;
  v9 = _Block_copy(aBlock);

  [v6 notifyWhengPTPManagerIsAvailable_];
  _Block_release(v9);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25852FE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = sub_25853341C();
  v8 = MGGetStringAnswer();

  if (v8)
  {
    v9 = sub_25853342C();
    v11 = v10;

    *a4 = v9;
    *a5 = v11;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25852FEC4()
{
  result = sub_258532FEC();
  if (result)
  {
    sub_258532E6C();

    sub_258532EEC();

    server_mode = nw_parameters_get_server_mode();
    swift_unknownObjectRelease();
    return server_mode;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25852FF2C@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931450, &qword_25853C1E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_25853300C();
  return sub_2584F207C(v6, a3);
}

void sub_25852FFD0(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930590, &qword_25853F8A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;

  v11 = sub_258532A2C();
  v12 = sub_2585338EC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v7;
    v14 = v13;
    v15 = swift_slowAlloc();
    v29[0] = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, v29);
    *(v14 + 12) = 2080;
    v28 = a1;
    v16 = sub_25853347C();
    v26 = v10;
    v17 = a1;
    v18 = v4;
    v20 = sub_2584713B0(v16, v19, v29);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    v28 = *(v2 + 121);
    v21 = sub_25853347C();
    v23 = sub_2584713B0(v21, v22, v29);

    *(v14 + 24) = v23;
    v4 = v18;
    a1 = v17;
    v10 = v26;
    _os_log_impl(&dword_25845E000, v11, v12, "%s state changed from %s to %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v15, -1, -1);
    v24 = v14;
    v7 = v27;
    MEMORY[0x259C82900](v24, -1, -1);
  }

  if (a1 == 2)
  {
    v25 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_activatingContinuation;
    swift_beginAccess();
    sub_2584AC3B8(v2 + v25, v10, &qword_27F930590, &qword_25853F8A0);
    if ((*(v5 + 48))(v10, 1, v4))
    {
      sub_258465168(v10, &qword_27F930590, &qword_25853F8A0);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      sub_258465168(v10, &qword_27F930590, &qword_25853F8A0);
      sub_25853364C();
      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_25853034C()
{
  sub_2584A9614(*(v0 + 112), *(v0 + 120));
  v1 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_sessionID;
  v2 = sub_2585329BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection));
  sub_25850FA84(*(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 8), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 16), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 24), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 32), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 40), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 48), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 56), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 64), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 72), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 80), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer + 88));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProviderVendor));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamNegotiator));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamVendor));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_delegatedPIDProvider));
  v3 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_eventStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F8, &qword_25853F8B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_eventStreamContinuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F0, &unk_25853F4B8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_internalEventStream;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_internalEventStreamContinuation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_logger;
  v12 = sub_258532A4C();
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProvider));

  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_waitForResponseContinuation, &qword_27F931820, &unk_25853F380);
  swift_unknownObjectRelease();
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_connectionPrerequisites, &qword_27F930580, &unk_2585382B0);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_userDefaultsProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistrationVendor));
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistration, &qword_27F931828, &unk_25853EB90);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider));
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_activatingContinuation, &qword_27F930590, &qword_25853F8A0);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2585306A8()
{
  sub_25853034C();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AudioStreamAVConference(uint64_t a1)
{
  result = qword_27F931A40;
  if (!qword_27F931A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258530728(uint64_t a1)
{
  sub_2585329BC();
  if (v1 <= 0x3F)
  {
    sub_258530AB0(319, &qword_27F931A50, MEMORY[0x277D858D8]);
    if (v2 <= 0x3F)
    {
      sub_258530AB0(319, &qword_27F931A58, MEMORY[0x277D858B0]);
      if (v3 <= 0x3F)
      {
        sub_2585090C8(319, &qword_27F931798, MEMORY[0x277D857B8]);
        if (v4 <= 0x3F)
        {
          sub_2585090C8(319, &qword_27F9317A0, MEMORY[0x277D85788]);
          if (v5 <= 0x3F)
          {
            sub_258532A4C();
            if (v6 <= 0x3F)
            {
              sub_2584A7894(319, &qword_27F9317A8, &qword_27F9317B0, &qword_25853EA00);
              if (v7 <= 0x3F)
              {
                sub_25850911C(319);
                if (v8 <= 0x3F)
                {
                  sub_2584A7894(319, &qword_27F9317C0, &qword_27F930570, &qword_258538220);
                  if (v9 <= 0x3F)
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

void sub_258530AB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F9308C0, &qword_258537580);
    v7 = a3(a1, &type metadata for AudioStreamEvent, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_258530B2C()
{
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931360, &unk_25853CD10);
  v1[6] = swift_task_alloc();
  v2 = sub_2585329BC();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0);
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for MediaConnectionPrerequisites(0);
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258530CC4, v0, 0);
}

uint64_t sub_258530CC4()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC3B8(v4 + v5, v3, &qword_27F930580, &unk_2585382B0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_258465168(v0[11], &qword_27F930580, &unk_2585382B0);
    sub_258476AE4();
    swift_allocError();
    *v6 = 9;
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }

  else
  {
    v7 = v0[14];
    v8 = v0[10];
    v9 = v0[7];
    v10 = v0[8];
    sub_25850BB7C(v0[11], v7);
    v11 = *(v10 + 16);
    v11(v8, v7, v9);
    v12 = sub_258509C6C();
    v13 = v0[9];
    v14 = v0[7];
    v15 = v0[8];
    v16 = v0[6];
    v11(v13, v0[10], v14);
    (*(v15 + 56))(v16, 1, 1, v14);
    type metadata accessor for AVConferenceBackedAudioStream(0);
    swift_allocObject();
    v17 = sub_2584BA9FC(v13, v16, v12);
    v0[15] = v17;
    v20 = v17;
    v21 = v0[5];
    (*(v0[8] + 8))(v0[10], v0[7]);
    v22 = sub_2585315D4(&unk_27F930960, type metadata accessor for AVConferenceBackedAudioStream, &unk_25853AC78);
    v23 = (v21 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream);
    *v23 = v20;
    v23[1] = v22;

    swift_unknownObjectRelease();
    v0[16] = sub_258531250();
    v0[17] = 0;

    return MEMORY[0x2822009F8](sub_258531020, v20, 0);
  }
}

uint64_t sub_258531020()
{
  v1 = v0[17];
  sub_2584BB594(v0[16], v0[15]);
  v0[18] = v1;
  v2 = v0[16];
  v3 = v0[5];
  if (v1)
  {

    v4 = sub_258531194;
  }

  else
  {

    v4 = sub_2585310D4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2585310D4()
{
  sub_258532770(*(v0 + 112), type metadata accessor for MediaConnectionPrerequisites);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258531194()
{
  sub_258532770(*(v0 + 112), type metadata accessor for MediaConnectionPrerequisites);

  v1 = *(v0 + 8);

  return v1();
}

id sub_258531250()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamNegotiator), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamNegotiator + 24));
  result = sub_2584D2938();
  if (!v1 && (*(v0 + 120) & 1) == 0)
  {
    v3 = *(v0 + 112);
    if (v3)
    {
      v4 = result;

      result = [v4 audio];
      if (!result)
      {
LABEL_17:
        __break(1u);
        return result;
      }

      v5 = result;
      v6 = *(v3 + 16);
      if (v6)
      {
        v12 = result;
        v16 = MEMORY[0x277D84F90];
        sub_258533C1C();
        if (*(v3 + 16))
        {
          v7 = 0;
          v8 = (v3 + 32);
          while (1)
          {
            v9 = v8[1];
            v14 = *v8;
            v15 = v9;
            v10 = objc_allocWithZone(MEMORY[0x277CE56F0]);
            v13[0] = v14;
            v13[1] = v15;
            result = [v10 initWithAuditToken_];
            if (!result)
            {
              break;
            }

            sub_258533BFC();
            sub_258533C2C();
            sub_258533C3C();
            sub_258533C0C();
            if (v6 - 1 == v7)
            {
              goto LABEL_12;
            }

            v8 += 2;
            if (++v7 >= *(v3 + 16))
            {
              goto LABEL_11;
            }
          }

          __break(1u);
          goto LABEL_17;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        sub_2584A9614(v3, 0);
        v5 = v12;
      }

      else
      {
        sub_2584A9614(v3, 0);
      }

      sub_25853161C();
      v11 = sub_2585335CC();

      [v5 setSystemAudioCaptureIncludedAuditTokens_];

      return v4;
    }
  }

  return result;
}

uint64_t sub_258531448(uint64_t a1)
{
  *(a1 + 8) = sub_2585315D4(&qword_27F931A60, type metadata accessor for AudioStreamAVConference, &unk_25853F840);
  result = sub_2585315D4(&qword_27F931A68, type metadata accessor for AudioStreamAVConference, &unk_25853F7DC);
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_2585314D0()
{
  result = qword_27F931A70;
  if (!qword_27F931A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931A70);
  }

  return result;
}

uint64_t sub_258531524(uint64_t a1)
{
  result = sub_2585315D4(&qword_27F930588, type metadata accessor for AudioStreamAVConference, &unk_25853F878);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25853157C(uint64_t a1)
{
  result = sub_2585315D4(&qword_27F931A60, type metadata accessor for AudioStreamAVConference, &unk_25853F840);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2585315D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25853161C()
{
  result = qword_27F931A78;
  if (!qword_27F931A78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F931A78);
  }

  return result;
}

uint64_t sub_258531668(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 33) == 1)
  {
    sub_258476AE4();
    swift_allocError();
    *v2 = 1;
    return swift_willThrow();
  }

  else
  {
    v4 = *(a2 + 8);
    v5 = sub_25853342C();
    v7 = v6;
    if (v4)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    v12 = MEMORY[0x277D83B88];
    *&v11 = v8;
    sub_2584F6C74(&v11, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_25850D118(v10, v5, v7, isUniquelyReferenced_nonNull_native);

    return 13;
  }
}

uint64_t sub_258531798(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931850, &qword_25853EBD0);
  v134 = *(v2 - 8);
  v135 = v2;
  MEMORY[0x28223BE20](v2);
  v133 = &v106 - v3;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931818, &unk_25853EB80);
  v146 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v132 = &v106 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  v144 = *(v5 - 8);
  v145 = v5;
  MEMORY[0x28223BE20](v5);
  v131 = &v106 - v6;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931A80, &qword_25853F8B8);
  v7 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v9 = &v106 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F0, &unk_25853F4B8);
  v142 = *(v10 - 8);
  v143 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v106 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9319F8, &qword_25853F8B0);
  v140 = *(v13 - 8);
  v141 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v106 - v14;
  inited = type metadata accessor for AudioStreamInternalInitParameters(0);
  MEMORY[0x28223BE20](inited);
  v137 = a1;
  v138 = (&v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25853270C(a1, v138);
  v17 = type metadata accessor for AVConferenceBackedMediaStreamNegotiatorVendor();
  v18 = swift_allocObject();
  v165 = v17;
  v166 = &off_28698F1B8;
  v164[0] = v18;
  v19 = type metadata accessor for AVConferenceBackedMediaStreamAVCVendor();
  v20 = swift_allocObject();
  v163[4] = &off_28698EA90;
  v163[3] = v19;
  v163[0] = v20;
  v21 = type metadata accessor for TrafficRegistrationVendor();
  v22 = swift_allocObject();
  v162[4] = &off_286990C48;
  v162[3] = v21;
  v162[0] = v22;
  v23 = type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProviderVendor();
  v24 = swift_allocObject();
  v161[4] = &off_281DA7598;
  v161[3] = v23;
  v161[0] = v24;
  v25 = type metadata accessor for AVConferenceBackedDelegatedPIDProvider();
  v26 = swift_allocObject();
  v160[4] = &off_28698E800;
  v160[3] = v25;
  v160[0] = v26;
  v27 = type metadata accessor for FoundationBackedUserDefaultsProvider();
  v28 = swift_allocObject();
  v28[3] = 0xD00000000000001CLL;
  v28[4] = 0x800000025853FF50;
  v29 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v30 = sub_25853341C();
  v31 = [v29 initWithSuiteName_];

  v28[2] = v31;
  v159[4] = &off_28698F5C8;
  v159[3] = v27;
  v159[0] = v28;
  v129 = type metadata accessor for AudioStreamAVConference(0);
  v32 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v32 + 121) = 0;
  v33 = v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_eventStream;
  v34 = v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_eventStreamContinuation;
  v35 = v130;
  (*(v7 + 104))(v9, *MEMORY[0x277D858A0], v130);
  sub_2585337BC();
  (*(v7 + 8))(v9, v35);
  v36 = *(v140 + 32);
  v128 = v33;
  v36(v33, v15, v141);
  v37 = *(v142 + 32);
  v130 = v34;
  v37(v34, v12, v143);
  v38 = v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_internalEventStream;
  v39 = v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_internalEventStreamContinuation;
  v41 = v133;
  v40 = v134;
  v42 = v135;
  (*(v134 + 104))(v133, *MEMORY[0x277D85778], v135);
  v43 = v131;
  v44 = v132;
  sub_25853369C();
  (*(v40 + 8))(v41, v42);
  v45 = *(v144 + 32);
  v134 = v38;
  v45(v38, v43, v145);
  v46 = *(v146 + 32);
  v135 = v39;
  v46(v39, v44, v172);
  v47 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_logger;
  if (qword_27F92F8E8 != -1)
  {
    swift_once();
  }

  v48 = sub_258532A4C();
  v49 = __swift_project_value_buffer(v48, qword_27F93D008);
  v131 = *(v48 - 8);
  v132 = v48;
  v50 = *(v131 + 2);
  v133 = v47;
  v50(v32 + v47, v49, v48);
  *(v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_isPaused) = 0;
  v125 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnectionEventMonitor;
  *(v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnectionEventMonitor) = 0;
  v126 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_streamEventMonitor;
  *(v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_streamEventMonitor) = 0;
  v51 = v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_waitForResponseContinuation;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9317B0, &qword_25853EA00);
  v53 = *(*(v52 - 8) + 56);
  v127 = v51;
  v53(v51, 1, 1, v52);
  v54 = (v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStream);
  *v54 = 0;
  v54[1] = 0;
  v123 = v54;
  v55 = v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_connectionPrerequisites;
  v56 = type metadata accessor for MediaConnectionPrerequisites(0);
  v57 = *(*(v56 - 8) + 56);
  v124 = v55;
  v57(v55, 1, 1, v56);
  v58 = v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistration;
  *v58 = 0u;
  *(v58 + 16) = 0u;
  v122 = v58;
  *(v58 + 32) = 0;
  v59 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_activatingContinuation;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  (*(*(v60 - 8) + 56))(v32 + v59, 1, 1, v60);
  v61 = v138;
  v62 = v138[1];
  *(v32 + 124) = *v138;
  v63 = *(v61 + 32);
  v64 = *(v61 + 33);
  *(v32 + 140) = v62;
  *(v32 + 156) = v63;
  *(v32 + 157) = v64;
  v65 = *(v61 + 5);
  LOBYTE(v48) = *(v61 + 48);
  *(v32 + 112) = v65;
  v66 = (v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection);
  *(v32 + 120) = v48;
  v120 = v66;
  sub_258464C30(v61 + 56, v66);
  v68 = v61[9];
  v168 = v61[8];
  v67 = v168;
  v169 = v68;
  v70 = v61[11];
  v170 = v61[10];
  v69 = v170;
  v171 = v70;
  v71 = v61[7];
  v167[0] = v61[6];
  v167[1] = v71;
  v72 = (v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_remoteAudioOffer);
  *v72 = v167[0];
  v72[1] = v71;
  v72[2] = v67;
  v72[3] = v68;
  v72[4] = v69;
  v72[5] = v70;
  v73 = v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_sessionID;
  v74 = inited;
  v75 = *(inited + 32);
  v76 = sub_2585329BC();
  v116 = *(v76 - 8);
  v77 = *(v116 + 16);
  v118 = v76;
  v119 = v73;
  v77(v73, v61 + v75);
  *(v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_shouldPerformTrafficRegistration) = *(v61 + *(v74 + 36));
  v78 = v61 + *(v74 + 40);
  v121 = (v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider);
  sub_258464C30(v78, v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider);
  v117 = (v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProviderVendor);
  sub_258464C30(v161, v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProviderVendor);
  v79 = type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider(0);
  swift_allocObject();
  sub_2584742A4(v65, v48);
  sub_2584AC3B8(v167, &v153, &qword_27F9303B0, &unk_25853F8C0);
  v80 = sub_2584EAE98();
  v81 = (v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProvider);
  v81[3] = v79;
  v81[4] = &off_28698FE70;
  *v81 = v80;
  v115 = (v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamVendor);
  sub_258464C30(v163, v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamVendor);
  v114 = (v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_delegatedPIDProvider);
  sub_258464C30(v160, v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_delegatedPIDProvider);
  v82 = (v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_userDefaultsProvider);
  sub_258464C30(v159, v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_userDefaultsProvider);
  v83 = (v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistrationVendor);
  sub_258464C30(v162, v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_trafficRegistrationVendor);
  v84 = *(v32 + 156);
  v85 = *(v32 + 157);
  v86 = *(v32 + 140);
  v150[0] = *(v32 + 124);
  v150[1] = v86;
  v151 = v84;
  v152 = v85;
  v87 = *(v32 + 120);
  v148 = *(v32 + 112);
  v149 = v87;
  sub_2584742A4(v148, v87);
  v88 = v136;
  v89 = sub_258531668(v150, &v148);
  inited = v88;
  if (!v88)
  {
    v95 = v90;
    v136 = v82;
    v113 = v89;
    sub_2584A9614(v148, v149);
    v96 = v72[3];
    v155 = v72[2];
    v156 = v96;
    v97 = v72[5];
    v157 = v72[4];
    v158 = v97;
    v98 = v72[1];
    v153 = *v72;
    v154 = v98;
    if (v153 == 2)
    {
      __swift_project_boxed_opaque_existential_1(v164, v165);
      v99 = inited;
      sub_2584D2AD4(v113, v95, v147);
      if (v99)
      {
        inited = v99;

        v82 = v136;
        goto LABEL_5;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v159);
      __swift_destroy_boxed_opaque_existential_1Tm(v160);
      __swift_destroy_boxed_opaque_existential_1Tm(v161);
      __swift_destroy_boxed_opaque_existential_1Tm(v162);
      __swift_destroy_boxed_opaque_existential_1Tm(v163);
      v105 = v61;
    }

    else
    {
      v106 = v83;
      v101 = *(&v153 + 1);
      v100 = v154;
      v102 = *__swift_project_boxed_opaque_existential_1(v164, v165);
      v103 = v155;
      v107 = *(&v156 + 1);
      v108 = v156;
      v109 = *(&v157 + 1);
      v110 = v157;
      v112 = v158;
      v113 = v102;
      v111 = *(&v158 + 1);
      sub_2584A7B8C(v101, v100);
      sub_2584ABAF4(v103, *(&v103 + 1));
      sub_2584ABAF4(v108, v107);
      sub_2584A7B8C(v110, v109);
      sub_2584A7B8C(v112, v111);
      v104 = inited;
      sub_2584D2BD8(v101, v100, v95, v147);
      if (v104)
      {
        inited = v104;

        sub_258465168(&v153, &qword_27F9303B0, &unk_25853F8C0);
        v82 = v136;
        v61 = v138;
        v83 = v106;
        goto LABEL_5;
      }

      sub_258465168(&v153, &qword_27F9303B0, &unk_25853F8C0);

      __swift_destroy_boxed_opaque_existential_1Tm(v159);
      __swift_destroy_boxed_opaque_existential_1Tm(v160);
      __swift_destroy_boxed_opaque_existential_1Tm(v161);
      __swift_destroy_boxed_opaque_existential_1Tm(v162);
      __swift_destroy_boxed_opaque_existential_1Tm(v163);
      v105 = v138;
    }

    sub_258532770(v105, type metadata accessor for AudioStreamInternalInitParameters);
    sub_258464C18(v147, v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaStreamNegotiator);
    __swift_destroy_boxed_opaque_existential_1Tm(v164);
    sub_258532770(v137, type metadata accessor for AudioStreamInternalInitParameters);
    return v32;
  }

  sub_2584A9614(v148, v149);
LABEL_5:
  sub_2584A9614(*(v32 + 112), *(v32 + 120));
  (*(v116 + 8))(v119, v118);
  __swift_destroy_boxed_opaque_existential_1Tm(v120);
  v91 = v72[3];
  v155 = v72[2];
  v156 = v91;
  v92 = v72[5];
  v157 = v72[4];
  v158 = v92;
  v93 = v72[1];
  v153 = *v72;
  v154 = v93;
  sub_258465168(&v153, &qword_27F9303B0, &unk_25853F8C0);
  __swift_destroy_boxed_opaque_existential_1Tm(v117);
  __swift_destroy_boxed_opaque_existential_1Tm(v115);
  __swift_destroy_boxed_opaque_existential_1Tm(v114);
  (*(v140 + 8))(v128, v141);
  (*(v142 + 8))(v130, v143);
  (*(v144 + 8))(v134, v145);
  (*(v146 + 8))(v135, v172);
  (*(v131 + 1))(&v133[v32], v132);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);

  sub_258465168(v127, &qword_27F931820, &unk_25853F380);
  swift_unknownObjectRelease();
  sub_258465168(v124, &qword_27F930580, &unk_2585382B0);
  __swift_destroy_boxed_opaque_existential_1Tm(v82);
  __swift_destroy_boxed_opaque_existential_1Tm(v83);
  sub_258465168(v122, &qword_27F931828, &unk_25853EB90);
  __swift_destroy_boxed_opaque_existential_1Tm(v121);
  sub_258465168(v32 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_activatingContinuation, &qword_27F930590, &qword_25853F8A0);
  swift_defaultActor_destroy();
  __swift_destroy_boxed_opaque_existential_1Tm(v159);
  __swift_destroy_boxed_opaque_existential_1Tm(v160);
  __swift_destroy_boxed_opaque_existential_1Tm(v161);
  __swift_destroy_boxed_opaque_existential_1Tm(v162);
  __swift_destroy_boxed_opaque_existential_1Tm(v163);
  sub_258532770(v61, type metadata accessor for AudioStreamInternalInitParameters);
  swift_deallocPartialClassInstance();
  __swift_destroy_boxed_opaque_existential_1Tm(v164);
  sub_258532770(v137, type metadata accessor for AudioStreamInternalInitParameters);
  return v32;
}

uint64_t sub_25853270C(uint64_t a1, uint64_t a2)
{
  inited = type metadata accessor for AudioStreamInternalInitParameters(0);
  (*(*(inited - 8) + 16))(a2, a1, inited);
  return a2;
}

uint64_t sub_258532770(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2585327E0()
{
  result = qword_27F931A88;
  if (!qword_27F931A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F931A88);
  }

  return result;
}