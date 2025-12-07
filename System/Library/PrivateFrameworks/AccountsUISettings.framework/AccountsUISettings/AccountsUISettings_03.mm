char *sub_23DD277D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA88, &qword_23DD45D38);
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

_BYTE **sub_23DD278C4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_23DD278D4(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_23DD278F4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_23DD27928(uint64_t a1, char a2)
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

  sub_23DD425C8();
LABEL_9:
  result = sub_23DD42558();
  *v2 = result;
  return result;
}

double sub_23DD279C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_23DCEA154(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23DD28A90();
      v10 = v12;
    }

    sub_23DD2AD18((*(v10 + 56) + 32 * v8), a3);
    sub_23DD28290(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_23DD27A6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED10, &qword_23DD46338);
  v33 = v4;
  result = sub_23DD425E8();
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
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_23DCEE260(v24, v34);
      }

      else
      {
        sub_23DCEE1FC(v24, v34);
      }

      sub_23DD42688();
      sub_23DD421D8();
      result = sub_23DD426A8();
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
      result = sub_23DCEE260(v34, *(v7 + 56) + 40 * v15);
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

uint64_t sub_23DD27D30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED08, &qword_23DD46330);
  v34 = v4;
  result = sub_23DD425E8();
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

      sub_23DD42688();
      sub_23DD421D8();
      result = sub_23DD426A8();
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

uint64_t sub_23DD27FD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAC8, &qword_23DD45EF8);
  v33 = v4;
  result = sub_23DD425E8();
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
        sub_23DD2AD18(v24, v34);
      }

      else
      {
        sub_23DCEFBF0(v24, v34);
      }

      sub_23DD42688();
      sub_23DD421D8();
      result = sub_23DD426A8();
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
      result = sub_23DD2AD18(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_23DD28290(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23DD424C8() + 1) & ~v5;
    do
    {
      sub_23DD42688();

      sub_23DD421D8();
      v10 = sub_23DD426A8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23DD28440(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23DCEA154(a2, a3);
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
      sub_23DD27D30(v16, a4 & 1);
      v11 = sub_23DCEA154(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_23DD42678();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_23DD28920();
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

_OWORD *sub_23DD285BC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23DCEA154(a2, a3);
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
      sub_23DD28A90();
      v11 = v19;
      goto LABEL_8;
    }

    sub_23DD27FD8(v16, a4 & 1);
    v11 = sub_23DCEA154(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_23DD42678();
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

    return sub_23DD2AD18(a1, v22);
  }

  else
  {
    sub_23DD2870C(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_23DD2870C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23DD2AD18(a4, (a5[7] + 32 * a1));
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

void *sub_23DD28778()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED10, &qword_23DD46338);
  v2 = *v0;
  v3 = sub_23DD425D8();
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
        v22 = 40 * v17;
        sub_23DCEE1FC(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23DCEE260(v25, *(v4 + 56) + v22);
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

void *sub_23DD28920()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED08, &qword_23DD46330);
  v2 = *v0;
  v3 = sub_23DD425D8();
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

void *sub_23DD28A90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAC8, &qword_23DD45EF8);
  v2 = *v0;
  v3 = sub_23DD425D8();
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
        sub_23DCEFBF0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23DD2AD18(v25, (*(v4 + 56) + v22));
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

void (*sub_23DD28C34(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EEFDD80](a2, a3);
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
    return sub_23DD28CB4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_23DD28CBC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EEFDD80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_23DD28D3C;
  }

  __break(1u);
  return result;
}

uint64_t sub_23DD28D6C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23DD42648() & 1;
  }
}

uint64_t sub_23DD28DE0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_23DD28ED4;

  return v5(v2 + 32);
}

uint64_t sub_23DD28ED4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

void *sub_23DD28FE8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a4@<X8>)
{
  v7 = sub_23DD41528();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v14[1] = *a2;
  v15 = *(a2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECC0, &qword_23DD462B8);
  *a4 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC90, &qword_23DD462A8);
  result = MEMORY[0x23EEFD790](v14, v12);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v14[0] + 16))
  {
    (*(v8 + 16))(v10, v14[0] + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v11, v7);

    swift_getAtKeyPath();
    return (*(v8 + 8))(v10, v7);
  }

  __break(1u);
  return result;
}

void *sub_23DD2917C@<X0>(uint64_t a1@<X2>, unint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v9[1] = *a1;
  v10 = *(a1 + 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC90, &qword_23DD462A8);
  result = MEMORY[0x23EEFD790](v9, v5);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v9[0];
    if (v4 < *(v9[0] + 16))
    {
      v8 = sub_23DD41528();
      (*(*(v8 - 8) + 16))(a3, v7 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v4, v8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23DD29254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = *a5;
  v10[1] = *a4;
  v11 = *(a4 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC90, &qword_23DD462A8);
  MEMORY[0x23EEFD790](v10);
  v7 = v10[0];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_23DD28D58(v7);
  v7 = result;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v6 < v7[2])
  {
    v9 = sub_23DD41528();
    (*(*(v9 - 8) + 24))(v7 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)) + *(*(v9 - 8) + 72) * v6, a1, v9);
    v10[0] = v7;
    return sub_23DD41F68();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_23DD29358@<X0>(uint64_t a1@<X2>, unint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a2;
  v10[1] = *a1;
  v11 = *(a1 + 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBB8, &qword_23DD46148);
  result = MEMORY[0x23EEFD790](v10, v5);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(v10[0] + 16))
  {
    v7 = v10[0] + 16 * v4;
    v9 = *(v7 + 32);
    v8 = *(v7 + 40);

    *a3 = v9;
    a3[1] = v8;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_23DD293F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *a5;
  v11[1] = *a4;
  v12 = *(a4 + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBB8, &qword_23DD46148);
  MEMORY[0x23EEFD790](v11);
  v8 = v11[0];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_23DD28D44(v8);
  v8 = result;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v7 < *(v8 + 16))
  {
    v10 = v8 + 16 * v7;
    *(v10 + 32) = v6;
    *(v10 + 40) = v5;

    v11[0] = v8;
    return sub_23DD41F68();
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_23DD294C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED10, &qword_23DD46338);
    v3 = sub_23DD425F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_23DCFD8B0(v4, &v13, &qword_27E30ED18, &unk_23DD46340);
      v5 = v13;
      v6 = v14;
      result = sub_23DCEA154(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23DCEE260(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_23DD295FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED08, &qword_23DD46330);
    v3 = sub_23DD425F8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23DCEA154(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_23DD29700(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED00, &qword_23DD46328);
    v3 = sub_23DD425F8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_23DCEA210(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_23DD297F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB20, &qword_23DD46078);
    v3 = sub_23DD425F8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_23DCEA154(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_23DD298FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAA8, &qword_23DD45D60);
    v3 = sub_23DD425F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_23DCFD8B0(v4, v13, &qword_27E30EAA0, &unk_23DD45D50);
      result = sub_23DCEA1CC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_23DD2AD18(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_23DD29A38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAC8, &qword_23DD45EF8);
    v3 = sub_23DD425F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_23DCFD8B0(v4, &v13, &qword_27E30EAD0, &qword_23DD45F00);
      v5 = v13;
      v6 = v14;
      result = sub_23DCEA154(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23DD2AD18(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_23DD29B68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAF8, &qword_23DD45F28);
    v3 = sub_23DD425F8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23DCEA154(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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

uint64_t sub_23DD29CB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23DD2CE34;

  return sub_23DD12C60(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_23DD29D8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DD2CE34;

  return sub_23DD28DE0(a1, v4);
}

void sub_23DD29E44(char a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_23DD10698(a1, v5, v6, v7, v1 + v4, v8);
}

id sub_23DD29EF4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_23DD42138();
  v2 = [v0 persistentDomainForName_];

  if (v2)
  {
    v3 = sub_23DD42118();

    if (*(v3 + 16) && (v4 = sub_23DCEA154(0xD000000000000014, 0x800000023DD4C040), (v5 & 1) != 0))
    {
      sub_23DCEFBF0(*(v3 + 56) + 32 * v4, v13);

      if (swift_dynamicCast() & 1) != 0 && (v12)
      {
        LOBYTE(v6) = 1;
        return (v6 & 1);
      }
    }

    else
    {
    }
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v8 = result;
    v6 = MobileGestalt_copy_regionCode_obj();

    if (v6)
    {
      v9 = sub_23DD42178();
      v11 = v10;

      if (v9 == 18499 && v11 == 0xE200000000000000)
      {

        LOBYTE(v6) = 1;
      }

      else
      {
        LOBYTE(v6) = sub_23DD42648();
      }
    }

    return (v6 & 1);
  }

  __break(1u);
  return result;
}

id sub_23DD2A0CC()
{
  v9[3] = &type metadata for AccountAddViewModel.DimpleKey;
  v9[4] = sub_23DD2AD28();
  v0 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  if (v0)
  {
    return 0;
  }

  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 isFeatureSupported];

  if (!v3)
  {
    return 0;
  }

  v4 = [v1 sharedInstance];
  v5 = [v4 isFeatureAvailable];

  if (!v5)
  {
    return 0;
  }

  v6 = [v1 sharedInstance];
  v7 = [v6 isFeatureEnabled];

  return v7;
}

void sub_23DD2A1CC(uint64_t a1, unint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v82 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA90, &qword_23DD45D40);
  MEMORY[0x28223BE20](v7 - 8);
  v81 = &v77 - v8;
  v9 = sub_23DD41658();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v77 - v14;
  if (sub_23DD42178() == a1 && v16 == a2)
  {

    if (sub_23DD2A0CC())
    {
      goto LABEL_7;
    }
  }

  else
  {
    v18 = sub_23DD42648();

    if (v18 & 1) != 0 && (sub_23DD2A0CC())
    {
LABEL_7:
      if (qword_2814FD160 != -1)
      {
        swift_once();
      }

      v19 = __swift_project_value_buffer(v9, qword_2814FD168);
      swift_beginAccess();
      (*(v10 + 16))(v15, v19, v9);
      v20 = sub_23DD42338();
      v21 = sub_23DD41638();
      v22 = os_log_type_enabled(v21, v20);
      v80 = a4;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v83[0] = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_23DD2731C(a1, a2, v83);
        _os_log_impl(&dword_23DCDB000, v21, v20, "AccountAddViewModel.ratchet(for:completion:) Presenting ratchet for account type %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x23EEFE6D0](v24, -1, -1);
        MEMORY[0x23EEFE6D0](v23, -1, -1);
      }

      (*(v10 + 8))(v15, v9);
      v25 = objc_allocWithZone(MEMORY[0x277CD47A8]);
      v26 = sub_23DD42138();
      v79 = [v25 initWithIdentifier_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA98, &qword_23DD45D48);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23DD44170;
      LODWORD(v83[0]) = 9;
      sub_23DD424F8();
      v28 = sub_23DD42138();
      v29 = objc_opt_self();
      v30 = [v29 bundleWithIdentifier_];

      if (v30)
      {
        v31 = sub_23DD42138();
        v32 = sub_23DD42138();
        v33 = [v30 localizedStringForKey:v31 value:v32 table:0];

        v78 = v33;
        v34 = sub_23DD42178();
        *(inited + 96) = MEMORY[0x277D837D0];
        *(inited + 72) = v34;
        *(inited + 80) = v35;
        LODWORD(v83[0]) = 9;
        sub_23DD424F8();
        v36 = sub_23DD42138();
        v37 = [v29 bundleWithIdentifier_];

        if (v37)
        {
          v38 = sub_23DD42138();
          v39 = sub_23DD42138();
          v40 = [v37 localizedStringForKey:v38 value:v39 table:0];

          v77 = v40;
          v41 = sub_23DD42178();
          *(inited + 168) = MEMORY[0x277D837D0];
          *(inited + 144) = v41;
          *(inited + 152) = v42;
          LODWORD(v83[0]) = 11;
          sub_23DD424F8();
          v43 = sub_23DD42138();
          v44 = [v29 bundleWithIdentifier_];

          if (v44)
          {
            v45 = sub_23DD42138();
            v46 = sub_23DD42138();
            v47 = [v44 localizedStringForKey:v45 value:v46 table:0];

            v48 = sub_23DD42178();
            *(inited + 240) = MEMORY[0x277D837D0];
            *(inited + 216) = v48;
            *(inited + 224) = v49;
            LODWORD(v83[0]) = 0;
            sub_23DD424F8();
            v50 = sub_23DD42138();
            v51 = [v29 bundleWithIdentifier_];

            if (v51)
            {
              v52 = sub_23DD42138();
              v53 = sub_23DD42138();
              v54 = [v51 localizedStringForKey:v52 value:v53 table:0];

              v55 = sub_23DD42178();
              *(inited + 312) = MEMORY[0x277D837D0];
              *(inited + 288) = v55;
              *(inited + 296) = v56;
              LODWORD(v83[0]) = 1;
              sub_23DD424F8();
              v57 = sub_23DD42138();
              v58 = [v29 bundleWithIdentifier_];

              if (v58)
              {
                v59 = sub_23DD42138();
                v60 = sub_23DD42138();
                v61 = [v58 localizedStringForKey:v59 value:v60 table:0];

                v62 = sub_23DD42178();
                *(inited + 384) = MEMORY[0x277D837D0];
                *(inited + 360) = v62;
                *(inited + 368) = v63;
                LODWORD(v83[0]) = 2;
                sub_23DD424F8();
                v64 = v81;
                sub_23DD41248();
                v65 = sub_23DD41258();
                v66 = *(v65 - 8);
                if ((*(v66 + 48))(v64, 1, v65) != 1)
                {

                  *(inited + 456) = v65;
                  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 432));
                  (*(v66 + 32))(boxed_opaque_existential_1, v64, v65);
                  sub_23DD298FC(inited);
                  swift_setDeallocating();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAA0, &unk_23DD45D50);
                  swift_arrayDestroy();
                  v68 = sub_23DD42108();

                  v69 = swift_allocObject();
                  v70 = v80;
                  *(v69 + 16) = v82;
                  *(v69 + 24) = v70;
                  v83[4] = sub_23DD2ACE8;
                  v83[5] = v69;
                  v83[0] = MEMORY[0x277D85DD0];
                  v83[1] = 1107296256;
                  v83[2] = sub_23DD0FF54;
                  v83[3] = &block_descriptor_439;
                  v71 = _Block_copy(v83);

                  v72 = v79;
                  [v79 armWithOptions:v68 completion:v71];
                  _Block_release(v71);

                  return;
                }

                goto LABEL_29;
              }

LABEL_28:
              __break(1u);
LABEL_29:
              __break(1u);
              return;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_26;
    }
  }

  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v73 = __swift_project_value_buffer(v9, qword_2814FD168);
  swift_beginAccess();
  (*(v10 + 16))(v13, v73, v9);
  v74 = sub_23DD42338();
  v75 = sub_23DD41638();
  if (os_log_type_enabled(v75, v74))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_23DCDB000, v75, v74, "AccountAddViewModel.ratchet(for:completion:) no need to present ratchet, moving on", v76, 2u);
    MEMORY[0x23EEFE6D0](v76, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v82(1);
}

_OWORD *sub_23DD2AD18(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_23DD2AD28()
{
  result = qword_27E30EAB0;
  if (!qword_27E30EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EAB0);
  }

  return result;
}

uint64_t sub_23DD2AD7C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_23DD42648() & 1;
  }
}

uint64_t sub_23DD2ADE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23DD41258();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v33 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  *&v39[0] = a1;
  *(&v39[0] + 1) = a2;
  *&v40 = 46;
  *(&v40 + 1) = 0xE100000000000000;
  sub_23DCF4570();
  if (!*(sub_23DD42458() + 16))
  {

    return 0;
  }

  v14 = sub_23DD421A8();
  v16 = v15;

  v17 = sub_23DD42138();
  v18 = NSClassFromString(v17);

  if (!v18 || (v36 = v14, v19 = [objc_opt_self() bundleForClass_], v20 = sub_23DD42138(), v21 = sub_23DD42138(), v18 = objc_msgSend(v19, sel_URLForResource_withExtension_, v20, v21), v19, v20, v21, !v18))
  {

    return v18;
  }

  sub_23DD41238();

  (*(v5 + 32))(v13, v11, v4);
  (*(v5 + 16))(v8, v13, v4);
  v22 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v24 = sub_23DD23BC0(v8);
  v25 = sub_23DD42138();
  v26 = [v24 valueForKey_];

  if (v26)
  {
    sub_23DD424A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v39[0] = v40;
  v39[1] = v41;
  if (!*(&v41 + 1))
  {
    (*(v5 + 8))(v13, v4);

    sub_23DCEFA38(v39, &qword_27E30E1F0, &unk_23DD43F80);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAB8, &qword_23DD45DB0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    (*(v5 + 8))(v13, v4);

    return 0;
  }

  v34 = v24;
  v27 = v37;
  v28 = *(v37 + 16);
  if (!v28)
  {
LABEL_29:

    (*(v5 + 8))(v13, v4);
    return 0;
  }

  v29 = 0;
  v35 = 0x800000023DD4BB20;
  while (v29 < *(v27 + 16))
  {
    v18 = *(v27 + 8 * v29 + 32);
    v37 = 0xD000000000000013;
    v38 = v35;

    sub_23DD424F8();
    if (*(v18 + 2) && (v30 = sub_23DCEA1CC(v39), (v31 & 1) != 0))
    {
      sub_23DCEFBF0(*(v18 + 7) + 32 * v30, &v40);
      sub_23DCEF8B0(v39);
      if (swift_dynamicCast())
      {
        if (v37 == v36 && v38 == v16)
        {

LABEL_31:
          (*(v5 + 8))(v13, v4);

          return v18;
        }

        v32 = sub_23DD42648();

        if (v32)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {

      result = sub_23DCEF8B0(v39);
    }

    if (v28 == ++v29)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23DD2B3AC(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23DD2CE34;

  return sub_23DD1121C(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_23DD2B4C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23DD2B540(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23DD2CE34;

  return sub_23DD0506C(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_516Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 48));

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t sub_23DD2B6F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23DD03B48;

  return sub_23DD04990(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23DD2B828(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23DD2CE34;

  return sub_23DD00A30(a1, v4, v5, v7, v6);
}

unint64_t sub_23DD2B9E0()
{
  result = qword_27E30EB78;
  if (!qword_27E30EB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EB70, &qword_23DD46130);
    sub_23DCEF9F0(&qword_27E30EB80, &qword_27E30EB88, &qword_23DD46138, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EB78);
  }

  return result;
}

unint64_t sub_23DD2BA98()
{
  result = qword_27E30EB98;
  if (!qword_27E30EB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EB38, &qword_23DD460D8);
    sub_23DD03710(&qword_27E30E9C0, type metadata accessor for ShowAddButton, &unk_23DD45AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EB98);
  }

  return result;
}

uint64_t objectdestroy_562Tm()
{

  MEMORY[0x23EEFE770](v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23DD2BBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_23DCFC0BC(a1, a2, a3 & 1);
  }

  else
  {
    sub_23DCFC0BC(a3, a4, a5 & 1);
  }
}

uint64_t sub_23DD2BC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_23DCEF904(a1, a2, a3 & 1);
  }

  else
  {
    sub_23DCEF904(a3, a4, a5 & 1);
  }
}

void *sub_23DD2BC80@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_23DD248A8(*a1, v2[2], v2[3], v2[4], v2[5]);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_23DD2BCD4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = a1[1];
  v6[1] = a1[2];
  v7 = v3;
  v6[0] = v4;
  return v2(&v7, v6);
}

unint64_t sub_23DD2BD1C()
{
  result = qword_27E30EBD0;
  if (!qword_27E30EBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EBC8, &qword_23DD46170);
    sub_23DD2BDA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EBD0);
  }

  return result;
}

unint64_t sub_23DD2BDA0()
{
  result = qword_27E30EBD8;
  if (!qword_27E30EBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EBE0, &qword_23DD46178);
    sub_23DD2BE2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EBD8);
  }

  return result;
}

unint64_t sub_23DD2BE2C()
{
  result = qword_27E30EBE8;
  if (!qword_27E30EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EBE8);
  }

  return result;
}

unint64_t sub_23DD2BEA8()
{
  result = qword_27E30EC20;
  if (!qword_27E30EC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EC08, &qword_23DD461C0);
    sub_23DCEF9F0(&qword_27E30EC28, &qword_27E30EC18, &qword_23DD46200, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EC20);
  }

  return result;
}

uint64_t objectdestroy_56Tm()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

unint64_t sub_23DD2BFE4()
{
  result = qword_27E30EC48;
  if (!qword_27E30EC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EC40, &qword_23DD46218);
    sub_23DCEF9F0(&qword_27E30EC50, &qword_27E30EC58, &qword_23DD46220, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EC48);
  }

  return result;
}

uint64_t objectdestroy_32Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_571Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_575Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23DD2C1E4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECC0, &qword_23DD462B8);
  return v3(a1, a1 + *(v4 + 48));
}

unint64_t sub_23DD2C240()
{
  result = qword_27E30ECB8;
  if (!qword_27E30ECB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30ECB0, &qword_23DD462B0);
    sub_23DD2BDA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30ECB8);
  }

  return result;
}

uint64_t objectdestroy_581Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23DD2C334()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECC8, &qword_23DD462C0);

  return sub_23DD165D0(v0 + 16);
}

uint64_t objectdestroy_546Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_23DD2C3F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DD2CE34;

  return sub_23DD03AB8();
}

unint64_t sub_23DD2C4FC()
{
  result = qword_27E30ECE8;
  if (!qword_27E30ECE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30ECE0, &qword_23DD46320);
    sub_23DD2C588();
    sub_23DD2C5DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30ECE8);
  }

  return result;
}

unint64_t sub_23DD2C588()
{
  result = qword_27E30ECF0;
  if (!qword_27E30ECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30ECF0);
  }

  return result;
}

unint64_t sub_23DD2C5DC()
{
  result = qword_27E30ECF8;
  if (!qword_27E30ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30ECF8);
  }

  return result;
}

void sub_23DD2C658(uint64_t a1)
{
  sub_23DD2C7E0(319);
  if (v1 <= 0x3F)
  {
    sub_23DD265CC(319, &qword_27E30E990, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_23DD2C848(319, &qword_27E30E998, MEMORY[0x277CE8520], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_23DD2C848(319, &qword_27E30ED38, MEMORY[0x277CE8520], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_23DD2C848(319, &qword_27E30ED40, MEMORY[0x277CE8680], MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23DD2C7E0(uint64_t a1)
{
  if (!qword_27E30ED30)
  {
    sub_23DCEFAE8(255, &qword_2814FCC50, 0x277CB8F30);
    v1 = sub_23DD42448();
    if (!v2)
    {
      atomic_store(v1, &qword_27E30ED30);
    }
  }
}

void sub_23DD2C848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23DD2C8CC(uint64_t a1, int a2)
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

uint64_t sub_23DD2C914(uint64_t result, int a2, int a3)
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

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD5_AaBPAAE5alert_11isPresented7actions7messageQrqd___AA7BindingVySbGqd_0_yXEqd_1_yXEtSyRd__AaBRd_0_AaBRd_1_r1_lFQOyAA15ModifiedContentVyAA6ZStackVyAA012_ConditionalK0VyAPy18AccountsUISettings010AccountAddC6LegacyVAQ0pqC6ModernVGASGGAA25_AppearanceActionModifierVG_SSAA05TupleC0VyAA6ButtonVyAA4TextVG_A6_tGAPyA5_A5_GQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E3D8, &qword_23DD44200);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E610, &qword_23DD44D00);
  a4();
  sub_23DCF4570();
  sub_23DCEF9F0(&qword_27E30E3E0, &qword_27E30E3D8, &qword_23DD44200, MEMORY[0x277CE14C0]);
  sub_23DD24040();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23DD2CA68()
{
  result = qword_27E30ED48;
  if (!qword_27E30ED48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30ED50, "b}");
    sub_23DCEF9F0(&qword_27E30EA58, &qword_27E30EA50, &qword_23DD45CB8, MEMORY[0x277CE1138]);
    sub_23DD26D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30ED48);
  }

  return result;
}

unint64_t sub_23DD2CB24()
{
  result = qword_27E30ED58;
  if (!qword_27E30ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30ED58);
  }

  return result;
}

unint64_t sub_23DD2CBB0()
{
  result = qword_27E30EDF0;
  if (!qword_27E30EDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EDE8, &qword_23DD46588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EDF0);
  }

  return result;
}

unint64_t sub_23DD2CC34()
{
  result = qword_27E30EE10;
  if (!qword_27E30EE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EE18, &qword_23DD465A8);
    v1 = MEMORY[0x277CE1138];
    sub_23DCEF9F0(&qword_27E30ED80, &qword_27E30ED78, &qword_23DD46538, MEMORY[0x277CE1138]);
    sub_23DCEF9F0(&qword_27E30ED88, &qword_27E30ED60, &qword_23DD46520, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EE10);
  }

  return result;
}

unint64_t sub_23DD2CD14()
{
  result = qword_27E30EE20;
  if (!qword_27E30EE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EE28, &unk_23DD465B0);
    v1 = MEMORY[0x277CE1138];
    sub_23DCEF9F0(&qword_27E30EDC8, &qword_27E30EDB8, &qword_23DD46568, MEMORY[0x277CE1138]);
    sub_23DCEF9F0(&qword_27E30EDD0, &qword_27E30EDA8, &qword_23DD46558, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EE20);
  }

  return result;
}

void sub_23DD2CE8C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t GenericDetailsView.init(account:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AccountsUIModel(0);
  sub_23DD30610(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
  result = sub_23DD41888();
  *a2 = result;
  a2[1] = v5;
  a2[2] = a1;
  a2[3] = 0;
  return result;
}

uint64_t sub_23DD2CF94@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GenericAccountsUIPlugin();
  result = swift_allocObject();
  *a2 = result;
  return result;
}

uint64_t GenericDetailsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE30, &qword_23DD465C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - v4;
  v6 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v12 = *v1;
  v7 = v12;
  v13 = v6;
  v14 = v8;
  v15 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE38, &qword_23DD465C8);
  sub_23DCEF9F0(&qword_27E30EE40, &qword_27E30EE38, &qword_23DD465C8, MEMORY[0x277CE14C0]);
  sub_23DD41BF8();
  v11[4] = v7;
  v11[5] = v6;
  v11[6] = v8;
  v11[7] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE48, &qword_23DD465D0);
  sub_23DCEF9F0(&qword_27E30EE50, &qword_27E30EE30, &qword_23DD465C0, MEMORY[0x277CDE580]);
  sub_23DCEF9F0(&qword_27E30EE58, &qword_27E30EE48, &qword_23DD465D0, MEMORY[0x277CDDF68]);
  sub_23DD41DB8();
  return (*(v3 + 8))(v5, v2);
}

void sub_23DD2D1E4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v32 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE80, &qword_23DD46748);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  if (!a1)
  {
    goto LABEL_8;
  }

  v33 = v12;
  v15 = objc_opt_self();
  v16 = a1;
  v17 = [v15 sharedConnection];
  if (!v17)
  {
    __break(1u);
LABEL_8:
    type metadata accessor for AccountsUIModel(0);
    sub_23DD30610(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    sub_23DD41868();
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = [v17 effectiveBoolValueForSetting_];

  v31 = a5;
  if (v19 == 2)
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DD30610(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    v21 = sub_23DD41888();
    v23 = v22;
    v20 = v21;
  }

  else
  {
    v23 = 0;
    v21 = 1;
  }

  MEMORY[0x28223BE20](v20);
  *(&v30 - 4) = a1;
  *(&v30 - 3) = a2;
  v24 = v32;
  *(&v30 - 2) = a3;
  *(&v30 - 1) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE88, &qword_23DD46750);
  sub_23DCEF9F0(&qword_27E30EE90, &qword_27E30EE88, &qword_23DD46750, MEMORY[0x277CE14C0]);
  sub_23DD41FE8();
  v25 = *(v10 + 16);
  v26 = v33;
  v25(v33, v14, v9);
  v27 = v31;
  *v31 = v21;
  v27[1] = v23;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE98, &qword_23DD46758);
  v25(v27 + *(v28 + 48), v26, v9);
  sub_23DD306B8(v21);
  sub_23DD306C8(v21);
  v29 = *(v10 + 8);
  v29(v14, v9);
  v29(v26, v9);
  sub_23DD306C8(v21);
}

uint64_t sub_23DD2D56C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v141 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEA0, &unk_23DD46760);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v142 = v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v151 = v125 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEA8, &qword_23DD47020);
  v14 = *(v13 - 8);
  v146 = v13;
  v147 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v134 = v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v144 = v125 - v17;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEB0, &qword_23DD46770);
  v18 = MEMORY[0x28223BE20](v145);
  v133 = v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v143 = v125 - v20;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEB8, &qword_23DD46778);
  v139 = *(v140 - 8);
  v21 = MEMORY[0x28223BE20](v140);
  v150 = v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v132 = v125 - v24;
  MEMORY[0x28223BE20](v23);
  v152 = v125 - v25;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEC0, &qword_23DD46780);
  v137 = *(v138 - 8);
  v26 = MEMORY[0x28223BE20](v138);
  v149 = v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v154 = a1;
  v155 = a2;
  v156 = a3;
  v157 = a4;
  v148 = v125 - v28;
  sub_23DD41798();
  v136 = "h the account type";
  v29 = sub_23DD42138();
  v135 = objc_opt_self();
  v30 = [v135 bundleWithIdentifier_];

  if (!v30)
  {
    __break(1u);
    goto LABEL_22;
  }

  v31 = sub_23DD42138();
  v32 = sub_23DD42138();
  v33 = [v30 localizedStringForKey:v31 value:v32 table:0];

  v34 = sub_23DD42178();
  v36 = v35;

  v37 = sub_23DD422C8();

  v38 = a1;
  v39 = a3;
  v40 = sub_23DD422B8();
  v41 = swift_allocObject();
  v153 = a1;
  v42 = MEMORY[0x277D85700];
  v41[2] = v40;
  v41[3] = v42;
  v41[4] = v153;
  v41[5] = a2;
  v41[6] = v39;
  v41[7] = a4;
  v43 = v38;
  v44 = v39;

  v130 = v37;
  v45 = sub_23DD422B8();
  v46 = swift_allocObject();
  v46[2] = v45;
  v46[3] = v42;
  v47 = v44;
  v46[4] = v153;
  v46[5] = a2;
  v131 = a2;
  v46[6] = v44;
  v46[7] = a4;
  sub_23DD41F88();
  v158 = v34;
  v159 = v36;
  v48 = sub_23DCF4570();
  v49 = v144;
  sub_23DD42038();
  if (v153)
  {
    v50 = v49;
    v51 = objc_opt_self();
    v52 = v43;
    v129 = v51;
    v53 = [v51 sharedConnection];
    v54 = v147;
    if (v53)
    {
      v55 = v53;
      v56 = *MEMORY[0x277D25CD0];
      v57 = [v53 effectiveBoolValueForSetting_];
      v128 = v52;

      v58 = v57 == 2;
      KeyPath = swift_getKeyPath();
      v60 = swift_allocObject();
      *(v60 + 16) = v58;
      v62 = *(v54 + 32);
      v61 = v54 + 32;
      v63 = v143;
      v127 = v62;
      v62(v143, v50, v146);
      v64 = (v63 + *(v145 + 36));
      *v64 = KeyPath;
      v64[1] = sub_23DCFD788;
      v64[2] = v60;
      sub_23DCEC2F0();
      *&v160[0] = v65;
      *(&v160[0] + 1) = v66;
      v144 = sub_23DD30714();
      sub_23DD41D68();

      sub_23DCEFA38(v63, &qword_27E30EEB0, &qword_23DD46770);
      *&v160[0] = v47;
      *(&v160[0] + 1) = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE78, &qword_23DD466F0);
      sub_23DD41EB8();
      v67 = v47;
      v68 = v158;
      *&v160[0] = sub_23DD42178();
      *(&v160[0] + 1) = v69;
      v70 = [v68 objectForKeyedSubscript_];
      swift_unknownObjectRelease();

      if (!v70)
      {
        memset(v160, 0, sizeof(v160));
        sub_23DCEFA38(v160, &qword_27E30E1F0, &unk_23DD43F80);
        goto LABEL_12;
      }

      v143 = v56;
      sub_23DD424A8();
      swift_unknownObjectRelease();
      sub_23DCEFA38(v160, &qword_27E30E1F0, &unk_23DD43F80);
      *&v160[0] = v67;
      *(&v160[0] + 1) = a4;
      sub_23DD41EB8();
      v71 = v158;
      v72 = [v158 accountType];

      if (v72)
      {
        v126 = v67;
        v73 = [v72 identifier];

        if (v73)
        {
          v74 = sub_23DD42178();
          v76 = v75;

          v77 = sub_23DD42178();
          if (v76)
          {
            if (v74 == v77 && v76 == v78)
            {

LABEL_12:
              v79 = 1;
              v80 = v151;
              v81 = v140;
              v82 = v139;
LABEL_18:
              (*(v82 + 56))(v80, v79, 1, v81);
              v112 = v137;
              v113 = *(v137 + 16);
              v114 = v149;
              v115 = v138;
              v113(v149, v148, v138);
              v153 = *(v82 + 16);
              v153(v150, v152, v81);
              v116 = v80;
              v117 = v142;
              sub_23DCDF63C(v116, v142);
              v118 = v141;
              v113(v141, v114, v115);
              v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EED8, &qword_23DD467B8);
              v120 = v150;
              v153(&v118[*(v119 + 48)], v150, v81);
              sub_23DCDF63C(v117, &v118[*(v119 + 64)]);
              sub_23DCDF6AC(v151);
              v121 = *(v82 + 8);
              v121(v152, v81);
              v122 = *(v112 + 8);
              v122(v148, v115);
              sub_23DCDF6AC(v117);
              v121(v120, v81);
              return (v122)(v149, v115);
            }

            v124 = sub_23DD42648();

            if (v124)
            {
              goto LABEL_12;
            }

LABEL_15:
            v125[1] = v48;
            v147 = v61;
            v83 = sub_23DD42138();
            v84 = [v135 bundleWithIdentifier_];

            if (v84)
            {
              v85 = sub_23DD42138();
              v86 = sub_23DD42138();
              v87 = [v84 localizedStringForKey:v85 value:v86 table:0];

              v136 = sub_23DD42178();
              v135 = v88;

              v89 = v128;
              v90 = v126;

              v91 = sub_23DD422B8();
              v92 = swift_allocObject();
              v92[2] = v91;
              v93 = MEMORY[0x277D85700];
              v94 = v153;
              v92[3] = MEMORY[0x277D85700];
              v92[4] = v94;
              v95 = v131;
              v92[5] = v131;
              v92[6] = v90;
              v92[7] = a4;
              v96 = v89;
              v97 = v90;

              v98 = sub_23DD422B8();
              v99 = swift_allocObject();
              v99[2] = v98;
              v99[3] = v93;
              v99[4] = v94;
              v99[5] = v95;
              v99[6] = v97;
              v99[7] = a4;
              sub_23DD41F88();
              v158 = v136;
              v159 = v135;
              v100 = v134;
              sub_23DD42038();
              v101 = v96;
              v102 = [v129 sharedConnection];
              if (v102)
              {
                v103 = v102;
                v104 = [v102 effectiveBoolValueForSetting_];

                v105 = swift_getKeyPath();
                v106 = swift_allocObject();
                *(v106 + 16) = v104 == 2;
                v107 = v133;
                v127(v133, v100, v146);
                v108 = (v107 + *(v145 + 36));
                *v108 = v105;
                v108[1] = sub_23DCFDE68;
                v108[2] = v106;
                sub_23DCEC2F0();
                *&v160[0] = v109;
                *(&v160[0] + 1) = v110;
                v111 = v132;
                sub_23DD41D68();

                sub_23DCEFA38(v107, &qword_27E30EEB0, &qword_23DD46770);
                v82 = v139;
                v80 = v151;
                v81 = v140;
                (*(v139 + 32))(v151, v111, v140);
                v79 = 0;
                goto LABEL_18;
              }

              goto LABEL_25;
            }

LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }
        }

        else
        {
          sub_23DD42178();
        }

        goto LABEL_15;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_26:
  type metadata accessor for AccountsUIModel(0);
  sub_23DD30610(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
  result = sub_23DD41868();
  __break(1u);
  return result;
}

uint64_t sub_23DD2E4B0@<X0>(uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE78, &qword_23DD466F0);
  sub_23DD41EB8();
  v4 = [v9 username];

  if (v4)
  {
    sub_23DD42178();
  }

  sub_23DCF4570();
  result = sub_23DD41C48();
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7 & 1;
  *(a3 + 24) = v8;
  return result;
}

void sub_23DD2E578(uint64_t a1@<X8>)
{
  v2 = sub_23DD42138();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = sub_23DD42138();
    v5 = sub_23DD42138();
    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    sub_23DD42178();
    sub_23DCF4570();
    *a1 = sub_23DD41C48();
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }
}

void sub_23DD2E6C4(uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE78, &qword_23DD466F0);
  sub_23DD41EB8();
  v4 = [v8 accountDescription];

  if (v4)
  {
    v5 = sub_23DD42178();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v5;
  a3[1] = v7;
}

void sub_23DD2E764(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE78, &qword_23DD466F0);
  sub_23DD41EB8();
  v7 = sub_23DD42138();
  [v8 setAccountDescription_];
}

uint64_t sub_23DD2E7E8@<X0>(void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE78, &qword_23DD466F0);
  sub_23DD41EB8();
  *&v11 = sub_23DD42178();
  *(&v11 + 1) = v4;
  v5 = [v9 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v5)
  {
    sub_23DD424A8();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    result = sub_23DCEFA38(v13, &qword_27E30E1F0, &unk_23DD43F80);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    v7 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_9;
  }

  v7 = v9;
  v8 = v10;
LABEL_9:
  *a3 = v7;
  a3[1] = v8;
  return result;
}

void sub_23DD2E91C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE78, &qword_23DD466F0);
  sub_23DD41EB8();
  v7 = sub_23DD42138();
  [v8 setAccountProperty:v7 forKey:*MEMORY[0x277CB8AB8]];
}

uint64_t sub_23DD2E9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a2;
  v26 = a3;
  v24 = a1;
  v28 = a5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE70, &qword_23DD466D8);
  MEMORY[0x28223BE20](v27);
  v10 = &v23 - v9;
  v11 = sub_23DD41AA8();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E8A0, &unk_23DD466E0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  sub_23DD41A88();
  v33 = a1;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3B8, &unk_23DD45BE0);
  sub_23DCEF9F0(&qword_27E30E3B0, &qword_27E30E3B8, &unk_23DD45BE0, MEMORY[0x277CDF028]);
  sub_23DD417D8();
  sub_23DD41A98();
  v29 = v24;
  v30 = v25;
  v31 = v26;
  v32 = a4;
  sub_23DD417D8();
  v19 = *(v27 + 48);
  v20 = *(v13 + 16);
  v20(v10, v18, v12);
  v20(&v10[v19], v16, v12);
  sub_23DD41A58();
  v21 = *(v13 + 8);
  v21(v16, v12);
  return (v21)(v18, v12);
}

void sub_23DD2ECBC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E410, &qword_23DD46740);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = sub_23DD42138();
  v12 = [objc_opt_self() bundleWithIdentifier_];

  if (v12)
  {
    v13 = sub_23DD42138();
    v14 = sub_23DD42138();
    v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

    v16 = sub_23DD42178();
    v18 = v17;

    v23[0] = v16;
    v23[1] = v18;
    sub_23DD41748();
    v19 = sub_23DD41758();
    (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
    v20 = swift_allocObject();
    v20[2] = a1;
    v20[3] = a2;
    v20[4] = a3;
    v20[5] = a4;
    sub_23DCF4570();
    v21 = a1;
    v22 = a3;

    sub_23DD41F08();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DD2EEE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE78, &qword_23DD466F0);
  sub_23DD41EB8();
  [v10 reload];

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = a1;
    v6 = sub_23DD416C8();
    *v7 = !*v7;
    v6(v9, 0);
  }

  else
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DD30610(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

void sub_23DD2F02C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_23DD42138();
  v9 = [objc_opt_self() bundleWithIdentifier_];

  if (v9)
  {
    v10 = sub_23DD42138();
    v11 = sub_23DD42138();
    v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

    sub_23DD42178();
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = a3;
    v13[5] = a4;
    sub_23DCF4570();
    v14 = a1;
    v15 = a3;

    sub_23DD41F18();
  }

  else
  {
    __break(1u);
  }
}

void sub_23DD2F1AC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  aBlock = a3;
  v20 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE78, &qword_23DD466F0);
  sub_23DD41EB8();
  v8 = [v25 isDirty];

  if (v8)
  {
    if (a1)
    {
      v9 = a1;
      v10 = sub_23DCE628C();

      sub_23DD41EB8();
      v11 = v25;
      v12 = swift_allocObject();
      v12[2] = a1;
      v12[3] = a2;
      v12[4] = a3;
      v12[5] = a4;
      v23 = sub_23DD305E0;
      v24 = v12;
      aBlock = MEMORY[0x277D85DD0];
      v20 = 1107296256;
      v21 = sub_23DD2CE8C;
      v22 = &block_descriptor_2;
      v13 = _Block_copy(&aBlock);

      v14 = v9;
      v15 = a3;

      [v10 saveAccount:v11 withCompletionHandler:v13];

      _Block_release(v13);
      return;
    }

    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_7:
    type metadata accessor for AccountsUIModel(0);
    sub_23DD30610(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    sub_23DD41868();
    __break(1u);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = a1;
  v17 = sub_23DD416C8();
  *v18 = !*v18;
  v17(&aBlock, 0);
}

uint64_t sub_23DD2F41C(int a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v40 = a4;
  v41 = a6;
  v42 = a3;
  v39 = a1;
  v8 = sub_23DD42068();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_23DD42098();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23DD41658();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_2814FD168);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);
  v17 = a2;
  v18 = sub_23DD41638();
  v19 = sub_23DD42368();

  if (os_log_type_enabled(v18, v19))
  {
    v38 = a5;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v49 = v21;
    *v20 = 136315138;
    if (v39)
    {
      v22 = 0xEB00000000796C6CLL;
      v23 = 0x7566736563637573;
    }

    else
    {
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_23DD42538();

      strcpy(&aBlock, "with an error ");
      HIBYTE(aBlock) = -18;
      v48 = a2;
      v24 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E468, &qword_23DD444B8);
      v25 = sub_23DD42188();
      MEMORY[0x23EEFDA30](v25);

      v22 = *(&aBlock + 1);
      v23 = aBlock;
    }

    v26 = sub_23DD2731C(v23, v22, &v49);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_23DCDB000, v18, v19, "save completed %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x23EEFE6D0](v21, -1, -1);
    MEMORY[0x23EEFE6D0](v20, -1, -1);

    (*(v13 + 8))(v15, v12);
    a5 = v38;
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  sub_23DCEFAE8(0, &unk_2814FCC58, 0x277D85C78);
  v27 = sub_23DD42388();
  v28 = swift_allocObject();
  v30 = v41;
  v29 = v42;
  v31 = v40;
  v28[2] = v42;
  v28[3] = v31;
  v28[4] = a5;
  v28[5] = v30;
  v53 = sub_23DD30604;
  v54 = v28;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v51 = sub_23DCE4C84;
  v52 = &block_descriptor_17;
  v32 = _Block_copy(&aBlock);

  v33 = v29;
  v34 = a5;

  sub_23DD42088();
  *&aBlock = MEMORY[0x277D84F90];
  sub_23DD30610(&qword_2814FCCA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E0B8, &qword_23DD444B0);
  sub_23DCEF9F0(&qword_2814FCC90, &unk_27E30E0B8, &qword_23DD444B0, MEMORY[0x277D83970]);
  v35 = v44;
  v36 = v47;
  sub_23DD424B8();
  MEMORY[0x23EEFDBD0](0, v11, v35, v32);
  _Block_release(v32);

  (*(v46 + 8))(v35, v36);
  return (*(v43 + 8))(v11, v45);
}

uint64_t sub_23DD2F9E8(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = a1;
    v4 = sub_23DD416C8();
    *v5 = !*v5;
    v4(&v7, 0);
  }

  else
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DD30610(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD2FAF0@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE30, &qword_23DD465C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - v4;
  v6 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v12 = *v1;
  v7 = v12;
  v13 = v6;
  v14 = v8;
  v15 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE38, &qword_23DD465C8);
  sub_23DCEF9F0(&qword_27E30EE40, &qword_27E30EE38, &qword_23DD465C8, MEMORY[0x277CE14C0]);
  sub_23DD41BF8();
  v11[4] = v7;
  v11[5] = v6;
  v11[6] = v8;
  v11[7] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE48, &qword_23DD465D0);
  sub_23DCEF9F0(&qword_27E30EE50, &qword_27E30EE30, &qword_23DD465C0, MEMORY[0x277CDE580]);
  sub_23DCEF9F0(&qword_27E30EE58, &qword_27E30EE48, &qword_23DD465D0, MEMORY[0x277CDDF68]);
  sub_23DD41DB8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23DD2FD2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DD2FD74(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

id sub_23DD2FDC4(void *a1)
{
  [a1 copy];
  sub_23DD424A8();
  swift_unknownObjectRelease();
  sub_23DCEFAE8(0, &qword_2814FCC50, 0x277CB8F30);
  swift_dynamicCast();
  type metadata accessor for AccountsUIModel(0);
  sub_23DD30610(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
  *&v47 = sub_23DD41888();
  *(&v47 + 1) = v2;
  *(&v48 + 1) = 0;
  sub_23DD304B8();
  v40 = v47;
  v39 = v42;
  v3 = sub_23DD41F48();
  strcpy(&v51, "DETAILS_ROW_");
  BYTE13(v51) = 0;
  HIWORD(v51) = -5120;
  v4 = [a1 identifier];
  if (!v4)
  {
    sub_23DCEFAE8(0, &qword_27E30E0E0, 0x277CCACA8);
    v4 = sub_23DD423F8();
  }

  v5 = v4;
  v6 = [v4 description];
  v7 = sub_23DD42178();
  v9 = v8;

  MEMORY[0x23EEFDA30](v7, v9);

  v47 = v51;
  *&v48 = 0x10101010001;
  *(&v48 + 1) = v3;
  v49 = 0uLL;
  v50[0] = 0;
  *&v50[1] = v52[0];
  *&v50[4] = *(v52 + 3);
  *&v50[8] = 0;
  *&v50[16] = 0xE000000000000000;
  v50[24] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E1E8, &unk_23DD45CF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23DD43560;
  strcpy(&v42, "ONLY_SECTION_");
  HIWORD(v42) = -4864;

  v11 = [a1 identifier];
  if (!v11)
  {
    sub_23DCEFAE8(0, &qword_27E30E0E0, 0x277CCACA8);
    v11 = sub_23DD423F8();
  }

  v12 = v11;
  v13 = [v11 description];
  v14 = sub_23DD42178();
  v16 = v15;

  MEMORY[0x23EEFDA30](v14, v16);

  v17 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE68, &qword_23DD466D0);
  v18 = swift_allocObject();
  v19 = v49;
  v18[3] = v48;
  v18[4] = v19;
  v18[5] = *v50;
  *(v18 + 89) = *&v50[9];
  v20 = v47;
  v18[1] = xmmword_23DD43570;
  v18[2] = v20;
  type metadata accessor for AccountUISettingSection();
  v21 = swift_allocObject();
  *(v21 + 48) = 0;
  *(v21 + 56) = 0;
  *(v21 + 40) = 0;
  *(v21 + 16) = v17;
  *(v21 + 32) = v18;
  swift_beginAccess();
  *(v21 + 48) = 0;
  *(v21 + 40) = 0;
  swift_beginAccess();
  *(v21 + 56) = 0;
  *(v10 + 32) = v21;
  v46 = v10;
  sub_23DD3050C(&v47, &v42);
  result = [a1 provisionedDataclasses];
  if (result)
  {
    v23 = result;
    v24 = [result count];

    if (v24 < 1)
    {
      sub_23DD30568(&v47);

      return v10;
    }

    result = [a1 accountType];
    if (result)
    {
      v25 = result;
      v26 = [result identifier];

      if (v26)
      {
        v27 = sub_23DD42178();
        v29 = v28;

        v30 = sub_23DD42178();
        if (v29)
        {
          if (v27 == v30 && v29 == v31)
          {

LABEL_21:
            sub_23DD30568(&v47);
            return v10;
          }

          v38 = sub_23DD42648();

          if (v38)
          {

            goto LABEL_21;
          }

LABEL_16:
          *&v42 = 0x53414C4341544144;
          *(&v42 + 1) = 0xEF454C4241545F53;
          v43 = 0u;
          v44 = 0u;
          v45[0] = 7;
          *&v45[8] = 0;
          *&v45[16] = 0xE000000000000000;
          v45[24] = 1;
          v32 = swift_allocObject();
          v33 = v44;
          v34 = *v45;
          v35 = v42;
          v32[3] = v43;
          v32[4] = v33;
          v32[5] = v34;
          *(v32 + 89) = *&v45[9];
          v32[1] = xmmword_23DD43570;
          v32[2] = v35;
          v36 = swift_allocObject();
          v36[6] = 0;
          v36[7] = 0;
          v36[5] = 0;
          v36[2] = 0xD000000000000011;
          v36[3] = 0x800000023DD4C0C0;
          v36[4] = v32;
          swift_beginAccess();
          v36[6] = 0;
          v36[5] = 0;
          swift_beginAccess();
          v36[7] = 0;
          v37 = sub_23DD3050C(&v42, v41);
          MEMORY[0x23EEFDA80](v37);
          if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23DD42278();
          }

          sub_23DD42298();
          sub_23DD30568(&v42);
          sub_23DD30568(&v47);

          return v46;
        }
      }

      else
      {
        sub_23DD42178();
      }

      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23DD304B8()
{
  result = qword_27E30EE60;
  if (!qword_27E30EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EE60);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DD30610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_23DD306B8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_23DD306C8(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_23DD30714()
{
  result = qword_27E30EEC8;
  if (!qword_27E30EEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EEB0, &qword_23DD46770);
    sub_23DCEF9F0(&qword_27E30EED0, &qword_27E30EEA8, &qword_23DD47020, MEMORY[0x277CDF1A8]);
    sub_23DCEF9F0(&qword_27E30E380, &qword_27E30E388, &qword_23DD441D8, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EEC8);
  }

  return result;
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t AccountSettingsDetailModelView.init(detailModel:)@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccountsUISettingsDetailModel(0);
  sub_23DD39AF4(&qword_27E30E1B8, type metadata accessor for AccountsUISettingsDetailModel, &protocol conformance descriptor for AccountsUISettingsDetailModel);
  result = sub_23DD41818();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t AccountSettingsDetailModelView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEE0, &unk_23DD467E0);
  sub_23DD39570(&qword_27E30EEE8, &qword_27E30EEE0, &unk_23DD467E0, sub_23DD30B60);
  sub_23DD30BB4();
  return sub_23DD41BE8();
}

uint64_t sub_23DD30A0C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F080, &qword_23DD474A0);
  sub_23DCEF9F0(&qword_27E30F088, &qword_27E30F080, &qword_23DD474A0, MEMORY[0x277D83980]);
  sub_23DD30B60();
  sub_23DD39AF4(&qword_27E30F090, type metadata accessor for AccountUISettingSection, &protocol conformance descriptor for AccountUISettingSection);
  return sub_23DD41FB8();
}

unint64_t sub_23DD30B60()
{
  result = qword_27E30EEF0;
  if (!qword_27E30EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EEF0);
  }

  return result;
}

unint64_t sub_23DD30BB4()
{
  result = qword_27E30EEF8;
  if (!qword_27E30EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EEF8);
  }

  return result;
}

uint64_t sub_23DD30C08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEE0, &unk_23DD467E0);
  sub_23DD39570(&qword_27E30EEE8, &qword_27E30EEE0, &unk_23DD467E0, sub_23DD30B60);
  sub_23DD30BB4();
  return sub_23DD41BE8();
}

uint64_t sub_23DD30CDC@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_23DD419C8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EFA0, &qword_23DD46CC0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EF90, &qword_23DD46CB8);
  MEMORY[0x28223BE20](v9);
  v11 = &v27[-v10];
  sub_23DD419B8();
  sub_23DD419A8();
  sub_23DD41E48();
  sub_23DD41988();

  sub_23DD419A8();
  if (a1)
  {
    v12 = a1;
    sub_23DCE3594();

    sub_23DD41998();

    sub_23DD419A8();
    sub_23DD419E8();
    v13 = sub_23DD41C38();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = &v8[*(v6 + 36)];
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EFB0, &qword_23DD46CC8) + 28);
    sub_23DD41A38();
    v22 = sub_23DD41A48();
    (*(*(v22 - 8) + 56))(v20 + v21, 0, 1, v22);
    *v20 = swift_getKeyPath();
    *v8 = v13;
    *(v8 + 1) = v15;
    v8[16] = v17 & 1;
    *(v8 + 3) = v19;
    LODWORD(v13) = sub_23DD41AC8();
    sub_23DCFD790(v8, v11, &qword_27E30EFA0, &qword_23DD46CC0);
    *&v11[*(v9 + 36)] = v13;
    v23 = sub_23DD41BA8();
    KeyPath = swift_getKeyPath();
    sub_23DCFD790(v11, a3, &qword_27E30EF90, &qword_23DD46CB8);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EF78, &qword_23DD46CB0);
    v26 = (a3 + *(result + 36));
    *v26 = KeyPath;
    v26[1] = v23;
  }

  else
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD31054()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EF78, &qword_23DD46CB0);
  sub_23DD37E60();
  return sub_23DD41FE8();
}

void sub_23DD310C8(void *a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEE0, &unk_23DD467E0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v26 - v12;
  if (!a1)
  {
    goto LABEL_8;
  }

  v14 = objc_opt_self();
  v15 = a1;
  v16 = [v14 sharedConnection];
  if (!v16)
  {
    __break(1u);
LABEL_8:
    type metadata accessor for AccountsUIModel(0);
    sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    sub_23DD41868();
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = [v16 effectiveBoolValueForSetting_];

  if (v18 == 2)
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    v19 = sub_23DD41888();
    v21 = v20;
    v22 = v19;
  }

  else
  {
    v21 = 0;
    v19 = 1;
  }

  v26[1] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F080, &qword_23DD474A0);
  sub_23DCEF9F0(&qword_27E30F088, &qword_27E30F080, &qword_23DD474A0, MEMORY[0x277D83980]);
  sub_23DD30B60();
  sub_23DD39AF4(&qword_27E30F090, type metadata accessor for AccountUISettingSection, &protocol conformance descriptor for AccountUISettingSection);
  sub_23DD41FB8();
  v23 = *(v8 + 16);
  v23(v11, v13, v7);
  *a4 = v19;
  a4[1] = v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F238, &qword_23DD470A0);
  v23(a4 + *(v24 + 48), v11, v7);
  sub_23DD306B8(v19);
  sub_23DD306C8(v19);
  v25 = *(v8 + 8);
  v25(v13, v7);
  v25(v11, v7);
  sub_23DD306C8(v19);
}

uint64_t sub_23DD31468@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccountUISettingSection();
  sub_23DD39AF4(&qword_27E30F030, type metadata accessor for AccountUISettingSection, &protocol conformance descriptor for AccountUISettingSection);

  result = sub_23DD41818();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23DD314F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountsUIModel(0);
  sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
  result = sub_23DD41888();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DD31560()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F228, &qword_23DD47098);
  sub_23DCEF9F0(&qword_27E30F230, &qword_27E30F228, &qword_23DD47098, MEMORY[0x277CE14C0]);
  sub_23DD30BB4();
  return sub_23DD41BE8();
}

void sub_23DD3163C(void *a1@<X0>, uint64_t a3@<X8>)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = a1;
    sub_23DD416D8();

    v6 = 1;
    if (v11)
    {
      v7 = sub_23DD41978();
      type metadata accessor for AccountsUIModel(0);
      sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
      v6 = sub_23DD41888();
      v9 = 1;
      v10 = 1;
    }

    else
    {
      v7 = 0;
      v9 = 0;
      v8 = 0;
      v10 = 0;
    }

    *a3 = v7;
    *(a3 + 8) = 0;
    *(a3 + 16) = v9;
    *(a3 + 24) = v6;
    *(a3 + 32) = v8;
    *(a3 + 40) = 0;
    *(a3 + 48) = v10;
  }

  else
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    sub_23DD41868();
    __break(1u);
  }
}

uint64_t DeleteButtonView.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountsUIModel(0);
  sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
  result = sub_23DD41888();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t DeleteButtonView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3B8, &unk_23DD45BE0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EF00, &qword_23DD467F0);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - v6;
  v8 = *v0;
  sub_23DD41EF8();
  if (v8)
  {
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 sharedConnection];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 effectiveBoolValueForSetting_];

      LOBYTE(v12) = v13 == 2;
      KeyPath = swift_getKeyPath();
      v15 = swift_allocObject();
      *(v15 + 16) = v12;
      (*(v2 + 32))(v7, v4, v1);
      v16 = &v7[*(v5 + 36)];
      *v16 = KeyPath;
      v16[1] = sub_23DD37788;
      v16[2] = v15;
      sub_23DCEC2F0();
      v20[0] = v17;
      v20[1] = v18;
      sub_23DD37848();
      sub_23DCF4570();
      sub_23DD41D68();

      return sub_23DCEFA38(v7, &qword_27E30EF00, &qword_23DD467F0);
    }

    __break(1u);
  }

  type metadata accessor for AccountsUIModel(0);
  sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
  result = sub_23DD41868();
  __break(1u);
  return result;
}

void sub_23DD31B14(uint64_t a1@<X8>)
{
  v2 = sub_23DD42138();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = sub_23DD42138();
    v5 = sub_23DD42138();
    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    sub_23DD42178();
    sub_23DCF4570();
    *a1 = sub_23DD41C48();
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DD31C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EFE0, &qword_23DD46D48);
  v41 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v40 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EFE8, &qword_23DD46D50);
  v7 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v9 = &v40 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EFF0, &qword_23DD46D58);
  MEMORY[0x28223BE20](v43);
  v45 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EFF8, &qword_23DD46D60);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F000, &qword_23DD46D68);
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v16 = &v40 - v15;
  v17 = swift_beginAccess();
  v18 = *(a2 + 48);
  if (v18)
  {
    v19 = v11;
    MEMORY[0x28223BE20](v17);
    *(&v40 - 2) = a1;
    *(&v40 - 1) = a2;
    v49 = v20;
    v50 = v18;
    sub_23DCF4570();

    v49 = sub_23DD41C48();
    v50 = v21;
    LOBYTE(v51) = v22 & 1;
    v52 = v23;
    sub_23DD380A4();
    v24 = sub_23DD41FC8();
    MEMORY[0x28223BE20](v24);
    *(&v40 - 2) = a1;
    *(&v40 - 1) = a2;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F010, &qword_23DD46D70);
    v26 = sub_23DD3817C(&qword_27E30F028, &qword_27E30EFF8, &qword_23DD46D60);
    v27 = sub_23DD380F8();
    sub_23DD41CE8();
    (*(v12 + 8))(v14, v11);
    v28 = v42;
    v29 = v44;
    (*(v42 + 16))(v45, v16, v44);
    swift_storeEnumTagMultiPayload();
    v49 = v19;
    v50 = v25;
    v51 = v26;
    v52 = v27;
    swift_getOpaqueTypeConformance2();
    v30 = sub_23DD3817C(&qword_27E30F018, &qword_27E30EFE0, &qword_23DD46D48);
    v49 = v46;
    v50 = v25;
    v51 = v30;
    v52 = v27;
    swift_getOpaqueTypeConformance2();
    sub_23DD41A78();
    return (*(v28 + 8))(v16, v29);
  }

  else
  {
    MEMORY[0x28223BE20](v17);
    *(&v40 - 2) = a1;
    *(&v40 - 1) = a2;
    sub_23DD380A4();
    v32 = sub_23DD41FE8();
    MEMORY[0x28223BE20](v32);
    *(&v40 - 2) = v33;
    *(&v40 - 1) = a2;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F010, &qword_23DD46D70);
    v42 = sub_23DD3817C(&qword_27E30F018, &qword_27E30EFE0, &qword_23DD46D48);
    v35 = v9;
    v36 = sub_23DD380F8();
    v37 = v46;
    sub_23DD41CE8();
    (*(v41 + 8))(v6, v37);
    v38 = v47;
    (*(v7 + 16))(v45, v35, v47);
    swift_storeEnumTagMultiPayload();
    v39 = sub_23DD3817C(&qword_27E30F028, &qword_27E30EFF8, &qword_23DD46D60);
    v49 = v11;
    v50 = v34;
    v51 = v39;
    v52 = v36;
    swift_getOpaqueTypeConformance2();
    v49 = v37;
    v50 = v34;
    v51 = v42;
    v52 = v36;
    swift_getOpaqueTypeConformance2();
    sub_23DD41A78();
    return (*(v7 + 8))(v35, v38);
  }
}

__n128 sub_23DD3237C@<Q0>(__n128 *a2@<X8>)
{
  type metadata accessor for AccountsUIModel(0);
  sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);

  v3 = sub_23DD41888();
  v5 = v4;
  type metadata accessor for AccountUISettingSection();
  sub_23DD39AF4(&qword_27E30F030, type metadata accessor for AccountUISettingSection, &protocol conformance descriptor for AccountUISettingSection);
  v6 = sub_23DD41818();
  v8 = v7;
  sub_23DD41EA8();
  result = v10;
  a2->n128_u64[0] = v3;
  a2->n128_u64[1] = v5;
  a2[1].n128_u64[0] = v6;
  a2[1].n128_u64[1] = v8;
  a2[2] = v10;
  a2[3].n128_u64[0] = v11;
  return result;
}

uint64_t sub_23DD324A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  if (*(a1 + 56))
  {
  }

  result = sub_23DD41A78();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_23DD3254C@<X0>(_OWORD *a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v198 = a2;
  v210 = a3;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F1C8, &qword_23DD47040);
  MEMORY[0x28223BE20](v188);
  v191 = (&v165 - v4);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F198, &qword_23DD47028);
  MEMORY[0x28223BE20](v203);
  v193 = &v165 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F1B8, &qword_23DD47038);
  v172 = *(v6 - 8);
  v173 = v6;
  MEMORY[0x28223BE20](v6);
  v184 = &v165 - v7;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F1A0, &qword_23DD47030);
  MEMORY[0x28223BE20](v187);
  v174 = &v165 - v8;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F1D0, &qword_23DD47048);
  v178 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v177 = &v165 - v9;
  v10 = sub_23DD412F8();
  MEMORY[0x28223BE20](v10 - 8);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F1D8, &unk_23DD47050);
  MEMORY[0x28223BE20](v180);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEA8, &qword_23DD47020);
  v169 = *(v11 - 8);
  v170 = v11;
  MEMORY[0x28223BE20](v11);
  v182 = &v165 - v12;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEB0, &qword_23DD46770);
  MEMORY[0x28223BE20](v189);
  v171 = &v165 - v13;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEB8, &qword_23DD46778);
  v176 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v175 = &v165 - v14;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F1E0, &qword_23DD47060);
  MEMORY[0x28223BE20](v199);
  v201 = &v165 - v15;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F1E8, &qword_23DD47068);
  MEMORY[0x28223BE20](v186);
  v17 = &v165 - v16;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F188, &unk_23DD47010);
  MEMORY[0x28223BE20](v200);
  v190 = &v165 - v18;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F178, &qword_23DD47008);
  MEMORY[0x28223BE20](v209);
  v202 = &v165 - v19;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEC0, &qword_23DD46780);
  v168 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v21 = &v165 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F1F0, &qword_23DD47070);
  MEMORY[0x28223BE20](v22);
  v24 = &v165 - v23;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F158, &unk_23DD46FF8);
  MEMORY[0x28223BE20](v196);
  v183 = &v165 - v25;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F1F8, &qword_23DD47078);
  MEMORY[0x28223BE20](v195);
  v27 = (&v165 - v26);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F140, &qword_23DD46FF0);
  MEMORY[0x28223BE20](v205);
  v197 = &v165 - v28;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F200, &qword_23DD47080);
  MEMORY[0x28223BE20](v206);
  v208 = &v165 - v29;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F208, &unk_23DD47088);
  MEMORY[0x28223BE20](v204);
  v31 = &v165 - v30;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F110, &qword_23DD46FE0);
  v32 = MEMORY[0x28223BE20](v207);
  v34 = a1[3];
  v228 = a1[2];
  *v229 = v34;
  *&v229[9] = *(a1 + 57);
  v35 = a1[1];
  v227[1] = *a1;
  v227[2] = v35;
  v36 = v228;
  if (v34 <= 3u)
  {
    if (v34 <= 1u)
    {
      v37 = &v165 - v33;
      v179 = v228;
      if (v34)
      {
        v185 = *(&v35 + 1);
        v95 = v35;
        v166 = *(&v228 + 1);
        sub_23DD39158(v35, *(&v35 + 1), v228, *(&v228 + 1), 1u);
        type metadata accessor for AccountsUIModel(0);
        sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
        v96 = v95;
        v97 = sub_23DD41888();
        v99 = v98;
        type metadata accessor for AccountUISetting.CustomDataclassTableConfig(0);
        sub_23DD39AF4(&qword_27E30F220, type metadata accessor for AccountUISetting.CustomDataclassTableConfig, &protocol conformance descriptor for AccountUISetting.CustomDataclassTableConfig);
        v100 = sub_23DD41818();
        v102 = v101;
        *v27 = v97;
        v27[1] = v99;
        v27[2] = v100;
        v27[3] = v101;
        swift_storeEnumTagMultiPayload();
        sub_23DD38C6C();
        sub_23DD38CC0();
        v203 = v97;
        v103 = v102;
        v104 = v197;
        sub_23DD41A78();
        sub_23DCFD8B0(v104, v31, &qword_27E30F140, &qword_23DD46FF0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F120, &qword_23DD46FE8);
        sub_23DD38AAC();
        sub_23DD38BE0();
        sub_23DD41A78();
        sub_23DCEFA38(v104, &qword_27E30F140, &qword_23DD46FF0);
        sub_23DCFD8B0(v37, v208, &qword_27E30F110, &qword_23DD46FE0);
        swift_storeEnumTagMultiPayload();
        sub_23DD38A20();
        sub_23DD38DCC();
        sub_23DD41A78();

        sub_23DD39234(v95, v185, v179, v166, 1u);
      }

      else
      {
        v39 = *(&v35 + 1);
        v38 = v35;
        v40 = *(&v228 + 1);
        sub_23DD39158(v35, *(&v35 + 1), v228, *(&v228 + 1), 0);
        type metadata accessor for AccountsUIModel(0);
        sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);

        v41 = sub_23DD41888();
        v42 = vdupq_n_s64(v38);
        LOBYTE(v211) = v38 & 1;
        *v42.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v42, xmmword_23DD467D0), vshlq_u64(v42, xmmword_23DD467C0))), 0x1000100010001);
        *(&v211 + 1) = vuzp1_s8(*v42.i8, *v42.i8).u32[0];
        BYTE5(v211) = BYTE5(v38) & 1;
        *(&v211 + 1) = v39;
        v212 = 0;
        v213 = v41;
        v214 = v43;
        *&v215 = v211;
        *(&v215 + 1) = v39;
        *&v216 = 0;
        *(&v216 + 1) = v41;
        v217 = v43;
        v218 = 0;
        sub_23DD37A4C(&v211, &v219);
        sub_23DD38B38();
        sub_23DD38B8C();
        sub_23DD41A78();
        v44 = v221;
        v45 = BYTE8(v221);
        v46 = v220;
        *v31 = v219;
        *(v31 + 1) = v46;
        *(v31 + 4) = v44;
        v31[40] = v45;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F120, &qword_23DD46FE8);
        sub_23DD38AAC();
        sub_23DD38BE0();
        sub_23DD41A78();
        sub_23DCFD8B0(v37, v208, &qword_27E30F110, &qword_23DD46FE0);
        swift_storeEnumTagMultiPayload();
        sub_23DD38A20();
        sub_23DD38DCC();
        sub_23DD41A78();
        sub_23DD39450(&v211);
        sub_23DD39234(v38, v39, v179, v40, 0);
      }

      v47 = v37;
      v48 = &qword_27E30F110;
      v49 = &qword_23DD46FE0;
      return sub_23DCEFA38(v47, v48, v49);
    }

    v166 = *(&v228 + 1);
    v185 = *(&v35 + 1);
    v167 = v35;
    if (v34 == 2)
    {
      v203 = &v165 - v33;
      if (v229[24])
      {
        v219 = v35;
        v220 = v228;
        v76 = v35;
        v179 = v228;
        sub_23DD39158(v35, *(&v35 + 1), v228, *(&v228 + 1), 2u);

        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBF0, &qword_23DD46180);
        MEMORY[0x23EEFD790](&v211, v77);
        v194 = *(&v211 + 1);
        v198 = v211;
        v78 = *&v229[16];
        v202 = *&v229[8];

        LODWORD(v200) = sub_23DD41788();
        v201 = v79;
        LODWORD(v199) = v80;
        type metadata accessor for AccountsUIModel(0);
        sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
        v81 = sub_23DD41888();
        v83 = v82;
        *&v227[0] = v198;
        *(&v227[0] + 1) = v194;
        sub_23DD41EA8();
        v84 = v215;
        v85 = v216;
        v86 = v200 & 1;
        v87 = v199 & 1;
        *v24 = v81;
        *(v24 + 1) = v83;
        *(v24 + 1) = v76;
        *(v24 + 4) = v179;
        *(v24 + 5) = v166;
        *(v24 + 3) = v84;
        *(v24 + 8) = v85;
        v24[72] = v86;
        *(v24 + 73) = v219;
        *(v24 + 19) = *(&v219 + 3);
        *(v24 + 10) = v201;
        v24[88] = v87;
        *(v24 + 89) = v215;
        *(v24 + 23) = *(&v215 + 3);
        *(v24 + 12) = v202;
        *(v24 + 13) = v78;
        v24[112] = 0;
        swift_storeEnumTagMultiPayload();
        sub_23DD38D78();
        sub_23DCEF9F0(&qword_27E30F168, &qword_27E30EEC0, &qword_23DD46780, MEMORY[0x277CDD758]);
        v88 = v183;
        sub_23DD41A78();
      }

      else
      {
        v202 = &v165;
        v160 = MEMORY[0x28223BE20](v32);
        MEMORY[0x28223BE20](v160);

        sub_23DD41798();
        v161 = v168;
        v162 = v181;
        (*(v168 + 16))(v24, v21, v181);
        swift_storeEnumTagMultiPayload();
        sub_23DD38D78();
        sub_23DCEF9F0(&qword_27E30F168, &qword_27E30EEC0, &qword_23DD46780, MEMORY[0x277CDD758]);
        v88 = v183;
        sub_23DD41A78();
        (*(v161 + 8))(v21, v162);
      }

      v159 = &unk_23DD46FF8;
      sub_23DCFD8B0(v88, v27, &qword_27E30F158, &unk_23DD46FF8);
      swift_storeEnumTagMultiPayload();
      sub_23DD38C6C();
      sub_23DD38CC0();
      v163 = v197;
      sub_23DD41A78();
      sub_23DCFD8B0(v163, v31, &qword_27E30F140, &qword_23DD46FF0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F120, &qword_23DD46FE8);
      sub_23DD38AAC();
      sub_23DD38BE0();
      v164 = v203;
      sub_23DD41A78();
      sub_23DCEFA38(v163, &qword_27E30F140, &qword_23DD46FF0);
      sub_23DCFD8B0(v164, v208, &qword_27E30F110, &qword_23DD46FE0);
      swift_storeEnumTagMultiPayload();
      sub_23DD38A20();
      sub_23DD38DCC();
      sub_23DD41A78();

      sub_23DCEFA38(v164, &qword_27E30F110, &qword_23DD46FE0);
      v47 = v88;
      v48 = &qword_27E30F158;
      goto LABEL_25;
    }

    v215 = v35;
    v216 = v228;
    v179 = v228;
    sub_23DD39158(v35, *(&v35 + 1), v228, *(&v228 + 1), 3u);

    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBF0, &qword_23DD46180);
    MEMORY[0x23EEFD790](&v211, v130);
    v131 = v211;
    v132 = *&v229[16];
    v205 = *&v229[8];

    v133 = sub_23DD41788();
    v204 = v134;
    v136 = v135;
    type metadata accessor for AccountsUIModel(0);
    sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    v137 = sub_23DD41888();
    v139 = v138;
    v227[0] = v131;
    v140 = MEMORY[0x277D837D0];
    sub_23DD41EA8();
    v141 = v219;
    v142 = v220;
    *&v219 = v137;
    *(&v219 + 1) = v139;
    *&v220 = v167;
    *(&v220 + 1) = v185;
    *&v221 = v179;
    *(&v221 + 1) = v166;
    v222 = v141;
    *&v223 = v142;
    BYTE8(v223) = v133 & 1;
    *&v224 = v204;
    BYTE8(v224) = v136 & 1;
    *&v225 = v205;
    *(&v225 + 1) = v132;
    v143 = v224;
    v144 = v225;
    v145 = v222;
    *(v17 + 4) = v223;
    *(v17 + 5) = v143;
    *(v17 + 6) = v144;
    v146 = v220;
    v147 = v221;
    *v17 = v219;
    *(v17 + 1) = v146;
    v226 = 1;
    v17[112] = 1;
    *(v17 + 2) = v147;
    *(v17 + 3) = v145;
    swift_storeEnumTagMultiPayload();
    sub_23DD393D4(&v219, &v215);
    sub_23DD38D78();
    v148 = sub_23DD30714();
    v149 = sub_23DCF4570();
    *&v215 = v189;
    *(&v215 + 1) = v140;
    *&v216 = v148;
    *(&v216 + 1) = v149;
    swift_getOpaqueTypeConformance2();
    v150 = v190;
    sub_23DD41A78();
    sub_23DCFD8B0(v150, v201, &qword_27E30F188, &unk_23DD47010);
    swift_storeEnumTagMultiPayload();
    sub_23DD38E58();
    sub_23DD38F3C();
    v151 = v202;
    sub_23DD41A78();
    sub_23DCEFA38(v150, &qword_27E30F188, &unk_23DD47010);
    sub_23DCFD8B0(v151, v208, &qword_27E30F178, &qword_23DD47008);
    swift_storeEnumTagMultiPayload();
    sub_23DD38A20();
    sub_23DD38DCC();
    sub_23DD41A78();
    sub_23DD3940C(&v219);

    v94 = v151;
    return sub_23DCEFA38(v94, &qword_27E30F178, &qword_23DD47008);
  }

  if (v34 > 5u)
  {
    if (v34 != 6)
    {
      v152 = &v165 - v33;
      type metadata accessor for AccountsUIModel(0);
      sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
      v153 = sub_23DD41888();
      *&v215 = v153;
      *(&v215 + 1) = v154;
      v217 = 0;
      v216 = 0uLL;
      v218 = 1;
      sub_23DD38B38();
      sub_23DD38B8C();
      v155 = v153;
      sub_23DD41A78();
      v156 = v221;
      v157 = BYTE8(v221);
      v158 = v220;
      *v31 = v219;
      *(v31 + 1) = v158;
      *(v31 + 4) = v156;
      v31[40] = v157;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F120, &qword_23DD46FE8);
      sub_23DD38AAC();
      sub_23DD38BE0();
      sub_23DD41A78();
      v159 = &qword_23DD46FE0;
      sub_23DCFD8B0(v152, v208, &qword_27E30F110, &qword_23DD46FE0);
      swift_storeEnumTagMultiPayload();
      sub_23DD38A20();
      sub_23DD38DCC();
      sub_23DD41A78();

      v47 = v152;
      v48 = &qword_27E30F110;
LABEL_25:
      v49 = v159;
      return sub_23DCEFA38(v47, v48, v49);
    }

    *v191 = v35;
    v89 = v35;
    v179 = v36;
    swift_storeEnumTagMultiPayload();
    sub_23DD39158(v89, *(&v89 + 1), v36, *(&v36 + 1), 6u);
    v90 = sub_23DD39020();
    v91 = sub_23DCF4570();

    *&v219 = v187;
    *(&v219 + 1) = MEMORY[0x277D837D0];
    *&v220 = v90;
    *(&v220 + 1) = v91;
    swift_getOpaqueTypeConformance2();
    v92 = v193;
    sub_23DD41A78();
    sub_23DCFD8B0(v92, v201, &qword_27E30F198, &qword_23DD47028);
    swift_storeEnumTagMultiPayload();
    sub_23DD38E58();
    sub_23DD38F3C();
    v93 = v202;
    sub_23DD41A78();
    sub_23DCEFA38(v92, &qword_27E30F198, &qword_23DD47028);
    sub_23DCFD8B0(v93, v208, &qword_27E30F178, &qword_23DD47008);
    swift_storeEnumTagMultiPayload();
    sub_23DD38A20();
    sub_23DD38DCC();
    sub_23DD41A78();
    sub_23DD39234(v89, *(&v89 + 1), v179, *(&v36 + 1), 6u);
    v94 = v93;
    return sub_23DCEFA38(v94, &qword_27E30F178, &qword_23DD47008);
  }

  v185 = *(&v35 + 1);
  v167 = v35;
  if (v34 == 4)
  {
    v215 = *(a1 + 56);
    v211 = *(a1 + 56);
    v219 = v35;
    *&v220 = v228;
    sub_23DD39158(v35, *(&v35 + 1), v228, *(&v228 + 1), 4u);
    sub_23DD39324(&v215, v227);

    sub_23DD412E8();
    sub_23DD39380();
    sub_23DD411E8();
    v50 = sub_23DCF4570();
    sub_23DCEF9F0(&qword_27E30F218, &qword_27E30F1D8, &unk_23DD47050, MEMORY[0x277CC8CE0]);
    v51 = MEMORY[0x277D837D0];
    v52 = v182;
    sub_23DD42048();
    v53 = *v198;
    if (*v198)
    {
      v54 = objc_opt_self();
      v55 = v53;
      v56 = [v54 sharedConnection];
      if (v56)
      {
        v57 = v56;
        v58 = [v56 effectiveBoolValueForSetting_];

        v59 = v58 == 2;
        KeyPath = swift_getKeyPath();
        v61 = swift_allocObject();
        *(v61 + 16) = v59;
        v62 = v171;
        (*(v169 + 32))(v171, v52, v170);
        v63 = v189;
        v64 = (v62 + *(v189 + 36));
        *v64 = KeyPath;
        v64[1] = sub_23DD39D40;
        v64[2] = v61;
        sub_23DCEC2F0();
        v66 = v65;
        v68 = v67;

        *&v219 = v66;
        *(&v219 + 1) = v68;
        v69 = sub_23DD30714();
        v70 = v175;
        sub_23DD41D68();

        sub_23DCEFA38(v62, &qword_27E30EEB0, &qword_23DD46770);
        v71 = v176;
        v72 = v194;
        (*(v176 + 16))(v17, v70, v194);
        swift_storeEnumTagMultiPayload();
        sub_23DD38D78();
        *&v219 = v63;
        *(&v219 + 1) = v51;
        *&v220 = v69;
        *(&v220 + 1) = v50;
        swift_getOpaqueTypeConformance2();
        v73 = v190;
        sub_23DD41A78();
        sub_23DCFD8B0(v73, v201, &qword_27E30F188, &unk_23DD47010);
        swift_storeEnumTagMultiPayload();
        sub_23DD38E58();
        sub_23DD38F3C();
        v74 = v202;
        sub_23DD41A78();
        sub_23DCEFA38(v73, &qword_27E30F188, &unk_23DD47010);
        sub_23DCFD8B0(v74, v208, &qword_27E30F178, &qword_23DD47008);
        swift_storeEnumTagMultiPayload();
        sub_23DD38A20();
        sub_23DD38DCC();
        sub_23DD41A78();

        sub_23DCEFA38(v74, &qword_27E30F178, &qword_23DD47008);
        return (*(v71 + 8))(v70, v72);
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }
  }

  else
  {
    v215 = *(a1 + 56);
    v219 = *(a1 + 56);
    sub_23DD39158(v35, *(&v35 + 1), v228, *(&v228 + 1), 5u);
    sub_23DD39324(&v215, &v211);
    v105 = sub_23DCF4570();

    v106 = MEMORY[0x277D837D0];
    v107 = v184;
    sub_23DD41F38();
    v108 = *v198;
    if (*v198)
    {
      v109 = objc_opt_self();
      v110 = v108;
      v111 = [v109 sharedConnection];
      if (v111)
      {
        v112 = v111;
        v113 = [v111 effectiveBoolValueForSetting_];

        v114 = v113 == 2;
        v115 = swift_getKeyPath();
        v116 = swift_allocObject();
        *(v116 + 16) = v114;
        v117 = v174;
        (*(v172 + 32))(v174, v107, v173);
        v118 = v187;
        v119 = (v117 + *(v187 + 36));
        *v119 = v115;
        v119[1] = sub_23DD39D40;
        v119[2] = v116;
        sub_23DCEC2F0();
        v121 = v120;
        v123 = v122;

        *&v219 = v121;
        *(&v219 + 1) = v123;
        v124 = sub_23DD39020();
        v125 = v177;
        sub_23DD41D68();

        sub_23DCEFA38(v117, &qword_27E30F1A0, &qword_23DD47030);
        v126 = v178;
        v127 = v192;
        (*(v178 + 16))(v191, v125, v192);
        swift_storeEnumTagMultiPayload();
        *&v219 = v118;
        *(&v219 + 1) = v106;
        *&v220 = v124;
        *(&v220 + 1) = v105;
        swift_getOpaqueTypeConformance2();
        v128 = v193;
        sub_23DD41A78();
        sub_23DCFD8B0(v128, v201, &qword_27E30F198, &qword_23DD47028);
        swift_storeEnumTagMultiPayload();
        sub_23DD38E58();
        sub_23DD38F3C();
        v129 = v202;
        sub_23DD41A78();
        sub_23DCEFA38(v128, &qword_27E30F198, &qword_23DD47028);
        sub_23DCFD8B0(v129, v208, &qword_27E30F178, &qword_23DD47008);
        swift_storeEnumTagMultiPayload();
        sub_23DD38A20();
        sub_23DD38DCC();
        sub_23DD41A78();

        sub_23DCEFA38(v129, &qword_27E30F178, &qword_23DD47008);
        return (*(v126 + 8))(v125, v127);
      }

      goto LABEL_28;
    }
  }

  type metadata accessor for AccountsUIModel(0);
  sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
  result = sub_23DD41868();
  __break(1u);
  return result;
}

uint64_t DetailsHeader.init(detailsConfig:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = *(a1 + 1);
  type metadata accessor for AccountsUIModel(0);
  sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
  result = sub_23DD41888();
  *(a2 + 24) = result;
  *(a2 + 32) = v11;
  *a2 = v3;
  *(a2 + 1) = v4;
  *(a2 + 2) = v5;
  *(a2 + 3) = v6;
  *(a2 + 4) = v7;
  *(a2 + 5) = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23DD34600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBF0, &qword_23DD46180);
  MEMORY[0x23EEFD790](v11, v6);
  sub_23DCF4570();
  result = sub_23DD41C48();
  *a5 = result;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9 & 1;
  *(a5 + 24) = v10;
  return result;
}

uint64_t sub_23DD34680@<X0>(uint64_t a2@<X8>)
{
  sub_23DCF4570();

  result = sub_23DD41C48();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_23DD346EC()
{
  v1 = v0[1];
  v8 = *v0;
  v9 = v1;
  v10 = v0[2];
  v11 = *(v0 + 6);
  v2 = *(&v1 + 1);
  swift_beginAccess();
  v7 = *(v2 + 32);
  v3 = swift_allocObject();
  v4 = v9;
  *(v3 + 16) = v8;
  *(v3 + 32) = v4;
  *(v3 + 48) = v10;
  *(v3 + 64) = v11;

  sub_23DD3895C(&v8, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F0E8, &qword_23DD46FD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F0F0, &qword_23DD46FD8);
  sub_23DCEF9F0(&qword_27E30F0F8, &qword_27E30F0E8, &qword_23DD46FD0, MEMORY[0x277D83980]);
  sub_23DD38994();
  sub_23DD39104();
  return sub_23DD41FB8();
}

uint64_t sub_23DD34850@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v139 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EEA8, &qword_23DD47020);
  v126 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v113 - v4;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F260, &qword_23DD47178);
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v7 = &v113 - v6;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F268, &qword_23DD47180);
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = &v113 - v8;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F270, &qword_23DD47188);
  MEMORY[0x28223BE20](v133);
  v127 = &v113 - v9;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F278, &qword_23DD47190);
  MEMORY[0x28223BE20](v118);
  v11 = &v113 - v10;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F280, &qword_23DD47198);
  MEMORY[0x28223BE20](v138);
  v13 = (&v113 - v12);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F288, &qword_23DD471A0);
  MEMORY[0x28223BE20](v136);
  v137 = &v113 - v14;
  v142 = sub_23DD41838();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F290, &qword_23DD471A8);
  v119 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v113 - v17;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F298, &qword_23DD471B0);
  v120 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v20 = &v113 - v19;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F2A0, &qword_23DD471B8);
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v113 - v21;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F2A8, &qword_23DD471C0);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v121 = &v113 - v22;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F2B0, &qword_23DD471C8);
  MEMORY[0x28223BE20](v116);
  v117 = &v113 - v23;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F2B8, &qword_23DD471D0);
  MEMORY[0x28223BE20](v135);
  v25 = &v113 - v24;
  LOBYTE(v24) = *(v2 + 112);
  v26 = *(v2 + 104);
  v143 = *(v2 + 96);
  v134 = v26;
  if (v24)
  {
    v133 = v25;
    sub_23DD422C8();

    sub_23DD393D4(v2, &v144);
    v27 = sub_23DD422B8();
    v28 = swift_allocObject();
    v29 = v26;
    v30 = MEMORY[0x277D85700];
    *(v28 + 16) = v27;
    *(v28 + 24) = v30;
    v31 = *(v2 + 80);
    *(v28 + 96) = *(v2 + 64);
    *(v28 + 112) = v31;
    *(v28 + 128) = *(v2 + 96);
    *(v28 + 144) = *(v2 + 112);
    v32 = *(v2 + 16);
    *(v28 + 32) = *v2;
    *(v28 + 48) = v32;
    v33 = *(v2 + 48);
    *(v28 + 64) = *(v2 + 32);
    *(v28 + 80) = v33;
    sub_23DD393D4(v2, &v144);
    v34 = sub_23DD422B8();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v30;
    v36 = *(v2 + 80);
    *(v35 + 96) = *(v2 + 64);
    *(v35 + 112) = v36;
    *(v35 + 128) = *(v2 + 96);
    *(v35 + 144) = *(v2 + 112);
    v37 = *(v2 + 16);
    *(v35 + 32) = *v2;
    *(v35 + 48) = v37;
    v38 = *(v2 + 48);
    *(v35 + 64) = *(v2 + 32);
    *(v35 + 80) = v38;
    sub_23DD41F88();
    *&v144 = v143;
    *(&v144 + 1) = v29;
    sub_23DCF4570();
    sub_23DD417A8();
    v147 = *(v2 + 72);
    v148 = *(v2 + 88);
    v144 = *(v2 + 72);
    LOBYTE(v145) = *(v2 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F2C0, &qword_23DD471D8);
    sub_23DD41778();
    v39 = sub_23DCEF9F0(&qword_27E30F2E8, &qword_27E30F290, &qword_23DD471A8, MEMORY[0x277CDD798]);
    sub_23DD41DA8();

    (*(v119 + 8))(v18, v16);
    v144 = v147;
    LOBYTE(v145) = v148;
    sub_23DD41768();
    v40 = swift_allocObject();
    v41 = *(v2 + 80);
    *(v40 + 80) = *(v2 + 64);
    *(v40 + 96) = v41;
    *(v40 + 112) = *(v2 + 96);
    *(v40 + 128) = *(v2 + 112);
    v42 = *(v2 + 16);
    *(v40 + 16) = *v2;
    *(v40 + 32) = v42;
    v43 = *(v2 + 48);
    *(v40 + 48) = *(v2 + 32);
    *(v40 + 64) = v43;
    sub_23DD393D4(v2, &v144);
    *&v144 = v16;
    *(&v144 + 1) = v39;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v45 = MEMORY[0x277D839B0];
    v46 = MEMORY[0x277D839C8];
    v47 = v123;
    v48 = v122;
    sub_23DD41DC8();

    (*(v120 + 8))(v20, v48);
    v49 = swift_allocObject();
    v50 = *(v2 + 80);
    *(v49 + 80) = *(v2 + 64);
    *(v49 + 96) = v50;
    *(v49 + 112) = *(v2 + 96);
    *(v49 + 128) = *(v2 + 112);
    v51 = *(v2 + 16);
    *(v49 + 16) = *v2;
    *(v49 + 32) = v51;
    v52 = *(v2 + 48);
    *(v49 + 48) = *(v2 + 32);
    *(v49 + 64) = v52;
    sub_23DD393D4(v2, &v144);
    v53 = v140;
    sub_23DD41828();
    *&v144 = v48;
    *(&v144 + 1) = v45;
    v145 = OpaqueTypeConformance2;
    v146 = v46;
    swift_getOpaqueTypeConformance2();
    v54 = v121;
    v55 = v125;
    sub_23DD41DD8();

    (*(v141 + 8))(v53, v142);
    v124[1](v47, v55);
    v56 = *v2;
    if (*v2)
    {
      v57 = objc_opt_self();
      v58 = v56;
      v59 = [v57 sharedConnection];
      if (v59)
      {
        v60 = v59;
        v61 = [v59 effectiveBoolValueForSetting_];

        KeyPath = swift_getKeyPath();
        v63 = swift_allocObject();
        *(v63 + 16) = v61 == 2;
        v64 = v117;
        (*(v114 + 32))(v117, v54, v115);
        v65 = (v64 + *(v116 + 36));
        *v65 = KeyPath;
        v65[1] = sub_23DD39D40;
        v65[2] = v63;
        *&v144 = 0;
        *(&v144 + 1) = 0xE000000000000000;
        sub_23DD42538();

        *&v144 = 0x6554657275636553;
        *(&v144 + 1) = 0xEF646C6569467478;
        MEMORY[0x23EEFDA30](v143, v134);
        sub_23DD39938();
        v66 = v133;
        sub_23DD41D48();

        sub_23DCEFA38(v64, &qword_27E30F2B0, &qword_23DD471C8);
        v67 = &qword_27E30F2B8;
        v68 = &qword_23DD471D0;
        sub_23DCFD8B0(v66, v137, &qword_27E30F2B8, &qword_23DD471D0);
        swift_storeEnumTagMultiPayload();
        sub_23DD39884(&qword_27E30F2D8, &qword_27E30F2B8, &qword_23DD471D0, sub_23DD39938);
LABEL_8:
        sub_23DD39884(&qword_27E30F2F0, &qword_27E30F280, &qword_23DD47198, sub_23DD3963C);
        sub_23DD41A78();
        return sub_23DCEFA38(v66, v67, v68);
      }

      __break(1u);
LABEL_10:
      __break(1u);
    }
  }

  else
  {
    v125 = v11;
    v124 = v13;
    sub_23DD422C8();
    sub_23DD393D4(v2, &v144);

    v69 = sub_23DD422B8();
    v70 = swift_allocObject();
    v71 = MEMORY[0x277D85700];
    *(v70 + 16) = v69;
    *(v70 + 24) = v71;
    v72 = *(v2 + 80);
    *(v70 + 96) = *(v2 + 64);
    *(v70 + 112) = v72;
    *(v70 + 128) = *(v2 + 96);
    *(v70 + 144) = *(v2 + 112);
    v73 = *(v2 + 16);
    *(v70 + 32) = *v2;
    *(v70 + 48) = v73;
    v74 = *(v2 + 48);
    *(v70 + 64) = *(v2 + 32);
    *(v70 + 80) = v74;
    sub_23DD393D4(v2, &v144);
    v75 = sub_23DD422B8();
    v76 = swift_allocObject();
    *(v76 + 16) = v75;
    *(v76 + 24) = v71;
    v77 = *(v2 + 80);
    *(v76 + 96) = *(v2 + 64);
    *(v76 + 112) = v77;
    *(v76 + 128) = *(v2 + 96);
    *(v76 + 144) = *(v2 + 112);
    v78 = *(v2 + 16);
    *(v76 + 32) = *v2;
    *(v76 + 48) = v78;
    v79 = *(v2 + 48);
    *(v76 + 64) = *(v2 + 32);
    *(v76 + 80) = v79;
    sub_23DD41F88();
    *&v144 = v143;
    *(&v144 + 1) = v26;
    sub_23DCF4570();
    sub_23DD42038();
    v147 = *(v2 + 72);
    v148 = *(v2 + 88);
    v144 = *(v2 + 72);
    LOBYTE(v145) = *(v2 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F2C0, &qword_23DD471D8);
    sub_23DD41778();
    v80 = sub_23DCEF9F0(&qword_27E30EED0, &qword_27E30EEA8, &qword_23DD47020, MEMORY[0x277CDF1A8]);
    sub_23DD41DA8();

    (*(v126 + 8))(v5, v3);
    v144 = v147;
    LOBYTE(v145) = v148;
    sub_23DD41768();
    v81 = swift_allocObject();
    v82 = *(v2 + 80);
    *(v81 + 80) = *(v2 + 64);
    *(v81 + 96) = v82;
    *(v81 + 112) = *(v2 + 96);
    *(v81 + 128) = *(v2 + 112);
    v83 = *(v2 + 16);
    *(v81 + 16) = *v2;
    *(v81 + 32) = v83;
    v84 = *(v2 + 48);
    *(v81 + 48) = *(v2 + 32);
    *(v81 + 64) = v84;
    sub_23DD393D4(v2, &v144);
    *&v144 = v3;
    *(&v144 + 1) = v80;
    v85 = swift_getOpaqueTypeConformance2();
    v86 = MEMORY[0x277D839B0];
    v87 = MEMORY[0x277D839C8];
    v88 = v130;
    v89 = v129;
    sub_23DD41DC8();

    (*(v128 + 8))(v7, v89);
    v90 = swift_allocObject();
    v91 = *(v2 + 80);
    *(v90 + 80) = *(v2 + 64);
    *(v90 + 96) = v91;
    *(v90 + 112) = *(v2 + 96);
    *(v90 + 128) = *(v2 + 112);
    v92 = *(v2 + 16);
    *(v90 + 16) = *v2;
    *(v90 + 32) = v92;
    v93 = *(v2 + 48);
    *(v90 + 48) = *(v2 + 32);
    *(v90 + 64) = v93;
    sub_23DD393D4(v2, &v144);
    v94 = v140;
    sub_23DD41828();
    *&v144 = v89;
    *(&v144 + 1) = v86;
    v145 = v85;
    v146 = v87;
    swift_getOpaqueTypeConformance2();
    v95 = v127;
    v96 = v132;
    sub_23DD41DD8();

    (*(v141 + 8))(v94, v142);
    (*(v131 + 8))(v88, v96);
    v97 = swift_allocObject();
    v98 = *(v2 + 80);
    *(v97 + 80) = *(v2 + 64);
    *(v97 + 96) = v98;
    *(v97 + 112) = *(v2 + 96);
    *(v97 + 128) = *(v2 + 112);
    v99 = *(v2 + 16);
    *(v97 + 16) = *v2;
    *(v97 + 32) = v99;
    v100 = *(v2 + 48);
    *(v97 + 48) = *(v2 + 32);
    *(v97 + 64) = v100;
    v101 = (v95 + *(v133 + 36));
    *v101 = 0;
    v101[1] = 0;
    v101[2] = sub_23DD39D24;
    v101[3] = v97;
    v102 = *v2;
    if (*v2)
    {
      v103 = objc_opt_self();
      sub_23DD393D4(v2, &v144);
      v104 = v102;
      v105 = [v103 sharedConnection];
      v106 = v125;
      if (v105)
      {
        v107 = v105;
        v108 = [v105 effectiveBoolValueForSetting_];

        v109 = swift_getKeyPath();
        v110 = swift_allocObject();
        *(v110 + 16) = v108 == 2;
        sub_23DCDF9FC(v95, v106);
        v111 = (v106 + *(v118 + 36));
        *v111 = v109;
        v111[1] = sub_23DD39D40;
        v111[2] = v110;
        *&v144 = 0x6C65694674786554;
        *(&v144 + 1) = 0xE900000000000064;
        MEMORY[0x23EEFDA30](v143, v134);
        sub_23DD3963C();
        v66 = v124;
        sub_23DD41D48();

        sub_23DCEFA38(v106, &qword_27E30F278, &qword_23DD47190);
        v67 = &qword_27E30F280;
        v68 = &qword_23DD47198;
        sub_23DCFD8B0(v66, v137, &qword_27E30F280, &qword_23DD47198);
        swift_storeEnumTagMultiPayload();
        sub_23DD39884(&qword_27E30F2D8, &qword_27E30F2B8, &qword_23DD471D0, sub_23DD39938);
        goto LABEL_8;
      }

      goto LABEL_10;
    }

    sub_23DD393D4(v2, &v144);
  }

  type metadata accessor for AccountsUIModel(0);
  sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
  result = sub_23DD41868();
  __break(1u);
  return result;
}

uint64_t sub_23DD35DAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D0, &qword_23DD471E0);
  sub_23DD41EB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBF0, &qword_23DD46180);
  return sub_23DD41F68();
}

uint64_t sub_23DD35E38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D0, &qword_23DD471E0);
  sub_23DD41EB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBF0, &qword_23DD46180);
  return sub_23DD41F68();
}

void *sub_23DD35EC4@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v9 = *(a1 + 72);
  LOBYTE(v10) = *(a1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F2C0, &qword_23DD471D8);
  sub_23DD41768();
  if (LOBYTE(v8[0]) == 1)
  {
    v9 = *(a1 + 48);
    *&v10 = *(a1 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D0, &qword_23DD471E0);
    result = sub_23DD41EB8();
  }

  else
  {
    v5 = *(a1 + 32);
    v9 = *(a1 + 16);
    v10 = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBF0, &qword_23DD46180);
    result = MEMORY[0x23EEFD790](v8, v6);
  }

  v7 = v8[1];
  *a2 = v8[0];
  a2[1] = v7;
  return result;
}

uint64_t sub_23DD35F98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F2C0, &qword_23DD471D8);
  sub_23DD41768();

  if (v5 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D0, &qword_23DD471E0);
    return sub_23DD41EC8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBF0, &qword_23DD46180);
    return sub_23DD41F68();
  }
}

uint64_t DetailsHeader.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EF10, &qword_23DD46830);
  MEMORY[0x28223BE20](v3);
  v5 = v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EF18, &qword_23DD46838);
  v39 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v42 = v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EF20, &qword_23DD46840);
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v40 = v34 - v9;
  v49 = *(v1 + 4);
  v10 = v1[1];
  v47 = *v1;
  v48 = v10;
  v11 = *(&v10 + 1);
  if (!*(&v10 + 1))
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v11;
  sub_23DD416D8();

  v13 = v43;
  if (v43)
  {
    v14 = [v43 accountType];

    if (v14)
    {
      v15 = [v14 identifier];

      if (v15)
      {
        sub_23DD42178();

        v34[1] = v34;
        v17 = MEMORY[0x28223BE20](v16);
        MEMORY[0x28223BE20](v17);
        v37 = v8;
        v35 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EF38, &qword_23DD46890);
        v38 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EF40, &qword_23DD46898);
        v36 = v3;
        sub_23DCEF9F0(&qword_27E30EF48, &qword_27E30EF38, &qword_23DD46890, MEMORY[0x277CDEFF0]);
        sub_23DD37994();
        sub_23DD41798();

        type metadata accessor for AccountsUIModel(0);
        sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
        v18 = sub_23DD41858();
        swift_getKeyPath();
        sub_23DD41878();

        v19 = swift_allocObject();
        v20 = v48;
        *(v19 + 16) = v47;
        *(v19 + 32) = v20;
        *(v19 + 48) = v49;
        sub_23DD37A4C(&v47, &v43);
        v32 = sub_23DCEF9F0(&qword_27E30EF28, &qword_27E30EF18, &qword_23DD46838, MEMORY[0x277CDD758]);
        v33 = sub_23DD3792C();
        v21 = v40;
        v22 = v35;
        v23 = v42;
        sub_23DD41D98();

        (*(v39 + 8))(v23, v22);
        v24 = v41;
        v25 = v37;
        (*(v41 + 16))(v5, v21, v37);
        swift_storeEnumTagMultiPayload();
        v43 = v22;
        v44 = &type metadata for DetailsSheetContent;
        v45 = v32;
        v46 = v33;
        swift_getOpaqueTypeConformance2();
        sub_23DD41A78();
        return (*(v24 + 8))(v21, v25);
      }

      goto LABEL_6;
    }

    __break(1u);
LABEL_9:
    type metadata accessor for AccountsUIModel(0);
    sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    result = sub_23DD41868();
    __break(1u);
    return result;
  }

LABEL_6:
  sub_23DD419D8();
  *v5 = sub_23DD41C38();
  *(v5 + 1) = v27;
  v5[16] = v28 & 1;
  *(v5 + 3) = v29;
  swift_storeEnumTagMultiPayload();
  v30 = sub_23DCEF9F0(&qword_27E30EF28, &qword_27E30EF18, &qword_23DD46838, MEMORY[0x277CDD758]);
  v31 = sub_23DD3792C();
  v43 = v6;
  v44 = &type metadata for DetailsSheetContent;
  v45 = v30;
  v46 = v31;
  swift_getOpaqueTypeConformance2();
  return sub_23DD41A78();
}

void sub_23DD367F4(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3B8, &unk_23DD45BE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v20 = *a1;
  v21 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F038, &qword_23DD46DC0);
  sub_23DD41EB8();
  v8 = BYTE5(v22);

  if (v8 != 1)
  {
    v19 = 1;
    goto LABEL_5;
  }

  v9 = sub_23DD42138();
  v10 = [objc_opt_self() bundleWithIdentifier_];

  if (v10)
  {
    v11 = sub_23DD42138();
    v12 = sub_23DD42138();
    v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

    v14 = sub_23DD42178();
    v16 = v15;

    v22 = v14;
    v23 = v16;
    v17 = swift_allocObject();
    v18 = a1[1];
    *(v17 + 16) = *a1;
    *(v17 + 32) = v18;
    *(v17 + 48) = *(a1 + 4);
    sub_23DD37A4C(a1, &v20);
    sub_23DCF4570();
    sub_23DD41F18();
    (*(v5 + 32))(a2, v7, v4);
    v19 = 0;
LABEL_5:
    (*(v5 + 56))(a2, v19, 1, v4);
    return;
  }

  __break(1u);
}

uint64_t sub_23DD36A98(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    v3 = sub_23DD416C8();
    *v4 = !*v4;
    v3(&v6, 0);
  }

  else
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD36BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F060, &qword_23DD46DF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F068, &unk_23DD46E00);
  sub_23DCEF9F0(&qword_27E30F070, &qword_27E30F060, &qword_23DD46DF8, MEMORY[0x277CE14C0]);
  sub_23DD38358();
  return sub_23DD41E98();
}

uint64_t sub_23DD36C9C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *v47 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F038, &qword_23DD46DC0);
  sub_23DD41EB8();

  v41 = a2;
  v42 = a3;
  if (v50 != 1)
  {
    goto LABEL_6;
  }

  v8 = *(a1 + 3);
  if (!v8)
  {
    goto LABEL_21;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v8;
  sub_23DD416D8();

  if (v47[0] && (ACAccount.userFullName.getter(), v11 = v10, v47[0], v11))
  {
    sub_23DCF4570();
    v12 = sub_23DD41C48();
    v14 = v13;
    v16 = v15;
    v18 = v17 & 1;
    sub_23DCFC0BC(v12, v13, v17 & 1);
  }

  else
  {
LABEL_6:
    v12 = 0;
    v14 = 0;
    v18 = 0;
    v16 = 0;
  }

  *v48 = *a1;
  sub_23DD41EB8();

  v43 = v18;
  v44 = v16;
  if (v51 != 1)
  {
LABEL_12:
    v21 = 0;
    goto LABEL_13;
  }

  v19 = *(a1 + 3);
  if (!v19)
  {
LABEL_21:
    type metadata accessor for AccountsUIModel(0);
    sub_23DD39AF4(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    result = sub_23DD41868();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v20 = v19;
  sub_23DD416D8();

  if (!v48[0])
  {
    goto LABEL_12;
  }

  v21 = [v48[0] username];

  if (v21)
  {
    sub_23DD42178();

    sub_23DCF4570();
    v22 = sub_23DD41C48();
    v24 = v23;
    v21 = v22;
    v45 = v26;
    v27 = v25 & 1;
    sub_23DCFC0BC(v22, v26, v25 & 1);
    v46 = v24;

    goto LABEL_14;
  }

LABEL_13:
  v45 = 0;
  v46 = 0;
  v27 = 0;
LABEL_14:
  sub_23DD41EB8();

  v28 = v12;
  if (v50 & 1) != 0 || (sub_23DD41EB8(), , (v51))
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 1;
  }

  else
  {
    sub_23DD41EB8();

    if (v49 == 1)
    {
      _sSo13ACAccountTypeC18AccountsUISettingsE09localizedB4Name3forS2SSg_tFZ_0(v41, v42, v34, v35);
      sub_23DCF4570();
      v36 = sub_23DD41C48();
      v38 = v37;
      v29 = v36;
      v30 = v40;
      v31 = v39 & 1;
      sub_23DCFC0BC(v36, v40, v39 & 1);
      v32 = v38;
    }

    else
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
    }
  }

  sub_23DCFC0CC(v28, v14, v43, v44);
  sub_23DCFC0CC(v21, v45, v27, v46);
  sub_23DD3840C(v29, v30, v31, v32);
  sub_23DCFC110(v21, v45, v27, v46);
  sub_23DCFC110(v28, v14, v43, v44);
  sub_23DD3841C(v29, v30, v31, v32);
  *a4 = v28;
  a4[1] = v14;
  a4[2] = v43;
  a4[3] = v44;
  a4[4] = v21;
  a4[5] = v45;
  a4[6] = v27;
  a4[7] = v46;
  a4[8] = v29;
  a4[9] = v30;
  a4[10] = v31;
  a4[11] = v32;
  sub_23DD3841C(v29, v30, v31, v32);
  sub_23DCFC110(v21, v45, v27, v46);
  return sub_23DCFC110(v28, v14, v43, v44);
}

uint64_t sub_23DD37188@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23DD420F8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED98, &qword_23DD46548);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - v14;
  v19 = *a1;
  v20 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F038, &qword_23DD46DC0);
  sub_23DD41EB8();
  LODWORD(a1) = v21;

  if (a1 == 1)
  {
    LOBYTE(v19) = 0;
    sub_23DCF4A10(a2, a3, &v19);
    *&v19 = v16;
    (*(v9 + 104))(v11, *MEMORY[0x277D4D810], v8);
    sub_23DD41C58();
    (*(v9 + 8))(v11, v8);

    (*(v13 + 32))(a4, v15, v12);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v13 + 56))(a4, v17, 1, v12);
}

uint64_t sub_23DD373E4@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  *a2 = v4;
  return result;
}

uint64_t sub_23DD37464(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_23DD416E8();
}

void *sub_23DD374D4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F038, &qword_23DD46DC0);
  result = sub_23DD41EB8();
  *a1 = v3;
  *(a1 + 1) = v4;
  *(a1 + 2) = v5;
  *(a1 + 3) = v6;
  *(a1 + 4) = v7;
  *(a1 + 5) = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  return result;
}

double sub_23DD37568@<D0>(_OWORD *a1@<X8>)
{
  v15 = *v1;
  *&v16 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F038, &qword_23DD46DC0);
  sub_23DD41EB8();
  if (v14)
  {
    sub_23DD41FF8();
    sub_23DD41848();
    v10[0] = v14;
    v13 = 257;
    sub_23DD38338(v10);
  }

  else
  {
    sub_23DD419D8();
    v10[0] = sub_23DD41C38();
    v10[1] = v3;
    v11 = v4 & 1;
    v12 = v5;
    sub_23DD3821C(v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F040, &qword_23DD46DC8);
  sub_23DD38228();
  sub_23DD41A78();
  v6 = v20;
  a1[4] = v19;
  a1[5] = v6;
  a1[6] = v21[0];
  *(a1 + 107) = *(v21 + 11);
  v7 = v16;
  *a1 = v15;
  a1[1] = v7;
  result = *&v17;
  v9 = v18;
  a1[2] = v17;
  a1[3] = v9;
  return result;
}

uint64_t sub_23DD3771C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23DD418F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23DD377A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EFD8, &qword_23DD46D40);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23DCFD8B0(a1, &v5 - v3, &qword_27E30EFD8, &qword_23DD46D40);
  return sub_23DD418B8();
}

unint64_t sub_23DD37848()
{
  result = qword_27E30EF08;
  if (!qword_27E30EF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EF00, &qword_23DD467F0);
    sub_23DCEF9F0(&qword_27E30E3B0, &qword_27E30E3B8, &unk_23DD45BE0, MEMORY[0x277CDF028]);
    sub_23DCEF9F0(&qword_27E30E380, &qword_27E30E388, &qword_23DD441D8, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EF08);
  }

  return result;
}

unint64_t sub_23DD3792C()
{
  result = qword_27E30EF30;
  if (!qword_27E30EF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EF30);
  }

  return result;
}

unint64_t sub_23DD37994()
{
  result = qword_27E30EF50;
  if (!qword_27E30EF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EF40, &qword_23DD46898);
    sub_23DCEF9F0(&qword_27E30E3B0, &qword_27E30E3B8, &unk_23DD45BE0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EF50);
  }

  return result;
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

uint64_t sub_23DD37B0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_23DD37B68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_23DD37BD4()
{
  result = qword_27E30EF68;
  if (!qword_27E30EF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EF70, &qword_23DD46AA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EF18, &qword_23DD46838);
    sub_23DCEF9F0(&qword_27E30EF28, &qword_27E30EF18, &qword_23DD46838, MEMORY[0x277CDD758]);
    sub_23DD3792C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EF68);
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

uint64_t sub_23DD37CF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_23DD37D54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_23DD37E60()
{
  result = qword_27E30EF80;
  if (!qword_27E30EF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EF78, &qword_23DD46CB0);
    sub_23DD37F18();
    sub_23DCEF9F0(&qword_27E30EFC8, &qword_27E30EFD0, &qword_23DD46CD8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EF80);
  }

  return result;
}

unint64_t sub_23DD37F18()
{
  result = qword_27E30EF88;
  if (!qword_27E30EF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EF90, &qword_23DD46CB8);
    sub_23DD37FD0();
    sub_23DCEF9F0(&qword_27E30EFB8, &qword_27E30EFC0, &qword_23DD46CD0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EF88);
  }

  return result;
}

unint64_t sub_23DD37FD0()
{
  result = qword_27E30EF98;
  if (!qword_27E30EF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EFA0, &qword_23DD46CC0);
    sub_23DCEF9F0(&qword_27E30EFA8, &qword_27E30EFB0, &qword_23DD46CC8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EF98);
  }

  return result;
}

unint64_t sub_23DD380A4()
{
  result = qword_27E30F008;
  if (!qword_27E30F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F008);
  }

  return result;
}

unint64_t sub_23DD380F8()
{
  result = qword_27E30F020;
  if (!qword_27E30F020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F010, &qword_23DD46D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F020);
  }

  return result;
}

uint64_t sub_23DD3817C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_23DD380A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DD38228()
{
  result = qword_27E30F048;
  if (!qword_27E30F048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F040, &qword_23DD46DC8);
    sub_23DD382B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F048);
  }

  return result;
}

unint64_t sub_23DD382B4()
{
  result = qword_27E30F050;
  if (!qword_27E30F050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F058, &qword_23DD46DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F050);
  }

  return result;
}

unint64_t sub_23DD38358()
{
  result = qword_27E30F078;
  if (!qword_27E30F078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F068, &unk_23DD46E00);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F078);
  }

  return result;
}

uint64_t sub_23DD3840C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_23DCFC0CC(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_23DD3841C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_23DCFC110(result, a2, a3, a4);
  }

  return result;
}

uint64_t objectdestroy_13Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23DD3847C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DD384C4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_23DD38530(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_23DD38578(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_23DD385D4()
{
  result = qword_27E30F098;
  if (!qword_27E30F098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F0A0, &qword_23DD46F08);
    sub_23DD37E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F098);
  }

  return result;
}

unint64_t sub_23DD38664()
{
  result = qword_27E30F0A8;
  if (!qword_27E30F0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F0B0, &qword_23DD46F10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EFF8, &qword_23DD46D60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F010, &qword_23DD46D70);
    sub_23DD3817C(&qword_27E30F028, &qword_27E30EFF8, &qword_23DD46D60);
    sub_23DD380F8();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EFE0, &qword_23DD46D48);
    sub_23DD3817C(&qword_27E30F018, &qword_27E30EFE0, &qword_23DD46D48);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F0A8);
  }

  return result;
}

unint64_t sub_23DD387E0()
{
  result = qword_27E30F0B8;
  if (!qword_27E30F0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F0C0, &qword_23DD46F18);
    sub_23DCEF9F0(&qword_27E30F0C8, &qword_27E30F0D0, &qword_23DD46F20, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F0B8);
  }

  return result;
}

unint64_t sub_23DD38890()
{
  result = qword_27E30F0D8;
  if (!qword_27E30F0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F0E0, &qword_23DD46F28);
    sub_23DD38228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F0D8);
  }

  return result;
}

unint64_t sub_23DD38994()
{
  result = qword_27E30F100;
  if (!qword_27E30F100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F0F0, &qword_23DD46FD8);
    sub_23DD38A20();
    sub_23DD38DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F100);
  }

  return result;
}

unint64_t sub_23DD38A20()
{
  result = qword_27E30F108;
  if (!qword_27E30F108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F110, &qword_23DD46FE0);
    sub_23DD38AAC();
    sub_23DD38BE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F108);
  }

  return result;
}

unint64_t sub_23DD38AAC()
{
  result = qword_27E30F118;
  if (!qword_27E30F118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F120, &qword_23DD46FE8);
    sub_23DD38B38();
    sub_23DD38B8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F118);
  }

  return result;
}

unint64_t sub_23DD38B38()
{
  result = qword_27E30F128;
  if (!qword_27E30F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F128);
  }

  return result;
}

unint64_t sub_23DD38B8C()
{
  result = qword_27E30F130;
  if (!qword_27E30F130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F130);
  }

  return result;
}

unint64_t sub_23DD38BE0()
{
  result = qword_27E30F138;
  if (!qword_27E30F138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F140, &qword_23DD46FF0);
    sub_23DD38C6C();
    sub_23DD38CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F138);
  }

  return result;
}

unint64_t sub_23DD38C6C()
{
  result = qword_27E30F148;
  if (!qword_27E30F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F148);
  }

  return result;
}

unint64_t sub_23DD38CC0()
{
  result = qword_27E30F150;
  if (!qword_27E30F150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F158, &unk_23DD46FF8);
    sub_23DD38D78();
    sub_23DCEF9F0(&qword_27E30F168, &qword_27E30EEC0, &qword_23DD46780, MEMORY[0x277CDD758]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F150);
  }

  return result;
}

unint64_t sub_23DD38D78()
{
  result = qword_27E30F160;
  if (!qword_27E30F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F160);
  }

  return result;
}

unint64_t sub_23DD38DCC()
{
  result = qword_27E30F170;
  if (!qword_27E30F170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F178, &qword_23DD47008);
    sub_23DD38E58();
    sub_23DD38F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F170);
  }

  return result;
}

unint64_t sub_23DD38E58()
{
  result = qword_27E30F180;
  if (!qword_27E30F180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F188, &unk_23DD47010);
    sub_23DD38D78();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EEB0, &qword_23DD46770);
    sub_23DD30714();
    sub_23DCF4570();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F180);
  }

  return result;
}

unint64_t sub_23DD38F3C()
{
  result = qword_27E30F190;
  if (!qword_27E30F190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F198, &qword_23DD47028);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F1A0, &qword_23DD47030);
    sub_23DD39020();
    sub_23DCF4570();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F190);
  }

  return result;
}

unint64_t sub_23DD39020()
{
  result = qword_27E30F1A8;
  if (!qword_27E30F1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F1A0, &qword_23DD47030);
    sub_23DCEF9F0(&qword_27E30F1B0, &qword_27E30F1B8, &qword_23DD47038, MEMORY[0x277CDF068]);
    sub_23DCEF9F0(&qword_27E30E380, &qword_27E30E388, &qword_23DD441D8, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F1A8);
  }

  return result;
}

unint64_t sub_23DD39104()
{
  result = qword_27E30F1C0;
  if (!qword_27E30F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F1C0);
  }

  return result;
}

id sub_23DD39158(id result, id a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 2u)
  {
    if (a5 > 4u)
    {
      if (a5 != 5)
      {
        if (a5 != 6)
        {
          return result;
        }

        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (a5 != 3)
    {
      if (a5 != 4)
      {
        return result;
      }

LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_9;
  }

  if (!a5)
  {
LABEL_16:
  }

  if (a5 != 1)
  {
    if (a5 != 2)
    {
      return result;
    }

LABEL_9:
  }

  return result;
}

void sub_23DD39234(id a1, id a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 2u)
  {
    if (a5 > 4u)
    {
      if (a5 != 5)
      {
        if (a5 != 6)
        {
          return;
        }

        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if (a5 != 3)
    {
      if (a5 != 4)
      {
        return;
      }

LABEL_13:

      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (!a5)
  {
LABEL_14:

    return;
  }

  if (a5 != 1)
  {
    if (a5 != 2)
    {
      return;
    }

LABEL_9:

    goto LABEL_14;
  }
}

unint64_t sub_23DD39380()
{
  result = qword_27E30F210;
  if (!qword_27E30F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F210);
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_23DD394B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_23DD39500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23DD39570(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_23DD3963C()
{
  result = qword_27E30F2C8;
  if (!qword_27E30F2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F278, &qword_23DD47190);
    sub_23DD396F4();
    sub_23DCEF9F0(&qword_27E30E380, &qword_27E30E388, &qword_23DD441D8, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F2C8);
  }

  return result;
}

unint64_t sub_23DD396F4()
{
  result = qword_27E30F2D0;
  if (!qword_27E30F2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F270, &qword_23DD47188);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F268, &qword_23DD47180);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F260, &qword_23DD47178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EEA8, &qword_23DD47020);
    sub_23DCEF9F0(&qword_27E30EED0, &qword_27E30EEA8, &qword_23DD47020, MEMORY[0x277CDF1A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F2D0);
  }

  return result;
}

uint64_t sub_23DD39884(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23DD39AF4(&qword_27E30E7B8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23DD39938()
{
  result = qword_27E30F2E0;
  if (!qword_27E30F2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F2B0, &qword_23DD471C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F2A0, &qword_23DD471B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F298, &qword_23DD471B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F290, &qword_23DD471A8);
    sub_23DCEF9F0(&qword_27E30F2E8, &qword_27E30F290, &qword_23DD471A8, MEMORY[0x277CDD798]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23DCEF9F0(&qword_27E30E380, &qword_27E30E388, &qword_23DD441D8, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F2E0);
  }

  return result;
}

uint64_t sub_23DD39AF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_117Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 145, 7);
}

uint64_t objectdestroy_123Tm()
{

  return MEMORY[0x2821FE8E8](v0, 129, 7);
}

unint64_t sub_23DD39C40()
{
  result = qword_27E30F2F8;
  if (!qword_27E30F2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30F300, &qword_23DD471E8);
    sub_23DD39884(&qword_27E30F2D8, &qword_27E30F2B8, &qword_23DD471D0, sub_23DD39938);
    sub_23DD39884(&qword_27E30F2F0, &qword_27E30F280, &qword_23DD47198, sub_23DD3963C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F2F8);
  }

  return result;
}

char *AccountUISetting.CustomDataclass.__allocating_init(accountID:identifier:localizedName:icon:state:showsToggle:toggleEnabled:accessoryView:stateChangeBlock:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v48 = a8;
  v58 = a7;
  v46 = a6;
  v45 = a5;
  v44 = a4;
  v43 = a2;
  v42 = a1;
  v56 = a17;
  v57 = a18;
  v55 = a16;
  v54 = a15;
  v52 = a13;
  v53 = a14;
  v51 = a12;
  v49 = a10;
  v50 = a11;
  v47 = a9;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2C8, &unk_23DD471F0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2D0, &unk_23DD440B0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v41 - v25;
  v27 = swift_allocObject();
  *(v27 + 7) = 0;
  v28 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__accessoryView;
  *&v63 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2D8, &qword_23DD47200);
  sub_23DD41698();
  (*(v24 + 32))(&v27[v28], v26, v23);
  v29 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__subtext;
  v63 = 0u;
  v64 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2E0, &unk_23DD440C0);
  sub_23DD41698();
  (*(v20 + 32))(&v27[v29], v22, v19);
  v30 = &v27[OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass_stateChangeBlock];
  *v30 = 0;
  v30[1] = 0;
  v31 = v43;
  *(v27 + 2) = v42;
  *(v27 + 3) = v31;
  v32 = v44;
  *(v27 + 4) = a3;
  *(v27 + 5) = v32;
  *(v27 + 6) = v45;
  swift_beginAccess();
  v33 = *(v27 + 7);
  v34 = v46;
  *(v27 + 7) = v46;
  v45 = a3;
  v46 = v34;

  swift_beginAccess();
  v59 = v58;
  v60 = v48;
  v61 = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2E8, &qword_23DD44510);
  sub_23DD41698();
  swift_endAccess();
  swift_beginAccess();
  v59 = v49;
  v60 = v50;
  v61 = v51;

  sub_23DD41698();
  swift_endAccess();
  swift_beginAccess();
  v59 = v52;
  v60 = v53;
  v61 = v54;

  sub_23DD41698();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v62 = v55;

  sub_23DD416E8();

  swift_beginAccess();
  v35 = *v30;
  v36 = v30[1];
  v38 = v56;
  v37 = v57;
  *v30 = v56;
  v30[1] = v37;
  v39 = v37;
  sub_23DCDFF40(v38, v37);
  sub_23DCF5098(v35, v36);
  sub_23DCF5098(v38, v39);
  return v27;
}

uint64_t sub_23DD3A240(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t (*)(), uint64_t))
{
  v6 = *a2;
  v8 = *a3;
  v7 = a3[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  a4(a1, v6, sub_23DD40E80, v9);
}

uint64_t AccountUISetting.DetailsConfiguration.init(iconShown:logoShown:serviceNameShown:fullNameShown:usernameShown:detailsButtonShown:detailsView:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  *(a8 + 4) = a5;
  *(a8 + 5) = a6;
  *(a8 + 8) = a7;
  return result;
}

__n128 AccountUISetting.init(id:type:label:editable:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v7 = *(a3 + 32);
  *a7 = a1;
  *(a7 + 8) = a2;
  result = *a3;
  v9 = *(a3 + 16);
  *(a7 + 16) = *a3;
  *(a7 + 32) = v9;
  *(a7 + 48) = v7;
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  *(a7 + 72) = a6;
  return result;
}

void *AccountUISettingSection.__allocating_init(id:settings:title:footer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[6] = 0;
  v12[7] = 0;
  v12[5] = 0;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  swift_beginAccess();
  v12[5] = a4;
  v12[6] = a5;
  swift_beginAccess();
  v12[7] = a6;
  return v12;
}

uint64_t AccountUISetting.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AccountUISetting.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AccountUISetting.DetailsConfiguration.detailsView.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

char *AccountUISetting.CustomDataclass.init(accountID:identifier:localizedName:icon:state:showsToggle:toggleEnabled:accessoryView:stateChangeBlock:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18;
  v50 = a8;
  v60 = a7;
  v47 = a6;
  v48 = a5;
  v46 = a4;
  v45 = a2;
  v44 = a1;
  v58 = a17;
  v59 = a18;
  v57 = a16;
  v56 = a15;
  v54 = a13;
  v55 = a14;
  v53 = a12;
  v51 = a10;
  v52 = a11;
  v49 = a9;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2C8, &unk_23DD471F0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v43 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2D0, &unk_23DD440B0);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v43 - v27;
  *(v18 + 56) = 0;
  v29 = (v18 + 56);
  v30 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__accessoryView;
  *&v65 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2D8, &qword_23DD47200);
  sub_23DD41698();
  (*(v26 + 32))(&v19[v30], v28, v25);
  v31 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__subtext;
  v65 = 0u;
  v66 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2E0, &unk_23DD440C0);
  sub_23DD41698();
  (*(v22 + 32))(&v19[v31], v24, v21);
  v32 = &v19[OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass_stateChangeBlock];
  *v32 = 0;
  v32[1] = 0;
  v33 = v45;
  *(v19 + 2) = v44;
  *(v19 + 3) = v33;
  v34 = v46;
  *(v19 + 4) = a3;
  *(v19 + 5) = v34;
  *(v19 + 6) = v48;
  swift_beginAccess();
  v35 = *v29;
  v36 = v47;
  *v29 = v47;
  v48 = a3;
  v47 = v36;

  swift_beginAccess();
  v61 = v60;
  v62 = v50;
  v63 = v49;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2E8, &qword_23DD44510);
  sub_23DD41698();
  swift_endAccess();
  swift_beginAccess();
  v61 = v51;
  v62 = v52;
  v63 = v53;

  sub_23DD41698();
  swift_endAccess();
  swift_beginAccess();
  v61 = v54;
  v62 = v55;
  v63 = v56;

  sub_23DD41698();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v64 = v57;

  sub_23DD416E8();

  swift_beginAccess();
  v37 = *v32;
  v38 = v32[1];
  v40 = v58;
  v39 = v59;
  *v32 = v58;
  v32[1] = v39;
  v41 = v39;
  sub_23DCDFF40(v40, v39);
  sub_23DCF5098(v37, v38);
  sub_23DCF5098(v40, v41);
  return v19;
}

uint64_t sub_23DD3AB3C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DD416E8();
}

uint64_t sub_23DD3ABBC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DD416E8();
}

uint64_t sub_23DD3AC2C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = sub_23DD42178();
  v4 = v3;

  MEMORY[0x23EEFDA30](v2, v4);

  return v1;
}

void sub_23DD3AD20(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
}

id sub_23DD3AD78()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void sub_23DD3ADBC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_23DD3AE54(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
}

uint64_t sub_23DD3AEB4()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_23DD3AF00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

void sub_23DD3AFA4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
  v5 = v2;
}

void *sub_23DD3AFFC()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void sub_23DD3B040(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t (*sub_23DD3B114(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DD416C8();
  return sub_23DCEFE6C;
}

uint64_t sub_23DD3B1B8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F338, &qword_23DD47330);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F330, &qword_23DD47328);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23DD3B358(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F338, &qword_23DD47330);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F330, &qword_23DD47328);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DD3B490(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F338, &qword_23DD47330);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F330, &qword_23DD47328);
  sub_23DD416A8();
  swift_endAccess();
  return sub_23DCEFE68;
}

uint64_t (*sub_23DD3B63C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DD416C8();
  return sub_23DCEFE6C;
}

uint64_t sub_23DD3B6E0(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F338, &qword_23DD47330);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F330, &qword_23DD47328);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23DD3B880(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F338, &qword_23DD47330);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F330, &qword_23DD47328);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DD3B9B8(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F338, &qword_23DD47330);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__showsToggle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F330, &qword_23DD47328);
  sub_23DD416A8();
  swift_endAccess();
  return sub_23DCEFE68;
}

uint64_t sub_23DD3BB3C@<X0>(uint64_t a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  *a4 = v6;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  return result;
}

uint64_t sub_23DD3BBD4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DD416E8();
}

uint64_t sub_23DD3BC78(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  return v3;
}

uint64_t (*sub_23DD3BCE8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DD416C8();
  return sub_23DCEFE6C;
}

uint64_t sub_23DD3BD8C(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F338, &qword_23DD47330);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F330, &qword_23DD47328);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23DD3BF2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F338, &qword_23DD47330);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F330, &qword_23DD47328);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DD3C064(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F338, &qword_23DD47330);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__toggleEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F330, &qword_23DD47328);
  sub_23DD416A8();
  swift_endAccess();
  return sub_23DCEFE68;
}

uint64_t sub_23DD3C1D4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  *a2 = v4;
  return result;
}

uint64_t sub_23DD3C254(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DD416E8();
}

uint64_t sub_23DD3C2D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  return v1;
}

uint64_t (*sub_23DD3C344(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DD416C8();
  return sub_23DCEFE6C;
}

uint64_t sub_23DD3C3E8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F340, &qword_23DD47338);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2D0, &unk_23DD440B0);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23DD3C588(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F340, &qword_23DD47338);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2D0, &unk_23DD440B0);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DD3C6C0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F340, &qword_23DD47338);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__accessoryView;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2D0, &unk_23DD440B0);
  sub_23DD416A8();
  swift_endAccess();
  return sub_23DCEFE68;
}

double sub_23DD3C830@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_23DD3C8B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23DCFC0CC(v2, v3, v4, v5);
  return sub_23DD416E8();
}

uint64_t sub_23DD3C950()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  return v1;
}

uint64_t sub_23DD3C9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DD416E8();
}

uint64_t (*sub_23DD3CA58(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DD416C8();
  return sub_23DCEFE6C;
}

uint64_t sub_23DD3CAFC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F348, &qword_23DD47388);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2C8, &unk_23DD471F0);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23DD3CC9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F348, &qword_23DD47388);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2C8, &unk_23DD471F0);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DD3CDD4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F348, &qword_23DD47388);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__subtext;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2C8, &unk_23DD471F0);
  sub_23DD416A8();
  swift_endAccess();
  return sub_23DCEFE68;
}

uint64_t sub_23DD3CF44@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass_stateChangeBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23DD40E78;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_23DCDFF40(v4, v5);
}

uint64_t sub_23DD3CFE4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23DD40E44;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass_stateChangeBlock);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_23DCDFF40(v3, v4);
  return sub_23DCF5098(v8, v9);
}

uint64_t sub_23DD3D0AC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, char *, void *))
{
  v12 = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v11[0] = sub_23DD40E4C;
  v11[1] = v9;

  a5(a1, &v12, v11);
}

uint64_t sub_23DD3D158()
{
  v1 = (v0 + OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass_stateChangeBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_23DCDFF40(*v1, v1[1]);
  return v2;
}

uint64_t sub_23DD3D1B4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass_stateChangeBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_23DCF5098(v6, v7);
}

uint64_t sub_23DD3D274()
{
  swift_beginAccess();
  v1 = v0[4];
  v2 = sub_23DD42178();
  v4 = v3;
  v5 = v1;
  v6 = MEMORY[0x23EEFDA60](v2, v4);

  swift_beginAccess();
  v7 = v0[2];
  v8 = v0[3];

  v9 = MEMORY[0x23EEFDA60](v7, v8);

  result = v6 + v9;
  if (__OFADD__(v6, v9))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD3D330(uint64_t a1)
{
  swift_beginAccess();

  sub_23DD421D8();

  swift_beginAccess();
  v2 = *(v1 + 32);
  sub_23DD42178();
  v3 = v2;
  sub_23DD421D8();
}

uint64_t AccountUISetting.CustomDataclass.deinit()
{

  v1 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F330, &qword_23DD47328);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__showsToggle, v2);
  v3(v0 + OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__toggleEnabled, v2);
  v4 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__accessoryView;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2D0, &unk_23DD440B0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass__subtext;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E2C8, &unk_23DD471F0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  sub_23DCF5098(*(v0 + OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass_stateChangeBlock), *(v0 + OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting15CustomDataclass_stateChangeBlock + 8));
  return v0;
}

uint64_t AccountUISetting.CustomDataclass.__deallocating_deinit()
{
  AccountUISetting.CustomDataclass.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23DD3D5C0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccountUISetting.CustomDataclass(0);
  result = sub_23DD41688();
  *a2 = result;
  return result;
}

uint64_t sub_23DD3D600()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v1[4];
  v3 = sub_23DD42178();
  v5 = v4;
  v6 = v2;
  v7 = MEMORY[0x23EEFDA60](v3, v5);

  swift_beginAccess();
  v8 = v1[2];
  v9 = v1[3];

  v10 = MEMORY[0x23EEFDA60](v8, v9);

  result = v7 + v10;
  if (__OFADD__(v7, v10))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD3D6C0(uint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();

  sub_23DD421D8();

  swift_beginAccess();
  v3 = *(v2 + 32);
  sub_23DD42178();
  v4 = v3;
  sub_23DD421D8();
}

uint64_t sub_23DD3D778(uint64_t a1)
{
  sub_23DD42688();
  v2 = *v1;
  swift_beginAccess();

  sub_23DD421D8();

  swift_beginAccess();
  v3 = *(v2 + 32);
  sub_23DD42178();
  v4 = v3;
  sub_23DD421D8();

  return sub_23DD426A8();
}

uint64_t sub_23DD3D83C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  swift_beginAccess();
  v6 = sub_23DD42178();
  v8 = v7;

  MEMORY[0x23EEFDA30](v6, v8);

  *a1 = v5;
  a1[1] = v4;
  return result;
}

id AccountUISetting.CustomDataclassTableConfig.__allocating_init(customDataclasses:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  swift_beginAccess();
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E4C8, &qword_23DD47390);
  sub_23DD41698();
  swift_endAccess();
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AccountUISetting.CustomDataclassTableConfig.init(customDataclasses:)(uint64_t a1)
{
  swift_beginAccess();
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E4C8, &qword_23DD47390);
  sub_23DD41698();
  swift_endAccess();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AccountUISetting.CustomDataclassTableConfig(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t (*sub_23DD3DA70(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DD416C8();
  return sub_23DCEFE6C;
}

uint64_t sub_23DD3DB14(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F360, &qword_23DD473E8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F358, &qword_23DD473E0);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23DD3DCB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F360, &qword_23DD473E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F358, &qword_23DD473E0);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DD3DDEC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F360, &qword_23DD473E8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV18AccountsUISettings16AccountUISetting26CustomDataclassTableConfig__customDataclasses;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F358, &qword_23DD473E0);
  sub_23DD416A8();
  swift_endAccess();
  return sub_23DCEFE68;
}

uint64_t sub_23DD3E04C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccountUISetting.CustomDataclassTableConfig(0);
  result = sub_23DD41688();
  *a2 = result;
  return result;
}

id AccountUISetting.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = v6;
  return sub_23DD39158(v2, v3, v4, v5, v6);
}

__n128 AccountUISetting.type.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_23DD39234(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  *(v1 + 48) = v3;
  return result;
}

uint64_t AccountUISetting.label.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t AccountUISetting.label.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_23DD3E1C8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *AccountUISettingSection.init(id:settings:title:footer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = 0;
  v6[7] = 0;
  v6[5] = 0;
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  swift_beginAccess();
  v6[5] = a4;
  v6[6] = a5;
  swift_beginAccess();
  v6[7] = a6;
  return v6;
}

uint64_t sub_23DD3E268(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_23DD3E2C8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_23DD3E314(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_23DD3E368(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
}

uint64_t sub_23DD3E400(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_23DD3E498(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 56) = v2;
}

uint64_t sub_23DD3E530(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

void *AccountUISettingSection.deinit()
{

  return v0;
}

uint64_t AccountUISettingSection.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_23DD3E600@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a1 = *(v3 + 16);
  a1[1] = v4;
}

uint64_t sub_23DD3E64C@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for AccountUISettingSection();
  result = sub_23DD41688();
  *a3 = result;
  return result;
}

uint64_t sub_23DD3E688()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  return v1;
}

uint64_t sub_23DD3E6FC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_23DD416E8();
}

uint64_t (*sub_23DD3E768(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DD416C8();
  return sub_23DCE2984;
}

uint64_t sub_23DD3E80C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F370, &qword_23DD47440);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F368, &qword_23DD47438);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23DD3E9AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F370, &qword_23DD47440);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F368, &qword_23DD47438);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DD3EAE4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F370, &qword_23DD47440);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC18AccountsUISettings29AccountsUISettingsDetailModel__account;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F368, &qword_23DD47438);
  sub_23DD416A8();
  swift_endAccess();
  return sub_23DCE6D80;
}

uint64_t sub_23DD3ECA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_23DD416E8();
}

uint64_t (*sub_23DD3ED0C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DD416C8();
  return sub_23DCEFE6C;
}

uint64_t sub_23DD3EDB0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F380, &qword_23DD47498);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F378, &qword_23DD47490);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23DD3EF50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F380, &qword_23DD47498);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F378, &qword_23DD47490);
  sub_23DD416B8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23DD3F088(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F380, &qword_23DD47498);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC18AccountsUISettings29AccountsUISettingsDetailModel__sections;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F378, &qword_23DD47490);
  sub_23DD416A8();
  swift_endAccess();
  return sub_23DCEFE68;
}

id AccountsUISettingsDetailModel.__allocating_init(with:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F378, &qword_23DD47490);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = objc_allocWithZone(v1);
  v8 = OBJC_IVAR____TtC18AccountsUISettings29AccountsUISettingsDetailModel__sections;
  v14 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F080, &qword_23DD474A0);
  sub_23DD41698();
  (*(v4 + 32))(&v7[v8], v6, v3);
  swift_beginAccess();
  v13 = a1;
  sub_23DD3F854();
  v9 = a1;
  sub_23DD41698();
  swift_endAccess();
  v12.receiver = v7;
  v12.super_class = v1;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

id AccountsUISettingsDetailModel.init(with:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F378, &qword_23DD47490);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = OBJC_IVAR____TtC18AccountsUISettings29AccountsUISettingsDetailModel__sections;
  v14 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30F080, &qword_23DD474A0);
  sub_23DD41698();
  (*(v4 + 32))(&v1[v7], v6, v3);
  swift_beginAccess();
  v13 = a1;
  sub_23DD3F854();
  v8 = a1;
  sub_23DD41698();
  swift_endAccess();
  v9 = type metadata accessor for AccountsUISettingsDetailModel(0);
  v12.receiver = v1;
  v12.super_class = v9;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

id AccountsUISettingsDetailModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_23DD3F5B0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_23DD3F6B4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccountsUISettingsDetailModel(0);
  result = sub_23DD41688();
  *a2 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall AccountsUISettingsPlugin.sections(for:)(ACAccount a1)
{
  v1 = 0;
  result.value._rawValue = v1;
  return result;
}

uint64_t _s18AccountsUISettings16AccountUISettingV15CustomDataclassC2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  swift_beginAccess();
  v4 = sub_23DD42178();
  v6 = v5;
  if (v4 == sub_23DD42178() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_23DD42648();

    v10 = 0;
    if ((v9 & 1) == 0)
    {
      return v10 & 1;
    }
  }

  swift_beginAccess();
  v12 = a1[2];
  v11 = a1[3];
  swift_beginAccess();
  if (v12 == a2[2] && v11 == a2[3])
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_23DD42648();
  }

  return v10 & 1;
}

unint64_t sub_23DD3F854()
{
  result = qword_2814FCC50;
  if (!qword_2814FCC50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814FCC50);
  }

  return result;
}

unint64_t sub_23DD3F8C4()
{
  result = qword_27E30F388;
  if (!qword_27E30F388)
  {
    type metadata accessor for AccountUISetting.CustomDataclass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30F388);
  }

  return result;
}

uint64_t keypath_get_56Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t get_enum_tag_for_layout_string_18AccountsUISettings16AccountUISettingV11SettingTypeO(uint64_t a1)
{
  if ((*(a1 + 32) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
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

uint64_t sub_23DD3F9C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_23DD3FA10(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_23DD3FA74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_23DD3FAD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_23DD3FB38(uint64_t a1)
{
  sub_23DCEF378(319, &qword_27E30F3A0, &qword_27E30E2E8, &qword_23DD44510);
  if (v1 <= 0x3F)
  {
    sub_23DCEF378(319, &qword_2814FCD18, &qword_27E30E2D8, &qword_23DD47200);
    if (v2 <= 0x3F)
    {
      sub_23DCEF378(319, &qword_27E30F3A8, &qword_27E30E2E0, &unk_23DD440C0);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23DD40510(uint64_t a1)
{
  sub_23DCEF378(319, &unk_27E30F3C0, &qword_27E30E4C8, &qword_23DD47390);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_23DD4071C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 33))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 32);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23DD40764(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_23DD407AC(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void sub_23DD409E0(uint64_t a1)
{
  sub_23DD40D60(319);
  if (v1 <= 0x3F)
  {
    sub_23DCEF378(319, &qword_2814FCCF0, &qword_27E30F080, &qword_23DD474A0);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23DD40D60(uint64_t a1)
{
  if (!qword_2814FCCB0)
  {
    sub_23DD3F854();
    v1 = sub_23DD416F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2814FCCB0);
    }
  }
}

uint64_t sub_23DD40E80(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}