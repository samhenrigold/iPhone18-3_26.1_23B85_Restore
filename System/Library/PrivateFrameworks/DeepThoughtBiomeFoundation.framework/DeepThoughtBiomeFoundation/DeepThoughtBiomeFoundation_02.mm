uint64_t sub_2486E5910(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_2487317C0();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_248731910();
      sub_2487310D0();
      result = sub_248731930();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_2486E5BB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F10, &unk_248734000);
  v35 = v4;
  result = sub_2487317C0();
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_248731910();
      sub_2487310D0();
      result = sub_248731930();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
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

uint64_t sub_2486E5E7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v32 = v6;
  result = sub_2487317C0();
  v9 = result;
  if (*(v7 + 16))
  {
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
      if ((v32 & 1) == 0)
      {
      }

      sub_248731910();
      MEMORY[0x24C1D78A0](v22);
      result = sub_248731930();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v32 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v4;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

_OWORD *sub_2486E6104(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2486C79A0(a4, (a5[7] + 32 * a1));
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

unint64_t sub_2486E6170(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_2486E61B8(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_2486E6200(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_248730970();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_2486E62B0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

void sub_2486E62F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FD8, qword_2487340C0);
  v2 = *v0;
  v3 = sub_2487317B0();
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
        sub_2486C5B68(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2486C79A0(v25, (*(v4 + 56) + v22));
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

void *sub_2486E6498()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6310, &qword_248734740);
  v2 = *v0;
  v3 = sub_2487317B0();
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

void sub_2486E65E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F18, &unk_248734720);
  v2 = *v0;
  v3 = sub_2487317B0();
  v4 = v3;
  if (*(v2 + 16))
  {
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
}

void sub_2486E674C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FB8, &qword_2487340A8);
  v2 = *v0;
  v3 = sub_2487317B0();
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
        v22 = 40 * v17;
        sub_2486E8718(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2486CD01C(v25, *(v4 + 56) + v22);
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

void sub_2486E68F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F58, &qword_248734050);
  v2 = *v0;
  v3 = sub_2487317B0();
  v4 = v3;
  if (*(v2 + 16))
  {
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
}

void sub_2486E6A5C()
{
  v1 = v0;
  v35 = sub_248730970();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F48, &unk_248734038);
  v3 = *v0;
  v4 = sub_2487317B0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
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
}

void sub_2486E6CF0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2487317B0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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
}

void sub_2486E6E64(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2487317B0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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
}

id sub_2486E6FC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F10, &unk_248734000);
  v2 = *v0;
  v3 = sub_2487317B0();
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

        result = v20;
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

uint64_t sub_2486E7158(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_248731840();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for FeaturizedConversationTurn(0);
        v6 = sub_248731290();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_2486E7B10(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2486E725C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2486E725C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(v7 + 32) >= *(*v9 + 32))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2486E72C8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v107 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_124:
    v4 = *v107;
    if (*v107)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_126;
    }

    goto LABEL_162;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v10 = *(*a3 + 8 * v9);
      v11 = 8 * v6;
      v12 = (*a3 + 8 * v6);
      v13 = *v12;
      v4 = (v12 + 2);
      swift_beginAccess();
      v14 = *(v10 + 32);
      result = swift_beginAccess();
      v15 = *(v13 + 32);
      v16 = v8 + 2;
      while (v5 != v16)
      {
        v18 = *(v4 - 1);
        v17 = *v4;
        swift_beginAccess();
        v19 = *(v17 + 32);
        result = swift_beginAccess();
        ++v16;
        v4 += 8;
        if (v14 < v15 == v19 >= *(v18 + 32))
        {
          v5 = (v16 - 1);
          break;
        }
      }

      if (v14 < v15)
      {
        if (v5 < v8)
        {
          goto LABEL_153;
        }

        if (v8 < v5)
        {
          v20 = 8 * v5 - 8;
          v21 = v5;
          v22 = v8;
          do
          {
            if (v22 != --v21)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_159;
              }

              v24 = *(v23 + v11);
              *(v23 + v11) = *(v23 + v20);
              *(v23 + v20) = v24;
            }

            ++v22;
            v20 -= 8;
            v11 += 8;
          }

          while (v22 < v21);
        }
      }

      v9 = v5;
    }

    v25 = a3[1];
    if (v9 < v25)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_152;
      }

      if (v9 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_154;
        }

        if (&v8[a4] >= v25)
        {
          v26 = a3[1];
        }

        else
        {
          v26 = &v8[a4];
        }

        if (v26 < v8)
        {
          goto LABEL_155;
        }

        if (v9 != v26)
        {
          v115 = v7;
          __dst = v8;
          v27 = *a3;
          v4 = (*a3 + 8 * v9 - 8);
          v28 = &v8[-v9];
          do
          {
            v29 = v9;
            v30 = *(v27 + 8 * v9);
            v7 = v28;
            v31 = v4;
            do
            {
              v32 = *v31;
              swift_beginAccess();
              v33 = *(v30 + 32);
              swift_beginAccess();
              if (v33 >= *(v32 + 32))
              {
                break;
              }

              if (!v27)
              {
                goto LABEL_156;
              }

              v34 = *v31;
              v30 = *(v31 + 1);
              *v31 = v30;
              *(v31 + 1) = v34;
              v31 -= 8;
            }

            while (!__CFADD__(v7++, 1));
            v9 = v29 + 1;
            v4 += 8;
            --v28;
          }

          while (v29 + 1 != v26);
          v9 = v26;
          v7 = v115;
          v8 = __dst;
        }
      }
    }

    if (v9 < v8)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v109 = v9;
    if ((result & 1) == 0)
    {
      result = sub_2486C45C0(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 2);
    v36 = *(v7 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_2486C45C0((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v38;
    v39 = &v7[16 * v37];
    *(v39 + 4) = v8;
    *(v39 + 5) = v9;
    __dsta = *v107;
    if (!*v107)
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v37)
    {
      break;
    }

LABEL_3:
    v6 = v109;
    v5 = a3[1];
    if (v109 >= v5)
    {
      goto LABEL_124;
    }
  }

  while (1)
  {
    v40 = v38 - 1;
    if (v38 >= 4)
    {
      v46 = &v7[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      v41 = __dsta;
      if (v52)
      {
        goto LABEL_138;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_139;
      }

      v53 = &v7[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_141;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_144;
      }

      if (v57 >= v49)
      {
        v75 = &v7[16 * v40 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_148;
        }

        if (v44 < v78)
        {
          v40 = v38 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v41 = __dsta;
    if (v38 == 3)
    {
      v42 = *(v7 + 4);
      v43 = *(v7 + 5);
      v52 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      v45 = v52;
LABEL_56:
      if (v45)
      {
        goto LABEL_140;
      }

      v58 = &v7[16 * v38];
      v60 = *v58;
      v59 = *(v58 + 1);
      v61 = __OFSUB__(v59, v60);
      v62 = v59 - v60;
      v63 = v61;
      if (v61)
      {
        goto LABEL_143;
      }

      v64 = &v7[16 * v40 + 32];
      v66 = *v64;
      v65 = *(v64 + 1);
      v52 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v52)
      {
        goto LABEL_146;
      }

      if (__OFADD__(v62, v67))
      {
        goto LABEL_147;
      }

      if (v62 + v67 >= v44)
      {
        if (v44 < v67)
        {
          v40 = v38 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v68 = &v7[16 * v38];
    v70 = *v68;
    v69 = *(v68 + 1);
    v52 = __OFSUB__(v69, v70);
    v62 = v69 - v70;
    v63 = v52;
LABEL_70:
    if (v63)
    {
      goto LABEL_142;
    }

    v71 = &v7[16 * v40];
    v73 = *(v71 + 4);
    v72 = *(v71 + 5);
    v52 = __OFSUB__(v72, v73);
    v74 = v72 - v73;
    if (v52)
    {
      goto LABEL_145;
    }

    if (v74 < v62)
    {
      goto LABEL_3;
    }

LABEL_77:
    if (v40 - 1 >= v38)
    {
      break;
    }

    v79 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v111 = v40 - 1;
    v112 = v40;
    v80 = *&v7[16 * v40 + 32];
    v81 = *&v7[16 * v40 + 40];
    v114 = *&v7[16 * v40 + 16];
    v116 = v7;
    v82 = (v79 + 8 * v114);
    v83 = 8 * v80;
    v84 = (v79 + 8 * v80);
    v113 = v81;
    v85 = 8 * v81;
    v86 = (v79 + 8 * v81);
    v87 = 8 * v80 - 8 * v114;
    v88 = 8 * v81 - 8 * v80;
    if (v87 >= v88)
    {
      if (v84 != v41 || v86 <= v41)
      {
        memmove(v41, (v79 + 8 * v80), 8 * v81 - 8 * v80);
      }

      v89 = &v41[v88];
      if (v88 < 1 || v83 <= 8 * v114)
      {
LABEL_113:
        v7 = __dsta;
        v4 = v84;
      }

      else
      {
        do
        {
          v4 = v84 - 8;
          v86 -= 8;
          v95 = v89;
          while (1)
          {
            v96 = v86 + 8;
            v97 = *(v95 - 1);
            v95 -= 8;
            v98 = *v4;
            swift_beginAccess();
            v99 = *(v97 + 32);
            swift_beginAccess();
            if (v99 < *(v98 + 32))
            {
              break;
            }

            if (v96 != v89)
            {
              *v86 = *v95;
            }

            v86 -= 8;
            v89 = v95;
            if (v95 <= __dsta)
            {
              v89 = v95;
              goto LABEL_113;
            }
          }

          if (v96 != v84)
          {
            *v86 = *v4;
          }

          v7 = __dsta;
          if (v89 <= __dsta)
          {
            break;
          }

          v84 -= 8;
        }

        while (v82 < v4);
      }
    }

    else
    {
      if (v82 != v41 || v84 <= v41)
      {
        memmove(v41, (v79 + 8 * v114), 8 * v80 - 8 * v114);
      }

      v89 = &v41[v87];
      if (v87 >= 1 && v85 > v83)
      {
        v7 = __dsta;
        while (1)
        {
          v90 = *v84;
          v91 = *v7;
          swift_beginAccess();
          v92 = *(v90 + 32);
          swift_beginAccess();
          if (v92 >= *(v91 + 32))
          {
            break;
          }

          v93 = v84;
          v94 = v82 == v84;
          v84 += 8;
          if (!v94)
          {
            goto LABEL_91;
          }

LABEL_92:
          v82 += 8;
          if (v7 >= v89 || v84 >= v86)
          {
            goto LABEL_111;
          }
        }

        v93 = v7;
        v94 = v82 == v7;
        v7 += 8;
        if (v94)
        {
          goto LABEL_92;
        }

LABEL_91:
        *v82 = *v93;
        goto LABEL_92;
      }

      v7 = __dsta;
LABEL_111:
      v4 = v82;
    }

    if (v4 != v7 || v4 >= &v7[(v89 - v7 + (v89 - v7 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v4, v7, 8 * ((v89 - v7) / 8));
    }

    if (v113 < v114)
    {
      goto LABEL_136;
    }

    v100 = v116;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v100 = sub_2486FD038(v116);
    }

    if (v112 > *(v100 + 2))
    {
      goto LABEL_137;
    }

    v101 = &v100[16 * v111];
    *(v101 + 4) = v114;
    *(v101 + 5) = v113;
    result = sub_2486FCFAC(v112);
    v7 = v100;
    v38 = *(v100 + 2);
    if (v38 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  result = sub_2486FD038(v7);
  v7 = result;
LABEL_126:
  v102 = *(v7 + 2);
  if (v102 < 2)
  {
  }

  while (*a3)
  {
    v103 = *&v7[16 * v102];
    v104 = *&v7[16 * v102 + 24];
    sub_2486E8080((*a3 + 8 * v103), (*a3 + 8 * *&v7[16 * v102 + 16]), (*a3 + 8 * v104), v4);
    if (v108)
    {
    }

    if (v104 < v103)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_2486FD038(v7);
    }

    if (v102 - 2 >= *(v7 + 2))
    {
      goto LABEL_151;
    }

    v105 = &v7[16 * v102];
    *v105 = v103;
    *(v105 + 1) = v104;
    result = sub_2486FCFAC(v102 - 1);
    v102 = *(v7 + 2);
    if (v102 <= 1)
    {
    }
  }

LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}

uint64_t sub_2486E7B10(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v82;
    if (!*v82)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_2486FD038(v10);
      v10 = result;
    }

    v77 = *(v10 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = *&v10[16 * v77];
        v79 = *&v10[16 * v77 + 24];
        sub_2486E8314((*a3 + 8 * v78), (*a3 + 8 * *&v10[16 * v77 + 16]), (*a3 + 8 * v79), v5);
        if (v4)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2486FD038(v10);
        }

        if (v77 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v80 = &v10[16 * v77];
        *v80 = v78;
        *(v80 + 1) = v79;
        result = sub_2486FCFAC(v77 - 1);
        v77 = *(v10 + 2);
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*(*a3 + 8 * v9) + 32);
      v13 = *(*(*a3 + 8 * v11) + 32);
      v14 = v11 + 2;
      v15 = v12;
      while (v7 != v14)
      {
        v16 = *(*(*a3 + 8 * v14) + 32);
        v17 = v16 >= v15;
        ++v14;
        v15 = v16;
        if ((((v12 < v13) ^ v17) & 1) == 0)
        {
          v9 = v14 - 1;
          if (v12 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v12 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v18 = 8 * v9 - 8;
        v19 = 8 * v11;
        v20 = v9;
        v21 = v11;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v22 = *(v23 + v19);
            *(v23 + v19) = *(v23 + v18);
            *(v23 + v18) = v22;
          }

          ++v21;
          v18 -= 8;
          v19 += 8;
        }

        while (v21 < v20);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2486C45C0(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v32 = *(v10 + 3);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_2486C45C0((v32 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v33;
    v34 = &v10[16 * v5];
    *(v34 + 4) = v11;
    *(v34 + 5) = v9;
    v35 = *v82;
    if (!*v82)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v10 + 4);
          v38 = *(v10 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v10[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_107;
          }

          v59 = &v10[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v63 = &v10[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_71:
        if (v58)
        {
          goto LABEL_106;
        }

        v66 = &v10[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_109;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_78:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v75 = *&v10[16 * v74 + 32];
        v5 = *&v10[16 * v36 + 40];
        sub_2486E8314((*a3 + 8 * v75), (*a3 + 8 * *&v10[16 * v36 + 32]), (*a3 + 8 * v5), v35);
        if (v4)
        {
        }

        if (v5 < v75)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2486FD038(v10);
        }

        if (v74 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v76 = &v10[16 * v74];
        *(v76 + 4) = v75;
        *(v76 + 5) = v5;
        result = sub_2486FCFAC(v36);
        v33 = *(v10 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v10[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v10[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_108;
      }

      if (v52 >= v44)
      {
        v70 = &v10[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_112;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 8 * v9 - 8;
  v26 = v11 - v9;
LABEL_30:
  v27 = *(v24 + 8 * v9);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    v30 = *v29;
    if (*(v27 + 32) >= *(*v29 + 32))
    {
LABEL_29:
      ++v9;
      v25 += 8;
      --v26;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    *v29 = v27;
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_2486E8080(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v6;
      v18 = *v4;
      swift_beginAccess();
      v19 = *(v17 + 32);
      swift_beginAccess();
      if (v19 < *(v18 + 32))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    do
    {
      v27 = v6;
      v20 = v6 - 8;
      v5 -= 8;
      v21 = v14;
      while (1)
      {
        v22 = v5 + 8;
        v23 = *(v21 - 1);
        v21 -= 8;
        v6 = v20;
        v24 = *v20;
        swift_beginAccess();
        v25 = *(v23 + 32);
        swift_beginAccess();
        if (v25 < *(v24 + 32))
        {
          break;
        }

        if (v22 != v14)
        {
          *v5 = *v21;
        }

        v5 -= 8;
        v14 = v21;
        v20 = v6;
        if (v21 <= v4)
        {
          v14 = v21;
          v6 = v27;
          goto LABEL_35;
        }
      }

      if (v22 != v27)
      {
        *v5 = *v6;
      }
    }

    while (v14 > v4 && v6 > v7);
  }

LABEL_35:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_2486E8314(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v6 + 32) < *(*v4 + 32))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(v21 + 32) < *(*v17 + 32))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_2486E8718(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t FeaturizedEvent.__allocating_init(event:intraEventFeatures:)(char *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_timestamp;
  swift_beginAccess();
  v6 = *&a1[v5];
  v7 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventType;
  swift_beginAccess();
  v8 = (*(v2 + 312))(*&a1[v7], a2, v6);

  return v8;
}

uint64_t sub_2486E88D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
}

double sub_2486E8934()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_2486E896C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 56) = v2;
}

double sub_2486E89CC()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_2486E8A04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 64) = v2;
}

double sub_2486E8A64()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_2486E8A9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
}

double sub_2486E8AFC()
{
  swift_beginAccess();

  return result;
}

uint64_t FeaturizedEvent.__allocating_init(timestamp:eventType:intraEventFeatures:)(uint64_t a1, uint64_t a2, double a3)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  v7 = MEMORY[0x277D84F90];
  *(result + 56) = MEMORY[0x277D84F90];
  *(result + 64) = v7;
  *(result + 72) = v7;
  *(result + 32) = a3;
  *(result + 40) = a1;
  *(result + 48) = v7;
  *(result + 24) = a2;
  return result;
}

uint64_t FeaturizedEvent.init(timestamp:eventType:intraEventFeatures:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 16) = 0;
  v4 = MEMORY[0x277D84F90];
  *(v3 + 56) = MEMORY[0x277D84F90];
  *(v3 + 64) = v4;
  *(v3 + 72) = v4;
  *(v3 + 32) = a3;
  *(v3 + 40) = a1;
  *(v3 + 48) = v4;
  *(v3 + 24) = a2;
  return v3;
}

void sub_2486E8BC4(unint64_t a1, _BYTE *a2, double a3)
{
  v4 = v3;
  v34 = a1 >> 62;
  v33 = *a2;
  if (!*a2 || *a2 != 1)
  {
    v7 = sub_248731880();

    if (v7)
    {
      goto LABEL_6;
    }

    if (v33 < 2)
    {
      v19 = sub_248731880();

      if ((v19 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_6;
    }
  }

LABEL_6:
  if (v34)
  {
    v8 = sub_248731790();
    if (v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_8:
      if (v8 < 1)
      {
LABEL_58:
        __break(1u);
        return;
      }

      swift_beginAccess();
      swift_beginAccess();
      for (i = 0; i != v8; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C1D7600](i, a1);
        }

        else
        {
          v10 = *(a1 + 8 * i + 32);
        }

        swift_beginAccess();
        v11 = *(v10 + 32);
        v12 = *(v4 + 32);
        if (v11 - v12 < 0.0 || v11 - v12 > a3 || v12 == v11 && (v13 = *(v4 + 40), swift_beginAccess(), v13 == *(v10 + 40)))
        {
        }

        else
        {
          swift_beginAccess();

          MEMORY[0x24C1D71A0](v14);
          if (*((*(v4 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_248731260();
          }

          sub_2487312A0();
          swift_endAccess();
          if (qword_28150EE60 != -1)
          {
            swift_once();
          }

          v15 = sub_248730DF0();
          __swift_project_value_buffer(v15, qword_28150F088);

          v16 = sub_248730DD0();
          v17 = sub_2487313C0();

          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            *v18 = 134218240;
            *(v18 + 4) = *(v10 + 32);
            *(v18 + 12) = 2048;
            *(v18 + 14) = *(v4 + 32);
            _os_log_impl(&dword_2486BF000, v16, v17, "Found a matching event happening at %f for an event happening at %f", v18, 0x16u);
            MEMORY[0x24C1D8100](v18, -1, -1);
          }
        }
      }
    }
  }

LABEL_27:
  if (!v33)
  {
    goto LABEL_32;
  }

  v20 = sub_248731880();

  if (v20)
  {
    goto LABEL_33;
  }

  if (v33 == 2)
  {
LABEL_32:
  }

  else
  {
    v21 = sub_248731880();

    if ((v21 & 1) == 0)
    {
      return;
    }
  }

LABEL_33:
  if (v34)
  {
    v22 = sub_248731790();
    if (!v22)
    {
      return;
    }
  }

  else
  {
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      return;
    }
  }

  if (v22 < 1)
  {
    __break(1u);
    goto LABEL_58;
  }

  swift_beginAccess();
  swift_beginAccess();
  for (j = 0; j != v22; ++j)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x24C1D7600](j, a1);
    }

    else
    {
      v24 = *(a1 + 8 * j + 32);
    }

    v25 = *(v4 + 32);
    swift_beginAccess();
    v26 = *(v24 + 32);
    if (v25 - v26 < 0.0 || v25 - v26 > a3 || v25 == v26 && (v27 = *(v4 + 40), swift_beginAccess(), v27 == *(v24 + 40)))
    {
    }

    else
    {
      swift_beginAccess();

      MEMORY[0x24C1D71A0](v28);
      if (*((*(v4 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_248731260();
      }

      sub_2487312A0();
      swift_endAccess();
      if (qword_28150EE60 != -1)
      {
        swift_once();
      }

      v29 = sub_248730DF0();
      __swift_project_value_buffer(v29, qword_28150F088);

      v30 = sub_248730DD0();
      v31 = sub_2487313C0();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134218240;
        *(v32 + 4) = *(v24 + 32);
        *(v32 + 12) = 2048;
        *(v32 + 14) = *(v4 + 32);
        _os_log_impl(&dword_2486BF000, v30, v31, "Found a matching event happening at %f for an event happening at %f", v32, 0x16u);
        MEMORY[0x24C1D8100](v32, -1, -1);
      }
    }
  }
}

void sub_2486E92E4(unint64_t a1, _BYTE *a2, double a3)
{
  v4 = v3;
  v30 = a1 >> 62;
  v29 = *a2;
  if (!*a2 || *a2 != 1)
  {
    v7 = sub_248731880();

    if (v7)
    {
      goto LABEL_6;
    }

    if (v29 < 2)
    {
      v17 = sub_248731880();

      if ((v17 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_6;
    }
  }

LABEL_6:
  if (v30)
  {
    v8 = sub_248731790();
    if (v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_8:
      if (v8 < 1)
      {
LABEL_54:
        __break(1u);
        return;
      }

      swift_beginAccess();
      for (i = 0; i != v8; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C1D7600](i, a1);
        }

        else
        {
          v10 = *(a1 + 8 * i + 32);
        }

        v11 = *(v10 + 32) - *(v4 + 32);
        if (v11 < 0.0 || v11 > a3)
        {
        }

        else
        {
          swift_beginAccess();

          MEMORY[0x24C1D71A0](v12);
          if (*((*(v4 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_248731260();
          }

          sub_2487312A0();
          swift_endAccess();
          if (qword_28150EE60 != -1)
          {
            swift_once();
          }

          v13 = sub_248730DF0();
          __swift_project_value_buffer(v13, qword_28150F088);

          v14 = sub_248730DD0();
          v15 = sub_2487313C0();

          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 134218240;
            *(v16 + 4) = *(v10 + 32);
            *(v16 + 12) = 2048;
            *(v16 + 14) = *(v4 + 32);
            _os_log_impl(&dword_2486BF000, v14, v15, "Found a matching turn happening at %f for an event happening at %f", v16, 0x16u);
            MEMORY[0x24C1D8100](v16, -1, -1);
          }
        }
      }
    }
  }

LABEL_25:
  if (!v29)
  {
    goto LABEL_30;
  }

  v18 = sub_248731880();

  if (v18)
  {
    goto LABEL_31;
  }

  if (v29 == 2)
  {
LABEL_30:
  }

  else
  {
    v19 = sub_248731880();

    if ((v19 & 1) == 0)
    {
      return;
    }
  }

LABEL_31:
  if (v30)
  {
    v20 = sub_248731790();
    if (!v20)
    {
      return;
    }
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      return;
    }
  }

  if (v20 < 1)
  {
    __break(1u);
    goto LABEL_54;
  }

  swift_beginAccess();
  for (j = 0; j != v20; ++j)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x24C1D7600](j, a1);
    }

    else
    {
      v22 = *(a1 + 8 * j + 32);
    }

    v23 = *(v4 + 32) - *(v22 + 32);
    if (v23 < 0.0 || v23 > a3)
    {
    }

    else
    {
      swift_beginAccess();

      MEMORY[0x24C1D71A0](v24);
      if (*((*(v4 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_248731260();
      }

      sub_2487312A0();
      swift_endAccess();
      if (qword_28150EE60 != -1)
      {
        swift_once();
      }

      v25 = sub_248730DF0();
      __swift_project_value_buffer(v25, qword_28150F088);

      v26 = sub_248730DD0();
      v27 = sub_2487313C0();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 134218240;
        *(v28 + 4) = *(v22 + 32);
        *(v28 + 12) = 2048;
        *(v28 + 14) = *(v4 + 32);
        _os_log_impl(&dword_2486BF000, v26, v27, "Found a matching turn happening at %f for an event happening at %f", v28, 0x16u);
        MEMORY[0x24C1D8100](v28, -1, -1);
      }
    }
  }
}

BOOL sub_2486E995C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  swift_beginAccess();
  if (v3 != *(a1 + 32))
  {
    return 0;
  }

  swift_beginAccess();
  v4 = *(v1 + 40);
  swift_beginAccess();
  return v4 == *(a1 + 40);
}

BOOL sub_2486E9A04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  if (*(v3 + 40) != a1)
  {
    return 0;
  }

  v6 = *(a2 + 16);
  swift_beginAccess();
  if (v6)
  {
    v7 = (a2 + 40);
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = *(v3 + 24);
      if (!*(v9 + 16))
      {
        goto LABEL_8;
      }

      v11 = *(v7 - 1);
      v10 = *v7;

      v12 = sub_2486C94CC(v11, v10);
      if ((v13 & 1) == 0)
      {
        break;
      }

      sub_2486C5B68(*(v9 + 56) + 32 * v12, v22);

      v14 = 1;
LABEL_9:
      sub_2486EA0BC(v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_2486C4700(0, *(v8 + 2) + 1, 1, v8);
      }

      v16 = *(v8 + 2);
      v15 = *(v8 + 3);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v8 = sub_2486C4700((v15 > 1), v16 + 1, 1, v8);
      }

      *(v8 + 2) = v17;
      v8[v16 + 32] = v14;
      v7 += 2;
      if (!--v6)
      {
        goto LABEL_17;
      }
    }

LABEL_8:
    v14 = 0;
    memset(v22, 0, sizeof(v22));
    goto LABEL_9;
  }

  v8 = MEMORY[0x277D84F90];
  v17 = *(MEMORY[0x277D84F90] + 16);
LABEL_17:
  v19 = v8 + 32;
  do
  {
    v18 = v17 == 0;
    if (!v17)
    {
      break;
    }

    v20 = *v19++;
    --v17;
  }

  while ((v20 & 1) != 0);

  return v18;
}

uint64_t sub_2486E9BC4(_BYTE *a1)
{
  v2 = *a1;
  if (*a1 && v2 == 1)
  {
LABEL_5:

    goto LABEL_6;
  }

  v3 = sub_248731880();

  if ((v3 & 1) == 0)
  {
    if (v2 < 2)
    {
      v7 = sub_248731880();

      if ((v7 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_6:
  swift_beginAccess();
  sub_2486E8784((v1 + 48));
  swift_endAccess();
LABEL_7:
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = sub_248731880();

  if (v4)
  {
LABEL_13:
    swift_beginAccess();
    sub_2486E8784((v1 + 56));
    return swift_endAccess();
  }

  if (v2 == 2)
  {
LABEL_12:

    goto LABEL_13;
  }

  v5 = sub_248731880();

  if (v5)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_2486E9DA4(_BYTE *a1)
{
  v2 = *a1;
  if (*a1 && v2 == 1)
  {
LABEL_5:

    goto LABEL_6;
  }

  v3 = sub_248731880();

  if ((v3 & 1) == 0)
  {
    if (v2 < 2)
    {
      v7 = sub_248731880();

      if ((v7 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_6:
  swift_beginAccess();
  sub_2486E879C((v1 + 64));
  swift_endAccess();
LABEL_7:
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = sub_248731880();

  if (v4)
  {
LABEL_13:
    swift_beginAccess();
    sub_2486E879C((v1 + 72));
    return swift_endAccess();
  }

  if (v2 == 2)
  {
LABEL_12:

    goto LABEL_13;
  }

  v5 = sub_248731880();

  if (v5)
  {
    goto LABEL_13;
  }

  return result;
}

void *FeaturizedEvent.deinit()
{

  return v0;
}

uint64_t FeaturizedEvent.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_2486EA01C@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for FeaturizedEvent();
  result = sub_248731660();
  *a3 = result;
  return result;
}

void sub_2486EA084(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_2486EA0BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA64E0, &qword_248733800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2486EA124(uint64_t a1)
{
  result = sub_2486EA14C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2486EA14C()
{
  result = qword_27EEA6318;
  if (!qword_27EEA6318)
  {
    type metadata accessor for FeaturizedEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6318);
  }

  return result;
}

id SequenceInterTurnFeatureExtractor.__allocating_init(maxSeconds:)(double a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation33SequenceInterTurnFeatureExtractor_maxSeconds] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SequenceInterTurnFeatureExtractor.init(maxSeconds:)(double a1)
{
  *&v1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation33SequenceInterTurnFeatureExtractor_maxSeconds] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SequenceInterTurnFeatureExtractor();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_2486EA53C(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v88 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_134;
  }

  for (result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = sub_248731790())
  {
    v7 = 0;
    v91 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation33SequenceInterTurnFeatureExtractor_maxSeconds;
    v98 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25InterTurnFeatureExtractor_features;
    v96 = v4 & 0xC000000000000001;
    v89 = v4 + 32;
    v90 = v4 & 0xFFFFFFFFFFFFFF8;
    v87 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    v94 = v4;
    v95 = result;
    v92 = a1;
    v93 = v3;
    while (!v96)
    {
      if (v7 >= *(v90 + 16))
      {
        goto LABEL_133;
      }

      v99 = *(v89 + 8 * v7);

      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_132;
      }

LABEL_12:
      v97 = v9;
      if (!*(a1 + 16))
      {
        goto LABEL_55;
      }

      v10 = *(v3 + v91);
      v11 = sub_2486C94CC(*(v99 + 5), *(v99 + 6));
      if ((v12 & 1) == 0)
      {
        goto LABEL_55;
      }

      a1 = *(*(a1 + 56) + 8 * v11);
      if (v96)
      {
        v13 = MEMORY[0x24C1D7600](a1, v4);
      }

      else
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          result = sub_2487318B0();
          __break(1u);
          return result;
        }

        if (a1 >= *(v90 + 16))
        {
          goto LABEL_137;
        }

        v13 = *(v89 + 8 * a1);
      }

      swift_beginAccess();
      v14 = *(v13 + 24);

      v16 = sub_2486C86E8(0x74736F702E525341, 0xEB000000006E7449, v14, v15);

      if (!v16)
      {
        goto LABEL_54;
      }

      if (!v16[2])
      {

LABEL_55:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v106 = 0u;
        v107[0] = 0u;
        v36 = 0.0;
        v37 = 1;
        v38 = 1;
        goto LABEL_56;
      }

      v17 = v16[4];
      v18 = v16[5];

      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (!v19)
      {
LABEL_54:

        goto LABEL_55;
      }

      v20 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_138;
      }

      if (v95 < v20)
      {
        goto LABEL_139;
      }

      if (v88)
      {
        v21 = sub_248731790();
      }

      else
      {
        v21 = *(v90 + 16);
      }

      if (v21 < v20)
      {
        goto LABEL_140;
      }

      if (v20 < 0)
      {
        goto LABEL_141;
      }

      if (v88)
      {
        v22 = sub_248731790();
      }

      else
      {
        v22 = *(v90 + 16);
      }

      if (v22 < v95)
      {
        goto LABEL_142;
      }

      if (!v96 || v20 == v95)
      {

        if (!v88)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v20 >= v95)
        {
          goto LABEL_144;
        }

        a1 = type metadata accessor for FeaturizedConversationTurn(0);

        v23 = v20;
        do
        {
          v24 = v23 + 1;
          sub_248731670();
          v23 = v24;
        }

        while (v95 != v24);
        if (!v88)
        {
LABEL_42:
          v4 = v95;
          v25 = v87;
          goto LABEL_45;
        }
      }

      sub_2487317A0();
      v25 = v26;
      v20 = v27;
      v4 = v28 >> 1;
LABEL_45:
      *&v106 = MEMORY[0x277D84F90];
      swift_unknownObjectRetain();
      for (; v4 != v20; ++v20)
      {
        if (v20 >= v4)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        v74 = *(v25 + 8 * v20);
        swift_beginAccess();
        a1 = *(v74 + 24);

        v76 = sub_2486C86E8(0x74736F702E525341, 0xEB000000006E7449, a1, v75);

        if (v76)
        {
          if (v76[2])
          {
            a1 = v76[4];
            v77 = v76[5];

            v78 = HIBYTE(v77) & 0xF;
            if ((v77 & 0x2000000000000000) == 0)
            {
              v78 = a1 & 0xFFFFFFFFFFFFLL;
            }

            if (v78)
            {
              a1 = &v106;
              sub_2487316B0();
              sub_2487316E0();
              sub_2487316F0();
              sub_2487316C0();
              continue;
            }
          }

          else
          {
          }
        }
      }

      swift_unknownObjectRelease_n();
      v29 = v106;
      if ((v106 & 0x8000000000000000) != 0 || (v106 & 0x4000000000000000) != 0)
      {
        if (!sub_248731790())
        {
          goto LABEL_53;
        }
      }

      else if (!*(v106 + 16))
      {
LABEL_53:

        goto LABEL_54;
      }

      if ((v29 & 0xC000000000000001) == 0)
      {
        if (*(v29 + 16))
        {

          goto LABEL_52;
        }

        goto LABEL_143;
      }

      v30 = MEMORY[0x24C1D7600](0, v29);
LABEL_52:
      v31 = *(v30 + 32);
      v32 = *(v13 + 32);

      if (vabdd_f64(v32, v31) > v10)
      {
        goto LABEL_53;
      }

      if ((v29 & 0xC000000000000001) != 0)
      {
        v79 = MEMORY[0x24C1D7600](0, v29);
      }

      else
      {
        v79 = *(v29 + 32);
      }

      v80 = v79[4];
      v81 = v99[4];
      swift_retain_n();
      if (sub_2486C8184() & 1) != 0 && (sub_2486C8184())
      {

        v83 = sub_2486ECCD8(v99, v79, 0x74736F702E525341, 0xEB000000006E7449);
        v37 = v84;

        if (v37)
        {
          v35 = 0;
        }

        else
        {
          v35 = v83;
        }
      }

      else
      {

        v35 = 0;
        v37 = 1;
      }

      if (sub_2486C824C() & 1) != 0 && (sub_2486C824C())
      {

        *&v82 = COERCE_DOUBLE(sub_2486ECCD8(v99, v79, 0x6E6F68702E525341, 0xEC00000073656D65));
        v38 = v85;
        v86 = *&v82;

        if (v38)
        {
          v36 = 0.0;
        }

        else
        {
          v36 = v86;
        }
      }

      else
      {

        v38 = 1;
        v36 = 0.0;
      }

      v34 = *(v79 + 5);
      v33 = *(v79 + 6);

      *(&v107[0] + 1) = MEMORY[0x277D839F8];
      *&v106 = vabdd_f64(v81, v80);
LABEL_56:
      swift_beginAccess();
      if (*(&v107[0] + 1))
      {
        sub_2486C79A0(&v106, &v103);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v109 = *(v3 + v98);
        *(v3 + v98) = 0x8000000000000000;
        sub_2486EC320(&v103, 0xD000000000000024, 0x80000002487396D0, isUniquelyReferenced_nonNull_native);
        *(v3 + v98) = v109;
        if (v37)
        {
          goto LABEL_58;
        }
      }

      else
      {
        sub_2486C7940(&v106, &qword_27EEA64E0, &qword_248733800);
        sub_2486EBB14(0xD000000000000024, 0x80000002487396D0, &v103);
        sub_2486C7940(&v103, &qword_27EEA64E0, &qword_248733800);
        if (v37)
        {
LABEL_58:
          v106 = 0u;
          v107[0] = 0u;
          sub_2486C7940(&v106, &qword_27EEA64E0, &qword_248733800);
          v40 = v98;
          sub_2486EBB14(0xD00000000000002DLL, 0x8000000248739740, &v103);
          sub_2486C7940(&v103, &qword_27EEA64E0, &qword_248733800);
          if ((v38 & 1) == 0)
          {
            goto LABEL_59;
          }

LABEL_63:
          v106 = 0u;
          v107[0] = 0u;
          sub_2486C7940(&v106, &qword_27EEA64E0, &qword_248733800);
          sub_2486EBB14(0xD000000000000031, 0x8000000248739700, &v103);
          sub_2486C7940(&v103, &qword_27EEA64E0, &qword_248733800);
          if (v33)
          {
            goto LABEL_60;
          }

LABEL_64:
          v106 = 0u;
          v107[0] = 0u;
          sub_2486C7940(&v106, &qword_27EEA64E0, &qword_248733800);
          sub_2486EBB14(0xD00000000000001ALL, 0x8000000248739770, &v103);
          sub_2486C7940(&v103, &qword_27EEA64E0, &qword_248733800);
          goto LABEL_65;
        }
      }

      *(&v107[0] + 1) = MEMORY[0x277D839F8];
      *&v106 = v35;
      sub_2486C79A0(&v106, &v103);
      v40 = v98;
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v109 = *(v3 + v98);
      *(v3 + v98) = 0x8000000000000000;
      sub_2486EC320(&v103, 0xD00000000000002DLL, 0x8000000248739740, v43);
      *(v3 + v98) = v109;
      if (v38)
      {
        goto LABEL_63;
      }

LABEL_59:
      *(&v107[0] + 1) = MEMORY[0x277D839F8];
      *&v106 = v36;
      sub_2486C79A0(&v106, &v103);
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v109 = *(v3 + v40);
      *(v3 + v40) = 0x8000000000000000;
      sub_2486EC320(&v103, 0xD000000000000031, 0x8000000248739700, v41);
      *(v3 + v40) = v109;
      if (!v33)
      {
        goto LABEL_64;
      }

LABEL_60:
      *(&v107[0] + 1) = MEMORY[0x277D837D0];
      *&v106 = v34;
      *(&v106 + 1) = v33;
      sub_2486C79A0(&v106, &v103);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v109 = *(v3 + v40);
      *(v3 + v40) = 0x8000000000000000;
      sub_2486EC320(&v103, 0xD00000000000001ALL, 0x8000000248739770, v42);
      *(v3 + v40) = v109;
LABEL_65:
      swift_endAccess();
      v44 = *(v3 + v40);
      swift_beginAccess();
      swift_bridgeObjectRetain_n();
      v45 = swift_isUniquelyReferenced_nonNull_native();
      a1 = *(v99 + 3);
      v108 = a1;
      v99[3] = -0.0;
      v46 = v44 + 64;
      v47 = 1 << *(v44 + 32);
      if (v47 < 64)
      {
        v48 = ~(-1 << v47);
      }

      else
      {
        v48 = -1;
      }

      v3 = v48 & *(v44 + 64);
      v4 = (v47 + 63) >> 6;
      v100 = v44;

      v49 = 0;
      while (1)
      {
        if (!v3)
        {
          if (v4 <= v49 + 1)
          {
            v52 = v49 + 1;
          }

          else
          {
            v52 = v4;
          }

          v53 = v52 - 1;
          while (1)
          {
            v51 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
              break;
            }

            if (v51 >= v4)
            {
              v3 = 0;
              v105 = 0u;
              v49 = v53;
              v103 = 0u;
              v104 = 0u;
              goto LABEL_82;
            }

            v3 = *(v46 + 8 * v51);
            ++v49;
            if (v3)
            {
              v49 = v51;
              goto LABEL_81;
            }
          }

          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v51 = v49;
LABEL_81:
        v54 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
        v55 = v54 | (v51 << 6);
        v56 = (*(v100 + 48) + 16 * v55);
        v58 = *v56;
        v57 = v56[1];
        sub_2486C5B68(*(v100 + 56) + 32 * v55, &v101);
        *&v103 = v58;
        *(&v103 + 1) = v57;
        sub_2486C79A0(&v101, &v104);

LABEL_82:
        v101 = v103;
        v102[0] = v104;
        v102[1] = v105;
        v59 = *(&v103 + 1);
        if (!*(&v103 + 1))
        {
          break;
        }

        v60 = v101;
        sub_2486C5B68(v102, v107);
        *&v106 = v60;
        *(&v106 + 1) = v59;

        sub_2486C7940(&v101, &qword_27EEA6328, &qword_248734838);
        v61 = *(&v106 + 1);
        if (!*(&v106 + 1))
        {
          goto LABEL_5;
        }

        v62 = v106;
        sub_2486C79A0(v107, &v103);
        v64 = sub_2486C94CC(v62, v61);
        v65 = *(a1 + 16);
        v66 = (v63 & 1) == 0;
        v67 = v65 + v66;
        if (__OFADD__(v65, v66))
        {
          goto LABEL_129;
        }

        v68 = v63;
        if (*(a1 + 24) >= v67)
        {
          if (v45)
          {
            a1 = v108;
            if (v63)
            {
              goto LABEL_69;
            }
          }

          else
          {
            sub_2486E62F4();
            a1 = v108;
            if (v68)
            {
              goto LABEL_69;
            }
          }
        }

        else
        {
          sub_2486E45C8(v67, v45 & 1);
          v69 = sub_2486C94CC(v62, v61);
          if ((v68 & 1) != (v70 & 1))
          {
            goto LABEL_145;
          }

          v64 = v69;
          a1 = v108;
          if (v68)
          {
LABEL_69:

            v50 = (*(a1 + 56) + 32 * v64);
            __swift_destroy_boxed_opaque_existential_0(v50);
            sub_2486C79A0(&v103, v50);
            goto LABEL_70;
          }
        }

        *(a1 + 8 * (v64 >> 6) + 64) |= 1 << v64;
        v71 = (*(a1 + 48) + 16 * v64);
        *v71 = v62;
        v71[1] = v61;
        sub_2486C79A0(&v103, (*(a1 + 56) + 32 * v64));
        v72 = *(a1 + 16);
        v8 = __OFADD__(v72, 1);
        v73 = v72 + 1;
        if (v8)
        {
          goto LABEL_130;
        }

        *(a1 + 16) = v73;
LABEL_70:
        v45 = 1;
      }

      memset(v107, 0, sizeof(v107));
      v106 = 0u;
LABEL_5:

      *(v99 + 3) = a1;
      swift_endAccess();

      v4 = v94;
      v7 = v97;
      a1 = v92;
      v3 = v93;
      if (v97 == v95)
      {
        return result;
      }
    }

    v99 = MEMORY[0x24C1D7600](v7, v4);
    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (!v8)
    {
      goto LABEL_12;
    }

LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    ;
  }

  return result;
}

uint64_t sub_2486EB39C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t), unint64_t a6, uint64_t a7, char a8)
{
  v11 = a4;
  v13 = a4 >> 62;
  if (a4 >> 62)
  {
    goto LABEL_58;
  }

  v14 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    return 0;
  }

  while (1)
  {
    if (!*(a3 + 16))
    {
      return 0;
    }

    v40 = a8;
    v39 = *&a7;
    v15 = sub_2486C94CC(a1, a2);
    if ((v16 & 1) == 0)
    {
      return 0;
    }

    v17 = *(a3 + 56);
    v18 = *(v17 + 8 * v15);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1D7600](*(v17 + 8 * v15), v11);
    }

    else
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      if (v18 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v8 = *(v11 + 8 * v18 + 32);
    }

    a3 = a6;
    if ((a5(v8) & 1) == 0)
    {
      goto LABEL_50;
    }

    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_63;
    }

    if (v14 < v20)
    {
      goto LABEL_64;
    }

    if (v13)
    {
      v21 = sub_248731790();
    }

    else
    {
      v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v21 < v20)
    {
      goto LABEL_65;
    }

    if (v20 < 0)
    {
      goto LABEL_66;
    }

    if (v13)
    {
      v22 = sub_248731790();
    }

    else
    {
      v22 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v22 < v14)
    {
      goto LABEL_67;
    }

    if ((v11 & 0xC000000000000001) == 0 || v20 == v14)
    {

      if (!v13)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v20 >= v14)
      {
        __break(1u);
        goto LABEL_71;
      }

      type metadata accessor for FeaturizedConversationTurn(0);

      v23 = v20;
      do
      {
        v24 = v23 + 1;
        sub_248731670();
        v23 = v24;
      }

      while (v14 != v24);
      if (!v13)
      {
LABEL_27:
        v11 &= 0xFFFFFFFFFFFFFF8uLL;
        v13 = v11 + 32;
        goto LABEL_30;
      }
    }

    v11 = sub_2487317A0();
    v13 = v25;
    v20 = v26;
    v14 = v27 >> 1;
LABEL_30:
    a3 = MEMORY[0x277D84F90];
    v41 = MEMORY[0x277D84F90];
    a1 = swift_unknownObjectRetain();
    if (v20 != v14)
    {
      while (v20 < v14)
      {

        a3 = a6;
        if (a5(v28))
        {
          sub_2487316B0();
          sub_2487316E0();
          sub_2487316F0();
          a3 = &v41;
          a1 = sub_2487316C0();
        }

        else
        {
        }

        if (v14 == ++v20)
        {
          a3 = v41;
          goto LABEL_38;
        }
      }

      goto LABEL_57;
    }

LABEL_38:
    result = swift_unknownObjectRelease_n();
    if ((a3 & 0x8000000000000000) == 0 && (a3 & 0x4000000000000000) == 0)
    {
      v30 = v40;
      if (!*(a3 + 16))
      {
        goto LABEL_49;
      }

      goto LABEL_41;
    }

LABEL_68:
    result = sub_248731790();
    v30 = v40;
    if (!result)
    {
LABEL_49:

LABEL_50:

      return 0;
    }

LABEL_41:
    if (v30)
    {
      break;
    }

    a6 = a3 & 0xC000000000000001;
    if ((a3 & 0xC000000000000001) == 0)
    {
      if (!*(a3 + 16))
      {
        goto LABEL_73;
      }

      goto LABEL_48;
    }

LABEL_71:
    v32 = MEMORY[0x24C1D7600](0, a3);
LABEL_48:
    v33 = *(v32 + 32);
    v34 = *(v8 + 32);

    if (vabdd_f64(v34, v33) > v39)
    {
      goto LABEL_49;
    }

    if (a6)
    {
      goto LABEL_53;
    }

    if (*(a3 + 16))
    {
      goto LABEL_44;
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v8 = a1;
    v35 = a7;
    v36 = a8;
    v37 = a2;
    v38 = sub_248731790();
    a2 = v37;
    a8 = v36;
    a7 = v35;
    v14 = v38;
    a1 = v8;
    if (!v14)
    {
      return 0;
    }
  }

  if ((a3 & 0xC000000000000001) != 0)
  {
LABEL_53:
    v31 = MEMORY[0x24C1D7600](0, a3);
    goto LABEL_54;
  }

  if (*(a3 + 16))
  {
LABEL_44:
    v31 = *(a3 + 32);

LABEL_54:

    return v31;
  }

  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_2486EB75C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return fabs(*(a1 + 32) - *(a2 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t static SequenceInterTurnFeatureExtractor.textSimilarityScoreBetweenTurns(_:_:)(uint64_t a1, uint64_t a2)
{
  result = sub_2486ECCD8(a1, a2, 0x74736F702E525341, 0xEB000000006E7449);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_2486EB858(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, unint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  if ((a3(v11) & 1) == 0 || ((a3)() & 1) == 0)
  {

    return 0;
  }

  v12 = sub_2486ECCD8(a1, a2, a4, a5);
  v14 = v13;

  if (!v5)
  {
    if ((v14 & 1) == 0)
    {
      return v12;
    }

    return 0;
  }

  return result;
}

uint64_t static SequenceInterTurnFeatureExtractor.phoneticRestatementScoreBetweenTurns(_:_:)(uint64_t a1, uint64_t a2)
{
  result = sub_2486ECCD8(a1, a2, 0x6E6F68702E525341, 0xEC00000073656D65);
  if (v2)
  {
    return v4;
  }

  return result;
}

id SequenceInterTurnFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SequenceInterTurnFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SequenceInterTurnFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2486EBA40(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_2486EBAA0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

double sub_2486EBB14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_2486C94CC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2486E62F4();
      v10 = v12;
    }

    sub_2486C79A0((*(v10 + 56) + 32 * v8), a3);
    sub_2486EBDD4(v8, v10);
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

uint64_t sub_2486EBBB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_2486C94CC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2486E68F4();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_2486EBF84(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_2486EBC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_2486C94CC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2486E6A5C();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_248730970();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_2486EC134(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_248730970();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_2486EBDD4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2487315D0() + 1) & ~v5;
    do
    {
      sub_248731910();

      sub_2487310D0();
      v10 = sub_248731930();

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

uint64_t sub_2486EBF84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2487315D0() + 1) & ~v5;
    do
    {
      sub_248731910();

      sub_2487310D0();
      v9 = sub_248731930();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2486EC134(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2487315D0() + 1) & ~v5;
    while (1)
    {
      sub_248731910();

      sub_2487310D0();
      v9 = sub_248731930();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_248730970() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

  return result;
}

void sub_2486EC320(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2486C94CC(a2, a3);
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
      sub_2486E62F4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2486E45C8(v16, a4 & 1);
    v11 = sub_2486C94CC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_2487318B0();
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

    sub_2486C79A0(a1, v22);
  }

  else
  {
    sub_2486E6104(v11, a2, a3, a1, v21);
  }
}

void sub_2486EC470(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2486C94CC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2486E65E4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2486E4AE4(v16, a4 & 1);
    v11 = sub_2486C94CC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_2487318B0();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_2486E6170(v11, a2, a3, a1, v21);
  }
}

void sub_2486EC5A0(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2486C94CC(a1, a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_2486E68F4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2486E5048(v16, a3 & 1);
    v11 = sub_2486C94CC(a1, a2);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_2487318B0();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a4;
  }

  else
  {
    sub_2486E61B8(v11, a1, a2, v21, a4);
  }
}

void sub_2486EC6C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2486C94CC(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_2486E6A5C();
      goto LABEL_7;
    }

    sub_2486E52EC(v15, a4 & 1);
    v25 = sub_2486C94CC(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_2487318B0();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_248730970();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_2486E6200(v12, a2, a3, a1, v18);
}

void sub_2486EC8C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_2486C94CC(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_2486C94CC(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_2487318B0();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

void sub_2486ECA34(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2486C94CC(a2, a3);
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
      sub_2486E6FC4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2486E5BB0(v16, a4 & 1);
    v11 = sub_2486C94CC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_2487318B0();
      __break(1u);
_objc_release_x1:
      MEMORY[0x2821F96F8]();
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  sub_2486E6170(v11, a2, a3, a1, v21);
}

void sub_2486ECB78(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2486C5B68(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_2486C79A0(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_2486C7940(v20, &qword_27EEA6328, &qword_248734838);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2486ECCD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  swift_beginAccess();
  v8 = *(a1 + 24);

  v10 = sub_2486C86E8(a3, a4, v8, v9);

  if (!v10)
  {
LABEL_10:

    return 0;
  }

  if (*(v10 + 16))
  {

    swift_beginAccess();
    v11 = *(a2 + 24);

    v13 = sub_2486C86E8(a3, a4, v11, v12);

    if (v13)
    {
      if (v13[2])
      {
        v14 = v13[4];
        v15 = v13[5];

        v16._countAndFlagsBits = v14;
        v16._object = v15;
        v19 = String.scoreRatcliffObershelp(between:)(v16);
        v17 = *&v19.is_nil;

        return v17;
      }

      return 0;
    }

    goto LABEL_10;
  }

  return 0;
}

id DeviceLockedEventFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceLockedEventFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceLockedEventFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_2486ED0B4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v3 = *(a1 + v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 starting];
    v9 = MEMORY[0x277D839B0];
    v8[0] = v7;
    swift_beginAccess();
    sub_2486C6800(v8, 0xD00000000000001BLL, 0x8000000248739790);
    swift_endAccess();
  }
}

id DeviceLockedEventFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceLockedEventFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id UserFocusStatusChangeFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserFocusStatusChangeFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserFocusStatusChangeFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_2486ED2A0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v3 = *(a1 + v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = [v5 statusChangeType];
    if (v7)
    {
      v8 = v7;
      v9 = sub_248730FF0();
      v11 = v10;

      v12 = MEMORY[0x277D837D0];
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v12 = 0;
      v15[2] = 0;
    }

    v15[0] = v9;
    v15[1] = v11;
    v16 = v12;
    swift_beginAccess();
    sub_2486C6800(v15, 0xD000000000000026, 0x800000024873A5E0);
    swift_endAccess();
    v13 = [v5 idsHandles];
    v14 = sub_248731240();

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
    v15[0] = v14;
    swift_beginAccess();
    sub_2486C6800(v15, 0xD000000000000020, 0x800000024873A610);
    swift_endAccess();
  }
}

id UserFocusStatusChangeFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserFocusStatusChangeFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id AppIntentFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppIntentFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppIntentFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_2486ED55C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v3 = *(a1 + v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v50 = v3;
    v6 = [v5 bundleID];
    if (v6)
    {
      v7 = v6;
      v8 = sub_248730FF0();
      v10 = v9;

      v11 = MEMORY[0x277D837D0];
    }

    else
    {
      v8 = 0;
      v10 = 0;
      v11 = 0;
      v53 = 0;
    }

    v51 = v8;
    v52 = v10;
    v54 = v11;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD000000000000012, 0x80000002487398A0);
    swift_endAccess();
    v12 = [v5 donatedBySiri];
    v54 = MEMORY[0x277D839B0];
    LOBYTE(v51) = v12;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD000000000000017, 0x80000002487398C0);
    swift_endAccess();
    v13 = [v5 itemID];
    if (v13)
    {
      v14 = v13;
      v15 = sub_248730FF0();
      v17 = v16;

      v18 = MEMORY[0x277D837D0];
    }

    else
    {
      v15 = 0;
      v17 = 0;
      v18 = 0;
      v53 = 0;
    }

    v19 = MEMORY[0x277D837D0];
    v51 = v15;
    v52 = v17;
    v54 = v18;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD00000000000001ALL, 0x80000002487398E0);
    swift_endAccess();
    v20 = [v5 intentClass];
    if (v20)
    {
      v21 = v20;
      v22 = sub_248730FF0();
      v24 = v23;

      v25 = MEMORY[0x277D837D0];
    }

    else
    {
      v22 = 0;
      v24 = 0;
      v25 = 0;
      v53 = 0;
    }

    v51 = v22;
    v52 = v24;
    v54 = v25;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD000000000000015, 0x8000000248739900);
    swift_endAccess();
    v26 = [v5 handlingStatus];
    type metadata accessor for BMAppIntentHandlingStatus(0);
    v54 = v27;
    LODWORD(v51) = v26;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD000000000000018, 0x8000000248739920);
    swift_endAccess();
    v28 = [v5 intentType];
    type metadata accessor for BMAppIntentType(0);
    v54 = v29;
    LODWORD(v51) = v28;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD000000000000014, 0x8000000248739940);
    swift_endAccess();
    [v5 handlingStatus];
    v30 = BMAppIntentHandlingStatusAsString();
    v31 = sub_248730FF0();
    v33 = v32;

    v54 = v19;
    v51 = v31;
    v52 = v33;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD000000000000020, 0x8000000248739960);
    swift_endAccess();
    [v5 intentType];
    v34 = BMAppIntentTypeAsString();
    v35 = sub_248730FF0();
    v37 = v36;

    v54 = v19;
    v51 = v35;
    v52 = v37;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD00000000000001CLL, 0x8000000248739990);
    swift_endAccess();
    v38 = [v5 intentVerb];
    if (v38)
    {
      v39 = v38;
      v40 = sub_248730FF0();
      v42 = v41;

      v43 = MEMORY[0x277D837D0];
    }

    else
    {
      v40 = 0;
      v42 = 0;
      v43 = 0;
      v53 = 0;
    }

    v51 = v40;
    v52 = v42;
    v54 = v43;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD000000000000014, 0x80000002487399B0);
    swift_endAccess();
    v44 = [v5 interactionDirection];
    type metadata accessor for BMAppIntentInteractionDirection(0);
    v54 = v45;
    LODWORD(v51) = v44;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD00000000000001ELL, 0x80000002487399D0);
    swift_endAccess();
    [v5 interactionDirection];
    v46 = BMAppIntentInteractionDirectionAsString();
    v47 = sub_248730FF0();
    v49 = v48;

    v54 = v19;
    v51 = v47;
    v52 = v49;
    swift_beginAccess();
    sub_2486C6800(&v51, 0xD000000000000026, 0x80000002487399F0);
    swift_endAccess();
  }
}

id AppIntentFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppIntentFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t static ConversationUtils.conversationTurnTypeToString(turnType:)(uint64_t a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t static ConversationUtils.stringToConversationTurnType(typeString:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000024873B500 == a2 || (sub_248731880() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0xD000000000000018 && 0x800000024873B4E0 == a2)
  {
    return 1;
  }

  if (sub_248731880())
  {
    return 1;
  }

  return 2;
}

id ConversationUtils.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConversationUtils.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationUtils();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ConversationUtils.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ConversationUtils();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2486EDED0(char *a1)
{
  v4 = v1;
  v6 = sub_2487309B0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_dimEvents;
  swift_beginAccess();
  v11 = *&a1[v10];
  if (v11 >> 62)
  {
    v12 = sub_248731790();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = off_278F52000;
  v71 = v4;
  v72 = v10;
  if (!v12)
  {
    goto LABEL_13;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {

    v14 = MEMORY[0x24C1D7600](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_82;
    }

    v14 = *(v11 + 32);
  }

  v15 = [v14 deviceFixedContext];

  if (!v15)
  {
LABEL_13:
    if (qword_28150EE60 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_89;
  }

  [v15 timeIntervalSince1970];
  v3 = v16;

  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v17 = sub_248730DF0();
  __swift_project_value_buffer(v17, qword_28150F088);
  v18 = a1;
  v19 = sub_248730DD0();
  v20 = sub_2487313C0();

  if (os_log_type_enabled(v19, v20))
  {
    v4 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v73 = v10;
    *v4 = 134218242;
    *(v4 + 4) = v3;
    *(v4 + 12) = 2080;
    v21 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
    swift_beginAccess();
    (v7[2])(v9, &v18[v21], v6);
    v22 = sub_248730980();
    v24 = v23;
    (v7[1])(v9, v6);
    v25 = sub_2486D3010(v22, v24, &v73);

    *(v4 + 14) = v25;
    _os_log_impl(&dword_2486BF000, v19, v20, "Extracted  timestamp: %f for turn %s", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1D8100](v10, -1, -1);
    MEMORY[0x24C1D8100](v4, -1, -1);
  }

  LOBYTE(v13) = 0;
  while (1)
  {
    v2 = v72;
    v35 = *&a1[v72];
    v7 = off_278F52000;
    if (v35 >> 62)
    {
      if (!sub_248731790())
      {
        goto LABEL_27;
      }
    }

    else if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    if ((v35 & 0xC000000000000001) != 0)
    {

      v36 = MEMORY[0x24C1D7600](0, v35);
    }

    else
    {
      if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_84;
      }

      v36 = *(v35 + 32);
    }

    v37 = [v36 deviceFixedContext];

    if (v37)
    {
      v38 = [v37 deviceType];

      if (v38)
      {
        v69 = sub_248730FF0();
        v6 = v39;

        goto LABEL_28;
      }
    }

LABEL_27:
    v69 = 0;
    v6 = 0;
LABEL_28:
    v11 = *&a1[v2];
    if (v11 >> 62)
    {
      if (!sub_248731790())
      {
        goto LABEL_36;
      }
    }

    else if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_36;
    }

    if ((v11 & 0xC000000000000001) == 0)
    {
      break;
    }

LABEL_82:

    v40 = MEMORY[0x24C1D7600](0, v11);

LABEL_33:
    v41 = [v40 v7[388]];

    if (v41)
    {
      v9 = [v41 dataSharingOptInState];

      LOBYTE(v10) = 0;
      goto LABEL_37;
    }

LABEL_36:
    v9 = 0;
    LOBYTE(v10) = 1;
LABEL_37:
    v35 = *&a1[v2];
    if (v35 >> 62)
    {
      v42 = sub_248731790();
    }

    else
    {
      v42 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v70 = v6;
    HIDWORD(v67) = v9;
    if (!v42)
    {
      v68 = 0;
      v4 = 0;
      LODWORD(v67) = 0;
      v9 = 1;
      goto LABEL_50;
    }

    if ((v35 & 0xC000000000000001) == 0)
    {
      if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_88;
      }

      v43 = v13;
      v44 = *(v35 + 32);
      goto LABEL_43;
    }

LABEL_84:
    v43 = v13;

    v44 = MEMORY[0x24C1D7600](0, v35);

LABEL_43:
    v45 = [v44 v7[388]];

    if (v45)
    {
      v46 = [v45 siriInputLocale];

      LODWORD(v67) = v46;
      if (v46 > 0x3E)
      {
        v47 = @"LOCALE_UNKNOWN_LOCALE";
        v48 = @"LOCALE_UNKNOWN_LOCALE";
      }

      else
      {
        v47 = off_278F51FE0[v46];
        v48 = off_278F521D8[v46];
      }

      LOBYTE(v13) = v43;
      v49 = v47;
      v50 = v48;
      v68 = sub_248730FF0();
      v4 = v51;

      v9 = 0;
    }

    else
    {
      v68 = 0;
      v4 = 0;
      LODWORD(v67) = 0;
      v9 = 1;
      LOBYTE(v13) = v43;
    }

LABEL_50:
    v11 = *&a1[v2];
    if (v11 >> 62)
    {
      if (!sub_248731790())
      {
        goto LABEL_61;
      }
    }

    else if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_61;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      goto LABEL_86;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v52 = *(v11 + 32);
      goto LABEL_55;
    }

LABEL_88:
    __break(1u);
LABEL_89:
    swift_once();
LABEL_14:
    v26 = sub_248730DF0();
    __swift_project_value_buffer(v26, qword_28150F088);
    v27 = a1;
    v28 = sub_248730DD0();
    v29 = sub_2487313C0();

    if (os_log_type_enabled(v28, v29))
    {
      v4 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v73 = v10;
      *v4 = 136315138;
      v30 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation16ConversationTurn_turnID;
      swift_beginAccess();
      (v7[2])(v9, &v27[v30], v6);
      v31 = sub_248730980();
      v33 = v32;
      (v7[1])(v9, v6);
      v34 = sub_2486D3010(v31, v33, &v73);

      *(v4 + 4) = v34;
      _os_log_impl(&dword_2486BF000, v28, v29, "Failed to extract DIM timestamp for turn: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C1D8100](v10, -1, -1);
      MEMORY[0x24C1D8100](v4, -1, -1);
    }

    LOBYTE(v13) = 1;
    v3 = 0;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v40 = *(v11 + 32);
    goto LABEL_33;
  }

  __break(1u);
LABEL_86:

  v52 = MEMORY[0x24C1D7600](0, v11);

LABEL_55:
  v53 = [v52 v7[388]];

  if (v53 && (v54 = [v53 systemBuild], v53, v54))
  {
    v55 = sub_248730FF0();
    v57 = v56;

    if ((v13 & 1) == 0)
    {
LABEL_58:
      v58 = MEMORY[0x277D839F8];
      goto LABEL_63;
    }
  }

  else
  {
LABEL_61:
    v55 = 0;
    v57 = 0;
    if ((v13 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  v58 = 0;
  v74 = 0;
  v75 = 0;
  v3 = 0;
LABEL_63:
  v73 = v3;
  v76 = v58;
  swift_beginAccess();
  sub_2486C6800(&v73, 0xD000000000000019, 0x8000000248739390);
  v59 = 0;
  if (v10)
  {
    v73 = 0;
    v74 = 0;
    v75 = 0;
  }

  else
  {
    type metadata accessor for SISchemaDataSharingOptInState(0);
    LODWORD(v73) = HIDWORD(v67);
  }

  v76 = v59;
  sub_2486C6800(&v73, 0xD000000000000019, 0x80000002487393B0);
  v60 = 0;
  if (v9)
  {
    v73 = 0;
    v74 = 0;
    v75 = 0;
  }

  else
  {
    type metadata accessor for SISchemaLocale(0);
    LODWORD(v73) = v67;
  }

  v76 = v60;
  sub_2486C6800(&v73, 0xD000000000000013, 0x80000002487393D0);
  if (v70)
  {
    v61 = MEMORY[0x277D837D0];
    v62 = v69;
  }

  else
  {
    v62 = 0;
    v61 = 0;
    v75 = 0;
  }

  v73 = v62;
  v74 = v70;
  v76 = v61;
  sub_2486C6800(&v73, 0x697665642E4D4944, 0xEE00657079546563);
  if (v57)
  {
    v63 = MEMORY[0x277D837D0];
  }

  else
  {
    v55 = 0;
    v63 = 0;
    v75 = 0;
  }

  v73 = v55;
  v74 = v57;
  v76 = v63;
  sub_2486C6800(&v73, 0x747379732E4D4944, 0xEF646C6975426D65);
  if (v4)
  {
    v64 = MEMORY[0x277D837D0];
    v65 = v68;
  }

  else
  {
    v65 = 0;
    v64 = 0;
    v75 = 0;
  }

  v73 = v65;
  v74 = v4;
  v76 = v64;
  sub_2486C6800(&v73, 0xD00000000000001BLL, 0x80000002487393F0);
  return swift_endAccess();
}

uint64_t sub_2486EE940()
{
  sub_248730C20();
  v0 = sub_2486CF4C4(0, &qword_27EEA6338, 0x277D57038);
  sub_2486CF428();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2487335F0;
  *(v1 + 32) = sub_2486CF4C4(0, &qword_27EEA6340, 0x277D57048);
  v2 = MEMORY[0x24C1D6B80](v0, v1);

  return v2;
}

id DIMFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DIMFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DIMFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DIMFeatureExtractor.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DIMFeatureExtractor();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t static CATUtils.speakeasyCategory(from:by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 1819047246;
  if (*(a3 + 16))
  {
    v5 = sub_2486C94CC(a1, a2);
    if (v6)
    {
      v3 = *(*(a3 + 56) + 16 * v5);
    }
  }

  return v3;
}

unint64_t sub_2486EEB58(uint64_t a1)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v1 = sub_2486D38BC(MEMORY[0x277D84F90]);
  v7 = sub_248730860();
  v9 = v8;
  v10 = objc_opt_self();
  v11 = sub_2487308A0();
  v18[0] = 0;
  v12 = [v10 JSONObjectWithData:v11 options:1 error:v18];

  if (v12)
  {
    v13 = v18[0];
    sub_2487315A0();
    sub_2486CC7FC(v7, v9);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6348, &qword_248734A88);
    if (swift_dynamicCast())
    {

      return v17;
    }
  }

  else
  {
    v14 = v18[0];
    v15 = sub_2487307E0();

    swift_willThrow();
    v16 = v15;
    sub_2486CC7FC(v7, v9);
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v2 = sub_248730DF0();
    __swift_project_value_buffer(v2, qword_28150F088);
    v3 = sub_248730DD0();
    v4 = sub_2487313D0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2486BF000, v3, v4, "Unable to parse CatIdToSpeakeasyCategory", v5, 2u);
      MEMORY[0x24C1D8100](v5, -1, -1);
    }
  }

  return v1;
}

unint64_t _s26DeepThoughtBiomeFoundation8CATUtilsO24catIdToSpeakeasyCategory6bundleSDyS2SGSo8NSBundleC_tFZ_0(void *a1)
{
  v2 = sub_248730850();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2486D38BC(MEMORY[0x277D84F90]);
  v7 = sub_248730FC0();
  v8 = sub_248730FC0();
  v9 = [a1 URLForResource:v7 withExtension:v8];

  if (v9)
  {

    sub_248730830();

    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v10 = sub_248730DF0();
    __swift_project_value_buffer(v10, qword_28150F088);
    v11 = a1;
    v12 = sub_248730DD0();
    v13 = sub_2487313D0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = v11;
      v16 = v11;
      _os_log_impl(&dword_2486BF000, v12, v13, "Loading CatIdToSpeakeasyCategory mapping from Bundle %@", v14, 0xCu);
      sub_2486EF19C(v15);
      MEMORY[0x24C1D8100](v15, -1, -1);
      MEMORY[0x24C1D8100](v14, -1, -1);
    }

    v6 = sub_2486EEB58(v5);
    (*(v3 + 8))(v5, v2);
  }

  return v6;
}

uint64_t _s26DeepThoughtBiomeFoundation8CATUtilsO15classAndUseCase4from10lowercasedS2S_SbtFZ_0(uint64_t a1, unint64_t a2, char a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 1819047246;
  }

  sub_2486D8A18();
  sub_248731570();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6350, qword_248734A90);
  sub_2486EF138();
  v5 = sub_248730F90();

  if (a3)
  {
    v5 = sub_248731050();
  }

  return v5;
}

unint64_t sub_2486EF138()
{
  result = qword_27EEA6358;
  if (!qword_27EEA6358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEA6350, qword_248734A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6358);
  }

  return result;
}

uint64_t sub_2486EF19C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6330, qword_248734840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2486EF204(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();

  v4 = sub_2486EFD10(v3);

  v6 = sub_2486EFEA0(v5);

  v95 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
LABEL_84:
    v7 = sub_248731790();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_85:

    v55 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D84F90];
    v80 = MEMORY[0x277D84F90];
    v56 = *(MEMORY[0x277D84F90] + 16);
    if (!v56)
    {
      goto LABEL_79;
    }

    goto LABEL_86;
  }

  v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_85;
  }

LABEL_3:
  if (v6 >> 62)
  {
LABEL_98:
    v85 = v6 & 0xFFFFFFFFFFFFFF8;
    v8 = sub_248731790();
  }

  else
  {
    v85 = v6 & 0xFFFFFFFFFFFFFF8;
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v75 = v4 & 0xC000000000000001;
  v71 = v4 & 0xFFFFFFFFFFFFFF8;
  v72 = v4;
  v70 = v4 + 32;
  v10 = v6 & 0xC000000000000001;
  v84 = v6 + 32;
  v11 = off_278F52000;
  v12 = MEMORY[0x277D84F90];
  v80 = MEMORY[0x277D84F90];
  v81 = v8;
  v86 = v6 & 0xC000000000000001;
  v73 = v7;
  v74 = v2;
  v82 = v6;
  while (1)
  {
    if (v75)
    {
      v13 = MEMORY[0x24C1D7600](v9, v72);
      v14 = __OFADD__(v9, 1);
      v15 = v9 + 1;
      if (v14)
      {
        goto LABEL_82;
      }
    }

    else
    {
      if (v9 >= *(v71 + 16))
      {
        goto LABEL_83;
      }

      v13 = *(v70 + 8 * v9);
      v14 = __OFADD__(v9, 1);
      v15 = v9 + 1;
      if (v14)
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }
    }

    v78 = v15;
    v79 = v12;
    v4 = v13;
    v16 = [v13 package];
    v17 = [v16 postItn];

    v18 = [v17 v11[397]];
    v77 = v4;
    sub_2486EFFF8(v4);
    v76 = v20;
    v87 = v18;
    v88 = v19;
    if (v8)
    {
      break;
    }

    v2 = MEMORY[0x277D84F90];
    v22 = MEMORY[0x277D84F90];
LABEL_64:

    *&v93 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
    sub_2486F06C0();
    v43 = sub_248730F90();
    v45 = v44;

    v46 = v79;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_2486C44B4(0, *(v79 + 2) + 1, 1, v79);
    }

    v48 = *(v46 + 2);
    v47 = *(v46 + 3);
    v12 = v46;
    if (v48 >= v47 >> 1)
    {
      v12 = sub_2486C44B4((v47 > 1), v48 + 1, 1, v46);
    }

    *(v12 + 2) = v48 + 1;
    v49 = &v12[16 * v48];
    *(v49 + 4) = v43;
    *(v49 + 5) = v45;
    *&v93 = v2;
    v50 = sub_248730F90();
    v52 = v51;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v80 = sub_2486C44B4(0, *(v80 + 2) + 1, 1, v80);
    }

    v2 = v74;
    v11 = off_278F52000;
    v4 = *(v80 + 2);
    v53 = *(v80 + 3);
    if (v4 >= v53 >> 1)
    {
      v80 = sub_2486C44B4((v53 > 1), v4 + 1, 1, v80);
    }

    *(v80 + 2) = v4 + 1;
    v54 = &v80[16 * v4];
    *(v54 + 4) = v50;
    *(v54 + 5) = v52;
    sub_2486C398C(v76);

    v7 = v73;
    v9 = v78;
    v10 = v86;
    if (v78 == v73)
    {
      goto LABEL_78;
    }
  }

  v21 = 0;
  v83 = (v19 + 32);
  v2 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  while (1)
  {
    while (1)
    {
      if (v10)
      {
        v23 = MEMORY[0x24C1D7600](v21, v6);
        v14 = __OFADD__(v21++, 1);
        if (v14)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v21 >= *(v85 + 16))
        {
          goto LABEL_81;
        }

        v23 = *(v84 + 8 * v21);
        v14 = __OFADD__(v21++, 1);
        if (v14)
        {
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }
      }

      v90 = v23;
      v24 = [v23 v11[397]];
      if (v24)
      {
        break;
      }

      v89 = v21;
      if (!v18)
      {
        goto LABEL_26;
      }

LABEL_15:

LABEL_16:
      v21 = v89;
      if (v89 == v8)
      {
        goto LABEL_64;
      }
    }

    v4 = v24;
    if (v18)
    {
      break;
    }

    if (v21 == v8)
    {
      goto LABEL_64;
    }
  }

  v89 = v21;
  sub_2486CF4C4(0, &qword_27EEA6370, 0x277D5AC78);
  v12 = v18;
  v25 = sub_248731530();

  if ((v25 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_26:
  v26 = [v90 tokens];
  if (v26)
  {
    v4 = v26;
    sub_2486CF4C4(0, &qword_27EEA6368, 0x277D56AA8);
    v7 = sub_248731240();
  }

  else
  {
    v7 = 0;
  }

  v27 = *(v88 + 16);
  if (!v27)
  {

LABEL_62:
    v10 = v86;
    v18 = v87;
    v11 = off_278F52000;
    goto LABEL_16;
  }

  v92 = v7 & 0xC000000000000001;
  v91 = v7 + 32;
  v28 = v83;
  while (1)
  {
    v30 = *v28++;
    v29 = v30;
    if (!v7)
    {
LABEL_40:
      v12 = 0;
      v4 = 0xE000000000000000;
      goto LABEL_41;
    }

    if (v92)
    {

      v31 = MEMORY[0x24C1D7600](v29, v7);

      goto LABEL_38;
    }

    if ((v29 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v29 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_75;
    }

    v31 = *(v91 + 8 * v29);
LABEL_38:
    v32 = [v31 text];

    if (!v32)
    {
      goto LABEL_40;
    }

    v12 = sub_248730FF0();
    v4 = v33;

LABEL_41:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_2486C44B4(0, *(v22 + 2) + 1, 1, v22);
    }

    v35 = *(v22 + 2);
    v34 = *(v22 + 3);
    v6 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      v22 = sub_2486C44B4((v34 > 1), v35 + 1, 1, v22);
    }

    *(v22 + 2) = v6;
    v36 = &v22[16 * v35];
    *(v36 + 4) = v12;
    *(v36 + 5) = v4;
    if (!v7)
    {
      goto LABEL_52;
    }

    if (v92)
    {

      v37 = MEMORY[0x24C1D7600](v29, v7);
    }

    else
    {
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_76;
      }

      if (v29 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      v37 = *(v91 + 8 * v29);
    }

    v38 = [v37 phoneSequence];

    if (v38)
    {
      v39 = sub_248730FF0();
      v12 = v40;
    }

    else
    {
LABEL_52:
      v39 = 0;
      v12 = 0xE000000000000000;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_2486C44B4(0, *(v2 + 2) + 1, 1, v2);
    }

    v6 = *(v2 + 2);
    v41 = *(v2 + 3);
    v4 = v6 + 1;
    if (v6 >= v41 >> 1)
    {
      v2 = sub_2486C44B4((v41 > 1), v6 + 1, 1, v2);
    }

    *(v2 + 2) = v4;
    v42 = &v2[16 * v6];
    *(v42 + 4) = v39;
    *(v42 + 5) = v12;
    if (!--v27)
    {

      v8 = v81;
      v6 = v82;
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:

  v55 = v95;
  v56 = *(v95 + 16);
  if (v56)
  {
LABEL_86:
    v59 = 0;
    v60 = 0;
    while (1)
    {
      v61 = *(v55 + 8 * v59 + 32);
      v14 = __OFADD__(v60, v61);
      v60 += v61;
      if (v14)
      {
        break;
      }

      if (v56 == ++v59)
      {

        *&v93 = v12;
        v58 = v60 / v56;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
        sub_2486F06C0();
        sub_248730F90();

        v57 = sub_2487310E0();

        goto LABEL_90;
      }
    }

    __break(1u);
    goto LABEL_98;
  }

LABEL_79:

  v57 = 0;
  v58 = 0;
LABEL_90:
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
  *(&v94 + 1) = v62;
  *&v93 = v12;
  swift_beginAccess();
  sub_2486C6800(&v93, 0x74736F702E525341, 0xEB000000006E7449);
  *(&v94 + 1) = v62;
  *&v93 = v80;
  sub_2486C6800(&v93, 0x6E6F68702E525341, 0xEC00000073656D65);
  swift_endAccess();

  v64 = sub_2486F0724(v63);
  v66 = v65;

  if (v66)
  {
    v64 = 0;
    v67 = 0;
    *(&v93 + 1) = 0;
    *&v94 = 0;
  }

  else
  {
    v67 = MEMORY[0x277D84D38];
  }

  *&v93 = v64;
  *(&v94 + 1) = v67;
  swift_beginAccess();
  sub_2486C6800(&v93, 0xD000000000000015, 0x8000000248739310);
  if (v56)
  {
    v68 = MEMORY[0x277D83B88];
    *(&v94 + 1) = MEMORY[0x277D83B88];
    *&v93 = v58;
    sub_2486C6800(&v93, 0xD00000000000001ALL, 0x8000000248739330);
  }

  else
  {
    v93 = 0u;
    v94 = 0u;
    sub_2486C6800(&v93, 0xD00000000000001ALL, 0x8000000248739330);
    v57 = 0;
    v68 = 0;
    *(&v93 + 1) = 0;
    *&v94 = 0;
  }

  *&v93 = v57;
  *(&v94 + 1) = v68;
  sub_2486C6800(&v93, 0xD000000000000013, 0x8000000248739350);
  return swift_endAccess();
}

id ASRIntraTurnFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ASRIntraTurnFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASRIntraTurnFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ASRIntraTurnFeatureExtractor.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ASRIntraTurnFeatureExtractor();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2486EFD10(unint64_t a1)
{
  v13 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_21:
    v3 = sub_248731790();
    if (v3)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    for (i = v4; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1D7600](i, a1);
      }

      else
      {
        if (i >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * i + 32);
      }

      v7 = v8;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v8 packageGenerated];
      if (v9)
      {
        break;
      }

LABEL_6:

      if (v4 == v3)
      {
        return v5;
      }
    }

    v10 = v9;
    v11 = [v9 isFinal];

    if ((v11 & 1) == 0)
    {
      v7 = v10;
      goto LABEL_6;
    }

    MEMORY[0x24C1D71A0]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_248731260();
    }

    sub_2487312A0();
    v5 = v13;
  }

  while (v4 != v3);
  return v5;
}

uint64_t sub_2486EFEA0(unint64_t a1)
{
  v11 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = sub_248731790();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C1D7600](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_16;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v9 = [v6 recognitionResultTier1];

    ++v4;
    if (v9)
    {
      MEMORY[0x24C1D71A0]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_248731260();
      }

      sub_2487312A0();
      v5 = v11;
      v4 = v8;
    }
  }

  return v5;
}

void sub_2486EFFF8(void *a1)
{
  v1 = [a1 package];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v1 postItn];

  if (!v3)
  {
    return;
  }

  v4 = [v3 utterances];
  if (v4)
  {
    v5 = v4;
    sub_2486CF4C4(0, &qword_27EEA6398, 0x277D56AB0);
    v6 = sub_248731240();
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = [v3 phrases];
  if (v7)
  {
    v8 = v7;
    sub_2486CF4C4(0, &qword_27EEA6390, 0x277D56A00);
    v9 = sub_248731240();

    if (!(v6 >> 62))
    {
      goto LABEL_8;
    }

LABEL_15:
    if (sub_248731790())
    {
      goto LABEL_9;
    }

LABEL_16:

    return;
  }

  v9 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_9:
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_83:
    v10 = MEMORY[0x24C1D7600](0, v6);
    goto LABEL_12;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v6 + 32);
LABEL_12:
    v11 = v10;

    v12 = [v11 interpretationIndices];
    if (v12)
    {
      v13 = v12;
      sub_2486CF4C4(0, &qword_27EEA6388, 0x277CCABB0);
      v14 = sub_248731240();
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    v15 = v14 & 0xFFFFFFFFFFFFFF8;
    if (v14 >> 62)
    {
      v16 = sub_248731790();
      if (!v16)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_85;
      }
    }

    v17 = 0;
    v53 = v14 & 0xC000000000000001;
    v51 = v9 & 0xFFFFFFFFFFFFFF8;
    v52 = v9 & 0xC000000000000001;
    v18 = MEMORY[0x277D84F90];
    v46 = MEMORY[0x277D84F90];
    v44 = v11;
    v49 = v14 & 0xFFFFFFFFFFFFFF8;
    v50 = v16;
    while (1)
    {
      v45 = v18;
      v19 = v17 + 4;
      while (1)
      {
        v6 = v19 - 4;
        if (v53)
        {
          v20 = MEMORY[0x24C1D7600](v19 - 4, v14);
        }

        else
        {
          if (v6 >= *(v15 + 16))
          {
            goto LABEL_76;
          }

          v20 = *(v14 + 8 * v19);
        }

        v21 = v20;
        v17 = v19 - 3;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        if (v52)
        {
          v22 = MEMORY[0x24C1D7600](v19 - 4, v9);
        }

        else
        {
          if (v6 >= *(v51 + 16))
          {
            goto LABEL_77;
          }

          v22 = *(v9 + 8 * v19);
        }

        v23 = v22;
        v24 = [v22 interpretations];

        if (v24)
        {
          break;
        }

LABEL_24:
        ++v19;
        if (v17 == v16)
        {
          v11 = v44;
          goto LABEL_85;
        }
      }

      sub_2486CF4C4(0, &qword_27EEA6378, 0x277D56968);
      v6 = sub_248731240();

      v25 = [v21 integerValue];
      if ((v6 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x24C1D7600](v25, v6);
      }

      else
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_78;
        }

        if (v25 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_79;
        }

        v26 = *(v6 + 8 * v25 + 32);
      }

      v27 = v26;

      v28 = [v27 tokens];
      if (!v28)
      {

        goto LABEL_24;
      }

      v29 = v28;
      sub_2486CF4C4(0, &qword_27EEA6380, 0x277D56AA0);
      v30 = sub_248731240();

      if (!(v30 >> 62))
      {
        break;
      }

      v6 = sub_248731790();
      if (!v6)
      {
        goto LABEL_40;
      }

LABEL_46:
      v43 = v14;
      if ((v30 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x24C1D7600](0, v30);
      }

      else
      {
        if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_87;
        }

        v31 = *(v30 + 32);
      }

      v32 = v31;
      v42 = v9;
      if (v6 != 1)
      {
        v9 = 1;
        v41 = v3;
        do
        {
          v47 = v32;
          v3 = v9;
          while (1)
          {
            if ((v30 & 0xC000000000000001) != 0)
            {
              v33 = MEMORY[0x24C1D7600](v3, v30);
              v9 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                goto LABEL_80;
              }
            }

            else
            {
              if (v3 < 0)
              {
                goto LABEL_81;
              }

              if (v3 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_82;
              }

              v33 = *(v30 + 8 * v3 + 32);
              v9 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                goto LABEL_80;
              }
            }

            v32 = v33;
            v34 = [v47 confidence];
            if (v34 < [v32 confidence])
            {
              break;
            }

            ++v3;
            if (v9 == v6)
            {
              v32 = v47;
              v3 = v41;
              goto LABEL_63;
            }
          }

          v3 = v41;
        }

        while (v9 != v6);
      }

LABEL_63:

      v35 = [v32 linkIndex];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_2486C46EC(0, *(v46 + 2) + 1, 1, v46);
      }

      v9 = v42;
      v15 = v49;
      v36 = v46;
      v38 = *(v46 + 2);
      v37 = *(v46 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_2486C46EC((v37 > 1), v38 + 1, 1, v46);
      }

      *(v36 + 2) = v38 + 1;
      v46 = v36;
      *&v36[8 * v38 + 32] = v35;
      v48 = [v32 confidence];
      v18 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_2486C46EC(0, *(v45 + 2) + 1, 1, v45);
      }

      v40 = *(v18 + 2);
      v39 = *(v18 + 3);
      if (v40 >= v39 >> 1)
      {
        v18 = sub_2486C46EC((v39 > 1), v40 + 1, 1, v18);
      }

      *(v18 + 2) = v40 + 1;
      *&v18[8 * v40 + 32] = v48;
      v16 = v50;
      v14 = v43;
      v11 = v44;
      if (v17 == v50)
      {
LABEL_85:

        return;
      }
    }

    v6 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_46;
    }

LABEL_40:

    v15 = v49;
    v16 = v50;
    goto LABEL_24;
  }

  __break(1u);
LABEL_87:
  __break(1u);
}

unint64_t sub_2486F06C0()
{
  result = qword_27EEA6360;
  if (!qword_27EEA6360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEA5F80, &qword_248733300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6360);
  }

  return result;
}

uint64_t sub_2486F0724(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_30:
    v23 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

LABEL_29:
  v3 = sub_248731790();
  if (!v3)
  {
    goto LABEL_30;
  }

LABEL_3:
  v4 = 0;
  v23 = MEMORY[0x277D84F90];
  do
  {
    v5 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1D7600](v5, a1);
      }

      else
      {
        if (v5 >= *(v2 + 16))
        {
          goto LABEL_28;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v8 = [v6 requestContext];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 ended];

        if (v10)
        {
          v11 = [v10 metrics];

          if (v11)
          {
            break;
          }
        }
      }

      v12 = [v7 requestContext];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 failed];

        if (v14)
        {
          v11 = [v14 metrics];

          if (v11)
          {
            break;
          }
        }
      }

      v15 = [v7 requestContext];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 cancelled];

        if (v17)
        {
          v11 = [v17 metrics];

          if (v11)
          {
            break;
          }
        }
      }

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_31;
      }
    }

    v18 = [v11 audioDurationInNs];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_2486C47F4(0, *(v23 + 2) + 1, 1, v23);
    }

    v20 = *(v23 + 2);
    v19 = *(v23 + 3);
    if (v20 >= v19 >> 1)
    {
      v23 = sub_2486C47F4((v19 > 1), v20 + 1, 1, v23);
    }

    *(v23 + 2) = v20 + 1;
    *&v23[8 * v20 + 32] = v18;
  }

  while (v4 != v3);
LABEL_31:
  if (*(v23 + 2))
  {
    v21 = *(v23 + 4);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t FeaturizedTurnsByBucketizedTimestamp.__allocating_init(bucketSize:)(double a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = sub_2486D3EAC(MEMORY[0x277D84F90]);
  return v2;
}

uint64_t FeaturizedTurnsByBucketizedTimestamp.init(bucketSize:)(double a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = sub_2486D3EAC(MEMORY[0x277D84F90]);
  return v1;
}

uint64_t sub_2486F0AB4(uint64_t a1, double a2)
{
  v3 = v2;
  swift_beginAccess();
  v5 = a2 / *(v2 + 16);
  if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 24);
  v22 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  v9 = sub_2486C9590(v6);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  if (v8[3] < v14)
  {
    sub_2486E566C(v14, isUniquelyReferenced_nonNull_native);
    v8 = v22;
    v9 = sub_2486C9590(v6);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_9;
    }

    v9 = sub_2487318B0();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_9:
    *(v3 + 24) = v8;
    if (v15)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v21 = v9;
  sub_2486E6CDC();
  v9 = v21;
  v8 = v22;
  *(v3 + 24) = v22;
  if ((v15 & 1) == 0)
  {
LABEL_10:
    v17 = v9;
    sub_2486E62B0(v9, v6, MEMORY[0x277D84F90], v8);
    v9 = v17;
  }

LABEL_11:
  v18 = (v8[7] + 8 * v9);

  MEMORY[0x24C1D71A0](v19);
  if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_17:
    sub_248731260();
  }

  sub_2487312A0();
  return swift_endAccess();
}

Swift::Int sub_2486F0CA0(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v4 = v3;
  v25 = *a3;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v9 = *(v8 + 40);
  v10 = (v9)(v7, v8);
  swift_beginAccess();
  v11 = *(v3 + 16);
  if (v10 == v11)
  {
    goto LABEL_6;
  }

  if (qword_28150EE60 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v12 = sub_248730DF0();
    __swift_project_value_buffer(v12, qword_28150F088);
    v13 = sub_248730DD0();
    v14 = sub_2487313D0();
    if (os_log_type_enabled(v13, v14))
    {
      v24 = v4;
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2486BF000, v13, v14, "Bucket sizes for two TimeBasedDictionary objects are not the same. Set its own time buckets the same as the other", v15, 2u);
      v16 = v15;
      v4 = v24;
      MEMORY[0x24C1D8100](v16, -1, -1);
    }

    v11 = (v9)(v7, v8);
    *(v4 + 16) = v11;
LABEL_6:
    v17 = *(a1 + 32);
    v18 = v17 / v11;
    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v18 <= -9.22337204e18)
    {
      goto LABEL_29;
    }

    if (v18 >= 9.22337204e18)
    {
      goto LABEL_30;
    }

    v7 = v18;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v9 = v25;
    if (TimeBasedDictionary.exists(key:)(v7))
    {
      goto LABEL_24;
    }

    if (!v25)
    {
      goto LABEL_15;
    }

    v19 = sub_248731880();

    if (v19)
    {
      goto LABEL_16;
    }

    if (v25 == 2)
    {
LABEL_15:
    }

    else
    {
      v20 = sub_248731880();

      if ((v20 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_16:
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    if (!__OFADD__(v7, 1))
    {
      break;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

  if (TimeBasedDictionary.exists(key:)(v7 + 1))
  {
LABEL_24:
    sub_2486F0AB4(a1, v17);

    return a1;
  }

  if (v25 == 1)
  {
    goto LABEL_21;
  }

  v21 = sub_248731880();

  if ((v21 & 1) == 0)
  {
    if (v25)
    {
LABEL_21:

      goto LABEL_22;
    }

    v23 = sub_248731880();

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_22:
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = v7 - 1;
  if (!__OFSUB__(v7, 1))
  {
    if (!TimeBasedDictionary.exists(key:)(result))
    {
      return 0;
    }

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

void sub_2486F10D4()
{
  sub_248731650();
  MEMORY[0x24C1D70A0](0xD000000000000031, 0x800000024873BD00);
  swift_beginAccess();
  sub_248731350();
  MEMORY[0x24C1D70A0](0xD000000000000016, 0x800000024873B5F0);
  swift_beginAccess();
  v1 = sub_248731850();
  MEMORY[0x24C1D70A0](v1);

  v2 = *(v0 + 24);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      MEMORY[0x24C1D70A0](41, 0xE100000000000000);

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      do
      {
LABEL_8:
        v9 = *(*(v2 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));

        sub_248731650();

        v10 = sub_248731850();
        MEMORY[0x24C1D70A0](v10);

        MEMORY[0x24C1D70A0](0x206874697720, 0xE600000000000000);
        if (v9 >> 62)
        {
          sub_248731790();
        }

        v5 &= v5 - 1;

        v11 = sub_248731850();
        MEMORY[0x24C1D70A0](v11);

        MEMORY[0x24C1D70A0](0x7328746E65766520, 0xE900000000000029);
        MEMORY[0x24C1D70A0](0x2079656B202CLL, 0xE600000000000000);
      }

      while (v5);
    }
  }

  __break(1u);
}

uint64_t FeaturizedTurnsByBucketizedTimestamp.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *sub_2486F1430@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  type metadata accessor for FeaturizedTurnsByBucketizedTimestamp();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  result = sub_2486D3EAC(MEMORY[0x277D84F90]);
  *(v4 + 24) = result;
  *a1 = v4;
  return result;
}

id SiriPostSiriEngagementFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2486F1680(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_2486F16F4(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_2486F1748()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_isPostSiriEngagement;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_2486F178C()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_donatedTimestamp;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2486F17F4(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

id PSEActionEvent.__allocating_init(action:domain:isPostSiriEngagement:donatedTimestamp:duration:sinceUIStart:sinceUIEnd:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, char a10, uint64_t a11, char a12)
{
  v18 = objc_allocWithZone(v12);
  v19 = &v18[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_action];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v18[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_domain];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v18[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_duration];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v18[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_sinceUIStart];
  *v22 = 0;
  v22[8] = 1;
  v23 = &v18[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_sinceUIEnd];
  *v23 = 0;
  v23[8] = 1;
  swift_beginAccess();
  *v19 = a1;
  v19[1] = a2;
  swift_beginAccess();
  *v20 = a3;
  v20[1] = a4;
  v18[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_isPostSiriEngagement] = a5;
  *&v18[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_donatedTimestamp] = a9;
  swift_beginAccess();
  *v21 = a6;
  v21[8] = a7 & 1;
  swift_beginAccess();
  *v22 = a8;
  v22[8] = a10 & 1;
  swift_beginAccess();
  *v23 = a11;
  v23[8] = a12 & 1;
  v30.receiver = v18;
  v30.super_class = v29;
  return objc_msgSendSuper2(&v30, sel_init);
}

id PSEActionEvent.init(action:domain:isPostSiriEngagement:donatedTimestamp:duration:sinceUIStart:sinceUIEnd:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, char a10, uint64_t a11, char a12)
{
  v18 = &v12[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_action];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v12[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_domain];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v12[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_duration];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v12[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_sinceUIStart];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v12[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_sinceUIEnd];
  *v22 = 0;
  v22[8] = 1;
  swift_beginAccess();
  *v18 = a1;
  v18[1] = a2;
  swift_beginAccess();
  *v19 = a3;
  v19[1] = a4;
  v12[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_isPostSiriEngagement] = a5;
  *&v12[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_donatedTimestamp] = a9;
  swift_beginAccess();
  *v20 = a6;
  v20[8] = a7 & 1;
  swift_beginAccess();
  *v21 = a8;
  v21[8] = a10 & 1;
  swift_beginAccess();
  *v22 = a11;
  v22[8] = a12 & 1;
  v28.receiver = v12;
  v28.super_class = type metadata accessor for PSEActionEvent();
  return objc_msgSendSuper2(&v28, sel_init);
}

id SiriPostSiriEngagementFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriPostSiriEngagementFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_2486F1D5C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v3 = *(a1 + v2);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return;
  }

  v121 = MEMORY[0x277D84F90];
  v5 = v4;
  v106 = v3;
  v107 = v5;
  v6 = [v5 pseEvents];
  sub_2486CF4C4(0, &qword_27EEA63D8, 0x277CF1550);
  v7 = sub_248731240();

  v8 = v7;
  if (v7 >> 62)
  {
    v9 = sub_248731790();
    v8 = v7;
    if (v9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_4:
      if (v9 < 1)
      {
        __break(1u);
        return;
      }

      v10 = 0;
      v108 = v8 & 0xC000000000000001;
      v109 = v9;
      v11 = off_278F52000;
      v110 = v8;
      do
      {
        if (v108)
        {
          v12 = MEMORY[0x24C1D7600](v10);
        }

        else
        {
          v12 = *(v8 + 8 * v10 + 32);
        }

        v13 = v12;
        v14 = [v12 action];
        if (v14)
        {
          v15 = v14;
          v16 = sub_248730FF0();
          v115 = v17;
          v116 = v16;
        }

        else
        {
          v115 = 0;
          v116 = 0;
        }

        v18 = [v13 domain];
        if (v18)
        {
          v19 = v18;
          v20 = sub_248730FF0();
          v113 = v21;
          v114 = v20;
        }

        else
        {
          v113 = 0;
          v114 = 0;
        }

        v112 = [v13 isPostSiriEngagement];
        [v13 donatedTimestamp];
        v23 = v22;
        v24 = [v13 v11[422]];
        v25 = v24;
        v26 = 0;
        v27 = 0;
        if (v24)
        {
          [v24 duration];
          v27 = v28;
        }

        v29 = [v13 v11[422]];
        v30 = v29;
        if (v29)
        {
          [v29 sinceUIStart];
          v26 = v31;
        }

        v32 = [v13 v11[422]];
        v33 = v32;
        v117 = v10;
        if (v32)
        {
          [v32 sinceUIEnd];
          v35 = v34;
        }

        else
        {
          v35 = 0;
        }

        v111 = v33 == 0;
        v36 = v30 == 0;
        v37 = v25 == 0;
        v38 = type metadata accessor for PSEActionEvent();
        v39 = objc_allocWithZone(v38);
        v40 = &v39[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_action];
        *v40 = 0;
        v40[1] = 0;
        v41 = &v39[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_domain];
        *v41 = 0;
        v41[1] = 0;
        v42 = &v39[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_duration];
        *v42 = 0;
        v42[8] = 1;
        v43 = &v39[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_sinceUIStart];
        *v43 = 0;
        v43[8] = 1;
        v44 = &v39[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_sinceUIEnd];
        *v44 = 0;
        v44[8] = 1;
        swift_beginAccess();
        *v40 = v116;
        v40[1] = v115;
        swift_beginAccess();
        *v41 = v114;
        v41[1] = v113;
        v39[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_isPostSiriEngagement] = v112;
        *&v39[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation14PSEActionEvent_donatedTimestamp] = v23;
        swift_beginAccess();
        *v42 = v27;
        v42[8] = v37;
        swift_beginAccess();
        *v43 = v26;
        v43[8] = v36;
        swift_beginAccess();
        *v44 = v35;
        v44[8] = v111;
        v120.receiver = v39;
        v120.super_class = v38;
        v45 = objc_msgSendSuper2(&v120, sel_init);
        MEMORY[0x24C1D71A0]();
        if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_248731260();
        }

        v10 = v117 + 1;
        sub_2487312A0();

        v8 = v110;
        v11 = off_278F52000;
      }

      while (v109 != v117 + 1);
      v46 = v121;
      goto LABEL_28;
    }
  }

  v46 = MEMORY[0x277D84F90];
LABEL_28:

  v47 = [v107 engagementUnderstandingFeatures];
  if (v47)
  {
    v48 = v47;
    v49 = [v47 isConfirmInteraction];

    LOBYTE(v118) = v49;
    v50 = MEMORY[0x277D839B0];
  }

  else
  {
    v50 = 0;
    v118 = 0uLL;
    *&v119 = 0;
  }

  *(&v119 + 1) = v50;
  swift_beginAccess();
  sub_2486C6800(&v118, 0xD00000000000002BLL, 0x8000000248739F10);
  swift_endAccess();
  v51 = [v107 engagementUnderstandingFeatures];
  if (v51)
  {
    v52 = v51;
    v53 = [v51 isSiriCompleted];

    LOBYTE(v118) = v53;
    v54 = MEMORY[0x277D839B0];
  }

  else
  {
    v54 = 0;
    v118 = 0uLL;
    *&v119 = 0;
  }

  *(&v119 + 1) = v54;
  swift_beginAccess();
  sub_2486C6800(&v118, 0xD000000000000026, 0x8000000248739F40);
  swift_endAccess();
  v55 = [v107 engagementUnderstandingFeatures];
  if (v55)
  {
    v56 = v55;
    v57 = [v55 isUserAbandoned];

    LOBYTE(v118) = v57;
    v58 = MEMORY[0x277D839B0];
  }

  else
  {
    v58 = 0;
    v118 = 0uLL;
    *&v119 = 0;
  }

  *(&v119 + 1) = v58;
  swift_beginAccess();
  sub_2486C6800(&v118, 0xD000000000000026, 0x8000000248739F70);
  swift_endAccess();
  v59 = [v107 engagementUnderstandingFeatures];
  if (v59)
  {
    v60 = v59;
    v61 = [v59 isUserCancelled];

    LOBYTE(v118) = v61;
    v62 = MEMORY[0x277D839B0];
  }

  else
  {
    v62 = 0;
    v118 = 0uLL;
    *&v119 = 0;
  }

  *(&v119 + 1) = v62;
  swift_beginAccess();
  sub_2486C6800(&v118, 0xD000000000000026, 0x8000000248739FA0);
  swift_endAccess();
  v63 = [v107 engagementUnderstandingFeatures];
  if (v63)
  {
    v64 = v63;
    v65 = [v63 isPromptInteraction];

    LOBYTE(v118) = v65;
    v66 = MEMORY[0x277D839B0];
  }

  else
  {
    v66 = 0;
    v118 = 0uLL;
    *&v119 = 0;
  }

  *(&v119 + 1) = v66;
  swift_beginAccess();
  sub_2486C6800(&v118, 0xD00000000000002ALL, 0x8000000248739FD0);
  swift_endAccess();
  v67 = [v107 engagementUnderstandingFeatures];
  if (v67)
  {
    v68 = v67;
    v69 = [v67 isDisambiguateInteraction];

    LOBYTE(v118) = v69;
    v70 = MEMORY[0x277D839B0];
  }

  else
  {
    v70 = 0;
    v118 = 0uLL;
    *&v119 = 0;
  }

  *(&v119 + 1) = v70;
  swift_beginAccess();
  sub_2486C6800(&v118, 0xD000000000000032, 0x800000024873A000);
  swift_endAccess();
  v71 = [v107 engagementUnderstandingFeatures];
  if (v71)
  {
    v72 = v71;
    v73 = [v71 isUnsupportedPromptInteraction];

    LOBYTE(v118) = v73;
    v74 = MEMORY[0x277D839B0];
  }

  else
  {
    v74 = 0;
    v118 = 0uLL;
    *&v119 = 0;
  }

  *(&v119 + 1) = v74;
  swift_beginAccess();
  sub_2486C6800(&v118, 0xD000000000000035, 0x800000024873A040);
  swift_endAccess();
  v75 = [v107 engagementUnderstandingFeatures];
  if (v75)
  {
    v76 = v75;
    v77 = [v75 taskSuccess];

    type metadata accessor for BMSiriPostSiriEngagementFeaturesTaskSuccess(0);
    LODWORD(v118) = v77;
  }

  else
  {
    v118 = 0uLL;
    *&v119 = 0;
  }

  *(&v119 + 1) = v75;
  swift_beginAccess();
  sub_2486C6800(&v118, 0xD000000000000022, 0x800000024873A080);
  swift_endAccess();
  v78 = [v107 engagementUnderstandingFeatures];
  if (v78)
  {
    v79 = v78;
    [v78 taskSuccess];

    v80 = BMSiriPostSiriEngagementFeaturesTaskSuccessAsString();
    v81 = sub_248730FF0();
    v83 = v82;

    *(&v119 + 1) = MEMORY[0x277D837D0];
    *&v118 = v81;
    *(&v118 + 1) = v83;
  }

  else
  {
    v118 = 0u;
    v119 = 0u;
  }

  swift_beginAccess();
  sub_2486C6800(&v118, 0xD00000000000002ALL, 0x800000024873A0B0);
  swift_endAccess();
  *(&v119 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F88, &qword_248734080);
  *&v118 = v46;
  swift_beginAccess();
  sub_2486C6800(&v118, 0xD000000000000020, 0x8000000248739DF0);
  swift_endAccess();
  v84 = [v107 appPattern];
  if (v84)
  {
    v85 = v84;
    v86 = sub_248730FF0();
    v88 = v87;

    v89 = MEMORY[0x277D837D0];
  }

  else
  {
    v86 = 0;
    v88 = 0;
    v89 = 0;
    *&v119 = 0;
  }

  *&v118 = v86;
  *(&v118 + 1) = v88;
  *(&v119 + 1) = v89;
  swift_beginAccess();
  sub_2486C6800(&v118, 0xD000000000000021, 0x8000000248739E20);
  swift_endAccess();
  v90 = [v107 conversationPath];
  if (v90)
  {
    v91 = v90;
    v92 = sub_248730FF0();
    v94 = v93;

    v95 = MEMORY[0x277D837D0];
  }

  else
  {
    v92 = 0;
    v94 = 0;
    v95 = 0;
    *&v119 = 0;
  }

  *&v118 = v92;
  *(&v118 + 1) = v94;
  *(&v119 + 1) = v95;
  swift_beginAccess();
  sub_2486C6800(&v118, 0xD000000000000027, 0x8000000248739E50);
  swift_endAccess();
  v96 = [v107 engagementUnderstandingFeatures];
  v97 = v96;
  if (v96)
  {
    v96 = sub_2486CF4C4(0, &qword_27EEA5F90, 0x277CF1548);
  }

  else
  {
    *(&v118 + 1) = 0;
    *&v119 = 0;
  }

  *&v118 = v97;
  *(&v119 + 1) = v96;
  swift_beginAccess();
  sub_2486C6800(&v118, 0xD000000000000036, 0x8000000248739E80);
  swift_endAccess();
  v98 = [v107 requestIds];
  v99 = sub_248731240();

  *(&v119 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
  *&v118 = v99;
  swift_beginAccess();
  sub_2486C6800(&v118, 0xD000000000000021, 0x8000000248739EC0);
  swift_endAccess();
  v100 = [v107 taskType];
  if (v100)
  {
    v101 = v100;
    v102 = sub_248730FF0();
    v104 = v103;

    v105 = MEMORY[0x277D837D0];
  }

  else
  {
    v102 = 0;
    v104 = 0;
    v105 = 0;
    *&v119 = 0;
  }

  *&v118 = v102;
  *(&v118 + 1) = v104;
  *(&v119 + 1) = v105;
  swift_beginAccess();
  sub_2486C6800(&v118, 0xD00000000000001FLL, 0x8000000248739EF0);
  swift_endAccess();
}

id sub_2486F2A88(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double keypath_getTm_0@<D0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;

  return result;
}

void keypath_get_7Tm(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  v5 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v5;
}

void keypath_set_8Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
}

uint64_t UnifiedSiriTurnBase.turnId.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t UnifiedSiriTurnBase.invocationTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_invocationTime;
  v4 = sub_248730970();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2486F2EA8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_2486C5C10(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_clockStartTime;
  swift_beginAccess();
  sub_2486F3020(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_2486F2F68@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_clockStartTime;
  swift_beginAccess();
  return sub_2486C5C10(v1 + v3, a1);
}

uint64_t sub_2486F2FC0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_clockStartTime;
  swift_beginAccess();
  sub_2486F3020(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2486F3020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t UnifiedSiriTurnBase.__allocating_init(turn:)(void *a1)
{
  v2 = swift_allocObject();
  UnifiedSiriTurnBase.init(turn:)(a1);
  return v2;
}

void *UnifiedSiriTurnBase.init(turn:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  MEMORY[0x28223BE20](v4 - 8);
  v28 = v27 - v5;
  v6 = sub_248730970();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2487309B0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = *(v7 + 56);
  v27[1] = v7 + 56;
  (v27[0])(v2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_clockStartTime, 1, 1, v6);
  v2[2] = a1;
  v14 = a1;
  sub_248730C60();
  v15 = sub_248730980();
  v17 = v16;
  (*(v11 + 8))(v13, v10);
  v2[3] = v15;
  v2[4] = v17;
  sub_248730C50();
  sub_248730940();
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_invocationTime, v9, v6);
  sub_2486CF4C4(0, &qword_27EEA6340, 0x277D57048);
  v18 = sub_248730BA0();
  v19 = v18;
  if (!(v18 >> 62))
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    return v2;
  }

  result = sub_248731790();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x24C1D7600](0, v19);
LABEL_6:
    v22 = v21;

    sub_2486CF4C4(0, &qword_27EEA63E0, 0x277D5A918);
    v23 = sub_248730B00();

    if (v23)
    {
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24)
      {
        [v24 timeIntervalSince1970];
        v25 = v28;
        sub_248730940();

        (v27[0])(v25, 0, 1, v6);
        v26 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_clockStartTime;
        swift_beginAccess();
        sub_2486F3020(v25, v2 + v26);
        swift_endAccess();
      }

      else
      {
      }
    }

    else
    {
    }

    return v2;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v19 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2486F34C8()
{
  sub_248730B80();
  sub_248730B60();
  sub_248730BC0();
  v0 = sub_248731280();

  return v0;
}

uint64_t sub_2486F3544()
{
  if (!sub_2487314B0())
  {
    return MEMORY[0x277D84F90];
  }

  sub_248730B90();
  sub_248730B60();
  sub_248730BC0();
  v0 = sub_248731280();

  return v0;
}

uint64_t sub_2486F35D4(uint64_t a1, uint64_t a2)
{
  sub_248730B90();
  sub_248730B60();
  sub_248730BC0();
  v3 = sub_248731280();

  v18 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_248731790())
  {
    v5 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v6 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1D7600](v6, v3);
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = sub_248730AF0();
      if (v10 && v10 == a2)
      {
        sub_2487316B0();
        sub_2487316E0();
        sub_2487316F0();
        sub_2487316C0();
      }

      else
      {
      }

      ++v6;
      if (v9 == i)
      {
        a2 = v18;
        v5 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  a2 = MEMORY[0x277D84F90];
LABEL_17:

  v18 = v5;
  if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
  {
    v3 = sub_248731790();
  }

  else
  {
    v3 = *(a2 + 16);
  }

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v3 != v11)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x24C1D7600](v11, a2);
    }

    else
    {
      if (v11 >= *(a2 + 16))
      {
        goto LABEL_33;
      }

      v13 = *(a2 + 8 * v11 + 32);
    }

    v14 = v13;
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    sub_2486CF4C4(0, &qword_27EEA63E0, 0x277D5A918);
    v16 = sub_248730B00();

    ++v11;
    if (v16)
    {
      MEMORY[0x24C1D71A0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_248731260();
      }

      sub_2487312A0();
      v12 = v18;
      v11 = v15;
    }
  }

  return v12;
}

uint64_t sub_2486F388C()
{
  sub_2486CF4C4(0, &qword_27EEA6338, 0x277D57038);
  sub_248730B90();
  sub_248730B60();
  sub_248730BC0();
  v0 = sub_248731280();

  return v0;
}

uint64_t sub_2486F3920(uint64_t a1)
{
  sub_2486E8718(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6468, qword_248734C98);
  type metadata accessor for UnifiedSiriTurnBase(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = *(v3 + 24);

  return v1;
}

void *sub_2486F39E0()
{
  v1 = v0;
  v2 = 0x5F73746E657665;
  v35 = MEMORY[0x277D84F90];
  sub_2486DA320(0, 2, 0);
  v3 = v35;
  v4 = dword_285B23600;
  v39 = sub_2487314E0();
  v41 = v5;
  sub_2486F4428();
  sub_248731370();
  v6 = 0xE700000000000000;
  MEMORY[0x24C1D70A0](v39, v41);

  v7 = 0x5F73746E657665;
  v8 = 0xE700000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2486F447C;
  *(v10 + 24) = v9;
  v12 = *(v35 + 16);
  v11 = *(v35 + 24);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    *(v3 + 16) = v13;
    v14 = v3 + 40 * v12;
    *(v14 + 32) = v7;
    *(v14 + 40) = v8;
    *(v14 + 48) = sub_2486F4488;
    *(v14 + 56) = v10;
    v8 = 5;
    *(v14 + 64) = 5;
    v15 = dword_285B23604;
    v40 = sub_2487314E0();
    v42 = v16;
    v13 = MEMORY[0x277D837D0];
    sub_248731370();
    v38 = v6;
    MEMORY[0x24C1D70A0](v40, v42);

    v6 = v2;
    v17 = swift_allocObject();
    v34 = v1;
    *(v17 + 16) = v1;
    *(v17 + 24) = v15;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_2486F447C;
    *(v18 + 24) = v17;
    v35 = v3;
    v12 = *(v3 + 16);
    v19 = *(v3 + 24);
    if (v12 >= v19 >> 1)
    {
      v33 = v18;
      sub_2486DA320((v19 > 1), v12 + 1, 1);
      v18 = v33;
      v3 = v35;
    }

    *(v3 + 16) = v12 + 1;
    v20 = v3 + 40 * v12;
    *(v20 + 32) = v2;
    *(v20 + 40) = v38;
    *(v20 + 48) = sub_2486F4488;
    *(v20 + 56) = v18;
    *(v20 + 64) = 5;
    sub_2486C3A88(v3);
    v21 = sub_2487314D0();
    v22 = *(v21 + 16);
    if (!v22)
    {
      break;
    }

    v36 = MEMORY[0x277D84F90];
    v10 = sub_2486DA320(0, v22, 0);
    v2 = 0;
    v7 = v36;
    while (1)
    {
      v11 = *(v21 + 16);
      if (v2 >= v11)
      {
        break;
      }

      v23 = *(v21 + 4 * v2 + 32);
      sub_2487314C0();
      v35 = 0;
      sub_2486D8A18();
      sub_248731580();

      v24 = sub_248731050();
      v26 = v25;

      MEMORY[0x24C1D70A0](v24, v26);

      v6 = 0x5F73746E657665;
      v8 = 0xE700000000000000;
      v27 = swift_allocObject();
      *(v27 + 16) = v34;
      *(v27 + 24) = v23;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_2486F4490;
      *(v10 + 24) = v27;
      v37 = v7;
      v12 = *(v7 + 16);
      v28 = *(v7 + 24);
      v1 = v12 + 1;
      if (v12 >= v28 >> 1)
      {
        v30 = v10;
        sub_2486DA320((v28 > 1), v12 + 1, 1);
        v10 = v30;
        v7 = v37;
      }

      ++v2;
      *(v7 + 16) = v1;
      v29 = v7 + 40 * v12;
      *(v29 + 32) = 0x5F73746E657665;
      *(v29 + 40) = 0xE700000000000000;
      *(v29 + 48) = sub_2486F5068;
      *(v29 + 56) = v10;
      *(v29 + 64) = 5;
      if (v22 == v2)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    v32 = v10;
    sub_2486DA320((v11 > 1), v13, 1);
    v10 = v32;
    v3 = v35;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_12:
  sub_2486C3A88(v7);
  return &unk_285B23608;
}

uint64_t sub_2486F3F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2486C5B68(a1, v6);
  type metadata accessor for UnifiedSiriTurnBase(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_248730B80();
  sub_248730B60();
  sub_248730BC0();
  v3 = sub_248731280();

  v4 = sub_2486F4ADC(v3);

  return v4;
}

uint64_t sub_2486F4018(void *a1, uint64_t (*a2)(uint64_t *))
{
  v3 = a1[3];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v3);
  v8[3] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v4, v3);
  v6 = a2(v8);
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

uint64_t sub_2486F40BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2486C5B68(a1, v6);
  type metadata accessor for UnifiedSiriTurnBase(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (sub_2487314B0())
  {
    sub_248730B90();
    sub_248730B60();
    sub_248730BC0();
    v3 = sub_248731280();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v5 = sub_2486F4ADC(v3);

  return v5;
}

uint64_t (*sub_2486F41DC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2486F4790(v6, a2, a3);
  return sub_2486F4264;
}

void sub_2486F4264(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t UnifiedSiriTurnBase.deinit()
{

  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_invocationTime;
  v2 = sub_248730970();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2486E1660(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_clockStartTime);
  return v0;
}

uint64_t UnifiedSiriTurnBase.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_invocationTime;
  v2 = sub_248730970();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2486E1660(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation19UnifiedSiriTurnBase_clockStartTime);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

unint64_t sub_2486F4428()
{
  result = qword_27EEA63E8;
  if (!qword_27EEA63E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA63E8);
  }

  return result;
}

uint64_t type metadata accessor for UnifiedSiriTurnBase(uint64_t a1)
{
  result = qword_27EEA63F0;
  if (!qword_27EEA63F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2486F44F0(uint64_t a1)
{
  sub_248730970();
  if (v1 <= 0x3F)
  {
    sub_2486F4738(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2486F4738(uint64_t a1)
{
  if (!qword_27EEA6400)
  {
    sub_248730970();
    v1 = sub_248731550();
    if (!v2)
    {
      atomic_store(v1, &qword_27EEA6400);
    }
  }
}

void (*sub_2486F4790(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_2486F4AA8(v7);
  v7[9] = sub_2486F489C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_2486F483C;
}

void sub_2486F483C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2486F489C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_2486C94CC(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_2486E6E3C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_2486E58E8(v18, a4 & 1);
    v13 = sub_2486C94CC(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2487318B0();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_2486F49F4;
}

void sub_2486F49F4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    if ((*a1)[5])
    {
      *(*(*v1[3] + 56) + 8 * v1[4]) = v2;
    }

    else
    {
      sub_2486E877C();
    }
  }

  else if ((*a1)[5])
  {
    v3 = v1[4];
    v4 = *v1[3];
    sub_2486F5014(*(v4 + 48) + 16 * v3);
    sub_2486EBF84(v3, v4);
  }

  free(v1);
}

uint64_t (*sub_2486F4AA8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2486F4AD0;
}

uint64_t sub_2486F4ADC(unint64_t a1)
{
  v62[5] = *MEMORY[0x277D85DE8];
  v2 = sub_248731030();
  MEMORY[0x28223BE20](v2 - 8);
  v52[1] = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2486D3FC0(MEMORY[0x277D84F90]);
  v61 = v4;
  if (a1 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_248731790())
  {
    v6 = 0;
    v7 = a1 & 0xC000000000000001;
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
    v9 = off_278F52000;
    v54 = i;
    v55 = a1;
    v53 = a1 & 0xC000000000000001;
    v59 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v7)
      {
        v10 = MEMORY[0x24C1D7600](v6, a1);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_40;
        }

        v10 = *(a1 + 8 * v6 + 32);
      }

      v11 = v10;
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v13 = sub_248730AD0();
      if (!v13)
      {
        __break(1u);
      }

      v4 = v13;
      v14 = [v13 v9[438]];

      if (v14)
      {
        v4 = [v14 payload];

        if (v4)
        {
          v15 = sub_2487308C0();
          v17 = v16;

          v4 = v11;
          v18 = sub_248730AD0();
          if (v18)
          {
            v19 = v18;
            v62[4] = &unk_285B31078;
            v20 = swift_dynamicCastObjCProtocolConditional();
            if (v20)
            {
              v60 = v17;
              v21 = v20;
              swift_getObjectType();
              v22 = [swift_getObjCClassFromMetadata() getInnerTypeStringByTag_];
              v23 = sub_248730FF0();
              v25 = v24;

              v26 = v61;
              if (!v61[2])
              {
                goto LABEL_21;
              }

              sub_2486C94CC(v23, v25);
              if ((v27 & 1) == 0)
              {
                v26 = v61;
LABEL_21:

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v62[0] = v26;
                sub_2486EC848(MEMORY[0x277D84F90], v23, v25, isUniquelyReferenced_nonNull_native);

                v61 = v62[0];
              }

              v58 = sub_2487308B0();
              v29 = v15;
              v31 = v30;
              v32 = sub_2486F41DC(v62, v23, v25);
              v4 = v32;
              v34 = *v33;
              if (*v33)
              {
                v35 = v33;
                v56 = v29;
                v57 = v32;
                v36 = swift_isUniquelyReferenced_nonNull_native();
                *v35 = v34;
                if ((v36 & 1) == 0)
                {
                  v34 = sub_2486C44B4(0, *(v34 + 2) + 1, 1, v34);
                  *v35 = v34;
                }

                v38 = *(v34 + 2);
                v37 = *(v34 + 3);
                v4 = (v38 + 1);
                if (v38 >= v37 >> 1)
                {
                  v34 = sub_2486C44B4((v37 > 1), v38 + 1, 1, v34);
                  *v35 = v34;
                }

                a1 = v55;
                *(v34 + 2) = v4;
                v39 = &v34[16 * v38];
                v40 = v57;
                *(v39 + 4) = v58;
                *(v39 + 5) = v31;
                (v40)(v62, 0);

                sub_2486CC7FC(v56, v60);
              }

              else
              {

                (v4)(v62, 0);

                sub_2486CC7FC(v29, v60);

                a1 = v55;
              }

              v7 = v53;
              i = v54;
LABEL_30:
              v8 = v59;
              v9 = off_278F52000;
              goto LABEL_5;
            }
          }

          else
          {
          }

          sub_2486CC7FC(v15, v17);
          goto LABEL_30;
        }
      }

LABEL_5:
      ++v6;
      if (v12 == i)
      {
        v4 = v61;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_33:
  if (!v4[2])
  {
    goto LABEL_37;
  }

  v41 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5F80, &qword_248733300);
  v42 = sub_248730F00();
  v62[0] = 0;
  v43 = [v41 dataWithJSONObject:v42 options:0 error:v62];

  v44 = v62[0];
  if (!v43)
  {
    v49 = v44;
    v50 = sub_2487307E0();

    swift_willThrow();
LABEL_37:
    v48 = 0;
    goto LABEL_38;
  }

  v45 = sub_2487308C0();
  v47 = v46;

  sub_248731020();
  v48 = sub_248731010();
  sub_2486CC7FC(v45, v47);
LABEL_38:

  return v48;
}