uint64_t sub_26A07C1C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369548, &unk_26A0A05A0);
  v36 = v4;
  result = sub_26A09E384();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 8 * v21;
      v26 = *v25;
      v38 = *(v25 + 5);
      v39 = *(v25 + 4);
      v37 = *(v25 + 6);
      if ((v36 & 1) == 0)
      {
      }

      sub_26A09E514();
      sub_26A09DEE4();
      result = sub_26A09E534();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 8 * v15;
      *v17 = v26;
      *(v17 + 4) = v39;
      *(v17 + 5) = v38;
      *(v17 + 6) = v37;
      ++*(v7 + 16);
      v5 = v35;
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
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26A07C498(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369550, &unk_26A09F830);
  v35 = v4;
  result = sub_26A09E384();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v36 = *(*(v5 + 56) + v21);
      if ((v35 & 1) == 0)
      {

        v25 = v36;
        v26 = *(&v36 + 1);
      }

      sub_26A09E514();
      sub_26A09DEE4();
      result = sub_26A09E534();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v36;
      ++*(v7 + 16);
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
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26A07C75C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694A0, &qword_26A09F6B0);
  v29 = v3;
  result = sub_26A09E384();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 64);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = result + 64;
    while (1)
    {
      if (!v11)
      {
        v19 = v7;
        while (1)
        {
          v7 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_42;
          }

          if (v7 >= v12)
          {
            break;
          }

          v20 = v8[v7];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v11 = (v20 - 1) & v20;
            goto LABEL_16;
          }
        }

        if (v29)
        {
          v28 = 1 << *(v4 + 32);
          if (v28 >= 64)
          {
            bzero((v4 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          }

          else
          {
            *v8 = -1 << v28;
          }

          *(v4 + 16) = 0;
        }

        break;
      }

      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_16:
      v21 = v18 | (v7 << 6);
      v22 = *(*(v4 + 48) + 8 * v21);
      v30 = *(*(v4 + 56) + v21);
      if ((v29 & 1) == 0)
      {
        sub_26A077CA8(v22);
      }

      sub_26A09E514();
      if (v22 <= 1)
      {
        if (v22 > 1)
        {
          goto LABEL_34;
        }
      }

      else if (v22 != 2 && v22 != 3 && v22 != 4)
      {
LABEL_34:
        v27 = sub_26A09DEA4();
        MEMORY[0x26D659940](v27);
      }

      sub_26A09DEE4();

      result = sub_26A09E534();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + 8 * v17) = v22;
      *(*(v6 + 56) + v17) = v30;
      ++*(v6 + 16);
    }
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26A07CB10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369450, &unk_26A09F910);
  v37 = v4;
  result = sub_26A09E384();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 72 * v21;
      if (v37)
      {
        v38 = *(v25 + 8);
        v39 = *v25;
        v40 = *(v25 + 24);
        v42 = *(v25 + 32);
        v43 = *(v25 + 56);
        v41 = *(v25 + 40);
      }

      else
      {
        v26 = *(v25 + 16);
        v27 = *(v25 + 32);
        v28 = *(v25 + 48);
        *&v46[32] = *(v25 + 64);
        *v46 = v27;
        *&v46[16] = v28;
        *&v45[16] = v26;
        *v45 = *v25;
        v43 = *&v46[24];
        v41 = *&v46[8];
        v42 = v27;
        v39 = *v45;
        v40 = *(&v26 + 1);
        v38 = *&v45[8];

        sub_26A077C4C(v45, v44);
      }

      sub_26A09E514();
      sub_26A09DEE4();
      result = sub_26A09E534();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 72 * v15;
      *v17 = v39;
      *(v17 + 8) = v38;
      *(v17 + 24) = v40;
      *(v17 + 32) = v42;
      *(v17 + 56) = v43;
      *(v17 + 40) = v41;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_26A07CE78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_26A09E384();
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

      sub_26A09E514();
      sub_26A09DEE4();
      result = sub_26A09E534();
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

uint64_t sub_26A07D118(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369520, &qword_26A09F800);
  v37 = v4;
  result = sub_26A09E384();
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

      sub_26A09E514();
      sub_26A09DEE4();
      result = sub_26A09E534();
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

uint64_t sub_26A07D3D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369530, &unk_26A09F810);
  v33 = v4;
  result = sub_26A09E384();
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
        sub_26A0697B4(v24, v34);
      }

      else
      {
        sub_26A069E3C(v24, v34);
      }

      sub_26A09E514();
      sub_26A09DEE4();
      result = sub_26A09E534();
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
      result = sub_26A0697B4(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_26A07D690(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369540, &unk_26A09F820);
  v34 = v4;
  result = sub_26A09E384();
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

      sub_26A09E514();
      sub_26A09DEE4();
      result = sub_26A09E534();
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

uint64_t sub_26A07D938(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694E0, &qword_26A09F790);
  v34 = v4;
  result = sub_26A09E384();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v35 = *(v20 + 8 * v19);
      if ((v34 & 1) == 0)
      {
        v22 = v21;
      }

      sub_26A09DEA4();
      sub_26A09E514();
      sub_26A09DEE4();
      v23 = sub_26A09E534();

      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v35;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26A07DBF4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26A09E1F4() + 1) & ~v5;
    do
    {
      sub_26A09E514();

      sub_26A09DEE4();
      v11 = sub_26A09E534();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (v3 != v6 || v17 >= v18 + 3)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26A07DDB0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26A09E1F4() + 1) & ~v5;
    do
    {
      sub_26A09E514();

      sub_26A09DEE4();
      v9 = sub_26A09E534();

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

unint64_t sub_26A07DF60(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26A09E1F4() + 1) & ~v5;
    while (1)
    {
      sub_26A09E514();

      sub_26A09DEE4();
      v9 = sub_26A09E534();

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
      v15 = *(*(sub_26A09DD34() - 8) + 72);
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

char *sub_26A07E14C(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26A09E1F4() + 1) & ~v5;
    do
    {
      sub_26A09E514();

      sub_26A09DEE4();
      v9 = sub_26A09E534();

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
        result = (v14 + 72 * v3);
        v15 = (v14 + 72 * v6);
        if (v3 != v6 || result >= v15 + 72)
        {
          result = memmove(result, v15, 0x48uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26A07E300(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26A099F20(a2, a3);
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
      sub_26A07BB40(v16, a4 & 1);
      v11 = sub_26A099F20(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_26A09E504();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_26A07F200();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 48 * v11);
    v23 = a1[1];
    *v22 = *a1;
    v22[1] = v23;
    v22[2] = a1[2];
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v21[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v21[7] + 48 * v11);
  v27 = a1[1];
  *v26 = *a1;
  v26[1] = v27;
  v26[2] = a1[2];
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

uint64_t sub_26A07E4B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26A099F20(a2, a3);
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
      sub_26A07CE78(v16, a4 & 1, &qword_280369478, &unk_26A09F680);
      v11 = sub_26A099F20(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_26A09E504();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_26A07FC68(&qword_280369478, &unk_26A09F680);
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

uint64_t sub_26A07E658(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_26A099F20(a2, a3);
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
      sub_26A07F3B0();
      goto LABEL_7;
    }

    sub_26A07BE48(v15, a4 & 1);
    v26 = sub_26A099F20(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_26A09E504();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_26A09DD34();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_26A07F080(v12, a2, a3, a1, v18);
}

uint64_t sub_26A07E7D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_26A099F20(a2, a3);
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
      v19 = result;
      sub_26A07F630();
      result = v19;
      goto LABEL_8;
    }

    sub_26A07C1C8(v16, a4 & 1);
    result = sub_26A099F20(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_26A09E504();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 8 * result;
    *v22 = a1;
    *(v22 + 4) = BYTE4(a1) & 1;
    *(v22 + 5) = BYTE5(a1) & 1;
    *(v22 + 6) = BYTE6(a1) & 1;
  }

  else
  {
    sub_26A07F130(result, a2, a3, a1 & 0x10101FFFFFFFFLL, v21);
  }

  return result;
}

void sub_26A07E92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_26A099F20(a3, a4);
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
      sub_26A07C498(v18, a5 & 1);
      v13 = sub_26A099F20(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_26A09E504();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_26A07F7BC();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    v25 = *(v24 + 8);
    v30 = *v24;
    *v24 = a1;
    *(v24 + 8) = a2;

    return;
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

unint64_t sub_26A07EACC(char a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_26A099F98(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_26A07C75C(v14, a3 & 1);
      result = sub_26A099F98(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_26A09E504();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_26A07F948();
      result = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + result) = a1;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a2;
  *(v19[7] + result) = a1;
  v20 = v19[2];
  v13 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;

  return sub_26A077CA8(a2);
}

uint64_t sub_26A07EC14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26A099F20(a2, a3);
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
      sub_26A07CB10(v16, a4 & 1);
      v11 = sub_26A099F20(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_26A09E504();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_26A07FAA4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 72 * v11;

    return sub_26A0817F0(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 72 * v11;
  *v25 = *a1;
  v26 = *(a1 + 16);
  v27 = *(a1 + 32);
  v28 = *(a1 + 48);
  *(v25 + 64) = *(a1 + 64);
  *(v25 + 32) = v27;
  *(v25 + 48) = v28;
  *(v25 + 16) = v26;
  v29 = v21[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v30;
}

_OWORD *sub_26A07EDB4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26A099F20(a2, a3);
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
      sub_26A07FF40();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26A07D3D8(v16, a4 & 1);
    v11 = sub_26A099F20(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_26A09E504();
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

    return sub_26A0697B4(a1, v22);
  }

  else
  {
    sub_26A07F194(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_26A07EF04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26A099F20(a2, a3);
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
      sub_26A07D690(v16, a4 & 1);
      v11 = sub_26A099F20(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_26A09E504();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_26A0800E4();
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

uint64_t sub_26A07F080(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_26A09DD34();
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

unint64_t sub_26A07F130(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 8 * result;
  *v6 = a4;
  *(v6 + 4) = BYTE4(a4) & 1;
  *(v6 + 5) = BYTE5(a4) & 1;
  *(v6 + 6) = BYTE6(a4) & 1;
  v7 = a5[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v9;
  }

  return result;
}

_OWORD *sub_26A07F194(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26A0697B4(a4, (a5[7] + 32 * a1));
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

void *sub_26A07F200()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369538, &unk_26A09F930);
  v2 = *v0;
  v3 = sub_26A09E374();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v28 = *(v22 + 32);
        v27 = *(v22 + 40);
        v29 = (*(v4 + 48) + v18);
        *v29 = v20;
        v29[1] = v21;
        v30 = *(v4 + 56) + v17;
        *v30 = v23;
        *(v30 + 8) = v24;
        *(v30 + 16) = v25;
        *(v30 + 24) = v26;
        *(v30 + 32) = v28;
        *(v30 + 40) = v27;
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

char *sub_26A07F3B0()
{
  v1 = v0;
  v35 = sub_26A09DD34();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369470, &qword_26A09F678);
  v3 = *v0;
  v4 = sub_26A09E374();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
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

  return result;
}

void *sub_26A07F630()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369548, &unk_26A0A05A0);
  v2 = *v0;
  v3 = sub_26A09E374();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 8;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 4);
        v25 = *(v22 + 5);
        LOBYTE(v22) = *(v22 + 6);
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 4) = v24;
        *(v27 + 5) = v25;
        *(v27 + 6) = v22;
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

id sub_26A07F7BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369550, &unk_26A09F830);
  v2 = *v0;
  v3 = sub_26A09E374();
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
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v23 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v23;

        v22 = v23;
        result = *(&v23 + 1);
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

void *sub_26A07F948()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694A0, &qword_26A09F6B0);
  v2 = *v0;
  v3 = sub_26A09E374();
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
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        result = sub_26A077CA8(v18);
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

void *sub_26A07FAA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369450, &unk_26A09F910);
  v2 = *v0;
  v3 = sub_26A09E374();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 72;
        v22 = *(v2 + 56) + v17;
        v24 = *(v22 + 16);
        v23 = *(v22 + 32);
        v25 = *(v22 + 48);
        v36 = *(v22 + 64);
        v35 = v25;
        v32 = *v22;
        v33 = v24;
        v34 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v32;
        v28 = v33;
        v29 = v34;
        v30 = v35;
        *(v27 + 64) = v36;
        *(v27 + 32) = v29;
        *(v27 + 48) = v30;
        *(v27 + 16) = v28;

        result = sub_26A077C4C(&v32, v31);
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

void *sub_26A07FC68(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_26A09E374();
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

  return result;
}

void *sub_26A07FDC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369520, &qword_26A09F800);
  v2 = *v0;
  v3 = sub_26A09E374();
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
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_26A07FF40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369530, &unk_26A09F810);
  v2 = *v0;
  v3 = sub_26A09E374();
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
        sub_26A069E3C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26A0697B4(v25, (*(v4 + 56) + v22));
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

void *sub_26A0800E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369540, &unk_26A09F820);
  v2 = *v0;
  v3 = sub_26A09E374();
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

id sub_26A080254()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694E0, &qword_26A09F790);
  v2 = *v0;
  v3 = sub_26A09E374();
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

char *sub_26A0803B0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A0803F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26A0803D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A0804FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26A0803F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803695C8, &qword_26A09F908);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26A0804FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369480, &qword_26A09F690);
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

uint64_t sub_26A080608(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D659AF0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26A09352C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_26A0806A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26A08179C();
  result = MEMORY[0x26D659AF0](v2, &type metadata for SmartStackAuthorization, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_26A077CA8(v6);
      sub_26A09367C(&v7, v6);
      sub_26A077CFC(v7);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_26A080728(uint64_t a1)
{
  if (!a1)
  {
    v43 = MEMORY[0x277D84F90];

    return sub_26A077184(v43);
  }

  if (!*(a1 + 16))
  {
    return sub_26A077184(MEMORY[0x277D84F90]);
  }

  v2 = sub_26A099F20(0x626967696C656E69, 0xED00007974696C69);
  if ((v3 & 1) == 0)
  {
    return sub_26A077184(MEMORY[0x277D84F90]);
  }

  sub_26A069E3C(*(a1 + 56) + 32 * v2, &v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369290, &qword_26A09F7E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_26A077184(MEMORY[0x277D84F90]);
  }

  v4 = 0;
  v5 = v57 + 64;
  v50 = v57;
  v6 = 1 << *(v57 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v57 + 64);
  v9 = (v6 + 63) >> 6;
  v44 = MEMORY[0x277D84F98];
  v46 = v57 + 64;
  v49 = v9;
LABEL_8:
  v10 = v4;
  if (v8)
  {
    while (1)
    {
      while (1)
      {
        v11 = v10;
LABEL_19:
        v14 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v15 = v14 | (v11 << 6);
        v16 = (*(v50 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        sub_26A069E3C(*(v50 + 56) + 32 * v15, &v54);
        *&v57 = v18;
        *(&v57 + 1) = v17;
        sub_26A0697B4(&v54, &v58);

        v13 = v11;
LABEL_20:
        v60 = v57;
        v61[0] = v58;
        v61[1] = v59;
        v19 = *(&v57 + 1);
        if (!*(&v57 + 1))
        {

          return v44;
        }

        v20 = v60;
        sub_26A0697B4(v61, &v57);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692A0, &qword_26A09F900);
        if (swift_dynamicCast())
        {
          break;
        }

        v10 = v13;
        if (!v8)
        {
          goto LABEL_12;
        }
      }

      v45 = v20;
      v51 = v13;
      v21 = *(v54 + 16);
      if (v21)
      {
        break;
      }

      v23 = MEMORY[0x277D84F90];
LABEL_49:
      v5 = v46;
      if (*(v23 + 2))
      {
        v47 = sub_26A0806A0(v23);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v57 = v44;
        v29 = sub_26A099F20(v45, v19);
        v31 = *(v44 + 16);
        v32 = (v30 & 1) == 0;
        v33 = __OFADD__(v31, v32);
        v34 = v31 + v32;
        if (v33)
        {
          goto LABEL_68;
        }

        v35 = v30;
        if (*(v44 + 24) >= v34)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v41 = v29;
            sub_26A07FC68(&qword_280369478, &unk_26A09F680);
            v29 = v41;
          }
        }

        else
        {
          sub_26A07CE78(v34, isUniquelyReferenced_nonNull_native, &qword_280369478, &unk_26A09F680);
          v29 = sub_26A099F20(v45, v19);
          if ((v35 & 1) != (v36 & 1))
          {
            goto LABEL_70;
          }
        }

        v37 = v57;
        v44 = v57;
        if (v35)
        {
          *(*(v57 + 56) + 8 * v29) = v47;

          v4 = v51;
        }

        else
        {
          *(v57 + 8 * (v29 >> 6) + 64) |= 1 << v29;
          v38 = (v37[6] + 16 * v29);
          *v38 = v45;
          v38[1] = v19;
          *(v37[7] + 8 * v29) = v47;
          v39 = v37[2];
          v33 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v33)
          {
            goto LABEL_69;
          }

          v37[2] = v40;
          v4 = v51;
        }

        goto LABEL_8;
      }

      v10 = v51;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    v48 = v19;
    v22 = v54 + 32;
    v23 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_26A069E3C(v22, &v57);
      sub_26A069E3C(&v57, &v54);
      if (swift_dynamicCast())
      {
        v24 = sub_26A09E3B4();
        if (v24 <= 1)
        {
          if (!v24)
          {

            v25 = 0;
            goto LABEL_40;
          }

          if (v24 == 1)
          {

            v25 = 1;
            goto LABEL_40;
          }
        }

        else
        {
          switch(v24)
          {
            case 5:

              v25 = 4;
              goto LABEL_40;
            case 3:

              v25 = 3;
              goto LABEL_40;
            case 2:

              v25 = 2;
LABEL_40:
              __swift_destroy_boxed_opaque_existential_0(&v57);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v23 = sub_26A07B4A8(0, *(v23 + 2) + 1, 1, v23);
              }

              v27 = *(v23 + 2);
              v26 = *(v23 + 3);
              if (v27 >= v26 >> 1)
              {
                v23 = sub_26A07B4A8((v26 > 1), v27 + 1, 1, v23);
              }

              *(v23 + 2) = v27 + 1;
              *&v23[8 * v27 + 32] = v25;
              goto LABEL_25;
          }
        }

        if (sub_26A09BE24(0x694B68746C616568, 0xEA00000000002D74, v52, v53))
        {
          sub_26A081748();
          sub_26A09E0D4();

          MEMORY[0x26D659910](v54, *(&v54 + 1), v55, v56);

          v25 = sub_26A09DE74();

          v9 = v49;
          goto LABEL_40;
        }

        __swift_destroy_boxed_opaque_existential_0(&v57);

        v9 = v49;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v57);
      }

LABEL_25:
      v22 += 32;
      if (!--v21)
      {

        v19 = v48;
        goto LABEL_49;
      }
    }
  }

LABEL_12:
  if (v9 <= v10 + 1)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      v8 = 0;
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      goto LABEL_20;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  result = sub_26A09E504();
  __break(1u);
  return result;
}

uint64_t sub_26A080DC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v51 - v3;
  v5 = sub_26A09DD34();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v51 - v10;
  if (!a1)
  {
    v50 = MEMORY[0x277D84F90];

    return sub_26A077198(v50);
  }

  if (!*(a1 + 16))
  {
    return sub_26A077198(MEMORY[0x277D84F90]);
  }

  v12 = sub_26A099F20(0x617373696D736964, 0xEE0073657461446CLL);
  if ((v13 & 1) == 0)
  {
    return sub_26A077198(MEMORY[0x277D84F90]);
  }

  sub_26A069E3C(*(a1 + 56) + 32 * v12, &v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369290, &qword_26A09F7E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_26A077198(MEMORY[0x277D84F90]);
  }

  v59 = v11;
  v60 = v9;
  v14 = 0;
  v16 = v64 + 64;
  v15 = *(v64 + 64);
  v62 = v64;
  v17 = 1 << *(v64 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v15;
  v20 = (v17 + 63) >> 6;
  v21 = (v6 + 56);
  v58 = (v6 + 32);
  v57 = (v6 + 16);
  v55 = v6 + 8;
  v56 = v6;
  v53 = v6 + 40;
  v61 = MEMORY[0x277D84F98];
  while (1)
  {
    v22 = v14;
    if (!v19)
    {
      break;
    }

    v23 = v14;
LABEL_17:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v26 = v25 | (v23 << 6);
    v27 = (*(v62 + 48) + 16 * v26);
    v29 = *v27;
    v28 = v27[1];
    sub_26A069E3C(*(v62 + 56) + 32 * v26, v63);
    *&v64 = v29;
    *(&v64 + 1) = v28;
    sub_26A0697B4(v63, &v65);

    v14 = v23;
LABEL_18:
    v67 = v64;
    v68[0] = v65;
    v68[1] = v66;
    v30 = *(&v64 + 1);
    if (!*(&v64 + 1))
    {

      return v61;
    }

    v31 = v67;
    sub_26A0697B4(v68, &v64);
    if (swift_dynamicCast())
    {
      (*v21)(v4, 0, 1, v5);
      v32 = v59;
      v52 = *v58;
      v52(v59, v4, v5);
      (*v57)(v60, v32, v5);
      v33 = v61;
      LODWORD(v54) = swift_isUniquelyReferenced_nonNull_native();
      *&v64 = v33;
      v34 = sub_26A099F20(v31, v30);
      v36 = *(v33 + 16);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        goto LABEL_40;
      }

      if (*(v33 + 24) >= v39)
      {
        if (v54)
        {
          if ((v35 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v54 = v34;
          LODWORD(v61) = v35;
          sub_26A07F3B0();
          v34 = v54;
          if ((v61 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

LABEL_29:
        v41 = v34;

        v61 = v64;
        v42 = v56;
        (*(v56 + 40))(*(v64 + 56) + *(v56 + 72) * v41, v60, v5);
        (*(v42 + 8))(v59, v5);
      }

      else
      {
        LODWORD(v61) = v35;
        sub_26A07BE48(v39, v54);
        v34 = sub_26A099F20(v31, v30);
        if ((v61 & 1) != (v40 & 1))
        {
          goto LABEL_42;
        }

        if (v61)
        {
          goto LABEL_29;
        }

LABEL_31:
        v43 = v64;
        *(v64 + 8 * (v34 >> 6) + 64) |= 1 << v34;
        v44 = (*(v43 + 48) + 16 * v34);
        *v44 = v31;
        v44[1] = v30;
        v45 = v43;
        v46 = v56;
        v52((*(v43 + 56) + *(v56 + 72) * v34), v60, v5);
        (*(v46 + 8))(v59, v5);
        v47 = *(v45 + 16);
        v38 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (v38)
        {
          goto LABEL_41;
        }

        v61 = v45;
        *(v45 + 16) = v48;
      }
    }

    else
    {

      (*v21)(v4, 1, 1, v5);
      sub_26A0815B0(v4);
    }
  }

  if (v20 <= v14 + 1)
  {
    v24 = v14 + 1;
  }

  else
  {
    v24 = v20;
  }

  v14 = v24 - 1;
  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      v19 = 0;
      v65 = 0u;
      v66 = 0u;
      v64 = 0u;
      goto LABEL_18;
    }

    v19 = *(v16 + 8 * v23);
    ++v22;
    if (v19)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_26A09E504();
  __break(1u);
  return result;
}

uint64_t sub_26A0813D4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_2Tm(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

uint64_t sub_26A0814D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A081540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369590, &qword_26A09F868);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A0815B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for AuthorizationPersistence(uint64_t a1)
{
  result = qword_2803695A0;
  if (!qword_2803695A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A08166C(uint64_t a1)
{
  result = sub_26A09DE24();
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

unint64_t sub_26A081748()
{
  result = qword_2803695C0;
  if (!qword_2803695C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803695C0);
  }

  return result;
}

unint64_t sub_26A08179C()
{
  result = qword_2803695D0;
  if (!qword_2803695D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803695D0);
  }

  return result;
}

uint64_t sub_26A081854()
{
  sub_26A09DE14();
  v1 = OBJC_IVAR____TtC18SmartStackSettings30HealthKitAuthorizationProvider_hkAuthorizationStore;
  *(v0 + OBJC_IVAR____TtC18SmartStackSettings30HealthKitAuthorizationProvider_hkAuthorizationStore) = 0;
  v2 = OBJC_IVAR____TtC18SmartStackSettings30HealthKitAuthorizationProvider_authorizationRecordByBundleIdentifier;
  *(v0 + v2) = sub_26A077080(MEMORY[0x277D84F90]);
  sub_26A069F94(0, &qword_280369648, 0x277D44450);
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 uncheckedHealthStore];
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  }

  v6 = [objc_allocWithZone(MEMORY[0x277CCD060]) initWithHealthStore_];

  v7 = *(v0 + v1);
  *(v0 + v1) = v6;

  return v0;
}

uint64_t sub_26A081988(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC18SmartStackSettings30HealthKitAuthorizationProvider_authorizationRecordByBundleIdentifier;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_26A099F20(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  return v9;
}

void sub_26A081A18(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v4 = sub_26A09DE24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC18SmartStackSettings30HealthKitAuthorizationProvider_logger, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = (v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v9, v7, v4);
  v12 = (v11 + v10);
  *v12 = v18;
  v12[1] = a2;
  aBlock[4] = sub_26A0833D4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A081E74;
  aBlock[3] = &block_descriptor_11;
  v13 = _Block_copy(aBlock);

  [v8 setAuthorizationStreamEventHandler_];
  _Block_release(v13);
  [v8 subscribeToAuthorizationStreamWithIdentifier_];
  v14 = sub_26A09DE04();
  v15 = sub_26A09E124();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_26A066000, v14, v15, "Registered event observer", v16, 2u);
    MEMORY[0x26D65A520](v16, -1, -1);
  }
}

void sub_26A081C88(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = sub_26A09DF14();
  v6 = v5;
  if (sub_26A09DEF4() < 1)
  {

    oslog = sub_26A09DE04();
    v11 = sub_26A09E114();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_26A066000, oslog, v11, "Received HealthKit authorization event with invalid bundle identifier", v12, 2u);
      MEMORY[0x26D65A520](v12, -1, -1);
    }
  }

  else
  {

    v7 = sub_26A09DE04();
    v8 = sub_26A09E124();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_26A089EEC(v4, v6, &v14);
      _os_log_impl(&dword_26A066000, v7, v8, "Received HealthKit authorization event for %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x26D65A520](v10, -1, -1);
      MEMORY[0x26D65A520](v9, -1, -1);
    }

    a3(v4, v6);
  }
}

uint64_t sub_26A081E74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_26A081EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A0831F8();
  sub_26A09DFA4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return sub_26A091978(a1, a2, a4);
}

uint64_t sub_26A081FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_26A06BFC4;

  return sub_26A08207C(a5, a6);
}

uint64_t sub_26A08207C(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369618, &qword_26A09FA18);
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A0831F8();
  v6 = sub_26A09DFA4();
  v3[32] = v6;
  v3[33] = v5;

  return MEMORY[0x2822009F8](sub_26A0821A8, v6, v5);
}

uint64_t sub_26A0821A8()
{
  v17 = v0;
  v0[34] = OBJC_IVAR____TtC18SmartStackSettings30HealthKitAuthorizationProvider_logger;

  v1 = sub_26A09DE04();
  v2 = sub_26A09E124();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[26];
    v3 = v0[27];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_26A089EEC(v4, v3, &v16);
    _os_log_impl(&dword_26A066000, v1, v2, "Updating record for %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x26D65A520](v6, -1, -1);
    MEMORY[0x26D65A520](v5, -1, -1);
  }

  v8 = *(v0[28] + OBJC_IVAR____TtC18SmartStackSettings30HealthKitAuthorizationProvider_hkAuthorizationStore);
  v0[35] = v8;
  if (v8)
  {
    v9 = v0[30];
    v10 = v0[31];
    v11 = v0[29];
    v15 = v8;
    v12 = sub_26A09DE74();
    v0[36] = v12;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_26A082484;
    swift_continuation_init();
    v0[17] = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369620, &unk_26A09FA20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369628, &unk_26A09FBA0);
    sub_26A09DFB4();
    (*(v9 + 32))(boxed_opaque_existential_0, v10, v11);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_26A082DAC;
    v0[13] = &block_descriptor_0;
    [v15 fetchAuthorizationRecordsForBundleIdentifier:v12 completion:?];
    (*(v9 + 8))(boxed_opaque_existential_0, v11);
    v7 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v7);
}

uint64_t sub_26A082484()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);
  if (v2)
  {
    v5 = sub_26A082AD8;
  }

  else
  {
    v5 = sub_26A0825B4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

void sub_26A0825B4()
{
  v57 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 168);

  v3 = sub_26A077B0C(MEMORY[0x277D84F90]);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = sub_26A09E344();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v2 = v4 | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v5 = v2 + 64;
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 64);
  }

  v11 = 0;
  v50 = v6;
  v12 = (v6 + 64) >> 6;
  v53 = v12;
  v54 = v5;
  for (i = v2; ; v2 = i)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      v21 = sub_26A09E354();
      if (!v21 || (v23 = v22, v51[23] = v21, sub_26A069F94(0, &qword_280369630, 0x277CCD720), swift_dynamicCast(), v19 = v51[22], v51[25] = v23, sub_26A069F94(0, &qword_280369638, 0x277CCDD20), swift_dynamicCast(), v20 = v51[24], v15 = v11, v16 = v7, !v19))
      {
LABEL_32:
        sub_26A0790E8(v2, v54);

        v38 = sub_26A09DE04();
        v39 = sub_26A09E124();

        if (os_log_type_enabled(v38, v39))
        {
          v41 = v51[26];
          v40 = v51[27];
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v56 = v43;
          *v42 = 136446210;
          *(v42 + 4) = sub_26A089EEC(v41, v40, &v56);
          _os_log_impl(&dword_26A066000, v38, v39, "Updated record for %{public}s successfully", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v43);
          MEMORY[0x26D65A520](v43, -1, -1);
          MEMORY[0x26D65A520](v42, -1, -1);
        }

        v45 = v51[27];
        v44 = v51[28];
        v46 = v51[26];
        v47 = OBJC_IVAR____TtC18SmartStackSettings30HealthKitAuthorizationProvider_authorizationRecordByBundleIdentifier;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = *(v44 + v47);
        *(v44 + v47) = 0x8000000000000000;
        sub_26A07EF04(v3, v46, v45, isUniquelyReferenced_nonNull_native);

        *(v44 + v47) = v56;
        swift_endAccess();

        v49 = v51[1];

        v49();
        return;
      }
    }

    else
    {
      v13 = v11;
      v14 = v7;
      v15 = v11;
      if (!v7)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= v12)
          {
            goto LABEL_32;
          }

          v14 = *(v5 + 8 * v15);
          ++v13;
          if (v14)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return;
      }

LABEL_15:
      v16 = (v14 - 1) & v14;
      v17 = (v15 << 9) | (8 * __clz(__rbit64(v14)));
      v18 = *(*(v2 + 56) + v17);
      v19 = *(*(v2 + 48) + v17);
      v20 = v18;
      if (!v19)
      {
        goto LABEL_32;
      }
    }

    v55 = v16;
    v24 = [v19 identifier];
    if (!v24)
    {
      sub_26A09DEA4();
      v24 = sub_26A09DE74();
    }

    v25 = [v20 status];
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v56 = v3;
    v28 = sub_26A09A024(v24);
    v29 = v3[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_41;
    }

    v32 = v27;
    if (v3[3] < v31)
    {
      break;
    }

    if (v26)
    {
      v12 = v53;
      if (v27)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_26A080254();
      v3 = v56;
      v12 = v53;
      if (v32)
      {
LABEL_8:
        *(v3[7] + 8 * v28) = v25;

        goto LABEL_9;
      }
    }

LABEL_28:
    v3[(v28 >> 6) + 8] |= 1 << v28;
    *(v3[6] + 8 * v28) = v24;
    *(v3[7] + 8 * v28) = v25;

    v35 = v3[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_42;
    }

    v3[2] = v37;
LABEL_9:
    v11 = v15;
    v5 = v54;
    v7 = v55;
  }

  sub_26A07D938(v31, v26);
  v3 = v56;
  v33 = sub_26A09A024(v24);
  if ((v32 & 1) == (v34 & 1))
  {
    v28 = v33;
    v12 = v53;
    if (v32)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

  type metadata accessor for HKTypeIdentifier(0);

  sub_26A09E504();
}

uint64_t sub_26A082AD8(uint64_t a1)
{
  v20 = v1;
  v3 = v1[36];
  v2 = v1[37];
  v4 = v1[35];
  swift_willThrow();

  v5 = v2;
  v6 = sub_26A09DE04();
  v7 = sub_26A09E114();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[37];
  if (v8)
  {
    v11 = v1[26];
    v10 = v1[27];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_26A089EEC(v11, v10, &v19);
    *(v12 + 12) = 2112;
    v15 = v9;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_26A066000, v6, v7, "Failed to fetch auth for %s: %@", v12, 0x16u);
    sub_26A069DDC(v13, &qword_280369720, &qword_26A09FA30);
    MEMORY[0x26D65A520](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26D65A520](v14, -1, -1);
    MEMORY[0x26D65A520](v12, -1, -1);
  }

  else
  {
  }

  v17 = v1[1];

  return v17();
}

id sub_26A082CC4(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = sub_26A09DE74();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_26A09DC64();

    swift_willThrow();
  }

  return v5;
}

void sub_26A082DAC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369618, &qword_26A09FA18);
    sub_26A09DFC4();
  }

  else
  {
    sub_26A069F94(0, &qword_280369630, 0x277CCD720);
    sub_26A069F94(0, &qword_280369638, 0x277CCDD20);
    sub_26A0832CC();
    sub_26A09DE64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369618, &qword_26A09FA18);
    sub_26A09DFD4();
  }
}

uint64_t sub_26A082EA0()
{
  v1 = OBJC_IVAR____TtC18SmartStackSettings30HealthKitAuthorizationProvider_logger;
  v2 = sub_26A09DE24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for HealthKitAuthorizationProvider(uint64_t a1)
{
  result = qword_2803695F8;
  if (!qword_2803695F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A082FB0(uint64_t a1)
{
  result = sub_26A09DE24();
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

id sub_26A083068(uint64_t a1, uint64_t a2)
{
  sub_26A069F94(0, &qword_280369608, 0x277CC1E90);

  result = sub_26A082CC4(a1, a2, 0);
  if (result)
  {
    v5 = result;
    v6 = [result entitlements];
    v7 = sub_26A09DE74();
    sub_26A069F94(0, &qword_280369610, 0x277CCABB0);
    v8 = [v6 objectForKey:v7 ofClass:swift_getObjCClassFromMetadata()];

    if (v8)
    {
      sub_26A09E1C4();

      swift_unknownObjectRelease();
    }

    else
    {

      v10 = 0u;
      v11 = 0u;
    }

    v12[0] = v10;
    v12[1] = v11;
    if (*(&v11 + 1))
    {
      if (swift_dynamicCast())
      {
        return v9;
      }
    }

    else
    {
      sub_26A069DDC(v12, &unk_280369730, &qword_26A09FA00);
    }

    return 0;
  }

  return result;
}

unint64_t sub_26A0831F8()
{
  result = qword_280369810;
  if (!qword_280369810)
  {
    type metadata accessor for AuthorizationActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369810);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_26A0832CC()
{
  result = qword_280369640;
  if (!qword_280369640)
  {
    sub_26A069F94(255, &qword_280369630, 0x277CCD720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280369640);
  }

  return result;
}

uint64_t sub_26A083334()
{
  v1 = sub_26A09DE24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_26A0833D4(uint64_t a1)
{
  v3 = *(sub_26A09DE24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_26A081C88(a1, v1 + v4, v5);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t CoreLocationAuthorizationProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_26A09DE14();
  v1 = (v0 + OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_observationBlock);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_locationManagersByApp;
  v3 = MEMORY[0x277D84F90];
  *(v0 + v2) = sub_26A076734(MEMORY[0x277D84F90]);
  v4 = OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_cachedLocationByApp;
  *(v0 + v4) = sub_26A07685C(v3);
  return v0;
}

uint64_t CoreLocationAuthorizationProvider.init()()
{
  sub_26A09DE14();
  v1 = (v0 + OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_observationBlock);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_locationManagersByApp;
  v3 = MEMORY[0x277D84F90];
  *(v0 + v2) = sub_26A076734(MEMORY[0x277D84F90]);
  v4 = OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_cachedLocationByApp;
  *(v0 + v4) = sub_26A07685C(v3);
  return v0;
}

uint64_t CoreLocationAuthorizationProvider.authorizationStatus(forBundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_cachedLocationByApp;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16) && (v9 = sub_26A099F20(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(v8 + 56) + 8 * v9;
    v12 = *v11;
    v13 = *(v11 + 4);
    v14 = *(v11 + 5);
    LOBYTE(v11) = *(v11 + 6);
    *a3 = v12;
    *(a3 + 4) = v13;
    *(a3 + 5) = v14;
    *(a3 + 6) = v11;
  }

  else
  {
    *(a3 + 6) = 0;
    *a3 = 0;
    *(a3 + 4) = 2;
  }

  return swift_endAccess();
}

uint64_t CoreLocationAuthorizationProvider.observeChanges(_:)(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_observationBlock);
  v6 = *(v2 + OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_observationBlock);
  v5 = *(v2 + OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_observationBlock + 8);
  *v4 = a1;
  v4[1] = a2;
  sub_26A085E10(v6, v5);
}

uint64_t CoreLocationAuthorizationProvider.updateTrackedApplications<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v6 = sub_26A09E0C4();
  v7 = OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_locationManagersByApp;
  swift_beginAccess();
  v27 = v6;

  v9 = sub_26A086148(v8, sub_26A085E20, v26, sub_26A085E28, sub_26A085E28);

  *(v3 + v7) = v9;

  v10 = OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_cachedLocationByApp;
  swift_beginAccess();
  v25 = v6;

  v12 = sub_26A086148(v11, sub_26A085FC0, v24, sub_26A085FC8, sub_26A085FC8);

  *(v3 + v10) = v12;

  v14 = 0;
  v15 = 1 << *(v6 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v6 + 56);
  for (i = (v15 + 63) >> 6; v17; result = )
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v21 = (*(v6 + 48) + ((v19 << 10) | (16 * v20)));
    v22 = *v21;
    v23 = v21[1];

    sub_26A083B6C(v22, v23);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {
    }

    v17 = *(v6 + 56 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A0839BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A0831F8();
  sub_26A09DFA4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return sub_26A091978(a1, a2, a5);
}

uint64_t sub_26A083A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A0831F8();
  sub_26A09DFA4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return sub_26A091978(a1, a2, a4);
}

void sub_26A083B6C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v7 = sub_26A085C94(a1, a2, 0);
  if (v7)
  {
    v11 = v7;
    if (sub_26A0841C4())
    {
      v12 = OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_locationManagersByApp;
      swift_beginAccess();
      if (!*(*(v2 + v12) + 16) || (sub_26A099F20(a1, a2), (v13 & 1) == 0))
      {
        swift_endAccess();

        v14 = sub_26A09DE04();
        v15 = sub_26A09E124();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v45[0] = v17;
          *v16 = 136446210;
          *(v16 + 4) = sub_26A089EEC(a1, a2, v45);
          _os_log_impl(&dword_26A066000, v14, v15, "Making new observer for %{public}s", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v17);
          MEMORY[0x26D65A520](v17, -1, -1);
          MEMORY[0x26D65A520](v16, -1, -1);
        }

        v18 = swift_allocObject();
        swift_weakInit();
        v19 = swift_allocObject();
        v19[2] = v18;
        v19[3] = a1;
        v19[4] = a2;
        v20 = type metadata accessor for CoreLocationAuthorizationProvider.Observer();
        v21 = objc_allocWithZone(v20);
        v22 = &v21[OBJC_IVAR____TtCC18SmartStackSettings33CoreLocationAuthorizationProvider8Observer_authorizationChangedBlock];
        *v22 = &unk_26A09FB88;
        *(v22 + 1) = v19;
        v43.receiver = v21;
        v43.super_class = v20;

        v23 = objc_msgSendSuper2(&v43, sel_init);
        sub_26A069F94(0, &unk_280369700, 0x277D85C78);
        v24 = v23;
        v25 = sub_26A09E144();
        v26 = objc_allocWithZone(MEMORY[0x277CBFC10]);
        v27 = sub_26A09DE74();
        v28 = [v26 initWithEffectiveBundleIdentifier:v27 delegate:v24 onQueue:v25];

        if (v28)
        {
          swift_beginAccess();

          v29 = v24;
          v30 = v28;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44 = *(v3 + v12);
          *(v3 + v12) = 0x8000000000000000;
          sub_26A07E92C(v30, v29, a1, a2, isUniquelyReferenced_nonNull_native);

          *(v3 + v12) = v44;
          swift_endAccess();
        }

        else
        {

          v38 = sub_26A09DE04();
          v39 = sub_26A09E114();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v45[0] = v41;
            *v40 = 136446210;
            *(v40 + 4) = sub_26A089EEC(a1, a2, v45);
            _os_log_impl(&dword_26A066000, v38, v39, "Failed to make manager for %{public}s", v40, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v41);
            MEMORY[0x26D65A520](v41, -1, -1);
            MEMORY[0x26D65A520](v40, -1, -1);
          }
        }

        return;
      }
    }

    else
    {

      v32 = sub_26A09DE04();
      v33 = sub_26A09E124();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v45[0] = v35;
        *v34 = 136446210;
        *(v34 + 4) = sub_26A089EEC(a1, a2, v45);
        _os_log_impl(&dword_26A066000, v32, v33, "%{public}s doesn't support location", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x26D65A520](v35, -1, -1);
        MEMORY[0x26D65A520](v34, -1, -1);
      }

      v36 = OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_cachedLocationByApp;
      swift_beginAccess();
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v44 = *(v3 + v36);
      *(v3 + v36) = 0x8000000000000000;
      sub_26A07E7D8(1, a1, a2, v37);
      *(v3 + v36) = v44;
    }

    swift_endAccess();

    return;
  }

  oslog = sub_26A09DE04();
  v8 = sub_26A09E114();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v45[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_26A089EEC(a1, a2, v45);
    _os_log_impl(&dword_26A066000, oslog, v8, "Couldn't make record for %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D65A520](v10, -1, -1);
    MEMORY[0x26D65A520](v9, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_26A0841C4()
{
  v1 = [v0 infoDictionary];
  v2 = sub_26A09DE74();
  sub_26A069F94(0, &qword_280369728, 0x277CCACA8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [v1 objectForKey:v2 ofClass:ObjCClassFromMetadata];

  if (v4)
  {
    sub_26A09E1C4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_26A069DDC(&v11, &unk_280369730, &qword_26A09FA00);
  }

  v5 = [v0 infoDictionary];
  v6 = sub_26A09DE74();
  v7 = [v5 objectForKey:v6 ofClass:ObjCClassFromMetadata];

  if (v7)
  {
    sub_26A09E1C4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
LABEL_13:

      return 1;
    }
  }

  else
  {
    sub_26A069DDC(&v11, &unk_280369730, &qword_26A09FA00);
  }

  return 0;
}

uint64_t sub_26A0843E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A0831F8();
  v6 = sub_26A09DFA4();

  return MEMORY[0x2822009F8](sub_26A0844A8, v6, v5);
}

uint64_t sub_26A0844A8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_26A08459C;
    v3 = v0[7];
    v4 = v0[8];
    v5 = v0[5];

    return sub_26A0846AC(v5, v3, v4);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_26A08459C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26A0846AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a3;
  v4[24] = v3;
  v4[21] = a1;
  v4[22] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280369710, &qword_26A09FB98);
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A0831F8();
  v6 = sub_26A09DFA4();
  v4[28] = v6;
  v4[29] = v7;

  return MEMORY[0x2822009F8](sub_26A08480C, v6, v7);
}

uint64_t sub_26A08480C()
{
  v55 = v0;
  v54[1] = *MEMORY[0x277D85DE8];
  *(v0 + 240) = OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_logger;

  v1 = sub_26A09DE04();
  v2 = sub_26A09E124();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 176);
    v3 = *(v0 + 184);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v54[0] = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_26A089EEC(v4, v3, v54);
    _os_log_impl(&dword_26A066000, v1, v2, "Authorization changed for %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x26D65A520](v6, -1, -1);
    MEMORY[0x26D65A520](v5, -1, -1);
  }

  v7 = *(v0 + 168);
  v8 = [v7 authorizationStatus];
  *(v0 + 268) = v8;
  v9 = [v7 isAuthorizedForWidgetUpdates];
  v10 = v9;
  *(v0 + 273) = v9;
  if (v8 == 4 && (v9 & 1) == 0)
  {
    *(v0 + 264) = 0;
    v11 = objc_opt_self();
    v12 = sub_26A09DE74();
    [v11 getIncidentalUseMode:v0 + 264 forBundleIdentifier:v12];

    v13 = *(v0 + 264) < 2u;
LABEL_21:
    *(v0 + 274) = v13;
    v49 = *(v0 + 208);
    v48 = *(v0 + 216);
    v50 = *(v0 + 200);
    v53 = objc_opt_self();
    v51 = sub_26A09DE74();
    *(v0 + 248) = v51;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 272;
    *(v0 + 24) = sub_26A084F7C;
    swift_continuation_init();
    *(v0 + 136) = v50;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369628, &unk_26A09FBA0);
    sub_26A09DFB4();
    (*(v49 + 32))(boxed_opaque_existential_0, v48, v50);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_26A085784;
    *(v0 + 104) = &block_descriptor_1;
    [v53 isEligibleForAlwaysAuthorizationRequestForBundleID:v51 orBundlePath:0 completionHandler:v0 + 80];
    (*(v49 + 8))(boxed_opaque_existential_0, v50);

    return MEMORY[0x282200938](v0 + 16);
  }

  v14 = sub_26A09DE04();
  v15 = sub_26A09E0F4();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = *(v0 + 176);
    v16 = *(v0 + 184);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v54[0] = v19;
    *v18 = 136446722;
    *(v18 + 4) = sub_26A089EEC(v17, v16, v54);
    *(v18 + 12) = 1024;
    *(v18 + 14) = v8;
    *(v18 + 18) = 1024;
    *(v18 + 20) = v10;
    _os_log_impl(&dword_26A066000, v14, v15, "Not checking for incidental upgrade for %{public}s:\n    status=%d\n    authorizedForWidgets=%{BOOL}d", v18, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x26D65A520](v19, -1, -1);
    MEMORY[0x26D65A520](v18, -1, -1);
  }

  if (v8 == 4)
  {
    v13 = 0;
    goto LABEL_21;
  }

  v20 = sub_26A09DE04();
  v21 = sub_26A09E0F4();

  if (os_log_type_enabled(v20, v21))
  {
    v23 = *(v0 + 176);
    v22 = *(v0 + 184);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v54[0] = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_26A089EEC(v23, v22, v54);
    _os_log_impl(&dword_26A066000, v20, v21, "Not checking for always eligibility %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x26D65A520](v25, -1, -1);
    MEMORY[0x26D65A520](v24, -1, -1);
  }

  v26 = sub_26A09DE04();
  v27 = sub_26A09E124();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 273);
    v29 = *(v0 + 268);
    v31 = *(v0 + 176);
    v30 = *(v0 + 184);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v54[0] = v33;
    *v32 = 136447234;
    *(v32 + 4) = sub_26A089EEC(v31, v30, v54);
    *(v32 + 12) = 1024;
    *(v32 + 14) = v29;
    *(v32 + 18) = 1024;
    *(v32 + 20) = v28;
    *(v32 + 24) = 1024;
    *(v32 + 26) = 0;
    *(v32 + 30) = 1024;
    *(v32 + 32) = 0;
    _os_log_impl(&dword_26A066000, v26, v27, "Authorization state for %{public}s:\n    status=%d\n    authorizedForWidgets=%{BOOL}d\n    eligibleForIncidentalUpgrade=%{BOOL}d\n    eligibleForAlwaysUpgrade=%{BOOL}d", v32, 0x24u);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x26D65A520](v33, -1, -1);
    MEMORY[0x26D65A520](v32, -1, -1);
  }

  v34 = *(v0 + 273);
  v35 = *(v0 + 184);
  v36 = *(v0 + 192);
  v37 = *(v0 + 176);
  v38 = [*(v0 + 168) authorizationStatus];
  v39 = OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_cachedLocationByApp;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54[0] = *(v36 + v39);
  *(v36 + v39) = 0x8000000000000000;
  v41 = 0x100000000;
  if (!v34)
  {
    v41 = 0;
  }

  sub_26A07E7D8(v41 | v38, v37, v35, isUniquelyReferenced_nonNull_native);
  *(v36 + v39) = v54[0];
  swift_endAccess();
  v42 = *(v36 + OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_observationBlock);
  if (v42)
  {
    v44 = *(v0 + 176);
    v43 = *(v0 + 184);
    v45 = *(v36 + OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_observationBlock + 8);

    v42(v44, v43);
    sub_26A085E10(v42, v45);
  }

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_26A084F7C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);
  if (v2)
  {
    v5 = sub_26A085390;
  }

  else
  {
    v5 = sub_26A0850D8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26A0850D8()
{
  v29 = v0;
  v28[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 272);

  v2 = *(v0 + 274);

  v3 = sub_26A09DE04();
  v4 = sub_26A09E124();

  if (os_log_type_enabled(v3, v4))
  {
    v27 = *(v0 + 273);
    v5 = v1;
    v6 = *(v0 + 268);
    v8 = *(v0 + 176);
    v7 = *(v0 + 184);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28[0] = v10;
    *v9 = 136447234;
    *(v9 + 4) = sub_26A089EEC(v8, v7, v28);
    *(v9 + 12) = 1024;
    *(v9 + 14) = v6;
    v1 = v5;
    *(v9 + 18) = 1024;
    *(v9 + 20) = v27;
    *(v9 + 24) = 1024;
    *(v9 + 26) = v2;
    *(v9 + 30) = 1024;
    *(v9 + 32) = v5;
    _os_log_impl(&dword_26A066000, v3, v4, "Authorization state for %{public}s:\n    status=%d\n    authorizedForWidgets=%{BOOL}d\n    eligibleForIncidentalUpgrade=%{BOOL}d\n    eligibleForAlwaysUpgrade=%{BOOL}d", v9, 0x24u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D65A520](v10, -1, -1);
    MEMORY[0x26D65A520](v9, -1, -1);
  }

  v11 = *(v0 + 273);
  v12 = *(v0 + 184);
  v13 = *(v0 + 192);
  v14 = *(v0 + 176);
  v15 = [*(v0 + 168) authorizationStatus];
  v16 = OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_cachedLocationByApp;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28[0] = *(v13 + v16);
  *(v13 + v16) = 0x8000000000000000;
  v18 = 0x1000000000000;
  if (!v1)
  {
    v18 = 0;
  }

  v19 = 0x10000000000;
  if (!v2)
  {
    v19 = 0;
  }

  v20 = 0x100000000;
  if (!v11)
  {
    v20 = 0;
  }

  sub_26A07E7D8(v19 | v18 | v20 | v15, v14, v12, isUniquelyReferenced_nonNull_native);
  *(v13 + v16) = v28[0];
  swift_endAccess();
  v21 = *(v13 + OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_observationBlock);
  if (v21)
  {
    v23 = *(v0 + 176);
    v22 = *(v0 + 184);
    v24 = *(v13 + OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_observationBlock + 8);

    v21(v23, v22);
    sub_26A085E10(v21, v24);
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_26A085390(uint64_t a1)
{
  v41 = v1;
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 248);
  v2 = *(v1 + 256);
  swift_willThrow();

  v4 = v2;
  v5 = sub_26A09DE04();
  v6 = sub_26A09E114();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v1 + 256);
  if (v7)
  {
    v10 = *(v1 + 176);
    v9 = *(v1 + 184);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v40[0] = v13;
    *v11 = 136446466;
    *(v11 + 4) = sub_26A089EEC(v10, v9, v40);
    *(v11 + 12) = 2114;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_26A066000, v5, v6, "Error checking always upgrade eligibility for %{public}s: %{public}@", v11, 0x16u);
    sub_26A069DDC(v12, &qword_280369720, &qword_26A09FA30);
    MEMORY[0x26D65A520](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26D65A520](v13, -1, -1);
    MEMORY[0x26D65A520](v11, -1, -1);
  }

  else
  {
  }

  v16 = *(v1 + 274);

  v17 = sub_26A09DE04();
  v18 = sub_26A09E124();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v1 + 273);
    v20 = *(v1 + 268);
    v22 = *(v1 + 176);
    v21 = *(v1 + 184);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40[0] = v24;
    *v23 = 136447234;
    *(v23 + 4) = sub_26A089EEC(v22, v21, v40);
    *(v23 + 12) = 1024;
    *(v23 + 14) = v20;
    *(v23 + 18) = 1024;
    *(v23 + 20) = v19;
    *(v23 + 24) = 1024;
    *(v23 + 26) = v16;
    *(v23 + 30) = 1024;
    *(v23 + 32) = 0;
    _os_log_impl(&dword_26A066000, v17, v18, "Authorization state for %{public}s:\n    status=%d\n    authorizedForWidgets=%{BOOL}d\n    eligibleForIncidentalUpgrade=%{BOOL}d\n    eligibleForAlwaysUpgrade=%{BOOL}d", v23, 0x24u);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x26D65A520](v24, -1, -1);
    MEMORY[0x26D65A520](v23, -1, -1);
  }

  v25 = *(v1 + 273);
  v26 = *(v1 + 184);
  v27 = *(v1 + 192);
  v28 = *(v1 + 176);
  v29 = [*(v1 + 168) authorizationStatus];
  v30 = OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_cachedLocationByApp;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40[0] = *(v27 + v30);
  *(v27 + v30) = 0x8000000000000000;
  v32 = 0x10000000000;
  if (!v16)
  {
    v32 = 0;
  }

  v33 = 0x100000000;
  if (!v25)
  {
    v33 = 0;
  }

  sub_26A07E7D8(v33 | v32 | v29, v28, v26, isUniquelyReferenced_nonNull_native);
  *(v27 + v30) = v40[0];
  swift_endAccess();
  v34 = *(v27 + OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_observationBlock);
  if (v34)
  {
    v36 = *(v1 + 176);
    v35 = *(v1 + 184);
    v37 = *(v27 + OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_observationBlock + 8);

    v34(v36, v35);
    sub_26A085E10(v34, v37);
  }

  v38 = *(v1 + 8);

  return v38();
}

void sub_26A085784(uint64_t a1, void *a2, char a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280369710, &qword_26A09FB98);
    sub_26A09DFC4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280369710, &qword_26A09FB98);
    sub_26A09DFD4();
  }
}

uint64_t CoreLocationAuthorizationProvider.deinit()
{
  v1 = OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_logger;
  v2 = sub_26A09DE24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_26A085E10(*(v0 + OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_observationBlock), *(v0 + OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_observationBlock + 8));

  return v0;
}

uint64_t CoreLocationAuthorizationProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_logger;
  v2 = sub_26A09DE24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_26A085E10(*(v0 + OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_observationBlock), *(v0 + OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_observationBlock + 8));

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_26A0859B0(uint64_t a1, uint64_t a2)
{
  v4 = (*v2 + OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_observationBlock);
  v6 = *v4;
  v5 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  sub_26A085E10(v6, v5);
}

uint64_t sub_26A085A28(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  *(v6 + 16) = v8;
  *v8 = v6;
  v8[1] = sub_26A06BFC4;

  return v10(a6);
}

id sub_26A085C94(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_26A09DE74();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_26A09DC64();

    swift_willThrow();
  }

  return v6;
}

void *sub_26A085D70(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

uint64_t sub_26A085E10(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_26A085E28(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id, id))
{
  v25 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v28 = (v8 - 1) & v8;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(a3 + 56) + 16 * v13;
    v18 = *v17;
    v19 = *(v17 + 8);

    v20 = v18;
    v21 = v19;
    LOBYTE(v15) = a4(v15, v16, v20, v21);

    v8 = v28;
    if (v15)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_15:
        sub_26A09B15C(a1, a2, v25, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_26A085FC8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, int *))
{
  v25 = result;
  v26 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(a3 + 56) + 8 * v14;
    v19 = *v18;
    v20 = *(v18 + 4);
    v21 = *(v18 + 5);
    LOBYTE(v18) = *(v18 + 6);
    v28 = v19;
    v29 = v20;
    v30 = v21;
    v31 = v18;

    v22 = a4(v16, v17, &v28);

    if (v22)
    {
      *(v25 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
        return sub_26A09AEF8(v25, a2, v26, a3);
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
      return sub_26A09AEF8(v25, a2, v26, a3);
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

void *sub_26A086148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a1;
  v18[1] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v13 = v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, v9, a2, a3);
    if (v5)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = sub_26A085D70(v16, v11, v9, a2, a3, a5);
  result = MEMORY[0x26D65A520](v16, -1, -1);
  if (!v5)
  {
    return v17;
  }

  return result;
}

_DWORD *__swift_memcpy7_4(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LocationAuthorizationState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 7))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationAuthorizationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for CoreLocationAuthorizationProvider(uint64_t a1)
{
  result = qword_280369678;
  if (!qword_280369678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A08642C(uint64_t a1)
{
  result = sub_26A09DE24();
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26A086530(uint64_t *a1, int a2)
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

uint64_t sub_26A086578(uint64_t result, int a2, int a3)
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

uint64_t sub_26A0865C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26A08660C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A079198;

  return sub_26A085A28(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26A0866D4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26A08670C(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

uint64_t sub_26A08674C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26A06BFC4;

  return sub_26A0843E4(a1, v4, v5, v6);
}

uint64_t sub_26A086814()
{
  v1 = [*v0 infoDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26A09DE64();

  return v3;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26A086898(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26A0868E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26A08693C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = v3;
LABEL_9:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(*(a1 + 48) + ((v9 << 9) | (8 * v10)));
      sub_26A077CA8(v11);
      sub_26A09367C(&v12, v11);
      sub_26A077CFC(v12);
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }
}

char *sub_26A086A38()
{
  result = sub_26A086A58();
  qword_280369CB0 = result;
  return result;
}

char *sub_26A086A58()
{
  v0 = _HKAllObjectTypes();
  sub_26A087888();
  v1 = sub_26A09DF84();

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v5 = MEMORY[0x277D84F90];
LABEL_14:
    v15 = sub_26A080608(v5);

    return v15;
  }

  v2 = sub_26A09E224();
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = MEMORY[0x277D84F90];
  result = sub_26A0803D0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v16;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D659D40](v4, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v7 identifier];
      v9 = sub_26A09DEA4();
      v11 = v10;

      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_26A0803D0((v12 > 1), v13 + 1, 1);
      }

      ++v4;
      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v2 != v4);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_26A086C04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  v12 = sub_26A086CF8(*a1, *a2);
  result = 0;
  if ((v12 & 1) != 0 && ((v2 ^ v7) & 1) == 0)
  {
    if (v3 == v8 && v4 == v9 || (v14 = sub_26A09E4D4(), result = 0, (v14 & 1) != 0))
    {
      if (v5)
      {
        if (v10 && (v6 == v11 && v5 == v10 || (sub_26A09E4D4() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v10)
      {
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_26A086CF8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 0xEF73736170794274;
  v30 = result + 56;
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
  v35 = a2 + 56;
  v31 = v8;
  v32 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v7));
    v33 = (v7 - 1) & v7;
LABEL_13:
    v12 = *(*(result + 48) + 8 * (v9 | (v3 << 6)));
    sub_26A09E514();
    sub_26A077CA8(v12);
    SmartStackAuthorization.rawValue.getter();
    sub_26A09DEE4();

    v13 = sub_26A09E534();
    v14 = -1 << *(v2 + 32);
    v15 = v13 & ~v14;
    if (((*(v35 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
LABEL_53:
      sub_26A077CFC(v12);
      return 0;
    }

    v34 = ~v14;
    while (1)
    {
      v16 = *(*(v2 + 48) + 8 * v15);
      if (v16 <= 1)
      {
        break;
      }

      if (v16 == 2)
      {
        v17 = 0xD000000000000013;
        v18 = 0x800000026A0A0D90;
        if (v12 <= 1)
        {
          goto LABEL_26;
        }

        goto LABEL_36;
      }

      if (v16 == 3)
      {
        v18 = 0xEE006E6F69746365;
        v17 = 0x746544646E756F73;
LABEL_35:
        if (v12 <= 1)
        {
          goto LABEL_26;
        }

        goto LABEL_36;
      }

      if (v16 != 4)
      {
        goto LABEL_45;
      }

      v17 = 0x694B68746C616568;
      v18 = v4;
      if (v12 <= 1)
      {
        goto LABEL_26;
      }

LABEL_36:
      switch(v12)
      {
        case 2:
          v20 = 0x800000026A0A0D90;
          if (v17 == 0xD000000000000013)
          {
            goto LABEL_30;
          }

          goto LABEL_31;
        case 3:
          v20 = 0xEE006E6F69746365;
          if (v17 == 0x746544646E756F73)
          {
            goto LABEL_30;
          }

          goto LABEL_31;
        case 4:
          v20 = v4;
          if (v17 == 0x694B68746C616568)
          {
            goto LABEL_30;
          }

          goto LABEL_31;
      }

LABEL_47:
      v25 = v2;
      v26 = v4;
      v27 = v17;
      v28 = sub_26A09DEA4();
      MEMORY[0x26D659940](v28);

      v29 = v27;
      v4 = v26;
      v2 = v25;
      v20 = 0xEA00000000002D74;
      if (v29 == 0x694B68746C616568)
      {
        goto LABEL_30;
      }

LABEL_31:
      v21 = sub_26A09E4D4();
      sub_26A077CFC(v16);

      if (v21)
      {
        goto LABEL_50;
      }

      v15 = (v15 + 1) & v34;
      if (((*(v35 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    v17 = 0x6F4C737961776C61;
    v18 = 0xEE006E6F69746163;
    if (!v16)
    {
      goto LABEL_35;
    }

    if (v16 == 1)
    {
      v17 = 0x636F4C6573556E69;
      v18 = 0xED00006E6F697461;
      if (v12 <= 1)
      {
        goto LABEL_26;
      }

      goto LABEL_36;
    }

LABEL_45:
    v22 = sub_26A09DEA4();
    v24 = v23;
    sub_26A077CA8(v16);
    MEMORY[0x26D659940](v22, v24);

    v17 = 0x694B68746C616568;
    v18 = 0xEA00000000002D74;
    if (v12 > 1)
    {
      goto LABEL_36;
    }

LABEL_26:
    v19 = 0x6F4C737961776C61;
    v20 = 0xEE006E6F69746163;
    if (!v12)
    {
      goto LABEL_29;
    }

    if (v12 != 1)
    {
      goto LABEL_47;
    }

    v19 = 0x636F4C6573556E69;
    v20 = 0xED00006E6F697461;
LABEL_29:
    if (v17 != v19)
    {
      goto LABEL_31;
    }

LABEL_30:
    if (v18 != v20)
    {
      goto LABEL_31;
    }

    sub_26A077CFC(v16);

LABEL_50:
    sub_26A077CFC(v12);
    v8 = v31;
    result = v32;
    v7 = v33;
  }

  while (v33);
LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v30 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v33 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26A08719C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26A09E3B4();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26A0871E8(uint64_t a1)
{
  sub_26A069E3C(a1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692A0, &qword_26A09F900);
  if (!swift_dynamicCast())
  {
    return MEMORY[0x277D84FA0];
  }

  v1 = *(v35 + 16);
  if (v1)
  {
    v2 = v35 + 32;
    v3 = MEMORY[0x277D84F90];
    do
    {
      sub_26A069E3C(v2, v34);
      sub_26A0697B4(v34, &v35);
      if (swift_dynamicCast())
      {
        v5 = v37;
        if (v37)
        {
          v6 = v36;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_26A07B39C(0, *(v3 + 2) + 1, 1, v3);
          }

          v8 = *(v3 + 2);
          v7 = *(v3 + 3);
          if (v8 >= v7 >> 1)
          {
            v3 = sub_26A07B39C((v7 > 1), v8 + 1, 1, v3);
          }

          *(v3 + 2) = v8 + 1;
          v4 = &v3[16 * v8];
          *(v4 + 4) = v6;
          *(v4 + 5) = v5;
        }
      }

      v2 += 32;
      --v1;
    }

    while (v1);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  v10 = *(v3 + 2);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = 0;
    while (v12 < *(v3 + 2))
    {
      v13 = &v3[16 * v12 + 32];
      v15 = *v13;
      v14 = *(v13 + 1);
      v16 = qword_2803690F0;

      if (v16 != -1)
      {
        swift_once();
      }

      ++v12;
      v17 = qword_280369CB0;
      if (*(qword_280369CB0 + 16) && (sub_26A09E514(), sub_26A09DEE4(), v18 = sub_26A09E534(), v19 = -1 << *(v17 + 32), v20 = v18 & ~v19, ((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
      {
        v21 = ~v19;
        while (1)
        {
          v22 = (*(v17 + 48) + 16 * v20);
          v23 = *v22 == v15 && v22[1] == v14;
          if (v23 || (sub_26A09E4D4() & 1) != 0)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        *&v35 = v11;
        if ((result & 1) == 0)
        {
          result = sub_26A0803D0(0, *(v11 + 16) + 1, 1);
          v11 = v35;
        }

        v25 = *(v11 + 16);
        v24 = *(v11 + 24);
        if (v25 >= v24 >> 1)
        {
          result = sub_26A0803D0((v24 > 1), v25 + 1, 1);
          v11 = v35;
        }

        *(v11 + 16) = v25 + 1;
        v26 = v11 + 16 * v25;
        *(v26 + 32) = v15;
        *(v26 + 40) = v14;
      }

      else
      {
LABEL_17:
      }

      if (v12 == v10)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_37:

    v27 = *(v11 + 16);
    if (v27)
    {
      *&v34[0] = MEMORY[0x277D84F90];
      sub_26A0803B0(0, v27, 0);
      v28 = *&v34[0];
      v29 = v11 + 40;
      do
      {

        v30 = sub_26A09DE74();

        *&v34[0] = v28;
        v32 = *(v28 + 16);
        v31 = *(v28 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_26A0803B0((v31 > 1), v32 + 1, 1);
          v28 = *&v34[0];
        }

        *(v28 + 16) = v32 + 1;
        *(v28 + 8 * v32 + 32) = v30;
        v29 += 16;
        --v27;
      }

      while (v27);
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
    }

    v33 = sub_26A0806A0(v28);

    return v33;
  }

  return result;
}

uint64_t sub_26A0875EC(uint64_t a1)
{
  v3 = a1 + 64;
  v2 = *(a1 + 64);
  v30 = MEMORY[0x277D84FA0];
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v2;
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_15:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v14 = v13 | (v10 << 6);
    sub_26A08782C(*(a1 + 48) + 40 * v14, v19);
    sub_26A069E3C(*(a1 + 56) + 32 * v14, v18);
    v21 = v19[0];
    v22 = v19[1];
    *&v23 = v20;
    sub_26A0697B4(v18, (&v23 + 8));
    v12 = v10;
LABEL_16:
    v28[0] = v23;
    v28[1] = v24;
    v29 = v25;
    v26 = v21;
    v27 = v22;
    if (!*(&v22 + 1))
    {

      return v30;
    }

    sub_26A0697B4((v28 + 8), v19);
    v21 = v26;
    v22 = v27;
    *&v23 = *&v28[0];
    if (swift_dynamicCast())
    {
      v15 = sub_26A09E3B4();

      if (v15 <= 5)
      {
        if (((1 << v15) & 0xB) != 0)
        {
          sub_26A09367C(&v21, v15);
          sub_26A077CFC(v21);
        }

        else if (((1 << v15) & 0x24) == 0)
        {
          v16 = sub_26A0871E8(v19);
          sub_26A08693C(v16, v17);
        }
      }
    }

    result = __swift_destroy_boxed_opaque_existential_0(v19);
    v9 = v12;
  }

  if (v7 <= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v6 = 0;
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      goto LABEL_16;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26A087888()
{
  result = qword_280369630;
  if (!qword_280369630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280369630);
  }

  return result;
}

id AuthorizationServiceServer.__allocating_init(authorizationManager:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_26A08A8C8(a1);

  return v4;
}

id AuthorizationServiceServer.init(authorizationManager:)(uint64_t a1)
{
  v1 = sub_26A08A8C8(a1);

  return v1;
}

uint64_t sub_26A08794C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A0831F8();
  v6 = sub_26A09DFA4();

  return MEMORY[0x2822009F8](sub_26A087A0C, v6, v5);
}

uint64_t sub_26A087A0C(uint64_t a1)
{
  sub_26A087A6C(a1);
  v2 = *(v1 + 8);

  return v2();
}

void sub_26A087A6C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_26A09DE04();
  v4 = sub_26A09E124();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26A066000, v3, v4, "Starting listener", v5, 2u);
    MEMORY[0x26D65A520](v5, -1, -1);
  }

  v6 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v7 = sub_26A09DE74();
  v8 = [v6 initWithMachServiceName_];

  if (qword_280369100 != -1)
  {
    swift_once();
  }

  [v8 _setQueue_];
  [v8 setDelegate_];
  [v8 activate];
  v9 = *(v2 + OBJC_IVAR____TtC18SmartStackSettings26AuthorizationServiceServer_listener);
  *(v2 + OBJC_IVAR____TtC18SmartStackSettings26AuthorizationServiceServer_listener) = v8;
  v10 = v8;

  sub_26A09DDB4();
}

void sub_26A087C28(void *a1)
{
  v2 = v1;
  v4 = sub_26A09DE24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC18SmartStackSettings26AuthorizationServiceServer_logger;
  v9 = a1;
  v35 = v8;
  v10 = sub_26A09DE04();
  v11 = sub_26A09E124();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = [v9 processIdentifier];

    _os_log_impl(&dword_26A066000, v10, v11, "Registering connection from %d", v12, 8u);
    MEMORY[0x26D65A520](v12, -1, -1);
  }

  else
  {

    v10 = v9;
  }

  v13 = *(v2 + OBJC_IVAR____TtC18SmartStackSettings26AuthorizationServiceServer_authorizationManager);
  v14 = type metadata accessor for AuthorizationServiceServer.ClientConnection(0);
  v15 = objc_allocWithZone(v14);
  sub_26A09DE14();
  *&v15[OBJC_IVAR____TtCC18SmartStackSettings26AuthorizationServiceServer16ClientConnection_subscribeTask] = 0;
  *&v15[OBJC_IVAR____TtCC18SmartStackSettings26AuthorizationServiceServer16ClientConnection_connection] = v9;
  *&v15[OBJC_IVAR____TtCC18SmartStackSettings26AuthorizationServiceServer16ClientConnection_authorizationManager] = v13;
  v38.receiver = v15;
  v38.super_class = v14;
  v16 = v9;

  v17 = objc_msgSendSuper2(&v38, sel_init);
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  [v16 _setQueue:*(off_280369A30 + 2)];
  v18 = objc_opt_self();
  v19 = [v18 interfaceWithProtocol_];
  [v16 setExportedInterface:v19];

  [v16 setExportedObject:v17];
  v20 = [v18 interfaceWithProtocol_];
  [v16 setRemoteObjectInterface:v20];

  v33 = [v16 processIdentifier];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(&v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v2 + v35, v4);
  v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v34 = v16;
  v35 = v2;
  v23 = v17;
  v24 = v4;
  v25 = (v6 + v22 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v26 = (v25 + 11) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v5 + 32))(v27 + v22, v7, v24);
  *(v27 + v25) = v33;
  *(v27 + v26) = v23;
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
  aBlock[4] = sub_26A08B344;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A08BDD4;
  aBlock[3] = &block_descriptor_27;
  v28 = _Block_copy(aBlock);
  v29 = v23;

  v30 = v34;
  [v34 setInvalidationHandler:v28];
  _Block_release(v28);
  swift_beginAccess();
  v31 = v29;
  sub_26A093AC4(&v36, v31);
  swift_endAccess();

  [v30 activate];
}

void sub_26A0881EC(uint64_t a1, int a2, char *a3, uint64_t a4)
{
  v6 = sub_26A09DE04();
  v7 = sub_26A09E124();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a2;
    _os_log_impl(&dword_26A066000, v6, v7, "Connection from %d invalidated", v8, 8u);
    MEMORY[0x26D65A520](v8, -1, -1);
  }

  [*&a3[OBJC_IVAR____TtCC18SmartStackSettings26AuthorizationServiceServer16ClientConnection_connection] invalidate];
  if (*&a3[OBJC_IVAR____TtCC18SmartStackSettings26AuthorizationServiceServer16ClientConnection_subscribeTask])
  {

    sub_26A09E074();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    v11 = sub_26A095FEC(a3);
    swift_endAccess();
  }
}

id AuthorizationServiceServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AuthorizationServiceServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_26A0884AC()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtCC18SmartStackSettings26AuthorizationServiceServer16ClientConnection_subscribeTask])
  {

    sub_26A09E074();
  }

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26A08866C(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = v2;
  v8 = sub_26A09DE04();
  v9 = sub_26A09E124();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_26A089EEC(0xD000000000000023, 0x800000026A0A1AC0, &v27);
    *(v10 + 12) = 1024;
    *(v10 + 14) = [*&v7[OBJC_IVAR____TtCC18SmartStackSettings26AuthorizationServiceServer16ClientConnection_connection] processIdentifier];

    _os_log_impl(&dword_26A066000, v8, v9, "Received %s from %d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26D65A520](v11, -1, -1);
    MEMORY[0x26D65A520](v10, -1, -1);
  }

  else
  {
  }

  v12 = OBJC_IVAR____TtCC18SmartStackSettings26AuthorizationServiceServer16ClientConnection_subscribeTask;
  if (*&v7[OBJC_IVAR____TtCC18SmartStackSettings26AuthorizationServiceServer16ClientConnection_subscribeTask])
  {

    v13 = sub_26A09DE04();
    v14 = sub_26A09E124();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_26A066000, v13, v14, "Cancelling existing subscription", v15, 2u);
      MEMORY[0x26D65A520](v15, -1, -1);
    }

    sub_26A09E074();
  }

  v16 = sub_26A09DFF4();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = *&v7[OBJC_IVAR____TtCC18SmartStackSettings26AuthorizationServiceServer16ClientConnection_connection];
  v18 = qword_280369100;
  v19 = v7;
  v20 = v17;

  if (v18 != -1)
  {
    swift_once();
  }

  v21 = off_280369A30;
  v22 = sub_26A0831F8();
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v22;
  v24 = v26;
  v23[4] = v19;
  v23[5] = v24;
  v23[6] = a2;
  v23[7] = v20;

  *&v7[v12] = sub_26A06B90C(0, 0, v6, &unk_26A09FD08, v23);
}

uint64_t sub_26A0889D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369828, &unk_26A09FD18);
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  v7[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369838, &qword_26A09FD28);
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  v7[16] = off_280369A30;
  type metadata accessor for AuthorizationActor();
  v7[17] = sub_26A0831F8();
  v11 = sub_26A09DFA4();
  v7[18] = v11;
  v7[19] = v10;

  return MEMORY[0x2822009F8](sub_26A088BAC, v11, v10);
}

uint64_t sub_26A088BAC()
{
  receiver = v0[6].receiver;
  v2 = v0[4].receiver;
  v3 = v0[3].receiver;
  v4 = *(v0[2].super_class + OBJC_IVAR____TtCC18SmartStackSettings26AuthorizationServiceServer16ClientConnection_authorizationManager);
  AuthorizationManager.descriptorCollectionStream.getter();
  v5 = v4 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex;
  os_unfair_lock_lock(v5);
  v6 = *(v5 + 8);

  os_unfair_lock_unlock(v5);
  v7 = _s23DescriptorCollectionBoxCMa(0);
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___SSSDescriptorCollectionBox_value] = v6;
  sub_26A09DD14();
  v9 = sub_26A09DD34();
  (*(*(v9 - 8) + 56))(receiver, 0, 1, v9);
  sub_26A08AF08(receiver, &v8[OBJC_IVAR___SSSDescriptorCollectionBox_date]);
  v0[1].receiver = v8;
  v0[1].super_class = v7;
  v10 = objc_msgSendSuper2(v0 + 1, sel_init);
  v3();

  v0[10].receiver = OBJC_IVAR____TtCC18SmartStackSettings26AuthorizationServiceServer16ClientConnection_logger;
  v11 = v2;
  v12 = sub_26A09DE04();
  v13 = sub_26A09E124();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[4].receiver;
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = [v14 processIdentifier];

    _os_log_impl(&dword_26A066000, v12, v13, "Streaming updates to %d", v15, 8u);
    MEMORY[0x26D65A520](v15, -1, -1);
  }

  else
  {

    v12 = v0[4].receiver;
  }

  sub_26A09E044();
  v16 = v0[8].receiver;
  super_class = v0[8].super_class;
  v18 = swift_task_alloc();
  v0[10].super_class = v18;
  *v18 = v0;
  *(v18 + 1) = sub_26A088E30;
  v19 = v0[4].super_class;

  return MEMORY[0x2822003E8](&v0[2], v16, super_class, v19);
}

uint64_t sub_26A088E30()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_26A088F50, v3, v2);
}

uint64_t sub_26A088F50()
{
  v1 = v0[4];
  v0[22] = v1;
  if (!v1)
  {
    v5 = v0[8];
    (*(v0[10] + 8))(v0[11], v0[9]);
    v6 = v5;
    v7 = sub_26A09DE04();
    v8 = sub_26A09E124();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[8];
    if (v9)
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = [v10 processIdentifier];

      _os_log_impl(&dword_26A066000, v7, v8, "Finished streaming updates to %d", v11, 8u);
      MEMORY[0x26D65A520](v11, -1, -1);
    }

    else
    {
    }

    goto LABEL_11;
  }

  if (sub_26A09E084())
  {
    v3 = v0[10];
    v2 = v0[11];
    v4 = v0[9];

    (*(v3 + 8))(v2, v4);
LABEL_11:
    (*(v0[14] + 8))(v0[15], v0[13]);

    v18 = v0[1];

    return v18();
  }

  v13 = v0[16];
  v12 = v0[17];
  v14 = v0[5];
  v15 = swift_task_alloc();
  v0[23] = v15;
  *(v15 + 16) = v14;
  *(v15 + 24) = v1;
  v16 = swift_task_alloc();
  v0[24] = v16;
  *v16 = v0;
  v16[1] = sub_26A0891C0;
  v17 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v16, v13, v12, 0xD000000000000025, 0x800000026A0A1AF0, sub_26A08AF78, v15, v17);
}

uint64_t sub_26A0891C0()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_26A089398;
  }

  else
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_26A0892DC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_26A0892DC()
{

  v1 = v0[16];
  v2 = v0[17];
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_26A088E30;
  v4 = v0[9];

  return MEMORY[0x2822003E8](v0 + 4, v1, v2, v4);
}

uint64_t sub_26A089398()
{
  v1 = v0[8];

  v2 = v1;
  v3 = sub_26A09DE04();
  v4 = sub_26A09E114();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[25];
  if (v5)
  {
    v7 = v0[8];
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = [v7 processIdentifier];

    _os_log_impl(&dword_26A066000, v3, v4, "Failed to publish updated to %d", v8, 8u);
    MEMORY[0x26D65A520](v8, -1, -1);
  }

  else
  {

    v3 = v0[8];
  }

  v9 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);
  v10 = v9;
  v11 = sub_26A09DE04();
  v12 = sub_26A09E124();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[8];
  if (v13)
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = [v14 processIdentifier];

    _os_log_impl(&dword_26A066000, v11, v12, "Finished streaming updates to %d", v15, 8u);
    MEMORY[0x26D65A520](v15, -1, -1);
  }

  else
  {
  }

  (*(v0[14] + 8))(v0[15], v0[13]);

  v16 = v0[1];

  return v16();
}

void sub_26A0896E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v32 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369840, &unk_26A09FD30);
  v33 = *(v38 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v38);
  v8 = &v32 - v7;
  v9 = sub_26A09DE24();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A0831F8();
  sub_26A09DFA4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(a2 + OBJC_IVAR____TtCC18SmartStackSettings26AuthorizationServiceServer16ClientConnection_connection);
  (*(v10 + 16))(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2 + OBJC_IVAR____TtCC18SmartStackSettings26AuthorizationServiceServer16ClientConnection_logger, v9);
  v14 = v33;
  v15 = *(v33 + 16);
  v16 = v8;
  v32 = v8;
  v17 = v38;
  v15(v16, a1);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v14 + 80);
  v35 = a1;
  v21 = (v20 + v19 + 8) & ~v20;
  v22 = swift_allocObject();
  (*(v10 + 32))(v22 + v18, v12, v9);
  *(v22 + v19) = v13;
  (*(v14 + 32))(v22 + v21, v32, v17);
  aBlock[4] = sub_26A08B0E8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A089DA8;
  aBlock[3] = &block_descriptor_2;
  v23 = _Block_copy(aBlock);
  v24 = v13;

  v25 = [v24 remoteObjectProxyWithErrorHandler_];
  _Block_release(v23);
  sub_26A09E1C4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280369848, &unk_26A09FD40);
  swift_dynamicCast();
  v26 = v40;
  v27 = _s23DescriptorCollectionBoxCMa(0);
  v28 = objc_allocWithZone(v27);
  *&v28[OBJC_IVAR___SSSDescriptorCollectionBox_value] = v36;

  v29 = v37;
  sub_26A09DD14();
  v30 = sub_26A09DD34();
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  sub_26A08AF08(v29, &v28[OBJC_IVAR___SSSDescriptorCollectionBox_date]);
  v39.receiver = v28;
  v39.super_class = v27;
  v31 = objc_msgSendSuper2(&v39, sel_init);
  [v26 descriptorCollectionChanged_];
  sub_26A09DFD4();
  swift_unknownObjectRelease();
}

uint64_t sub_26A089BAC(void *a1, uint64_t a2, void *a3)
{
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A0831F8();
  sub_26A09DFA4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = a1;
  v7 = sub_26A09DE04();
  v8 = sub_26A09E114();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 67109378;
    *(v9 + 4) = [v5 processIdentifier];

    *(v9 + 8) = 2112;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 10) = v12;
    *v10 = v12;
    _os_log_impl(&dword_26A066000, v7, v8, "Connection error to %d: %@", v9, 0x12u);
    sub_26A08B1F0(v10);
    MEMORY[0x26D65A520](v10, -1, -1);
    MEMORY[0x26D65A520](v9, -1, -1);
  }

  else
  {

    v7 = v5;
  }

  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369840, &unk_26A09FD30);
  return sub_26A09DFC4();
}

void sub_26A089DA8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_26A089E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_280369100 != -1)
  {
    goto LABEL_5;
  }

  while (1)
  {
    type metadata accessor for AuthorizationActor();
    sub_26A0831F8();
    sub_26A09DFA4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    _swift_stdlib_reportUnimplementedInitializer();
    __break(1u);
LABEL_5:
    swift_once();
  }
}

unint64_t sub_26A089EEC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26A089FB8(v11, 0, 0, 1, a1, a2);
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
    sub_26A069E3C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_26A089FB8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26A08A0C4(a5, a6);
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
    result = sub_26A09E334();
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

void *sub_26A08A0C4(uint64_t a1, unint64_t a2)
{
  v3 = sub_26A08A110(a1, a2);
  sub_26A08A240(&unk_287AFBE40);
  return v3;
}

void *sub_26A08A110(uint64_t a1, unint64_t a2)
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

  v6 = sub_26A08A32C(v5, 0);
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

  result = sub_26A09E334();
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
        v10 = sub_26A09DF34();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26A08A32C(v10, 0);
        result = sub_26A09E2E4();
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

uint64_t sub_26A08A240(uint64_t result)
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

  result = sub_26A08A3A0(result, v11, 1, v3);
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

void *sub_26A08A32C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369820, &qword_26A09FD10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26A08A3A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369820, &qword_26A09FD10);
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

uint64_t sub_26A08A494(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280369860, &unk_26A0A0390);
    v3 = sub_26A09E2D4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_26A09E514();

      sub_26A09DEE4();
      result = sub_26A09E534();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_26A09E4D4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_26A08A5FC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_26A09E224())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369858, &unk_26A09FD60);
      v3 = sub_26A09E2D4();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_26A09E224();
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
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x26D659D40](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_26A09E194();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for AuthorizationServiceServer.ClientConnection(0);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_26A09E1A4();

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
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
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
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_26A09E194();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        type metadata accessor for AuthorizationServiceServer.ClientConnection(0);
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_26A09E1A4();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

id sub_26A08A8C8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  sub_26A09DE14();
  *&v2[OBJC_IVAR____TtC18SmartStackSettings26AuthorizationServiceServer_listener] = 0;
  if (MEMORY[0x277D84F90] >> 62 && sub_26A09E224())
  {
    sub_26A08A5FC(MEMORY[0x277D84F90]);
  }

  else
  {
    v8 = MEMORY[0x277D84FA0];
  }

  *&v2[OBJC_IVAR____TtC18SmartStackSettings26AuthorizationServiceServer_clients] = v8;
  *&v2[OBJC_IVAR____TtC18SmartStackSettings26AuthorizationServiceServer_authorizationManager] = a1;
  v17.receiver = v2;
  v17.super_class = ObjectType;

  v9 = objc_msgSendSuper2(&v17, sel_init);
  v10 = sub_26A09DFF4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = qword_280369100;
  v12 = v9;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = off_280369A30;
  v14 = sub_26A0831F8();
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v12;

  sub_26A06B90C(0, 0, v7, &unk_26A09FD58, v15);

  return v12;
}

uint64_t sub_26A08AB08(void *a1)
{
  v1 = a1;
  v2 = sub_26A09DE04();
  v3 = sub_26A09E124();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = [v1 processIdentifier];

    _os_log_impl(&dword_26A066000, v2, v3, "Got new connection from %d", v4, 8u);
    MEMORY[0x26D65A520](v4, -1, -1);
  }

  else
  {

    v2 = v1;
  }

  sub_26A087C28(v1);
  return 1;
}

uint64_t sub_26A08AC94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A08ACF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_26A09DE24();
  if (v7 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26A08AD98()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26A08ADE4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26A08AE34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26A06BFC4;

  return sub_26A0889D8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_26A08AF08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A08AF80()
{
  v1 = sub_26A09DE24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369840, &unk_26A09FD30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_26A08B0E8(void *a1)
{
  v3 = *(sub_26A09DE24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369840, &unk_26A09FD30);
  v6 = *(v1 + v5);

  return sub_26A089BAC(a1, v1 + v4, v6);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26A08B1F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369720, &qword_26A09FA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A08B258()
{
  MEMORY[0x26D65A5C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26A08B290()
{
  v1 = sub_26A09DE24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_26A08B344()
{
  v1 = *(sub_26A09DE24() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v4 = (v3 + 11) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_26A0881EC(v0 + v2, v5, v6, v7);
}

uint64_t sub_26A08B3E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26A08B428(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26A079198;

  return sub_26A08794C(a1, v4, v5, v6);
}

uint64_t sub_26A08B4E4()
{
  _s10ConnectionCMa(0);
  swift_allocObject();
  result = sub_26A08C518();
  qword_280369870 = result;
  return result;
}

uint64_t sub_26A08B55C()
{
  if (qword_2803690F8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26A08B628;
  v2 = *(v0 + 16);

  return sub_26A08BE18(v2);
}

uint64_t sub_26A08B628()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t AuthorizationService.descriptorCollectionStream.getter()
{
  if (qword_2803690F8 != -1)
  {
    swift_once();
  }

  return sub_26A08C1B4();
}

Swift::Void __swiftcall AuthorizationService.prewarm()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  if (qword_2803690F8 != -1)
  {
    swift_once();
  }

  v3 = qword_280369870;
  v4 = sub_26A09DFF4();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = qword_280369100;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = off_280369A30;
  v7 = sub_26A0831F8();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = v3;

  sub_26A08B94C(0, 0, v2, &unk_26A09FD80, v8, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_26A08B94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_26A08BCFC(a3, v23 - v10);
  v12 = sub_26A09DFF4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26A08BD6C(v11);
  }

  else
  {
    sub_26A09DFE4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26A09DFA4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = sub_26A09DEC4() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_26A08BD6C(a3);

      return v21;
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

  sub_26A08BD6C(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_26A08BBB8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26A08BBF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26A06BFC4;

  return sub_26A08D2EC(a1, v4, v5, v6);
}

uint64_t sub_26A08BCFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A08BD6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A08BDD4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_26A08BE18(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A0831F8();
  v4 = sub_26A09DFA4();

  return MEMORY[0x2822009F8](sub_26A08BED8, v4, v3);
}

uint64_t sub_26A08BED8(uint64_t a1)
{
  v2 = *(v1[3] + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_cachedDescriptorCollection);
  if (v2)
  {

    v3 = sub_26A09DE04();
    v4 = sub_26A09E104();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26A066000, v3, v4, "Returning cached descriptor collection", v5, 2u);
      MEMORY[0x26D65A520](v5, -1, -1);
    }

    v6 = v1[2];

    *v6 = v2;
    v7 = v1[1];

    return v7();
  }

  else
  {
    v9 = sub_26A09DE04();
    v10 = sub_26A09E104();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26A066000, v9, v10, "No cached descriptor collection, subscribing", v11, 2u);
      MEMORY[0x26D65A520](v11, -1, -1);
    }

    v12 = swift_task_alloc();
    v1[4] = v12;
    *v12 = v1;
    v12[1] = sub_26A08C0C0;
    v13 = v1[2];

    return sub_26A08C5C4(v13);
  }
}

uint64_t sub_26A08C0C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26A08C1B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369348, &qword_26A09F538);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369350, &qword_26A09F540);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  *v7 = 1;
  (*(v5 + 104))(v7, *MEMORY[0x277D85768], v4);
  sub_26A09E004();
  v15 = v7;
  v16 = v24[1];
  (*(v5 + 8))(v15, v4);
  v17 = sub_26A09DFF4();
  (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
  (*(v9 + 16))(v12, v14, v8);
  v18 = qword_280369100;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = off_280369A30;
  v20 = sub_26A0831F8();
  v21 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v19;
  *(v22 + 3) = v20;
  *(v22 + 4) = v16;
  (*(v9 + 32))(&v22[v21], v12, v8);

  sub_26A06B90C(0, 0, v3, &unk_26A09FE78, v22);

  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_26A08C518()
{
  sub_26A09DE14();
  *(v0 + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_connection) = 0;
  *(v0 + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_subscribeTask) = 0;
  *(v0 + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_cachedDescriptorCollection) = 0;
  *(v0 + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_streamContinuations) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_observer) = 0;
  *(v0 + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_restartSubscription) = 0;
  return v0;
}

uint64_t sub_26A08C5C4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  v2[5] = swift_task_alloc();
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  v2[6] = off_280369A30;
  type metadata accessor for AuthorizationActor();
  v2[7] = sub_26A0831F8();
  v4 = sub_26A09DFA4();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x2822009F8](sub_26A08C6C4, v4, v3);
}

uint64_t sub_26A08C6C4(uint64_t a1)
{
  v29 = v1;
  v2 = v1[4];
  v3 = OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_subscribeTask;
  v1[10] = OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_subscribeTask;
  v4 = *(v2 + v3);
  v1[11] = v4;
  if (v4)
  {

    v5 = sub_26A09DE04();
    v6 = sub_26A09E0F4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v28 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_26A089EEC(0x6269726373627573, 0xEB00000000292865, &v28);
      _os_log_impl(&dword_26A066000, v5, v6, "Call to %s with outstanding subscribe task. Awaiting.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x26D65A520](v8, -1, -1);
      MEMORY[0x26D65A520](v7, -1, -1);
    }

    v9 = swift_task_alloc();
    v1[12] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369628, &unk_26A09FBA0);
    *v9 = v1;
    v9[1] = sub_26A08CA60;
    v11 = v1[3];
    v12 = MEMORY[0x277D84950];
    v13 = v4;
  }

  else
  {
    v14 = sub_26A09DE04();
    v15 = sub_26A09E124();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_26A066000, v14, v15, "Subscribing", v16, 2u);
      MEMORY[0x26D65A520](v16, -1, -1);
    }

    v17 = v1[6];
    v18 = v1[7];
    v20 = v1[4];
    v19 = v1[5];

    sub_26A08E0A8();
    v21 = sub_26A09DFF4();
    v1[14] = v21;
    v22 = *(v21 - 8);
    v23 = *(v22 + 56);
    v1[15] = v23;
    v1[16] = (v22 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v23(v19, 1, 1, v21);
    v24 = swift_allocObject();
    v24[2] = v17;
    v24[3] = v18;
    v24[4] = v20;

    v25 = sub_26A08B930(0, 0, v19, &unk_26A09FE30, v24);
    v1[17] = v25;
    *(v2 + v3) = v25;

    v26 = swift_task_alloc();
    v1[18] = v26;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369628, &unk_26A09FBA0);
    *v26 = v1;
    v26[1] = sub_26A08CC08;
    v12 = MEMORY[0x277D84950];
    v11 = v1 + 2;
    v13 = v25;
  }

  return MEMORY[0x282200430](v11, v13, &type metadata for AuthorizationDescriptorCollection, v10, v12);
}

uint64_t sub_26A08CA60()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_26A08CE94;
  }

  else
  {
    v5 = sub_26A08CB9C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26A08CB9C(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_26A08CC08()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_26A08CF00;
  }

  else
  {
    v5 = sub_26A08CD44;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26A08CD44()
{
  v14 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[10];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v12 = v0[3];
  v13 = v0[2];
  v8 = v13;

  sub_26A08EBDC(&v13);

  *(v6 + v3) = 0;

  v2(v7, 1, 1, v1);
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;

  sub_26A06B90C(0, 0, v7, &unk_26A09FE40, v9);

  *v12 = v8;

  v10 = v0[1];

  return v10();
}

uint64_t sub_26A08CE94(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_26A08CF00()
{
  sub_26A08DD24();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26A08CF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369350, &qword_26A09F540);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  v5[8] = off_280369A30;
  type metadata accessor for AuthorizationActor();
  v5[9] = sub_26A0831F8();
  v8 = sub_26A09DFA4();

  return MEMORY[0x2822009F8](sub_26A08D0F0, v8, v7);
}

uint64_t sub_26A08D0F0()
{
  v1 = v0[2];
  (*(v0[6] + 16))(v0[7], v0[3], v0[5]);
  v2 = OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_streamContinuations;
  v3 = *(v1 + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_streamContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_26A07B5B4(0, v3[2] + 1, 1, v3);
    *(v1 + v2) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_26A07B5B4((v5 > 1), v6 + 1, 1, v3);
  }

  v7 = v0[8];
  v17 = v0[9];
  v8 = v0[6];
  v9 = v0[7];
  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[2];
  v3[2] = v6 + 1;
  (*(v8 + 32))(v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6, v9, v10);
  *(v1 + v2) = v3;
  v13 = sub_26A09DFF4();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = v7;
  v14[3] = v17;
  v14[4] = v12;

  sub_26A08B93C(0, 0, v11, &unk_26A09FE80, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_26A08D2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A0831F8();
  v6 = sub_26A09DFA4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26A08D3AC, v6, v5);
}

uint64_t sub_26A08D3AC()
{
  v1 = v0[3];
  if (*(v1 + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_cachedDescriptorCollection) && *(v1 + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_connection) || *(v1 + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_subscribeTask))
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_26A08D4AC;

    return sub_26A08C5C4((v0 + 2));
  }
}

uint64_t sub_26A08D4AC()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_26A08D5E0;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_26A08D5C8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

id sub_26A08D5F8()
{
  v1 = sub_26A09DE24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v0;
  v5 = *(v0 + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_connection);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_connection);
  }

  else
  {
    v40 = OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_connection;
    v7 = [objc_allocWithZone(_s10ConnectionC8ObserverCMa(0)) init];
    v8 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v9 = sub_26A09DE74();
    v10 = [v8 initWithMachServiceName:v9 options:0];

    if (qword_280369100 != -1)
    {
      swift_once();
    }

    [v10 _setQueue_];
    v11 = objc_opt_self();
    v12 = [v11 interfaceWithProtocol_];
    [v10 setExportedInterface_];

    v39 = v7;
    [v10 setExportedObject_];
    v13 = [v11 interfaceWithProtocol_];
    [v10 setRemoteObjectInterface_];

    v14 = swift_allocObject();
    v15 = v42;
    swift_weakInit();
    v41 = v10;
    v16 = *(v2 + 16);
    v37 = OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_logger;
    v38 = v16;
    v16(&v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_logger, v1);
    v17 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v35 = v17;
    v18 = (v3 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    v36 = *(v2 + 32);
    v36(v19 + v17, v4, v1);
    *(v19 + v18) = v14;
    v47 = sub_26A0905C4;
    v48 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_26A08BDD4;
    v46 = &block_descriptor_39;
    v20 = _Block_copy(&aBlock);

    [v41 setInterruptionHandler_];
    _Block_release(v20);
    v21 = swift_allocObject();
    v22 = v42;
    swift_weakInit();
    v38(v4, v22 + v37, v1);
    v23 = v41;
    v24 = swift_allocObject();
    v36(v24 + v35, v4, v1);
    *(v24 + v18) = v21;
    v47 = sub_26A0905DC;
    v48 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_26A08BDD4;
    v46 = &block_descriptor_46;
    v25 = _Block_copy(&aBlock);

    [v23 setInvalidationHandler_];
    _Block_release(v25);
    [v23 activate];
    v26 = OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_observer;
    v27 = *(v22 + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_observer);
    if (v27)
    {
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803698F0, &qword_26A09FE00);
      sub_26A09E034();
      v29 = v42;

      v30 = *(v29 + v26);
    }

    else
    {
      v30 = 0;
    }

    v31 = v42;
    *(v42 + v26) = v39;

    v32 = *(v31 + v40);
    *(v31 + v40) = v23;
    v6 = v23;

    v5 = 0;
  }

  v33 = v5;
  return v6;
}

uint64_t sub_26A08DAF8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_26A09DE04();
  v6 = sub_26A09E114();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26A066000, v5, v6, "Connection Interrupted", v7, 2u);
    MEMORY[0x26D65A520](v7, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_26A08DD24();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_26A09DFF4();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    v11 = qword_280369100;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = off_280369A30;
    v13 = sub_26A0831F8();
    v14 = swift_allocObject();
    v14[2] = v12;
    v14[3] = v13;
    v14[4] = v9;

    sub_26A08B93C(0, 0, v4, &unk_26A09FD80, v14);
  }

  return result;
}

void sub_26A08DD24()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_connection);
  *(v0 + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_connection) = 0;

  v3 = OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_observer;
  v4 = *(v0 + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_observer);
  if (v4)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803698F0, &qword_26A09FE00);
    sub_26A09E034();

    v6 = *(v1 + v3);
  }

  else
  {
    v6 = 0;
  }

  *(v1 + v3) = 0;
}

uint64_t sub_26A08DDC8(uint64_t a1, uint64_t a2)
{
  v2 = sub_26A09DE04();
  v3 = sub_26A09E114();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26A066000, v2, v3, "Connection Invalidated", v4, 2u);
    MEMORY[0x26D65A520](v4, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_26A08DD24();
  }

  return result;
}

uint64_t sub_26A08DE98(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A08D5F8();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  aBlock[4] = sub_26A090580;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A089DA8;
  aBlock[3] = &block_descriptor_30;
  v6 = _Block_copy(aBlock);

  v7 = [v4 remoteObjectProxyWithErrorHandler_];
  _Block_release(v6);
  sub_26A09E1C4();

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369918, &qword_26A09FE60);
  swift_dynamicCast();
  return v9;
}

uint64_t sub_26A08DFDC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A0831F8();
  sub_26A09DFA4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return a2(a1);
}

uint64_t sub_26A08E0A8()
{
  v1 = v0;
  v2 = sub_26A09DE24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_restartSubscription;
  if (!*(v0 + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_restartSubscription))
  {
    v7 = OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_logger;
    v8 = sub_26A09DE04();
    v9 = sub_26A09E124();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_26A066000, v8, v9, "Registering for restart notification.", v10, 2u);
      MEMORY[0x26D65A520](v10, -1, -1);
    }

    (*(v3 + 16))(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + v7, v2);
    v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v12 = swift_allocObject();
    (*(v3 + 32))(v12 + v11, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    *(v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;

    v13 = sub_26A09DDA4();

    *(v1 + v6) = v13;
  }

  return result;
}

uint64_t sub_26A08E2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  v4[5] = off_280369A30;
  type metadata accessor for AuthorizationActor();
  v4[6] = sub_26A0831F8();
  v6 = sub_26A09DFA4();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_26A08E378, v6, v5);
}

uint64_t sub_26A08E378()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_26A08E458;
  v4 = v0[4];

  return MEMORY[0x2822008A0](v0 + 2, v1, v2, 0x6269726373627573, 0xEB00000000292865, sub_26A0901E4, v4, &type metadata for AuthorizationDescriptorCollection);
}

uint64_t sub_26A08E458()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_26A08E680;
  }

  else
  {
    v5 = sub_26A08E594;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26A08E594(uint64_t a1)
{
  v2 = v1[2];
  v3 = sub_26A09DE04();
  v4 = sub_26A09E124();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_26A066000, v3, v4, "Subscribe succeeded, received initial value.", v5, 2u);
    MEMORY[0x26D65A520](v5, -1, -1);
  }

  v6 = v1[3];

  *v6 = v2;
  v7 = v1[1];

  return v7();
}

uint64_t sub_26A08E698(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369910, &unk_26A09FE50);
  v4 = *(v3 - 8);
  v27 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v7 = sub_26A09DE24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A0831F8();
  sub_26A09DFA4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(v8 + 16);
  v23 = a2;
  v10(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2 + OBJC_IVAR____TtCC18SmartStackSettings20AuthorizationService10Connection_logger, v7);
  v24 = v7;
  v26 = *(v4 + 16);
  v26(v6, v28, v3);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = v3;
  v12 = *(v4 + 80);
  v25 = v12 | 7;
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v11, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  v14 = *(v4 + 32);
  v15 = v13 + ((v9 + v12 + v11) & ~v12);
  v16 = v22;
  v14(v15, v6, v22);
  v17 = sub_26A08DE98(sub_26A090340, v13);

  v26(v6, v28, v16);
  v18 = swift_allocObject();
  v14(v18 + ((v12 + 16) & ~v12), v6, v16);
  aBlock[4] = sub_26A0904B4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A074A0C;
  aBlock[3] = &block_descriptor_3;
  v19 = _Block_copy(aBlock);

  [v17 subscribeToDescriptorCollection_];
  _Block_release(v19);
  return swift_unknownObjectRelease();
}

uint64_t sub_26A08EA4C(void *a1)
{
  v2 = a1;
  v3 = sub_26A09DE04();
  v4 = sub_26A09E114();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_26A066000, v3, v4, "Subscribe failed: %@", v5, 0xCu);
    sub_26A08B1F0(v6);
    MEMORY[0x26D65A520](v6, -1, -1);
    MEMORY[0x26D65A520](v5, -1, -1);
  }

  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369910, &unk_26A09FE50);
  return sub_26A09DFC4();
}

uint64_t sub_26A08EB7C(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369910, &unk_26A09FE50);
  return sub_26A09DFD4();
}