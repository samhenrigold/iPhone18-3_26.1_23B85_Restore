void sub_1002466BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000A5D4(&unk_10094E870, &qword_10078B660);
  v6 = sub_1007715BC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v4;
    v34 = v3;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56) + 40 * v20;
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 32);
      v35 = *(v21 + 16);
      v36 = *v21;
      v24 = sub_10077174C();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v36;
      *(v16 + 16) = v35;
      *(v16 + 32) = v23;
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

    if (v33)
    {
      v32 = 1 << *(v5 + 32);
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

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_100246940(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Accessory(0);
  v43 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_10000A5D4(&unk_10094E880, &unk_10078B6B0);
  v44 = v4;
  v9 = sub_1007715BC();
  v10 = v8;
  v11 = v9;
  if (*(v8 + 16))
  {
    v41 = v3;
    v42 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = v9 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v43 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v44)
      {
        sub_1000366F4(v25, v7);
        v26 = *(v10 + 56);
        v27 = v7;
        v28 = *(v26 + 8 * v23);
      }

      else
      {
        sub_10024DFF0(v25, v7);
        v29 = *(*(v10 + 56) + 8 * v23);
        v27 = v7;
        v28 = v29;
      }

      sub_10077175C();
      v30 = v27;
      sub_100529668(v45);
      v31 = sub_1007717AC();
      v32 = -1 << *(v11 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      sub_1000366F4(v30, *(v11 + 48) + v24 * v19);
      *(*(v11 + 56) + 8 * v19) = v28;
      v7 = v30;
      ++*(v11 + 16);
      v10 = v42;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_100246C88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000A5D4(&unk_10094E850, &qword_10078B518);
  v37 = v4;
  v6 = sub_1007715BC();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 24 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(*(v5 + 56) + 8 * v20);
      if ((v37 & 1) == 0)
      {
      }

      sub_10077175C();
      sub_10077176C(v22);
      sub_10077176C(v23);
      if (v24 == 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v24;
      }

      sub_10077178C(*&v26);
      v27 = sub_1007717AC();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
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

LABEL_38:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
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
        goto LABEL_38;
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

      v3 = v2;
      goto LABEL_36;
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

LABEL_36:
  *v3 = v7;
}

void sub_100246F60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000A5D4(&unk_10094E800, &qword_10078B4E8);
  v35 = v4;
  v6 = sub_1007715BC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_10000CD64(v22, v36);
      }

      else
      {
        sub_10000CD08(v22, v36);
        v23 = v21;
      }

      sub_10076FF9C();
      sub_10077175C();
      sub_10077008C();
      v24 = sub_1007717AC();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      sub_10000CD64(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_34:
  *v3 = v7;
}

void sub_100247230(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10076B96C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000A5D4(&qword_10094E818, &qword_100796EF0);
  v41 = v4;
  v10 = sub_1007715BC();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v37 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v18 = v10 + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v43 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v41)
      {
        (*v42)(v44, v26, v5);
      }

      else
      {
        (*v38)(v44, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_10024E518(&unk_10094E820, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
      v28 = sub_10076FEAC();
      v29 = -1 << *(v11 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v42)((*(v11 + 48) + v25 * v19), v44, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v39;
      v9 = v40;
      v16 = v43;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1002475F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000A5D4(&qword_10094E810, &qword_10078B508);
  v38 = v4;
  v6 = sub_1007715BC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = v6 + 64;
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
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_10077175C();
      sub_10077008C();
      v28 = sub_1007717AC();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
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

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1002478B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000A5D4(&unk_100948B30, &qword_10078B510);
  v35 = v4;
  v6 = sub_1007715BC();
  v7 = v6;
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
    v14 = v6 + 64;
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
      if ((v35 & 1) == 0)
      {
      }

      sub_10077175C();
      sub_10077008C();
      v25 = sub_1007717AC();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
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
}

void sub_100247B50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000A5D4(&qword_100948B50, &qword_10078B538);
  v6 = sub_1007715BC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        sub_10008C3EC(v23, &v37);
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      v27 = sub_1007713DC(*(v7 + 40));
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v4 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_100247E14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000A5D4(&qword_100948BC8, &qword_1007B7590);
  v34 = v4;
  v6 = sub_1007715BC();
  v7 = v6;
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
    v14 = v6 + 64;
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
      if (v34)
      {
        sub_10000CD64(v24, v35);
      }

      else
      {
        sub_10000CD08(v24, v35);
      }

      sub_10077175C();
      sub_10077008C();
      v25 = sub_1007717AC();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_10000CD64(v35, (*(v7 + 56) + 32 * v15));
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1002480CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000A5D4(&unk_10094E8A0, qword_100796F20);
  v34 = v4;
  v6 = sub_1007715BC();
  v7 = v6;
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
    v14 = v6 + 64;
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

      sub_10077175C();
      sub_10077008C();
      v25 = sub_1007717AC();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
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

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_100248370(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v40 = sub_10076F7FC();
  v5 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10000A5D4(&qword_10094E830, &unk_10078B560);
  v38 = v4;
  v8 = sub_1007715BC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v3;
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
    v36 = (v5 + 16);
    v37 = v5;
    v16 = (v5 + 32);
    v17 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v38)
      {
        (*v16)(v39, v25, v40);
      }

      else
      {
        (*v36)(v39, v25, v40);
      }

      v26 = sub_10077174C();
      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      (*v16)((*(v9 + 56) + v24 * v18), v39, v40);
      ++*(v9 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1002486BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10000A5D4(a3, a4);
  v8 = sub_1007715BC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v5;
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
    v16 = v8 + 64;
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

      v24 = sub_10077174C();
      v25 = -1 << *(v9 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
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

      v5 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_100248924(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10000A5D4(a3, a4);
  v8 = sub_1007715BC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v34 = v5;
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
    v16 = v8 + 64;
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
        v24 = v23;
      }

      v25 = sub_10077174C();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
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
        return;
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
}

void sub_100248B84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10076C45C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000A5D4(&qword_100948BA0, &qword_10078B580);
  v40 = v4;
  v10 = sub_1007715BC();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10024E518(&qword_10094D268, &type metadata accessor for BadgeType, &protocol conformance descriptor for BadgeType);
      v26 = sub_10076FEAC();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_100248F60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_100761D3C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000A5D4(&qword_10094E840, &qword_10078B608);
  v40 = v4;
  v10 = sub_1007715BC();
  v11 = v10;
  if (*(v9 + 16))
  {
    v43 = v8;
    v44 = v5;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v40)
      {
        (*v41)(v43, v25, v44);
        v45 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v37)(v43, v25, v44);
        v45 = *(*(v9 + 56) + 16 * v23);
      }

      sub_10024E518(&qword_10094D270, &type metadata accessor for AdPlacementType, &protocol conformance descriptor for AdPlacementType);
      v26 = sub_10076FEAC();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v38;
        v9 = v39;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v6 = v38;
      v9 = v39;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v42 * v19), v43, v44);
      *(*(v11 + 56) + 16 * v19) = v45;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_100249340(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000A5D4(&qword_10094E838, &qword_100796EF8);
  v35 = v4;
  v6 = sub_1007715BC();
  v7 = v6;
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
    v14 = v6 + 64;
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
      }

      sub_10077175C();
      sub_10077008C();
      v25 = sub_1007717AC();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
        return;
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
}

void sub_1002495E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000A5D4(&qword_100948CC8, &qword_10078B658);
  v6 = sub_1007715BC();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      v22 = sub_10077174C();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
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

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_10024984C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10000A5D4(&qword_100948CC0, &qword_10078B650);
  v46 = v4;
  v10 = sub_1007715BC();
  v11 = v10;
  if (*(v9 + 16))
  {
    v43 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v5;
    v17 = v15 & *(v9 + 64);
    v18 = (v14 + 63) >> 6;
    v44 = (v6 + 16);
    v45 = v6;
    v47 = (v6 + 32);
    v19 = v10 + 64;
    v49 = v16;
    v50 = v8;
    v20 = v6;
    while (v17)
    {
      v25 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v28 = v25 | (v12 << 6);
      v29 = *(v9 + 48);
      v48 = *(v20 + 72);
      v30 = v29 + v48 * v28;
      if (v46)
      {
        (*v47)(v50, v30, v49);
      }

      else
      {
        (*v44)(v50, v30, v49);
      }

      v31 = (*(v9 + 56) + 16 * v28);
      v33 = *v31;
      v32 = v31[1];
      sub_10024E518(&qword_10094E860, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v34 = sub_10076FEAC();
      v35 = -1 << *(v11 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v22 = v45;
        v23 = v50;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v19 + 8 * v37);
          if (v41 != -1)
          {
            v21 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v21 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v22 = v45;
      v23 = v50;
LABEL_7:
      *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      (*v47)((*(v11 + 48) + v48 * v21), v23, v49);
      v24 = (*(v11 + 56) + 16 * v21);
      *v24 = v33;
      v24[1] = v32;
      ++*(v11 + 16);
      v20 = v22;
    }

    v26 = v12;
    while (1)
    {
      v12 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v18)
      {
        break;
      }

      v27 = v13[v12];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v17 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_34;
    }

    v42 = 1 << *(v9 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v13, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v42;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_100249C2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000A5D4(&qword_100948B40, &unk_10078B520);
  v34 = v4;
  v6 = sub_1007715BC();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v35 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v34 & 1) == 0)
      {

        v23 = v22;
      }

      sub_10076C02C();
      sub_10024E518(&qword_10094E848, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      v24 = sub_10076FEAC();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v33;
      v12 = v35;
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
        v35 = (v18 - 1) & v18;
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
}

void sub_100249F0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000A5D4(&qword_100948D18, &unk_10078B690);
  v6 = sub_1007715BC();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v31 = *(*(v5 + 56) + 16 * v19);
      v21 = sub_10077174C();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v31;
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

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_10024A170(uint64_t a1, Swift::UInt a2, Swift::UInt a3, char a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100610120(a2, a3, a5);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_100246C88(v18, a4 & 1);
      v13 = sub_100610120(a2, a3, a5);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        sub_1007716DC();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_10024BE78();
      v13 = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(v13 >> 6) + 8] |= 1 << v13;
    v24 = v23[6] + 24 * v13;
    *v24 = a2;
    *(v24 + 8) = a3;
    *(v24 + 16) = a5;
    *(v23[7] + 8 * v13) = a1;
    v25 = v23[2];
    v17 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v17)
    {
      v23[2] = v26;
      return;
    }

    goto LABEL_15;
  }

  *(v23[7] + 8 * v13) = a1;
}

_OWORD *sub_10024A2F4(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1006113DC();
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_10024BFEC();
      v8 = v16;
      goto LABEL_8;
    }

    sub_100246F60(v13, a3 & 1);
    v8 = sub_1006113DC();
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_1007716DC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_10000CD74(v19);

    return sub_10000CD64(a1, v19);
  }

  else
  {
    sub_10024B674(v8, a2, a1, v18);

    return a2;
  }
}

void sub_10024A448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100561E0C(a3, a4);
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
      sub_1002475F0(v18, a5 & 1);
      v13 = sub_100561E0C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1007716DC();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_10024C3F0();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

void sub_10024A5D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10060FEFC(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100247B50(v13, a3 & 1);
      v17 = sub_10060FEFC(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_17:
        sub_1007716DC();
        __break(1u);
        return;
      }

      v10 = v17;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_10024C6D0();
  }

  v16 = *v4;
  if ((v14 & 1) == 0)
  {
LABEL_13:
    sub_10008C3EC(a2, v25);
    v16[(v10 >> 6) + 8] |= 1 << v10;
    v19 = v16[6] + 40 * v10;
    v20 = v26;
    v21 = v25[1];
    *v19 = v25[0];
    *(v19 + 16) = v21;
    *(v19 + 32) = v20;
    *(v16[7] + 8 * v10) = a1;
    v22 = v16[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (!v23)
    {
      v16[2] = v24;
      return;
    }

    goto LABEL_16;
  }

LABEL_8:
  *(v16[7] + 8 * v10) = a1;
}

void sub_10024A768(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100561E0C(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1002480CC(v16, a3 & 1);
      v11 = sub_100561E0C(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1007716DC();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10024CA1C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a4;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * v11) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_10024A8C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10060FF40(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10024CB84();
      goto LABEL_7;
    }

    sub_100248370(v13, a3 & 1);
    v24 = sub_10060FF40(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1007716DC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_10076F7FC();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_10024B770(v10, a2, a1, v16);
}

void sub_10024AA40(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v12 = *v5;
  v13 = sub_10060FF40(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      sub_1002486BC(v18, a3 & 1, a4, a5);
      v13 = sub_10060FF40(a2);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        sub_1007716DC();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_10024CF58(a4, a5);
      v13 = v21;
    }
  }

  v23 = *v8;
  if ((v19 & 1) == 0)
  {
    v23[(v13 >> 6) + 8] |= 1 << v13;
    *(v23[6] + 8 * v13) = a2;
    *(v23[7] + 8 * v13) = a1;
    v24 = v23[2];
    v17 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v17)
    {
      v23[2] = v25;
      return;
    }

    goto LABEL_15;
  }

  *(v23[7] + 8 * v13) = a1;
}

unint64_t sub_10024ABC4(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v12 = *v5;
  result = sub_10060FF40(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_8:
    v23 = *v8;
    if (v19)
    {
      v24 = v23[7];
      v25 = *(v24 + 8 * result);
      *(v24 + 8 * result) = a1;

      return _objc_release_x1(result, v25);
    }

    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 8 * result) = a2;
    *(v23[7] + 8 * result) = a1;
    v26 = v23[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v17)
    {
      v23[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    v21 = result;
    sub_10024D0B8(a4, a5);
    result = v21;
    goto LABEL_8;
  }

  sub_100248924(v18, a3 & 1, a4, a5);
  result = sub_10060FF40(a2);
  if ((v19 & 1) == (v22 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  result = sub_1007716DC();
  __break(1u);
  return _objc_release_x1(result, v25);
}

void sub_10024AD30(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100561E0C(a2, a3);
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
      sub_10024C878();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100247E14(v16, a4 & 1);
    v11 = sub_100561E0C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1007716DC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000CD74(v22);

    sub_10000CD64(a1, v22);
  }

  else
  {
    sub_10024B81C(v11, a2, a3, a1, v21);
  }
}

void sub_10024AE80(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10076C45C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1006108B4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10024D204();
      goto LABEL_7;
    }

    sub_100248B84(v17, a3 & 1);
    v21 = sub_1006108B4(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_10024B888(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1007716DC();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

void sub_10024B04C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v27 = a1;
  v9 = sub_100761D3C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_100610988(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_10024D484();
      goto LABEL_9;
    }

    sub_100248F60(v18, a4 & 1);
    v21 = sub_100610988(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    sub_1007716DC();
    __break(1u);
    return;
  }

LABEL_9:
  v23 = v27;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v27;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    sub_10024B940(v15, v12, v23, a2, v24);
  }
}

void sub_10024B230(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10076B96C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1006101C8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1 & 1;
      return;
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_10024C16C();
    goto LABEL_7;
  }

  sub_100247230(v17, a3 & 1);
  v21 = sub_1006101C8(a2);
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_14:
    sub_1007716DC();
    __break(1u);
    return;
  }

  v14 = v21;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  sub_10024BA00(v14, v11, a1 & 1, v20);
}

void sub_10024B3D0(uint64_t a1, uint64_t a2, char a3, __n128 a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1006103E4(a2, a4);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a3 & 1) == 0)
  {
    if (v17 < v15 || (a3 & 1) != 0)
    {
      sub_100249C2C(v15, a3 & 1);
      v10 = sub_1006103E4(a2, v19);
      if ((v16 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_10076C02C();
        v10 = sub_1007716DC();
        __break(1u);
_objc_release_x1:
        _objc_release_x1(v10, v23);
        return;
      }
    }

    else
    {
      v18 = v10;
      sub_10024DC48();
      v10 = v18;
    }
  }

  v21 = *v5;
  if (v16)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v10);
    *(v22 + 8 * v10) = a1;

    goto _objc_release_x1;
  }

  v21[(v10 >> 6) + 8] |= 1 << v10;
  *(v21[6] + 8 * v10) = a2;
  *(v21[7] + 8 * v10) = a1;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_10024B540(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10060FF40(a1);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a2 & 1) == 0)
  {
    v19 = result;
    sub_10024DDA8();
    result = v19;
    goto LABEL_8;
  }

  sub_100249F0C(v16, a2 & 1);
  result = sub_10060FF40(a1);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      v22 = (v21[7] + 16 * result);
      *v22 = a3;
      v22[1] = a4;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a1;
    v23 = (v21[7] + 16 * result);
    *v23 = a3;
    v23[1] = a4;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1007716DC();
  __break(1u);
  return result;
}

_OWORD *sub_10024B674(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10000CD64(a3, (a4[7] + 32 * a1));
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

unint64_t sub_10024B6DC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_10024B72C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

uint64_t sub_10024B770(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_10076F7FC();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_10024B81C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000CD64(a4, (a5[7] + 32 * a1));
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

uint64_t sub_10024B888(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10076C45C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_10024B940(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_100761D3C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_10024BA00(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10076B96C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_10024BAB8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

void sub_10024BB00()
{
  v1 = v0;
  sub_10000A5D4(&unk_10094E870, &qword_10078B660);
  v2 = *v0;
  v3 = sub_1007715AC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 32) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 40 * v14;
      v18 = *(v17 + 32);
      v19 = *v17;
      v20 = *(v17 + 16);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v21 = *(v4 + 56) + 40 * v14;
      *v21 = v19;
      *(v21 + 16) = v20;
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
}

void sub_10024BC64()
{
  v1 = v0;
  v2 = type metadata accessor for Accessory(0);
  v25 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&unk_10094E880, &unk_10078B6B0);
  v5 = *v0;
  v6 = sub_1007715AC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v24 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
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
        v20 = v17 | (v11 << 6);
        v21 = *(v25 + 72) * v20;
        sub_10024DFF0(*(v5 + 48) + v21, v4);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1000366F4(v4, *(v7 + 48) + v21);
        *(*(v7 + 56) + 8 * v20) = v22;
        v23 = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }
}

void sub_10024BE78()
{
  v1 = v0;
  sub_10000A5D4(&unk_10094E850, &qword_10078B518);
  v2 = *v0;
  v3 = sub_1007715AC();
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 24 * v17;
        *v21 = *v18;
        *(v21 + 16) = v19;
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

void sub_10024BFEC()
{
  v1 = v0;
  sub_10000A5D4(&unk_10094E800, &qword_10078B4E8);
  v2 = *v0;
  v3 = sub_1007715AC();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_10000CD08(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10000CD64(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
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

void sub_10024C16C()
{
  v1 = v0;
  v31 = sub_10076B96C();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_10094E818, &qword_100796EF0);
  v3 = *v0;
  v4 = sub_1007715AC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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

void sub_10024C3F0()
{
  v1 = v0;
  sub_10000A5D4(&qword_10094E810, &qword_10078B508);
  v2 = *v0;
  v3 = sub_1007715AC();
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
}

void sub_10024C568()
{
  v1 = v0;
  sub_10000A5D4(&unk_100948B30, &qword_10078B510);
  v2 = *v0;
  v3 = sub_1007715AC();
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
}

void sub_10024C6D0()
{
  v1 = v0;
  sub_10000A5D4(&qword_100948B50, &qword_10078B538);
  v2 = *v0;
  v3 = sub_1007715AC();
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
        sub_10008C3EC(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
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
}

void sub_10024C878()
{
  v1 = v0;
  sub_10000A5D4(&qword_100948BC8, &qword_1007B7590);
  v2 = *v0;
  v3 = sub_1007715AC();
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
        sub_10000CD08(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000CD64(v25, (*(v4 + 56) + v22));
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

void sub_10024CA1C()
{
  v1 = v0;
  sub_10000A5D4(&unk_10094E8A0, qword_100796F20);
  v2 = *v0;
  v3 = sub_1007715AC();
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

void sub_10024CB84()
{
  v1 = v0;
  v29 = sub_10076F7FC();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_10094E830, &unk_10078B560);
  v3 = *v0;
  v4 = sub_1007715AC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
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
    v26 = v31 + 32;
    while (v12)
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
      (*(v19 + 32))(*(v23 + 56) + v20, v22, v21);
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
}

void sub_10024CDEC()
{
  v1 = v0;
  sub_10000A5D4(&qword_100948B60, &unk_100796F00);
  v2 = *v0;
  v3 = sub_1007715AC();
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

        v22 = v20;
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

void sub_10024CF58(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000A5D4(a1, a2);
  v4 = *v2;
  v5 = sub_1007715AC();
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

void sub_10024D0B8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000A5D4(a1, a2);
  v4 = *v2;
  v5 = sub_1007715AC();
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
        v21 = v20;
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

void sub_10024D204()
{
  v1 = v0;
  v33 = sub_10076C45C();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100948BA0, &qword_10078B580);
  v3 = *v0;
  v4 = sub_1007715AC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
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
}

void sub_10024D484()
{
  v1 = v0;
  v28 = sub_100761D3C();
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_10094E840, &qword_10078B608);
  v3 = *v0;
  v4 = sub_1007715AC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26[0] = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v29 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26[1] = v30 + 32;
    v26[2] = v30 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v31 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v30;
        v20 = *(v30 + 72) * v18;
        v21 = v27;
        v22 = v28;
        (*(v30 + 16))(v27, *(v3 + 48) + v20, v28);
        v18 *= 16;
        v23 = v29;
        v24 = *(v29 + 48);
        v25 = *(v19 + 32);
        v32 = *(*(v3 + 56) + v18);
        v25(v24 + v20, v21, v22);
        *(*(v23 + 56) + v18) = v32;

        v13 = v31;
      }

      while (v31);
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

        v1 = v26[0];
        v5 = v29;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v31 = (v17 - 1) & v17;
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

void sub_10024D714()
{
  v1 = v0;
  sub_10000A5D4(&qword_10094E838, &qword_100796EF8);
  v2 = *v0;
  v3 = sub_1007715AC();
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

void sub_10024D884()
{
  v1 = v0;
  sub_10000A5D4(&qword_100948CC8, &qword_10078B658);
  v2 = *v0;
  v3 = sub_1007715AC();
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
}

void sub_10024D9D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = sub_10075E11C();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100948CC0, &qword_10078B650);
  v5 = *v2;
  v6 = sub_1007715AC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 64 + 8 * v9)
    {
      memmove(v8, (v5 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v11;
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 64);
    v15 = (v12 + 63) >> 6;
    v30 = v34 + 16;
    v28 = v5 + 64;
    for (i = v34 + 32; v14; *(*(v24 + 56) + v19) = v35)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = v34;
      v21 = *(v34 + 72) * v19;
      v22 = v31;
      v23 = v32;
      (*(v34 + 16))(v31, *(v5 + 48) + v21, v32);
      v19 *= 16;
      v24 = v33;
      v25 = *(v33 + 48);
      v26 = *(v20 + 32);
      v35 = *(*(v5 + 56) + v19);
      v26(v25 + v21, v22, v23);
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

        v3 = v27;
        v7 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
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
    *v3 = v7;
  }
}

void sub_10024DC48()
{
  v1 = v0;
  sub_10000A5D4(&qword_100948B40, &unk_10078B520);
  v2 = *v0;
  v3 = sub_1007715AC();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;

        v19 = v18;
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

void sub_10024DDA8()
{
  v1 = v0;
  sub_10000A5D4(&qword_100948D18, &unk_10078B690);
  v2 = *v0;
  v3 = sub_1007715AC();
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
}

uint64_t sub_10024DEF8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10024DF30()
{

  return _swift_deallocObject(v0, 64, 7);
}

double sub_10024DFB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10024DFF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Accessory(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10024E054(uint64_t a1, void *a2)
{
  v22 = a2;
  ObjectType = swift_getObjectType();
  v2 = sub_10077043C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10075DB7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  sub_10077044C();
  if ((*(v3 + 88))(v5, v2) == enum case for UITextItem.Content.link(_:))
  {
    (*(v3 + 96))(v5, v2);
    v21 = *(v7 + 32);
    v13 = v6;
    v21(v12, v5, v6);
    v22 = sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v7 + 16))(v9, v12, v13);
    v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    v21((v17 + v15), v9, v13);
    *(v17 + v16) = v14;
    *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;

    v18 = sub_100770F1C();
    (*(v7 + 8))(v12, v13);

    return v18;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return v22;
  }
}

uint64_t sub_10024E394()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10024E3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10075DB7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v5 + 8))(v3 + v7, v4);

  return _swift_deallocObject(v3, ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v6 | 7);
}

void sub_10024E470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(sub_10075DB7C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100245648(a1, v3 + v6, v7);
}

uint64_t sub_10024E518(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for CappedSizeDynamicTypeButton(uint64_t a1)
{
  result = qword_10094E8B8;
  if (!qword_10094E8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10024E618(void *a1)
{
  v3 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_10076D3DC();
  v7 = *(v6 - 8);
  *&result = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[qword_10094E8B0];
  *&v1[qword_10094E8B0] = a1;
  v22 = v11;
  if (!a1)
  {
    if (!v11)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (!v11)
  {
    v20 = a1;
    goto LABEL_14;
  }

  v12 = sub_10076FF9C();
  v14 = v13;
  if (v12 != sub_10076FF9C() || v14 != v15)
  {
    v17 = sub_10077167C();
    v18 = a1;

    if (v17)
    {

      v19 = v22;

      return result;
    }

LABEL_14:
    sub_10076310C();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_1000276DC(v5);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      sub_1007630FC();
      [v1 setNeedsLayout];

      (*(v7 + 8))(v10, v6);
    }

    return result;
  }

  return result;
}

id sub_10024E8CC()
{
  v1 = *(v0 + qword_10094E8B0);
  if (v1)
  {
    sub_10076313C();
    v2 = sub_10076314C();
    v3 = v1;
    v4 = v2();
    v5 = [v4 preferredContentSizeCategory];

    LOBYTE(v4) = sub_10077085C();
    if (v4)
    {
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100785D70;
      *(v6 + 32) = v2();
      v7 = objc_opt_self();
      *(v6 + 40) = [v7 traitCollectionWithPreferredContentSizeCategory:v3];
      sub_10017FF5C();
      isa = sub_1007701AC().super.isa;

      v9 = [v7 traitCollectionWithTraitsFromCollections:isa];

      return v9;
    }
  }

  sub_10076313C();
  v11 = sub_10076314C();

  return v11();
}

id sub_10024EA74(char *a1, double a2, double a3, double a4, double a5)
{
  *&a1[qword_10094E8B0] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for CappedSizeDynamicTypeButton(0);
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_10024EB04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CappedSizeDynamicTypeButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10024EB54(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10076F9AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_onSelect];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView] = 0;
  v15 = &v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_previousLayoutWidth];
  *v15 = 0;
  v15[8] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionCalculator] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsCoordinator] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsScrollObserver] = 0;
  v16 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  v17 = sub_10076F7FC();
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_tokens] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_layout] = [objc_allocWithZone(type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout()) init];
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_layout;
  *(*&v22[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_layout] + OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_layoutDelegate + 8) = &off_10088E228;
  swift_unknownObjectWeakAssign();
  v24 = [objc_allocWithZone(UICollectionView) initWithFrame:*&v22[v23] collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView;
  v26 = *&v22[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView];
  *&v22[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView] = v24;
  v27 = v24;

  if (!v27)
  {
    __break(1u);
    goto LABEL_14;
  }

  v28 = [objc_opt_self() clearColor];
  [v27 setBackgroundColor:v28];

  v29 = *&v22[v25];
  if (!v29)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v29 setDataSource:v22];
  v30 = *&v22[v25];
  if (!v30)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v30 setDelegate:v22];
  v31 = *&v22[v25];
  if (!v31)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v31 setShowsHorizontalScrollIndicator:0];
  v32 = *&v22[v25];
  if (!v32)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v32 setShowsVerticalScrollIndicator:0];
  v33 = *&v22[v25];
  if (!v33)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v33 setBouncesHorizontally:1];
  v34 = *&v22[v25];
  if (!v34)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v34 setClipsToBounds:0];
  if (!*&v22[v25])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v22 addSubview:?];
  v35 = *&v22[v25];
  if (!v35)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v36 = v10;
  v45[1] = ObjectType;
  [v35 setPreservesSuperviewLayoutMargins:1];
  v37 = *&v22[v25];
  if (!v37)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  type metadata accessor for GuidedSearchTokenCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = v37;
  sub_1007708FC();
  v40 = sub_10076FF6C();

  [v39 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v40];

  v41 = *&v22[v25];
  if (v41)
  {
    memset(v46, 0, sizeof(v46));
    v42 = v41;
    sub_10076F96C();
    sub_10000CFBC(v46, &unk_1009434C0, &qword_100783F60);
    sub_100770B9C();

    (*(v11 + 8))(v13, v36);
    v43 = [v22 traitCollection];

    [*&v22[v23] invalidateLayout];
    sub_10000A5D4(&unk_100945BF0, &qword_100786810);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_100784500;
    *(v44 + 32) = sub_10076E59C();
    *(v44 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    *(v44 + 48) = sub_10076E88C();
    *(v44 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
    sub_100770C6C();

    swift_unknownObjectRelease();

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_10024F120()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView];
  if (v2)
  {
    v3 = v2;
    [v1 bounds];
    Width = CGRectGetWidth(v11);

    [v3 setFrame:{0.0, 0.0, Width, 60.0}];
    v5 = [v1 traitCollection];
    v6 = sub_1007706FC();

    if ((v6 & 1) != 0 && (v1[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_previousLayoutWidth + 8] & 1) == 0)
    {
      v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_previousLayoutWidth];
      [v1 bounds];
      if (v7 <= 834.0 == CGRectGetWidth(v12) > 834.0)
      {

        [*&v1[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_layout] invalidateLayout];
      }
    }

    [v1 bounds];
    v8 = CGRectGetWidth(v13);
    v9 = &v1[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_previousLayoutWidth];
    *v9 = v8;
    *(v9 + 8) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_10024F35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_tokens) = a2;

  if (*(a3 + 16))
  {
    v8 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView);
    if (!v8)
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_10075E11C();
    v9 = v8;
    isa = sub_1007701AC().super.isa;
    [v9 deleteItemsAtIndexPaths:isa];
  }

  if (!*(a5 + 16))
  {
    return;
  }

  v11 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView);
  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_10075E11C();
  v12 = v11;
  v13 = sub_1007701AC().super.isa;
  [v12 insertItemsAtIndexPaths:v13];
}

void sub_10024F498(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_10024F4F4();
    }
  }
}

void sub_10024F4F4()
{
  if (*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_layout) + OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) == 1)
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = objc_opt_self();
    v10 = sub_100251FD8;
    v11 = v1;
    v6 = _NSConcreteStackBlock;
    v7 = 1107296256;
    v8 = sub_10009AEDC;
    v9 = &unk_10088E328;
    v4 = _Block_copy(&v6);

    v10 = sub_100251FE0;
    v11 = v2;
    v6 = _NSConcreteStackBlock;
    v7 = 1107296256;
    v8 = sub_1000513F0;
    v9 = &unk_10088E350;
    v5 = _Block_copy(&v6);

    [v3 animateWithDuration:0 delay:v4 usingSpringWithDamping:v5 initialSpringVelocity:0.3 options:0.0 animations:27.0 completion:0.0];
    _Block_release(v5);
    _Block_release(v4);
  }
}

void sub_10024F6EC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView);
    v3 = Strong;
    v4 = v2;

    if (v2)
    {
      [v4 setContentOffset:{0.0, 0.0}];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10024F77C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_layout);

    v4[OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled] = 0;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_layout);

    [v7 invalidateLayout];
  }
}

void sub_10024F848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v7 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_10076F7FC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  swift_beginAccess();
  sub_1002508C8(a3, &v4[v14]);
  swift_endAccess();
  v15 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionCalculator;
  swift_beginAccess();
  *&v4[v15] = a1;

  sub_100016E2C(a3, v9, &qword_1009492E0, &qword_1007893A0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_10000CFBC(v9, &qword_1009492E0, &qword_1007893A0);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);

    [v4 bounds];
    sub_1007660EC();
    (*(v11 + 8))(v13, v10);
  }

  v16 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView;
  v17 = *&v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView];
  if (!v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_10076AEDC();
  swift_allocObject();
  v18 = v17;
  v19 = sub_10076AE7C();
  v20 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsCoordinator;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsCoordinator] = v19;

  if (*&v4[v20])
  {

    sub_10076AEAC();

    if (*&v4[v20])
    {

      sub_10076AE9C();
    }
  }

  sub_10076813C();
  swift_allocObject();

  v21 = sub_10076814C();
  v22 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsScrollObserver;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsScrollObserver] = v21;

  if (*&v4[v22])
  {
    v23 = *&v4[v16];
    if (v23)
    {

      v24.super.super.super.isa = v23;
      isa = v24.super.super.super.isa;
      sub_10076811C(v24);

      return;
    }

LABEL_13:
    __break(1u);
  }
}

uint64_t type metadata accessor for GuidedSearchTokenPaletteView(uint64_t a1)
{
  result = qword_10094E980;
  if (!qword_10094E980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10024FC8C(uint64_t a1)
{
  sub_10024FD5C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10024FD5C(uint64_t a1)
{
  if (!qword_10094E990)
  {
    sub_10076F7FC();
    v1 = sub_1007711AC();
    if (!v2)
    {
      atomic_store(v1, &qword_10094E990);
    }
  }
}

id sub_10024FF24(void *a1, uint64_t a2)
{
  type metadata accessor for GuidedSearchTokenCell();
  sub_1007708FC();
  v3 = sub_10076FF6C();

  isa = sub_10075E02C().super.isa;
  v5 = [a1 dequeueReusableCellWithReuseIdentifier:v3 forIndexPath:isa];

  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v5 = v5;
    sub_10025004C(v14);
    v8 = v15;
    if (v15)
    {
      v10 = v14[1];
      v9 = v14[2];
      v11 = v14[0];
      v12 = v16;

      sub_100660BD0(v11, v10, v9, v8, v12 & 1);

      return v7;
    }

    else
    {
    }
  }

  return v5;
}

void sub_10025004C(uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_tokens;
  v5 = *(*(v2 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_tokens) + 16);
  v6 = sub_10075E07C();
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (v6 < 0 || v6 >= v5)
  {
    goto LABEL_6;
  }

  v12 = sub_10075E07C();
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v2 + v4);
    if (v12 < *(v13 + 16))
    {
      v14 = v13 + 40 * v12;
      v8 = *(v14 + 32);
      v9 = *(v14 + 40);
      v10 = *(v14 + 48);
      v11 = *(v14 + 56);
      v7 = *(v14 + 64);

LABEL_6:
      *a2 = v8;
      *(a2 + 8) = v9;
      *(a2 + 16) = v10;
      *(a2 + 24) = v11;
      *(a2 + 32) = v7;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_10025062C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_100250674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1002506C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_tokens);
  v2 = *(v1 + 16);

  v3 = 0;
LABEL_2:
  v4 = 40 * v3;
  while (1)
  {
    if (v2 == v3)
    {

      return;
    }

    if (v3 >= *(v1 + 16))
    {
      break;
    }

    ++v3;
    v5 = v4 + 40;
    v6 = *(v1 + v4 + 64);
    v4 += 40;
    if (v6)
    {
      v8 = *(v1 + v5 - 8);
      v7 = *(v1 + v5);
      v10 = *(v1 + v5 + 8);
      v9 = *(v1 + v5 + 16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1004BBC68(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_1004BBC68((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[5 * v12];
      v13[4] = v8;
      v13[5] = v7;
      v13[6] = v10;
      v13[7] = v9;
      *(v13 + 64) = 1;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_100250818(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_10077167C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v12 = v4 == v8 && v5 == v9;
  if (v12 || (sub_10077167C() & 1) != 0)
  {
    return v6 ^ v10 ^ 1u;
  }

  return 0;
}

uint64_t sub_1002508C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_100250938(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_10077164C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076997C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1006620E4(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2, v12);
  v34 = *(a1 + 32);
  sub_10005312C();
  v16 = qword_100941458;
  v30 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_10076D3DC();
  sub_10000A61C(v17, qword_1009A3190);
  sub_100770B2C();
  v18 = sub_10076C04C();
  v32 = v18;
  v33 = sub_10004C7BC();
  v19 = sub_10000DB7C(v31);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
  sub_10076C90C();
  sub_10000CD74(v31);
  sub_10076993C();
  sub_10076994C();
  (*(v11 + 8))(v14, v10);
  sub_10000CF78(v31, v32);
  sub_10076D2BC();
  sub_100770AEC();
  (*(v7 + 104))(v9, enum case for FloatingPointRoundingRule.up(_:), v6);
  sub_100770AAC();
  v21 = v20;
  (*(v7 + 8))(v9, v6);
  v22 = [a2 traitCollection];
  v23 = sub_1006623E4();

  if (v34 == 1)
  {
    [v23 size];
    v25 = v24;

    v26 = v25 + 5.0;
  }

  else
  {

    v26 = 0.0;
  }

  v27 = v21 + v26;
  sub_10000CD74(v31);
  return v27;
}

id sub_100250D04(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_layout];

  return [v2 invalidateLayout];
}

uint64_t sub_100250D60(uint64_t a1, unsigned __int8 *a2)
{
  v83 = sub_10000A5D4(&qword_10094E9A8, &qword_100797090);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v86 = &v79 - v4;
  v89 = sub_10075E11C();
  v97 = *(v89 - 8);
  __chkstk_darwin(v89);
  v81 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = &v79 - v7;
  __chkstk_darwin(v8);
  v93 = &v79 - v9;
  v10 = sub_10000A5D4(&qword_10094E9B0, &qword_100797098);
  __chkstk_darwin(v10);
  v96 = &v79 - v11;
  v90 = sub_10000A5D4(&qword_10094E9B8, &unk_1007970A0);
  v85 = *(v90 - 8);
  __chkstk_darwin(v90);
  v84 = &v79 - v12;
  v13 = *(a1 + 16);
  v14 = _swiftEmptyArrayStorage;
  v95 = v13;
  v91 = a1;
  v92 = a2;
  if (v13)
  {
    v101[0] = _swiftEmptyArrayStorage;
    sub_1004BBB24(0, v13, 0);
    v14 = v101[0];
    v15 = (a1 + 56);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v101[0] = v14;
      v19 = v14[2];
      v18 = v14[3];

      if (v19 >= v18 >> 1)
      {
        sub_1004BBB24((v18 > 1), v19 + 1, 1);
        v14 = v101[0];
      }

      v14[2] = v19 + 1;
      v20 = &v14[2 * v19];
      v20[4] = v17;
      v20[5] = v16;
      v15 += 5;
      --v13;
    }

    while (v13);
    a2 = v92;
  }

  v21 = *(a2 + 2);
  v22 = _swiftEmptyArrayStorage;
  v79 = v21;
  if (v21)
  {
    v101[0] = _swiftEmptyArrayStorage;
    sub_1004BBB24(0, v21, 0);
    v22 = v101[0];
    v23 = a2 + 56;
    v24 = v21;
    do
    {
      v26 = *(v23 - 1);
      v25 = *v23;
      v101[0] = v22;
      v28 = v22[2];
      v27 = v22[3];

      if (v28 >= v27 >> 1)
      {
        sub_1004BBB24((v27 > 1), v28 + 1, 1);
        v22 = v101[0];
      }

      v22[2] = v28 + 1;
      v29 = &v22[2 * v28];
      v29[4] = v26;
      v29[5] = v25;
      v23 += 40;
      --v24;
    }

    while (v24);
  }

  v101[0] = v22;
  v101[4] = v14;
  sub_10000A5D4(&unk_10094BB60, &unk_100785530);
  sub_100071820(&qword_100943480, &unk_10094BB60, &unk_100785530, &protocol conformance descriptor for [A]);
  v30 = v84;
  sub_10076FEEC();

  v31 = v96;
  (*(v85 + 16))(v96, v30, v90);
  v32 = *(v10 + 36);
  sub_100071820(&qword_10094E9C0, &qword_10094E9B8, &unk_1007970A0, &protocol conformance descriptor for CollectionDifference<A>);
  sub_1007703DC();
  sub_10077040C();
  if (*(v31 + v32) == v101[0])
  {
    v87 = _swiftEmptyArrayStorage;
    v100 = _swiftEmptyArrayStorage;
  }

  else
  {
    v94 = (v97 + 32);
    v100 = _swiftEmptyArrayStorage;
    v87 = _swiftEmptyArrayStorage;
    do
    {
      while (1)
      {
        v54 = sub_10077042C();
        v56 = *v55;
        v57 = *(v55 + 33);
        v58 = *v55;
        v59 = *(v55 + 8);
        v98 = *(v55 + 16);
        v60 = DebugMenuPage.debugSettingsProviders.getter(v58, v59, v98);
        v54(v101, 0, v60);
        sub_10077041C();
        if (v57 == 1)
        {
          break;
        }

        sub_10075E08C();
        v61 = v56;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_10049DE8C(0, v100[2] + 1, 1, v100);
        }

        v62 = v98;
        v64 = v100[2];
        v63 = v100[3];
        if (v64 >= v63 >> 1)
        {
          v75 = v98;
          v76 = sub_10049DE8C((v63 > 1), v64 + 1, 1, v100);
          v62 = v75;
          v100 = v76;
        }

        v65 = sub_100251FF0(v61, v59, v62);
        v66 = v99;
        v67 = v100;
        v100[2] = v64 + 1;
        (*(v97 + 32))(v67 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v64, v66, v89, v65);
        v31 = v96;
        sub_10077040C();
        if (*(v31 + v32) == v101[0])
        {
          goto LABEL_14;
        }
      }

      sub_10075E08C();
      v68 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_10049DE8C(0, v87[2] + 1, 1, v87);
      }

      v69 = v59;
      v70 = v98;
      v72 = v87[2];
      v71 = v87[3];
      if (v72 >= v71 >> 1)
      {
        v77 = v98;
        v78 = sub_10049DE8C((v71 > 1), v72 + 1, 1, v87);
        v70 = v77;
        v69 = v59;
        v87 = v78;
      }

      v73 = sub_100251FF0(v68, v69, v70);
      v74 = v87;
      v87[2] = v72 + 1;
      (*(v97 + 32))(v74 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v72, v93, v89, v73);
      v31 = v96;
      sub_10077040C();
    }

    while (*(v31 + v32) != v101[0]);
  }

LABEL_14:
  result = sub_10000CFBC(v31, &qword_10094E9B0, &qword_100797098);
  v34 = v95;
  if (!v95)
  {
    v88 = _swiftEmptyArrayStorage;
LABEL_62:
    (*(v85 + 8))(v84, v90);
    return v87;
  }

  v35 = 0;
  v93 = (v91 + 32);
  v80 = (v97 + 32);
  v92 += 64;
  v88 = _swiftEmptyArrayStorage;
  v91 = v79 + 1;
  while (2)
  {
    if (v35 >= v34)
    {
      __break(1u);
    }

    else if (!__OFADD__(v35, 1))
    {
      v99 = v35 + 1;
      v36 = v92;
      v94 = v35;
      v37 = &v93[40 * v35];
      v38 = *(v37 + 1);
      v96 = *v37;
      v98 = v38;
      v40 = *(v37 + 2);
      v39 = *(v37 + 3);
      LODWORD(v97) = v37[32];
      v41 = v91;
      while (1)
      {
        if (!--v41)
        {
          goto LABEL_17;
        }

        v42 = *(v36 - 4);
        v43 = *(v36 - 3);
        v45 = *(v36 - 2);
        v44 = *(v36 - 1);
        v46 = *v36;
        v47 = v45 == v40 && v44 == v39;
        v48 = v47;
        if (v47)
        {
          break;
        }

        v36 += 40;
        result = sub_10077167C();
        if (result)
        {
          v49 = v98;
          if (v98)
          {
            goto LABEL_31;
          }

LABEL_37:
          if (v43)
          {
            goto LABEL_40;
          }

          goto LABEL_38;
        }
      }

      v45 = v40;
      v49 = v98;
      if (!v98)
      {
        goto LABEL_37;
      }

LABEL_31:
      if (!v43)
      {
        goto LABEL_41;
      }

      result = v96;
      if (v96 == v42 && v49 == v43 || (result = sub_10077167C(), (result & 1) != 0))
      {
LABEL_38:
        if (v48 || (result = sub_10077167C(), (result & 1) != 0))
        {
          if (v97 == v46)
          {
LABEL_17:
            v35 = v99;
            v34 = v95;
            if (v99 == v95)
            {
              goto LABEL_62;
            }

            continue;
          }
        }
      }

LABEL_40:

LABEL_41:

      sub_10075E08C();
      v50 = v86 + *(v83 + 48);
      (*v80)();
      *v50 = v42;
      *(v50 + 8) = v43;
      *(v50 + 16) = v45;
      *(v50 + 24) = v44;
      *(v50 + 32) = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_10049DE68(0, v88[2] + 1, 1, v88);
      }

      v34 = v95;
      v35 = v99;
      v52 = v88[2];
      v51 = v88[3];
      if (v52 >= v51 >> 1)
      {
        v88 = sub_10049DE68((v51 > 1), v52 + 1, 1, v88);
      }

      v53 = v88;
      v88[2] = v52 + 1;
      result = sub_100023AD0(v86, v53 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v52, &qword_10094E9A8, &qword_100797090);
      if (v35 != v34)
      {
        continue;
      }

      goto LABEL_62;
    }

    break;
  }

  __break(1u);
  return result;
}

void sub_1002517E4(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_10094E9A0, &qword_100797088);
  __chkstk_darwin(v9 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v65 = &v55 - v13;
  v66 = v3;

  v14 = sub_100250D60(v56, a1);
  v57 = v15;
  v58 = v14;
  v17 = v16;
  v18 = *(v16 + 16);
  if (v18)
  {
    v55 = a1;
    v63 = (v6 + 32);
    v64 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView;
    v59 = (v6 + 8);

    v19 = 0;
    v61 = v11;
    v62 = v17;
    v60 = v18;
    while (1)
    {
      v20 = v65;
      if (v19 == v18)
      {
        v21 = sub_10000A5D4(&qword_10094E9A8, &qword_100797090);
        (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
        v67 = v18;
      }

      else
      {
        if ((v19 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          return;
        }

        if (v19 >= *(v17 + 16))
        {
          goto LABEL_23;
        }

        v22 = v5;
        v23 = v17;
        v24 = v19;
        v25 = sub_10000A5D4(&qword_10094E9A8, &qword_100797090);
        v26 = *(v25 - 8);
        sub_100016E2C(v23 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24, v11, &qword_10094E9A8, &qword_100797090);
        v67 = v24 + 1;
        v17 = v23;
        v5 = v22;
        (*(v26 + 56))(v11, 0, 1, v25);
      }

      sub_100023AD0(v11, v20, &qword_10094E9A0, &qword_100797088);
      v27 = sub_10000A5D4(&qword_10094E9A8, &qword_100797090);
      if ((*(*(v27 - 8) + 48))(v20, 1, v27) == 1)
      {

        a1 = v55;
        break;
      }

      v28 = v20 + *(v27 + 48);
      v29 = *v28;
      v30 = *(v28 + 8);
      v32 = *(v28 + 16);
      v31 = *(v28 + 24);
      v33 = *(v28 + 32);
      v34 = v20;
      v35 = v5;
      (*v63)(v8, v34, v5);
      v36 = *&v66[v64];
      if (!v36)
      {
        goto LABEL_24;
      }

      v37 = v36;
      isa = sub_10075E02C().super.isa;
      v39 = [v37 cellForItemAtIndexPath:isa];

      if (v39)
      {
        type metadata accessor for GuidedSearchTokenCell();
        if (swift_dynamicCastClass())
        {
          sub_100660BD0(v29, v30, v32, v31, v33);
        }

        v5 = v35;
        (*v59)(v8, v35);
      }

      else
      {
        v5 = v35;
        (*v59)(v8, v35);
      }

      v11 = v61;
      v17 = v62;
      v18 = v60;
      v19 = v67;
    }
  }

  v40 = *(v58 + 16);
  if (v40)
  {
    v41 = *&v66[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView];
    if (!v41)
    {
      goto LABEL_26;
    }

    v42 = v41;
    [v42 contentOffset];
    [v42 setContentOffset:0 animated:?];

    *(*&v66[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_layout] + OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) = 1;
  }

  v43 = *&v66[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView];
  if (!v43)
  {
    goto LABEL_25;
  }

  v44 = v40 != 0;
  v45 = v43;

  v46 = swift_allocObject();
  v47 = v66;
  v46[2] = v66;
  v46[3] = a1;
  v48 = v57;
  v46[4] = v58;
  v46[5] = v17;
  v46[6] = v48;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_100251F24;
  *(v49 + 24) = v46;
  v72 = sub_1000349FC;
  v73 = v49;
  aBlock = _NSConcreteStackBlock;
  v69 = 1107296256;
  v70 = sub_1001C5148;
  v71 = &unk_10088E288;
  v50 = _Block_copy(&aBlock);
  v51 = v47;

  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = v44;
  *(v53 + 24) = v52;
  v72 = sub_100251FCC;
  v73 = v53;
  aBlock = _NSConcreteStackBlock;
  v69 = 1107296256;
  v70 = sub_1000513F0;
  v71 = &unk_10088E300;
  v54 = _Block_copy(&aBlock);

  [v45 performBatchUpdates:v50 completion:v54];
  _Block_release(v54);
  _Block_release(v50);
}

uint64_t sub_100251ECC()
{

  return _swift_deallocObject(v0, 56, 7);
}

double sub_100251F44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100251F5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100251F94()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100251FF8()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_onSelect);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_collectionView) = 0;
  v2 = v0 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_previousLayoutWidth;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionCalculator) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsScrollObserver) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  v4 = sub_10076F7FC();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  sub_10077156C();
  __break(1u);
}

double sub_1002520F8(void *a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5];
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  swift_beginAccess();
  sub_100016E2C(v2 + v11, v6, &qword_1009492E0, &qword_1007893A0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000CFBC(v6, &qword_1009492E0, &qword_1007893A0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionCalculator;
    swift_beginAccess();
    if (*(v2 + v13))
    {
      swift_endAccess();

      [a1 frame];
      sub_10076613C();

      (*(v8 + 8))(v10, v7);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      swift_endAccess();
    }
  }

  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsCoordinator))
  {

    sub_10076AEBC();
  }

  return result;
}

uint64_t sub_100252388(__n128 a1)
{
  v1 = sub_10076D65C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14[-1] - v6;
  __chkstk_darwin(v8);
  v10 = &v14[-1] - v9;
  sub_10076D63C();
  sub_10076D63C();

  sub_10076D64C();

  v11 = *(v2 + 8);
  v11(v4, v1);
  v14[3] = v1;
  v14[4] = &protocol witness table for VerticalStack;
  sub_10000DB7C(v14);
  sub_10076D64C();
  v11(v7, v1);

  sub_10076D64C();

  v11(v10, v1);
  return sub_10000CD74(v14);
}

uint64_t sub_100252594(uint64_t a1, uint64_t a2)
{
  sub_100181E98(a2 + 16, v4);
  sub_10003F19C(v4, v3);
  return sub_10076D5BC();
}

uint64_t sub_1002525DC()
{
  sub_100181F4C(v0 + 16);
  sub_10000CD74((v0 + 64));
  sub_10000CD74((v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t sub_100252648(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_100252690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100252720(uint64_t a1, uint64_t a2, double a3, double a4)
{
  WitnessTable = swift_getWitnessTable();
  v9.n128_f64[0] = a3;
  v10.n128_f64[0] = a4;

  return CustomLayout.measure(toFit:with:)(a1, a2, WitnessTable, v9, v10);
}

uint64_t sub_100252798(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  WitnessTable = swift_getWitnessTable();
  v13.n128_f64[0] = a3;
  v14.n128_f64[0] = a4;
  v15.n128_f64[0] = a5;
  v16.n128_f64[0] = a6;

  return CustomLayout.place(at:with:)(a1, a2, WitnessTable, v13, v14, v15, v16);
}

uint64_t sub_100252828(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, WitnessTable);
}

uint64_t sub_1002528F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ShelfFooterViewLayout();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100252994(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = v4 + OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v6 + 8);
        ObjectType = swift_getObjectType();
        (*(v7 + 8))(v5, ObjectType, v7);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_100252A64()
{
  v1 = v0;
  v2 = sub_100764E9C();
  if (*(v2 + 16) && (v3 = sub_100610638(v1 + OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_facet), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = _swiftEmptySetSingleton;
  }

  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_selectedFacetOptions);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_selectedFacetOptions) = v5;

  sub_100254E0C(v7, v6, v8);
  v10 = v9;

  if ((v10 & 1) == 0)
  {

    sub_100252C34();
  }
}

void (*sub_100252B30(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10025567C;
}

void sub_100252C34()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_10094EAF8, &qword_1007972C8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_diffableDataSource;
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_diffableDataSource];
  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = v7;
  sub_10076E79C();

  v17[0] = 0xD000000000000030;
  v17[1] = 0x80000001007CD030;
  v9._rawValue = sub_10076E5DC();
  sub_10076E5BC(v9);

  v10 = *&v1[v6];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  sub_10076E76C();

  v12 = &v1[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_preselectionContentOffset];
  if (v1[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_preselectionContentOffset + 16])
  {
    (*(v3 + 8))(v5, v2);
    return;
  }

  v14 = *v12;
  v13 = v12[1];
  v15 = [v1 collectionView];
  if (v15)
  {
    v16 = v15;
    [v15 setContentOffset:{v14, v13}];

    (*(v3 + 8))(v5, v2);
    *v12 = 0.0;
    v12[1] = 0.0;
    *(v12 + 16) = 1;
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_100252E24()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v38 = sub_10000A5D4(&qword_10094EAF8, &qword_1007972C8);
  v35 = *(v38 - 8);
  __chkstk_darwin(v38);
  v4 = &v35 - v3;
  v37 = sub_10000A5D4(&qword_10094EB00, &qword_1007972D0);
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v37);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v35 - v9;
  v45.receiver = v0;
  v45.super_class = ObjectType;
  objc_msgSendSuper2(&v45, "viewDidLoad", v8);
  v11 = [v0 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = v11;
  v13 = objc_opt_self();
  v14 = [v13 systemBackgroundColor];
  [v12 setBackgroundColor:v14];

  v15 = [v0 collectionView];
  if (!v15)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  v17 = [v13 systemBackgroundColor];
  [v16 setBackgroundColor:v17];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100016F40(0, &qword_100945920, UICollectionViewListCell_ptr);
  sub_10075F8BC();
  sub_10077058C();
  if (![v0 collectionView])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = v36;
  v18 = v37;
  (*(v5 + 16))(v36, v10, v37);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  (*(v5 + 32))(v21 + v20, v19, v18);
  v22 = objc_allocWithZone(sub_10000A5D4(&qword_10094EB08, &qword_1007972D8));
  v23 = sub_10076E72C();
  (*(v5 + 8))(v10, v18);
  v24 = OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_diffableDataSource;
  v25 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_diffableDataSource];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_diffableDataSource] = v23;

  sub_10025587C(&qword_100946840, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option);
  sub_10076E62C();
  v26._rawValue = &off_100883170;
  v27 = v38;
  sub_10076E5CC(v26);
  sub_10075F8CC();
  aBlock = 0;
  v40 = 0;
  sub_10076E5AC();

  v28 = *&v1[v24];
  if (!v28)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v29 = v28;
  sub_10076E76C();

  (*(v35 + 8))(v4, v27);
  v30 = [v1 collectionView];
  if (v30)
  {
    v31 = v30;
    v32 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v43 = sub_1002533E4;
    v44 = 0;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_1002BAFEC;
    v42 = &unk_10088E4C0;
    v33 = _Block_copy(&aBlock);
    v34 = [v32 initWithSectionProvider:v33];
    _Block_release(v33);

    [v31 setCollectionViewLayout:v34];

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_1002533E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_10076E81C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076E87C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v2, v8);
  sub_10076E84C();
  sub_100016F40(0, &unk_1009632E0, NSCollectionLayoutSection_ptr);
  v11 = sub_10077097C();
  (*(v7 + 8))(v10, v6);
  return v11;
}

uint64_t sub_100253588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000A5D4(&qword_100945928, &qword_100787C70);
  __chkstk_darwin(v6 - 8);
  v29 = v28 - v7;
  v8 = sub_10076E26C();
  v30 = *(v8 - 8);
  v31 = v8;
  __chkstk_darwin(v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076E23C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076E58C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076E55C();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v28[2] = a1;
    sub_10075F8AC();
    sub_10076E56C();
    v21 = *&v20[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_selectedFacetOptions];

    v23 = sub_10069315C(a3, v21, v22);

    if (v23)
    {
      sub_10000A5D4(&qword_100945930, &qword_100787C78);
      v24 = *(sub_10076E32C() - 8);
      v28[1] = (*(v24 + 80) + 32) & ~*(v24 + 80);
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      (*(v12 + 104))(v14, enum case for UICellAccessory.DisplayedState.always(_:), v11);
      v25 = sub_10076E24C();
      (*(*(v25 - 8) + 56))(v29, 1, 1, v25);
      sub_10076E25C();
      sub_10076E31C();
      (*(v30 + 8))(v10, v31);
      (*(v12 + 8))(v14, v11);
    }

    sub_10077093C();
  }

  v32[3] = v15;
  v32[4] = &protocol witness table for UIListContentConfiguration;
  v26 = sub_10000DB7C(v32);
  (*(v16 + 16))(v26, v18, v15);
  sub_1007707FC();
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_1002539C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000A5D4(&qword_100946838, &qword_1007890E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_10075F8BC();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a3, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_100016F40(0, &qword_100945920, UICollectionViewListCell_ptr);
  v10 = sub_1007705AC();
  sub_1002556A0(v7);
  return v10;
}

void sub_100253B08(void *a1, uint64_t a2)
{
  v125 = a1;
  v4 = sub_10076F08C();
  v122 = *(v4 - 8);
  v123 = v4;
  __chkstk_darwin(v4);
  v120 = &v92[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v121 = sub_10076F0CC();
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v118 = &v92[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v115 = sub_10075E11C();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = v7;
  v113 = &v92[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v126 = sub_10076F0EC();
  v117 = *(v126 - 8);
  __chkstk_darwin(v126);
  v111 = &v92[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v116 = &v92[-v10];
  v11 = sub_10000A5D4(&qword_100945928, &qword_100787C70);
  __chkstk_darwin(v11 - 8);
  v98 = &v92[-v12];
  v100 = sub_10076E26C();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v96 = &v92[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = sub_10076E23C();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v92[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_10075F7DC();
  v129 = *(v15 - 8);
  __chkstk_darwin(v15);
  v106 = &v92[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v107 = &v92[-v18];
  __chkstk_darwin(v19);
  v124 = &v92[-v20];
  __chkstk_darwin(v21);
  v127 = &v92[-v22];
  __chkstk_darwin(v23);
  v25 = &v92[-v24];
  __chkstk_darwin(v26);
  v28 = &v92[-v27];
  v29 = sub_10000A5D4(&qword_100946838, &qword_1007890E0);
  __chkstk_darwin(v29 - 8);
  v31 = &v92[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32);
  v34 = &v92[-v33];
  v35 = sub_10075F8BC();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v128 = &v92[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_diffableDataSource);
  if (!v38)
  {
    __break(1u);
    return;
  }

  v39 = v2;
  v40 = v38;
  v110 = a2;
  sub_10076E74C();

  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_1002556A0(v34);
    return;
  }

  v108 = v36;
  v41 = *(v36 + 32);
  v109 = v35;
  v41(v128, v34, v35);
  v104 = OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_facet;
  sub_10075F7EC();
  v42 = *(v129 + 104);
  v93 = enum case for PageFacets.Facet.DisplayType.multipleSelection(_:);
  v103 = v129 + 104;
  v102 = v42;
  v42(v25);
  v43 = sub_10025587C(&qword_100946820, &type metadata accessor for PageFacets.Facet.DisplayType, &protocol conformance descriptor for PageFacets.Facet.DisplayType);
  sub_10077018C();
  v101 = v43;
  sub_10077018C();
  if (aBlock == v136 && v131 == v137)
  {
    v44 = 1;
  }

  else
  {
    v44 = sub_10077167C();
  }

  v45 = v129 + 8;
  v46 = *(v129 + 8);
  v46(v25, v15);
  v129 = v45;
  v105 = v46;
  v46(v28, v15);

  if ((v44 & 1) != 0 || (v47 = *(v39 + OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_selectedFacetOptions), , v49 = sub_10069315C(v128, v47, v48), , (v49 & 1) == 0))
  {
    v51 = v125;
    [v125 contentOffset];
    v53 = v39 + OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_preselectionContentOffset;
    *v53 = v54;
    *(v53 + 8) = v55;
    *(v53 + 16) = 0;
    v56 = v108;
    v57 = v109;
    (*(v108 + 16))(v31, v128, v109);
    v58 = *(v56 + 56);
    v50 = 1;
    v58(v31, 0, 1, v57);
    sub_100764F0C();
    sub_1002556A0(v31);
    v52 = v124;
  }

  else
  {
    v50 = 0;
    v52 = v124;
    v51 = v125;
  }

  sub_10075F7EC();
  v102(v52, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v15);
  sub_10077018C();
  sub_10077018C();
  if (aBlock == v136 && v131 == v137)
  {
    v59 = v52;
    v60 = v105;
    v105(v59, v15);
    v61 = v127;
LABEL_15:
    v60(v61, v15);

    goto LABEL_17;
  }

  v62 = sub_10077167C();
  v63 = v105;
  v105(v52, v15);
  v63(v127, v15);

  if (v62)
  {
    goto LABEL_17;
  }

  v68 = v107;
  sub_10075F7EC();
  v69 = v106;
  v102(v106, v93, v15);
  sub_10077018C();
  sub_10077018C();
  if (aBlock == v136 && v131 == v137)
  {
    v70 = v69;
    v60 = v105;
    v105(v70, v15);
    v61 = v68;
    goto LABEL_15;
  }

  v71 = sub_10077167C();
  v72 = v105;
  v105(v69, v15);
  v72(v68, v15);

  if (v71)
  {
LABEL_17:
    v64 = v110;
    if (v50)
    {
      isa = sub_10075E02C().super.isa;
      v66 = [v51 cellForItemAtIndexPath:isa];

      if (v66)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v67 = *(sub_10077092C() + 16);

          if (!v67)
          {
            sub_10000A5D4(&qword_100945930, &qword_100787C78);
            v73 = *(sub_10076E32C() - 8);
            v129 = (*(v73 + 80) + 32) & ~*(v73 + 80);
            *(swift_allocObject() + 16) = xmmword_100783DD0;
            v74 = v95;
            v75 = v94;
            v76 = v97;
            (*(v95 + 104))(v94, enum case for UICellAccessory.DisplayedState.always(_:), v97);
            v77 = sub_10076E24C();
            (*(*(v77 - 8) + 56))(v98, 1, 1, v77);
            v78 = v96;
            sub_10076E25C();
            sub_10076E31C();
            (*(v99 + 8))(v78, v100);
            (*(v74 + 8))(v75, v76);
          }

          sub_10077093C();
        }
      }
    }

    sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
    v79 = sub_10077068C();
    v80 = v111;
    sub_10076F0DC();
    v81 = v116;
    sub_10076F15C();
    v129 = *(v117 + 8);
    (v129)(v80, v126);
    v82 = v114;
    v83 = v113;
    v84 = v115;
    (*(v114 + 16))(v113, v64, v115);
    v85 = (*(v82 + 80) + 24) & ~*(v82 + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = v51;
    (*(v82 + 32))(v86 + v85, v83, v84);
    v134 = sub_1002557CC;
    v135 = v86;
    aBlock = _NSConcreteStackBlock;
    v131 = 1107296256;
    v132 = sub_10009AEDC;
    v133 = &unk_10088E470;
    v87 = _Block_copy(&aBlock);
    v88 = v51;

    v89 = v118;
    sub_10076F0AC();
    aBlock = _swiftEmptyArrayStorage;
    sub_10025587C(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
    sub_100071820(&qword_100945170, &unk_10094E1C0, &qword_100785D50, &protocol conformance descriptor for [A]);
    v90 = v120;
    v91 = v123;
    sub_1007712CC();
    sub_10077064C();
    _Block_release(v87);

    (*(v122 + 8))(v90, v91);
    (*(v119 + 8))(v89, v121);
    (v129)(v81, v126);
  }

  (*(v108 + 8))(v128, v109);
}

uint64_t type metadata accessor for PageFacetOptionsViewController(uint64_t a1)
{
  result = qword_10094EAE8;
  if (!qword_10094EAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100254D44(uint64_t a1)
{
  result = sub_10075F8DC();
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

void sub_100254E0C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_10075F8BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v34 - v10;
  v13 = __chkstk_darwin(v11);
  v14 = &v34 - v12;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v15 = 0;
    v16 = *(a1 + 56);
    v34 = a1 + 56;
    v17 = 1 << *(a1 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v41 = v6 + 32;
    v43 = a2 + 56;
    v44 = v6 + 16;
    v21 = (v6 + 8);
    v35 = v20;
    v36 = &v34 - v12;
    v37 = v6;
    v38 = a1;
    if (v19)
    {
      while (1)
      {
        v22 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_13:
        v25 = *(a1 + 48);
        v42 = *(v6 + 72);
        v26 = *(v6 + 16);
        v26(v14, v25 + v42 * (v22 | (v15 << 6)), v5, v13);
        (*(v6 + 32))(v45, v14, v5);
        sub_10025587C(&qword_100946840, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option);
        v27 = sub_10076FEAC();
        v28 = -1 << *(a2 + 32);
        v29 = v27 & ~v28;
        if (((*(v43 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          break;
        }

        v39 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v30 = a2;
        v31 = ~v28;
        while (1)
        {
          (v26)(v8, *(v30 + 48) + v29 * v42, v5);
          sub_10025587C(&qword_100946848, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option);
          v32 = sub_10076FF1C();
          v33 = *v21;
          (*v21)(v8, v5);
          if (v32)
          {
            break;
          }

          v29 = (v29 + 1) & v31;
          if (((*(v43 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            v33(v45, v5);
            return;
          }
        }

        v33(v45, v5);
        a2 = v30;
        v6 = v37;
        a1 = v38;
        v20 = v35;
        v14 = v36;
        v19 = v40;
        if (!v40)
        {
          goto LABEL_8;
        }
      }

      (*v21)(v45, v5);
    }

    else
    {
LABEL_8:
      v23 = v15;
      while (1)
      {
        v15 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v15 >= v20)
        {
          return;
        }

        v24 = *(v34 + 8 * v15);
        ++v23;
        if (v24)
        {
          v22 = __clz(__rbit64(v24));
          v40 = (v24 - 1) & v24;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

id sub_1002551BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10000A5D4(&qword_100964180, &unk_1007B2520);
  v28 = *(v9 - 8);
  v29 = v9;
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_diffableDataSource] = 0;
  v12 = &v3[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_preselectionContentOffset];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_facet;
  v14 = sub_10075F8DC();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v4[v13], a1, v14);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_facetsPresenter] = a2;

  v16 = sub_100764ECC();
  if (*(v16 + 16) && (v17 = sub_100610638(a1), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {
    v19 = _swiftEmptySetSingleton;
  }

  *&v4[OBJC_IVAR____TtC20ProductPageExtension30PageFacetOptionsViewController_selectedFacetOptions] = v19;
  v20 = [objc_allocWithZone(UICollectionViewLayout) init];
  v31.receiver = v4;
  v31.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v31, "initWithCollectionViewLayout:", v20, ObjectType);

  if (a3)
  {
    v22 = [v21 navigationItem];
    sub_100016F40(0, &qword_100958FF0, UIBarButtonItem_ptr);
    sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v32.value.super.super.isa = sub_100770F1C();
    v32.is_nil = 0;
    isa = sub_10077054C(UIBarButtonSystemItemDone, v32, v33).super.super.isa;
    [v22 setRightBarButtonItem:isa];
  }

  v24 = [v21 navigationItem];
  sub_10075F86C();
  v25 = sub_10076FF6C();

  [v24 setTitle:v25];

  sub_100764EEC();
  sub_10000A5D4(&unk_10094F4A0, &qword_1007972C0);
  sub_100071820(&unk_1009641B0, &unk_10094F4A0, &qword_1007972C0, &protocol conformance descriptor for AsyncEvent<A>);
  sub_10076F45C();
  sub_10076F46C();

  (*(v15 + 8))(a1, v14);
  sub_10000CD74(v30);
  (*(v28 + 8))(v11, v29);
  return v21;
}

uint64_t sub_100255604()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100255644()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002556A0(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100946838, &qword_1007890E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100255708(uint64_t a1, uint64_t a2)
{
  v3 = sub_10075E11C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

void sub_1002557CC(uint64_t a1, uint64_t a2)
{
  sub_10075E11C();
  v3 = *(v2 + 16);
  isa = sub_10075E02C().super.isa;
  [v3 deselectItemAtIndexPath:isa animated:1];
}

double sub_100255864(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10025587C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002558CC()
{
  v1 = sub_10000A5D4(&qword_10094EB00, &qword_1007972D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100255960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10000A5D4(&qword_10094EB00, &qword_1007972D0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1002539C0(a1, a2, a3, v8);
}

double sub_1002559FC()
{
  v0 = sub_10000A5D4(&unk_10094CE80, qword_100793880);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_10076F73C();
  sub_10076F72C();
  if (qword_10093FBD8 != -1)
  {
    swift_once();
  }

  v4 = sub_10000A61C(v0, qword_10094EB28);
  (*(v1 + 16))(v3, v4, v0);
  v8 = 1;
  v9 = 0;
  sub_10076F42C();

  if (qword_10093FBD0 != -1)
  {
    swift_once();
  }

  v5 = sub_10076FD4C();
  sub_10000A61C(v5, qword_10094EB10);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  sub_10076F72C();
  sub_10076F41C();

  v6 = v8;
  if (v9)
  {
    v6 = 0;
  }

  v10 = &type metadata for Int;
  v8 = v6;
  sub_10076F30C();
  sub_1000258C0(&v8);
  sub_10076FBCC();

  return result;
}

uint64_t sub_100255CE8()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_10094EB10);
  sub_10000A61C(v4, qword_10094EB10);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

uint64_t sub_100255E3C()
{
  v0 = sub_10000A5D4(&unk_10094CE80, qword_100793880);
  sub_10000DB18(v0, qword_10094EB28);
  sub_10000A61C(v0, qword_10094EB28);
  return sub_10076F54C();
}

uint64_t sub_100255EB4()
{
  if (sub_1007690BC())
  {
    if (qword_10093FBD0 == -1)
    {
LABEL_3:
      v0 = sub_10076FD4C();
      sub_10000A61C(v0, qword_10094EB10);
      sub_10000A5D4(&unk_100942A60, &unk_100784760);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F27C();
      sub_10076FBCC();
LABEL_21:

LABEL_22:
      v4 = 0;
      return v4 & 1;
    }

LABEL_37:
    swift_once();
    goto LABEL_3;
  }

  sub_10076F73C();
  sub_10076F72C();
  if (qword_10093FBD8 != -1)
  {
    swift_once();
  }

  v1 = sub_10000A5D4(&unk_10094CE80, qword_100793880);
  sub_10000A61C(v1, qword_10094EB28);
  sub_10076F41C();

  if (v11 != 1 && v10 > 0 || (sub_10076134C() & 1) == 0)
  {
    if (qword_10093FBD0 != -1)
    {
      swift_once();
    }

    v5 = sub_10076FD4C();
    sub_10000A61C(v5, qword_10094EB10);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    sub_10076F72C();
    sub_10076F41C();

    v6 = v10;
    if (v11)
    {
      v6 = 0;
    }

    v12 = &type metadata for Int;
    v10 = v6;
    sub_10076F30C();
    sub_1000258C0(&v10);
    sub_10076FBCC();
    goto LABEL_21;
  }

  if (([objc_opt_self() locationServicesEnabled] & 1) == 0)
  {
    if (qword_10093FBD0 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_37;
  }

  v2 = [objc_allocWithZone(CLLocationManager) init];
  v3 = [v2 authorizationStatus];

  v4 = 0;
  if (v3 > 2)
  {
    if ((v3 - 3) < 2)
    {
      if (qword_10093FBD0 != -1)
      {
        swift_once();
      }

      v8 = sub_10076FD4C();
      sub_10000A61C(v8, qword_10094EB10);
      sub_10000A5D4(&unk_100942A60, &unk_100784760);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100784500;
      sub_10076F27C();
      v12 = &type metadata for Bool;
      LOBYTE(v10) = sub_1007612CC() & 1;
      sub_10076F30C();
      sub_1000258C0(&v10);
      sub_10076FBCC();

      v4 = sub_1007612CC();
    }
  }

  else
  {
    switch(v3)
    {
      case 0:
        if (qword_10093FBD0 == -1)
        {
LABEL_31:
          v9 = sub_10076FD4C();
          sub_10000A61C(v9, qword_10094EB10);
          sub_10000A5D4(&unk_100942A60, &unk_100784760);
          sub_10076F33C();
          *(swift_allocObject() + 16) = xmmword_100783DD0;
          sub_10076F27C();
          sub_10076FBCC();

          sub_1002559FC();
          goto LABEL_22;
        }

LABEL_36:
        swift_once();
        goto LABEL_31;
      case 1:
        if (qword_10093FBD0 == -1)
        {
          goto LABEL_3;
        }

        goto LABEL_37;
      case 2:
        if (qword_10093FBD0 == -1)
        {
          goto LABEL_31;
        }

        goto LABEL_36;
    }
  }

  return v4 & 1;
}

Swift::Int sub_100256858(uint64_t a1, uint64_t a2)
{
  sub_10077175C();
  sub_10076FEBC();
  return sub_1007717AC();
}

uint64_t sub_1002568B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FA5C();

  return OnboardingStep.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1002568FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10077175C();
  sub_10076FEBC();
  return sub_1007717AC();
}

uint64_t sub_100256950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000FA5C();

  return static OnboardingStep.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1002569A4(uint64_t *a1, int a2)
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

uint64_t sub_1002569EC(uint64_t result, int a2, int a3)
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

unint64_t sub_100256A4C()
{
  result = qword_10094EB40;
  if (!qword_10094EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094EB40);
  }

  return result;
}

unint64_t sub_100256AA4()
{
  result = qword_10094EB48;
  if (!qword_10094EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094EB48);
  }

  return result;
}

uint64_t sub_100256B08(id *a1, uint64_t a2)
{
  v3 = *a1;
  sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
  v4 = v3;
  sub_10000A5D4(&qword_1009435B8, &qword_100785828);
  if (swift_dynamicCast())
  {
    v5 = *(&v10 + 1);
    v6 = v11;
    sub_10000CF78(&v9, *(&v10 + 1));
    v7 = (*(v6 + 8))(a2, v5, v6);
    sub_10000CD74(&v9);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_10000CFBC(&v9, &unk_1009435C0, &unk_100785830);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_100256C0C(id *a1, uint64_t a2)
{
  v3 = *a1;
  sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
  v4 = v3;
  sub_10000A5D4(&qword_1009435A8, &qword_100785818);
  if (swift_dynamicCast())
  {
    v5 = *(&v10 + 1);
    v6 = v11;
    sub_10000CF78(&v9, *(&v10 + 1));
    v7 = (*(v6 + 8))(a2, v5, v6);
    sub_10000CD74(&v9);
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_10000CFBC(&v9, &qword_1009435B0, &qword_100785820);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_100256D18(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = sub_100766EDC();
  v30 = *(v3 - 8);
  __chkstk_darwin(v3);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v31 = &v28 - v6;
  v7 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_10094A890, &unk_100786A70);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for FlowDestination(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v28 - v18;

  sub_10076B87C();
  sub_10012062C(a1, v34, v12);
  v20 = *(v14 + 48);
  if (v20(v12, 1, v13) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v20(v12, 1, v13) != 1)
    {
      sub_10000CFBC(v12, &unk_10094A890, &unk_100786A70);
    }
  }

  else
  {
    sub_10005DAD8(v12, v19, v21);
  }

  sub_10005C684(v19, v16, v22);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_10005DB58(v19, type metadata accessor for FlowDestination);
    v23 = 1;
  }

  else
  {
    sub_10075F5BC();
    sub_10075F5AC();
    sub_1001489F0(v31);
    v25 = v29;
    v24 = v30;
    (*(v30 + 104))(v29, enum case for FlowPresentationContext.select(_:), v3);
    sub_100258A60();
    sub_10077018C();
    sub_10077018C();
    if (v34[0] == v32 && v34[1] == v33)
    {
      v23 = 1;
    }

    else
    {
      v23 = sub_10077167C();
    }

    v26 = *(v24 + 8);
    v26(v25, v3);
    v26(v31, v3);
    sub_10005DB58(v9, type metadata accessor for FlowPresentationHints);
    sub_10005DB58(v19, type metadata accessor for FlowDestination);
  }

  sub_10005DB58(v16, type metadata accessor for FlowDestination);
  return v23 & 1;
}

void sub_100257164(void *a1)
{
  v2 = sub_10000A5D4(&qword_10095D440, &unk_100797450);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_10000A5D4(&qword_10094B168, &qword_100791000);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_100760EFC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v26 - v14;
  v16 = [a1 tabBar];
  v17 = [v16 items];

  if (!v17)
  {
    return;
  }

  v26 = v4;
  sub_100016F40(0, &unk_100960200, UITabBarItem_ptr);
  v18 = sub_1007701BC();

  if ((sub_1007701EC() & 1) == 0 || (v19 = [a1 selectedIndex], v19 == sub_10075D75C()))
  {

    return;
  }

  v20 = [a1 selectedIndex];
  if ((v18 & 0xC000000000000001) == 0)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v20 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = v9;
      v22 = *(v18 + 8 * v20 + 32);
      goto LABEL_11;
    }

    __break(1u);
    return;
  }

  v22 = sub_10077149C();
  v21 = v9;
LABEL_11:

  [v22 tag];

  sub_100760ECC();
  if ((*(v21 + 48))(v7, 1, v8) == 1)
  {
    sub_10000CFBC(v7, &qword_10094B168, &qword_100791000);
  }

  else
  {
    (*(v21 + 32))(v15, v7, v8);
    sub_100761FAC();
    sub_100761F8C();
    sub_100760EAC();
    sub_100761EFC();

    v23 = [objc_opt_self() standardUserDefaults];
    (*(v21 + 16))(v11, v15, v8);
    v24 = v26;
    sub_10075F2CC();
    sub_10072EB44(v24);

    sub_10075F45C();
    sub_10076F63C();
    v25 = v27;
    if (v27)
    {
      sub_10075F43C();
    }

    (*(v21 + 8))(v15, v8);
  }
}

uint64_t sub_100257584(uint64_t a1, void *a2, uint64_t a3)
{
  v144 = sub_10000A5D4(&qword_10094EB50, &unk_100797440);
  __chkstk_darwin(v144);
  v147 = &v129 - v6;
  v146 = sub_100765F6C();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v143 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v8 - 8);
  v142 = &v129 - v9;
  v10 = sub_10076F4FC();
  __chkstk_darwin(v10 - 8);
  v131 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_10094B168, &qword_100791000);
  __chkstk_darwin(v12 - 8);
  v134 = &v129 - v13;
  v135 = sub_100760EFC();
  v137 = *(v135 - 8);
  __chkstk_darwin(v135);
  v130 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v154 = &v129 - v16;
  v17 = sub_10076F50C();
  v151 = *(v17 - 8);
  v152 = v17;
  __chkstk_darwin(v17);
  v150 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v19 - 8);
  v132 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v136 = &v129 - v22;
  v23 = sub_100766EDC();
  v153 = *(v23 - 8);
  __chkstk_darwin(v23);
  v158 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v25);
  v27 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000A5D4(&unk_10094A890, &unk_100786A70);
  __chkstk_darwin(v28 - 8);
  v140 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v129 - v31;
  v157 = type metadata accessor for FlowDestination(0);
  v33 = *(v157 - 8);
  __chkstk_darwin(v157);
  v141 = (&v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35);
  v37 = (&v129 - v36);
  __chkstk_darwin(v38);
  v40 = &v129 - v39;
  objc_opt_self();
  v159 = swift_dynamicCastObjCClass();
  v156 = a2;
  if (v159)
  {
    v41 = a2;
  }

  else
  {
    v159 = [a2 tabBarController];
    if (!v159)
    {
      sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
      sub_1002589CC();
      swift_allocError();
      return sub_10076FC7C();
    }
  }

  v148 = a3;
  sub_10000A5D4(&qword_100942C70, &unk_100783EF0);
  v149 = sub_10076FCEC();

  sub_10076B87C();
  sub_10012062C(a1, v161, v32);
  v42 = *(v33 + 48);
  v43 = v157;
  v44 = v42(v32, 1, v157);
  v139 = v33 + 48;
  v138 = v42;
  if (v44 == 1)
  {
    swift_storeEnumTagMultiPayload();
    v46 = v42(v32, 1, v43);
    v47 = v23;
    if (v46 != 1)
    {
      sub_10000CFBC(v32, &unk_10094A890, &unk_100786A70);
    }
  }

  else
  {
    sub_10005DAD8(v32, v40, v45);
    v47 = v23;
  }

  sub_10075F5BC();
  sub_10075F5AC();
  v48 = [v156 traitCollection];
  sub_1001489F0(v158);

  v49 = [v159 viewControllers];
  v50 = v154;
  v155 = v47;
  if (v49)
  {
    v51 = v49;
    v52 = v27;
    sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
    v53 = sub_1007701BC();

    __chkstk_darwin(v54);
    *(&v129 - 2) = v40;
    v55 = sub_100244374(sub_100258A40, (&v129 - 4), v53);

    if (v55)
    {
      v56 = v159;
      [v159 setTransientViewController:0 animated:0];
      [v56 setSelectedViewController:v55];
      v57 = v148;
      sub_100257164(v56);
      v58 = v40;
      sub_10005C684(v40, v37, v59);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v60 = v52;
        v61 = v149;
        if (*v37)
        {
          v62 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);

          v63 = v136;
          sub_10076F5AC();
          v64 = *(v62 - 8);
          v65 = (*(v64 + 48))(v63, 1, v62);
          v66 = v155;
          if (v65 == 1)
          {

            (*(v153 + 8))(v158, v66);
            sub_10005DB58(v60, type metadata accessor for FlowPresentationHints);
            sub_10000CFBC(v63, &unk_100943200, &unk_100785840);
LABEL_32:
            v87 = v58;
LABEL_56:
            sub_10005DB58(v87, type metadata accessor for FlowDestination);
            return v61;
          }

          sub_100263FFC(v88, 1, v57, v63);

          (*(v64 + 8))(v63, v62);
          sub_10076FC4C();

          (*(v153 + 8))(v158, v66);
LABEL_31:
          sub_10005DB58(v60, type metadata accessor for FlowPresentationHints);
          goto LABEL_32;
        }
      }

      else
      {
        sub_10005DB58(v37, type metadata accessor for FlowDestination);
        v60 = v52;
        v61 = v149;
      }

      v85 = v150;
      v84 = v151;
      v86 = v152;
      (*(v151 + 104))(v150, enum case for ActionOutcome.performed(_:), v152);
      sub_10076FCBC();

      (*(v84 + 8))(v85, v86);
      (*(v153 + 8))(v158, v155);
      goto LABEL_31;
    }

    v27 = v52;
    v47 = v155;
  }

  v67 = [v159 viewControllers];
  v133 = v40;
  if (!v67)
  {
    goto LABEL_40;
  }

  v68 = v67;
  sub_100016F40(0, &qword_1009453B0, UIViewController_ptr);
  v69 = sub_1007701BC();

  __chkstk_darwin(v70);
  *(&v129 - 2) = v40;
  v71 = sub_100244374(sub_100258A20, (&v129 - 4), v69);

  if (!v71)
  {
    goto LABEL_40;
  }

  objc_opt_self();
  v72 = swift_dynamicCastObjCClass();
  if (!v72)
  {

    goto LABEL_40;
  }

  v73 = [v72 viewControllers];
  v74 = sub_1007701BC();

  if (v74 >> 62)
  {
    result = sub_10077158C();
  }

  else
  {
    result = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v76 = v137;
  if (!result)
  {

    goto LABEL_40;
  }

  if ((v74 & 0xC000000000000001) != 0)
  {
    v77 = sub_10077149C();
LABEL_25:
    v78 = v77;

    type metadata accessor for TabPlaceholderViewController(0);
    if (swift_dynamicCastClass())
    {
      v80 = sub_1006FC188(v79);
      if (v80)
      {
        v137 = v78;
        v81 = v80;
        [v80 tag];
        v82 = v134;
        sub_100760ECC();

        v83 = v135;
        if ((v76[6])(v82, 1, v135) != 1)
        {
          (v76)[4](v50, v82, v83);
          (v76)[2](v130, v50, v83);
          sub_10000A5D4(&unk_100942870, &qword_100784460);
          v120 = swift_allocObject();
          *(v120 + 16) = xmmword_1007841E0;
          *(v120 + 32) = a1;

          sub_10076F4DC();
          sub_10076225C();
          swift_allocObject();
          sub_10076221C();
          v121 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
          v122 = v132;
          v123 = v148;
          sub_10076F5AC();
          v124 = v76;
          v125 = *(v121 - 8);
          if ((*(v125 + 48))(v122, 1, v121) == 1)
          {

            (v124[1])(v50, v135);
            (*(v153 + 8))(v158, v47);
            sub_10005DB58(v27, type metadata accessor for FlowPresentationHints);
            sub_10000CFBC(v122, &unk_100943200, &unk_100785840);
            v87 = v133;
            v61 = v149;
            goto LABEL_56;
          }

          sub_1002640CC(v126, 1, v123, v122);

          (*(v125 + 8))(v122, v121);
          v127 = v149;
          sub_10076FC4C();

          (v124[1])(v50, v135);
          v128 = v47;
          v61 = v127;
          (*(v153 + 8))(v158, v128);
          sub_10005DB58(v27, type metadata accessor for FlowPresentationHints);
          goto LABEL_55;
        }
      }

      else
      {

        v82 = v134;
        (v76[7])(v134, 1, 1, v135);
      }

      sub_10000CFBC(v82, &qword_10094B168, &qword_100791000);
    }

    else
    {
    }

LABEL_40:
    v89 = v156;
    v90 = sub_100376418(v156);
    if (!v90 || (v160 = v90, sub_100016F40(0, &qword_100944C68, UINavigationController_ptr), sub_10000A5D4(&qword_100944C70, &qword_100786A80), (swift_dynamicCast() & 1) == 0))
    {
      v162 = 0;
      memset(v161, 0, sizeof(v161));
    }

    v91 = [v89 traitCollection];

    sub_10076B87C();
    v92 = v140;
    sub_10012062C(a1, &v160, v140);
    v93 = v157;
    v94 = v138;
    if (v138(v92, 1, v157) == 1)
    {
      v96 = v141;
      swift_storeEnumTagMultiPayload();
      if (v94(v92, 1, v93) != 1)
      {
        sub_10000CFBC(v92, &unk_10094A890, &unk_100786A70);
      }
    }

    else
    {
      v96 = v141;
      sub_10005DAD8(v92, v141, v95);
    }

    v97 = sub_10075F57C();
    v99 = v98;
    v100 = v142;
    sub_10075F59C();
    v101 = sub_10048B0C0(v96, v91, v97, v99, v100, v161, v148, 1);

    sub_10000CFBC(v100, &unk_100958150, &unk_100786630);
    sub_10005DB58(v96, type metadata accessor for FlowDestination);
    v102 = v143;
    sub_10075F5AC();
    v103 = *(v144 + 48);
    v104 = v145;
    v105 = v147;
    v106 = v146;
    (*(v145 + 32))(v147, v102, v146);
    v107 = v153;
    v108 = v155;
    (*(v153 + 16))(v105 + v103, v158, v155);
    v109 = (*(v104 + 88))(v105, v106);
    v110 = v27;
    if (v109 == enum case for FlowAnimationBehavior.infer(_:))
    {
      v111 = (*(v107 + 88))(v105 + v103, v108);
      v112 = v149;
      if (v111 != enum case for FlowPresentationContext.presentModal(_:))
      {
        goto LABEL_53;
      }
    }

    else
    {
      v112 = v149;
      if (v109 != enum case for FlowAnimationBehavior.always(_:))
      {
LABEL_53:
        v113 = v108;
        sub_10000CFBC(v105, &qword_10094EB50, &unk_100797440);
        v114 = 0;
        goto LABEL_54;
      }

      (*(v107 + 8))(v105 + v103, v108);
    }

    v113 = v108;
    (*(v104 + 8))(v105, v106);
    v114 = 1;
LABEL_54:
    v115 = v159;
    [v159 setTransientViewController:v101 animated:v114];
    v117 = v150;
    v116 = v151;
    v118 = v152;
    (*(v151 + 104))(v150, enum case for ActionOutcome.performed(_:), v152);
    sub_10076FCBC();

    v119 = v117;
    v61 = v112;
    (*(v116 + 8))(v119, v118);
    (*(v107 + 8))(v158, v113);
    sub_10005DB58(v110, type metadata accessor for FlowPresentationHints);
    sub_10000CFBC(v161, &unk_10094A8A0, &unk_10078DB90);
LABEL_55:
    v87 = v133;
    goto LABEL_56;
  }

  if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v77 = *(v74 + 32);
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

unint64_t sub_1002589CC()
{
  result = qword_10094EB58;
  if (!qword_10094EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094EB58);
  }

  return result;
}

unint64_t sub_100258A60()
{
  result = qword_10094A530;
  if (!qword_10094A530)
  {
    sub_100766EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094A530);
  }

  return result;
}

unint64_t sub_100258ACC()
{
  result = qword_10094EB60;
  if (!qword_10094EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094EB60);
  }

  return result;
}

unint64_t sub_100258B20(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v5 = 0xD000000000000023;
      v6 = 0xD000000000000033;
      if (a1 == 10)
      {
        v6 = 0xD00000000000002BLL;
      }

      v7 = a1 == 9;
    }

    else
    {
      v5 = 0xD000000000000014;
      v6 = 0xD00000000000001BLL;
      if (a1 == 7)
      {
        v6 = 0xD00000000000001ELL;
      }

      v7 = a1 == 6;
    }

    if (v7)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696D61466E497369;
    v2 = 0xD000000000000011;
    v3 = 0x74616572436E6163;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 == 1)
    {
      v1 = 0xD000000000000016;
    }

    if (!a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

char *sub_100258D44(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension34SegmentedControlCollectionViewCell_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC20ProductPageExtension34SegmentedControlCollectionViewCell_isFirstSetup] = 1;
  v12 = [objc_allocWithZone(UISegmentedControl) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34SegmentedControlCollectionViewCell_segmentedControl] = v12;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC20ProductPageExtension34SegmentedControlCollectionViewCell_segmentedControl]];

  return v17;
}

double sub_100259064(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v35 = sub_10076341C();
  v38 = *(v35 - 8);
  v5 = *(v38 + 64);
  __chkstk_darwin(v35);
  v34 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C3BC();
  sub_100259F00(&qword_10094EBE8, &type metadata accessor for PageTabs, &protocol conformance descriptor for PageTabs);
  v39 = a1;
  sub_10076332C();
  v7 = v45;
  if (v45)
  {
    v33 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension34SegmentedControlCollectionViewCell_segmentedControl);
    [v33 removeAllSegments];
    v8 = sub_10076C3AC();
    v9 = v8;
    v37 = v3;
    v25 = v7;
    if (v8 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
    {
      v11 = 0;
      v31 = v9 & 0xFFFFFFFFFFFFFF8;
      v32 = v9 & 0xC000000000000001;
      v27 = v5 + 7;
      v28 = v38 + 16;
      v26 = v38 + 32;
      v29 = i;
      v30 = v9;
      v12 = v35;
      while (v32)
      {
        v5 = sub_10077149C();
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_12;
        }

LABEL_8:
        v44 = v13;
        v43 = sub_100259F48();
        v14 = sub_10076C06C();
        v41 = v15;
        v42 = v14;
        v16 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v17 = swift_allocObject();
        swift_weakInit();
        v18 = swift_allocObject();
        swift_weakInit();
        v19 = v38;
        v20 = *(v38 + 16);
        v40 = v5;
        v5 = v34;
        v20(v34, v39, v12);
        v21 = (*(v19 + 80) + 40) & ~*(v19 + 80);
        v22 = (v27 + v21) & 0xFFFFFFFFFFFFFFF8;
        v23 = swift_allocObject();
        *(v23 + 2) = v16;
        *(v23 + 3) = v17;
        *(v23 + 4) = v18;
        v9 = v30;
        (*(v19 + 32))(&v23[v21], v5, v12);
        *&v23[v22] = v11;
        v24 = sub_100770F1C();
        [v33 insertSegmentWithAction:v24 atIndex:v11 animated:{0, v25, v26}];

        ++v11;
        if (v44 == v29)
        {
          goto LABEL_15;
        }
      }

      if (v11 >= *(v31 + 16))
      {
        goto LABEL_13;
      }

      v5 = *(v9 + 8 * v11 + 32);

      v13 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    sub_100259428(v25, v39);
  }

  return result;
}

uint64_t sub_100259428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  __chkstk_darwin(v5 - 8);
  v39 = &v30 - v6;
  v7 = sub_10000A5D4(&qword_10094EBF0, &qword_100797690);
  v40 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_10000A5D4(&qword_10094EBF8, &unk_100797698);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v14 = sub_10025A188();
  sub_10076335C();
  v38 = v14;
  sub_10076FD8C();
  if (v42)
  {
    v31 = v9;
    v32 = v13;
    v33 = a2;
    v34 = v11;
    v36 = v10;
    v37 = v2;
    v15 = sub_10076C3AC();
    v16 = v15;
    v35 = v7;
    v17 = v15 & 0xFFFFFFFFFFFFFF8;
    if (v15 >> 62)
    {
LABEL_23:
      v18 = sub_10077158C();
    }

    else
    {
      v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = 0;
    while (1)
    {
      if (v18 == v19)
      {
        v19 = 0;
        goto LABEL_19;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
      }

      else
      {
        if (v19 >= *(v17 + 16))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      v20 = sub_10076C05C();
      v22 = v21;
      if (v20 == sub_10076C39C() && v22 == v23)
      {
        break;
      }

      v24 = sub_10077167C();

      if (v24)
      {
        goto LABEL_19;
      }

      if (__OFADD__(v19++, 1))
      {
        goto LABEL_22;
      }
    }

LABEL_19:

    sub_10076336C();
    v26 = v31;
    v27 = sub_10076F87C();
    __chkstk_darwin(v27);
    *(&v30 - 2) = v19;
    *(&v30 - 8) = 0;
    v28 = v35;
    sub_10076F83C();
    (*(v40 + 8))(v26, v28);
    v10 = v36;
    v3 = v37;
    v11 = v34;
    v13 = v32;
  }

  else
  {
    v19 = v41;
  }

  [*(v3 + OBJC_IVAR____TtC20ProductPageExtension34SegmentedControlCollectionViewCell_segmentedControl) setSelectedSegmentIndex:v19];
  return (*(v11 + 8))(v13, v10);
}

void sub_10025981C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000A5D4(&qword_10094EBF0, &qword_100797690);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  v13 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v27 = a5;
      swift_beginAccess();
      v18 = swift_weakLoadStrong();
      if (v18)
      {
        v19 = v18;
        v25 = v10;
        v26 = a6;
        v20 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
        sub_10076F5AC();
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(v15, 1, v20) == 1)
        {
          sub_10000CFBC(v15, &unk_100943200, &unk_100785840);
        }

        else
        {
          v22 = sub_10076C07C();
          v24 = sub_1002641D0(v22, 1, v19, v15);

          (*(v21 + 8))(v15, v20);
        }

        sub_10076336C();
        v23 = sub_10076F87C();
        __chkstk_darwin(v23);
        *(&v24 - 2) = v26;
        *(&v24 - 8) = 0;
        sub_10025A188();
        sub_10076F83C();

        (*(v25 + 8))(v12, v9);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}