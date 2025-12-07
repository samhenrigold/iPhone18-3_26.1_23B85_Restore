uint64_t sub_241CC6E98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_241C93918(&qword_27EC6A4A8, &qword_241CFD330);
  v34 = v4;
  result = sub_241CF97F8();
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_241CF9998();
      sub_241CF90B8();
      result = sub_241CF99C8();
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
      *(*(v7 + 56) + v15) = v24;
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

uint64_t sub_241CC7138(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_241C93918(&qword_27EC6A4A0, &qword_241CFD328);
  result = sub_241CF97F8();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_241C8E30C(v21, v30);
      }

      else
      {
        sub_241C93664(v21, v30);
      }

      sub_241CF9998();
      MEMORY[0x245CFE100](v20);
      result = sub_241CF99C8();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      result = sub_241C8E30C(v30, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_241CC73CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_241C93918(&qword_27EC6A498, &qword_241CFD320);
  v34 = v4;
  result = sub_241CF97F8();
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

      sub_241CF9998();
      sub_241CF90B8();
      result = sub_241CF99C8();
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

uint64_t sub_241CC7688(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_241C93918(&qword_27EC6A488, &unk_241CFD308);
  v37 = v4;
  result = sub_241CF97F8();
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
      v25 = *(v5 + 56) + (v21 << 6);
      if (v37)
      {
        v38 = *(v25 + 8);
        v43 = *(v25 + 16);
        v39 = *(v25 + 24);
        v40 = *v25;
        v41 = *(v25 + 32);
        v42 = *(v25 + 48);
      }

      else
      {
        v26 = *v25;
        v27 = *(v25 + 16);
        v28 = *(v25 + 48);
        v45 = *(v25 + 32);
        v46 = v28;
        v44[0] = v26;
        v44[1] = v27;
        v41 = v45;
        v42 = v28;
        v39 = *(&v27 + 1);
        v43 = v27;
        v38 = *(&v26 + 1);
        v40 = v26;

        sub_241CC5AB0(v44, v47);
      }

      sub_241CF9998();
      sub_241CF90B8();
      result = sub_241CF99C8();
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
      v17 = *(v7 + 56) + (v15 << 6);
      *v17 = v40;
      *(v17 + 8) = v38;
      *(v17 + 16) = v43;
      *(v17 + 24) = v39;
      *(v17 + 32) = v41;
      *(v17 + 48) = v42;
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

uint64_t sub_241CC79AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_241C93918(&qword_27EC6A460, &qword_241CFD2D8);
  v34 = v4;
  result = sub_241CF97F8();
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_241CF9998();
      sub_241CF90B8();
      result = sub_241CF99C8();
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
      *(*(v7 + 56) + v15) = v24;
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

uint64_t sub_241CC7CB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_241C93918(a3, a4);
  v37 = v6;
  result = sub_241CF97F8();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
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
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_241CF9998();
      sub_241CF90B8();
      result = sub_241CF99C8();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
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

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_241CC7F4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_241C93918(&qword_27EC6A450, &qword_241CFD2C8);
  v31 = v4;
  result = sub_241CF97F8();
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
      v20 = (*(v5 + 48) + 16 * (v17 | (v8 << 6)));
      v21 = *v20;
      v22 = v20[1];
      if ((v31 & 1) == 0)
      {
      }

      sub_241CF9998();
      sub_241CF90B8();
      result = sub_241CF99C8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v21;
      v16[1] = v22;
      ++*(v7 + 16);
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_241CC81F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_241C93918(a3, a4);
  v36 = v6;
  result = sub_241CF97F8();
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
      v26 = *(*(v7 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_241CF9998();
      sub_241CF90B8();
      result = sub_241CF99C8();
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
      *(*(v9 + 56) + v17) = v26;
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

void *sub_241CC849C()
{
  v1 = v0;
  sub_241C93918(&qword_27EC6A4A8, &qword_241CFD330);
  v2 = *v0;
  v3 = sub_241CF97E8();
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
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_241CC8604()
{
  v1 = v0;
  sub_241C93918(&qword_27EC6A4A0, &qword_241CFD328);
  v2 = *v0;
  v3 = sub_241CF97E8();
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
        v18 = *(*(v2 + 48) + v17);
        sub_241C93664(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_241C8E30C(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_241CC8780()
{
  v1 = v0;
  sub_241C93918(&qword_27EC6A498, &qword_241CFD320);
  v2 = *v0;
  v3 = sub_241CF97E8();
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

void *sub_241CC88F0()
{
  v1 = v0;
  sub_241C93918(&qword_27EC6A490, &qword_241CFD318);
  v2 = *v0;
  v3 = sub_241CF97E8();
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
        sub_241CBE164(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_241C93664(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_241C8E30C(v22, (*(v4 + 56) + v17));
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

void *sub_241CC8AA8()
{
  v1 = v0;
  sub_241C93918(&qword_27EC6A488, &unk_241CFD308);
  v2 = *v0;
  v3 = sub_241CF97E8();
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
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        result = sub_241CC5AB0(&v32, &v31);
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

void *sub_241CC8C48()
{
  v1 = v0;
  sub_241C93918(&qword_27EC6A460, &qword_241CFD2D8);
  v2 = *v0;
  v3 = sub_241CF97E8();
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
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

id sub_241CC8E14(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_241C93918(a1, a2);
  v4 = *v2;
  v5 = sub_241CF97E8();
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

        result = v22;
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

void *sub_241CC8F70()
{
  v1 = v0;
  sub_241C93918(&qword_27EC6A450, &qword_241CFD2C8);
  v2 = *v0;
  v3 = sub_241CF97E8();
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

void *sub_241CC90E0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_241C93918(a1, a2);
  v4 = *v2;
  v5 = sub_241CF97E8();
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
        v22 = *v20;
        v21 = v20[1];
        LOBYTE(v20) = *(*(v4 + 56) + v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = v22;
        v23[1] = v21;
        *(*(v6 + 56) + v19) = v20;
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

uint64_t sub_241CC928C(uint64_t a1)
{
  v2 = sub_241C93918(&qword_27EC6A438, &qword_241CFD278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSManagedObjectContext.executeAndMergeChanges(using:)(NSBatchDeleteRequest using)
{
  v21 = *MEMORY[0x277D85DE8];
  [(objc_class *)using.super.super.isa setResultType:1];
  *&v19 = 0;
  v3 = [v1 executeRequest:using.super.super.isa error:&v19];
  v4 = v19;
  if (!v3)
  {
    v8 = v19;
    sub_241CF8C58();

    swift_willThrow();
    return;
  }

  v5 = v3;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  v7 = v4;
  if (!v6)
  {
  }

  sub_241C93918(&qword_27EC6A4B0, &qword_241CFD338);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241CFAAF0;
  *&v19 = sub_241CF9038();
  *(&v19 + 1) = v10;
  sub_241CF9668();
  if (!v6)
  {
    v19 = 0u;
    v20 = 0u;
LABEL_15:
    sub_241C8EA54(&v19, &qword_27EC6A0B0, &qword_241CFE350);
    goto LABEL_16;
  }

  if ([v6 result])
  {
    sub_241CF95F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_15;
  }

  sub_241C93918(&qword_27EC6A4B8, &unk_241CFD340);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    *(inited + 96) = sub_241C93918(&qword_27EC6A4B8, &unk_241CFD340);
LABEL_17:
    v11 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v11 = v17;
  *(inited + 96) = sub_241C93918(&qword_27EC6A4B8, &unk_241CFD340);
  if (!v17)
  {
    goto LABEL_17;
  }

LABEL_18:
  *(inited + 72) = v11;
  sub_241CE0808(inited);
  swift_setDeallocating();
  sub_241C8EA54(inited + 32, &qword_27EC6A4C0, &unk_241CFEDA0);
  v12 = objc_opt_self();
  v13 = sub_241CF8EE8();

  sub_241C93918(&qword_27EC6A0A0, &qword_241CFC458);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_241CFBC10;
  *(v14 + 32) = v1;
  sub_241CC9658();
  v15 = v1;
  v16 = sub_241CF9288();

  [v12 mergeChangesFromRemoteContextSave:v13 intoContexts:v16];
}

unint64_t sub_241CC9658()
{
  result = qword_27EC6A4C8;
  if (!qword_27EC6A4C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC6A4C8);
  }

  return result;
}

uint64_t AssetInfo.sequenceNumber.getter(uint64_t a1, uint64_t a2)
{
  AssetInfo.seriesOrdering.getter(a1, a2, &v8);
  if (v8 != 2)
  {
    return 0;
  }

  MEMORY[0x28223BE20](v4);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v6 = swift_getKeyPath();
  sub_241CC432C(KeyPath, v6, a1, *(a2 + 8), &v8);

  return v8;
}

uint64_t AssetInfo.releaseDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  sub_241CC6184(KeyPath, v7, a1, *(a2 + 8), a3);
}

uint64_t sub_241CC9940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  sub_241CC432C(KeyPath, v7, a1, *(a2 + 8), &v9);

  return v9;
}

uint64_t AssetType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F6F626F69647561;
  }

  if (a1 == 1)
  {
    return 1802465122;
  }

  return 6710384;
}

uint64_t sub_241CC9A68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1802465122;
  if (v2 != 1)
  {
    v4 = 6710384;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6F6F626F69647561;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE90000000000006BLL;
  }

  v7 = 0xE400000000000000;
  v8 = 1802465122;
  if (*a2 != 1)
  {
    v8 = 6710384;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F6F626F69647561;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE90000000000006BLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_241CF98C8();
  }

  return v11 & 1;
}

uint64_t sub_241CC9B4C()
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CC9BE4(uint64_t a1)
{
  sub_241CF90B8();
}

uint64_t sub_241CC9C68(uint64_t a1)
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

unint64_t sub_241CC9CFC@<X0>(Swift::String *a1@<X0>, BookFoundation::AssetType_optional *a2@<X8>)
{
  result = _s14BookFoundation9AssetTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_241CC9D2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006BLL;
  v4 = 0xE400000000000000;
  v5 = 1802465122;
  if (v2 != 1)
  {
    v5 = 6710384;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F6F626F69647561;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FinishedDateKind.hashValue.getter()
{
  v1 = *v0;
  sub_241CF9998();
  MEMORY[0x245CFE100](v1);
  return sub_241CF99C8();
}

uint64_t sub_241CC9E6C@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 16);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result;
  a3[1] = v8;
  return result;
}

char *AssetInfo.authors.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for ContentDataSource(0, AssociatedTypeWitness, v5, v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v36 - v9);
  (*(v3 + 40))(a1, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v8 + 8))(v10, v7);
      return 0;
    }

    v12 = *v10;
  }

  else
  {
    v12 = *(v10 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(AssociatedTypeWitness - 8) + 8))(v10, AssociatedTypeWitness);
  }

  v13 = sub_241CA8158(@"authors");

  if (!v13)
  {
    return 0;
  }

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_23:

    return MEMORY[0x277D84F90];
  }

  v14 = sub_241CF97D8();
  if (!v14)
  {
    goto LABEL_23;
  }

LABEL_9:
  v37 = MEMORY[0x277D84F90];
  result = sub_241C945F4(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = v37;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = 0;
      do
      {
        v18 = MEMORY[0x245CFDE40](v17, v13);
        v20 = *(v18 + OBJC_IVAR____TtC14BookFoundation9MResource_id);
        v19 = *(v18 + OBJC_IVAR____TtC14BookFoundation9MResource_id + 8);
        v22 = *(v18 + OBJC_IVAR____TtC14BookFoundation7MAuthor_name);
        v21 = *(v18 + OBJC_IVAR____TtC14BookFoundation7MAuthor_name + 8);

        swift_unknownObjectRelease();
        v37 = v16;
        v24 = *(v16 + 16);
        v23 = *(v16 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_241C945F4((v23 > 1), v24 + 1, 1);
          v16 = v37;
        }

        ++v17;
        *(v16 + 16) = v24 + 1;
        v25 = (v16 + 32 * v24);
        v25[4] = v20;
        v25[5] = v19;
        v25[6] = v22;
        v25[7] = v21;
      }

      while (v14 != v17);
    }

    else
    {
      v26 = (v13 + 32);
      v36 = v13;
      do
      {
        v27 = (*v26 + OBJC_IVAR____TtC14BookFoundation9MResource_id);
        v29 = *v27;
        v28 = v27[1];
        v30 = (*v26 + OBJC_IVAR____TtC14BookFoundation7MAuthor_name);
        v32 = *v30;
        v31 = v30[1];
        v37 = v16;
        v34 = *(v16 + 16);
        v33 = *(v16 + 24);

        if (v34 >= v33 >> 1)
        {
          sub_241C945F4((v33 > 1), v34 + 1, 1);
          v16 = v37;
        }

        *(v16 + 16) = v34 + 1;
        v35 = (v16 + 32 * v34);
        v35[4] = v29;
        v35[5] = v28;
        v35[6] = v32;
        v35[7] = v31;
        ++v26;
        --v14;
      }

      while (v14);
    }

    return v16;
  }

  __break(1u);
  return result;
}

void AssetInfo.coverAspectRatio.getter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v5 = *(a2 + 8);
  sub_241CC40F0(KeyPath, a1, v5, &v9);

  if (v10 & 1) != 0 || (MEMORY[0x28223BE20](v6), v7 = swift_getKeyPath(), sub_241CC40F0(v7, a1, v5, &v9), v6 = , (v10))
  {
    MEMORY[0x28223BE20](v6);
    v8 = swift_getKeyPath();
    sub_241CC6640(v8, a1, v5, &v9);

    if (v10)
    {
      AssetInfo.defaultCoverAspectRatio.getter(a1, a2);
    }
  }
}

uint64_t sub_241CCA44C@<X0>(uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 24);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result;
  *(a3 + 8) = v8 & 1;
  return result;
}

double AssetInfo.defaultCoverAspectRatio.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24))(a1))
  {
    v2 = sub_241CF98C8();

    result = 0.641025641;
    if (v2)
    {
      return 1.0;
    }
  }

  else
  {

    return 1.0;
  }

  return result;
}

uint64_t sub_241CCA5C8@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 32);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_241CCA694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 40);
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness);
}

void *AssetInfo.featuredEditions.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for ContentDataSource(0, AssociatedTypeWitness, v5, v6);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - v9);
  (*(v3 + 40))(a1, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v8 + 8))(v10, v7);
      return 0;
    }

    v12 = *v10;
  }

  else
  {
    v12 = *(v10 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(AssociatedTypeWitness - 8) + 8))(v10, AssociatedTypeWitness);
  }

  v13 = sub_241CA8140(@"featured-editions");

  if (!v13)
  {
    return 0;
  }

  if (v13 >> 62)
  {
    goto LABEL_29;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14)
  {
LABEL_9:
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x245CFDE40](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v18 = *(v13 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v14 = sub_241CF97D8();
        if (!v14)
        {
          goto LABEL_30;
        }

        goto LABEL_9;
      }

      type metadata accessor for MBook(0);
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        break;
      }

      type metadata accessor for MAudiobook(0);
      v26 = swift_dynamicCastClass();
      if (v26)
      {
        v27 = v26;
        v28 = type metadata accessor for AudiobookInfo(0);
        *(&v33 + 1) = v28;
        v34 = sub_241CA86F4(&qword_27EC69ED0, type metadata accessor for AudiobookInfo, &protocol conformance descriptor for AudiobookInfo);
        v24 = sub_241CA8DEC(&v32);
        *v24 = v27;
        sub_241C93918(&qword_27EC69ED8, &unk_241CFB550);
        swift_storeEnumTagMultiPayload();
        *(v24 + *(v28 + 20)) = 0;
        v25 = (v28 + 24);
        goto LABEL_20;
      }

      v36 = type metadata accessor for MAsset(0);
      *&v35 = v19;
      v17 = sub_241C93918(&qword_27EC69DD8, &unk_241CFB540);
      sub_241CBC000(&v35, v17);
      sub_241C8EEE8(&v35);
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
      sub_241C8EA54(&v32, &qword_27EC69EC8, &qword_241CFD7D0);
LABEL_11:
      ++v15;
      if (v20 == v14)
      {
        goto LABEL_31;
      }
    }

    v22 = v21;
    v23 = type metadata accessor for BookInfo(0);
    *(&v33 + 1) = v23;
    v34 = sub_241CA86F4(&qword_27EC69EE0, type metadata accessor for BookInfo, &protocol conformance descriptor for BookInfo);
    v24 = sub_241CA8DEC(&v32);
    *v24 = v22;
    sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
    swift_storeEnumTagMultiPayload();
    v25 = (v23 + 20);
LABEL_20:
    *(v24 + *v25) = 1;
    sub_241C914E4(&v32, &v35);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_241CBFD98(0, v16[2] + 1, 1, v16);
    }

    v30 = v16[2];
    v29 = v16[3];
    if (v30 >= v29 >> 1)
    {
      v16 = sub_241CBFD98((v29 > 1), v30 + 1, 1, v16);
    }

    v16[2] = v30 + 1;
    sub_241C914E4(&v35, &v16[5 * v30 + 4]);
    goto LABEL_11;
  }

LABEL_30:
  v16 = MEMORY[0x277D84F90];
LABEL_31:

  return v16;
}

uint64_t AssetInfo.finishedDateKind.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_241CC6640(KeyPath, a1, *(a2 + 8), a3);
}

void *sub_241CCACA0@<X0>(_BYTE *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 64);
  v6 = swift_checkMetadataState();
  result = v5(&v8, v6, AssociatedConformanceWitness);
  *a3 = v8;
  return result;
}

uint64_t sub_241CCAD68@<X0>(_BYTE *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 72);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t sub_241CCAE2C@<X0>(_BYTE *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 88);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t sub_241CCAEE8@<X0>(_BYTE *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 96);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t AssetInfo.isFree.getter(uint64_t a1, uint64_t a2)
{
  v2 = (AssetInfo.price.getter(a1, a2) & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (v3)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_241CCAFE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  swift_getKeyPath();
  a4(&v6);

  return v6;
}

uint64_t sub_241CCB068@<X0>(_BYTE *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 144);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t sub_241CCB124@<X0>(_BYTE *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 120);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t sub_241CCB1E8@<X0>(_BYTE *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 128);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t sub_241CCB2A4@<X0>(_BYTE *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 136);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t sub_241CCB360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  sub_241CC68E4(KeyPath, a1, *(a2 + 8), &v7);

  return v7;
}

uint64_t sub_241CCB3C4@<X0>(_BYTE *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 152);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result & 1;
  return result;
}

uint64_t sub_241CCB494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 168);
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness);
}

double AssetInfo.readingProgress.getter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  sub_241CC68E4(KeyPath, a1, *(a2 + 8), &v6);

  result = v6;
  if (v7)
  {
    return 0.0;
  }

  return result;
}

void sub_241CCB5F0(double *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 184);
  v6 = swift_checkMetadataState();
  *a3 = v5(v6, AssociatedConformanceWitness);
}

uint64_t sub_241CCB69C@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

uint64_t sub_241CCB754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 192);
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness);
}

uint64_t AssetInfo.supportsUnifiedProductPage.getter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  sub_241CC5F00(KeyPath, a1, *(a2 + 8), &v6);

  return v6 & 1;
}

void AssetInfo.seriesOrdering.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v34 = a2;
  v6 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v38 = &v32 - v8;
  v36 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for ContentDataSource(0, AssociatedTypeWitness, v36, v9);
  v35 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v32 - v14);
  v16 = *(v6 + 40);
  v37 = v3;
  v16(a1, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v35 + 8))(v15, v10);
      goto LABEL_13;
    }

    v33 = a3;
    v18 = *v15;
  }

  else
  {
    v33 = a3;
    v18 = *(v15 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v39 + 8))(v15, AssociatedTypeWitness);
  }

  v19 = *((*MEMORY[0x277D85000] & *v18) + 0x140);
  v20 = v18;
  if (v19())
  {

    a3 = v33;
  }

  else
  {
    type metadata accessor for MBook(0);
    v27 = swift_dynamicCastClass();

    a3 = v33;
    if (v27)
    {

LABEL_26:
      *a3 = 1;
      return;
    }
  }

  v21 = MAsset.seriesResource.getter();

  if (v21)
  {
    v22 = v21[OBJC_IVAR____TtC14BookFoundation7MSeries_isOrdered];

    if (v22)
    {
      v23 = 2;
    }

    else
    {
      v23 = 3;
    }

    *a3 = v23;
    return;
  }

LABEL_13:
  v16(a1, v6);
  v24 = swift_getEnumCaseMultiPayload();
  if (v24)
  {
    v25 = v38;
    v26 = v39;
    if (v24 != 1)
    {
      (*(v35 + 8))(v13, v10);
LABEL_28:
      *a3 = 0;
      return;
    }
  }

  else
  {

    v25 = v38;
    v26 = v39;
  }

  (*(v26 + 32))(v25, v13, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (((*(AssociatedConformanceWitness + 120))(AssociatedTypeWitness, AssociatedConformanceWitness) & 1) == 0)
  {
    (*(v26 + 8))(v25, AssociatedTypeWitness);
    goto LABEL_26;
  }

  (*(AssociatedConformanceWitness + 216))(&v40, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v26 + 8))(v25, AssociatedTypeWitness);
  if (!v41)
  {
    sub_241C8EA54(&v40, &qword_27EC69E58, &qword_241CFB200);
    goto LABEL_28;
  }

  sub_241C914E4(&v40, v42);
  v29 = v43;
  v30 = v44;
  sub_241C97000(v42, v43);
  if ((*(v30 + 72))(v29, v30))
  {
    v31 = 2;
  }

  else
  {
    v31 = 3;
  }

  *a3 = v31;
  sub_241C8EEE8(v42);
}

uint64_t sub_241CCBD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  sub_241CC5F00(KeyPath, a1, *(a2 + 8), &v7);

  return v7;
}

uint64_t sub_241CCBDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 216);
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness);
}

uint64_t sub_241CCBE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_241CA22A4(a1, v8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 224);
  v6 = swift_checkMetadataState();
  return v5(v8, v6, AssociatedConformanceWitness);
}

uint64_t AssetInfo.sequenceLabel.getter(uint64_t a1, uint64_t a2)
{
  AssetInfo.seriesOrdering.getter(a1, a2, &v8);
  if (v8 != 2)
  {
    return 0;
  }

  MEMORY[0x28223BE20](v4);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v6 = swift_getKeyPath();
  sub_241CC432C(KeyPath, v6, a1, *(a2 + 8), &v8);

  return v8;
}

uint64_t sub_241CCC028@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 200);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_241CCC0D4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*((*MEMORY[0x277D85000] & **a1) + 0x140))();
  v4 = sub_241CAF20C(1, v3);
  v6 = v5;
  v8 = v7;

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 20) = BYTE4(v8) & 1;
  return result;
}

uint64_t sub_241CCC178@<X0>(uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 208);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 20) = v10 & 1;
  return result;
}

uint64_t sub_241CCC230@<X0>(uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 240);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result;
  *(a3 + 8) = v8 & 1;
  return result;
}

uint64_t sub_241CCC310(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  a4(KeyPath, a1);
}

uint64_t sub_241CCC384@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 64);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_241CCC440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  sub_241CC40F0(KeyPath, a1, *(a2 + 8), &v7);

  return v7;
}

void sub_241CCC4A4(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_241CF9038();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void AssetInfo.enrich(with:)(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v119 = a1;
  v117 = a4;
  v115 = a3;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v109 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v111 = &v107 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v110 = &v107 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v112 = &v107 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v107 - v17;
  v19 = swift_getAssociatedTypeWitness();
  v118 = AssociatedTypeWitness;
  v114 = v19;
  v21 = type metadata accessor for ContentDataSource(0, AssociatedTypeWitness, v19, v20);
  v113 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = (&v107 - v25);
  v27 = *(v6 + 40);
  v120 = v4;
  v27(a2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v116 = a2;
  if (!EnumCaseMultiPayload)
  {
    v29 = v118;
    v107 = *(v26 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v8 + 32))(v18, v26, v29);
    v30 = v119[3];
    v31 = v119[4];
    sub_241C97000(v119, v30);
    v32 = ContentInfo.storeData.getter(v30, v31[1]);
    if (v32)
    {
      v33 = v32;
      v108 = v8;
      v34 = v107;
      v35 = MAsset.enrichIfNeeded(with:)();

      if (v35)
      {
        v36 = v118;
        v125 = v118;
        v38 = v115;
        v37 = v116;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v39 = sub_241CA8DEC(&v124);
        v40 = v108;
        v41 = v18;
        (*(v108 + 16))(v39, v18, v36);
        v42 = v35;
        static ContentInfoUtilities.assetInfo(libraryAssetInfo:storeAsset:)(&v124, v35, v127);

        sub_241C8EA54(&v124, &qword_27EC69F10, &qword_241CFB960);
        if (v128)
        {
          (*(v40 + 8))(v41, v36);

LABEL_12:
          v50 = v127;
LABEL_31:
          sub_241C914E4(v50, v117);
          return;
        }

        v95 = v117;
        v117[3] = v37;
        v95[4] = v38;
        v96 = sub_241CA8DEC(v95);
        (*(*(v37 - 8) + 16))(v96, v120, v37);

        (*(v40 + 8))(v41, v36);
LABEL_35:
        if (v128)
        {
          sub_241C8EA54(v127, &qword_27EC69EC8, &qword_241CFD7D0);
        }

        return;
      }

      v8 = v108;
      (*(v108 + 8))(v18, v118);
    }

    else
    {
      (*(v8 + 8))(v18, v29);
    }

LABEL_17:
    a2 = v116;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v108 = v8;
    v43 = *v26;
    v44 = v119[3];
    v45 = v119[4];
    sub_241C97000(v119, v44);
    v46 = ContentInfo.storeData.getter(v44, v45[1]);
    if (!v46)
    {

      v8 = v108;
      goto LABEL_18;
    }

    v47 = v46;
    v48 = v43;
    v49 = MAsset.enrichIfNeeded(with:)();

    if (v49)
    {
      static ContentInfoUtilities.assetInfo(storeAsset:)(v49, v127);
      if (v128)
      {

        goto LABEL_12;
      }

      v98 = v116;
      v97 = v117;
      v99 = v115;
      v117[3] = v116;
      v97[4] = v99;
      v100 = sub_241CA8DEC(v97);
      (*(*(v98 - 8) + 16))(v100, v120, v98);

      goto LABEL_35;
    }

    v8 = v108;
    goto LABEL_17;
  }

  (*(v113 + 8))(v26, v21);
LABEL_18:
  v27(a2, v6);
  v51 = swift_getEnumCaseMultiPayload();
  if (v51)
  {
    if (v51 != 1)
    {
      (*(v113 + 8))(v24, v21);
      goto LABEL_25;
    }

    v52 = v118;
    (*(v8 + 32))(v111, v24, v118);
    v53 = v119[3];
    v54 = v119[4];
    sub_241C97000(v119, v53);
    v55 = v8;
    v56 = v54[1];
    v57 = swift_getAssociatedTypeWitness();
    v58 = sub_241CF9598();
    v119 = &v107;
    v59 = *(v58 - 8);
    MEMORY[0x28223BE20](v58);
    v61 = &v107 - v60;
    ContentInfo.libraryData.getter(v53, v56, &v107 - v60);
    v62 = *(v57 - 8);
    if ((*(v62 + 48))(v61, 1, v57) == 1)
    {
      (*(v59 + 8))(v61, v58);
      (*(v55 + 8))(v111, v52);
      a2 = v116;
LABEL_25:
      v74 = v115;
      v75 = v117;
      v117[3] = a2;
      v75[4] = v74;
      v76 = sub_241CA8DEC(v75);
      (*(*(a2 - 8) + 16))(v76, v120, a2);
      return;
    }

    v125 = v57;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v77 = sub_241CA8DEC(&v124);
    (*(v62 + 32))(v77, v61, v57);
    sub_241C914E4(&v124, v127);
    v79 = v115;
    v78 = v116;
    v80 = swift_getAssociatedConformanceWitness();
    v81 = v109;
    v82 = v111;
    LibraryAssetInfo.enriched(with:)(v127, v52, v80, v109);
    v122 = v52;
    v123 = v80;
    v83 = sub_241CA8DEC(v121);
    (*(v55 + 16))(v83, v81, v52);
    static ContentInfoUtilities.assetInfo(libraryAssetInfo:)(v121, &v124);
    sub_241C8EEE8(v121);
    if (v125)
    {
      v84 = *(v55 + 8);
      v84(v81, v52);
      sub_241C8EEE8(v127);
      v84(v82, v52);
LABEL_30:
      v50 = &v124;
      goto LABEL_31;
    }

    v101 = v117;
    v117[3] = v78;
    v101[4] = v79;
    v102 = sub_241CA8DEC(v101);
    (*(*(v78 - 8) + 16))(v102, v120, v78);
    v103 = *(v55 + 8);
    v103(v81, v52);
    sub_241C8EEE8(v127);
    v103(v82, v52);
  }

  else
  {
    v63 = v118;
    v114 = *&v24[*(swift_getTupleTypeMetadata2() + 48)];
    (*(v8 + 32))(v112, v24, v63);
    v64 = v119[3];
    v65 = v119[4];
    sub_241C97000(v119, v64);
    v66 = v65[1];
    v67 = swift_getAssociatedTypeWitness();
    v68 = v8;
    v69 = sub_241CF9598();
    v119 = &v107;
    v70 = *(v69 - 8);
    MEMORY[0x28223BE20](v69);
    v72 = &v107 - v71;
    ContentInfo.libraryData.getter(v64, v66, &v107 - v71);
    v73 = *(v67 - 8);
    if ((*(v73 + 48))(v72, 1, v67) == 1)
    {

      (*(v70 + 8))(v72, v69);
      (*(v68 + 8))(v112, v63);
      a2 = v116;
      goto LABEL_25;
    }

    v125 = v67;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v85 = sub_241CA8DEC(&v124);
    (*(v73 + 32))(v85, v72, v67);
    sub_241C914E4(&v124, v127);
    v87 = v115;
    v86 = v116;
    v88 = swift_getAssociatedConformanceWitness();
    v89 = v110;
    v90 = v112;
    LibraryAssetInfo.enriched(with:)(v127, v63, v88, v110);
    v122 = v63;
    v123 = v88;
    v91 = sub_241CA8DEC(v121);
    (*(v68 + 16))(v91, v89, v63);
    v92 = v114;
    v93 = v114;
    static ContentInfoUtilities.assetInfo(libraryAssetInfo:storeAsset:)(v121, v92, &v124);

    sub_241C8EA54(v121, &qword_27EC69F10, &qword_241CFB960);
    if (v125)
    {

      v94 = *(v68 + 8);
      v94(v89, v63);
      sub_241C8EEE8(v127);
      v94(v90, v63);
      goto LABEL_30;
    }

    v104 = v117;
    v117[3] = v86;
    v104[4] = v87;
    v105 = sub_241CA8DEC(v104);
    (*(*(v86 - 8) + 16))(v105, v120, v86);

    v106 = *(v68 + 8);
    v106(v89, v63);
    sub_241C8EEE8(v127);
    v106(v90, v63);
  }

  if (v125)
  {
    sub_241C8EA54(&v124, &qword_27EC69EC8, &qword_241CFD7D0);
  }
}

unint64_t _s14BookFoundation9AssetTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_241CF9838();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_241CCD2F4@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_241CCD384()
{
  result = qword_27EC6A4D0;
  if (!qword_27EC6A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A4D0);
  }

  return result;
}

unint64_t sub_241CCD3DC()
{
  result = qword_27EC6A4D8;
  if (!qword_27EC6A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A4D8);
  }

  return result;
}

unint64_t sub_241CCD434()
{
  result = qword_27EC6A4E0;
  if (!qword_27EC6A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A4E0);
  }

  return result;
}

unint64_t sub_241CCD48C()
{
  result = qword_27EC6A4E8;
  if (!qword_27EC6A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A4E8);
  }

  return result;
}

unint64_t sub_241CCD548()
{
  result = qword_27EC6A4F0;
  if (!qword_27EC6A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A4F0);
  }

  return result;
}

uint64_t sub_241CCD5B8()
{
  v0 = sub_241CF8DA8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_241CF8E08();
  sub_241CA20B4(v4, qword_2810D5890);
  sub_241C936C0(v4, qword_2810D5890);
  (*(v1 + 104))(v3, *MEMORY[0x277CC9830], v0);
  sub_241CF8DB8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static Calendar.gregorian.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2810D5888 != -1)
  {
    swift_once();
  }

  v2 = sub_241CF8E08();
  v3 = sub_241C936C0(v2, qword_2810D5890);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_241CCD784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_241CF9118();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_241CF9118();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_241CF98C8();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_241CF9118();
      v7 = v9;
    }

    while (v9);
  }

  sub_241CF9118();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t _s14BookFoundation23LocaleLanguageDirectionV5isRTLSbvgZ_0()
{
  v28 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultBag];
  v1 = [v0 languageTag];
  if (([v0 isExpired] & 1) == 0 && objc_msgSend(v1, sel_isLoaded))
  {
    v26 = 0;
    v2 = [v1 valueWithError_];
    v3 = v26;
    if (!v2)
    {
      v16 = v26;
      swift_arrayDestroy();
      v17 = sub_241CF8C58();

      swift_willThrow();
      if (qword_27EC69A90 != -1)
      {
        swift_once();
      }

      v18 = sub_241CF8E88();
      sub_241C936C0(v18, qword_27EC69DF8);
      v19 = v17;
      v20 = sub_241CF8E68();
      v21 = sub_241CF9508();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = v17;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v25;
        *v23 = v25;
        _os_log_impl(&dword_241C8C000, v20, v21, "Failed to retreive locale: %@", v22, 0xCu);
        sub_241CCDC9C(v23);
        MEMORY[0x245CFE970](v23, -1, -1);
        MEMORY[0x245CFE970](v22, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    v4 = v2;
    sub_241CF9038();
    v5 = v3;
  }

  v6 = sub_241CF9068();
  v8 = v7;

  v9 = &unk_2853DB8B8;
  v10 = 13;
  while (--v10)
  {
    v11 = *(v9 - 1);
    v12 = *v9;
    v13 = v6 == v11 && v8 == v12;
    if (v13 || (sub_241CF98C8() & 1) != 0)
    {

      goto LABEL_15;
    }

    v9 += 2;
    v26 = v11;
    v27 = v12;
    swift_bridgeObjectRetain_n();
    MEMORY[0x245CFD860](45, 0xE100000000000000);
    v14 = sub_241CCD784(v26, v27, v6, v8);

    if (v14)
    {

LABEL_15:
      swift_arrayDestroy();
      return 1;
    }
  }

  swift_arrayDestroy();
  return 0;
}

uint64_t sub_241CCDC9C(uint64_t a1)
{
  v2 = sub_241C93918(&qword_27EC69F08, &qword_241CFB958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241CCDD04(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LibraryAudiobookInfo(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_241C93918(&qword_27EC69ED8, &unk_241CFB550);
  MEMORY[0x28223BE20](v6);
  v8 = (&v12 - v7);
  sub_241C8E174(v2, &v12 - v7, &qword_27EC69ED8, &unk_241CFB550);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v10 = *(v8 + *(sub_241C93918(&qword_27EC6A258, &unk_241CFCB88) + 48));
    sub_241CCEB44(v8, type metadata accessor for LibraryAudiobookInfo);
LABEL_6:
    v12 = v10;
    swift_getAtKeyPath();

    return v13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v10 = *v8;
    goto LABEL_6;
  }

  sub_241CCEBA4(v8, v5, type metadata accessor for LibraryAudiobookInfo);
  swift_getAtKeyPath();
  sub_241CCEB44(v5, type metadata accessor for LibraryAudiobookInfo);
  return v13;
}

void sub_241CCDEC4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LibraryBookInfo(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
  MEMORY[0x28223BE20](v6);
  v8 = (v11 - v7);
  sub_241C8E174(v2, v11 - v7, &qword_27EC69EE8, &unk_241CFCBA0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_241CCEBA4(v8, v5, type metadata accessor for LibraryBookInfo);
      swift_getAtKeyPath();
      sub_241CCEB44(v5, type metadata accessor for LibraryBookInfo);
      return;
    }

    v10 = *v8;
  }

  else
  {
    v10 = *(v8 + *(sub_241C93918(&qword_27EC6A260, &qword_241CFCB98) + 48));
    sub_241CCEB44(v8, type metadata accessor for LibraryBookInfo);
  }

  v11[1] = v10;
  swift_getAtKeyPath();
}

void sub_241CCE08C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LibraryBookSeriesInfo(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_241C93918(&qword_27EC6A2A0, &unk_241CFCBD0);
  MEMORY[0x28223BE20](v6);
  v8 = (v11 - v7);
  sub_241C8E174(v2, v11 - v7, &qword_27EC6A2A0, &unk_241CFCBD0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_241CCEBA4(v8, v5, type metadata accessor for LibraryBookSeriesInfo);
      swift_getAtKeyPath();
      sub_241CCEB44(v5, type metadata accessor for LibraryBookSeriesInfo);
      return;
    }

    v10 = *v8;
  }

  else
  {
    v10 = *(v8 + *(sub_241C93918(&qword_27EC6A298, &qword_241CFCBC8) + 48));
    sub_241CCEB44(v8, type metadata accessor for LibraryBookSeriesInfo);
  }

  v11[1] = v10;
  swift_getAtKeyPath();
}

uint64_t AudiobookInfo.init(dataSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AudiobookInfo(0);
  *(a2 + *(v4 + 20)) = 0;
  *(a2 + *(v4 + 24)) = 1;

  return sub_241CCE2F8(a1, a2);
}

uint64_t type metadata accessor for AudiobookInfo(uint64_t a1)
{
  result = qword_27EC6A510;
  if (!qword_27EC6A510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241CCE2F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC69ED8, &unk_241CFB550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AudiobookInfo.assetType.setter(char a1)
{
  result = type metadata accessor for AudiobookInfo(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t AudiobookInfo.contentKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AudiobookInfo(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AudiobookInfo.contentKind.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AudiobookInfo(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t sub_241CCE510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 24);
  *(a3 + *(a2 + 20)) = 0;
  *(a3 + v3) = 1;
  return sub_241CCE2F8(a1, a3);
}

uint64_t AudiobookInfo.duration.getter()
{
  v1 = sub_241C93918(&qword_27EC69ED8, &unk_241CFB550);
  MEMORY[0x28223BE20](v1);
  v3 = (&v8 - v2);
  sub_241C8E174(v0, &v8 - v2, &qword_27EC69ED8, &unk_241CFB550);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v6 = *(v3 + *(sub_241C93918(&qword_27EC6A258, &unk_241CFCB88) + 48));
    sub_241CCEB44(v3, type metadata accessor for LibraryAudiobookInfo);
LABEL_6:
    v5 = MAsset.duration.getter();

    return v5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v6 = *v3;
    goto LABEL_6;
  }

  sub_241CCE650(v3);
  return 0;
}

uint64_t sub_241CCE650(uint64_t a1)
{
  v2 = sub_241C93918(&qword_27EC69ED8, &unk_241CFB550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AudiobookInfo.isSG.getter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = sub_241CCDD04(KeyPath, v3);

  return v4 & 1;
}

uint64_t AudiobookInfo.narrator.getter()
{
  v1 = sub_241C93918(&qword_27EC69ED8, &unk_241CFB550);
  MEMORY[0x28223BE20](v1);
  v3 = (&v8 - v2);
  sub_241C8E174(v0, &v8 - v2, &qword_27EC69ED8, &unk_241CFB550);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v6 = *(v3 + *(sub_241C93918(&qword_27EC6A258, &unk_241CFCB88) + 48));
    sub_241CCEB44(v3, type metadata accessor for LibraryAudiobookInfo);
LABEL_6:
    v5 = MAudiobook.narrator.getter();

    return v5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v6 = *v3;
    goto LABEL_6;
  }

  sub_241CCE650(v3);
  return 0;
}

uint64_t sub_241CCE898(uint64_t a1)
{
  result = sub_241CCE9E8(&qword_27EC6A4F8, type metadata accessor for AudiobookInfo, &protocol conformance descriptor for AudiobookInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CCE938(uint64_t a1)
{
  result = sub_241CCE9E8(&qword_27EC6A500, type metadata accessor for AudiobookInfo, &protocol conformance descriptor for AudiobookInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CCE990(uint64_t a1)
{
  result = sub_241CCE9E8(&qword_27EC6A508, type metadata accessor for AudiobookInfo, &protocol conformance descriptor for AudiobookInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CCE9E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_241CCEA58(uint64_t a1)
{
  sub_241CCEADC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_241CCEADC(uint64_t a1)
{
  if (!qword_27EC6A520)
  {
    v2 = type metadata accessor for LibraryAudiobookInfo(255);
    v3 = type metadata accessor for MAudiobook(255);
    v5 = type metadata accessor for ContentDataSource(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27EC6A520);
    }
  }
}

uint64_t sub_241CCEB44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_241CCEBA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t MRequestMetadata.fileID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MRequestMetadata.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_241CCEC50()
{
  if (*v0)
  {
    return 1701734764;
  }

  else
  {
    return 0x4449656C6966;
  }
}

uint64_t sub_241CCEC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656C6966 && a2 == 0xE600000000000000;
  if (v6 || (sub_241CF98C8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701734764 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_241CF98C8();

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

uint64_t sub_241CCED70(uint64_t a1)
{
  v2 = sub_241CCEF7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_241CCEDAC(uint64_t a1)
{
  v2 = sub_241CCEF7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MRequestMetadata.encode(to:)(void *a1)
{
  v3 = sub_241C93918(&qword_27EC6A528, &qword_241CFE140);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v10 = *(v1 + 16);
  sub_241C97000(a1, a1[3]);
  sub_241CCEF7C();
  sub_241CF9A28();
  v12 = 0;
  v7 = v9[1];
  sub_241CF9878();
  if (!v7)
  {
    v11 = 1;
    sub_241CF9888();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_241CCEF7C()
{
  result = qword_27EC6A530;
  if (!qword_27EC6A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A530);
  }

  return result;
}

uint64_t MRequestMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_241C93918(&qword_27EC6A538, &qword_241CFE148);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  sub_241C97000(a1, a1[3]);
  sub_241CCEF7C();
  sub_241CF9A18();
  if (v2)
  {
    return sub_241C8EEE8(a1);
  }

  v17 = 0;
  v9 = sub_241CF9858();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  v13 = sub_241CF9868();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  sub_241C8EEE8(a1);
}

void __swiftcall BFMRequestMetadata.init(fileID:line:)(BFMRequestMetadata *__return_ptr retstr, Swift::String fileID, Swift::Int32 line)
{
  v3 = *&line;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata(retstr));
  v5 = sub_241CF9008();

  [v4 initWithFileID:v5 line:v3];
}

id BFMRequestMetadata.init(fileID:line:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3 + OBJC_IVAR___BFMRequestMetadata_impl;
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  v6.super_class = BFMRequestMetadata;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t BFMRequestMetadata.fileID.getter()
{
  v1 = *(v0 + OBJC_IVAR___BFMRequestMetadata_impl);

  return v1;
}

void __swiftcall BFMRequestMetadata.init()(BFMRequestMetadata *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata(retstr));

  [v1 init];
}

void __swiftcall MRequestMetadata._bridgeToObjectiveC()(BFMRequestMetadata *__return_ptr retstr)
{
  v2 = *(v1 + 16);
  v3 = objc_allocWithZone(BFMRequestMetadata);
  v4 = sub_241CF9008();
  [v3 initWithFileID:v4 line:v2];
}

uint64_t static MRequestMetadata._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl + 8);
  v5 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl + 16);
  *a2 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
}

uint64_t static MRequestMetadata._conditionallyBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl + 8);
  v5 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl + 16);
  *a2 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;

  return 1;
}

uint64_t static MRequestMetadata._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1 + OBJC_IVAR___BFMRequestMetadata_impl;
    v5 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl);
    v4 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl + 8);
    LODWORD(v3) = *(v3 + 16);
    *a2 = v5;
    *(a2 + 8) = v4;
    *(a2 + 16) = v3;
  }

  else
  {
    sub_241CF96C8();

    type metadata accessor for BFMRequestMetadata();
    v7 = sub_241CF9A58();
    MEMORY[0x245CFD860](v7);

    MEMORY[0x245CFD860](544175136, 0xE400000000000000);
    MEMORY[0x245CFD860](0xD000000000000010, 0x8000000241CFE130);
    result = sub_241CF9798();
    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for BFMRequestMetadata()
{
  result = qword_27EC6A548;
  if (!qword_27EC6A548)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC6A548);
  }

  return result;
}

id sub_241CCF6E8()
{
  v1 = *(v0 + 16);
  v2 = objc_allocWithZone(BFMRequestMetadata);
  v3 = sub_241CF9008();
  v4 = [v2 initWithFileID:v3 line:v1];

  return v4;
}

uint64_t sub_241CCF758(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl + 8);
  v5 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl + 16);
  *a2 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
}

uint64_t sub_241CCF7B0(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl + 8);
  v5 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl + 16);
  *a2 = *(a1 + OBJC_IVAR___BFMRequestMetadata_impl);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;

  return 1;
}

__n128 sub_241CCF804(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_241CCF818(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_241CCF860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_241CCF8C4()
{
  result = qword_27EC6A550;
  if (!qword_27EC6A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A550);
  }

  return result;
}

unint64_t sub_241CCF91C()
{
  result = qword_27EC6A558;
  if (!qword_27EC6A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A558);
  }

  return result;
}

unint64_t sub_241CCF974()
{
  result = qword_27EC6A560;
  if (!qword_27EC6A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A560);
  }

  return result;
}

uint64_t Dictionary<>.BOOLValue(key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = sub_241C8E1DC(a1, a2);
    if (v5)
    {
      sub_241C93664(*(a3 + 56) + 32 * v4, v10);
      sub_241C8E30C(v10, v11);
      sub_241C93664(v11, v10);
      if (swift_dynamicCast())
      {
        sub_241C8EEE8(v11);
        v6 = v8;
LABEL_15:
        sub_241C8EEE8(v10);
        return v6 & 1;
      }

      if (swift_dynamicCast())
      {
        sub_241C8EEE8(v11);
        v6 = v8 != 0;
        goto LABEL_15;
      }

      if (swift_dynamicCast())
      {
        if (v8 == 1702195828 && v9 == 0xE400000000000000)
        {

          v6 = 1;
        }

        else
        {
          v6 = sub_241CF98C8();
        }

        sub_241C8EEE8(v11);
        goto LABEL_15;
      }

      sub_241C8EEE8(v11);
      sub_241C8EEE8(v10);
    }
  }

  v6 = 0;
  return v6 & 1;
}

unsigned __int8 *Dictionary<>.intValue(key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_241C8E1DC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_241C93664(*(a3 + 56) + 32 * v4, v36);
  sub_241C8E30C(v36, v37);
  sub_241C93664(v37, v36);
  if (swift_dynamicCast())
  {
    sub_241C8EEE8(v37);
    sub_241C8EEE8(v36);
    return v34;
  }

  if (!swift_dynamicCast())
  {
    sub_241C8EEE8(v37);
    sub_241C8EEE8(v36);
    return 0;
  }

  result = v34;
  v7 = HIBYTE(v35) & 0xF;
  v8 = v34 & 0xFFFFFFFFFFFFLL;
  if ((v35 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v35) & 0xF;
  }

  else
  {
    v9 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    sub_241C8EEE8(v37);

    v30 = 0;
LABEL_73:
    sub_241C8EEE8(v36);
    return v30;
  }

  if ((v35 & 0x1000000000000000) != 0)
  {
    v11 = sub_241CD0074(v34, v35, 10);
    v29 = v31;
LABEL_70:
    sub_241C8EEE8(v37);

    if (v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = v11;
    }

    goto LABEL_73;
  }

  if ((v35 & 0x2000000000000000) == 0)
  {
    if ((v34 & 0x1000000000000000) != 0)
    {
      result = ((v35 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_241CF9708();
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v11 = 0;
          if (result)
          {
            v18 = result + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                goto LABEL_68;
              }

              v20 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_68;
              }

              v11 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_68;
              }

              ++v18;
              if (!--v7)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_68;
      }

      goto LABEL_79;
    }

    if (v10 != 45)
    {
      if (v8)
      {
        v11 = 0;
        if (result)
        {
          while (1)
          {
            v24 = *result - 48;
            if (v24 > 9)
            {
              goto LABEL_68;
            }

            v25 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_68;
            }

            v11 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              goto LABEL_68;
            }

            ++result;
            if (!--v8)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_68:
      v11 = 0;
      LOBYTE(v7) = 1;
      goto LABEL_69;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        v11 = 0;
        if (result)
        {
          v12 = result + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              goto LABEL_68;
            }

            v14 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_68;
            }

            v11 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_68;
            }

            ++v12;
            if (!--v7)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_60:
        LOBYTE(v7) = 0;
LABEL_69:
        v33 = v7;
        v29 = v7;
        goto LABEL_70;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v32[0] = v34;
  v32[1] = v35 & 0xFFFFFFFFFFFFFFLL;
  if (v34 != 43)
  {
    if (v34 != 45)
    {
      if (v7)
      {
        v11 = 0;
        v26 = v32;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            break;
          }

          v11 = v28 + v27;
          if (__OFADD__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v7)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v7)
    {
      if (--v7)
      {
        v11 = 0;
        v15 = v32 + 1;
        while (1)
        {
          v16 = *v15 - 48;
          if (v16 > 9)
          {
            break;
          }

          v17 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            break;
          }

          v11 = v17 - v16;
          if (__OFSUB__(v17, v16))
          {
            break;
          }

          ++v15;
          if (!--v7)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_78;
  }

  if (v7)
  {
    if (--v7)
    {
      v11 = 0;
      v21 = v32 + 1;
      while (1)
      {
        v22 = *v21 - 48;
        if (v22 > 9)
        {
          break;
        }

        v23 = 10 * v11;
        if ((v11 * 10) >> 64 != (10 * v11) >> 63)
        {
          break;
        }

        v11 = v23 + v22;
        if (__OFADD__(v23, v22))
        {
          break;
        }

        ++v21;
        if (!--v7)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_80:
  __break(1u);
  return result;
}

uint64_t Dictionary<>.doubleValue(key:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_241C8E1DC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_241C93664(*(a3 + 56) + 32 * v4, v13);
  sub_241C8E30C(v13, v14);
  sub_241C93664(v14, v13);
  if (swift_dynamicCast())
  {
    sub_241C8EEE8(v14);
    v6 = v11;
LABEL_5:
    sub_241C8EEE8(v13);
    return *&v6;
  }

  if (!swift_dynamicCast())
  {
    sub_241C8EEE8(v14);
    if (swift_dynamicCast())
    {
      v6 = *&v11;
      goto LABEL_5;
    }

    sub_241C8EEE8(v13);
    return 0;
  }

  v10 = 0;
  v8 = sub_241CD0600(*&v11, v12, &v10);

  sub_241C8EEE8(v14);
  if (v8)
  {
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  sub_241C8EEE8(v13);
  return v9;
}

unsigned __int8 *sub_241CD0074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_241CF91A8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_241C954AC(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_241CF9708();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

BOOL sub_241CD0600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_241CF96B8();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

_BYTE *sub_241CD06F8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t static Notificationable.Name.getter(uint64_t a1)
{
  swift_getMetatypeMetadata();
  sub_241CF9078();
  v1 = sub_241CF9008();

  return v1;
}

uint64_t Notificationable.init(notification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_241CF8AF8();
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = sub_241CBD364(v10);

  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = objc_opt_self();
  v13 = sub_241CF8EE8();

  v26[0] = 0;
  v14 = [v12 dataWithJSONObject:v13 options:1 error:v26];

  v15 = v26[0];
  if (!v14)
  {
    v19 = v15;
    v20 = sub_241CF8C58();

    swift_willThrow();
LABEL_6:
    v21 = sub_241CF8B08();
    (*(*(v21 - 8) + 8))(a1, v21);
    v24 = 1;
    return (*(v7 + 56))(a4, v24, 1, a2);
  }

  v16 = sub_241CF8D18();
  v18 = v17;

  sub_241CF8A58();
  swift_allocObject();
  sub_241CF8A48();
  sub_241CF8A38();
  v23 = sub_241CF8B08();
  (*(*(v23 - 8) + 8))(a1, v23);

  sub_241CD0B1C(v16, v18);
  (*(v7 + 32))(a4, v9, a2);
  v24 = 0;
  return (*(v7 + 56))(a4, v24, 1, a2);
}

uint64_t sub_241CD0B1C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t Notificationable.toNotification(object:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_241CF8A88();
  swift_allocObject();
  sub_241CF8A78();
  v8 = sub_241CF8A68();
  v10 = v9;

  v11 = objc_opt_self();
  v12 = sub_241CF8D08();
  v21[0] = 0;
  v13 = [v11 JSONObjectWithData:v12 options:4 error:v21];

  v14 = v21[0];
  if (v13)
  {
    sub_241CF95F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = v14;
    v16 = sub_241CF8C58();

    swift_willThrow();
    memset(v22, 0, sizeof(v22));
  }

  sub_241CD0ED4(v22, v21);
  if (v21[3])
  {
    sub_241C93918(&qword_27EC6A568, &qword_241CFE358);
    if (swift_dynamicCast())
    {
      (*(a3 + 24))(a2, a3);
      sub_241CD0ED4(a1, v21);
      sub_241CD0F44(v20);

      sub_241CF8AE8();
      sub_241CD0B1C(v8, v10);
      sub_241C8DA14(v22);
      v17 = sub_241CF8B08();
      return (*(*(v17 - 8) + 56))(a4, 0, 1, v17);
    }

    sub_241C8DA14(v22);
    sub_241CD0B1C(v8, v10);
  }

  else
  {
    sub_241C8DA14(v22);
    sub_241CD0B1C(v8, v10);
    sub_241C8DA14(v21);
  }

  v19 = sub_241CF8B08();
  return (*(*(v19 - 8) + 56))(a4, 1, 1, v19);
}

uint64_t sub_241CD0ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A0B0, &qword_241CFE350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241CD0F44(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_241C93918(&qword_27EC6A490, &qword_241CFD318);
    v2 = sub_241CF9808();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_241C93664(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_241C8E30C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_241C8E30C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_241C8E30C(v31, v32);
    result = sub_241CF9648();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_241C8E30C(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_241CD1248(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_241C93918(&qword_27EC6A460, &qword_241CFD2D8);
    v2 = sub_241CF9808();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        sub_241C93918(&qword_27EC69BE8, "vE");
        swift_dynamicCast();
        result = sub_241C8E1DC(v15, v14);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v15;
          v9[1] = v14;
          v10 = result;

          *(v2[7] + v10) = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v15;
          v17[1] = v14;
          *(v2[7] + result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t MCatalogRequest.fetch()()
{
  v2 = sub_241CF8CF8();
  *(v1 + 488) = v2;
  *(v1 + 496) = *(v2 - 8);
  *(v1 + 504) = swift_task_alloc();
  v3 = *(v0 + 16);
  *(v1 + 512) = *v0;
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  *(v1 + 80) = v3;
  *(v1 + 96) = v4;
  v6 = *(v0 + 64);
  *(v1 + 112) = v5;
  *(v1 + 128) = v6;
  *(v1 + 528) = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_241CD1538, 0, 0);
}

uint64_t sub_241CD1538()
{
  v1 = [*(v0 + 528) isBooksStoreEnabled];
  *(v0 + 536) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 464;
  *(v0 + 24) = sub_241CD1670;
  v2 = swift_continuation_init();
  *(v0 + 200) = sub_241C93918(&qword_27EC6A570, &qword_241CFE3A0);
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_241CD2564;
  *(v0 + 168) = &unk_2853DE0C0;
  *(v0 + 176) = v2;
  [v1 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_241CD1670()
{
  v1 = *(*v0 + 48);
  *(*v0 + 544) = v1;
  if (v1)
  {
    v2 = sub_241CD18D0;
  }

  else
  {
    v2 = sub_241CD1780;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_241CD1780()
{
  v1 = *(v0 + 464);

  v2 = [v1 BOOLValue];
  if (v2)
  {
    v3 = *(v0 + 96);
    *(v0 + 208) = *(v0 + 80);
    *(v0 + 224) = v3;
    v4 = *(v0 + 128);
    *(v0 + 240) = *(v0 + 112);
    *(v0 + 256) = v4;
    sub_241C9300C(v0 + 80, v0 + 272);
    v5 = swift_task_alloc();
    *(v0 + 552) = v5;
    *v5 = v0;
    v5[1] = sub_241CD194C;
    v6 = *(v0 + 504);

    return MCatalogRequestURLBuilder.build()(v6);
  }

  else
  {
    sub_241CD265C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_241CD18D0()
{
  v1 = *(v0 + 536);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_241CD194C()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  v3 = v2[13];
  v4 = v2[14];
  v5 = v2[16];
  if (v0)
  {
    v2[23] = v2[15];
    v2[24] = v5;
    v2[21] = v3;
    v2[22] = v4;
    sub_241C93068((v2 + 21));
    v6 = sub_241CD1D08;
  }

  else
  {
    v2[27] = v2[15];
    v2[28] = v5;
    v2[25] = v3;
    v2[26] = v4;
    sub_241C93068((v2 + 25));
    v6 = sub_241CD1A90;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_241CD1A90(uint64_t a1)
{
  v2 = v1[65];
  v3 = v1[64];
  v4 = sub_241CF8C98();
  v5 = [v3 requestWithURL_];
  v1[71] = v5;

  v6 = [v2 dataTaskPromiseWithRequestPromise_];
  v1[72] = v6;
  v7 = swift_task_alloc();
  v1[73] = v7;
  *(v7 + 16) = v6;
  v8 = swift_task_alloc();
  v1[74] = v8;
  v9 = sub_241CD26B8();
  *v8 = v1;
  v8[1] = sub_241CD1BEC;

  return MEMORY[0x2822008A0](v1 + 60, 0, 0, 0x727028636E797361, 0xEF293A6573696D6FLL, sub_241CD26B0, v7, v9);
}

uint64_t sub_241CD1BEC()
{
  *(*v1 + 600) = v0;

  if (v0)
  {
    v2 = sub_241CD1E40;
  }

  else
  {

    v2 = sub_241CD1D6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_241CD1D08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241CD1D6C()
{
  v1 = v0[72];
  v2 = v0[71];
  v4 = v0[62];
  v3 = v0[63];
  v6 = v0[60];
  v5 = v0[61];
  v7 = [objc_allocWithZone(MEMORY[0x277CEE568]) initWithResult_];

  (*(v4 + 8))(v3, v5);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_241CD1E40()
{
  v1 = v0[72];
  v2 = v0[71];
  v4 = v0[62];
  v3 = v0[63];
  v5 = v0[61];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

__n128 MCatalogRequest.init(with:config:bag:)@<Q0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 1);
  *(a4 + 80) = a3;
  v8 = objc_opt_self();
  v9 = a3;
  v10 = [v8 defaultSessionConfiguration];
  v11 = [objc_allocWithZone(MEMORY[0x277CEE6F0]) initWithConfiguration_];

  *(a4 + 8) = v11;
  v12 = objc_allocWithZone(MEMORY[0x277CEE578]);
  v13 = v9;
  v14 = v11;
  v15 = sub_241CF9008();

  v16 = [v12 initWithClientIdentifier:v15 bag:v13];

  v17 = [objc_allocWithZone(MEMORY[0x277CEE550]) initWithTokenService_];
  [v14 setProtocolHandler_];

  v18 = [objc_allocWithZone(MEMORY[0x277CEE558]) initWithTokenService:v16 bag:v13];
  *a4 = v18;
  v19 = v18;
  [v19 setAccount_];

  v20 = [objc_opt_self() currentProcess];
  [v19 setClientInfo_];

  v21 = *(a1 + 16);
  *(a4 + 16) = *a1;
  *(a4 + 32) = v21;
  result = *(a1 + 32);
  v23 = *(a1 + 48);
  *(a4 + 48) = result;
  *(a4 + 64) = v23;
  return result;
}

unint64_t MCatalogRequest.RequestError.description.getter()
{
  result = 0xD000000000000019;
  if (!*v0)
  {
    return 0xD000000000000036;
  }

  if (*v0 != 1)
  {
    sub_241CF96C8();

    swift_getErrorValue();
    v2 = sub_241CF9948();
    MEMORY[0x245CFD860](v2);

    return 0xD000000000000020;
  }

  return result;
}

void sub_241CD2250(uint64_t a1, void *a2)
{
  v4 = sub_241C93918(&qword_27EC6A588, &qword_241CFE4F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_241CD28D8;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241CD24D8;
  aBlock[3] = &unk_2853DE228;
  v10 = _Block_copy(aBlock);

  [a2 addFinishBlock_];
  _Block_release(v10);
}

uint64_t sub_241CD2400(void *a1, void *a2)
{
  if (a1)
  {
    v2 = a1;
    sub_241C93918(&qword_27EC6A588, &qword_241CFE4F0);
    return sub_241CF9368();
  }

  else
  {
    if (a2)
    {
      sub_241CD265C();
      swift_allocError();
      *v5 = a2;
      v6 = a2;
    }

    else
    {
      sub_241CD265C();
      swift_allocError();
      *v7 = 1;
    }

    sub_241C93918(&qword_27EC6A588, &qword_241CFE4F0);
    return sub_241CF9358();
  }
}

void sub_241CD24D8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_241CD2564(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = sub_241C97000((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    sub_241C93918(&qword_27EC6A1F0, &unk_241CFED70);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return MEMORY[0x282200958](v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v7);
  }
}

unint64_t sub_241CD265C()
{
  result = qword_27EC6A578;
  if (!qword_27EC6A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A578);
  }

  return result;
}

unint64_t sub_241CD26B8()
{
  result = qword_27EC6A580;
  if (!qword_27EC6A580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC6A580);
  }

  return result;
}

__n128 sub_241CD2704(uint64_t a1, uint64_t a2)
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

uint64_t sub_241CD2728(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_241CD2770(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_241CD27D4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_241CD27F8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241CD284C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_241CD28A8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_241CD28D8(void *a1, void *a2)
{
  sub_241C93918(&qword_27EC6A588, &qword_241CFE4F0);

  return sub_241CD2400(a1, a2);
}

uint64_t sub_241CD2964(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_241CD2988(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A410, &qword_241CFD140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LibraryBookSeriesInfo.kind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LibraryBookSeriesInfo(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for LibraryBookSeriesInfo(uint64_t a1)
{
  result = qword_27EC6A5B0;
  if (!qword_27EC6A5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LibraryBookSeriesInfo.init(commonInfo:kind:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_241CD2AB4(a1, a3);
  result = type metadata accessor for LibraryBookSeriesInfo(0);
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t sub_241CD2AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC6A410, &qword_241CFD140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_241CD2B6C(uint64_t a1)
{
  result = sub_241CD2CD8(&qword_27EC6A590, type metadata accessor for LibraryBookSeriesInfo, &protocol conformance descriptor for LibraryBookSeriesInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CD2BD0(uint64_t a1)
{
  result = sub_241CD2CD8(&qword_27EC6A598, type metadata accessor for LibraryBookSeriesInfo, &protocol conformance descriptor for LibraryBookSeriesInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CD2C28(uint64_t a1)
{
  result = sub_241CD2CD8(&qword_27EC6A5A0, type metadata accessor for LibraryBookSeriesInfo, &protocol conformance descriptor for LibraryBookSeriesInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CD2C80(uint64_t a1)
{
  result = sub_241CD2CD8(&qword_27EC6A5A8, type metadata accessor for LibraryBookSeriesInfo, &protocol conformance descriptor for LibraryBookSeriesInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CD2CD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_241CD2D4C(uint64_t a1)
{
  sub_241CD2DC0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_241CD2DC0(uint64_t a1)
{
  if (!qword_27EC6A5C0)
  {
    v2 = type metadata accessor for LibraryBookInfo(255);
    v3 = sub_241CD2CD8(&qword_27EC69F38, type metadata accessor for LibraryBookInfo, &protocol conformance descriptor for LibraryBookInfo);
    v5 = type metadata accessor for CommonLibrarySeriesInfo(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27EC6A5C0);
    }
  }
}

uint64_t BookInfo.init(dataSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(type metadata accessor for BookInfo(0) + 20)) = 1;

  return sub_241CD2EF0(a1, a2);
}

uint64_t type metadata accessor for BookInfo(uint64_t a1)
{
  result = qword_27EC6A5E0;
  if (!qword_27EC6A5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241CD2EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_241CD2F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BookInfo.assetType.setter(char a1)
{
  result = type metadata accessor for BookInfo(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t BookInfo.contentKind.getter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_241CCDEC4(KeyPath, v3);
}

uint64_t sub_241CD30EC(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_241CCDEC4(KeyPath, v3);
}

uint64_t BookInfo.isIBA.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LibraryBookInfo(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v20 - v9);
  sub_241CD2F6C(v1, &v20 - v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v13 = *(v10 + *(sub_241C93918(&qword_27EC6A260, &qword_241CFCB98) + 48));
    sub_241CD346C(v10);
LABEL_8:
    v14 = sub_241CF1C04(0);
    v15 = sub_241CB033C(13, v14);

    return v15 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v13 = *v10;
    goto LABEL_8;
  }

  sub_241CD33A0(v10);
  sub_241CD2F6C(v1, v8);
  v12 = swift_getEnumCaseMultiPayload();
  if (v12)
  {
    if (v12 != 1)
    {
      sub_241CD33A0(v8);
LABEL_13:
      v15 = 0;
      return v15 & 1;
    }
  }

  else
  {
  }

  sub_241CD3408(v8, v4);
  v16 = &v4[*(v2 + 28)];
  v17 = *v16;
  v18 = v16[1];
  sub_241CA9034(*v16, v18);
  sub_241CD346C(v4);
  if (v18 != 1)
  {
    sub_241CD34C8(v17, v18);
    goto LABEL_13;
  }

  v15 = 1;
  return v15 & 1;
}

uint64_t sub_241CD33A0(uint64_t a1)
{
  v2 = sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241CD3408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryBookInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_241CD346C(uint64_t a1)
{
  v2 = type metadata accessor for LibraryBookInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241CD34C8(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

id BookInfo.isRTL.getter()
{
  v1 = sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v8 - v2);
  sub_241CD2F6C(v0, &v8 - v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v6 = *(v3 + *(sub_241C93918(&qword_27EC6A260, &qword_241CFCB98) + 48));
    sub_241CD346C(v3);
LABEL_6:
    v5 = [v6 pagesAreRTL];

    return v5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v6 = *v3;
    goto LABEL_6;
  }

  sub_241CD33A0(v3);
  return 0;
}

uint64_t BookInfo.pageCount.getter()
{
  v1 = sub_241C93918(&qword_27EC69EE8, &unk_241CFCBA0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v8 - v2);
  sub_241CD2F6C(v0, &v8 - v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v6 = *(v3 + *(sub_241C93918(&qword_27EC6A260, &qword_241CFCB98) + 48));
    sub_241CD346C(v3);
LABEL_6:
    v5 = MBook.pageCount.getter();

    return v5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v6 = *v3;
    goto LABEL_6;
  }

  sub_241CD33A0(v3);
  return 0;
}

uint64_t sub_241CD3718(uint64_t a1)
{
  result = sub_241CD3868(&qword_27EC6A5C8, type metadata accessor for BookInfo, &protocol conformance descriptor for BookInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CD37B8(uint64_t a1)
{
  result = sub_241CD3868(&qword_27EC6A5D0, type metadata accessor for BookInfo, &protocol conformance descriptor for BookInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CD3810(uint64_t a1)
{
  result = sub_241CD3868(&qword_27EC6A5D8, type metadata accessor for BookInfo, &protocol conformance descriptor for BookInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241CD3868(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_241CD38D8(uint64_t a1)
{
  sub_241CD394C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_241CD394C(uint64_t a1)
{
  if (!qword_27EC6A5F0[0])
  {
    v2 = type metadata accessor for LibraryBookInfo(255);
    v3 = type metadata accessor for MBook(255);
    v5 = type metadata accessor for ContentDataSource(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_27EC6A5F0);
    }
  }
}

unint64_t sub_241CD3A00(uint64_t a1, uint64_t a2)
{
  v2 = sub_241CF9838();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_241CD3A4C(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 1717924456;
}

uint64_t sub_241CD3A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_241CD3AFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_241CD3B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_241CD3BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_241CD3C48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_241CD3A00(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_241CD3C80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_241CD3A4C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t MSparseResource.id.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MSparseResource.href.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void *sub_241CD3D1C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(*v4 + 80);
  type metadata accessor for MSparseResource.Keys(0, v9, a3, a4);

  swift_getWitnessTable();
  sub_241CD7154(a1, MEMORY[0x277D837D0], &v32);
  v10 = v33;
  if (v33)
  {
    v11 = v32;
    v12 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v12 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (v12 && (v31 = v7, sub_241CD7154(a1, MEMORY[0x277D837D0], &v32), (v13 = v33) != 0))
    {
      v30 = v32;
      sub_241CD7154(a1, MEMORY[0x277D837D0], &v32);

      v14 = v33;
      if (v33)
      {
        v15 = v32;

        sub_241CF6C94(v15, v14, &v32);
        v16 = v32;
        if (v32 == 6)
        {
        }

        else
        {
          v17 = static MResourceType.classType(for:)(v15, v14);

          if (v17 && swift_dynamicCastMetatype())
          {
            *(v5 + 40) = v11;
            *(v5 + 48) = v10;
            *(v5 + 56) = v16;
            *(v5 + 64) = v30;
            *(v5 + 72) = v13;
            *(v5 + 16) = a1;
            *(v5 + 24) = v31;
            *(v5 + 32) = v8;
            return v5;
          }
        }
      }
    }

    else
    {
    }
  }

  if (qword_2810D5778 != -1)
  {
    swift_once();
  }

  if (qword_27EC69AA0 != -1)
  {
    swift_once();
  }

  v18 = sub_241CF8E88();
  sub_241C936C0(v18, qword_27EC69E28);

  v19 = sub_241CF8E68();
  v20 = sub_241CF9508();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32 = v22;
    *v21 = 136315138;
    v23 = sub_241CF8F08();
    v25 = v24;

    v26 = sub_241CB3A88(v23, v25, &v32);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_241C8C000, v19, v20, "Invalid data for sparse resource: %s", v21, 0xCu);
    sub_241C8EEE8(v22);
    MEMORY[0x245CFE970](v22, -1, -1);
    MEMORY[0x245CFE970](v21, -1, -1);
  }

  else
  {
  }

  type metadata accessor for MSparseResource(0, v9, v27, v28);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t MSparseResource.deinit()
{

  return v0;
}

uint64_t MSparseResource.__deallocating_deinit()
{
  MSparseResource.deinit();

  return swift_deallocClassInstance();
}

void sub_241CD4268(void *a1)
{
  if (qword_2810D56C8 != -1)
  {
    swift_once();
  }

  v2 = qword_2810D56D0;
  v3 = sub_241CF9008();
  v4 = [a1 BOOLForKey_];

  [v2 setBKMenuOnLeft_];
  v5 = sub_241CF9008();
  v6 = [a1 BOOLForKey_];

  [v2 setBKSettingFilterBrightImages_];
  v7 = sub_241CF9008();
  [a1 removeObjectForKey_];

  v8 = sub_241CF9008();
  [a1 removeObjectForKey_];
}

uint64_t OSAllocatedUnfairLock.valueWithLock.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_241CD4648(a1, a2);
  v5 = *(*(a3 - 8) + 8);

  return v5(a1, a3);
}

void (*OSAllocatedUnfairLock.valueWithLock.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = a3;
  v9 = *(a3 - 8);
  v7[2] = v9;
  v10 = *(v9 + 64);
  if (v6)
  {
    v7[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[3] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v8[4] = v11;
  OSAllocatedUnfairLock.valueWithLock.getter(a2, v11);
  return sub_241CD455C;
}

void sub_241CD455C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_241CD4648(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_241CD4648((*a1)[4], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_241CD4648(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v4));
  sub_241CD46E0(a2 + v3);
  os_unfair_lock_unlock((a2 + v4));
}

uint64_t sub_241CD46E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1, v4);
  return (*(v5 + 16))(a1, v3, v4);
}

uint64_t MAsset.__sequenceNumber.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x140))();
  sub_241CAF20C(1, v1);
  v3 = v2;

  if ((v3 & 0x100000000) != 0)
  {
    return 0;
  }

  else
  {
    return sub_241CF9568();
  }
}

unint64_t MAsset.__genres.getter()
{
  v0 = sub_241CA8170(@"genres");
  v1 = v0;
  if (v0)
  {
    if (v0 >> 62)
    {
      sub_241C93918(&unk_27EC6A700, &qword_241CFC8C8);
      v3 = sub_241CF97A8();

      return v3;
    }

    else
    {

      sub_241CF98D8();
    }
  }

  return v1;
}

uint64_t MAsset.__price.getter()
{
  swift_getObjectType();
  v1 = [v0 offer];
  if (v1)
  {
    v2 = v1;
    v3 = sub_241CF8EF8();
  }

  else
  {
    v3 = 0;
  }

  sub_241CB48F4();
  sub_241CD7154(v3, MEMORY[0x277D839F8], &v5);

  if (v6)
  {
    return 0;
  }

  else
  {
    return sub_241CF8E48();
  }
}

id sub_241CD4B90(char *a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v13 = a3;
  v6 = *&a1[OBJC_IVAR____TtC14BookFoundation6MAsset_artwork];
  v7 = sub_241CB499C();
  v8 = a1;
  v9 = sub_241CD73D8(&v13, v6, ObjectType, &type metadata for MAsset.ArtworkKeys, &off_2853DD9B8, v7);
  if (v9)
  {
    v10 = v9;
    [v9 doubleValue];

    v11 = sub_241CF8E48();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_241CD4C78(char a1)
{
  ObjectType = swift_getObjectType();
  v8 = a1;
  v4 = *(v1 + OBJC_IVAR____TtC14BookFoundation6MAsset_artwork);
  v5 = sub_241CB499C();
  result = sub_241CD73D8(&v8, v4, ObjectType, &type metadata for MAsset.ArtworkKeys, &off_2853DD9B8, v5);
  if (result)
  {
    v7 = result;
    [result doubleValue];

    return sub_241CF8E48();
  }

  return result;
}

unint64_t MAsset.__seriesResource.getter()
{
  result = sub_241CB3890();
  if (!result)
  {
    return result;
  }

  result = sub_241CF1840();
  if (!result)
  {
LABEL_11:

    return 0;
  }

  v1 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v4 = result;
    v5 = sub_241CF97D8();
    result = v4;
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x245CFDE40](0);
    goto LABEL_8;
  }

  if (*(v1 + 16))
  {
    v2 = *(result + 32);
LABEL_8:
    v3 = v2;

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t MClientIdentifier.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x736B6F6F6269;
  v3 = 0xD000000000000015;
  if (v1 == 3)
  {
    v3 = 0xD00000000000001ELL;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

BookFoundation::MClientIdentifier_optional __swiftcall MClientIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_241CF9838();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_241CD4F48()
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CD5034(uint64_t a1)
{
  sub_241CF90B8();
}

uint64_t sub_241CD510C(uint64_t a1)
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

void sub_241CD5200(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x736B6F6F6269;
  v5 = 0x8000000241D00150;
  v6 = 0x8000000241D00170;
  v7 = 0xD000000000000015;
  if (v2 == 3)
  {
    v7 = 0xD00000000000001ELL;
  }

  else
  {
    v6 = 0x8000000241D00190;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000016;
  }

  else
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x8000000241D00130;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

void *MCatalogServiceConfig.account.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

unint64_t sub_241CD5300()
{
  result = qword_27EC6A718;
  if (!qword_27EC6A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A718);
  }

  return result;
}

unint64_t sub_241CD5358()
{
  result = qword_27EC6A720;
  if (!qword_27EC6A720)
  {
    sub_241C9452C(&qword_27EC6A728, &qword_241CFE8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A720);
  }

  return result;
}

BOOL CGSize.isInfinite.getter(double a1, double a2)
{
  v2 = fabs(a1);
  v3 = (~*&a2 & 0x7FF0000000000000) == 0 && (*&a2 & 0xFFFFFFFFFFFFFLL) == 0;
  return v2 == INFINITY || v3;
}

CGSize __swiftcall CGSize.scaledToFit(in:times:horizontally:)(CGSize in, Swift::Int times, Swift::Bool horizontally)
{
  if (horizontally)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (!horizontally)
  {
    in.width = in.height;
  }

  v6 = in.width / (v5 * times);
  v7 = floor(v6 * v3);
  v8 = floor(v6 * v4);
  result.height = v8;
  result.width = v7;
  return result;
}

uint64_t MAudiobookSeries.narratorCount.getter()
{
  swift_getObjectType();
  v0 = sub_241CF1C04(0);
  v1 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CD557C();
  sub_241CD7154(v0, v1, &v4);

  v2 = v4;
  sub_241CD55D0();
  sub_241CD7154(v2, MEMORY[0x277D83B88], &v4);

  return v4;
}

unint64_t sub_241CD557C()
{
  result = qword_27EC6A730;
  if (!qword_27EC6A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A730);
  }

  return result;
}

unint64_t sub_241CD55D0()
{
  result = qword_27EC6A738;
  if (!qword_27EC6A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A738);
  }

  return result;
}

uint64_t MAudiobookSeries.narratorNames.getter()
{
  swift_getObjectType();
  v0 = sub_241CF1C04(0);
  v1 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CD557C();
  sub_241CD7154(v0, v1, &v5);

  v2 = v5;
  v3 = sub_241C93918(&qword_27EC69FC8, &unk_241CFBC30);
  sub_241CD55D0();
  sub_241CD7154(v2, v3, &v5);

  return v5;
}

uint64_t sub_241CD5724(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = "com.apple.iBooks.xros";
  }

  else
  {
    v4 = "hasUniqueNarrators";
  }

  if (*a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*a2)
  {
    v6 = "hasUniqueNarrators";
  }

  else
  {
    v6 = "com.apple.iBooks.xros";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_241CF98C8();
  }

  return v8 & 1;
}

uint64_t sub_241CD57CC()
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CD5848(uint64_t a1)
{
  sub_241CF90B8();
}

uint64_t sub_241CD58B0(uint64_t a1)
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

void sub_241CD5934(unint64_t *a1@<X8>)
{
  v2 = "hasUniqueNarrators";
  v3 = 0xD000000000000012;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = "com.apple.iBooks.xros";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

id MAudiobookSeries.init(with:config:)(uint64_t a1, char *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = *a2;
  v7 = *(a2 + 1);
  v22 = 0;

  v8 = sub_241C93918(&qword_27EC69BF0, &qword_241CFABF0);
  sub_241CB443C();
  sub_241CD7154(a1, v8, v21);

  v9 = v21[0];
  if (v21[0])
  {
    v22 = 0;
    sub_241CD557C();
    sub_241CD7154(v9, MEMORY[0x277D839B0], v21);

    v10 = v21[0];
    if (LOBYTE(v21[0]) == 2)
    {
      v10 = 0;
    }

    *(v3 + OBJC_IVAR____TtC14BookFoundation16MAudiobookSeries_hasUniqueNarrators) = v10;
    LOBYTE(v21[0]) = v6;
    v21[1] = v7;
    return MSeries.init(with:config:)(a1, v21);
  }

  else
  {

    if (qword_2810D5778 != -1)
    {
      swift_once();
    }

    if (qword_27EC69AA0 != -1)
    {
      swift_once();
    }

    v12 = sub_241CF8E88();
    sub_241C936C0(v12, qword_27EC69E28);

    v13 = sub_241CF8E68();
    v14 = sub_241CF9508();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21[0] = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_241CB3A88(0xD000000000000011, 0x8000000241D008F0, v21);
      *(v15 + 12) = 2080;
      v17 = sub_241CF8F08();
      v19 = v18;

      v20 = sub_241CB3A88(v17, v19, v21);

      *(v15 + 14) = v20;
      _os_log_impl(&dword_241C8C000, v13, v14, "Invalid data for %s: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CFE970](v16, -1, -1);
      MEMORY[0x245CFE970](v15, -1, -1);
    }

    else
    {
    }

    swift_deallocPartialClassInstance();
    return 0;
  }
}

id MAudiobookSeries.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_241CD5D58(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x73656D616ELL;
  }

  else
  {
    v2 = 0x746E756F63;
  }

  if (*a2)
  {
    v3 = 0x73656D616ELL;
  }

  else
  {
    v3 = 0x746E756F63;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_241CF98C8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_241CD5DD8()
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CD5E48(uint64_t a1)
{
  sub_241CF90B8();
}

uint64_t sub_241CD5E9C(uint64_t a1)
{
  sub_241CF9998();
  sub_241CF90B8();

  return sub_241CF99C8();
}

uint64_t sub_241CD5F14@<X0>(char *a3@<X8>)
{
  v4 = sub_241CF9838();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_241CD5F70(uint64_t *a1@<X8>)
{
  v2 = 0x746E756F63;
  if (*v1)
  {
    v2 = 0x73656D616ELL;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t type metadata accessor for MAudiobookSeries(uint64_t a1)
{
  result = qword_27EC6A740;
  if (!qword_27EC6A740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_241CD605C()
{
  result = qword_27EC6A750;
  if (!qword_27EC6A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A750);
  }

  return result;
}

unint64_t sub_241CD60B4()
{
  result = qword_27EC6A758;
  if (!qword_27EC6A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC6A758);
  }

  return result;
}

uint64_t DateInterval.distance(_:calendar:)(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v22[1] = a1;
  v26 = sub_241CF8D88();
  v3 = *(v26 - 8);
  v4 = MEMORY[0x28223BE20](v26);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = sub_241CF8C48();
  v23 = *(v9 - 8);
  v24 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241C93918(&qword_27EC6A760, &qword_241CFEB30);
  v12 = sub_241CF8DF8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_241CFAAF0;
  (*(v13 + 16))(v15 + v14, a1, v12);
  sub_241CD63F8(v15);
  swift_setDeallocating();
  (*(v13 + 8))(v15 + v14, v12);
  swift_deallocClassInstance();
  sub_241CF8AD8();
  sub_241CF8AC8();
  sub_241CF8DC8();

  v16 = *(v3 + 8);
  v17 = v26;
  v16(v6, v26);
  v16(v8, v17);
  v18 = sub_241CF8C18();
  LOBYTE(v16) = v19;
  result = (*(v23 + 8))(v11, v24);
  if (v16)
  {
    return v18;
  }

  if (!__OFADD__(v18++, 1))
  {
    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_241CD63F8(uint64_t a1)
{
  v2 = sub_241CF8DF8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_241C93918(&qword_27EC6A768, &qword_241CFEB38);
    v9 = sub_241CF9698();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_241CD66F0(&qword_27EC6A770, MEMORY[0x277CC99D8]);
      v16 = sub_241CF8F88();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_241CD66F0(&qword_27EC6A778, MEMORY[0x277CC99E0]);
          v23 = sub_241CF8FF8();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_241CD66F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_241CF8DF8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id UserDefault.mock(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v18 = a1;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v9 = *(v3 + 1);
  (*(v6 + 16))(v8, &v3[*(v11 + 32)], v5);
  *a3 = v10;
  *(a3 + 1) = v9;
  *(a3 + 2) = v18;
  v14 = type metadata accessor for UserDefault(0, v5, v12, v13);
  (*(v6 + 32))(&a3[*(v14 + 32)], v8, v5);

  v15 = v18;

  return v15;
}

uint64_t sub_241CD6864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v12 - v5;
  (*(v7 + 16))(&v12 - v5);
  v10 = type metadata accessor for UserDefault(0, v4, v8, v9);
  return UserDefault.wrappedValue.setter(v6, v10);
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  sub_241C93918(&qword_27EC6A780, &qword_241CFEB40);
  if (swift_dynamicCast())
  {
    sub_241C914E4(v15, v17);
    v7 = v18;
    v8 = v19;
    sub_241C97000(v17, v18);
    if ((*(v8 + 8))(v7, v8))
    {
      v9 = *(v2 + 16);
      v10 = sub_241CF9008();
      [v9 removeObjectForKey_];

      (*(v5 + 8))(a1, v4);
      return sub_241C8EEE8(v17);
    }

    sub_241C8EEE8(v17);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_241C8EA54(v15, &qword_27EC6A788, &qword_241CFEB48);
  }

  v12 = *(v2 + 16);
  v13 = sub_241CF98B8();
  v14 = sub_241CF9008();
  [v12 setObject:v13 forKey:v14];
  swift_unknownObjectRelease();

  return (*(v5 + 8))(a1, v4);
}

void (*UserDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  UserDefault.wrappedValue.getter(a2, v11);
  return sub_241CD6C5C;
}

void sub_241CD6C5C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    UserDefault.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    UserDefault.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_241CD6D70(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_241CD6EFC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_241CD7154@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a5@<X8>)
{
  v8 = sub_241CF9598();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  if (a1)
  {
    _sSY14BookFoundation12FeatureFlags0cD3Key8RawValueRpzrlE3keyAEvg_0();
    v19[0] = v21;
    sub_241CF9668();
    if (*(a1 + 16) && (v12 = sub_241CF45AC(v20), (v13 & 1) != 0))
    {
      sub_241C93664(*(a1 + 56) + 32 * v12, v19);
      sub_241C93610(v20);
    }

    else
    {
      sub_241C93610(v20);
      memset(v19, 0, sizeof(v19));
    }

    sub_241C93918(&qword_27EC6A0B0, &qword_241CFE350);
    v14 = swift_dynamicCast();
    v15 = *(a2 - 8);
    v16 = *(v15 + 56);
    if (v14)
    {
      v17 = *(a2 - 8);
      v16(v11, 0, 1, a2);
      (*(v17 + 32))(a5, v11, a2);
      return (v16)(a5, 0, 1, a2);
    }

    v16(v11, 1, 1, a2);
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v15 = *(a2 - 8);
  }

  return (*(v15 + 56))(a5, 1, 1, a2);
}

id sub_241CD73D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  _sSY14BookFoundation12FeatureFlags0cD3Key8RawValueRpzrlE3keyAEvg_0();
  v40[0] = *&v41[5];
  sub_241CF9668();
  if (!*(a2 + 16) || (v7 = sub_241CF45AC(v41), (v8 & 1) == 0))
  {
    sub_241C93610(v41);
    return 0;
  }

  sub_241C93664(*(a2 + 56) + 32 * v7, v40);
  sub_241C93610(v41);
  sub_241C8E30C(v40, v42);
  sub_241C93664(v42, v41);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_69;
  }

  result = *(&v40[0] + 1);
  v10 = HIBYTE(*(&v40[0] + 1)) & 0xFLL;
  v11 = *&v40[0] & 0xFFFFFFFFFFFFLL;
  if ((*(&v40[0] + 1) & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(*(&v40[0] + 1)) & 0xFLL;
  }

  else
  {
    v12 = *&v40[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    goto LABEL_69;
  }

  if ((*(&v40[0] + 1) & 0x1000000000000000) != 0)
  {
    v16 = sub_241CD0074(*&v40[0], *(&v40[0] + 1), 10);
    v37 = v36;

    if ((v37 & 1) == 0)
    {
LABEL_73:
      v38 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_241C8EEE8(v42);
      return v38;
    }

LABEL_69:
    sub_241C8E30C(v42, v41);
    sub_241CD7804();
    if (swift_dynamicCast())
    {
      return *&v40[0];
    }

    return 0;
  }

  if ((*(&v40[0] + 1) & 0x2000000000000000) == 0)
  {
    if ((*&v40[0] & 0x1000000000000000) != 0)
    {
      v13 = ((*(&v40[0] + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v39 = *(&v40[0] + 1);
      v13 = sub_241CF9708();
      result = v39;
    }

    v14 = *v13;
    if (v14 == 43)
    {
      if (v11 >= 1)
      {
        v23 = v11 - 1;
        if (v11 != 1)
        {
          v16 = 0;
          if (!v13)
          {
            goto LABEL_68;
          }

          v24 = v13 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              break;
            }

            ++v24;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

      goto LABEL_77;
    }

    if (v14 == 45)
    {
      if (v11 >= 1)
      {
        v15 = v11 - 1;
        if (v11 != 1)
        {
          v16 = 0;
          if (!v13)
          {
            goto LABEL_68;
          }

          v17 = v13 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            v19 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              break;
            }

            ++v17;
            if (!--v15)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

      __break(1u);
      goto LABEL_76;
    }

    if (v11)
    {
      v16 = 0;
      if (!v13)
      {
        goto LABEL_68;
      }

      while (1)
      {
        v30 = *v13 - 48;
        if (v30 > 9)
        {
          break;
        }

        v31 = 10 * v16;
        if ((v16 * 10) >> 64 != (10 * v16) >> 63)
        {
          break;
        }

        v16 = v31 + v30;
        if (__OFADD__(v31, v30))
        {
          break;
        }

        ++v13;
        if (!--v11)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_67;
  }

  v41[0] = *&v40[0];
  v41[1] = *(&v40[0] + 1) & 0xFFFFFFFFFFFFFFLL;
  if (LOBYTE(v40[0]) != 43)
  {
    if (LOBYTE(v40[0]) == 45)
    {
      if (!v10)
      {
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v13 = (v10 - 1);
      if (v10 != 1)
      {
        v16 = 0;
        v20 = v41 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v22 - v21;
          if (__OFSUB__(v22, v21))
          {
            break;
          }

          ++v20;
          if (!--v13)
          {
            goto LABEL_68;
          }
        }
      }
    }

    else if (v10)
    {
      v16 = 0;
      v32 = v41;
      while (1)
      {
        v33 = *v32 - 48;
        if (v33 > 9)
        {
          break;
        }

        v34 = 10 * v16;
        if ((v16 * 10) >> 64 != (10 * v16) >> 63)
        {
          break;
        }

        v16 = v34 + v33;
        if (__OFADD__(v34, v33))
        {
          break;
        }

        ++v32;
        if (!--v10)
        {
LABEL_66:
          LOBYTE(v13) = 0;
          goto LABEL_68;
        }
      }
    }

LABEL_67:
    v16 = 0;
    LOBYTE(v13) = 1;
LABEL_68:
    LOBYTE(v40[0]) = v13;
    v35 = v13;

    if (v35)
    {
      goto LABEL_69;
    }

    goto LABEL_73;
  }

  if (v10)
  {
    v13 = (v10 - 1);
    if (v10 != 1)
    {
      v16 = 0;
      v27 = v41 + 1;
      while (1)
      {
        v28 = *v27 - 48;
        if (v28 > 9)
        {
          break;
        }

        v29 = 10 * v16;
        if ((v16 * 10) >> 64 != (10 * v16) >> 63)
        {
          break;
        }

        v16 = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          break;
        }

        ++v27;
        if (!--v13)
        {
          goto LABEL_68;
        }
      }
    }

    goto LABEL_67;
  }

LABEL_78:
  __break(1u);
  return result;
}

unint64_t sub_241CD7804()
{
  result = qword_2810D56A8;
  if (!qword_2810D56A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810D56A8);
  }

  return result;
}

void sub_241CD7850(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t *a7@<X8>)
{
  v15 = sub_241C93918(&qword_27EC69FA0, &qword_241CFEBC0);
  MEMORY[0x28223BE20](v15 - 8);
  v80 = &v66 - v16;
  v81 = sub_241CF8B38();
  v17 = *(v81 - 8);
  v18 = MEMORY[0x28223BE20](v81);
  v69 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v67 = &v66 - v20;
  if (*(a1 + 16))
  {
    v72 = *a6;
    if (a2)
    {
      v21 = a2;
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    if (a3)
    {
      v22 = a3;
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    if (!a4)
    {
      a4 = sub_241CDE940(MEMORY[0x277D84F90]);
    }

    v74 = a7;
    v75 = v7;
    v76 = a5;
    v23 = *(v21 + 16);
    v73 = a1;
    v68 = v17;
    if (v23)
    {
      v79 = a4;
      v82 = MEMORY[0x277D84F90];
      sub_241C94488(0, v23, 0);
      v24 = 32;
      v25 = v82;
      do
      {
        v26 = sub_241CF9038();
        v28 = v27;
        v82 = v25;
        v30 = *(v25 + 16);
        v29 = *(v25 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_241C94488((v29 > 1), v30 + 1, 1);
          v25 = v82;
        }

        *(v25 + 16) = v30 + 1;
        v31 = v25 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
        v24 += 8;
        --v23;
      }

      while (v23);

      a4 = v79;
      v17 = v68;
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
    }

    v71 = sub_241CDE8A8(v25);

    v33 = *(v22 + 16);
    if (v33)
    {
      v82 = MEMORY[0x277D84F90];
      sub_241C94488(0, v33, 0);
      v34 = 32;
      v35 = v82;
      do
      {
        v36 = sub_241CF9038();
        v82 = v35;
        v39 = *(v35 + 16);
        v38 = *(v35 + 24);
        if (v39 >= v38 >> 1)
        {
          v79 = v36;
          v41 = a4;
          v42 = v37;
          sub_241C94488((v38 > 1), v39 + 1, 1);
          v37 = v42;
          a4 = v41;
          v17 = v68;
          v36 = v79;
          v35 = v82;
        }

        *(v35 + 16) = v39 + 1;
        v40 = v35 + 16 * v39;
        *(v40 + 32) = v36;
        *(v40 + 40) = v37;
        v34 += 8;
        --v33;
      }

      while (v33);
    }

    else
    {

      v35 = MEMORY[0x277D84F90];
    }

    v70 = sub_241CDE8A8(v35);

    v43 = a4 + 64;
    v44 = 1 << *(a4 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & *(a4 + 64);
    v47 = (v44 + 63) >> 6;
    v78 = (v17 + 48);
    v79 = (v17 + 56);
    v66 = (v17 + 32);

    v48 = 0;
    v77 = MEMORY[0x277D84F90];
LABEL_28:
    v49 = v48;
    if (!v46)
    {
      goto LABEL_30;
    }

    do
    {
      v48 = v49;
LABEL_33:
      v46 &= v46 - 1;
      v50 = a4;

      v51 = v80;
      sub_241CF8B18();
      v52 = v81;
      (*v79)(v51, 0, 1, v81);

      if ((*v78)(v51, 1, v52) != 1)
      {
        v53 = v67;
        v54 = v51;
        v55 = v81;
        v56 = *v66;
        (*v66)(v67, v54, v81);
        v57 = v55;
        v58 = v56;
        v56(v69, v53, v57);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_241CBF9B0(0, *(v77 + 2) + 1, 1, v77);
        }

        v60 = *(v77 + 2);
        v59 = *(v77 + 3);
        if (v60 >= v59 >> 1)
        {
          v77 = sub_241CBF9B0((v59 > 1), v60 + 1, 1, v77);
        }

        v61 = v77;
        *(v77 + 2) = v60 + 1;
        v58(&v61[((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v60], v69, v81);
        a4 = v50;
        goto LABEL_28;
      }

      sub_241C8EA54(v51, &qword_27EC69FA0, &qword_241CFEBC0);
      v49 = v48;
      a4 = v50;
    }

    while (v46);
LABEL_30:
    while (1)
    {
      v48 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v48 >= v47)
      {

        v62 = v74;
        v63 = v70;
        v64 = v71;
        *v74 = v73;
        v62[1] = v64;
        v62[2] = v63;
        v65 = v76;
        v62[3] = v77;
        v62[4] = v65;
        *(v62 + 40) = v72;
        v62[6] = 0;
        v62[7] = 0;
        return;
      }

      v46 = *(v43 + 8 * v48);
      ++v49;
      if (v46)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  else
  {

    sub_241CE04A0();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();
  }
}

void *sub_241CD7E7C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_241CF9628();
  if (result == (1 << *(a1 + 32)))
  {
    v5 = 7;
  }

  else
  {
    result = sub_241CDE7AC(result, *(a1 + 36), a1, &v6);
    v5 = v6;
  }

  *a2 = v5;
  return result;
}

_BYTE *sub_241CD7EF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_241CF9628();
  if (v4 == 1 << *(a1 + 32))
  {
    result = 0;
    *a2 = 0;
  }

  else
  {
    result = sub_241CDE850(v6, v4, *(a1 + 36), 0, a1);
    *a2 = v6[0];
  }

  a2[1] = result;
  return result;
}

uint64_t MCatalogRequestURLBuilder.init(href:additionalParameters:bag:clientIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t *a6@<X8>)
{
  v13 = sub_241C93918(&qword_27EC69FA0, &qword_241CFEBC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - v14;
  v54 = sub_241CF8B38();
  v16 = *(v54 - 8);
  v17 = MEMORY[0x28223BE20](v54);
  v41 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v40 = &v38 - v19;
  v45 = *a5;
  v44 = sub_241CE0390(MEMORY[0x277D84F90]);
  v49 = a2;
  v50 = v6;
  v47 = a6;
  v48 = a4;
  v46 = a1;
  if (!a3)
  {
    a3 = sub_241CDE940(MEMORY[0x277D84F90]);
  }

  v20 = MEMORY[0x277D84F90];
  v43 = sub_241CDE8A8(MEMORY[0x277D84F90]);
  v51 = v20;
  v42 = sub_241CDE8A8(v20);
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 64);
  v24 = (v21 + 63) >> 6;
  v52 = (v16 + 48);
  v53 = (v16 + 56);
  v38 = v16;
  v39 = (v16 + 32);

  v26 = 0;
  while (1)
  {
    v27 = v26;
    if (!v23)
    {
      break;
    }

LABEL_10:
    v23 &= v23 - 1;

    sub_241CF8B18();
    v28 = v54;
    (*v53)(v15, 0, 1, v54);

    if ((*v52)(v15, 1, v28) == 1)
    {
      result = sub_241C8EA54(v15, &qword_27EC69FA0, &qword_241CFEBC0);
    }

    else
    {
      v29 = *v39;
      v30 = v54;
      (*v39)(v40, v15, v54);
      v29(v41, v40, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_241CBF9B0(0, v51[2] + 1, 1, v51);
      }

      v32 = v51[2];
      v31 = v51[3];
      if (v32 >= v31 >> 1)
      {
        v51 = sub_241CBF9B0((v31 > 1), v32 + 1, 1, v51);
      }

      v33 = v51;
      v51[2] = v32 + 1;
      result = (v29)(v33 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v32, v41, v54);
    }
  }

  while (1)
  {
    v26 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v26 >= v24)
    {

      v34 = v47;
      v35 = v43;
      *v47 = v44;
      v34[1] = v35;
      v36 = v51;
      v34[2] = v42;
      v34[3] = v36;
      v34[4] = v48;
      *(v34 + 40) = v45;
      v37 = v49;
      v34[6] = v46;
      v34[7] = v37;
      return result;
    }

    v23 = *(a3 + 64 + 8 * v26);
    ++v27;
    if (v23)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_241CD8394(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_241CBF9B0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_241CF8B38();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_241CD84C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_241CF97D8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_241CF97D8();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_241CDE568(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_241CDE608(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t MCatalogRequestURLBuilder.build()(uint64_t a1)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  sub_241C93918(&qword_27EC69EF0, &unk_241CFBC20);
  *(v2 + 272) = swift_task_alloc();
  sub_241C93918(&qword_27EC6A790, &qword_241CFEBD8);
  *(v2 + 280) = swift_task_alloc();
  v3 = sub_241CF8BC8();
  *(v2 + 288) = v3;
  *(v2 + 296) = *(v3 - 8);
  *(v2 + 304) = swift_task_alloc();
  v4 = v1[1];
  *(v2 + 208) = *v1;
  *(v2 + 224) = v4;
  v5 = v1[3];
  *(v2 + 240) = v1[2];
  *(v2 + 312) = v5;

  return MEMORY[0x2822009F8](sub_241CD86F8, 0, 0);
}

uint64_t sub_241CD86F8()
{
  if (*(v0 + 320))
  {
    v1 = *(v0 + 288);
    v2 = *(v0 + 296);
    v3 = *(v0 + 280);
    sub_241CF8BA8();
    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      sub_241C8EA54(*(v0 + 280), &qword_27EC6A790, &qword_241CFEBD8);
      sub_241CE04A0();
      swift_allocError();
      *v4 = 0;
      swift_willThrow();

      v5 = *(v0 + 8);

      return v5();
    }

    else
    {
      (*(*(v0 + 296) + 32))(*(v0 + 304), *(v0 + 280), *(v0 + 288));
      v12 = *(v0 + 224);
      *(v0 + 80) = *(v0 + 208);
      *(v0 + 96) = v12;
      v13 = *(v0 + 312);
      *(v0 + 112) = *(v0 + 240);
      *(v0 + 128) = v13;
      v14 = swift_task_alloc();
      *(v0 + 360) = v14;
      *v14 = v0;
      v14[1] = sub_241CD8B08;

      return sub_241CD97F4();
    }
  }

  else
  {
    v7 = *(v0 + 312);
    v8 = *(v0 + 264);
    sub_241CF8BB8();
    v9 = *v8;
    v10 = v8[2];
    *(v0 + 32) = v8[1];
    *(v0 + 48) = v10;
    *(v0 + 16) = v9;
    *(v0 + 64) = v7;
    *(v0 + 72) = 0;
    v11 = swift_task_alloc();
    *(v0 + 328) = v11;
    *v11 = v0;
    v11[1] = sub_241CD8920;

    return sub_241CD9308();
  }
}

uint64_t sub_241CD8920(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 336) = v2;

  if (v2)
  {
    v7 = sub_241CD903C;
  }

  else
  {
    *(v6 + 344) = a2;
    *(v6 + 352) = a1;
    v7 = sub_241CD8A54;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_241CD8A54()
{
  MEMORY[0x245CFD2E0](*(v0 + 352), *(v0 + 344));
  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  v2 = *(v0 + 312);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v2;
  v3 = swift_task_alloc();
  *(v0 + 360) = v3;
  *v3 = v0;
  v3[1] = sub_241CD8B08;

  return sub_241CD97F4();
}

uint64_t sub_241CD8B08(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {
    v4 = sub_241CD90D4;
  }

  else
  {
    v4 = sub_241CD8C1C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_241CD8C1C()
{
  if (*(*(v0 + 368) + 16))
  {
    v1 = sub_241CF8B48();
    if (!v1)
    {
      v1 = MEMORY[0x277D84F90];
    }

    sub_241CD8394(v1);
    sub_241CF8B58();
  }

  else
  {
  }

  v2 = *(v0 + 224);
  *(v0 + 144) = *(v0 + 208);
  *(v0 + 160) = v2;
  v3 = *(v0 + 312);
  *(v0 + 176) = *(v0 + 240);
  *(v0 + 192) = v3;
  v4 = swift_task_alloc();
  *(v0 + 384) = v4;
  *v4 = v0;
  v4[1] = sub_241CD8D18;

  return sub_241CDABD0();
}

uint64_t sub_241CD8D18(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 392) = v2;

  if (v2)
  {
    v7 = sub_241CD916C;
  }

  else
  {
    *(v6 + 400) = a2;
    *(v6 + 408) = a1;
    v7 = sub_241CD8E4C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_241CD8E4C()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[34];
  sub_241CF8B98();
  MEMORY[0x245CFD2D0](v1, v2);
  sub_241CF8B68();
  v4 = sub_241CF8CF8();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v3, 1, v4);
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[36];
  if (v6 == 1)
  {
    sub_241C8EA54(v0[34], &qword_27EC69EF0, &unk_241CFBC20);
    sub_241CE04A0();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v12 = v0[34];
    v13 = v0[32];
    (*(v8 + 8))(v0[38], v0[36]);
    (*(v5 + 32))(v13, v12, v4);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_241CD903C()
{
  (*(v0[37] + 8))(v0[38], v0[36]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_241CD90D4()
{
  (*(v0[37] + 8))(v0[38], v0[36]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_241CD916C()
{
  (*(v0[37] + 8))(v0[38], v0[36]);

  v1 = v0[1];

  return v1();
}

unint64_t MCatalogRequestURLBuilder.BuilderError.description.getter()
{
  if (*v0)
  {
    return 0xD000000000000032;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t MCatalogRequestURLBuilder.BuilderError.hashValue.getter()
{
  v1 = *v0;
  sub_241CF9998();
  MEMORY[0x245CFE100](v1);
  return sub_241CF99C8();
}

unint64_t sub_241CD92CC()
{
  if (*v0)
  {
    return 0xD000000000000032;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_241CD9308()
{
  v2 = v0[4];
  *(v1 + 160) = *v0;
  *(v1 + 168) = v2;
  return MEMORY[0x2822009F8](sub_241CD9330, 0, 0);
}

uint64_t sub_241CD9330()
{
  v1 = [*(v0 + 168) countryCode];
  *(v0 + 176) = v1;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_241CD9468;
  v2 = swift_continuation_init();
  *(v0 + 136) = sub_241C93918(&qword_27EC6A7B8, &qword_241CFED68);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_241CD2564;
  *(v0 + 104) = &unk_2853DE848;
  *(v0 + 112) = v2;
  [v1 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_241CD9468()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_241CD9578;
  }

  else
  {
    v2 = sub_241CD95E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_241CD9578()
{
  v1 = *(v0 + 176);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_241CD95E8()
{
  v22 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);

  v3 = sub_241CF9038();
  v5 = v4;

  strcpy(v21, "/v1/catalog/");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  MEMORY[0x245CFD860](v3, v5);

  v7 = v21[0];
  v6 = v21[1];
  if (*(v1 + 16) <= 1uLL)
  {
    sub_241CD7E7C(*(v0 + 160), v21);
    v8 = LOBYTE(v21[0]);
    if (LOBYTE(v21[0]) == 6)
    {
      v21[0] = v7;
      v21[1] = v6;
      MEMORY[0x245CFD860](0x746E65746E6F632FLL, 0xE900000000000073);
    }

    else
    {
      if (LOBYTE(v21[0]) == 7)
      {
        goto LABEL_22;
      }

      v21[0] = v7;
      v21[1] = v6;
      MEMORY[0x245CFD860](47, 0xE100000000000000);
      v9 = 0xEB00000000736B6FLL;
      v10 = 0x6F622D6F69647561;
      v11 = 0xE500000000000000;
      v12 = 0x736B6F6F62;
      v13 = 0x7265732D6B6F6F62;
      v14 = 0xE600000000000000;
      if (v8 == 4)
      {
        v14 = 0xEB00000000736569;
      }

      else
      {
        v13 = 0x7365726E6567;
      }

      if (v8 != 3)
      {
        v12 = v13;
        v11 = v14;
      }

      v15 = 0x8000000241D008F0;
      v16 = 0xD000000000000011;
      if (v8 != 1)
      {
        v16 = 0x73726F68747561;
        v15 = 0xE700000000000000;
      }

      if (v8)
      {
        v10 = v16;
        v9 = v15;
      }

      if (v8 <= 2)
      {
        v17 = v10;
      }

      else
      {
        v17 = v12;
      }

      if (v8 <= 2)
      {
        v18 = v9;
      }

      else
      {
        v18 = v11;
      }

      MEMORY[0x245CFD860](v17, v18);
    }

    v7 = v21[0];
    v6 = v21[1];
  }

LABEL_22:
  v19 = *(v0 + 8);

  return v19(v7, v6);
}

uint64_t sub_241CD97F4()
{
  v2 = sub_241CF8B38();
  *(v1 + 320) = v2;
  *(v1 + 328) = *(v2 - 8);
  *(v1 + 336) = swift_task_alloc();
  *(v1 + 344) = swift_task_alloc();
  *(v1 + 352) = swift_task_alloc();
  *(v1 + 360) = swift_task_alloc();
  *(v1 + 368) = swift_task_alloc();
  v3 = *(v0 + 16);
  *(v1 + 376) = *v0;
  *(v1 + 392) = v3;
  *(v1 + 408) = *(v0 + 32);
  *(v1 + 208) = *(v0 + 40);
  *(v1 + 224) = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_241CD990C, 0, 0);
}

uint64_t sub_241CD990C()
{
  v73 = v0;
  v1 = (v0 + 376);
  v2 = *(v0 + 47);
  *(v0 + 35) = MEMORY[0x277D84F90];
  v3 = *(v2 + 16);
  if (v3 >= 2)
  {
    v63 = v0 + 376;
    v4 = sub_241CE8880(v3, 0);
    v5 = sub_241CE95C8(&v68, v4 + 32, v3, v2);
    v6 = v68;
    i = v69;
    v1 = v72;
    v62 = v2;

    sub_241C90BFC(v6);
    if (v5 == v3)
    {
      v68 = v4;

      sub_241CE01A4(&v68, 0x73746E65746E6F63uLL, 0xE800000000000000);

      v11 = v68;
      v3 = *(v68 + 16);
      if (!v3)
      {

        i = MEMORY[0x277D84F90];
        v0 = v66;
        v1 = v63;
        goto LABEL_54;
      }

      v12 = 0;
      v0 = v66;
      v60 = *(v66 + 47);
      i = MEMORY[0x277D84F90];
      v57 = *(v66 + 41);
      v13 = v62;
      v1 = v63;
      v58 = *(v68 + 16);
      v59 = v68;
      while (1)
      {
        v8 = *(v11 + 16);
        if (v12 >= v8)
        {
          break;
        }

        if (*(v13 + 16))
        {
          v16 = *(v11 + v12 + 32);
          v4 = *v1;
          v17 = sub_241CF4160(*(v11 + v12 + 32));
          if (v18)
          {
            v1 = *(*(v60 + 56) + 8 * v17);
            v68 = 1534289001;
            v69 = 0xE400000000000000;
            v19 = 0x7365726E6567;
            if (v16 != 5)
            {
              v19 = 0x73746E65746E6F63;
            }

            v20 = 0xE800000000000000;
            if (v16 == 5)
            {
              v20 = 0xE600000000000000;
            }

            v21 = 0x736B6F6F62;
            if (v16 != 3)
            {
              v21 = 0x7265732D6B6F6F62;
            }

            v22 = 0xE500000000000000;
            if (v16 != 3)
            {
              v22 = 0xEB00000000736569;
            }

            if (v16 <= 4)
            {
              v19 = v21;
              v20 = v22;
            }

            v23 = 0xEB00000000736B6FLL;
            v24 = 0xD000000000000011;
            if (v16 != 1)
            {
              v24 = 0x73726F68747561;
            }

            v25 = 0x8000000241D008F0;
            if (v16 != 1)
            {
              v25 = 0xE700000000000000;
            }

            if (v16)
            {
              v23 = v25;
            }

            else
            {
              v24 = 0x6F622D6F69647561;
            }

            if (v16 <= 2)
            {
              v26 = v24;
            }

            else
            {
              v26 = v19;
            }

            if (v16 <= 2)
            {
              v27 = v23;
            }

            else
            {
              v27 = v20;
            }

            MEMORY[0x245CFD860](v26, v27);

            MEMORY[0x245CFD860](93, 0xE100000000000000);
            v4 = *(v1 + 16);
            if (v4)
            {
              v28 = i;
              sub_241C93918(&qword_27EC69D98, &unk_241CFED80);
              v29 = swift_allocObject();
              v30 = j__malloc_size(v29);
              v31 = v30 - 32;
              if (v30 < 32)
              {
                v31 = v30 - 17;
              }

              v29[2] = v4;
              v29[3] = 2 * (v31 >> 4);
              v61 = sub_241CE9470(&v68, v29 + 4, v4, v1);
              v3 = v68;
              i = v70;
              v0 = v71;

              sub_241C90BFC(v3);
              v8 = v61;
              if (v61 != v4)
              {
                goto LABEL_74;
              }

              v0 = v66;
              i = v28;
              v13 = v62;
            }

            else
            {
              v29 = MEMORY[0x277D84F90];
            }

            v67 = v29;
            sub_241CDC274(&v67);

            *(v0 + 39) = v67;
            sub_241C93918(&qword_27EC69FC8, &unk_241CFBC30);
            sub_241CE0A58(&qword_2810D56D8, &qword_27EC69FC8, &unk_241CFBC30, MEMORY[0x277D83958]);
            sub_241CF8FA8();

            sub_241CF8B18();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              i = sub_241CBF9B0(0, i[2] + 1, 1, i);
            }

            v1 = v63;
            v11 = v59;
            v33 = i[2];
            v32 = i[3];
            v4 = (v33 + 1);
            if (v33 >= v32 >> 1)
            {
              i = sub_241CBF9B0((v32 > 1), v33 + 1, 1, i);
            }

            v14 = *(v0 + 46);
            v15 = *(v0 + 40);
            i[2] = v4;
            (*(v57 + 32))(i + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v33, v14, v15);
            *(v0 + 35) = i;
            v3 = v58;
          }
        }

        if (v3 == ++v12)
        {

          goto LABEL_54;
        }
      }

      __break(1u);
LABEL_74:
      __break(1u);
    }

    __break(1u);
    goto LABEL_76;
  }

  sub_241CD7EF8(v2, &v68);
  v4 = v69;
  if (v69)
  {
    v9 = *(v69 + 16);
    if (v9)
    {
      v3 = sub_241CE87FC(*(v69 + 16), 0);
      v0 = sub_241CE9470(&v68, (v3 + 32), v9, v4);
      v10 = v68;
      i = v70;

      sub_241C90BFC(v10);
      if (v0 != v9)
      {
        goto LABEL_77;
      }

      v0 = v66;
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

    v67 = v3;
    sub_241CDC274(&v67);

    *(v0 + 38) = v67;
    sub_241C93918(&qword_27EC69FC8, &unk_241CFBC30);
    sub_241CE0A58(&qword_2810D56D8, &qword_27EC69FC8, &unk_241CFBC30, MEMORY[0x277D83958]);
    sub_241CF8FA8();

    sub_241CF8B18();

    i = sub_241CBF9B0(0, 1, 1, MEMORY[0x277D84F90]);
    v3 = i[2];
    v8 = i[3];
    v4 = (v3 + 1);
    if (v3 >= v8 >> 1)
    {
      goto LABEL_79;
    }

    goto LABEL_51;
  }

  for (i = MEMORY[0x277D84F90]; ; *(v0 + 35) = i)
  {
LABEL_54:
    v37 = *(v0 + 48);
    v4 = *(v37 + 16);
    if (v4)
    {
      v64 = i;
      v38 = sub_241CE87FC(v4, 0);
      v0 = sub_241CE9470(&v68, v38 + 4, v4, v37);
      v3 = v68;
      i = v70;

      sub_241C90BFC(v3);
      if (v0 != v4)
      {
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v67 = v38;
      sub_241CDC274(&v67);
      v0 = v66;
      *(v66 + 36) = v67;
      sub_241C93918(&qword_27EC69FC8, &unk_241CFBC30);
      sub_241CE0A58(&qword_2810D56D8, &qword_27EC69FC8, &unk_241CFBC30, MEMORY[0x277D83958]);
      sub_241CF8FA8();

      sub_241CF8B18();

      i = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        i = sub_241CBF9B0(0, v64[2] + 1, 1, v64);
      }

      v40 = i[2];
      v39 = i[3];
      if (v40 >= v39 >> 1)
      {
        i = sub_241CBF9B0((v39 > 1), v40 + 1, 1, i);
      }

      v41 = *(v66 + 44);
      v42 = *(v66 + 40);
      v43 = *(v66 + 41);
      i[2] = v40 + 1;
      (*(v43 + 32))(i + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v40, v41, v42);
      *(v66 + 35) = i;
    }

    v44 = *(v0 + 49);
    v4 = *(v44 + 16);
    if (!v4)
    {
      goto LABEL_68;
    }

    v65 = i;
    v45 = sub_241CE87FC(v4, 0);
    v0 = sub_241CE9470(&v68, v45 + 4, v4, v44);
    v3 = v68;
    i = v70;

    sub_241C90BFC(v3);
    if (v0 == v4)
    {
      break;
    }

LABEL_78:
    __break(1u);
LABEL_79:
    i = sub_241CBF9B0((v8 > 1), v4, 1, i);
LABEL_51:
    v34 = *(v0 + 45);
    v35 = *(v0 + 40);
    v36 = *(v0 + 41);
    i[2] = v4;
    (*(v36 + 32))(i + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v3, v34, v35);
  }

  v67 = v45;
  sub_241CDC274(&v67);
  v46 = v65;
  v0 = v66;
  *(v66 + 37) = v67;
  sub_241C93918(&qword_27EC69FC8, &unk_241CFBC30);
  sub_241CE0A58(&qword_2810D56D8, &qword_27EC69FC8, &unk_241CFBC30, MEMORY[0x277D83958]);
  sub_241CF8FA8();

  sub_241CF8B18();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v46 = sub_241CBF9B0(0, v65[2] + 1, 1, v65);
  }

  v48 = v46[2];
  v47 = v46[3];
  if (v48 >= v47 >> 1)
  {
    v46 = sub_241CBF9B0((v47 > 1), v48 + 1, 1, v46);
  }

  v49 = *(v66 + 43);
  v50 = *(v66 + 40);
  v51 = *(v66 + 41);
  v46[2] = v48 + 1;
  (*(v51 + 32))(v46 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v48, v49, v50);
  *(v66 + 35) = v46;
LABEL_68:
  v52 = *(v0 + 50);
  if (*(v52 + 16))
  {
    v68 = *(v0 + 50);

    sub_241CDC2E0(&v68);
    sub_241CD8394(v68);
    v52 = *(v0 + 50);
  }

  v53 = *(v0 + 51);
  v54 = *(v0 + 49);
  *(v0 + 5) = *v1;
  *(v0 + 12) = v54;
  *(v0 + 13) = v52;
  *(v0 + 14) = v53;
  *(v0 + 120) = *(v0 + 13);
  *(v0 + 17) = *(v0 + 28);
  v55 = swift_task_alloc();
  *(v0 + 52) = v55;
  *v55 = v0;
  v55[1] = sub_241CDA474;

  return sub_241CD9308();
}