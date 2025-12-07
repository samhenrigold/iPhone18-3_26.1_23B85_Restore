uint64_t sub_25F72E00C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_25F743994();
  sub_25F7434C4();
  v8 = sub_25F7439B4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_25F743904() & 1) != 0)
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

    sub_25F72E908(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25F72E15C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_25F743994();

  MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
  v27 = a5;
  MEMORY[0x25F8E6560](a4, a5);
  sub_25F7434C4();

  v11 = sub_25F7439B4();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = (*(v10 + 48) + 32 * v13);
      v16 = v15[2];
      v17 = v15[3];
      v28 = *v15;
      v30 = v15[1];
      swift_bridgeObjectRetain_n();

      MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
      MEMORY[0x25F8E6560](v16, v17);

      MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
      MEMORY[0x25F8E6560](a4, v27);
      if (v28 == a2 && v30 == a3)
      {
        break;
      }

      v18 = sub_25F743904();

      if (v18)
      {
        goto LABEL_9;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

LABEL_9:

    v21 = (*(v10 + 48) + 32 * v13);
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    *a1 = *v21;
    a1[1] = v22;
    a1[2] = v23;
    a1[3] = v24;

    return 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v25;

    sub_25F72EA88(a2, a3, a4, v27, v13, isUniquelyReferenced_nonNull_native);
    *v25 = v29;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = v27;
    return 1;
  }
}

uint64_t sub_25F72E3FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC90, &qword_25F744D20);
  result = sub_25F7437F4();
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
      sub_25F743994();
      sub_25F7434C4();
      result = sub_25F7439B4();
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

uint64_t sub_25F72E65C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC88, &qword_25F744D18);
  result = sub_25F7437F4();
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
      sub_25F743994();

      MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
      MEMORY[0x25F8E6560](v21, v22);
      sub_25F7434C4();

      result = sub_25F7439B4();
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

uint64_t sub_25F72E908(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_25F72E3FC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25F72ED14();
      goto LABEL_16;
    }

    sub_25F72EFDC(v8 + 1);
  }

  v10 = *v4;
  sub_25F743994();
  sub_25F7434C4();
  result = sub_25F7439B4();
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

      result = sub_25F743904();
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
  result = sub_25F743914();
  __break(1u);
  return result;
}

uint64_t sub_25F72EA88(uint64_t result, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v24 = result;
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a6 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a6)
  {
    sub_25F72E65C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_25F72EE70();
      goto LABEL_14;
    }

    sub_25F72F214(v9 + 1);
  }

  v11 = *v6;
  sub_25F743994();

  MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
  MEMORY[0x25F8E6560](a3, a4);
  sub_25F7434C4();

  result = sub_25F7439B4();
  v12 = -1 << *(v11 + 32);
  a5 = result & ~v12;
  if ((*(v11 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v11 + 48) + 32 * a5);
      v15 = v14[2];
      v16 = v14[3];
      v27 = *v14;
      v28 = v14[1];
      swift_bridgeObjectRetain_n();

      MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
      MEMORY[0x25F8E6560](v15, v16);

      MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
      MEMORY[0x25F8E6560](a3, a4);
      if (v27 == v24 && v28 == a2)
      {
        goto LABEL_17;
      }

      v17 = sub_25F743904();

      if (v17)
      {
        goto LABEL_18;
      }

      a5 = (a5 + 1) & v13;
    }

    while (((*(v11 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_14:
  v18 = *v23;
  *(*v23 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v19 = (*(v18 + 48) + 32 * a5);
  *v19 = v24;
  v19[1] = a2;
  v19[2] = a3;
  v19[3] = a4;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_17:

LABEL_18:
  result = sub_25F743914();
  __break(1u);
  return result;
}

void *sub_25F72ED14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC90, &qword_25F744D20);
  v2 = *v0;
  v3 = sub_25F7437E4();
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

  return result;
}

void *sub_25F72EE70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC88, &qword_25F744D18);
  v2 = *v0;
  v3 = sub_25F7437E4();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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

uint64_t sub_25F72EFDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC90, &qword_25F744D20);
  result = sub_25F7437F4();
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
      sub_25F743994();

      sub_25F7434C4();
      result = sub_25F7439B4();
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

uint64_t sub_25F72F214(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC88, &qword_25F744D18);
  result = sub_25F7437F4();
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
      sub_25F743994();
      swift_bridgeObjectRetain_n();

      MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
      MEMORY[0x25F8E6560](v21, v22);
      sub_25F7434C4();

      result = sub_25F7439B4();
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

uint64_t sub_25F72F584()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC20, &qword_25F744E00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC38, &unk_25F744CB0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v12 = *(v7 + 64);
  v10 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v12, v10 | 7);
}

uint64_t sub_25F72F720(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC20, &qword_25F744E00) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC38, &unk_25F744CB0) - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_25F71C02C;

  return sub_25F72C74C(a1, v11, v12, v1 + v6, v13, v14, v1 + v10);
}

uint64_t sub_25F72F8B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAC9F8, "V");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F72F924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAC9F8, "V");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F72F98C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F72F9CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F72FA74;

  return sub_25F72D54C(a1, v5, v4);
}

uint64_t sub_25F72FA74(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_25F72FB70(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_25F72FBB8()
{
  result = qword_27FDACC80;
  if (!qword_27FDACC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDACC80);
  }

  return result;
}

uint64_t HashedUserSecret.init(secret:)(uint64_t a1, uint64_t a2)
{
  v2 = String.toUtf8Bytes()(a1, a2);

  v3 = _s17PrivateSearchCore6Sha256V4hashySays5UInt8VGAGFZ_0(v2);

  return v3;
}

uint64_t HashedUserSecret.init(secret:)(uint64_t a1)
{
  v1 = _s17PrivateSearchCore6Sha256V4hashySays5UInt8VGAGFZ_0(a1);

  return v1;
}

uint64_t sub_25F72FCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_25F743514();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_25F743514();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_25F743904();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_25F743514();
      v7 = v9;
    }

    while (v9);
  }

  sub_25F743514();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

unsigned __int8 *sub_25F72FE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  sub_25F73126C();

  result = sub_25F743584();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_25F7303E4(result, v7);
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25F743824();
      v9 = v64;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v22 = v9 - 1;
        if (v22)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOBYTE(v15) = 0;
            v26 = result + 1;
            v17 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v15 * a5;
              if ((v29 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v15 = v29 + (v27 + v28);
              if ((v15 >> 8))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          LOBYTE(v33) = 0;
          v17 = 1;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v36 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if ((v33 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v33;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          LOBYTE(v15) = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v15 = v21 - (v18 + v19);
            if ((v15 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        return (v20 | (v17 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v7) & 0xF;
  v65 = v8;
  v66 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        LOBYTE(v41) = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        v17 = 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v63 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if ((v41 >> 8))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        LOBYTE(v41) = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v65 + 1;
        v17 = 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v48 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if ((v41 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      LOBYTE(v41) = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v65 + 1;
      v17 = 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v56 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if ((v41 >> 8))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v17 = 0;
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_25F7303E4(uint64_t a1, unint64_t a2)
{
  v2 = sub_25F743594();
  v6 = sub_25F730464(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_25F730464(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_25F7437B4();
    if (!v9 || (v10 = v9, v11 = sub_25F72A528(v9, 0), v12 = sub_25F7305BC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_25F7434B4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_25F7434B4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_25F743824();
LABEL_4:

  return sub_25F7434B4();
}

unint64_t sub_25F7305BC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_25F7307DC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25F743564();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_25F743824();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_25F7307DC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_25F743534();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_25F7307DC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25F743574();
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
    v5 = MEMORY[0x25F8E65A0](15, a1 >> 16);
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

unint64_t sub_25F730858(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_25F7434E4();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_25F743594();
}

uint64_t sub_25F730908(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_25F7307DC(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_25F743554();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_25F7307DC(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_25F7307DC(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_25F743554();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 87;
        if (a6 > 10)
        {
          v40 = a6 + 55;
        }

        else
        {
          v39 = 97;
          v40 = 65;
        }

        if (a6 <= 10)
        {
          v41 = a6 + 48;
        }

        else
        {
          v41 = 58;
        }

        if (v27)
        {
          LOBYTE(v32) = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                v38 = 1;
                if (v44 < 0x61 || v44 >= v39)
                {
                  return v37 | (v38 << 8);
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (((v32 * a6) & 0xFF00) != 0)
            {
              goto LABEL_96;
            }

            v32 = (v32 * a6) + (v44 + v45);
            if ((v32 >> 8))
            {
              goto LABEL_96;
            }

            ++v42;
            --v43;
          }

          while (v43);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 8);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v46 = a6 + 87;
      if (a6 > 10)
      {
        v47 = a6 + 55;
      }

      else
      {
        v46 = 97;
        v47 = 65;
      }

      if (a6 <= 10)
      {
        v48 = a6 + 48;
      }

      else
      {
        v48 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        while (1)
        {
          v49 = *v27;
          if (v49 < 0x30 || v49 >= v48)
          {
            if (v49 < 0x41 || v49 >= v47)
            {
              v37 = 0;
              v38 = 1;
              if (v49 < 0x61 || v49 >= v46)
              {
                return v37 | (v38 << 8);
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) + (v49 + v50);
          if ((v32 >> 8))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 8);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 8);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) - (v35 + v36);
          if ((v32 & 0xFFFFFF00) != 0)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 8);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

char *_s17PrivateSearchCore8HexCodecV04fromD0ySays5UInt8VGSSFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_25F7434D4() & 0x8000000000000001) == 1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_25F743474();
  v5 = v4;
  if (sub_25F72FCA8(30768, 0xE200000000000000, v3, v4))
  {
    v6 = sub_25F7434D4();
    v7 = sub_25F730858(v6, v3, v5);
    v9 = v8;
    v11 = v10;
    v13 = v12;

    MEMORY[0x25F8E6500](v7, v9, v11, v13);
  }

  v14 = sub_25F7434D4();
  v15 = v14 / 2;
  result = sub_25F72DBE4(0, (v14 / 2) & ~((v14 + (v14 >> 63)) >> 63), 0, MEMORY[0x277D84F90]);
  if (v14 >= -1)
  {
    v2 = result;
    if ((v14 + 1) >= 3)
    {
      v17 = 15;
      while (v15)
      {
        v18 = sub_25F7434F4();
        if (v18 >> 14 < v17 >> 14)
        {
          goto LABEL_28;
        }

        v19 = v18;
        v20 = sub_25F743594();
        v24 = v23;
        if (!((v20 ^ v21) >> 14))
        {
          goto LABEL_29;
        }

        v25 = v20;
        v26 = v21;
        v27 = v22;
        if ((v23 & 0x1000000000000000) != 0)
        {
          LOWORD(v27) = sub_25F72FE04(v20, v21, v22, v23, 16);

          if ((v27 & 0x100) != 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if ((v23 & 0x2000000000000000) != 0)
          {
            v33[0] = v22;
            v33[1] = v23 & 0xFFFFFFFFFFFFFFLL;
            v28 = v33;
          }

          else if ((v22 & 0x1000000000000000) != 0)
          {
            v28 = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v28 = sub_25F743824();
          }

          v29 = sub_25F730908(v28, v25, v26, v27, v24, 16);
          LOBYTE(v27) = v29;
          v34 = BYTE1(v29) & 1;
          v30 = (v29 >> 8) & 1;

          if (v30)
          {
            goto LABEL_24;
          }
        }

        v32 = *(v2 + 2);
        v31 = *(v2 + 3);
        if (v32 >= v31 >> 1)
        {
          v2 = sub_25F72DBE4((v31 > 1), v32 + 1, 1, v2);
        }

        *(v2 + 2) = v32 + 1;
        v2[v32 + 32] = v27;
        v17 = v19;
        if (!--v15)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:

LABEL_24:

      v2 = MEMORY[0x277D84F90];
    }

LABEL_25:

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t _s17PrivateSearchCore8BitArrayV16debugDescriptionSSvg_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v18 = MEMORY[0x277D84F90];
    sub_25F729E00(0, v1, 0);
    v3 = v18;
    v4 = (a1 + 32);
    v5 = MEMORY[0x277D84B78];
    v6 = MEMORY[0x277D84BC0];
    do
    {
      v7 = *v4++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACCA8, &qword_25F744DC0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_25F744DA0;
      *(v8 + 56) = v5;
      *(v8 + 64) = v6;
      *(v8 + 32) = v7;
      v9 = sub_25F743434();
      v19 = v3;
      v12 = *(v3 + 16);
      v11 = *(v3 + 24);
      if (v12 >= v11 >> 1)
      {
        v17 = v9;
        v14 = v10;
        sub_25F729E00((v11 > 1), v12 + 1, 1);
        v10 = v14;
        v9 = v17;
        v3 = v19;
      }

      *(v3 + 16) = v12 + 1;
      v13 = v3 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACCB0, &qword_25F744DC8);
  sub_25F731208();
  sub_25F7433E4();

  v15 = sub_25F743474();

  return v15;
}

unint64_t sub_25F731208()
{
  result = qword_27FDACCB8;
  if (!qword_27FDACCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDACCB0, &qword_25F744DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDACCB8);
  }

  return result;
}

unint64_t sub_25F73126C()
{
  result = qword_27FDACCC0;
  if (!qword_27FDACCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDACCC0);
  }

  return result;
}

uint64_t InMemoryStore.__allocating_init()()
{
  v0 = sub_25F743764();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25F7433B4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_25F743754();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = swift_allocObject();
  sub_25F71A128();
  sub_25F743744();
  sub_25F7433A4();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  *(v6 + 16) = sub_25F743794();
  v7 = sub_25F731694();
  *(v6 + 24) = MEMORY[0x25F8E6420](0, MEMORY[0x277D415C8], &type metadata for BitArray, v7);
  return v6;
}

uint64_t InMemoryStore.init()()
{
  v1 = v0;
  v2 = sub_25F743764();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F7433B4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_25F743754();
  MEMORY[0x28223BE20](v7 - 8);
  sub_25F71A128();
  sub_25F743744();
  sub_25F7433A4();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v2);
  *(v1 + 16) = sub_25F743794();
  v8 = sub_25F731694();
  *(v1 + 24) = MEMORY[0x25F8E6420](0, MEMORY[0x277D415C8], &type metadata for BitArray, v8);
  return v1;
}

unint64_t sub_25F731694()
{
  result = qword_27FDACCC8;
  if (!qword_27FDACCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDACCC8);
  }

  return result;
}

uint64_t sub_25F731708()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_25F731878;
  *(v3 + 24) = v1;
  v0[6] = sub_25F7318CC;
  v0[7] = v3;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_25F7318F4;
  v0[5] = &block_descriptor;
  v4 = _Block_copy(v0 + 2);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }

  return result;
}

uint64_t sub_25F731878()
{
  swift_beginAccess();
  *(v0 + 24) = MEMORY[0x277D84F98];
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F731954()
{
  sub_25F743784();
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t InMemoryStore.isIndexed(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25F731A14, 0, 0);
}

uint64_t sub_25F731A14()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v8 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v8;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  sub_25F743784();

  v5 = *(v0 + 56);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_25F731AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  result = swift_beginAccess();
  if (*(*(a1 + 24) + 16))
  {

    sub_25F733160(a2, a3, a4, a5);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  *a6 = v14 & 1;
  return result;
}

uint64_t InMemoryStore.write(key:index:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_25F731BE4, 0, 0);
}

uint64_t sub_25F731BE4()
{
  InMemoryStore.setIndex(_:_:)(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_25F731CD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACCE8, &qword_25F744EB8);
  MEMORY[0x28223BE20](v4);
  v9 = a1;
  v10 = a2;
  (*(v6 + 104))(&v8[-v5], *MEMORY[0x277D858A0]);
  return sub_25F7436D4();
}

void sub_25F731DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACCF0, &qword_25F744EC0);
  v6 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v36 - v7;
  swift_beginAccess();
  v8 = *(a2 + 24);
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v37 = (v6 + 8);
  v41 = v8;

  v14 = 0;
  v36 = a1;
  v38 = v9;
  if (v12)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = *(a3 + 16);
      if (__OFADD__(v16, 8))
      {
        break;
      }

      v17 = __clz(__rbit64(v12)) | (v15 << 6);
      v18 = *(v41 + 56);
      v19 = (*(v41 + 48) + 32 * v17);
      v20 = *v19;
      v44 = v19[1];
      v45 = v20;
      v21 = v19[2];
      v42 = v19[3];
      v43 = v21;
      v22 = *(v18 + 8 * v17);
      if ((v16 + 7) <= 7)
      {

        v23 = MEMORY[0x277D84F90];
        if (v16)
        {
LABEL_13:
          v24 = *(v22 + 16);
          if (v24 >> 60)
          {
            goto LABEL_37;
          }

          if (8 * v24)
          {
            v25 = 0;
            v26 = v23 + 32;
            while (1)
            {
              v27 = *(a3 + 32 + 8 * v25) % (8 * v24);
              if (v27 >> 3 >= v24)
              {
                break;
              }

              v28 = *(v23 + 16);
              if (v28 >> 60)
              {
                goto LABEL_31;
              }

              if (v25 < 8 * v28)
              {
                v29 = *(v22 + 32 + (v27 >> 3));
                v30 = 1 << (v27 & 7);
                v31 = v25 >> 3;
                v32 = v25 & 7;
                if ((v29 & v30) != 0)
                {
                  if (v25 >> 3 >= v28)
                  {
                    goto LABEL_33;
                  }

                  v33 = (1 << v32) | *(v26 + v31);
                }

                else
                {
                  if (v25 >> 3 >= v28)
                  {
                    goto LABEL_34;
                  }

                  v33 = *(v26 + v31) & ~(1 << v32);
                }

                *(v26 + v31) = v33;
              }

              if (v16 == ++v25)
              {
                goto LABEL_26;
              }
            }

            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          goto LABEL_38;
        }
      }

      else
      {

        v23 = sub_25F7435C4();
        *(v23 + 16) = (v16 + 7) >> 3;
        bzero((v23 + 32), (v16 + 7) >> 3);
        if (v16)
        {
          goto LABEL_13;
        }
      }

LABEL_26:
      v34 = *(v22 + 16);

      if (v34 >> 60)
      {
        goto LABEL_36;
      }

      v12 &= v12 - 1;
      v46 = v45;
      v47 = v44;
      v48 = v43;
      v49 = v42;
      v50 = v23;
      v51 = 8 * v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACCF8, &qword_25F744EC8);
      v35 = v39;
      sub_25F743664();
      (*v37)(v35, v40);
      v14 = v15;
      v9 = v38;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        v46 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACCF8, &qword_25F744EC8);
        sub_25F743674();
        return;
      }

      v12 = *(v9 + 8 * v15);
      ++v14;
      if (v12)
      {
        goto LABEL_8;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t InMemoryStore.removeIndex(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = sub_25F733160(a1, a2, a3, a4);
  if (v11)
  {
    v12 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v4 + 24);
    v16 = *(v5 + 24);
    *(v5 + 24) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F733794();
      v14 = v16;
    }

    sub_25F733228(v12, v14);
    *(v5 + 24) = v14;
  }

  return swift_endAccess();
}

uint64_t InMemoryStore.setIndex(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = *(v6 + 16);
  v15 = swift_allocObject();
  v15[2] = v7;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a4;
  v15[7] = a5;
  v15[8] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_25F73396C;
  *(v16 + 24) = v15;
  v19[4] = sub_25F733BF4;
  v19[5] = v16;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_25F7318F4;
  v19[3] = &block_descriptor_10;
  v17 = _Block_copy(v19);

  dispatch_sync(v14, v17);
  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F732428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  sub_25F735CA0(a6, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

  *(a1 + 24) = v14;
  return swift_endAccess();
}

uint64_t InMemoryStore.getIndex(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACCD0, &qword_25F744E08);
  sub_25F743784();
  return v1;
}

uint64_t sub_25F732580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = swift_beginAccess();
  v13 = *(a1 + 24);
  if (!*(v13 + 16))
  {
    goto LABEL_6;
  }

  v14 = sub_25F733160(a2, a3, a4, a5);
  if ((v15 & 1) == 0)
  {

LABEL_6:
    *a6 = 0;
    a6[1] = 0;
    return result;
  }

  v16 = *(*(v13 + 56) + 8 * v14);

  v17 = *(v16 + 16);
  if (v17 >> 60)
  {
    __break(1u);
  }

  else
  {
    *a6 = v16;
    a6[1] = 8 * v17;
  }

  return result;
}

Swift::Void __swiftcall InMemoryStore.reset()()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_25F7339F4;
  *(v2 + 24) = v0;
  v4[4] = sub_25F733BF4;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_25F7318F4;
  v4[3] = &block_descriptor_17;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_25F732828(uint64_t a1)
{
  v2 = sub_25F7361C0(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(a1 + 24) = v2;
}

uint64_t sub_25F7328E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v47 = sub_25F7430C4();
  v3 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_25F743454();
  v5 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v7 = *(a1 + 24);
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v45 = (v3 + 8);
  v48 = "yStore";
  v49 = (v5 + 8);
  v52 = v7;

  v14 = 0;
  v15 = 0;
  while (v11)
  {
    v58 = v14;
LABEL_10:
    v17 = __clz(__rbit64(v11)) | (v15 << 6);
    v18 = (*(v52 + 48) + 32 * v17);
    v19 = v18[1];
    v21 = v18[2];
    v20 = v18[3];
    v22 = *(*(v52 + 56) + 8 * v17);
    v56 = *v18;
    v57 = v19;
    v55 = v19;
    swift_bridgeObjectRetain_n();

    v53 = v22;

    MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
    v54 = v20;
    MEMORY[0x25F8E6560](v21, v20);
    v24 = v56;
    v23 = v57;
    v25 = v50;
    sub_25F743444();
    v26 = sub_25F743424();
    v28 = v27;
    (*v49)(v25, v51);
    if (v28 >> 60 == 15)
    {
      if (qword_27FDAC978 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger(0);
      __swift_project_value_buffer(v29, qword_27FDACD40);
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_25F743814();

      v56 = 0x5B20676E69727453;
      v57 = 0xE800000000000000;
      MEMORY[0x25F8E6560](v24, v23);

      MEMORY[0x25F8E6560](0xD000000000000024, v48 | 0x8000000000000000);
      sub_25F73656C(2u, v56, v57);

      goto LABEL_26;
    }

    v30 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v30 != 2)
      {
        goto LABEL_25;
      }

      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      v31 = v32 - v33;
      if (__OFSUB__(v32, v33))
      {
        goto LABEL_39;
      }

      if (!v31)
      {
        goto LABEL_25;
      }
    }

    else if (v30)
    {
      v36 = HIDWORD(v26) - v26;
      if (__OFSUB__(HIDWORD(v26), v26))
      {
        goto LABEL_38;
      }

      v31 = v36;
      if (!v36)
      {
LABEL_25:
        sub_25F733BAC(v26, v28);
LABEL_26:
        v34 = MEMORY[0x277D84F90];
        goto LABEL_29;
      }
    }

    else
    {
      v31 = BYTE6(v28);
      if (!BYTE6(v28))
      {
        goto LABEL_25;
      }
    }

    if (v31 < 1)
    {
      v34 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAC9E8, "P#");
      v34 = swift_allocObject();
      v35 = _swift_stdlib_malloc_size(v34);
      v34[2] = v31;
      v34[3] = 2 * v35 - 64;
    }

    v37 = v46;
    v43 = sub_25F7430A4();
    sub_25F733BAC(v26, v28);
    result = (*v45)(v37, v47);
    if (v43 != v31)
    {
      goto LABEL_37;
    }

LABEL_29:
    v38 = v34[2];

    v39 = __OFADD__(v58, v38);
    v40 = v58 + v38;
    if (v39)
    {
      goto LABEL_35;
    }

    v11 &= v11 - 1;
    v41 = *(v53 + 16);

    v39 = __OFADD__(v40, v41);
    v14 = v40 + v41;
    if (v39)
    {
      goto LABEL_36;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      *v44 = v14;
      return result;
    }

    v11 = *(v8 + 8 * v16);
    ++v15;
    if (v11)
    {
      v58 = v14;
      v15 = v16;
      goto LABEL_10;
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
LABEL_39:
  __break(1u);
  return result;
}

uint64_t InMemoryStore.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_25F732E2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25F71C02C;

  return InMemoryStore.reset()();
}

uint64_t sub_25F732EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = *v4;
  return MEMORY[0x2822009F8](sub_25F732F0C, 0, 0);
}

uint64_t sub_25F732F0C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v8 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v8;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  sub_25F743784();

  v5 = *(v0 + 56);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_25F732FE0()
{
  sub_25F743784();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F733074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a5;
  v7[7] = a6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v7[8] = *v6;
  return MEMORY[0x2822009F8](sub_25F731BE4, 0, 0);
}

unint64_t sub_25F733160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25F743994();

  MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
  MEMORY[0x25F8E6560](a3, a4);
  sub_25F7434C4();

  v8 = sub_25F7439B4();

  return sub_25F733490(a1, a2, a3, a4, v8);
}

uint64_t sub_25F733228(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F7437D4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48) + 32 * v6;
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      sub_25F743994();
      swift_bridgeObjectRetain_n();

      MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
      MEMORY[0x25F8E6560](v10, v11);
      sub_25F7434C4();

      v12 = sub_25F7439B4();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v17 = v16[1];
          *v15 = *v16;
          v15[1] = v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25F733424(uint64_t a1, uint64_t a2)
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

unint64_t sub_25F733490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v15 = ~v6;
    while (1)
    {
      v10 = (*(v5 + 48) + 32 * v7);
      v11 = v10[2];
      v12 = v10[3];
      v18 = *v10;
      v19 = v10[1];
      swift_bridgeObjectRetain_n();

      MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
      MEMORY[0x25F8E6560](v11, v12);

      MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
      MEMORY[0x25F8E6560](a3, a4);
      if (v18 == a1 && v19 == a2)
      {
        break;
      }

      v13 = sub_25F743904();

      if ((v13 & 1) == 0)
      {
        v7 = (v7 + 1) & v15;
        if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          continue;
        }
      }

      return v7;
    }
  }

  return v7;
}

void *sub_25F733638()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD00, &unk_25F744ED0);
  v2 = *v0;
  v3 = sub_25F7438A4();
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

void *sub_25F733794()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACCE0, &qword_25F744EB0);
  v2 = *v0;
  v3 = sub_25F7438A4();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
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

uint64_t sub_25F73391C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25F7339A4@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(*(v1 + 24) + 16);
  return result;
}

void *sub_25F733A3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACCD8, "V)");
  v2 = *v0;
  v3 = sub_25F7438A4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_25F733BAC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25F71A0D4(result, a2);
  }

  return result;
}

uint64_t sub_25F733C48()
{
  v1[10] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD08, qword_25F744F30);
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F733D14, 0, 0);
}

uint64_t sub_25F733D14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC20, &qword_25F744E00);
  sub_25F743694();
  v0[14] = MEMORY[0x277D84F90];
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_25F733DF0;
  v2 = v0[11];

  return MEMORY[0x2822005A8](v0 + 2, 0, 0, v2, v0 + 8);
}

uint64_t sub_25F733DF0()
{

  if (v0)
  {

    v1 = sub_25F7340CC;
  }

  else
  {
    v1 = sub_25F733F08;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_25F733F08()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (v1)
  {
    v3 = *(v0 + 32);
    v15 = *(v0 + 40);
    v4 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 112);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_25F72DDF0(0, *(v6 + 2) + 1, 1, v6);
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_25F72DDF0((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[48 * v8];
    *(v9 + 4) = v2;
    *(v9 + 5) = v1;
    *(v9 + 6) = v3;
    *(v9 + 56) = v15;
    *(v9 + 9) = v4;
    *(v0 + 112) = v6;
    v10 = swift_task_alloc();
    *(v0 + 120) = v10;
    *v10 = v0;
    v10[1] = sub_25F733DF0;
    v11 = *(v0 + 88);

    return MEMORY[0x2822005A8](v0 + 16, 0, 0, v11, v0 + 64);
  }

  else
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v12 = *(v0 + 8);
    v13 = *(v0 + 112);

    return v12(v13);
  }
}

uint64_t sub_25F7340CC()
{
  v1 = v0[8];
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAC9F0, &qword_25F744D10);
  if (sub_25F7438F4())
  {
    MEMORY[0x25F8E6CF0](v1);
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  (*(v0[12] + 8))(v0[13], v0[11]);

  v3 = v0[1];

  return v3();
}

uint64_t LevelCapacityUsageState.__allocating_init(levelCapacity:)(uint64_t a1)
{
  v2 = swift_allocObject();
  LevelCapacityUsageState.init(levelCapacity:)(a1);
  return v2;
}

void *LevelCapacityUsageState.init(levelCapacity:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F743764();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F7433B4();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_25F743754();
  MEMORY[0x28223BE20](v9 - 8);
  sub_25F71A128();
  sub_25F743744();
  sub_25F7433A4();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v4);
  v2[2] = sub_25F743794();
  v2[3] = 0;
  v2[4] = a1;
  v2[5] = sub_25F735F70(MEMORY[0x277D84F90]);
  return v2;
}

Swift::Void __swiftcall LevelCapacityUsageState.setLevelCapacity(to:)(Swift::UInt64 to)
{
  v3 = sub_25F743394();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F743384();
  v8 = v1;
  v9 = to;
  sub_25F743774();
  (*(v4 + 8))(v6, v3);
}

uint64_t sub_25F73454C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = swift_beginAccess();
  v7 = *(a1 + 40);
  v8 = *(v7 + 16);
  if (v8)
  {
    result = sub_25F733BD0(a2);
    if (v9)
    {
      v8 = *(*(v7 + 56) + 8 * result);
    }

    else
    {
      v8 = 0;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_25F7345CC(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 40);
  if (!*(v4 + 16) || (result = sub_25F733BD0(a1), (v6 & 1) == 0))
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + 40);
    *(v2 + 40) = 0x8000000000000000;
    v10 = 1;
    goto LABEL_6;
  }

  v7 = *(*(v4 + 56) + 8 * result);
  v8 = v7 + 1;
  if (v7 != -1)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + 40);
    *(v2 + 40) = 0x8000000000000000;
    v10 = v8;
LABEL_6:
    sub_25F735E4C(v10, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 40) = v11;
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

Swift::UInt64 __swiftcall LevelCapacityUsageState.requestAndUpdate(_:)(Swift::UInt64 a1)
{
  v3 = sub_25F743394();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a1;
  sub_25F743384();
  v9 = v1;
  v10 = a1;
  v11 = &v12;
  sub_25F743774();
  (*(v4 + 8))(v6, v3);
  return v12;
}

uint64_t sub_25F7347E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v6 = *(a1 + 40);
  if (!*(v6 + 16) || (result = sub_25F733BD0(a2), (v8 & 1) == 0))
  {
    v9 = *a3;
    return sub_25F7345CC(v9);
  }

  if (*(*(v6 + 56) + 8 * result) < *(a1 + 32))
  {
    *a3 = a2;
    v9 = a2;
    return sub_25F7345CC(v9);
  }

  if (a2 == -1)
  {
    __break(1u);
  }

  else
  {
    *a3 = a2 + 1;
  }

  return result;
}

uint64_t LevelCapacityUsageState.refresh(searchIndexReader:level0BloomFilterSizeBits:levelCapacity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_25F743394();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC20, &qword_25F744E00);
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F7349C8, 0, 0);
}

uint64_t sub_25F7349C8()
{
  v1 = *(v0 + 112);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = type metadata accessor for CallContextImpl();
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  v5 = swift_allocObject();
  *(v5 + 32) = 0u;
  *(v5 + 16) = 0u;
  swift_beginAccess();
  sub_25F728904(v0 + 56, v5 + 16);
  swift_endAccess();
  *(v0 + 16) = v5;
  *(v0 + 40) = v4;
  *(v0 + 48) = &protocol witness table for CallContextImpl;
  (*(v3 + 8))(&unk_2871C0CF8, v0 + 16, v2, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  *v6 = v0;
  v6[1] = sub_25F734BB4;

  return sub_25F733C48();
}

uint64_t sub_25F734BB4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v4[25] = v1;

  v6 = (v5 + 8);
  v7 = v4[23];
  v8 = v4[21];
  if (v1)
  {
    (*v6)(v7, v8);
    v9 = sub_25F734E58;
  }

  else
  {
    v4[26] = a1;
    (*v6)(v7, v8);
    v9 = sub_25F734D40;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_25F734D40(uint64_t a1)
{
  v2 = v1[26];
  v4 = v1[19];
  v3 = v1[20];
  v5 = v1[17];
  v11 = v1[18];
  v7 = v1[15];
  v6 = v1[16];
  sub_25F743384();
  v8 = swift_task_alloc();
  v8[2] = v5;
  v8[3] = v6;
  v8[4] = v2;
  v8[5] = v7;
  sub_25F743774();

  (*(v4 + 8))(v3, v11);

  v9 = v1[1];

  return v9();
}

uint64_t sub_25F734E58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F734EC8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v70 = sub_25F743114();
  v9 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  a1[5] = MEMORY[0x277D84F98];

  a1[4] = a2;
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  v69 = v9;
  if (v11)
  {
    v67 = v4;
    v73 = MEMORY[0x277D84F90];
    sub_25F729E64(0, v11, 0);
    v13 = a4;
    v14 = v73;
    v15 = log2(v13);
    v16 = *(v14 + 16);
    v17 = (a3 + 72);
    do
    {
      v18 = *v17;
      v17 += 6;
      v19 = log2(v18);
      v73 = v14;
      v20 = *(v14 + 24);
      v21 = v16 + 1;
      if (v16 >= v20 >> 1)
      {
        v22 = v19;
        sub_25F729E64((v20 > 1), v16 + 1, 1);
        v19 = v22;
        v14 = v73;
      }

      *(v14 + 16) = v21;
      *(v14 + 8 * v16++ + 32) = v19 - v15;
      --v11;
    }

    while (v11);
    goto LABEL_9;
  }

  v21 = *(MEMORY[0x277D84F90] + 16);
  if (v21)
  {
    v67 = v4;
    v14 = MEMORY[0x277D84F90];
LABEL_9:
    v74 = v12;
    sub_25F729E44(0, v21, 0);
    v23 = 0;
    v24 = v74;
    v71 = v21;
    while (1)
    {
      if (v23 >= *(v14 + 16))
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
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
        goto LABEL_58;
      }

      v25 = *(v14 + 8 * v23 + 32) + *(v14 + 8 * v23 + 32);
      if (COERCE__INT64(fabs(v25)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_49;
      }

      if (v25 <= -1.0)
      {
        goto LABEL_50;
      }

      if (v25 >= 1.84467441e19)
      {
        goto LABEL_51;
      }

      v26 = v25;
      v27 = a1[5];
      if (*(v27 + 16))
      {
        v28 = sub_25F733BD0(v25);
        if (v29)
        {
          break;
        }
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = a1[5];
      v43 = v72;
      a1[5] = 0x8000000000000000;
      v45 = sub_25F733BD0(v26);
      v46 = v43[2];
      v47 = (v44 & 1) == 0;
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_52;
      }

      v49 = v44;
      if (v43[3] >= v48)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v52 = v72;
          if ((v44 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          sub_25F733A3C();
          v52 = v72;
          if ((v49 & 1) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        sub_25F735A3C(v48, isUniquelyReferenced_nonNull_native);
        v50 = sub_25F733BD0(v26);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_60;
        }

        v45 = v50;
        v52 = v72;
        if ((v49 & 1) == 0)
        {
LABEL_33:
          v52[(v45 >> 6) + 8] |= 1 << v45;
          *(v52[6] + 8 * v45) = v26;
          *(v52[7] + 8 * v45) = 1;
          v53 = v52[2];
          v38 = __OFADD__(v53, 1);
          v54 = v53 + 1;
          if (v38)
          {
            goto LABEL_53;
          }

          goto LABEL_38;
        }
      }

      *(v52[7] + 8 * v45) = 1;
LABEL_39:
      a1[5] = v52;
      swift_endAccess();
      v57 = v71;
      v74 = v24;
      v59 = *(v24 + 16);
      v58 = *(v24 + 24);
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        sub_25F729E44((v58 > 1), v59 + 1, 1);
        v24 = v74;
      }

      ++v23;
      *(v24 + 16) = v60;
      if (v57 == v23)
      {

        goto LABEL_43;
      }
    }

    v30 = *(*(v27 + 56) + 8 * v28);
    v31 = v30 + 1;
    if (v30 == -1)
    {
      goto LABEL_54;
    }

    swift_beginAccess();
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v72 = a1[5];
    v33 = v72;
    a1[5] = 0x8000000000000000;
    v34 = sub_25F733BD0(v26);
    v36 = v33[2];
    v37 = (v35 & 1) == 0;
    v38 = __OFADD__(v36, v37);
    v39 = v36 + v37;
    if (v38)
    {
      goto LABEL_55;
    }

    v40 = v35;
    if (v33[3] >= v39)
    {
      if ((v32 & 1) == 0)
      {
        v55 = v34;
        sub_25F733A3C();
        v34 = v55;
        v52 = v72;
        if ((v40 & 1) == 0)
        {
LABEL_37:
          v52[(v34 >> 6) + 8] |= 1 << v34;
          *(v52[6] + 8 * v34) = v26;
          *(v52[7] + 8 * v34) = v31;
          v56 = v52[2];
          v38 = __OFADD__(v56, 1);
          v54 = v56 + 1;
          if (v38)
          {
            goto LABEL_56;
          }

LABEL_38:
          v52[2] = v54;
          goto LABEL_39;
        }

        goto LABEL_31;
      }
    }

    else
    {
      sub_25F735A3C(v39, v32);
      v34 = sub_25F733BD0(v26);
      if ((v40 & 1) != (v41 & 1))
      {
        goto LABEL_60;
      }
    }

    v52 = v72;
    if ((v40 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_31:
    *(v52[7] + 8 * v34) = v31;
    goto LABEL_39;
  }

LABEL_43:
  v61 = v70;
  v62 = v68;
  sub_25F743104();
  sub_25F7430F4();
  v64 = v63;
  result = (*(v69 + 8))(v62, v61);
  v66 = v64 * 1000.0;
  if (COERCE__INT64(fabs(v64 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_57;
  }

  if (v66 <= -9.22337204e18)
  {
LABEL_58:
    __break(1u);
  }

  else if (v66 < 9.22337204e18)
  {
    a1[3] = v66;
    return result;
  }

  __break(1u);
LABEL_60:
  result = sub_25F743924();
  __break(1u);
  return result;
}

uint64_t LevelCapacityUsageState.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_25F7354CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD00, &unk_25F744ED0);
  result = sub_25F7438B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      }

      result = sub_25F743984();
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
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

uint64_t sub_25F73573C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACCE0, &qword_25F744EB0);
  v35 = v4;
  result = sub_25F7438B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = v22[1];
      v37 = *v22;
      v24 = v22[3];
      v36 = v22[2];
      v25 = *(v21 + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_25F743994();

      MEMORY[0x25F8E6560](2960685, 0xE300000000000000);
      MEMORY[0x25F8E6560](v36, v24);
      sub_25F7434C4();

      result = sub_25F7439B4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v37;
      v16[1] = v23;
      v16[2] = v36;
      v16[3] = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25F735A3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACCD8, "V)");
  result = sub_25F7438B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
      result = sub_25F743984();
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

LABEL_33:
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
        goto LABEL_33;
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

    if (v30)
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25F735CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_25F733160(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_25F73573C(v20, a6 & 1);
      v15 = sub_25F733160(a2, a3, a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_25F743924();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_25F733794();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 32 * v15);
  *v27 = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

unint64_t sub_25F735E4C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25F733BD0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_25F733A3C();
    result = v17;
    goto LABEL_8;
  }

  sub_25F735A3C(v14, a3 & 1);
  result = sub_25F733BD0(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

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

    goto LABEL_13;
  }

LABEL_14:
  result = sub_25F743924();
  __break(1u);
  return result;
}

unint64_t sub_25F735F70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACCD8, "V)");
    v3 = sub_25F7438C4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_25F733BD0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void *sub_25F7360B8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD00, &unk_25F744ED0);
  v3 = sub_25F7438C4();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_25F733BD0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_25F733BD0(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25F7361C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACCE0, &qword_25F744EB0);
    v3 = sub_25F7438C4();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_25F733160(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 32 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v12[3] = v8;
      *(v3[7] + 8 * result) = v9;
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

uint64_t Logger.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = *(v6 + 16);
  v10(v16 - v11, a1, a2);
  if (swift_dynamicCast())
  {
    v12 = v16[0];
    v13 = v16[1];
  }

  else
  {
    v10(v9, a1, a2);
    v12 = sub_25F743464();
    v13 = v14;
  }

  *a3 = v12;
  a3[1] = v13;
  type metadata accessor for Logger(0);
  sub_25F743364();
  return (*(v6 + 8))(a1, a2);
}

uint64_t type metadata accessor for Logger(uint64_t a1)
{
  result = qword_27FDACD20;
  if (!qword_27FDACD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25F7364E0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_25F743404();
  [v0 setDateFormat_];

  qword_27FDACD10 = v0;
}

void sub_25F73656C(unsigned __int8 a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v39 = a2;
  v40 = a3;
  v6 = sub_25F743114();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    v10 = sub_25F743734();
  }

  else if (a1)
  {
    v10 = sub_25F743714();
  }

  else
  {
    v10 = sub_25F743724();
  }

  v11 = v10;
  type metadata accessor for Logger(0);
  v12 = sub_25F743354();
  if (os_log_type_enabled(v12, v11))
  {
    v38 = v4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v41 = v14;
    *v13 = 136315394;
    v15 = 0xE500000000000000;
    v16 = 0xE400000000000000;
    v17 = 1314013527;
    if (a1 != 2)
    {
      v17 = 0x524F525245;
      v16 = 0xE500000000000000;
    }

    v18 = 1330007625;
    if (a1)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v18 = 0x4755424544;
    }

    if (a1 <= 1u)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    if (a1 <= 1u)
    {
      v20 = v15;
    }

    else
    {
      v20 = v16;
    }

    v21 = sub_25F736C14(v19, v20, &v41);

    *(v13 + 4) = v21;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_25F736C14(v39, v40, &v41);
    _os_log_impl(&dword_25F718000, v12, v11, "[%s] %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8E6DF0](v14, -1, -1);
    MEMORY[0x25F8E6DF0](v13, -1, -1);

    v4 = v38;
  }

  else
  {
  }

  if (byte_27FDACD18 == 1)
  {
    v41 = 91;
    v42 = 0xE100000000000000;
    if (qword_27FDAC970 != -1)
    {
      swift_once();
    }

    v22 = qword_27FDACD10;
    sub_25F743104();
    v23 = sub_25F7430E4();
    (*(v7 + 8))(v9, v6);
    v24 = [v22 stringFromDate_];

    v25 = sub_25F743414();
    v27 = v26;

    MEMORY[0x25F8E6560](v25, v27);

    MEMORY[0x25F8E6560](45, 0xE100000000000000);
    v28 = 0xE500000000000000;
    v29 = 0xE400000000000000;
    v30 = 1314013527;
    if (a1 != 2)
    {
      v30 = 0x524F525245;
      v29 = 0xE500000000000000;
    }

    v31 = 1330007625;
    if (a1)
    {
      v28 = 0xE400000000000000;
    }

    else
    {
      v31 = 0x4755424544;
    }

    if (a1 <= 1u)
    {
      v32 = v31;
    }

    else
    {
      v32 = v30;
    }

    if (a1 <= 1u)
    {
      v33 = v28;
    }

    else
    {
      v33 = v29;
    }

    MEMORY[0x25F8E6560](v32, v33);

    MEMORY[0x25F8E6560](45, 0xE100000000000000);
    MEMORY[0x25F8E6560](*v4, v4[1]);
    MEMORY[0x25F8E6560](8285, 0xE200000000000000);
    MEMORY[0x25F8E6560](v39, v40);
    v34 = v41;
    v35 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD30, "t)");
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_25F744DA0;
    *(v36 + 56) = MEMORY[0x277D837D0];
    *(v36 + 32) = v34;
    *(v36 + 40) = v35;
    sub_25F743974();
  }
}

Swift::Void __swiftcall Logger.info(_:)(Swift::OpaquePointer a1)
{
  v1 = *(a1._rawValue + 2);
  if (v1)
  {
    v2 = (a1._rawValue + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;

      sub_25F73656C(1u, v3, v4);

      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_25F736A34(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25F743374();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F736AF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25F743374();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25F736B98(uint64_t a1)
{
  result = sub_25F743374();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25F736C14(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25F736CE0(v11, 0, 0, 1, a1, a2);
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
    sub_25F737054(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25F736CE0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25F736DEC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25F743824();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_25F736DEC(uint64_t a1, unint64_t a2)
{
  v3 = sub_25F736E38(a1, a2);
  sub_25F736F68(byte_2871C0CD0);
  return v3;
}

void *sub_25F736E38(uint64_t a1, unint64_t a2)
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

  v6 = sub_25F72A528(v5, 0);
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

  result = sub_25F743824();
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
        v10 = sub_25F743524();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25F72A528(v10, 0);
        result = sub_25F743804();
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

char *sub_25F736F68(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_25F72DBE4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v7 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25F737054(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t LogLevelStrategy.__allocating_init(level0MaxTerms:level0BloomFilterSizeBits:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

double LogLevelStrategy.__allocating_init()()
{
  v0 = swift_allocObject();
  *&result = 22;
  *(v0 + 16) = xmmword_25F744F80;
  return result;
}

double LogLevelStrategy.init()()
{
  *&result = 22;
  *(v0 + 16) = xmmword_25F744F80;
  return result;
}

uint64_t LogLevelStrategy.init(level0MaxTerms:level0BloomFilterSizeBits:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

Swift::UInt64 __swiftcall LogLevelStrategy.levelForTerms(_:)(Swift::UInt64 result)
{
  v2 = *(v1 + 16);
  if (v2 >= result)
  {
    return 0;
  }

  for (i = 0; ; ++i)
  {
    v4 = i + 1;
    if (i == -1)
    {
      break;
    }

    v2 *= 2;
    if (v2 >= result)
    {
      return v4;
    }
  }

  __break(1u);
  return result;
}

Swift::UInt64 __swiftcall LogLevelStrategy.bloomFilterSizeForLevel(_:)(Swift::UInt64 a1)
{
  if (a1 >= 0x40)
  {
    return 0;
  }

  else
  {
    return *(v1 + 24) << a1;
  }
}

Swift::UInt64 __swiftcall LogLevelStrategy.bloomFilterSizeForNumTerms(_:)(Swift::UInt64 a1)
{
  v2 = *(v1 + 16);
  if (v2 >= a1)
  {
    return *(v1 + 24);
  }

  v3 = 0;
  do
  {
    v4 = v3 + 1;
    if (v3 == -1)
    {
      __break(1u);
      return *(v1 + 24) << v4;
    }

    v2 *= 2;
    ++v3;
  }

  while (v2 < a1);
  if (v4 > 0x3F)
  {
    return 0;
  }

  return *(v1 + 24) << v4;
}

Swift::String __swiftcall LogLevelStrategy.idForLevelStrategy()()
{
  v0 = 0x6874697261676F6CLL;
  v1 = 0xEE0030765F63696DLL;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

unint64_t sub_25F737248(unint64_t result)
{
  v2 = *(*v1 + 16);
  if (v2 >= result)
  {
    return 0;
  }

  for (i = 0; ; ++i)
  {
    v4 = i + 1;
    if (i == -1)
    {
      break;
    }

    v2 *= 2;
    if (v2 >= result)
    {
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t MaskedBloomFilterAlgorithm.init(secret:documentKey:levelStrategy:bloomFilterNumBits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBE8, &unk_25F744BA0);
  inited = swift_initStackObject();
  *(inited + 32) = a2;
  *(inited + 16) = xmmword_25F743F50;
  *(inited + 40) = a3;
  *(inited + 48) = a4;
  *(inited + 56) = a5;
  v13 = a6[3];
  v12 = a6[4];
  __swift_project_boxed_opaque_existential_1(a6, v13);
  v14 = *(v12 + 32);

  v20 = v14(v13, v12);
  v21 = v15;
  MEMORY[0x25F8E6560](47, 0xE100000000000000);
  v16 = sub_25F7438E4();
  MEMORY[0x25F8E6560](v16);

  *(inited + 64) = v20;
  *(inited + 72) = v21;

  v17 = sub_25F737B98(a1, inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(a6);
  return v17;
}

char *MaskedBloomFilterAlgorithm.mask(bitArray:)(char *result, uint64_t a2)
{
  v2 = *(result + 2);
  if (v2 >> 60)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = sub_25F737614(8 * v2, a2);
    v5 = BitArray.xor(_:)(v3, v4);

    return v5;
  }

  return result;
}

uint64_t MaskedBloomFilterAlgorithm.match(maskedBitArray:selectedIndexes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F7377B0(a2, a3);
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *(a1 + 16);
    while (!(v8 >> 60))
    {
      if (v7 >= 8 * v8)
      {
        v9 = 0;
      }

      else
      {
        if (v7 >> 3 >= v8)
        {
          goto LABEL_18;
        }

        v9 = (*(a1 + 32 + (v7 >> 3)) >> (v7 & 7)) & 1;
      }

      v10 = *(result + 16);
      if (v10 >> 60)
      {
        goto LABEL_17;
      }

      if (v7 >= 8 * v10)
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v7 >> 3 >= v10)
        {
          goto LABEL_19;
        }

        if ((v9 ^ (((*(result + 32 + (v7 >> 3)) >> (v7 & 7)) & 1) == 0)))
        {
LABEL_14:

          return 0;
        }
      }

      if (v6 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return 1;
  }

  return result;
}

void *sub_25F737614(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AESCounterRandomNumberGenerator();
  inited = swift_initStackObject();
  inited[2] = a2;
  inited[3] = 0;

  result = sub_25F7435C4();
  result[2] = 16;
  result[4] = 0;
  result[5] = 0;
  v6 = MEMORY[0x277D84F90];
  inited[4] = result;
  inited[5] = v6;
  v7 = a1 + 8;
  if (!__OFADD__(a1, 8))
  {
    v8 = a1 + 7;
    if (v7 < 1)
    {
      v8 = a1 + 14;
    }

    if (v7 < -6)
    {
      goto LABEL_19;
    }

    v9 = v8 >> 3;
    if (v7 >= 9)
    {
      v10 = sub_25F7435C4();
      *(v10 + 16) = v9;
      bzero((v10 + 32), v9);
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    result = sub_25F7435C4();
    v11 = result;
    result[2] = 16;
    result[4] = 0;
    result[5] = 0;
    if (v7 < 9)
    {
LABEL_15:

      return v10;
    }

    v12 = 0;
    while (1)
    {
      v13 = v12 & 0xF;
      if ((v12 & 0xF) == 0)
      {

        AESCounterRandomNumberGenerator.incrementCounter()();

        v11 = sub_25F719374(v14);
      }

      if (v13 >= v11[2])
      {
        break;
      }

      if (v12 >= *(v10 + 16))
      {
        goto LABEL_17;
      }

      *(v10 + 32 + v12++) = *(v11 + v13 + 32);
      if (v9 == v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25F7377B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AESCounterRandomNumberGenerator();
  inited = swift_initStackObject();
  inited[2] = a2;
  inited[3] = 0;

  v5 = sub_25F7435C4();
  v5[2] = 16;
  v5[4] = 0;
  v5[5] = 0;
  v6 = MEMORY[0x277D84F90];
  inited[4] = v5;
  inited[5] = v6;
  v7 = sub_25F7360B8(v6);
  v42 = *(a1 + 16);
  v8 = v42 + 8;
  if (__OFADD__(v42, 8))
  {
    goto LABEL_48;
  }

  v9 = v7;
  v10 = (v42 + 7) >> 3;
  if (v8 >= 9)
  {
    v11 = sub_25F7435C4();
    *(v11 + 16) = v10;
    bzero((v11 + 32), (v42 + 7) >> 3);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v44 = v11;
  if (!v42)
  {
LABEL_43:

    return v44;
  }

  v12 = 0;
  v41 = a1 + 32;
  while (1)
  {
    v14 = *(v41 + 8 * v12);
    v15 = v14 + 127;
    if (v14 >= 0)
    {
      v15 = *(v41 + 8 * v12);
    }

    v16 = v15 >> 7;
    if (v9[2])
    {
      sub_25F733BD0(v16);
      if (v17)
      {
        goto LABEL_29;
      }
    }

    v18 = sub_25F7435C4();
    *(v18 + 16) = 16;
    *(v18 + 32) = 0;
    *(v18 + 40) = 0;
    if (v14 >= -127)
    {
      v19 = v16 + 1;
      *(v18 + 32) = v16 + 1;
      if ((v16 + 1) >= 0x100)
      {
        *(v18 + 33) = BYTE1(v19);
        if (v19 >= 0x10000)
        {
          *(v18 + 34) = BYTE2(v19);
          if (v19 >> 24)
          {
            *(v18 + 35) = (v16 + 1) >> 24;
            if (HIDWORD(v19))
            {
              *(v18 + 36) = BYTE4(v19);
              if (v19 >> 40)
              {
                *(v18 + 37) = BYTE5(v19);
                if (HIWORD(v19))
                {
                  *(v18 + 38) = BYTE6(v19);
                  v20 = HIBYTE(v19);
                  if (v20)
                  {
                    *(v18 + 39) = v20;
                  }
                }
              }
            }
          }
        }
      }
    }

    v21 = sub_25F719374(v18);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v9;
    v23 = sub_25F733BD0(v16);
    v25 = v9[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (v9[3] < v28)
    {
      sub_25F7354CC(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_25F733BD0(v16);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_49;
      }

LABEL_27:
      if (v29)
      {
        goto LABEL_28;
      }

      goto LABEL_32;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_27;
    }

    v31 = v23;
    sub_25F733638();
    v23 = v31;
    v9 = v43;
    if (v29)
    {
LABEL_28:
      *(v9[7] + 8 * v23) = v21;

LABEL_29:
      if (!v9[2])
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    }

LABEL_32:
    v9[(v23 >> 6) + 8] |= 1 << v23;
    *(v9[6] + 8 * v23) = v16;
    *(v9[7] + 8 * v23) = v21;
    v32 = v9[2];
    v27 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v27)
    {
      goto LABEL_46;
    }

    v9[2] = v33;
    if (!v9[2])
    {
LABEL_36:
      v36 = MEMORY[0x277D84F90];
      if (v8 >= 9)
      {
        v36 = sub_25F7435C4();
        *(v36 + 16) = v10;
        bzero((v36 + 32), (v42 + 7) >> 3);
      }

      goto LABEL_38;
    }

LABEL_34:
    v34 = sub_25F733BD0(v16);
    if ((v35 & 1) == 0)
    {
      goto LABEL_36;
    }

    v36 = *(v9[7] + 8 * v34);

LABEL_38:
    v37 = v14 - (v16 << 7);
    if ((v37 & 0x8000000000000000) != 0)
    {
      goto LABEL_7;
    }

    v38 = *(v36 + 16);
    if (v38 >> 60)
    {
      goto LABEL_45;
    }

    if (v37 >= 8 * v38)
    {
LABEL_7:

      LOBYTE(v13) = 0;
    }

    else
    {
      if (v37 >> 3 >= v38)
      {
        goto LABEL_47;
      }

      v39 = *(v36 + (v37 >> 3) + 32);

      v13 = (v39 >> (v37 & 7)) & 1;
    }

    BitArray.setBit(_:_:)(v12++, v13);
    if (v42 == v12)
    {
      goto LABEL_43;
    }
  }

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
  result = sub_25F743924();
  __break(1u);
  return result;
}

uint64_t sub_25F737B98(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v36 = sub_25F7430C4();
  v4 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F743454();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v10 = *(a1 + 16);
  if (HIDWORD(v10))
  {
    goto LABEL_30;
  }

  CC_SHA256_Update(&c, (a1 + 32), v10);
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (v7 + 8);
    v33 = (v4 + 8);
    v37 = "yStore";
    v13 = (a2 + 40);
    v34 = v6;
    while (1)
    {
      v15 = *(v13 - 1);
      v14 = *v13;

      sub_25F743444();
      v16 = sub_25F743424();
      v18 = v17;
      (*v12)(v9, v6);
      if (v18 >> 60 == 15)
      {
        break;
      }

      v20 = v18 >> 62;
      if ((v18 >> 62) > 1)
      {
        if (v20 != 2)
        {
          goto LABEL_19;
        }

        v23 = *(v16 + 16);
        v22 = *(v16 + 24);
        v21 = v22 - v23;
        if (__OFSUB__(v22, v23))
        {
          goto LABEL_28;
        }

        if (!v21)
        {
          goto LABEL_19;
        }
      }

      else if (v20)
      {
        v26 = HIDWORD(v16) - v16;
        if (__OFSUB__(HIDWORD(v16), v16))
        {
          goto LABEL_29;
        }

        v21 = v26;
        if (!v26)
        {
LABEL_19:
          sub_25F733BAC(v16, v18);
LABEL_20:
          v24 = MEMORY[0x277D84F90];
          goto LABEL_23;
        }
      }

      else
      {
        v21 = BYTE6(v18);
        if (!BYTE6(v18))
        {
          goto LABEL_19;
        }
      }

      if (v21 < 1)
      {
        v24 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAC9E8, "P#");
        v24 = swift_allocObject();
        v25 = _swift_stdlib_malloc_size(v24);
        v24[2] = v21;
        v24[3] = 2 * v25 - 64;
      }

      v27 = v35;
      v28 = sub_25F7430A4();
      sub_25F733BAC(v16, v18);
      (*v33)(v27, v36);
      v6 = v34;
      if (v28 != v21)
      {
        goto LABEL_27;
      }

LABEL_23:
      v29 = v24[2];
      if (HIDWORD(v29))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
      }

      CC_SHA256_Update(&c, v24 + 4, v29);

      v13 += 2;
      if (!--v11)
      {
        goto LABEL_25;
      }
    }

    if (qword_27FDAC978 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger(0);
    __swift_project_value_buffer(v19, qword_27FDACD40);
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_25F743814();

    v38 = 0x5B20676E69727453;
    v39 = 0xE800000000000000;
    MEMORY[0x25F8E6560](v15, v14);

    MEMORY[0x25F8E6560](0xD000000000000024, v37 | 0x8000000000000000);
    sub_25F73656C(2u, v38, v39);

    goto LABEL_20;
  }

LABEL_25:
  v30 = sub_25F7435C4();
  *(v30 + 16) = 32;
  *(v30 + 48) = 0u;
  *(v30 + 32) = 0u;
  CC_SHA256_Final((v30 + 32), &c);
  return v30;
}

uint64_t sub_25F738014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC38, &unk_25F744CB0);
  v26 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v27 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC20, &qword_25F744E00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAC9F8, "V");
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  v17 = sub_25F743624();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v13, v28, v9);
  (*(v6 + 16))(v8, a1, v5);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v6 + 80) + v19 + 16) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v10 + 32))(v21 + v18, v13, v9);
  v22 = (v21 + v19);
  v23 = v30;
  *v22 = v29;
  v22[1] = v23;
  (*(v6 + 32))(v21 + v20, v27, v26);

  sub_25F738C88(0, 0, v16, &unk_25F745160, v21);
}

uint64_t sub_25F7382FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[28] = a6;
  v7[29] = a7;
  v7[26] = a4;
  v7[27] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC40, &qword_25F744CD0);
  v7[30] = v8;
  v7[31] = *(v8 - 8);
  v7[32] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD08, qword_25F744F30);
  v7[33] = v9;
  v7[34] = *(v9 - 8);
  v7[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F738434, 0, 0);
}

uint64_t sub_25F738434()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC20, &qword_25F744E00);
  sub_25F743694();
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_25F738504;
  v2 = *(v0 + 264);

  return MEMORY[0x2822005A8](v0 + 16, 0, 0, v2, v0 + 176);
}

uint64_t sub_25F738504()
{

  if (v0)
  {
    v1 = sub_25F7387CC;
  }

  else
  {
    v1 = sub_25F738614;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_25F738614()
{
  v1 = v0[3];
  v0[37] = v1;
  if (v1)
  {
    v2 = v0[27];
    v4 = v0[6];
    v3 = v0[7];
    v6 = v0[4];
    v5 = v0[5];
    v0[38] = v4;
    v0[39] = v5;
    v0[8] = v0[2];
    v0[9] = v1;
    v0[10] = v6;
    v0[11] = v5;
    v0[12] = v4;
    v0[13] = v3;
    v10 = (v2 + *v2);
    v7 = swift_task_alloc();
    v0[40] = v7;
    *v7 = v0;
    v7[1] = sub_25F7388F4;

    return (v10)(v0 + 14, v0 + 8);
  }

  else
  {
    (*(v0[34] + 8))(v0[35], v0[33]);
    v0[25] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC38, &unk_25F744CB0);
    sub_25F743674();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_25F7387CC()
{
  v1 = v0[22];
  v0[23] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAC9F0, &qword_25F744D10);
  v2 = sub_25F7438F4();
  if (v2)
  {
    v3 = v2;
    MEMORY[0x25F8E6CF0](v1);
  }

  else
  {
    v3 = swift_allocError();
    *v4 = v1;
  }

  (*(v0[34] + 8))(v0[35], v0[33]);
  v0[24] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC38, &unk_25F744CB0);
  sub_25F743674();

  v5 = v0[1];

  return v5();
}

uint64_t sub_25F7388F4()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_25F738BA0;
  }

  else
  {
    v2 = sub_25F738A08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F738A08()
{
  v1 = v0[15];
  if (v1)
  {
    v2 = v0[14];
    v0[18] = v2;
    v3 = v0[31];
    v4 = v0[32];
    v5 = v0[30];
    v6 = v0[16];
    v7 = v0[17];
    v0[19] = v1;
    v0[20] = v6;
    v0[21] = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC38, &unk_25F744CB0);
    sub_25F743664();
    (*(v3 + 8))(v4, v5);
    sub_25F73A2F0(v2, v1, v6, v7);
  }

  v8 = swift_task_alloc();
  v0[36] = v8;
  *v8 = v0;
  v8[1] = sub_25F738504;
  v9 = v0[33];

  return MEMORY[0x2822005A8](v0 + 2, 0, 0, v9, v0 + 22);
}

uint64_t sub_25F738BA0()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];

  (*(v2 + 8))(v1, v3);
  v0[24] = v0[41];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC38, &unk_25F744CB0);
  sub_25F743674();

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F738C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDAC9F8, "V");
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25F72F8B4(a3, v25 - v10);
  v12 = sub_25F743624();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25F72F924(v11);
  }

  else
  {
    sub_25F743614();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25F7435F4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25F743494() + 32;
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

      sub_25F72F924(a3);

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

  sub_25F72F924(a3);
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

uint64_t PlainBloomFilterIndexer.__allocating_init(reader:writer:secret:)(void *a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_25F72963C(a1, v6 + 16);
  sub_25F72963C(a2, v6 + 56);
  v7 = sub_25F7435C4();
  *(v7 + 16) = 0x2000;
  bzero((v7 + 32), 0x2000uLL);
  v8 = sub_25F72849C(16, a3);

  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v6 + 96) = v8;
  *(v6 + 104) = v7;
  return v6;
}

uint64_t PlainBloomFilterIndexer.init(reader:writer:secret:)(void *a1, void *a2, uint64_t a3)
{
  sub_25F72963C(a1, v3 + 16);
  sub_25F72963C(a2, v3 + 56);
  v7 = sub_25F7435C4();
  *(v7 + 16) = 0x2000;
  bzero((v7 + 32), 0x2000uLL);
  v8 = sub_25F72849C(16, a3);

  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v3 + 96) = v8;
  *(v3 + 104) = v7;
  return v3;
}

char *PlainBloomFilterIndexer.search(token:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC18, &unk_25F744C30);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v32 = &v26 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC20, &qword_25F744E00);
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  result = _s17PrivateSearchCore11BloomFilterV4hash5tokenSays6UInt64VGSS_tF_0(a1, a2, v3[12]);
  v14 = *(result + 2);
  if (__OFADD__(v14, 8))
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    v29 = v7;
    v30 = a3;
    v27 = v8;
    v28 = v10;
    if ((v14 + 7) < 8)
    {
      v17 = MEMORY[0x277D84F90];
    }

    else
    {
      v16 = (v14 + 7) >> 3;
      v17 = sub_25F7435C4();
      *(v17 + 16) = v16;
      bzero((v17 + 32), v16);
    }

    v18 = BitArray.setRange(startBit:endBit:)(0, v14, v17);

    v19 = v3[5];
    v20 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v19);
    v21 = type metadata accessor for CallContextImpl();
    memset(v33, 0, sizeof(v33));
    v22 = swift_allocObject();
    *(v22 + 32) = 0u;
    *(v22 + 16) = 0u;
    swift_beginAccess();
    sub_25F728904(v33, v22 + 16);
    swift_endAccess();
    v34[3] = v21;
    v34[4] = &protocol witness table for CallContextImpl;
    v34[0] = v22;
    v23 = v34[6];
    (*(v20 + 8))(v15, v34, v19, v20);
    if (v23)
    {

      return __swift_destroy_boxed_opaque_existential_1(v34);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v34);
      v24 = swift_allocObject();
      *(v24 + 16) = v18;
      v25 = MEMORY[0x28223BE20](v24);
      *(&v26 - 4) = v12;
      *(&v26 - 3) = &unk_25F745050;
      *(&v26 - 2) = v25;
      (*(v27 + 104))(v32, *MEMORY[0x277D858A0], v29);
      sub_25F7436D4();

      return (*(v31 + 8))(v12, v28);
    }
  }

  return result;
}

uint64_t sub_25F739458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = *a2;
  *(v3 + 48) = *(a2 + 16);
  *(v3 + 56) = *(a2 + 24);
  return MEMORY[0x2822009F8](sub_25F739490, 0, 0);
}

uint64_t sub_25F739490()
{
  result = v0[8];
  v2 = *(result + 16);
  if (v2 >> 60)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v0[3];
  v4 = *(v3 + 16);
  if (v4 >> 60)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v2 == v4 && (sub_25F727844(result, v3) & 1) != 0)
  {
    v5 = v0[6];
    v6 = v0[7];
    v7 = v0[5];
    v8 = v0[2];
    *v8 = v0[4];
    v8[1] = v7;
    v8[2] = v5;
    v8[3] = v6;
  }

  else
  {
    v9 = v0[2];
    *v9 = 0u;
    v9[1] = 0u;
  }

  v10 = v0[1];

  return v10();
}

uint64_t PlainBloomFilterIndexer.index(key:tokens:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[20] = a5;
  v6[21] = v5;
  v6[18] = a3;
  v6[19] = a4;
  v6[16] = a1;
  v6[17] = a2;
  return MEMORY[0x2822009F8](sub_25F73957C, 0, 0);
}

uint64_t sub_25F73957C()
{
  v1 = *(v0 + 168);
  v2 = *(v1 + 104);
  *(v0 + 112) = *(v1 + 96);
  v3 = *(v0 + 160);
  *(v0 + 120) = v2;
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = (v3 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_25F7281F0(v6, v7);

      v5 += 2;
      --v4;
    }

    while (v4);
    v2 = *(v0 + 120);
  }

  else
  {
  }

  *(v0 + 176) = v2;

  v8 = *(v2 + 16);

  if (!(v8 >> 60))
  {
    v10 = *(v0 + 168);
    v11 = v10[11];
    __swift_project_boxed_opaque_existential_1(v10 + 7, v10[10]);
    v12 = type metadata accessor for CallContextImpl();
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    v13 = swift_allocObject();
    *(v13 + 32) = 0u;
    *(v13 + 16) = 0u;
    swift_beginAccess();
    sub_25F728904(v0 + 56, v13 + 16);
    swift_endAccess();
    *(v0 + 40) = v12;
    *(v0 + 48) = &protocol witness table for CallContextImpl;
    *(v0 + 16) = v13;
    v16 = *(v11 + 8) + **(v11 + 8);
    v14 = swift_task_alloc();
    *(v0 + 184) = v14;
    *v14 = v0;
    v14[1] = sub_25F739800;

    __asm { BRAA            X8, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F739800()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_25F739958;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_25F739940;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F739958()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void *PlainBloomFilterIndexer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return v0;
}

uint64_t PlainBloomFilterIndexer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_25F739A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25F71C02C;

  return PlainBloomFilterIndexer.index(key:tokens:context:)(a1, a2, a3, a4, a5);
}

uint64_t sub_25F739B40(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F739C38;

  return v6(a1);
}

uint64_t sub_25F739C38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F739D30()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F739D68(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F71C02C;

  return sub_25F739458(a1, a2, v6);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25F739E54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25F739E9C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25F739EF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC20, &qword_25F744E00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC38, &unk_25F744CB0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_25F73A074(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC20, &qword_25F744E00) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACC38, &unk_25F744CB0) - 8);
  v9 = (v7 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + v7;
  v13 = *(v1 + v7);
  v14 = *(v12 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_25F71C02C;

  return sub_25F7382FC(a1, v10, v11, v1 + v6, v13, v14, v1 + v9);
}

uint64_t sub_25F73A200()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F73A238(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F73A338;

  return sub_25F739B40(a1, v4);
}

void sub_25F73A2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t SearchIndexStoreError.hashValue.getter()
{
  sub_25F743994();
  MEMORY[0x25F8E6A00](0);
  return sub_25F7439B4();
}

uint64_t sub_25F73A3D0()
{
  sub_25F743994();
  MEMORY[0x25F8E6A00](0);
  return sub_25F7439B4();
}

uint64_t sub_25F73A43C(uint64_t a1)
{
  sub_25F743994();
  MEMORY[0x25F8E6A00](0);
  return sub_25F7439B4();
}

unint64_t sub_25F73A480()
{
  result = qword_27FDACD38;
  if (!qword_27FDACD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDACD38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchIndexStoreError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SearchIndexStoreError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_25F73A5B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F7435C4();
  *(v4 + 16) = 20;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  v5 = String.toUtf8Bytes()(a1, a2);
  result = sub_25F7434D4();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    CC_SHA1(v5 + 4, result, (v4 + 32));

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t _s17PrivateSearchCore6Sha256V4hashySays5UInt8VGAGFZ_0(uint64_t a1)
{
  result = sub_25F7435C4();
  *(result + 16) = 32;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  v3 = *(a1 + 16);
  if (HIDWORD(v3))
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    CC_SHA256((a1 + 32), v3, (result + 32));
    return v4;
  }

  return result;
}

void sub_25F73A758()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v1 timeIntervalSince1970];
  v3 = v2;

  v4 = v3 * 1000.0;
  if (COERCE__INT64(fabs(v3 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 9.22337204e18)
  {
    *(v0 + 16) = v4;
    return;
  }

LABEL_7:
  __break(1u);
}

void static Stopwatch.start()()
{
  type metadata accessor for Stopwatch();
  swift_allocObject();
  sub_25F73A758();
}

void Stopwatch.elapsed()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v1 timeIntervalSince1970];
  v3 = v2;

  v4 = v3 * 1000.0;
  if (COERCE__INT64(fabs(v3 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v4, *(v0 + 16)))
  {
LABEL_9:
    __break(1u);
  }
}

void *String.toUtf8Bytes()(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F743454();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F743444();
  v8 = sub_25F743424();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  if (v10 >> 60 == 15)
  {
    if (qword_27FDAC978 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger(0);
    __swift_project_value_buffer(v11, qword_27FDACD40);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_25F743814();

    v14 = 0x5B20676E69727453;
    v15 = 0xE800000000000000;
    MEMORY[0x25F8E6560](a1, a2);
    MEMORY[0x25F8E6560](0xD000000000000024, 0x800000025F746580);
    sub_25F73656C(2u, v14, v15);

    return MEMORY[0x277D84F90];
  }

  else
  {
    v13 = Data.toUInt8Array()(v8, v10);
    sub_25F733BAC(v8, v10);
    return v13;
  }
}

uint64_t sub_25F73AB28()
{
  v0 = type metadata accessor for Logger(0);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = (v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_allocate_value_buffer(v1, qword_27FDACD40);
  v4 = __swift_project_value_buffer(v0, qword_27FDACD40);
  v7[1] = MEMORY[0x277D837D0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD58, "T&");
  *v3 = sub_25F743464();
  v3[1] = v5;

  sub_25F743364();
  return sub_25F72AE08(v3, v4);
}

uint64_t TestDataBundle.indexingData.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD60, &qword_25F745340);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TestDataBundle(0);
  sub_25F723300(v1 + *(v6 + 20), v5, &qword_27FDACD60, &qword_25F745340);
  v7 = type metadata accessor for TestDataBundle.IndexingData(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_25F73B490(v5, a1, type metadata accessor for TestDataBundle.IndexingData);
  }

  *a1 = MEMORY[0x277D84F90];
  _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_25F726C40(v5, &qword_27FDACD60, &qword_25F745340);
  }

  return result;
}

uint64_t TestDataBundle.indexingData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TestDataBundle(0) + 20);
  sub_25F726C40(v1 + v3, &qword_27FDACD60, &qword_25F745340);
  sub_25F73B490(a1, v1 + v3, type metadata accessor for TestDataBundle.IndexingData);
  v4 = type metadata accessor for TestDataBundle.IndexingData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*TestDataBundle.indexingData.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD60, &qword_25F745340) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for TestDataBundle.IndexingData(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for TestDataBundle(0) + 20);
  *(v5 + 12) = v15;
  sub_25F723300(v1 + v15, v8, &qword_27FDACD60, &qword_25F745340);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_25F726C40(v8, &qword_27FDACD60, &qword_25F745340);
    }
  }

  else
  {
    sub_25F73B490(v8, v14, type metadata accessor for TestDataBundle.IndexingData);
  }

  return sub_25F73B104;
}

BOOL TestDataBundle.hasIndexingData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD60, &qword_25F745340);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TestDataBundle(0);
  sub_25F723300(v0 + *(v4 + 20), v3, &qword_27FDACD60, &qword_25F745340);
  v5 = type metadata accessor for TestDataBundle.IndexingData(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_25F726C40(v3, &qword_27FDACD60, &qword_25F745340);
  return v6;
}

Swift::Void __swiftcall TestDataBundle.clearIndexingData()()
{
  v1 = *(type metadata accessor for TestDataBundle(0) + 20);
  sub_25F726C40(v0 + v1, &qword_27FDACD60, &qword_25F745340);
  v2 = type metadata accessor for TestDataBundle.IndexingData(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t TestDataBundle.searchingData.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD68, &qword_25F745348);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TestDataBundle(0);
  sub_25F723300(v1 + *(v6 + 24), v5, &qword_27FDACD68, &qword_25F745348);
  v7 = type metadata accessor for TestDataBundle.SearchingData(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_25F73B490(v5, a1, type metadata accessor for TestDataBundle.SearchingData);
  }

  *a1 = MEMORY[0x277D84F90];
  _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_25F726C40(v5, &qword_27FDACD68, &qword_25F745348);
  }

  return result;
}

uint64_t sub_25F73B428@<X0>(void (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  a1(0);
  return _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
}

uint64_t sub_25F73B490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t TestDataBundle.searchingData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TestDataBundle(0) + 24);
  sub_25F726C40(v1 + v3, &qword_27FDACD68, &qword_25F745348);
  sub_25F73B490(a1, v1 + v3, type metadata accessor for TestDataBundle.SearchingData);
  v4 = type metadata accessor for TestDataBundle.SearchingData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*TestDataBundle.searchingData.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD68, &qword_25F745348) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for TestDataBundle.SearchingData(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for TestDataBundle(0) + 24);
  *(v5 + 12) = v15;
  sub_25F723300(v1 + v15, v8, &qword_27FDACD68, &qword_25F745348);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_25F726C40(v8, &qword_27FDACD68, &qword_25F745348);
    }
  }

  else
  {
    sub_25F73B490(v8, v14, type metadata accessor for TestDataBundle.SearchingData);
  }

  return sub_25F73B7CC;
}

void sub_25F73B7F4(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_25F73B92C(v11, v10, a5);
    sub_25F726C40(v14 + v9, a3, a4);
    sub_25F73B490(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_25F73B994(v11, a5);
  }

  else
  {
    sub_25F726C40(v14 + v9, a3, a4);
    sub_25F73B490(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

uint64_t sub_25F73B92C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F73B994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL TestDataBundle.hasSearchingData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD68, &qword_25F745348);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TestDataBundle(0);
  sub_25F723300(v0 + *(v4 + 24), v3, &qword_27FDACD68, &qword_25F745348);
  v5 = type metadata accessor for TestDataBundle.SearchingData(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_25F726C40(v3, &qword_27FDACD68, &qword_25F745348);
  return v6;
}

Swift::Void __swiftcall TestDataBundle.clearSearchingData()()
{
  v1 = *(type metadata accessor for TestDataBundle(0) + 24);
  sub_25F726C40(v0 + v1, &qword_27FDACD68, &qword_25F745348);
  v2 = type metadata accessor for TestDataBundle.SearchingData(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t TestDataBundle.IndexingData.documents.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t (*TestDataBundle.IndexingData.Document.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for TestDataBundle.IndexingData.Document(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_25F726D2C;
}

uint64_t TestDataBundle.IndexingData.Document.body.getter()
{
  v1 = (v0 + *(type metadata accessor for TestDataBundle.IndexingData.Document(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t TestDataBundle.IndexingData.Document.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TestDataBundle.IndexingData.Document(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*TestDataBundle.IndexingData.Document.body.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for TestDataBundle.IndexingData.Document(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_25F71C740;
}

Swift::Void __swiftcall TestDataBundle.IndexingData.Document.clearBody()()
{
  v1 = (v0 + *(type metadata accessor for TestDataBundle.IndexingData.Document(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t TestDataBundle.IndexingData.Document.path.getter()
{
  v1 = (v0 + *(type metadata accessor for TestDataBundle.IndexingData.Document(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t TestDataBundle.IndexingData.Document.path.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TestDataBundle.IndexingData.Document(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*TestDataBundle.IndexingData.Document.path.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for TestDataBundle.IndexingData.Document(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_25F726D2C;
}

Swift::Void __swiftcall TestDataBundle.IndexingData.Document.clearPath()()
{
  v1 = (v0 + *(type metadata accessor for TestDataBundle.IndexingData.Document(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

int *TestDataBundle.IndexingData.Document.init()@<X0>(uint64_t a1@<X8>)
{
  _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for TestDataBundle.IndexingData.Document(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[7]);
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_25F73C1C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_25F7431C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_25F73C25C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_25F7431C4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_25F73C33C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_25F73C3D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*TestDataBundle.SearchingData.Token.token.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for TestDataBundle.SearchingData.Token(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_25F726D2C;
}

uint64_t sub_25F73C514(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t TestDataBundle.SearchingData.Token.frequency.getter()
{
  v1 = (v0 + *(type metadata accessor for TestDataBundle.SearchingData.Token(0) + 24));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t TestDataBundle.SearchingData.Token.frequency.setter(int a1)
{
  result = type metadata accessor for TestDataBundle.SearchingData.Token(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*TestDataBundle.SearchingData.Token.frequency.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for TestDataBundle.SearchingData.Token(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_25F73C628;
}

uint64_t sub_25F73C628(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall TestDataBundle.SearchingData.Token.clearFrequency()()
{
  v1 = v0 + *(type metadata accessor for TestDataBundle.SearchingData.Token(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t TestDataBundle.SearchingData.Token.init()@<X0>(uint64_t a1@<X8>)
{
  _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for TestDataBundle.SearchingData.Token(0);
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  v4 = a1 + *(result + 24);
  *v4 = 0;
  *(v4 + 4) = 1;
  return result;
}

uint64_t TestDataBundle.init()@<X0>(uint64_t a1@<X8>)
{
  _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v2 = type metadata accessor for TestDataBundle(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for TestDataBundle.IndexingData(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for TestDataBundle.SearchingData(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_25F73C80C()
{
  v0 = sub_25F743344();
  __swift_allocate_value_buffer(v0, static TestDataBundle._protobuf_nameMap);
  __swift_project_value_buffer(v0, static TestDataBundle._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBB8, &unk_25F745AA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBC0, &unk_25F7447B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25F743F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "indexingData";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_25F743324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "searchingData";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_25F743334();
}

uint64_t TestDataBundle.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_25F743204();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_25F73CAB0(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_25F73CB64(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_25F73CAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TestDataBundle(0);
  type metadata accessor for TestDataBundle.IndexingData(0);
  sub_25F73F7FC(&qword_27FDACDC8, type metadata accessor for TestDataBundle.IndexingData, &protocol conformance descriptor for TestDataBundle.IndexingData);
  return sub_25F743274();
}

uint64_t sub_25F73CB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TestDataBundle(0);
  type metadata accessor for TestDataBundle.SearchingData(0);
  sub_25F73F7FC(&qword_27FDACDF0, type metadata accessor for TestDataBundle.SearchingData, &protocol conformance descriptor for TestDataBundle.SearchingData);
  return sub_25F743274();
}

uint64_t TestDataBundle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F73CC88(v3, a1, a2, a3);
  if (!v4)
  {
    sub_25F73CE98(v3, a1, a2, a3);
    return sub_25F7431A4();
  }

  return result;
}

uint64_t sub_25F73CC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD60, &qword_25F745340);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TestDataBundle.IndexingData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TestDataBundle(0);
  sub_25F723300(a1 + *(v12 + 20), v7, &qword_27FDACD60, &qword_25F745340);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_25F726C40(v7, &qword_27FDACD60, &qword_25F745340);
  }

  sub_25F73B490(v7, v11, type metadata accessor for TestDataBundle.IndexingData);
  sub_25F73F7FC(&qword_27FDACDC8, type metadata accessor for TestDataBundle.IndexingData, &protocol conformance descriptor for TestDataBundle.IndexingData);
  sub_25F743314();
  return sub_25F73B994(v11, type metadata accessor for TestDataBundle.IndexingData);
}

uint64_t sub_25F73CE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD68, &qword_25F745348);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TestDataBundle.SearchingData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TestDataBundle(0);
  sub_25F723300(a1 + *(v12 + 24), v7, &qword_27FDACD68, &qword_25F745348);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_25F726C40(v7, &qword_27FDACD68, &qword_25F745348);
  }

  sub_25F73B490(v7, v11, type metadata accessor for TestDataBundle.SearchingData);
  sub_25F73F7FC(&qword_27FDACDF0, type metadata accessor for TestDataBundle.SearchingData, &protocol conformance descriptor for TestDataBundle.SearchingData);
  sub_25F743314();
  return sub_25F73B994(v11, type metadata accessor for TestDataBundle.SearchingData);
}

uint64_t sub_25F73D0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for TestDataBundle.IndexingData(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for TestDataBundle.SearchingData(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_25F73D20C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F73F7FC(&qword_27FDACEA8, type metadata accessor for TestDataBundle, &protocol conformance descriptor for TestDataBundle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25F73D2AC(uint64_t a1)
{
  v2 = sub_25F73F7FC(&qword_27FDACDB0, type metadata accessor for TestDataBundle, &protocol conformance descriptor for TestDataBundle);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25F73D318(uint64_t a1, uint64_t a2)
{
  sub_25F73F7FC(&qword_27FDACDB0, type metadata accessor for TestDataBundle, &protocol conformance descriptor for TestDataBundle);

  return sub_25F7432A4();
}

uint64_t TestDataBundle.IndexingData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TestDataBundle.IndexingData.Document(0), sub_25F73F7FC(&qword_27FDACD78, type metadata accessor for TestDataBundle.IndexingData.Document, &protocol conformance descriptor for TestDataBundle.IndexingData.Document), result = sub_25F743304(), !v4))
  {
    type metadata accessor for TestDataBundle.IndexingData(0);
    return sub_25F7431A4();
  }

  return result;
}

uint64_t sub_25F73D64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F73F7FC(&qword_27FDACEA0, type metadata accessor for TestDataBundle.IndexingData, &protocol conformance descriptor for TestDataBundle.IndexingData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25F73D6EC(uint64_t a1)
{
  v2 = sub_25F73F7FC(&qword_27FDACDC8, type metadata accessor for TestDataBundle.IndexingData, &protocol conformance descriptor for TestDataBundle.IndexingData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25F73D758(uint64_t a1, uint64_t a2)
{
  sub_25F73F7FC(&qword_27FDACDC8, type metadata accessor for TestDataBundle.IndexingData, &protocol conformance descriptor for TestDataBundle.IndexingData);

  return sub_25F7432A4();
}

uint64_t sub_25F73D7EC()
{
  result = MEMORY[0x25F8E6560](0x6E656D75636F442ELL, 0xE900000000000074);
  static TestDataBundle.IndexingData.Document.protoMessageName = 0xD00000000000001BLL;
  *algn_27FDACFB8 = 0x800000025F746760;
  return result;
}

uint64_t *TestDataBundle.IndexingData.Document.protoMessageName.unsafeMutableAddressor()
{
  if (qword_27FDAC990 != -1)
  {
    swift_once();
  }

  return &static TestDataBundle.IndexingData.Document.protoMessageName;
}

uint64_t sub_25F73D8D4()
{
  v0 = sub_25F743344();
  __swift_allocate_value_buffer(v0, static TestDataBundle.IndexingData.Document._protobuf_nameMap);
  __swift_project_value_buffer(v0, static TestDataBundle.IndexingData.Document._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBB8, &unk_25F745AA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBC0, &unk_25F7447B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25F743F50;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_25F743324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "body";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "path";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_25F743334();
}

uint64_t TestDataBundle.IndexingData.Document.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_25F743204();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      type metadata accessor for TestDataBundle.IndexingData.Document(0);
      sub_25F743254();
    }
  }

  return result;
}

uint64_t TestDataBundle.IndexingData.Document.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F73EC54(v3, a1, a2, a3, type metadata accessor for TestDataBundle.IndexingData.Document);
  if (!v4)
  {
    sub_25F73DC8C(v3, a1, a2, a3);
    sub_25F73DD04(v3, a1, a2, a3);
    return sub_25F7431A4();
  }

  return result;
}

uint64_t sub_25F73DC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TestDataBundle.IndexingData.Document(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_25F7432F4();
  }

  return result;
}

uint64_t sub_25F73DD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TestDataBundle.IndexingData.Document(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_25F7432F4();
  }

  return result;
}

uint64_t sub_25F73DDC8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_25F73DE68(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F73F7FC(&qword_27FDACE98, type metadata accessor for TestDataBundle.IndexingData.Document, &protocol conformance descriptor for TestDataBundle.IndexingData.Document);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25F73DF08(uint64_t a1)
{
  v2 = sub_25F73F7FC(&qword_27FDACD78, type metadata accessor for TestDataBundle.IndexingData.Document, &protocol conformance descriptor for TestDataBundle.IndexingData.Document);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25F73DF74(uint64_t a1, uint64_t a2)
{
  sub_25F73F7FC(&qword_27FDACD78, type metadata accessor for TestDataBundle.IndexingData.Document, &protocol conformance descriptor for TestDataBundle.IndexingData.Document);

  return sub_25F7432A4();
}

uint64_t sub_25F73E034(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_25F743344();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBB8, &unk_25F745AA0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBC0, &unk_25F7447B0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25F744DA0;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v13 = sub_25F743324();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_25F743334();
}

uint64_t sub_25F73E244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_25F743204();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_25F73F7FC(a5, a6, a7);
      sub_25F743264();
    }
  }

  return result;
}

uint64_t TestDataBundle.SearchingData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for TestDataBundle.SearchingData.Token(0), sub_25F73F7FC(&qword_27FDACD90, type metadata accessor for TestDataBundle.SearchingData.Token, &protocol conformance descriptor for TestDataBundle.SearchingData.Token), result = sub_25F743304(), !v4))
  {
    type metadata accessor for TestDataBundle.SearchingData(0);
    return sub_25F7431A4();
  }

  return result;
}

uint64_t sub_25F73E430(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_25F7431C4();
  sub_25F73F7FC(&qword_27FDACB98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25F7433F4() & 1;
}

uint64_t sub_25F73E57C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F73F7FC(&qword_27FDACE90, type metadata accessor for TestDataBundle.SearchingData, &protocol conformance descriptor for TestDataBundle.SearchingData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25F73E61C(uint64_t a1)
{
  v2 = sub_25F73F7FC(&qword_27FDACDF0, type metadata accessor for TestDataBundle.SearchingData, &protocol conformance descriptor for TestDataBundle.SearchingData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25F73E688(uint64_t a1, uint64_t a2)
{
  sub_25F73F7FC(&qword_27FDACDF0, type metadata accessor for TestDataBundle.SearchingData, &protocol conformance descriptor for TestDataBundle.SearchingData);

  return sub_25F7432A4();
}

uint64_t sub_25F73E71C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_25F7431C4();
  sub_25F73F7FC(&qword_27FDACB98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25F7433F4() & 1;
}

uint64_t sub_25F73E7C8()
{
  result = MEMORY[0x25F8E6560](0x6E656B6F542ELL, 0xE600000000000000);
  static TestDataBundle.SearchingData.Token.protoMessageName = 0xD00000000000001CLL;
  *algn_27FDACFF8 = 0x800000025F746780;
  return result;
}

uint64_t *TestDataBundle.SearchingData.Token.protoMessageName.unsafeMutableAddressor()
{
  if (qword_27FDAC9A8 != -1)
  {
    swift_once();
  }

  return &static TestDataBundle.SearchingData.Token.protoMessageName;
}

uint64_t sub_25F73E8A8(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_25F73E904()
{
  v0 = sub_25F743344();
  __swift_allocate_value_buffer(v0, static TestDataBundle.SearchingData.Token._protobuf_nameMap);
  __swift_project_value_buffer(v0, static TestDataBundle.SearchingData.Token._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBB8, &unk_25F745AA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACBC0, &unk_25F7447B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25F743F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "token";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_25F743324();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "frequency";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_25F743334();
}

uint64_t TestDataBundle.SearchingData.Token.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_25F743204();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for TestDataBundle.SearchingData.Token(0);
      sub_25F743254();
    }

    else if (result == 2)
    {
      type metadata accessor for TestDataBundle.SearchingData.Token(0);
      sub_25F743214();
    }
  }

  return result;
}

uint64_t TestDataBundle.SearchingData.Token.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F73EC54(v3, a1, a2, a3, type metadata accessor for TestDataBundle.SearchingData.Token);
  if (!v4)
  {
    sub_25F73ECD0(v3, a1, a2, a3);
    return sub_25F7431A4();
  }

  return result;
}

uint64_t sub_25F73EC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_25F7432F4();
  }

  return result;
}

uint64_t sub_25F73ECD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TestDataBundle.SearchingData.Token(0);
  if ((*(a1 + *(result + 24) + 4) & 1) == 0)
  {
    return sub_25F7432B4();
  }

  return result;
}

uint64_t sub_25F73ED94(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_25F743994();
  a1(0);
  sub_25F73F7FC(a2, a3, a4);
  sub_25F7433D4();
  return sub_25F7439B4();
}

uint64_t sub_25F73EE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s17PrivateSearchCore0B6ReportV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_25F73EE88(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

uint64_t sub_25F73EF18(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F73F7FC(&qword_27FDACE88, type metadata accessor for TestDataBundle.SearchingData.Token, &protocol conformance descriptor for TestDataBundle.SearchingData.Token);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25F73EFB8(uint64_t a1)
{
  v2 = sub_25F73F7FC(&qword_27FDACD90, type metadata accessor for TestDataBundle.SearchingData.Token, &protocol conformance descriptor for TestDataBundle.SearchingData.Token);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_25F73F024(uint64_t a1, uint64_t a2)
{
  sub_25F73F7FC(&qword_27FDACD90, type metadata accessor for TestDataBundle.SearchingData.Token, &protocol conformance descriptor for TestDataBundle.SearchingData.Token);

  return sub_25F7432A4();
}

uint64_t _s17PrivateSearchCore14TestDataBundleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TestDataBundle.SearchingData(0);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD68, &qword_25F745348);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = (&v38 - v7);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACEB0, &qword_25F745AB0);
  MEMORY[0x28223BE20](v42);
  v45 = &v38 - v8;
  v9 = type metadata accessor for TestDataBundle.IndexingData(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD60, &qword_25F745340);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v38 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACEB8, &qword_25F745AB8);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - v17;
  v41 = type metadata accessor for TestDataBundle(0);
  v19 = *(v41 + 20);
  v20 = *(v16 + 56);
  v46 = a1;
  sub_25F723300(a1 + v19, v18, &qword_27FDACD60, &qword_25F745340);
  v47 = a2;
  sub_25F723300(a2 + v19, &v18[v20], &qword_27FDACD60, &qword_25F745340);
  v21 = *(v10 + 48);
  if (v21(v18, 1, v9) == 1)
  {
    if (v21(&v18[v20], 1, v9) == 1)
    {
      sub_25F726C40(v18, &qword_27FDACD60, &qword_25F745340);
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  sub_25F723300(v18, v14, &qword_27FDACD60, &qword_25F745340);
  if (v21(&v18[v20], 1, v9) == 1)
  {
    sub_25F73B994(v14, type metadata accessor for TestDataBundle.IndexingData);
LABEL_10:
    v28 = &qword_27FDACEB8;
    v29 = &qword_25F745AB8;
LABEL_11:
    v30 = v18;
    goto LABEL_12;
  }

  v32 = v40;
  sub_25F73B490(&v18[v20], v40, type metadata accessor for TestDataBundle.IndexingData);
  if ((sub_25F7278A0(*v14, *v32) & 1) == 0)
  {
    sub_25F73B994(v32, type metadata accessor for TestDataBundle.IndexingData);
    sub_25F73B994(v14, type metadata accessor for TestDataBundle.IndexingData);
    v28 = &qword_27FDACD60;
    v29 = &qword_25F745340;
    goto LABEL_11;
  }

  sub_25F7431C4();
  sub_25F73F7FC(&qword_27FDACB98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v33 = sub_25F7433F4();
  sub_25F73B994(v32, type metadata accessor for TestDataBundle.IndexingData);
  sub_25F73B994(v14, type metadata accessor for TestDataBundle.IndexingData);
  sub_25F726C40(v18, &qword_27FDACD60, &qword_25F745340);
  if ((v33 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  v22 = *(v41 + 24);
  v23 = *(v42 + 48);
  v24 = v45;
  sub_25F723300(v46 + v22, v45, &qword_27FDACD68, &qword_25F745348);
  sub_25F723300(v47 + v22, v24 + v23, &qword_27FDACD68, &qword_25F745348);
  v25 = v44;
  v26 = *(v43 + 48);
  if (v26(v24, 1, v44) != 1)
  {
    v34 = v39;
    sub_25F723300(v24, v39, &qword_27FDACD68, &qword_25F745348);
    if (v26(v24 + v23, 1, v25) == 1)
    {
      sub_25F73B994(v34, type metadata accessor for TestDataBundle.SearchingData);
      goto LABEL_20;
    }

    v35 = v24 + v23;
    v36 = v38;
    sub_25F73B490(v35, v38, type metadata accessor for TestDataBundle.SearchingData);
    if (sub_25F727B78(*v34, *v36))
    {
      sub_25F7431C4();
      sub_25F73F7FC(&qword_27FDACB98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v37 = sub_25F7433F4();
      sub_25F73B994(v36, type metadata accessor for TestDataBundle.SearchingData);
      sub_25F73B994(v34, type metadata accessor for TestDataBundle.SearchingData);
      sub_25F726C40(v24, &qword_27FDACD68, &qword_25F745348);
      if (v37)
      {
        goto LABEL_7;
      }

LABEL_13:
      v27 = 0;
      return v27 & 1;
    }

    sub_25F73B994(v36, type metadata accessor for TestDataBundle.SearchingData);
    sub_25F73B994(v34, type metadata accessor for TestDataBundle.SearchingData);
    v28 = &qword_27FDACD68;
    v29 = &qword_25F745348;
    v30 = v24;
LABEL_12:
    sub_25F726C40(v30, v28, v29);
    goto LABEL_13;
  }

  if (v26(v24 + v23, 1, v25) != 1)
  {
LABEL_20:
    v28 = &qword_27FDACEB0;
    v29 = &qword_25F745AB0;
    v30 = v24;
    goto LABEL_12;
  }

  sub_25F726C40(v24, &qword_27FDACD68, &qword_25F745348);
LABEL_7:
  sub_25F7431C4();
  sub_25F73F7FC(&qword_27FDACB98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v27 = sub_25F7433F4();
  return v27 & 1;
}

uint64_t sub_25F73F7FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s17PrivateSearchCore14TestDataBundleV09SearchingE0V5TokenV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TestDataBundle.SearchingData.Token(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_25F743904();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  sub_25F7431C4();
  sub_25F73F7FC(&qword_27FDACB98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_25F7433F4() & 1;
}

uint64_t _s17PrivateSearchCore14TestDataBundleV08IndexingE0V8DocumentV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TestDataBundle.IndexingData.Document(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_25F743904();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_25F743904();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (v25)
    {
      v26 = *v22 == *v24 && v23 == v25;
      if (v26 || (sub_25F743904() & 1) != 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (!v25)
  {
LABEL_26:
    sub_25F7431C4();
    sub_25F73F7FC(&qword_27FDACB98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_25F7433F4() & 1;
  }

  return 0;
}

uint64_t sub_25F740094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F7431C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD60, &qword_25F745340);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD68, &qword_25F745348);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_25F740200(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25F7431C4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD60, &qword_25F745340);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACD68, &qword_25F745348);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_25F740364(uint64_t a1)
{
  sub_25F7431C4();
  if (v1 <= 0x3F)
  {
    sub_25F740460(319, &qword_27FDACE20, type metadata accessor for TestDataBundle.IndexingData, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_25F740460(319, &qword_27FDACE28, type metadata accessor for TestDataBundle.SearchingData, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25F740460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25F740544(uint64_t a1)
{
  sub_25F7431C4();
  if (v1 <= 0x3F)
  {
    sub_25F740934(319, &qword_27FDACAF8, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F740628(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_25F740460(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    sub_25F7431C4();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_19Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F7431C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_20Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F7431C4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_25F740878(uint64_t a1)
{
  sub_25F7431C4();
  if (v1 <= 0x3F)
  {
    sub_25F740934(319, &qword_27FDACAF8, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_25F740934(319, &qword_27FDACE80, MEMORY[0x277D849A8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25F740934(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_25F7437A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_25F7409AC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v0 setUnitsStyle_];
  result = [v0 setZeroFormattingBehavior_];
  qword_27FDACEC0 = v0;
  return result;
}

uint64_t TimeDelta.init(millis:secs:mins:hours:days:weeks:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 1000 * a2;
  if ((a2 * 1000) >> 64 != (1000 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = __OFADD__(result, v6);
  v8 = result + v6;
  if (v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = 60000 * a3;
  if ((a3 * 60000) >> 64 != (60000 * a3) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = __OFADD__(v8, v9);
  v10 = v8 + v9;
  if (v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = 3600000 * a4;
  if ((a4 * 3600000) >> 64 != (3600000 * a4) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = __OFADD__(v10, v11);
  v12 = v10 + v11;
  if (v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = 86400000 * a5;
  if ((a5 * 86400000) >> 64 != (86400000 * a5) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (v7)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = 604800000 * a6;
  if ((a6 * 604800000) >> 64 != (604800000 * a6) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t TimeDelta.prettyDescription.getter(uint64_t a1)
{
  if ((a1 + 59999) < 0x1D4BF)
  {
    goto LABEL_6;
  }

  if (qword_27FDAC9B8 != -1)
  {
    swift_once();
  }

  v2 = [qword_27FDACEC0 stringFromTimeInterval_];
  if (v2)
  {
    v3 = v2;
    v4 = sub_25F743414();

    return v4;
  }

  else
  {
LABEL_6:
    sub_25F7436F4();
    MEMORY[0x25F8E6560](115, 0xE100000000000000);
    return 0;
  }
}

uint64_t TimeDelta.debugDescription.getter(uint64_t a1)
{
  v1 = TimeDelta.prettyDescription.getter(a1);
  MEMORY[0x25F8E6560](v1);

  MEMORY[0x25F8E6560](41, 0xE100000000000000);
  return 0x28748688E2;
}

Swift::Void __swiftcall TimeDelta.sleep()()
{
  v1 = v0;
  v2 = 1000 * v0;
  if ((v1 * 1000) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v2))
  {
    usleep(v2);
    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t sub_25F740D38()
{
  result = qword_27FDACEC8;
  if (!qword_27FDACEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDACEC8);
  }

  return result;
}

uint64_t sub_25F740DDC()
{
  v1 = TimeDelta.prettyDescription.getter(*v0);
  MEMORY[0x25F8E6560](v1);

  MEMORY[0x25F8E6560](41, 0xE100000000000000);
  return 0x28748688E2;
}

void static Timestamp.now()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v0 timeIntervalSince1970];
  v2 = v1;

  v3 = v2 * 1000.0;
  if (COERCE__INT64(fabs(v2 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_25F740F00()
{
  v0 = sub_25F743114();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F7430D4();
  sub_25F7430F4();
  v5 = v4;
  result = (*(v1 + 8))(v3, v0);
  v7 = v5 * 1000.0;
  if (COERCE__INT64(fabs(v5 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 9.22337204e18)
  {
    qword_27FDACED0 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_25F741034()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_25F743404();
  [v0 setDateFormat_];

  qword_27FDACED8 = v0;
}

uint64_t static Timestamp.fromCFAbsoluteTime(_:)(double a1)
{
  v2 = a1 * 1000.0;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 < 9.22337204e18)
  {
    v1 = v2;
    if (qword_27FDAC9C0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  swift_once();
LABEL_5:
  result = v1 + qword_27FDACED0;
  if (__OFADD__(v1, qword_27FDACED0))
  {
    __break(1u);
  }

  return result;
}

uint64_t static Timestamp.+ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t static Timestamp.- infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a1, a2);
  result = a1 - a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Double __swiftcall Timestamp.toCFAbsoluteTime()()
{
  if (qword_27FDAC9C0 != -1)
  {
    v1 = v0;
    swift_once();
    v0 = v1;
  }

  if (!__OFSUB__(v0, qword_27FDACED0))
  {
    return (v0 - qword_27FDACED0) / 1000.0;
  }

  __break(1u);
  return result;
}

NSNumber __swiftcall Timestamp.toNSNumber()()
{
  if (qword_27FDAC9C0 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  if (__OFSUB__(v0, qword_27FDACED0))
  {
    __break(1u);
  }

  else
  {
    v2.n128_f64[0] = (v0 - qword_27FDACED0) / 1000.0;
  }

  return MEMORY[0x28211EAC0](v2);
}

uint64_t Timestamp.toDate()(uint64_t result)
{
  if (qword_27FDAC9C0 != -1)
  {
    v2 = result;
    swift_once();
    result = v2;
  }

  if (__OFSUB__(result, qword_27FDACED0))
  {
    __break(1u);
  }

  else
  {

    return sub_25F7430D4();
  }

  return result;
}

uint64_t Timestamp.hourOfDay(withTimezone:)(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v25 = a1;
  v27 = sub_25F743144();
  v2 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACEE0, &qword_25F745BC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_25F743194();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v23 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v26 = sub_25F743164();
  v14 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_25F743114();
  v17 = *(v24 - 8);
  result = MEMORY[0x28223BE20](v24);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FDAC9C0 != -1)
  {
    result = swift_once();
  }

  if (__OFSUB__(v28, qword_27FDACED0))
  {
    __break(1u);
  }

  else
  {
    sub_25F7430D4();
    sub_25F743124();
    sub_25F7417CC(v25, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_25F74183C(v7);
    }

    else
    {
      (*(v9 + 32))(v13, v7, v8);
      (*(v9 + 16))(v23, v13, v8);
      sub_25F743134();
      (*(v9 + 8))(v13, v8);
    }

    v21 = v27;
    (*(v2 + 104))(v4, *MEMORY[0x277CC9980], v27);
    v22 = sub_25F743154();
    (*(v2 + 8))(v4, v21);
    (*(v14 + 8))(v16, v26);
    (*(v17 + 8))(v20, v24);
    return v22;
  }

  return result;
}

uint64_t sub_25F7417CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACEE0, &qword_25F745BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F74183C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACEE0, &qword_25F745BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Timestamp.dayOfWeek(withTimezone:)(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v27 = a1;
  v29 = sub_25F743144();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACEE0, &qword_25F745BC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_25F743194();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v25 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v28 = sub_25F743164();
  v14 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25F743114();
  v17 = *(v26 - 8);
  result = MEMORY[0x28223BE20](v26);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FDAC9C0 != -1)
  {
    result = swift_once();
  }

  if (__OFSUB__(v30, qword_27FDACED0))
  {
    __break(1u);
  }

  else
  {
    sub_25F7430D4();
    sub_25F743124();
    sub_25F7417CC(v27, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_25F74183C(v7);
    }

    else
    {
      (*(v9 + 32))(v13, v7, v8);
      (*(v9 + 16))(v25, v13, v8);
      sub_25F743134();
      (*(v9 + 8))(v13, v8);
    }

    v21 = v29;
    (*(v2 + 104))(v4, *MEMORY[0x277CC99B8], v29);
    v22 = sub_25F743154();
    (*(v2 + 8))(v4, v21);
    _s17PrivateSearchCore9TimestampV18dayOfWeekFormatterySSSiFZ_0(v22);
    v24 = v23;
    (*(v14 + 8))(v16, v28);
    (*(v17 + 8))(v20, v26);
    return v24;
  }

  return result;
}

uint64_t Timestamp.subtract(millis:secs:mins:hours:days:weeks:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 1000 * a2;
  if ((a2 * 1000) >> 64 != (1000 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = __OFADD__(result, v7);
  v9 = result + v7;
  if (v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = 60000 * a3;
  if ((a3 * 60000) >> 64 != (60000 * a3) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = __OFADD__(v9, v10);
  v11 = v9 + v10;
  if (v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 3600000 * a4;
  if ((a4 * 3600000) >> 64 != (3600000 * a4) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = __OFADD__(v11, v12);
  v13 = v11 + v12;
  if (v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = 86400000 * a5;
  if ((a5 * 86400000) >> 64 != (86400000 * a5) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = __OFADD__(v13, v14);
  v15 = v13 + v14;
  if (v8)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = 604800000 * a6;
  if ((a6 * 604800000) >> 64 != (604800000 * a6) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = __OFADD__(v15, v16);
  v17 = v15 + v16;
  if (v8)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = a7 - v17;
  if (__OFSUB__(a7, v17))
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t Timestamp.add(millis:secs:mins:hours:days:weeks:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 1000 * a2;
  if ((a2 * 1000) >> 64 != (1000 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = __OFADD__(result, v7);
  v9 = result + v7;
  if (v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = 60000 * a3;
  if ((a3 * 60000) >> 64 != (60000 * a3) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = __OFADD__(v9, v10);
  v11 = v9 + v10;
  if (v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 3600000 * a4;
  if ((a4 * 3600000) >> 64 != (3600000 * a4) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = __OFADD__(v11, v12);
  v13 = v11 + v12;
  if (v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = 86400000 * a5;
  if ((a5 * 86400000) >> 64 != (86400000 * a5) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = __OFADD__(v13, v14);
  v15 = v13 + v14;
  if (v8)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = 604800000 * a6;
  if ((a6 * 604800000) >> 64 != (604800000 * a6) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = __OFADD__(v15, v16);
  v17 = v15 + v16;
  if (v8)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = a7 + v17;
  if (__OFADD__(a7, v17))
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

unint64_t Timestamp.debugDescription.getter()
{
  sub_25F743814();

  v0 = sub_25F7438E4();
  MEMORY[0x25F8E6560](v0);

  MEMORY[0x25F8E6560](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

Swift::String __swiftcall Timestamp.toHumanReadable()()
{
  v1 = v0;
  v2 = sub_25F743114();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FDACEE0, &qword_25F745BC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  if (qword_27FDAC9C8 != -1)
  {
    swift_once();
  }

  v9 = qword_27FDACED8;
  sub_25F743174();
  v10 = sub_25F743194();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_25F743184();
    (*(v11 + 8))(v8, v10);
  }

  [v9 setTimeZone_];

  if (qword_27FDAC9C0 != -1)
  {
    v13 = swift_once();
  }

  if (__OFSUB__(v1, qword_27FDACED0))
  {
    __break(1u);
  }

  else
  {
    sub_25F7430D4();
    v15 = sub_25F7430E4();
    (*(v3 + 8))(v5, v2);
    v16 = [v9 stringFromDate_];

    v17 = sub_25F743414();
    v19 = v18;

    v13 = v17;
    v14 = v19;
  }

  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t Timestamp.toDateIntervalSince(days:weeks:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F743114();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  result = MEMORY[0x28223BE20](v9);
  v14 = &v20 - v13;
  v15 = 86400000 * a1;
  if ((a1 * 86400000) >> 64 != (86400000 * a1) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = 604800000 * a2;
  if ((a2 * 604800000) >> 64 != (604800000 * a2) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  a1 = a3 - v18;
  if (!__OFSUB__(a3, v18))
  {
    if (qword_27FDAC9C0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  result = swift_once();
LABEL_6:
  v19 = qword_27FDACED0;
  if (__OFSUB__(a1, qword_27FDACED0))
  {
    __break(1u);
  }

  else
  {
    sub_25F7430D4();
    result = (*(v7 + 16))(v11, v14, v6);
    if (!__OFSUB__(a3, v19))
    {
      sub_25F7430D4();
      sub_25F743044();
      return (*(v7 + 8))(v14, v6);
    }
  }

  __break(1u);
  return result;
}

void _s17PrivateSearchCore9TimestampV18dayOfWeekFormatterySSSiFZ_0(unint64_t a1)
{
  if (a1 - 8 >= 0xFFFFFFFFFFFFFFF9)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v3 = sub_25F743404();
    [v2 setDateFormat_];

    v4 = [v2 weekdaySymbols];
    if (v4)
    {
      v5 = v4;
      v6 = sub_25F7435A4();

      if (*(v6 + 16) >= a1)
      {

        sub_25F743484();

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

unint64_t sub_25F742540()
{
  result = qword_27FDACEE8;
  if (!qword_27FDACEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDACEE8);
  }

  return result;
}

Swift::Int64 __swiftcall TimeUnit.toMillis(_:)(Swift::Int64 a1)
{
  v3 = qword_25F745D50[v1];
  result = a1 * v3;
  if ((a1 * v3) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

Swift::Int64 __swiftcall TimeUnit.from(millis:secs:mins:hours:days:weeks:)(Swift::Int64 millis, Swift::Int64 secs, Swift::Int64 mins, Swift::Int64 hours, Swift::Int64 days, Swift::Int64 weeks)
{
  if ((secs * 1000) >> 64 != (1000 * secs) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = qword_25F745D50[v6];
  v8 = 1000 * secs / v7;
  v9 = __OFADD__(millis / v7, v8);
  v10 = millis / v7 + v8;
  if (v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((mins * 60000) >> 64 != (60000 * mins) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = 60000 * mins / v7;
  v9 = __OFADD__(v10, v11);
  v12 = v10 + v11;
  if (v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((hours * 3600000) >> 64 != (3600000 * hours) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = 3600000 * hours / v7;
  v9 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((days * 86400000) >> 64 != (86400000 * days) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = 86400000 * days / v7;
  v9 = __OFADD__(v14, v15);
  v16 = v14 + v15;
  if (v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((weeks * 604800000) >> 64 != (604800000 * weeks) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = 604800000 * weeks / v7;
  millis = v16 + v17;
  if (__OFADD__(v16, v17))
  {
LABEL_21:
    __break(1u);
  }

  return millis;
}

uint64_t static TimeUnit.convert(from:in:to:)(uint64_t result, char a2, char a3)
{
  v3 = qword_25F745D50[a2];
  if ((result * v3) >> 64 == (result * v3) >> 63)
  {
    return result * v3 / qword_25F745D50[a3];
  }

  __break(1u);
  return result;
}

Swift::Int64 __swiftcall TimeUnit.toSecs(_:)(Swift::Int64 result)
{
  v2 = qword_25F745D50[v1];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return result * v2 / 1000;
  }

  __break(1u);
  return result;
}

uint64_t TimeUnit.hashValue.getter(unsigned __int8 a1)
{
  sub_25F743994();
  MEMORY[0x25F8E6A00](a1);
  return sub_25F7439B4();
}

uint64_t sub_25F7427D8()
{
  v1 = *v0;
  sub_25F743994();
  MEMORY[0x25F8E6A00](v1);
  return sub_25F7439B4();
}

uint64_t sub_25F74284C(uint64_t a1)
{
  v2 = *v1;
  sub_25F743994();
  MEMORY[0x25F8E6A00](v2);
  return sub_25F7439B4();
}

Swift::Int64 __swiftcall TimeUnit.toMinutes(_:)(Swift::Int64 result)
{
  v2 = qword_25F745D50[v1];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return result * v2 / 60000;
  }

  __break(1u);
  return result;
}

Swift::Int64 __swiftcall TimeUnit.toHours(_:)(Swift::Int64 result)
{
  v2 = qword_25F745D50[v1];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return result * v2 / 3600000;
  }

  __break(1u);
  return result;
}

Swift::Int64 __swiftcall TimeUnit.toDays(_:)(Swift::Int64 result)
{
  v2 = qword_25F745D50[v1];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return result * v2 / 86400000;
  }

  __break(1u);
  return result;
}

Swift::Int64 __swiftcall TimeUnit.toWeeks(_:)(Swift::Int64 result)
{
  v2 = qword_25F745D50[v1];
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    return result * v2 / 604800000;
  }

  __break(1u);
  return result;
}

unint64_t sub_25F7429B4()
{
  result = qword_27FDACEF0;
  if (!qword_27FDACEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDACEF0);
  }

  return result;
}

unint64_t sub_25F742A0C()
{
  result = qword_27FDACEF8;
  if (!qword_27FDACEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FDACF00, &qword_25F745CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FDACEF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimeUnit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TimeUnit(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Array<A>.parseUInt32BigEndian()(uint64_t a1)
{

  v2 = sub_25F71A024(v1);
  v4 = v3;

  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v6 = 0;
      goto LABEL_15;
    }

    v7 = *(v2 + 16);
    v8 = sub_25F743064();
    if (!v8)
    {
      goto LABEL_19;
    }

    v9 = v8;
    v10 = sub_25F743084();
    if (!__OFSUB__(v7, v10))
    {
      v11 = (v7 - v10 + v9);
      sub_25F743074();
      if (v11)
      {
LABEL_13:
        v6 = *v11;
        goto LABEL_15;
      }

      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (!v5)
  {
    v6 = v2;
LABEL_15:
    sub_25F71A0D4(v2, v4);
    return bswap32(v6);
  }

  if (v2 > v2 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    sub_25F743074();
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = sub_25F743064();
  if (!v12)
  {
LABEL_21:
    result = sub_25F743074();
    __break(1u);
    goto LABEL_22;
  }

  v13 = v12;
  v14 = sub_25F743084();
  if (__OFSUB__(v2, v14))
  {
    goto LABEL_18;
  }

  v11 = (v2 - v14 + v13);
  result = sub_25F743074();
  if (v11)
  {
    goto LABEL_13;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t Array<A>.parseUInt64BigEndian()(uint64_t a1)
{

  v2 = sub_25F71A024(v1);
  v4 = v3;

  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
LABEL_8:
    if (v5 != 2)
    {
      v6 = 0;
      goto LABEL_14;
    }

    v11 = *(v2 + 16);
    v12 = sub_25F743064();
    if (!v12)
    {
      goto LABEL_18;
    }

    v13 = v12;
    v14 = sub_25F743084();
    if (!__OFSUB__(v11, v14))
    {
      v10 = (v11 - v14 + v13);
      sub_25F743074();
      if (v10)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v6 = v2;
  if (!v5)
  {
LABEL_14:
    sub_25F71A0D4(v2, v4);
    return bswap64(v6);
  }

  if (v2 > v2 >> 32)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = sub_25F743064();
  if (v7)
  {
    v8 = v7;
    v9 = sub_25F743084();
    if (__OFSUB__(v2, v9))
    {
LABEL_17:
      __break(1u);
LABEL_18:
      sub_25F743074();
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v10 = (v2 - v9 + v8);
    sub_25F743074();
    if (v10)
    {
LABEL_12:
      v6 = *v10;
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_20:
  result = sub_25F743074();
  __break(1u);
  return result;
}

uint64_t Array<A>.parseUInt32LittleEndian()(uint64_t a1)
{

  v2 = sub_25F71A024(v1);
  v4 = v3;

  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v6 = 0;
      goto LABEL_15;
    }

    v7 = *(v2 + 16);
    v8 = sub_25F743064();
    if (!v8)
    {
      goto LABEL_19;
    }

    v9 = v8;
    v10 = sub_25F743084();
    if (!__OFSUB__(v7, v10))
    {
      v11 = (v7 - v10 + v9);
      sub_25F743074();
      if (v11)
      {
LABEL_13:
        v6 = *v11;
        goto LABEL_15;
      }

      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (!v5)
  {
    v6 = v2;
LABEL_15:
    sub_25F71A0D4(v2, v4);
    return v6;
  }

  if (v2 > v2 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    sub_25F743074();
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = sub_25F743064();
  if (!v12)
  {
LABEL_21:
    result = sub_25F743074();
    __break(1u);
    goto LABEL_22;
  }

  v13 = v12;
  v14 = sub_25F743084();
  if (__OFSUB__(v2, v14))
  {
    goto LABEL_18;
  }

  v11 = (v2 - v14 + v13);
  result = sub_25F743074();
  if (v11)
  {
    goto LABEL_13;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t Array<A>.toData()(uint64_t a1)
{

  v2 = sub_25F71A024(v1);

  return v2;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25F742FA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F742FE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}