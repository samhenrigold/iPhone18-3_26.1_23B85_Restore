uint64_t sub_264D61B34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACD28, &qword_264D72150);
  result = sub_264D6EDD8();
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
      result = sub_264D6EFB8();
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

uint64_t sub_264D61D98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC640, &qword_264D72310);
  v34 = v4;
  result = sub_264D6EDD8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_264D6EFC8();
      sub_264D6E9B8();
      result = sub_264D6F008();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_264D62038(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_264D6EDD8();
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

      result = sub_264D6EBD8();
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

unint64_t *sub_264D62298(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
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

    v8 = sub_264D634C4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_264D62328()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC5B0, &unk_264D6FD50);
  v2 = *v0;
  v3 = sub_264D6EDC8();
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
        sub_264D37A38(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_264D37670(v25, (*(v4 + 56) + v22));
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

void *sub_264D624CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACD28, &qword_264D72150);
  v2 = *v0;
  v3 = sub_264D6EDC8();
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

void *sub_264D62618()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC640, &qword_264D72310);
  v2 = *v0;
  v3 = sub_264D6EDC8();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

id sub_264D62780(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_264D6EDC8();
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

uint64_t sub_264D628D0(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_264D6EC98();

    if (v17)
    {

      sub_264D414E0(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_264D6EC88();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_264D62B44(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_264D62D44(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_264D62F64(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_264D414E0(0, a3, a4);
    v19 = sub_264D6EBD8();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_264D6EBE8();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_264D62FE8(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_264D62B44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_264D6ECD8();
    v23 = v10;
    sub_264D6EC78();
    if (sub_264D6ECA8())
    {
      sub_264D414E0(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_264D62D44(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_264D6EBD8();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_264D6ECA8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_264D62D44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_264D6ECC8();
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
      result = sub_264D6EBD8();
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

unint64_t sub_264D62F64(uint64_t a1, uint64_t a2)
{
  sub_264D6EBD8();
  result = sub_264D6EC68();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_264D62FE8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
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
    v13 = a7;
    sub_264D62D44(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_264D63178(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_264D632B8(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_264D6EBD8();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_264D414E0(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_264D6EBE8();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_264D6EF58();
  __break(1u);
}

id sub_264D63178(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_264D6ECB8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

uint64_t sub_264D632B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_264D6ECC8();
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
      result = sub_264D6EBD8();
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

unint64_t *sub_264D634C4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
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
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_264D63638(v21, a2, v22, v19);
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
  return result;
}

uint64_t sub_264D63638(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACD88, &qword_264D722D8);
  result = sub_264D6ECE8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_264D6EFC8();

    sub_264D6E9B8();
    result = sub_264D6F008();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_264D6385C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_264D6EBD8();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
    v11 = 1;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v9);
      v13 = sub_264D6EBE8();

      if (v13)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v11 = 0;
LABEL_8:
    v14 = v13 ^ 1;
    v3 = v2;
  }

  else
  {
    v14 = 1;
    v11 = 1;
  }

  v15 = *(v6 + 16);
  v16 = v15 + v11;
  if (__OFADD__(v15, v11))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v17 = *(v6 + 24);
  if (v17 >= v16 && (a2 & 1) != 0)
  {
    if ((v14 & 1) == 0)
    {
LABEL_28:
      v29 = *(*v3 + 48);
      result = *(v29 + 8 * v9);
      *(v29 + 8 * v9) = a1;
      return result;
    }

    goto LABEL_25;
  }

  if (a2)
  {
    sub_264D62D44(v16, &qword_27FFACDB8, &qword_264D722F8);
  }

  else
  {
    if (v17 >= v16)
    {
      sub_264D63178(&qword_27FFACDB8, &qword_264D722F8);
      if ((v14 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    sub_264D632B8(v16, &qword_27FFACDB8, &qword_264D722F8);
  }

  v18 = *v3;
  v19 = sub_264D6EBD8();
  v20 = -1 << *(v18 + 32);
  v9 = v19 & ~v20;
  if (((*(v18 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_24:
    if ((v14 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_25:
    v24 = *v3;
    *(*v3 + 8 * (v9 >> 6) + 56) |= 1 << v9;
    *(*(v24 + 48) + 8 * v9) = a1;
    v25 = *(v24 + 16);
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (!v26)
    {
      result = 0;
      *(v24 + 16) = v27;
      return result;
    }

    goto LABEL_30;
  }

  v21 = ~v20;
  sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
  while (1)
  {
    v22 = *(*(v18 + 48) + 8 * v9);
    v23 = sub_264D6EBE8();

    if (v23)
    {
      break;
    }

    v9 = (v9 + 1) & v21;
    if (((*(v18 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_31:
  sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
  result = sub_264D6EF58();
  __break(1u);
  return result;
}

void sub_264D63B04(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_264D6EC88())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACDB8, &qword_264D722F8);
      v3 = sub_264D6ECE8();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_264D6EC88();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x26674CF10](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_264D6EBD8();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_264D6EBE8();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_264D6EBD8();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_264D6EBE8();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_264D63DF4(unint64_t a1)
{
  if (!(MEMORY[0x277D84F90] >> 62))
  {
LABEL_2:
    v2 = MEMORY[0x277D84FA0];
    if (!(a1 >> 62))
    {
      goto LABEL_3;
    }

LABEL_21:
    v3 = sub_264D6EC88();
    if (!v3)
    {
      return;
    }

    goto LABEL_4;
  }

LABEL_19:
  if (!sub_264D6EC88())
  {
    goto LABEL_2;
  }

  sub_264D63B04(MEMORY[0x277D84F90]);
  v2 = v13;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

LABEL_3:
  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return;
  }

LABEL_4:
  if (v3 >= 1)
  {
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26674CF10](v4, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v4 + 32);
      }

      v9 = v8;
      v10 = [v8 payloadAddress];
      if (!v10)
      {
        sub_264D6E988();
        v10 = sub_264D6E958();
      }

      v11 = [objc_allocWithZone(MEMORY[0x277D265A0]) initWithDomain_];

      if ((v2 & 0xC000000000000001) != 0)
      {
        if (v2 >= 0)
        {
          v2 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v12 = sub_264D6EC88();
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_19;
        }

        v14 = sub_264D62B44(v2, v12 + 1, &qword_27FFACDB8, &qword_264D722F8, &qword_27FFACD08, 0x277D265A0);
        v6 = v11;
        isUniquelyReferenced_nonNull_native = 1;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = v2;
        v6 = v11;
      }

      v7 = sub_264D6385C(v6, isUniquelyReferenced_nonNull_native);

      v2 = v14;
      if (v3 == ++v4)
      {
        return;
      }
    }
  }

  __break(1u);
}

uint64_t sub_264D63FDC(uint64_t a1)
{
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_12;
  }

  v1 = MEMORY[0x277D84FA0];
  v2 = *(a1 + 16);
  if (v2)
  {
    while (1)
    {
      for (i = a1 + 40; ; i += 16)
      {
        v6 = objc_allocWithZone(MEMORY[0x277D265A0]);

        v7 = sub_264D6E958();

        v8 = [v6 initWithDomain_];

        if ((v1 & 0xC000000000000001) != 0)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = v1;
        v5 = v8;
LABEL_5:

        v1 = v12;
        if (!--v2)
        {
          return v1;
        }
      }

      if (v1 >= 0)
      {
        v1 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      a1 = sub_264D6EC88();
      if (!__OFADD__(a1, 1))
      {
        break;
      }

      __break(1u);
LABEL_12:
      v9 = a1;
      if (sub_264D6EC88())
      {
        sub_264D63B04(MEMORY[0x277D84F90]);
        v1 = v10;
      }

      else
      {
        v1 = MEMORY[0x277D84FA0];
      }

      a1 = v9;
      v2 = *(v9 + 16);
      if (!v2)
      {
        return v1;
      }
    }

    v12 = sub_264D62B44(v1, a1 + 1, &qword_27FFACDB8, &qword_264D722F8, &qword_27FFACD08, 0x277D265A0);
    v5 = v8;
    isUniquelyReferenced_nonNull_native = 1;
    goto LABEL_5;
  }

  return v1;
}

id sub_264D64174(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 nonePolicy];
  v4 = [a1 payloadRestrictWeb];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [a1 payloadWhiteListEnabled];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v8 = [a1 payloadSiteWhiteList];
      if (v8)
      {
        v9 = v8;
        sub_264D414E0(0, &qword_27FFACDC8, 0x277CFBBF0);
        v10 = sub_264D6EAA8();
      }

      else
      {
        v10 = MEMORY[0x277D84F90];
      }

      sub_264D63DF4(v10);

      sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
      sub_264D64760(&qword_27FFACD98, &qword_27FFACD08, 0x277D265A0);
      v18 = sub_264D6EAC8();

      v19 = [v2 allPolicyWithExceptions_];
    }

    else
    {
      v11 = [a1 payloadUseContentFilter];
      v12 = [v11 BOOLValue];

      v13 = [a1 payloadFilterBlackList];
      if (v12)
      {
        if (v13)
        {
          v14 = v13;
          v15 = sub_264D6EAA8();
        }

        else
        {
          v15 = MEMORY[0x277D84F90];
        }

        sub_264D63FDC(v15);

        sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
        sub_264D64760(&qword_27FFACD98, &qword_27FFACD08, 0x277D265A0);
        v20 = sub_264D6EAC8();

        v21 = [a1 payloadFilterWhiteList];
        if (v21)
        {
          v22 = v21;
          v23 = sub_264D6EAA8();
        }

        else
        {
          v23 = MEMORY[0x277D84F90];
        }

        sub_264D63FDC(v23);

        v18 = sub_264D6EAC8();

        v24 = [v2 autoPolicyWithDomains:v20 exceptions:v18];

        v3 = v20;
        goto LABEL_20;
      }

      if (v13)
      {
        v16 = v13;
        v17 = sub_264D6EAA8();
      }

      else
      {
        v17 = MEMORY[0x277D84F90];
      }

      sub_264D63FDC(v17);

      sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
      sub_264D64760(&qword_27FFACD98, &qword_27FFACD08, 0x277D265A0);
      v18 = sub_264D6EAC8();

      v19 = [v2 specificPolicyWithDomains_];
    }

    v24 = v19;
LABEL_20:

    v3 = v24;
  }

  if (![v3 policy])
  {

    return 0;
  }

  return v3;
}

uint64_t sub_264D6456C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_264D6EC88())
  {
    v4 = sub_264D414E0(0, &qword_27FFACCF8, 0x277D26550);
    v5 = sub_264D64760(&qword_27FFACD40, &qword_27FFACCF8, 0x277D26550);
    result = MEMORY[0x26674CCE0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277D26550uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26674CF10](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_264D628D0(&v12, v10, &qword_27FFACCF8, 0x277D26550, &qword_27FFACDC0, &unk_264D72300);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_264D6EC88();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_264D646F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACD50, &qword_264D72178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264D64760(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_264D414E0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_264D64858()
{
  result = qword_27FFACD60;
  if (!qword_27FFACD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACD60);
  }

  return result;
}

uint64_t type metadata accessor for LocalRestrictions(uint64_t a1)
{
  result = qword_27FFACD68;
  if (!qword_27FFACD68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264D64900(uint64_t a1)
{
  result = sub_264D6E848();
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

unint64_t sub_264D64D0C()
{
  result = qword_27FFACD78;
  if (!qword_27FFACD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACD78);
  }

  return result;
}

uint64_t sub_264D64D60(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_264D6EC88())
  {
    v4 = sub_264D414E0(0, &qword_27FFACD08, 0x277D265A0);
    v5 = sub_264D64760(&qword_27FFACD98, &qword_27FFACD08, 0x277D265A0);
    result = MEMORY[0x26674CCE0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277D265A0uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26674CF10](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_264D628D0(&v12, v10, &qword_27FFACD08, 0x277D265A0, &qword_27FFACDB8, &qword_264D722F8);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_264D6EC88();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_264D64EEC(void *a1, id a2)
{
  v4 = [a2 appStore];
  v5 = [a1 payloadAllowInAppPurchases];
  [v5 BOOLValue];
  sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
  v6 = sub_264D6EBC8();

  [v4 setDenyInAppPurchases_];
  v7 = [a2 appStore];
  v8 = [a1 payloadForceITunesStorePasswordEntry];
  [v7 setRequirePasswordForPurchases_];

  v9 = [a2 application];
  v10 = [a1 payloadAllowAppInstallation];
  [v10 BOOLValue];
  v11 = sub_264D6EBC8();

  [v9 setDenyAppInstallation_];
  v12 = [a2 appStore];
  v13 = [a1 payloadAllowUIAppInstallation];
  [v13 BOOLValue];
  v14 = sub_264D6EBC8();

  [v12 setDenyAppStoreAppInstallation_];
  v15 = [a2 appStore];
  v16 = [a1 payloadAllowMarketplaceAppInstallation];
  [v16 BOOLValue];
  v17 = sub_264D6EBC8();

  [v15 setDenyMarketplaceAppInstallation_];
  v18 = [a2 appStore];
  v19 = [a1 payloadAllowWebDistributionAppInstallation];
  [v19 BOOLValue];
  v20 = sub_264D6EBC8();

  [v18 setDenyWebDistributionAppInstallation_];
  v21 = [a2 application];
  v22 = [a1 payloadAllowAppRemoval];
  [v22 BOOLValue];
  v23 = sub_264D6EBC8();

  [v21 setDenyAppRemoval_];
  v24 = [a2 application];
  v25 = [a1 payloadAllowAppClips];
  [v25 BOOLValue];
  v26 = sub_264D6EBC8();

  [v24 setDenyAppClips_];
}

void sub_264D6529C(void *a1, void *a2)
{
  v4 = [a1 payloadBlacklistedAppBundleIDs];
  if (v4)
  {
    v5 = v4;
    v6 = sub_264D6EAA8();

    v7 = *(v6 + 16);
    if (v7)
    {
      v35 = MEMORY[0x277D84F90];
      sub_264D6ED78();
      v8 = v6 + 40;
      do
      {
        v9 = objc_allocWithZone(MEMORY[0x277D26550]);

        v10 = sub_264D6E958();
        [v9 initWithBundleIdentifier_];

        sub_264D6ED58();
        sub_264D6ED88();
        sub_264D6ED98();
        sub_264D6ED68();
        v8 += 16;
        --v7;
      }

      while (v7);

      v11 = v35;
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }

    v12 = [a2 application];
    sub_264D6456C(v11);

    sub_264D414E0(0, &qword_27FFACCF8, 0x277D26550);
    sub_264D64760(&qword_27FFACD40, &qword_27FFACCF8, 0x277D26550);
    v13 = sub_264D6EAC8();

    [v12 setBlockedApplications_];
  }

  v14 = [a2 faceTime];
  v15 = [a1 payloadAllowVideoConferencing];
  [v15 BOOLValue];
  sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
  v16 = sub_264D6EBC8();

  [v14 setDenyFaceTime_];
  v17 = [a2 faceTime];
  v18 = [a1 payloadAllowGroupActivity];
  [v18 BOOLValue];
  v19 = sub_264D6EBC8();

  [v17 setDenySharePlay_];
  v20 = [a2 media];
  v21 = [a1 payloadAllowiTunes];
  [v21 BOOLValue];
  v22 = sub_264D6EBC8();

  [v20 setDenyiTunes_];
  v23 = [a2 media];
  v24 = [a1 payloadAllowPodcasts];
  [v24 BOOLValue];
  v25 = sub_264D6EBC8();

  [v23 setDenyPodcasts_];
  v26 = [a2 messages];
  v27 = [a1 payloadAllowChat];
  [v27 BOOLValue];
  v28 = sub_264D6EBC8();

  [v26 setDenyiMessage_];
  v29 = [a2 news];
  v30 = [a1 payloadAllowNews];
  [v30 BOOLValue];
  v31 = sub_264D6EBC8();

  [v29 setDenyNews_];
  v32 = [a2 safari];
  v33 = [a1 payloadAllowSafari];
  [v33 BOOLValue];
  v34 = sub_264D6EBC8();

  [v32 setDenySafari_];
}

void sub_264D657AC(void *a1, id a2)
{
  v4 = [a2 media];
  v5 = [a1 payloadAllowBookstore];
  [v5 BOOLValue];
  sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
  v6 = sub_264D6EBC8();

  [v4 setDenyBookstore_];
  v7 = [a2 media];
  v8 = [a1 payloadAllowBookstoreErotica];
  [v8 BOOLValue];
  v9 = sub_264D6EBC8();

  [v7 setDenyBookstoreErotica_];
}

void sub_264D658F8(void *a1, id a2)
{
  v4 = [a2 cellular];
  v5 = [a1 payloadAllowAppCellularDataModification];
  [v5 BOOLValue];
  sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
  v6 = sub_264D6EBC8();

  [v4 setLockAppCellularData_];
  v7 = [a2 cellular];
  v8 = [a1 payloadAllowCellularPlanModification];
  [v8 BOOLValue];
  v9 = sub_264D6EBC8();

  [v7 setLockCellularPlan_];
}

void sub_264D65A44(void *a1, id a2)
{
  v4 = [a2 camera];
  v5 = [a1 payloadAllowCamera];
  [v5 BOOLValue];
  sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
  v6 = sub_264D6EBC8();

  [v4 setDenyCamera_];
  v7 = [a2 camera];
  v8 = [a1 payloadAllowScreenRecording];
  [v8 BOOLValue];
  v9 = sub_264D6EBC8();

  [v7 setDenyScreenRecording_];
}

void sub_264D65B90(void *a1, void *a2)
{
  v4 = [a1 payloadAllowedGameCenterOtherPlayerTypes];
  v5 = [v4 integerValue];

  if (v5 <= 2)
  {
    v6 = qword_279B86E10[v5];
    v7 = [a2 gameCenter];
    [v7 setAllowedOtherPlayerTypes_];
  }

  v8 = [a2 gameCenter];
  v9 = [a1 payloadAllowMultiplayerGaming];
  [v9 BOOLValue];
  sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
  v10 = sub_264D6EBC8();

  [v8 setDenyMultiplayerGaming_];
  v11 = [a2 gameCenter];
  v12 = [a1 payloadAllowAddingGameCenterFriends];
  [v12 BOOLValue];
  v13 = sub_264D6EBC8();

  [v11 setDenyAddingFriends_];
  v14 = [a2 gameCenter];
  v15 = [a1 payloadAllowGameCenter];
  [v15 BOOLValue];
  v16 = sub_264D6EBC8();

  [v14 setDenyGameCenter_];
  v17 = [a2 gameCenter];
  v18 = [a1 payloadAllowGameCenterNearbyMultiplayer];
  [v18 BOOLValue];
  v19 = sub_264D6EBC8();

  [v17 setDenyNearbyMultiplayer_];
  v20 = [a2 gameCenter];
  v21 = [a1 payloadAllowGameCenterPrivateMessaging];
  [v21 BOOLValue];
  v22 = sub_264D6EBC8();

  [v20 setDenyPrivateMessaging_];
  v23 = [a2 gameCenter];
  v24 = [a1 payloadAllowGameCenterProfilePrivacyModification];
  [v24 BOOLValue];
  v25 = sub_264D6EBC8();

  [v23 setLockProfilePrivacy_];
  v26 = [a2 gameCenter];
  v27 = [a1 payloadAllowGameCenterProfileModification];
  [v27 BOOLValue];
  v28 = sub_264D6EBC8();

  [v26 setLockProfile_];
  v29 = [a2 gameCenter];
  v30 = [a1 payloadAllowGameCenterFriendsSharingModification];
  [v30 BOOLValue];
  v31 = sub_264D6EBC8();

  [v29 setLockFriendsSharing_];
}

void sub_264D65FB8(void *a1, id a2)
{
  v4 = [a2 media];
  v5 = [a1 payloadAllowMusicService];
  [v5 BOOLValue];
  sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
  v6 = sub_264D6EBC8();

  [v4 setDenyMusicService_];
  v7 = [a2 media];
  v8 = [a1 payloadAllowMusicArtistActivity];
  [v8 BOOLValue];
  v9 = sub_264D6EBC8();

  [v7 setDenyMusicArtistActivity_];
  v10 = [a2 media];
  v11 = [a1 payloadAllowMusicVideos];
  [v11 BOOLValue];
  v12 = sub_264D6EBC8();

  [v10 setDenyMusicVideos_];
  v13 = [a2 media];
  v14 = [a1 payloadAllowSharedLibraries];
  [v14 BOOLValue];
  v15 = sub_264D6EBC8();

  [v13 setDenySharedMediaLibraries_];
  v16 = sub_264D6E818();
  v21[3] = v16;
  v21[4] = sub_264D666A8();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v16 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D4B890], v16);
  LOBYTE(v16) = sub_264D6E7E8();
  __swift_destroy_boxed_opaque_existential_0(v21);
  if (v16)
  {
    v18 = [a2 media];
    v19 = [a1 payloadAllowSpeakerVolumeLimitModification];
    [v19 BOOLValue];
    sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
    v20 = sub_264D6EBC8();

    [v18 setLockSpeakerVolumeLimit_];
  }
}

void sub_264D662C0(void *a1, id a2)
{
  v4 = [a2 appStore];
  v5 = [a1 payloadRatingApps];
  [v4 setMaximumRating_];

  v6 = [a2 media];
  v7 = [a1 payloadRatingMovies];
  [v6 setMaximumMovieRating_];

  v8 = [a2 media];
  v9 = [a1 payloadRatingTVShows];
  [v8 setMaximumTVShowRating_];

  v10 = [a2 media];
  v11 = [a1 payloadAllowExplicitContent];
  if (v11)
  {
    v12 = v11;
    [v11 BOOLValue];
    sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
    v13 = sub_264D6EBC8();
  }

  else
  {
    v13 = 0;
  }

  [v10 setDenyExplicitContent_];
}

void sub_264D664A0(void *a1, id a2)
{
  v4 = [a2 siri];
  v5 = [a1 payloadAllowAssistant];
  [v5 BOOLValue];
  sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
  v6 = sub_264D6EBC8();

  [v4 setDenySiri_];
  v7 = [a2 keyboard];
  v8 = [a1 payloadAllowDictation];
  [v8 BOOLValue];
  v9 = sub_264D6EBC8();

  [v7 setDenyDictation_];
  v10 = [a2 siri];
  v11 = [a1 payloadAllowAssistantUserGeneratedContent];
  [v11 BOOLValue];
  v12 = sub_264D6EBC8();

  [v10 setDenySiriUserGeneratedContent_];
  v13 = [a2 siri];
  v14 = [a1 payloadForceAssistantProfanityFilter];
  [v13 setForceSiriProfanityFilter_];
}

unint64_t sub_264D666A8()
{
  result = qword_27FFACD80;
  if (!qword_27FFACD80)
  {
    sub_264D6E818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACD80);
  }

  return result;
}

uint64_t sub_264D66720()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACDD0);
  __swift_project_value_buffer(v0, qword_27FFACDD0);
  return sub_264D6E808();
}

uint64_t sub_264D667A8()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACDE8);
  __swift_project_value_buffer(v0, qword_27FFACDE8);
  return sub_264D6E808();
}

uint64_t sub_264D66830()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACE00);
  __swift_project_value_buffer(v0, qword_27FFACE00);
  return sub_264D6E808();
}

uint64_t sub_264D668B8()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACE18);
  __swift_project_value_buffer(v0, qword_27FFACE18);
  return sub_264D6E808();
}

uint64_t sub_264D66940()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACE30);
  __swift_project_value_buffer(v0, qword_27FFACE30);
  return sub_264D6E808();
}

uint64_t sub_264D669C8()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACE48);
  __swift_project_value_buffer(v0, qword_27FFACE48);
  return sub_264D6E808();
}

uint64_t sub_264D66A50()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACE60);
  __swift_project_value_buffer(v0, qword_27FFACE60);
  return sub_264D6E808();
}

uint64_t sub_264D66AD8()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACE78);
  __swift_project_value_buffer(v0, qword_27FFACE78);
  return sub_264D6E808();
}

uint64_t sub_264D66B60()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACE90);
  __swift_project_value_buffer(v0, qword_27FFACE90);
  return sub_264D6E808();
}

uint64_t sub_264D66BE8()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACEA8);
  __swift_project_value_buffer(v0, qword_27FFACEA8);
  return sub_264D6E808();
}

uint64_t sub_264D66C70()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACEC0);
  __swift_project_value_buffer(v0, qword_27FFACEC0);
  return sub_264D6E808();
}

uint64_t sub_264D66CF8()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACED8);
  __swift_project_value_buffer(v0, qword_27FFACED8);
  return sub_264D6E808();
}

uint64_t sub_264D66D80()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACEF0);
  __swift_project_value_buffer(v0, qword_27FFACEF0);
  return sub_264D6E808();
}

uint64_t sub_264D66E08()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACF08);
  __swift_project_value_buffer(v0, qword_27FFACF08);
  return sub_264D6E808();
}

uint64_t sub_264D66E90()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACF20);
  __swift_project_value_buffer(v0, qword_27FFACF20);
  return sub_264D6E808();
}

uint64_t sub_264D66F18()
{
  v0 = sub_264D6E7F8();
  __swift_allocate_value_buffer(v0, qword_27FFACF38);
  __swift_project_value_buffer(v0, qword_27FFACF38);
  return sub_264D6E808();
}

uint64_t sub_264D66FA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_264D6E7F8();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t DeviceActivityName.isDowntime.getter()
{
  if (qword_27FFAC320 != -1)
  {
    swift_once();
  }

  v0 = sub_264D6E7F8();
  __swift_project_value_buffer(v0, qword_27FFACDD0);
  sub_264D67558();
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    goto LABEL_5;
  }

  v1 = sub_264D6EF28();

  if (v1)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC328 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACDE8);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    goto LABEL_5;
  }

  v4 = sub_264D6EF28();

  if (v4)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC330 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACE00);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    goto LABEL_5;
  }

  v5 = sub_264D6EF28();

  if (v5)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC338 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACE18);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    goto LABEL_5;
  }

  v6 = sub_264D6EF28();

  if (v6)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC340 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACE30);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    goto LABEL_5;
  }

  v7 = sub_264D6EF28();

  if (v7)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC348 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACE48);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
LABEL_5:

LABEL_7:
    v2 = 1;
    return v2 & 1;
  }

  v8 = sub_264D6EF28();

  if (v8)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC350 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACE60);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_264D6EF28();
  }

  return v2 & 1;
}

unint64_t sub_264D67558()
{
  result = qword_27FFACF50;
  if (!qword_27FFACF50)
  {
    sub_264D6E7F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACF50);
  }

  return result;
}

uint64_t DeviceActivityName.isUsageLimit.getter()
{
  if (qword_27FFAC368 != -1)
  {
    swift_once();
  }

  v0 = sub_264D6E7F8();
  __swift_project_value_buffer(v0, qword_27FFACEA8);
  sub_264D67558();
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    goto LABEL_5;
  }

  v1 = sub_264D6EF28();

  if (v1)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC370 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACEC0);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    goto LABEL_5;
  }

  v4 = sub_264D6EF28();

  if (v4)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC378 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACED8);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    goto LABEL_5;
  }

  v5 = sub_264D6EF28();

  if (v5)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC380 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACEF0);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    goto LABEL_5;
  }

  v6 = sub_264D6EF28();

  if (v6)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC388 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACF08);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    goto LABEL_5;
  }

  v7 = sub_264D6EF28();

  if (v7)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC390 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACF20);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
LABEL_5:

LABEL_7:
    v2 = 1;
    return v2 & 1;
  }

  v8 = sub_264D6EF28();

  if (v8)
  {
    goto LABEL_7;
  }

  if (qword_27FFAC398 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_27FFACF38);
  sub_264D6EA68();
  sub_264D6EA68();
  if (v11 == v9 && v12 == v10)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_264D6EF28();
  }

  return v2 & 1;
}

uint64_t sub_264D67AD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_264D6EF28() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void STUserNotifications.NotificationType.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_264D6E778();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for STUserNotifications.NotificationType(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264D69B5C(v2, v9);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v13 = *(v9 + 4);
      MEMORY[0x26674D1D0](1);
      sub_264D6E9B8();

      sub_264D6E9B8();

      sub_264D6EFE8();
      if (v13)
      {
        v14 = v13;
        sub_264D6EBF8();
      }

      else
      {
        v14 = 0;
      }

      sub_264D6E9B8();

      return;
    case 2u:
      (*(v4 + 32))(v6, v9, v3);
      MEMORY[0x26674D1D0](2);
      sub_264D6B724(&qword_27FFACF78, MEMORY[0x277CC8990], MEMORY[0x277CC89A0]);
      sub_264D6E948();
      (*(v4 + 8))(v6, v3);
      return;
    case 3u:
      v10 = *(v9 + 6);
      MEMORY[0x26674D1D0](11);
      sub_264D6E9B8();

      sub_264D6E9B8();

      sub_264D6E9B8();
      goto LABEL_10;
    case 4u:
      MEMORY[0x26674D1D0](12);
      sub_264D6E9B8();

      sub_264D6E9B8();

      sub_264D6E9B8();
      goto LABEL_19;
    case 5u:
      v15 = *(v9 + 2);
      MEMORY[0x26674D1D0](14);
      sub_264D6E9B8();

      MEMORY[0x26674D1D0](*(v15 + 16));
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = v15 + 40;
        do
        {

          sub_264D6E9B8();

          v17 += 16;
          --v16;
        }

        while (v16);
      }

LABEL_19:

      return;
    case 6u:
      v11 = 3;
      goto LABEL_24;
    case 7u:
      v11 = 4;
      goto LABEL_24;
    case 8u:
      v11 = 5;
      goto LABEL_24;
    case 9u:
      v11 = 6;
      goto LABEL_24;
    case 0xAu:
      v11 = 7;
      goto LABEL_24;
    case 0xBu:
      v11 = 8;
      goto LABEL_24;
    case 0xCu:
      v11 = 9;
      goto LABEL_24;
    case 0xDu:
      v11 = 10;
      goto LABEL_24;
    case 0xEu:
      v11 = 13;
LABEL_24:
      MEMORY[0x26674D1D0](v11);
      break;
    default:
      v10 = *(v9 + 4);
      MEMORY[0x26674D1D0](0);
      sub_264D6E9B8();

      sub_264D6E9B8();
LABEL_10:

      v12 = 0.0;
      if (v10 != 0.0)
      {
        v12 = v10;
      }

      MEMORY[0x26674D1F0](*&v12);
      break;
  }
}

uint64_t STUserNotifications.NotificationType.hashValue.getter()
{
  sub_264D6EFC8();
  STUserNotifications.NotificationType.hash(into:)(v1);
  return sub_264D6F008();
}

uint64_t sub_264D68014()
{
  sub_264D6EFC8();
  STUserNotifications.NotificationType.hash(into:)(v1);
  return sub_264D6F008();
}

uint64_t sub_264D68058(uint64_t a1)
{
  sub_264D6EFC8();
  STUserNotifications.NotificationType.hash(into:)(v2);
  return sub_264D6F008();
}

uint64_t STUserNotifications.UserNotificationError.hashValue.getter()
{
  v1 = *v0;
  sub_264D6EFC8();
  MEMORY[0x26674D1D0](v1);
  return sub_264D6F008();
}

uint64_t sub_264D68124()
{
  v0 = sub_264D6E848();
  __swift_allocate_value_buffer(v0, qword_27FFACF58);
  v1 = __swift_project_value_buffer(v0, qword_27FFACF58);
  if (qword_27FFAC310 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FFB1650);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static STUserNotifications.post(notification:)(uint64_t a1)
{
  v1[2] = a1;
  v3 = sub_264D6E7D8();
  v1[3] = v3;
  v1[4] = *(v3 - 8);
  v1[5] = swift_task_alloc();
  v4 = sub_264D6E778();
  v1[6] = v4;
  v1[7] = *(v4 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = type metadata accessor for STUserNotifications.NotificationType(0);
  v1[10] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[11] = v5;
  *v5 = v1;
  v5[1] = sub_264D6836C;

  return sub_264D69BC0(a1);
}

uint64_t sub_264D6836C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_264D684CC, 0, 0);
  }
}

uint64_t sub_264D684CC()
{
  sub_264D69B5C(*(v0 + 16), *(v0 + 80));
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 80), *(v0 + 48));
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = v1;
      v4 = *(v0 + 56);
      v3 = *(v0 + 64);
      v5 = *(v0 + 40);
      v22 = *(v0 + 48);
      v7 = *(v0 + 24);
      v6 = *(v0 + 32);
      v8 = *(v0 + 96);
      sub_264D6E7C8();
      v9 = sub_264D6E748();
      v10 = sub_264D6E7B8();
      [v2 setEndDateComponents:v9 referenceDate:v10];

      (*(v6 + 8))(v5, v7);
      (*(v4 + 8))(v3, v22);
    }

    else
    {
      if (qword_27FFAC3A0 != -1)
      {
        swift_once();
      }

      v11 = sub_264D6E848();
      __swift_project_value_buffer(v11, qword_27FFACF58);
      v12 = sub_264D6E828();
      v13 = sub_264D6EB28();
      v14 = os_log_type_enabled(v12, v13);
      v16 = *(v0 + 56);
      v15 = *(v0 + 64);
      v17 = *(v0 + 48);
      if (v14)
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_264D33000, v12, v13, "Unable to cast context of type downtime to STDeviceDowntimeUserNotificationContext.", v18, 2u);
        MEMORY[0x26674D8B0](v18, -1, -1);
      }

      (*(v16 + 8))(v15, v17);
    }
  }

  else
  {
    sub_264D6A170(*(v0 + 80));
  }

  v19 = swift_task_alloc();
  *(v0 + 104) = v19;
  *v19 = v0;
  v19[1] = sub_264D6876C;
  v20 = *(v0 + 96);

  return sub_264D6A1CC(v20);
}

uint64_t sub_264D6876C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_264D68910;
  }

  else
  {
    v2 = sub_264D68880;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264D68880()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264D68910()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static STUserNotifications.postNotification(context:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_264D3D1A4;

  return sub_264D6A1CC(a1);
}

uint64_t static STUserNotifications.remove(notification:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_264D68AD8;

  return sub_264D69BC0(a1);
}

uint64_t sub_264D68AD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 24) = v1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_264D68C28, 0, 0);
  }
}

uint64_t sub_264D68C28()
{
  v1 = *(v0 + 32);
  sub_264D6AFA8(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264D68CC0(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_264D68CF4(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC778, &qword_264D722D0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_264D68DC0(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  sub_264D414E0(0, &qword_27FFAD010, 0x277CE1F78);
  **(*(v2 + 64) + 40) = sub_264D6EAA8();

  return MEMORY[0x282200948](v2);
}

void *sub_264D68E44()
{
  result = sub_264D68E64();
  off_27FFACF70 = result;
  return result;
}

unint64_t sub_264D68E64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACFD0, &qword_264D72530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_264D72320;
  v1 = *MEMORY[0x277D4BCB0];
  *(inited + 32) = sub_264D6E988();
  *(inited + 40) = v2;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];
  v3 = *MEMORY[0x277D4BCA0];
  *(inited + 56) = sub_264D6E988();
  *(inited + 64) = v4;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];
  v5 = *MEMORY[0x277D4BCA8];
  *(inited + 80) = sub_264D6E988();
  *(inited + 88) = v6;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];
  v7 = sub_264D38400(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACFD8, &qword_264D72538);
  swift_arrayDestroy();
  return v7;
}

uint64_t static STUserNotifications.notificationCentersByBundle.getter()
{
  if (qword_27FFAC3A8 != -1)
  {
    swift_once();
  }
}

uint64_t _s15ScreenTimeSwift19STUserNotificationsV16NotificationTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_264D6E778();
  v117 = *(v4 - 1);
  v118 = v4;
  MEMORY[0x28223BE20](v4);
  v116 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for STUserNotifications.NotificationType(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v115 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v115 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v115 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v115 - v20);
  MEMORY[0x28223BE20](v19);
  v23 = &v115 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAD018, &unk_264D72570);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = (&v115 + *(v25 + 56) - v26);
  v28 = a1;
  v29 = &v115 - v26;
  sub_264D69B5C(v28, &v115 - v26);
  sub_264D69B5C(a2, v27);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v36 = v29;
      sub_264D69B5C(v29, v21);
      v72 = *v21;
      v71 = v21[1];
      v74 = v21[2];
      v73 = v21[3];
      v75 = v21[4];
      v76 = v21[5];
      v77 = v21[6];
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        v29 = v36;
        goto LABEL_57;
      }

      v116 = v76;
      v118 = v75;
      v78 = *v27;
      v79 = *(v27 + 1);
      v81 = *(v27 + 2);
      v80 = *(v27 + 3);
      v82 = *(v27 + 5);
      v117 = *(v27 + 4);
      v115 = v82;
      v83 = *(v27 + 6);
      if (v72 == *&v78 && v71 == v79)
      {
      }

      else
      {
        v85 = sub_264D6EF28();

        if ((v85 & 1) == 0)
        {

LABEL_86:

          goto LABEL_123;
        }
      }

      if (v74 == v81 && v73 == v80)
      {
      }

      else
      {
        v104 = sub_264D6EF28();

        if ((v104 & 1) == 0)
        {
          goto LABEL_86;
        }
      }

      v108 = v117;
      v107 = v118;
      if (v118)
      {
        if (!v117)
        {

          goto LABEL_122;
        }

        sub_264D414E0(0, &qword_27FFAC3B0, 0x277CCABB0);
        v109 = v107;
        v110 = v108;
        v111 = sub_264D6EBE8();

        if ((v111 & 1) == 0)
        {

LABEL_122:

          goto LABEL_123;
        }
      }

      else if (v117)
      {

LABEL_123:
        sub_264D6A170(v36);
        goto LABEL_58;
      }

      if (v116 == v115 && v77 == v83)
      {
      }

      else
      {
        v114 = sub_264D6EF28();

        if ((v114 & 1) == 0)
        {
          goto LABEL_123;
        }
      }

LABEL_125:
      v92 = v36;
LABEL_53:
      sub_264D6A170(v92);
      v54 = 1;
      return v54 & 1;
    case 2u:
      sub_264D69B5C(v29, v18);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v52 = v116;
        v51 = v117;
        v53 = v118;
        (*(v117 + 4))(v116, v27, v118);
        v54 = MEMORY[0x26674C950](v18, v52);
        v55 = *(v51 + 1);
        v55(v52, v53);
        v55(v18, v53);
        goto LABEL_89;
      }

      (*(v117 + 1))(v18, v118);
      goto LABEL_57;
    case 3u:
      v36 = v29;
      sub_264D69B5C(v29, v15);
      v56 = *v15;
      v57 = *(v15 + 1);
      v59 = *(v15 + 2);
      v58 = *(v15 + 3);
      v61 = *(v15 + 4);
      v60 = *(v15 + 5);
      v62 = *(v15 + 6);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_28;
      }

      v117 = v61;
      v63 = *v27;
      v64 = *(v27 + 1);
      v66 = *(v27 + 2);
      v65 = *(v27 + 3);
      v67 = *(v27 + 5);
      v116 = *(v27 + 4);
      v118 = v67;
      v68 = v27[6];
      if (v56 == v63 && v57 == v64)
      {
      }

      else
      {
        v70 = sub_264D6EF28();

        if ((v70 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      if (v59 == v66 && v58 == v65)
      {
      }

      else
      {
        v102 = sub_264D6EF28();

        if ((v102 & 1) == 0)
        {
          goto LABEL_122;
        }
      }

      if (v117 == v116 && v60 == v118)
      {
      }

      else
      {
        v113 = sub_264D6EF28();

        if ((v113 & 1) == 0)
        {
          goto LABEL_123;
        }
      }

      v54 = v62 == v68;
      sub_264D6A170(v36);
      return v54 & 1;
    case 4u:
      v36 = v29;
      sub_264D69B5C(v29, v12);
      v37 = *v12;
      v38 = v12[1];
      v40 = v12[2];
      v39 = v12[3];
      v41 = v12[4];
      v42 = v12[5];
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_28:

        v29 = v36;
        goto LABEL_57;
      }

      v118 = v41;
      v43 = *v27;
      v44 = *(v27 + 1);
      v46 = *(v27 + 2);
      v45 = *(v27 + 3);
      v47 = *(v27 + 4);
      v48 = *(v27 + 5);
      v117 = v47;
      if (v37 == *&v43 && v38 == v44)
      {
      }

      else
      {
        v50 = sub_264D6EF28();

        if ((v50 & 1) == 0)
        {
LABEL_14:

          goto LABEL_122;
        }
      }

      if (v40 == v46 && v39 == v45)
      {
      }

      else
      {
        v100 = sub_264D6EF28();

        if ((v100 & 1) == 0)
        {
          goto LABEL_122;
        }
      }

      if (v118 == v117 && v42 == v48)
      {

        goto LABEL_125;
      }

      v112 = sub_264D6EF28();

      if (v112)
      {
        goto LABEL_125;
      }

      goto LABEL_123;
    case 5u:
      sub_264D69B5C(v29, v9);
      v87 = *v9;
      v86 = v9[1];
      v88 = v9[2];
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        goto LABEL_57;
      }

      v89 = *(v27 + 2);
      if (v87 == *v27 && v86 == *(v27 + 1))
      {
      }

      else
      {
        v91 = sub_264D6EF28();

        if ((v91 & 1) == 0)
        {

          sub_264D6A170(v29);
          goto LABEL_58;
        }
      }

      v54 = sub_264D67AD4(v88, v89);

LABEL_89:
      sub_264D6A170(v29);
      return v54 & 1;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    case 7u:
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_52;
      }

      goto LABEL_57;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_57;
      }

LABEL_52:
      v92 = v29;
      goto LABEL_53;
    default:
      v30 = v29;
      sub_264D69B5C(v29, v23);
      v32 = *v23;
      v31 = *(v23 + 1);
      v34 = *(v23 + 2);
      v33 = *(v23 + 3);
      v35 = *(v23 + 4);
      if (!swift_getEnumCaseMultiPayload())
      {
        v95 = *(v27 + 2);
        v94 = *(v27 + 3);
        v96 = v27[4];
        if (v32 == *v27 && v31 == *(v27 + 1))
        {
        }

        else
        {
          v98 = sub_264D6EF28();

          if ((v98 & 1) == 0)
          {

LABEL_104:
            sub_264D6A170(v30);
            goto LABEL_58;
          }
        }

        if (v34 == v95 && v33 == v94)
        {
        }

        else
        {
          v106 = sub_264D6EF28();

          if ((v106 & 1) == 0)
          {
            goto LABEL_104;
          }
        }

        v54 = v35 == v96;
        sub_264D6A170(v30);
        return v54 & 1;
      }

      v29 = v30;
LABEL_57:
      sub_264D6B7D0(v29);
LABEL_58:
      v54 = 0;
      return v54 & 1;
  }
}

uint64_t type metadata accessor for STUserNotifications.NotificationType(uint64_t a1)
{
  result = qword_2812227B8;
  if (!qword_2812227B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264D69B5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for STUserNotifications.NotificationType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264D69BC0(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for STUserNotifications.NotificationType(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264D69C54, 0, 0);
}

uint64_t sub_264D69C54()
{
  sub_264D69B5C(v0[2], v0[4]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v19 = *(v0[4] + 32);
      v20 = objc_allocWithZone(MEMORY[0x277D4B908]);
      v21 = sub_264D6E958();

      v22 = sub_264D6E958();

      v23 = sub_264D6E958();

      v4 = [v20 initWithAskForTimeRequestIdentifier:v21 childName:v22 childDSID:v19 requestedResourceName:v23];

      break;
    case 2u:
      v15 = v0[4];
      v4 = [objc_allocWithZone(MEMORY[0x277D4B9A0]) init];
      v16 = sub_264D6E778();
      (*(*(v16 - 8) + 8))(v15, v16);
      break;
    case 3u:
      v17 = *(v0[4] + 48);
      v18 = objc_allocWithZone(MEMORY[0x277D4B8E8]);
      v11 = sub_264D6E958();

      v12 = sub_264D6E958();

      v13 = sub_264D6E958();

      v14 = [v18 initWithAskForTimeRequestIdentifier:v11 parentName:v12 requestedResourceName:v13 amountGranted:v17];
      goto LABEL_12;
    case 4u:
      v10 = objc_allocWithZone(MEMORY[0x277D4B900]);
      v11 = sub_264D6E958();

      v12 = sub_264D6E958();

      v13 = sub_264D6E958();

      v14 = [v10 initWithAskForTimeRequestIdentifier:v11 parentName:v12 requestedResourceName:v13];
LABEL_12:
      v4 = v14;

      break;
    case 5u:
      v24 = objc_allocWithZone(MEMORY[0x277D4B8D0]);
      v25 = sub_264D6E958();

      v26 = sub_264D6EA98();

      v4 = [v24 initWithRatingLimit:v25 bundleIdentifiers:v26];

      break;
    case 6u:
      v4 = [objc_allocWithZone(MEMORY[0x277D4B9A8]) init];
      [v4 setTimeLeft_];
      break;
    case 7u:
      v6 = MEMORY[0x277D4B9E8];
      goto LABEL_20;
    case 8u:
      v6 = MEMORY[0x277D4B9F0];
      goto LABEL_20;
    case 9u:
      v6 = MEMORY[0x277D4B920];
      goto LABEL_20;
    case 0xAu:
      v6 = MEMORY[0x277D4BA80];
      goto LABEL_20;
    case 0xBu:
      sub_264D6B68C();
      swift_allocError();
      *v7 = 1;
      swift_willThrow();

      v8 = v0[1];

      return v8();
    case 0xCu:
      v6 = MEMORY[0x277D4BAA0];
      goto LABEL_20;
    case 0xDu:
      v6 = MEMORY[0x277D4BAA8];
      goto LABEL_20;
    case 0xEu:
      v6 = MEMORY[0x277D4BAF0];
LABEL_20:
      v4 = [objc_allocWithZone(v6) init];
      break;
    default:
      v1 = *(v0[4] + 32);
      v2 = objc_allocWithZone(MEMORY[0x277D4B8C8]);
      v3 = sub_264D6E958();

      v4 = [v2 initWithIdentifier_];

      v5 = sub_264D6E958();

      [v4 setLimitDisplayName:v5 timeLeft:v1];

      break;
  }

  v27 = v0[1];

  return v27(v4);
}

uint64_t sub_264D6A170(uint64_t a1)
{
  v2 = type metadata accessor for STUserNotifications.NotificationType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264D6A1CC(uint64_t a1)
{
  v1[58] = a1;
  v2 = sub_264D6E8E8();
  v1[59] = v2;
  v1[60] = *(v2 - 8);
  v1[61] = swift_task_alloc();
  v3 = sub_264D6E918();
  v1[62] = v3;
  v1[63] = *(v3 - 8);
  v1[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264D6A2E8, 0, 0);
}

uint64_t sub_264D6A2E8()
{
  v1 = v0[58];
  v2 = [v1 notificationContent];
  v0[65] = v2;
  v0[2] = v0;
  v0[3] = sub_264D6A428;
  v3 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACFF0, &qword_264D72548);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_264D68CC0;
  v0[29] = &block_descriptor_2;
  v0[30] = v3;
  [v1 customizeNotificationContent:v2 withCompletionBlock:v0 + 26];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264D6A428()
{

  return MEMORY[0x2822009F8](sub_264D6A508, 0, 0);
}

uint64_t sub_264D6A508()
{
  v1 = [*(v0 + 464) identifier];
  if (!v1)
  {
    sub_264D6E988();
    v1 = sub_264D6E958();
  }

  v2 = *(v0 + 464);
  v3 = *(v0 + 520);
  v4 = [v2 trigger];
  v5 = [objc_opt_self() requestWithIdentifier:v1 content:v3 trigger:v4];
  *(v0 + 528) = v5;

  v6 = [v2 destinations];
  if (v6)
  {
    v7 = v6;
    [v5 setDestinations_];
  }

  if (qword_27FFAC3A8 != -1)
  {
    swift_once();
  }

  v8 = off_27FFACF70;
  v9 = [*(v0 + 464) notificationBundleIdentifier];
  v10 = sub_264D6E988();
  v12 = v11;

  if (v8[2])
  {
    v13 = sub_264D5B584(v10, v12);
    v15 = v14;

    if (v15)
    {
      v16 = *(v8[7] + 8 * v13);
      *(v0 + 536) = v16;
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 552;
      *(v0 + 88) = sub_264D6A834;
      v17 = swift_continuation_init();
      *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACFF8, &qword_264D72550);
      *(v0 + 272) = MEMORY[0x277D85DD0];
      *(v0 + 280) = 1107296256;
      *(v0 + 288) = sub_264D68CF4;
      *(v0 + 296) = &block_descriptor_20;
      *(v0 + 304) = v17;
      [v16 requestAuthorizationWithOptions:66 completionHandler:v0 + 272];

      return MEMORY[0x282200938](v0 + 80);
    }
  }

  else
  {
  }

  v18 = *(v0 + 520);
  sub_264D6B68C();
  swift_allocError();
  *v19 = 0;
  swift_willThrow();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_264D6A834()
{
  v1 = *(*v0 + 112);
  *(*v0 + 544) = v1;
  if (v1)
  {
    v2 = sub_264D6AF08;
  }

  else
  {
    v2 = sub_264D6A944;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264D6A944()
{
  if (*(v0 + 552))
  {
    v1 = *(v0 + 536);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 448;
    *(v0 + 152) = sub_264D6AAC8;
    v2 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAD000, &qword_264D72558);
    *(v0 + 336) = MEMORY[0x277D85DD0];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_264D68DC0;
    *(v0 + 360) = &block_descriptor_24;
    *(v0 + 368) = v2;
    [v1 getDeliveredNotificationsWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 144);
  }

  else
  {
    v3 = *(v0 + 528);
    v4 = *(v0 + 520);

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_264D6AAC8()
{

  return MEMORY[0x2822009F8](sub_264D6ABA8, 0, 0);
}

uint64_t sub_264D6ABA8()
{
  v1 = v0[56];
  if (v1 >> 62)
  {
LABEL_18:
    v2 = sub_264D6EC88();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26674CF10](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    sub_264D414E0(0, &qword_27FFAD008, 0x277D82BB8);
    v6 = [v5 request];
    v7 = sub_264D6EBE8();

    ++v3;
    if (v7)
    {
      v18 = v0[67];
      v19 = v0[66];
      v20 = v0[65];

      goto LABEL_13;
    }
  }

  v8 = v0[67];
  v9 = v0[66];
  v10 = v0[64];
  v23 = v0[65];
  v24 = v0[63];
  v11 = v0[61];
  v25 = v0[62];
  v13 = v0[59];
  v12 = v0[60];

  sub_264D414E0(0, &qword_27FFACC68, 0x277D85C78);
  v14 = sub_264D6EB78();
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = v9;
  v0[54] = sub_264D6B6F8;
  v0[55] = v15;
  v0[50] = MEMORY[0x277D85DD0];
  v0[51] = 1107296256;
  v0[52] = sub_264D54E08;
  v0[53] = &block_descriptor_27;
  v16 = _Block_copy(v0 + 50);
  aBlock = v8;
  v17 = v9;
  sub_264D6E8F8();
  v0[57] = MEMORY[0x277D84F90];
  sub_264D6B724(&qword_27FFACC98, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACCA0, &unk_264D72560);
  sub_264D6B76C();
  sub_264D6EC38();
  MEMORY[0x26674CD80](0, v10, v11, v16);
  _Block_release(v16);

  (*(v12 + 8))(v11, v13);
  (*(v24 + 8))(v10, v25);

LABEL_13:

  v21 = v0[1];

  return v21();
}

uint64_t sub_264D6AF08(uint64_t a1)
{
  v2 = v1[67];
  v3 = v1[66];
  v4 = v1[65];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

void sub_264D6AFA8(id a1)
{
  if (qword_27FFAC3A8 != -1)
  {
    swift_once();
  }

  v2 = off_27FFACF70;
  v3 = [a1 notificationBundleIdentifier];
  v4 = sub_264D6E988();
  v6 = v5;

  if (v2[2])
  {
    v7 = sub_264D5B584(v4, v6);
    v9 = v8;

    if (v9)
    {
      v10 = *(v2[7] + 8 * v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFACFE8, &qword_264D72540);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_264D72160;
      v12 = v10;
      v13 = [a1 identifier];
      v14 = sub_264D6E988();
      v16 = v15;

      *(v11 + 32) = v14;
      *(v11 + 40) = v16;
      v17 = sub_264D6EA98();

      [v12 removeDeliveredNotificationsWithIdentifiers_];

      return;
    }
  }

  else
  {
  }

  sub_264D6B68C();
  swift_allocError();
  *v18 = 0;
  swift_willThrow();
}

unint64_t sub_264D6B198()
{
  result = qword_27FFACF88;
  if (!qword_27FFACF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACF88);
  }

  return result;
}

void sub_264D6B24C(uint64_t a1)
{
  sub_264D6B5A4(319, &qword_27FFACF90, MEMORY[0x277D839F8], "activationIdentifier resourceName timeRemaining ");
  if (v1 <= 0x3F)
  {
    sub_264D6B340(319);
    if (v2 <= 0x3F)
    {
      sub_264D6B45C();
      if (v3 <= 0x3F)
      {
        sub_264D6B4A4(319);
        if (v4 <= 0x3F)
        {
          sub_264D6B5A4(319, &qword_27FFACFB8, MEMORY[0x277D837D0], "requestIdentifier parentName resourceName ");
          if (v5 <= 0x3F)
          {
            sub_264D6B604(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_264D6B340(uint64_t a1)
{
  if (!qword_27FFACF98)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFACFA0, &qword_264D724B8);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27FFACF98);
    }
  }
}

void sub_264D6B45C()
{
  if (!qword_27FFACFA8)
  {
    v0 = sub_264D6E778();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFACFA8);
    }
  }
}

void sub_264D6B4A4(uint64_t a1)
{
  if (!qword_27FFACFB0)
  {
    MEMORY[0x28223BE20](a1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27FFACFB0);
    }
  }
}

void sub_264D6B5A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_264D6B604(uint64_t a1)
{
  if (!qword_27FFACFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFACFC8, &qword_264D724C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FFACFC0);
    }
  }
}

unint64_t sub_264D6B68C()
{
  result = qword_27FFACFE0;
  if (!qword_27FFACFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACFE0);
  }

  return result;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264D6B724(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_264D6B76C()
{
  result = qword_27FFACCA8;
  if (!qword_27FFACCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFACCA0, &unk_264D72560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFACCA8);
  }

  return result;
}

uint64_t sub_264D6B7D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAD018, &unk_264D72570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t STRestrictionsSwift.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_264D6F028();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
    sub_264D6BAD4();
    sub_264D6EF38();
    sub_264D414E0(0, &qword_27FFAD028, 0x277CCAAC8);
    sub_264D414E0(0, &qword_27FFAD030, 0x277D4BA58);
    v5 = sub_264D6EB48();
    if (v5)
    {
      v7 = v5;
      sub_264D403BC(v11, v12);
      __swift_destroy_boxed_opaque_existential_0(v13);
      *a2 = v7;
    }

    else
    {
      v8 = sub_264D6ED38();
      swift_allocError();
      v10 = v9;
      __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
      sub_264D6F018();
      sub_264D6ED28();
      (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D84168], v8);
      swift_willThrow();
      sub_264D403BC(v11, v12);
      __swift_destroy_boxed_opaque_existential_0(v13);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_264D6BAD4()
{
  result = qword_27FFAD020;
  if (!qword_27FFAD020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAD020);
  }

  return result;
}

uint64_t STRestrictionsSwift.encode(to:)(void *a1)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_264D6F048();
  v10[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v10];
  v4 = v10[0];
  if (v3)
  {
    v5 = sub_264D6E7A8();
    v7 = v6;

    v10[0] = v5;
    v10[1] = v7;
    __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_264D6BCC8();
    sub_264D6EF48();
    sub_264D403BC(v5, v7);
  }

  else
  {
    v8 = v4;
    sub_264D6E788();

    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_264D6BCC8()
{
  result = qword_27FFAD038;
  if (!qword_27FFAD038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFAD038);
  }

  return result;
}

uint64_t sub_264D6BD80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_264D6BDC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t STExpressIntroduction.Internal.DefaultsSavingSettingsStore.init(internal:settingsDefaultsDataSource:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  sub_264D6E838();
  v6 = type metadata accessor for STExpressIntroduction.Internal.DefaultsSavingSettingsStore(0);
  sub_264D34A30(a1, a3 + *(v6 + 20));
  v7 = a3 + *(v6 + 24);

  return sub_264D34A30(a2, v7);
}

uint64_t type metadata accessor for STExpressIntroduction.Internal.DefaultsSavingSettingsStore(uint64_t a1)
{
  result = qword_2812224B0;
  if (!qword_2812224B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t STExpressIntroduction.Internal.DefaultsSavingSettingsStore.load(forUser:withDefaults:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 80) = a1;
  *(v4 + 104) = type metadata accessor for STExpressIntroduction.STSettings(0);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAC950, &qword_264D709A0);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = type metadata accessor for STExpressIntroduction.SettingsDefaults(0);
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a2;
  *(v4 + 200) = v6;
  *(v4 + 208) = v7;
  *(v4 + 41) = *(a2 + 8);

  return MEMORY[0x2822009F8](sub_264D6C080, 0, 0);
}

uint64_t sub_264D6C080()
{
  v84 = v0;
  sub_264D6E53C(*(v0 + 88), *(v0 + 200), type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v1 = sub_264D6E828();
  v2 = sub_264D6EB38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 41);
    v4 = *(v0 + 200);
    v5 = *(v0 + 208);
    v6 = *(v0 + 192);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v83 = v8;
    *v7 = 136380931;
    *(v0 + 64) = v5;
    *(v0 + 72) = v3;
    v9 = sub_264D6E998();
    v11 = sub_264D3FD80(v9, v10, &v83);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    sub_264D6E53C(v4, v6, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v12 = sub_264D6E998();
    v14 = v13;
    sub_264D6E5A4(v4, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v15 = sub_264D3FD80(v12, v14, &v83);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_264D33000, v1, v2, "Loading for user %{private}s with defaults %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v8, -1, -1);
    MEMORY[0x26674D8B0](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 200);

    sub_264D6E5A4(v16, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  sub_264D6E53C(*(v0 + 88), *(v0 + 184), type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v17 = sub_264D6E828();
  v18 = sub_264D6EB38();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 184);
  if (v19)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v83 = v22;
    *v21 = 136446210;
    v23 = *v20;
    v24 = *(v20 + 8);
    *(v0 + 48) = *v20;
    *(v0 + 56) = v24;
    v25 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAD058, &qword_264D72688);
    v26 = sub_264D6E998();
    v28 = v27;
    sub_264D6E5A4(v20, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v29 = sub_264D3FD80(v26, v28, &v83);

    *(v21 + 4) = v29;
    _os_log_impl(&dword_264D33000, v17, v18, "Defaults Content Restrictions: %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x26674D8B0](v22, -1, -1);
    MEMORY[0x26674D8B0](v21, -1, -1);
  }

  else
  {

    sub_264D6E5A4(v20, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  sub_264D6E53C(*(v0 + 88), *(v0 + 176), type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v30 = sub_264D6E828();
  v31 = sub_264D6EB38();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 176);
  if (v32)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v83 = v35;
    *v34 = 136446210;
    *(v0 + 30) = *(v33 + 9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAD050, &qword_264D72680);
    v36 = sub_264D6E998();
    v38 = v37;
    sub_264D6E5A4(v33, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v39 = sub_264D3FD80(v36, v38, &v83);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_264D33000, v30, v31, "Defaults Communication Safety: %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x26674D8B0](v35, -1, -1);
    MEMORY[0x26674D8B0](v34, -1, -1);
  }

  else
  {

    sub_264D6E5A4(v33, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  sub_264D6E53C(*(v0 + 88), *(v0 + 168), type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v40 = sub_264D6E828();
  v41 = sub_264D6EB38();
  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v0 + 168);
  if (v42)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v83 = v45;
    *v44 = 136446210;
    v46 = *(v43 + 11);
    *(v0 + 27) = *(v43 + 13);
    *(v0 + 25) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAD048, &qword_264D72678);
    v47 = sub_264D6E998();
    v49 = v48;
    sub_264D6E5A4(v43, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v50 = sub_264D3FD80(v47, v49, &v83);

    *(v44 + 4) = v50;
    _os_log_impl(&dword_264D33000, v40, v41, "Defaults Communication Limits: %{public}s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x26674D8B0](v45, -1, -1);
    MEMORY[0x26674D8B0](v44, -1, -1);
  }

  else
  {

    sub_264D6E5A4(v43, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  sub_264D6E53C(*(v0 + 88), *(v0 + 160), type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v51 = sub_264D6E828();
  v52 = sub_264D6EB38();
  v53 = os_log_type_enabled(v51, v52);
  v54 = *(v0 + 160);
  if (v53)
  {
    v55 = *(v0 + 136);
    v56 = *(v0 + 144);
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v83 = v58;
    *v57 = 136446210;
    sub_264D5D24C(v54 + *(v56 + 28), v55);
    v59 = sub_264D6E998();
    v61 = v60;
    sub_264D6E5A4(v54, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v62 = sub_264D3FD80(v59, v61, &v83);

    *(v57 + 4) = v62;
    _os_log_impl(&dword_264D33000, v51, v52, "Defaults App and Website Activity: %{public}s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x26674D8B0](v58, -1, -1);
    MEMORY[0x26674D8B0](v57, -1, -1);
  }

  else
  {

    sub_264D6E5A4(v54, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  sub_264D6E53C(*(v0 + 88), *(v0 + 152), type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v63 = sub_264D6E828();
  v64 = sub_264D6EB38();
  v65 = os_log_type_enabled(v63, v64);
  v66 = *(v0 + 152);
  if (v65)
  {
    v67 = *(v0 + 144);
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v83 = v69;
    *v68 = 136446210;
    *(v0 + 28) = *(v66 + *(v67 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFAD040, &qword_264D72670);
    v70 = sub_264D6E998();
    v72 = v71;
    sub_264D6E5A4(v66, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v73 = sub_264D3FD80(v70, v72, &v83);

    *(v68 + 4) = v73;
    _os_log_impl(&dword_264D33000, v63, v64, "Defaults Screen Distance: %{public}s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x26674D8B0](v69, -1, -1);
    MEMORY[0x26674D8B0](v68, -1, -1);
  }

  else
  {

    sub_264D6E5A4(v66, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  v74 = *(v0 + 96);
  v75 = type metadata accessor for STExpressIntroduction.Internal.DefaultsSavingSettingsStore(0);
  *(v0 + 216) = v75;
  v76 = (v74 + *(v75 + 24));
  v77 = v76[3];
  v78 = v76[4];
  __swift_project_boxed_opaque_existential_1Tm(v76, v77);
  v82 = (*(v78 + 16) + **(v78 + 16));
  v79 = swift_task_alloc();
  *(v0 + 224) = v79;
  *v79 = v0;
  v79[1] = sub_264D6CA2C;
  v80 = *(v0 + 88);

  return v82(v80, v77, v78);
}

uint64_t sub_264D6CA2C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_264D6CBF8, 0, 0);
  }
}

uint64_t sub_264D6CBF8()
{
  v1 = *(v0 + 41);
  v2 = *(v0 + 208);
  v3 = (*(v0 + 96) + *(*(v0 + 216) + 20));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v4);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  v10 = (*(v5 + 8) + **(v5 + 8));
  v6 = swift_task_alloc();
  *(v0 + 232) = v6;
  *v6 = v0;
  v6[1] = sub_264D6CD54;
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);

  return v10(v7, v0 + 16, v8, v4, v5);
}

uint64_t sub_264D6CD54()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_264D6D0F4;
  }

  else
  {
    v2 = sub_264D6CE68;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264D6CE68()
{
  v20 = v0;
  sub_264D6E53C(*(v0 + 80), *(v0 + 120), type metadata accessor for STExpressIntroduction.STSettings);
  v1 = sub_264D6E828();
  v2 = sub_264D6EB38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 41);
    v4 = *(v0 + 208);
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136380931;
    *(v0 + 32) = v4;
    *(v0 + 40) = v3;
    v9 = sub_264D6E998();
    v11 = sub_264D3FD80(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2081;
    sub_264D6E53C(v5, v6, type metadata accessor for STExpressIntroduction.STSettings);
    v12 = sub_264D6E998();
    v14 = v13;
    sub_264D6E5A4(v5, type metadata accessor for STExpressIntroduction.STSettings);
    v15 = sub_264D3FD80(v12, v14, &v19);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_264D33000, v1, v2, "Loaded for user %{private}s settings: %{private}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v8, -1, -1);
    MEMORY[0x26674D8B0](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 120);

    sub_264D6E5A4(v16, type metadata accessor for STExpressIntroduction.STSettings);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_264D6D0F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t STExpressIntroduction.Internal.DefaultsSavingSettingsStore.save(settings:forUser:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 80) = type metadata accessor for STExpressIntroduction.STSettings(0);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a2;
  *(v3 + 104) = v5;
  *(v3 + 112) = v6;
  *(v3 + 25) = *(a2 + 8);

  return MEMORY[0x2822009F8](sub_264D6D298, 0, 0);
}

uint64_t sub_264D6D298()
{
  v28 = v0;
  sub_264D6E53C(*(v0 + 64), *(v0 + 104), type metadata accessor for STExpressIntroduction.STSettings);
  v1 = sub_264D6E828();
  v2 = sub_264D6EB38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 25);
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136380931;
    *(v0 + 48) = v5;
    *(v0 + 56) = v3;
    v9 = sub_264D6E998();
    v11 = sub_264D3FD80(v9, v10, &v27);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2081;
    sub_264D6E53C(v4, v6, type metadata accessor for STExpressIntroduction.STSettings);
    v12 = sub_264D6E998();
    v14 = v13;
    sub_264D6E5A4(v4, type metadata accessor for STExpressIntroduction.STSettings);
    v15 = sub_264D3FD80(v12, v14, &v27);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_264D33000, v1, v2, "Saving for user %{private}s settings %{private}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v8, -1, -1);
    MEMORY[0x26674D8B0](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 104);

    sub_264D6E5A4(v16, type metadata accessor for STExpressIntroduction.STSettings);
  }

  v17 = *(v0 + 25);
  v18 = *(v0 + 112);
  v19 = *(v0 + 72);
  v20 = (v19 + *(type metadata accessor for STExpressIntroduction.Internal.DefaultsSavingSettingsStore(0) + 20));
  v21 = v20[3];
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_1Tm(v20, v21);
  *(v0 + 16) = v18;
  *(v0 + 24) = v17;
  v26 = (*(v22 + 16) + **(v22 + 16));
  v23 = swift_task_alloc();
  *(v0 + 120) = v23;
  *v23 = v0;
  v23[1] = sub_264D6D5AC;
  v24 = *(v0 + 64);

  return v26(v24, v0 + 16, v21, v22);
}

uint64_t sub_264D6D5AC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_264D4EE80;
  }

  else
  {
    v2 = sub_264D6D6C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264D6D6C0()
{
  v20 = v0;
  sub_264D6E53C(*(v0 + 64), *(v0 + 88), type metadata accessor for STExpressIntroduction.STSettings);
  v1 = sub_264D6E828();
  v2 = sub_264D6EB38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 25);
    v4 = *(v0 + 112);
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136380931;
    *(v0 + 32) = v4;
    *(v0 + 40) = v3;
    v9 = sub_264D6E998();
    v11 = sub_264D3FD80(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2081;
    sub_264D6E53C(v5, v6, type metadata accessor for STExpressIntroduction.STSettings);
    v12 = sub_264D6E998();
    v14 = v13;
    sub_264D6E5A4(v5, type metadata accessor for STExpressIntroduction.STSettings);
    v15 = sub_264D3FD80(v12, v14, &v19);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_264D33000, v1, v2, "Saved for user %{private}s settings %{private}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v8, -1, -1);
    MEMORY[0x26674D8B0](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 88);

    sub_264D6E5A4(v16, type metadata accessor for STExpressIntroduction.STSettings);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t STExpressIntroduction.Internal.DefaultsSavingSettingsStore.save(defaults:forUser:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 80) = type metadata accessor for STExpressIntroduction.SettingsDefaults(0);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a2;
  *(v3 + 104) = v5;
  *(v3 + 112) = v6;
  *(v3 + 25) = *(a2 + 8);

  return MEMORY[0x2822009F8](sub_264D6D9BC, 0, 0);
}

uint64_t sub_264D6D9BC()
{
  v27 = v0;
  sub_264D6E53C(*(v0 + 64), *(v0 + 104), type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v1 = sub_264D6E828();
  v2 = sub_264D6EB38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 25);
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136380931;
    *(v0 + 48) = v5;
    *(v0 + 56) = v3;
    v9 = sub_264D6E998();
    v11 = sub_264D3FD80(v9, v10, &v26);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    sub_264D6E53C(v4, v6, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v12 = sub_264D6E998();
    v14 = v13;
    sub_264D6E5A4(v4, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v15 = sub_264D3FD80(v12, v14, &v26);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_264D33000, v1, v2, "Saving for user %{private}s defaults %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v8, -1, -1);
    MEMORY[0x26674D8B0](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 104);

    sub_264D6E5A4(v16, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  v17 = *(v0 + 72);
  v18 = type metadata accessor for STExpressIntroduction.Internal.DefaultsSavingSettingsStore(0);
  *(v0 + 120) = v18;
  v19 = (v17 + *(v18 + 24));
  v20 = v19[3];
  v21 = v19[4];
  __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  v25 = (*(v21 + 16) + **(v21 + 16));
  v22 = swift_task_alloc();
  *(v0 + 128) = v22;
  *v22 = v0;
  v22[1] = sub_264D6DCBC;
  v23 = *(v0 + 64);

  return v25(v23, v20, v21);
}

uint64_t sub_264D6DCBC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_264D6DE14, 0, 0);
  }
}

uint64_t sub_264D6DE14()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 112);
  v3 = (*(v0 + 72) + *(*(v0 + 120) + 20));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v4);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  v9 = (*(v5 + 24) + **(v5 + 24));
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_264D6DF70;
  v7 = *(v0 + 64);

  return v9(v7, v0 + 16, v4, v5);
}

uint64_t sub_264D6DF70()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_264D6E2C4;
  }

  else
  {
    v2 = sub_264D6E084;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264D6E084()
{
  v20 = v0;
  sub_264D6E53C(*(v0 + 64), *(v0 + 88), type metadata accessor for STExpressIntroduction.SettingsDefaults);
  v1 = sub_264D6E828();
  v2 = sub_264D6EB38();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 25);
    v4 = *(v0 + 112);
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136380931;
    *(v0 + 32) = v4;
    *(v0 + 40) = v3;
    v9 = sub_264D6E998();
    v11 = sub_264D3FD80(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    sub_264D6E53C(v5, v6, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v12 = sub_264D6E998();
    v14 = v13;
    sub_264D6E5A4(v5, type metadata accessor for STExpressIntroduction.SettingsDefaults);
    v15 = sub_264D3FD80(v12, v14, &v19);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_264D33000, v1, v2, "Saved for user %{private}s defaults %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26674D8B0](v8, -1, -1);
    MEMORY[0x26674D8B0](v7, -1, -1);
  }

  else
  {
    v16 = *(v0 + 88);

    sub_264D6E5A4(v16, type metadata accessor for STExpressIntroduction.SettingsDefaults);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_264D6E2C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264D6E344(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_264D3D1A4;

  return STExpressIntroduction.Internal.DefaultsSavingSettingsStore.load(forUser:withDefaults:)(a1, a2, a3);
}

uint64_t sub_264D6E3F4(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264D41720;

  return STExpressIntroduction.Internal.DefaultsSavingSettingsStore.save(settings:forUser:)(a1, a2);
}

uint64_t sub_264D6E498(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264D41720;

  return STExpressIntroduction.Internal.DefaultsSavingSettingsStore.save(defaults:forUser:)(a1, a2);
}

uint64_t sub_264D6E53C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_264D6E5A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264D6E62C(uint64_t a1)
{
  result = sub_264D6E848();
  if (v2 <= 0x3F)
  {
    result = sub_264D40E70(319, qword_281222788, &protocol descriptor for STExpressIntroduction.STSettingsStore);
    if (v3 <= 0x3F)
    {
      result = sub_264D40E70(319, &unk_2812224C0, &protocol descriptor for STExpressIntroduction.Internal.SettingsDefaultsDataSource);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}