void sub_23A9F3268(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16C8, &qword_23AA1B9C0);
  v4 = sub_23AA0D864();
  v5 = v4;
  if (*(v3 + 16))
  {
    v30 = v2;
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
    v12 = v4 + 56;
    v32 = v4;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v33 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_23AA0DD14();
      v18 = *(v17 + 48);
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v18 + 32;

        do
        {
          v20 += 8;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
          v21 = sub_23AA0DC84();
          MEMORY[0x23EE907C0](v21);
          --v19;
        }

        while (v19);
      }

      else
      {
      }

      v22 = sub_23AA0DD54();
      v5 = v32;
      v23 = -1 << *(v32 + 32);
      v24 = v22 & ~v23;
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

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v32 + 48) + 8 * v13) = v17;
      ++*(v32 + 16);
      v3 = v31;
      v10 = v33;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v30;
        goto LABEL_31;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v33 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v5;
  }
}

void sub_23A9F34F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1710, &qword_23AA1B9F0);
  v4 = sub_23AA0D864();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_23A910674(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v27);
      sub_23A9106D0();
      v19 = sub_23AA0D054();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
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
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v27[0];
      v15 = v27[1];
      *(v13 + 32) = v28;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
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
}

void sub_23A9F373C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_23AA0D864();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + (v15 | (v8 << 6)));
      sub_23AA0DD14();
      MEMORY[0x23EE907C0](v18);
      v19 = sub_23AA0DD54();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + v14) = v18;
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

        v4 = v3;
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
}

void sub_23A9F3954(uint64_t a1)
{
  v2 = v1;
  v34 = sub_23AA0BFB4();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1708, &qword_23AA1B9E8);
  v7 = sub_23AA0D864();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
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
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_23A9F56F0(&qword_27DFAEFD0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v21 = sub_23AA0D054();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
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

        v2 = v29;
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
}

void sub_23A9F3C70(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_23AA0D7B4();
    type metadata accessor for HullPointUUID(0);
    sub_23A9F56F0(&qword_27DFB0630, type metadata accessor for HullPointUUID, &unk_23AA12C24);
    sub_23AA0D424();
    v4 = v24;
    v8 = v25;
    v9 = v26;
    v10 = v27;
    v11 = v28;
    if (!a2)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_20:
    v10 = 0;
    v17 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v11 = v19 & *(v4 + 56);
    if (!a2)
    {
      goto LABEL_30;
    }
  }

  if (!a3)
  {
    goto LABEL_30;
  }

  if (a3 < 0)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v21 = v9;
  v22 = a1;
  v12 = (v9 + 64) >> 6;
  a1 = 1;
  while (v4 < 0)
  {
    if (!sub_23AA0D824())
    {
      goto LABEL_29;
    }

    type metadata accessor for HullPointUUID(0);
    swift_dynamicCast();
    v15 = v23;
    if (!v23)
    {
      goto LABEL_29;
    }

LABEL_16:
    *a2 = v15;
    if (a1 == a3)
    {
      goto LABEL_29;
    }

    ++a2;
    if (__OFADD__(a1++, 1))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v13 = v10;
  if (v11)
  {
LABEL_12:
    v11 &= v11 - 1;

    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v10 = v14;
      goto LABEL_12;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v20 = v10 + 1;
  }

  else
  {
    v20 = v12;
  }

  v10 = v20 - 1;
LABEL_29:
  v9 = v21;
  a1 = v22;
LABEL_30:
  *a1 = v4;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
}

void *sub_23A9F3E9C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_23A9F3F9C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 56) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_23A9F409C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_23A9F41F0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_23AA0C0E4();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_23A9F4494(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_23A9F4614(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v39 = a6;
  v40 = a7;
  v11 = a5(0);
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v37 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = a4 + 8;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[8];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = a1;
    v36 = a3;
    v20 = 0;
    v34 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[7];
      v27 = v37;
      v28 = *(v38 + 72);
      sub_23A9F5634(v26 + v28 * (v25 | (v20 << 6)), v37, v39);
      v29 = v27;
      v30 = v40;
      sub_23A9C25A8(v29, v15, v40);
      sub_23A9C25A8(v15, a2, v30);
      if (v22 == v36)
      {
        a4 = a1;
        a1 = v35;
        goto LABEL_23;
      }

      a2 += v28;
      v31 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v31)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v32 = v20 + 1;
    }

    else
    {
      v32 = v21;
    }

    v20 = v32 - 1;
    a1 = v35;
LABEL_23:
    v17 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_23A9F4858(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_23AA0BFB4();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_23A9F4AFC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v19 = v8;
  v20 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v21 = (v7 - 1) & v7;
LABEL_13:
      sub_23A910674(*(result + 48) + 40 * (v10 | (v3 << 6)), v25);
      v23[0] = v25[0];
      v23[1] = v25[1];
      v24 = v26;
      sub_23A9106D0();
      v13 = sub_23AA0D054();
      v14 = -1 << *(a2 + 32);
      v15 = v13 & ~v14;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        break;
      }

      v16 = ~v14;
      while (1)
      {
        sub_23A910674(*(a2 + 48) + 40 * v15, v22);
        v17 = sub_23AA0D054();
        v18 = sub_23AA0D054();
        sub_23A910724(v22);
        if (v17 == v18)
        {
          break;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      sub_23A910724(v23);
      v8 = v19;
      result = v20;
      v7 = v21;
      if (!v21)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_23A910724(v23);
    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v21 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A9F4D08(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_23AA0D7F4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for HullPointUUID(0);
  v5 = sub_23A9F56F0(&qword_27DFB0630, type metadata accessor for HullPointUUID, &unk_23AA12C24);
  result = MEMORY[0x23EE8FEA0](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EE90360](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_23A9EF31C(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_23AA0D7F4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_23A9F4E74(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_23AA0D7F4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for CDTTriangle();
  v5 = sub_23A9F56F0(&qword_27DFB0650, type metadata accessor for CDTTriangle, &unk_23AA1ABF0);
  result = MEMORY[0x23EE8FEA0](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EE90360](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_23A9EF6AC(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_23AA0D7F4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_23A9F4FE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_23A9106D0();
  result = MEMORY[0x23EE8FEA0](v2, &type metadata for AnyCapturedRoomAttribute, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      sub_23A910674(v5, v6);
      sub_23A9EF964(v7, v6);
      sub_23A910724(v7);
      v5 += 40;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_23A9F506C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_23A9F569C();
  result = MEMORY[0x23EE8FEA0](v2, &type metadata for CapturedRoom.Object.Category, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_23A9EFB10(&v7, v6, &qword_27DFB16E0, &qword_23AA1B9C8, &type metadata for CapturedRoom.Object.Category);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_23A9F510C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v25 = MEMORY[0x277D84F90];
    sub_23A97605C(0, v2, 0);
    v3 = v25;
    v4 = a1 + 32;
    do
    {
      sub_23A8CA9D8(v4, v20);
      v5 = v21;
      v6 = v22;
      v7 = __swift_project_boxed_opaque_existential_1(v20, v21);
      v8 = MEMORY[0x28223BE20](v7);
      v10 = &v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v10, v8);
      sub_23A936390(v10, v5, v6, v23);
      __swift_destroy_boxed_opaque_existential_1(v20);
      v25 = v3;
      v13 = *(v3 + 16);
      v12 = *(v3 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_23A97605C((v12 > 1), v13 + 1, 1);
        v3 = v25;
      }

      *(v3 + 16) = v13 + 1;
      v14 = v3 + 40 * v13;
      v15 = v23[0];
      v16 = v23[1];
      *(v14 + 64) = v24;
      *(v14 + 32) = v15;
      *(v14 + 48) = v16;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  v17 = sub_23A9F4FE0(v3);

  return v17;
}

uint64_t type metadata accessor for CapturedRoom.ModelProvider.Error(uint64_t a1)
{
  result = qword_27DFB16B0;
  if (!qword_27DFB16B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A9F5364(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A9F541C(uint64_t *a1, int a2)
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

uint64_t sub_23A9F5464(uint64_t result, int a2, int a3)
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

uint64_t sub_23A9F54C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16A0, &qword_23AA1B8E0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A9F5550(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16A0, &qword_23AA1B8E0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_23A9F55DC(uint64_t a1)
{
  sub_23A930458();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_23A9F5634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_23A9F569C()
{
  result = qword_27DFB16D8;
  if (!qword_27DFB16D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB16D8);
  }

  return result;
}

uint64_t sub_23A9F56F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

int8x8_t sub_23A9F5774(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, float32x4_t a11, float32x4_t a12)
{
  v12 = a2;
  v41 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions);
  v37 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform);
  v38 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 16);
  v40 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 32);
  v39 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 48);
  v14 = sub_23A97E68C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, v37, v38, v40, v39, 0, *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions));
  v15 = *&v41;
  if (v16)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  result = vbic_s8(v14, vdup_n_s32(v17));
  v19 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides);
  v20 = 0.0 - (0.5 * *&v41);
  v21 = vabds_f32(*result.i32, v20);
  v22 = 3.4028e38;
  if ((v19 & 1) == 0)
  {
    v21 = 3.4028e38;
  }

  v23 = (0.5 * *&v41) + 0.0;
  v24 = vabds_f32(*result.i32, v23);
  if ((v19 & 2) == 0)
  {
    v24 = 3.4028e38;
  }

  v25 = vmuls_lane_f32(0.5, *&v41, 1);
  v26 = v25 + 0.0;
  v27 = vabds_f32(*&result.i32[1], v25 + 0.0);
  if ((v19 & 8) != 0)
  {
    v22 = v27;
  }

  v28 = 0.0 - v25;
  if ((v19 & 4) != 0)
  {
    v29 = vabds_f32(*&result.i32[1], v28);
    if (v24 >= v21)
    {
      v30 = v21;
    }

    else
    {
      v30 = v24;
    }

    if (v22 < v30)
    {
      v30 = v22;
    }

    if (v29 >= v30)
    {
      v29 = v30;
    }

    goto LABEL_26;
  }

  if (v24 < v21)
  {
    if (v22 >= v24)
    {
      v29 = v24;
      if (v24 > 3.4028e38)
      {
        return result;
      }

      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v22 < v21)
  {
LABEL_23:
    v29 = v22;
    if (v22 > 3.4028e38)
    {
      return result;
    }

    goto LABEL_26;
  }

  v29 = v21;
  if (v21 > 3.4028e38)
  {
    return result;
  }

LABEL_26:
  if (v29 != 3.4028e38)
  {
    if (v29 == v21)
    {
      v31 = v20 + 0.1;
    }

    else
    {
      if (v29 != v24)
      {
        if (v29 == v22)
        {
          v35 = v26 + -0.1;
        }

        else
        {
          v35 = v28 + 0.1;
        }

        v32 = __PAIR64__(LODWORD(v35), result.u32[0]);
        if ((v12 & 1) == 0)
        {
LABEL_33:
          v42 = result;
          v36 = v32;
          v33 = sub_23A97E638(*&result, 0.0, v15);
          v32 = v36;
          v34 = v42;
          if (v33)
          {
            return vaddq_f32(v39, vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, v34.f32[0]), v38, v34, 1), 0, v40)).u64[0];
          }
        }

LABEL_39:
        v34 = v32;
        return vaddq_f32(v39, vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, v34.f32[0]), v38, v34, 1), 0, v40)).u64[0];
      }

      v31 = v23 + -0.1;
    }

    v32 = __PAIR64__(result.u32[1], LODWORD(v31));
    if ((v12 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_39;
  }

  return result;
}

void sub_23A9F59B8(uint64_t a1, int a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  *&v78[32] = a5;
  *&v78[48] = a6;
  *v78 = a3;
  *&v78[16] = a4;
  v7 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform);
  v8 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 16);
  v9 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 32);
  v10 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 48);
  v11 = vextq_s8(*(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions), *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions), 8uLL).u64[0];
  v12 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions);
  v13 = v12;
  v12.i32[0] = v11.i32[0];
  v90 = v12.i64[0];
  HIDWORD(v14) = 0;
  *&v15 = vsubq_f32(0, v8).u64[0];
  v16 = vmuls_lane_f32(0.5, *v13.f32, 1);
  v17 = vmuls_lane_f32(v16, v8, 2);
  v18 = vmul_n_f32(*v8.f32, v16);
  v8.i32[3] = 0;
  v88 = v8;
  v19 = vmuls_lane_f32(0.5 * v13.f32[0], v7, 2);
  *&v20 = vsubq_f32(0, v7).u64[0];
  *v8.f32 = vmul_n_f32(*v7.f32, 0.5 * v13.f32[0]);
  v7.i32[3] = 0;
  v86 = v7;
  *&v14 = vaddq_f32(v9, 0).u64[0];
  *(&v14 + 2) = v9.f32[2] + 0.0;
  *(&v20 + 2) = 0.0 - v7.f32[2];
  HIDWORD(v20) = 0;
  v81 = v20;
  v84 = v14;
  *&v14 = vsub_f32(*&v10, *v8.f32);
  *(&v14 + 2) = *(&v10 + 2) - v19;
  HIDWORD(v14) = 1.0;
  v74 = v14;
  *&v21 = vadd_f32(*&v10, *v8.f32);
  *(&v21 + 2) = *(&v10 + 2) + v19;
  v22 = vzip1_s32(*v13.f32, v11);
  HIDWORD(v21) = 1.0;
  v75 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions);
  v77 = v21;
  *(&v15 + 2) = 0.0 - v8.f32[2];
  HIDWORD(v15) = 0;
  v79 = v15;
  *v12.f32 = vadd_f32(*&v10, v18);
  v12.f32[2] = *(&v10 + 2) + v17;
  v12.i32[3] = 1.0;
  v73 = v12;
  *v12.f32 = vsub_f32(*&v10, v18);
  v12.f32[2] = *(&v10 + 2) - v17;
  v12.i32[3] = 1.0;
  v72 = v12;
  v12.f32[0] = vmuls_lane_f32(0.5, v13, 2);
  v23 = -(v9.f32[2] * v12.f32[0]);
  *v9.f32 = vneg_f32(*v9.f32);
  *v12.f32 = vmul_n_f32(*v9.f32, v12.f32[0]);
  v9.f32[2] = -v9.f32[2];
  v9.i32[3] = 0;
  v69 = v9;
  *&v24 = vadd_f32(*&v10, *v12.f32);
  *(&v24 + 2) = *(&v10 + 2) + v23;
  HIDWORD(v24) = 1.0;
  v71 = v24;
  *&v24 = vsub_f32(*&v10, *v12.f32);
  *(&v24 + 2) = *(&v10 + 2) - v23;
  HIDWORD(v24) = 1.0;
  v70 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1718, &qword_23AA1BA20);
  v25 = swift_allocObject();
  v33 = v25;
  v34 = 0;
  *(v25 + 16) = xmmword_23AA12260;
  *(v25 + 32) = v69;
  *(v25 + 48) = v88;
  *(v25 + 64) = v86;
  *(v25 + 80) = v74;
  *(v25 + 96) = 0;
  *(v25 + 104) = v90;
  *(v25 + 112) = v84;
  *(v25 + 128) = v88;
  *(v25 + 144) = v81;
  *(v25 + 160) = v77;
  *(v25 + 176) = 0;
  *(v25 + 184) = v90;
  *(v25 + 192) = v86;
  *(v25 + 208) = v84;
  *(v25 + 224) = v79;
  *(v25 + 240) = v73;
  *(v25 + 256) = 0;
  *(v25 + 264) = v22;
  *(v25 + 272) = v86;
  *(v25 + 288) = v69;
  *(v25 + 304) = v88;
  *(v25 + 320) = v72;
  *(v25 + 336) = 0;
  *(v25 + 344) = v22;
  *(v25 + 352) = v86;
  *(v25 + 368) = v88;
  *(v25 + 384) = v84;
  *(v25 + 400) = v71;
  *(v25 + 416) = 0;
  *(v25 + 424) = v75;
  *(v25 + 432) = v81;
  *(v25 + 448) = v88;
  *(v25 + 464) = v69;
  *(v25 + 480) = v70;
  v35 = a2 ^ 1;
  *(v25 + 496) = 0;
  *(v25 + 504) = v75;
  v36 = MEMORY[0x277D84F90];
  do
  {
    v80 = *(v33 + v34 + 104);
    v82 = *(v33 + v34 + 96);
    v85 = *(v33 + v34 + 32);
    v87 = *(v33 + v34 + 48);
    v89 = *(v33 + v34 + 80);
    v91 = *(v33 + v34 + 64);
    v25 = sub_23A97E68C(v25, v26, v27, v28, v29, v30, v31, v32, *v78, *&v78[16], *&v78[32], *&v78[48], v85, v87, v91, v89, v82, v80);
    if ((v26 & 1) == 0)
    {
      v39 = v25;
      v40 = *&v82 - (0.5 * *&v80);
      v41 = vabds_f32(*&v25, v40);
      v42 = *&v82 + (0.5 * *&v80);
      v43 = vabds_f32(*&v25, v42);
      v44 = vmuls_lane_f32(0.5, v80, 1);
      v45 = *(&v82 + 1) + v44;
      v46 = vabds_f32(*(&v25 + 1), *(&v82 + 1) + v44);
      v47 = *(&v82 + 1) - v44;
      v48 = vabds_f32(*(&v25 + 1), *(&v82 + 1) - v44);
      if (v43 >= v41)
      {
        v49 = v41;
      }

      else
      {
        v49 = v43;
      }

      if (v46 < v49)
      {
        v49 = v46;
      }

      if (v48 >= v49)
      {
        v48 = v49;
      }

      v76 = v25;
      if (v48 == v41)
      {
        *&v39 = v40 + 0.1;
      }

      else if (v48 == v43)
      {
        *&v39 = v42 + -0.1;
      }

      else
      {
        if (v48 == v46)
        {
          v50 = v45 + -0.1;
        }

        else
        {
          v50 = v47 + 0.1;
        }

        *(&v39 + 1) = v50;
      }

      v83 = v39;
      v52 = v42 >= *&v25 && v40 <= *&v25;
      v53 = v35 & v52;
      v55 = *(&v25 + 1) <= v45 && v47 <= *(&v25 + 1);
      if ((v53 & v55) != 0)
      {
        v56 = -1;
      }

      else
      {
        v56 = 0;
      }

      LODWORD(v25) = swift_isUniquelyReferenced_nonNull_native();
      if ((v25 & 1) == 0)
      {
        v25 = sub_23A9388A8(0, *(v36 + 16) + 1, 1, v36);
        v36 = v25;
      }

      v58 = *(v36 + 16);
      v57 = *(v36 + 24);
      v59 = v76;
      v60 = HIDWORD(v77);
      if (v58 >= v57 >> 1)
      {
        v25 = sub_23A9388A8((v57 > 1), v58 + 1, 1, v36);
        v59 = v76;
        v60 = HIDWORD(v77);
        v36 = v25;
      }

      v37 = vbsl_s8(vdup_n_s32(v56), v59, v83);
      v38 = vaddq_f32(v89, vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v85, v37.f32[0]), v87, v37, 1), 0, v91));
      v38.i32[3] = v60;
      *(v36 + 16) = v58 + 1;
      *(v36 + 16 * v58 + 32) = v38;
      HIDWORD(v77) = v60;
    }

    v34 += 80;
  }

  while (v34 != 480);

  v92 = __invert_f4(*v78);
  v61 = *(v36 + 16);
  if (v61)
  {
    v62 = 0;
    v63 = -v61;
    v64 = 3.4028e38;
    do
    {
      v65 = v62 + 2;
      while (1)
      {
        v66 = vaddq_f32(v92.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92.columns[0], COERCE_FLOAT(*(v36 + 16 * v65))), v92.columns[1], *(v36 + 16 * v65), 1), v92.columns[2], *(v36 + 16 * v65), 2));
        v67 = sqrtf(vaddv_f32(*&vmulq_f32(v66, v66)));
        if (v67 < v64)
        {
          break;
        }

        ++v65;
        if (v63 + v65 == 2)
        {
          goto LABEL_46;
        }
      }

      v68 = v63 + v65;
      v62 = v65 - 1;
      v64 = v67;
    }

    while (v68 != 1);
  }

LABEL_46:
}

uint64_t sub_23A9F5EC8(void *a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1728, &unk_23AA1BA38);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  v7 = sub_23AA0C7C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v47 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v42 - v11;
  MEMORY[0x28223BE20](v12);
  v45 = &v42 - v13;
  MEMORY[0x28223BE20](v14);
  v49 = &v42 - v15;
  sub_23AA0067C(v50);
  if (LOBYTE(v50[0]))
  {
    v16 = 30.0;
  }

  else
  {
    v16 = 0.0;
  }

  sub_23A9FF8B4(v50);
  sub_23A9F7AB4();
  v18 = v17;
  sub_23AA0C934();
  if (v19 != v16)
  {
    sub_23AA0C944();
    sub_23AA0C964();
  }

  sub_23A9F7954(a1, v18);
  v48 = a1;
  v20 = [a1 layer];
  v21 = [v20 sublayers];

  if (v21)
  {
    sub_23A8D6C58(0, &qword_27DFB1720, 0x277CD9ED0);
    v22 = sub_23AA0D2F4();

    v44 = v7;
    v43 = v8;
    v42 = v6;
    if (v22 >> 62)
    {
LABEL_24:
      v23 = sub_23AA0D7F4();
      if (v23)
      {
LABEL_9:
        v24 = 0;
        while (1)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x23EE90360](v24, v22);
          }

          else
          {
            if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_23;
            }

            v25 = *(v22 + 8 * v24 + 32);
          }

          v26 = v25;
          v27 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

          objc_opt_self();
          v28 = swift_dynamicCastObjCClass();
          if (v28)
          {
            break;
          }

          ++v24;
          if (v27 == v23)
          {
            goto LABEL_25;
          }
        }

        v29 = v28;

        swift_beginAccess();
        if (a2[141])
        {
          v30 = 81;
        }

        else
        {
          v30 = 553;
        }

        [v29 setPixelFormat_];

        goto LABEL_26;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        goto LABEL_9;
      }
    }

LABEL_25:

LABEL_26:
    v7 = v44;
    v8 = v43;
    v6 = v42;
  }

  swift_beginAccess();
  sub_23AA0C924();
  swift_beginAccess();
  if (a2[143] == 1)
  {
    v31 = v45;
    sub_23AA0C7B4();
    v32 = sub_23AA0C7D4();
    v33 = v49;
    sub_23A9C3BF4(v49, v31);
    v34 = *(v8 + 8);
    v34(v31, v7);
    v34(v33, v7);
    return v32(v50, 0);
  }

  else
  {
    v36 = v46;
    sub_23AA0C7B4();
    v37 = sub_23AA0C7D4();
    v38 = (*(v8 + 16))(v49);
    sub_23A9F7B98(v38);
    v39 = v47;
    sub_23AA0D714();
    if (sub_23AA0D724())
    {
      v40 = *(v8 + 8);
      v40(v39, v7);
      v40(v36, v7);
      v41 = 1;
    }

    else
    {
      sub_23AA0D734();
      (*(v8 + 8))(v36, v7);
      (*(v8 + 32))(v6, v39, v7);
      v41 = 0;
    }

    (*(v8 + 56))(v6, v41, 1, v7);
    sub_23A9F7BF0(v6);
    return v37(v50, 0);
  }
}

void sub_23A9F643C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(a1 + 182);
  v5 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled;
  swift_beginAccess();
  *(v2 + v5) = v4;
  v6 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView;
  v7 = *(v2 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView);
  if (!v7)
  {
    goto LABEL_53;
  }

  *(v7 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_isModelEnabled) = v4;
  v8 = *(v7 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
  if (!v8)
  {
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  [v8 setHidden_];
  v9 = *(v2 + v6);
  if (!v9)
  {
    goto LABEL_53;
  }

  v10 = *(v9 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
  if (!v10)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v11 = [v10 layer];
  v12 = [v11 sublayers];

  if (v12)
  {
    sub_23A8D6C58(0, &qword_27DFB1720, 0x277CD9ED0);
    v13 = sub_23AA0D2F4();

    if (v13 >> 62)
    {
LABEL_23:
      v14 = sub_23AA0D7F4();
      if (v14)
      {
LABEL_8:
        v15 = 0;
        while (1)
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x23EE90360](v15, v13);
          }

          else
          {
            if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v16 = *(v13 + 8 * v15 + 32);
          }

          v17 = v16;
          v18 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          objc_opt_self();
          v19 = swift_dynamicCastObjCClass();
          if (v19)
          {
            break;
          }

          ++v15;
          if (v18 == v14)
          {
            goto LABEL_24;
          }
        }

        v20 = v19;

        swift_beginAccess();
        if (*(a1 + 141))
        {
          v21 = 81;
        }

        else
        {
          v21 = 553;
        }

        [v20 setPixelFormat_];

        goto LABEL_25;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_8;
      }
    }

LABEL_24:
  }

LABEL_25:
  v22 = *(v2 + v6);
  if (!v22)
  {
    goto LABEL_53;
  }

  swift_beginAccess();
  v23 = *(a1 + 183);
  v24 = v22;
  sub_23A9E7A9C(v23);

  v25 = *(v2 + v6);
  if (!v25)
  {
    goto LABEL_53;
  }

  swift_beginAccess();
  v26 = *&v25[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse];
  if (!v26)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  *(v26 + qword_27DFAE618) = *(a1 + 184);
  v27 = v25;

  sub_23A8C7878();

  v28 = *(v2 + v6);
  if (v28)
  {
    swift_beginAccess();
    v29 = *(a1 + 188);
    v30 = v28;
    sub_23A9E7BC0(v29);

    v28 = *(v2 + v6);
    if (v28)
    {
      swift_beginAccess();
      v31 = *(a1 + 192);
      v32 = v28;
      sub_23A9E7C08(v31);

      v33 = *(v2 + v6);
      if (!v33)
      {
        goto LABEL_53;
      }

      swift_beginAccess();
      if (!*&v33[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_ambientLight])
      {
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v34 = v33;

      sub_23AA0C1B4();
      v35 = sub_23AA0CD94();
      sub_23AA0C654();
      v35(v71, 0);

      v36 = *(v2 + v6);
      if (!v36)
      {
        goto LABEL_53;
      }

      swift_beginAccess();
      v37 = *(a1 + 208);
      *&v36[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLightDirection] = v37;
      if (!*&v36[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLight])
      {
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v69 = *&v37;
      __sincosf_stret(vmuls_lane_f32(0.5, *&v37, 1));
      __sincosf_stret(0.5 * v69);
      sub_23AA0C534();
      v38 = v36;

      sub_23AA0C254();

      v39 = *(v2 + v6);
      if (!v39)
      {
        goto LABEL_53;
      }

      v40 = v6;
      swift_beginAccess();
      if (!*&v39[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLight])
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v41 = v39;

      v42 = sub_23AA0C614();
      sub_23AA0C6C4();
      v42(v71, 0);

      v43 = *(v2 + v6);
      if (!v43)
      {
        goto LABEL_53;
      }

      swift_beginAccess();
      if (!*&v43[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse])
      {
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v44 = *(a1 + 232);
      v45 = v43;

      v46.n128_u64[0] = v44;
      sub_23A8C7E78(v46);

      v28 = *(v2 + v6);
      if (v28)
      {
        swift_beginAccess();
        if (!*(v28 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLight))
        {
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v47 = v28;

        v48 = sub_23AA0C624();
        v50 = v49;
        v51 = sub_23AA0C6B4();
        v70 = *(*(v51 - 8) + 48);
        if (!v70(v50, 1, v51))
        {
          sub_23AA0C6A4();
        }

        v48(v71, 0);

        v6 = v40;
        v52 = *(v2 + v40);
        if (!v52)
        {
          goto LABEL_53;
        }

        swift_beginAccess();
        if (!*&v52[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse])
        {
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v53 = *(a1 + 240);
        v54 = v52;

        v55.n128_u64[0] = v53;
        sub_23A8C8364(v55);

        v28 = *(v2 + v40);
        if (v28)
        {
          swift_beginAccess();
          if (!*(v28 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLight))
          {
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

          v56 = v28;

          v57 = sub_23AA0C624();
          if (!v70(v58, 1, v51))
          {
            sub_23AA0C694();
          }

          v57(v71, 0);

          v6 = v40;
          v59 = *(v2 + v40);
          if (v59)
          {
            swift_beginAccess();
            v60 = *&v59[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse];
            if (!v60)
            {
LABEL_83:
              __break(1u);
              goto LABEL_84;
            }

            *(v60 + qword_27DFAE608) = *(a1 + 181);
            v61 = v59;

            sub_23A8C6BA0();

            v62 = *(v2 + v40);
            if (v62)
            {
              if (!*(v62 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse))
              {
LABEL_84:
                __break(1u);
                return;
              }

              v28 = *(sub_23A8C6298() + 16);

              goto LABEL_54;
            }
          }

LABEL_53:
          v28 = 0;
        }
      }
    }
  }

LABEL_54:
  swift_beginAccess();
  if (*(a1 + 180) == 1)
  {
    swift_beginAccess();
    v63 = v28 & 0xFFFFFFFFFFFFFFF9 | 2;
    if ((v28 & 4) == 0)
    {
      v63 = v28 | 2;
    }

    v64 = v28 | 6;
    if ((v28 & 4) != 0)
    {
      v64 = v28 | 2;
    }

    if (*(a1 + 181) == 1)
    {
      v65 = v64;
    }

    else
    {
      v65 = v63;
    }
  }

  else
  {
    v65 = v28 & 0xFFFFFFFFFFFFFFF9;
  }

  swift_beginAccess();
  if (*(a1 + 181) == 1)
  {
    v66 = (v65 & 0xFFFFFFFFFFFFFFFELL) + 1;
  }

  else
  {
    v66 = v65 & 0xFFFFFFFFFFFFFFFELL;
  }

  v67 = *(v2 + v6);
  if (v67)
  {
    if (*(v67 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse))
    {
      v68 = sub_23A8C6298();
      *(v68 + 16) = v66;

      sub_23A947F18((v65 & 2) != 0);
      if ((*(v68 + 16) & 1) == 0)
      {
        sub_23A94BEE4();
        sub_23A8DFFB8();
      }

      return;
    }

    goto LABEL_73;
  }
}

void sub_23A9F6DAC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager);
  if (v2)
  {
    v4 = *(*(v2 + OBJC_IVAR____TtC8RoomPlan17WorldSpaceManager_worldViewManager) + 24);
    v5 = *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);

    if (v5)
    {
      v6 = v5;
      [v6 contentScaleFactor];
      v8 = v7;
      *(v4 + 140) = v8;
      swift_beginAccess();
      *(v4 + 156) = *(a1 + 176) * v8;
      sub_23A8E02B4();
    }

    swift_beginAccess();
    v9 = *(a1 + 181);
    sub_23A9BCBEC(&v9);
  }
}

void sub_23A9F6ECC(_BYTE *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  if (a1[170] == 1)
  {
    swift_beginAccess();
    if (!*(v2 + v4))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v5 = sub_23A9CCB9C();

    v6 = *(v5 + 17) | 3;
    goto LABEL_7;
  }

  swift_beginAccess();
  if (!*(v2 + v4))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v5 = sub_23A9CCB9C();

  if ((*(v5 + 17) & 3) != 0)
  {
    v6 = *(v5 + 17) & 0xFC;
LABEL_7:
    *(v5 + 17) = v6;
  }

  swift_beginAccess();
  v7 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  if (a1[172] == 1)
  {
    swift_beginAccess();
    if (!*(v2 + v7))
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v8 = sub_23A9CCB9C();

    v9 = *(v8 + 17) | 0x38;
    goto LABEL_14;
  }

  swift_beginAccess();
  if (!*(v2 + v7))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v8 = sub_23A9CCB9C();

  if ((*(v8 + 17) & 0x38) != 0)
  {
    v9 = *(v8 + 17) & 0xC7;
LABEL_14:
    *(v8 + 17) = v9;
  }

  swift_beginAccess();
  v10 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  if (a1[171] == 1)
  {
    swift_beginAccess();
    if (!*(v2 + v10))
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v11 = sub_23A9CCB9C();

    v12 = *(v11 + 17) | 4;
    goto LABEL_21;
  }

  swift_beginAccess();
  if (!*(v2 + v10))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v11 = sub_23A9CCB9C();

  if ((*(v11 + 17) & 4) != 0)
  {
    v12 = *(v11 + 17) & 0xFB;
LABEL_21:
    *(v11 + 17) = v12;
  }

  swift_beginAccess();
  v13 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  if (a1[174] == 1)
  {
    swift_beginAccess();
    if (!*(v2 + v13))
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v14 = sub_23A9CCB9C();

    v15 = *(v14 + 17) | 2;
    goto LABEL_28;
  }

  swift_beginAccess();
  if (!*(v2 + v13))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v14 = sub_23A9CCB9C();

  if ((*(v14 + 17) & 2) != 0)
  {
    v15 = *(v14 + 17) & 0xFD;
LABEL_28:
    *(v14 + 17) = v15;
  }

  swift_beginAccess();
  v16 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  if (a1[162] == 1)
  {
    swift_beginAccess();
    v17 = *(v2 + v16);
    if (!v17)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v18 = *(v17 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration);
    if (!v18)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v19 = 24;
    goto LABEL_36;
  }

  swift_beginAccess();
  v20 = *(v2 + v16);
  if (!v20)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v18 = *(v20 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration);
  if (v18)
  {
    v19 = 8;
LABEL_36:
    [v18 setFrameSemantics_];
    v21 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
    swift_beginAccess();
    if (*(v2 + v21))
    {

      v22 = sub_23A9CCB9C();

      swift_beginAccess();
      *(v22 + 16) = a1[163] == 1;

      if (qword_27DFAE530 != -1)
      {
        swift_once();
      }

      v23 = qword_27DFC0BB0;
      v24 = a1[163] == 2;
      *(qword_27DFC0BB0 + 16) = v24;
      if (v24)
      {
        v25 = &off_284D86F40;
        if (!*(v2 + v21))
        {
          v25 = 0;
        }

        *(v23 + 32) = v25;
        swift_unknownObjectWeakAssign();
      }

      if (qword_27DFAE498 != -1)
      {
        swift_once();
      }

      v26 = qword_27DFC07E8;
      swift_beginAccess();
      *(v26 + 32) = a1[166];
      if (qword_27DFAE410 != -1)
      {
        swift_once();
      }

      v27 = qword_27DFC0670;
      swift_beginAccess();
      *(v27 + 32) = a1[167];
      v28 = *(v2 + v21);
      if (v28)
      {
        swift_beginAccess();
        *(v28 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_enableLiveDump) = a1[168];
        swift_beginAccess();
        v29 = a1[169];
        swift_beginAccess();
        *(v28 + 64) = v29;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_52;
  }

LABEL_63:
  __break(1u);
}

void sub_23A9F745C(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
  if (v2)
  {
    v4 = qword_27DFAE518;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = off_27DFB17B0;
    swift_beginAccess();
    v7 = v6[38];
    swift_beginAccess();
    v8 = *(v6 + 156);
    sub_23AA0067C(&v13);
    v9 = v13;
    sub_23AA0C934();
    if (v7 <= a1)
    {
      v11 = !v9;
    }

    else
    {
      v11 = v8 == 0;
    }

    if (v11)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 30.0;
    }

    if (v10 != v12)
    {
      sub_23AA0C944();
      sub_23AA0C964();
    }
  }
}

void sub_23A9F7570(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
  if (v2)
  {
    v4 = qword_27DFAE518;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = off_27DFB17B0;
    swift_beginAccess();
    v7 = v6[37];
    swift_beginAccess();
    v18 = *(v6 + 158);
    sub_23A9F7AB4();
    v9 = v8;
    sub_23A9FF8B4(&v18);
    sub_23A9F7AB4();
    v11 = v10;
    [v5 contentScaleFactor];
    v13 = v12;
    v14 = [objc_opt_self() mainScreen];
    [v14 scale];
    v16 = v15;

    v17 = v13 / v16;
    if (v7 <= a1)
    {
      if (v17 != v9)
      {
        goto LABEL_8;
      }
    }

    else if (v17 != v11)
    {
      v9 = v11;
LABEL_8:
      sub_23A9F7954(v5, v9);
    }
  }
}

uint64_t sub_23A9F76E8()
{
  result = sub_23A9F7708();
  dword_27DFC0B48 = result;
  return result;
}

uint64_t sub_23A9F7708()
{
  v0 = sub_23AA0CE84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A8D6C58(0, &qword_27DFB0628, 0x277CE53B0);
  v4 = [swift_getObjCClassFromMetadata() configurableCaptureDeviceForPrimaryCamera];
  if (!v4)
  {
    return 60;
  }

  v5 = v4;
  [v4 activeVideoMinFrameDuration];
  v6 = v13;
  [v5 activeVideoMinFrameDuration];
  v7 = v13;
  if (v13 == v6)
  {
  }

  else
  {
    sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v9 = sub_23AA0CE54();
    v10 = sub_23AA0D494();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23A8B4000, v9, v10, "Varying framerate, taking max framerate as native value", v11, 2u);
      MEMORY[0x23EE91710](v11, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }

  if (v6 <= v7)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

void sub_23A9F7954(void *a1, double a2)
{
  [a1 contentScaleFactor];
  v6 = v5;
  v7 = [objc_opt_self() mainScreen];
  [v7 scale];
  v9 = v8;

  [a1 setContentScaleFactor_];
  [a1 contentScaleFactor];
  if (v10 != v6)
  {
    v11 = *(v2 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager);
    if (v11)
    {
      v12 = *(*(v11 + OBJC_IVAR____TtC8RoomPlan17WorldSpaceManager_worldViewManager) + 24);

      [a1 contentScaleFactor];
      *&v13 = v13;
      *(v12 + 140) = LODWORD(v13);
      if (qword_27DFAE518 != -1)
      {
        swift_once();
      }

      v14 = off_27DFB17B0;
      swift_beginAccess();
      *(v12 + 156) = v14[44] * *(v12 + 140);
      sub_23A8E02B4();
    }
  }
}

void sub_23A9F7AB4()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  CGRectGetWidth(v1);
  [v0 bounds];
  CGRectGetHeight(v2);
  [v0 scale];
}

unint64_t sub_23A9F7B98(double a1)
{
  result = qword_27DFB1118;
  if (!qword_27DFB1118)
  {
    sub_23AA0C7C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1118);
  }

  return result;
}

uint64_t sub_23A9F7BF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1728, &unk_23AA1BA38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FloorEntity(uint64_t a1)
{
  result = qword_27DFB1730;
  if (!qword_27DFB1730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PlaceholderEntity(uint64_t a1)
{
  result = qword_27DFB1740;
  if (!qword_27DFB1740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A9F7D38(uint64_t a1)
{
  result = sub_23AA0C0E4();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_23A9F7E44()
{
  v1 = v0;
  v2 = sub_23AA0C184();
  v64 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v63 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v61 = sub_23AA0CA04();
  *&v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1750, &unk_23AA1BB00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - v10;
  v12 = sub_23AA0C5F4();
  *&v62 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  *&v58 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  *&v59 = &v55 - v15;
  v16 = sub_23AA0C0E4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DFAE368 != -1)
  {
    swift_once();
  }

  v20 = qword_27DFC04B0;
  (*(v17 + 16))(v19, v1 + qword_27DFC0B60, v16);
  swift_beginAccess();
  v21 = *(v20 + 24);
  if (!*(v21 + 16))
  {
    goto LABEL_10;
  }

  v22 = sub_23A9EDD28(v19);
  if ((v23 & 1) == 0)
  {

LABEL_10:
    (*(v17 + 8))(v19, v16);
    return result;
  }

  v56 = v8;
  *&v57 = v2;
  v24 = *(*(v21 + 56) + 8 * v22);
  v25 = *(v17 + 8);

  v25(v19, v16);
  v26 = v1;

  v27 = *(v24 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions);
  v28 = qword_27DFC0B70;
  v29 = vmovn_s32(vceqq_f32(v27, *(v1 + qword_27DFC0B70)));
  if ((v29.i8[0] & 1) == 0 || (v29.i16[1] & v29.i16[2] & 1) == 0)
  {
    *(v1 + qword_27DFC0B70) = v27;
    sub_23AA0C9C4();
    sub_23AA0CA14();
    (*(v60 + 8))(v5, v61);
    v30 = v62;
    if ((*(v62 + 48))(v11, 1, v12) == 1)
    {
      v31 = sub_23A9F86E4(v11);
    }

    else
    {
      v33 = *(v30 + 32);
      v34 = v58;
      v33(v58, v11, v12);
      v35 = v59;
      v33(v59, v34, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_23AA11BB0;
      sub_23AA0C414();
      *(v36 + 32) = MEMORY[0x23EE8EEA0](*(v26 + v28));
      sub_23AA0C5E4();
      v37 = v56;
      (*(v30 + 16))(v56, v35, v12);
      (*(v30 + 56))(v37, 0, 1, v12);
      v38 = sub_23AA0C9B4();
      sub_23AA0CA24();
      v38(v65, 0);
      v31 = (*(v30 + 8))(v35, v12);
    }

    v39 = v57;
    if (*(v26 + qword_27DFC0B68))
    {
      v40 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
    }

    else
    {
      v40 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition;
    }

    v41 = *(v24 + *v40);
    v42 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
    if (!*(v26 + qword_27DFC0B68))
    {
      v42 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation;
    }

    *&v43 = MEMORY[0x23EE8FF80](v31, v41, *(v24 + *v42), xmmword_23AA11AF0);
    v60 = v44;
    v61 = v43;
    v59 = v45;
    v62 = v46;
    type metadata accessor for PlaceholderEntity(0);
    v47 = sub_23AA0C2A4();
    v49 = v48;
    sub_23AA0DCD4();
    v58 = v50;
    sub_23AA0D4D4();
    v57 = v51;
    sub_23AA0D4C4();
    *v49 = v52;
    v53 = v58;
    v49[1] = v57;
    v49[2] = v53;
    v47(v65, 0);
    v54 = v63;
    sub_23AA0C9A4();
    sub_23AA0C114();
    (*(v64 + 8))(v54, v39);
    REMeshComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      REMeshComponentSetBoundsMargin();
    }
  }

  return result;
}

uint64_t sub_23A9F8558()
{
  v1 = qword_27DFC0B60;
  v2 = sub_23AA0C0E4();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_23A9F85C0(__n128 a1)
{
  v1 = sub_23AA0CAC4();
  v2 = qword_27DFC0B60;
  v3 = sub_23AA0C0E4();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_23A9F866C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27DFC0B60;
  v4 = sub_23AA0C0E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_23A9F86E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1750, &unk_23AA1BB00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A9F874C(uint64_t a1, int a2)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB06C0, &unk_23AA1BB10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24[-v5];
  v7 = sub_23AA0C4C4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_23AA0C5C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1750, &unk_23AA1BB00);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24[-v13];
  v15 = (v2 + qword_27DFC0B70);
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
  v17 = qword_27DFC0B60;
  v18 = sub_23AA0C0E4();
  (*(*(v18 - 8) + 16))(v2 + v17, a1 + v16, v18);
  *(v2 + qword_27DFC0B68) = v25 & 1;
  v19 = sub_23AA0C1A4();
  (*(v9 + 104))(v11, *MEMORY[0x277CDADC8], v8);

  sub_23AA0C4B4();
  sub_23AA0C5D4();
  v20 = sub_23AA0C5F4();
  (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
  v21 = sub_23AA0C9B4();
  sub_23AA0CA24();
  v21(v26, 0);
  sub_23AA0C3F4();
  sub_23AA0C3D4();
  sub_23AA0C474();
  v22 = sub_23AA0C4A4();
  (*(*(v22 - 8) + 56))(v6, 0, 1, v22);
  type metadata accessor for PlaceholderEntity(0);
  sub_23A9F8AD8();
  sub_23AA0CAF4();

  return v19;
}

unint64_t sub_23A9F8AD8()
{
  result = qword_27DFB1758;
  if (!qword_27DFB1758)
  {
    type metadata accessor for PlaceholderEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1758);
  }

  return result;
}

void sub_23A9F8B30(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v151[3] = *MEMORY[0x277D85DE8];
  swift_unknownObjectWeakInit();
  __asm { FMOV            V0.2S, #16.0 }

  *(v4 + 56) = _D0;
  type metadata accessor for GlyphState();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 32) = 1;
  *(v15 + 48) = 0u;
  *(v15 + 64) = 0u;
  *(v15 + 80) = 0u;
  *(v15 + 96) = 0u;
  *(v15 + 112) = 0u;
  *(v15 + 128) = 0u;
  *(v4 + 64) = v15;
  type metadata accessor for AnimTime();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23AA12250;
  *(v16 + 32) = 0;
  *(v4 + 72) = v16;
  *(v4 + 80) = 1024416809;
  *(v4 + 88) = sub_23A8EC414();
  *(v4 + 96) = v17;
  *(v4 + 104) = v18;
  *(v4 + 112) = sub_23A8EC5B4();
  v133 = (v4 + 112);
  *(v4 + 120) = v19;
  *(v4 + 128) = v20;
  *(v4 + 136) = sub_23A8EC5B4();
  v21 = v4 + 136;
  *(v4 + 144) = v22;
  *(v4 + 152) = v23;
  type metadata accessor for StateSpring();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v21 + 24) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v21 + 32) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v21 + 40) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v21 + 120) = 0u;
  *(v21 + 104) = 0u;
  *(v21 + 56) = 0u;
  *(v21 + 72) = 0u;
  *(v21 + 88) = 0;
  v25 = *MEMORY[0x277D860B8];
  v26 = *(MEMORY[0x277D860B8] + 16);
  v27 = *(MEMORY[0x277D860B8] + 32);
  v28 = *(MEMORY[0x277D860B8] + 48);
  *(v21 + 136) = *MEMORY[0x277D860B8];
  *(v21 + 152) = v26;
  *(v21 + 168) = v27;
  *(v21 + 184) = v28;
  *(v21 + 200) = v25;
  *(v21 + 216) = v26;
  *(v21 + 232) = v27;
  *(v21 + 248) = v28;
  *(v21 + 264) = v25;
  *(v21 + 280) = v26;
  *(v21 + 296) = v27;
  *(v21 + 312) = v28;
  *(v21 + 328) = v25;
  *(v21 + 344) = v26;
  *(v21 + 360) = v27;
  *(v21 + 376) = v28;
  type metadata accessor for DeviceController();
  *(v21 + 416) = 0;
  *(v21 + 424) = 0;
  *(v21 + 408) = 0;
  swift_allocObject();
  sub_23A9509B0();
  *(v21 + 432) = v29;
  *(v21 + 440) = 0;
  *(v21 + 444) = 1;
  *(v21 + 448) = 0xBFF0000000000000;
  *(v21 + 456) = 0xBFF0000000000000;
  *(v21 - 120) = a2;
  *(v21 - 112) = a3;
  *(v21 - 104) = a4;
  swift_unknownObjectWeakAssign();
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  swift_unknownObjectRetain();
  *(v21 - 96) = sub_23A93C058();
  type metadata accessor for DotsRenderer();
  swift_allocObject();
  v30 = swift_unknownObjectRetain();
  v147 = a2;
  v135 = a3;
  v31 = sub_23A999498(v30, a3);
  if (v149)
  {

    v31 = 0;
  }

  *(v5 + 560) = v31;

  [a1 addSublayer_];
  [a1 addSublayer_];
  [a1 addSublayer_];
  [a1 setAllowsGroupBlending_];
  v32 = *(v5 + 40);
  swift_unknownObjectRetain();
  v33 = sub_23AA0D104();
  v34 = [v32 newFunctionWithName_];

  v148 = v34;
  if (!v34)
  {
    goto LABEL_73;
  }

  swift_unknownObjectRelease();
  v35 = *(v5 + 40);
  swift_unknownObjectRetain();
  v36 = sub_23AA0D104();
  v37 = [v35 newFunctionWithName_];

  v146 = v37;
  if (!v37)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  swift_unknownObjectRelease();
  v38 = *(v5 + 40);
  swift_unknownObjectRetain();
  v39 = sub_23AA0D104();
  v40 = [v38 newFunctionWithName_];

  v150 = v40;
  if (!v40)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  swift_unknownObjectRelease();
  v41 = [objc_allocWithZone(MEMORY[0x277CD7090]) init];
  v42 = [v41 attributes];
  v43 = [v42 objectAtIndexedSubscript_];

  if (!v43)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  [v43 setFormat_];

  v44 = [v41 attributes];
  v45 = [v44 objectAtIndexedSubscript_];

  if (!v45)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  [v45 setOffset_];

  v46 = [v41 attributes];
  v47 = [v46 objectAtIndexedSubscript_];

  if (!v47)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  [v47 setBufferIndex_];

  v48 = [v41 attributes];
  v49 = [v48 objectAtIndexedSubscript_];

  if (!v49)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  [v49 setFormat_];

  v50 = [v41 attributes];
  v51 = [v50 objectAtIndexedSubscript_];

  if (!v51)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  [v51 setOffset_];

  v52 = [v41 attributes];
  v53 = [v52 objectAtIndexedSubscript_];

  if (!v53)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  [v53 setBufferIndex_];

  v54 = [v41 layouts];
  v55 = [v54 objectAtIndexedSubscript_];

  if (!v55)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  [v55 setStepFunction_];

  v56 = [v41 layouts];
  v57 = [v56 objectAtIndexedSubscript_];

  if (!v57)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  [v57 setStepRate_];

  v58 = [v41 layouts];
  v59 = [v58 objectAtIndexedSubscript_];

  if (!v59)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  [v59 setStride_];

  v60 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  [v60 setVertexDescriptor_];
  [v60 setTessellationFactorScaleEnabled_];
  [v60 setTessellationFactorFormat_];
  [v60 setTessellationControlPointIndexType_];
  [v60 setTessellationFactorStepFunction_];
  [v60 setTessellationOutputWindingOrder_];
  [v60 setTessellationPartitionMode_];
  [v60 setMaxTessellationFactor_];
  v61 = v146;
  [v60 setVertexFunction_];
  [v60 setFragmentFunction_];
  v62 = [v60 colorAttachments];
  v63 = [v62 objectAtIndexedSubscript_];

  if (!v63)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  [v63 setBlendingEnabled_];

  v64 = [v60 colorAttachments];
  v65 = [v64 objectAtIndexedSubscript_];

  if (!v65)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  [v65 setRgbBlendOperation_];

  v66 = [v60 colorAttachments];
  v67 = [v66 objectAtIndexedSubscript_];

  if (!v67)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  [v67 setAlphaBlendOperation_];

  v68 = [v60 colorAttachments];
  v69 = [v68 objectAtIndexedSubscript_];

  if (!v69)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  [v69 setSourceRGBBlendFactor_];

  v70 = [v60 colorAttachments];
  v71 = [v70 objectAtIndexedSubscript_];

  if (!v71)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  [v71 setSourceAlphaBlendFactor_];

  v72 = [v60 colorAttachments];
  v73 = [v72 objectAtIndexedSubscript_];

  if (!v73)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  [v73 setDestinationRGBBlendFactor_];

  v74 = [v60 colorAttachments];
  v75 = [v74 objectAtIndexedSubscript_];

  if (!v75)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

  [v75 setDestinationAlphaBlendFactor_];

  v76 = [v60 colorAttachments];
  v77 = [v76 objectAtIndexedSubscript_];

  if (!v77)
  {
    goto LABEL_92;
  }

  [v77 setPixelFormat_];

  [v60 setRasterSampleCount_];
  v151[0] = 0;
  v78 = [v147 newRenderPipelineStateWithDescriptor:v60 error:v151];
  v79 = v78;
  v80 = v151[0];
  if (v78)
  {
    *(v5 + 536) = v78;
    v151[0] = 0;
    v81 = v80;
    v82 = [v147 newComputePipelineStateWithFunction:v148 error:v151];
    v80 = v151[0];
    if (v82)
    {
      *(v5 + 528) = v82;
      type metadata accessor for MetalSplineData();
      swift_allocObject();
      swift_unknownObjectRetain();
      v83 = v80;
      sub_23A9E5BC8(v147);
      v85 = v84;
      *(v5 + 552) = v84;

      v86 = *(v5 + 552);
      if (v86)
      {
        v87 = *(v86 + 72);
        if (v87)
        {
          swift_beginAccess();
          v88 = *(v87 + 16);
          if (*(v88 + 16) < 3uLL)
          {
            __break(1u);
            goto LABEL_65;
          }

          v89 = *(v85 + 16);
          if (v89)
          {
            v90 = *(v88 + 48);

            v91 = [swift_unknownObjectRetain() contents];
            v92 = v89;
            v93 = *(v90 + 16);
            if (v93)
            {
              v94 = (v90 + 48);
              v95 = v91 + 16;
              do
              {
                *(v95 - 1) = *(v94 - 1);
                v96 = *v94;
                v94 += 8;
                *v95 = v96;
                v95 += 8;
                --v93;
              }

              while (v93);
            }

            v97.n128_f64[0] = sub_23A9E707C();
            v136 = v98;
            v141 = v97;
            swift_beginAccess();
            sub_23A8EC2A8(v141, v136);
            swift_endAccess();
            swift_beginAccess();
            sub_23A8EC148(*(v5 + 88));
            v137 = v100;
            v142 = v99;
            swift_endAccess();
            swift_beginAccess();
            sub_23A8EC13C(v142, v137);
            swift_endAccess();
            swift_beginAccess();
            sub_23A8EC148(*(v5 + 88));
            v138 = v102;
            v143 = v101;
            swift_endAccess();
            *(v5 + 192) = v143;
            *(v5 + 208) = v138;
            swift_beginAccess();
            *(v5 + 120) = 0x3FE6666666666666;
            sub_23A8EBE84();
            if (*(*(v5 + 64) + 32) - 1 >= 2)
            {
              if (*(*(v5 + 64) + 32))
              {
                v103 = xmmword_23AA1B400;
                v106 = 0x3FD3333333333333;
              }

              else
              {
                v103 = xmmword_23AA1B3F0;
                v106 = 0x3FC3333333333333;
              }

              _Q0 = vdupq_n_s64(v106);
            }

            else
            {
              v103 = xmmword_23AA10F20;
              __asm { FMOV            V0.2D, #1.0 }
            }

            sub_23A8EBD60(_Q0, v103);
            swift_endAccess();
            swift_beginAccess();
            v85 = *v133;
            v61 = *v133 & 0xC000000000000001;
            if (!v61)
            {
              if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_67;
              }

              v107 = *(v85 + 32);
LABEL_44:
              v108 = v107;
              v89 = &off_278B65000;
              [v107 target];
              v144 = v109;

              if (v61)
              {
                v110 = MEMORY[0x23EE90360](1, v85);
              }

              else
              {
                if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
                {
LABEL_69:
                  __break(1u);
                  goto LABEL_70;
                }

                v110 = *(v85 + 40);
              }

              v111 = v110;
              [v110 target];
              v139 = v112;

              if (v61)
              {
                v113 = MEMORY[0x23EE90360](2, v85);
              }

              else
              {
                if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
                {
LABEL_70:
                  __break(1u);
                  goto LABEL_71;
                }

                v113 = *(v85 + 48);
              }

              v114 = v113;
              [v113 target];
              v132 = v115;
              swift_endAccess();

              swift_beginAccess();
              v116.n128_u64[0] = v144;
              v116.n128_u64[1] = v139;
              sub_23A8EBD54(v116, v132);
              swift_endAccess();
              swift_beginAccess();
              *(v5 + 144) = 0x3FE6666666666666;
              sub_23A8EBE84();
              v117.i32[0] = 2;
              v118.i32[0] = *(*(v5 + 64) + 32) - 1;
              sub_23A8EBD60(vandq_s8(xmmword_23AA10F30, vdupq_lane_s32(*&vcgtq_u32(v117, v118), 0)), 0);
              swift_endAccess();
              swift_beginAccess();
              v85 = *(v5 + 136);
              v61 = v85 & 0xC000000000000001;
              if ((v85 & 0xC000000000000001) == 0)
              {
                if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v119 = *(v85 + 32);
LABEL_55:
                  v120 = v119;
                  [v119 v89[450]];
                  v145 = v121;

                  if (v61)
                  {
                    v122 = MEMORY[0x23EE90360](1, v85);
LABEL_59:
                    v123 = v122;
                    [v122 v89[450]];
                    v140 = v124;

                    if (v61)
                    {
                      v125 = MEMORY[0x23EE90360](2, v85);
LABEL_63:
                      v126 = v125;
                      [v125 v89[450]];
                      v134 = v127;
                      swift_endAccess();

                      swift_beginAccess();
                      v128.n128_u64[0] = v145;
                      v128.n128_u64[1] = v140;
                      sub_23A8EBD54(v128, v134);
                      swift_endAccess();
                      v129 = *(v5 + 160);
                      [v129 parameters];
                      [v129 setParameters_];

                      [*(v5 + 160) setTarget_];
                      [*(v5 + 160) setValue_];
                      v130 = *(v5 + 168);
                      [v130 parameters];
                      [v130 setParameters_];

                      [*(v5 + 168) setTarget_];
                      [*(v5 + 168) setValue_];
                      [*(v5 + 176) setTarget_];
                      v131 = *(v5 + 176);
                      [v131 setValue_];

                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();

                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();

                      *(*(v5 + 64) + 24) = &off_284D87AD8;
                      swift_unknownObjectWeakAssign();
                      return;
                    }

                    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
                    {
                      v125 = *(v85 + 48);
                      goto LABEL_63;
                    }

                    goto LABEL_72;
                  }

                  if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
                  {
                    v122 = *(v85 + 40);
                    goto LABEL_59;
                  }

LABEL_71:
                  __break(1u);
LABEL_72:
                  __break(1u);
LABEL_73:
                  __break(1u);
                  goto LABEL_74;
                }

                __break(1u);
                goto LABEL_69;
              }

LABEL_67:
              v119 = MEMORY[0x23EE90360](0, v85);
              goto LABEL_55;
            }

LABEL_65:
            v107 = MEMORY[0x23EE90360](0, v85);
            goto LABEL_44;
          }

          goto LABEL_95;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_95:
      __break(1u);
      return;
    }
  }

  v105 = v80;
  sub_23AA0BE74();

  swift_willThrow();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_willThrow();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x23EE917F0](v5 + 48);

  if (v79)
  {
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  type metadata accessor for GlyphRenderer();
  swift_deallocPartialClassInstance();
}

void sub_23A9F9DBC()
{
  v1 = v0;
  if (*(v0 + 552))
  {

    sub_23A9E66F0();

    *(*(v0 + 72) + 20) = *(*(v0 + 72) + 16);
    if (*(*(v0 + 64) + 32) == 1)
    {
      v2 = 0.0;
    }

    else
    {
      v2 = 1.0;
    }

    [*(v0 + 168) setTarget_];
    v3 = *(*(v0 + 64) + 32);
    if (v3 == 3 || v3 == 0)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }

    [*(v0 + 160) setTarget_];
    if (*(*(v0 + 64) + 32))
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 0.0;
    }

    [*(v0 + 176) setTarget_];
    if (*(*(v0 + 64) + 32) == 1)
    {
      v7 = *(v0 + 168);
      [v7 target];
      [v7 setValue_];

      v8 = *(v1 + 160);
      [v8 target];
      [v8 setValue_];

      v9 = *(v1 + 176);
      [v9 target];
      [v9 setValue_];

      *(*(v1 + 72) + 16) = 0;
      sub_23A9E7128();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23A9F9F0C()
{
  v1 = v0[4].n128_u64[0];
  v6 = v1[3];
  v8 = v1[4];
  swift_beginAccess();
  sub_23A8EC2A8(v6, v8);
  sub_23A8EC13C(v0[12], v0[13]);
  result = swift_endAccess();
  if (*(v0[4].n128_u64[0] + 32) == 1)
  {

    sub_23A8EC148(v3);
    v7 = v5;
    v9 = v4;

    swift_beginAccess();
    sub_23A8EC13C(v9, v7);
    return swift_endAccess();
  }

  return result;
}

void sub_23A9F9FDC()
{
  v1 = *(v0 + 64);
  v16 = v1[5];
  v18 = v1[6];
  swift_beginAccess();
  sub_23A8EBD60(v16, v18);
  swift_endAccess();
  if (*(*(v0 + 64) + 32) == 1)
  {
    v2 = *(v0 + 112);
    v3 = v2 & 0xC000000000000001;
    if ((v2 & 0xC000000000000001) != 0)
    {

      v5 = MEMORY[0x23EE90360](0, v2);
    }

    else
    {
      if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_17;
      }

      v4 = *(v2 + 32);

      v5 = v4;
    }

    v6 = v5;
    [v5 target];
    v19 = v7;

    if (v3)
    {
      v8 = MEMORY[0x23EE90360](1, v2);
LABEL_9:
      v9 = v8;
      [v8 target];
      v17 = v10;

      if (v3)
      {
        v11 = MEMORY[0x23EE90360](2, v2);
LABEL_13:
        v12 = v11;
        [v11 target];
        v15 = v13;

        swift_beginAccess();
        v14.n128_u64[0] = v19;
        v14.n128_u64[1] = v17;
        sub_23A8EBD54(v14, v15);
        swift_endAccess();
        return;
      }

      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
      {
        v11 = *(v2 + 48);
        goto LABEL_13;
      }

LABEL_18:
      __break(1u);
      return;
    }

    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v8 = *(v2 + 40);
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }
}

void sub_23A9FA17C()
{
  v1 = *(v0 + 64);
  v16 = v1[7];
  v18 = v1[8];
  swift_beginAccess();
  sub_23A8EBD60(v16, v18);
  swift_endAccess();
  if (*(*(v0 + 64) + 32) == 1)
  {
    v2 = *(v0 + 136);
    v3 = v2 & 0xC000000000000001;
    if ((v2 & 0xC000000000000001) != 0)
    {

      v5 = MEMORY[0x23EE90360](0, v2);
    }

    else
    {
      if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_17;
      }

      v4 = *(v2 + 32);

      v5 = v4;
    }

    v6 = v5;
    [v5 target];
    v19 = v7;

    if (v3)
    {
      v8 = MEMORY[0x23EE90360](1, v2);
LABEL_9:
      v9 = v8;
      [v8 target];
      v17 = v10;

      if (v3)
      {
        v11 = MEMORY[0x23EE90360](2, v2);
LABEL_13:
        v12 = v11;
        [v11 target];
        v15 = v13;

        swift_beginAccess();
        v14.n128_u64[0] = v19;
        v14.n128_u64[1] = v17;
        sub_23A8EBD54(v14, v15);
        swift_endAccess();
        return;
      }

      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
      {
        v11 = *(v2 + 48);
        goto LABEL_13;
      }

LABEL_18:
      __break(1u);
      return;
    }

    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v8 = *(v2 + 40);
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }
}

void sub_23A9FA31C(double a1, double a2)
{
  if (a1 == 0.0 && a2 == 0.0)
  {
    return;
  }

  v3 = v2[4];
  if (v3 != 1)
  {
    if (a1 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (a1 < 9.22337204e18)
    {
      if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (a2 > -9.22337204e18)
        {
          if (a2 < 9.22337204e18)
          {
            v4 = a1;
            v5 = a2;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1760, &unk_23AA1A7C0);
            v6 = swift_allocObject();
            *(v6 + 16) = xmmword_23AA10FC0;
            v7 = v2;
            sub_23AA0D8A4();

            v8 = sub_23AA0DBB4();
            MEMORY[0x23EE8FCA0](v8);

            MEMORY[0x23EE8FCA0](8236, 0xE200000000000000);
            v9 = sub_23AA0DBB4();
            MEMORY[0x23EE8FCA0](v9);

            *(v6 + 56) = MEMORY[0x277D837D0];
            *(v6 + 32) = 0xD000000000000026;
            *(v6 + 40) = 0x800000023AA23FA0;
            sub_23AA0DCE4();

            v10 = [objc_opt_self() texture2DDescriptorWithPixelFormat:v2[3] width:v4 height:v5 mipmapped:0];
            [v10 setUsage_];
            [v10 setTextureType_];
            [v10 setSampleCount_];
            [v10 setStorageMode_];
            v11 = [v7[2] newTextureWithDescriptor_];

            v7[68] = v11;
            swift_unknownObjectRelease();
            return;
          }

LABEL_19:
          __break(1u);
          return;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_17;
  }

  v2[68] = 0;

  swift_unknownObjectRelease();
}

double sub_23A9FA5F8(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [a1 computeCommandEncoder];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = sub_23AA0D104();
  [v3 setLabel_];

  v5 = sub_23AA0D104();
  [v3 pushDebugGroup_];

  [v3 setComputePipelineState_];
  LODWORD(v16) = *(v1 + 56);
  [v3 setBytes:&v16 length:4 atIndex:0];
  LODWORD(v16) = *(v1 + 60);
  [v3 setBytes:&v16 length:4 atIndex:1];
  v6 = *(v1 + 552);
  if (!v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  [v3 setBuffer:*(v6 + 40) offset:0 atIndex:2];
  v7 = *(v1 + 552);
  if (!v7)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  [v3 setBuffer:*(v7 + 32) offset:0 atIndex:3];
  MTLSizeMake_0(1, &v16);
  v8 = *(v1 + 552);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v16;
  v10 = v17;
  MTLSizeMake_0(*(v8 + 56), &v16);
  v11 = v17;
  v12 = v16;
  v16 = v9;
  v17 = v10;
  v14 = v12;
  v15 = v11;
  [v3 dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
  [v3 popDebugGroup];
  [v3 endEncoding];
  swift_unknownObjectRelease();
  return result;
}

void sub_23A9FA80C(void *a1, void *a2)
{
  v3 = v2;
  v86[1] = *MEMORY[0x277D85DE8];
  [*(v3 + 168) value];
  v77 = v6;
  [*(v3 + 160) value];
  _Q1.f64[0] = v77;
  _Q1.f64[1] = v8;
  v9 = vmaxnm_f32(vcvt_f32_f64(_Q1), 0);
  __asm { FMOV            V1.2S, #1.0 }

  v78 = vminnm_f32(v9, *&_Q1.f64[0]);
  v86[0] = v78;
  [*(v3 + 176) value];
  *&v14 = v14;
  v85 = fminf(fmaxf(*&v14, 0.0), 1.0);
  v15 = vaddq_f32(*(v3 + 480), vmulq_lane_f32(vsubq_f32(*(v3 + 416), *(v3 + 480)), v78, 1));
  *(v3 + 336) = vaddq_f32(*(v3 + 464), vmulq_lane_f32(vsubq_f32(*(v3 + 400), *(v3 + 464)), v78, 1));
  *(v3 + 352) = v15;
  v16 = vaddq_f32(*(v3 + 512), vmulq_lane_f32(vsubq_f32(*(v3 + 448), *(v3 + 512)), v78, 1));
  *(v3 + 368) = vaddq_f32(*(v3 + 496), vmulq_lane_f32(vsubq_f32(*(v3 + 432), *(v3 + 496)), v78, 1));
  *(v3 + 384) = v16;
  v17 = [objc_allocWithZone(MEMORY[0x277CD6F50]) init];
  v18 = [v17 colorAttachments];
  v19 = [v18 objectAtIndexedSubscript_];

  if (!v19)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v20 = *(v3 + 32);
  if (v20 < 2)
  {
    v21 = [a1 texture];
  }

  else
  {
    v21 = *(v3 + 544);
    swift_unknownObjectRetain();
  }

  [v19 setTexture_];

  swift_unknownObjectRelease();
  v22 = [v17 colorAttachments];
  v23 = [v22 objectAtIndexedSubscript_];

  if (!v23)
  {
    goto LABEL_38;
  }

  if (v20 < 2)
  {
    v24 = 0;
  }

  else
  {
    v24 = [a1 texture];
  }

  [v23 setResolveTexture_];

  swift_unknownObjectRelease();
  v25 = [v17 colorAttachments];
  v26 = [v25 objectAtIndexedSubscript_];

  if (!v26)
  {
    goto LABEL_39;
  }

  [v26 setClearColor_];

  v27 = [v17 colorAttachments];
  v28 = [v27 objectAtIndexedSubscript_];

  if (!v28)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v20 <= 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = 2;
  }

  [v28 setStoreAction_];

  v30 = [v17 colorAttachments];
  v31 = [(SEL *)v30 objectAtIndexedSubscript:0];

  if (!v31)
  {
    goto LABEL_41;
  }

  [v31 setLoadAction_];

  v32 = [a2 renderCommandEncoderWithDescriptor_];
  if (!v32)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v33 = v32;
  v34 = sub_23AA0D104();
  [v33 setLabel_];

  v35 = sub_23AA0D104();
  [v33 pushDebugGroup_];

  v37 = *(v3 + 552);
  if (!v37)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v71 = *(v3 + 336);
  v73 = *(v3 + 352);
  v75 = *(v3 + 368);
  v79 = *(v3 + 384);
  v67 = *(v3 + 272);
  v68 = *(v3 + 288);
  v69 = *(v3 + 304);
  v70 = *(v3 + 320);
  v38 = *(v37 + 64);
  if (!(v38 >> 62))
  {
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!sub_23AA0D7F4())
  {
    goto LABEL_33;
  }

LABEL_19:
  if ((v38 & 0xC000000000000001) != 0)
  {
LABEL_34:

    v39 = MEMORY[0x23EE90360](0, v38);

    goto LABEL_22;
  }

  if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_36;
  }

  v39 = *(v38 + 32);

LABEL_22:
  v63 = v39[5];
  v64 = v39[6];
  v65 = v39[7];
  v66 = v39[8];

  if (*(v3 + 560))
  {
    v40 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, v67.f32[0]), v73, *v67.f32, 1), v75, v67, 2), v79, v67, 3);
    v41 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, v68.f32[0]), v73, *v68.f32, 1), v75, v68, 2), v79, v68, 3);
    v42 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, v69.f32[0]), v73, *v69.f32, 1), v75, v69, 2), v79, v69, 3);
    v43 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, v70.f32[0]), v73, *v70.f32, 1), v75, v70, 2), v79, v70, 3);
    v80 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v63.f32[0]), v41, *v63.f32, 1), v42, v63, 2), v43, v63, 3);
    v76 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v64.f32[0]), v41, *v64.f32, 1), v42, v64, 2), v43, v64, 3);
    v72 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v66.f32[0]), v41, *v66.f32, 1), v42, v66, 2), v43, v66, 3);
    v74 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v65.f32[0]), v41, *v65.f32, 1), v42, v65, 2), v43, v65, 3);
    v44 = *(v3 + 160);

    [v44 value];
    v46 = 1.0 - v45;
    [*(v3 + 168) value];
    v48 = v46 * v47;
    sub_23A9999B4(v33, v80, v76, v74, v72, v48, *(*(v3 + 72) + 16) + -0.3);
  }

  v30 = &selRef_initWithDevice_;
  [v33 popDebugGroup];
  v49 = sub_23AA0D104();
  [v33 pushDebugGroup_];

  [v33 setRenderPipelineState_];
  v50 = *(v3 + 552);
  if (!v50)
  {
    goto LABEL_44;
  }

  [v33 setVertexBuffer:*(v50 + 16) offset:0 atIndex:0];
  v51 = *(v3 + 552);
  if (!v51)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [v33 setVertexBuffer:*(v51 + 48) offset:0 atIndex:1];
  v52 = *(v3 + 288);
  v53 = *(v3 + 304);
  v54 = *(v3 + 320);
  v81 = *(v3 + 272);
  v82 = v52;
  v83 = v53;
  v84 = v54;
  [v33 setVertexBytes:&v81 length:64 atIndex:2];
  v55 = *(v3 + 352);
  v56 = *(v3 + 368);
  v57 = *(v3 + 384);
  v81 = *(v3 + 336);
  v82 = v55;
  v83 = v56;
  v84 = v57;
  [v33 setVertexBytes:&v81 length:64 atIndex:3];
  LODWORD(v81) = *(v3 + 80);
  [v33 setVertexBytes:&v81 length:4 atIndex:4];
  [v33 setVertexBytes:v86 length:8 atIndex:5];
  [v33 setVertexBytes:&v85 length:4 atIndex:6];
  v58 = *(v3 + 552);
  if (!v58)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  [v33 setTessellationFactorBuffer:*(v58 + 40) offset:0 instanceStride:0];
  v59 = *(v3 + 552);
  if (!v59)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

  if (!v59[3])
  {
    goto LABEL_48;
  }

  v36 = v59[7];
  v60 = v59[8];
  if (v60 >> 62)
  {
LABEL_36:
    v62 = v36;
    v61 = sub_23AA0D7F4();
    v36 = v62;
    goto LABEL_31;
  }

  v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_31:
  [v33 drawIndexedPatches:4 patchStart:0 patchCount:v36 patchIndexBuffer:0 patchIndexBufferOffset:0 controlPointIndexBuffer:0 controlPointIndexBufferOffset:v61 instanceCount:0 baseInstance:?];
  [v33 v30[320]];
  [v33 endEncoding];

  swift_unknownObjectRelease();
}

void sub_23A9FB004(double a1)
{
  swift_beginAccess();

  sub_23A8EBFD0(v4, a1);

  swift_beginAccess();
  v5 = *(v1 + 112);
  v6 = v5 & 0xC000000000000001;
  if ((v5 & 0xC000000000000001) != 0)
  {

    v8 = MEMORY[0x23EE90360](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_26;
    }

    v7 = *(v5 + 32);

    v8 = v7;
  }

  v9 = v8;
  v2 = &off_278B65000;
  [v8 step_];

  if (v6)
  {
    v10 = MEMORY[0x23EE90360](1, v5);
  }

  else
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v10 = *(v5 + 40);
  }

  v11 = v10;
  [v10 step_];

  if (v6)
  {
    v12 = MEMORY[0x23EE90360](2, v5);
  }

  else
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v12 = *(v5 + 48);
  }

  v13 = v12;
  [v12 step_];

  swift_beginAccess();
  v5 = *(v1 + 136);
  v6 = v5 & 0xC000000000000001;
  if ((v5 & 0xC000000000000001) == 0)
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v5 + 32);

      v15 = v14;
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_26:

  v15 = MEMORY[0x23EE90360](0, v5);
LABEL_15:
  v16 = v15;
  [v15 v2[447]];

  if (!v6)
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v17 = *(v5 + 40);
      goto LABEL_19;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v17 = MEMORY[0x23EE90360](1, v5);
LABEL_19:
  v18 = v17;
  [v17 v2[447]];

  if (v6)
  {
    v19 = MEMORY[0x23EE90360](2, v5);
LABEL_23:
    v20 = v19;
    [v19 v2[447]];

    [*(v1 + 160) v2[447]];
    [*(v1 + 168) v2[447]];
    [*(v1 + 176) v2[447]];

    sub_23A8EC130(v21);
    v24 = v23;
    v25 = v22;

    *(v1 + 192) = v25;
    *(v1 + 208) = v24;
    return;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v19 = *(v5 + 48);
    goto LABEL_23;
  }

LABEL_31:
  __break(1u);
}

void sub_23A9FB2E4(void *a1, void *a2, double a3)
{
  v4 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  sub_23A9FB004(a3);
  v10 = *(v3 + 72);
  v11 = a3;
  if (*(*(v4 + 64) + 32) == 1)
  {
    v11 = 0.0;
  }

  *(v10 + 16) = *(v10 + 16) + v11;
  *&v12 = sub_23A9E7128();
  [*(v4 + 160) value];
  if (!*(v4 + 552))
  {
    goto LABEL_130;
  }

  v14 = v13;
  v15 = *(*(v4 + 72) + 28);
  swift_beginAccess();
  v16 = *(v4 + 112);
  v17 = v16 & 0xC000000000000001;
  if ((v16 & 0xC000000000000001) != 0)
  {

    v19 = MEMORY[0x23EE90360](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_101:

      v39 = MEMORY[0x23EE90360](0, v16);
      goto LABEL_20;
    }

    v18 = *(v16 + 32);

    v19 = v18;
  }

  v20 = v19;
  [v19 value];
  v22 = v21;

  if (v17)
  {
    v23 = MEMORY[0x23EE90360](1, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v23 = *(v16 + 40);
  }

  v24 = v23;
  [v23 value];
  v26 = v25;

  if (v17)
  {
    v27 = MEMORY[0x23EE90360](2, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v27 = *(v16 + 48);
  }

  v28 = v27;
  v29 = v14;
  v30 = fminf(fmaxf(v29, 0.0), 1.0) * (v15 * 0.05);
  [v27 value];
  v32 = v31;

  v34 = v22;
  v35 = v26;
  v36 = v32;
  v37.n128_u32[3] = 0;
  v37.n128_f32[0] = v30 + v34;
  v37.n128_f32[1] = v30 + v35;
  v37.n128_f32[2] = v30 + v36;
  sub_23A9E69E0(v33, v37);

  if (!*(v4 + 552))
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  swift_beginAccess();
  v16 = *(v4 + 136);
  v17 = v16 & 0xC000000000000001;
  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_101;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_103:

    v56 = MEMORY[0x23EE90360](0, v16);
    goto LABEL_32;
  }

  v38 = *(v16 + 32);

  v39 = v38;
LABEL_20:
  v40 = v39;
  [v39 value];
  v42 = v41;

  if (v17)
  {
    v43 = MEMORY[0x23EE90360](1, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v43 = *(v16 + 40);
  }

  v44 = v43;
  [v43 value];
  v46 = v45;

  if (v17)
  {
    v47 = MEMORY[0x23EE90360](2, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v47 = *(v16 + 48);
  }

  v48 = v47;
  [v47 value];
  v50 = v49;

  *&v51 = v42;
  *&v52 = v46;
  *&v53 = v50;
  v54.n128_u64[0] = __PAIR64__(v52, v51);
  v54.n128_u64[1] = v53;
  sub_23A9E6C70(0, v54);

  if (!*(v4 + 552))
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v16 = *(v4 + 136);
  v17 = v16 & 0xC000000000000001;
  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_103;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_105:

    v69 = MEMORY[0x23EE90360](0, v16);
    goto LABEL_44;
  }

  v55 = *(v16 + 32);

  v56 = v55;
LABEL_32:
  v57 = v56;
  [v56 value];
  v162 = v58;

  if (v17)
  {
    v59 = MEMORY[0x23EE90360](1, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v59 = *(v16 + 40);
  }

  v60 = v59;
  [v59 value];
  v160 = v61;

  if (v17)
  {
    v62 = MEMORY[0x23EE90360](2, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    v62 = *(v16 + 48);
  }

  v63 = v62;
  [v62 value];
  v65 = v64;

  v66.f64[0] = v162;
  v66.f64[1] = v161;
  v67.n128_u64[0] = vcvt_f32_f64(vsubq_f64(0, v66));
  *v66.f64 = 0.0 - v65;
  v67.n128_u64[1] = LODWORD(v66.f64[0]);
  sub_23A9E6C70(1uLL, v67);

  if (!*(v4 + 552))
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v16 = *(v4 + 136);
  v17 = v16 & 0xC000000000000001;
  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_105;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_107:

    v86 = MEMORY[0x23EE90360](0, v16);
    goto LABEL_56;
  }

  v68 = *(v16 + 32);

  v69 = v68;
LABEL_44:
  v70 = v69;
  [v69 value];
  v72 = v71;

  if (v17)
  {
    v73 = MEMORY[0x23EE90360](1, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v73 = *(v16 + 40);
  }

  v74 = v73;
  [v73 value];
  v76 = v75;

  if (v17)
  {
    v77 = MEMORY[0x23EE90360](2, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    v77 = *(v16 + 48);
  }

  v78 = v77;
  [v77 value];
  v80 = v79;

  *&v81 = v72;
  *&v82 = v76;
  *&v83 = v80;
  v84.n128_u64[0] = __PAIR64__(v82, v81);
  v84.n128_u64[1] = v83;
  sub_23A9E6C70(2uLL, v84);

  if (!*(v4 + 552))
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v16 = *(v4 + 136);
  v17 = v16 & 0xC000000000000001;
  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_107;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_109:

    v103 = MEMORY[0x23EE90360](0, v16);
    goto LABEL_68;
  }

  v85 = *(v16 + 32);

  v86 = v85;
LABEL_56:
  v87 = v86;
  [v86 value];
  v89 = v88;

  if (v17)
  {
    v90 = MEMORY[0x23EE90360](1, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    v90 = *(v16 + 40);
  }

  v91 = v90;
  [v90 value];
  v93 = v92;

  if (v17)
  {
    v94 = MEMORY[0x23EE90360](2, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    v94 = *(v16 + 48);
  }

  v95 = v94;
  [v94 value];
  v97 = v96;

  *&v98 = v89;
  *&v99 = v93;
  *&v100 = v97;
  v101.n128_u64[0] = __PAIR64__(v99, v98);
  v101.n128_u64[1] = v100;
  sub_23A9E6C70(3uLL, v101);

  if (!*(v4 + 552))
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v16 = *(v4 + 136);
  v17 = v16 & 0xC000000000000001;
  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_109;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_111:

    v120 = MEMORY[0x23EE90360](0, v16);
    goto LABEL_80;
  }

  v102 = *(v16 + 32);

  v103 = v102;
LABEL_68:
  v104 = v103;
  [v103 value];
  v106 = v105;

  if (v17)
  {
    v107 = MEMORY[0x23EE90360](1, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    v107 = *(v16 + 40);
  }

  v108 = v107;
  [v107 value];
  v110 = v109;

  if (v17)
  {
    v111 = MEMORY[0x23EE90360](2, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v111 = *(v16 + 48);
  }

  v112 = v111;
  [v111 value];
  v114 = v113;

  *&v115 = v106;
  *&v116 = v110;
  *&v117 = v114;
  v118.n128_u64[0] = __PAIR64__(v116, v115);
  v118.n128_u64[1] = v117;
  sub_23A9E6C70(4uLL, v118);

  if (!*(v4 + 552))
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v16 = *(v4 + 136);
  v17 = v16 & 0xC000000000000001;
  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_111;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v119 = *(v16 + 32);

  v120 = v119;
LABEL_80:
  v121 = v120;
  [v120 value];
  v123 = v122;

  if (v17)
  {
    v124 = MEMORY[0x23EE90360](1, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    v124 = *(v16 + 40);
  }

  v125 = v124;
  [v124 value];
  v127 = v126;

  if (v17)
  {
    v128 = MEMORY[0x23EE90360](2, v16);
  }

  else
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    v128 = *(v16 + 48);
  }

  v129 = v128;
  [v128 value];
  v131 = v130;

  *&v132 = v123;
  *&v133 = v127;
  *&v134 = v131;
  v135.n128_u64[0] = __PAIR64__(v133, v132);
  v135.n128_u64[1] = v134;
  sub_23A9E6C70(5uLL, v135);

  v136 = *(v4 + 552);
  if (!v136)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v137 = *(v136 + 72);
  if (!v137)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  swift_beginAccess();
  v138 = *(v137 + 16);
  if (*(v138 + 16) < 2uLL)
  {
    goto LABEL_113;
  }

  v139 = *(v138 + 40);
  swift_beginAccess();
  v140 = *(v137 + 16);
  if (!*(v140 + 16))
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v141 = *(v140 + 32);
  v142 = *(*(v4 + 72) + 28);

  LODWORD(v143) = v142;
  v144 = sub_23A9E7228(v139, v141, v143);

  v145 = *(v4 + 552);
  if (!v145)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v146 = *(v145 + 72);
  if (!v146)
  {
LABEL_140:
    __break(1u);
    return;
  }

  swift_beginAccess();
  v147 = *(v146 + 16);
  if (*(v147 + 16) < 3uLL)
  {
    goto LABEL_115;
  }

  v148 = *(v147 + 48);
  v149 = *(v4 + 160);

  [v149 value];
  v151 = v150;
  [*(v4 + 176) value];
  v153 = v151 * v152;
  [*(v4 + 176) value];
  v155 = v153 * v154;
  [*(v4 + 176) value];
  v157 = v155 * v156;
  *&v157 = v157;
  sub_23A9E6910(v148, v144, v157);

  *(v4 + 224) = fmod(*(v4 + 224) + *(v4 + 576), 1.57079637);
  *(v4 + 256) = 0;
  *(v4 + 264) = 0;
  *(v4 + 240) = xmmword_23AA10F20;
  sub_23A9FC23C();
  if (*(v4 + 580) == 1)
  {
    sub_23A9FA5F8(a2);
  }

  *(v4 + 580) = 0;
  sub_23A9FA80C(a1, a2);
  v158 = *(*(v4 + 72) + 16);
  v159 = *(v4 + 160);

  [v159 value];
  [*(v4 + 168) value];
  sub_23A950E28(v9, v158);
}

void sub_23A9FBE84(void *a1)
{
  v3 = [objc_msgSend(a1 texture)];
  swift_unknownObjectRelease();
  v4 = [objc_msgSend(a1 texture)];
  swift_unknownObjectRelease();
  v5 = v3;
  v6 = v4;
  if (*(v1 + 584) != v3 || *(v1 + 592) != v6)
  {
    *(v1 + 584) = v5;
    *(v1 + 592) = v6;
    sub_23A9FA31C(v3, v4);
    v8 = v5 / v6;
    v20 = COERCE_UNSIGNED_INT((1.0 / ((v8 * 1.5) + (v8 * 1.5))) + (1.0 / ((v8 * 1.5) + (v8 * 1.5))));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF630, &qword_23AA18BA0);
    v9 = swift_allocObject();
    v9[2] = v20;
    v9[3] = xmmword_23AA1BB20;
    v9[4] = xmmword_23AA1BB30;
    v9[5] = xmmword_23AA1BB40;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v10 = sub_23A9E78D4(xmmword_23AA1BB50, 0, xmmword_23AA12220);
    *(v1 + 400) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v10.n128_f32[0]), xmmword_23AA1BB20, v10.n128_u64[0], 1), xmmword_23AA1BB30, v10, 2), xmmword_23AA1BB40, v10, 3);
    *(v1 + 416) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v11.f32[0]), xmmword_23AA1BB20, *v11.f32, 1), xmmword_23AA1BB30, v11, 2), xmmword_23AA1BB40, v11, 3);
    *(v1 + 432) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v12.f32[0]), xmmword_23AA1BB20, *v12.f32, 1), xmmword_23AA1BB30, v12, 2), xmmword_23AA1BB40, v12, 3);
    *(v1 + 448) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, v13.f32[0]), xmmword_23AA1BB20, *v13.f32, 1), xmmword_23AA1BB30, v13, 2), xmmword_23AA1BB40, v13, 3);
    v14 = 0u;
    v14.f32[0] = 1.0913 / v8;
    v21 = v14;
    v15 = swift_allocObject();
    v15[2] = v21;
    v15[3] = xmmword_23AA1BB60;
    v15[4] = xmmword_23AA1BB70;
    v15[5] = xmmword_23AA1BB80;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v16 = sub_23A9E78D4(xmmword_23AA1BB90, xmmword_23AA1BBA0, xmmword_23AA12220);
    *(v1 + 464) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v16.n128_f32[0]), xmmword_23AA1BB60, v16.n128_u64[0], 1), xmmword_23AA1BB70, v16, 2), xmmword_23AA1BB80, v16, 3);
    *(v1 + 480) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v17.f32[0]), xmmword_23AA1BB60, *v17.f32, 1), xmmword_23AA1BB70, v17, 2), xmmword_23AA1BB80, v17, 3);
    *(v1 + 496) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v18.f32[0]), xmmword_23AA1BB60, *v18.f32, 1), xmmword_23AA1BB70, v18, 2), xmmword_23AA1BB80, v18, 3);
    *(v1 + 512) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v19.f32[0]), xmmword_23AA1BB60, *v19.f32, 1), xmmword_23AA1BB70, v19, 2), xmmword_23AA1BB80, v19, 3);
    *(v1 + 580) = 1;
  }
}

id *sub_23A9FC144()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x23EE917F0](v0 + 6);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_23A9FC1E4()
{
  sub_23A9FC144();

  return swift_deallocClassInstance();
}

void sub_23A9FC23C()
{
  v1 = *(v0 + 208);
  v20[0] = *(v0 + 192);
  v20[1] = v1;
  v19[0] = v20[0];
  v19[1] = v1;
  simd_slerp(v20, v19, &v17);
  v2 = v18;
  v15 = v17;
  v16 = v18;
  *(v0 + 192) = v17;
  *(v0 + 208) = v2;
  v13 = *(v0 + 256);
  v14 = *(v0 + 240);
  v4 = __sincos_stret(*(v0 + 224) * 0.5);
  v3.f64[0] = v4.__sinval;
  v5.i64[0] = *&vmulq_f64(v13, v3);
  v5.i64[1] = *&v4.__cosval;
  v6 = vmulq_n_f64(v14, v4.__sinval);
  v7 = vnegq_f64(v6);
  v8 = vextq_s8(v5, vnegq_f64(v5), 8uLL);
  *&v9 = MEMORY[0x23EE8FF50](vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v6, v16, 1), vextq_s8(v7, v6, 8uLL), v16.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v5, v15, 1), v8, v15.f64[0]))), vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v5, v16, 1), v8, v16.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v7, v15, 1), vextq_s8(v6, v7, 8uLL), v15.f64[0]))));
  *(v0 + 272) = v9;
  *(v0 + 288) = v10;
  *(v0 + 304) = v11;
  *(v0 + 320) = v12;
}

void simd_slerp(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = a2[1];
  if (vaddvq_f64(vaddq_f64(vmulq_f64(*a1, *a2), vmulq_f64(a1[1], v3))) >= 0.0)
  {
    v7 = a1[1];
    v11 = *a1;
    v12 = v7;
    v8 = a2[1];
    v9 = *a2;
    v10 = v8;
    v5 = &v11;
    v6 = &v9;
  }

  else
  {
    v11 = vnegq_f64(*a2);
    v12 = vnegq_f64(v3);
    v4 = a1[1];
    v9 = *a1;
    v10 = v4;
    v5 = &v9;
    v6 = &v11;
  }

  _simd_slerp_internal(v5, v6, a3);
}

int64x2_t MTLSizeMake_0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = vdupq_n_s64(1uLL);
  *(a2 + 8) = result;
  return result;
}

void _simd_slerp_internal(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v4 = a1[1];
  v5 = a2[1];
  v6 = vsubq_f64(*a1, *a2);
  v7 = vsubq_f64(v4, v5);
  v6.f64[0] = sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v6, v6), vmulq_f64(v7, v7))));
  v29 = *a2;
  v30 = *a1;
  v8 = vaddq_f64(*a1, *a2);
  v31 = v4;
  v28 = v5;
  v9 = vaddq_f64(v4, v5);
  v10 = atan2(v6.f64[0], sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v8, v8), vmulq_f64(v9, v9)))));
  v11 = v10 + v10;
  v12 = 1.0;
  v13 = v10 + v10 == 0.0;
  v14 = 1.0;
  if (!v13)
  {
    v14 = sin(v11) / v11;
  }

  v15 = 1.0 / v14;
  if (v11 * 0.0 != 0.0)
  {
    v12 = sin(v11 * 0.0) / (v11 * 0.0);
  }

  v16 = vdupq_lane_s64(COERCE__INT64(v15 * v12 * 0.0), 0);
  v17 = 1.0;
  if (v11 != 0.0)
  {
    v27 = v16;
    v18 = sin(v11);
    v16 = v27;
    v17 = v18 / v11;
  }

  v19 = v15 * v17;
  v20 = vmulq_n_f64(v28, v19);
  v21 = vmlaq_f64(vmulq_n_f64(v29, v19), v30, v16);
  v22 = vmlaq_f64(v20, v31, v16);
  v23 = vaddvq_f64(vaddq_f64(vmulq_f64(v21, v21), vmulq_f64(v22, v22)));
  if (v23 == 0.0)
  {
    v24 = xmmword_23AA10F30;
    v25 = 0uLL;
  }

  else
  {
    v26 = 1.0 / sqrt(v23);
    v24 = vmulq_n_f64(v22, v26);
    v25 = vmulq_n_f64(v21, v26);
  }

  *a3 = v25;
  a3[1] = v24;
}

uint64_t type metadata accessor for ScanContainer(uint64_t a1)
{
  result = qword_27DFB1770;
  if (!qword_27DFB1770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_23A9FC5E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_23AA0D7F4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v14 = MEMORY[0x277D84F90];
  result = sub_23A975FC8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v14;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x23EE90360](i, a1);
        sub_23AA0CAB4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0518, &unk_23AA18B50);
        swift_dynamicCast();
        v6 = v13;
        v8 = *(v14 + 16);
        v7 = *(v14 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_23A975FC8((v7 > 1), v8 + 1, 1);
          v6 = v13;
        }

        *(v14 + 16) = v8 + 1;
        *(v14 + 16 * v8 + 32) = v6;
      }
    }

    else
    {
      v9 = a1 + 32;
      sub_23AA0CAB4();
      do
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0518, &unk_23AA18B50);
        swift_dynamicCast();
        v10 = v13;
        v12 = *(v14 + 16);
        v11 = *(v14 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_23A975FC8((v11 > 1), v12 + 1, 1);
          v10 = v13;
        }

        *(v14 + 16) = v12 + 1;
        *(v14 + 16 * v12 + 32) = v10;
        v9 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_23A9FC7E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_23A913FBC();

    v1 = sub_23AA0D9F4();
  }

  else
  {
    v1 = a1;

    sub_23AA0DBE4();
    sub_23A913FBC();
  }

  return v1;
}

uint64_t sub_23A9FC870()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC58, &qword_23AA11F00);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - v2;
  v4 = sub_23AA0CA54();
  MEMORY[0x28223BE20](v4);
  type metadata accessor for ScanContainer(0);
  sub_23AA0C224();
  v11 = MEMORY[0x277D84F90];
  sub_23A9FCD34();
  sub_23AA0D264();
  sub_23A9FCD8C();
  sub_23AA0D674();
  if (v10)
  {
    type metadata accessor for ScanEntity(0);
    do
    {
      if (swift_dynamicCastClass())
      {
        sub_23AA0D944();
        sub_23AA0D974();
        sub_23AA0D984();
        sub_23AA0D954();
      }

      else
      {
      }

      sub_23AA0D674();
    }

    while (v10);
  }

  (*(v1 + 8))(v3, v0);
  v5 = v11;
  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
    type metadata accessor for ScanEntity(0);

    v9 = sub_23AA0D9F4();

    return v9;
  }

  else
  {

    sub_23AA0DBE4();
    type metadata accessor for ScanEntity(0);
    if (swift_dynamicCastMetatype() || (v7 = *(v5 + 16)) == 0)
    {
LABEL_10:
    }

    else
    {
      v8 = 32;
      while (swift_dynamicCastClass())
      {
        v8 += 8;
        if (!--v7)
        {
          goto LABEL_10;
        }
      }

      return v5 | 1;
    }
  }

  return v5;
}

void *sub_23A9FCB14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC58, &qword_23AA11F00);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  v4 = sub_23AA0CA54();
  MEMORY[0x28223BE20](v4);
  type metadata accessor for ScanContainer(0);
  sub_23AA0C224();
  v8 = MEMORY[0x277D84F90];
  sub_23A9FCD34();
  sub_23AA0D264();
  sub_23A9FCD8C();
  while (1)
  {
    sub_23AA0D674();
    if (!v7)
    {
      break;
    }

    if (swift_conformsToProtocol2())
    {
      sub_23AA0D944();
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
    }

    else
    {
    }
  }

  (*(v1 + 8))(v3, v0);
  v5 = sub_23A9FC5E8(v8);

  return v5;
}

unint64_t sub_23A9FCD34()
{
  result = qword_27DFB1780;
  if (!qword_27DFB1780)
  {
    sub_23AA0CA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1780);
  }

  return result;
}

unint64_t sub_23A9FCD8C()
{
  result = qword_27DFB1788;
  if (!qword_27DFB1788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAEC58, &qword_23AA11F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1788);
  }

  return result;
}

uint64_t sub_23A9FCE04(unsigned __int8 *a1, __n128 a2)
{
  v59 = a2;
  v4 = sub_23AA0C0E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - v12;
  v14 = type metadata accessor for CapturedRoom.Object(0);
  if (*(v2->i32 + *(v14 + 48)) != *&a1[*(v14 + 48)])
  {
    goto LABEL_12;
  }

  v58 = v14;
  v15 = *(v14 + 44);
  v16 = *(v11 + 48);
  sub_23A8EA9A4(v2 + v15, v13);
  sub_23A8EA9A4(&a1[v15], &v13[v16]);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) != 1)
  {
    sub_23A8EA9A4(v13, v10);
    if (v17(&v13[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v16], v4);
      sub_23A8DE390();
      v19 = sub_23AA0D084();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_23A8D50D0(v13, &unk_27DFB0970, &qword_23AA14E00);
      if ((v19 & 1) == 0)
      {
LABEL_12:
        v18 = 0;
        return v18 & 1;
      }

      goto LABEL_9;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_23A8D50D0(v13, &qword_27DFAEC28, &unk_23AA1AA40);
    v18 = 0;
    return v18 & 1;
  }

  if (v17(&v13[v16], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_23A8D50D0(v13, &unk_27DFB0970, &qword_23AA14E00);
LABEL_9:
  if (v2->u8[0] != *a1)
  {
    goto LABEL_12;
  }

  v21 = vabdq_f32(v2[1], *(a1 + 1));
  if ((v21.f32[2] + vaddv_f32(*v21.f32)) >= v59.n128_f32[0])
  {
    goto LABEL_12;
  }

  v67 = __invert_f4(*(a1 + 32));
  v22 = vdupq_lane_s32(v59.n128_u64[0], 0);
  if ((vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v22, vabdq_f32(*(MEMORY[0x277D860B8] + 16), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67.columns[0], COERCE_FLOAT(*&v2[3])), v67.columns[1], *v2[3].f32, 1), v67.columns[2], v2[3], 2), v67.columns[3], v2[3], 3))), vcgeq_f32(v22, vabdq_f32(*MEMORY[0x277D860B8], vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67.columns[0], COERCE_FLOAT(*&v2[2])), v67.columns[1], *v2[2].f32, 1), v67.columns[2], v2[2], 2), v67.columns[3], v2[2], 3)))), vandq_s8(vcgeq_f32(v22, vabdq_f32(*(MEMORY[0x277D860B8] + 32), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67.columns[0], COERCE_FLOAT(*&v2[4])), v67.columns[1], *v2[4].f32, 1), v67.columns[2], v2[4], 2), v67.columns[3], v2[4], 3))), vcgeq_f32(v22, vabdq_f32(*(MEMORY[0x277D860B8] + 48), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67.columns[0], COERCE_FLOAT(*&v2[5])), v67.columns[1], *v2[5].f32, 1), v67.columns[2], v2[5], 2), v67.columns[3], v2[5], 3)))))) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  v24 = *(v58 + 36);
  v25 = *(v2->i64 + v24);
  v26 = *(v25 + 16);
  v27 = MEMORY[0x277D84F90];
  if (v26)
  {
    v66 = MEMORY[0x277D84F90];
    sub_23A97605C(0, v26, 0);
    v27 = v66;
    v28 = v25 + 32;
    do
    {
      sub_23A8CA9D8(v28, v60);
      v29 = v61;
      v30 = v62;
      v31 = __swift_project_boxed_opaque_existential_1(v60, v61);
      v32 = MEMORY[0x28223BE20](v31);
      v34 = &v57 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v35 + 16))(v34, v32);
      sub_23A936390(v34, v29, v30, &v63);
      __swift_destroy_boxed_opaque_existential_1(v60);
      v66 = v27;
      v37 = *(v27 + 16);
      v36 = *(v27 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_23A97605C((v36 > 1), v37 + 1, 1);
        v27 = v66;
      }

      *(v27 + 16) = v37 + 1;
      v38 = v27 + 40 * v37;
      v39 = v63;
      v40 = v64;
      *(v38 + 64) = v65;
      *(v38 + 32) = v39;
      *(v38 + 48) = v40;
      v28 += 40;
      --v26;
    }

    while (v26);
    v24 = *(v58 + 36);
  }

  v41 = *&a1[v24];
  v42 = *(v41 + 16);
  v43 = MEMORY[0x277D84F90];
  if (v42)
  {
    v66 = MEMORY[0x277D84F90];
    sub_23A97605C(0, v42, 0);
    v43 = v66;
    v44 = v41 + 32;
    do
    {
      sub_23A8CA9D8(v44, v60);
      v45 = v61;
      v46 = v62;
      v47 = __swift_project_boxed_opaque_existential_1(v60, v61);
      v48 = MEMORY[0x28223BE20](v47);
      v50 = &v57 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v51 + 16))(v50, v48);
      sub_23A936390(v50, v45, v46, &v63);
      __swift_destroy_boxed_opaque_existential_1(v60);
      v66 = v43;
      v53 = *(v43 + 16);
      v52 = *(v43 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_23A97605C((v52 > 1), v53 + 1, 1);
        v43 = v66;
      }

      *(v43 + 16) = v53 + 1;
      v54 = v43 + 40 * v53;
      v55 = v63;
      v56 = v64;
      *(v54 + 64) = v65;
      *(v54 + 32) = v55;
      *(v54 + 48) = v56;
      v44 += 40;
      --v42;
    }

    while (v42);
  }

  v18 = sub_23A946CCC(v27, v43);

  return v18 & 1;
}

uint64_t type metadata accessor for DebugFrameEntity(uint64_t a1)
{
  result = qword_27DFB17A0;
  if (!qword_27DFB17A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A9FD708(uint64_t a1)
{
  *(v1 + qword_27DFB1790) = 0;
  *(v1 + qword_27DFB1798) = 1065353216;
  v2 = sub_23AA0C1A4();
  sub_23AA0C3F4();

  sub_23AA0C3B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23AA10FC0;
  v4 = objc_opt_self();

  v5 = [v4 redColor];
  v6 = sub_23AA0C444();
  v7 = MEMORY[0x277CDAC30];
  *(v3 + 56) = v6;
  *(v3 + 64) = v7;
  __swift_allocate_boxed_opaque_existential_1((v3 + 32));
  sub_23AA0C434();
  sub_23AA0C164();
  swift_allocObject();
  sub_23AA0C154();
  v8 = sub_23AA0C2A4();
  *(v9 + 32) = xmmword_23AA1BE90;
  v8(v19, 0);
  type metadata accessor for DebugFrameEntity(0);
  sub_23AA0C214();
  sub_23AA0C3B4();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23AA10FC0;

  v11 = [v4 greenColor];
  *(v10 + 56) = v6;
  *(v10 + 64) = MEMORY[0x277CDAC30];
  __swift_allocate_boxed_opaque_existential_1((v10 + 32));
  sub_23AA0C434();
  swift_allocObject();
  sub_23AA0C154();
  v12 = sub_23AA0C2A4();
  *(v13 + 32) = xmmword_23AA1BEA0;
  v12(v19, 0);
  sub_23AA0C214();
  sub_23AA0C3B4();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23AA10FC0;

  v15 = [v4 blueColor];
  *(v14 + 56) = v6;
  *(v14 + 64) = MEMORY[0x277CDAC30];
  __swift_allocate_boxed_opaque_existential_1((v14 + 32));
  sub_23AA0C434();
  swift_allocObject();
  sub_23AA0C154();
  v16 = sub_23AA0C2A4();
  *(v17 + 32) = xmmword_23AA1BEB0;
  v16(v19, 0);
  sub_23AA0C214();

  return v2;
}

uint64_t sub_23A9FDB58(__n128 a1)
{
  sub_23AA0CAC4();

  return swift_deallocClassInstance();
}

uint64_t PostProcessStage.hashValue.getter()
{
  v1 = *v0;
  sub_23AA0DD14();
  MEMORY[0x23EE907C0](v1);
  return sub_23AA0DD54();
}

RoomPlan::ARKitFramerate_optional __swiftcall ARKitFramerate.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_23A9FDC5C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

RoomPlan::ARViewResolution_optional __swiftcall ARViewResolution.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

RoomPlan::ItemColorMode_optional __swiftcall ItemColorMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

RoomPlan::DebugIndividualMode_optional __swiftcall DebugIndividualMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_23A9FDCD8()
{
  type metadata accessor for SettingsManager();
  v0 = swift_allocObject();
  result = sub_23AA03160();
  off_27DFB17B0 = v0;
  return result;
}

double static SettingsManager.shared.getter()
{
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  return result;
}

void sub_23A9FE0C4(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 40) = v2;
}

uint64_t sub_23A9FF3B4()
{
  v1 = *(v0 + 139);
  if (v1 == 2)
  {

    if (qword_27DFAE4A0 != -1)
    {
      swift_once();
    }

    LOBYTE(v1) = !qword_27DFB06E8 || (sub_23A9FF4BC(), sub_23A9FF510(), (sub_23AA0D064() & 1) == 0);
    *(v0 + 139) = v1;
  }

  return v1 & 1;
}

unint64_t sub_23A9FF4BC()
{
  result = qword_27DFB17B8;
  if (!qword_27DFB17B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB17B8);
  }

  return result;
}

unint64_t sub_23A9FF510()
{
  result = qword_27DFB17C0;
  if (!qword_27DFB17C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB17C0);
  }

  return result;
}

uint64_t (*sub_23A9FF56C(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = sub_23A9FF3B4() & 1;
  return sub_23A9FF5B8;
}

uint64_t sub_23A9FF5C8()
{
  swift_beginAccess();
  if (*(v0 + 142))
  {
    return 1;
  }

  swift_beginAccess();
  return *(v0 + 33);
}

char *sub_23A9FF620()
{
  if ((sub_23A9FF3B4() & 1) != 0 && (swift_beginAccess(), v0[34] == 1))
  {
    v1 = sub_23A939D50(0, 1, 1, MEMORY[0x277D84F90]);
    v2 = *(v1 + 2);
    v3 = *(v1 + 3);
    v4 = v2 + 1;
    if (v2 >= v3 >> 1)
    {
      v12 = v1;
      v13 = *(v1 + 2);
      v14 = sub_23A939D50((v3 > 1), v2 + 1, 1, v12);
      v2 = v13;
      v1 = v14;
    }

    *(v1 + 2) = v4;
    v1[v2 + 32] = 0;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  if (v0[128] == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_23A939D50(0, *(v1 + 2) + 1, 1, v1);
    }

    v6 = *(v1 + 2);
    v5 = *(v1 + 3);
    if (v6 >= v5 >> 1)
    {
      v1 = sub_23A939D50((v5 > 1), v6 + 1, 1, v1);
    }

    *(v1 + 2) = v6 + 1;
    v1[v6 + 32] = 1;
  }

  if ((v0[139] & 1) == 0)
  {
    swift_beginAccess();
    if ((v0[142] & 1) != 0 || (swift_beginAccess(), v0[34] == 1))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_23A939D50(0, *(v1 + 2) + 1, 1, v1);
      }

      v8 = *(v1 + 2);
      v7 = *(v1 + 3);
      if (v8 >= v7 >> 1)
      {
        v1 = sub_23A939D50((v7 > 1), v8 + 1, 1, v1);
      }

      *(v1 + 2) = v8 + 1;
      v1[v8 + 32] = 3;
    }
  }

  if (v0[139])
  {
    swift_beginAccess();
    if (v0[142] == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_23A939D50(0, *(v1 + 2) + 1, 1, v1);
      }

      v10 = *(v1 + 2);
      v9 = *(v1 + 3);
      if (v10 >= v9 >> 1)
      {
        v1 = sub_23A939D50((v9 > 1), v10 + 1, 1, v1);
      }

      *(v1 + 2) = v10 + 1;
      v1[v10 + 32] = 2;
    }
  }

  return v1;
}

void sub_23A9FF8B4(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 140);
  if (v3 == 5)
  {

    if (qword_27DFAE4A0 != -1)
    {
      swift_once();
    }

    if (qword_27DFB06E8 && (sub_23A9FF4BC(), sub_23A9FF510(), (sub_23AA0D064() & 1) != 0))
    {
      LOBYTE(v3) = 3;
    }

    else
    {
      LOBYTE(v3) = 4;
    }

    *(v1 + 140) = v3;
  }

  *a1 = v3;
}

double sub_23A9FF9C0(_BYTE *a1)
{
  v1[140] = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
    if (v4)
    {
      v5 = v4;
      sub_23A9F5EC8(v5, v1);
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23A9FFA4C(uint64_t a1))()
{
  *a1 = v1;
  sub_23A9FF8B4((a1 + 8));
  return sub_23A9FFAA0;
}

double sub_23A9FFAA0(_BYTE *a1)
{
  v1 = *a1;
  *(*a1 + 140) = a1[8];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
    if (v4)
    {
      v5 = v4;
      sub_23A9F5EC8(v5, v1);
    }

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_23A9FFB74(char *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_beginAccess();
  v2[141] = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
    if (v5)
    {
      v6 = v5;
      sub_23A9F5EC8(v6, v2);
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v2);
    swift_unknownObjectRelease();
  }

  return result;
}

double (*sub_23A9FFC20(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23A9FFC74;
}

double sub_23A9FFC74(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
      if (v6)
      {
        v7 = *(a1 + 24);
        v8 = v6;
        sub_23A9F5EC8(v8, v7);
      }

      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_23A9F643C(*(a1 + 24));

      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_23A9FFD6C(char a1)
{
  swift_beginAccess();
  v1[142] = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
    if (v5)
    {
      v6 = v5;
      sub_23A9F5EC8(v6, v1);
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23A9FFDF8(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EEC;
}

double sub_23A9FFE80(char a1)
{
  swift_beginAccess();
  v1[143] = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
    if (v5)
    {
      v6 = v5;
      sub_23A9F5EC8(v6, v1);
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23A9FFF0C(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23A9FFF60;
}

double sub_23A9FFF64(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
      if (v6)
      {
        v7 = *(a1 + 24);
        v8 = v6;
        sub_23A9F5EC8(v8, v7);
      }

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_23AA0028C(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 156) = v2;
}

void sub_23AA00360(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 157) = v2;
}

void sub_23AA00434(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 158) = v2;
}

double sub_23AA004F8(char a1)
{
  swift_beginAccess();
  v1[159] = a1;
  if ((a1 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
      if (v5)
      {
        v6 = v5;
        sub_23A9F5EC8(v6, v1);
      }

      swift_unknownObjectRelease();
    }
  }

  return result;
}

double (*sub_23AA00588(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA005DC;
}

double sub_23AA005DC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0 && (*(*(a1 + 24) + 159) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
      if (v6)
      {
        v7 = *(a1 + 24);
        v8 = v6;
        sub_23A9F5EC8(v8, v7);
      }

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_23AA0067C(BOOL *a1@<X8>)
{
  v3 = *(v1 + 160);
  if (v3 == 2)
  {

    if (qword_27DFAE4A0 != -1)
    {
      swift_once();
    }

    v4 = 0;
    if (qword_27DFB06E8)
    {
      sub_23A9FF4BC();
      sub_23A9FF510();
      if (sub_23AA0D064())
      {
        v4 = 1;
      }
    }

    *(v1 + 160) = v4;
  }

  else
  {
    v4 = v3 & 1;
  }

  *a1 = v4;
}

double sub_23AA00790(_BYTE *a1)
{
  v1[160] = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
    if (v4)
    {
      v5 = v4;
      sub_23A9F5EC8(v5, v1);
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA0081C(uint64_t a1))()
{
  *a1 = v1;
  sub_23AA0067C((a1 + 8));
  return sub_23AA00870;
}

double sub_23AA00870(_BYTE *a1)
{
  v1 = *a1;
  *(*a1 + 160) = a1[8];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
    if (v4)
    {
      v5 = v4;
      sub_23A9F5EC8(v5, v1);
    }

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_23AA00900(BOOL *a1@<X8>)
{
  v3 = *(v1 + 161);
  if (v3 == 2)
  {

    if (qword_27DFAE4A0 != -1)
    {
      swift_once();
    }

    v4 = 0;
    if (qword_27DFB06E8)
    {
      sub_23A9FF4BC();
      sub_23A9FF510();
      if (sub_23AA0D064())
      {
        v4 = 1;
      }
    }

    *(v1 + 161) = v4;
  }

  else
  {
    v4 = v3 & 1;
  }

  *a1 = v4;
}

uint64_t (*sub_23AA00A20(uint64_t a1))()
{
  *a1 = v1;
  sub_23AA00900((a1 + 8));
  return sub_23AA00A74;
}

double sub_23AA00A84(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[162] = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v3);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_23AA00B1C(char a1)
{
  swift_beginAccess();
  v1[162] = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v1);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA00B80(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF0;
}

double sub_23AA00BD4(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[163] = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v3);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_23AA00C7C(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v1[163] = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v1);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA00CE0(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF0;
}

double sub_23AA00EBC(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[166] = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v3);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_23AA00F54(char a1)
{
  swift_beginAccess();
  v1[166] = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v1);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA00FB8(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF0;
}

double sub_23AA0100C(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[167] = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v3);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_23AA010A4(char a1)
{
  swift_beginAccess();
  v1[167] = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v1);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA01108(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF0;
}

double sub_23AA0115C(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[168] = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v3);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_23AA011F4(char a1)
{
  swift_beginAccess();
  v1[168] = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v1);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA01258(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF0;
}

double sub_23AA012AC(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[169] = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v3);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_23AA01344(char a1)
{
  swift_beginAccess();
  v1[169] = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v1);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA013A8(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF0;
}

double sub_23AA013FC(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[170] = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v3);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_23AA01494(char a1)
{
  swift_beginAccess();
  v1[170] = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v1);
    swift_unknownObjectRelease();
  }

  return result;
}

double (*sub_23AA014F8(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA0154C;
}

double sub_23AA01564(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[171] = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v3);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_23AA015FC(char a1)
{
  swift_beginAccess();
  v1[171] = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v1);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA01660(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF0;
}

double sub_23AA016B4(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[172] = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v3);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_23AA0174C(char a1)
{
  swift_beginAccess();
  v1[172] = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v1);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA017B0(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF0;
}

double sub_23AA01804(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[173] = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v3);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_23AA0189C(char a1)
{
  swift_beginAccess();
  v1[173] = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v1);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA01900(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF0;
}

double sub_23AA01954(char *a1, _BYTE **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v3[174] = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v3);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_23AA019EC(char a1)
{
  swift_beginAccess();
  v1[174] = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F6ECC(v1);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA01A50(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF0;
}

void sub_23AA01AD8(float a1)
{
  swift_beginAccess();
  *(v1 + 176) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView))
    {
      sub_23A9F6DAC(v1);
    }

    swift_unknownObjectRelease();
  }
}

double (*sub_23AA01B58(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA01BAC;
}

double sub_23AA01BAC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (*(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView))
      {
        sub_23A9F6DAC(*(a1 + 24));
      }

      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_23AA01C28(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 180) = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v3);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_23AA01CC0(char a1)
{
  swift_beginAccess();
  *(v1 + 180) = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v1);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA01D24(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

double sub_23AA01DBC(char *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_beginAccess();
  *(v2 + 181) = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView))
    {
      sub_23A9F6DAC(v2);
    }

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v2);
    swift_unknownObjectRelease();
  }

  return result;
}

double (*sub_23AA01E54(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA01EA8;
}

double sub_23AA01EA8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (*(Strong + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView))
      {
        sub_23A9F6DAC(*(a1 + 24));
      }

      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_23A9F643C(*(a1 + 24));

      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_23AA01F50(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 182) = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v3);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_23AA01FE8(char a1)
{
  swift_beginAccess();
  *(v1 + 182) = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v1);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA0204C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

double sub_23AA020A0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 183) = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v3);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_23AA02138(char a1)
{
  swift_beginAccess();
  *(v1 + 183) = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v1);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA0219C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

void sub_23AA021F0(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 184) = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v3);
    swift_unknownObjectRelease();
  }
}

void sub_23AA02290(float a1)
{
  swift_beginAccess();
  *(v1 + 184) = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v1);
    swift_unknownObjectRelease();
  }
}

uint64_t (*sub_23AA022FC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

void sub_23AA02350(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 188) = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v3);
    swift_unknownObjectRelease();
  }
}

void sub_23AA023F0(float a1)
{
  swift_beginAccess();
  *(v1 + 188) = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v1);
    swift_unknownObjectRelease();
  }
}

uint64_t (*sub_23AA0245C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

void sub_23AA024B0(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 192) = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v3);
    swift_unknownObjectRelease();
  }
}

void sub_23AA02550(float a1)
{
  swift_beginAccess();
  *(v1 + 192) = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v1);
    swift_unknownObjectRelease();
  }
}

uint64_t (*sub_23AA025BC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

void sub_23AA02610(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 196) = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v3);
    swift_unknownObjectRelease();
  }
}

void sub_23AA026B0(float a1)
{
  swift_beginAccess();
  *(v1 + 196) = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v1);
    swift_unknownObjectRelease();
  }
}

uint64_t (*sub_23AA0271C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

double sub_23AA02770(__int128 *a1, uint64_t *a2)
{
  v4 = *a1;
  v2 = *a2;
  swift_beginAccess();
  *(v2 + 208) = v4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v2);
    swift_unknownObjectRelease();
  }

  return result;
}

double sub_23AA02810(__n128 a1)
{
  swift_beginAccess();
  v1[13] = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v1);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_23AA02878(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

void sub_23AA028CC(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 224) = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v3);
    swift_unknownObjectRelease();
  }
}

void sub_23AA0296C(float a1)
{
  swift_beginAccess();
  *(v1 + 224) = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v1);
    swift_unknownObjectRelease();
  }
}

uint64_t (*sub_23AA029D8(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

void sub_23AA02A2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 232) = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v3);
    swift_unknownObjectRelease();
  }
}

void sub_23AA02ACC(double a1)
{
  swift_beginAccess();
  *(v1 + 232) = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v1);
    swift_unknownObjectRelease();
  }
}

uint64_t (*sub_23AA02B38(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

void sub_23AA02B8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 240) = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v3);
    swift_unknownObjectRelease();
  }
}

void sub_23AA02C2C(double a1)
{
  swift_beginAccess();
  *(v1 + 240) = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v1);
    swift_unknownObjectRelease();
  }
}

double (*sub_23AA02C98(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA02CEC;
}

void sub_23AA02D04(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 248) = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v3);
    swift_unknownObjectRelease();
  }
}

void sub_23AA02DA4(float a1)
{
  swift_beginAccess();
  *(v1 + 248) = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v1);
    swift_unknownObjectRelease();
  }
}

uint64_t (*sub_23AA02E10(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

void sub_23AA02E64(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 252) = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v3);
    swift_unknownObjectRelease();
  }
}

void sub_23AA02F04(float a1)
{
  swift_beginAccess();
  *(v1 + 252) = a1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_23A9F643C(v1);
    swift_unknownObjectRelease();
  }
}

uint64_t (*sub_23AA02F70(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_23AA07EF4;
}

double sub_23AA02FC4(uint64_t a1, char a2, void (*a3)(void))
{
  swift_endAccess();
  if ((a2 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
  {
    a3(*(a1 + 24));

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t SettingsManager.__deallocating_deinit()
{
  sub_23A8E9694(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_23AA03160()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  *(v0 + 34) = 1;
  *(v0 + 36) = 1145569280;
  *(v0 + 40) = 258;
  *(v0 + 44) = 1028443341;
  *(v0 + 48) = 1;
  *(v0 + 52) = 0x3DCCCCCD3F4CCCCDLL;
  *(v0 + 60) = 1028443341;
  *(v0 + 64) = 0;
  *(v0 + 68) = xmmword_23AA1BF60;
  __asm { FMOV            V0.2S, #0.75 }

  *(v0 + 84) = _D0;
  *(v0 + 96) = 0xBFF0000000000000;
  *(v0 + 104) = 1;
  *(v0 + 108) = xmmword_23AA1BF70;
  *(v0 + 124) = 1057384038;
  *(v0 + 128) = 1;
  *(v0 + 132) = 1094713344;
  *(v0 + 136) = 0x1010502010001;
  *(v0 + 144) = 0;
  *(v0 + 148) = 0x3D4CCCCD3FA00000;
  *(v0 + 156) = 0x1020200010101;
  *(v0 + 164) = 256;
  *(v0 + 168) = 0;
  *(v0 + 173) = 1;
  *(v0 + 169) = 16843009;
  *(v0 + 176) = 1077936128;
  *(v0 + 180) = 0;
  *(v0 + 182) = 1;
  *(v0 + 183) = 0;
  *(v0 + 191) = 0;
  *(v0 + 192) = 0x438980003F800000;
  *(v0 + 208) = xmmword_23AA1BF80;
  *(v0 + 224) = 1153138688;
  *(v0 + 232) = 0x3F7333333F400000;
  *(v0 + 240) = 0x3F6A3D713F5851ECLL;
  *(v0 + 248) = 0x427000003FA00000;
  *(v0 + 256) = 0;
  return v0;
}

unint64_t sub_23AA032B0()
{
  result = qword_27DFB17C8;
  if (!qword_27DFB17C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB17C8);
  }

  return result;
}

unint64_t sub_23AA03308()
{
  result = qword_27DFB17D0;
  if (!qword_27DFB17D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB17D0);
  }

  return result;
}

unint64_t sub_23AA03360()
{
  result = qword_27DFB17D8;
  if (!qword_27DFB17D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB17D8);
  }

  return result;
}

unint64_t sub_23AA033B8()
{
  result = qword_27DFB17E0;
  if (!qword_27DFB17E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB17E0);
  }

  return result;
}

unint64_t sub_23AA03410()
{
  result = qword_27DFB17E8;
  if (!qword_27DFB17E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB17E8);
  }

  return result;
}

unint64_t sub_23AA03468()
{
  result = qword_27DFB17F0;
  if (!qword_27DFB17F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB17F0);
  }

  return result;
}

unint64_t sub_23AA034C0()
{
  result = qword_27DFB17F8;
  if (!qword_27DFB17F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB17F8);
  }

  return result;
}

unint64_t sub_23AA03518()
{
  result = qword_27DFB1800;
  if (!qword_27DFB1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1800);
  }

  return result;
}

void sub_23AA0356C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

void sub_23AA035B4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
}

void sub_23AA035F8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 33);
}

void sub_23AA03640(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 33) = v2;
}

void sub_23AA03684(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 34);
}

void sub_23AA036CC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 34) = v2;
}

float sub_23AA03710@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 36);
  *a2 = result;
  return result;
}

void sub_23AA03758(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 36) = v2;
}

void sub_23AA037A4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

void sub_23AA037EC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
}

void sub_23AA03830(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 41);
}

void sub_23AA03878(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 41) = v2;
}

float sub_23AA038BC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 44);
  *a2 = result;
  return result;
}

void sub_23AA03904(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 44) = v2;
}

void sub_23AA03950(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

void sub_23AA03998(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
}

float sub_23AA039DC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 52);
  *a2 = result;
  return result;
}

void sub_23AA03A24(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 52) = v2;
}

float sub_23AA03A70@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 56);
  *a2 = result;
  return result;
}

void sub_23AA03AB8(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 56) = v2;
}

float sub_23AA03B04@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 60);
  *a2 = result;
  return result;
}

void sub_23AA03B4C(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 60) = v2;
}

void sub_23AA03B98(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

void sub_23AA03BE0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 64) = v2;
}

float sub_23AA03C24@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 68);
  *a2 = result;
  return result;
}

void sub_23AA03C6C(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 68) = v2;
}

float sub_23AA03CB8@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 72);
  *a2 = result;
  return result;
}

void sub_23AA03D00(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
}

float sub_23AA03D4C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 76);
  *a2 = result;
  return result;
}

void sub_23AA03D94(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 76) = v2;
}

float sub_23AA03DE0@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 80);
  *a2 = result;
  return result;
}

void sub_23AA03E28(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 80) = v2;
}

float sub_23AA03E74@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 84);
  *a2 = result;
  return result;
}

void sub_23AA03EBC(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 84) = v2;
}

float sub_23AA03F08@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 88);
  *a2 = result;
  return result;
}

void sub_23AA03F50(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 88) = v2;
}

double sub_23AA03F9C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 96);
  *a2 = result;
  return result;
}

void sub_23AA03FE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 96) = v2;
}

void sub_23AA04030(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 104);
}

void sub_23AA04078(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 104) = v2;
}

float sub_23AA040BC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 108);
  *a2 = result;
  return result;
}

void sub_23AA04104(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 108) = v2;
}

float sub_23AA04150@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 112);
  *a2 = result;
  return result;
}

void sub_23AA04198(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 112) = v2;
}

float sub_23AA041E4@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 116);
  *a2 = result;
  return result;
}

void sub_23AA0422C(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 116) = v2;
}

float sub_23AA04278@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 120);
  *a2 = result;
  return result;
}

void sub_23AA042C0(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 120) = v2;
}

float sub_23AA0430C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 124);
  *a2 = result;
  return result;
}

void sub_23AA04354(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 124) = v2;
}

void sub_23AA043A0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 128);
}

void sub_23AA043E8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 128) = v2;
}

float sub_23AA0442C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 132);
  *a2 = result;
  return result;
}

void sub_23AA04474(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 132) = v2;
}

void sub_23AA044C0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 136);
}

void sub_23AA04508(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 136) = v2;
}

void sub_23AA0454C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 137);
}

void sub_23AA04594(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 137) = v2;
}

void sub_23AA045D8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 138);
}

void sub_23AA04620(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 138) = v2;
}

uint64_t sub_23AA04664@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23A9FF3B4();
  *a1 = result & 1;
  return result;
}

void sub_23AA04718(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 141);
}

void sub_23AA04778(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 142);
}

void sub_23AA047E8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 143);
}

void sub_23AA04858(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 144);
}

void sub_23AA048A0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 144) = v2;
}

float sub_23AA048E4@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 148);
  *a2 = result;
  return result;
}

void sub_23AA0492C(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 148) = v2;
}

float sub_23AA04978@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 152);
  *a2 = result;
  return result;
}

void sub_23AA049C0(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 152) = v2;
}

void sub_23AA04A0C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 156);
}

void sub_23AA04A54(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 156) = v2;
}

void sub_23AA04A98(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 157);
}

void sub_23AA04AE0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 157) = v2;
}

void sub_23AA04B24(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 158);
}

void sub_23AA04B6C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 158) = v2;
}

void sub_23AA04BB0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 159);
}

void *keypath_get_144Tm@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, _BYTE *a2@<X8>)
{
  result = a1(&v4);
  *a2 = v4;
  return result;
}

void sub_23AA04CF4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 162);
}

void sub_23AA04D40(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 163);
}

void sub_23AA04D8C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 164);
}

void sub_23AA04DD4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 164) = v2;
}

void sub_23AA04E18(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 165);
}

void sub_23AA04E60(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 165) = v2;
}

void sub_23AA04EA4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 166);
}

void sub_23AA04EF0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 167);
}

void sub_23AA04F3C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 168);
}

void sub_23AA04F88(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 169);
}

void sub_23AA04FD4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 170);
}

void sub_23AA05020(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 171);
}

void sub_23AA0506C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 172);
}

void sub_23AA050B8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 173);
}

void sub_23AA05104(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 174);
}

float sub_23AA05150@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 176);
  *a2 = result;
  return result;
}

void sub_23AA051C0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 180);
}

void sub_23AA0520C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 181);
}

void sub_23AA0528C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 182);
}

void sub_23AA052D8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 183);
}

float sub_23AA05324@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 184);
  *a2 = result;
  return result;
}

float sub_23AA05370@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 188);
  *a2 = result;
  return result;
}

float sub_23AA053BC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 192);
  *a2 = result;
  return result;
}

float sub_23AA05408@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 196);
  *a2 = result;
  return result;
}

__n128 sub_23AA05454@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = v3[13];
  *a2 = result;
  return result;
}

float sub_23AA054A0@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 224);
  *a2 = result;
  return result;
}

double sub_23AA054EC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 232);
  *a2 = result;
  return result;
}

double sub_23AA05538@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 240);
  *a2 = result;
  return result;
}

float sub_23AA05584@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 248);
  *a2 = result;
  return result;
}

float sub_23AA055D0@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 252);
  *a2 = result;
  return result;
}

void sub_23AA0561C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 256);
}

void sub_23AA05664(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 256) = v2;
}

double sub_23AA07DB0()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 scale];

  v5 = [v0 mainScreen];
  [v5 scale];

  v6 = [v0 mainScreen];
  [v6 scale];

  return -1.0 / v3;
}

uint64_t sub_23AA080A0(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 0xBu)
  {
    if (a2 > 0x14u)
    {
      goto LABEL_6;
    }

    if (((1 << a2) & 0x18C000) == 0)
    {
      if (((1 << a2) & 0x60000) != 0)
      {
        goto LABEL_13;
      }

      if (a2 != 16)
      {
LABEL_6:
        if (a2 != 12)
        {
          if (a2 != 13)
          {
            goto LABEL_17;
          }

          goto LABEL_11;
        }

LABEL_13:
        type metadata accessor for RoomCaptureMeshDimensionsRestriction();
        result = swift_allocObject();
        v3 = 3;
        goto LABEL_14;
      }

      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (a2 <= 7u)
  {
    if (a2 == 6)
    {
LABEL_20:
      v4 = sub_23A9AD42C(0x12u, a1);
      type metadata accessor for RoomCaptureMeshDimensionsRestriction();
      result = swift_allocObject();
      if (v4)
      {
        goto LABEL_12;
      }

LABEL_24:
      *(result + 16) = 4;
      *(result + 20) = 0;
      *(result + 24) = 1;
      *(result + 28) = 0;
      *(result + 32) = 1;
      *(result + 36) = 0;
      *(result + 40) = 0;
      return result;
    }

    if (a2 == 7)
    {
LABEL_23:
      type metadata accessor for RoomCaptureMeshDimensionsRestriction();
      result = swift_allocObject();
      goto LABEL_24;
    }
  }

  else
  {
    if (a2 - 8 < 3)
    {
LABEL_11:
      type metadata accessor for RoomCaptureMeshDimensionsRestriction();
      result = swift_allocObject();
LABEL_12:
      v3 = 2;
LABEL_14:
      *(result + 16) = v3;
      *(result + 20) = 0;
      *(result + 24) = 1;
      *(result + 28) = 0;
      *(result + 32) = 0;
      *(result + 36) = 0;
      *(result + 40) = 1;
      return result;
    }

    if (a2 == 11)
    {
      goto LABEL_23;
    }
  }

LABEL_17:
  type metadata accessor for RoomCaptureMeshDimensionsRestriction();

  return swift_initStaticObject();
}

uint64_t sub_23AA08220(uint64_t a1, char a2)
{
  v2 = (((a2 - 6) >> 1) | ((a2 - 6) << 7));
  if (v2 > 5)
  {
    if (v2 == 6)
    {
      if (qword_27DFAE518 != -1)
      {
        swift_once();
      }

      v6 = off_27DFB17B0;
      swift_beginAccess();
      v7 = -v6[15];
      type metadata accessor for RoomCaptureMeshDimensionsRestriction();
      result = swift_allocObject();
      *(result + 16) = 3;
      *(result + 20) = 0;
      *(result + 24) = 1;
      *(result + 28) = v7;
      goto LABEL_20;
    }

    if (v2 == 7)
    {
      type metadata accessor for RoomCaptureMeshDimensionsRestriction();
      result = swift_allocObject();
      *(result + 16) = 4;
      *(result + 20) = 0;
      *(result + 24) = 1;
      *(result + 28) = 0;
      *(result + 32) = 1;
      *(result + 36) = 0;
      *(result + 40) = 0;
      return result;
    }
  }

  else
  {
    if (((a2 - 6) >> 1) | ((a2 - 6) << 7))
    {
      v3 = v2 == 5;
    }

    else
    {
      v3 = 1;
    }

    if (v3 && sub_23A9AD42C(0x12u, a1))
    {
      if (qword_27DFAE518 != -1)
      {
        swift_once();
      }

      v4 = off_27DFB17B0;
      swift_beginAccess();
      LODWORD(v4) = v4[14];
      type metadata accessor for RoomCaptureMeshDimensionsRestriction();
      result = swift_allocObject();
      *(result + 16) = 2;
      *(result + 20) = 0;
      *(result + 24) = 1;
      *(result + 28) = v4;
LABEL_20:
      *(result + 32) = 0;
      *(result + 36) = 0;
      *(result + 40) = 1;
      return result;
    }
  }

  type metadata accessor for RoomCaptureMeshDimensionsRestriction();

  return swift_initStaticObject();
}

uint64_t sub_23AA08410(unsigned __int8 a1)
{
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v2 = off_27DFB17B0;
  swift_beginAccess();
  if (!v2[40])
  {
    goto LABEL_13;
  }

  if (v2[40] != 1)
  {
    if (a1 != 20)
    {
      if (a1 == 18)
      {
LABEL_20:
        if (qword_27DFAE440 != -1)
        {
          swift_once();
        }

        v3 = &qword_27DFC06C0;
        return *v3;
      }

      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (a1 > 0x14u)
  {
LABEL_13:
    if (qword_27DFAE448 != -1)
    {
      swift_once();
    }

    v3 = &qword_27DFC06C8;
    return *v3;
  }

  if (((1 << a1) & 0x18C8C0) == 0)
  {
    if (((1 << a1) & 0x12700) != 0)
    {
      if (qword_27DFAE438 != -1)
      {
        swift_once();
      }

      v3 = &qword_27DFC06B8;
      return *v3;
    }

    if (((1 << a1) & 0x61000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

LABEL_16:
  if (qword_27DFAE430 != -1)
  {
    swift_once();
  }

  v3 = &qword_27DFC06B0;
  return *v3;
}

id sub_23AA085E4()
{
  v1 = [v0 smoothedSceneDepth];
  if (!v1 || (v2 = v1, v3 = [v1 depthMap], v2, (result = v3) == 0))
  {
    result = [v0 sceneDepth];
    if (result)
    {
      v5 = result;
      v6 = [result depthMap];

      return v6;
    }
  }

  return result;
}

void sub_23AA08688(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23AA12120;
  v13 = [v6 topAnchor];
  v14 = [a1 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:a2];

  *(v12 + 32) = v15;
  v16 = [v6 bottomAnchor];
  v17 = [a1 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-a4];

  *(v12 + 40) = v18;
  v19 = [v6 leftAnchor];
  v20 = [a1 leftAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:a3];

  *(v12 + 48) = v21;
  v22 = [v6 rightAnchor];
  v23 = [a1 rightAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-a5];

  *(v12 + 56) = v24;
  v25 = objc_opt_self();
  sub_23A8D6C58(0, &qword_27DFB10D8, 0x277CCAAD0);
  v26 = sub_23AA0D2E4();

  [v25 activateConstraints_];
}

void sub_23AA08908()
{
  v1 = v0;
  v2 = [v0 superview];
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      v4 = v3;
      v5 = [v4 constraints];
      sub_23A8D6C58(0, &qword_27DFB10D8, 0x277CCAAD0);
      v6 = sub_23AA0D2F4();

      if (v6 >> 62)
      {
        break;
      }

      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_3:

      v3 = [v4 superview];

      if (!v3)
      {
        goto LABEL_26;
      }
    }

    v7 = sub_23AA0D7F4();
    if (!v7)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v7 >= 1)
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x23EE90360](v8, v6);
        }

        else
        {
          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        if ([v9 firstItem])
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
            if (sub_23AA0D634())
            {
              [v4 removeConstraint_];
            }
          }

          swift_unknownObjectRelease();
        }

        if ([v10 secondItem])
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {

            swift_unknownObjectRelease();
            goto LABEL_10;
          }

          sub_23A8D6C58(0, &qword_27DFAF1C8, 0x277D82BB8);
          if (sub_23AA0D634())
          {
            [v4 removeConstraint_];
          }

          swift_unknownObjectRelease();
        }

LABEL_10:
        if (v7 == ++v8)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_26:
    v11 = [v1 constraints];
    if (!v11)
    {
      sub_23A8D6C58(0, &qword_27DFB10D8, 0x277CCAAD0);
      sub_23AA0D2F4();
      v12 = sub_23AA0D2E4();

      v11 = v12;
    }

    v13 = v11;
    [v1 removeConstraints_];
  }
}

uint64_t sub_23AA08C68()
{
  type metadata accessor for DeviceVelocityManager();
  v0 = swift_allocObject();
  result = sub_23AA097E4();
  qword_27DFC0BA8 = v0;
  return result;
}

void sub_23AA08CA4()
{
  v8 = 0;
  v9 = 1;
  v1 = *(v0 + 96);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &v8;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_23AA097A4;
  *(v4 + 24) = v3;
  aBlock[4] = sub_23AA097BC;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23AA08C40;
  aBlock[3] = &block_descriptor_30;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v1, v5);
  _Block_release(v5);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = v9;

    LOBYTE(aBlock[0]) = v6;
  }
}

void sub_23AA08E38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 84);
    v5 = *(Strong + 88);
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  *a1 = v4;
  *(a1 + 4) = v5;
}

double sub_23AA08EAC()
{
  v1 = sub_23AA0CEC4();
  v12 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23AA0CF24();
  v4 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  v10 = *(v0 + 96);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_23AA09764;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A9AD0B8;
  aBlock[3] = &block_descriptor_20;
  v8 = _Block_copy(aBlock);

  sub_23AA0CEE4();
  v13 = MEMORY[0x277D84F90];
  sub_23A95F02C(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  sub_23AA0D764();
  MEMORY[0x23EE8FFE0](0, v6, v3, v8);
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);

  return result;
}

double sub_23AA0919C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 84) = 0;
    *(Strong + 88) = 1;
  }

  return result;
}

__n128 sub_23AA091F4(void *a1)
{
  v3 = sub_23AA0CEC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0CF24();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 camera];
  [v12 transform];
  v35 = v13;
  v36 = v14;

  v15 = vsubq_f32(v36, v35);
  v15.i32[3] = 0;
  v35 = v15;
  if ((*(v1 + 32) & 1) == 0 && (*(v1 + 64) & 1) == 0 && (*(v1 + 80) & 1) == 0)
  {
    v16 = *(v1 + 72);
    v17 = vsubq_f32(*(v1 + 16), v36);
    v18 = vmulq_f32(v17, v17);
    v19 = vsubq_f32(*(v1 + 48), v35);
    v20 = vmulq_f32(v19, v19);
    v21 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v20, v20, 8uLL)), vadd_f32(vzip1_s32(*v18.i8, *v20.i8), vzip2_s32(*v18.i8, *v20.i8))));
    if (v21.f32[0] > v21.f32[1])
    {
      v22 = v21.f32[0];
    }

    else
    {
      v22 = v21.f32[1];
    }

    [a1 timestamp];
    v24 = v23 - v16;
    v34 = *(v1 + 96);
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v33 = v25;
    *(v26 + 24) = v22;
    *(v26 + 32) = v24;
    aBlock[4] = sub_23AA0973C;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_9;
    v32 = _Block_copy(aBlock);

    sub_23AA0CEE4();
    v37 = MEMORY[0x277D84F90];
    v31 = sub_23A95F02C(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
    sub_23AA0D764();
    v27 = v32;
    MEMORY[0x23EE8FFE0](0, v11, v6, v32);
    _Block_release(v27);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v11, v7);
  }

  v28 = v36;
  v28.i32[3] = 0;
  v36 = v28;
  [a1 timestamp];
  *(v1 + 72) = v29;
  *(v1 + 80) = 0;
  result = v35;
  *(v1 + 16) = v36;
  *(v1 + 32) = 0;
  *(v1 + 48) = result;
  *(v1 + 64) = 0;
  return result;
}

void sub_23AA09604(uint64_t a1, float a2, double a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = a3;
    *(Strong + 84) = a2 / v6;
    *(Strong + 88) = 0;
  }
}

uint64_t sub_23AA09670()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23AA096CC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23AA09704()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

double block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_23AA0976C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23AA097E4()
{
  v9 = sub_23AA0D524();
  v1 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23AA0D504();
  MEMORY[0x28223BE20](v4);
  v5 = sub_23AA0CF24();
  MEMORY[0x28223BE20](v5 - 8);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 84) = 0;
  *(v0 + 88) = 1;
  v6 = sub_23A9164A0();
  v8[0] = "eue";
  v8[1] = v6;
  sub_23AA0CEE4();
  v10 = MEMORY[0x277D84F90];
  sub_23A95F02C(&qword_27DFB1150, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v9);
  *(v0 + 96) = sub_23AA0D554();
  *(v0 + 104) = 0x4014000000000000;
  return v0;
}

unint64_t sub_23AA09A70(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      v9 = 0;
      sub_23AA0D8A4();
      MEMORY[0x23EE8FCA0](0xD00000000000001DLL, 0x800000023AA24AE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C50, &unk_23AA1C9F0);
      sub_23AA0D994();
      return v9;
    }

    sub_23AA0D8A4();

    v9 = 0xD000000000000015;
    MEMORY[0x23EE8FCA0](a1, a2);
    v7 = 0x800000023AA24AA0;
    v6 = 0xD000000000000014;
LABEL_14:
    MEMORY[0x23EE8FCA0](v6, v7);
    return v9;
  }

  if (a3 == 2)
  {
    sub_23AA0D8A4();

    v5 = 0xD000000000000021;
    goto LABEL_8;
  }

  if (a3 == 3)
  {
    sub_23AA0D8A4();

    v5 = 0xD000000000000022;
LABEL_8:
    v9 = v5;
    v6 = a1;
    v7 = a2;
    goto LABEL_14;
  }

  if (a1 | a2)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_23AA09CA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = sub_23AA0BFB4();
  v25 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA0C594();
  sub_23AA0C584();
  sub_23AA0C554();

  __swift_project_boxed_opaque_existential_1(v26, v27);
  sub_23AA0C544();
  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_23AA0C584();
  sub_23AA0C564();

  __swift_project_boxed_opaque_existential_1(v26, v27);
  v8 = sub_23AA0C4F4();
  __swift_destroy_boxed_opaque_existential_1(v26);
  if (qword_27DFAE528 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = off_27DFB1808;
  if (*(off_27DFB1808 + 2) && (v10 = sub_23A9EDDFC(a1, a2), (v11 & 1) != 0))
  {
    AssetHandleForURL = *(v9[7] + 8 * v10);
    swift_endAccess();
  }

  else
  {
    v24[1] = v8;
    swift_endAccess();
    type metadata accessor for RERoomsMaterial();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    v15 = sub_23AA0D104();
    v16 = [v14 pathForResource:v15 ofType:0];

    if (!v16)
    {
      sub_23A8E90A8();
      swift_allocError();
      *v20 = a1;
      *(v20 + 8) = a2;
      *(v20 + 16) = 1;
      swift_willThrow();

LABEL_14:
      type metadata accessor for RERoomsMaterial();
      swift_deallocPartialClassInstance();
      return v3;
    }

    v24[0] = v3;
    sub_23AA0D134();

    sub_23AA0BEE4();

    v17 = sub_23AA0BF14();
    AssetHandleForURL = REAssetManagerCreateAssetHandleForURL();

    if (!AssetHandleForURL)
    {
      sub_23A8E90A8();
      swift_allocError();
      *v22 = a1;
      *(v22 + 8) = a2;
      *(v22 + 16) = 2;
      swift_willThrow();

      (*(v25 + 8))(v7, v28);
      v3 = v24[0];
      goto LABEL_14;
    }

    swift_beginAccess();

    sub_23A9EA778(AssetHandleForURL, a1, a2);
    swift_endAccess();

    (*(v25 + 8))(v7, v28);
    v3 = v24[0];
  }

  *(v3 + 16) = AssetHandleForURL;
  v18 = RERenderManagerMaterialParameterBlockCreateWithAsset();
  if (!v18)
  {
    sub_23A8E90A8();
    swift_allocError();
    *v21 = a1;
    *(v21 + 8) = a2;
    *(v21 + 16) = 3;
    swift_willThrow();
    goto LABEL_14;
  }

  v19 = v18;

  *(v3 + 24) = v19;
  return v3;
}

uint64_t sub_23AA0A0CC()
{
  sub_23AA0C194();

  return swift_deallocClassInstance();
}

uint64_t sub_23AA0A128()
{
  v0 = sub_23AA0C184();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA0C9A4();
  sub_23AA0C114();
  (*(v1 + 8))(v3, v0);
  REMeshComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REMeshComponentRemoveAllMaterials();
    REMeshComponentAddMaterial();
    REMaterialParameterBlockArrayComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    if (REMaterialParameterBlockArrayComponentSize() != 1)
    {
      REMaterialParameterBlockArrayComponentResize();
    }

    return REMaterialParameterBlockArrayComponentSetBlockAtIndex();
  }

  else
  {
    sub_23A8E90A8();
    swift_allocError();
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 4;
    return swift_willThrow();
  }
}

uint64_t sub_23AA0A2BC(uint64_t a1, uint64_t a2, float32x2_t a3)
{
  sub_23AA0D1B4();
  REMaterialParameterBlockGetFloat2();

  v4 = vmvn_s8(vceq_f32(0, a3));
  v5 = v4.i8[0] | v4.i8[4];
  if ((v4.i8[0] | v4.i8[4]))
  {
    sub_23AA0D1B4();
    REMaterialParameterBlockSetFloat2();
  }

  return v5 & 1;
}

uint64_t sub_23AA0A3A0(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  sub_23AA0D1B4();
  REMaterialParameterBlockGetFloat4();

  v3 = vmovn_s32(vceqq_f32(0, a3));
  if (v3.i16[0] & v3.i16[1] & 1) != 0 && (v3.i16[2] & v3.i16[3])
  {
    return 0;
  }

  sub_23AA0D1B4();
  REMaterialParameterBlockSetFloat4();

  return 1;
}

uint64_t get_enum_tag_for_layout_string_8RoomPlan20RERoomsMaterialError33_B1D3FB03DBCC757C845E6B2180EE1008LLO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_23AA0A4A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23AA0A4F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_23AA0A534(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

__n128 __swift_memcpy200_16(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_23AA0A5A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 200))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23AA0A5C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 200) = v3;
  return result;
}

id sub_23AA0A630(void *a1, uint64_t a2, double a3, double a4)
{
  v9 = [a1 camera];
  [v9 viewMatrixForOrientation_];
  v25 = v11;
  v27 = v10;
  v21 = v13;
  v23 = v12;

  v32.columns[1] = v25;
  v32.columns[0] = v27;
  v32.columns[3] = v21;
  v32.columns[2] = v23;
  *v4 = __invert_f4(v32);
  v14 = [a1 camera];
  [v14 projectionMatrixForOrientation:a2 viewportSize:a3 zNear:a4 zFar:{*(v4 + 184), *(v4 + 192)}];
  v22 = v15;
  v24 = v16;
  v26 = v17;
  v28 = v18;

  *(v4 + 64) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v22.f32[0]), xmmword_23AA12220, *v22.f32, 1), xmmword_23AA12240, v22, 2), xmmword_23AA1CA00, v22, 3);
  *(v4 + 80) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v24.f32[0]), xmmword_23AA12220, *v24.f32, 1), xmmword_23AA12240, v24, 2), xmmword_23AA1CA00, v24, 3);
  *(v4 + 96) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v26.f32[0]), xmmword_23AA12220, *v26.f32, 1), xmmword_23AA12240, v26, 2), xmmword_23AA1CA00, v26, 3);
  *(v4 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v28.f32[0]), xmmword_23AA12220, *v28.f32, 1), xmmword_23AA12240, v28, 2), xmmword_23AA1CA00, v28, 3);
  [a1 displayTransformForOrientation:a2 viewportSize:{a3, a4}];
  *(v4 + 136) = v29;
  *(v4 + 152) = v30;
  *(v4 + 168) = v31;
  result = [a1 timestamp];
  *(v4 + 128) = v20;
  return result;
}

float32x2_t *sub_23AA0A7C4(float32x2_t a1, float32x2_t a2, float32x2_t a3, float a4)
{
  result = v4;
  v6 = vmul_f32(a3, 0x3F0000003F000000);
  v7 = vneg_f32(v6);
  v8 = vbsl_s8(vcgt_f32(a1, a2), a2, a1);
  v9 = vbsl_s8(vcge_f32(a2, a1), a2, a1);
  v10 = v8.f32[0] <= (a4 - v6.f32[0]);
  if (v8.f32[0] > (a4 - v6.f32[0]))
  {
    v11 = 4;
  }

  else
  {
    v11 = 5;
  }

  if (v8.f32[1] <= (a4 - v6.f32[1]))
  {
    v10 = v11;
  }

  if ((v6.f32[0] - a4) <= v9.f32[0])
  {
    v10 |= 2u;
  }

  v12 = (v6.f32[1] - a4) > v9.f32[1];
  v14 = vminnm_f32(vmaxnm_f32(v8, v7), v6);
  v13 = vminnm_f32(vmaxnm_f32(v9, v7), v6);
  v4[2] = v14;
  v4[3] = __PAIR64__(v14.u32[1], v13.u32[0]);
  v4[4] = v13;
  v14.i32[1] = v13.i32[1];
  if (!v12)
  {
    v10 |= 8u;
  }

  v4[5] = v14;
  v4[6].i32[0] = v10;
  return result;
}

dispatch_semaphore_t sub_23AA0A8AC()
{
  type metadata accessor for OULogManager();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  result = dispatch_semaphore_create(1);
  v2 = MEMORY[0x277D84F90];
  *(v0 + 40) = result;
  *(v0 + 48) = v2;
  qword_27DFC0BB0 = v0;
  return result;
}

uint64_t sub_23AA0A90C()
{

  v1 = OBJC_IVAR____TtCC8RoomPlan12OULogManagerP33_32039FB16B3B97E8BBC711C9428C4A1610OULogEntry_uuid;
  v2 = sub_23AA0C0E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_23AA0A9C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23AA0C0E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for CapturedRoom.Object(0);
  v8 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(v2 + 48) = MEMORY[0x277D84F90];

  v11 = *(a1 + 40);
  v12 = *(v11 + 16);
  if (!v12)
  {
LABEL_27:
    sub_23AA0AE7C();
    return;
  }

  v13 = 0;
  v44 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v37 = (v5 + 32);
  v38 = (v5 + 16);
  v35 = v2;
  v36 = v8;
  v34 = v4;
  v33 = v7;
  v40 = v11;
  v41 = v10;
  v39 = v12;
  while (v13 < *(v11 + 16))
  {
    sub_23AA0BA80(v44 + *(v8 + 72) * v13, v10);
    v14 = *v10;
    if (v14 > 0xA)
    {
      if (v14 == 12)
      {
        v15 = 0xE500000000000000;
        v16 = 0x7269616843;
      }

      else
      {
        if (v14 != 11)
        {
LABEL_3:

          goto LABEL_4;
        }

        v15 = 0xE400000000000000;
        v16 = 1634103123;
      }
    }

    else if (*v10)
    {
      if (v14 != 10)
      {
        goto LABEL_3;
      }

      v15 = 0xE500000000000000;
      v16 = 0x656C626154;
    }

    else
    {
      v15 = 0xE700000000000000;
      v16 = 0x656761726F7453;
    }

    v45 = v16;
    v17 = sub_23AA0DBD4();

    if ((v17 & 1) == 0)
    {
      v18 = v42;
      (*v38)(v7, &v10[*(v42 + 32)], v4);
      v43 = *(v10 + 1);
      v19 = *&v10[*(v18 + 36)];
      v20 = *(v19 + 16);
      if (v20)
      {
        v49 = MEMORY[0x277D84F90];
        sub_23A976150(0, v20, 0);
        v21 = v49;
        v22 = v19 + 32;
        do
        {
          sub_23A8CA9D8(v22, v46);
          v23 = v47;
          v24 = v48;
          __swift_project_boxed_opaque_existential_1(v46, v47);
          v25 = sub_23A93665C(v23, v24);
          v27 = v26;
          __swift_destroy_boxed_opaque_existential_1(v46);
          v49 = v21;
          v29 = *(v21 + 16);
          v28 = *(v21 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_23A976150((v28 > 1), v29 + 1, 1);
            v21 = v49;
          }

          *(v21 + 16) = v29 + 1;
          v30 = v21 + 16 * v29;
          *(v30 + 32) = v25;
          *(v30 + 40) = v27;
          v22 += 40;
          --v20;
        }

        while (v20);
        v2 = v35;
        v8 = v36;
        v4 = v34;
        v7 = v33;
      }

      else
      {
        v21 = MEMORY[0x277D84F90];
      }

      type metadata accessor for OULogManager.OULogEntry(0);
      v31 = swift_allocObject();
      *(v31 + 16) = v45;
      *(v31 + 24) = v15;
      (*v37)(v31 + OBJC_IVAR____TtCC8RoomPlan12OULogManagerP33_32039FB16B3B97E8BBC711C9428C4A1610OULogEntry_uuid, v7, v4);
      *(v31 + OBJC_IVAR____TtCC8RoomPlan12OULogManagerP33_32039FB16B3B97E8BBC711C9428C4A1610OULogEntry_dimensions) = v43;
      *(v31 + OBJC_IVAR____TtCC8RoomPlan12OULogManagerP33_32039FB16B3B97E8BBC711C9428C4A1610OULogEntry_attributes) = v21;
      swift_beginAccess();

      MEMORY[0x23EE8FD70](v32);
      v10 = v41;
      if (*((*(v2 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23AA0D314();
        v8 = v36;
      }

      sub_23AA0D334();
      swift_endAccess();

      sub_23AA0BAE4(v10);
      v12 = v39;
      v11 = v40;
      goto LABEL_5;
    }

LABEL_4:
    sub_23AA0BAE4(v10);

LABEL_5:
    if (++v13 == v12)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

uint64_t sub_23AA0AE7C()
{
  v1 = sub_23AA0CEC4();
  v17 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23AA0CF24();
  v4 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0CF44();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 40);
  sub_23AA0CF34();
  sub_23AA0D574();

  (*(v8 + 8))(v10, v7);
  result = sub_23AA0CEB4();
  if ((result & 1) == 0)
  {
    sub_23A9164A0();
    v13 = sub_23AA0D534();
    v14 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_23AA0BA60;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9AD0B8;
    aBlock[3] = &block_descriptor_10;
    v15 = _Block_copy(aBlock);

    sub_23AA0CEE4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23A963494();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
    sub_23A9634EC();
    sub_23AA0D764();
    MEMORY[0x23EE8FFE0](0, v6, v3, v15);
    _Block_release(v15);

    (*(v17 + 8))(v3, v1);
    return (*(v4 + 8))(v6, v16);
  }

  return result;
}

uint64_t sub_23AA0B1CC(uint64_t a1)
{
  v1 = sub_23AA0BDE4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_23AA0B364(v4);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_debugDelegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 8);
        ObjectType = swift_getObjectType();
        (*(v9 + 16))(v4, ObjectType, v9);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    v11 = *(v6 + 40);
    sub_23AA0D584();

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

void sub_23AA0B364(uint64_t a1@<X8>)
{
  v3 = sub_23AA0BE34();
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_23AA0BDE4();
  v5 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  sub_23AA0BDD4();
  swift_beginAccess();
  v7 = *(v1 + 48);
  if (v7 >> 62)
  {
LABEL_16:
    v8 = sub_23AA0D7F4();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = 0;
    v43 = v7 & 0xFFFFFFFFFFFFFF8;
    v44 = v7 & 0xC000000000000001;
    v39 = 0x800000023AA24C30;
    v40 = "";
    v38 = (v5 + 8);
    v10 = MEMORY[0x277D837D0];
    v52 = xmmword_23AA15450;
    v41 = v8;
    v42 = v7;
    while (1)
    {
      if (v44)
      {
        v5 = MEMORY[0x23EE90360](v9, v7);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }
      }

      else
      {
        if (v9 >= *(v43 + 16))
        {
          __break(1u);
          goto LABEL_16;
        }

        v5 = *(v7 + 8 * v9 + 32);

        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_13;
        }
      }

      v50 = v11;
      v51 = v9;
      v53 = sub_23AA0C074();
      v54 = v12;
      sub_23A92F104();
      v13 = sub_23AA0D6F4();

      v14 = *(v13 + 16);
      if (!v14)
      {
        break;
      }

      v15 = (v13 + 32 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = v15[3];

      v49 = MEMORY[0x23EE8FC60](v16, v17, v18, v19);
      v21 = v20;

      v23 = *(v5 + 16);
      v22 = *(v5 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1430, &unk_23AA12E20);
      v24 = swift_allocObject();
      *(v24 + 16) = v52;
      v25 = *(v5 + OBJC_IVAR____TtCC8RoomPlan12OULogManagerP33_32039FB16B3B97E8BBC711C9428C4A1610OULogEntry_dimensions);
      v26 = MEMORY[0x277D83A90];
      *(v24 + 56) = MEMORY[0x277D83A90];
      v27 = MEMORY[0x277D83B08];
      *(v24 + 64) = MEMORY[0x277D83B08];
      *(v24 + 32) = v25;
      *(v24 + 72) = DWORD1(v25);
      *(v24 + 96) = v26;
      *(v24 + 104) = v27;
      *(v24 + 136) = v26;
      *(v24 + 144) = v27;
      *(v24 + 112) = DWORD2(v25);

      v28 = sub_23AA0D164();
      v30 = v29;

      v32 = MEMORY[0x23EE8FDA0](v31, v10);
      v34 = v33;

      v53 = v23;
      v54 = v22;
      MEMORY[0x23EE8FCA0](32, 0xE100000000000000);
      MEMORY[0x23EE8FCA0](v49, v21);

      MEMORY[0x23EE8FCA0](8250, 0xE200000000000000);
      MEMORY[0x23EE8FCA0](v28, v30);
      MEMORY[0x23EE8FCA0](32, 0xE100000000000000);
      MEMORY[0x23EE8FCA0](v32, v34);
      MEMORY[0x23EE8FCA0](2592, 0xE200000000000000);
      sub_23AA0BE24();
      v35 = v45;
      sub_23AA0BDF4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1760, &unk_23AA1A7C0);
      v36 = swift_allocObject();
      *(v36 + 16) = v52;
      v37 = v39;
      *(v36 + 32) = 0xD000000000000014;
      *(v36 + 40) = v37;
      *(v36 + 56) = v10;
      *(v36 + 64) = v28;
      *(v36 + 72) = v30;
      *(v36 + 120) = v10;
      *(v36 + 88) = v10;
      *(v36 + 96) = v32;
      *(v36 + 104) = v34;
      sub_23AA0DCE4();

      v53 = [objc_opt_self() systemGreenColor];
      sub_23A9633E8();
      sub_23AA0BE04();
      sub_23AA0BDC4();

      (*v38)(v35, v46);
      v9 = v51 + 1;
      v7 = v42;
      if (v50 == v41)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    v53 = [objc_opt_self() systemFontOfSize_];
    sub_23AA0B9D4();
    sub_23AA0BE04();
  }
}

uint64_t type metadata accessor for OULogManager.OULogEntry(uint64_t a1)
{
  result = qword_27DFB1828;
  if (!qword_27DFB1828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23AA0B91C(uint64_t a1)
{
  result = sub_23AA0C0E4();
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

unint64_t sub_23AA0B9D4()
{
  result = qword_27DFB1838;
  if (!qword_27DFB1838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1838);
  }

  return result;
}

uint64_t sub_23AA0BA28()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_23AA0BA80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CapturedRoom.Object(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23AA0BAE4(uint64_t a1)
{
  v2 = type metadata accessor for CapturedRoom.Object(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23AA0BB54()
{

  return swift_deallocClassInstance();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincospif_stret(float a1)
{
  MEMORY[0x2822043D0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}