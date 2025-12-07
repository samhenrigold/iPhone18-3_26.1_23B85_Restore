uint64_t sub_181AC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_22F530, &qword_1D1460);
  result = sub_1B52A4();
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = (*(v5 + 56) + 40 * v22);
      if (v4)
      {
        sub_264B8(v24, v30);
      }

      else
      {
        sub_404C4(v24, v30);
      }

      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      result = sub_264B8(v30, *(v7 + 56) + 40 * v18);
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_16;
      }
    }

    if (v4)
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

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_181E24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_22D6E0, &unk_1CCC90);
  result = sub_1B52A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v4;
    v35 = v3;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56) + 40 * v20;
      v22 = *(*(v5 + 48) + 8 * v20);
      v38 = *(v21 + 32);
      v37 = *(v21 + 24);
      v23 = *(v21 + 16);
      v25 = *v21;
      v24 = *(v21 + 8);
      result = sub_1B57E4();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v25;
      *(v16 + 8) = v24;
      *(v16 + 16) = v23;
      v5 = v36;
      *(v16 + 24) = v37;
      *(v16 + 32) = v38;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v34)
    {
      v33 = 1 << *(v5 + 32);
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

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1820C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_22F578, &qword_1D14F8);
  v37 = v4;
  result = sub_1B52A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 40 * v20;
      v23 = *v22;
      v38 = *(v22 + 8);
      v24 = *(v22 + 16);
      v25 = *(v22 + 24);
      v26 = *(v22 + 32);
      if ((v37 & 1) == 0)
      {
      }

      result = sub_1B57E4();
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v23;
      *(v16 + 8) = v38;
      *(v16 + 16) = v24;
      *(v16 + 24) = v25;
      *(v16 + 32) = v26;
      ++*(v7 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
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

uint64_t sub_182384(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_22D6C8, &qword_1CCC78);
  result = sub_1B52A4();
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
      v21 = *(*(v5 + 56) + v19);
      result = sub_1B57E4();
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
      *(*(v7 + 56) + v15) = v21;
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

uint64_t sub_1825FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_22F588, &unk_1D1520);
  v32 = v4;
  result = sub_1B52A4();
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(v5 + 56) + 24 * v23;
      v34 = *v25;
      v33 = *(v25 + 8);
      v26 = *(v25 + 16);
      if ((v32 & 1) == 0)
      {
      }

      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v15) >> 6;
        while (++v17 != v28 || (v27 & 1) == 0)
        {
          v29 = v17 == v28;
          if (v17 == v28)
          {
            v17 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v17);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v24;
      v19 = *(v7 + 56) + 24 * v18;
      *v19 = v34;
      *(v19 + 8) = v33;
      *(v19 + 16) = v26;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1829C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_22D730, &unk_1CCCD0);
  v36 = v4;
  result = sub_1B52A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 48 * v20;
      v38 = *v22;
      v23 = *(v22 + 16);
      v24 = *(v22 + 24);
      v37 = *(v22 + 32);
      v25 = *(v22 + 40);
      if ((v36 & 1) == 0)
      {
      }

      result = sub_1B57E4();
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 48 * v15;
      *v16 = v38;
      *(v16 + 16) = v23;
      *(v16 + 24) = v24;
      *(v16 + 32) = v37;
      *(v16 + 40) = v25;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
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

uint64_t sub_182CBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v45 = sub_2B0C(a3, a4);
  v11 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v40 - v12;
  v13 = *v6;
  sub_2B0C(a5, a6);
  v43 = v10;
  result = sub_1B52A4();
  v15 = result;
  if (*(v13 + 16))
  {
    v40 = v9;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v11 + 16);
    v42 = v11;
    v22 = (v11 + 32);
    v23 = result + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(*(v13 + 48) + 8 * v28);
      v30 = *(v11 + 72);
      v31 = *(v13 + 56) + v30 * v28;
      if (v43)
      {
        (*v22)(v44, v31, v45);
      }

      else
      {
        (*v41)(v44, v31, v45);
      }

      result = sub_1B57E4();
      v32 = -1 << *(v15 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v23 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v23 + 8 * v34);
          if (v38 != -1)
          {
            v24 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v33) & ~*(v23 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v15 + 48) + 8 * v24) = v29;
      result = (*v22)(*(v15 + 56) + v30 * v24, v44, v45);
      ++*(v15 + 16);
      v11 = v42;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v9 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v13 + 32);
    v9 = v40;
    if (v39 >= 64)
    {
      bzero((v13 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v39;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
  return result;
}

uint64_t sub_18301C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_2B0C(a3, a4);
  result = sub_1B52A4();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v5;
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
      }

      result = sub_1B57E4();
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

    if ((v6 & 1) == 0)
    {

      v5 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v32;
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

uint64_t sub_183284(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_22A510, &qword_1C0208);
  v30 = v4;
  result = sub_1B52A4();
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
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
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
      *(*(v7 + 48) + v15) = v20;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_18355C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_2B0C(a3, a4);
  result = sub_1B52A4();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_16:
      v25 = v22 | (v11 << 6);
      v26 = *(*(v8 + 48) + v25);
      v27 = *(v8 + 56) + 40 * v25;
      if (v7)
      {
        a5(v27, v34);
      }

      else
      {
        sub_404C4(v27, v34);
      }

      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v18 = -1 << *(v10 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v17 + 8 * (v19 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v18) >> 6;
        while (++v20 != v29 || (v28 & 1) == 0)
        {
          v30 = v20 == v29;
          if (v20 == v29)
          {
            v20 = 0;
          }

          v28 |= v30;
          v31 = *(v17 + 8 * v20);
          if (v31 != -1)
          {
            v21 = __clz(__rbit64(~v31)) + (v20 << 6);
            goto LABEL_8;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v17 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v10 + 48) + v21) = v26;
      result = (a5)(v34, *(v10 + 56) + 40 * v21);
      ++*(v10 + 16);
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v15 = (v24 - 1) & v24;
        goto LABEL_16;
      }
    }

    if ((v7 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_35;
    }

    v32 = 1 << *(v8 + 32);
    v6 = v5;
    if (v32 >= 64)
    {
      bzero((v8 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v32;
    }

    *(v8 + 16) = 0;
  }

LABEL_35:
  *v6 = v10;
  return result;
}

uint64_t sub_1838B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_22F508, &qword_1D1420);
  result = sub_1B52A4();
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
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        sub_264B8(v21, v30);
      }

      else
      {
        sub_404C4(v21, v30);
      }

      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
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
      result = sub_264B8(v30, *(v7 + 56) + 40 * v15);
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

    if (v4)
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

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_183B7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Package(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_2B0C(&qword_22F5C0, &qword_1D1598);
  v40 = v4;
  result = sub_1B52A4();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_18956C(v28, v41, type metadata accessor for Package);
      }

      else
      {
        sub_189504(v28, v41, type metadata accessor for Package);
      }

      sub_1B57F4();
      sub_1B4884();
      result = sub_1B5844();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_18956C(v41, *(v9 + 56) + v27 * v17, type metadata accessor for Package);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_183F1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_2B0C(a3, a4);
  v32 = v6;
  result = sub_1B52A4();
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

      sub_1B57F4();
      sub_8E228(v33, v22);
      result = sub_1B5844();
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

uint64_t sub_1841C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_2B0C(a3, a4);
  v36 = v6;
  result = sub_1B52A4();
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

      sub_1B57F4();
      sub_1B4884();
      result = sub_1B5844();
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

uint64_t sub_184460(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_22F5B0, &qword_1D1588);
  v37 = v4;
  result = sub_1B52A4();
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

      sub_1B57F4();
      sub_1B4884();
      result = sub_1B5844();
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

uint64_t sub_184720(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_22F5A8, &qword_1D1580);
  v34 = v4;
  result = sub_1B52A4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = sub_1B57E4();
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
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

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1849A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2B0C(&qword_22F5A0, &qword_1D1578);
  v35 = v4;
  result = sub_1B52A4();
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

      sub_1B57F4();
      sub_1B4884();
      result = sub_1B5844();
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

char *sub_184C48()
{
  v1 = v0;
  v41 = sub_1B41D4();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1B4204();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2B0C(&qword_22F5D8, &qword_1D15B8);
  v4 = *v0;
  v5 = sub_1B5294();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_184F9C()
{
  v1 = v0;
  sub_2B0C(&qword_2297B0, &unk_1D14D0);
  v2 = *v0;
  v3 = sub_1B5294();
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
        memcpy(__dst, (*(v2 + 56) + 384 * v17), sizeof(__dst));
        *(*(v4 + 48) + 8 * v17) = v18;
        result = memcpy((*(v4 + 56) + 384 * v17), __dst, 0x179uLL);
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

void *sub_185124()
{
  v1 = v0;
  v2 = type metadata accessor for StoreBook(0);
  v27 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2B0C(&qword_22F560, &qword_1D14C8);
  v4 = *v0;
  v5 = sub_1B5294();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_189504(*(v4 + 56) + v23, v26, type metadata accessor for StoreBook);
        v24 = v28;
        *(*(v28 + 48) + 8 * v20) = v21;
        result = sub_18956C(v22, *(v24 + 56) + v23, type metadata accessor for StoreBook);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_185370()
{
  v1 = v0;
  sub_2B0C(&qword_22D6B0, &unk_1CCC60);
  v2 = *v0;
  v3 = sub_1B5294();
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
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

void *sub_1854F8()
{
  v1 = v0;
  sub_2B0C(&qword_2290B8, &qword_1BB480);
  v2 = *v0;
  v3 = sub_1B5294();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
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
        v22 = 40 * v17;
        sub_43050(*(v2 + 56) + 40 * v17, v28, &qword_229010, &unk_1D15F0);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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

void *sub_1856D0()
{
  v1 = v0;
  sub_2B0C(&qword_229700, &qword_1BCB58);
  v2 = *v0;
  v3 = sub_1B5294();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_429F8(&v33, v32))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      v18 = *(v2 + 56) + 136 * v16;
      v20 = *(v18 + 16);
      v19 = *(v18 + 32);
      v21 = *(v18 + 64);
      v36 = *(v18 + 48);
      v37 = v21;
      v23 = *(v18 + 96);
      v22 = *(v18 + 112);
      v24 = *(v18 + 80);
      v41 = *(v18 + 128);
      v39 = v23;
      v40 = v22;
      v38 = v24;
      v33 = *v18;
      v34 = v20;
      v35 = v19;
      *(*(v4 + 48) + 8 * v16) = v17;
      v25 = *(v4 + 56) + 136 * v16;
      *v25 = v33;
      v26 = v34;
      v27 = v35;
      v28 = v37;
      *(v25 + 48) = v36;
      *(v25 + 64) = v28;
      *(v25 + 16) = v26;
      *(v25 + 32) = v27;
      v29 = v38;
      v30 = v39;
      v31 = v40;
      *(v25 + 128) = v41;
      *(v25 + 96) = v30;
      *(v25 + 112) = v31;
      *(v25 + 80) = v29;
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

      v15 = *(v2 + 64 + 8 * v8);
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

void *sub_1858C4()
{
  v1 = v0;
  sub_2B0C(&qword_22F558, &qword_1D14C0);
  v2 = *v0;
  v3 = sub_1B5294();
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
        v19 = (*(v2 + 56) + (v17 << 6));
        v21 = *v19;
        v20 = v19[1];
        v22 = v19[3];
        v30 = v19[2];
        v31 = v22;
        v28 = v21;
        v29 = v20;
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + (v17 << 6));
        v24 = v28;
        v25 = v29;
        v26 = v31;
        v23[2] = v30;
        v23[3] = v26;
        *v23 = v24;
        v23[1] = v25;
        result = sub_42BA4(&v28, &v27);
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

void *sub_185A54()
{
  v1 = v0;
  v2 = sub_2B0C(&qword_229728, &unk_1D14A0);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  sub_2B0C(&qword_229730, &qword_1BCB88);
  v5 = *v0;
  v6 = sub_1B5294();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 64);
    for (i = (v12 + 63) >> 6; v14; result = sub_4299C(v26, &v25))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v11 << 6);
      v20 = 568 * v19;
      memcpy(v26, (*(v5 + 48) + 568 * v19), 0x231uLL);
      v21 = *(v24 + 72) * v19;
      sub_43050(*(v5 + 56) + v21, v4, &qword_229728, &unk_1D14A0);
      memcpy((*(v7 + 48) + v20), v26, 0x231uLL);
      sub_189494(v4, *(v7 + 56) + v21);
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= i)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v18 = *(v9 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_185CAC()
{
  v1 = v0;
  v29 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - v2;
  sub_2B0C(&qword_229748, &qword_1BCBA0);
  v3 = *v0;
  v4 = sub_1B5294();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

char *sub_185F44()
{
  v1 = v0;
  v33 = sub_1B40F4();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2B0C(&qword_22E180, &unk_1D1530);
  v3 = *v0;
  v4 = sub_1B5294();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

void *sub_1861EC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(_BYTE *, unint64_t))
{
  v5 = v3;
  sub_2B0C(a1, a2);
  v6 = *v3;
  v7 = sub_1B5294();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + v21);
        sub_404C4(*(v6 + 56) + 40 * v21, v23);
        *(*(v8 + 48) + v21) = v22;
        result = a3(v23, *(v8 + 56) + 40 * v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        goto LABEL_21;
      }

      v20 = *(v6 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v8;
  }

  return result;
}

void *sub_186378()
{
  v1 = v0;
  sub_2B0C(&qword_22BD20, &qword_1C6110);
  v2 = *v0;
  v3 = sub_1B5294();
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

void *sub_1864C4()
{
  v1 = v0;
  sub_2B0C(&qword_2297C0, &qword_1BCC38);
  v2 = *v0;
  v3 = sub_1B5294();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_5EDD8(&v29, v28))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      v18 = *(v2 + 56) + 88 * v16;
      v19 = *(v18 + 32);
      v20 = *(v18 + 48);
      v21 = *(v18 + 64);
      v34 = *(v18 + 80);
      v32 = v20;
      v33 = v21;
      v22 = *(v18 + 16);
      v29 = *v18;
      v30 = v22;
      v31 = v19;
      *(*(v4 + 48) + 8 * v16) = v17;
      v23 = *(v4 + 56) + 88 * v16;
      v24 = v30;
      *v23 = v29;
      *(v23 + 16) = v24;
      v25 = v31;
      v26 = v32;
      v27 = v33;
      *(v23 + 80) = v34;
      *(v23 + 48) = v26;
      *(v23 + 64) = v27;
      *(v23 + 32) = v25;
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

      v15 = *(v2 + 64 + 8 * v8);
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

void *sub_186684()
{
  v1 = v0;
  sub_2B0C(&qword_2297B8, &qword_1BCC30);
  v2 = *v0;
  v3 = sub_1B5294();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_186814(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v32 = sub_1B40F4();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2B0C(a1, a2);
  v7 = *v2;
  v8 = sub_1B5294();
  v9 = v8;
  if (*(v7 + 16))
  {
    v30[0] = v5;
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, (v7 + 64), 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v33 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v30[1] = v34 + 32;
    v30[2] = v34 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v34;
        v24 = *(v34 + 72) * v22;
        v25 = v31;
        v26 = v32;
        (*(v34 + 16))(v31, *(v7 + 48) + v24, v32);
        v22 *= 16;
        v27 = v33;
        v28 = *(v33 + 48);
        v29 = *(v23 + 32);
        v36 = *(*(v7 + 56) + v22);
        v29(v28 + v24, v25, v26);
        *(*(v27 + 56) + v22) = v36;

        v17 = v35;
      }

      while (v35);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30[0];
        v9 = v33;
        goto LABEL_21;
      }

      v21 = *(v7 + 64 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v35 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

id sub_186AC8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_2B0C(a1, a2);
  v4 = *v2;
  v5 = sub_1B5294();
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

void *sub_186C14()
{
  v1 = v0;
  sub_2B0C(&qword_22D6F0, &unk_1CCCA0);
  v2 = *v0;
  v3 = sub_1B5294();
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
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

void *sub_186D60()
{
  v1 = v0;
  sub_2B0C(&qword_22D6E8, &qword_1D1570);
  v2 = *v0;
  v3 = sub_1B5294();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

void *sub_186EE4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_2B0C(a1, a2);
  v4 = *v2;
  v5 = sub_1B5294();
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
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; result = )
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v18 = v15 | (v10 << 6);
      v19 = *(v4 + 48);
      memcpy(__dst, (v19 + 568 * v18), 0x231uLL);
      v20 = *(*(v4 + 56) + 8 * v18);
      memmove((*(v6 + 48) + 568 * v18), (v19 + 568 * v18), 0x231uLL);
      *(*(v6 + 56) + 8 * v18) = v20;
      sub_4299C(__dst, v21);
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= i)
      {

        goto LABEL_21;
      }

      v17 = *(v4 + 64 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v3 = v6;
  }

  return result;
}

void *sub_187088()
{
  v1 = v0;
  sub_2B0C(&qword_22F570, &qword_1D14E8);
  v2 = *v0;
  v3 = sub_1B5294();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
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

void *sub_1871EC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_2B0C(a1, a2);
  v4 = *v2;
  v5 = sub_1B5294();
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
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 8 * v16);
      *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

void *sub_187328()
{
  v1 = v0;
  sub_2B0C(&qword_22E250, &qword_1D14F0);
  v2 = *v0;
  v3 = sub_1B5294();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_4299C(__dst, v18))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      memcpy(__dst, (*(v2 + 56) + 568 * v16), 0x231uLL);
      *(*(v4 + 48) + 8 * v16) = v17;
      memcpy((*(v4 + 56) + 568 * v16), __dst, 0x231uLL);
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

      v15 = *(v2 + 64 + 8 * v8);
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

void *sub_1874E4()
{
  v1 = v0;
  sub_2B0C(&qword_22D6E0, &unk_1CCC90);
  v2 = *v0;
  v3 = sub_1B5294();
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
    for (i = (v9 + 63) >> 6; v11; *(v22 + 32) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 40 * v14;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      v20 = *(v17 + 32);
      result = *(v4 + 48);
      v21 = *v17;
      *(result + v14) = *(*(v2 + 48) + 8 * v14);
      v22 = *(v4 + 56) + 40 * v14;
      *v22 = v21;
      *(v22 + 16) = v18;
      *(v22 + 24) = v19;
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

void *sub_187658()
{
  v1 = v0;
  sub_2B0C(&qword_22F578, &qword_1D14F8);
  v2 = *v0;
  v3 = sub_1B5294();
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
        v18 = *(v2 + 56) + 40 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        v23 = *(v18 + 32);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v24 = *(v4 + 56) + 40 * v17;
        *v24 = v19;
        *(v24 + 8) = v20;
        *(v24 + 16) = v22;
        *(v24 + 24) = v21;
        *(v24 + 32) = v23;
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

void *sub_1877E4()
{
  v1 = v0;
  sub_2B0C(&qword_22D6C8, &qword_1CCC78);
  v2 = *v0;
  v3 = sub_1B5294();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
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

void *sub_187944()
{
  v1 = v0;
  sub_2B0C(&qword_22F588, &unk_1D1520);
  v2 = *v0;
  v3 = sub_1B5294();
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
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

void *sub_187AC0()
{
  v1 = v0;
  sub_2B0C(&qword_22D730, &unk_1CCCD0);
  v2 = *v0;
  v3 = sub_1B5294();
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
        v18 = *(v2 + 56) + 48 * v17;
        v19 = *(v18 + 16);
        v21 = *(v18 + 24);
        v20 = *(v18 + 32);
        v22 = *(v18 + 40);
        v23 = *v18;
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v24 = *(v4 + 56) + 48 * v17;
        *v24 = v23;
        *(v24 + 16) = v19;
        *(v24 + 24) = v21;
        *(v24 + 32) = v20;
        *(v24 + 40) = v22;
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

void *sub_187C74(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_2B0C(a1, a2);
  v4 = *v2;
  v5 = sub_1B5294();
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

  return result;
}

void *sub_187DD4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_2B0C(a1, a2);
  v4 = *v2;
  v5 = sub_1B5294();
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
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

  return result;
}

void *sub_187F20()
{
  v1 = v0;
  sub_2B0C(&qword_22F508, &qword_1D1420);
  v2 = *v0;
  v3 = sub_1B5294();
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
        sub_404C4(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_264B8(v19, *(v4 + 56) + 40 * v17);
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

void *sub_1880A0()
{
  v1 = v0;
  v2 = type metadata accessor for Package(0);
  v33 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2B0C(&qword_22F5C0, &qword_1D1598);
  v4 = *v0;
  v5 = sub_1B5294();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_189504(v21 + v27, v32, type metadata accessor for Package);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_18956C(v26, *(v28 + 56) + v27, type metadata accessor for Package);

        v14 = v35;
      }

      while (v35);
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

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_188328(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_2B0C(a1, a2);
  v4 = *v2;
  v5 = sub_1B5294();
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

  return result;
}

void *sub_188490(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_2B0C(a1, a2);
  v4 = *v2;
  v5 = sub_1B5294();
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

void *sub_1885F0()
{
  v1 = v0;
  sub_2B0C(&qword_22F5B0, &qword_1D1588);
  v2 = *v0;
  v3 = sub_1B5294();
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

id sub_188768()
{
  v1 = v0;
  sub_2B0C(&qword_22F5A0, &qword_1D1578);
  v2 = *v0;
  v3 = sub_1B5294();
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

uint64_t sub_1888D4(uint64_t a1)
{
  v2 = sub_1B4274();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v34 = &v27[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1B4344();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4284();
  sub_2B0C(&qword_22C080, &qword_1C65E0);
  sub_1B4304();

  v8 = enum case for Scope.singleton(_:);
  v9 = *(v5 + 104);
  v9(v7, enum case for Scope.singleton(_:), v4);
  sub_1B4214();

  v10 = *(v5 + 8);
  v10(v7, v4);
  sub_1B4284();
  sub_2B0C(&qword_22A7F0, &unk_1C05F0);
  sub_1B4304();

  v9(v7, v8, v4);
  sub_1B4214();

  v10(v7, v4);
  sub_1B4284();
  sub_2B0C(&qword_22F490, &qword_1D1398);
  sub_1B4304();

  v9(v7, v8, v4);
  sub_1B4214();

  v10(v7, v4);
  sub_1B4284();
  sub_2B0C(&qword_22F498, &qword_1D13A0);
  sub_1B4304();

  v9(v7, v8, v4);
  sub_1B4214();

  v10(v7, v4);
  sub_1B4294();
  sub_2B0C(&qword_22F4A0, &qword_1D13A8);
  sub_1B4304();

  v9(v7, v8, v4);
  sub_1B4214();

  v10(v7, v4);
  sub_1B4294();
  type metadata accessor for DefaultBookClusteringService();
  sub_1B42F4();

  v9(v7, v8, v4);
  v38 = v9;
  sub_1B4214();

  v10(v7, v4);
  sub_1B4294();
  type metadata accessor for AllCollectionTypesFillingClusteringService();
  sub_1B42F4();

  v9(v7, v8, v4);
  sub_1B4214();

  v10(v7, v4);
  v11 = a1;
  sub_1B4294();
  v33 = type metadata accessor for SeedBasedRecommendationServiceResolver();
  sub_1B42F4();

  v12 = v8;
  v13 = v8;
  v14 = v38;
  v38(v7, v12, v4);
  sub_1B4214();

  v10(v7, v4);
  v30 = v10;
  sub_1B4294();
  v32 = type metadata accessor for DelegatingCollectionService();
  sub_1B42F4();

  v28 = v13;
  v14(v7, v13, v4);
  sub_1B4214();

  v10(v7, v4);
  v15 = v11;
  sub_1B4294();
  sub_2B0C(&qword_22F4A8, &unk_1D13B0);
  sub_1B4304();

  v14(v7, v13, v4);
  v16 = v14;
  sub_1B4214();

  v17 = v30;
  v30(v7, v4);
  sub_1B4294();
  type metadata accessor for SeedBasedMoreFromYourAuthorsService();
  sub_1B42F4();

  v18 = v28;
  v16(v7, v28, v4);
  sub_1B4214();

  v17(v7, v4);
  v37 = v15;
  sub_1B4294();
  v31 = sub_2B0C(&qword_2291F8, &unk_1CFD30);
  sub_1B4304();

  v19 = v38;
  v38(v7, v18, v4);
  sub_1B4214();

  v17(v7, v4);
  sub_1B4294();
  type metadata accessor for InternalCollectionRecommendationService(0);
  sub_1B42F4();

  v29 = v5 + 104;
  v19(v7, v18, v4);
  sub_1B4214();

  v17(v7, v4);
  sub_1B4294();
  sub_2B0C(&qword_22F4B0, &qword_1D13C0);
  sub_1B4304();

  v19(v7, v18, v4);
  sub_1B4214();

  v17(v7, v4);
  sub_1B4294();
  sub_1B4304();

  v19(v7, v18, v4);
  sub_1B4214();

  v17(v7, v4);
  sub_1B42A4();
  sub_2698(v39, v40);
  v20 = enum case for CallbackScope.any(_:);
  v22 = v34;
  v21 = v35;
  v23 = *(v35 + 104);
  v24 = v36;
  v23(v34, enum case for CallbackScope.any(_:), v36);
  sub_1B4314();
  v25 = *(v21 + 8);
  v25(v22, v24);
  sub_2BF8(v39);
  sub_1B42A4();
  sub_2698(v39, v40);
  v23(v22, v20, v24);
  sub_1B4314();
  v25(v22, v24);
  return sub_2BF8(v39);
}

uint64_t sub_189494(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_229728, &unk_1D14A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_189504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18956C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1895D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18961C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_189640, 0, 0);
}

uint64_t sub_189640()
{
  v1 = *(v0 + 24);
  v2 = v1[5];
  v3 = v1[6];
  sub_2698(v1 + 2, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_189768;

  return v6(v2, v3);
}

uint64_t sub_189768(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = v2;

  if (v2)
  {
    v5 = sub_18995C;
  }

  else
  {
    v5 = sub_189880;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_189880()
{
  object = v0[3].value._object;
  countAndFlagsBits = v0[2].value._countAndFlagsBits;
  v3 = v0[1].value._countAndFlagsBits;
  v4 = sub_1B3B64();
  (*(*(v4 - 8) + 16))(v3, countAndFlagsBits, v4);
  if (object)
  {
    v8._object = 0x80000000001D78F0;
    v8._countAndFlagsBits = 0xD00000000000001BLL;
    sub_1B3B54(v0[3], v8);
  }

  v5 = v0->value._object;

  return v5();
}

uint64_t sub_18995C()
{
  v1 = v0[4];
  v2 = v0[2];

  v3 = sub_1B3B64();
  (*(*(v3 - 8) + 16))(v2, v1, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_189A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a4;
  v6[3] = a5;
  v8 = sub_1B3B64();
  v6[4] = v8;
  v6[5] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[6] = v9;
  v10 = *v5;
  v11 = swift_task_alloc();
  v6[7] = v11;
  *v11 = v6;
  v11[1] = sub_189B34;

  return sub_18961C(v9, v10, a1);
}

uint64_t sub_189B34()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = *v0;

  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v1 + 64) = v4;
  *v4 = v3;
  v4[1] = sub_189CFC;
  v5 = *(v1 + 48);

  return v7(v5);
}

uint64_t sub_189CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v9 = sub_189EC0;
  }

  else
  {
    v8[10] = a3;
    v8[11] = a2;
    v8[12] = a1;
    v9 = sub_189E38;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_189E38()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  return v1(v2, v3, v4);
}

uint64_t sub_189EC0()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_189F40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = *(a1 + 16);
  sub_379D8(0, v1, 0);
  v3 = a1 + 56;
  result = sub_1B4F84();
  v5 = v23;
  v6 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v8 = result >> 6;
    v9 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(*(a1 + 48) + result);
    v11 = *(a1 + 36);
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      v21 = *(a1 + 36);
      v22 = result;
      sub_379D8((v12 > 1), v13 + 1, 1);
      v5 = v23;
      v11 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    *(&_swiftEmptyArrayStorage[4] + v13) = v10;
    v7 = 1 << *(a1 + 32);
    if (result >= v7)
    {
      goto LABEL_22;
    }

    v14 = *(v3 + 8 * v8);
    if ((v14 & v9) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (result & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          sub_42FF0(result, v11, 0);
          v5 = v23;
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      sub_42FF0(result, v11, 0);
      v5 = v23;
    }

LABEL_4:
    ++v6;
    result = v7;
    if (v6 == v5)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_18A15C(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = sub_E000C(*(*(a1 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18A23C(uint64_t result, char a2, uint64_t a3, int a4)
{
  v22 = a4;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = result + 32;
    if (a2)
    {
      v6 = 0x6F6F626F69647561;
    }

    else
    {
      v6 = 0x6B6F6F6265;
    }

    if (a2)
    {
      v7 = 0xE90000000000006BLL;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    while (1)
    {
      v8 = *(v5 + 112);
      v19 = *(v5 + 96);
      v20 = v8;
      v21 = *(v5 + 128);
      v9 = *(v5 + 16);
      v18[0] = *v5;
      v18[1] = v9;
      v10 = *(v5 + 48);
      v18[2] = *(v5 + 32);
      v18[3] = v10;
      v11 = *(v5 + 80);
      v18[4] = *(v5 + 64);
      v18[5] = v11;
      v12 = *&v18[0];
      v13 = BYTE8(v18[0]) ? 0x6F6F626F69647561 : 0x6B6F6F6265;
      v14 = BYTE8(v18[0]) ? 0xE90000000000006BLL : 0xE500000000000000;
      if (v13 == v6 && v14 == v7)
      {
        break;
      }

      v15 = sub_1B5604();
      sub_429F8(v18, v17);

      if (v15)
      {
        goto LABEL_20;
      }

LABEL_8:
      sub_111CE0(v17, v12);
LABEL_9:
      result = sub_5C740(v18);
      v5 += 136;
      if (!--v4)
      {
        return result;
      }
    }

    sub_429F8(v18, v17);

LABEL_20:
    if ((v22 & 1) != 0 || v20 != 2 && *(&v19 + 1) == a3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t sub_18A3F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 4072) = v4;
  *(v5 + 4064) = a4;
  *(v5 + 577) = a3;
  *(v5 + 4056) = a2;
  *(v5 + 4048) = a1;
  return _swift_task_switch(sub_18A420, 0, 0);
}

void sub_18A420()
{
  v38 = v0;
  v1 = *(v0 + 4056);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 200;
    v34 = _swiftEmptyArrayStorage;
    do
    {
      v5 = (v4 + 568 * v3);
      v6 = v3;
      while (1)
      {
        if (v6 >= v2)
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        memcpy((v0 + 16), v5 - 168, 0x231uLL);
        v3 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_42;
        }

        memcpy((v0 + 2288), v5, 0x179uLL);
        if (sub_42D84(v0 + 2288) == 1)
        {
          goto LABEL_44;
        }

        memcpy(__dst, (v0 + 2288), 0x179uLL);
        if (sub_DF2A8())
        {
          break;
        }

        ++v6;
        v5 += 568;
        if (v3 == v2)
        {
          goto LABEL_17;
        }
      }

      sub_4299C(v0 + 16, v0 + 584);
      v7 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_3749C(0, v34[2] + 1, 1);
        v7 = v37;
      }

      v10 = v7[2];
      v9 = v7[3];
      if (v10 >= v9 >> 1)
      {
        sub_3749C((v9 > 1), v10 + 1, 1);
        v7 = v37;
      }

      v7[2] = v10 + 1;
      v34 = v7;
      memcpy(&v7[71 * v10 + 4], (v0 + 16), 0x231uLL);
    }

    while (v3 != v2);
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
  }

LABEL_17:
  v11 = _swiftEmptySetSingleton;
  v37 = _swiftEmptySetSingleton;
  v12 = v34;
  v35 = v34[2];
  if (v35)
  {
    v13 = 0;
    while (v13 < v12[2])
    {
      memcpy((v0 + 1152), &v34[71 * v13 + 4], 0x231uLL);
      v14 = *(v0 + 1184);
      v15 = *(v0 + 1240);
      v16 = *(v0 + 1152);
      v17 = *(v0 + 1192);
      sub_4299C(v0 + 1152, v0 + 1720);
      sub_111CE0(__dst, v16);
      v18 = _swiftEmptyArrayStorage;
      if ((v17 & 1) == 0)
      {
        sub_2B0C(&qword_229238, &qword_1C09C0);
        v18 = swift_allocObject();
        *(v18 + 1) = xmmword_1BCA80;
        v18[4] = v14;
      }

      __dst[0] = v18;
      if (v15)
      {
        v19 = v15;
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
      }

      sub_5F33C(v19);
      v20 = *(__dst[0] + 16);
      if (v20)
      {
        v21 = 0;
        v22 = __dst[0] + 32;
        v23 = v37;
        v24 = (v37 + 7);
        do
        {
          while (1)
          {
            v25 = *(v22 + 8 * v21++);
            v26 = sub_1B57E4();
            v27 = -1 << *(v23 + 32);
            v28 = v26 & ~v27;
            if ((*(v24 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
            {
              break;
            }

LABEL_34:
            v30 = swift_isUniquelyReferenced_nonNull_native();
            __dst[0] = v23;
            sub_115EFC(v25, v28, v30);
            v23 = __dst[0];
            if (v21 == v20)
            {
              goto LABEL_19;
            }

            v24 = __dst[0] + 56;
          }

          v29 = ~v27;
          while (*(v23[6] + 8 * v28) != v25)
          {
            v28 = (v28 + 1) & v29;
            if (((*(v24 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
            {
              goto LABEL_34;
            }
          }
        }

        while (v21 != v20);
LABEL_19:
        v37 = v23;

        v12 = v34;
      }

      else
      {
      }

      ++v13;
      sub_2601C(v0 + 1152);
      if (v13 == v35)
      {
        v11 = v37;
        goto LABEL_38;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {
LABEL_38:

    *(v0 + 4080) = v11;
    v31 = swift_task_alloc();
    *(v0 + 4088) = v31;
    *v31 = v0;
    v31[1] = sub_18A81C;
    v32 = *(v0 + 4056);
    v33 = *(v0 + 4048);

    sub_18B0EC(v33, v32);
  }
}

uint64_t sub_18A81C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 4096) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_18A96C, 0, 0);
  }
}

uint64_t sub_18A96C()
{
  v1 = v0[512];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_3503C(*(v1 + 16), 0);
    v4 = sub_43128();

    sub_417B8(v7);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[513] = v3;
  v5 = swift_task_alloc();
  v0[514] = v5;
  *v5 = v0;
  v5[1] = sub_18AA98;

  return sub_18C0F4(v3);
}

uint64_t sub_18AA98(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 4120) = a1;
  *(v3 + 4128) = v1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_18AC1C, 0, 0);
  }
}

uint64_t sub_18AC1C()
{
  v70 = v0;
  v1 = *(v0 + 4048);
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    __dst[0] = _swiftEmptyArrayStorage;
    sub_3741C(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = (v1 + 32);
    v5 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = *v4;
      v4 += 17;
      v6 = v7;
      __dst[0] = v3;
      v8 = *(v3 + 3);
      if (v5 >= v8 >> 1)
      {
        sub_3741C((v8 > 1), v5 + 1, 1);
        v3 = __dst[0];
      }

      *(v3 + 2) = v5 + 1;
      *&v3[8 * v5++ + 32] = v6;
      --v2;
    }

    while (v2);
    v1 = *(v0 + 4048);
  }

  v9 = *(v0 + 4128);
  v10 = *(v0 + 4096);
  v11 = *(v0 + 4056);
  v12 = sub_40854(v3);

  v13 = sub_192D68(v10, v12, v11);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  KeyPath = swift_getKeyPath();
  __dst[0] = v1;

  sub_191A64(__dst, KeyPath);

  if (v9)
  {
  }

  else
  {
    v67 = v13;
    v68 = v15;
    v22 = *(v0 + 4096);

    v23 = __dst[0];
    __dst[0] = _swiftEmptySetSingleton;

    v24 = sub_18E3FC(_swiftEmptyArrayStorage, v23, v22, __dst);

    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = 0;
      v27 = (v0 + 3776);
      v28 = -v25;
      v29 = v24 + 32;
      do
      {
        v30 = *(v24 + 16);
        v31 = v30 >= v26;
        v32 = v30 - v26;
        if (!v31)
        {
          v32 = 0;
        }

        v33 = v29 + 136 * v26++;
        while (1)
        {
          if (!v32)
          {
            __break(1u);
            return result;
          }

          v34 = *(v33 + 16);
          v35 = *(v33 + 32);
          v36 = *(v33 + 64);
          *(v0 + 3824) = *(v33 + 48);
          *(v0 + 3840) = v36;
          v37 = *(v33 + 80);
          v38 = *(v33 + 96);
          v39 = *(v33 + 112);
          *(v0 + 3904) = *(v33 + 128);
          *(v0 + 3872) = v38;
          *(v0 + 3888) = v39;
          *(v0 + 3856) = v37;
          v40 = *v33;
          *(v0 + 3792) = v34;
          *(v0 + 3808) = v35;
          *v27 = v40;
          if (*(v0 + 3832) > 0.0)
          {
            break;
          }

          --v32;
          ++v26;
          v33 += 136;
          if (v28 + v26 == 1)
          {
            goto LABEL_25;
          }
        }

        sub_429F8(v0 + 3776, v0 + 3912);
        result = swift_isUniquelyReferenced_nonNull_native();
        v65 = v29;
        if ((result & 1) == 0)
        {
          result = sub_37574(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v42 = _swiftEmptyArrayStorage[2];
        v41 = _swiftEmptyArrayStorage[3];
        if (v42 >= v41 >> 1)
        {
          result = sub_37574((v41 > 1), v42 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v42 + 1;
        v43 = &_swiftEmptyArrayStorage[17 * v42];
        *(v43 + 2) = *v27;
        v44 = *(v0 + 3792);
        v45 = *(v0 + 3808);
        v46 = *(v0 + 3840);
        *(v43 + 5) = *(v0 + 3824);
        *(v43 + 6) = v46;
        *(v43 + 3) = v44;
        *(v43 + 4) = v45;
        v47 = *(v0 + 3856);
        v48 = *(v0 + 3872);
        v49 = *(v0 + 3888);
        *(v43 + 160) = *(v0 + 3904);
        *(v43 + 8) = v48;
        *(v43 + 9) = v49;
        *(v43 + 7) = v47;
        v29 = v65;
      }

      while (v28 + v26);
    }

LABEL_25:
    v50 = *(v0 + 4120);
    v51 = *(v0 + 4096);
    v52 = *(v0 + 4080);
    v53 = v19;
    v54 = v17;
    v55 = *(v0 + 4072);
    v56 = *(v0 + 4064);
    v66 = *(v0 + 577);

    memcpy((v0 + 3040), (v55 + 168), 0x16BuLL);
    v57 = (v55 + 168);
    v58 = v54;
    v59 = v53;
    memcpy(__dst, v57, 0x16BuLL);
    sub_71E28(v0 + 3040, v0 + 3408);
    v60 = sub_18C474(v50, v51, __dst, v56, _swiftEmptyArrayStorage);

    memcpy((v0 + 2672), __dst, 0x16BuLL);
    sub_71DC0(v0 + 2672);
    v61 = sub_18CBA8(v67, v68, v58, v53, v60);

    v62 = sub_18D064(v52, v51, v61);

    if (v66)
    {

      v59 = _swiftEmptySetSingleton;
    }

    v63 = sub_18D3B4(v59, v62);

    v64 = *(v0 + 8);

    return v64(v63);
  }
}

uint64_t sub_18B0EC(uint64_t a1, uint64_t a2)
{
  v3[168] = v2;
  v3[167] = a2;
  v3[166] = a1;
  return _swift_task_switch(sub_18B114, 0, 0);
}

unint64_t sub_18B114()
{
  v1 = *(v0 + 1336);
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    v33 = _swiftEmptyArrayStorage;
LABEL_52:
    *(v0 + 1352) = _swiftEmptyDictionarySingleton;
    v54 = *(v0 + 1328);
    v55 = *(v54 + 16);
    if (v55)
    {
      sub_3741C(0, v55, 0);
      v56 = (v54 + 32);
      v57 = _swiftEmptyArrayStorage[2];
      do
      {
        v59 = *v56;
        v56 += 17;
        v58 = v59;
        v60 = _swiftEmptyArrayStorage[3];
        if (v57 >= v60 >> 1)
        {
          sub_3741C((v60 > 1), v57 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v57 + 1;
        _swiftEmptyArrayStorage[v57++ + 4] = v58;
        --v55;
      }

      while (v55);
    }

    *(v0 + 1360) = _swiftEmptyArrayStorage;
    v61 = *(v0 + 1344);
    v62 = v61[3];
    v63 = v61[4];
    sub_2698(v61, v62);

    sub_5F33C(v64);
    *(v0 + 1368) = v33;
    v69 = (*(v63 + 16) + **(v63 + 16));
    v65 = swift_task_alloc();
    *(v0 + 1376) = v65;
    *v65 = v0;
    v65[1] = sub_18B728;

    return v69(v33, v62, v63);
  }

  v4 = (v1 + 32);
  v67 = *(v1 + 16);
  while (1)
  {
    memcpy((v0 + 16), v4, 0x231uLL);
    v15 = *(v0 + 16);
    sub_4299C(v0 + 16, v0 + 584);
    sub_5EDD8(v0 + 24, v0 + 1152);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_43124(v15);
    v18 = _swiftEmptyDictionarySingleton[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (_swiftEmptyDictionarySingleton[3] < v21)
    {
      sub_17FD40(v21, isUniquelyReferenced_nonNull_native);
      result = sub_43124(v15);
      if ((v22 & 1) != (v23 & 1))
      {

        return sub_1B5784();
      }

LABEL_10:
      if ((v22 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_3;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v31 = result;
    sub_1864C4();
    result = v31;
    if ((v22 & 1) == 0)
    {
LABEL_11:
      _swiftEmptyDictionarySingleton[(result >> 6) + 8] |= 1 << result;
      *(_swiftEmptyDictionarySingleton[6] + 8 * result) = v15;
      v24 = _swiftEmptyDictionarySingleton[7] + 88 * result;
      v25 = *(v0 + 40);
      *v24 = *(v0 + 24);
      *(v24 + 16) = v25;
      v26 = *(v0 + 56);
      v27 = *(v0 + 72);
      v28 = *(v0 + 88);
      *(v24 + 80) = *(v0 + 104);
      *(v24 + 48) = v27;
      *(v24 + 64) = v28;
      *(v24 + 32) = v26;
      result = sub_2601C(v0 + 16);
      v29 = _swiftEmptyDictionarySingleton[2];
      v20 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v20)
      {
        goto LABEL_70;
      }

      _swiftEmptyDictionarySingleton[2] = v30;
      goto LABEL_4;
    }

LABEL_3:
    v5 = _swiftEmptyDictionarySingleton[7] + 88 * result;
    v6 = *(v5 + 16);
    *(v0 + 1240) = *v5;
    *(v0 + 1256) = v6;
    v7 = *(v5 + 32);
    v8 = *(v5 + 48);
    v9 = *(v5 + 64);
    *(v0 + 1320) = *(v5 + 80);
    *(v0 + 1288) = v8;
    *(v0 + 1304) = v9;
    *(v0 + 1272) = v7;
    v10 = *(v0 + 72);
    v11 = *(v0 + 88);
    v12 = *(v0 + 56);
    *(v5 + 80) = *(v0 + 104);
    *(v5 + 48) = v10;
    *(v5 + 64) = v11;
    *(v5 + 32) = v12;
    v13 = *(v0 + 40);
    *v5 = *(v0 + 24);
    *(v5 + 16) = v13;
    sub_85554(v0 + 1240);
    result = sub_2601C(v0 + 16);
LABEL_4:
    v4 += 568;
    if (!--v2)
    {
      v32 = *(v0 + 1336) + 64;
      v33 = _swiftEmptyArrayStorage;
      v34 = v67;
      while (1)
      {
        v36 = *(v32 + 56);
        v66 = v33;
        v68 = v34;
        if (*(v32 + 8) == 1)
        {
          v37 = v3[2];
          v38 = v3;
        }

        else
        {
          v39 = *v32;
          sub_2B0C(&qword_229238, &qword_1C09C0);
          result = swift_allocObject();
          v38 = result;
          *(result + 16) = xmmword_1BCA80;
          *(result + 32) = v39;
          v37 = 1;
        }

        v40 = v3;
        if (v36)
        {
          v41 = v36;
        }

        else
        {
          v41 = v3;
        }

        v42 = v41[2];
        v43 = v37 + v42;
        if (__OFADD__(v37, v42))
        {
          goto LABEL_64;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v43 > *(v38 + 24) >> 1)
        {
          if (v37 <= v43)
          {
            v44 = v37 + v42;
          }

          else
          {
            v44 = v37;
          }

          result = sub_33008(result, v44, 1, v38);
          v38 = result;
        }

        v3 = v40;
        if (!v41[2])
        {
          break;
        }

        v45 = *(v38 + 16);
        if ((*(v38 + 24) >> 1) - v45 < v42)
        {
          goto LABEL_68;
        }

        memcpy((v38 + 8 * v45 + 32), v41 + 4, 8 * v42);

        if (!v42)
        {
          goto LABEL_37;
        }

        v46 = *(v38 + 16);
        v47 = v46 + v42;
        if (__OFADD__(v46, v42))
        {
          goto LABEL_71;
        }

        *(v38 + 16) = v47;
LABEL_38:
        v33 = v66;
        v48 = v66[2];
        v49 = v48 + v47;
        if (__OFADD__(v48, v47))
        {
          goto LABEL_66;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v49 <= v66[3] >> 1)
        {
          if (!*(v38 + 16))
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (v48 <= v49)
          {
            v50 = v48 + v47;
          }

          else
          {
            v50 = v48;
          }

          result = sub_33008(result, v50, 1, v66);
          v33 = result;
          if (!*(v38 + 16))
          {
LABEL_16:

            v35 = v68;
            if (v47)
            {
              goto LABEL_67;
            }

            goto LABEL_17;
          }
        }

        v51 = v33[2];
        if ((v33[3] >> 1) - v51 < v47)
        {
          goto LABEL_69;
        }

        memcpy(&v33[v51 + 4], (v38 + 32), 8 * v47);

        v35 = v68;
        if (v47)
        {
          v52 = v33[2];
          v20 = __OFADD__(v52, v47);
          v53 = v52 + v47;
          if (v20)
          {
            goto LABEL_72;
          }

          v33[2] = v53;
        }

LABEL_17:
        v32 += 568;
        v34 = v35 - 1;
        if (!v34)
        {
          goto LABEL_52;
        }
      }

      if (v42)
      {
        goto LABEL_65;
      }

LABEL_37:
      v47 = *(v38 + 16);
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_18B728(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1384) = v1;

  if (v1)
  {
    v5 = sub_18C008;
  }

  else
  {

    *(v4 + 1392) = a1;
    v5 = sub_18B858;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_18B858()
{
  v58 = v0;
  v1 = v0[174];
  v2 = v0[173];
  v3 = v0[169];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v1;
  sub_191B08(v3, sub_18E388, 0, isUniquelyReferenced_nonNull_native, &v57);
  if (v2)
  {
  }

  v6 = v0[170];

  v7 = v0;
  v8 = v57;
  v7[175] = v57;
  v9 = *(v6 + 16);
  v54 = v7;
  if (v9)
  {
    v10 = (v7[170] + 32);
    v11 = _swiftEmptyArrayStorage;
    v12 = _swiftEmptyArrayStorage;
    v55 = v8;
    while (1)
    {
      if (*(v8 + 16))
      {
        result = sub_43124(*v10);
        if (v13)
        {
          break;
        }
      }

LABEL_8:
      ++v10;
      if (!--v9)
      {

        v30 = v12[2];
        if (v30)
        {
          goto LABEL_35;
        }

LABEL_53:
        v32 = _swiftEmptyArrayStorage;
LABEL_54:

        v41 = v32[2];
        if (v41)
        {
          v42 = v32 + 4;
          v43 = _swiftEmptyArrayStorage;
          do
          {
            v47 = *v42++;
            v46 = v47;
            if (!*(v8 + 16) || (sub_43124(v46), (v48 & 1) == 0))
            {
              v49 = swift_isUniquelyReferenced_nonNull_native();
              v57 = v43;
              if ((v49 & 1) == 0)
              {
                sub_3741C(0, v43[2] + 1, 1);
                v43 = v57;
              }

              v45 = v43[2];
              v44 = v43[3];
              if (v45 >= v44 >> 1)
              {
                sub_3741C((v44 > 1), v45 + 1, 1);
                v43 = v57;
              }

              v43[2] = v45 + 1;
              v43[v45 + 4] = v46;
            }

            --v41;
          }

          while (v41);
        }

        else
        {
          v43 = _swiftEmptyArrayStorage;
        }

        v54[176] = v43;
        v50 = v54[168];

        v51 = v50[3];
        v52 = v50[4];
        sub_2698(v50, v51);
        v56 = (*(v52 + 16) + **(v52 + 16));
        v53 = swift_task_alloc();
        v54[177] = v53;
        *v53 = v54;
        v53[1] = sub_18BE10;

        return v56(v43, v51, v52);
      }
    }

    v14 = *(v8 + 56) + 88 * result;
    v15 = *(v14 + 80);
    if (*(v14 + 32) == 1)
    {
      v16 = v11[2];
      v17 = v11;
    }

    else
    {
      v18 = *(v14 + 24);
      sub_2B0C(&qword_229238, &qword_1C09C0);
      result = swift_allocObject();
      v17 = result;
      *(result + 16) = xmmword_1BCA80;
      *(result + 32) = v18;
      v16 = 1;
    }

    v19 = v11;
    if (v15)
    {
      v20 = v15;
    }

    else
    {
      v20 = v11;
    }

    v21 = v20[2];
    v22 = v16 + v21;
    if (__OFADD__(v16, v21))
    {
      goto LABEL_73;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v22 <= *(v17 + 24) >> 1)
    {
      if (v20[2])
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v16 <= v22)
      {
        v27 = v16 + v21;
      }

      else
      {
        v27 = v16;
      }

      result = sub_33008(result, v27, 1, v17);
      v17 = result;
      if (v20[2])
      {
LABEL_21:
        v23 = *(v17 + 16);
        if ((*(v17 + 24) >> 1) - v23 < v21)
        {
          goto LABEL_75;
        }

        memcpy((v17 + 8 * v23 + 32), v20 + 4, 8 * v21);

        if (v21)
        {
          v24 = *(v17 + 16);
          v25 = __OFADD__(v24, v21);
          v26 = v24 + v21;
          if (v25)
          {
            goto LABEL_76;
          }

          *(v17 + 16) = v26;
        }

        goto LABEL_30;
      }
    }

    if (v21)
    {
      goto LABEL_74;
    }

LABEL_30:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_34910(0, v12[2] + 1, 1, v12);
    }

    v11 = v19;
    v29 = v12[2];
    v28 = v12[3];
    v8 = v55;
    if (v29 >= v28 >> 1)
    {
      v12 = sub_34910((v28 > 1), v29 + 1, 1, v12);
    }

    v12[2] = v29 + 1;
    v12[v29 + 4] = v17;
    goto LABEL_8;
  }

  v12 = _swiftEmptyArrayStorage;
  v30 = _swiftEmptyArrayStorage[2];
  if (!v30)
  {
    goto LABEL_53;
  }

LABEL_35:
  v31 = 0;
  v32 = _swiftEmptyArrayStorage;
  while (v31 < v12[2])
  {
    v33 = v12[v31 + 4];
    v34 = *(v33 + 16);
    v35 = v32[2];
    v36 = v35 + v34;
    if (__OFADD__(v35, v34))
    {
      goto LABEL_69;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v36 <= v32[3] >> 1)
    {
      if (*(v33 + 16))
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v35 <= v36)
      {
        v37 = v35 + v34;
      }

      else
      {
        v37 = v35;
      }

      result = sub_33008(result, v37, 1, v32);
      v32 = result;
      if (*(v33 + 16))
      {
LABEL_48:
        v38 = v32[2];
        if ((v32[3] >> 1) - v38 < v34)
        {
          goto LABEL_71;
        }

        memcpy(&v32[v38 + 4], (v33 + 32), 8 * v34);

        if (v34)
        {
          v39 = v32[2];
          v25 = __OFADD__(v39, v34);
          v40 = v39 + v34;
          if (v25)
          {
            goto LABEL_72;
          }

          v32[2] = v40;
        }

        goto LABEL_37;
      }
    }

    if (v34)
    {
      goto LABEL_70;
    }

LABEL_37:
    if (v30 == ++v31)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_18BE10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1424) = a1;
  *(v3 + 1432) = v1;

  if (v1)
  {
    v4 = sub_18C084;
  }

  else
  {

    v4 = sub_18BF30;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_18BF30()
{
  v9 = v0;
  v1 = v0[179];
  v2 = v0[178];
  v3 = v0[175];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v3;
  sub_191B08(v2, sub_18E388, 0, isUniquelyReferenced_nonNull_native, &v8);

  v5 = v8;
  if (v1)
  {
  }

  else
  {
    v7 = v0[1];

    return v7(v5);
  }
}

uint64_t sub_18C008()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18C084()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18C0F4(uint64_t a1)
{
  *(v2 + 5632) = v1;
  *(v2 + 5624) = a1;
  return _swift_task_switch(sub_18C118, 0, 0);
}

uint64_t sub_18C118()
{
  v1 = v0[704];
  v2 = v0[703];
  v3 = v1[8];
  v4 = v1[9];
  sub_2698(v1 + 5, v3);
  v0[702] = v2;

  v5 = sub_40228(&off_20E7A8);
  v0[705] = v5;
  memcpy(v0 + 2, v1 + 10, 0x460uLL);
  memcpy(v0 + 142, v1 + 10, 0x460uLL);
  v6 = *(v4 + 8);
  sub_84BC0((v0 + 2), (v0 + 282));
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[706] = v7;
  *v7 = v0;
  v7[1] = sub_18C2BC;

  return (v9)(v0 + 702, v5, 0x7FFFFFFFFFFFFFFFLL, v0 + 142, v3, v4);
}

uint64_t sub_18C2BC(uint64_t a1)
{
  v4 = *v2;
  v4[707] = v1;

  if (v1)
  {

    memcpy(v4 + 422, v4 + 142, 0x460uLL);
    sub_2B54((v4 + 422));

    return _swift_task_switch(sub_18C45C, 0, 0);
  }

  else
  {

    memcpy(v4 + 562, v4 + 142, 0x460uLL);
    sub_2B54((v4 + 562));

    v5 = v4[1];

    return v5(a1);
  }
}

void *sub_18C474(uint64_t a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (a4)
  {
    v86 = sub_189F40(a4);
  }

  else
  {
    v86 = _swiftEmptyArrayStorage;
  }

  v9 = *(a5 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = a5 + 32;
    v78 = _swiftEmptyArrayStorage;
    v79 = v11;
    v80 = v9;
    v81 = a2;
    v83 = a1;
    while (1)
    {
      while (1)
      {
        if (v10 >= v9)
        {
          goto LABEL_73;
        }

        v12 = (v11 + 136 * v10);
        v13 = v12[7];
        v145 = v12[6];
        v146 = v13;
        v147 = *(v12 + 128);
        v14 = v12[3];
        v141 = v12[2];
        v142 = v14;
        v15 = v12[5];
        v143 = v12[4];
        v144 = v15;
        v16 = v12[1];
        v139 = *v12;
        v140 = v16;
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_74;
        }

        if (*(a2 + 16))
        {
          v18 = v139;
          v19 = sub_43124(v139);
          if (v20)
          {
            break;
          }
        }

LABEL_7:
        if (v10 == v9)
        {
          goto LABEL_71;
        }
      }

      v82 = v10;
      v21 = *(a2 + 56) + 88 * v19;
      v22 = *(v21 + 24);
      v23 = *(v21 + 32);
      v24 = *(v21 + 80);
      sub_2B0C(&qword_229238, &qword_1C09C0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1BCA80;
      *(v25 + 32) = v18;
      v138 = v25;
      v26 = _swiftEmptyArrayStorage;
      if ((v23 & 1) == 0)
      {
        v26 = swift_allocObject();
        *(v26 + 1) = xmmword_1BCA80;
        v26[4] = v22;
      }

      __srca[0] = v26;
      if (v24)
      {
        v27 = v24;
      }

      else
      {
        v27 = _swiftEmptyArrayStorage;
      }

      sub_429F8(&v139, &v94);

      swift_bridgeObjectRetain_n();
      sub_5F33C(v27);
      sub_5F33C(__srca[0]);

      v28 = v138;
      v29 = *(v138 + 16);
      if (v29)
      {
        v30 = 0;
        v31 = v138 + 32;
        v87 = v138;
        v84 = v138 + 32;
        v85 = *(v138 + 16);
        while (v30 < *(v28 + 16))
        {
          if (*(a1 + 16))
          {
            v32 = sub_43124(*(v31 + 8 * v30));
            if (v33)
            {
              v34 = *(a1 + 56) + 384 * v32;
              v94 = *v34;
              v137 = *(v34 + 16);
              *v96 = *(v34 + 17);
              *&v96[7] = *(v34 + 24);
              v136 = *(v34 + 32);
              v98 = *(v34 + 33);
              *v99 = *(v34 + 49);
              *&v99[15] = *(v34 + 64);
              v35 = *(v34 + 80);
              v36 = *(v34 + 81);
              *&v101[15] = *(v34 + 96);
              *v101 = v36;
              v135 = *(v34 + 104);
              *v103 = *(v34 + 105);
              *&v103[7] = *(v34 + 112);
              v134 = *(v34 + 120);
              *v105 = *(v34 + 121);
              *&v105[7] = *(v34 + 128);
              v133 = *(v34 + 136);
              v37 = *(v34 + 137);
              *&v107[7] = *(v34 + 144);
              *v107 = v37;
              v38 = *(v34 + 152);
              *&v109[7] = *(v34 + 160);
              *v109 = *(v34 + 153);
              v39 = *(v34 + 168);
              *&v111[7] = *(v34 + 176);
              *v111 = *(v34 + 169);
              v40 = *(v34 + 184);
              *v113 = *(v34 + 185);
              *&v113[7] = *(v34 + 192);
              v41 = *(v34 + 200);
              v42 = *(v34 + 201);
              v43 = *(v34 + 217);
              *&v116[15] = *(v34 + 232);
              *v116 = v43;
              v115 = v42;
              v44 = *(v34 + 240);
              v45 = *(v34 + 241);
              *&v118[7] = *(v34 + 248);
              *v118 = v45;
              v46 = *(v34 + 256);
              v47 = *(v34 + 257);
              v48 = *(v34 + 273);
              *&v121[15] = *(v34 + 288);
              v120 = v47;
              *v121 = v48;
              v49 = *(v34 + 296);
              v50 = *(v34 + 297);
              *&v123[7] = *(v34 + 304);
              *v123 = v50;
              v51 = *(v34 + 312);
              v52 = *(v34 + 313);
              *&v125[7] = *(v34 + 320);
              *v125 = v52;
              v53 = *(v34 + 328);
              v54 = *(v34 + 329);
              *&v127[7] = *(v34 + 336);
              *v127 = v54;
              v55 = *(v34 + 344);
              v56 = *(v34 + 345);
              *&v129[7] = *(v34 + 352);
              *v129 = v56;
              v57 = *(v34 + 360);
              v58 = *(v34 + 361);
              *&v131[7] = *(v34 + 368);
              *v131 = v58;
              v59 = *(v34 + 376);
              v95 = v137;
              v97 = v136;
              v91 = v38;
              v92 = v35;
              v100 = v35;
              v102 = v135;
              v104 = v134;
              v106 = v133;
              v108 = v38;
              v89 = v40;
              v90 = v39;
              v110 = v39;
              v112 = v40;
              v88 = v41;
              v114 = v41;
              v60 = v44;
              v117 = v44;
              v61 = v46;
              v119 = v46;
              v62 = v49;
              v122 = v49;
              v124 = v51;
              v126 = v53;
              v128 = v55;
              v130 = v57;
              v132 = v59;
              memcpy(__srca, __dst, 0x16BuLL);
              if (!BookHistory.isEligibleForRecommendation(with:)(__srca))
              {
LABEL_6:
                sub_5C740(&v139);

                v9 = v80;
                a2 = v81;
                a1 = v83;
                v10 = v82;
                v11 = v79;
                goto LABEL_7;
              }

              v63 = v86[2];
              if (v63)
              {
                v64 = (v86 + 4);
                while (2)
                {
                  v65 = *v64++;
                  switch(v65)
                  {
                    case 1:
                      if (v92 != 255)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 2:
                      if ((v136 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 3:
                      if ((v135 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 4:
                      if ((v134 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 5:
                      if ((v133 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 6:
                      if ((v91 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 7:
                      if ((v90 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 8:
                      if ((v89 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 9:
                      if ((v88 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 10:
                      if (v60 != 255)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 11:
                      if ((v61 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 12:
                      if (v62 != 255)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 13:
                      if ((v51 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 14:
                      if ((v53 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 15:
                      if ((v55 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    case 16:
                      if (v57)
                      {
                        goto LABEL_28;
                      }

                      goto LABEL_6;
                    case 17:
                      if ((v59 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

                      goto LABEL_28;
                    default:
                      if ((v137 & 1) == 0)
                      {
                        goto LABEL_6;
                      }

LABEL_28:
                      if (--v63)
                      {
                        continue;
                      }

                      goto LABEL_19;
                  }
                }
              }

LABEL_19:
              a1 = v83;
              v31 = v84;
              v28 = v87;
              v29 = v85;
            }
          }

          if (++v30 == v29)
          {
            goto LABEL_64;
          }
        }

        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        JUMPOUT(0x18CB60);
      }

LABEL_64:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v78;
      v148 = v78;
      v9 = v80;
      v10 = v82;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_37574(0, v78[2] + 1, 1);
        v67 = v148;
      }

      v69 = v67[2];
      v68 = v67[3];
      if (v69 >= v68 >> 1)
      {
        sub_37574((v68 > 1), v69 + 1, 1);
        v67 = v148;
      }

      v67[2] = v69 + 1;
      v78 = v67;
      v70 = &v67[17 * v69];
      *(v70 + 2) = v139;
      v71 = v140;
      v72 = v141;
      v73 = v143;
      *(v70 + 5) = v142;
      *(v70 + 6) = v73;
      *(v70 + 3) = v71;
      *(v70 + 4) = v72;
      v74 = v144;
      v75 = v145;
      v76 = v146;
      *(v70 + 160) = v147;
      *(v70 + 8) = v75;
      *(v70 + 9) = v76;
      *(v70 + 7) = v74;
      a2 = v81;
      v11 = v79;
      if (v82 == v80)
      {
        goto LABEL_71;
      }
    }
  }

  v78 = _swiftEmptyArrayStorage;
LABEL_71:

  return v78;
}

void *sub_18CBA8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 16);
  v87 = _swiftEmptySetSingleton;
  if (v7)
  {
    v8 = (a5 + 32);
    v9 = v7;
    while (1)
    {
      v23 = v8[7];
      v84 = v8[6];
      v85 = v23;
      v86 = *(v8 + 128);
      v24 = v8[1];
      v78 = *v8;
      v79 = v24;
      v25 = v8[3];
      v80 = v8[2];
      v81 = v25;
      v26 = v8[5];
      v82 = v8[4];
      v83 = v26;
      v27 = v78;
      sub_429F8(&v78, v76);
      sub_429F8(&v78, v76);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = sub_43124(v27);
      v31 = _swiftEmptyDictionarySingleton[2];
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        result = sub_1B5784();
        __break(1u);
        return result;
      }

      v35 = v30;
      if (_swiftEmptyDictionarySingleton[3] < v34)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v46 = v29;
      sub_1856D0();
      v29 = v46;
      if (v35)
      {
LABEL_3:
        v10 = _swiftEmptyDictionarySingleton[7] + 136 * v29;
        v76[0] = *v10;
        v11 = *(v10 + 64);
        v13 = *(v10 + 16);
        v12 = *(v10 + 32);
        v76[3] = *(v10 + 48);
        v76[4] = v11;
        v76[1] = v13;
        v76[2] = v12;
        v15 = *(v10 + 96);
        v14 = *(v10 + 112);
        v16 = *(v10 + 80);
        v77 = *(v10 + 128);
        v76[6] = v15;
        v76[7] = v14;
        v76[5] = v16;
        *v10 = v78;
        v17 = v79;
        v18 = v80;
        v19 = v82;
        *(v10 + 48) = v81;
        *(v10 + 64) = v19;
        *(v10 + 16) = v17;
        *(v10 + 32) = v18;
        v20 = v83;
        v21 = v84;
        v22 = v85;
        *(v10 + 128) = v86;
        *(v10 + 96) = v21;
        *(v10 + 112) = v22;
        *(v10 + 80) = v20;
        sub_5C740(v76);
        sub_5C740(&v78);
        goto LABEL_4;
      }

LABEL_11:
      _swiftEmptyDictionarySingleton[(v29 >> 6) + 8] |= 1 << v29;
      *(_swiftEmptyDictionarySingleton[6] + 8 * v29) = v27;
      v37 = _swiftEmptyDictionarySingleton[7] + 136 * v29;
      *v37 = v78;
      v38 = v82;
      v40 = v79;
      v39 = v80;
      *(v37 + 48) = v81;
      *(v37 + 64) = v38;
      *(v37 + 16) = v40;
      *(v37 + 32) = v39;
      v41 = v83;
      v42 = v84;
      v43 = v85;
      *(v37 + 128) = v86;
      *(v37 + 96) = v42;
      *(v37 + 112) = v43;
      *(v37 + 80) = v41;
      sub_5C740(&v78);
      v44 = _swiftEmptyDictionarySingleton[2];
      v33 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v33)
      {
        goto LABEL_37;
      }

      _swiftEmptyDictionarySingleton[2] = v45;
LABEL_4:
      v8 = (v8 + 136);
      if (!--v9)
      {
        goto LABEL_15;
      }
    }

    sub_17DB74(v34, isUniquelyReferenced_nonNull_native);
    v29 = sub_43124(v27);
    if ((v35 & 1) != (v36 & 1))
    {
      goto LABEL_38;
    }

LABEL_10:
    if (v35)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

LABEL_15:
  v47 = *(a1 + 16);

  if (v47)
  {
    v48 = (a1 + 32);
    do
    {
      v49 = *v48++;
      *&v78 = v49;

      sub_19014C(&v78, _swiftEmptyDictionarySingleton, a2, a3);

      --v47;
    }

    while (v47);
  }

  swift_bridgeObjectRelease_n();

  if (v7)
  {
    v51 = 0;
    v52 = v50 + 32;
    v53 = v87;
    v54 = v87 + 7;
    while (v51 < v7)
    {
      v64 = v52 + 136 * v51;
      v65 = *(v64 + 112);
      v84 = *(v64 + 96);
      v85 = v65;
      v86 = *(v64 + 128);
      v66 = *(v64 + 48);
      v80 = *(v64 + 32);
      v81 = v66;
      v67 = *(v64 + 80);
      v82 = *(v64 + 64);
      v83 = v67;
      v68 = *(v64 + 16);
      v78 = *v64;
      v79 = v68;
      v33 = __OFADD__(v51++, 1);
      if (v33)
      {
        goto LABEL_36;
      }

      if (v53[2] && (v69 = v78, v70 = sub_1B57E4(), v71 = -1 << *(v53 + 32), v72 = v70 & ~v71, ((*(v54 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) != 0))
      {
        v73 = ~v71;
        while (*(v53[6] + 8 * v72) != v69)
        {
          v72 = (v72 + 1) & v73;
          if (((*(v54 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
LABEL_31:
        sub_429F8(&v78, v76);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_37574(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v56 = _swiftEmptyArrayStorage[2];
        v55 = _swiftEmptyArrayStorage[3];
        if (v56 >= v55 >> 1)
        {
          sub_37574((v55 > 1), v56 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v56 + 1;
        v57 = &_swiftEmptyArrayStorage[17 * v56];
        *(v57 + 2) = v78;
        v58 = v79;
        v59 = v80;
        v60 = v82;
        *(v57 + 5) = v81;
        *(v57 + 6) = v60;
        *(v57 + 3) = v58;
        *(v57 + 4) = v59;
        v61 = v83;
        v62 = v84;
        v63 = v85;
        *(v57 + 160) = v86;
        *(v57 + 8) = v62;
        *(v57 + 9) = v63;
        *(v57 + 7) = v61;
      }

      if (v51 == v7)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_35;
  }

LABEL_33:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_18D064(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = a2;
  v5 = result;
  v6 = 0;
  v7 = a3 + 32;
  v8 = result + 56;
  v43 = _swiftEmptyArrayStorage;
  v44 = a3 + 32;
  v45 = *(a3 + 16);
  while (v6 < v3)
  {
    v9 = (v7 + 136 * v6);
    v10 = v9[7];
    v56 = v9[6];
    v57 = v10;
    v58 = *(v9 + 128);
    v11 = v9[3];
    v52 = v9[2];
    v53 = v11;
    v12 = v9[5];
    v54 = v9[4];
    v55 = v12;
    v13 = v9[1];
    v50 = *v9;
    v51 = v13;
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_34;
    }

    if (*(v4 + 16) && (v15 = v50, result = sub_43124(v50), (v16 & 1) != 0))
    {
      v17 = *(v4 + 56) + 88 * result;
      v18 = *(v17 + 24);
      v19 = *(v17 + 32);
      v20 = *(v17 + 80);
      sub_2B0C(&qword_229238, &qword_1C09C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BCA80;
      *(inited + 32) = v15;
      v49 = inited;
      v22 = _swiftEmptyArrayStorage;
      if ((v19 & 1) == 0)
      {
        v22 = swift_allocObject();
        *(v22 + 1) = xmmword_1BCA80;
        v22[4] = v18;
      }

      v48 = v22;
      if (v20)
      {
        v23 = v20;
      }

      else
      {
        v23 = _swiftEmptyArrayStorage;
      }

      sub_429F8(&v50, v47);

      swift_bridgeObjectRetain_n();
      sub_5F33C(v23);
      sub_5F33C(v48);

      v24 = *(v49 + 16);
      if (v24)
      {
        v25 = 0;
        v26 = v49 + 32;
        v27 = *(v5 + 16);
        v4 = a2;
        while (1)
        {
          if (v27)
          {
            v28 = *(v26 + 8 * v25);
            v29 = sub_1B57E4();
            v30 = -1 << *(v5 + 32);
            v31 = v29 & ~v30;
            if ((*(v8 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
            {
              break;
            }
          }

LABEL_16:
          if (++v25 == v24)
          {

            goto LABEL_25;
          }
        }

        v32 = ~v30;
        while (*(*(v5 + 48) + 8 * v31) != v28)
        {
          v31 = (v31 + 1) & v32;
          if (((*(v8 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        sub_5C740(&v50);

        v7 = v44;
        v3 = v45;
        goto LABEL_4;
      }

      v4 = a2;
LABEL_25:
      v33 = v43;
      result = swift_isUniquelyReferenced_nonNull_native();
      v59 = v43;
      if ((result & 1) == 0)
      {
        result = sub_37574(0, v43[2] + 1, 1);
        v33 = v59;
      }

      v35 = v33[2];
      v34 = v33[3];
      if (v35 >= v34 >> 1)
      {
        result = sub_37574((v34 > 1), v35 + 1, 1);
        v33 = v59;
      }

      v33[2] = v35 + 1;
      v43 = v33;
      v36 = &v33[17 * v35];
      *(v36 + 2) = v50;
      v37 = v51;
      v38 = v52;
      v39 = v54;
      *(v36 + 5) = v53;
      *(v36 + 6) = v39;
      *(v36 + 3) = v37;
      *(v36 + 4) = v38;
      v40 = v55;
      v41 = v56;
      v42 = v57;
      *(v36 + 160) = v58;
      *(v36 + 8) = v41;
      *(v36 + 9) = v42;
      *(v36 + 7) = v40;
      v7 = v44;
      v3 = v45;
      if (v6 == v45)
      {
        return v43;
      }
    }

    else
    {
LABEL_4:
      if (v6 == v3)
      {
        return v43;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_18D3B4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 32;
    v6 = result + 56;
    v7 = _swiftEmptyArrayStorage;
    while (v4 < v2)
    {
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_38;
      }

      v9 = (v5 + 136 * v4++);
      if (*(v9 + 112) != 2 && *(v3 + 16) && (v10 = *v9, v11 = v9[13], result = sub_1B57E4(), v12 = -1 << *(v3 + 32), v13 = result & ~v12, ((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
      {
        v14 = ~v12;
        while (*(*(v3 + 48) + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v14;
          if (((*(v6 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_33008(0, *(v7 + 2) + 1, 1, v7);
          v7 = result;
        }

        v16 = *(v7 + 2);
        v15 = *(v7 + 3);
        if (v16 >= v15 >> 1)
        {
          result = sub_33008((v15 > 1), v16 + 1, 1, v7);
          v7 = result;
        }

        *(v7 + 2) = v16 + 1;
        *&v7[8 * v16 + 32] = v10;
        if (v8 == v2)
        {
          goto LABEL_20;
        }
      }

      else
      {
LABEL_3:
        if (v8 == v2)
        {
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_20:
  v17 = sub_40854(v7);

  if (v2)
  {
    v18 = 0;
    v19 = v17 + 56;
    v20 = _swiftEmptyArrayStorage;
    while (v18 < v2)
    {
      v30 = a2 + 32 + 136 * v18;
      v31 = *(v30 + 112);
      v48 = *(v30 + 96);
      v49 = v31;
      v50 = *(v30 + 128);
      v32 = *(v30 + 48);
      v44 = *(v30 + 32);
      v45 = v32;
      v33 = *(v30 + 80);
      v46 = *(v30 + 64);
      v47 = v33;
      v34 = *(v30 + 16);
      v42 = *v30;
      v43 = v34;
      if (__OFADD__(v18++, 1))
      {
        goto LABEL_40;
      }

      if (*(v17 + 16) && (v36 = v42, result = sub_1B57E4(), v37 = -1 << *(v17 + 32), v38 = result & ~v37, ((*(v19 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0))
      {
        v39 = ~v37;
        while (*(*(v17 + 48) + 8 * v38) != v36)
        {
          v38 = (v38 + 1) & v39;
          if (((*(v19 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
LABEL_33:
        sub_429F8(&v42, v41);
        result = swift_isUniquelyReferenced_nonNull_native();
        v51 = v20;
        if ((result & 1) == 0)
        {
          result = sub_37574(0, v20[2] + 1, 1);
          v20 = v51;
        }

        v22 = v20[2];
        v21 = v20[3];
        if (v22 >= v21 >> 1)
        {
          result = sub_37574((v21 > 1), v22 + 1, 1);
          v20 = v51;
        }

        v20[2] = v22 + 1;
        v23 = &v20[17 * v22];
        *(v23 + 2) = v42;
        v24 = v43;
        v25 = v44;
        v26 = v46;
        *(v23 + 5) = v45;
        *(v23 + 6) = v26;
        *(v23 + 3) = v24;
        *(v23 + 4) = v25;
        v27 = v47;
        v28 = v48;
        v29 = v49;
        *(v23 + 160) = v50;
        *(v23 + 8) = v28;
        *(v23 + 9) = v29;
        *(v23 + 7) = v27;
      }

      if (v18 == v2)
      {
        goto LABEL_36;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_36:

  return v20;
}

uint64_t sub_18D6F8(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a2[7];
  v54 = a2[6];
  v55 = v5;
  v56 = *(a2 + 128);
  v6 = a2[1];
  v48 = *a2;
  v49 = v6;
  v7 = a2[3];
  v50 = a2[2];
  v51 = v7;
  v8 = a2[5];
  v52 = a2[4];
  v53 = v8;
  v9 = v48;
  v10 = *(&v51 + 1);
  if (*(a3 + 16) && (v12 = sub_43124(v48), (v13 & 1) != 0))
  {
    v14 = *(a3 + 56) + 88 * v12;
    v15 = *(v14 + 24);
    v16 = *(v14 + 32);
    v17 = *(v14 + 80);
    sub_2B0C(&qword_229238, &qword_1C09C0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BCA80;
    *(v18 + 32) = v9;
    v47[0] = v18;
    v19 = _swiftEmptyArrayStorage;
    if ((v16 & 1) == 0)
    {
      v19 = swift_allocObject();
      *(v19 + 1) = xmmword_1BCA80;
      v19[4] = v15;
    }

    v46 = v19;
    if (v17)
    {
      v20 = v17;
    }

    else
    {
      v20 = _swiftEmptyArrayStorage;
    }

    swift_bridgeObjectRetain_n();
    sub_5F33C(v20);
    sub_5F33C(v46);

    v21 = v47[0];
    v22 = *(v47[0] + 16);
    v4 = a4;
    if (!v22)
    {
LABEL_22:

      if (v10 > 0.0)
      {
        v34 = *a1;
        sub_429F8(&v48, v47);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_33358(0, *(v34 + 16) + 1, 1, v34);
          v34 = result;
        }

        v36 = *(v34 + 16);
        v35 = *(v34 + 24);
        if (v36 >= v35 >> 1)
        {
          result = sub_33358((v35 > 1), v36 + 1, 1, v34);
          v34 = result;
        }

        *(v34 + 16) = v36 + 1;
        v37 = v34 + 136 * v36;
        *(v37 + 32) = v48;
        v38 = v49;
        v39 = v50;
        v40 = v52;
        *(v37 + 80) = v51;
        *(v37 + 96) = v40;
        *(v37 + 48) = v38;
        *(v37 + 64) = v39;
        v41 = v53;
        v42 = v54;
        v43 = v55;
        *(v37 + 160) = v56;
        *(v37 + 128) = v42;
        *(v37 + 144) = v43;
        *(v37 + 112) = v41;
        *a1 = v34;
      }

      return result;
    }
  }

  else
  {
    sub_2B0C(&qword_229238, &qword_1C09C0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BCA80;
    *(v21 + 32) = v9;
    v22 = 1;
  }

  v23 = 0;
  v24 = *v4;
  v25 = *(*v4 + 16);
  v26 = *v4 + 56;
  while (1)
  {
    if (v25)
    {
      v27 = *(v21 + 32 + 8 * v23);
      v28 = sub_1B57E4();
      v29 = -1 << *(v24 + 32);
      v30 = v28 & ~v29;
      if ((*(v26 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
      {
        break;
      }
    }

LABEL_12:
    if (++v23 == v22)
    {
      v33 = 32;
      do
      {
        sub_111CE0(v47, *(v21 + v33));
        v33 += 8;
        --v22;
      }

      while (v22);
      goto LABEL_22;
    }
  }

  v31 = ~v29;
  while (*(*(v24 + 48) + 8 * v30) != v27)
  {
    v30 = (v30 + 1) & v31;
    if (((*(v26 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
    {
      goto LABEL_12;
    }
  }
}

BOOL sub_18DA50(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = a1[7];
  v10 = *(a1 + 7);
  v41 = *(a1 + 6);
  v42 = v10;
  v43 = *(a1 + 128);
  v11 = *(a1 + 4);
  v40 = *(a1 + 5);
  v39 = v11;
  v22 = *a2;
  v12 = *(a2 + 8);
  v13 = a2[7];
  v14 = *(a2 + 7);
  v31 = *(a2 + 6);
  v32 = v14;
  v33 = *(a2 + 128);
  v15 = *(a2 + 4);
  v30 = *(a2 + 5);
  v29 = v15;
  sub_2B0C(&qword_2294A8, &qword_1BC540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C00E0;
  v34 = v7;
  v35 = v8;
  v36 = *(a1 + 9);
  *v37 = *(a1 + 25);
  *&v37[15] = *(a1 + 5);
  v38 = v9;
  *(inited + 32) = sub_18DC48(&v34, a3);
  if (sub_2B404(v8 & 1, a4))
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  *(inited + 40) = v17;
  *(inited + 48) = v9;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1C00E0;
  v24 = v22;
  v25 = v12;
  v26 = *(a2 + 9);
  *v27 = *(a2 + 25);
  *&v27[15] = *(a2 + 5);
  v28 = v13;
  *(v18 + 32) = sub_18DC48(&v24, a3);
  if (sub_2B404(v12 & 1, a4))
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  *(v18 + 40) = v19;
  *(v18 + 48) = v13;
  v20 = sub_18DD00(v18, inited);
  swift_setDeallocating();
  swift_setDeallocating();
  return (v20 & 1) == 0;
}

double sub_18DC48(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  if (*(a1 + 112) != 2 && *(a2 + 16))
  {
    v3 = *(a1 + 104);
    v5 = sub_1B57E4();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      result = 0.0;
      while (*(*(a2 + 48) + 8 * v7) != v3)
      {
        v7 = (v7 + 1) & v8;
        if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          return result;
        }
      }

      return 1.0;
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t sub_18DD00(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (v3 != v2)
  {
    v4 = *(result + 16);
    if (v2 == v4)
    {
      return 0;
    }

    if (v2 >= v4)
    {
      __break(1u);
      goto LABEL_13;
    }

    v5 = *(a2 + 32 + 8 * v2);
    v6 = *(result + 32 + 8 * v2);
    if (v5 < v6)
    {
      return 1;
    }

    ++v2;
    if (v6 < v5)
    {
      return 0;
    }
  }

  v7 = *(result + 16);
  if (v3 == v7)
  {
    return 0;
  }

  if (v3 < v7)
  {
    return 1;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_18DD80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a3 + 16))
  {
    v6 = result;
    result = sub_43124(a2);
    if (v7)
    {
      v8 = *(*(a3 + 56) + 8 * result);
      v9 = *(v8 + 16);
      if (v9)
      {

        for (i = 0; i != v9; ++i)
        {
          if (i >= *(v8 + 16))
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            result = sub_1B5784();
            __break(1u);
            return result;
          }

          v11 = *(v8 + 8 * i + 32);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v28 = *a4;
          v13 = v28;
          *a4 = 0x8000000000000000;
          sub_43124(v6);
          v15 = *(v13 + 16);
          v16 = (v14 & 1) == 0;
          v17 = v15 + v16;
          if (__OFADD__(v15, v16))
          {
            goto LABEL_28;
          }

          v18 = v14;
          if (*(v13 + 24) >= v17)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_187930();
              v13 = v28;
            }
          }

          else
          {
            sub_1825E8(v17, isUniquelyReferenced_nonNull_native);
            v13 = v28;
            sub_43124(v6);
            if ((v18 & 1) != (v19 & 1))
            {
              goto LABEL_30;
            }
          }

          *a4 = v13;

          if ((v18 & 1) == 0)
          {
            sub_15C8E0();
          }

          sub_111CE0(&v28, v11);
          v20 = swift_isUniquelyReferenced_nonNull_native();
          v28 = *a4;
          v21 = v28;
          *a4 = 0x8000000000000000;
          sub_43124(v11);
          v23 = *(v21 + 16);
          v24 = (v22 & 1) == 0;
          v25 = v23 + v24;
          if (__OFADD__(v23, v24))
          {
            goto LABEL_29;
          }

          v26 = v22;
          if (*(v21 + 24) >= v25)
          {
            if ((v20 & 1) == 0)
            {
              sub_187930();
              v21 = v28;
            }
          }

          else
          {
            sub_1825E8(v25, v20);
            v21 = v28;
            sub_43124(v11);
            if ((v26 & 1) != (v27 & 1))
            {
              goto LABEL_30;
            }
          }

          *a4 = v21;

          if ((v26 & 1) == 0)
          {
            sub_15C8E0();
          }

          sub_111CE0(&v28, v6);
        }
      }
    }
  }

  return result;
}

uint64_t sub_18E018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  if (*(v6 + 16) && (result = sub_1B57E4(), v8 = -1 << *(v6 + 32), v9 = result & ~v8, ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v10 = ~v8;
    while (*(*(v6 + 48) + 8 * v9) != a1)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    swift_beginAccess();
    sub_111CE0(&v20, a1);
    result = swift_endAccess();
    if (*(a3 + 16))
    {
      result = sub_43124(a1);
      if (v11)
      {
        v12 = *(*(a3 + 56) + 8 * result);
        v13 = 1 << *(v12 + 32);
        v14 = -1;
        if (v13 < 64)
        {
          v14 = ~(-1 << v13);
        }

        v15 = v14 & *(v12 + 56);
        v16 = (v13 + 63) >> 6;
        result = swift_bridgeObjectRetain_n();
        for (i = 0; v15; result = sub_18E018(*(*(v12 + 48) + ((v18 << 9) | (8 * v19))), a2, a3))
        {
          v18 = i;
LABEL_16:
          v19 = __clz(__rbit64(v15));
          v15 &= v15 - 1;
        }

        while (1)
        {
          v18 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v18 >= v16)
          {
          }

          v15 = *(v12 + 56 + 8 * v18);
          ++i;
          if (v15)
          {
            i = v18;
            goto LABEL_16;
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

BOOL sub_18E1E4(_OWORD *a1, __int128 *a2, uint64_t a3)
{
  v3 = a1[1];
  v20[0] = *a1;
  v20[1] = v3;
  v4 = a1[3];
  v6 = *a1;
  v5 = a1[1];
  v20[2] = a1[2];
  v20[3] = v4;
  v7 = a2[1];
  v16 = *a2;
  v17 = v7;
  v8 = a2[3];
  v18 = a2[2];
  v19 = v8;
  v22 = v6;
  v23 = v5;
  v9 = a1[3];
  v24 = a1[2];
  v25 = v9;
  sub_42BA4(v20, v21);
  swift_getAtKeyPath();
  v21[0] = v22;
  v21[1] = v23;
  v21[2] = v24;
  v21[3] = v25;
  sub_43FF4(v21);
  v11 = v16;
  v12 = v17;
  v13 = v18;
  v14 = v19;
  sub_42BA4(&v16, &v22);
  swift_getAtKeyPath();
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  sub_43FF4(&v22);
  if (v26 == v15)
  {
    return *&v20[0] < v16;
  }

  else
  {
    return v15 < v26;
  }
}

void *sub_18E2EC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1928F8(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_18E388@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 5);
  v5 = *(a1 + 9);
  v12 = *(a1 + 7);
  v4 = v12;
  v13 = v5;
  v14 = a1[11];
  v6 = v14;
  v8 = *(a1 + 3);
  v11[0] = *(a1 + 1);
  v7 = v11[0];
  v11[1] = v8;
  v11[2] = v3;
  *(a2 + 40) = v3;
  *(a2 + 56) = v4;
  *(a2 + 72) = v5;
  *(a2 + 88) = v6;
  *(a2 + 8) = v7;
  *(a2 + 24) = v8;
  *a2 = v2;
  return sub_5EDD8(v11, v10);
}

uint64_t sub_18E3FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v43 = result;
  v5 = *(a2 + 16);
  if (v5)
  {
    for (i = a2 + 32; ; i += 136)
    {
      v9 = *(i + 80);
      v10 = *(i + 112);
      v40 = *(i + 96);
      v41 = v10;
      v11 = *(i + 16);
      v12 = *(i + 48);
      v36 = *(i + 32);
      v37 = v12;
      v13 = *(i + 48);
      v14 = *(i + 80);
      v38 = *(i + 64);
      v39 = v14;
      v15 = *(i + 16);
      v35[0] = *i;
      v35[1] = v15;
      v16 = *(i + 112);
      v32 = v40;
      v33 = v16;
      v28 = v36;
      v29 = v13;
      v30 = v38;
      v31 = v9;
      v42 = *(i + 128);
      v34 = *(i + 128);
      v26 = v35[0];
      v27 = v11;
      sub_429F8(v35, &v17);
      sub_18D6F8(&v43, &v26, a3, a4);
      if (v4)
      {
        break;
      }

      v23 = v32;
      v24 = v33;
      v25 = v34;
      v19 = v28;
      v20 = v29;
      v21 = v30;
      v22 = v31;
      v17 = v26;
      v18 = v27;
      sub_5C740(&v17);
      if (!--v5)
      {
        return v43;
      }
    }

    v23 = v32;
    v24 = v33;
    v25 = v34;
    v19 = v28;
    v20 = v29;
    v21 = v30;
    v22 = v31;
    v17 = v26;
    v18 = v27;
    sub_5C740(&v17);
  }

  return result;
}

uint64_t sub_18E54C(char *__dst, char *__src, char *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = (__src - __dst) / 136;
  v12 = a3 - __src;
  v13 = (a3 - __src) / 136;
  if (v11 >= v13)
  {
    v40 = 136 * v13;
    if (a4 != __src || &__src[v40] <= a4)
    {
      memmove(a4, __src, 136 * v13);
    }

    v15 = &v6[v40];
    if (v12 >= 136 && v8 > v9)
    {
      v65 = v9;
      v66 = v6;
LABEL_28:
      v41 = v8 - 136;
      v7 -= 136;
      v42 = v15;
      do
      {
        v15 = v42;
        v43 = v7 + 136;
        v78 = *(v42 - 136);
        v44 = *(v42 - 120);
        v45 = *(v42 - 104);
        v46 = *(v42 - 72);
        v81 = *(v42 - 88);
        v82 = v46;
        v79 = v44;
        v80 = v45;
        v47 = *(v42 - 56);
        v48 = *(v42 - 40);
        v49 = *(v42 - 24);
        v86 = *(v42 - 8);
        v84 = v48;
        v85 = v49;
        v83 = v47;
        v50 = *(v8 - 88);
        v89 = *(v8 - 104);
        v90 = v50;
        v51 = *(v8 - 120);
        v87 = *v41;
        v88 = v51;
        v95 = *(v8 - 8);
        v52 = *(v8 - 24);
        v93 = *(v8 - 40);
        v94 = v52;
        v53 = *(v8 - 56);
        v91 = *(v8 - 72);
        v92 = v53;
        sub_2B0C(&qword_2294A8, &qword_1BC540);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_1C00E0;
        v75 = v84;
        v76 = v85;
        v77 = v86;
        v71 = v80;
        v72 = v81;
        v73 = v82;
        v74 = v83;
        v69 = v78;
        v70 = v79;
        *(v54 + 32) = sub_18DC48(&v69, a5);
        v55 = BYTE8(v78);
        v56 = *(&v81 + 1);
        sub_429F8(&v78, &v69);
        sub_429F8(&v87, &v69);
        if (sub_2B404(v55, a6))
        {
          v57 = 1.0;
        }

        else
        {
          v57 = 0.0;
        }

        *(v54 + 40) = v57;
        *(v54 + 48) = v56;
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1C00E0;
        v75 = v93;
        v76 = v94;
        v77 = v95;
        v71 = v89;
        v72 = v90;
        v73 = v91;
        v74 = v92;
        v69 = v87;
        v70 = v88;
        *(v58 + 32) = sub_18DC48(&v69, a5);
        v59 = *(&v90 + 1);
        if (sub_2B404(SBYTE8(v87), a6))
        {
          v60 = 1.0;
        }

        else
        {
          v60 = 0.0;
        }

        *(v58 + 40) = v60;
        *(v58 + 48) = v59;
        v61 = sub_18DD00(v58, v54);
        swift_setDeallocating();
        swift_deallocClassInstance();
        swift_setDeallocating();
        swift_deallocClassInstance();
        sub_5C740(&v87);
        sub_5C740(&v78);
        if ((v61 & 1) == 0)
        {
          if (v43 < v8 || v7 >= v8)
          {
            memmove(v7, v8 - 136, 0x88uLL);
            v62 = v65;
          }

          else
          {
            v62 = v65;
            if (v43 != v8)
            {
              memmove(v7, v8 - 136, 0x88uLL);
            }
          }

          v6 = v66;
          if (v15 <= v66 || (v8 -= 136, v41 <= v62))
          {
            v8 = v41;
            goto LABEL_51;
          }

          goto LABEL_28;
        }

        v42 = v15 - 136;
        if (v43 < v15 || v7 >= v15 || v43 != v15)
        {
          memmove(v7, v15 - 136, 0x88uLL);
        }

        v6 = v66;
        v7 -= 136;
      }

      while (v42 > v66);
      v15 -= 136;
    }
  }

  else
  {
    v14 = 136 * v11;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v6[v14];
    if (v10 >= 136 && v8 < v7)
    {
      while (1)
      {
        v16 = v9;
        v78 = *v8;
        v17 = *(v8 + 1);
        v18 = *(v8 + 2);
        v19 = *(v8 + 4);
        v81 = *(v8 + 3);
        v82 = v19;
        v79 = v17;
        v80 = v18;
        v20 = *(v8 + 5);
        v21 = *(v8 + 6);
        v22 = *(v8 + 7);
        v86 = v8[128];
        v84 = v21;
        v85 = v22;
        v83 = v20;
        v87 = *v6;
        v23 = *(v6 + 1);
        v24 = *(v6 + 2);
        v25 = *(v6 + 4);
        v90 = *(v6 + 3);
        v91 = v25;
        v88 = v23;
        v89 = v24;
        v26 = *(v6 + 5);
        v27 = *(v6 + 6);
        v28 = *(v6 + 7);
        v95 = v6[128];
        v93 = v27;
        v94 = v28;
        v92 = v26;
        sub_2B0C(&qword_2294A8, &qword_1BC540);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1C00E0;
        v75 = v84;
        v76 = v85;
        v77 = v86;
        v71 = v80;
        v72 = v81;
        v73 = v82;
        v74 = v83;
        v69 = v78;
        v70 = v79;
        *(v29 + 32) = sub_18DC48(&v69, a5);
        v30 = BYTE8(v78);
        v31 = *(&v81 + 1);
        sub_429F8(&v78, &v69);
        sub_429F8(&v87, &v69);
        v32 = (sub_2B404(v30, a6) & 1) != 0 ? 1.0 : 0.0;
        *(v29 + 40) = v32;
        *(v29 + 48) = v31;
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1C00E0;
        v75 = v93;
        v76 = v94;
        v77 = v95;
        v71 = v89;
        v72 = v90;
        v73 = v91;
        v74 = v92;
        v69 = v87;
        v70 = v88;
        *(v33 + 32) = sub_18DC48(&v69, a5);
        v34 = *(&v90 + 1);
        v35 = (sub_2B404(SBYTE8(v87), a6) & 1) != 0 ? 1.0 : 0.0;
        *(v33 + 40) = v35;
        *(v33 + 48) = v34;
        v36 = sub_18DD00(v33, v29);
        swift_setDeallocating();
        swift_deallocClassInstance();
        swift_setDeallocating();
        swift_deallocClassInstance();
        sub_5C740(&v87);
        sub_5C740(&v78);
        if ((v36 & 1) == 0)
        {
          break;
        }

        v37 = v6;
        v38 = v16;
        v39 = v16 == v6;
        v6 += 136;
        if (!v39)
        {
          goto LABEL_18;
        }

LABEL_19:
        v9 = v38 + 136;
        if (v6 >= v15 || v8 >= v7)
        {
          goto LABEL_21;
        }
      }

      v37 = v8;
      v38 = v16;
      v39 = v16 == v8;
      v8 += 136;
      if (v39)
      {
        goto LABEL_19;
      }

LABEL_18:
      memmove(v38, v37, 0x88uLL);
      goto LABEL_19;
    }

LABEL_21:
    v8 = v9;
  }

LABEL_51:
  v63 = 136 * ((v15 - v6) / 136);
  if (v8 != v6 || v8 >= &v6[v63])
  {
    memmove(v8, v6, v63);
  }

  return 1;
}

uint64_t sub_18EBB4(char **a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = *a1;

  v23 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v23 = sub_52E40(v23);
  }

  v20 = v7;
  *v7 = v23;
  v10 = v23 + 16;
  v9 = *(v23 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v23;
LABEL_11:

    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = &v23[16 * v9];
      v7 = *v12;
      v13 = v10;
      v14 = &v10[16 * v9];
      v15 = *(v14 + 1);
      v16 = (v11 + 136 * *v14);
      v24 = (v11 + 136 * v15);
      v25 = (v11 + 136 * *v12);

      sub_18E54C(v25, v16, v24, a2, a4, a5);
      if (v26)
      {

        *v20 = v23;

        goto LABEL_11;
      }

      if (v15 < v7)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v13;
      if (v9 - 2 >= *v13)
      {
        goto LABEL_13;
      }

      *v12 = v7;
      *(v12 + 1) = v15;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v10 = v13;
      v9 = v17 - 1;
      memmove(v14, v14 + 16, 16 * v18);
      *v13 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v23;

    __break(1u);
  }

  return result;
}

uint64_t sub_18ED98(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v244 = _swiftEmptyArrayStorage;
  v8 = a3[1];
  if (v8 >= 1)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v162 = a5;
    v157 = a6;
    while (1)
    {
      v154 = v10;
      v11 = v9;
      v12 = v9 + 1;
      if (v9 + 1 >= v8)
      {
        ++v9;
        goto LABEL_18;
      }

      v13 = *a3;
      v14 = *a3 + 136 * v12;
      v226 = *v14;
      v15 = *(v14 + 16);
      v16 = *(v14 + 32);
      v17 = *(v14 + 48);
      v230 = *(v14 + 64);
      v229 = v17;
      v228 = v16;
      v227 = v15;
      v18 = *(v14 + 80);
      v19 = *(v14 + 96);
      v20 = *(v14 + 112);
      v234 = *(v14 + 128);
      v233 = v20;
      v232 = v19;
      v231 = v18;
      v222 = *(v14 + 80);
      v223 = *(v14 + 96);
      v224 = *(v14 + 112);
      v225 = *(v14 + 128);
      v218 = *(v14 + 16);
      v219 = *(v14 + 32);
      v220 = *(v14 + 48);
      v221 = *(v14 + 64);
      v217 = *v14;
      v21 = v13 + 136 * v9;
      v235 = *v21;
      v22 = *(v21 + 16);
      v23 = *(v21 + 32);
      v24 = *(v21 + 64);
      v238 = *(v21 + 48);
      v239 = v24;
      v236 = v22;
      v237 = v23;
      v25 = *(v21 + 80);
      v26 = *(v21 + 96);
      v27 = *(v21 + 112);
      v243 = *(v21 + 128);
      v241 = v26;
      v242 = v27;
      v240 = v25;
      v28 = *(v21 + 112);
      v214 = *(v21 + 96);
      v215 = v28;
      v216 = *(v21 + 128);
      v29 = *(v21 + 48);
      v210 = *(v21 + 32);
      v211 = v29;
      v30 = *(v21 + 80);
      v212 = *(v21 + 64);
      v213 = v30;
      v31 = *(v21 + 16);
      v208 = *v21;
      v209 = v31;
      sub_429F8(&v226, &v199);
      sub_429F8(&v235, &v199);
      v158 = sub_18DA50(&v217, &v208, a5, a6);
      if (v161)
      {
        break;
      }

      v196 = v214;
      v197 = v215;
      v198 = v216;
      v192 = v210;
      v193 = v211;
      v194 = v212;
      v195 = v213;
      v190 = v208;
      v191 = v209;
      sub_5C740(&v190);
      v205 = v223;
      v206 = v224;
      v207 = v225;
      v201 = v219;
      v202 = v220;
      v203 = v221;
      v204 = v222;
      v199 = v217;
      v200 = v218;
      sub_5C740(&v199);
      v32 = v9 + 2;
      if (v9 + 2 >= v8)
      {
        v9 += 2;
        if (!v158)
        {
          goto LABEL_18;
        }

        goto LABEL_42;
      }

      v33 = v13 + 136 * v9 + 272;
      while (1)
      {
        v9 = v32;
        v172 = *v33;
        v34 = *(v33 + 16);
        v35 = *(v33 + 32);
        v36 = *(v33 + 64);
        v175 = *(v33 + 48);
        v176 = v36;
        v173 = v34;
        v174 = v35;
        v37 = *(v33 + 80);
        v38 = *(v33 + 96);
        v39 = *(v33 + 112);
        v180 = *(v33 + 128);
        v178 = v38;
        v179 = v39;
        v177 = v37;
        v181 = *(v33 - 136);
        v40 = *(v33 - 120);
        v41 = *(v33 - 104);
        v42 = *(v33 - 72);
        v184 = *(v33 - 88);
        v185 = v42;
        v182 = v40;
        v183 = v41;
        v43 = *(v33 - 56);
        v44 = *(v33 - 40);
        v45 = *(v33 - 24);
        v189 = *(v33 - 8);
        v187 = v44;
        v188 = v45;
        v186 = v43;
        sub_2B0C(&qword_2294A8, &qword_1BC540);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1C00E0;
        v169 = v178;
        v170 = v179;
        v171 = v180;
        v165 = v174;
        v166 = v175;
        v167 = v176;
        v168 = v177;
        v163 = v172;
        v164 = v173;
        *(v46 + 32) = sub_18DC48(&v163, a5);
        v47 = BYTE8(v172);
        v48 = *(&v175 + 1);
        sub_429F8(&v172, &v163);
        sub_429F8(&v181, &v163);
        v49 = (sub_2B404(v47, a6) & 1) != 0 ? 1.0 : 0.0;
        *(v46 + 40) = v49;
        *(v46 + 48) = v48;
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_1C00E0;
        v169 = v187;
        v170 = v188;
        v171 = v189;
        v165 = v183;
        v166 = v184;
        v167 = v185;
        v168 = v186;
        v163 = v181;
        v164 = v182;
        *(v50 + 32) = sub_18DC48(&v163, a5);
        v51 = *(&v184 + 1);
        v52 = (sub_2B404(SBYTE8(v181), a6) & 1) != 0 ? 1.0 : 0.0;
        *(v50 + 40) = v52;
        *(v50 + 48) = v51;
        v53 = sub_18DD00(v50, v46) & 1;
        swift_setDeallocating();
        swift_deallocClassInstance();
        swift_setDeallocating();
        swift_deallocClassInstance();
        sub_5C740(&v181);
        sub_5C740(&v172);
        if (v158 == v53)
        {
          break;
        }

        v32 = v9 + 1;
        v33 += 136;
        a5 = v162;
        if (v8 == v9 + 1)
        {
          v12 = v9;
          v9 = v8;
          if (!v158)
          {
            goto LABEL_18;
          }

LABEL_42:
          if (v9 >= v11)
          {
            if (v11 <= v12)
            {
              v86 = 136 * v9 - 136;
              v87 = 136 * v11;
              v88 = v9;
              v89 = v11;
              while (1)
              {
                if (v89 != --v88)
                {
                  v90 = *a3;
                  if (!*a3)
                  {
                    goto LABEL_134;
                  }

                  v91 = v90 + v86;
                  v186 = *(v90 + v87 + 80);
                  v187 = *(v90 + v87 + 96);
                  v188 = *(v90 + v87 + 112);
                  v189 = *(v90 + v87 + 128);
                  v182 = *(v90 + v87 + 16);
                  v183 = *(v90 + v87 + 32);
                  v184 = *(v90 + v87 + 48);
                  v185 = *(v90 + v87 + 64);
                  v181 = *(v90 + v87);
                  memmove((v90 + v87), (v90 + v86), 0x88uLL);
                  *(v91 + 80) = v186;
                  *(v91 + 96) = v187;
                  *(v91 + 112) = v188;
                  *(v91 + 128) = v189;
                  *(v91 + 16) = v182;
                  *(v91 + 32) = v183;
                  *(v91 + 48) = v184;
                  *(v91 + 64) = v185;
                  *v91 = v181;
                }

                ++v89;
                v86 -= 136;
                v87 += 136;
                if (v89 >= v88)
                {
                  goto LABEL_18;
                }
              }
            }

            goto LABEL_18;
          }

LABEL_131:
          __break(1u);
LABEL_132:
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_133:
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_134:
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          __break(1u);
          goto LABEL_135;
        }
      }

      v12 = v9 - 1;
      a5 = v162;
      if (v158)
      {
        goto LABEL_42;
      }

LABEL_18:
      v10 = v154;
      v54 = a3[1];
      if (v9 < v54)
      {
        if (__OFSUB__(v9, v11))
        {
          goto LABEL_128;
        }

        if (v9 - v11 < a4)
        {
          v55 = v11 + a4;
          if (__OFADD__(v11, a4))
          {
            goto LABEL_129;
          }

          if (v55 >= v54)
          {
            v55 = a3[1];
          }

          if (v55 < v11)
          {
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          if (v9 != v55)
          {
            v56 = *a3;
            v57 = *a3 + 136 * v9;
            v147 = v11;
            v58 = v11 - v9 + 1;
            v150 = v55;
            do
            {
              v159 = v9;
              v59 = v58;
              v152 = v57;
              for (i = v57; ; i -= 136)
              {
                v226 = *i;
                v61 = *(i + 16);
                v62 = *(i + 32);
                v63 = *(i + 48);
                v230 = *(i + 64);
                v229 = v63;
                v228 = v62;
                v227 = v61;
                v64 = *(i + 80);
                v65 = *(i + 96);
                v66 = *(i + 112);
                v234 = *(i + 128);
                v233 = v66;
                v232 = v65;
                v231 = v64;
                v235 = *(i - 136);
                v67 = *(i - 120);
                v68 = *(i - 104);
                v69 = *(i - 72);
                v238 = *(i - 88);
                v239 = v69;
                v236 = v67;
                v237 = v68;
                v70 = *(i - 56);
                v71 = *(i - 40);
                v72 = *(i - 24);
                v243 = *(i - 8);
                v241 = v71;
                v242 = v72;
                v240 = v70;
                sub_2B0C(&qword_2294A8, &qword_1BC540);
                v73 = swift_allocObject();
                *(v73 + 16) = xmmword_1C00E0;
                v223 = v232;
                v224 = v233;
                v225 = v234;
                v219 = v228;
                v220 = v229;
                v222 = v231;
                v221 = v230;
                v217 = v226;
                v218 = v227;
                *(v73 + 32) = sub_18DC48(&v217, a5);
                v74 = BYTE8(v226);
                v75 = *(&v229 + 1);
                sub_429F8(&v226, &v217);
                sub_429F8(&v235, &v217);
                v76 = (sub_2B404(v74, a6) & 1) != 0 ? 1.0 : 0.0;
                *(v73 + 40) = v76;
                *(v73 + 48) = v75;
                v77 = swift_allocObject();
                *(v77 + 16) = xmmword_1C00E0;
                v223 = v241;
                v224 = v242;
                v225 = v243;
                v219 = v237;
                v220 = v238;
                v222 = v240;
                v221 = v239;
                v217 = v235;
                v218 = v236;
                *(v77 + 32) = sub_18DC48(&v217, a5);
                v78 = *(&v238 + 1);
                v79 = (sub_2B404(SBYTE8(v235), a6) & 1) != 0 ? 1.0 : 0.0;
                *(v77 + 40) = v79;
                *(v77 + 48) = v78;
                v80 = sub_18DD00(v77, v73);
                swift_setDeallocating();
                swift_deallocClassInstance();
                swift_setDeallocating();
                swift_deallocClassInstance();
                sub_5C740(&v235);
                sub_5C740(&v226);
                if (v80)
                {
                  break;
                }

                if (!v56)
                {
                  goto LABEL_132;
                }

                v81 = i - 136;
                v222 = *(i + 80);
                v223 = *(i + 96);
                v224 = *(i + 112);
                v225 = *(i + 128);
                v218 = *(i + 16);
                v219 = *(i + 32);
                v220 = *(i + 48);
                v221 = *(i + 64);
                v217 = *i;
                v82 = *(i - 56);
                *(i + 64) = *(i - 72);
                *(i + 80) = v82;
                v83 = *(i - 24);
                *(i + 96) = *(i - 40);
                *(i + 112) = v83;
                *(i + 128) = *(i - 8);
                v84 = *(i - 88);
                *(i + 32) = *(i - 104);
                *(i + 48) = v84;
                v85 = *(i - 120);
                *i = *(i - 136);
                *(i + 16) = v85;
                *(v81 + 64) = v221;
                *(v81 + 80) = v222;
                *(v81 + 96) = v223;
                *(v81 + 112) = v224;
                *(v81 + 128) = v225;
                *(v81 + 16) = v218;
                *(v81 + 32) = v219;
                *(v81 + 48) = v220;
                *v81 = v217;
                if (!v59)
                {
                  break;
                }

                ++v59;
              }

              v9 = v159 + 1;
              v57 = v152 + 136;
              --v58;
            }

            while (v159 + 1 != v150);
            v9 = v150;
            v10 = v154;
            v11 = v147;
          }
        }
      }

      if (v9 < v11)
      {
        goto LABEL_127;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_32F04(0, *(v10 + 2) + 1, 1, v10);
      }

      v93 = *(v10 + 2);
      v92 = *(v10 + 3);
      v94 = v93 + 1;
      if (v93 >= v92 >> 1)
      {
        v10 = sub_32F04((v92 > 1), v93 + 1, 1, v10);
      }

      *(v10 + 2) = v94;
      v95 = v10 + 32;
      v96 = &v10[16 * v93 + 32];
      *v96 = v11;
      *(v96 + 1) = v9;
      v244 = v10;
      v153 = *a1;
      if (!*a1)
      {
LABEL_135:
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        __break(1u);
        goto LABEL_136;
      }

      if (v93)
      {
        v160 = v9;
        v151 = v10 + 32;
        v155 = v10;
        while (1)
        {
          v97 = v94 - 1;
          a5 = v162;
          if (v94 >= 4)
          {
            break;
          }

          if (v94 == 3)
          {
            v98 = *(v10 + 4);
            v99 = *(v10 + 5);
            v108 = __OFSUB__(v99, v98);
            v100 = v99 - v98;
            v101 = v108;
LABEL_71:
            if (v101)
            {
              goto LABEL_118;
            }

            v114 = &v10[16 * v94];
            v116 = *v114;
            v115 = *(v114 + 1);
            v117 = __OFSUB__(v115, v116);
            v118 = v115 - v116;
            v119 = v117;
            if (v117)
            {
              goto LABEL_121;
            }

            v120 = &v95[16 * v97];
            v122 = *v120;
            v121 = *(v120 + 1);
            v108 = __OFSUB__(v121, v122);
            v123 = v121 - v122;
            if (v108)
            {
              goto LABEL_124;
            }

            if (__OFADD__(v118, v123))
            {
              goto LABEL_125;
            }

            if (v118 + v123 >= v100)
            {
              if (v100 < v123)
              {
                v97 = v94 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          v124 = &v10[16 * v94];
          v126 = *v124;
          v125 = *(v124 + 1);
          v108 = __OFSUB__(v125, v126);
          v118 = v125 - v126;
          v119 = v108;
LABEL_85:
          if (v119)
          {
            goto LABEL_120;
          }

          v127 = &v95[16 * v97];
          v129 = *v127;
          v128 = *(v127 + 1);
          v108 = __OFSUB__(v128, v129);
          v130 = v128 - v129;
          if (v108)
          {
            goto LABEL_123;
          }

          if (v130 < v118)
          {
            v244 = v10;
            goto LABEL_101;
          }

LABEL_92:
          if (v97 - 1 >= v94)
          {
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
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
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
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          v135 = *a3;
          if (!*a3)
          {
            goto LABEL_133;
          }

          v136 = &v95[16 * v97 - 16];
          v137 = *v136;
          v138 = v97;
          v139 = &v95[16 * v97];
          v140 = *(v139 + 1);
          v141 = (v135 + 136 * *v136);
          v142 = (v135 + 136 * *v139);
          v143 = (v135 + 136 * v140);

          sub_18E54C(v141, v142, v143, v153, v162, v157);
          if (v161)
          {

            v244 = v155;

            goto LABEL_108;
          }

          if (v140 < v137)
          {
            goto LABEL_113;
          }

          v161 = 0;
          v10 = v155;
          v144 = *(v155 + 2);
          if (v138 > v144)
          {
            goto LABEL_114;
          }

          *v136 = v137;
          *(v136 + 1) = v140;
          if (v138 >= v144)
          {
            goto LABEL_115;
          }

          v94 = v144 - 1;
          memmove(v139, v139 + 16, 16 * (v144 - 1 - v138));
          *(v155 + 2) = v144 - 1;
          a6 = v157;
          v9 = v160;
          v95 = v151;
          if (v144 <= 2)
          {
            v244 = v155;
            goto LABEL_100;
          }
        }

        v102 = &v95[16 * v94];
        v103 = *(v102 - 8);
        v104 = *(v102 - 7);
        v108 = __OFSUB__(v104, v103);
        v105 = v104 - v103;
        if (v108)
        {
          goto LABEL_116;
        }

        v107 = *(v102 - 6);
        v106 = *(v102 - 5);
        v108 = __OFSUB__(v106, v107);
        v100 = v106 - v107;
        v101 = v108;
        if (v108)
        {
          goto LABEL_117;
        }

        v109 = &v10[16 * v94];
        v111 = *v109;
        v110 = *(v109 + 1);
        v108 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v108)
        {
          goto LABEL_119;
        }

        v108 = __OFADD__(v100, v112);
        v113 = v100 + v112;
        if (v108)
        {
          goto LABEL_122;
        }

        if (v113 >= v105)
        {
          v131 = &v95[16 * v97];
          v133 = *v131;
          v132 = *(v131 + 1);
          v108 = __OFSUB__(v132, v133);
          v134 = v132 - v133;
          if (v108)
          {
            goto LABEL_126;
          }

          if (v100 < v134)
          {
            v97 = v94 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_71;
      }

LABEL_100:
      a5 = v162;
LABEL_101:
      v8 = a3[1];
      if (v9 >= v8)
      {
        goto LABEL_105;
      }
    }

    v196 = v214;
    v197 = v215;
    v198 = v216;
    v192 = v210;
    v193 = v211;
    v194 = v212;
    v195 = v213;
    v190 = v208;
    v191 = v209;
    sub_5C740(&v190);
    v205 = v223;
    v206 = v224;
    v207 = v225;
    v201 = v219;
    v202 = v220;
    v203 = v221;
    v204 = v222;
    v199 = v217;
    v200 = v218;
    sub_5C740(&v199);
    goto LABEL_108;
  }

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
LABEL_105:
  v145 = *a1;
  if (*a1)
  {

    sub_18EBB4(&v244, v145, a3, a5, a6);
    if (!v161)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

LABEL_108:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

LABEL_136:
  swift_bridgeObjectRelease_n();
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}